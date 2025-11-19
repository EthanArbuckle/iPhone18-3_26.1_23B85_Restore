_BYTE *storeEnumTagSinglePayload for CommonStock.StockAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x2679E048CLL);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_2679E05A0()
{
  sub_2676FC800(319, &qword_2801DF558, &qword_2801DF560, &qword_267A89878);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v1 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v2 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v3 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v4 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v5 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DEA18, &qword_2801DB118, &unk_267A89360);
              if (v6 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v7 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for CommonStock.StockChangeState.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679E0840);
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = OUTLINED_FUNCTION_78_1(a1, a2, a3, a4, a5);
  v13 = OUTLINED_FUNCTION_11_0(v12);
  if (*(v14 + 84) == v7)
  {
    v15 = v13;
    v16 = v8;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v18 = OUTLINED_FUNCTION_11_0(v17);
    if (*(v19 + 84) == v7)
    {
      v15 = v18;
      v20 = v9[5];
    }

    else
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v22 = OUTLINED_FUNCTION_11_0(v21);
      if (*(v23 + 84) == v7)
      {
        v15 = v22;
        v20 = v9[6];
      }

      else
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v25 = OUTLINED_FUNCTION_11_0(v24);
        if (*(v26 + 84) == v7)
        {
          v15 = v25;
          v20 = v9[7];
        }

        else
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v28 = OUTLINED_FUNCTION_11_0(v27);
          if (*(v29 + 84) == v7)
          {
            v15 = v28;
            v20 = v9[8];
          }

          else
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v31 = OUTLINED_FUNCTION_11_0(v30);
            if (*(v32 + 84) == v7)
            {
              v15 = v31;
              v20 = v9[9];
            }

            else
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
              v34 = OUTLINED_FUNCTION_11_0(v33);
              if (*(v35 + 84) == v7)
              {
                v15 = v34;
                v20 = v9[10];
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v20 = v9[11];
              }
            }
          }
        }
      }
    }

    v16 = v8 + v20;
  }

  return __swift_getEnumTagSinglePayload(v16, v7, v15);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = OUTLINED_FUNCTION_66_1(a1, a2, a3, a4, a5, a6);
  v15 = OUTLINED_FUNCTION_11_0(v14);
  if (*(v16 + 84) == v11)
  {
    v17 = v15;
    v18 = v9;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v20 = OUTLINED_FUNCTION_11_0(v19);
    if (*(v21 + 84) == v11)
    {
      v17 = v20;
      v22 = v10[5];
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v24 = OUTLINED_FUNCTION_11_0(v23);
      if (*(v25 + 84) == v11)
      {
        v17 = v24;
        v22 = v10[6];
      }

      else
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v27 = OUTLINED_FUNCTION_11_0(v26);
        if (*(v28 + 84) == v11)
        {
          v17 = v27;
          v22 = v10[7];
        }

        else
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v30 = OUTLINED_FUNCTION_11_0(v29);
          if (*(v31 + 84) == v11)
          {
            v17 = v30;
            v22 = v10[8];
          }

          else
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v33 = OUTLINED_FUNCTION_11_0(v32);
            if (*(v34 + 84) == v11)
            {
              v17 = v33;
              v22 = v10[9];
            }

            else
            {
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
              v36 = OUTLINED_FUNCTION_11_0(v35);
              if (*(v37 + 84) == v11)
              {
                v17 = v36;
                v22 = v10[10];
              }

              else
              {
                v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v22 = v10[11];
              }
            }
          }
        }
      }
    }

    v18 = v9 + v22;
  }

  return __swift_storeEnumTagSinglePayload(v18, v8, v8, v17);
}

void sub_2679E0E20()
{
  sub_2676FC800(319, &qword_2801DF588, &qword_2801DF590, &qword_267A898A0);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v1 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v2 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v3 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v4 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v5 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DE988, &qword_2801DB360, &unk_267A7A100);
              if (v6 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v7 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for CommonStock.StockType.DefinedValue(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonStock.StockType.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679E1148);
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

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = OUTLINED_FUNCTION_78_1(a1, a2, a3, a4, a5);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == v5)
  {
    v11 = v9;
    v12 = v6;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v12 = v6 + *(v7 + 20);
  }

  return __swift_getEnumTagSinglePayload(v12, v5, v11);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = OUTLINED_FUNCTION_66_1(a1, a2, a3, a4, a5, a6);
  v11 = OUTLINED_FUNCTION_11_0(v10);
  if (*(v12 + 84) == v9)
  {
    v13 = v11;
    v14 = v7;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v14 = v7 + *(v8 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v14, v6, v6, v13);
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return sub_2676F8AF4(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return sub_2678A9230(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t sub_2679E1720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C0, &qword_267A898B0);
  __swift_allocate_value_buffer(v0, qword_2801DF5A8);
  __swift_project_value_buffer(v0, qword_2801DF5A8);
  return sub_2679E1778();
}

uint64_t sub_2679E1778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C8, &qword_267A898B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5D0, &qword_267A89B40);
  sub_267A41C04();
  type metadata accessor for CommonUserEntity.UserEntityAttribute();
  return sub_267A41914();
}

