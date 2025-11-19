void sub_1DCCB6D10(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCCB6D88()
{
  v1 = *v0;
  sub_1DCCAECB0();
  return v2 & 1;
}

uint64_t sub_1DCCB6DF8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCCB6E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCCB6F00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCCB6F10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1DCCB6F38(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1DCCB6FA8()
{
  result = qword_1EDE49E28[0];
  if (!qword_1EDE49E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE49E28);
  }

  return result;
}

void sub_1DCCB7070(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCCB707C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

void sub_1DCCB7278(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1DCCAF1C0(a1, v1[2]);
}

void sub_1DCCB7284(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    MEMORY[0x1EEE66BB8](a1);
  }
}

uint64_t sub_1DCCB7290(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v6 + 84);
  }

  return result;
}

void *sub_1DCCB7338(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v21 = a2[1];
      *a1 = *a2;
      a1[1] = v21;
      v22 = a2[3];
      a1[2] = a2[2];
      a1[3] = v22;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v12 = sub_1DD0DB04C();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = type metadata accessor for Input(0);
      v14 = v13[5];
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 16))(v15, v16, v18);
          goto LABEL_36;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v15, v16, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v15[*(v35 + 48)] = *&v16[*(v35 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v29 = *(v16 + 1);
          *v15 = *v16;
          *(v15 + 1) = v29;
          *(v15 + 2) = *(v16 + 2);

          goto LABEL_36;
        case 3u:
          *v15 = *v16;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v27 = sub_1DD0DB1EC();
          (*(*(v27 - 8) + 16))(v15, v16, v27);
          goto LABEL_36;
        case 5u:
          v36 = *v16;
          *v15 = *v16;
          v37 = v36;
          goto LABEL_36;
        case 6u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v15, v16, v38);
          __dsta = type metadata accessor for USOParse();
          v39 = __dsta[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v16[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v39], &v16[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 16))(&v15[v39], &v16[v39], v40);
            __swift_storeEnumTagSinglePayload(&v15[v39], 0, 1, v40);
          }

          v71 = __dsta[6];
          v72 = &v15[v71];
          v73 = &v16[v71];
          v74 = *(v73 + 1);
          *v72 = *v73;
          *(v72 + 1) = v74;
          v75 = __dsta[7];
          v76 = &v15[v75];
          v77 = &v16[v75];
          v76[4] = v77[4];
          *v76 = *v77;

          goto LABEL_36;
        case 7u:
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 16))(v15, v16, v30);
          __dst = type metadata accessor for USOParse();
          v31 = __dst[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v16[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v31], &v16[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v15[v31], &v16[v31], v32);
            __swift_storeEnumTagSinglePayload(&v15[v31], 0, 1, v32);
          }

          v52 = __dst[6];
          v53 = &v15[v52];
          v54 = &v16[v52];
          v105 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v105;
          v55 = __dst[7];
          v56 = &v15[v55];
          v57 = &v16[v55];
          v56[4] = v57[4];
          *v56 = *v57;
          v58 = type metadata accessor for LinkParse();
          v59 = v58[5];
          v60 = &v15[v59];
          v61 = &v16[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = v58[6];
          v64 = &v15[v63];
          v65 = &v16[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = v58[7];
          v68 = &v15[v67];
          v69 = &v16[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;

          goto LABEL_36;
        case 8u:
          v42 = sub_1DD0DD12C();
          (*(*(v42 - 8) + 16))(v15, v16, v42);
          v43 = type metadata accessor for NLRouterParse();
          v44 = *(v43 + 20);
          v45 = &v15[v44];
          v46 = &v16[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = *(v43 + 24);
          v104 = v43;
          __dstb = &v15[v48];
          v49 = &v16[v48];
          v50 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v78 = sub_1DD0DB4BC();
            (*(*(v78 - 8) + 16))(__dstb, v49, v78);
            v103 = v50;
            v79 = *(v50 + 20);
            v102 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v49[v79], 1, v102))
            {
              v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v79], &v49[v79], *(*(v80 - 8) + 64));
            }

            else
            {
              (*(*(v102 - 8) + 16))(&__dstb[v79], &v49[v79]);
              __swift_storeEnumTagSinglePayload(&__dstb[v79], 0, 1, v102);
            }

            v81 = *(v103 + 24);
            v82 = &__dstb[v81];
            v83 = &v49[v81];
            v84 = *(v83 + 1);
            *v82 = *v83;
            *(v82 + 1) = v84;
            v85 = *(v103 + 28);
            v86 = &__dstb[v85];
            v87 = &v49[v85];
            v86[4] = v87[4];
            *v86 = *v87;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v103);
          }

          v88 = *(v104 + 28);
          v89 = *&v16[v88];
          *&v15[v88] = v89;
          v90 = v89;
          goto LABEL_36;
        case 9u:
          v28 = sub_1DD0DD08C();
          (*(*(v28 - 8) + 16))(v15, v16, v28);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v15, v16, *(*(v17 - 8) + 64));
          break;
      }

      *(a1 + v13[6]) = *(a2 + v13[6]);
      v91 = v13[7];
      v92 = a1 + v91;
      v93 = a2 + v91;
      v94 = *(a2 + v91 + 24);

      if (v94)
      {
        v95 = *(v93 + 32);
        *(v92 + 3) = v94;
        *(v92 + 4) = v95;
        (**(v94 - 8))(v92, v93, v94);
      }

      else
      {
        v96 = *(v93 + 16);
        *v92 = *v93;
        *(v92 + 1) = v96;
        *(v92 + 4) = *(v93 + 32);
      }

      *(a1 + v13[8]) = *(a2 + v13[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v98 = TupleTypeMetadata[24];
      v99 = (a1 + v98);
      v100 = (a2 + v98);
      v101 = v100[1];
      *v99 = *v100;
      v99[1] = v101;
      sub_1DD0DCF8C();
    case 3u:
      v19 = a2[1];
      *a1 = *a2;
      a1[1] = v19;
      v20 = a2[3];
      a1[2] = a2[2];
      a1[3] = v20;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v9 = *a2;
      v10 = a2[1];
      v11 = *(a2 + 16);
      sub_1DCBB12F4(v9, v10, v11);
      *a1 = v9;
      a1[1] = v10;
      *(a1 + 16) = v11;
      goto LABEL_41;
    case 5u:
      v23 = *a2;
      v24 = *a2;
      *a1 = v23;
      *(a1 + 8) = *(a2 + 8);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v25 = *(*(v7 - 8) + 64);

      result = memcpy(a1, a2, v25);
      break;
  }

  return result;
}

void sub_1DCCB7E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = *a1;

      v11 = *(a1 + 16);

      goto LABEL_10;
    case 1u:
    case 3u:
      v5 = *a1;

      v6 = *(a1 + 32);

      break;
    case 2u:
      v12 = sub_1DD0DB04C();
      (*(*(v12 - 8) + 8))(a1, v12);
      v13 = type metadata accessor for Input(0);
      v14 = (a1 + v13[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
          v28 = sub_1DD0DC76C();
          (*(*(v28 - 8) + 8))(v14, v28);
          v29 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v16 = *(v14 + 1);

          v17 = *(v14 + 2);
          goto LABEL_30;
        case 3u:
          v18 = *v14;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v15 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
          v30 = *v14;
          goto LABEL_36;
        case 6u:
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 8))(v14, v31);
          v32 = type metadata accessor for USOParse();
          v33 = *(v32 + 20);
          v34 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v14[v33], 1, v34))
          {
            (*(*(v34 - 8) + 8))(&v14[v33], v34);
          }

          v27 = *(v32 + 24);
          goto LABEL_29;
        case 7u:
          v19 = sub_1DD0DB4BC();
          (*(*(v19 - 8) + 8))(v14, v19);
          v20 = type metadata accessor for USOParse();
          v21 = *(v20 + 20);
          v22 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v14[v21], 1, v22))
          {
            (*(*(v22 - 8) + 8))(&v14[v21], v22);
          }

          v23 = *&v14[*(v20 + 24) + 8];

          v24 = type metadata accessor for LinkParse();
          v25 = *&v14[v24[5] + 8];

          v26 = *&v14[v24[6] + 8];

          v27 = v24[7];
LABEL_29:
          v35 = *&v14[v27 + 8];
LABEL_30:

          break;
        case 8u:
          v36 = sub_1DD0DD12C();
          (*(*(v36 - 8) + 8))(v14, v36);
          v37 = type metadata accessor for NLRouterParse();
          v38 = *&v14[v37[5] + 8];

          v39 = &v14[v37[6]];
          v40 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v39, 1, v40))
          {
            v41 = sub_1DD0DB4BC();
            (*(*(v41 - 8) + 8))(v39, v41);
            v42 = *(v40 + 20);
            v43 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v39 + v42, 1, v43))
            {
              (*(*(v43 - 8) + 8))(v39 + v42, v43);
            }

            v44 = *(v39 + *(v40 + 24) + 8);
          }

          v30 = *&v14[v37[7]];
LABEL_36:

          break;
        case 9u:
          v15 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v15 - 8) + 8))(v14, v15);
          break;
        default:
          break;
      }

      v45 = *(a1 + v13[6]);

      v46 = (a1 + v13[7]);
      if (v46[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
      }

      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v48 = *(a1 + TupleTypeMetadata[12]);

      v49 = *(a1 + TupleTypeMetadata[24] + 8);

      break;
    case 4u:
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);

      sub_1DCBB1310(v7, v8, v9);
      break;
    case 5u:
      v11 = *a1;

LABEL_10:

      break;
    default:
      return;
  }
}

void *sub_1DCCB84B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v21 = a2[1];
      *a1 = *a2;
      a1[1] = v21;
      v22 = a2[3];
      a1[2] = a2[2];
      a1[3] = v22;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v12 = sub_1DD0DB04C();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = type metadata accessor for Input(0);
      v14 = v13[5];
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 16))(v15, v16, v18);
          goto LABEL_34;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v15, v16, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v15[*(v35 + 48)] = *&v16[*(v35 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v29 = *(v16 + 1);
          *v15 = *v16;
          *(v15 + 1) = v29;
          *(v15 + 2) = *(v16 + 2);

          goto LABEL_34;
        case 3u:
          *v15 = *v16;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v27 = sub_1DD0DB1EC();
          (*(*(v27 - 8) + 16))(v15, v16, v27);
          goto LABEL_34;
        case 5u:
          v36 = *v16;
          *v15 = *v16;
          v37 = v36;
          goto LABEL_34;
        case 6u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v15, v16, v38);
          __dsta = type metadata accessor for USOParse();
          v39 = __dsta[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v16[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v39], &v16[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 16))(&v15[v39], &v16[v39], v40);
            __swift_storeEnumTagSinglePayload(&v15[v39], 0, 1, v40);
          }

          v71 = __dsta[6];
          v72 = &v15[v71];
          v73 = &v16[v71];
          v74 = *(v73 + 1);
          *v72 = *v73;
          *(v72 + 1) = v74;
          v75 = __dsta[7];
          v76 = &v15[v75];
          v77 = &v16[v75];
          v76[4] = v77[4];
          *v76 = *v77;

          goto LABEL_34;
        case 7u:
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 16))(v15, v16, v30);
          __dst = type metadata accessor for USOParse();
          v31 = __dst[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v16[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v31], &v16[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v15[v31], &v16[v31], v32);
            __swift_storeEnumTagSinglePayload(&v15[v31], 0, 1, v32);
          }

          v52 = __dst[6];
          v53 = &v15[v52];
          v54 = &v16[v52];
          v105 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v105;
          v55 = __dst[7];
          v56 = &v15[v55];
          v57 = &v16[v55];
          v56[4] = v57[4];
          *v56 = *v57;
          v58 = type metadata accessor for LinkParse();
          v59 = v58[5];
          v60 = &v15[v59];
          v61 = &v16[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;
          v63 = v58[6];
          v64 = &v15[v63];
          v65 = &v16[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = v58[7];
          v68 = &v15[v67];
          v69 = &v16[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;

          goto LABEL_34;
        case 8u:
          v42 = sub_1DD0DD12C();
          (*(*(v42 - 8) + 16))(v15, v16, v42);
          v43 = type metadata accessor for NLRouterParse();
          v44 = *(v43 + 20);
          v45 = &v15[v44];
          v46 = &v16[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = *(v43 + 24);
          v104 = v43;
          __dstb = &v15[v48];
          v49 = &v16[v48];
          v50 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v78 = sub_1DD0DB4BC();
            (*(*(v78 - 8) + 16))(__dstb, v49, v78);
            v103 = v50;
            v79 = *(v50 + 20);
            v102 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v49[v79], 1, v102))
            {
              v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v79], &v49[v79], *(*(v80 - 8) + 64));
            }

            else
            {
              (*(*(v102 - 8) + 16))(&__dstb[v79], &v49[v79]);
              __swift_storeEnumTagSinglePayload(&__dstb[v79], 0, 1, v102);
            }

            v81 = *(v103 + 24);
            v82 = &__dstb[v81];
            v83 = &v49[v81];
            v84 = *(v83 + 1);
            *v82 = *v83;
            *(v82 + 1) = v84;
            v85 = *(v103 + 28);
            v86 = &__dstb[v85];
            v87 = &v49[v85];
            v86[4] = v87[4];
            *v86 = *v87;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v103);
          }

          v88 = *(v104 + 28);
          v89 = *&v16[v88];
          *&v15[v88] = v89;
          v90 = v89;
          goto LABEL_34;
        case 9u:
          v28 = sub_1DD0DD08C();
          (*(*(v28 - 8) + 16))(v15, v16, v28);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v15, v16, *(*(v17 - 8) + 64));
          break;
      }

      *(a1 + v13[6]) = *(a2 + v13[6]);
      v91 = v13[7];
      v92 = a1 + v91;
      v93 = a2 + v91;
      v94 = *(a2 + v91 + 24);

      if (v94)
      {
        v95 = *(v93 + 32);
        *(v92 + 3) = v94;
        *(v92 + 4) = v95;
        (**(v94 - 8))(v92, v93, v94);
      }

      else
      {
        v96 = *(v93 + 16);
        *v92 = *v93;
        *(v92 + 1) = v96;
        *(v92 + 4) = *(v93 + 32);
      }

      *(a1 + v13[8]) = *(a2 + v13[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v98 = TupleTypeMetadata[24];
      v99 = (a1 + v98);
      v100 = (a2 + v98);
      v101 = v100[1];
      *v99 = *v100;
      v99[1] = v101;
      sub_1DD0DCF8C();
    case 3u:
      v19 = a2[1];
      *a1 = *a2;
      a1[1] = v19;
      v20 = a2[3];
      a1[2] = a2[2];
      a1[3] = v20;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v9 = *a2;
      v10 = a2[1];
      v11 = *(a2 + 16);
      sub_1DCBB12F4(v9, v10, v11);
      *a1 = v9;
      a1[1] = v10;
      *(a1 + 16) = v11;
      goto LABEL_39;
    case 5u:
      v23 = *a2;
      v24 = *a2;
      *a1 = v23;
      *(a1 + 8) = *(a2 + 8);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v25 = *(*(v7 - 8) + 64);

      result = memcpy(a1, a2, v25);
      break;
  }

  return result;
}

