void initializeWithCopy for LoadedFlowInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  *(a1 + 32) = v2;
  v3 = **(v2 - 8);
  sub_1DD0DCF8C();
}

void assignWithCopy for LoadedFlowInfo(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t initializeWithTake for LoadedFlowInfo(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = sub_1DD0DC76C();
      (*(*(v10 - 8) + 32))(v7, v8, v10);
      goto LABEL_22;
    case 1u:
      v18 = sub_1DD0DC76C();
      (*(*(v18 - 8) + 32))(v7, v8, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v7[*(v19 + 48)] = *&v8[*(v19 + 48)];
      goto LABEL_22;
    case 4u:
      v21 = sub_1DD0DB1EC();
      (*(*(v21 - 8) + 32))(v7, v8, v21);
      goto LABEL_22;
    case 6u:
      v22 = sub_1DD0DB4BC();
      (*(*(v22 - 8) + 32))(v7, v8, v22);
      v23 = type metadata accessor for USOParse();
      v24 = v23[5];
      v25 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v7[v24], &v8[v24], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(*(v25 - 8) + 32))(&v7[v24], &v8[v24], v25);
        __swift_storeEnumTagSinglePayload(&v7[v24], 0, 1, v25);
      }

      *&v7[v23[6]] = *&v8[v23[6]];
      v38 = v23[7];
      v39 = &v7[v38];
      v40 = &v8[v38];
      v39[4] = v40[4];
      *v39 = *v40;
      goto LABEL_22;
    case 7u:
      v27 = sub_1DD0DB4BC();
      (*(*(v27 - 8) + 32))(v7, v8, v27);
      v28 = type metadata accessor for USOParse();
      v29 = v28[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v7[v29], &v8[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 32))(&v7[v29], &v8[v29], v30);
        __swift_storeEnumTagSinglePayload(&v7[v29], 0, 1, v30);
      }

      *&v7[v28[6]] = *&v8[v28[6]];
      v41 = v28[7];
      v42 = &v7[v41];
      v43 = &v8[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse();
      *&v7[v44[5]] = *&v8[v44[5]];
      *&v7[v44[6]] = *&v8[v44[6]];
      *&v7[v44[7]] = *&v8[v44[7]];
      goto LABEL_22;
    case 8u:
      v11 = sub_1DD0DD12C();
      (*(*(v11 - 8) + 32))(v7, v8, v11);
      v12 = type metadata accessor for NLRouterParse();
      *&v7[v12[5]] = *&v8[v12[5]];
      v13 = v12[6];
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = type metadata accessor for USOParse();
      if (__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v14, v15, *(*(v17 - 8) + 64));
      }

      else
      {
        v53 = v12;
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v14, v15, v32);
        v33 = v16[5];
        v34 = sub_1DD0DB3EC();
        v54 = v33;
        v35 = &v15[v33];
        v36 = v34;
        if (__swift_getEnumTagSinglePayload(v35, 1, v34))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v14[v54], &v15[v54], *(*(v37 - 8) + 64));
        }

        else
        {
          (*(*(v36 - 8) + 32))(&v14[v54], &v15[v54], v36);
          __swift_storeEnumTagSinglePayload(&v14[v54], 0, 1, v36);
        }

        *&v14[v16[6]] = *&v15[v16[6]];
        v45 = v16[7];
        v46 = &v14[v45];
        v47 = &v15[v45];
        v46[4] = v47[4];
        *v46 = *v47;
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
        v12 = v53;
      }

      *&v7[v12[7]] = *&v8[v12[7]];
      goto LABEL_22;
    case 9u:
      v20 = sub_1DD0DD08C();
      (*(*(v20 - 8) + 32))(v7, v8, v20);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v7, v8, *(*(v9 - 8) + 64));
      break;
  }

  v48 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v49 = a1 + v48;
  v50 = a2 + v48;
  v51 = *(v50 + 16);
  *v49 = *v50;
  *(v49 + 16) = v51;
  *(v49 + 32) = *(v50 + 32);
  return a1;
}

uint64_t *assignWithTake for LoadedFlowInfo(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  if (a1 != a2)
  {
    v7 = a3[6];
    v8 = a1 + v7;
    v9 = a2 + v7;
    sub_1DCB28538();
    v10 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DC76C();
        (*(*(v11 - 8) + 32))(v8, v9, v11);
        goto LABEL_23;
      case 1u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v8, v9, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
        goto LABEL_23;
      case 4u:
        v22 = sub_1DD0DB1EC();
        (*(*(v22 - 8) + 32))(v8, v9, v22);
        goto LABEL_23;
      case 6u:
        v23 = sub_1DD0DB4BC();
        (*(*(v23 - 8) + 32))(v8, v9, v23);
        v24 = type metadata accessor for USOParse();
        v25 = v24[5];
        v26 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
        }

        else
        {
          (*(*(v26 - 8) + 32))(&v8[v25], &v9[v25], v26);
          __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
        }

        *&v8[v24[6]] = *&v9[v24[6]];
        v39 = v24[7];
        v40 = &v8[v39];
        v41 = &v9[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        goto LABEL_23;
      case 7u:
        v28 = sub_1DD0DB4BC();
        (*(*(v28 - 8) + 32))(v8, v9, v28);
        v29 = type metadata accessor for USOParse();
        v30 = v29[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v8[v30], &v9[v30], v31);
          __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
        }

        *&v8[v29[6]] = *&v9[v29[6]];
        v42 = v29[7];
        v43 = &v8[v42];
        v44 = &v9[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        v45 = type metadata accessor for LinkParse();
        *&v8[v45[5]] = *&v9[v45[5]];
        *&v8[v45[6]] = *&v9[v45[6]];
        *&v8[v45[7]] = *&v9[v45[7]];
        goto LABEL_23;
      case 8u:
        v12 = sub_1DD0DD12C();
        (*(*(v12 - 8) + 32))(v8, v9, v12);
        v13 = type metadata accessor for NLRouterParse();
        *&v8[v13[5]] = *&v9[v13[5]];
        v14 = v13[6];
        v15 = &v8[v14];
        v16 = &v9[v14];
        v17 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v16, 1, v17))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v15, v16, *(*(v18 - 8) + 64));
        }

        else
        {
          v56 = v13;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v15, v16, v33);
          v34 = v17[5];
          v35 = sub_1DD0DB3EC();
          v57 = v34;
          v36 = &v16[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v57], &v16[v57], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v15[v57], &v16[v57], v37);
            __swift_storeEnumTagSinglePayload(&v15[v57], 0, 1, v37);
          }

          *&v15[v17[6]] = *&v16[v17[6]];
          v46 = v17[7];
          v47 = &v15[v46];
          v48 = &v16[v46];
          v47[4] = v48[4];
          *v47 = *v48;
          __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
          v13 = v56;
        }

        *&v8[v13[7]] = *&v9[v13[7]];
        goto LABEL_23;
      case 9u:
        v21 = sub_1DD0DD08C();
        (*(*(v21 - 8) + 32))(v8, v9, v21);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v8, v9, *(*(v10 - 8) + 64));
        break;
    }
  }

  v49 = a3[7];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = a3[8];
  v52 = a1 + v51;
  v53 = a2 + v51;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v51));
  v54 = *(v53 + 16);
  *v52 = *v53;
  *(v52 + 16) = v54;
  *(v52 + 32) = *(v53 + 32);
  return a1;
}

uint64_t sub_1DCD21010()
{
  result = type metadata accessor for Parse(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD21100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_64_5(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_64_5(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }
}

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.UnableToHandleRequest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.UnableToHandleRequest(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCD21390(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return sub_1DCD1BB80(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_1DCD213A8(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCD21424(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  OUTLINED_FUNCTION_46_2();
  v10();
  v11 = *a1;
  v12 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v11, v12, v13);
  return a1;
}

uint64_t *sub_1DCD214A4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t storeEnumTagSinglePayload for FlowUnhandledReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD21544(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCD21574(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

void initializeBufferWithCopyOfBuffer for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v3 = *(a2 + 48);
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void assignWithCopy for ExecuteResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t initializeWithTake for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a3 + 36);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *(a1 + 32) = v6;
  v10 = type metadata accessor for PluginAction();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    memcpy(v8, v9, *(*(v11 - 8) + 64));
  }

  else
  {
    v91 = v3;
    *v8 = *v9;
    v12 = v10[5];
    v13 = v8 + v12;
    v14 = v9 + v12;
    v90 = sub_1DD0DB04C();
    v87 = *(*(v90 - 8) + 32);
    v87(v13, v14);
    v15 = type metadata accessor for Input(0);
    v16 = v15[5];
    v17 = &v13[v16];
    v18 = &v14[v16];
    v88 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v17, v18, v19);
        goto LABEL_25;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v17, v18, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v17[*(v30 + 48)] = *&v18[*(v30 + 48)];
        goto LABEL_25;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v17, v18, v32);
        goto LABEL_25;
      case 6u:
        v85 = v15;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v17, v18, v33);
        v83 = type metadata accessor for USOParse();
        v34 = v83[5];
        v80 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v18[v34], 1, v80))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v17[v34], &v18[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v80 - 8) + 32))(&v17[v34], &v18[v34]);
          __swift_storeEnumTagSinglePayload(&v17[v34], 0, 1, v80);
        }

        *&v17[v83[6]] = *&v18[v83[6]];
        v43 = v83[7];
        v44 = &v17[v43];
        v45 = &v18[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_21;
      case 7u:
        v85 = v15;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v17, v18, v36);
        v84 = type metadata accessor for USOParse();
        v37 = v84[5];
        v81 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v18[v37], 1, v81))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v17[v37], &v18[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v81 - 8) + 32))(&v17[v37], &v18[v37]);
          __swift_storeEnumTagSinglePayload(&v17[v37], 0, 1, v81);
        }

        *&v17[v84[6]] = *&v18[v84[6]];
        v46 = v84[7];
        v47 = &v17[v46];
        v48 = &v18[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v17[v49[5]] = *&v18[v49[5]];
        *&v17[v49[6]] = *&v18[v49[6]];
        *&v17[v49[7]] = *&v18[v49[7]];
LABEL_21:
        swift_storeEnumTagMultiPayload();
        v15 = v85;
        break;
      case 8u:
        v20 = sub_1DD0DD12C();
        (*(*(v20 - 8) + 32))(v17, v18, v20);
        v21 = type metadata accessor for NLRouterParse();
        *&v17[*(v21 + 20)] = *&v18[*(v21 + 20)];
        v77 = v17;
        v78 = v21;
        v22 = *(v21 + 24);
        v82 = &v17[v22];
        v23 = &v18[v22];
        v24 = type metadata accessor for USOParse();
        v79 = v23;
        v25 = v23;
        v26 = v24;
        if (__swift_getEnumTagSinglePayload(v25, 1, v24))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v82, v79, *(*(v27 - 8) + 64));
          v28 = v77;
        }

        else
        {
          v86 = v15;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v82, v79, v39);
          v76 = v26;
          v40 = *(v26 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v79[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v82[v40], &v79[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v82[v40], &v79[v40], v41);
            __swift_storeEnumTagSinglePayload(&v82[v40], 0, 1, v41);
          }

          v28 = v77;
          *&v82[*(v76 + 24)] = *&v79[*(v76 + 24)];
          v50 = *(v76 + 28);
          v51 = &v82[v50];
          v52 = &v79[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v82, 0, 1, v76);
          v15 = v86;
        }

        *&v28[*(v78 + 28)] = *&v18[*(v78 + 28)];
        goto LABEL_25;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v17, v18, v31);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v17, v18, *(*(v88 - 8) + 64));
        break;
    }

    *&v13[v15[6]] = *&v14[v15[6]];
    v53 = v15[7];
    v54 = &v13[v53];
    v55 = &v14[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v13[v15[8]] = v14[v15[8]];
    *(v8 + v10[6]) = *(v9 + v10[6]);
    *(v8 + v10[7]) = *(v9 + v10[7]);
    *(v8 + v10[8]) = *(v9 + v10[8]);
    v57 = v10[9];
    v58 = (v8 + v57);
    v59 = (v9 + v57);
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = (v58 + v62);
      v64 = (v59 + v62);
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = v64[1];
        *v63 = *v64;
        v63[1] = v67;
        v89 = *(v65 + 24);
        v68 = sub_1DD0DB66C();
        (*(*(v68 - 8) + 32))(v63 + v89, v64 + v89, v68);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
    }

    v69 = v10[10];
    v3 = v91;
    if (__swift_getEnumTagSinglePayload(v9 + v69, 1, v90))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(v8 + v69, v9 + v69, *(*(v70 - 8) + 64));
    }

    else
    {
      (v87)(v8 + v69, v9 + v69, v90);
      __swift_storeEnumTagSinglePayload(v8 + v69, 0, 1, v90);
    }

    *(v8 + v10[11]) = *(v9 + v10[11]);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  }

  v71 = *(v3 + 40);
  v72 = (a1 + v71);
  v73 = (a2 + v71);
  v74 = v73[1];
  *v72 = *v73;
  v72[1] = v74;
  return a1;
}

uint64_t assignWithTake for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a1 + 48);
  if (v8 > 0xFB)
  {
    goto LABEL_4;
  }

  v9 = *(a2 + 48);
  if (v9 > 0xFB)
  {
    sub_1DCD23DFC(a1 + 32);
LABEL_4:
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  sub_1DCD21390(v10, v11, v8);
LABEL_6:
  v12 = *(a3 + 36);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for PluginAction();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v15);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (!EnumTagSinglePayload)
  {
    if (v17)
    {
      sub_1DCB28538();
      goto LABEL_12;
    }

    v231 = a3;
    v27 = *(v14 + 1);
    v28 = *(v13 + 1);
    *v13 = *v14;
    *(v13 + 1) = v27;

    v29 = v15[5];
    v30 = &v13[v29];
    v31 = &v14[v29];
    v32 = sub_1DD0DB04C();
    v226 = *(v32 - 8);
    v229 = v32;
    v218 = *(v226 + 40);
    v218(v30, v31);
    v33 = type metadata accessor for Input(0);
    v34 = v33;
    if (a1 != a2)
    {
      v35 = *(v33 + 20);
      v36 = &v30[v35];
      v37 = &v31[v35];
      sub_1DCB28538();
      v223 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 32))(v36, v37, v38);
          goto LABEL_65;
        case 1u:
          v76 = sub_1DD0DC76C();
          (*(*(v76 - 8) + 32))(v36, v37, v76);
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v36[*(v77 + 48)] = *&v37[*(v77 + 48)];
          goto LABEL_65;
        case 4u:
          v79 = sub_1DD0DB1EC();
          (*(*(v79 - 8) + 32))(v36, v37, v79);
          goto LABEL_65;
        case 6u:
          v80 = sub_1DD0DB4BC();
          (*(*(v80 - 8) + 32))(v36, v37, v80);
          v210 = type metadata accessor for USOParse();
          v216 = v36;
          v81 = v210[5];
          v82 = sub_1DD0DB3EC();
          v204 = v81;
          v83 = &v37[v81];
          v84 = v82;
          if (__swift_getEnumTagSinglePayload(v83, 1, v82))
          {
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v216[v204], &v37[v204], *(*(v85 - 8) + 64));
          }

          else
          {
            (*(*(v84 - 8) + 32))(&v216[v204], &v37[v204], v84);
            __swift_storeEnumTagSinglePayload(&v216[v204], 0, 1, v84);
          }

          *&v216[v210[6]] = *&v37[v210[6]];
          v124 = v210[7];
          v125 = &v216[v124];
          v126 = &v37[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          goto LABEL_65;
        case 7u:
          v89 = sub_1DD0DB4BC();
          (*(*(v89 - 8) + 32))(v36, v37, v89);
          v211 = type metadata accessor for USOParse();
          v217 = v36;
          v90 = v211[5];
          v91 = sub_1DD0DB3EC();
          v205 = v90;
          v92 = &v37[v90];
          v93 = v91;
          if (__swift_getEnumTagSinglePayload(v92, 1, v91))
          {
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v95 = v217;
            memcpy(&v217[v205], &v37[v205], *(*(v94 - 8) + 64));
          }

          else
          {
            (*(*(v93 - 8) + 32))(&v217[v205], &v37[v205], v93);
            __swift_storeEnumTagSinglePayload(&v217[v205], 0, 1, v93);
            v95 = v217;
          }

          *&v95[v211[6]] = *&v37[v211[6]];
          v127 = v211[7];
          v128 = &v95[v127];
          v129 = &v37[v127];
          v128[4] = v129[4];
          *v128 = *v129;
          v130 = type metadata accessor for LinkParse();
          *&v95[v130[5]] = *&v37[v130[5]];
          *&v95[v130[6]] = *&v37[v130[6]];
          *&v95[v130[7]] = *&v37[v130[7]];
          goto LABEL_65;
        case 8u:
          v64 = sub_1DD0DD12C();
          (*(*(v64 - 8) + 32))(v36, v37, v64);
          v65 = type metadata accessor for NLRouterParse();
          *&v36[*(v65 + 20)] = *&v37[*(v65 + 20)];
          v66 = *(v65 + 24);
          v203 = v65;
          v209 = &v36[v66];
          v200 = v37;
          v67 = &v37[v66];
          v68 = type metadata accessor for USOParse();
          v215 = v67;
          v69 = v67;
          v70 = v68;
          if (__swift_getEnumTagSinglePayload(v69, 1, v68))
          {
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v209, v215, *(*(v71 - 8) + 64));
            v72 = v200;
          }

          else
          {
            v100 = sub_1DD0DB4BC();
            (*(*(v100 - 8) + 32))(v209, v215, v100);
            v199 = v70;
            v101 = *(v70 + 20);
            v197 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v215[v101], 1, v197))
            {
              v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v209[v101], &v215[v101], *(*(v102 - 8) + 64));
            }

            else
            {
              (*(*(v197 - 8) + 32))(&v209[v101], &v215[v101]);
              __swift_storeEnumTagSinglePayload(&v209[v101], 0, 1, v197);
            }

            v72 = v200;
            *&v209[*(v199 + 24)] = *&v215[*(v199 + 24)];
            v131 = *(v199 + 28);
            v132 = &v209[v131];
            v133 = &v215[v131];
            v132[4] = v133[4];
            *v132 = *v133;
            __swift_storeEnumTagSinglePayload(v209, 0, 1, v199);
          }

          *&v36[*(v203 + 28)] = *&v72[*(v203 + 28)];
          goto LABEL_65;
        case 9u:
          v78 = sub_1DD0DD08C();
          (*(*(v78 - 8) + 32))(v36, v37, v78);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v36, v37, *(*(v223 - 8) + 64));
          break;
      }
    }

    v134 = v34[6];
    v135 = *&v30[v134];
    *&v30[v134] = *&v31[v134];

    v136 = v34[7];
    v137 = &v30[v136];
    v138 = &v31[v136];
    if (*&v30[v136 + 24])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v137);
    }

    v139 = *(v138 + 1);
    *v137 = *v138;
    *(v137 + 1) = v139;
    *(v137 + 4) = *(v138 + 4);
    v30[v34[8]] = v31[v34[8]];
    v140 = v15[6];
    v141 = *&v13[v140];
    *&v13[v140] = *&v14[v140];

    v142 = v15[7];
    v143 = *&v13[v142];
    *&v13[v142] = *&v14[v142];

    v144 = v15[8];
    v145 = &v13[v144];
    v146 = &v14[v144];
    v148 = *v146;
    v147 = *(v146 + 1);
    v149 = *(v145 + 1);
    *v145 = v148;
    *(v145 + 1) = v147;

    v150 = v15[9];
    v151 = &v13[v150];
    v152 = &v14[v150];
    v153 = type metadata accessor for ActionParaphrase(0);
    v154 = __swift_getEnumTagSinglePayload(v151, 1, v153);
    v155 = __swift_getEnumTagSinglePayload(v152, 1, v153);
    if (v154)
    {
      if (!v155)
      {
        *v151 = *v152;
        v156 = *(v153 + 20);
        v157 = (v151 + v156);
        v158 = (v152 + v156);
        v159 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v158, 1, v159))
        {
          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v157, v158, *(*(v160 - 8) + 64));
        }

        else
        {
          v177 = v158[1];
          *v157 = *v158;
          v157[1] = v177;
          v224 = *(v159 + 24);
          v178 = sub_1DD0DB66C();
          (*(*(v178 - 8) + 32))(v157 + v224, v158 + v224, v178);
          __swift_storeEnumTagSinglePayload(v157, 0, 1, v159);
        }

        v175 = v151;
        v176 = v153;
        goto LABEL_81;
      }
    }

    else
    {
      if (!v155)
      {
        v164 = *(v152 + 8);
        v165 = *(v151 + 8);
        *v151 = *v152;
        *(v151 + 8) = v164;

        v166 = *(v153 + 20);
        v167 = v151 + v166;
        v168 = v152 + v166;
        v169 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        v170 = __swift_getEnumTagSinglePayload(v167, 1, v169);
        v171 = __swift_getEnumTagSinglePayload(v168, 1, v169);
        if (v170)
        {
          if (!v171)
          {
            v172 = *(v168 + 16);
            *v167 = *v168;
            *(v167 + 16) = v172;
            v173 = *(v169 + 24);
            v174 = sub_1DD0DB66C();
            (*(*(v174 - 8) + 32))(v167 + v173, v168 + v173, v174);
            v175 = v167;
            v176 = v169;
LABEL_81:
            __swift_storeEnumTagSinglePayload(v175, 0, 1, v176);
            goto LABEL_82;
          }
        }

        else
        {
          if (!v171)
          {
            v191 = *(v168 + 8);
            v192 = *(v167 + 8);
            *v167 = *v168;
            *(v167 + 8) = v191;

            v193 = *(v168 + 24);
            v194 = *(v167 + 24);
            *(v167 + 16) = *(v168 + 16);
            *(v167 + 24) = v193;

            v195 = *(v169 + 24);
            v196 = sub_1DD0DB66C();
            (*(*(v196 - 8) + 40))(v167 + v195, v168 + v195, v196);
LABEL_82:
            v179 = v15[10];
            v180 = __swift_getEnumTagSinglePayload(&v13[v179], 1, v229);
            v181 = __swift_getEnumTagSinglePayload(&v14[v179], 1, v229);
            if (v180)
            {
              if (!v181)
              {
                (*(v226 + 32))(&v13[v179], &v14[v179], v229);
                __swift_storeEnumTagSinglePayload(&v13[v179], 0, 1, v229);
LABEL_88:
                v13[v15[11]] = v14[v15[11]];
                a3 = v231;
                goto LABEL_89;
              }
            }

            else
            {
              if (!v181)
              {
                (v218)(&v13[v179], &v14[v179], v229);
                goto LABEL_88;
              }

              (*(v226 + 8))(&v13[v179], v229);
            }

            v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
            memcpy(&v13[v179], &v14[v179], *(*(v182 - 8) + 64));
            goto LABEL_88;
          }

          sub_1DCB28538();
        }

        v161 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
        v162 = v167;
        v163 = v168;
LABEL_75:
        memcpy(v162, v163, v161);
        goto LABEL_82;
      }

      sub_1DCB28538();
    }

    v161 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v162 = v151;
    v163 = v152;
    goto LABEL_75;
  }

  if (v17)
  {
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    memcpy(v13, v14, *(*(v26 - 8) + 64));
    goto LABEL_89;
  }

  v230 = a3;
  *v13 = *v14;
  v18 = v15[5];
  v19 = &v13[v18];
  v20 = &v14[v18];
  v228 = sub_1DD0DB04C();
  v222 = *(*(v228 - 8) + 32);
  v222(v19, v20);
  v21 = type metadata accessor for Input(0);
  v22 = v21[5];
  v23 = &v19[v22];
  v24 = &v20[v22];
  v225 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v25 = sub_1DD0DC76C();
      (*(*(v25 - 8) + 32))(v23, v24, v25);
      goto LABEL_47;
    case 1u:
      v47 = sub_1DD0DC76C();
      (*(*(v47 - 8) + 32))(v23, v24, v47);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v23[*(v48 + 48)] = *&v24[*(v48 + 48)];
      goto LABEL_47;
    case 4u:
      v50 = sub_1DD0DB1EC();
      (*(*(v50 - 8) + 32))(v23, v24, v50);
      goto LABEL_47;
    case 6u:
      v51 = sub_1DD0DB4BC();
      (*(*(v51 - 8) + 32))(v23, v24, v51);
      v213 = type metadata accessor for USOParse();
      v220 = v23;
      v52 = v213[5];
      v53 = sub_1DD0DB3EC();
      v207 = v52;
      v54 = &v24[v52];
      v55 = v53;
      if (__swift_getEnumTagSinglePayload(v54, 1, v53))
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v220[v207], &v24[v207], *(*(v56 - 8) + 64));
      }

      else
      {
        (*(*(v55 - 8) + 32))(&v220[v207], &v24[v207], v55);
        __swift_storeEnumTagSinglePayload(&v220[v207], 0, 1, v55);
      }

      *&v220[v213[6]] = *&v24[v213[6]];
      v86 = v213[7];
      v87 = &v220[v86];
      v88 = &v24[v86];
      v87[4] = v88[4];
      *v87 = *v88;
      goto LABEL_47;
    case 7u:
      v57 = sub_1DD0DB4BC();
      (*(*(v57 - 8) + 32))(v23, v24, v57);
      v214 = type metadata accessor for USOParse();
      v221 = v23;
      v58 = v214[5];
      v59 = sub_1DD0DB3EC();
      v208 = v58;
      v60 = &v24[v58];
      v61 = v59;
      if (__swift_getEnumTagSinglePayload(v60, 1, v59))
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        v63 = v221;
        memcpy(&v221[v208], &v24[v208], *(*(v62 - 8) + 64));
      }

      else
      {
        (*(*(v61 - 8) + 32))(&v221[v208], &v24[v208], v61);
        __swift_storeEnumTagSinglePayload(&v221[v208], 0, 1, v61);
        v63 = v221;
      }

      *&v63[v214[6]] = *&v24[v214[6]];
      v96 = v214[7];
      v97 = &v63[v96];
      v98 = &v24[v96];
      v97[4] = v98[4];
      *v97 = *v98;
      v99 = type metadata accessor for LinkParse();
      *&v63[v99[5]] = *&v24[v99[5]];
      *&v63[v99[6]] = *&v24[v99[6]];
      *&v63[v99[7]] = *&v24[v99[7]];
      goto LABEL_47;
    case 8u:
      v202 = v21;
      v39 = sub_1DD0DD12C();
      (*(*(v39 - 8) + 32))(v23, v24, v39);
      v40 = type metadata accessor for NLRouterParse();
      *&v23[*(v40 + 20)] = *&v24[*(v40 + 20)];
      v41 = *(v40 + 24);
      v206 = v40;
      v212 = &v23[v41];
      v42 = &v24[v41];
      v43 = type metadata accessor for USOParse();
      v219 = v42;
      v44 = v42;
      v45 = v43;
      if (__swift_getEnumTagSinglePayload(v44, 1, v43))
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v212, v219, *(*(v46 - 8) + 64));
        v21 = v202;
      }

      else
      {
        v73 = sub_1DD0DB4BC();
        (*(*(v73 - 8) + 32))(v212, v219, v73);
        v201 = v45;
        v74 = *(v45 + 20);
        v198 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v219[v74], 1, v198))
        {
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v212[v74], &v219[v74], *(*(v75 - 8) + 64));
        }

        else
        {
          (*(*(v198 - 8) + 32))(&v212[v74], &v219[v74]);
          __swift_storeEnumTagSinglePayload(&v212[v74], 0, 1, v198);
        }

        v21 = v202;
        *&v212[*(v201 + 24)] = *&v219[*(v201 + 24)];
        v103 = *(v201 + 28);
        v104 = &v212[v103];
        v105 = &v219[v103];
        v104[4] = v105[4];
        *v104 = *v105;
        __swift_storeEnumTagSinglePayload(v212, 0, 1, v201);
      }

      *&v23[*(v206 + 28)] = *&v24[*(v206 + 28)];
      goto LABEL_47;
    case 9u:
      v49 = sub_1DD0DD08C();
      (*(*(v49 - 8) + 32))(v23, v24, v49);