uint64_t static CommonUserEntity.UserEntityAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C0, &qword_267A898B0);
  v3 = __swift_project_value_buffer(v2, qword_2801DF5A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2679E1B78@<X0>(_BYTE *a1@<X8>)
{
  result = CommonUserEntity.UserEntityAttribute.definedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2679E1C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_2676F8AF4(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_2679E27C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2679E28B4()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E2938()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E2AE4()
{
  OUTLINED_FUNCTION_36_6();
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_70_2();
  }

  return v1 & 1;
}

uint64_t sub_2679E2B5C()
{
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E2BD8()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E2C74(char a1)
{
  v2 = "reUnit_DegreesCelsius";
  switch(a1)
  {
    case 1:
      v2 = "common_Time_Sunrise";
      break;
    case 2:
      v2 = "common_Time_Sunset";
      break;
    case 3:
      v2 = "common_Time_CurrentTime";
      break;
    case 4:
      v2 = "common_Time_Midnight";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E2DE0(char a1)
{
  v2 = "operator_removeFromValue";
  switch(a1)
  {
    case 1:
      v2 = "common_Date_DayBeforeYesterday";
      break;
    case 2:
      v2 = "common_Date_DayAfterTomorrow";
      break;
    case 3:
      v2 = "common_Date_Today";
      break;
    case 4:
      v2 = "common_Date_Tomorrow";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E2F4C()
{
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E2FC8(char a1)
{
  v2 = "common_DateTimeRange_Forenoon";
  switch(a1)
  {
    case 1:
      v2 = "angeQualifier_HalfOf";
      break;
    case 2:
      v2 = "angeQualifier_AllOf";
      break;
    case 3:
      v2 = "angeQualifier_EarlierPartOf";
      break;
    case 4:
      v2 = "angeQualifier_EndOf";
      break;
    case 5:
      v2 = "angeQualifier_LaterPartOf";
      break;
    case 6:
      v2 = "angeQualifier_MiddleOf";
      break;
    case 7:
      v2 = "angeQualifier_RestOf";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E31A4(char a1)
{
  v2 = "tionMode_Together";
  switch(a1)
  {
    case 1:
      v2 = "unicationReceived";
      break;
    case 2:
      v2 = "tionTrigger_EmailSent";
      break;
    case 3:
      v2 = "tionTrigger_FaceTimeSent";
      break;
    case 4:
      v2 = "tionTrigger_TextMessageReceived";
      break;
    case 5:
      v2 = "tionTrigger_TextMessageSent";
      break;
    case 6:
      v2 = "tionTrigger_CallSent";
      break;
    case 7:
      v2 = "tionTrigger_CallReceived";
      break;
    case 8:
      v2 = "tionTrigger_EmailReceived";
      break;
    case 9:
      v2 = "tionTrigger_CommunicationSent";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E33D0(char a1)
{
  v2 = "common_MeasurementUnit_Yard";
  switch(a1)
  {
    case 1:
      v2 = "ntUnitType_SpeedUnit";
      break;
    case 2:
      v2 = "ntUnitType_EnergyUnit";
      break;
    case 3:
      v2 = "ntUnitType_DistanceUnit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E350C(char a1, char a2)
{
  v2 = "common_Quantifier_More";
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "DateTime_EveryDay";
    }

    else
    {
      v3 = "DateTime_Weekdays";
    }
  }

  else
  {
    v3 = "common_Quantifier_More";
  }

  if (a2)
  {
    v2 = "DateTime_EveryDay";
    if (a2 != 1)
    {
      v2 = "DateTime_Weekdays";
    }
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_70_2();
  }

  return v4 & 1;
}

uint64_t sub_2679E35C8(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "tionMode_Collaborate";
    }

    else
    {
      v2 = "tionMode_SharePlay";
    }
  }

  else
  {
    v2 = "common_AttachmentType_Result";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E368C()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E3830()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E38B4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "reUnit_DegreesFahrenheit";
    }

    else
    {
      v2 = "common_TemperatureUnit_Degrees";
    }
  }

  else
  {
    v2 = "common_SpatialPosition_Bottom";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E3980()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E3B7C(char a1)
{
  v2 = "Type_IndefiniteReference";
  switch(a1)
  {
    case 1:
      v2 = "common_SearchQualifier_Exactly";
      break;
    case 2:
      v2 = "common_SearchQualifier_NewToMe";
      break;
    case 3:
      v2 = "lifier_Personalized";
      break;
    case 4:
      v2 = "common_SearchQualifier_New";
      break;
    case 5:
      v2 = "common_SearchQualifier_Another";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E3CEC()
{
  OUTLINED_FUNCTION_54_2();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12();
  }

  return v6 & 1;
}

uint64_t sub_2679E3D90()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E3E14()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E3E94()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E4034(char a1)
{
  v2 = "common_ActivationValue_On";
  switch(a1)
  {
    case 1:
      v2 = "common_AdjustmentType_Move";
      break;
    case 2:
      v2 = "common_AdjustmentType_Scroll";
      break;
    case 3:
      v2 = "common_AdjustmentType_Resize";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E415C(char a1)
{
  v2 = "common_UserEntity_Everywhere";
  switch(a1)
  {
    case 1:
      v2 = "common_ZoomDirection_ZoomOut";
      break;
    case 2:
      v2 = "tion_ZoomToFitWidth";
      break;
    case 3:
      v2 = "common_ZoomDirection_ZoomToFit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E42A0()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E44BC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E463C()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E46BC()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E4888(char a1)
{
  v2 = "common_MessageMode_Audio";
  switch(a1)
  {
    case 1:
      v2 = "common_MessageState_Sent";
      break;
    case 2:
      v2 = "common_MessageState_Unread";
      break;
    case 3:
      v2 = "common_MessageState_Unsent";
      break;
    case 4:
      v2 = "common_MessageState_Received";
      break;
    case 5:
      v2 = "common_MessageState_Read";
      break;
    case 6:
      v2 = "common_MessageState_Unsaved";
      break;
    case 7:
      v2 = "common_MessageState_Saved";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E4A78(char a1)
{
  v2 = "common_Meridiem_PM";
  switch(a1)
  {
    case 1:
      v2 = "common_MessageMode_Text";
      break;
    case 2:
      v2 = "common_MessageMode_Video";
      break;
    case 3:
      v2 = "common_MessageMode_Email";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E4BAC(char a1)
{
  v2 = "common_CurrencyAmount_AmountDue";
  switch(a1)
  {
    case 1:
      v2 = "common_ListPosition_TwentyThird";
      break;
    case 2:
      v2 = "operator_addToValue";
      break;
    case 3:
      v2 = "operator_greaterThan";
      break;
    case 4:
      v2 = "operator_decreasing";
      break;
    case 5:
      v2 = "operator_greaterThanOrEquals";
      break;
    case 6:
      v2 = "operator_lessThan";
      break;
    case 7:
      v2 = "operator_lessThanOrEquals";
      break;
    case 8:
      v2 = "operator_increasing";
      break;
    case 9:
      v2 = "operator_notEquals";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E4DC4(char a1)
{
  v2 = "common_TimeUnit_Year";
  switch(a1)
  {
    case 1:
      v2 = "common_UserEntity_Nowhere";
      break;
    case 2:
      v2 = "common_UserEntity_Anywhere";
      break;
    case 3:
      v2 = "common_UserEntity_There";
      break;
    case 4:
      v2 = "common_UserEntity_Here";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E4F30()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E4FB0(char a1)
{
  v2 = "common_Person_User";
  switch(a1)
  {
    case 1:
      v2 = "common_Quantifier_All";
      break;
    case 2:
      v2 = "common_Quantifier_Any";
      break;
    case 3:
      v2 = "common_Quantifier_Multiple";
      break;
    case 4:
      v2 = "common_Quantifier_None";
      break;
    case 5:
      v2 = "common_Quantifier_Remainder";
      break;
    case 6:
      v2 = "common_Quantifier_Single";
      break;
    case 7:
      v2 = "common_Quantifier_Less";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E5180()
{
  OUTLINED_FUNCTION_36_6();
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_70_2();
  }

  return v1 & 1;
}

uint64_t sub_2679E51F4(char a1)
{
  v2 = "ntactAttribute_Contact";
  switch(a1)
  {
    case 1:
      v2 = "ttribute_ConditionEnterVehicle";
      break;
    case 2:
      v2 = "ttribute_ConditionDeparture";
      break;
    case 3:
      v2 = "ttribute_ConditionDepartVehicle";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E5338(char a1, char a2)
{
  v2 = "commonStock_StockType_Stock";
  if (a1)
  {
    v3 = "_UserEntityAttribute_Old";
  }

  else
  {
    v3 = "commonStock_StockType_Stock";
  }

  if (a2)
  {
    v2 = "_UserEntityAttribute_Old";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_267A41C54();
  }

  return v4 & 1;
}

uint64_t sub_2679E53EC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E5584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_12();
  }

  return v9 & 1;
}

uint64_t sub_2679E5618()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_12();
  }

  return v3 & 1;
}

uint64_t sub_2679E5698(char a1)
{
  v2 = "kAttribute_Low52w";
  switch(a1)
  {
    case 1:
      v2 = "kChangeState_GoUpOrDown";
      break;
    case 2:
      v2 = "kChangeState_Unchanged";
      break;
    case 3:
      v2 = "kChangeState_GoUp";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_12();
  }

  return v5 & 1;
}

uint64_t sub_2679E5844(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_55_2();
  a2(v5, a1);
  return sub_267A41C84();
}

uint64_t sub_2679E5898()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5958()
{
  OUTLINED_FUNCTION_55_2();
  sub_2679E7170();
  return sub_267A41C84();
}

uint64_t sub_2679E59B4()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E59FC()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_69_2();
  return sub_267A41C84();
}

uint64_t sub_2679E5AA4()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_74_1();
  return sub_267A41C84();
}

uint64_t sub_2679E5AE4()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_74_1();
  return sub_267A41C84();
}

uint64_t sub_2679E5B30()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5CAC()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_69_2();
  return sub_267A41C84();
}

uint64_t sub_2679E5E38()
{
  v0 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5EF4()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E5F50()
{
  OUTLINED_FUNCTION_41_4();
  switch(v0)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_73_2();
      break;
    case 5:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E604C()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_69_2();
}

uint64_t sub_2679E60B4()
{
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E6124()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E61E4()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    case 3:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E62CC()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_53_2();
      break;
    case 4:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E639C()
{
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E63F4()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_53_2();
      break;
    case 6:
      OUTLINED_FUNCTION_40_4();
      break;
    case 7:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6500()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_53_2();
      break;
    case 7:
      OUTLINED_FUNCTION_40_4();
      break;
    case 8:
      OUTLINED_FUNCTION_67_1();
      break;
    case 9:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6638()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E66EC()
{
  sub_267A41C24();
}

uint64_t sub_2679E6764()
{
  sub_267A41C24();
}

uint64_t sub_2679E67E4()
{
  OUTLINED_FUNCTION_41_4();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    case 5:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E68D8()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6934()
{
  sub_267A41C24();
}

uint64_t sub_2679E69B8()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_52_3();
      break;
    case 4:
      OUTLINED_FUNCTION_40_4();
      break;
    case 7:
      OUTLINED_FUNCTION_67_1();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6ADC()
{
  OUTLINED_FUNCTION_41_4();
  sub_267A41C24();
}

uint64_t sub_2679E6BB0()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6C24()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6C80()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E6CDC()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6DD8()
{
  OUTLINED_FUNCTION_41_4();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6E80()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_53_2();
      break;
    case 3:
      OUTLINED_FUNCTION_62_1();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6F2C()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_62_1();
      break;
    case 2:
      OUTLINED_FUNCTION_53_2();
      break;
    case 5:
      OUTLINED_FUNCTION_67_1();
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_40_4();
      break;
    case 9:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E704C()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_62_1();
      break;
    case 2:
    case 5:
      OUTLINED_FUNCTION_40_4();
      break;
    case 3:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7114()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E7170()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_53_2();
      break;
    case 5:
      OUTLINED_FUNCTION_40_4();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7288()
{
  OUTLINED_FUNCTION_41_4();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    case 6:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E73B4()
{
  OUTLINED_FUNCTION_41_4();
  sub_267A41C24();
}

uint64_t sub_2679E7464()
{
  OUTLINED_FUNCTION_41_4();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E75B4()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_52_3();
      break;
    case 2:
      OUTLINED_FUNCTION_40_4();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7684()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E76E0()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_52_3();
      break;
    case 4:
      OUTLINED_FUNCTION_67_1();
      break;
    case 5:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E77E0()
{
  OUTLINED_FUNCTION_71_2();
  sub_267A41C24();
}

uint64_t sub_2679E7838()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E78F4()
{
  sub_267A41C24();
}

uint64_t sub_2679E7980()
{
  OUTLINED_FUNCTION_15_6();
  sub_267A41C24();
}

uint64_t sub_2679E7A78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_267A41C24();
}

uint64_t sub_2679E7ADC()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E7B38()
{
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_67_1();
      break;
    case 3:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7C08()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7C9C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_267A41C74();
  a3(v6, a2);
  return sub_267A41C84();
}

uint64_t sub_2679E7D00()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E7D4C()
{
  sub_267A41C74();
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7DD4()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7E4C()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7EC8()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E7FA8()
{
  OUTLINED_FUNCTION_50_3();
  sub_2679E7170();
  return sub_267A41C84();
}

uint64_t sub_2679E7FE4()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E80D8()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E813C()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_30_11();
  if (v7)
  {
    v8 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = 0xD000000000000019;
  }

  OUTLINED_FUNCTION_12_7(v0, v8, v1, v2, v3, v4, v5, v6, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E81B8()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_30_11();
  if (v7)
  {
    v8 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = 0xD00000000000001DLL;
  }

  OUTLINED_FUNCTION_12_7(v0, v8, v1, v2, v3, v4, v5, v6, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E824C(uint64_t a1, char a2)
{
  v3 = sub_267A41C74();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD00000000000001ELL;
    }

    else
    {
      v10 = 0xD000000000000025;
    }
  }

  else
  {
    v10 = 0xD000000000000028;
  }

  OUTLINED_FUNCTION_12_7(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E82E0()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_30_11();
  if (v7)
  {
    v8 = 0xD00000000000001FLL;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  OUTLINED_FUNCTION_12_7(v0, v8, v1, v2, v3, v4, v5, v6, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E835C(uint64_t a1, char a2)
{
  v3 = sub_267A41C74();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD000000000000021;
    }
  }

  else
  {
    v10 = 0xD000000000000024;
  }

  OUTLINED_FUNCTION_12_7(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E83EC()
{
  v0 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E84B4()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8548()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E85AC()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_69_2();
  return sub_267A41C84();
}

uint64_t sub_2679E85F0()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_74_1();
  return sub_267A41C84();
}

uint64_t sub_2679E8634()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8698()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E86E4()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_69_2();
  return sub_267A41C84();
}

uint64_t sub_2679E8728()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8788()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_74_1();
  return sub_267A41C84();
}

uint64_t sub_2679E87CC()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_12_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_69_2();

  return sub_267A41C84();
}

uint64_t sub_2679E883C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_267A41C74();
  a3(v4);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E88C0()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_30_11();
  if (v7)
  {
    v8 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  OUTLINED_FUNCTION_12_7(v0, v8, v1, v2, v3, v4, v5, v6, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t CommonUserEntity.UserEntityAttribute.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);

  return sub_267A41984();
}

uint64_t CommonUserEntity.UserEntityAttribute.definedValue.setter(char *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  return sub_267A41994();
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);

  return sub_267A419A4();
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F8, &unk_267A89CA8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v9);
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  sub_267A419B4();
  v6 = OUTLINED_FUNCTION_6_0();
  return v7(v6);
}

uint64_t type metadata accessor for CommonUserEntity.UserEntityAttribute()
{
  result = qword_2801DF628;
  if (!qword_2801DF628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CommonUserEntity.UserEntityAttribute.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F140);
}

uint64_t sub_2679E8C3C()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t sub_2679E8E8C()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t sub_2679E90DC()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t sub_2679E932C()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1A0);
}

uint64_t sub_2679E957C()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A89CC0);
}

uint64_t sub_2679E97CC()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF608, &unk_267A89CC8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t sub_2679E9A1C()
{
  v1 = *(OUTLINED_FUNCTION_20_6() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t sub_2679E9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

SiriMailOntology::CommonUserEntity::UserEntityAttribute::DefinedValue_optional __swiftcall CommonUserEntity.UserEntityAttribute.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C44();

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

unint64_t sub_2679E9D24@<X0>(void *a1@<X8>)
{
  result = CommonUserEntity.UserEntityAttribute.DefinedValue.rawValue.getter();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t (*CommonUserEntity.UserEntityAttribute.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  *(v0 + 32) = sub_267A41974();
  return sub_2676FA8FC;
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F8, &unk_267A89CA8);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 36);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF608, &unk_267A89CC8);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = *(type metadata accessor for CommonUserEntity.UserEntityAttribute() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 44);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

unint64_t sub_2679EA834()
{
  result = qword_2801DF610;
  if (!qword_2801DF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF610);
  }

  return result;
}

unint64_t sub_2679EA88C()
{
  result = qword_2801DF618;
  if (!qword_2801DF618)
  {
    type metadata accessor for CommonUserEntity.UserEntityAttribute();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF618);
  }

  return result;
}

unint64_t sub_2679EA8E8()
{
  result = qword_2801DF620;
  if (!qword_2801DF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF620);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonUserEntity(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2679EAC9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2679EACE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  v7 = OUTLINED_FUNCTION_11_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v12 = OUTLINED_FUNCTION_11_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v16 = OUTLINED_FUNCTION_11_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v19 = OUTLINED_FUNCTION_11_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v22 = OUTLINED_FUNCTION_11_0(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v25 = OUTLINED_FUNCTION_11_0(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
              v28 = OUTLINED_FUNCTION_11_0(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2679EAF74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v14 = OUTLINED_FUNCTION_11_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v18 = OUTLINED_FUNCTION_11_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v21 = OUTLINED_FUNCTION_11_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v24 = OUTLINED_FUNCTION_11_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v27 = OUTLINED_FUNCTION_11_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[9];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
              v30 = OUTLINED_FUNCTION_11_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[10];
              }

              else
              {
                v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v16 = a4[11];
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_2679EB1F4()
{
  sub_2676FC800(319, &qword_2801DF638, &qword_2801DF640, &qword_267A89E38);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v1 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v2 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v3 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v4 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v5 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DF648, &qword_2801DF5E8, &qword_267A89CC0);
              if (v6 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v7 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for CommonUserEntity.UserEntityAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679EB494);
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

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_267A41C54();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return type metadata accessor for CommonUserEntity.UserEntityAttribute();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for CommonUserEntity.UserEntityAttribute();
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_267A41C74();
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return sub_267A41C74();
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2)
{

  return sub_2679E883C(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return sub_267A41C24();
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_267A41C54();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_267A41C24();
}

uint64_t sub_2679EB8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFA0, &qword_267A8CF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E50;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 6645601;
  *(inited + 48) = 0xE300000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 6645601;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "associatedDate");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "associatedDate");
  *(inited + 127) = -18;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x8000000267A9A010;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000016;
  *(inited + 168) = 0x8000000267A9A010;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7475626972747461;
  *(inited + 192) = 0xEA00000000007365;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x7475626972747461;
  *(inited + 216) = 0xEA00000000007365;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x7461646874726962;
  *(inited + 240) = 0xE900000000000065;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x7461646874726962;
  *(inited + 264) = 0xE900000000000065;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000017;
  *(inited + 288) = 0x8000000267A9A030;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000017;
  *(inited + 312) = 0x8000000267A9A030;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x6E6F697461636F6CLL;
  *(inited + 336) = 0xE800000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x6E6F697461636F6CLL;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701667182;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701667182;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "phoneticName");
  *(inited + 437) = 0;
  *(inited + 438) = -5120;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "phoneticName");
  *(inited + 461) = 0;
  *(inited + 462) = -5120;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000016;
  *(inited + 480) = 0x8000000267A9A050;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000016;
  *(inited + 504) = 0x8000000267A9A050;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "relationships");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "relationships");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000018;
  *(inited + 576) = 0x8000000267A99CB0;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x8000000267A99CB0;
  *(inited + 608) = swift_getKeyPath();
  strcpy((inited + 616), "structuredName");
  *(inited + 631) = -18;
  *(inited + 632) = swift_getKeyPath();
  strcpy((inited + 640), "structuredName");
  *(inited + 655) = -18;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000010;
  *(inited + 672) = 0x8000000267A97810;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000010;
  *(inited + 696) = 0x8000000267A97810;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0x507473694C6F7375;
  *(inited + 720) = 0xEF6E6F697469736FLL;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0x507473694C6F7375;
  *(inited + 744) = 0xEF6E6F697469736FLL;
  *(inited + 752) = swift_getKeyPath();
  strcpy((inited + 760), "usoQuantifier");
  *(inited + 774) = -4864;
  *(inited + 776) = swift_getKeyPath();
  strcpy((inited + 784), "usoQuantifier");
  *(inited + 798) = -4864;
  *(inited + 800) = swift_getKeyPath();
  *(inited + 808) = 0xD000000000000010;
  *(inited + 816) = 0x8000000267A97830;
  *(inited + 824) = swift_getKeyPath();
  *(inited + 832) = 0xD000000000000010;
  *(inited + 840) = 0x8000000267A97830;
  *(inited + 848) = swift_getKeyPath();
  *(inited + 856) = 0xD000000000000012;
  *(inited + 864) = 0x8000000267A97850;
  *(inited + 872) = swift_getKeyPath();
  *(inited + 880) = 0xD000000000000012;
  *(inited + 888) = 0x8000000267A97850;
  *(inited + 896) = swift_getKeyPath();
  *(inited + 904) = 0x41656D61536F7375;
  *(inited + 912) = 0xE900000000000073;
  *(inited + 920) = swift_getKeyPath();
  *(inited + 928) = 0x41656D61536F7375;
  *(inited + 936) = 0xE900000000000073;
  *(inited + 944) = swift_getKeyPath();
  *(inited + 952) = 0xD000000000000012;
  *(inited + 960) = 0x8000000267A97870;
  *(inited + 968) = swift_getKeyPath();
  *(inited + 976) = 0xD000000000000012;
  *(inited + 984) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFA8, &qword_267A8D5A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.definition.getter()
{
  if (qword_2801D4B98 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB00, &qword_267A89E58);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF650);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EBF98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF90, &qword_267A8CC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF98, &qword_267A8CF50);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.definition.getter()
{
  if (qword_2801D4BA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB08, &qword_267A89E60);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF668);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EC3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF80, &qword_267A8C8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x737265626D656DLL;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x737265626D656DLL;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000018;
  *(inited + 192) = 0x8000000267A99CB0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000018;
  *(inited + 216) = 0x8000000267A99CB0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF88, &qword_267A8CC20);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.definition.getter()
{
  if (qword_2801D4BA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB10, &qword_267A89E68);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF680);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EC7EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF70, &qword_267A8C578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF78, &qword_267A8C8A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.definition.getter()
{
  if (qword_2801D4BB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB18, &qword_267A89E70);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF698);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ECBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF60, &qword_267A8C248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF68, &qword_267A8C570);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.definition.getter()
{
  if (qword_2801D4BB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB20, &qword_267A89E78);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6B0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ED000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF50, &qword_267A8C198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF58, &qword_267A8C240);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckExistence.definition.getter()
{
  if (qword_2801D4BC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB28, &qword_267A89E80);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6C8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ED21C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF40, &qword_267A8C0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF48, &qword_267A8C190);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckIdentity.definition.getter()
{
  if (qword_2801D4BC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB30, &qword_267A89E88);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6E0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ED438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF30, &qword_267A8C038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "geographicArea");
  *(inited + 55) = -18;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "geographicArea");
  *(inited + 79) = -18;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF38, &qword_267A8C0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckLocation.definition.getter()
{
  if (qword_2801D4BD0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB38, &qword_267A89E90);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6F8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ED658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF20, &qword_267A8BF88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF28, &qword_267A8C030);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Create.definition.getter()
{
  if (qword_2801D4BD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB40, &qword_267A89E98);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF710);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679ED86C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF10, &qword_267A8BED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF18, &qword_267A8BF80);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Delete.definition.getter()
{
  if (qword_2801D4BE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB48, &qword_267A89EA0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF728);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EDA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF00, &qword_267A8BE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF08, &qword_267A8BED0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.GetLocation.definition.getter()
{
  if (qword_2801D4BE8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB50, &qword_267A89EA8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF740);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EDCA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEF0, &qword_267A8BD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEF8, &qword_267A8BE20);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.NoVerb.definition.getter()
{
  if (qword_2801D4BF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB58, &qword_267A89EB0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF758);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EDEB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEE0, &qword_267A8BCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEE8, &qword_267A8BD70);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.PronounceName.definition.getter()
{
  if (qword_2801D4BF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB60, &qword_267A89EB8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF770);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EE0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFED0, &qword_267A8BC18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFED8, &qword_267A8BCC0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Read.definition.getter()
{
  if (qword_2801D4C00 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB68, &qword_267A89EC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF788);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EE2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEC0, &qword_267A8BB18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEC8, &qword_267A8BC10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Request.definition.getter()
{
  if (qword_2801D4C08 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB70, &qword_267A89EC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7A0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EE544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEB0, &qword_267A8BA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEB8, &qword_267A8BB10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.SetIdentity.definition.getter()
{
  if (qword_2801D4C10 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB78, &qword_267A89ED0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7B8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EE798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEA0, &qword_267A8B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEA8, &qword_267A8BA10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Summarise.definition.getter()
{
  if (qword_2801D4C18 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB80, &qword_267A89ED8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7D0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EE9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE90, &qword_267A8B868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE98, &qword_267A8B960);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Update.definition.getter()
{
  if (qword_2801D4C20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB88, &qword_267A89EE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7E8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EEC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE80, &qword_267A8B7B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE88, &qword_267A8B860);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.CheckExistence.definition.getter()
{
  if (qword_2801D4C28 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB90, &qword_267A89EE8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF800);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EEE24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE70, &qword_267A8B708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE78, &qword_267A8B7B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Create.definition.getter()
{
  if (qword_2801D4C30 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB98, &qword_267A89EF0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF818);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EF038()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE60, &qword_267A8B658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE68, &qword_267A8B700);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Delete.definition.getter()
{
  if (qword_2801D4C38 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBA0, &qword_267A89EF8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF830);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EF254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE50, &qword_267A8B5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE58, &qword_267A8B650);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.NoVerb.definition.getter()
{
  if (qword_2801D4C40 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBA8, &qword_267A89F00);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF848);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EF468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE40, &qword_267A8B4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE48, &qword_267A8B5A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Read.definition.getter()
{
  if (qword_2801D4C48 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB0, &qword_267A89F08);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF860);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EF684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE30, &qword_267A8B3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE38, &qword_267A8B4F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Request.definition.getter()
{
  if (qword_2801D4C50 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB8, &qword_267A89F10);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF878);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EF8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE20, &qword_267A8B348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE28, &qword_267A8B3F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Summarise.definition.getter()
{
  if (qword_2801D4C58 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC0, &qword_267A89F18);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF890);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EFAF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE10, &qword_267A8B248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE18, &qword_267A8B340);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Update.definition.getter()
{
  if (qword_2801D4C60 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC8, &qword_267A89F20);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8A8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EFD48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE00, &qword_267A8B198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE08, &qword_267A8B240);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.CheckExistence.definition.getter()
{
  if (qword_2801D4C68 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD0, &qword_267A89F28);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8C0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679EFF64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDF0, &qword_267A8B0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDF8, &qword_267A8B190);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Create.definition.getter()
{
  if (qword_2801D4C70 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD8, &qword_267A89F30);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8D8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F0178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDE0, &qword_267A8B038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDE8, &qword_267A8B0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Delete.definition.getter()
{
  if (qword_2801D4C78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBE0, &qword_267A89F38);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8F0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F0394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDD0, &qword_267A8AF88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDD8, &qword_267A8B030);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.NoVerb.definition.getter()
{
  if (qword_2801D4C80 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBE8, &qword_267A89F40);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF908);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F05A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDC0, &qword_267A8AED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDC8, &qword_267A8AF80);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Read.definition.getter()
{
  if (qword_2801D4C88 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF0, &qword_267A89F48);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF920);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F07C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDB0, &qword_267A8ADD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDB8, &qword_267A8AED0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Request.definition.getter()
{
  if (qword_2801D4C90 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF8, &qword_267A89F50);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF938);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F0A18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDA0, &qword_267A8AD28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDA8, &qword_267A8ADD0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Summarise.definition.getter()
{
  if (qword_2801D4C98 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC00, &qword_267A89F58);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF950);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F0C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD90, &qword_267A8AC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD98, &qword_267A8AD20);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Update.definition.getter()
{
  if (qword_2801D4CA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC08, &qword_267A89F60);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF968);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F0E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD80, &qword_267A8AB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD88, &qword_267A8AC20);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.CheckExistence.definition.getter()
{
  if (qword_2801D4CA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC10, &qword_267A89F68);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF980);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F10A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD70, &qword_267A8AAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD78, &qword_267A8AB70);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Create.definition.getter()
{
  if (qword_2801D4CB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC18, &qword_267A89F70);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF998);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F12B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD60, &qword_267A8AA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD68, &qword_267A8AAC0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Delete.definition.getter()
{
  if (qword_2801D4CB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC20, &qword_267A89F78);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9B0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F14D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD50, &qword_267A8A968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD58, &qword_267A8AA10);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.NoVerb.definition.getter()
{
  if (qword_2801D4CC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC28, &qword_267A89F80);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9C8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F16E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD40, &qword_267A8A8B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD48, &qword_267A8A960);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Read.definition.getter()
{
  if (qword_2801D4CC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC30, &qword_267A89F88);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9E0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F1904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD30, &qword_267A8A7B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD38, &qword_267A8A8B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Request.definition.getter()
{
  if (qword_2801D4CD0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC38, &qword_267A89F90);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9F8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F1B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD20, &qword_267A8A708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD28, &qword_267A8A7B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Summarise.definition.getter()
{
  if (qword_2801D4CD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC40, &qword_267A89F98);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA10);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F1D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD10, &qword_267A8A608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD18, &qword_267A8A700);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Update.definition.getter()
{
  if (qword_2801D4CE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC48, &qword_267A89FA0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA28);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F1FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD00, &qword_267A8A558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD08, &qword_267A8A600);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.CheckExistence.definition.getter()
{
  if (qword_2801D4CE8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC50, &qword_267A89FA8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA40);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F21E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCF0, &qword_267A8A4A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCF8, &qword_267A8A550);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Create.definition.getter()
{
  if (qword_2801D4CF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC58, &qword_267A89FB0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA58);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F23F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCE0, &qword_267A8A3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCE8, &qword_267A8A4A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Delete.definition.getter()
{
  if (qword_2801D4CF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC60, &qword_267A89FB8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA70);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F2614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCD0, &qword_267A8A348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCD8, &qword_267A8A3F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.NoVerb.definition.getter()
{
  if (qword_2801D4D00 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC68, &qword_267A89FC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA88);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F2828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCC0, &qword_267A8A298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCC8, &qword_267A8A340);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Read.definition.getter()
{
  if (qword_2801D4D08 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC70, &qword_267A89FC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAA0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F2A44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCB0, &qword_267A8A198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCB8, &qword_267A8A290);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Request.definition.getter()
{
  if (qword_2801D4D10 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC78, &qword_267A89FD0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAB8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F2C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCA0, &qword_267A8A0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCA8, &qword_267A8A190);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Summarise.definition.getter()
{
  if (qword_2801D4D18 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC80, &qword_267A89FD8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAD0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F2EB4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679F2F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC90, &qword_267A89FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC98, &qword_267A8A0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Update.definition.getter()
{
  if (qword_2801D4D20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC88, &qword_267A89FE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAE8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2679F3BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_118();
  sub_2676F8AF4(a1, v7, a5, a6);
  return a7(v7);
}

uint64_t sub_2679F3CD4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F3E04()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F3E44()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.phoneticName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F3ED0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.relationships.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F41C8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4214()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F44B4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4500()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.members.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F454C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F47EC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4838()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F4AD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4B24()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F4B64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_2679F4E58()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4EF0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5020()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F50B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5150()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.GetLocation.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F51E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5280()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.PronounceName.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5318()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F53FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F54E0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.SetIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5578()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F565C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F56F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F578C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5824()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F58BC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5954()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5A38()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5AD0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5BB4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5C4C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5CE4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5D7C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5E14()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5EAC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5F90()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6028()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F610C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F61A4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F623C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F62D4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F636C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6404()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F64E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6580()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6664()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F66FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6794()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F682C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F68C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F695C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6A40()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6AD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6BBC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Update.userEntities.getter();
  *v0 = result;
  return result;
}

void Entity<A>.init(age:associatedDate:associatedOrganization:attributes:birthdate:identifyingRelationship:location:name:phoneticName:phoneticStructuredName:relationships:specifyingContactAddress:structuredName:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_312();
  v128 = v39;
  v129 = v38;
  v130 = v40;
  v131 = v42;
  v132 = v41;
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  v127 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  v126 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  v125 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  v124 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  v123 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DD0, &qword_267A6E530);
  OUTLINED_FUNCTION_3(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9B80, &qword_267A6B1C0);
  OUTLINED_FUNCTION_3(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DD8, &qword_267A6E538);
  OUTLINED_FUNCTION_3(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_95();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DB8, &qword_267A6E390);
  OUTLINED_FUNCTION_3(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_110();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9970, &qword_267A695C0);
  OUTLINED_FUNCTION_3(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_118();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96C0, &qword_267A67298);
  OUTLINED_FUNCTION_3(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_119();
  if (qword_2801D4B98 != -1)
  {
    swift_once();
  }

  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB00, &qword_267A89E58);
  OUTLINED_FUNCTION_175(v97, qword_2801DF650);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  sub_267A419D4();
  swift_getKeyPath();
  sub_2676F8AF4(v44, v34, &qword_2801D96C0, &qword_267A67298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB8, &qword_267A8D5D8);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v98, v99);
  sub_267A00F7C(&qword_2801D96E8, type metadata accessor for Common.Age);
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v132, v36, &qword_2801D9970, &qword_267A695C0);
  sub_267A00F7C(&qword_2801D99A8, type metadata accessor for Common.Date);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_1770();
  swift_getKeyPath();
  sub_2676F8AF4(v131, v37, &qword_2801D9DB8, &qword_267A6E390);
  sub_267A00F7C(&qword_2801D9DC8, type metadata accessor for Common.Organization);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v100, v101);
  OUTLINED_FUNCTION_196();
  sub_267A41A54();
  swift_getKeyPath();
  sub_2676F8AF4(v130, v36, &qword_2801D9970, &qword_267A695C0);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_1770();
  swift_getKeyPath();
  sub_2676F8AF4(v129, v35, &qword_2801D9DD8, &qword_267A6E538);
  sub_267A00F7C(&qword_2801D9DE8, type metadata accessor for Common.PersonRelationship);
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v128, v118, &qword_2801D9B80, &qword_267A6B1C0);
  sub_267A00F7C(&qword_2801D9B90, type metadata accessor for Common.Geolocation);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_267A41A34();
  swift_getKeyPath();
  sub_267A41A34();
  swift_getKeyPath();
  sub_2676F8AF4(a24, v119, &qword_2801D9DD0, &qword_267A6E530);
  sub_267A00F7C(&qword_2801D9DF0, type metadata accessor for Common.PersonName);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1770();
  swift_getKeyPath();
  sub_267A41A54();
  swift_getKeyPath();
  sub_2676F8AF4(a26, v120, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v102, v103);
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(a27, v119, &qword_2801D9DD0, &qword_267A6E530);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1770();
  swift_getKeyPath();
  sub_2676F8AF4(a28, v121, &qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v104, v105);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a29, v122, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v106, v107);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a30, v123, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v108, v109);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a31, v124, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v110, v111);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a32, v125, &qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v112, v113);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a33, v126, &qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_201();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(a34, v127, &qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v114, v115);
  OUTLINED_FUNCTION_22_3();
  sub_267A41A14();
  sub_2676F8798(a34, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(a33, &qword_2801DFFB0, &qword_267A8D5A8);
  sub_2676F8798(a32, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(a31, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(a30, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(a29, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(a28, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(a27, &qword_2801D9DD0, &qword_267A6E530);
  sub_2676F8798(a26, &qword_2801D9710, &qword_267A67480);
  sub_2676F8798(a24, &qword_2801D9DD0, &qword_267A6E530);
  sub_2676F8798(v128, &qword_2801D9B80, &qword_267A6B1C0);
  sub_2676F8798(v129, &qword_2801D9DD8, &qword_267A6E538);
  sub_2676F8798(v130, &qword_2801D9970, &qword_267A695C0);
  sub_2676F8798(v131, &qword_2801D9DB8, &qword_267A6E390);
  v116 = OUTLINED_FUNCTION_317();
  sub_2676F8798(v116, v117, &qword_267A695C0);
  sub_2676F8798(v44, &qword_2801D96C0, &qword_267A67298);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679F7A48()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F7B64()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F7BB8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.phoneticName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F7C5C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.relationships.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F85C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F85F0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void Entity<A>.init(attributes:members:name:specifyingContactAddress:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_312();
  v94 = v24;
  v95 = v23;
  v96 = v26;
  v97 = v25;
  v92 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_47(v31, v92);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_52(v35, v93);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_95();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_115();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_110();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_124();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_119();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_155();
  if (qword_2801D4BA8 != -1)
  {
    swift_once();
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB10, &qword_267A89E68);
  OUTLINED_FUNCTION_175(v54, qword_2801DF680);
  v55 = OUTLINED_FUNCTION_102();
  type metadata accessor for Sirikit.ContactGroup(v55);
  OUTLINED_FUNCTION_40_5();
  sub_267A419D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE8, &qword_267A8DAA8);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v56, v57);
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v58, v59);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  sub_267A00F7C(&qword_2801D9720, type metadata accessor for Common.Agent);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_169_1(KeyPath, v61, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v62, v63);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  swift_getKeyPath();
  v64 = OUTLINED_FUNCTION_317();
  sub_2676F8AF4(v64, v65, v66, v67);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v68, v69);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_173_1(v70, v71, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v72, v73);
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v74 = swift_getKeyPath();
  OUTLINED_FUNCTION_172_1(v74, v75, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v76, v77);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v78 = swift_getKeyPath();
  OUTLINED_FUNCTION_171_1(v78, v79, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v80, v81);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  swift_getKeyPath();
  v82 = OUTLINED_FUNCTION_250();
  sub_2676F8AF4(v82, v83, v84, v85);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v86, v87);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v88 = swift_getKeyPath();
  OUTLINED_FUNCTION_53_3(v88, v89, &qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_170_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v90, v91);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  OUTLINED_FUNCTION_165_1();
  sub_2676F8798(v22, &qword_2801DFFE0, &qword_267A8DA78);
  sub_2676F8798(a22, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(a21, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v94, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v95, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(v96, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(v97, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679F8FA4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F8FD0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.members.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F8FFC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F993C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F9968()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679FA2A8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FA2D4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679FA7B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FA9F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FAF34()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB170()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB3AC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.GetLocation.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB5E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB824()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.PronounceName.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FBA60()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FBD10()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FBFC0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.SetIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC1FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC4AC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC6E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC924()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCB60()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCD9C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCFD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD288()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD4C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD774()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD9B0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FDBEC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FDE28()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE064()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE2A0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE550()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE78C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEA3C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEC78()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEEB4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF0F0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF32C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF568()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF818()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFA54()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFD04()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFF40()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A0017C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A003B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A005F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00830()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00AE0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00D1C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267A01014()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_2676F8AF4(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return sub_267A41A14();
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 15) = a8;
  *(v8 - 14) = a7;
  *(v8 - 13) = a6;
  *(v8 - 12) = a5;
  *(v8 - 11) = a4;
  *(v8 - 22) = a2;
  *(v8 - 21) = a3;
  *(v8 - 23) = result;
  v9 = v8[3];
  *(v8 - 18) = v8[4];
  *(v8 - 17) = v9;
  *(v8 - 16) = v8[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_267A41944();
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  v4 = *(v2 - 144);
  v5 = *(v2 - 152);

  return sub_2676F8AF4(v4, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_2676F8798(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_2676F8798(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 160);

  return sub_2676F8AF4(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);

  return sub_267A41A34();
}

uint64_t OUTLINED_FUNCTION_165_1()
{

  return sub_2676F8798(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_169_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 88);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_170_1()
{

  return sub_267A41A14();
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 120);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_172_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 112);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_173_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 104);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t Sirikit.AudiobookAuthor.age.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.$age.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.associatedDate.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F0D0);
}

uint64_t sub_267A01FC4()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 20);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$associatedDate.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.associatedOrganization.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC50, &unk_267A79ED0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A78C60);
}

uint64_t sub_267A0225C()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 24);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$associatedOrganization.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC58, &qword_267A79EE0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC50, &unk_267A79ED0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.attributes.getter()
{
  v0 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  sub_267A41984();
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.attributes.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1 = *(type metadata accessor for Sirikit.AudiobookAuthor(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F8, &qword_267A79530);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.birthdate.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F0D0);
}

uint64_t sub_267A026F8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 32);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$birthdate.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.identifyingRelationship.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC70, &qword_267A79EF8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A79F00);
}

uint64_t sub_267A02990()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 36);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$identifyingRelationship.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC78, &qword_267A79F08);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC70, &qword_267A79EF8);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.location.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D0, &unk_267A8F0E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A79BB0);
}

uint64_t sub_267A02C28()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 40);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$location.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D8, &unk_267A8F0F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D0, &unk_267A8F0E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.name.getter()
{
  v0 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.name.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v1 = *(type metadata accessor for Sirikit.AudiobookAuthor(v0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Sirikit.AudiobookAuthor.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.phoneticName.getter()
{
  v0 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.phoneticName.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v1 = *(type metadata accessor for Sirikit.AudiobookAuthor(v0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Sirikit.AudiobookAuthor.$phoneticName.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.phoneticStructuredName.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F100);
}

uint64_t sub_267A032A8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 52);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$phoneticStructuredName.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC88, &unk_267A79F20);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.relationships.getter()
{
  v0 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  sub_267A41984();
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.relationships.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1 = *(type metadata accessor for Sirikit.AudiobookAuthor(v0) + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.$relationships.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC98, &qword_267A79F30);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.specifyingContactAddress.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A79550);
}

uint64_t sub_267A036FC()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.structuredName.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F100);
}

uint64_t sub_267A03948()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$structuredName.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC88, &unk_267A79F20);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F140);
}

uint64_t sub_267A03B94()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423A0);
}

uint64_t sub_267A03DE0()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F170);
}

uint64_t sub_267A0402C()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423D0);
}