uint64_t *sub_1DCCB8F70(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
    v8 = *(v7 - 8);
    (*(v8 + 8))(a1, v7);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 2u:
        v12 = sub_1DD0DB04C();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = type metadata accessor for Input(0);
        v14 = v13[5];
        v15 = a1 + v14;
        v16 = a2 + v14;
        v17 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v18 = sub_1DD0DC76C();
            (*(*(v18 - 8) + 16))(v15, v16, v18);
            goto LABEL_35;
          case 1u:
            v29 = sub_1DD0DC76C();
            (*(*(v29 - 8) + 16))(v15, v16, v29);
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v15[*(v30 + 48)] = *&v16[*(v30 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v15 = *v16;
            *(v15 + 1) = *(v16 + 1);
            *(v15 + 2) = *(v16 + 2);

            goto LABEL_35;
          case 3u:
            *v15 = *v16;
            swift_unknownObjectRetain();
            goto LABEL_35;
          case 4u:
            v23 = sub_1DD0DB1EC();
            (*(*(v23 - 8) + 16))(v15, v16, v23);
            goto LABEL_35;
          case 5u:
            v31 = *v16;
            *v15 = *v16;
            v32 = v31;
            goto LABEL_35;
          case 6u:
            v33 = sub_1DD0DB4BC();
            (*(*(v33 - 8) + 16))(v15, v16, v33);
            __dsta = type metadata accessor for USOParse();
            v34 = __dsta[5];
            v35 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v16[v34], 1, v35))
            {
              v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v15[v34], &v16[v34], *(*(v36 - 8) + 64));
            }

            else
            {
              (*(*(v35 - 8) + 16))(&v15[v34], &v16[v34], v35);
              __swift_storeEnumTagSinglePayload(&v15[v34], 0, 1, v35);
            }

            v63 = __dsta[6];
            v64 = &v15[v63];
            v65 = &v16[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);
            v66 = __dsta[7];
            v67 = &v15[v66];
            v68 = &v16[v66];
            v69 = *v68;
            v67[4] = v68[4];
            *v67 = v69;

            goto LABEL_35;
          case 7u:
            v25 = sub_1DD0DB4BC();
            (*(*(v25 - 8) + 16))(v15, v16, v25);
            __dst = type metadata accessor for USOParse();
            v26 = __dst[5];
            v27 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v16[v26], 1, v27))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v15[v26], &v16[v26], *(*(v28 - 8) + 64));
            }

            else
            {
              (*(*(v27 - 8) + 16))(&v15[v26], &v16[v26], v27);
              __swift_storeEnumTagSinglePayload(&v15[v26], 0, 1, v27);
            }

            v46 = __dst[6];
            v47 = &v15[v46];
            v48 = &v16[v46];
            *v47 = *v48;
            *(v47 + 1) = *(v48 + 1);
            v49 = __dst[7];
            v50 = &v15[v49];
            v51 = &v16[v49];
            v52 = *v51;
            v50[4] = v51[4];
            *v50 = v52;
            v53 = type metadata accessor for LinkParse();
            v54 = v53[5];
            v55 = &v15[v54];
            v56 = &v16[v54];
            *v55 = *v56;
            *(v55 + 1) = *(v56 + 1);
            v57 = v53[6];
            v58 = &v15[v57];
            v59 = &v16[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = v53[7];
            v61 = &v15[v60];
            v62 = &v16[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);

            goto LABEL_35;
          case 8u:
            v37 = sub_1DD0DD12C();
            (*(*(v37 - 8) + 16))(v15, v16, v37);
            v38 = type metadata accessor for NLRouterParse();
            v39 = *(v38 + 20);
            v40 = &v15[v39];
            v41 = &v16[v39];
            *v40 = *v41;
            *(v40 + 1) = *(v41 + 1);
            v42 = *(v38 + 24);
            v98 = v38;
            __dstb = &v15[v42];
            v43 = &v16[v42];
            v44 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v43, 1, v44))
            {
              v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v43, *(*(v45 - 8) + 64));
            }

            else
            {
              v70 = sub_1DD0DB4BC();
              (*(*(v70 - 8) + 16))(__dstb, v43, v70);
              v96 = v44;
              v71 = *(v44 + 20);
              v72 = sub_1DD0DB3EC();
              v97 = v43;
              v73 = &v43[v71];
              v74 = v72;
              if (__swift_getEnumTagSinglePayload(v73, 1, v72))
              {
                v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v71], &v97[v71], *(*(v75 - 8) + 64));
              }

              else
              {
                (*(*(v74 - 8) + 16))(&__dstb[v71], &v97[v71], v74);
                __swift_storeEnumTagSinglePayload(&__dstb[v71], 0, 1, v74);
              }

              v76 = *(v96 + 24);
              v77 = &__dstb[v76];
              v78 = &v97[v76];
              *v77 = *v78;
              *(v77 + 1) = *(v78 + 1);
              v79 = *(v96 + 28);
              v80 = &__dstb[v79];
              v81 = &v97[v79];
              v82 = *v81;
              v80[4] = v81[4];
              *v80 = v82;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v96);
            }

            v83 = *(v98 + 28);
            v84 = *&v16[v83];
            *&v15[v83] = v84;
            v85 = v84;
            goto LABEL_35;
          case 9u:
            v24 = sub_1DD0DD08C();
            (*(*(v24 - 8) + 16))(v15, v16, v24);
LABEL_35:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v15, v16, *(*(v17 - 8) + 64));
            break;
        }

        *(a1 + v13[6]) = *(a2 + v13[6]);
        v86 = v13[7];
        v87 = a1 + v86;
        v88 = (a2 + v86);
        v89 = *(a2 + v86 + 24);

        if (v89)
        {
          *(v87 + 3) = v89;
          *(v87 + 4) = *(v88 + 4);
          (**(v89 - 8))(v87, v88, v89);
        }

        else
        {
          v90 = *v88;
          v91 = v88[1];
          *(v87 + 4) = *(v88 + 4);
          *v87 = v90;
          *(v87 + 1) = v91;
        }

        *(a1 + v13[8]) = *(a2 + v13[8]);
        sub_1DD0DD1FC();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
        *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
        *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
        v93 = TupleTypeMetadata[24];
        v94 = (a1 + v93);
        v95 = (a2 + v93);
        *v94 = *v95;
        v94[1] = v95[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 4u:
        v9 = *a2;
        v10 = a2[1];
        v11 = *(a2 + 16);
        sub_1DCBB12F4(v9, v10, v11);
        *a1 = v9;
        a1[1] = v10;
        *(a1 + 16) = v11;
        goto LABEL_40;
      case 5u:
        v19 = *a2;
        v20 = *a2;
        *a1 = v19;
        *(a1 + 8) = *(a2 + 8);
LABEL_40:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v21 = *(v8 + 64);

        return memcpy(a1, a2, v21);
    }
  }

  return a1;
}

_BYTE *sub_1DCCB9AF0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v55 = type metadata accessor for USOParse();
        v27 = v55[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v27], &v12[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v11[v27], &v12[v27], v28);
          __swift_storeEnumTagSinglePayload(&v11[v27], 0, 1, v28);
        }

        *&v11[v55[6]] = *&v12[v55[6]];
        v36 = v55[7];
        v37 = &v11[v36];
        v38 = &v12[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        goto LABEL_26;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v11, v12, v30);
        v56 = type metadata accessor for USOParse();
        v31 = v56[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v31], &v12[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v11[v31], &v12[v31], v32);
          __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v32);
        }

        *&v11[v56[6]] = *&v12[v56[6]];
        v39 = v56[7];
        v40 = &v11[v39];
        v41 = &v12[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        v42 = type metadata accessor for LinkParse();
        *&v11[v42[5]] = *&v12[v42[5]];
        *&v11[v42[6]] = *&v12[v42[6]];
        *&v11[v42[7]] = *&v12[v42[7]];
        goto LABEL_26;
      case 8u:
        v17 = sub_1DD0DD12C();
        (*(*(v17 - 8) + 32))(v11, v12, v17);
        v18 = type metadata accessor for NLRouterParse();
        *&v11[*(v18 + 20)] = *&v12[*(v18 + 20)];
        v19 = *(v18 + 24);
        v54 = v18;
        __dst = &v11[v19];
        v20 = &v12[v19];
        v53 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v53))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v20, *(*(v21 - 8) + 64));
        }

        else
        {
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 32))(__dst, v20, v34);
          v52 = v53[5];
          v51 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v52], 1, v51))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v52], &v20[v52], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v51 - 8) + 32))(&__dst[v52], &v20[v52]);
            __swift_storeEnumTagSinglePayload(&__dst[v52], 0, 1, v51);
          }

          *&__dst[v53[6]] = *&v20[v53[6]];
          v43 = v53[7];
          v44 = &__dst[v43];
          v45 = &v20[v43];
          v44[4] = v45[4];
          *v44 = *v45;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v53);
        }

        *&v11[*(v54 + 28)] = *&v12[*(v54 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v46 = v9[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    a1[v9[8]] = a2[v9[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v15 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v15);
  }
}

_BYTE *sub_1DCCBA344(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v8 = *(v7 - 8);
  (*(v8 + 8))(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = type metadata accessor for Input(0);
    v11 = v10[5];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(v12, v13, v15);
        goto LABEL_27;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v12, v13, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v12[*(v24 + 48)] = *&v13[*(v24 + 48)];
        goto LABEL_27;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v12, v13, v26);
        goto LABEL_27;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v12, v13, v27);
        v56 = type metadata accessor for USOParse();
        v28 = v56[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v28], &v13[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v12[v28], &v13[v28], v29);
          __swift_storeEnumTagSinglePayload(&v12[v28], 0, 1, v29);
        }

        *&v12[v56[6]] = *&v13[v56[6]];
        v37 = v56[7];
        v38 = &v12[v37];
        v39 = &v13[v37];
        v38[4] = v39[4];
        *v38 = *v39;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v12, v13, v31);
        v57 = type metadata accessor for USOParse();
        v32 = v57[5];
        v33 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v32], 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v32], &v13[v32], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(*(v33 - 8) + 32))(&v12[v32], &v13[v32], v33);
          __swift_storeEnumTagSinglePayload(&v12[v32], 0, 1, v33);
        }

        *&v12[v57[6]] = *&v13[v57[6]];
        v40 = v57[7];
        v41 = &v12[v40];
        v42 = &v13[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        v43 = type metadata accessor for LinkParse();
        *&v12[v43[5]] = *&v13[v43[5]];
        *&v12[v43[6]] = *&v13[v43[6]];
        *&v12[v43[7]] = *&v13[v43[7]];
        goto LABEL_27;
      case 8u:
        v18 = sub_1DD0DD12C();
        (*(*(v18 - 8) + 32))(v12, v13, v18);
        v19 = type metadata accessor for NLRouterParse();
        *&v12[*(v19 + 20)] = *&v13[*(v19 + 20)];
        v20 = *(v19 + 24);
        v55 = v19;
        __dst = &v12[v20];
        v21 = &v13[v20];
        v54 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v21, 1, v54))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v21, *(*(v22 - 8) + 64));
        }

        else
        {
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 32))(__dst, v21, v35);
          v53 = v54[5];
          v52 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v21[v53], 1, v52))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v53], &v21[v53], *(*(v36 - 8) + 64));
          }

          else
          {
            (*(*(v52 - 8) + 32))(&__dst[v53], &v21[v53]);
            __swift_storeEnumTagSinglePayload(&__dst[v53], 0, 1, v52);
          }

          *&__dst[v54[6]] = *&v21[v54[6]];
          v44 = v54[7];
          v45 = &__dst[v44];
          v46 = &v21[v44];
          v45[4] = v46[4];
          *v45 = *v46;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v54);
        }

        *&v12[*(v55 + 28)] = *&v13[*(v55 + 28)];
        goto LABEL_27;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v12, v13, v25);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v12, v13, *(*(v14 - 8) + 64));
        break;
    }

    *&a1[v10[6]] = *&a2[v10[6]];
    v47 = v10[7];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    *(v48 + 4) = *(v49 + 4);
    a1[v10[8]] = a2[v10[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v8 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1DCCBABD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1DCCBAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v9);
}