LABEL_47:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v23, v24, *(*(v225 - 8) + 64));
      break;
  }

  *&v19[v21[6]] = *&v20[v21[6]];
  v106 = v21[7];
  v107 = &v19[v106];
  v108 = &v20[v106];
  v109 = *(v108 + 1);
  *v107 = *v108;
  *(v107 + 1) = v109;
  *(v107 + 4) = *(v108 + 4);
  v19[v21[8]] = v20[v21[8]];
  *&v13[v15[6]] = *&v14[v15[6]];
  *&v13[v15[7]] = *&v14[v15[7]];
  *&v13[v15[8]] = *&v14[v15[8]];
  v110 = v15[9];
  v111 = &v13[v110];
  v112 = &v14[v110];
  v113 = type metadata accessor for ActionParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v112, 1, v113))
  {
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v111, v112, *(*(v114 - 8) + 64));
  }

  else
  {
    *v111 = *v112;
    v115 = *(v113 + 20);
    v116 = &v111[v115];
    v117 = &v112[v115];
    v118 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v117, 1, v118))
    {
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v116, v117, *(*(v119 - 8) + 64));
    }

    else
    {
      v120 = *(v117 + 1);
      *v116 = *v117;
      *(v116 + 1) = v120;
      v227 = *(v118 + 24);
      v121 = sub_1DD0DB66C();
      (*(*(v121 - 8) + 32))(&v116[v227], &v117[v227], v121);
      __swift_storeEnumTagSinglePayload(v116, 0, 1, v118);
    }

    __swift_storeEnumTagSinglePayload(v111, 0, 1, v113);
  }

  v122 = v15[10];
  a3 = v230;
  if (__swift_getEnumTagSinglePayload(&v14[v122], 1, v228))
  {
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&v13[v122], &v14[v122], *(*(v123 - 8) + 64));
  }

  else
  {
    (v222)(&v13[v122], &v14[v122], v228);
    __swift_storeEnumTagSinglePayload(&v13[v122], 0, 1, v228);
  }

  v13[v15[11]] = v14[v15[11]];
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
LABEL_89:
  v183 = *(a3 + 40);
  v184 = a1 + v183;
  v185 = a2 + v183;
  if (!*(a1 + v183 + 8))
  {
LABEL_93:
    v189 = *(v185 + 16);
    *v184 = *v185;
    *(v184 + 16) = v189;
    return a1;
  }

  v186 = *(v185 + 8);
  if (!v186)
  {
    sub_1DCB0E9D8(v184, &qword_1ECCA4B30, &qword_1DD0EE970);
    goto LABEL_93;
  }

  *v184 = *v185;
  *(v184 + 8) = v186;

  v187 = *(v185 + 24);
  v188 = *(v184 + 24);
  *(v184 + 16) = *(v185 + 16);
  *(v184 + 24) = v187;

  return a1;
}

void sub_1DCD25EF8()
{
  sub_1DCD25FB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCD25FB8()
{
  if (!qword_1EDE49E20)
  {
    type metadata accessor for PluginAction();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE49E20);
    }
  }
}

uint64_t dispatch thunk of AnyValueFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_6(v4);

  return v8(v6);
}

uint64_t dispatch thunk of AnyValueFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

_BYTE *sub_1DCD26594(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD26684()
{
  result = qword_1ECCA4B38;
  if (!qword_1ECCA4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B38);
  }

  return result;
}

unint64_t sub_1DCD266DC()
{
  result = qword_1ECCA4B40;
  if (!qword_1ECCA4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B40);
  }

  return result;
}

unint64_t sub_1DCD26734()
{
  result = qword_1ECCA4B48;
  if (!qword_1ECCA4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B48);
  }

  return result;
}

unint64_t sub_1DCD2678C()
{
  result = qword_1ECCA4B50;
  if (!qword_1ECCA4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B50);
  }

  return result;
}

unint64_t sub_1DCD267E4()
{
  result = qword_1ECCA4B58;
  if (!qword_1ECCA4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B58);
  }

  return result;
}

unint64_t sub_1DCD2683C()
{
  result = qword_1ECCA4B60;
  if (!qword_1ECCA4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B60);
  }

  return result;
}

unint64_t sub_1DCD26894()
{
  result = qword_1ECCA4B68;
  if (!qword_1ECCA4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B68);
  }

  return result;
}

unint64_t sub_1DCD268EC()
{
  result = qword_1ECCA4B70;
  if (!qword_1ECCA4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B70);
  }

  return result;
}

unint64_t sub_1DCD26944()
{
  result = qword_1ECCA4B78;
  if (!qword_1ECCA4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B78);
  }

  return result;
}

unint64_t sub_1DCD2699C()
{
  result = qword_1ECCA4B80;
  if (!qword_1ECCA4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B80);
  }

  return result;
}

unint64_t sub_1DCD269F4()
{
  result = qword_1ECCA4B88;
  if (!qword_1ECCA4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B88);
  }

  return result;
}

unint64_t sub_1DCD26A4C()
{
  result = qword_1ECCA4B90;
  if (!qword_1ECCA4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B90);
  }

  return result;
}

unint64_t sub_1DCD26AA4()
{
  result = qword_1ECCA4B98;
  if (!qword_1ECCA4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B98);
  }

  return result;
}

unint64_t sub_1DCD26AFC()
{
  result = qword_1ECCA4BA0;
  if (!qword_1ECCA4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BA0);
  }

  return result;
}

unint64_t sub_1DCD26B54()
{
  result = qword_1ECCA4BA8;
  if (!qword_1ECCA4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BA8);
  }

  return result;
}

unint64_t sub_1DCD26BAC()
{
  result = qword_1ECCA4BB0;
  if (!qword_1ECCA4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BB0);
  }

  return result;
}

unint64_t sub_1DCD26C04()
{
  result = qword_1ECCA4BB8;
  if (!qword_1ECCA4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BB8);
  }

  return result;
}

unint64_t sub_1DCD26C5C()
{
  result = qword_1ECCA4BC0;
  if (!qword_1ECCA4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BC0);
  }

  return result;
}

unint64_t sub_1DCD26CB4()
{
  result = qword_1ECCA4BC8;
  if (!qword_1ECCA4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BC8);
  }

  return result;
}

unint64_t sub_1DCD26D0C()
{
  result = qword_1ECCA4BD0;
  if (!qword_1ECCA4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BD0);
  }

  return result;
}

unint64_t sub_1DCD26D64()
{
  result = qword_1ECCA4BD8;
  if (!qword_1ECCA4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BD8);
  }

  return result;
}

unint64_t sub_1DCD26DBC()
{
  result = qword_1ECCA4BE0;
  if (!qword_1ECCA4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BE0);
  }

  return result;
}

unint64_t sub_1DCD26E14()
{
  result = qword_1ECCA4BE8;
  if (!qword_1ECCA4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BE8);
  }

  return result;
}

unint64_t sub_1DCD26E6C()
{
  result = qword_1ECCA4BF0;
  if (!qword_1ECCA4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BF0);
  }

  return result;
}

unint64_t sub_1DCD26EC4()
{
  result = qword_1ECCA4BF8;
  if (!qword_1ECCA4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BF8);
  }

  return result;
}

unint64_t sub_1DCD26F1C()
{
  result = qword_1EDE4DD38;
  if (!qword_1EDE4DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD38);
  }

  return result;
}

unint64_t sub_1DCD26F74()
{
  result = qword_1EDE4DD40;
  if (!qword_1EDE4DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD40);
  }

  return result;
}

unint64_t sub_1DCD26FCC()
{
  result = qword_1EDE4DD28;
  if (!qword_1EDE4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD28);
  }

  return result;
}

unint64_t sub_1DCD27024()
{
  result = qword_1EDE4DD30;
  if (!qword_1EDE4DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD30);
  }

  return result;
}

unint64_t sub_1DCD2707C()
{
  result = qword_1EDE4DD10;
  if (!qword_1EDE4DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD10);
  }

  return result;
}

unint64_t sub_1DCD270D4()
{
  result = qword_1EDE4DD18;
  if (!qword_1EDE4DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD18);
  }

  return result;
}

unint64_t sub_1DCD2712C()
{
  result = qword_1EDE4D980;
  if (!qword_1EDE4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D980);
  }

  return result;
}

unint64_t sub_1DCD27184()
{
  result = qword_1EDE4D988;
  if (!qword_1EDE4D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D988);
  }

  return result;
}

uint64_t sub_1DCD271DC()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_11_1(*(v0 + 16));
  v5 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  return (*(v4 + 56))(v2);
}

uint64_t objectdestroy_234Tm()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_68_8()
{
  v2 = *(v0 - 152);

  return sub_1DD0DEEBC();
}

uint64_t Abort.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DCBD0994();
  v6 = swift_allocError();
  *v7 = a1;
  v7[1] = a2;
  *a3 = v6;
  type metadata accessor for FlowActionType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Abort.init(reason:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Yield.init()@<X0>(void *a1@<X8>)
{
  *a1 = nullsub_1;
  a1[1] = 0;
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Delegate.init(to:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCAFF9E8(a1, a2);
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Conclude.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  (*(v7 + 16))(v13 - v12, a1, a2);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1DCD2768C(v14, v16, 0, a2, a3);
  return (*(v7 + 8))(a1, a2);
}

uint64_t Conclude.init<A>()@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
  v3 = *(v2 + 32);
  sub_1DCBD0C2C(v5, a1 + v3);
  *(a1 + *(v2 + 36)) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1DCBD0C9C(v5);
  sub_1DCBD0C2C(a1 + v3, a1 + 32);
  *(a1 + 72) = 0;
  OUTLINED_FUNCTION_35_19();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCD2768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Conclude();
  v10 = v9[7];
  v11 = *(a4 - 8);
  v12 = *(v11 + 16);
  v12((a5 + v10), a1, a4);
  v13 = v9[8];
  sub_1DCBD0C2C(a2, a5 + v13);
  *(a5 + v9[9]) = a3;
  *(a5 + 24) = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  v12(boxed_opaque_existential_1Tm, a5 + v10, a4);
  sub_1DCBD0C9C(a2);
  (*(v11 + 8))(a1, a4);
  sub_1DCBD0C2C(a5 + v13, a5 + 32);
  *(a5 + 72) = a3;
  type metadata accessor for FlowActionType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Conclude.followedBy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  (*(v16 + 16))(v13 - v12, v3 + *(v15 + 28), v7);
  sub_1DCB17CA0(a1, v18);
  return sub_1DCD2768C(v14, v18, *(v3 + *(a2 + 36)), v7, a3);
}

uint64_t sub_1DCD278D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  (*(v14 + 16))(v11 - v10, v2 + *(v13 + 28), v5);
  sub_1DCBD0C2C(v2 + *(a1 + 32), v16);
  return sub_1DCD2768C(v12, v16, 1, v5, a2);
}

uint64_t sub_1DCD279D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Yield.onYield(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for FlowActionType(0);
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t initializeBufferWithCopyOfBuffer for FlowActionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(a2 + 24);
      *(a1 + 24) = v12;
      (**(v12 - 8))(a1, a2);
      v13 = *(a2 + 56);
      if (v13)
      {
        v14 = *(a2 + 64);
        *(a1 + 56) = v13;
        *(a1 + 64) = v14;
        (**(v13 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v34 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v34;
        *(a1 + 64) = *(a2 + 64);
      }

      *(a1 + 72) = *(a2 + 72);
      break;
    case 2u:
      v9 = *a2;
      v10 = v9;
      *a1 = v9;
      break;
    case 3u:
      v11 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v11;
      sub_1DD0DCF8C();
    case 4u:
      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);
      sub_1DCD1B9B8(v6, v7, v8);
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      break;
    case 5u:
      v15 = *(a2 + 24);
      *(a1 + 24) = v15;
      (**(v15 - 8))(a1, a2);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v17 = (a1 + v16);
      v18 = (a2 + v16);
      v19 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v19;
      v143 = type metadata accessor for PluginAction();
      v20 = v143[5];
      v21 = &v17[v20];
      v22 = &v18[v20];
      v23 = sub_1DD0DB04C();
      v24 = *(*(v23 - 8) + 16);

      v141 = v24;
      v142 = v23;
      v24(v21, v22, v23);
      v25 = type metadata accessor for Input(0);
      v26 = v25[5];
      v27 = &v21[v26];
      v28 = &v22[v26];
      v29 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 16))(v27, v28, v30);
          goto LABEL_37;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v27, v28, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v27[*(v42 + 48)] = *&v28[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v37 = *(v28 + 1);
          *v27 = *v28;
          *(v27 + 1) = v37;
          *(v27 + 2) = *(v28 + 2);

          goto LABEL_37;
        case 3u:
          *v27 = *v28;
          swift_unknownObjectRetain();
          goto LABEL_37;
        case 4u:
          v35 = sub_1DD0DB1EC();
          (*(*(v35 - 8) + 16))(v27, v28, v35);
          goto LABEL_37;
        case 5u:
          v43 = *v28;
          *v27 = *v28;
          v44 = v43;
          goto LABEL_37;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v27, v28, v45);
          v137 = type metadata accessor for USOParse();
          v46 = v137[5];
          v133 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v46], 1, v133))
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v46], &v28[v46], *(*(v47 - 8) + 64));
          }

          else
          {
            (*(*(v133 - 8) + 16))(&v27[v46], &v28[v46]);
            __swift_storeEnumTagSinglePayload(&v27[v46], 0, 1, v133);
          }

          v76 = v137[6];
          v77 = &v27[v76];
          v78 = &v28[v76];
          v79 = *(v78 + 1);
          *v77 = *v78;
          *(v77 + 1) = v79;
          v80 = v137[7];
          v81 = &v27[v80];
          v82 = &v28[v80];
          v81[4] = v82[4];
          *v81 = *v82;

          goto LABEL_37;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v27, v28, v38);
          v136 = type metadata accessor for USOParse();
          v39 = v136[5];
          v132 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v39], 1, v132))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v39], &v28[v39], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v132 - 8) + 16))(&v27[v39], &v28[v39]);
            __swift_storeEnumTagSinglePayload(&v27[v39], 0, 1, v132);
          }

          v58 = v136[6];
          v59 = &v27[v58];
          v60 = &v28[v58];
          v135 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v135;
          v61 = v136[7];
          v62 = &v27[v61];
          v63 = &v28[v61];
          v62[4] = v63[4];
          *v62 = *v63;
          v64 = type metadata accessor for LinkParse();
          v65 = v64[5];
          v66 = &v27[v65];
          v67 = &v28[v65];
          v139 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v139;
          v68 = v64[6];
          v69 = &v27[v68];
          v70 = &v28[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v64[7];
          v73 = &v27[v72];
          v74 = &v28[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;

          goto LABEL_37;
        case 8u:
          v129 = v25;
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 16))(v27, v28, v48);
          v49 = type metadata accessor for NLRouterParse();
          v50 = *(v49 + 20);
          v51 = &v27[v50];
          v52 = &v28[v50];
          v53 = *(v52 + 1);
          *v51 = *v52;
          *(v51 + 1) = v53;
          v130 = v49;
          v54 = *(v49 + 24);
          v138 = &v27[v54];
          v55 = &v28[v54];
          v56 = type metadata accessor for USOParse();

          v134 = v55;
          if (__swift_getEnumTagSinglePayload(v55, 1, v56))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v138, v55, *(*(v57 - 8) + 64));
            v25 = v129;
          }

          else
          {
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(v138, v55, v83);
            v128 = v56;
            v84 = *(v56 + 20);
            v85 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v134[v84], 1, v85))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v138[v84], &v134[v84], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v85 - 8) + 16))(&v138[v84], &v134[v84], v85);
              __swift_storeEnumTagSinglePayload(&v138[v84], 0, 1, v85);
            }

            v25 = v129;
            v87 = *(v128 + 24);
            v88 = &v138[v87];
            v89 = &v134[v87];
            v90 = *(v89 + 1);
            *v88 = *v89;
            *(v88 + 1) = v90;
            v91 = *(v128 + 28);
            v92 = &v138[v91];
            v93 = &v134[v91];
            v92[4] = v93[4];
            *v92 = *v93;

            __swift_storeEnumTagSinglePayload(v138, 0, 1, v128);
          }

          v94 = *(v130 + 28);
          v95 = *&v28[v94];
          *&v27[v94] = v95;
          v96 = v95;
          goto LABEL_37;
        case 9u:
          v36 = sub_1DD0DD08C();
          (*(*(v36 - 8) + 16))(v27, v28, v36);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v27, v28, *(*(v29 - 8) + 64));
          break;
      }

      *&v21[v25[6]] = *&v22[v25[6]];
      v97 = v25[7];
      v98 = &v21[v97];
      v99 = &v22[v97];
      v100 = *&v22[v97 + 24];

      if (v100)
      {
        v101 = *(v99 + 4);
        *(v98 + 3) = v100;
        *(v98 + 4) = v101;
        (**(v100 - 8))(v98, v99, v100);
      }

      else
      {
        v102 = *(v99 + 1);
        *v98 = *v99;
        *(v98 + 1) = v102;
        *(v98 + 4) = *(v99 + 4);
      }

      v21[v25[8]] = v22[v25[8]];
      *&v17[v143[6]] = *&v18[v143[6]];
      v103 = v143[7];
      v104 = *&v18[v103];
      *&v17[v103] = v104;
      v105 = v143[8];
      v106 = &v17[v105];
      v107 = &v18[v105];
      v108 = *(v107 + 1);
      *v106 = *v107;
      *(v106 + 1) = v108;
      v109 = v143[9];
      v110 = &v17[v109];
      v111 = &v18[v109];
      v112 = type metadata accessor for ActionParaphrase(0);

      v113 = v104;

      if (__swift_getEnumTagSinglePayload(v111, 1, v112))
      {
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v110, v111, *(*(v114 - 8) + 64));
        v115 = v142;
      }

      else
      {
        v116 = *(v111 + 1);
        *v110 = *v111;
        *(v110 + 1) = v116;
        v117 = *(v112 + 20);
        v118 = &v110[v117];
        v119 = &v111[v117];
        v120 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v119, 1, v120))
        {
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v118, v119, *(*(v121 - 8) + 64));
        }

        else
        {
          v122 = *(v119 + 1);
          *v118 = *v119;
          *(v118 + 1) = v122;
          v123 = *(v119 + 3);
          *(v118 + 2) = *(v119 + 2);
          *(v118 + 3) = v123;
          v140 = *(v120 + 24);
          v124 = sub_1DD0DB66C();
          v131 = *(*(v124 - 8) + 16);

          v131(&v118[v140], &v119[v140], v124);
          __swift_storeEnumTagSinglePayload(v118, 0, 1, v120);
        }

        v115 = v142;
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v112);
      }

      v125 = v143[10];
      if (__swift_getEnumTagSinglePayload(&v18[v125], 1, v115))
      {
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&v17[v125], &v18[v125], *(*(v126 - 8) + 64));
      }

      else
      {
        v141(&v17[v125], &v18[v125], v115);
        __swift_storeEnumTagSinglePayload(&v17[v125], 0, 1, v115);
      }

      v17[v143[11]] = v18[v143[11]];
      break;
    case 6u:
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
      v32 = *(a2 + 16);
      v33 = *(a2 + 24);
      *(a1 + 16) = v32;
      *(a1 + 24) = v33;

      break;
    default:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for FlowActionType(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v2 = a1;
      goto LABEL_14;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (*(a1 + 56))
      {
        v2 = (a1 + 32);
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1Tm(v2);
      }

      break;
    case 2u:
      v6 = *a1;

      break;
    case 3u:
      v7 = *(a1 + 8);

      break;
    case 4u:
      v3 = *a1;
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);

      sub_1DCD21390(v3, v4, v5);
      break;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v9 = *(v8 + 8);

      v10 = type metadata accessor for PluginAction();
      v11 = v8 + v10[5];
      v12 = sub_1DD0DB04C();
      v64 = *(*(v12 - 8) + 8);
      v64(v11, v12);
      v13 = type metadata accessor for Input(0);
      v14 = (v11 + v13[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          goto LABEL_22;
        case 1u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 8))(v14, v30);
          v31 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v18 = *(v14 + 1);

          v19 = *(v14 + 2);
          goto LABEL_34;
        case 3u:
          v20 = *v14;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v15 = sub_1DD0DB1EC();
          goto LABEL_22;
        case 5u:
          v32 = *v14;
          goto LABEL_40;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 8))(v14, v33);
          v34 = type metadata accessor for USOParse();
          v35 = *(v34 + 20);
          v36 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v14[v35], 1, v36))
          {
            (*(*(v36 - 8) + 8))(&v14[v35], v36);
          }

          v29 = *(v34 + 24);
          goto LABEL_33;
        case 7u:
          v21 = sub_1DD0DB4BC();
          (*(*(v21 - 8) + 8))(v14, v21);
          v22 = type metadata accessor for USOParse();
          v23 = *(v22 + 20);
          v24 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v14[v23], 1, v24))
          {
            (*(*(v24 - 8) + 8))(&v14[v23], v24);
          }

          v25 = *&v14[*(v22 + 24) + 8];

          v26 = type metadata accessor for LinkParse();
          v27 = *&v14[v26[5] + 8];

          v28 = *&v14[v26[6] + 8];

          v29 = v26[7];
LABEL_33:
          v37 = *&v14[v29 + 8];
LABEL_34:

          break;
        case 8u:
          v38 = sub_1DD0DD12C();
          (*(*(v38 - 8) + 8))(v14, v38);
          v39 = type metadata accessor for NLRouterParse();
          v40 = *&v14[v39[5] + 8];

          v41 = &v14[v39[6]];
          v42 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = sub_1DD0DB4BC();
            (*(*(v43 - 8) + 8))(v41, v43);
            v44 = *(v42 + 20);
            v45 = sub_1DD0DB3EC();
            v63 = v44;
            v46 = v41 + v44;
            v47 = v45;
            if (!__swift_getEnumTagSinglePayload(v46, 1, v45))
            {
              (*(*(v47 - 8) + 8))(v41 + v63, v47);
            }

            v48 = *(v41 + *(v42 + 24) + 8);
          }

          v32 = *&v14[v39[7]];
LABEL_40:

          break;
        case 9u:
          v15 = sub_1DD0DD08C();