uint64_t sub_267A04278()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_267A044C4()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F0C0);
}

uint64_t sub_267A04710()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_267A0495C()
{
  v1 = *(OUTLINED_FUNCTION_41_5() + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor(0) + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A04E94()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 28);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423A0);
}

uint64_t Sirikit.ContactAgent.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F170);
}

uint64_t Sirikit.ContactAgent.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423D0);
}

uint64_t Sirikit.ContactAgent.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A05770()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 44);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A05974()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 48);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A8F0B8);
}

uint64_t Sirikit.ContactAgent.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0338, &unk_267A8F1F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactAgent.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1D0);
}

uint64_t Sirikit.ContactAgent.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactAgent(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.$members.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9F8, &qword_267A8F200);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9F0, &unk_267A79BD0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.name.getter()
{
  v0 = *(type metadata accessor for Sirikit.ContactGroup(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v2;
}

uint64_t Sirikit.ContactGroup.name.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v1 = *(type metadata accessor for Sirikit.ContactGroup(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Sirikit.ContactGroup.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.specifyingContactAddress.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A79550);
}

uint64_t Sirikit.ContactGroup.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F140);
}

uint64_t Sirikit.ContactGroup.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423A0);
}

uint64_t Sirikit.ContactGroup.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F170);
}

uint64_t Sirikit.ContactGroup.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423D0);
}