void ReactiveFlowPlan.confirm<A, B>(skip:promptGenerator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *(*(a4 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v28[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v18;
  (*(v22 + 16))(v20, v24, v23);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = a8;
  v25[7] = a2;
  v25[8] = a3;
  v28[0] = v21;
  v28[1] = sub_1DCCBAE74;
  v28[2] = v25;
  v26 = type metadata accessor for ConfirmModifier();
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v20, v28, a4, v26, a9);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBADF8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    v5 = result;
    result = type metadata accessor for ConfirmationPrompt();
    a2[3] = result;
    a2[4] = &protocol witness table for ConfirmationPrompt<A, B>;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DCCBAE74@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  return sub_1DCCBADF8(*(v1 + 56), a1);
}

void sub_1DCCBAEB4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  (*(v9 + 16))(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = v6;
  v10 = *(a2 + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBAFD0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B38, &qword_1DD0E9FF8);
  swift_allocObject();
  result = sub_1DCCBE328();
  *a1 = result;
  return result;
}

int *sub_1DCCBB020@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for ConfirmPlan();
  *(a7 + result[9]) = v10;
  *(a7 + result[10]) = v11;
  v13 = (a7 + result[11]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_1DCCBB0D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return nullsub_1(AssociatedTypeWitness);
}

void sub_1DCCBB128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v95 = a2;
  v96 = a3;
  v94 = type metadata accessor for ConfirmPlan();
  OUTLINED_FUNCTION_9(v94);
  v86 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  v84 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_34_0();
  v85 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for _FlowPlanEvent();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DDAEC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3BE8, &qword_1DD0EA0A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3BF0, &qword_1DD0EA0A8);
  v87 = v12;
  v97 = v12;
  v98 = v13;
  v78 = v13;
  v99 = v14;
  WitnessTable = swift_getWitnessTable();
  v73 = WitnessTable;
  v72 = sub_1DCBF7DC0(&qword_1ECCA3BF8, &qword_1ECCA3BE8, &qword_1DD0EA0A0);
  v101 = v72;
  v102 = sub_1DCBF7DC0(&qword_1ECCA3C00, &qword_1ECCA3BF0, &qword_1DD0EA0A8);
  v71[2] = v102;
  v15 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_9(v15);
  v75 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  v88 = AssociatedTypeWitness;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v80 = v15;
  v71[5] = type metadata accessor for _FlowPlanEvent();
  v71[4] = swift_getWitnessTable();
  v22 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v22);
  v79 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v28);
  sub_1DD0DF21C();
  v92 = v11;
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = sub_1DD0DDABC();
  v82 = v22;
  v71[3] = swift_getWitnessTable();
  v97 = v29;
  v98 = sub_1DD0DDA9C();
  v99 = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1DD0DDA7C();
  OUTLINED_FUNCTION_9(v30);
  v77 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v36);
  v81 = v30;
  v71[7] = swift_getWitnessTable();
  v76 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v76);
  v74 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C10, &qword_1DD0EA0B8);
  OUTLINED_FUNCTION_9(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v71 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C18, &qword_1DD0EA0C0);
  OUTLINED_FUNCTION_9(v52);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_10();
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v61 = v71 - v60;
  v90 = v14;
  v89 = *(v14 - 8);
  v62 = *(v89 + 64);
  v64 = MEMORY[0x1EEE9AC00](v59, v63);
  v71[0] = v71 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v66);
  v68 = v71 - v67;
  v69 = v93;
  v91 = (*(v96 + 48))(v93);
  v70 = *(v69 + *(v94 + 36));
  if (v70)
  {
    v97 = *(v70 + 16);
    sub_1DD0DCF8C();
  }

  LOBYTE(v97) = 0;
  sub_1DD0DDBBC();
  sub_1DD0DDB9C();
  (*(v45 + 8))(v51, v43);
  sub_1DCBF7DC0(&qword_1ECCA3C20, &qword_1ECCA3C18, &qword_1DD0EA0C0);
  sub_1DD0DDBFC();
  (*(v54 + 8))(v61, v52);
  v71[1] = v68;
  v97 = *(*(v93 + *(v94 + 40)) + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBBE10@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9[2] = a3;
  v9[3] = a4;
  v10 = a1;
  v11 = a2;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return sub_1DCD495EC(sub_1DCCBEEB8, v9, v6, TupleTypeMetadata3, a5);
}

uint64_t sub_1DCCBBEE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(TupleTypeMetadata3 + 48);
  v11 = *(TupleTypeMetadata3 + 64);
  result = (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  *(a4 + v10) = a2;
  *(a4 + v11) = a3;
  return result;
}

uint64_t sub_1DCCBBFD4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, *(a1 + *(TupleTypeMetadata3 + 48)), *(a1 + *(TupleTypeMetadata3 + 64)));
}

uint64_t sub_1DCCBC098@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v33 = a5;
  v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v32 - v14;
  if (v9 == 2 || (a3 & 1) == 0)
  {
    if (a2 == 2 || (a2 & 1) == 0)
    {
      v22 = type metadata accessor for ConfirmPlan();
      v23 = a4 + *(v22 + 44);
      v24 = *(v23 + 8);
      (*v23)(v36, a1);
      v29 = type metadata accessor for ConfirmationPromptProcessingFlow();
      sub_1DCB17CA0(v36, v35);
      (*(v11 + 16))(v15, a1, AssociatedTypeWitness);
      v34 = *(a4 + *(v22 + 40));
      v30 = sub_1DCCBC44C(v35, v15, &v34);
      v31 = v33;
      v33[3] = v29;
      v31[4] = swift_getWitnessTable();
      *v31 = v30;
      sub_1DD0DCF8C();
    }

    v20 = type metadata accessor for FixedResultFlow();
    (*(v11 + 16))(v15, a1, AssociatedTypeWitness);
    v25 = sub_1DCCBC410(v15);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "[Confirm plan]: user cancelled, returning", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    v20 = type metadata accessor for FixedResultFlow();
    sub_1DCC9FB70();
    v21 = swift_allocError();
    v25 = sub_1DCCBC3D4(v21);
  }

  v26 = v25;
  v27 = v33;
  v33[3] = v20;
  result = swift_getWitnessTable();
  v27[4] = result;
  *v27 = v26;
  return result;
}

uint64_t *sub_1DCCBC3D4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DCCBDA84(a1);
}

uint64_t sub_1DCCBC410(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DCCBD9C0(a1);
}

_BYTE *sub_1DCCBC44C(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1DCCBCD4C(a1, a2, a3);
}

uint64_t sub_1DCCBC4A0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, *(a1 + *(TupleTypeMetadata3 + 48)), *(a1 + *(TupleTypeMetadata3 + 64)));
}

unint64_t sub_1DCCBC57C()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCCBC694(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1DCCBC724(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 80) > 7u || *(*(*(a3 + 16) - 8) + 64) > 0x18uLL || (*(v4 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  (*(v4 + 16))(a1);
  return a1;
}

uint64_t sub_1DCCBC948(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
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

      return 0;
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

void sub_1DCCBCA84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1DCCBCCA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCCBCD4C(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *v3;
  v6 = *a3;
  sub_1DCAFF9E8(a1, (v3 + 16));
  v3[56] = 0;
  (*(*(*(v5 + 80) - 8) + 32))(&v3[*(*v3 + 96)], a2);
  *&v3[*(*v3 + 104)] = v6;
  return v3;
}

uint64_t sub_1DCCBCDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DF22C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (&v54 - v15);
  swift_beginAccess();
  v17 = type metadata accessor for ConfirmationPromptProcessingFlow.State();
  (*(*(v17 - 8) + 16))(v62, v3 + 16, v17);
  if ((v63 & 1) == 0)
  {
    sub_1DCAFF9E8(v62, v61);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B50, &qword_1DD0EA010);
    v60 = sub_1DCBF7DC0(&qword_1ECCA3B58, &qword_1ECCA3B50, &qword_1DD0EA010);
    sub_1DD0DCF8C();
  }

  v58 = *&v62[0];
  if (BYTE8(v62[0]))
  {
    v56 = a3;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = v58;
    v20 = v58;
    v21 = v19;
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    sub_1DCB79378(v19, 1);
    v24 = os_log_type_enabled(v22, v23);
    v57 = v12;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v55 = v11;
      v26 = v25;
      v27 = swift_slowAlloc();
      v61[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_1DD0DF18C();
      v30 = sub_1DCB10E9C(v28, v29, v61);
      v21 = v58;

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "#ConfirmationPromptProcessingFlow received failure result, %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A8390](v27, -1, -1);
      v31 = v26;
      v11 = v55;
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    v32 = v56;
    v61[0] = v21;
    v33 = v21;
    if (swift_dynamicCast())
    {
      v34 = *(v4 + *(*v4 + 104));
      sub_1DD0DCF8C();
    }

    *v16 = v21;
    swift_storeEnumTagMultiPayload();
    v32[3] = type metadata accessor for Conclude();
    v32[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32);
    type metadata accessor for ConfirmationPromptProcessingFlow();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v16, boxed_opaque_existential_1Tm);
    return (*(v57 + 8))(v16, v11);
  }

  if (v62[0])
  {
    v57 = v12;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v36 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v36, qword_1EDE57E00);
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v11;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DCAFC000, v37, v38, "#ConfirmationPromptProcessingFlow received rejected result", v40, 2u);
      v41 = v40;
      v11 = v39;
      MEMORY[0x1E12A8390](v41, -1, -1);
    }

    (*(v7 + 16))(v10, v4 + *(*v4 + 96), v6);
    type metadata accessor for UserRejectionError();
    swift_getWitnessTable();
    v42 = swift_allocError();
    (*(v7 + 32))(v43, v10, v6);
    *v16 = v42;
    swift_storeEnumTagMultiPayload();
    a3[3] = type metadata accessor for Conclude();
    a3[4] = &protocol witness table for Conclude<A>;
    v44 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    type metadata accessor for ConfirmationPromptProcessingFlow();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v16, v44);
    sub_1DCB79378(v58, 0);
    return (*(v57 + 8))(v16, v11);
  }

  v46 = v12;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v47 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v47, qword_1EDE57E00);
  v48 = sub_1DD0DD8EC();
  v49 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v11;
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DCAFC000, v48, v49, "#ConfirmationPromptProcessingFlow received confirmed result", v51, 2u);
    v52 = v51;
    v11 = v50;
    MEMORY[0x1E12A8390](v52, -1, -1);
  }

  (*(v7 + 16))(v16, v4 + *(*v4 + 96), v6);
  swift_storeEnumTagMultiPayload();
  a3[3] = type metadata accessor for Conclude();
  a3[4] = &protocol witness table for Conclude<A>;
  v53 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  type metadata accessor for ConfirmationPromptProcessingFlow();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v16, v53);
  sub_1DCB79378(v58, 0);
  return (*(v46 + 8))(v16, v11);
}

uint64_t sub_1DCCBD714(uint64_t a1, uint64_t *a2)
{
  v2 = a2 + 2;
  v3 = *a2;
  v4 = *(a1 + 8);
  v8 = *a1;
  v9 = v4;
  v10 = 1;
  swift_beginAccess();
  sub_1DCB8D4CC(v8, v4);
  v5 = *(v3 + 80);
  v6 = type metadata accessor for ConfirmationPromptProcessingFlow.State();
  (*(*(v6 - 8) + 40))(v2, &v8, v6);
  return swift_endAccess();
}

uint64_t sub_1DCCBD7E4()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for ConfirmationPromptProcessingFlow.State();
  (*(*(v2 - 8) + 8))(v0 + 16, v2);
  (*(*(v1 - 8) + 8))(v0 + *(*v0 + 96), v1);
  v3 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1DCCBD8E4(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  result = sub_1DD0DF22C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCCBD9C0(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1, *(*v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t *sub_1DCCBDA84(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 88)) = a1;
  v3 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1DCCBDB18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  a1[3] = type metadata accessor for Conclude();
  a1[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for FixedResultFlow();
  swift_getWitnessTable();
  return ActingFlow.conclude(with:)(v1 + v3, boxed_opaque_existential_1Tm);
}

uint64_t sub_1DCCBDC08()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DF22C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_1DCCBDCD0(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCCBDD40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 8);
    if (v3 >= 2)
    {
      v3 = *a1 + 2;
    }

    if (v3 == 1)
    {
      v4 = *a1;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCCBDDA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    if (v4 == 1)
    {
      v5 = *a2;
      v6 = *a2;
      *a1 = v5;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *a1 = *a2;
    }

    *(a1 + 8) = v7;
    v9 = 1;
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1);
    v9 = 0;
  }

  *(a1 + 40) = v9;
  return a1;
}

uint64_t sub_1DCCBDE74(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 2)
      {
        v5 = *a1 + 2;
      }

      if (v5 == 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        v8 = *a2;
        v9 = v8;
        *a1 = v8;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        *a1 = *a2;
      }

      *(a1 + 8) = v10;
      v12 = 1;
    }

    else
    {
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      *(a1 + 32) = *(a2 + 32);
      (**(v11 - 8))(a1, a2);
      v12 = 0;
    }

    *(a1 + 40) = v12;
  }

  return a1;
}

uint64_t sub_1DCCBDFA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 2)
      {
        v5 = *a1 + 2;
      }

      if (v5 == 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        *a1 = *a2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        *a1 = *a2;
      }

      *(a1 + 8) = v8;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 40) = v9;
  }

  return a1;
}

uint64_t sub_1DCCBE094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCBE0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCBE11C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCCBE138(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DCCBE178(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];
}

void sub_1DCCBE1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  sub_1DD0DCF8C();
}

void sub_1DCCBE1F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *sub_1DCCBE258(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 16);
  *a1 = *a2;
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

uint64_t sub_1DCCBE328()
{
  *(v0 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B40, &qword_1DD0EA000);
  *(v0 + 64) = sub_1DD0DDE9C();
  *(v0 + 72) = 0;
  *(v0 + 24) = sub_1DCCBE4D4;
  *(v0 + 32) = 0;
  *(v0 + 40) = sub_1DCCBE4FC;
  *(v0 + 48) = 0;
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B48, &qword_1DD0EA008);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1DD0DDB8C();
  return v0;
}

void sub_1DCCBE40C(char a1)
{
  v4 = a1;
  *(v1 + 72) = 0;
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE4D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCBE404();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCBE50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCCBE5C0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) == 0 && ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v8 = *v9;
    v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = a1 + *(v3 + 56) + 7;
  v6 = (v4 & 0xFFFFFFFFFFFFFFF8) + 15;
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);

  v6 &= 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;

  v8 = *(((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DCCBE780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  sub_1DD0DCF8C();
}

void sub_1DCCBE830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = *v7;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCCBE998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = *v11;
  v10 += 15;

  v13 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v10 & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCCBEA4C(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_1DCCBEBA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_1DCCBEDA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCBEDEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1DCCBBFD4(a1, *(v1 + 32));
}

uint64_t sub_1DCCBEDF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for ConfirmPlan() - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_1DCCBC098(a1, a2, a3, v12, a4);
}

uint64_t sub_1DCCBEEAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1DCCBC4A0(a1, *(v1 + 32));
}