LABEL_22:
          (*(*(v15 - 8) + 8))(v14, v15);
          break;
        default:
          break;
      }

      v49 = *(v11 + v13[6]);

      v50 = (v11 + v13[7]);
      if (v50[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      v51 = *(v8 + v10[6]);

      v52 = *(v8 + v10[8] + 8);

      v53 = v8 + v10[9];
      v54 = type metadata accessor for ActionParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v53, 1, v54))
      {
        v55 = *(v53 + 8);

        v56 = v53 + *(v54 + 20);
        v57 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v56, 1, v57))
        {
          v58 = *(v56 + 8);

          v59 = *(v56 + 24);

          v60 = *(v57 + 24);
          v61 = sub_1DD0DB66C();
          (*(*(v61 - 8) + 8))(v56 + v60, v61);
        }
      }

      v62 = v10[10];
      if (!__swift_getEnumTagSinglePayload(v8 + v62, 1, v12))
      {

        v64(v8 + v62, v12);
      }

      break;
    case 6u:
      v16 = *(a1 + 8);

      v17 = *(a1 + 24);

      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for FlowActionType(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      v12 = *(a2 + 56);
      if (v12)
      {
        v13 = *(a2 + 64);
        *(a1 + 56) = v12;
        *(a1 + 64) = v13;
        (**(v12 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v33 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v33;
        *(a1 + 64) = *(a2 + 64);
      }

      *(a1 + 72) = *(a2 + 72);
      break;
    case 2u:
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      break;
    case 3u:
      v10 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v10;
      sub_1DD0DCF8C();
    case 4u:
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      sub_1DCD1B9B8(v5, v6, v7);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      break;
    case 5u:
      v14 = *(a2 + 24);
      *(a1 + 24) = v14;
      (**(v14 - 8))(a1, a2);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v16 = (a1 + v15);
      v17 = (a2 + v15);
      v18 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v18;
      v143 = type metadata accessor for PluginAction();
      v19 = v143[5];
      v20 = &v16[v19];
      v21 = &v17[v19];
      v22 = sub_1DD0DB04C();
      v23 = *(*(v22 - 8) + 16);

      v141 = v23;
      v142 = v22;
      v23(v20, v21, v22);
      v24 = type metadata accessor for Input(0);
      v25 = v24[5];
      v26 = &v20[v25];
      v27 = &v21[v25];
      v28 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 16))(v26, v27, v29);
          goto LABEL_35;
        case 1u:
          v40 = sub_1DD0DC76C();
          (*(*(v40 - 8) + 16))(v26, v27, v40);
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v26[*(v41 + 48)] = *&v27[*(v41 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v36 = *(v27 + 1);
          *v26 = *v27;
          *(v26 + 1) = v36;
          *(v26 + 2) = *(v27 + 2);

          goto LABEL_35;
        case 3u:
          *v26 = *v27;
          swift_unknownObjectRetain();
          goto LABEL_35;
        case 4u:
          v34 = sub_1DD0DB1EC();
          (*(*(v34 - 8) + 16))(v26, v27, v34);
          goto LABEL_35;
        case 5u:
          v42 = *v27;
          *v26 = *v27;
          v43 = v42;
          goto LABEL_35;
        case 6u:
          v44 = sub_1DD0DB4BC();
          (*(*(v44 - 8) + 16))(v26, v27, v44);
          v137 = type metadata accessor for USOParse();
          v45 = v137[5];
          v133 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v27[v45], 1, v133))
          {
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v26[v45], &v27[v45], *(*(v46 - 8) + 64));
          }

          else
          {
            (*(*(v133 - 8) + 16))(&v26[v45], &v27[v45]);
            __swift_storeEnumTagSinglePayload(&v26[v45], 0, 1, v133);
          }

          v75 = v137[6];
          v76 = &v26[v75];
          v77 = &v27[v75];
          v78 = *(v77 + 1);
          *v76 = *v77;
          *(v76 + 1) = v78;
          v79 = v137[7];
          v80 = &v26[v79];
          v81 = &v27[v79];
          v80[4] = v81[4];
          *v80 = *v81;

          goto LABEL_35;
        case 7u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v26, v27, v37);
          v136 = type metadata accessor for USOParse();
          v38 = v136[5];
          v132 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v27[v38], 1, v132))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v26[v38], &v27[v38], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v132 - 8) + 16))(&v26[v38], &v27[v38]);
            __swift_storeEnumTagSinglePayload(&v26[v38], 0, 1, v132);
          }

          v57 = v136[6];
          v58 = &v26[v57];
          v59 = &v27[v57];
          v135 = *(v59 + 1);
          *v58 = *v59;
          *(v58 + 1) = v135;
          v60 = v136[7];
          v61 = &v26[v60];
          v62 = &v27[v60];
          v61[4] = v62[4];
          *v61 = *v62;
          v63 = type metadata accessor for LinkParse();
          v64 = v63[5];
          v65 = &v26[v64];
          v66 = &v27[v64];
          v139 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v139;
          v67 = v63[6];
          v68 = &v26[v67];
          v69 = &v27[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;
          v71 = v63[7];
          v72 = &v26[v71];
          v73 = &v27[v71];
          v74 = *(v73 + 1);
          *v72 = *v73;
          *(v72 + 1) = v74;

          goto LABEL_35;
        case 8u:
          v129 = v24;
          v47 = sub_1DD0DD12C();
          (*(*(v47 - 8) + 16))(v26, v27, v47);
          v48 = type metadata accessor for NLRouterParse();
          v49 = *(v48 + 20);
          v50 = &v26[v49];
          v51 = &v27[v49];
          v52 = *(v51 + 1);
          *v50 = *v51;
          *(v50 + 1) = v52;
          v130 = v48;
          v53 = *(v48 + 24);
          v138 = &v26[v53];
          v54 = &v27[v53];
          v55 = type metadata accessor for USOParse();

          v134 = v54;
          if (__swift_getEnumTagSinglePayload(v54, 1, v55))
          {
            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v138, v54, *(*(v56 - 8) + 64));
            v24 = v129;
          }

          else
          {
            v82 = sub_1DD0DB4BC();
            (*(*(v82 - 8) + 16))(v138, v54, v82);
            v128 = v55;
            v83 = *(v55 + 20);
            v84 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v134[v83], 1, v84))
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v138[v83], &v134[v83], *(*(v85 - 8) + 64));
            }

            else
            {
              (*(*(v84 - 8) + 16))(&v138[v83], &v134[v83], v84);
              __swift_storeEnumTagSinglePayload(&v138[v83], 0, 1, v84);
            }

            v24 = v129;
            v86 = *(v128 + 24);
            v87 = &v138[v86];
            v88 = &v134[v86];
            v89 = *(v88 + 1);
            *v87 = *v88;
            *(v87 + 1) = v89;
            v90 = *(v128 + 28);
            v91 = &v138[v90];
            v92 = &v134[v90];
            v91[4] = v92[4];
            *v91 = *v92;

            __swift_storeEnumTagSinglePayload(v138, 0, 1, v128);
          }

          v93 = *(v130 + 28);
          v94 = *&v27[v93];
          *&v26[v93] = v94;
          v95 = v94;
          goto LABEL_35;
        case 9u:
          v35 = sub_1DD0DD08C();
          (*(*(v35 - 8) + 16))(v26, v27, v35);
LABEL_35:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v26, v27, *(*(v28 - 8) + 64));
          break;
      }

      *&v20[v24[6]] = *&v21[v24[6]];
      v96 = v24[7];
      v97 = &v20[v96];
      v98 = &v21[v96];
      v99 = *&v21[v96 + 24];

      if (v99)
      {
        v100 = *(v98 + 4);
        *(v97 + 3) = v99;
        *(v97 + 4) = v100;
        (**(v99 - 8))(v97, v98, v99);
      }

      else
      {
        v101 = *(v98 + 1);
        *v97 = *v98;
        *(v97 + 1) = v101;
        *(v97 + 4) = *(v98 + 4);
      }

      v20[v24[8]] = v21[v24[8]];
      *&v16[v143[6]] = *&v17[v143[6]];
      v102 = v143[7];
      v103 = *&v17[v102];
      *&v16[v102] = v103;
      v104 = v143[8];
      v105 = &v16[v104];
      v106 = &v17[v104];
      v107 = *(v106 + 1);
      *v105 = *v106;
      *(v105 + 1) = v107;
      v108 = v143[9];
      v109 = &v16[v108];
      v110 = &v17[v108];
      v111 = type metadata accessor for ActionParaphrase(0);

      v112 = v103;

      if (__swift_getEnumTagSinglePayload(v110, 1, v111))
      {
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v109, v110, *(*(v113 - 8) + 64));
        v115 = v142;
        v114 = v143;
      }

      else
      {
        v116 = *(v110 + 1);
        *v109 = *v110;
        *(v109 + 1) = v116;
        v117 = *(v111 + 20);
        v118 = &v109[v117];
        v119 = &v110[v117];
        v120 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v119, 1, v120))
        {
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v118, v119, *(*(v121 - 8) + 64));
        }

        else
        {
          v122 = *(v119 + 1);
          *v118 = *v119;
          *(v118 + 1) = v122;
          v123 = *(v119 + 3);
          *(v118 + 2) = *(v119 + 2);
          *(v118 + 3) = v123;
          v140 = *(v120 + 24);
          v124 = sub_1DD0DB66C();
          v131 = *(*(v124 - 8) + 16);

          v131(&v118[v140], &v119[v140], v124);
          __swift_storeEnumTagSinglePayload(v118, 0, 1, v120);
        }

        v115 = v142;
        __swift_storeEnumTagSinglePayload(v109, 0, 1, v111);
        v114 = v143;
      }

      v125 = v114[10];
      if (__swift_getEnumTagSinglePayload(&v17[v125], 1, v115))
      {
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&v16[v125], &v17[v125], *(*(v126 - 8) + 64));
      }

      else
      {
        v141(&v16[v125], &v17[v125], v115);
        __swift_storeEnumTagSinglePayload(&v16[v125], 0, 1, v115);
      }

      v16[v114[11]] = v17[v114[11]];
      break;
    case 6u:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = *(a2 + 16);
      v32 = *(a2 + 24);
      *(a1 + 16) = v31;
      *(a1 + 24) = v32;

      break;
    default:
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowActionType(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCD2A9D8(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v11 = *(a2 + 24);
        *(a1 + 24) = v11;
        (**(v11 - 8))(a1, a2);
        v12 = *(a2 + 56);
        if (v12)
        {
          *(a1 + 56) = v12;
          *(a1 + 64) = *(a2 + 64);
          (**(v12 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v28 = *(a2 + 32);
          v29 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v28;
          *(a1 + 48) = v29;
        }

        *(a1 + 72) = *(a2 + 72);
        break;
      case 2u:
        v8 = *a2;
        v9 = v8;
        *a1 = v8;
        break;
      case 3u:
        v10 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v10;
        sub_1DD0DCF8C();
      case 4u:
        v5 = *a2;
        v6 = *(a2 + 8);
        v7 = *(a2 + 16);
        sub_1DCD1B9B8(v5, v6, v7);
        *a1 = v5;
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
        break;
      case 5u:
        v13 = *(a2 + 24);
        *(a1 + 24) = v13;
        (**(v13 - 8))(a1, a2);
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
        v15 = (a1 + v14);
        v16 = (a2 + v14);
        *v15 = *v16;
        *(v15 + 1) = *(v16 + 1);
        v128 = type metadata accessor for PluginAction();
        v17 = v128[5];
        v18 = &v15[v17];
        v19 = &v16[v17];
        v20 = sub_1DD0DB04C();
        v21 = *(*(v20 - 8) + 16);

        v126 = v21;
        v127 = v20;
        v21(v18, v19, v20);
        v22 = type metadata accessor for Input(0);
        v23 = v22[5];
        v24 = &v18[v23];
        v25 = &v19[v23];
        v26 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v27 = sub_1DD0DC76C();
            (*(*(v27 - 8) + 16))(v24, v25, v27);
            goto LABEL_36;
          case 1u:
            v35 = sub_1DD0DC76C();
            (*(*(v35 - 8) + 16))(v24, v25, v35);
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v24[*(v36 + 48)] = *&v25[*(v36 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v24 = *v25;
            *(v24 + 1) = *(v25 + 1);
            *(v24 + 2) = *(v25 + 2);

            goto LABEL_36;
          case 3u:
            *v24 = *v25;
            swift_unknownObjectRetain();
            goto LABEL_36;
          case 4u:
            v30 = sub_1DD0DB1EC();
            (*(*(v30 - 8) + 16))(v24, v25, v30);
            goto LABEL_36;
          case 5u:
            v37 = *v25;
            *v24 = *v25;
            v38 = v37;
            goto LABEL_36;
          case 6u:
            v39 = sub_1DD0DB4BC();
            (*(*(v39 - 8) + 16))(v24, v25, v39);
            v123 = type metadata accessor for USOParse();
            v40 = v123[5];
            v120 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v25[v40], 1, v120))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v24[v40], &v25[v40], *(*(v41 - 8) + 64));
            }

            else
            {
              (*(*(v120 - 8) + 16))(&v24[v40], &v25[v40]);
              __swift_storeEnumTagSinglePayload(&v24[v40], 0, 1, v120);
            }

            v68 = v123[6];
            v69 = &v24[v68];
            v70 = &v25[v68];
            *v69 = *v70;
            *(v69 + 1) = *(v70 + 1);
            v71 = v123[7];
            v72 = &v24[v71];
            v73 = &v25[v71];
            v74 = *v73;
            v72[4] = v73[4];
            *v72 = v74;

            goto LABEL_36;
          case 7u:
            v32 = sub_1DD0DB4BC();
            (*(*(v32 - 8) + 16))(v24, v25, v32);
            v122 = type metadata accessor for USOParse();
            v33 = v122[5];
            v119 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v25[v33], 1, v119))
            {
              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v24[v33], &v25[v33], *(*(v34 - 8) + 64));
            }

            else
            {
              (*(*(v119 - 8) + 16))(&v24[v33], &v25[v33]);
              __swift_storeEnumTagSinglePayload(&v24[v33], 0, 1, v119);
            }

            v51 = v122[6];
            v52 = &v24[v51];
            v53 = &v25[v51];
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);
            v54 = v122[7];
            v55 = &v24[v54];
            v56 = &v25[v54];
            v57 = *v56;
            v55[4] = v56[4];
            *v55 = v57;
            v58 = type metadata accessor for LinkParse();
            v59 = v58[5];
            v60 = &v24[v59];
            v61 = &v25[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);
            v62 = v58[6];
            v63 = &v24[v62];
            v64 = &v25[v62];
            *v63 = *v64;
            *(v63 + 1) = *(v64 + 1);
            v65 = v58[7];
            v66 = &v24[v65];
            v67 = &v25[v65];
            *v66 = *v67;
            *(v66 + 1) = *(v67 + 1);

            goto LABEL_36;
          case 8u:
            v116 = v22;
            v42 = sub_1DD0DD12C();
            (*(*(v42 - 8) + 16))(v24, v25, v42);
            v43 = type metadata accessor for NLRouterParse();
            v44 = *(v43 + 20);
            v45 = &v24[v44];
            v46 = &v25[v44];
            *v45 = *v46;
            *(v45 + 1) = *(v46 + 1);
            v117 = v43;
            v47 = *(v43 + 24);
            v124 = &v24[v47];
            v48 = &v25[v47];
            v49 = type metadata accessor for USOParse();

            v121 = v48;
            if (__swift_getEnumTagSinglePayload(v48, 1, v49))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v124, v48, *(*(v50 - 8) + 64));
              v22 = v116;
            }

            else
            {
              v75 = sub_1DD0DB4BC();
              (*(*(v75 - 8) + 16))(v124, v48, v75);
              v115 = v49;
              v76 = *(v49 + 20);
              v77 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v121[v76], 1, v77))
              {
                v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v124[v76], &v121[v76], *(*(v78 - 8) + 64));
              }

              else
              {
                (*(*(v77 - 8) + 16))(&v124[v76], &v121[v76], v77);
                __swift_storeEnumTagSinglePayload(&v124[v76], 0, 1, v77);
              }

              v22 = v116;
              v79 = *(v115 + 24);
              v80 = &v124[v79];
              v81 = &v121[v79];
              *v80 = *v81;
              *(v80 + 1) = *(v81 + 1);
              v82 = *(v115 + 28);
              v83 = &v124[v82];
              v84 = &v121[v82];
              v85 = *v84;
              v83[4] = v84[4];
              *v83 = v85;

              __swift_storeEnumTagSinglePayload(v124, 0, 1, v115);
            }

            v86 = *(v117 + 28);
            v87 = *&v25[v86];
            *&v24[v86] = v87;
            v88 = v87;
            goto LABEL_36;
          case 9u:
            v31 = sub_1DD0DD08C();
            (*(*(v31 - 8) + 16))(v24, v25, v31);
LABEL_36:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v24, v25, *(*(v26 - 8) + 64));
            break;
        }

        *&v18[v22[6]] = *&v19[v22[6]];
        v89 = v22[7];
        v90 = &v18[v89];
        v91 = &v19[v89];
        v92 = *&v19[v89 + 24];

        if (v92)
        {
          *(v90 + 3) = v92;
          *(v90 + 4) = *(v91 + 4);
          (**(v92 - 8))(v90, v91, v92);
        }

        else
        {
          v93 = *v91;
          v94 = *(v91 + 1);
          *(v90 + 4) = *(v91 + 4);
          *v90 = v93;
          *(v90 + 1) = v94;
        }

        v18[v22[8]] = v19[v22[8]];
        *&v15[v128[6]] = *&v16[v128[6]];
        v95 = v128[7];
        v96 = *&v16[v95];
        *&v15[v95] = v96;
        v97 = v128[8];
        v98 = &v15[v97];
        v99 = &v16[v97];
        *v98 = *v99;
        *(v98 + 1) = *(v99 + 1);
        v100 = v128[9];
        v101 = &v15[v100];
        v102 = &v16[v100];
        v103 = type metadata accessor for ActionParaphrase(0);

        v104 = v96;

        if (__swift_getEnumTagSinglePayload(v102, 1, v103))
        {
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v101, v102, *(*(v105 - 8) + 64));
        }

        else
        {
          *v101 = *v102;
          *(v101 + 1) = *(v102 + 1);
          v106 = *(v103 + 20);
          v107 = &v101[v106];
          v108 = &v102[v106];
          v109 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

          if (__swift_getEnumTagSinglePayload(v108, 1, v109))
          {
            v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(v107, v108, *(*(v110 - 8) + 64));
          }

          else
          {
            *v107 = *v108;
            *(v107 + 1) = *(v108 + 1);
            *(v107 + 2) = *(v108 + 2);
            *(v107 + 3) = *(v108 + 3);
            v125 = *(v109 + 24);
            v111 = sub_1DD0DB66C();
            v118 = *(*(v111 - 8) + 16);

            v118(&v107[v125], &v108[v125], v111);
            __swift_storeEnumTagSinglePayload(v107, 0, 1, v109);
          }

          __swift_storeEnumTagSinglePayload(v101, 0, 1, v103);
        }

        v112 = v128[10];
        if (__swift_getEnumTagSinglePayload(&v16[v112], 1, v127))
        {
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v15[v112], &v16[v112], *(*(v113 - 8) + 64));
        }

        else
        {
          v126(&v15[v112], &v16[v112], v127);
          __swift_storeEnumTagSinglePayload(&v15[v112], 0, 1, v127);
        }

        v15[v128[11]] = v16[v128[11]];
        break;
      case 6u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);

        break;
      default:
        v4 = *(a2 + 24);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 32);
        (**(v4 - 8))(a1, a2);
        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD2A9D8(uint64_t a1)
{
  v2 = type metadata accessor for FlowActionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *initializeWithTake for FlowActionType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for PluginAction();
    v11 = v10[5];
    v12 = &v8[v11];
    v13 = &v9[v11];
    v86 = sub_1DD0DB04C();
    v84 = *(*(v86 - 8) + 32);
    v84(v12, v13);
    v14 = type metadata accessor for Input(0);
    v15 = v14[5];
    v16 = &v12[v15];
    v17 = &v13[v15];
    v85 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v16, v17, v18);
        goto LABEL_27;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v16, v17, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
        goto LABEL_27;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v16, v17, v32);
        goto LABEL_27;
      case 6u:
        v81 = a1;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v16, v17, v33);
        v79 = type metadata accessor for USOParse();
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v34], &v17[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v16[v34], &v17[v34]);
          __swift_storeEnumTagSinglePayload(&v16[v34], 0, 1, v76);
        }

        *&v16[v79[6]] = *&v17[v79[6]];
        v43 = v79[7];
        v44 = &v16[v43];
        v45 = &v17[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_23;
      case 7u:
        v81 = a1;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v16, v17, v36);
        v80 = type metadata accessor for USOParse();
        v37 = v80[5];
        v77 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v37], 1, v77))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v37], &v17[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v77 - 8) + 32))(&v16[v37], &v17[v37]);
          __swift_storeEnumTagSinglePayload(&v16[v37], 0, 1, v77);
        }

        *&v16[v80[6]] = *&v17[v80[6]];
        v46 = v80[7];
        v47 = &v16[v46];
        v48 = &v17[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v16[v49[5]] = *&v17[v49[5]];
        *&v16[v49[6]] = *&v17[v49[6]];
        *&v16[v49[7]] = *&v17[v49[7]];
LABEL_23:
        swift_storeEnumTagMultiPayload();
        a1 = v81;
        break;
      case 8u:
        v73 = v14;
        v21 = sub_1DD0DD12C();
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        v22 = type metadata accessor for NLRouterParse();
        *&v16[*(v22 + 20)] = *&v17[*(v22 + 20)];
        v74 = v22;
        v23 = *(v22 + 24);
        v78 = &v16[v23];
        v24 = &v17[v23];
        v25 = type metadata accessor for USOParse();
        v75 = v24;
        v26 = v24;
        v27 = v25;
        if (__swift_getEnumTagSinglePayload(v26, 1, v25))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v78, v75, *(*(v28 - 8) + 64));
          v14 = v73;
        }

        else
        {
          v82 = a1;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v78, v75, v39);
          v72 = v27;
          v40 = *(v27 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v75[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v78[v40], &v75[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v78[v40], &v75[v40], v41);
            __swift_storeEnumTagSinglePayload(&v78[v40], 0, 1, v41);
          }

          v14 = v73;
          *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
          v50 = *(v72 + 28);
          v51 = &v78[v50];
          v52 = &v75[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
          a1 = v82;
        }

        *&v16[*(v74 + 28)] = *&v17[*(v74 + 28)];
        goto LABEL_27;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v16, v17, v31);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v16, v17, *(*(v85 - 8) + 64));
        break;
    }

    *&v12[v14[6]] = *&v13[v14[6]];
    v53 = v14[7];
    v54 = &v12[v53];
    v55 = &v13[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v12[v14[8]] = v13[v14[8]];
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    v57 = v10[9];
    v58 = &v8[v57];
    v59 = &v9[v57];
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      v83 = a1;
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = &v58[v62];
      v64 = &v59[v62];
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = *(v64 + 1);
        *v63 = *v64;
        *(v63 + 1) = v67;
        v68 = *(v65 + 24);
        v69 = sub_1DD0DB66C();
        (*(*(v69 - 8) + 32))(&v63[v68], &v64[v68], v69);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
      a1 = v83;
    }

    v70 = v10[10];
    if (__swift_getEnumTagSinglePayload(&v9[v70], 1, v86))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&v8[v70], &v9[v70], *(*(v71 - 8) + 64));
    }

    else
    {
      (v84)(&v8[v70], &v9[v70], v86);
      __swift_storeEnumTagSinglePayload(&v8[v70], 0, 1, v86);
    }

    v8[v10[11]] = v9[v10[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v19 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v19);
  }
}

_OWORD *assignWithTake for FlowActionType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD2A9D8(a1);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
    v8 = a1 + v7;
    v9 = (a2 + v7);
    *(a1 + v7) = *v9;
    v10 = type metadata accessor for PluginAction();
    v11 = v10[5];
    v12 = &v8[v11];
    v13 = v9 + v11;
    v86 = sub_1DD0DB04C();
    v84 = *(*(v86 - 8) + 32);
    v84(v12, v13);
    v14 = type metadata accessor for Input(0);
    v15 = v14[5];
    v16 = &v12[v15];
    v17 = &v13[v15];
    v85 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v16, v17, v18);
        goto LABEL_28;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v16, v17, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
        goto LABEL_28;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v16, v17, v32);
        goto LABEL_28;
      case 6u:
        v81 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v16, v17, v33);
        v79 = type metadata accessor for USOParse();
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v34], &v17[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v16[v34], &v17[v34]);
          __swift_storeEnumTagSinglePayload(&v16[v34], 0, 1, v76);
        }

        *&v16[v79[6]] = *&v17[v79[6]];
        v43 = v79[7];
        v44 = &v16[v43];
        v45 = &v17[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_24;
      case 7u:
        v81 = v10;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v16, v17, v36);
        v80 = type metadata accessor for USOParse();
        v37 = v80[5];
        v77 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v37], 1, v77))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v37], &v17[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v77 - 8) + 32))(&v16[v37], &v17[v37]);
          __swift_storeEnumTagSinglePayload(&v16[v37], 0, 1, v77);
        }

        *&v16[v80[6]] = *&v17[v80[6]];
        v46 = v80[7];
        v47 = &v16[v46];
        v48 = &v17[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v16[v49[5]] = *&v17[v49[5]];
        *&v16[v49[6]] = *&v17[v49[6]];
        *&v16[v49[7]] = *&v17[v49[7]];
LABEL_24:
        swift_storeEnumTagMultiPayload();
        v10 = v81;
        break;
      case 8u:
        v73 = v14;
        v21 = sub_1DD0DD12C();
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        v22 = type metadata accessor for NLRouterParse();
        *&v16[*(v22 + 20)] = *&v17[*(v22 + 20)];
        v74 = v22;
        v23 = *(v22 + 24);
        v78 = &v16[v23];
        v24 = &v17[v23];
        v25 = type metadata accessor for USOParse();
        v75 = v24;
        v26 = v24;
        v27 = v25;
        if (__swift_getEnumTagSinglePayload(v26, 1, v25))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v78, v75, *(*(v28 - 8) + 64));
          v14 = v73;
        }

        else
        {
          v82 = v10;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v78, v75, v39);
          v72 = v27;
          v40 = *(v27 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v75[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v78[v40], &v75[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v78[v40], &v75[v40], v41);
            __swift_storeEnumTagSinglePayload(&v78[v40], 0, 1, v41);
          }

          v14 = v73;
          *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
          v50 = *(v72 + 28);
          v51 = &v78[v50];
          v52 = &v75[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
          v10 = v82;
        }

        *&v16[*(v74 + 28)] = *&v17[*(v74 + 28)];
        goto LABEL_28;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v16, v17, v31);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v16, v17, *(*(v85 - 8) + 64));
        break;
    }

    *&v12[v14[6]] = *&v13[v14[6]];
    v53 = v14[7];
    v54 = &v12[v53];
    v55 = &v13[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v12[v14[8]] = v13[v14[8]];
    *&v8[v10[6]] = *(v9 + v10[6]);
    *&v8[v10[7]] = *(v9 + v10[7]);
    *&v8[v10[8]] = *(v9 + v10[8]);
    v57 = v10[9];
    v58 = &v8[v57];
    v59 = (v9 + v57);
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      v83 = v10;
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = &v58[v62];
      v64 = (v59 + v62);
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = v64[1];
        *v63 = *v64;
        *(v63 + 1) = v67;
        v68 = *(v65 + 24);
        v69 = sub_1DD0DB66C();
        (*(*(v69 - 8) + 32))(&v63[v68], v64 + v68, v69);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
      v10 = v83;
    }

    v70 = v10[10];
    if (__swift_getEnumTagSinglePayload(v9 + v70, 1, v86))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&v8[v70], v9 + v70, *(*(v71 - 8) + 64));
    }

    else
    {
      (v84)(&v8[v70], v9 + v70, v86);
      __swift_storeEnumTagSinglePayload(&v8[v70], 0, 1, v86);
    }

    v8[v10[11]] = *(v9 + v10[11]);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v19 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v19);
}