uint64_t Sirikit.ContactGroup.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1A0);
}

uint64_t Sirikit.ContactGroup.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.ContactGroup.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A8F210);
}

uint64_t Sirikit.ContactGroup.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0348, &qword_267A8F218);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A07238()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 56);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactGroup.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1D0);
}

uint64_t Sirikit.ContactGroup.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.ContactGroup(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.$attributes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);

  return sub_267A419A4();
}

uint64_t sub_267A0756C(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v3;
}

uint64_t sub_267A075F8()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Sirikit.MusicArtist.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A077F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6_6(v8, v12);
  LODWORD(a2) = *(a2(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_24_4();
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A79550);
}

uint64_t Sirikit.MusicArtist.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A07A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6_6(v8, v12);
  LODWORD(a2) = *(a2(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_24_4();
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A8F140);
}

uint64_t Sirikit.MusicArtist.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423A0);
}

uint64_t Sirikit.MusicArtist.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F170);
}

uint64_t Sirikit.MusicArtist.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423D0);
}

uint64_t Sirikit.MusicArtist.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A08390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_6_6(v8, v12);
  LODWORD(a2) = *(a2(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_24_4();
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A8F1A0);
}

uint64_t Sirikit.MusicArtist.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A8F0B0);
}

uint64_t Sirikit.MusicArtist.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0358, &qword_267A8F230);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.MusicArtist.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1D0);
}