uint64_t sub_1DCCBEEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DCCBBEE8(a1, *(v2 + 32), *(v2 + 33), a2);
}

uint64_t sub_1DCCBEEE0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v2, v3, v4, v5, v6);
  v7 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v10);
  v11 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 40) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_18_16(v12);

  return v15(v14);
}

uint64_t sub_1DCCBEFB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBF098()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCCC3EEC(v0, type metadata accessor for ExecuteResponse);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCBF118()
{
  OUTLINED_FUNCTION_42();
  v0[4] = v1;
  v0[5] = v2;
  OUTLINED_FUNCTION_0_30(v3, v4, v5, v1, v2, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[6] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_26(v9);

  return v12(v11);
}

uint64_t sub_1DCCBF1CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBF2B0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  (*(v0 + 32))(v0 + 16);
  sub_1DCCB707C(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCBF31C()
{
  OUTLINED_FUNCTION_42();
  v0[5] = v1;
  v0[6] = v2;
  OUTLINED_FUNCTION_0_30(v3, v4, v5, v1, v2, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_26(v9);

  return v12(v11);
}

uint64_t sub_1DCCBF3D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBF4B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);
  (*(v0 + 40))(v0 + 16);
  sub_1DCCB6F10(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCBF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1DCCBF614;

  return v10(v6 + 2);
}

uint64_t sub_1DCCBF614()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBF6F8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCBF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1DCCBF854;

  return v10(v6 + 2);
}

uint64_t sub_1DCCBF854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBF938()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCBF9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1DCCBFA94;

  return v10(v6 + 5);
}

uint64_t sub_1DCCBFA94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBFB78()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  (*(v0 + 16))(v0 + 40);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCBFBD8()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  OUTLINED_FUNCTION_0_30(v3, v4, v5, v1, v2, v6);
  v13 = v7;
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v10;
  *v10 = v11;
  v10[1] = sub_1DCCBFC98;

  return v13(v0 + 12);
}

uint64_t sub_1DCCBFC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBFD7C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);
  (*(v0 + 176))(v0 + 96);
  memcpy((v0 + 16), (v0 + 96), 0x49uLL);
  sub_1DCB16DB0(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCBFE04()
{
  OUTLINED_FUNCTION_42();
  v0[3] = v1;
  v0[4] = v2;
  OUTLINED_FUNCTION_0_30(v3, v4, v5, v1, v2, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_26(v9);

  return v12(v11);
}

uint64_t sub_1DCCBFEB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCBFF9C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCC0004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v10);
  v11 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 40) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_18_16(v12);

  return v15(v14);
}

uint64_t sub_1DCCC00E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCC01C8()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCB16DB0(v0, &qword_1ECCA9BF0, &qword_1DD0EA250);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCC0244()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v10);
  v11 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 40) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_18_16(v12);

  return v15(v14);
}

uint64_t sub_1DCCC0324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCC0408()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCB16DB0(v0, &qword_1ECCAABD0, &qword_1DD0EA240);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t ContactsManager.__allocating_init(aceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ContactsManager.init(aceService:)(a1);
  return v2;
}

void sub_1DCCC04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v29[0] = a5;
  v29[1] = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v29 - v22;
  OUTLINED_FUNCTION_88_0();
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a8;
  v25 = swift_allocObject();
  v25[2] = v9;
  v25[3] = a1;
  v25[4] = a2;
  v25[5] = a3;
  v26 = v29[0];
  v25[6] = a4;
  v25[7] = v26;
  v25[8] = a6;
  v27 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
  OUTLINED_FUNCTION_41_4();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = sub_1DCCC34BC;
  v28[5] = v24;
  v28[6] = &unk_1DD0EA0D0;
  v28[7] = v25;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC06A4, 0, 0);
}

uint64_t sub_1DCCC06A4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1DCCC0744;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  return sub_1DCCC1158();
}

uint64_t sub_1DCCC0744()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCCC0840(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(v2 + 16);
  OUTLINED_FUNCTION_88_0();
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1DD0EA0F0;
  *(v14 + 24) = v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_1DCCC3628;
  v16[5] = v12;
  v16[6] = &unk_1DD0EA100;
  v16[7] = v14;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return sub_1DCCC19DC();
}

uint64_t sub_1DCCC0A24(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCCC0B10;

  return v6();
}

uint64_t sub_1DCCC0B10()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  *v5 = v2;
  OUTLINED_FUNCTION_29();

  return v8();
}

void sub_1DCCC0C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for RelationshipLabel();
  v17 = OUTLINED_FUNCTION_99(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  OUTLINED_FUNCTION_88_0();
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  sub_1DCC08BCC(a1, &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  sub_1DCCC3844(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  *(v25 + ((v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v26 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v26);
  OUTLINED_FUNCTION_41_4();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = sub_1DCCC3818;
  v27[5] = v23;
  v27[6] = &unk_1DD0EA128;
  v27[7] = v25;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC0E2C, 0, 0);
}

uint64_t sub_1DCCC0E2C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1DCCC0EC4;
  v4 = v0[4];
  v3 = v0[5];

  return sub_1DCCC204C();
}

uint64_t sub_1DCCC0EC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t ContactsManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1DCCC1064(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_1DCCC1158()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[10] = v7;
  v8 = sub_1DD0DB04C();
  v1[17] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[18] = v9;
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCCC1208()
{
  v49 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = sub_1DD0DD8FC();
  v0[20] = __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v44 = v0[14];
    v45 = v0[15];
    v46 = v1;
    v7 = v2;
    v8 = v0[12];
    v9 = v0[13];
    v11 = v0[10];
    v10 = v0[11];
    v12 = OUTLINED_FUNCTION_83();
    v47 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = OUTLINED_FUNCTION_30_13();
    *(v12 + 4) = sub_1DCB10E9C(v13, v14, v15);
    *(v12 + 12) = 2080;
    v0[5] = v8;
    v0[6] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v16 = sub_1DD0DE02C();
    v18 = sub_1DCB10E9C(v16, v17, &v47);

    *(v12 + 14) = v18;
    v2 = v7;
    *(v12 + 22) = 2080;
    v1 = v46;
    v0[7] = v44;
    v0[8] = v45;

    v19 = sub_1DD0DE02C();
    v21 = sub_1DCB10E9C(v19, v20, &v47);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "[ContactsManager] searchForContacts firstName: %s, lastName: %s, fullName: %s", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v22 = v0[18];
  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[15];
  v26 = [objc_allocWithZone(MEMORY[0x1E69C76E8]) init];
  v0[21] = v26;
  sub_1DD0DB03C();
  v27 = sub_1DD0DAFFC();
  v29 = v28;
  (*(v22 + 8))(v23, v24);
  sub_1DCB2C534(v27, v29, v26, &selRef_setAceId_);
  if (v25)
  {
    sub_1DCCC32C4(v0[14], v1, v26);
  }

  else
  {
    if (v0[13])
    {
      v30 = v0[11];
      v31 = v0[12];
      v47 = v0[10];
      v48 = v30;

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      MEMORY[0x1E12A6780](v31, v2);
      v32 = v47;
      v33 = v48;
      v34 = &selRef_setName_;
    }

    else
    {
      v35 = v0[10];
      v36 = v0[11];

      v32 = OUTLINED_FUNCTION_33_1();
    }

    sub_1DCB2C534(v32, v33, v26, v34);
  }

  v37 = v0[16];
  v38 = *MEMORY[0x1E69C7C20];
  v39 = sub_1DD0DDFBC();
  sub_1DCB2C534(v39, v40, v26, &selRef_setScope_);
  v41 = v37[6];
  __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
  v42 = swift_task_alloc();
  v0[22] = v42;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v42 = v0;
  v42[1] = sub_1DCCC15E0;

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC15E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCC16E4()
{
  OUTLINED_FUNCTION_39();
  v2 = (v0 + 184);
  v1 = *(v0 + 184);
  v3 = sub_1DCCC1938();
  v4 = [v3 results];

  if (v4)
  {
    v5 = *(v0 + 168);
    sub_1DCB10E5C(0, &qword_1ECCA3C30, 0x1E69C7930);
    v6 = sub_1DD0DE2EC();
  }

  else
  {

    v2 = (v0 + 168);
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 152);

  OUTLINED_FUNCTION_69();

  return v8(v6);
}

uint64_t sub_1DCCC17D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = *(v18 + 192);
  v22 = *(v18 + 160);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v18 + 192);
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_83();
    a9 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v30 = *(v18 + 16);
    v29 = *(v18 + 24);
    v31 = *(v18 + 32);
    v32 = sub_1DD0DF18C();
    v34 = sub_1DCB10E9C(v32, v33, &a9);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "[ContactsManager] Failed to perform person search: %s; returning empty array.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    v35 = *(v18 + 192);
  }

  v36 = *(v18 + 152);

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_121();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

id sub_1DCCC1938()
{
  result = [v0 dictionary];
  if (result)
  {
    result = sub_1DD0DDE5C();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1DCCC19DC()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v0;
  v2 = sub_1DD0DB04C();
  v1[4] = v2;
  OUTLINED_FUNCTION_99(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCCC1A80()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "[ContactsManager] Fetching MeCard via Ace");
    OUTLINED_FUNCTION_80();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  v10 = [objc_allocWithZone(MEMORY[0x1E69C76E8]) init];
  v0[8] = v10;
  sub_1DD0DB03C();
  v11 = sub_1DD0DAFFC();
  v13 = v12;
  (*(v7 + 8))(v6, v8);
  sub_1DCB2C534(v11, v13, v10, &selRef_setAceId_);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v14 = sub_1DD0DE8CC();
  [v10 setMe_];

  v15 = *MEMORY[0x1E69C7C20];
  v16 = sub_1DD0DDFBC();
  sub_1DCB2C534(v16, v17, v10, &selRef_setScope_);
  v18 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  v19 = swift_task_alloc();
  v0[9] = v19;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v19 = v0;
  v19[1] = sub_1DCCC1CB4;
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_121();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC1CB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v1;
  *(v2 + 80) = v6;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCC1DB8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  v2 = sub_1DCCC1938();
  v3 = sub_1DCCC324C(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_1DCB08B14(v3))
    {
      sub_1DCB35460(0, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E12A72C0](0, v4);
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v6 = v5;
      v7 = *(v0 + 80);
      v8 = *(v0 + 64);

      goto LABEL_9;
    }

    v10 = *(v0 + 64);
  }

  else
  {
    v9 = *(v0 + 64);
  }

  v6 = 0;
LABEL_9:
  v11 = *(v0 + 48);

  OUTLINED_FUNCTION_69();

  return v12(v6);
}

uint64_t sub_1DCCC1EB8()
{
  OUTLINED_FUNCTION_125();
  v20 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_83();
    v19 = v9;
    *v8 = 136315138;
    v0[2] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ContactsManager] Failed to perform meCard search, returning nil, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v14 = v0[11];
    v15 = v0[8];
  }

  v16 = v0[6];

  OUTLINED_FUNCTION_69();

  return v17(0);
}

uint64_t sub_1DCCC204C()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_1DD0DB04C();
  v1[6] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DAECC();
  v1[9] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  v12 = type metadata accessor for RelationshipLabel();
  v1[12] = v12;
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DCCC21A0()
{
  OUTLINED_FUNCTION_125();
  v31 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[14];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1DD0DD8FC();
  v0[15] = __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = OUTLINED_FUNCTION_33_1();
  sub_1DCC08BCC(v5, v6);
  v7 = v3;
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v12 = v0[12];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_83();
    v30 = v16;
    *v14 = 136315394;
    sub_1DCCC3844(v11, v13);
    OUTLINED_FUNCTION_30_13();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *v13;
    v18 = v13[1];
    if (EnumCaseMultiPayload != 1)
    {
      v20 = v0[13];
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v22 = sub_1DD0DB0FC();
      OUTLINED_FUNCTION_13_1(v22);
      (*(v23 + 8))(v20 + v21);
    }

    v24 = v0[3];
    v25 = sub_1DCB10E9C(v19, v18, &v30);

    *(v14 + 4) = v25;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v24;
    *v15 = v24;
    v26 = v24;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "[ContactsManager] setRelationship relationship: %s contact: %@", v14, 0x16u);
    sub_1DCB16DB0(v15, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCCC3EEC(v11, type metadata accessor for RelationshipLabel);
  }

  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  v27[1] = sub_1DCCC2428;
  v28 = v0[4];

  return sub_1DCCC19DC();
}