uint64_t sub_1DCD2BE4C()
{
  v4 = "(";
  v5 = &unk_1DD0EFA58;
  v6 = &unk_1DD0EFA70;
  v7 = MEMORY[0x1E69E7CB8] + 64;
  v8 = &unk_1DD0EFA88;
  result = type metadata accessor for PluginAction();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v9 = &v3;
    v10 = &unk_1DD0EFAA0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD2BF88(uint64_t a1)
{
  result = type metadata accessor for FlowActionType(319);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCD2C068(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v213 = sub_1DD0DB04C();
  v246 = *(v213 - 8);
  v239 = *(v246 + 80);
  v206 = sub_1DD0DC76C();
  v205 = *(v206 - 8);
  v3 = *(v205 + 80);
  v204 = sub_1DD0DB1EC();
  v232 = *(v204 - 8);
  v203 = v232;
  v4 = *(v232 + 80) | v3;
  v209 = sub_1DD0DB4BC();
  v228 = *(v209 - 8);
  v244 = v228;
  v220 = *(v228 + 80);
  v208 = sub_1DD0DB3EC();
  v224 = *(v208 - 8);
  v243 = v224;
  v5 = *(v224 + 80);
  v6 = v220 & 0xF8 | v5 | 7;
  v248 = v6;
  v202 = sub_1DD0DD12C();
  v226 = *(v202 - 8);
  v201 = v226;
  v7 = *(v226 + 80);
  v200 = sub_1DD0DD08C();
  v230 = *(v200 - 8);
  v199 = v230;
  v218 = v7;
  __n = *(v230 + 80);
  v222 = v4;
  v8 = (v4 | (v7 | __n)) & 0xF8 | v6;
  v9 = v8 | v239;
  v10 = sub_1DD0DB66C();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v13;
  v15 = ((v9 | v14) + 32) & ~(v9 | v14);
  v210 = v10;
  v211 = v9 + 16;
  v214 = v9;
  v16 = (v9 + 16) & ~v9;
  v17 = *(v246 + 64);
  v18 = *(v205 + 64);
  v198 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v232 + 64))
  {
    v18 = *(v232 + 64);
  }

  v234 = *(v228 + 64) + v5;
  v19 = *(v224 + 84);
  v194 = *(v224 + 64);
  if (v19)
  {
    v20 = *(v224 + 64);
  }

  else
  {
    v20 = *(v224 + 64) + 1;
  }

  v229 = v20;
  v233 = v20 + 7;
  v225 = v234 & ~v5;
  v21 = (v20 + 7 + v225) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v18 <= v22)
  {
    v18 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  v24 = ((((((v21 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 <= v24)
  {
    v18 = v24;
  }

  v197 = *(v226 + 64) + 7;
  v25 = *(v244 + 84);
  v195 = *(v243 + 84);
  if (v19)
  {
    v26 = v19 - 1;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v25)
  {
    v27 = *(v244 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v227 = v27;
  v196 = v248 + 16;
  v28 = v9 | v13;
  v235 = v17 + v8;
  v29 = v8;
  if (v18 <= ((v23 + ((v248 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v248)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v18 = ((v23 + ((v248 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v248)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v230 + 64))
  {
    v18 = *(v230 + 64);
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v238 = v18;
  v30 = (((v18 + ((v17 + v8) & ~v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (((((v30 + v16 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v13 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v33 = 0x7FFFFFFF;
  }

  else
  {
    v33 = *(v11 + 84);
  }

  v34 = *(v11 + 64) + ((v13 + 32) & ~v13);
  v35 = v34 + ((v13 + 16) & v32) + v239;
  v36 = v239;
  if (*(v246 + 84))
  {
    v37 = *(v246 + 64);
  }

  else
  {
    v37 = v17 + 1;
  }

  v38 = v15 + v37 + ((v35 + ((v13 + 16 + v31) & v32)) & ~v239);
  if (v38 + 1 > 0x49)
  {
    v39 = v38 + 1;
  }

  else
  {
    v39 = 73;
  }

  v40 = *(*(a3 + 16) - 8);
  v41 = *(v40 + 80);
  v42 = v41;
  if ((v28 | v41) != 7 || ((v222 | v239 | v220 | v5 | v218 | __n | v13 | v41) & 0x100000) != 0 || (v43 = v39 + v41 + 1, ((*(v40 + 64) + 7 + (v43 & ~v42)) & 0xFFFFFFFFFFFFFFF8) + 41 > 0x18))
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v223 = v33;
  v219 = v34 + ((v13 + 16) & v32);
  v44 = a2;
  v45 = a2[v39];
  v46 = v45 - 7;
  v231 = v43;
  if (v45 < 7)
  {
    v48 = v5;
    v49 = v214;
  }

  else
  {
    if (v39 <= 3)
    {
      v47 = v39;
    }

    else
    {
      v47 = 4;
    }

    v48 = v5;
    v49 = v214;
    switch(v47)
    {
      case 1:
        v50 = *a2;
        goto LABEL_49;
      case 2:
        v50 = *a2;
        goto LABEL_49;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_49;
      case 4:
        v50 = *a2;
LABEL_49:
        if (v39 < 4)
        {
          v50 |= v46 << (8 * v39);
        }

        v45 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v237 = v32;
  v221 = *(v12 + 84);
  v240 = *(v40 + 64) + 7;
  v242 = *(a3 + 16);
  v51 = ~v28;
  v52 = ~v49;
  v53 = ~v29;
  v54 = ~v48;
  v55 = ~v248;
  v249 = ~v42;
  v250 = v40;
  switch(v45)
  {
    case 1u:
      v67 = v39;
      v68 = *(a2 + 3);
      v57 = a1;
      *(a1 + 24) = v68;
      (**(v68 - 8))(a1, a2);
      v69 = *(a2 + 7);
      if (v69)
      {
        v70 = *(a2 + 8);
        *(a1 + 56) = v69;
        *(a1 + 64) = v70;
        (**(v69 - 8))(a1 + 32, (a2 + 32));
      }

      else
      {
        v99 = *(a2 + 3);
        *(a1 + 32) = *(a2 + 2);
        *(a1 + 48) = v99;
        *(a1 + 64) = *(a2 + 8);
      }

      v86 = v240;
      v87 = v242;
      v89 = v249;
      v88 = v250;
      v90 = v231;
      *(a1 + 72) = a2[72];
      *(a1 + v67) = 1;
      goto LABEL_68;
    case 2u:
      v63 = *a2;
      v64 = v39;
      v65 = *a2;
      v57 = a1;
      *a1 = v63;
      *(a1 + v64) = 2;
      goto LABEL_66;
    case 3u:
      v66 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 8) = v66;
      *(a1 + v39) = 3;
      sub_1DD0DCF8C();
    case 4u:
      v59 = *a2;
      v60 = *(a2 + 1);
      v61 = a2[16];
      v62 = v39;
      sub_1DCD1B9B8(*a2, v60, v61);
      v57 = a1;
      *a1 = v59;
      *(a1 + 8) = v60;
      *(a1 + 16) = v61;
      *(a1 + v62) = 4;
      goto LABEL_66;
    case 5u:
      v185 = v55;
      v187 = ~v14;
      v188 = v30 + 41;
      v215 = v14 + 16;
      __na = v238 + 1;
      v189 = ~v36;
      v190 = v35;
      v191 = v37;
      v192 = v39;
      v186 = v12;
      v71 = *(a2 + 3);
      *(a1 + 24) = v71;
      (**(v71 - 8))(a1, a2);
      v72 = ((a1 + v28 + 32) & v51);
      v73 = (&a2[v28 + 32] & v51);
      *v72 = *v73;
      v72[1] = v73[1];
      v74 = (v72 + v211) & v52;
      v75 = (v73 + v211) & v52;
      v76 = *(v246 + 16);

      v76(v74, v75, v213);
      v212 = v74;
      v77 = ((v235 + v74) & v53);
      v193 = v75;
      v78 = ((v235 + v75) & v53);
      v79 = v78[v238];
      v80 = v79 - 10;
      if (v79 < 0xA)
      {
        v82 = v238 + 1;
      }

      else
      {
        if (v238 <= 3)
        {
          v81 = v238;
        }

        else
        {
          v81 = 4;
        }

        v82 = v238 + 1;
        switch(v81)
        {
          case 1:
            v83 = *v78;
            goto LABEL_78;
          case 2:
            v83 = *v78;
            goto LABEL_78;
          case 3:
            v83 = *v78 | (v78[2] << 16);
            goto LABEL_78;
          case 4:
            v83 = *v78;
LABEL_78:
            if (v238 < 4)
            {
              v79 = (v83 | (v80 << (8 * v238))) + 10;
            }

            else
            {
              v79 = v83 + 10;
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      break;
    case 6u:
      v84 = *(a2 + 1);
      v57 = a1;
      *a1 = *a2;
      *(a1 + 8) = v84;
      v85 = *(a2 + 3);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = v85;
      *(a1 + v39) = 6;

      goto LABEL_66;
    default:
      v56 = *(a2 + 24);
      v57 = a1;
      *(a1 + 24) = v56;
      v58 = v39;
      (**(v56 - 8))(a1, a2);
      *(a1 + v58) = 0;
LABEL_66:
      v86 = v240;
      v87 = v242;
      v89 = v249;
      v88 = v250;
      goto LABEL_67;
  }

LABEL_81:
  switch(v79)
  {
    case 0u:
      v100 = v76;
      (*(v205 + 16))((v235 + v74) & v53, v78, v206);
      *(v77 + v238) = 0;
      goto LABEL_95;
    case 1u:
      (*(v205 + 16))((v235 + v74) & v53, v78, v206);
      *((v77 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v78[v198] & 0xFFFFFFFFFFFFFFF8);
      *(v77 + v238) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v100 = v76;
      *v77 = *v78;
      *(((v235 + v74) & v53) + 8) = *(v78 + 1);
      *(((v235 + v74) & v53) + 0x10) = *(v78 + 2);
      *(v77 + v238) = 2;

      goto LABEL_95;
    case 3u:
      v100 = v76;
      *v77 = *v78;
      *(v77 + v238) = 3;
      swift_unknownObjectRetain();
      goto LABEL_95;
    case 4u:
      v100 = v76;
      v101 = v238;
      (*(v203 + 16))((v235 + v74) & v53, v78, v204);
      v102 = 4;
      goto LABEL_85;
    case 5u:
      v100 = v76;
      v106 = *v78;
      *v77 = *v78;
      *(v77 + v238) = 5;
      v107 = v106;
      goto LABEL_95;
    case 6u:
      (*(v244 + 16))((v235 + v74) & v53, v78, v209);
      v108 = ((v77 + v234) & v54);
      v109 = (&v78[v234] & v54);
      v100 = v76;
      if (__swift_getEnumTagSinglePayload(v109, 1, v208))
      {
        memcpy(v108, v109, v229);
      }

      else
      {
        (*(v243 + 16))(v108, v109, v208);
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v208);
      }

      v57 = a1;
      v89 = v249;
      v110 = v193;
      v163 = ((v108 + v233) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v109 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      v163[1] = v164[1];
      v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = *v166;
      *(v165 + 4) = *(v166 + 4);
      *v165 = v167;
      v77 = ((v235 + v74) & v53);
      *(v77 + v238) = 6;

      goto LABEL_96;
    case 7u:
      (*(v244 + 16))((v235 + v74) & v53, v78, v209);
      v103 = (v235 + v74) & v53;
      v104 = ((v77 + v234) & v54);
      v105 = (&v78[v234] & v54);
      v100 = v76;
      if (__swift_getEnumTagSinglePayload(v105, 1, v208))
      {
        memcpy(v104, v105, v229);
      }

      else
      {
        (*(v243 + 16))(v104, v105, v208);
        __swift_storeEnumTagSinglePayload(v104, 0, 1, v208);
      }

      v57 = a1;
      v110 = v193;
      v152 = ((v104 + v233) & 0xFFFFFFFFFFFFFFF8);
      v153 = ((v105 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v152 = *v153;
      v152[1] = v153[1];
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
      v156 = *v155;
      *(v154 + 4) = *(v155 + 4);
      *v154 = v156;
      v157 = ((v22 + v103 + 7) & 0xFFFFFFFFFFFFFFF8);
      v158 = (&v78[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v159[1] = v160[1];
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v160 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v161[1] = v162[1];
      *(v103 + v238) = 7;

      v77 = ((v235 + v74) & v53);

      v89 = v249;
      goto LABEL_96;
    case 8u:
      (*(v201 + 16))((v235 + v74) & v53, v78, v202);
      v207 = ((v235 + v74) & v53);
      v143 = ((v77 + v197) & 0xFFFFFFFFFFFFFFF8);
      v144 = (&v78[v197] & 0xFFFFFFFFFFFFFFF8);
      *v143 = *v144;
      v143[1] = v144[1];
      v236 = ((v143 + v196) & v185);
      v145 = ((v144 + v196) & v185);

      v183 = v76;
      v184 = v78;
      if (v25 != v227)
      {
        v146 = v234;
        v147 = ((v145 + v234) & v54);
        if (v26 == v227)
        {
          v148 = v54;
          v149 = v195;
          v57 = a1;
          v150 = v208;
          if (v195 < 2)
          {
            v151 = v244;
            goto LABEL_134;
          }

          if (__swift_getEnumTagSinglePayload(v147, v195, v208) < 2)
          {
            v150 = v208;
            v151 = v244;
            goto LABEL_133;
          }
        }

        else
        {
          v168 = *(((v147 + v233) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v168 >= 0xFFFFFFFF)
          {
            LODWORD(v168) = -1;
          }

          v57 = a1;
          if ((v168 + 1) < 2)
          {
            goto LABEL_132;
          }
        }

LABEL_141:
        v100 = v183;
        v178 = v236;
        memcpy(v236, v145, v22);
        v89 = v249;
        v170 = v229;
        v171 = v225;
LABEL_142:
        v177 = v170;
        goto LABEL_143;
      }

      v57 = a1;
      v146 = v234;
      if (__swift_getEnumTagSinglePayload(v145, v25, v209))
      {
        goto LABEL_141;
      }

      v147 = ((v145 + v234) & v54);
LABEL_132:
      v150 = v208;
      v151 = v244;
      v148 = v54;
LABEL_133:
      v149 = v195;
LABEL_134:
      (*(v151 + 16))(v236, v145, v209);
      v169 = ((v236 + v146) & v148);
      v89 = v249;
      v100 = v183;
      if (__swift_getEnumTagSinglePayload(v147, 1, v150))
      {
        v170 = v229;
        memcpy(v169, v147, v229);
      }

      else
      {
        (*(v243 + 16))(v169, v147, v150);
        __swift_storeEnumTagSinglePayload(v169, 0, 1, v150);
        v170 = v229;
      }

      v171 = v225;
      v172 = ((v169 + v233) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v147 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v172[1] = v173[1];
      v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v176 = *v175;
      *(v174 + 4) = *(v175 + 4);
      *v174 = v176;

      v177 = v194;
      v178 = v236;
      if (!v149)
      {
        goto LABEL_142;
      }

LABEL_143:
      v179 = (((v171 + v177 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v180 = ((v178 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
      v181 = *((v145 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v180 = v181;
      v77 = v207;
      *(v207 + v238) = 8;
      v182 = v181;
      v74 = v212;
      v110 = v193;
      v78 = v184;
LABEL_96:
      v111 = (&v78[__na + 7] & 0xFFFFFFFFFFFFFFF8);
      v112 = ((v77 + __na + 7) & 0xFFFFFFFFFFFFFFF8);
      *v112 = *v111;
      v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v115 = *(v114 + 24);

      if (v115 < 0xFFFFFFFF)
      {
        v116 = *v114;
        v117 = *(v114 + 16);
        *(v113 + 32) = *(v114 + 32);
        *v113 = v116;
        *(v113 + 16) = v117;
      }

      else
      {
        *(v113 + 24) = v115;
        *(v113 + 32) = *(v114 + 32);
        (**(v115 - 8))(v113, v114, v115);
      }

      *(v113 + 40) = *(v114 + 40);
      *(v188 + v74 + 7) = *(v188 + v110 + 7);
      v118 = ((v188 + v74 + 22) & 0xFFFFFFFFFFFFFFF8);
      v119 = ((v188 + v110 + 22) & 0xFFFFFFFFFFFFFFF8);
      v120 = *v119;
      *v118 = *v119;
      v121 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
      v122 = ((v119 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + v215) & v237);
      v124 = ((v122 + v215) & v237);

      v125 = v120;

      if (v223 < 1)
      {
        v127 = ((v124 + v215) & v237);
        v44 = a2;
        if (__swift_getEnumTagSinglePayload((v215 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8)) & v187, v221, v210) <= 1)
        {
          goto LABEL_105;
        }

LABEL_109:
        v131 = v123;
        v132 = v124;
        v133 = v219;
        goto LABEL_113;
      }

      v126 = v124[1];
      if (v126 >= 0xFFFFFFFF)
      {
        LODWORD(v126) = -1;
      }

      v44 = a2;
      if ((v126 + 1) > 1)
      {
        goto LABEL_109;
      }

      v127 = ((v124 + v215) & v237);
LABEL_105:
      *v123 = *v124;
      v123[1] = v124[1];
      v128 = ((v123 + v215) & v237);

      if ((v221 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v215 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8)) & v187, v221, v210);
      }

      else
      {
        v129 = v127[1];
        if (v129 >= 0xFFFFFFFF)
        {
          LODWORD(v129) = -1;
        }

        EnumTagSinglePayload = v129 + 1;
      }

      v133 = v34;
      if (!EnumTagSinglePayload)
      {
        *v128 = *v127;
        *(((v123 + v215) & v237) + 8) = v127[1];
        v137 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
        v138 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v137 = *v138;
        v137[1] = v138[1];
        v139 = v137 + v215;
        v140 = v138 + v215;
        v141 = *(v186 + 16);

        v142 = v140 & v187;
        v44 = a2;
        v141(v139 & v187, v142, v210);
        goto LABEL_114;
      }

      v131 = ((v123 + v215) & v237);
      v132 = v127;
LABEL_113:
      memcpy(v131, v132, v133);
LABEL_114:
      v87 = v242;
      v134 = ((v123 + v190) & v189);
      v135 = ((v124 + v190) & v189);
      if (__swift_getEnumTagSinglePayload(v135, 1, v213))
      {
        v136 = v191;
        memcpy(v134, v135, v191);
        v86 = v240;
      }

      else
      {
        v100(v134, v135, v213);
        __swift_storeEnumTagSinglePayload(v134, 0, 1, v213);
        v86 = v240;
        v136 = v191;
      }

      *(v134 + v136) = *(v135 + v136);
      *(v57 + v192) = 5;
      v88 = v250;
LABEL_67:
      v90 = v231;
LABEL_68:
      v91 = (v90 + v57) & v89;
      v92 = &v44[v90] & v89;
      (*(v88 + 16))(v91, v92, v87);
      v93 = (v86 + v91) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v86 + v92) & 0xFFFFFFFFFFFFFFF8;
      v95 = *(v94 + 24);
      if (v95 < 0xFFFFFFFF)
      {
        v96 = *v94;
        v97 = *(v94 + 16);
        *(v93 + 32) = *(v94 + 32);
        *v93 = v96;
        *(v93 + 16) = v97;
      }

      else
      {
        *(v93 + 24) = v95;
        *(v93 + 32) = *(v94 + 32);
        (**(v95 - 8))(v93, v94);
      }

      *(v93 + 40) = *(v94 + 40);
      return v57;
    case 9u:
      v100 = v76;
      v101 = v238;
      (*(v199 + 16))((v235 + v74) & v53, v78, v200);
      v102 = 9;
LABEL_85:
      *(v77 + v101) = v102;
      goto LABEL_95;
    default:
      v100 = v76;
      memcpy(((v235 + v74) & v53), v78, v82);
LABEL_95:
      v57 = a1;
      v89 = v249;
      v110 = v193;
      goto LABEL_96;
  }
}

uint64_t *sub_1DCD2D4E4(uint64_t *a1, uint64_t a2)
{
  v130 = sub_1DD0DB04C();
  v143 = *(v130 - 8);
  v150 = v143;
  v151 = *(v143 + 80);
  v124 = sub_1DD0DC76C();
  v123 = *(v124 - 8);
  v2 = *(v123 + 80);
  v122 = sub_1DD0DB1EC();
  v140 = *(v122 - 8);
  v121 = v140;
  v3 = *(v140 + 80) | v2;
  v126 = sub_1DD0DB4BC();
  v136 = *(v126 - 8);
  v149 = v136;
  v4 = *(v136 + 80) & 0xF8;
  v125 = sub_1DD0DB3EC();
  v132 = *(v125 - 8);
  v5 = v132;
  v6 = *(v132 + 80);
  v7 = v4 | v6 | 7;
  v120 = sub_1DD0DD12C();
  v134 = *(v120 - 8);
  v119 = v134;
  v8 = *(v134 + 80);
  v118 = sub_1DD0DD08C();
  v138 = *(v118 - 8);
  v117 = v138;
  v9 = (v3 | (v8 | *(v138 + 80))) & 0xF8 | v7;
  v10 = v9 | v151;
  v127 = sub_1DD0DB66C();
  v11 = *(v127 - 8);
  v12 = *(v11 + 80);
  v13 = v12 | 7;
  v14 = v9 | v151 | v12;
  v128 = (v9 | v151) + 16;
  v146 = v9 | v151;
  v15 = *(v143 + 64);
  v145 = v9;
  v16 = (v15 + v9) & ~v9;
  v17 = v15 + v9;
  v18 = *(v123 + 64);
  v131 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v140 + 64))
  {
    v18 = *(v140 + 64);
  }

  v19 = *(v136 + 64) + v6;
  v20 = v6;
  v21 = v19 & ~v6;
  v22 = v4 | v6 | 7;
  v115 = v132;
  v23 = *(v132 + 84);
  v137 = *(v132 + 64);
  if (v23)
  {
    v24 = *(v132 + 64);
  }

  else
  {
    v24 = *(v132 + 64) + 1;
  }

  v141 = v24;
  v142 = v21;
  v25 = v24 + 7;
  v26 = (v24 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= ((v26 + 19) & 0xFFFFFFFFFFFFFFF8 | 5))
  {
    v18 = (v26 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v27 = v26 + 31;
  v28 = ((((((v26 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 <= v28)
  {
    v18 = v28;
  }

  v133 = *(v134 + 64) + 7;
  v29 = *(v149 + 84);
  v144 = *(v5 + 84);
  if (v23)
  {
    v30 = v23 - 1;
  }

  else
  {
    v30 = 0;
  }

  if (v30 <= v29)
  {
    v31 = *(v149 + 84);
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 0x7FFFFFFE)
  {
    v31 = 2147483646;
  }

  v135 = v31;
  v116 = v7 + 16;
  if (v18 <= ((v27 + ((v7 + 16 + (v133 & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v18 = ((v27 + ((v7 + 16 + (v133 & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v138 + 64))
  {
    v18 = *(v138 + 64);
  }

  if (v18 <= 0x18)
  {
    v32 = 24;
  }

  else
  {
    v32 = v18;
  }

  v33 = (((v32 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v34 = 0x7FFFFFFF;
  }

  else
  {
    v34 = *(v11 + 84);
  }

  v35 = *(*(v127 - 8) + 64) - (((-33 - v12) | v12) + ((-17 - v12) | v13)) + v151 - 2;
  v36 = v151;
  if (-2 - (((-33 - v14) | v14) + ~v15 - (*(v150 + 84) == 0)) - ((((-25 - v12 - ((((v33 + ((v10 + 16) & ~v10) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v13) - v35) | v151) <= 0x49)
  {
    v37 = 73;
  }

  else
  {
    v37 = -2 - (((-33 - v14) | v14) + ~v15 - (*(v150 + 84) == 0)) - ((((-25 - v12 - ((((v33 + ((v10 + 16) & ~v10) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v13) - v35) | v151);
  }

  v38 = *(a1 + v37);
  v39 = v38 - 7;
  if (v38 >= 7)
  {
    if (v37 <= 3)
    {
      v40 = v37;
    }

    else
    {
      v40 = 4;
    }

    switch(v40)
    {
      case 1:
        v41 = *a1;
        goto LABEL_42;
      case 2:
        v41 = *a1;
        goto LABEL_42;
      case 3:
        v41 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_42;
      case 4:
        v41 = *a1;
LABEL_42:
        if (v37 < 4)
        {
          v41 |= v39 << (8 * v37);
        }

        v38 = v41 + 7;
        break;
      default:
        break;
    }
  }

  v42 = v10 | v12;
  v43 = ~v14;
  v44 = ~v146;
  v152 = v37;
  switch(v38)
  {
    case 1u:
      v45 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v47 = a2;
      if (a1[7])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
      }

      goto LABEL_60;
    case 2u:
      v45 = a1;

      goto LABEL_59;
    case 3u:
      v45 = a1;
      v46 = a1[1];

      goto LABEL_59;
    case 4u:
      v45 = a1;
      sub_1DCD21390(*a1, a1[1], *(a1 + 16));
      goto LABEL_59;
    case 5u:
      v104 = ~v22;
      v105 = v27;
      v108 = ~v20;
      v111 = v33 + 41;
      v112 = ~v13;
      v106 = v25;
      v109 = ~v12;
      v113 = ~v36;
      v114 = v34;
      v110 = *(v11 + 84);
      v147 = v12 + 16;
      v139 = v35;
      v107 = *(v127 - 8);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v48 = (a1 + v42 + 32) & v43;
      v49 = *(v48 + 8);

      v50 = (v128 + v48) & v44;
      v129 = *(v150 + 8);
      v129(v50, v130);
      v51 = v50;
      v52 = ((v17 + v50) & ~v145);
      v53 = v52[v32];
      v54 = v53 - 10;
      if (v53 < 0xA)
      {
        v47 = a2;
        v56 = v32 + 1;
      }

      else
      {
        if (v32 <= 3)
        {
          v55 = v32;
        }

        else
        {
          v55 = 4;
        }

        v47 = a2;
        v56 = v32 + 1;
        switch(v55)
        {
          case 1:
            v57 = *v52;
            goto LABEL_67;
          case 2:
            v57 = *v52;
            goto LABEL_67;
          case 3:
            v57 = *v52 | (v52[2] << 16);
            goto LABEL_67;
          case 4:
            v57 = *v52;
LABEL_67:
            if (v32 < 4)
            {
              v53 = (v57 | (v54 << (8 * v32))) + 10;
            }

            else
            {
              v53 = v57 + 10;
            }

            break;
          default:
            goto LABEL_70;
        }
      }

      break;
    case 6u:
      v45 = a1;
      v58 = a1[1];

      v59 = a1[3];

      goto LABEL_59;
    default:
      v45 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_59:
      v47 = a2;
      goto LABEL_60;
  }

LABEL_70:
  switch(v53)
  {
    case 0u:
      v65 = v123;
      v64 = v124;
      goto LABEL_74;
    case 1u:
      (*(v123 + 8))(v52, v124);
      v77 = *(&v52[v131] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_105;
    case 2u:
      v66 = *(v52 + 1);

      v67 = *(v52 + 2);

      goto LABEL_105;
    case 3u:
      v68 = *v52;
      swift_unknownObjectRelease();
      goto LABEL_105;
    case 4u:
      v65 = v121;
      v64 = v122;
      goto LABEL_74;
    case 5u:
      v78 = *v52;
      goto LABEL_104;
    case 6u:
      (*(v149 + 8))(v52, v126);
      v79 = &v52[v19] & v108;
      if (!__swift_getEnumTagSinglePayload(v79, 1, v125))
      {
        (*(v115 + 8))(v79, v125);
      }

      v76 = v106 + v79;
      goto LABEL_87;
    case 7u:
      (*(v149 + 8))(v52, v126);
      v69 = &v52[v19] & v108;
      if (!__swift_getEnumTagSinglePayload(v69, 1, v125))
      {
        (*(v115 + 8))(v69, v125);
      }

      v70 = 7;
      if (!v144)
      {
        v70 = 8;
      }

      v71 = *(((v137 + v70 + v69) & 0xFFFFFFFFFFFFFFF8) + 8);

      v72 = &v52[((((v142 + v141 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v73 = *(v72 + 8);

      v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
      v75 = *(v74 + 8);

      v76 = v74 + 23;
LABEL_87:
      v80 = *((v76 & 0xFFFFFFFFFFFFFFF8) + 8);

      v56 = v32 + 1;
      goto LABEL_105;
    case 8u:
      (*(v119 + 8))(v52, v120);
      v81 = *((&v52[v133] & 0xFFFFFFFFFFFFFFF8) + 8);

      v82 = (v116 + (&v52[v133] & 0xFFFFFFFFFFFFFFF8)) & v104;
      if (v29 == v135)
      {
        v83 = v126;
        if (__swift_getEnumTagSinglePayload(v82, v29, v126))
        {
          goto LABEL_103;
        }

        v84 = (v19 + v82) & v108;
        goto LABEL_99;
      }

      v84 = (v19 + v82) & v108;
      if (v30 == v135)
      {
        v85 = v125;
        if (v144 < 2)
        {
          v83 = v126;
LABEL_100:
          (*(v149 + 8))(v82, v83);
          if (!__swift_getEnumTagSinglePayload(v84, 1, v85))
          {
            (*(v115 + 8))(v84, v85);
          }

          v87 = *(((v106 + v84) & 0xFFFFFFFFFFFFFFF8) + 8);

          v56 = v32 + 1;
          goto LABEL_103;
        }

        v83 = v126;
        v56 = v32 + 1;
        if (__swift_getEnumTagSinglePayload((v19 + v82) & v108, v144, v125) >= 2)
        {
          goto LABEL_103;
        }

LABEL_99:
        v85 = v125;
        goto LABEL_100;
      }

      v86 = *(((v106 + v84) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v86 >= 0xFFFFFFFF)
      {
        LODWORD(v86) = -1;
      }

      v83 = v126;
      if ((v86 + 1) < 2)
      {
        goto LABEL_99;
      }

LABEL_103:
      v78 = *((v105 + v82) & 0xFFFFFFFFFFFFFFF8);
LABEL_104:

LABEL_105:
      v88 = &v52[v56 + 7];
      v90 = (v88 & 0xFFFFFFFFFFFFFFF8) + 15;
      v89 = *(v88 & 0xFFFFFFFFFFFFFFF8);

      if (*((v90 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v90 & 0xFFFFFFFFFFFFFFF8));
      }

      v91 = *(v111 + v51 + 7);

      v92 = ((v111 + v51 + 22) & 0xFFFFFFFFFFFFFFF8);

      v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = *(v93 + 8);

      v95 = (v147 + v93) & v112;
      v45 = a1;
      if (v114 < 1)
      {
        v97 = (v147 + v95) & v112;
        if (__swift_getEnumTagSinglePayload((v147 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8)) & v109, v110, v127) > 1)
        {
          goto LABEL_119;
        }

        v98 = *(v95 + 8);
      }

      else
      {
        LODWORD(v96) = -1;
        if (*(v95 + 8) < 0xFFFFFFFFuLL)
        {
          v96 = *(v95 + 8);
        }

        if ((v96 + 1) > 1)
        {
          goto LABEL_119;
        }

        v97 = (v147 + v95) & v112;
      }

      if ((v110 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v147 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8)) & v109, v110, v127))
        {
LABEL_118:
          v100 = *(v97 + 8);

          v101 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
          v102 = *(v101 + 8);

          (*(v107 + 8))((v147 + v101) & v109, v127);
        }
      }

      else
      {
        v99 = *(v97 + 8);
        if (v99 >= 0xFFFFFFFF)
        {
          LODWORD(v99) = -1;
        }

        if (v99 == -1)
        {
          goto LABEL_118;
        }
      }

LABEL_119:
      v103 = v139 + v95;
      if (!__swift_getEnumTagSinglePayload(v103 & v113, 1, v130))
      {
        v129(v103 & v113, v130);
      }

LABEL_60:
      v60 = *(*(v47 + 16) - 8);
      v61 = v60 + 8;
      v62 = (v45 + v152 + *(v60 + 80) + 1) & ~*(v60 + 80);
      (*(v60 + 8))(v62);
      result = ((*(v61 + 56) + v62 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (result[3] >= 0xFFFFFFFF)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(result);
      }

      return result;
    case 9u:
      v65 = v117;
      v64 = v118;
LABEL_74:
      (*(v65 + 8))(v52, v64);
      goto LABEL_105;
    default:
      goto LABEL_105;
  }
}

uint64_t sub_1DCD2E1C0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v211 = sub_1DD0DB04C();
  v237 = *(v211 - 8);
  v220 = *(v237 + 80);
  v205 = sub_1DD0DC76C();
  v204 = *(v205 - 8);
  v3 = *(v204 + 80);
  v203 = sub_1DD0DB1EC();
  v223 = *(v203 - 8);
  v202 = v223;
  v4 = *(v223 + 80) | v3;
  v207 = sub_1DD0DB4BC();
  v217 = *(v207 - 8);
  v233 = v217;
  v5 = *(v217 + 80) & 0xF8;
  v206 = sub_1DD0DB3EC();
  v213 = *(v206 - 8);
  v6 = v213;
  v7 = *(v213 + 80);
  v212 = v5 | v7 | 7;
  v201 = sub_1DD0DD12C();
  v215 = *(v201 - 8);
  v200 = v215;
  v8 = *(v215 + 80);
  v199 = sub_1DD0DD08C();
  v221 = *(v199 - 8);
  v198 = v221;
  v9 = (v4 | (v8 | *(v221 + 80))) & 0xF8 | v5 | v7 | 7;
  v10 = v9 | v220;
  v208 = sub_1DD0DB66C();
  v11 = *(v208 - 8);
  v12 = *(v11 + 80);
  v13 = v12;
  v234 = v10 | v13;
  v14 = ((v10 | v13) + 32) & ~(v10 | v13);
  v209 = (v9 | v220) + 16;
  v230 = v9 | v220;
  v15 = (v10 + 16) & ~v10;
  v16 = *(v237 + 64);
  v228 = v16 + v9;
  v17 = v9;
  v18 = (v16 + v9) & ~v9;
  v19 = *(v204 + 64);
  v197 = v19 + 7;
  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = *(v204 + 64);
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v20 <= *(v223 + 64))
  {
    v20 = *(v223 + 64);
  }

  v227 = *(v217 + 64) + v7;
  v196 = v213;
  v21 = *(v213 + 84);
  v194 = *(v213 + 64);
  if (v21)
  {
    v22 = *(v213 + 64);
  }

  else
  {
    v22 = *(v213 + 64) + 1;
  }

  v23 = v22 + 7;
  v214 = v227 & ~v7;
  v24 = (v22 + 7 + v214) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v20 <= v25)
  {
    v26 = (v24 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v26 = v20;
  }

  v27 = v24 + 31;
  v28 = ((((((v24 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v218 = *(v215 + 64) + 7;
  v30 = *(v233 + 84);
  v195 = *(v6 + 84);
  if (v21)
  {
    v31 = v21 - 1;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= v30)
  {
    v32 = *(v233 + 84);
  }

  else
  {
    v32 = v31;
  }

  if (v32 <= 0x7FFFFFFE)
  {
    v32 = 2147483646;
  }

  v224 = v32;
  v216 = v212 + 16;
  if (v29 <= ((v27 + ((v212 + 16 + (v218 & 0xFFFFFFFFFFFFFFF8)) & ~v212)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v33 = ((v27 + ((v212 + 16 + (v218 & 0xFFFFFFFFFFFFFFF8)) & ~v212)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v33 = v29;
  }

  if (v33 <= *(v221 + 64))
  {
    v34 = *(v221 + 64);
  }

  else
  {
    v34 = v33;
  }

  if (v34 <= 0x18)
  {
    v35 = 24;
  }

  else
  {
    v35 = v34;
  }

  v36 = (((v35 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v38 = v12 + 16;
  v39 = (v38 + ((((((v36 + v15 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v37;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v40 = *(v11 + 84);
  }

  v229 = v40;
  v41 = *(*(v208 - 8) + 64) + ((v13 + 32) & ~v13);
  v42 = v41 + (v38 & v37);
  v43 = (v42 + v220 + v39) & ~v220;
  if (*(v237 + 84))
  {
    v44 = *(v237 + 64);
  }

  else
  {
    v44 = v16 + 1;
  }

  v45 = v14 + v44 + v43;
  if (v45 + 1 > 0x49)
  {
    v46 = v45 + 1;
  }

  else
  {
    v46 = 73;
  }

  v47 = a2[v46];
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v46 <= 3)
    {
      v49 = v46;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a2;
        goto LABEL_50;
      case 2:
        v50 = *a2;
        goto LABEL_50;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_50;
      case 4:
        v50 = *a2;
LABEL_50:
        if (v46 < 4)
        {
          v50 |= v48 << (8 * v46);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v226 = v22;
  v51 = ~v234;
  v52 = ~v230;
  v53 = ~v17;
  switch(v47)
  {
    case 1u:
      v67 = v46;
      v54 = a2;
      v68 = *(a2 + 3);
      v56 = a1;
      *(a1 + 24) = v68;
      (**(v68 - 8))(a1, a2);
      v69 = *(a2 + 7);
      if (v69)
      {
        v70 = *(a2 + 8);
        *(a1 + 56) = v69;
        *(a1 + 64) = v70;
        (**(v69 - 8))(a1 + 32, (a2 + 32));
      }

      else
      {
        v99 = *(a2 + 3);
        *(a1 + 32) = *(a2 + 2);
        *(a1 + 48) = v99;
        *(a1 + 64) = *(a2 + 8);
      }

      v85 = a3;
      *(a1 + 72) = a2[72];
      v58 = v67;
      *(a1 + v67) = 1;
      goto LABEL_69;
    case 2u:
      v54 = a2;
      v64 = *a2;
      v62 = v46;
      v65 = *a2;
      v58 = v62;
      v56 = a1;
      *a1 = v64;
      v63 = 2;
      goto LABEL_57;
    case 3u:
      v66 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 8) = v66;
      *(a1 + v46) = 3;
      sub_1DD0DCF8C();
    case 4u:
      v54 = a2;
      v59 = *a2;
      v60 = *(a2 + 1);
      v61 = a2[16];
      v62 = v46;
      sub_1DCD1B9B8(*a2, v60, v61);
      v58 = v62;
      v56 = a1;
      *a1 = v59;
      *(a1 + 8) = v60;
      *(a1 + 16) = v61;
      v63 = 4;
LABEL_57:
      *(v56 + v62) = v63;
      goto LABEL_68;
    case 5u:
      v180 = ~v212;
      v181 = ~v7;
      v189 = v36 + 41;
      v186 = ~v13;
      v190 = ~v220;
      v191 = v37;
      v184 = v41 + (v38 & v37);
      v187 = *(v11 + 84);
      __n = *(*(v208 - 8) + 64) + ((v13 + 32) & ~v13);
      v222 = v13 + 16;
      v192 = v42 + v220;
      v231 = v44;
      v185 = *(v208 - 8);
      v193 = v46;
      v71 = *(a2 + 3);
      *(a1 + 24) = v71;
      (**(v71 - 8))(a1, a2);
      v72 = ((a1 + v234 + 32) & v51);
      v73 = (&a2[v234 + 32] & v51);
      *v72 = *v73;
      v72[1] = v73[1];
      v74 = (v72 + v209) & v52;
      v75 = (v73 + v209) & v52;
      v76 = *(v237 + 16);

      v76(v74, v75, v211);
      v235 = ((v228 + v74) & v53);
      v210 = v75;
      v77 = ((v228 + v75) & v53);
      v78 = v77[v35];
      v79 = v78 - 10;
      if (v78 >= 0xA)
      {
        if (v35 <= 3)
        {
          v80 = v35;
        }

        else
        {
          v80 = 4;
        }

        switch(v80)
        {
          case 1:
            v81 = *v77;
            goto LABEL_78;
          case 2:
            v81 = *v77;
            goto LABEL_78;
          case 3:
            v81 = *v77 | (v77[2] << 16);
            goto LABEL_78;
          case 4:
            v81 = *v77;
LABEL_78:
            if (v35 < 4)
            {
              v78 = (v81 | (v79 << (8 * v35))) + 10;
            }

            else
            {
              v78 = v81 + 10;
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      break;
    case 6u:
      v54 = a2;
      v82 = *(a2 + 1);
      v56 = a1;
      *a1 = *a2;
      *(a1 + 8) = v82;
      v83 = *(a2 + 3);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = v83;
      *(a1 + v46) = 6;
      v84 = v46;

      v58 = v84;
      goto LABEL_68;
    default:
      v54 = a2;
      v55 = *(a2 + 24);
      v56 = a1;
      *(a1 + 24) = v55;
      v57 = v46;
      (**(v55 - 8))(a1, a2);
      v58 = v57;
      *(a1 + v57) = 0;
LABEL_68:
      v85 = a3;
      goto LABEL_69;
  }

LABEL_81:
  v183 = v76;
  v188 = v74;
  switch(v78)
  {
    case 0u:
      v100 = v235;
      (*(v204 + 16))(v235, v77, v205);
      *(v235 + v35) = 0;
      goto LABEL_92;
    case 1u:
      (*(v204 + 16))(v235, v77, v205);
      *((v235 + v197) & 0xFFFFFFFFFFFFFFF8) = *(&v77[v197] & 0xFFFFFFFFFFFFFFF8);
      *(v235 + v35) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v100 = v235;
      *v235 = *v77;
      v235[1] = *(v77 + 1);
      v235[2] = *(v77 + 2);
      *(v235 + v35) = 2;

      goto LABEL_92;
    case 3u:
      v100 = v235;
      *v235 = *v77;
      *(v235 + v35) = 3;
      swift_unknownObjectRetain();
      goto LABEL_92;
    case 4u:
      v100 = v235;
      (*(v202 + 16))(v235, v77, v203);
      v101 = 4;
      goto LABEL_85;
    case 5u:
      v104 = *v77;
      v100 = v235;
      *v235 = *v77;
      *(v235 + v35) = 5;
      v105 = v104;
      goto LABEL_92;
    case 6u:
      (*(v233 + 16))(v235, v77, v207);
      v139 = ((v235 + v227) & v181);
      v140 = (&v77[v227] & v181);
      if (__swift_getEnumTagSinglePayload(v140, 1, v206))
      {
        memcpy(v139, v140, v226);
      }

      else
      {
        (*(v196 + 16))(v139, v140, v206);
        __swift_storeEnumTagSinglePayload(v139, 0, 1, v206);
      }

      v56 = a1;
      v54 = a2;
      v85 = a3;
      v161 = ((v139 + v23) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v140 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v161[1] = v162[1];
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
      v165 = *v164;
      *(v163 + 4) = *(v164 + 4);
      *v163 = v165;
      *(v235 + v35) = 6;

      v106 = v35 + 1;
      v100 = v235;
      goto LABEL_94;
    case 7u:
      v100 = v235;
      (*(v233 + 16))(v235, v77, v207);
      v102 = ((v235 + v227) & v181);
      v103 = (&v77[v227] & v181);
      if (__swift_getEnumTagSinglePayload(v103, 1, v206))
      {
        memcpy(v102, v103, v226);
      }

      else
      {
        (*(v196 + 16))(v102, v103, v206);
        __swift_storeEnumTagSinglePayload(v102, 0, 1, v206);
      }

      v56 = a1;
      v54 = a2;
      v150 = ((v102 + v23) & 0xFFFFFFFFFFFFFFF8);
      v151 = ((v103 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v150 = *v151;
      v150[1] = v151[1];
      v152 = (v150 + 19) & 0xFFFFFFFFFFFFFFF8;
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = *v153;
      *(v152 + 4) = *(v153 + 4);
      *v152 = v154;
      v155 = ((v235 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
      v156 = (&v77[v25 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v159[1] = v160[1];
      *(v235 + v35) = 7;

      goto LABEL_93;
    case 8u:
      (*(v200 + 16))(v235, v77, v201);
      v141 = ((v235 + v218) & 0xFFFFFFFFFFFFFFF8);
      v142 = (&v77[v218] & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      v143 = ((v141 + v216) & v180);
      v144 = ((v142 + v216) & v180);

      if (v30 == v224)
      {
        v100 = v235;
        v56 = a1;
        if (!__swift_getEnumTagSinglePayload(v144, v30, v207))
        {
          v145 = v143;
          v225 = v77;
          v146 = v227;
          v147 = v181;
          v219 = ((v144 + v227) & v181);
          v148 = v206;
          v149 = v233;
          goto LABEL_138;
        }

LABEL_140:
        memcpy(v143, v144, v25);
        v106 = v35 + 1;
        v169 = v214;
        v168 = v226;
LABEL_143:
        v175 = v168;
        goto LABEL_144;
      }

      if (v31 == v224)
      {
        v225 = v77;
        v100 = v235;
        v56 = a1;
        v148 = v206;
        if (v195 < 2)
        {
          v219 = ((v144 + v227) & v181);
          v145 = v143;
          v149 = v233;
          v146 = v227;
          goto LABEL_137;
        }

        v77 = v225;
        if (__swift_getEnumTagSinglePayload((v144 + v227) & v181, v195, v206) >= 2)
        {
          goto LABEL_140;
        }

        v219 = ((v144 + v227) & v181);
        v145 = v143;
      }

      else
      {
        v166 = *(((v23 + ((v144 + v227) & v181)) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v166 >= 0xFFFFFFFF)
        {
          LODWORD(v166) = -1;
        }

        v100 = v235;
        v56 = a1;
        if ((v166 + 1) >= 2)
        {
          goto LABEL_140;
        }

        v219 = ((v144 + v227) & v181);
        v145 = v143;
        v225 = v77;
      }

      v148 = v206;
      v149 = v233;
      v146 = v227;
LABEL_137:
      v147 = v181;
LABEL_138:
      (*(v149 + 16))(v145, v144, v207);
      v167 = ((v145 + v146) & v147);
      if (__swift_getEnumTagSinglePayload(v219, 1, v148))
      {
        v168 = v226;
        memcpy(v167, v219, v226);
        v77 = v225;
      }

      else
      {
        (*(v196 + 16))(v167, v219, v148);
        __swift_storeEnumTagSinglePayload(v167, 0, 1, v148);
        v77 = v225;
        v168 = v226;
      }

      v170 = ((v167 + v23) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v219 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;
      v170[1] = v171[1];
      v172 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
      v174 = *v173;
      *(v172 + 4) = *(v173 + 4);
      *v172 = v174;

      v106 = v35 + 1;
      v169 = v214;
      v175 = v194;
      v143 = v145;
      if (!v195)
      {
        goto LABEL_143;
      }

LABEL_144:
      v176 = (((v169 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v177 = ((v143 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
      v178 = *((v144 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v177 = v178;
      *(v100 + v35) = 8;
      v179 = v178;
LABEL_145:
      v54 = a2;
      v85 = a3;
LABEL_94:
      v107 = (&v77[v106 + 7] & 0xFFFFFFFFFFFFFFF8);
      v108 = ((v100 + v106 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v108 = *v107;
      v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = *(v110 + 24);

      if (v111 < 0xFFFFFFFF)
      {
        v112 = *v110;
        v113 = *(v110 + 16);
        *(v109 + 32) = *(v110 + 32);
        *v109 = v112;
        *(v109 + 16) = v113;
      }

      else
      {
        *(v109 + 24) = v111;
        *(v109 + 32) = *(v110 + 32);
        (**(v111 - 8))(v109, v110, v111);
      }

      *(v109 + 40) = *(v110 + 40);
      *(v189 + v188 + 7) = *(v189 + v210 + 7);
      v114 = ((v189 + v188 + 22) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v189 + v210 + 22) & 0xFFFFFFFFFFFFFFF8);
      v116 = *v115;
      *v114 = *v115;
      v117 = ((v114 + 15) & 0xFFFFFFFFFFFFFFF8);
      v118 = ((v115 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v117[1] = v118[1];
      v119 = ((v117 + v222) & v191);
      v120 = ((v118 + v222) & v191);

      v121 = v116;

      if (v229 < 1)
      {
        v124 = ((v120 + v222) & v191);
        v123 = v231;
        if (__swift_getEnumTagSinglePayload((v222 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v186, v187, v208) <= 1)
        {
          goto LABEL_103;
        }

LABEL_107:
        v128 = v119;
        v129 = v120;
        v130 = v184;
        goto LABEL_111;
      }

      v122 = v120[1];
      if (v122 >= 0xFFFFFFFF)
      {
        LODWORD(v122) = -1;
      }

      v123 = v231;
      if ((v122 + 1) > 1)
      {
        goto LABEL_107;
      }

      v124 = ((v120 + v222) & v191);
LABEL_103:
      *v119 = *v120;
      v119[1] = v120[1];
      v125 = ((v119 + v222) & v191);

      if ((v187 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v222 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v186, v187, v208);
      }

      else
      {
        v126 = v124[1];
        if (v126 >= 0xFFFFFFFF)
        {
          LODWORD(v126) = -1;
        }

        EnumTagSinglePayload = v126 + 1;
      }

      if (!EnumTagSinglePayload)
      {
        *v125 = *v124;
        *(((v119 + v222) & v191) + 8) = v124[1];
        v133 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
        v134 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v133 = *v134;
        v133[1] = v134[1];
        v135 = v133 + v222;
        v136 = v134 + v222;
        v137 = *(v185 + 16);

        v138 = v135 & v186;
        v123 = v231;
        v137(v138, v136 & v186, v208);
        goto LABEL_112;
      }

      v128 = ((v119 + v222) & v191);
      v129 = v124;
      v130 = __n;
LABEL_111:
      memcpy(v128, v129, v130);
LABEL_112:
      v131 = ((v119 + v192) & v190);
      v132 = ((v120 + v192) & v190);
      if (__swift_getEnumTagSinglePayload(v132, 1, v211))
      {
        memcpy(v131, v132, v123);
      }

      else
      {
        v183(v131, v132, v211);
        __swift_storeEnumTagSinglePayload(v131, 0, 1, v211);
      }

      *(v131 + v123) = *(v132 + v123);
      v58 = v193;
      *(v56 + v193) = 5;
LABEL_69:
      v86 = *(*(v85 + 16) - 8);
      v87 = v86 + 16;
      v88 = *(v86 + 80);
      v89 = v58 + v88 + 1;
      v90 = (v89 + v56) & ~v88;
      v91 = &v54[v89] & ~v88;
      (*(v86 + 16))(v90, v91);
      v92 = *(v87 + 48) + 7;
      v93 = (v92 + v90) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v92 + v91) & 0xFFFFFFFFFFFFFFF8;
      v95 = *(v94 + 24);
      if (v95 < 0xFFFFFFFF)
      {
        v96 = *v94;
        v97 = *(v94 + 16);
        *(v93 + 32) = *(v94 + 32);
        *v93 = v96;
        *(v93 + 16) = v97;
      }

      else
      {
        *(v93 + 24) = v95;
        *(v93 + 32) = *(v94 + 32);
        (**(v95 - 8))(v93, v94);
      }

      *(v93 + 40) = *(v94 + 40);
      return v56;
    case 9u:
      v100 = v235;
      (*(v198 + 16))(v235, v77, v199);
      v101 = 9;
LABEL_85:
      *(v100 + v35) = v101;
LABEL_92:
      v56 = a1;
      v54 = a2;
LABEL_93:
      v85 = a3;
      v106 = v35 + 1;
      goto LABEL_94;
    default:
      v100 = v235;
      v106 = v35 + 1;
      memcpy(v235, v77, v35 + 1);
      v56 = a1;
      goto LABEL_145;
  }
}

uint64_t *sub_1DCD2F590(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_220;
  }

  v281 = sub_1DD0DB04C();
  v313 = *(v281 - 8);
  v3 = *(v313 + 80);
  v261 = sub_1DD0DC76C();
  v260 = *(v261 - 8);
  v4 = *(v260 + 80);
  v256 = sub_1DD0DB1EC();
  v296 = *(v256 - 8);
  v255 = v296;
  v5 = *(v296 + 80) | v4;
  v267 = sub_1DD0DB4BC();
  v290 = *(v267 - 8);
  v308 = v290;
  v6 = *(v290 + 80) & 0xF8;
  v268 = sub_1DD0DB3EC();
  v282 = *(v268 - 8);
  v7 = *(v282 + 80);
  v8 = v6 | v7 | 7;
  v254 = sub_1DD0DD12C();
  v286 = *(v254 - 8);
  v253 = v286;
  v9 = *(v286 + 80);
  v252 = sub_1DD0DD08C();
  v293 = *(v252 - 8);
  v251 = v293;
  v10 = (v5 | (v9 | *(v293 + 80))) & 0xF8 | v8;
  v11 = v3;
  v12 = v10 | v3;
  v13 = sub_1DD0DB66C();
  v14 = v10;
  v15 = v7;
  v16 = v8;
  v274 = v13;
  v17 = *(v13 - 8);
  v18 = v17;
  v19 = *(v17 + 80);
  v20 = v19;
  v21 = v12 | v20;
  v22 = ((v12 | v20) + 32) & ~(v12 | v20);
  v276 = v12 + 16;
  v23 = v12;
  v24 = (v12 + 16) & ~v12;
  v25 = *(v313 + 64);
  v279 = v25 + v14;
  v26 = *(v260 + 64);
  v250 = v26 + 7;
  if (((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v26)
  {
    v26 = ((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v26 <= *(v296 + 64))
  {
    v26 = *(v296 + 64);
  }

  v266 = *(v290 + 64) + v7;
  v245 = v282;
  v27 = *(v282 + 84);
  v244 = *(v282 + 64);
  if (v27)
  {
    v28 = *(v282 + 64);
  }

  else
  {
    v28 = *(v282 + 64) + 1;
  }

  v257 = v266 & ~v7;
  __n = v28;
  v263 = v28 + 7;
  v29 = (v28 + 7 + v257) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v26 <= v30)
  {
    v31 = (v29 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v31 = v26;
  }

  v32 = v29 + 31;
  v33 = ((((((v29 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v31 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  v248 = *(v286 + 64) + 7;
  v35 = *(v290 + 84);
  v271 = *(v282 + 84);
  if (v27)
  {
    v36 = v27 - 1;
  }

  else
  {
    v36 = 0;
  }

  if (v36 <= v35)
  {
    v37 = *(v290 + 84);
  }

  else
  {
    v37 = v36;
  }

  if (v37 <= 0x7FFFFFFE)
  {
    v37 = 2147483646;
  }

  v249 = v37;
  v247 = v8 + 16;
  if (v34 <= ((v32 + ((v8 + 16 + (v248 & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v34 = ((v32 + ((v8 + 16 + (v248 & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v34 <= *(v293 + 64))
  {
    v38 = *(v293 + 64);
  }

  else
  {
    v38 = v34;
  }

  if (v38 <= 0x18)
  {
    v39 = 24;
  }

  else
  {
    v39 = v38;
  }

  v40 = (((v39 + ((v25 + v14) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = v19 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v42 = (v19 + 16 + ((((((v40 + v24 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v41;
  v262 = v17;
  if (*(v17 + 84) <= 0x7FFFFFFFu)
  {
    v43 = 0x7FFFFFFF;
  }

  else
  {
    v43 = *(v17 + 84);
  }

  v297 = v43;
  v307 = v20 + 16;
  v303 = v41;
  v259 = *(v17 + 64) + ((v20 + 32) & ~v20);
  v264 = v259 + ((v20 + 16) & v41);
  v299 = v264 + v11;
  if (!*(v313 + 84))
  {
    ++v25;
  }

  v44 = v22 + v25 + ((v264 + v11 + v42) & ~v11);
  if (v44 + 1 > 0x49)
  {
    v45 = v44 + 1;
  }

  else
  {
    v45 = 73;
  }

  v301 = v39 + 1;
  v46 = a1;
  v47 = *(a1 + v45);
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v45 <= 3)
    {
      v49 = v45;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a1;
        goto LABEL_48;
      case 2:
        v50 = *a1;
        goto LABEL_48;
      case 3:
        v50 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_48;
      case 4:
        v50 = *a1;
LABEL_48:
        if (v45 < 4)
        {
          v50 |= v48 << (8 * v45);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v51 = ~v21;
  v283 = ~v23;
  v287 = ~v14;
  v265 = ~v15;
  v246 = ~v16;
  v294 = v40 + 41;
  v273 = ~v20;
  v305 = ~v11;
  v291 = v21;
  v275 = *(v18 + 84);
  v269 = ~v21;
  v270 = v25;
  switch(v47)
  {
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (!a1[7])
      {
        goto LABEL_122;
      }

      v52 = a1 + 4;
LABEL_58:
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      goto LABEL_122;
    case 2u:

      goto LABEL_122;
    case 3u:
      v53 = a1[1];

      goto LABEL_122;
    case 4u:
      sub_1DCD21390(*a1, a1[1], *(a1 + 16));
      goto LABEL_122;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v54 = (a1 + v291 + 32) & v51;
      v55 = *(v54 + 8);

      v56 = (v276 + v54) & v283;
      v242 = *(v313 + 8);
      v242(v56, v281);
      v243 = v56;
      v57 = ((v279 + v56) & v287);
      v58 = v57[v39];
      v59 = v58 - 10;
      if (v58 >= 0xA)
      {
        if (v39 <= 3)
        {
          v60 = v39;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *v57;
            goto LABEL_69;
          case 2:
            v61 = *v57;
            goto LABEL_69;
          case 3:
            v61 = *v57 | (v57[2] << 16);
            goto LABEL_69;
          case 4:
            v61 = *v57;
LABEL_69:
            if (v39 < 4)
            {
              v58 = (v61 | (v59 << (8 * v39))) + 10;
            }

            else
            {
              v58 = v61 + 10;
            }

            break;
          default:
            goto LABEL_72;
        }
      }

      break;
    case 6u:
      v62 = a1[1];

      v63 = a1[3];

      goto LABEL_122;
    default:
      v52 = a1;
      goto LABEL_58;
  }

LABEL_72:
  switch(v58)
  {
    case 0u:
      v65 = v260;
      v64 = v261;
      goto LABEL_76;
    case 1u:
      (*(v260 + 8))(v57, v261);
      v78 = *(&v57[v250] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_106;
    case 2u:
      v66 = *(v57 + 1);

      v67 = *(v57 + 2);
      goto LABEL_90;
    case 3u:
      v68 = *v57;
      swift_unknownObjectRelease();
      goto LABEL_106;
    case 4u:
      v65 = v255;
      v64 = v256;
      goto LABEL_76;
    case 5u:
      v79 = *v57;
      goto LABEL_105;
    case 6u:
      (*(v308 + 8))(v57, v267);
      v80 = &v57[v266] & v265;
      if (!__swift_getEnumTagSinglePayload(v80, 1, v268))
      {
        (*(v245 + 8))(v80, v268);
      }

      v77 = v263 + v80;
      goto LABEL_89;
    case 7u:
      (*(v308 + 8))(v57, v267);
      v69 = &v57[v266] & v265;
      if (!__swift_getEnumTagSinglePayload(v69, 1, v268))
      {
        (*(v245 + 8))(v69, v268);
      }

      v70 = 7;
      if (!v271)
      {
        v70 = 8;
      }

      v71 = *(((v244 + v70 + v69) & 0xFFFFFFFFFFFFFFF8) + 8);

      v72 = v57;
      v73 = &v57[((((v257 + __n + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v74 = *(v73 + 8);

      v75 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
      v76 = *(v75 + 8);

      v77 = v75 + 23;
      v57 = v72;
LABEL_89:
      v81 = *((v77 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_90:

      goto LABEL_106;
    case 8u:
      (*(v253 + 8))(v57, v254);
      v241 = v57;
      v82 = &v57[v248] & 0xFFFFFFFFFFFFFFF8;
      v83 = *(v82 + 8);

      v84 = (v247 + v82) & v246;
      if (v35 == v249)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v247 + v82) & v246, v35, v267);
        v57 = v241;
        if (EnumTagSinglePayload)
        {
          goto LABEL_104;
        }

        v86 = (v266 + v84) & v265;
        goto LABEL_101;
      }

      v86 = (v266 + v84) & v265;
      if (v36 == v249)
      {
        v57 = v241;
        if (v271 >= 2 && __swift_getEnumTagSinglePayload((v266 + v84) & v265, v271, v268) >= 2)
        {
          goto LABEL_104;
        }

        goto LABEL_101;
      }

      v87 = *(((v263 + v86) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v87 >= 0xFFFFFFFF)
      {
        LODWORD(v87) = -1;
      }

      v57 = v241;
      if ((v87 + 1) < 2)
      {
LABEL_101:
        (*(v308 + 8))(v84, v267);
        if (!__swift_getEnumTagSinglePayload(v86, 1, v268))
        {
          (*(v245 + 8))(v86, v268);
        }

        v88 = *(((v263 + v86) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_104:
      v79 = *((v32 + v84) & 0xFFFFFFFFFFFFFFF8);
LABEL_105:

LABEL_106:
      v89 = &v57[v301 + 7];
      v91 = (v89 & 0xFFFFFFFFFFFFFFF8) + 15;
      v90 = *(v89 & 0xFFFFFFFFFFFFFFF8);

      if (*((v91 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v91 & 0xFFFFFFFFFFFFFFF8));
      }

      v92 = *(v294 + v243 + 7);

      v93 = ((v294 + v243 + 22) & 0xFFFFFFFFFFFFFFF8);

      v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
      v95 = *(v94 + 8);

      v96 = (v307 + v94) & v303;
      if (v297 < 1)
      {
        v98 = (v307 + v96) & v303;
        if (__swift_getEnumTagSinglePayload((v307 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8)) & v273, v275, v274) > 1)
        {
          goto LABEL_120;
        }

        v99 = *(v96 + 8);
      }

      else
      {
        LODWORD(v97) = -1;
        if (*(v96 + 8) < 0xFFFFFFFFuLL)
        {
          v97 = *(v96 + 8);
        }

        if ((v97 + 1) > 1)
        {
          goto LABEL_120;
        }

        v98 = (v307 + v96) & v303;
      }

      if ((v275 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v307 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8)) & v273, v275, v274))
        {
LABEL_119:
          v101 = *(v98 + 8);

          v102 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
          v103 = *(v102 + 8);

          (*(v262 + 8))((v307 + v102) & v273, v274);
        }
      }

      else
      {
        v100 = *(v98 + 8);
        if (v100 >= 0xFFFFFFFF)
        {
          LODWORD(v100) = -1;
        }

        if (v100 == -1)
        {
          goto LABEL_119;
        }
      }

LABEL_120:
      v104 = v299 + v96;
      if (!__swift_getEnumTagSinglePayload(v104 & v305, 1, v281))
      {
        v242(v104 & v305, v281);
      }

LABEL_122:
      v105 = *(a2 + v45);
      v106 = v105 - 7;
      if (v105 >= 7)
      {
        if (v45 <= 3)
        {
          v107 = v45;
        }

        else
        {
          v107 = 4;
        }

        switch(v107)
        {
          case 1:
            v108 = *a2;
            goto LABEL_131;
          case 2:
            v108 = *a2;
            goto LABEL_131;
          case 3:
            v108 = *a2 | (*(a2 + 2) << 16);
            goto LABEL_131;
          case 4:
            v108 = *a2;
LABEL_131:
            if (v45 < 4)
            {
              v105 = (v108 | (v106 << (8 * v45))) + 7;
            }

            else
            {
              v105 = v108 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v105)
      {
        case 1u:
          v117 = a2[3];
          a1[3] = v117;
          (**(v117 - 8))(a1, a2);
          v118 = a2[7];
          if (v118)
          {
            a1[7] = v118;
            a1[8] = a2[8];
            (**(v118 - 8))((a1 + 4), (a2 + 4));
          }

          else
          {
            v133 = *(a2 + 2);
            v134 = *(a2 + 3);
            a1[8] = a2[8];
            *(a1 + 2) = v133;
            *(a1 + 3) = v134;
          }

          *(a1 + 72) = *(a2 + 72);
          v113 = 1;
          goto LABEL_219;
        case 2u:
          v114 = *a2;
          v115 = *a2;
          *a1 = v114;
          v113 = 2;
          goto LABEL_219;
        case 3u:
          v116 = a2[1];
          *a1 = *a2;
          a1[1] = v116;
          *(a1 + v45) = 3;
          sub_1DD0DCF8C();
        case 4u:
          v110 = *a2;
          v111 = a2[1];
          v112 = *(a2 + 16);
          sub_1DCD1B9B8(*a2, v111, v112);
          *a1 = v110;
          a1[1] = v111;
          *(a1 + 16) = v112;
          v113 = 4;
          goto LABEL_219;
        case 5u:
          v119 = a2[3];
          a1[3] = v119;
          (**(v119 - 8))(a1, a2);
          v120 = ((a1 + v291 + 32) & v269);
          v121 = ((a2 + v291 + 32) & v269);
          *v120 = *v121;
          v120[1] = v121[1];
          v122 = (v120 + v276) & v283;
          v123 = (v121 + v276) & v283;
          v124 = *(v313 + 16);

          v284 = v124;
          v124(v122, v123, v281);
          v292 = v122;
          v125 = ((v279 + v122) & v287);
          v126 = v123;
          v127 = ((v279 + v123) & v287);
          v128 = v127[v39];
          v129 = v128 - 10;
          if (v128 < 0xA)
          {
            v131 = v271;
            v35 = v35;
          }

          else
          {
            if (v39 <= 3)
            {
              v130 = v39;
            }

            else
            {
              v130 = 4;
            }

            v131 = v271;
            v35 = v35;
            switch(v130)
            {
              case 1:
                v132 = *v127;
                goto LABEL_156;
              case 2:
                v132 = *v127;
                goto LABEL_156;
              case 3:
                v132 = *v127 | (v127[2] << 16);
                goto LABEL_156;
              case 4:
                v132 = *v127;
LABEL_156:
                if (v39 < 4)
                {
                  v128 = (v132 | (v129 << (8 * v39))) + 10;
                }

                else
                {
                  v128 = v132 + 10;
                }

                break;
              default:
                goto LABEL_159;
            }
          }

          break;
        case 6u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];
          a1[3] = a2[3];
          *(a1 + v45) = 6;

          goto LABEL_220;
        default:
          v109 = a2[3];
          a1[3] = v109;
          a1[4] = a2[4];
          (**(v109 - 8))(a1, a2);
          *(a1 + v45) = 0;
          goto LABEL_220;
      }

      break;
    case 9u:
      v65 = v251;
      v64 = v252;
LABEL_76:
      (*(v65 + 8))(v57, v64);
      goto LABEL_106;
    default:
      goto LABEL_106;
  }

LABEL_159:
  switch(v128)
  {
    case 0u:
      (*(v260 + 16))(v125, v127, v261);
      *(v125 + v39) = 0;
      goto LABEL_198;
    case 1u:
      (*(v260 + 16))(v125, v127, v261);
      *((v125 + v250) & 0xFFFFFFFFFFFFFFF8) = *(&v127[v250] & 0xFFFFFFFFFFFFFFF8);
      *(v125 + v39) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v125 = *v127;
      v125[1] = *(v127 + 1);
      v125[2] = *(v127 + 2);
      *(v125 + v39) = 2;

      goto LABEL_181;
    case 3u:
      *v125 = *v127;
      *(v125 + v39) = 3;
      swift_unknownObjectRetain();
      goto LABEL_198;
    case 4u:
      (*(v255 + 16))(v125, v127, v256);
      v135 = 4;
      goto LABEL_163;
    case 5u:
      v139 = *v127;
      *v125 = *v127;
      v140 = 5;
      goto LABEL_197;
    case 6u:
      (*(v308 + 16))(v125, v127, v267);
      v141 = v125;
      v142 = ((v125 + v266) & v265);
      v143 = (&v127[v266] & v265);
      if (__swift_getEnumTagSinglePayload(v143, 1, v268))
      {
        memcpy(v142, v143, __n);
      }

      else
      {
        (*(v245 + 16))(v142, v143, v268);
        __swift_storeEnumTagSinglePayload(v142, 0, 1, v268);
      }

      v164 = v303;
      v165 = ((v142 + v263) & 0xFFFFFFFFFFFFFFF8);
      v166 = ((v143 + v263) & 0xFFFFFFFFFFFFFFF8);
      *v165 = *v166;
      v165[1] = v166[1];
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
      v169 = *v168;
      *(v167 + 4) = *(v168 + 4);
      *v167 = v169;
      v125 = v141;
      *(v141 + v39) = 6;

      v170 = v307;
      goto LABEL_199;
    case 7u:
      (*(v308 + 16))(v125, v127, v267);
      v136 = v125;
      v137 = ((v125 + v266) & v265);
      v138 = (&v127[v266] & v265);
      if (__swift_getEnumTagSinglePayload(v138, 1, v268))
      {
        memcpy(v137, v138, __n);
      }

      else
      {
        (*(v245 + 16))(v137, v138, v268);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v268);
      }

      v153 = ((v137 + v263) & 0xFFFFFFFFFFFFFFF8);
      v154 = ((v138 + v263) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      v153[1] = v154[1];
      v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v154 + 19) & 0xFFFFFFFFFFFFFFF8;
      v157 = *v156;
      *(v155 + 4) = *(v156 + 4);
      *v155 = v157;
      v158 = ((v136 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
      v159 = (&v127[v30 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v158 = *v159;
      v158[1] = v159[1];
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v160[1] = v161[1];
      v162 = ((v160 + 23) & 0xFFFFFFFFFFFFFFF8);
      v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v162 = *v163;
      v162[1] = v163[1];
      *(v136 + v39) = 7;

      v125 = v136;
LABEL_181:

      goto LABEL_198;
    case 8u:
      (*(v253 + 16))(v125, v127, v254);
      v280 = v125;
      v144 = ((v125 + v248) & 0xFFFFFFFFFFFFFFF8);
      v145 = (&v127[v248] & 0xFFFFFFFFFFFFFFF8);
      *v144 = *v145;
      v144[1] = v145[1];
      v288 = ((v144 + v247) & v246);
      v146 = ((v145 + v247) & v246);

      if (v35 == v249)
      {
        if (!__swift_getEnumTagSinglePayload(v146, v35, v267))
        {
          v272 = v127;
          v148 = v265;
          v147 = v266;
          v149 = ((v146 + v266) & v265);
          v150 = v146;
          v151 = v268;
          goto LABEL_188;
        }

LABEL_194:
        memcpy(v288, v146, v30);
LABEL_195:
        v174 = __n;
        goto LABEL_196;
      }

      v152 = (v146 + v266) & v265;
      if (v36 == v249)
      {
        v277 = v146;
        v151 = v268;
        if (v131 < 2)
        {
          v272 = v127;
          v148 = v265;
          v147 = v266;
          v149 = v152;
          v150 = v277;
          goto LABEL_188;
        }

        v146 = v277;
        if (__swift_getEnumTagSinglePayload(v152, v131, v268) >= 2)
        {
          goto LABEL_194;
        }
      }

      else
      {
        v171 = *(((v263 + v152) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v171 >= 0xFFFFFFFF)
        {
          LODWORD(v171) = -1;
        }

        if ((v171 + 1) >= 2)
        {
          goto LABEL_194;
        }
      }

      v272 = v127;
      v150 = v146;
      v151 = v268;
      v148 = v265;
      v147 = v266;
      v149 = v152;
LABEL_188:
      v278 = v150;
      (*(v308 + 16))(v288);
      v172 = ((v288 + v147) & v148);
      v173 = v149;
      if (__swift_getEnumTagSinglePayload(v149, 1, v151))
      {
        memcpy(v172, v149, __n);
      }

      else
      {
        (*(v245 + 16))(v172, v149, v151);
        __swift_storeEnumTagSinglePayload(v172, 0, 1, v151);
      }

      v174 = v244;
      v127 = v272;
      v175 = ((v172 + v263) & 0xFFFFFFFFFFFFFFF8);
      v176 = ((v173 + v263) & 0xFFFFFFFFFFFFFFF8);
      *v175 = *v176;
      v175[1] = v176[1];
      v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
      v179 = *v178;
      *(v177 + 4) = *(v178 + 4);
      *v177 = v179;

      v146 = v278;
      if (!v131)
      {
        goto LABEL_195;
      }

LABEL_196:
      v180 = (((v257 + v174 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v181 = ((v288 + v180 + 7) & 0xFFFFFFFFFFFFFFF8);
      v139 = *((v146 + v180 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v181 = v139;
      v140 = 8;
      v125 = v280;
LABEL_197:
      *(v125 + v39) = v140;
      v182 = v139;
LABEL_198:
      v170 = v307;
      v164 = v303;
LABEL_199:
      v183 = (&v127[v301 + 7] & 0xFFFFFFFFFFFFFFF8);
      v184 = ((v125 + v301 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v184 = *v183;
      v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
      v186 = (v183 + 15) & 0xFFFFFFFFFFFFFFF8;
      v187 = *(v186 + 24);

      if (v187 < 0xFFFFFFFF)
      {
        v188 = *v186;
        v189 = *(v186 + 16);
        *(v185 + 32) = *(v186 + 32);
        *v185 = v188;
        *(v185 + 16) = v189;
      }

      else
      {
        *(v185 + 24) = v187;
        *(v185 + 32) = *(v186 + 32);
        (**(v187 - 8))(v185, v186, v187);
      }

      *(v185 + 40) = *(v186 + 40);
      *(v294 + v292 + 7) = *(v294 + v126 + 7);
      v190 = ((v294 + v292 + 22) & 0xFFFFFFFFFFFFFFF8);
      v191 = ((v294 + v126 + 22) & 0xFFFFFFFFFFFFFFF8);
      v192 = *v191;
      *v190 = *v191;
      v193 = ((v190 + 15) & 0xFFFFFFFFFFFFFFF8);
      v194 = ((v191 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v193 = *v194;
      v193[1] = v194[1];
      v195 = ((v193 + v170) & v164);
      v196 = ((v194 + v170) & v164);

      v197 = v192;

      if (v297 >= 1)
      {
        v198 = v196[1];
        if (v198 >= 0xFFFFFFFF)
        {
          LODWORD(v198) = -1;
        }

        if ((v198 + 1) <= 1)
        {
          v199 = ((v196 + v170) & v164);
          goto LABEL_208;
        }

LABEL_213:
        v202 = v195;
        v203 = v196;
        v204 = v264;
        goto LABEL_214;
      }

      v199 = ((v196 + v170) & v164);
      if (__swift_getEnumTagSinglePayload((v170 + ((v199 + 23) & 0xFFFFFFFFFFFFFFF8)) & v273, v275, v274) > 1)
      {
        goto LABEL_213;
      }

LABEL_208:
      *v195 = *v196;
      v195[1] = v196[1];
      v200 = ((v195 + v170) & v164);

      if ((v275 & 0x80000000) != 0)
      {
        if (__swift_getEnumTagSinglePayload((v170 + ((v199 + 23) & 0xFFFFFFFFFFFFFFF8)) & v273, v275, v274))
        {
LABEL_212:
          v202 = ((v195 + v170) & v164);
          v203 = v199;
          v204 = v259;
LABEL_214:
          memcpy(v202, v203, v204);
          goto LABEL_215;
        }
      }

      else
      {
        v201 = v199[1];
        if (v201 >= 0xFFFFFFFF)
        {
          LODWORD(v201) = -1;
        }

        if (v201 != -1)
        {
          goto LABEL_212;
        }
      }

      *v200 = *v199;
      *(((v195 + v170) & v164) + 8) = v199[1];
      v235 = ((v200 + 23) & 0xFFFFFFFFFFFFFFF8);
      v236 = ((v199 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v235 = *v236;
      v235[1] = v236[1];
      v237 = v235 + v170;
      v238 = v236 + v170;
      v239 = *(v262 + 16);

      v240 = v238 & v273;
      v46 = a1;
      v239(v237 & v273, v240, v274);
LABEL_215:
      v205 = ((v195 + v299) & v305);
      v206 = ((v196 + v299) & v305);
      if (__swift_getEnumTagSinglePayload(v206, 1, v281))
      {
        v207 = v270;
        memcpy(v205, v206, v270);
      }

      else
      {
        v284(v205, v206, v281);
        __swift_storeEnumTagSinglePayload(v205, 0, 1, v281);
        v207 = v270;
      }

      *(v205 + v207) = *(v206 + v207);
      v113 = 5;
LABEL_219:
      *(v46 + v45) = v113;
LABEL_220:
      v309 = *(sub_1DD0DB04C() - 8);
      v314 = *(v309 + 80);
      v306 = *(sub_1DD0DC76C() - 8);
      v208 = *(v306 + 80);
      v304 = *(sub_1DD0DB1EC() - 8);
      v285 = *(v304 + 80) | v208;
      v302 = *(sub_1DD0DB4BC() - 8);
      v209 = *(v302 + 80) & 0xF8;
      v295 = *(sub_1DD0DB3EC() - 8);
      v210 = *(v295 + 80);
      v289 = v209 | v210 | 7;
      v300 = *(sub_1DD0DD12C() - 8);
      v211 = *(v300 + 80);
      v298 = *(sub_1DD0DD08C() - 8);
      v212 = (v285 | (v211 | *(v298 + 80))) & 0xF8 | v209 | v210 | 7;
      v214 = *(sub_1DD0DB66C() - 8);
      v216 = *(v306 + 64);
      if (((v216 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v216)
      {
        v216 = ((v216 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v216 <= *(v304 + 64))
      {
        v216 = *(v304 + 64);
      }

      v217 = *(v295 + 64) + ((*(v302 + 64) + v210) & ~v210);
      if (!*(v295 + 84))
      {
        ++v217;
      }

      v218 = (v217 + 7) & 0xFFFFFFFFFFFFFFF8;
      v219 = (v218 + 19) | 5;
      if (v216 <= v219)
      {
        v216 = (v218 + 19) | 5;
      }

      v220 = ((((((v218 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
      if (v216 <= v220)
      {
        v216 = v220;
      }

      if (v216 <= ((v219 + ((v289 + ((*(v300 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v289) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        v216 = ((v219 + ((v289 + ((*(v300 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v289) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v216 <= *(v298 + 64))
      {
        v216 = *(v298 + 64);
      }

      if (v216 <= 0x18)
      {
        v216 = 24;
      }

      v213 = v212 | v314;
      v215 = *(v214 + 80);
      v221 = -2 - (((-33 - (v213 | v215)) | v213 | v215) + ~*(v309 + 64) - (*(v309 + 84) == 0)) - ((((-25 - v215 - ((((((v213 + 16) & ~v213) + ((((((*(v309 + 64) + v212) & ~v212) + v216 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v215 | 7) - (v314 - (((-33 - v215) | v215) + ((-17 - v215) | v215 | 7)) + *(v214 + 64)) + 2) | v314);
      if (v221 <= 0x49)
      {
        v221 = 73;
      }

      v222 = *(*(a3 + 16) - 8);
      v223 = v222 + 24;
      v224 = *(v222 + 80);
      v225 = v221 + v224 + 1;
      v226 = (a1 + v225) & ~v224;
      v227 = (a2 + v225) & ~v224;
      (*(v222 + 24))(v226, v227);
      v228 = *(v223 + 40) + 7;
      v229 = (v228 + v226) & 0xFFFFFFFFFFFFFFF8;
      v230 = (v228 + v227) & 0xFFFFFFFFFFFFFFF8;
      v231 = *(v230 + 24);
      if (*(v229 + 24) < 0xFFFFFFFFuLL)
      {
        if (v231 >= 0xFFFFFFFF)
        {
          *(v229 + 24) = v231;
          *(v229 + 32) = *(v230 + 32);
          (**(v231 - 8))(v229, v230);
          goto LABEL_245;
        }

LABEL_244:
        v232 = *v230;
        v233 = *(v230 + 16);
        *(v229 + 32) = *(v230 + 32);
        *v229 = v232;
        *(v229 + 16) = v233;
        goto LABEL_245;
      }

      if (v231 < 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v229);
        goto LABEL_244;
      }

      __swift_assign_boxed_opaque_existential_1(v229, v230);
LABEL_245:
      *(v229 + 40) = *(v230 + 40);
      return a1;
    case 9u:
      (*(v251 + 16))(v125, v127, v252);
      v135 = 9;
LABEL_163:
      *(v125 + v39) = v135;
      goto LABEL_198;
    default:
      memcpy(v125, v127, v301);
      goto LABEL_198;
  }
}

void *sub_1DCD3135C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v209 = sub_1DD0DB04C();
  v229 = *(v209 - 8);
  v235 = v229;
  v236 = *(v229 + 80);
  __dst = *(sub_1DD0DC76C() - 8);
  v3 = *(__dst + 20);
  v226 = *(sub_1DD0DB1EC() - 8);
  v201 = v226;
  v212 = *(v226 + 80) | v3;
  v208 = sub_1DD0DB4BC();
  v220 = *(v208 - 8);
  v232 = v220;
  v4 = *(v220 + 80) & 0xF8;
  v206 = sub_1DD0DB3EC();
  v214 = *(v206 - 8);
  v5 = v214;
  v6 = *(v214 + 80);
  v210 = v4 | v6 | 7;
  v216 = *(sub_1DD0DD12C() - 8);
  v200 = v216;
  v7 = *(v216 + 80);
  v224 = *(sub_1DD0DD08C() - 8);
  v199 = v224;
  v8 = (v212 | (v7 | *(v224 + 80))) & 0xF8 | v4 | v6 | 7;
  v9 = v8 | v236;
  v213 = sub_1DD0DB66C();
  v10 = *(v213 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v13 = v8 | v236 | v11;
  v14 = (v8 | v236) + 16;
  v15 = *(v229 + 64);
  v16 = v8;
  v17 = v15 + v8;
  v18 = *(__dst + 8);
  v198 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v18)
  {
    v19 = *(__dst + 8);
  }

  else
  {
    v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v19 <= *(v226 + 64))
  {
    v20 = *(v226 + 64);
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= 0x18)
  {
    v21 = 24;
  }

  else
  {
    v21 = v20;
  }

  v207 = *(v220 + 64) + v6;
  v22 = v6;
  v192 = v214;
  v23 = *(v214 + 84);
  v190 = *(v214 + 64);
  if (v23)
  {
    v24 = *(v214 + 64);
  }

  else
  {
    v24 = *(v214 + 64) + 1;
  }

  __n = v24;
  v215 = v24 + 7;
  v194 = v207 & ~v6;
  v195 = v21;
  v25 = (v24 + 7 + v194) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v26 <= v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = (v25 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v28 = v25 + 31;
  v29 = (((((v25 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = v29 + 16;
  if (v29 + 16 <= v27)
  {
    v31 = v27;
  }

  else
  {
    v31 = v29 + 16;
  }

  v197 = *(v216 + 64) + 7;
  v32 = *(v220 + 84);
  v191 = *(v5 + 84);
  if (v23)
  {
    v33 = v23 - 1;
  }

  else
  {
    v33 = 0;
  }

  if (v33 <= v32)
  {
    v34 = *(v220 + 84);
  }

  else
  {
    v34 = v33;
  }

  if (v34 <= 0x7FFFFFFE)
  {
    v34 = 2147483646;
  }

  v217 = v34;
  v196 = v210 + 16;
  v35 = (v28 + ((v210 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v210)) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35 + 8;
  if (v35 + 8 <= v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = v35 + 8;
  }

  v38 = a2;
  v193 = *(v224 + 64);
  if (v193 <= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = *(v224 + 64);
  }

  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v40 = *(v10 + 84);
  }

  v228 = v40;
  v41 = *(*(v213 - 8) + 64) + ((v11 + 32) & ~v11);
  v221 = v17;
  v42 = (((v39 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = v11 + 16;
  v230 = v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v219 = v41 + (v43 & v230);
  if (*(v235 + 84))
  {
    v44 = v15;
  }

  else
  {
    v44 = v15 + 1;
  }

  v45 = (((v9 | v11) + 32) & ~(v9 | v11)) + v44 + ((v219 + v236 + ((v11 + 16 + ((((((v42 + (v14 & ~v9) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v230)) & ~v236);
  if (v45 + 1 > 0x49)
  {
    v46 = v45 + 1;
  }

  else
  {
    v46 = 73;
  }

  v227 = v39 + 1;
  v47 = a2[v46];
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v46 <= 3)
    {
      v49 = v46;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a2;
        goto LABEL_51;
      case 2:
        v50 = *a2;
        goto LABEL_51;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_51;
      case 4:
        v50 = *a2;
LABEL_51:
        if (v46 < 4)
        {
          v50 |= v48 << (8 * v46);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v51 = ~v13;
  v52 = ~v9;
  v53 = ~v16;
  v54 = ~v22;
  v55 = ~v210;
  v225 = v42 + 41;
  v56 = ~v12;
  switch(v47)
  {
    case 1u:
      v59 = a1;
      v60 = v46;
      memcpy(a1, a2, 0x49uLL);
      v46 = v60;
      v38 = a2;
      v57 = 1;
      goto LABEL_67;
    case 2u:
      v59 = a1;
      *a1 = *a2;
      v57 = 2;
      goto LABEL_67;
    case 3u:
      v59 = a1;
      *a1 = *a2;
      v57 = 3;
      goto LABEL_67;
    case 4u:
      v59 = a1;
      *a1 = *a2;
      *(a1 + 16) = a2[16];
      v57 = 4;
      goto LABEL_67;
    case 5u:
      v180 = v36;
      v181 = v30;
      v183 = v56;
      v184 = ~v236;
      v189 = *(v10 + 84);
      v211 = v41;
      v185 = v219 + v236;
      v186 = v44;
      v187 = v46;
      v237 = *(v213 - 8);
      v61 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v61;
      v62 = ((a1 + v13 + 32) & v51);
      v63 = (&a2[v13 + 32] & v51);
      *v62 = *v63;
      v64 = (v62 + v14) & v52;
      v65 = (v63 + v14) & v52;
      v182 = *(v235 + 32);
      v182(v64, v65, v209);
      v188 = v64;
      v66 = v221 + v64;
      v67 = v65;
      v68 = (v66 & v53);
      v69 = ((v221 + v65) & v53);
      v70 = v69[v39];
      v71 = v70 - 10;
      if (v70 >= 0xA)
      {
        if (v39 <= 3)
        {
          v72 = v39;
        }

        else
        {
          v72 = 4;
        }

        switch(v72)
        {
          case 1:
            v73 = *v69;
            goto LABEL_72;
          case 2:
            v73 = *v69;
            goto LABEL_72;
          case 3:
            v73 = *v69 | (v69[2] << 16);
            goto LABEL_72;
          case 4:
            v73 = *v69;
LABEL_72:
            if (v39 < 4)
            {
              v70 = (v73 | (v71 << (8 * v39))) + 10;
            }

            else
            {
              v70 = v73 + 10;
            }

            break;
          default:
            goto LABEL_75;
        }
      }

      break;
    case 6u:
      v74 = *(a2 + 1);
      v59 = a1;
      *a1 = *a2;
      *(a1 + 1) = v74;
      v57 = 6;
      goto LABEL_67;
    default:
      v57 = 0;
      v58 = *(a2 + 1);
      v59 = a1;
      *a1 = *a2;
      *(a1 + 1) = v58;
      a1[4] = *(a2 + 4);
LABEL_67:
      v75 = a3;
      goto LABEL_68;
  }

LABEL_75:
  switch(v70)
  {
    case 0u:
      v88 = v68;
      (*(__dst + 4))();
      v68 = v88;
      *(v88 + v39) = 0;
      goto LABEL_87;
    case 1u:
      v89 = v68;
      (*(__dst + 4))();
      v68 = v89;
      *((v89 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v69[v198] & 0xFFFFFFFFFFFFFFF8);
      v90 = 1;
      goto LABEL_84;
    case 2u:
      v91 = *v69;
      v68[2] = *(v69 + 2);
      *v68 = v91;
      v92 = 2;
      goto LABEL_86;
    case 3u:
      *v68 = *v69;
      v92 = 3;
      goto LABEL_86;
    case 4u:
      v89 = v68;
      (*(v201 + 32))();
      v68 = v89;
      v90 = 4;
      goto LABEL_84;
    case 5u:
      *v68 = *v69;
      v92 = 5;
LABEL_86:
      *(v68 + v39) = v92;
      goto LABEL_87;
    case 6u:
      v134 = v68;
      (*(v232 + 32))();
      v135 = v134;
      v136 = v69;
      v137 = ((v134 + v207) & v54);
      v138 = v136;
      v139 = (&v136[v207] & v54);
      if (__swift_getEnumTagSinglePayload(v139, 1, v206))
      {
        memcpy(v137, v139, __n);
      }

      else
      {
        (*(v192 + 32))(v137, v139, v206);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v206);
      }

      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v104 = v228;
      v106 = v225;
      v107 = v188;
      v101 = v213;
      v165 = ((v137 + v215) & 0xFFFFFFFFFFFFFFF8);
      v166 = ((v139 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v165 = *v166;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
      v169 = *v168;
      *(v167 + 4) = *(v168 + 4);
      *v167 = v169;
      v68 = v135;
      *(v135 + v39) = 6;
      v102 = v237;
      v99 = v211;
      v103 = v189;
      v105 = v39 + 1;
      v69 = v138;
      goto LABEL_90;
    case 7u:
      v93 = v68;
      (*(v232 + 32))();
      v94 = v93;
      v95 = v69;
      v96 = ((v93 + v207) & v54);
      v222 = v95;
      v97 = (&v95[v207] & v54);
      if (__swift_getEnumTagSinglePayload(v97, 1, v206))
      {
        memcpy(v96, v97, __n);
      }

      else
      {
        (*(v192 + 32))(v96, v97, v206);
        __swift_storeEnumTagSinglePayload(v96, 0, 1, v206);
      }

      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v104 = v228;
      v106 = v225;
      v107 = v188;
      v156 = ((v96 + v215) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v97 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      *(v158 + 4) = *(v159 + 4);
      *v158 = v160;
      v68 = v94;
      v161 = ((v94 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      v69 = v222;
      v162 = (&v222[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v162 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      *((v163 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v164 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v94 + v39) = 7;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v105 = v39 + 1;
      goto LABEL_90;
    case 8u:
      v141 = v68;
      (*(v200 + 32))();
      v142 = ((v141 + v197) & 0xFFFFFFFFFFFFFFF8);
      v223 = v69;
      v143 = (&v69[v197] & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      __dsta = ((v142 + v196) & v55);
      v144 = ((v143 + v196) & v55);
      __src = v144;
      if (v32 == v217)
      {
        v145 = v54;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, v32, v208);
        v144 = __src;
        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v39 + 1;
        v147 = v207;
        if (!EnumTagSinglePayload)
        {
          v218 = v67;
          v148 = ((__src + v207) & v145);
          goto LABEL_127;
        }

LABEL_118:
        v150 = __dsta;
        memcpy(__dsta, v144, v26);
        v151 = __src;
        v152 = __n;
        v99 = v211;
        v101 = v213;
        v102 = v237;
        v103 = v189;
        v153 = v194;
        v154 = v195;
        v68 = v141;
        v155 = v193;
LABEL_131:
        v177 = v152;
        goto LABEL_132;
      }

      v147 = v207;
      v145 = v54;
      v148 = ((v144 + v207) & v54);
      if (v33 == v217)
      {
        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v227;
        if (v191 >= 2)
        {
          v149 = __swift_getEnumTagSinglePayload(v148, v191, v206);
          v144 = __src;
          if (v149 >= 2)
          {
            goto LABEL_118;
          }
        }
      }

      else
      {
        v170 = *(((v148 + v215) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v170 >= 0xFFFFFFFF)
        {
          LODWORD(v170) = -1;
        }

        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v227;
        if ((v170 + 1) >= 2)
        {
          goto LABEL_118;
        }
      }

      v218 = v67;
LABEL_127:
      (*(v232 + 32))(__dsta, v144, v208);
      v171 = ((__dsta + v147) & v145);
      v152 = __n;
      if (__swift_getEnumTagSinglePayload(v148, 1, v206))
      {
        memcpy(v171, v148, __n);
      }

      else
      {
        (*(v192 + 32))(v171, v148, v206);
        __swift_storeEnumTagSinglePayload(v171, 0, 1, v206);
      }

      v101 = v213;
      v172 = ((v171 + v215) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v148 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v174 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = *v174;
      v176 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v176 + 4) = *(v174 + 4);
      *v176 = v175;
      v102 = v237;
      v99 = v211;
      v103 = v189;
      v177 = v190;
      v67 = v218;
      v153 = v194;
      v154 = v195;
      v68 = v141;
      v155 = v193;
      v150 = __dsta;
      v151 = __src;
      if (!v191)
      {
        goto LABEL_131;
      }

LABEL_132:
      v178 = v153 + 7;
      *((v150 + ((((v178 + v177) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v151 + ((((v178 + v177) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
      v179 = (((v178 + v152) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v179 <= v154)
      {
        v179 = v154;
      }

      if (v181 > v179)
      {
        v179 = v181;
      }

      if (v180 > v179)
      {
        v179 = v180;
      }

      if (v155 > v179)
      {
        v179 = v155;
      }

      *(v68 + v179) = 8;
      v98 = v230;
      v104 = v228;
      v69 = v223;
      v106 = v225;
LABEL_89:
      v107 = v188;
LABEL_90:
      v108 = ((v68 + v105 + 7) & 0xFFFFFFFFFFFFFFF8);
      v109 = (&v69[v105 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v108 = *v109;
      v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = *v111;
      v113 = *(v111 + 16);
      *(v110 + 32) = *(v111 + 32);
      *v110 = v112;
      *(v110 + 16) = v113;
      *(v110 + 40) = *(v111 + 40);
      *(v106 + v107 + 7) = *(v106 + v67 + 7);
      v114 = ((v106 + v67 + 22) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v106 + v107 + 22) & 0xFFFFFFFFFFFFFFF8);
      *v115 = *v114;
      v116 = ((v115 + 15) & 0xFFFFFFFFFFFFFFF8);
      v117 = ((v114 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v116 = *v117;
      v118 = ((v116 + v43) & v98);
      v119 = ((v117 + v43) & v98);
      if (v104 >= 1)
      {
        v120 = *(((v117 + v43) & v98) + 8);
        if (v120 >= 0xFFFFFFFF)
        {
          LODWORD(v120) = -1;
        }

        if ((v120 + 1) <= 1)
        {
          v121 = ((v119 + v43) & v98);
          goto LABEL_96;
        }

LABEL_101:
        v125 = v118;
        v126 = v119;
        v127 = v219;
        goto LABEL_102;
      }

      v121 = ((v119 + v43) & v98);
      v122 = __swift_getEnumTagSinglePayload((v43 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) & v183, v103, v101);
      v103 = v189;
      v99 = v211;
      v102 = v237;
      if (v122 > 1)
      {
        goto LABEL_101;
      }

LABEL_96:
      *v118 = *v119;
      v123 = ((v118 + v43) & v98);
      if ((v103 & 0x80000000) == 0)
      {
        v124 = v121[1];
        if (v124 >= 0xFFFFFFFF)
        {
          LODWORD(v124) = -1;
        }

        if (v124 != -1)
        {
          goto LABEL_100;
        }

LABEL_108:
        *v123 = *v121;
        v132 = ((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
        v133 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v132 = *v133;
        (*(v102 + 32))((v132 + v43) & v183, (v133 + v43) & v183, v213);
        goto LABEL_103;
      }

      v131 = __swift_getEnumTagSinglePayload((v43 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) & v183, v103, v213);
      v99 = v211;
      v102 = v237;
      if (!v131)
      {
        goto LABEL_108;
      }

LABEL_100:
      v125 = ((v118 + v43) & v98);
      v126 = v121;
      v127 = v99;
LABEL_102:
      memcpy(v125, v126, v127);
LABEL_103:
      v128 = ((v118 + v185) & v184);
      v129 = ((v119 + v185) & v184);
      if (__swift_getEnumTagSinglePayload(v129, 1, v100))
      {
        v130 = v186;
        memcpy(v128, v129, v186);
      }

      else
      {
        v182(v128, v129, v100);
        __swift_storeEnumTagSinglePayload(v128, 0, 1, v100);
        v130 = v186;
      }

      *(v128 + v130) = *(v129 + v130);
      v57 = 5;
      v38 = a2;
      v46 = v187;
LABEL_68:
      *(v59 + v46) = v57;
      v76 = *(*(v75 + 16) - 8);
      v77 = v76 + 32;
      v78 = *(v76 + 80);
      v79 = v46 + v78 + 1;
      v80 = (v59 + v79) & ~v78;
      v81 = &v38[v79] & ~v78;
      (*(v76 + 32))(v80, v81);
      v82 = *(v77 + 32) + 7;
      v83 = (v82 + v80) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v82 + v81) & 0xFFFFFFFFFFFFFFF8;
      v85 = *v84;
      v86 = *(v84 + 16);
      *(v83 + 32) = *(v84 + 32);
      *v83 = v85;
      *(v83 + 16) = v86;
      *(v83 + 40) = *(v84 + 40);
      return v59;
    case 9u:
      v89 = v68;
      (*(v199 + 32))();
      v68 = v89;
      v90 = 9;
LABEL_84:
      *(v89 + v39) = v90;
LABEL_87:
      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v104 = v228;
      v105 = v39 + 1;
      goto LABEL_88;
    default:
      v140 = v68;
      v105 = v39 + 1;
      memcpy(v68, v69, v227);
      v68 = v140;
      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v104 = v228;
LABEL_88:
      v106 = v225;
      goto LABEL_89;
  }
}

uint64_t *sub_1DCD32480(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_171;
  }

  v259 = sub_1DD0DB04C();
  v289 = *(v259 - 8);
  v294 = *(v289 + 80);
  v244 = sub_1DD0DC76C();
  v243 = *(v244 - 8);
  v3 = *(v243 + 80);
  v238 = sub_1DD0DB1EC();
  v280 = *(v238 - 8);
  v237 = v280;
  v262 = *(v280 + 80) | v3;
  v250 = sub_1DD0DB4BC();
  v274 = *(v250 - 8);
  v285 = v274;
  v4 = *(v274 + 80) & 0xF8;
  v251 = sub_1DD0DB3EC();
  v266 = *(v251 - 8);
  v5 = *(v266 + 80);
  v260 = v4 | v5 | 7;
  v236 = sub_1DD0DD12C();
  v270 = *(v236 - 8);
  v235 = v270;
  v6 = *(v270 + 80);
  v234 = sub_1DD0DD08C();
  v277 = *(v234 - 8);
  v233 = v277;
  v7 = (v262 | (v6 | *(v277 + 80))) & 0xF8 | v4 | v5 | 7;
  v8 = v7 | v294;
  v9 = sub_1DD0DB66C();
  v10 = v5;
  v252 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  v287 = v7 | v294 | v12;
  v13 = *(v289 + 64);
  v14 = *(v243 + 64);
  v232 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v280 + 64))
  {
    v14 = *(v280 + 64);
  }

  if (v14 <= 0x18)
  {
    v15 = 24;
  }

  else
  {
    v15 = v14;
  }

  v249 = *(v274 + 64) + v5;
  v227 = v266;
  v16 = *(v266 + 84);
  v225 = v15;
  v226 = *(v266 + 64);
  if (v16)
  {
    v17 = *(v266 + 64);
  }

  else
  {
    v17 = *(v266 + 64) + 1;
  }

  v246 = v17 + 7;
  v240 = v249 & ~v5;
  v18 = (v17 + 7 + v240) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v19 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v18 + 31;
  v22 = ((((((v18 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v224 = v22;
  if (v22 <= v20)
  {
    v22 = v20;
  }

  v229 = *(v270 + 64) + 7;
  v231 = v260 + 16;
  v23 = *(v274 + 84);
  v239 = *(v266 + 84);
  if (v16)
  {
    v24 = v16 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= v23)
  {
    v25 = *(v274 + 84);
  }

  else
  {
    v25 = v24;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v230 = v25;
  v223 = ((v21 + ((v260 + 16 + (v229 & 0xFFFFFFFFFFFFFFF8)) & ~v260)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v223 > v22)
  {
    v22 = ((v21 + ((v260 + 16 + (v229 & 0xFFFFFFFFFFFFFFF8)) & ~v260)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v222 = *(v277 + 64);
  if (v222 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = *(v277 + 64);
  }

  v245 = v11;
  v253 = *(v11 + 84);
  if (v253 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = *(v11 + 84);
  }

  v272 = v27;
  v28 = *(v11 + 64) + ((v12 + 32) & ~v12);
  v29 = (((v26 + ((v13 + v7) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v263 = v8 + 16;
  v267 = v13 + v7;
  v281 = v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v283 = v12 + 16;
  v242 = v28;
  v247 = v28 + (v283 & v281);
  v275 = v247 + v294;
  if (*(v289 + 84))
  {
    v30 = *(v289 + 64);
  }

  else
  {
    v30 = v13 + 1;
  }

  v31 = (((v8 | v12) + 32) & ~(v8 | v12)) + v30 + ((v247 + v294 + ((v12 + 16 + ((((((v29 + ((v8 + 16) & ~v8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v281)) & ~v294);
  if (v31 + 1 > 0x49)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = 73;
  }

  v278 = v26 + 1;
  v33 = *(a1 + v32);
  v34 = v33 - 7;
  if (v33 >= 7)
  {
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 1:
        v36 = *a1;
        goto LABEL_48;
      case 2:
        v36 = *a1;
        goto LABEL_48;
      case 3:
        v36 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_48;
      case 4:
        v36 = *a1;
LABEL_48:
        if (v32 < 4)
        {
          v36 |= v34 << (8 * v32);
        }

        v33 = v36 + 7;
        break;
      default:
        break;
    }
  }

  v254 = ~v287;
  v255 = ~v8;
  v257 = ~v7;
  v248 = ~v10;
  v228 = ~v260;
  v271 = v29 + 41;
  v261 = ~v12;
  v295 = ~v294;
  __n = v17;
  switch(v33)
  {
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v38 = a2;
      if (a1[7])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
      }

      goto LABEL_66;
    case 2u:

      goto LABEL_65;
    case 3u:
      v37 = a1[1];

      goto LABEL_65;
    case 4u:
      sub_1DCD21390(*a1, a1[1], *(a1 + 16));
      goto LABEL_65;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v39 = (a1 + v287 + 32) & v254;
      v40 = *(v39 + 8);

      v41 = (v263 + v39) & v255;
      v218 = *(v289 + 8);
      v218(v41, v259);
      v219 = v41;
      v42 = ((v267 + v41) & v257);
      v43 = v42[v26];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v26 <= 3)
        {
          v45 = v26;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_96;
          case 2:
            v46 = *v42;
            goto LABEL_96;
          case 3:
            v46 = *v42 | (v42[2] << 16);
            goto LABEL_96;
          case 4:
            v46 = *v42;
LABEL_96:
            if (v26 < 4)
            {
              v43 = (v46 | (v44 << (8 * v26))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            goto LABEL_99;
        }
      }

      break;
    case 6u:
      v47 = a1[1];

      v48 = a1[3];

      goto LABEL_65;
    default:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_65:
      v38 = a2;
      goto LABEL_66;
  }

LABEL_99:
  switch(v43)
  {
    case 0u:
      v70 = v243;
      v69 = v244;
      goto LABEL_110;
    case 1u:
      (*(v243 + 8))(v42, v244);
      v96 = *(&v42[v232] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_205;
    case 2u:
      v78 = *(v42 + 1);

      v79 = *(v42 + 2);
      goto LABEL_132;
    case 3u:
      v82 = *v42;
      swift_unknownObjectRelease();
      goto LABEL_205;
    case 4u:
      v70 = v237;
      v69 = v238;
      goto LABEL_110;
    case 5u:
      v98 = *v42;
      goto LABEL_204;
    case 6u:
      (*(v285 + 8))(v42, v250);
      v99 = &v42[v249] & v248;
      if (!__swift_getEnumTagSinglePayload(v99, 1, v251))
      {
        (*(v227 + 8))(v99, v251);
      }

      v91 = v246 + v99;
      goto LABEL_131;
    case 7u:
      (*(v285 + 8))(v42, v250);
      v83 = &v42[v249] & v248;
      if (!__swift_getEnumTagSinglePayload(v83, 1, v251))
      {
        (*(v227 + 8))(v83, v251);
      }

      v84 = 7;
      if (!v239)
      {
        v84 = 8;
      }

      v85 = *(((v226 + v84 + v83) & 0xFFFFFFFFFFFFFFF8) + 8);

      v86 = v42;
      v87 = &v42[((((v240 + __n + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v88 = *(v87 + 8);

      v89 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
      v90 = *(v89 + 8);

      v91 = v89 + 23;
      v42 = v86;
LABEL_131:
      v100 = *((v91 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_132:

      goto LABEL_205;
    case 8u:
      (*(v235 + 8))(v42, v236);
      v220 = v42;
      v107 = &v42[v229] & 0xFFFFFFFFFFFFFFF8;
      v108 = *(v107 + 8);

      v109 = (v231 + v107) & v228;
      if (v23 == v230)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v231 + v107) & v228, v23, v250);
        v42 = v220;
        if (EnumTagSinglePayload)
        {
          goto LABEL_203;
        }

        v217 = (v249 + v109) & v248;
        goto LABEL_200;
      }

      if (v24 == v230)
      {
        v42 = v220;
        v217 = (v249 + v109) & v248;
        if (v239 >= 2 && __swift_getEnumTagSinglePayload(v217, v239, v251) >= 2)
        {
          goto LABEL_203;
        }

        goto LABEL_200;
      }

      v187 = *(((v246 + ((v249 + v109) & v248)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v187 >= 0xFFFFFFFF)
      {
        LODWORD(v187) = -1;
      }

      v42 = v220;
      if ((v187 + 1) < 2)
      {
        v217 = (v249 + v109) & v248;
LABEL_200:
        (*(v285 + 8))(v109, v250);
        if (!__swift_getEnumTagSinglePayload(v217, 1, v251))
        {
          (*(v227 + 8))(v217, v251);
        }

        v188 = *(((v246 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_203:
      v98 = *((v21 + v109) & 0xFFFFFFFFFFFFFFF8);
LABEL_204:

LABEL_205:
      v189 = &v42[v278 + 7];
      v191 = (v189 & 0xFFFFFFFFFFFFFFF8) + 15;
      v190 = *(v189 & 0xFFFFFFFFFFFFFFF8);

      if (*((v191 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v191 & 0xFFFFFFFFFFFFFFF8));
      }

      v221 = v30;
      v192 = *(v271 + v219 + 7);

      v193 = ((v271 + v219 + 22) & 0xFFFFFFFFFFFFFFF8);

      v194 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
      v195 = *(v194 + 8);

      v196 = (v283 + v194) & v281;
      v38 = a2;
      if (v272 < 1)
      {
        v198 = (v283 + v196) & v281;
        if (__swift_getEnumTagSinglePayload((v283 + ((v198 + 23) & 0xFFFFFFFFFFFFFFF8)) & v261, v253, v252) > 1)
        {
          goto LABEL_219;
        }

        v199 = *(v196 + 8);
      }

      else
      {
        LODWORD(v197) = -1;
        if (*(v196 + 8) < 0xFFFFFFFFuLL)
        {
          v197 = *(v196 + 8);
        }

        if ((v197 + 1) > 1)
        {
          goto LABEL_219;
        }

        v198 = (v283 + v196) & v281;
      }

      if ((v253 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v283 + ((v198 + 23) & 0xFFFFFFFFFFFFFFF8)) & v261, v253, v252))
        {
LABEL_218:
          v201 = *(v198 + 8);

          v202 = (v198 + 23) & 0xFFFFFFFFFFFFFFF8;
          v203 = *(v202 + 8);

          (*(v245 + 8))((v283 + v202) & v261, v252);
        }
      }

      else
      {
        v200 = *(v198 + 8);
        if (v200 >= 0xFFFFFFFF)
        {
          LODWORD(v200) = -1;
        }

        if (v200 == -1)
        {
          goto LABEL_218;
        }
      }

LABEL_219:
      v204 = v275 + v196;
      v30 = v221;
      if (!__swift_getEnumTagSinglePayload(v204 & v295, 1, v259))
      {
        v218(v204 & v295, v259);
      }

LABEL_66:
      v49 = v38[v32];
      v50 = v49 - 7;
      if (v49 >= 7)
      {
        if (v32 <= 3)
        {
          v51 = v32;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *v38;
            goto LABEL_75;
          case 2:
            v52 = *v38;
            goto LABEL_75;
          case 3:
            v52 = *v38 | (v38[2] << 16);
            goto LABEL_75;
          case 4:
            v52 = *v38;
LABEL_75:
            if (v32 < 4)
            {
              v49 = (v52 | (v50 << (8 * v32))) + 7;
            }

            else
            {
              v49 = v52 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v49)
      {
        case 1u:
          memcpy(a1, v38, 0x49uLL);
          v53 = 1;
          goto LABEL_170;
        case 2u:
          *a1 = *v38;
          v53 = 2;
          goto LABEL_170;
        case 3u:
          *a1 = *v38;
          v53 = 3;
          goto LABEL_170;
        case 4u:
          *a1 = *v38;
          *(a1 + 16) = v38[16];
          v53 = 4;
          goto LABEL_170;
        case 5u:
          v55 = *(v38 + 1);
          *a1 = *v38;
          *(a1 + 1) = v55;
          v56 = ((a1 + v287 + 32) & v254);
          v57 = (&v38[v287 + 32] & v254);
          *v56 = *v57;
          v58 = (v56 + v263) & v255;
          v59 = (v57 + v263) & v255;
          v60 = *(v289 + 32);
          v60(v58, v59, v259);
          v288 = v58;
          v61 = ((v267 + v58) & v257);
          v62 = v59;
          v63 = ((v267 + v59) & v257);
          v64 = v63[v26];
          v65 = v64 - 10;
          if (v64 >= 0xA)
          {
            if (v26 <= 3)
            {
              v66 = v26;
            }

            else
            {
              v66 = 4;
            }

            switch(v66)
            {
              case 1:
                v67 = *v63;
                goto LABEL_102;
              case 2:
                v67 = *v63;
                goto LABEL_102;
              case 3:
                v67 = *v63 | (*(((v267 + v59) & v257) + 2) << 16);
                goto LABEL_102;
              case 4:
                v67 = *v63;
LABEL_102:
                if (v26 < 4)
                {
                  v64 = (v67 | (v65 << (8 * v26))) + 10;
                }

                else
                {
                  v64 = v67 + 10;
                }

                break;
              default:
                goto LABEL_105;
            }
          }

          break;
        case 6u:
          v68 = *(v38 + 1);
          *a1 = *v38;
          *(a1 + 1) = v68;
          v53 = 6;
          goto LABEL_170;
        default:
          v53 = 0;
          v54 = *(v38 + 1);
          *a1 = *v38;
          *(a1 + 1) = v54;
          a1[4] = *(v38 + 4);
          goto LABEL_170;
      }

      break;
    case 9u:
      v70 = v233;
      v69 = v234;
LABEL_110:
      (*(v70 + 8))(v42, v69);
      goto LABEL_205;
    default:
      goto LABEL_205;
  }

LABEL_105:
  v264 = v60;
  switch(v64)
  {
    case 0u:
      v71 = v30;
      v72 = v61;
      v73 = v63;
      (*(v243 + 32))(v61, v63, v244);
      v61 = v72;
      v63 = v73;
      *(v72 + v26) = 0;
      goto LABEL_152;
    case 1u:
      v71 = v30;
      v74 = v61;
      v97 = v63;
      (*(v243 + 32))(v61, v63, v244);
      v61 = v74;
      v63 = v97;
      *((v74 + v232) & 0xFFFFFFFFFFFFFFF8) = *(&v97[v232] & 0xFFFFFFFFFFFFFFF8);
      v76 = 1;
      goto LABEL_125;
    case 2u:
      v71 = v30;
      v80 = *v63;
      v61[2] = *(v63 + 2);
      *v61 = v80;
      v81 = 2;
      goto LABEL_151;
    case 3u:
      v71 = v30;
      *v61 = *v63;
      v81 = 3;
      goto LABEL_151;
    case 4u:
      v71 = v30;
      v74 = v61;
      v75 = v63;
      (*(v237 + 32))(v61, v63, v238);
      v61 = v74;
      v63 = v75;
      v76 = 4;
      goto LABEL_125;
    case 5u:
      v71 = v30;
      *v61 = *v63;
      v81 = 5;
      goto LABEL_151;
    case 6u:
      v71 = v30;
      v101 = v61;
      v102 = v63;
      (*(v285 + 32))(v61, v63, v250);
      v103 = ((v101 + v249) & v248);
      v104 = (&v102[v249] & v248);
      if (__swift_getEnumTagSinglePayload(v104, 1, v251))
      {
        memcpy(v103, v104, __n);
      }

      else
      {
        (*(v227 + 32))(v103, v104, v251);
        __swift_storeEnumTagSinglePayload(v103, 0, 1, v251);
      }

      v128 = v281;
      v129 = v283;
      v182 = ((v103 + v246) & 0xFFFFFFFFFFFFFFF8);
      v183 = ((v104 + v246) & 0xFFFFFFFFFFFFFFF8);
      *v182 = *v183;
      v184 = (v182 + 19) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
      v186 = *v185;
      *(v184 + 4) = *(v185 + 4);
      *v184 = v186;
      v61 = v101;
      *(v101 + v26) = 6;
      v130 = v288;
      v131 = v259;
      v63 = v102;
      goto LABEL_153;
    case 7u:
      v71 = v30;
      v92 = v61;
      v93 = v63;
      (*(v285 + 32))(v61, v63, v250);
      v94 = ((v92 + v249) & v248);
      v95 = (&v93[v249] & v248);
      if (__swift_getEnumTagSinglePayload(v95, 1, v251))
      {
        memcpy(v94, v95, __n);
      }

      else
      {
        (*(v227 + 32))(v94, v95, v251);
        __swift_storeEnumTagSinglePayload(v94, 0, 1, v251);
      }

      v119 = ((v94 + v246) & 0xFFFFFFFFFFFFFFF8);
      v120 = ((v95 + v246) & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v121 = (v119 + 19) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v120 + 19) & 0xFFFFFFFFFFFFFFF8;
      v123 = *v122;
      *(v121 + 4) = *(v122 + 4);
      *v121 = v123;
      v61 = v92;
      v124 = ((v92 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      v63 = v93;
      v125 = (&v93[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v124 = *v125;
      v126 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
      v127 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      *((v126 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
      v81 = 7;
LABEL_151:
      *(v61 + v26) = v81;
      goto LABEL_152;
    case 8u:
      v268 = v61;
      v258 = v63;
      (*(v235 + 32))(v61, v63, v236);
      v111 = ((v268 + v229) & 0xFFFFFFFFFFFFFFF8);
      v112 = (&v258[v229] & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v112;
      v256 = ((v111 + v231) & v228);
      v113 = ((v112 + v231) & v228);
      if (v23 == v230)
      {
        v115 = v248;
        v114 = v249;
        if (!__swift_getEnumTagSinglePayload(v113, v23, v250))
        {
          v116 = ((v113 + v249) & v248);
          goto LABEL_226;
        }

LABEL_233:
        v71 = v30;
        v206 = v113;
        memcpy(v256, v113, v19);
        v128 = v281;
        v208 = __n;
        v130 = v288;
        v63 = v258;
        v131 = v259;
        v61 = v268;
LABEL_234:
        v214 = v208;
        goto LABEL_235;
      }

      v115 = v248;
      v114 = v249;
      v116 = ((v113 + v249) & v248);
      if (v24 != v230)
      {
        v205 = *(((v116 + v246) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v205 >= 0xFFFFFFFF)
        {
          LODWORD(v205) = -1;
        }

        if ((v205 + 1) < 2)
        {
          goto LABEL_226;
        }

        goto LABEL_233;
      }

      v117 = v251;
      if (v239 < 2)
      {
        v118 = ((v112 + v231) & v228);
        goto LABEL_227;
      }

      v113 = ((v112 + v231) & v228);
      if (__swift_getEnumTagSinglePayload(v116, v239, v251) >= 2)
      {
        goto LABEL_233;
      }

LABEL_226:
      v118 = v113;
      v117 = v251;
LABEL_227:
      v206 = v118;
      (*(v285 + 32))(v256);
      v207 = ((v256 + v114) & v115);
      v71 = v30;
      if (__swift_getEnumTagSinglePayload(v116, 1, v117))
      {
        v208 = __n;
        memcpy(v207, v116, __n);
      }

      else
      {
        (*(v227 + 32))(v207, v116, v117);
        __swift_storeEnumTagSinglePayload(v207, 0, 1, v117);
        v208 = __n;
      }

      v130 = v288;
      v63 = v258;
      v131 = v259;
      v209 = ((v207 + v246) & 0xFFFFFFFFFFFFFFF8);
      v210 = ((v116 + v246) & 0xFFFFFFFFFFFFFFF8);
      *v209 = *v210;
      v211 = (v210 + 19) & 0xFFFFFFFFFFFFFFF8;
      v212 = *v211;
      v213 = (v209 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v213 + 4) = *(v211 + 4);
      *v213 = v212;
      v128 = v281;
      v214 = v226;
      v61 = v268;
      if (!v239)
      {
        goto LABEL_234;
      }

LABEL_235:
      v215 = (((v240 + 7 + v214) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      *((v256 + v215 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v206 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
      v216 = (((v240 + 7 + v208) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v216 <= v225)
      {
        v216 = v225;
      }

      if (v224 > v216)
      {
        v216 = v224;
      }

      if (v223 > v216)
      {
        v216 = v223;
      }

      if (v222 > v216)
      {
        v216 = v222;
      }

      *(v61 + v216) = 8;
      v129 = v283;
LABEL_153:
      v132 = ((v61 + v278 + 7) & 0xFFFFFFFFFFFFFFF8);
      v133 = (&v63[v278 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
      v135 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
      v136 = *v135;
      v137 = *(v135 + 16);
      *(v134 + 32) = *(v135 + 32);
      *v134 = v136;
      *(v134 + 16) = v137;
      *(v134 + 40) = *(v135 + 40);
      *(v271 + v130 + 7) = *(v271 + v62 + 7);
      v138 = ((v271 + v62 + 22) & 0xFFFFFFFFFFFFFFF8);
      v139 = ((v271 + v130 + 22) & 0xFFFFFFFFFFFFFFF8);
      *v139 = *v138;
      v140 = ((v139 + 15) & 0xFFFFFFFFFFFFFFF8);
      v141 = ((v138 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v140 = *v141;
      v142 = ((v140 + v129) & v128);
      v143 = ((v141 + v129) & v128);
      if (v272 >= 1)
      {
        v144 = *(((v141 + v129) & v128) + 8);
        if (v144 >= 0xFFFFFFFF)
        {
          LODWORD(v144) = -1;
        }

        if ((v144 + 1) <= 1)
        {
          v145 = ((v143 + v129) & v128);
          goto LABEL_159;
        }

LABEL_164:
        v149 = v142;
        v150 = v143;
        v151 = v247;
        goto LABEL_165;
      }

      v145 = ((v143 + v129) & v128);
      v146 = __swift_getEnumTagSinglePayload((v129 + ((v145 + 23) & 0xFFFFFFFFFFFFFFF8)) & v261, v253, v252);
      v128 = v281;
      if (v146 > 1)
      {
        goto LABEL_164;
      }

LABEL_159:
      *v142 = *v143;
      v147 = ((v142 + v129) & v128);
      if ((v253 & 0x80000000) != 0)
      {
        if (__swift_getEnumTagSinglePayload((v129 + ((v145 + 23) & 0xFFFFFFFFFFFFFFF8)) & v261, v253, v252))
        {
LABEL_163:
          v149 = v147;
          v150 = v145;
          v151 = v242;
LABEL_165:
          memcpy(v149, v150, v151);
          goto LABEL_166;
        }
      }

      else
      {
        v148 = v145[1];
        if (v148 >= 0xFFFFFFFF)
        {
          LODWORD(v148) = -1;
        }

        if (v148 != -1)
        {
          goto LABEL_163;
        }
      }

      *v147 = *v145;
      v180 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
      v181 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v180 = *v181;
      (*(v245 + 32))((v180 + v129) & v261, (v181 + v129) & v261, v252);
LABEL_166:
      v152 = ((v142 + v275) & v295);
      v153 = ((v143 + v275) & v295);
      if (__swift_getEnumTagSinglePayload(v153, 1, v131))
      {
        memcpy(v152, v153, v71);
      }

      else
      {
        v264(v152, v153, v131);
        __swift_storeEnumTagSinglePayload(v152, 0, 1, v131);
      }

      *(v152 + v71) = *(v153 + v71);
      v53 = 5;
LABEL_170:
      *(a1 + v32) = v53;
LABEL_171:
      v290 = *(sub_1DD0DB04C() - 8);
      v296 = *(v290 + 80);
      v286 = *(sub_1DD0DC76C() - 8);
      v154 = *(v286 + 80);
      v284 = *(sub_1DD0DB1EC() - 8);
      v265 = *(v284 + 80) | v154;
      v282 = *(sub_1DD0DB4BC() - 8);
      v155 = *(v282 + 80) & 0xF8;
      v273 = *(sub_1DD0DB3EC() - 8);
      v156 = *(v273 + 80);
      v269 = v155 | v156 | 7;
      v279 = *(sub_1DD0DD12C() - 8);
      v157 = *(v279 + 80);
      v276 = *(sub_1DD0DD08C() - 8);
      v158 = (v265 | (v157 | *(v276 + 80))) & 0xF8 | v155 | v156 | 7;
      v160 = *(sub_1DD0DB66C() - 8);
      v162 = *(v286 + 64);
      if (((v162 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v162)
      {
        v162 = ((v162 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v162 <= *(v284 + 64))
      {
        v162 = *(v284 + 64);
      }

      v163 = *(v273 + 64) + ((*(v282 + 64) + v156) & ~v156);
      if (!*(v273 + 84))
      {
        ++v163;
      }

      v164 = (v163 + 7) & 0xFFFFFFFFFFFFFFF8;
      v165 = (v164 + 19) | 5;
      if (v162 <= v165)
      {
        v162 = (v164 + 19) | 5;
      }

      v166 = ((((((v164 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
      if (v162 <= v166)
      {
        v162 = v166;
      }

      if (v162 <= ((v165 + ((v269 + ((*(v279 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v269) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        v162 = ((v165 + ((v269 + ((*(v279 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v269) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v162 <= *(v276 + 64))
      {
        v162 = *(v276 + 64);
      }

      if (v162 <= 0x18)
      {
        v162 = 24;
      }

      v159 = v158 | v296;
      v161 = *(v160 + 80);
      v167 = -2 - (((-33 - (v159 | v161)) | v159 | v161) + ~*(v290 + 64) - (*(v290 + 84) == 0)) - ((((-25 - v161 - ((((((v159 + 16) & ~v159) + ((((((*(v290 + 64) + v158) & ~v158) + v162 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v161 | 7) - (v296 - (((-33 - v161) | v161) + ((-17 - v161) | v161 | 7)) + *(v160 + 64)) + 2) | v296);
      if (v167 <= 0x49)
      {
        v167 = 73;
      }

      v168 = *(*(a3 + 16) - 8);
      v169 = v168 + 40;
      v170 = *(v168 + 80);
      v171 = v167 + v170 + 1;
      v172 = (a1 + v171) & ~v170;
      v173 = &a2[v171] & ~v170;
      (*(v168 + 40))(v172, v173);
      v174 = *(v169 + 24) + 7;
      v175 = (v174 + v172) & 0xFFFFFFFFFFFFFFF8;
      if (*(v175 + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v176 = (v174 + v173) & 0xFFFFFFFFFFFFFFF8;
      v177 = *v176;
      v178 = *(v176 + 16);
      *(v175 + 32) = *(v176 + 32);
      *v175 = v177;
      *(v175 + 16) = v178;
      *(v175 + 40) = *(v176 + 40);
      return a1;
    case 9u:
      v71 = v30;
      v74 = v61;
      v77 = v63;
      (*(v233 + 32))(v61, v63, v234);
      v61 = v74;
      v63 = v77;
      v76 = 9;
LABEL_125:
      *(v74 + v26) = v76;
      goto LABEL_152;
    default:
      v71 = v30;
      v105 = v61;
      v106 = v63;
      memcpy(v61, v63, v278);
      v61 = v105;
      v63 = v106;
LABEL_152:
      v128 = v281;
      v129 = v283;
      v130 = v288;
      v131 = v259;
      goto LABEL_153;
  }
}

uint64_t sub_1DCD3406C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(sub_1DD0DB04C() - 8);
  v49 = *(v46 + 80);
  v45 = *(sub_1DD0DC76C() - 8);
  v3 = *(v45 + 80);
  v44 = *(sub_1DD0DB1EC() - 8);
  v38 = *(v44 + 80) | v3;
  v43 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v43 + 80) & 0xF8;
  v40 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v40 + 80);
  v39 = v4 | v5 | 7;
  v42 = *(sub_1DD0DD12C() - 8);
  v6 = *(v42 + 80);
  v41 = *(sub_1DD0DD08C() - 8);
  v7 = (v38 | (v6 | *(v41 + 80))) & 0xF8 | v4 | v5 | 7;
  v8 = *(sub_1DD0DB66C() - 8);
  v9 = *(v8 + 80);
  v10 = *(v45 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
  {
    v10 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v10 <= *(v44 + 64))
  {
    v10 = *(v44 + 64);
  }

  v11 = *(v40 + 64) + ((*(v43 + 64) + v5) & ~v5);
  if (!*(v40 + 84))
  {
    ++v11;
  }

  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 19) | 5;
  if (v10 <= v13)
  {
    v10 = (v12 + 19) | 5;
  }

  v14 = ((((((v12 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 <= v14)
  {
    v10 = v14;
  }

  if (v10 <= ((v13 + ((v39 + ((*(v42 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v39) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v13 + ((v39 + ((*(v42 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v39) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v10 <= *(v41 + 64))
  {
    v10 = *(v41 + 64);
  }

  if (v10 <= 0x18)
  {
    v15 = 24;
  }

  else
  {
    v15 = v10;
  }

  v16 = *(v8 + 64);
  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = *(v18 + 84);
  }

  v21 = -2 - (((-33 - (v7 | v49 | v9)) | v7 | v49 | v9) + ~*(v46 + 64) - (*(v46 + 84) == 0)) - ((((-25 - v9 - (((((((v7 | v49) + 16) & ~(v7 | v49)) + ((((((*(v46 + 64) + v7) & ~v7) + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v9 | 7) - (v49 - (((-33 - v9) | v9) + ((-17 - v9) | v9 | 7)) + v16) + 2) | v49);
  v22 = 73;
  if (v21 > 0x49)
  {
    v22 = v21;
  }

  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = v22 + v23 + 1;
  v26 = v24 + 7;
  result = a1;
  if (v20 >= a2)
  {
LABEL_45:
    v35 = &a1[v25] & ~v23;
    if (v19 < 0x7FFFFFFE)
    {
      v36 = *(((v26 + v35) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v36 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      if ((v36 + 1) >= 2)
      {
        return v36;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return __swift_getEnumTagSinglePayload(v35, v19, v17);
    }
  }

  else
  {
    v28 = ((v26 + (v25 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v28 <= 3)
    {
      v29 = ((a2 - v20 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    switch(v31)
    {
      case 1:
        v32 = a1[v28];
        if (!a1[v28])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v32 = *&a1[v28];
        if (!*&a1[v28])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v32 = *&a1[v28];
        if (!v32)
        {
          goto LABEL_45;
        }

LABEL_41:
        v33 = (v32 - 1) << (8 * v28);
        if (v28 <= 3)
        {
          v34 = *a1;
        }

        else
        {
          v33 = 0;
          v34 = *a1;
        }

        result = v20 + (v34 | v33) + 1;
        break;
      default:
        goto LABEL_45;
    }
  }

  return result;
}

void sub_1DCD34678(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v43 = *(sub_1DD0DB04C() - 8);
  v48 = *(v43 + 80);
  v42 = *(sub_1DD0DC76C() - 8);
  v4 = *(v42 + 80);
  v41 = *(sub_1DD0DB1EC() - 8);
  v35 = *(v41 + 80) | v4;
  v40 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v40 + 80) & 0xF8;
  v37 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v37 + 80);
  v36 = v5 | v6 | 7;
  v39 = *(sub_1DD0DD12C() - 8);
  v7 = *(v39 + 80);
  v38 = *(sub_1DD0DD08C() - 8);
  v8 = (v35 | (v7 | *(v38 + 80))) & 0xF8 | v5 | v6 | 7;
  v9 = *(sub_1DD0DB66C() - 8);
  v10 = *(v9 + 80);
  v11 = *(v42 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v41 + 64))
  {
    v11 = *(v41 + 64);
  }

  v12 = *(v37 + 64) + ((*(v40 + 64) + v6) & ~v6);
  if (!*(v37 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v36 + ((*(v39 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v36 + ((*(v39 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v38 + 64))
  {
    v11 = *(v38 + 64);
  }

  if (v11 <= 0x18)
  {
    v16 = 24;
  }

  else
  {
    v16 = v11;
  }

  v17 = *(v9 + 64);
  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v20 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  else
  {
    v21 = *(v19 + 84);
  }

  v22 = -2 - (((-33 - (v8 | v48 | v10)) | v8 | v48 | v10) + ~*(v43 + 64) - (*(v43 + 84) == 0)) - ((((-25 - v10 - (((((((v8 | v48) + 16) & ~(v8 | v48)) + ((((((*(v43 + 64) + v8) & ~v8) + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v10 | 7) - (v48 - (((-33 - v10) | v10) + ((-17 - v10) | v10 | 7)) + v17) + 2) | v48);
  if (v22 <= 0x49)
  {
    v22 = 73;
  }

  v23 = *(v19 + 80);
  v24 = v22 + v23 + 1;
  v25 = *(v19 + 64) + 7;
  v26 = ((v25 + (v24 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v21 >= a3)
  {
    v29 = 0;
  }

  else
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v21 + 255) >> 8) + 1;
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
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  if (v21 >= a2)
  {
    v32 = ~v23;
    switch(v29)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_49;
      default:
LABEL_49:
        if (a2)
        {
LABEL_50:
          v33 = (a1 + v24) & v32;
          if (v20 < 0x7FFFFFFE)
          {
            v34 = (v25 + v33) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v34 + 32) = 0;
              *v34 = 0u;
              *(v34 + 16) = 0u;
              *v34 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v34 + 24) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v33, a2, v20, v18);
          }
        }

        break;
    }
  }

  else
  {
    v30 = ~v21 + a2;
    bzero(a1, v26);
    if (v26 <= 3)
    {
      v31 = (v30 >> 8) + 1;
    }

    else
    {
      v31 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v30;
    }

    switch(v29)
    {
      case 1:
        *(a1 + v26) = v31;
        break;
      case 2:
        *(a1 + v26) = v31;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *(a1 + v26) = v31;
        break;
      default:
        return;
    }
  }
}