uint64_t Sirikit.MusicArtist.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.MusicArtist(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t _s16SiriMailOntology7SirikitO11MusicArtistV10attributesSayAA13CommonContactO0I9AttributeVGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  sub_267A41984();
  return v1;
}

uint64_t _s16SiriMailOntology7SirikitO11MusicArtistV10attributesSayAA13CommonContactO0I9AttributeVGvs_0(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_100_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, a1);
  return sub_267A41994();
}

uint64_t Sirikit.PaymentOrganization.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423A0);
}

uint64_t Sirikit.PaymentOrganization.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F170);
}

uint64_t Sirikit.PaymentOrganization.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A423D0);
}

uint64_t Sirikit.PaymentOrganization.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &qword_267A8F240);
}

uint64_t Sirikit.PaymentOrganization.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0368, &unk_267A8F248);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.PaymentOrganization.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F1D0);
}

uint64_t Sirikit.PaymentOrganization.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.PaymentOrganization(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267A09D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  sub_2676F8AF4(a1, &v11 - v9, a2, a3);
  OUTLINED_FUNCTION_1848();
  sub_267A41994();
  return sub_2676F8798(a1, a2, a3);
}

uint64_t sub_267A09E0C(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  OUTLINED_FUNCTION_1848();
  sub_267A41984();
  return v3;
}

uint64_t sub_267A09EB0()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v2 = *(v1(v0) + 20);
  v3 = OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_100_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.CheckExistence.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.CheckIdentity.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.geographicArea.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$geographicArea.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$reference.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.Create.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.Create(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.Delete.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.Delete(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.NoVerb.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.PronounceName.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.Read.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.Read(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Sirikit.AudiobookAuthor.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.Request(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v7, v8, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.Request.$select.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Sirikit.AudiobookAuthor.Request(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}