uint64_t sub_1DCCC2428()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCCC2514()
{
  v2 = v0[17];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C76E0]) init];
    v0[18] = v3;
    v4 = v3;
    v5 = [v2 identifier];
    if (v5)
    {
      v7 = v0[10];
      v6 = v0[11];
      v8 = v0[9];
      sub_1DD0DAE9C();

      v5 = sub_1DD0DAE6C();
      (*(v7 + 8))(v6, v8);
    }

    v9 = v0[3];
    [v4 setIdentifier_];

    v10 = [objc_allocWithZone(MEMORY[0x1E69C79B0]) init];
    v0[19] = v10;
    v11 = sub_1DCB28184(v9, &selRef_fullName);
    if (v12)
    {
      v13 = v0[2];
      v14 = sub_1DCCC2F28(v11);
      v16 = v15;

      sub_1DCB2C534(v14, v16, v10, &selRef_setName_);
      v17 = sub_1DCF12A3C();
      v61 = v4;
      if (!v18)
      {
        v19 = v0[2];
        v17 = RelationshipLabel.asUnboundedSemanticValue.getter();
      }

      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[6];
      v59 = v0[3];
      v60 = v0[15];
      sub_1DCB2C534(v17, v18, v10, &selRef_setLabel_);
      v23 = [objc_allocWithZone(MEMORY[0x1E69C76E0]) init];
      v0[20] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DD0E15D0;
      *(v24 + 32) = v10;
      v58 = v10;
      v25 = OUTLINED_FUNCTION_30_13();
      sub_1DCCC3328(v25, v26);
      v27 = [objc_allocWithZone(MEMORY[0x1E69C77C8]) init];
      v0[21] = v27;
      sub_1DD0DB03C();
      v28 = sub_1DD0DAFFC();
      v30 = v29;
      v31 = *(v21 + 8);
      v31(v20, v22);
      sub_1DCB2C534(v28, v30, v27, &selRef_setAceId_);
      [v27 setAddFields_];
      [v27 setIdentifier_];
      v32 = [objc_allocWithZone(MEMORY[0x1E69C77C0]) init];
      v0[22] = v32;
      sub_1DD0DB03C();
      v33 = sub_1DD0DAFFC();
      v35 = v34;
      v31(v20, v22);
      sub_1DCB2C534(v33, v35, v32, &selRef_setAceId_);
      [v32 setIdentifier_];

      v36 = v59;
      v37 = v58;
      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v38, v39))
      {
        v54 = v0[3];

        goto LABEL_15;
      }

      v40 = swift_slowAlloc();
      swift_slowAlloc();
      *v40 = 136315394;
      sub_1DCB28184(v37, &selRef_label);
      v42 = v41;

      v1 = v0[3];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_30_13();
        v46 = sub_1DCB10E9C(v43, v44, v45);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        sub_1DCB28184(v1, &selRef_fullName);
        v48 = v47;

        if (v48)
        {
          v49 = OUTLINED_FUNCTION_30_13();
          v52 = sub_1DCB10E9C(v49, v50, v51);

          *(v40 + 14) = v52;
          _os_log_impl(&dword_1DCAFC000, v38, v39, "[ContactsManager] Updating MeCard to set relationship %s to name %s", v40, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_37();
          OUTLINED_FUNCTION_80();

LABEL_15:
          v55 = v0[4];
          v56 = v55[6];
          __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
          v57 = swift_task_alloc();
          v0[23] = v57;
          v0[24] = sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
          *v57 = v0;
          v57[1] = sub_1DCCC2A68;

          AceServiceInvokerAsync.submit<A>(_:)();
          return;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  v53(0);
}

uint64_t sub_1DCCC2A68()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCCC2B74()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[4];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1DCCC2C38;
  v4 = v0[24];
  v5 = v0[22];

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC2C38()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 208) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCCC2D4C()
{
  OUTLINED_FUNCTION_125();
  v1 = v0[15];
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[18];
  if (v4)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v11, v12, "[ContactsManager] MeCard update failed to commit");
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v5 = v9;
  }

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  return v13(0);
}

uint64_t sub_1DCCC2E78()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  return v7(1);
}

uint64_t sub_1DCCC2F28(uint64_t a1)
{
  v2 = sub_1DD0DE0CC();

  if (v2 >= 257)
  {
    v3 = sub_1DCB598EC(256);
    a1 = MEMORY[0x1E12A66E0](v3);
  }

  return a1;
}

uint64_t sub_1DCCC2FBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCC7F0;

  return sub_1DCCC1158();
}

uint64_t sub_1DCCC3094()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBC3348;

  return sub_1DCCC204C();
}

uint64_t sub_1DCCC313C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCC7F0;

  return sub_1DCCC19DC();
}

id sub_1DCCC31CC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1DD0DDE4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_1DCCC324C(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1ECCA3C30, 0x1E69C7930);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCCC32C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setName_];
}

void sub_1DCCC3328(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA3C38, 0x1E69C79B0);
  v3 = sub_1DD0DE2DC();

  [a2 setRelatedNames_];
}

uint64_t *sub_1DCCC33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactsManagerAsync();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_1DCCC3A48(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t sub_1DCCC34BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DCCC34E8()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_40(v5);

  return sub_1DCCC0678(v7, v8, v9, v10, v11, v12, v2, v3);
}

uint64_t sub_1DCCC3594()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_3_40(v4);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF520(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCCC3628(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DCCC3654()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_0(v1);

  return sub_1DCCC0994();
}

uint64_t sub_1DCCC36D8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCCC0A24(v2, v4);
}

uint64_t sub_1DCCC3784()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_3_40(v4);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF760(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCCC3818(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DCCC3844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCC38A8(uint64_t a1)
{
  v3 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCCC0E08(a1, v7, v1 + v5, v8);
}

uint64_t sub_1DCCC39B4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_3_40(v4);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF9A0(v6, v7, v8, v9, v10, v11);
}

uint64_t *sub_1DCCC3A48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  return a2;
}

uint64_t dispatch thunk of ContactsManagerAsync.searchForContacts(firstName:lastName:fullName:)()
{
  OUTLINED_FUNCTION_125();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*v0 + 96);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_31_0(v16);

  return v19(v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of ContactsManagerAsync.findMeCard()()
{
  OUTLINED_FUNCTION_39();
  v1 = *(*v0 + 104);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_31_0(v4);

  return v7();
}

uint64_t dispatch thunk of ContactsManagerAsync.setRelationship(relationship:contact:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_31_0(v8);

  return v11(a1, a2);
}

uint64_t sub_1DCCC3EEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of ContactsManagingAsync.searchForContacts(firstName:lastName:fullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  OUTLINED_FUNCTION_8();
  v23 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  *(v8 + 16) = v21;
  *v21 = v8;
  v21[1] = sub_1DCBCF434;

  return v23(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ContactsManagingAsync.setRelationship(relationship:contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  OUTLINED_FUNCTION_8();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCBCF434;

  return v15(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactsManagingAsync.findMeCard()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  OUTLINED_FUNCTION_8();
  v11 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DCCC5288;

  return v11(a1, a2);
}

uint64_t sub_1DCCC4318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCC4338()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v6;
  *(v4 + 56) = v5;
  v7 = *(MEMORY[0x1E69E88D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C50, &qword_1DD0EA348);
  *v8 = v0;
  v8[1] = sub_1DCCC4460;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000002FLL, 0x80000001DD116F80, sub_1DCCC51C4, v4, v9);
}

uint64_t sub_1DCCC4460()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCCC4578(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C58, &unk_1DD0EA350);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - v15;
  v17 = a2[5];
  v18 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v17);
  (*(v12 + 16))(v16, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v16, v11);
  (*(v18 + 8))(a3, v23, v24, v25, v26, v27, sub_1DCCC51D8, v20, v17, v18);
}

uint64_t sub_1DCCC471C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C58, &unk_1DD0EA350);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCCC476C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCC4784()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1DCCC4884;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 56, 0, 0, 0xD000000000000026, 0x80000001DD116F50, sub_1DCCC513C, v2, v6);
}

uint64_t sub_1DCCC4884()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCCC499C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v13 = a2[5];
  v14 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v13);
  (*(v8 + 16))(v12, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v12, v7);
  (*(v14 + 16))(a3, v19, sub_1DCCC5148, v16, v13, v14);
}

uint64_t sub_1DCCC4B44()
{
  OUTLINED_FUNCTION_42();
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C40, &qword_1DD0EA330);
  *v2 = v0;
  v2[1] = sub_1DCCC4C2C;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6143654D646E6966, 0xEC00000029286472, sub_1DCCC510C, v4, v3);
}

uint64_t sub_1DCCC4C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCC4D10(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C48, &qword_1DD0EA338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[5];
  v11 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 24))(sub_1DCCC5114, v13, v10, v11);
}

uint64_t sub_1DCCC4E88(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C48, &qword_1DD0EA338);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCCC4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCBCF434;

  return sub_1DCCC4318(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCCC4FD4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCBCF434;

  return sub_1DCCC476C(a1, a2);
}

uint64_t sub_1DCCC507C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCCC5288;

  return sub_1DCCC4B30();
}

uint64_t sub_1DCCC5148()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340) - 8) + 80);

  return sub_1DCBCE9D4();
}

uint64_t sub_1DCCC5200(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

double sub_1DCCC5290()
{
  type metadata accessor for RefreshableContextSender();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_1EDE57D70 = v0;
  return result;
}

void static ContextSender.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE49C08 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  v2 = qword_1EDE57D70;
  sub_1DCCC53BC(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableContextSender();
  a1[4] = &off_1F5859AB8;
  *a1 = v2;
  sub_1DD0DCF8C();
}

uint64_t static ContextSender.setCurrentContextSenderForTesting(_:)(uint64_t a1)
{
  if (qword_1EDE49C08 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  v2 = qword_1EDE57D70;
  swift_beginAccess();
  sub_1DCCC5774(a1, v2 + 16);
  return swift_endAccess();
}

uint64_t sub_1DCCC53BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24[-v10];
  swift_beginAccess();
  sub_1DCB28B08(v1 + 16, &v25, &unk_1ECCA3C60, &qword_1DD0EA360);
  if (!v26)
  {
    v13 = v8;
    sub_1DCB16D50(&v25, &unk_1ECCA3C60, &qword_1DD0EA360);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v11, v15, v14);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    sub_1DCB28B08(v11, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
    {
      sub_1DCB16D50(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v25 = v20;
        *v19 = 136315650;
        v21 = sub_1DD0DEC3C();
        v23 = sub_1DCB10E9C(v21, v22, &v25);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 74;
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1DCB10E9C(0xD0000000000000D0, 0x80000001DD116FE0, &v25);
        _os_log_impl(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v20, -1, -1);
        MEMORY[0x1E12A8390](v19, -1, -1);
      }

      (*(v16 + 8))(v13, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000D0, 0x80000001DD116FE0);
  }

  return sub_1DCAFF9E8(&v25, a1);
}

uint64_t sub_1DCCC5774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3C60, &qword_1DD0EA360);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ContextSender(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCC58E0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v6);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_1_40();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DCCC5938(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v6);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_40();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DCCC5990(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v6);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_1_40();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DCCC59E8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v6);
  v2 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_1_40();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DCCC5A40()
{
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3C60, &qword_1DD0EA360);

  return swift_deallocClassInstance();
}

uint64_t static ContextUpdate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECCA3C70 = a1;
  return result;
}

uint64_t sub_1DCCC5C34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECCA3C70;
  return result;
}

uint64_t sub_1DCCC5C80(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECCA3C70 = v1;
  return result;
}

void *ContextUpdate.provideContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEContextUpdate_provideContextCommand);
  v2 = v1;
  return v1;
}

void *ContextUpdate.nativeFlowContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEContextUpdate_nativeFlowContextCommand);
  v2 = v1;
  return v1;
}

id ContextUpdate.init(provideContextCommand:systemDialogActs:rrEntities:nativeFlowContextCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___SKEContextUpdate_provideContextCommand] = a1;
  *&v4[OBJC_IVAR___SKEContextUpdate_systemDialogActs] = a2;
  *&v4[OBJC_IVAR___SKEContextUpdate_nativeFlowContextCommand] = a4;
  *&v4[OBJC_IVAR___SKEContextUpdate_rrEntities] = a3;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ContextUpdate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ContextUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DD0DAE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB10E5C(0, &qword_1ECCA3C98, 0x1E69C7748);
  v10 = sub_1DD0DE88C();
  sub_1DCB10E5C(0, &unk_1ECCA3CA0, 0x1E69C7990);
  v11 = sub_1DD0DE88C();
  sub_1DCCC6A90();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E8470;
  *(inited + 32) = sub_1DCB10E5C(0, &unk_1EDE4D6B0, 0x1E695DEC8);
  *(inited + 40) = sub_1DCB10E5C(0, &qword_1ECCA3CB0, 0x1E69D2550);
  *(inited + 48) = sub_1DCB10E5C(0, &qword_1ECCA3CB8, 0x1E69D2548);
  *(inited + 56) = sub_1DCB10E5C(0, &qword_1ECCA3CC0, 0x1E69D2540);
  *(inited + 64) = sub_1DCB10E5C(0, &qword_1ECCA3CC8, 0x1E69D2538);
  *(inited + 72) = sub_1DCB10E5C(0, &qword_1ECCA3CD0, 0x1E69D2558);
  *(inited + 80) = sub_1DCB10E5C(0, &qword_1ECCA3CD8, 0x1E69D2560);
  sub_1DCC344D8(inited);

  sub_1DD0DE89C();

  if (!v54)
  {
    sub_1DCC8BC14(&v53);
LABEL_11:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v18))
    {
      v19 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v19);
      OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v20, v18, "Could not deserialize SystemDialogActs array");
      OUTLINED_FUNCTION_92_0();
    }

    goto LABEL_16;
  }

  v50 = v11;
  v13 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = v50;
    goto LABEL_11;
  }

  v48 = v10;
  v49 = v2;
  v14 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v47 = v51;
  sub_1DD0DE87C();
  while (1)
  {
    sub_1DD0DAE1C();
    if (!v54)
    {
      break;
    }

    sub_1DCB20B30(&v53, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D08, &qword_1DD0EA3E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6EC();
      OUTLINED_FUNCTION_75(v34);
      OUTLINED_FUNCTION_7_29();
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v36);
        OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v37, v34, "Element in decoded array is not of type SystemDialogAct");
        OUTLINED_FUNCTION_92_0();
      }

      (*(v5 + 8))(v9, v4);
      goto LABEL_16;
    }

    v15 = swift_unknownObjectRetain();
    MEMORY[0x1E12A6920](v15);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    swift_unknownObjectRelease();
    v14 = v52;
  }

  (*(v5 + 8))(v9, v4);
  sub_1DCB10E5C(0, &qword_1EDE4F6B0, 0x1E695DEF0);
  v23 = sub_1DD0DE88C();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1DD0DAF2C();
    v27 = v26;

    v28 = sub_1DD0DAACC();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_1DD0DAABC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
    sub_1DCCC6AF8(&qword_1ECCA3CF8, &qword_1ECCA3D00);
    sub_1DD0DAAAC();
    v31 = v50;
    v44 = v53;
    v45 = objc_allocWithZone(type metadata accessor for ContextUpdate());
    v21 = ContextUpdate.init(provideContextCommand:systemDialogActs:rrEntities:nativeFlowContextCommand:)(v48, v14, v44, v31);

    sub_1DCB21A14(v25, v27);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v21;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v38 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v38, qword_1EDE57E00);
  v39 = sub_1DD0DD8EC();
  v40 = sub_1DD0DE6EC();
  OUTLINED_FUNCTION_75(v40);
  OUTLINED_FUNCTION_7_29();
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v42);
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v43, v40, "Can't decode RREntity data into Data");
    OUTLINED_FUNCTION_92_0();
  }

LABEL_16:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DCCC6644(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___SKEContextUpdate_provideContextCommand);
  v5 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  v6 = *(v2 + OBJC_IVAR___SKEContextUpdate_systemDialogActs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D08, &qword_1DD0EA3E0);
  v7 = sub_1DD0DE2DC();
  v8 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  v9 = *(v2 + OBJC_IVAR___SKEContextUpdate_nativeFlowContextCommand);
  v10 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  v11 = sub_1DD0DAAFC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DD0DAAEC();
  v20 = *(v2 + OBJC_IVAR___SKEContextUpdate_rrEntities);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
  sub_1DCCC6AF8(&qword_1ECCA3D10, &qword_1ECCA3D18);
  v14 = sub_1DD0DAADC();
  v16 = v15;

  v17 = sub_1DD0DAEFC();
  v18 = sub_1DD0DDF8C();
  [a1 encodeObject:v17 forKey:v18];

  return sub_1DCB21A14(v14, v16);
}

id ContextUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DCCC6A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D20, &qword_1DD0E5A48);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_1ECCA2600;
    v2 = &qword_1DD0E1660;
  }

  else
  {
    v1 = &unk_1ECCA3D28;
    v2 = &unk_1DD0EA410;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DCCC6AF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
    sub_1DCCC6B80(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCCC6B80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DD9BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

uint64_t sub_1DCCC6CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCCC7168(&v12);
  if (v15 != 1)
  {
    v7 = *(v3 + 80);
    v8 = *(v3 + 88);
    v9 = type metadata accessor for ContinuationPromptFlow.State();
    OUTLINED_FUNCTION_2(v9);
    (*(v10 + 8))(&v12, v9);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v5 = v13;
  v6 = v14;
  *a1 = v12;
  *(a1 + 8) = v5;
  *(a1 + 9) = v6;
  return result;
}

void sub_1DCCC6F30()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC7168@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for ContinuationPromptFlow.State();
  OUTLINED_FUNCTION_2(v7);
  return (*(v8 + 16))(a1, v1);
}

void sub_1DCCC71FC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for ContinuationPromptFlow.State();
  (*(*(v7 - 8) + 24))(v1, a1, v7);
  swift_endAccess();
  sub_1DCCC6F30();
}

uint64_t sub_1DCCC72DC(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCCC7334(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCCC7334(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *(v3 + 16) = *a2;
  *(v3 + 24) = a1;
  sub_1DCB18FF0(a3, v3 + 32);
  *(v3 + 72) = 0;
  return v3;
}

void sub_1DCCC7368()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  type metadata accessor for ContinuationPromptFlow();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCCC73E8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC7430, 0, 0);
}

uint64_t sub_1DCCC7430()
{
  v1 = *(v0 + 120);
  sub_1DCCC7168(v0 + 16);
  if ((*(v0 + 64) & 1) == 0)
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);
    v12 = *(v0 + 16);
    sub_1DCB18FF0((v0 + 24), v0 + 72);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v13);
    (*(v14 + 40))(v12, *(v10 + 80), *(v10 + 88), v13, v14);
    sub_1DCCC7594();
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = type metadata accessor for ContinuationPromptFlow.State();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + 16);
  v8.n128_f64[0] = static ExecuteResponse.complete()();
  v15 = *(v0 + 8);

  return v15(v8);
}

void sub_1DCCC75D4(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  v3 = v1;
  sub_1DCCC7614(&v2);
}

void sub_1DCCC7614(uint64_t a1)
{
  if (*(a1 + 9))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_5(v4))
    {
      goto LABEL_18;
    }

    *swift_slowAlloc() = 0;
    v7 = "Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.";
  }

  else
  {
    if (*a1 != 2 && ((*(v1 + 16) ^ *a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v10))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v11, v12, "User indicated that they want to continue. Will indicate to continue windowing.");
        OUTLINED_FUNCTION_52();
      }

      v15 = 0;
      v16 = 512;
      v17 = 1;
LABEL_19:
      sub_1DCCC71FC(&v15);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_5(v14))
    {
LABEL_18:

      v15 = 1;
      v16 = 0;
      v17 = 1;
      goto LABEL_19;
    }

    *swift_slowAlloc() = 0;
    v7 = "User indicated that they don't want to continue. Will indicate to stop windowing.";
  }

  OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v5, v6, v7);
  OUTLINED_FUNCTION_52();
  goto LABEL_18;
}

uint64_t sub_1DCCC7800(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  (*(v4 + 16))(&v6, v2, a1);
  if (v8)
  {
    (*(v4 + 8))(&v6, a1);
    return 0x6574656C706D6F63;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return 0x6D6F7250646E6573;
  }
}

uint64_t *sub_1DCCC78F8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = type metadata accessor for ContinuationPromptFlow.State();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + 3);
  return v0;
}

uint64_t sub_1DCCC7970()
{
  sub_1DCCC78F8();

  return swift_deallocClassInstance();
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

uint64_t sub_1DCCC79D8(uint64_t a1)
{
  result = *(a1 + 48);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCCC79F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DCCC7A58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCCC73E8(a1);
}

uint64_t sub_1DCCC7B38(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  *(a4 + 16) = a2 & 1;
  *(a4 + 24) = a1;
  sub_1DCB18FF0(&v13, a4 + 32);
  *(a4 + 72) = 0;
  return a4;
}

void sub_1DCCC7BDC(uint64_t *a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = OUTLINED_FUNCTION_3_43();

    sub_1DCBB12E0(v3, v4, v5);
  }

  else
  {
    v6 = *a1;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }
}

uint64_t sub_1DCCC7C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    OUTLINED_FUNCTION_2_46();
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 32);
    *(a1 + 32) = v6;
    v7 = v6;
    v8 = **(v6 - 8);
    swift_unknownObjectRetain();
    v8(a1 + 8, a2 + 8, v7);
    v5 = 0;
  }

  *(a1 + 48) = v5;
  return a1;
}

uint64_t *sub_1DCCC7CF8(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_3_43();
      sub_1DCBB12E0(v5, v6, v7);
    }

    else
    {
      v8 = *a1;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
    }

    v9 = *(a2 + 48);
    if (v9 >= 2)
    {
      v9 = *a2 + 2;
    }

    if (v9 == 1)
    {
      OUTLINED_FUNCTION_2_46();
    }

    else
    {
      *a1 = *a2;
      v11 = a2[4];
      a1[4] = v11;
      a1[5] = a2[5];
      v12 = **(v11 - 8);
      swift_unknownObjectRetain();
      v12((a1 + 1), (a2 + 1), v11);
      v10 = 0;
    }

    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t *sub_1DCCC7DF0(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_3_43();
      sub_1DCBB12E0(v5, v6, v7);
    }

    else
    {
      v8 = *a1;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
    }

    v9 = *(a2 + 48);
    if (v9 >= 2)
    {
      v9 = *a2 + 2;
    }

    if (v9 == 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      *(a1 + 2) = *(a2 + 2);
    }

    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t sub_1DCCC7EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCC7EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCC7FCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)();
}

uint64_t ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

void sub_1DCCC818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a2;
  v42 = a4;
  v43 = a5;
  v44 = a11;
  v41 = a10;
  v39 = a3;
  v40 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v37 - v19;
  OUTLINED_FUNCTION_0_1();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v27 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v27, v11, a6);
  v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v29 = (v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v37;
  *(v31 + 16) = a6;
  *(v31 + 24) = v32;
  (*(v22 + 32))(v31 + v28, v27, a6);
  *(v31 + v29) = a1;
  *(v31 + v30) = v38;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v33 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v35 = v42;
  v34[4] = v41;
  v34[5] = v31;
  v36 = v43;
  v34[6] = v35;
  v34[7] = v36;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC83B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCCC8448;

  return ContinueInAppHandoffToCompanionFlowStrategy.makeContinueInAppHandoffResponse(app:intent:intentResponse:)(a1);
}

uint64_t sub_1DCCC8448()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_86();
  }

  return v7(v6);
}

uint64_t sub_1DCCC855C()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  swift_asyncLet_begin();
  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC8628;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCCC8628()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v3[97] = v1;
  v3[98] = v5;
  v3[99] = v6;
  v3[100] = v0;
  v8 = *(v7 + 856);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v3[113] = v11;
  v3[114] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v3 + 2, v3 + 87);
  }

  else
  {

    return MEMORY[0x1EEE6DEC0](v3 + 2, v3 + 87, sub_1DCCC8768, v3 + 92);
  }
}

uint64_t sub_1DCCC8768()
{
  v1[115] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCCC8858);
  }

  v1[116] = v1[98];
  return OUTLINED_FUNCTION_0_12(sub_1DCCC87B8);
}

uint64_t sub_1DCCC87B8()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17D04(v0 + 696, *(v0 + 808));

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696);
}

uint64_t sub_1DCCC8858()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 904);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696);
}

uint64_t sub_1DCCC88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 24);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1DCB4AE1C;

  return v18(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCCC8A30()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_26_9(*(v2 + 64));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_32_10(v4);

  return sub_1DCCC88DC(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCCC8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = *(a7 + 24);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 24) = v16;
  *v16 = v7;
  v16[1] = sub_1DCCC8C60;

  return v18(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCCC8C60()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }
}

uint64_t sub_1DCCC8DA0()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + 40) = v0[5];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_29();
  return v3();
}

uint64_t sub_1DCCC8DD0()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_26_9(*(v2 + 64));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_32_10(v4);

  return sub_1DCCC8B08(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCCC8EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAB6BC();
}

uint64_t sub_1DCCC8F40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)();
}

uint64_t ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

uint64_t sub_1DCCC9088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:)(a1);
}

void sub_1DCCC9138()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC923C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCCC9358()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t sub_1DCCC9380(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_12(sub_1DCCC93A8);
}

uint64_t sub_1DCCC93A8()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCCA7BC4;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCC9490(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 16))(a3, v18, v19, sub_1DCC111BC, v16, v7[10]);
}

uint64_t sub_1DCCC964C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCC9380(a1, a2);
}

uint64_t sub_1DCCC96F8()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_33_4();
  sub_1DCCC9C38();
  return v0;
}

uint64_t sub_1DCCC9728(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 96);
  v9 = *(*(v8 + 88) + 32);
  OUTLINED_FUNCTION_8_2();
  v11 = *(v10 + 80);
  return v13(v12) & 1;
}

uint64_t sub_1DCCC97A4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_12(sub_1DCCC97CC);
}

uint64_t sub_1DCCC97CC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCCA7008;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCC98B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 40))(a3, v18, v19, sub_1DCC11344, v16, v7[10]);
}

uint64_t sub_1DCCC9A6C()
{
  sub_1DCCC9CA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCC9AEC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCC97A4(a1, a2);
}

uint64_t sub_1DCCC9B98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)();
}

char *sub_1DCCC9C38()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 96);
  OUTLINED_FUNCTION_112(*(v4 + 80));
  (*(v5 + 32))(&v0[v6]);
  return v0;
}

char *sub_1DCCC9CA4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 96);
  OUTLINED_FUNCTION_112(*(v4 + 80));
  (*(v5 + 8))(&v0[v6]);
  return v0;
}

char *sub_1DCCC9D0C()
{
  OUTLINED_FUNCTION_65();
  v6 = *v1;
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_8_2();
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_112(*(v11 + 80));
  (*(v12 + 32))(&v1[v13]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, &v1[*(v14 + 112)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, &v1[*(v15 + 120)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, &v1[*(v16 + 128)]);
  OUTLINED_FUNCTION_66();
  v18 = &v1[*(v17 + 136)];
  *v18 = *v2;
  *(v18 + 2) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, &v1[*(v19 + 144)]);
  return v1;
}

void sub_1DCCC9E30()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  type metadata accessor for SiriKitContinueInAppFlow();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCCC9EC4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = *(v0 + 16);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCCC9F9C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 106) = *a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCCC9FBC);
}

uint64_t sub_1DCCC9FBC()
{
  OUTLINED_FUNCTION_33();
  v1 = (v0[9] + *(*v0[9] + 128));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(OUTLINED_FUNCTION_48_1() + 8);
  OUTLINED_FUNCTION_8();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1DCCCA0F0;
  v9 = v0[8];

  return v11(v9, v2, v3);
}

uint64_t sub_1DCCCA0F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCA1EC()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = *(v0 + 64);

  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if (sub_1DCB651D0(v11))
  {
    v12 = *(v0 + 106);
    v13 = *(v0 + 64);
    *(v0 + 104) = 7;
    v15 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_1(v13, v15);
    (*(v14 + 8))(v15, v14);
    *(v0 + 105) = v12;
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_1DCCCA3B8;
    v17 = *(v0 + 72);

    return sub_1DCCCA62C();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v19();
  }
}

uint64_t sub_1DCCCA3B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCCCA4AC()
{
  OUTLINED_FUNCTION_41();
  v23 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = OUTLINED_FUNCTION_151();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v0 + 56) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v22);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_62();
  }

  v18 = *(v0 + 88);
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v20 = *(v0 + 88);

  return v19();
}

uint64_t sub_1DCCCA62C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 16) = v6;
  *(v1 + 24) = v0;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 32) = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_38();
  *(v1 + 64) = *v5;
  *(v1 + 65) = *v3;
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCCCA6C8()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = (v5 + *(*v5 + 112));
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  type metadata accessor for SiriKitEvent(0);
  *v3 = v2;
  v9 = (v5 + *(*v5 + 136));
  *(v3 + 8) = *v9;
  *(v3 + 16) = v9[1];
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  sub_1DCB09910(v6, v3 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v3 + 80) = 3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = v1;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCA8D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_29();

  return v7();
}

char *sub_1DCCCA9EC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_112(*(v4 + 80));
  (*(v5 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v7 + 112)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v8 + 120)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v9 + 128)]);
  OUTLINED_FUNCTION_66();
  v11 = &v0[*(v10 + 136)];
  v12 = *v11;
  v13 = *(v11 + 1);

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v14 + 144)]);
  return v0;
}

uint64_t sub_1DCCCAAF4()
{
  sub_1DCCCA9EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCCCAB4C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCCCABE8(uint64_t a1)
{
  v4 = *(**v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB4AD3C;

  return v8(a1);
}

uint64_t sub_1DCCCAD10(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCCAD50);
}

void sub_1DCCCAD50()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_70_3();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_34_15(*(v2 + 136));
}

uint64_t sub_1DCCCAE8C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);

    v12 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);

    *(v3 + 144) = 39;
    v18 = v3 + 144;
    v19 = swift_task_alloc();
    *(v18 - 16) = v19;
    *v19 = v7;
    v19[1] = sub_1DCCCB01C;
    v20 = *(v18 - 48);
    v21 = OUTLINED_FUNCTION_86();

    return sub_1DCCC9F9C(v21, v22);
  }
}

uint64_t sub_1DCCCB01C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCB118()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCCB3E0()
{
  OUTLINED_FUNCTION_42();
  v1[52] = v2;
  v1[53] = v0;
  v1[54] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v6 = type metadata accessor for FlowOutputAtom();
  v1[57] = v6;
  v7 = *(v6 - 8);
  v1[58] = v7;
  v8 = *(v7 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[62] = OUTLINED_FUNCTION_38();
  v12 = type metadata accessor for AceOutput();
  v1[63] = v12;
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64);
  v1[64] = OUTLINED_FUNCTION_38();
  v15 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1DCCCB564()
{
  v29 = v0;
  v2 = v0[53];
  v3 = *(*v2 + 120);
  v0[65] = v3;
  v4 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  v5 = *(v4 + 160);
  v6 = OUTLINED_FUNCTION_33_4();
  v0[66] = v7(v6, v4);
  v0[67] = v8;
  if (v8)
  {
    v10 = v0[53];
    v9 = v0[54];
    v11 = *(*v10 + 104);
    v12 = (v10 + *(*v10 + 136));
    v13 = v12[1];
    v14 = v12[2];
    v0[42] = *v12;
    v0[43] = v13;
    v0[44] = v14;
    v15 = *(v9 + 224);
    v16 = *(*(v9 + 232) + 16);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = v0[55];
  v17 = v0[56];
  v19 = sub_1DD0DD8FC();
  v20 = __swift_project_value_buffer(v19, qword_1EDE57E00);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_1DCB09910(v17, v18, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1DCB0E9D8(v0[55], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v22 = v0[55];
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v25 = 136315650;
      v26 = sub_1DD0DEC3C();
      sub_1DCB10E9C(v26, v27, &v28);
      OUTLINED_FUNCTION_92_1();
      *(v25 + 4) = v1;
      *(v25 + 12) = 2048;
      *(v25 + 14) = 377;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_1DCB10E9C(0xD000000000000039, 0x80000001DD117270, &v28);
      _os_log_impl(&dword_1DCAFC000, v23, v24, "FatalError at %s:%lu - %s", v25, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_62();
    }

    (*(v21 + 8))(v0[55], v19);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000039, 0x80000001DD117270);
}

uint64_t sub_1DCCCB99C()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = v2[68];
  *v4 = *v1;
  v3[69] = v0;

  v6 = v3[42];
  v7 = v2[43];
  v8 = v2[44];
  if (v0)
  {
    v9 = v3[67];
  }

  else
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCCCBB00()
{
  OUTLINED_FUNCTION_73_2();
  v2 = v0[62];
  v1 = v0[63];
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  sub_1DCB17D04((v0 + 2), (v0 + 22));
  v3 = MEMORY[0x1E69E7CC0];
  v0[49] = MEMORY[0x1E69E7CC0];
  sub_1DCB17D04((v0 + 22), (v0 + 27));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  if (swift_dynamicCast())
  {
    v4 = v0[64];
    v5 = v0[62];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[63]);
    sub_1DCCCF3D0(v5, v4, type metadata accessor for AceOutput);
    v6 = *v4;

    sub_1DCBB920C(v7);
    sub_1DCCCF430(v4, type metadata accessor for AceOutput);
  }

  else
  {
    v8 = v0[62];
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v0[63]);
    sub_1DCB0E9D8(v8, &qword_1ECCA1BD0, &qword_1DD0EB860);
    sub_1DCB17D04((v0 + 22), (v0 + 32));
    type metadata accessor for FlowOutput();
    if (swift_dynamicCast())
    {
      v9 = *(v0[50] + 16);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v0[58];
        v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v13 = *(v11 + 72);
        v14 = MEMORY[0x1E69E7CC0];
        do
        {
          v16 = v0[60];
          v15 = v0[61];
          v17 = v0[57];
          sub_1DCCCF36C(v12, v15);
          OUTLINED_FUNCTION_24_15();
          sub_1DCCCF3D0(v15, v16, v18);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v20 = v0[60];
          if (EnumCaseMultiPayload == 1)
          {
            sub_1DCCCF430(v20, type metadata accessor for FlowOutputAtom);
          }

          else
          {
            v21 = *v20;
            MEMORY[0x1E12A6920]();
            if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD0DE33C();
            }

            sub_1DD0DE3AC();
            v14 = v3;
          }

          v12 += v13;
          --v10;
        }

        while (v10);
      }

      else
      {
        v14 = v3;
      }

      sub_1DCBB920C(v14);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v24))
      {
        v25 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v25);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        OUTLINED_FUNCTION_62();
      }
    }
  }

  v31 = v0[9];
  v32 = v0[67];
  if (v31)
  {
    v33 = (v0[53] + v0[65]);
    v44 = v31;

    v34 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    [v34 encodeObject:v44 forKey:*MEMORY[0x1E696A508]];
    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v35 = v0[7];
    v36 = v0[8];
    v37 = [v34 encodedData];
    sub_1DD0DAF2C();

    v38 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_1DCCDEA6C();
  }

  v39 = v0[66];
  v40 = (v0[53] + v0[65]);
  sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
  v41 = v0[7];
  v42 = v0[8];
  v43 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1DCCDEA6C();
}

uint64_t sub_1DCCCC1F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 584) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 296));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCC2F0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[71];
  v2 = v0[70];
  v4 = v0[52];
  v3 = v0[53];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_7(*(v6 + 144));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  static ExecuteResponse.ongoing(requireInput:)(1, v4);
  sub_1DCCCF318((v0 + 2));
  OUTLINED_FUNCTION_39_10();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCCCC558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 37);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = v18[73];
  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6DC();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v18[73];
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_151();
    v29 = swift_slowAlloc();
    a9 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v31 = v18[45];
    v30 = v18[46];
    v32 = v18[47];
    v33 = sub_1DD0DF18C();
    v35 = sub_1DCB10E9C(v33, v34, &a9);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Encountered Error: error: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v36 = v18[71];
  v37 = v18[70];
  v39 = v18[52];
  v38 = v18[53];
  v40 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_7(*(v41 + 144));

  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 22);
  static ExecuteResponse.ongoing(requireInput:)(1, v39);
  sub_1DCCCF318((v18 + 2));
  OUTLINED_FUNCTION_39_10();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t sub_1DCCCC770()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_65_1();
  v1 = OUTLINED_FUNCTION_3_17();
  sub_1DCCCCE24(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t sub_1DCCCC7BC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCCC7FC);
}

void sub_1DCCCC7FC()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_70_3();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_34_15(*(v2 + 136));
}

uint64_t sub_1DCCCC938()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);

    v12 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);

    *(v3 + 144) = 74;
    v18 = v3 + 144;
    v19 = swift_task_alloc();
    *(v18 - 16) = v19;
    *v19 = v7;
    v19[1] = sub_1DCCCCAC8;
    v20 = *(v18 - 48);
    v21 = OUTLINED_FUNCTION_86();

    return sub_1DCCC9F9C(v21, v22);
  }
}

uint64_t sub_1DCCCCAC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCCE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  OUTLINED_FUNCTION_76_5(a1, a2, a3, a4, a5);
  return v5;
}

void sub_1DCCCCE4C()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCD040()
{
  OUTLINED_FUNCTION_42();
  v1[51] = v2;
  v1[52] = v0;
  v3 = *v0;
  OUTLINED_FUNCTION_8_2();
  v1[53] = v4;
  v1[54] = *(v5 + 224);
  OUTLINED_FUNCTION_0_1();
  v1[55] = v6;
  v8 = *(v7 + 64);
  v1[56] = OUTLINED_FUNCTION_38();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCCCD118()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  *(v0 + 377) = 1;
  v4 = *(*v3 + 240);
  *(v0 + 378) = *(v3 + v4);
  v5 = *(v2 + 232);
  *(v0 + 456) = v5;
  type metadata accessor for SiriKitContinueInAppAutoPunchOutFlow.State();
  swift_getWitnessTable();
  if (sub_1DD0DF0EC())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v9);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_62();
    }

    v15 = *(v0 + 408);

    static ExecuteResponse.complete()();
    v16 = *(v0 + 448);

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 379) = 0;
  *(v0 + 380) = *(v3 + v4);
  if (sub_1DD0DF0EC())
  {
    v19 = *(v0 + 432);
    v20 = *(v0 + 416);
    v21 = *(*v20 + 104);
    v22 = (v20 + *(*v20 + 136));
    v31 = *v22;
    v32 = v22[1];
    v33 = v22[2];
    v23 = *(v5 + 24);
    sub_1DD0DCF8C();
  }

  v24 = *(v0 + 416);
  v25 = *v24;
  *(v0 + 464) = *(*v24 + 104);
  v26 = *(v25 + 136);
  *(v0 + 472) = v26;
  v27 = (v24 + v26);
  v28 = v27[1];
  v29 = v27[2];
  *(v0 + 344) = *v27;
  *(v0 + 352) = v28;
  *(v0 + 360) = v29;
  v30 = *(v5 + 32);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCD6A8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 488) = v0;

  if (v0)
  {
    v9 = *(v3 + 344);
    v10 = *(v3 + 352);
    v11 = *(v3 + 360);

    v12 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 344);
    v16 = *(v3 + 352);
    v17 = *(v3 + 360);

    *(v3 + 381) = 38;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v3 + 496) = v18;
    *v18 = v19;
    v18[1] = sub_1DCCCD838;
    v20 = *(v3 + 416);

    return sub_1DCCC9F9C(v3 + 64, (v3 + 381));
  }
}

uint64_t sub_1DCCCD838()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCD934()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[51];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  static ExecuteResponse.complete()();
  v2 = v0[56];

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCCD9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_73_2();
  a25 = v30;
  a26 = v31;
  a24 = v26;
  v32 = *(v26 + 488);
  OUTLINED_FUNCTION_52_9();
  v35 = (v34 + *(v33 + 120));
  v36 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v37 = *(v36 + 32);
  v38 = OUTLINED_FUNCTION_48_1();
  if (v39(v38, v36))
  {
    *(v26 + 392) = v32;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v41 = *(v26 + 368);
      v42 = *(v26 + 376);
      if (v42 == 1)
      {
        if ([*(v26 + 368) errorCode] == 1305)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v43 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
          v44 = sub_1DD0DD8EC();
          v45 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v44, v45))
          {
            v27 = OUTLINED_FUNCTION_50_0();
            *v27 = 0;
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v46, v47, "ContinueInApp output received error code 1305 on a CarPlay device");
            OUTLINED_FUNCTION_14_3();
          }

          OUTLINED_FUNCTION_53_5();
          v48 = *(v27 + 8);
          type metadata accessor for SiriKitContinueInAppDialogFlow();
          v49 = OUTLINED_FUNCTION_49_7();
          v50(v49);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v51 + 112), v26 + 104);
          sub_1DCB17D04(v35, v26 + 144);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v52 + 128), v26 + 184);
          OUTLINED_FUNCTION_41_11();
          sub_1DCB17D04(v29 + *(v53 + 144), v26 + 224);
          OUTLINED_FUNCTION_79_3();
        }

        v54 = v41;
        LOBYTE(v42) = 1;
      }

      else
      {
        v54 = *(v26 + 368);
      }

      sub_1DCB6DE90(v54, v42);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v55 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v55, qword_1EDE57E00);
  v56 = OUTLINED_FUNCTION_33_4();
  v57 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_63_4();
  if (OUTLINED_FUNCTION_62_0())
  {
    OUTLINED_FUNCTION_151();
    a13 = OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_64_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v58 = sub_1DD0DE02C();
    sub_1DCB10E9C(v58, v59, &a13);
    OUTLINED_FUNCTION_92_1();
    *(v35 + 4) = v28;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v60, v61, "SiriKitContinueInAppAutoPunchOutFlow strategy was unable to produce auto punch out response: %s. Cannot continue.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v62 = *(v26 + 408);
  static ExecuteResponse.complete()();
  v63 = *(v26 + 448);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_5();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DCCCDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_73_2();
  a25 = v30;
  a26 = v31;
  a24 = v26;
  __swift_destroy_boxed_opaque_existential_1Tm((v26 + 64));
  v32 = *(v26 + 504);
  OUTLINED_FUNCTION_52_9();
  v35 = (v34 + *(v33 + 120));
  v36 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v37 = *(v36 + 32);
  v38 = OUTLINED_FUNCTION_48_1();
  if (v39(v38, v36))
  {
    *(v26 + 392) = v32;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v41 = *(v26 + 368);
      v42 = *(v26 + 376);
      if (v42 == 1)
      {
        if ([*(v26 + 368) errorCode] == 1305)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v43 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
          v44 = sub_1DD0DD8EC();
          v45 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v44, v45))
          {
            v27 = OUTLINED_FUNCTION_50_0();
            *v27 = 0;
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v46, v47, "ContinueInApp output received error code 1305 on a CarPlay device");
            OUTLINED_FUNCTION_14_3();
          }

          OUTLINED_FUNCTION_53_5();
          v48 = *(v27 + 8);
          type metadata accessor for SiriKitContinueInAppDialogFlow();
          v49 = OUTLINED_FUNCTION_49_7();
          v50(v49);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v51 + 112), v26 + 104);
          sub_1DCB17D04(v35, v26 + 144);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v52 + 128), v26 + 184);
          OUTLINED_FUNCTION_41_11();
          sub_1DCB17D04(v29 + *(v53 + 144), v26 + 224);
          OUTLINED_FUNCTION_79_3();
        }

        v54 = v41;
        LOBYTE(v42) = 1;
      }

      else
      {
        v54 = *(v26 + 368);
      }

      sub_1DCB6DE90(v54, v42);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v55 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v55, qword_1EDE57E00);
  v56 = OUTLINED_FUNCTION_33_4();
  v57 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_63_4();
  if (OUTLINED_FUNCTION_62_0())
  {
    OUTLINED_FUNCTION_151();
    a13 = OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_64_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v58 = sub_1DD0DE02C();
    sub_1DCB10E9C(v58, v59, &a13);
    OUTLINED_FUNCTION_92_1();
    *(v35 + 4) = v28;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v60, v61, "SiriKitContinueInAppAutoPunchOutFlow strategy was unable to produce auto punch out response: %s. Cannot continue.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v62 = *(v26 + 408);
  static ExecuteResponse.complete()();
  v63 = *(v26 + 448);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_5();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1DCCCE0D8(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  LOBYTE(v26) = 1;
  v27 = *(v3 + v6[30]);
  v7 = v6[28];
  v8 = v6[29];
  type metadata accessor for SiriKitContinueInAppAutoPunchOutFlow.State();
  swift_getWitnessTable();
  if (sub_1DD0DF0EC())
  {
    if ((a2 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v22 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DCAFC000, v23, v24, "SiriKitContinueInAppAutoPunchOutFlow received success from device unlock flow. Continuing.", v25, 2u);
        MEMORY[0x1E12A8390](v25, -1, -1);
      }

      sub_1DCCCD024(2);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "SiriKitContinueInAppAutoPunchOutFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      v18 = v13;
LABEL_11:
      MEMORY[0x1E12A8390](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v20, "SiriKitContinueInAppAutoPunchOutFlow.processDeviceUnlockResult called in unexpected state.", v21, 2u);
      v18 = v21;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1DCCCE44C()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCCCE498(char a1)
{
  if (!a1)
  {
    return 0x64657472617473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x64656B636F6C6E75;
}

uint64_t sub_1DCCCE4F4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_65_1();
  v1 = OUTLINED_FUNCTION_3_17();
  sub_1DCCCE540(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t sub_1DCCCE540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  OUTLINED_FUNCTION_66();
  *(v5 + *(v7 + 240)) = 0;
  OUTLINED_FUNCTION_76_5(v8, v9, v10, v11, v12);
  return v5;
}

uint64_t sub_1DCCCE57C()
{
  swift_getWitnessTable();

  return sub_1DD0DF0EC();
}

uint64_t sub_1DCCCE5F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DCCCE65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DCCCE6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DCCCE73C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_1DCCCE44C();
  *a3 = result;
  return result;
}

uint64_t sub_1DCCCE774@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_1DCCCE498(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t dispatch thunk of ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_31_2(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ContinueInAppHandoffToCompanionFlowStrategy.makeContinueInAppHandoffResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_31_2(v6);

  return v9(v8);
}

uint64_t sub_1DCCCE9FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_86();

  return v7(v6);
}

uint64_t dispatch thunk of ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1(v6);

  return v9(v8);
}

uint64_t sub_1DCCCEE6C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCCCF018(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCCCF118(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCCCF154(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF190(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF1CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF208(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF244()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_141_0();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for RCHDelegateToContinueInAppDialogFlowStrategy();
  *v3 = v0;
  v3[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)();
}

uint64_t sub_1DCCCF36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowOutputAtom();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCCF3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCCCF430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:confirmationResponseParser:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(a3, v6 + 16);
  type metadata accessor for ContinueReadingConfirmationFlowStrategy();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = sub_1DCCCF5B0;
  result[5] = v6;
  return result;
}

uint64_t sub_1DCCCF548(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void *ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:parseConfirmationResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ContinueReadingConfirmationFlowStrategy.init(outputProducer:parseConfirmationResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

void *sub_1DCCCF638@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3(&v7);
  if (v7 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
  return result;
}

void sub_1DCCCF684(uint64_t a1, void (*a2)(void **))
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v4(&v27);
  v6 = v27;
  if (v27 == 2)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_51_1(v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v10, v11, "Confirmation Flow could not parse confirmation response. This flow should not have handled the user input. (ConfirmationResponseParsing is returning inconsistent values?)");
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCCD15C0();
    v12 = swift_allocError();
  }

  else if (v27)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_51_1(v15))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v16, v17, "User has rejected to continue reading");
      OUTLINED_FUNCTION_92_0();
    }

    v12 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_51_1(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v21, v22, "User has confirmed to continue reading");
      OUTLINED_FUNCTION_92_0();
    }

    v12 = 0;
  }

  v25 = v12;
  v26 = v6 == 2;
  sub_1DCB8D4CC(v12, v6 == 2);
  a2(&v25);
  sub_1DCB79378(v12, v6 == 2);
  v23 = v25;
  v24 = v26;

  sub_1DCB79378(v23, v24);
}

uint64_t sub_1DCCCF8C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DCCCF8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCF9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DCCCFA70;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCCCFA70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCCFB6C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 104) = 0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 40) = v3;
  *(v0 + 56) = 0;
  v4(v0 + 16);
  sub_1DCCD16C4(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCCCFBFC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 176) = 1;
  *(v0 + 16) = *(v0 + 168);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  *(v0 + 24) = *(v0 + 112);
  *(v0 + 40) = v3;
  *(v0 + 56) = 1;
  v1(v0 + 16);
  sub_1DCCD16C4(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCCCFC8C(void (*a1)(double))
{
  type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_29_11();
  v24[3] = v3;
  v24[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  v5 = v1[7];
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_11_9(v6);
  v7 = v1[9];
  v8 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_11_9(v8);
  v9 = v1[8];
  v10 = *MEMORY[0x1E69D0678];
  v11 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v11);
  v13 = (*(v12 + 104))(boxed_opaque_existential_1Tm + v9, v10);
  OUTLINED_FUNCTION_21_9(v13, v14, v15, v16, v17, v18, v19, v20, v23);
  *(boxed_opaque_existential_1Tm + v1[10]) = 0;
  v21 = OUTLINED_FUNCTION_9_24(MEMORY[0x1E69E7CC0]);
  a1(v21);
  return sub_1DCCD16C4(v24);
}

uint64_t sub_1DCCCFD78(uint64_t a1, void (*a2)(double))
{
  type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_29_11();
  v25[3] = v4;
  v25[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  v6 = v2[7];
  v7 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_11_9(v7);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_11_9(v9);
  v10 = v2[8];
  v11 = *MEMORY[0x1E69D0678];
  v12 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v12);
  v14 = (*(v13 + 104))(boxed_opaque_existential_1Tm + v10, v11);
  OUTLINED_FUNCTION_21_9(v14, v15, v16, v17, v18, v19, v20, v21, v24);
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  v22 = OUTLINED_FUNCTION_9_24(MEMORY[0x1E69E7CC0]);
  a2(v22);
  return sub_1DCCD16C4(v25);
}

void sub_1DCCCFFC0(uint64_t a1)
{
  sub_1DCB17CA0(a1, v7);
  v1 = v8;
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v2);
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  sub_1DD0DCF8C();
}

void *ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.__allocating_init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

double sub_1DCCD0130@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 4) > 0xFFu || (v3 = *a1, v3 == 2))
  {
    v4 = v2[6];
    if (v4)
    {
      v5 = v2[7];
LABEL_5:
      *a2 = v4;
      a2[1] = v5;
      swift_unknownObjectRetain();
      return result;
    }
  }

  else if (v3)
  {
    v4 = v2[4];
    if (v4)
    {
      v5 = v2[5];
      goto LABEL_5;
    }
  }

  else
  {
    v4 = v2[2];
    if (v4)
    {
      v5 = v2[3];
      goto LABEL_5;
    }
  }

  result = 0.0;
  *a2 = xmmword_1DD0E2F10;
  return result;
}

void *ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.__deallocating_deinit()
{
  ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.deinit();

  return swift_deallocClassInstance();
}

uint64_t ContinueReadingConfirmationFlowStrategy.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ContinueReadingConfirmationFlowStrategy.__deallocating_deinit()
{
  ContinueReadingConfirmationFlowStrategy.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *sub_1DCCD02B8(uint64_t a1)
{
  v1[2] = sub_1DCCD026C;
  v1[3] = a1;
  v1[4] = &unk_1DD0EAF08;
  v1[5] = a1;
  v1[6] = &unk_1DD0EAF18;
  v1[7] = a1;
  v1[8] = &unk_1DD0EAF28;
  v1[9] = a1;
  v1[10] = &unk_1DD0EAF38;
  v1[11] = a1;
  v1[12] = &unk_1DD0EAF48;
  v1[13] = a1;
  v1[14] = &unk_1DD0EAF58;
  v1[15] = a1;
  v1[16] = &unk_1DD0EAF68;
  v1[17] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCCD0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD039C, 0, 0);
}

uint64_t sub_1DCCD039C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1DCCD045C;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCD045C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCD057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  sub_1DCCCF684(a3, sub_1DCCD2378);
}

uint64_t sub_1DCCD06CC(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCCD0748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0768, 0, 0);
}

uint64_t sub_1DCCD0768()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCCD0830()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCD0950(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0970, 0, 0);
}

uint64_t sub_1DCCD0970()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCCD0A38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCD0B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = OUTLINED_FUNCTION_15_24(v14, v21);
  v16(v15);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v4, v7);
  v19 = *(a2 + 24);
  (*(a2 + 16))(a4, v18);
}

uint64_t sub_1DCCD0C7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0C9C, 0, 0);
}

uint64_t sub_1DCCD0C9C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCCD0D64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0D84, 0, 0);
}

uint64_t sub_1DCCD0D84()
{
  OUTLINED_FUNCTION_42();
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCCD0E4C;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCD0E4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCCD0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = OUTLINED_FUNCTION_15_24(v15, v21);
  v17(v16);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v5, v8);
  a5(a4, v19);
}

uint64_t sub_1DCCD107C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD109C, 0, 0);
}

uint64_t sub_1DCCD109C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCCD1164;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCD1164()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCCD127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD12A0, 0, 0);
}

uint64_t sub_1DCCD12A0()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCD1364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCD1484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v12 - v6;
  (*(v3 + 16))(&v12 - v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = (*(v3 + 32))(v9 + v8, v7, v2);
  sub_1DCCCFD78(v10, sub_1DCCD2180);
}

unint64_t sub_1DCCD15C0()
{
  result = qword_1ECCA41B0;
  if (!qword_1ECCA41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41B0);
  }

  return result;
}

uint64_t sub_1DCCD1614()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_13_17(v6);

  return sub_1DCCCF9D8(v8, v1, v2, v4, v3);
}

uint64_t sub_1DCCD16C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F70, &qword_1DD0E2BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCD172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCCD0748(a1, a3);
}

uint64_t sub_1DCCD17CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCCD0950(a1, a3);
}

uint64_t sub_1DCCD186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCCD0C7C(a1, a3);
}

void *sub_1DCCD1920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DD0DB04C();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OutputPublisherAsyncAdapter();
  v23 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v21 = a2;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v14, v6);
  a3[8] = sub_1DCB598EC(8);
  a3[9] = v15;
  a3[10] = v16;
  a3[11] = v17;
  v18 = *(*a3 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  swift_storeEnumTagMultiPayload();
  a3[7] = a1;
  sub_1DCAFF9E8(&v21, (a3 + 2));
  return a3;
}

_BYTE *storeEnumTagSinglePayload for ContinueReadingConfirmationFlowStrategy.ConfirmationResponseParseError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCCD1D20()
{
  result = qword_1ECCA41C8;
  if (!qword_1ECCA41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41C8);
  }

  return result;
}

uint64_t sub_1DCCD1D74()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCCD0378(v3, v4, v5);
}

uint64_t sub_1DCCD1E04()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return v4(v3);
}

uint64_t sub_1DCCD1EA0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return v4(v3);
}

uint64_t sub_1DCCD1F3C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return v4(v3);
}

uint64_t sub_1DCCD1FD8()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCCD0D64(v4, v0);
}

uint64_t sub_1DCCD2060()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCCD107C(v4, v0);
}

uint64_t sub_1DCCD20E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCCD127C(v3, v4, v5);
}

uint64_t sub_1DCCD2178(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DCCD1484(a1);
}

uint64_t sub_1DCCD22EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00) - 8) + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  return a2(v3);
}

uint64_t sub_1DCCD2378()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88) - 8) + 80);
  v1 = OUTLINED_FUNCTION_79_1();

  return sub_1DCCD190C(v1);
}

uint64_t ControllerFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v19[-v16];
  (*(a4 + 40))(a3, a4);
  v20 = a3;
  v21 = a4;
  v22 = v4;
  v23 = a1;
  v24 = a2;
  (*(a4 + 64))(v17, sub_1DCCD267C, v19, a3, a4);
  return (*(v12 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_1DCCD2534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v18 - v15;
  (*(a6 + 48))(a5, a6);
  (*(a6 + 72))(v16, a1, a3, a4, a5, a6);
  return (*(v12 + 8))(v16, AssociatedTypeWitness);
}

uint64_t ControllerFlow.exitValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v14 - v11;
  (*(a2 + 40))(a1, a2);
  (*(a2 + 80))(v12, a1, a2);
  return (*(v7 + 8))(v12, AssociatedTypeWitness);
}