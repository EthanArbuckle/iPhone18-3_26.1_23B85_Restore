uint64_t sub_2745C4938()
{
  type metadata accessor for ListParameterOutlineState();
  swift_getWitnessTable();

  return sub_27463950C();
}

uint64_t sub_2745C49A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListParameterOutlineState();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745C49E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_274637EEC();
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor() + 108);
  sub_27463AF4C();
  OUTLINED_FUNCTION_7();
  return (*(v8 + 32))(a3 + v7, a2);
}

uint64_t sub_2745C4AF8(uint64_t a1)
{
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  OUTLINED_FUNCTION_35_0();
  v2 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_10_31(v6);
  v8(v7, a1, v2);
  sub_2745C4778();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_2745C4BFC()
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

uint64_t sub_2745C4D9C(uint64_t a1)
{
  v28 = a1;
  OUTLINED_FUNCTION_63_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_63_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_63_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_63_0();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_63_0();
  v10 = *(v9 + 112);
  OUTLINED_FUNCTION_63_0();
  v12 = *(v11 + 120);
  v14 = v13[16];
  v15 = v13[17];
  v31 = v13[18];
  v30 = v13[19];
  v29 = v13[20];
  v54 = v2;
  v55 = v4;
  v56 = v6;
  v57 = v8;
  v58 = v10;
  v59 = v12;
  v60 = v14;
  v61 = v15;
  v62 = v31;
  v63 = v30;
  v64 = v29;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v26 = v17;
  v27 = v16;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v25 = &KeyPath - v19;
  v43 = v2;
  v44 = v4;
  v45 = v6;
  v46 = v8;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = v15;
  v51 = v31;
  v52 = v30;
  v53 = v29;
  KeyPath = swift_getKeyPath();
  v32 = v2;
  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  v37 = v12;
  v38 = v14;
  v39 = v15;
  v40 = v31;
  v41 = v30;
  v42 = v29;
  swift_getKeyPath();
  v20 = v26;
  v22 = v27;
  v21 = v28;
  (*(v26 + 16))(v25, v28, v27);

  sub_274638FBC();
  return (*(v20 + 8))(v21, v22);
}

uint64_t sub_2745C5010()
{
  v1 = *(*v0 + 168);
  OUTLINED_FUNCTION_63_0();
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_274638FCC();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2745C50EC()
{
  sub_2745C5010();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2745C515C()
{
  v0 = swift_allocObject();
  sub_2745C59F8();
  return v0;
}

uint64_t sub_2745C51AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor27ListParameterAddItemOptionsVyxq_GSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2745C5214(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
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

uint64_t sub_2745C5254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2745C52EC()
{
  result = sub_274637EEC();
  if (v1 <= 0x3F)
  {
    result = sub_27463AF4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745C5374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_274637EEC();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v6 - 8) + 64);
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v13 + 16) & ~v13) + v14 + (v16 & ~v15);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 >= v11)
  {
    v27 = a1;
    v10 = *(*(v6 - 8) + 84);
    v8 = v6;
  }

  else
  {
    v25 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) == 0)
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    v27 = (v25 + v13 + 8) & ~v13;
  }

  return __swift_getEnumTagSinglePayload(v27, v10, v8);
}

void sub_2745C55D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_274637EEC();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(*(v8 - 8) + 64);
  v17 = v16 & ~(v15 | 7);
  v18 = ((v15 + 16) & ~v15) + *(v11 + 64);
  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 >= v13)
        {
          v31 = a1;
          v32 = a2;
          v12 = v9;
          v10 = v8;
        }

        else
        {
          v27 = (&a1[v16] & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (~v13 + a2);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v33 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v34 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v34 = (a2 - 1);
            }

            *v33 = v34;
            return;
          }

          v31 = (v33 + v15 + 8) & ~v15;
          v32 = a2;
        }

        __swift_storeEnumTagSinglePayload(v31, v32, v12, v10);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v17 + v18);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v17 + v18);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

char *sub_2745C59F8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_34();
  v35[7] = *(v2 + 80);
  OUTLINED_FUNCTION_7_34();
  v35[6] = *(v3 + 88);
  OUTLINED_FUNCTION_7_34();
  v35[5] = *(v4 + 96);
  OUTLINED_FUNCTION_7_34();
  v35[4] = *(v5 + 104);
  OUTLINED_FUNCTION_7_34();
  v35[3] = *(v6 + 112);
  OUTLINED_FUNCTION_7_34();
  v35[2] = *(v7 + 120);
  OUTLINED_FUNCTION_7_34();
  v35[1] = *(v8 + 128);
  OUTLINED_FUNCTION_7_34();
  v35[0] = *(v9 + 136);
  OUTLINED_FUNCTION_7_34();
  v11 = *(v10 + 144);
  v12 = *(v1 + 152);
  v13 = *(v1 + 160);
  v35[8] = v14;
  v35[9] = v15;
  v35[10] = v16;
  v35[11] = v17;
  v35[12] = v18;
  v35[13] = v19;
  v35[14] = v20;
  v35[15] = v21;
  v35[16] = v11;
  v35[17] = v12;
  v35[18] = v13;
  v22 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  sub_27463C0AC();
  v23 = sub_274638FCC();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  v28 = v35 - v27;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v29);
  v31 = v35 - v30;
  OUTLINED_FUNCTION_7_34();
  v33 = *(v32 + 168);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v22);
  sub_2745C4AF8(v31);
  (*(v25 + 32))(&v0[v33], v28, v23);
  return v0;
}

uint64_t sub_2745C5C64()
{
  OUTLINED_FUNCTION_57();
  type metadata accessor for ListParameterLayoutView.Model();
  OUTLINED_FUNCTION_4_32();
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_2745C5CE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListParameterLayoutView.Model();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745C5DAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v82 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v85 = a1[7];
  v86 = v6;
  v8 = a1[8];
  v7 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v93 = a1[12];
  v94 = v7;
  v118[0] = v2;
  v118[1] = v3;
  v89 = v5;
  v90 = v2;
  v118[2] = v5;
  v118[3] = v4;
  v91 = v10;
  v92 = v4;
  v118[4] = v6;
  v118[5] = v85;
  v118[6] = v8;
  v118[7] = v7;
  v84 = v8;
  v118[8] = v9;
  v11 = v9;
  v67 = v9;
  v118[9] = v10;
  v12 = v10;
  v118[10] = v93;
  v13 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v80 = v15;
  v81 = v14;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  v78 = &v65 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0);
  v18 = sub_274639DEC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8);
  v118[29] = sub_2745C8470();
  v118[30] = v11;
  OUTLINED_FUNCTION_3_37();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_2745C85B4();
  v118[0] = v2;
  v118[1] = v3;
  v118[2] = v18;
  v118[3] = v5;
  v118[4] = v86;
  v118[5] = v19;
  v118[6] = v8;
  v118[7] = WitnessTable;
  v118[8] = v94;
  v118[9] = v12;
  v118[10] = v21;
  v66 = type metadata accessor for ListParameterListContentView();
  v22 = sub_27463AC1C();
  v74 = v22;
  v79 = *(v22 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  v87 = &v65 - v24;
  v65 = OUTLINED_FUNCTION_8_26();
  v118[28] = v65;
  OUTLINED_FUNCTION_39_0();
  v25 = swift_getWitnessTable();
  v71 = v25;
  OUTLINED_FUNCTION_5_35();
  v73 = v13;
  v70 = swift_getWitnessTable();
  v118[0] = v22;
  v118[1] = v13;
  v26 = v85;
  v118[2] = v85;
  v118[3] = v25;
  v27 = v93;
  v118[4] = v70;
  v118[5] = v93;
  v75 = MEMORY[0x277CDEE40];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v76 = v28;
  v77 = v29;
  MEMORY[0x28223BE20](v28);
  v68 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v72 = &v65 - v32;
  v33 = v89;
  v34 = v90;
  v106 = v90;
  v107 = v3;
  v83 = v3;
  v35 = v92;
  v108 = v89;
  v109 = v92;
  v36 = v86;
  v110 = v86;
  v111 = v26;
  v37 = v84;
  v38 = v94;
  v112 = v84;
  v113 = v94;
  v39 = v67;
  v114 = v67;
  v115 = v91;
  v116 = v27;
  v40 = v88;
  v117 = v88;
  sub_27463AC0C();
  v41 = *(v40 + 152);
  v65 = *(v40 + 160);
  v66 = v41;
  v118[0] = v34;
  v118[1] = v3;
  v118[2] = v33;
  v118[3] = v35;
  v42 = v36;
  v43 = v85;
  v118[4] = v36;
  v118[5] = v85;
  v118[6] = v37;
  v118[7] = v38;
  v44 = v38;
  v118[8] = v39;
  v45 = v91;
  v118[9] = v91;
  v46 = v93;
  v118[10] = v93;
  type metadata accessor for ListParameterLayoutView.Model();
  OUTLINED_FUNCTION_4_32();
  swift_getWitnessTable();
  sub_27463921C();
  v47 = v84;
  v95 = v90;
  v96 = v83;
  v97 = v89;
  v98 = v92;
  v99 = v42;
  v100 = v43;
  v101 = v84;
  v102 = v44;
  v103 = v39;
  v104 = v45;
  v105 = v46;
  swift_getKeyPath();
  v48 = v78;
  sub_27463952C();

  (*(*(v69 - 1) + 16))(v118, v88);
  v49 = swift_allocObject();
  v50 = v83;
  v49[2] = v90;
  v49[3] = v50;
  v51 = v92;
  v49[4] = v89;
  v49[5] = v51;
  v49[6] = v42;
  v49[7] = v43;
  v52 = v94;
  v49[8] = v47;
  v49[9] = v52;
  v53 = v91;
  v49[10] = v39;
  v49[11] = v53;
  v49[12] = v46;
  memcpy(v49 + 13, v118, 0xD9uLL);
  v54 = v70;
  v55 = v71;
  v56 = v68;
  v58 = v73;
  v57 = v74;
  v59 = v87;
  sub_27463A92C();

  (*(v80 + 8))(v48, v81);
  (*(v79 + 8))(v59, v57);
  v118[0] = v57;
  v118[1] = v58;
  v118[2] = v43;
  v118[3] = v55;
  v118[4] = v54;
  v118[5] = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v72;
  v62 = v76;
  sub_2744E9688(v56, v76, OpaqueTypeConformance2);
  v63 = *(v77 + 8);
  v63(v56, v62);
  sub_2744E9688(v61, v62, OpaqueTypeConformance2);
  return (v63)(v61, v62);
}

uint64_t sub_2745C63BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v100 = a8;
  v78 = a7;
  v74 = a6;
  v75 = a5;
  v98 = a2;
  v99 = a3;
  v92 = a9;
  v94 = a12;
  v95 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = (&v71 - v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0);
  v20 = sub_274639DEC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8);
  v112 = sub_2745C8470();
  v113 = a11;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_2745C85B4();
  v101 = a2;
  v102 = a3;
  v90 = v20;
  v103 = v20;
  v104 = a4;
  v24 = a4;
  v25 = v74;
  v105 = v74;
  v106 = v21;
  v88 = v21;
  v107 = a8;
  v108 = WitnessTable;
  v84 = WitnessTable;
  v26 = v94;
  v109 = a10;
  v110 = v94;
  v83 = v23;
  v111 = v23;
  v85 = type metadata accessor for ListParameterListContentView();
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v86 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v87 = &v71 - v29;
  v93 = *a1;
  v30 = *(a1 + 32);
  v82 = *(a1 + 24);
  v97 = v30;
  v31 = *(a1 + 64);
  v81 = *(a1 + 56);
  v96 = v31;
  v71 = a1;
  v32 = v95;
  v68 = v26;
  v73 = a11;
  v72 = a10;
  v34 = v98;
  v33 = v99;
  v35 = v24;
  v36 = v24;
  v37 = v75;
  v38 = v78;
  v39 = v100;
  v80 = sub_2745C69A8(a1, v98, v99, v36, v75, v25, v78, v100, a10, a11, v68, v95);
  v79 = v40;
  v70 = v32;
  v41 = v94;
  v42 = v71;
  v77 = sub_2745C7164(v71, v34, v33, v35, v37, v25, v38, v39, a10, a11, v94, v70);
  v76 = v43;
  v93 = v93;

  v101 = v34;
  v102 = v33;
  v44 = v35;
  v103 = v35;
  v104 = v37;
  v45 = v25;
  v105 = v25;
  v106 = v38;
  v107 = v39;
  v46 = v72;
  v108 = v72;
  v109 = v73;
  v110 = v41;
  v111 = v95;
  v47 = type metadata accessor for ListParameterLayoutView();
  LODWORD(v78) = sub_2745C7A28(v47);
  LODWORD(v95) = *(v42 + 120);
  sub_2744C6ABC();
  v48 = v104;
  LODWORD(v35) = v104 == 0;
  v49 = sub_27440CB1C(&v101, &unk_2809507C0);
  v50 = *(v42 + 121);
  v51 = v35 & v50;
  if (v48 && (v50 & 1) != 0)
  {
    v52 = (*((*MEMORY[0x277D85000] & *v93) + 0x98))(v49);
    v53 = *(v42 + 128);
    if (*(v42 + 144))
    {
      v53 = 0;
    }

    v51 = v53 < v52;
  }

  LODWORD(v75) = v51;
  v54 = v83;
  v55 = v91;
  v56 = v99;
  v57 = v90;
  v58 = v44;
  v59 = v45;
  v60 = v88;
  v61 = v84;
  sub_27441E720(v91);
  v69 = v41;
  v62 = v86;
  sub_27441E780(v82, v97, v81, v96, v80, v79, v77, v86, v76, v78 & 1, v95, v75, 1, v55, v56, v57, v58, v59, v60, v61, v46, v69, v54);
  v63 = v85;
  v64 = swift_getWitnessTable();
  v65 = v87;
  sub_2744E9688(v62, v63, v64);
  v66 = *(v89 + 8);
  v66(v62, v63);
  sub_2744E9688(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t (*sub_2745C69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a9;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  v18 = type metadata accessor for ListParameterLayoutView();
  (*(*(v18 - 8) + 16))(__src, a1, v18);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  memcpy(v19 + 11, __src, 0xD9uLL);
  return sub_2745C8DC0;
}

uint64_t sub_2745C6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v57 = a1;
  v6 = sub_274639EFC();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v56 = sub_27463AF4C();
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536E0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536D8);
  MEMORY[0x28223BE20](v12);
  v13 = *(v8 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 145) == 1)
  {
    v20 = v3;
    v45 = v16;
    v46 = v6;
    v47 = v15;
    v48 = a3;
    v21 = v56;
    MEMORY[0x277C575F0](v56, v17);
    v22 = *(a2 + 64);
    v23 = (*(v22 + 32))(v8, v22);
    (*(v13 + 8))(v19, v8);
    if (v23)
    {
      (*(*(a2 - 8) + 16))(v62, v20, a2);
      v24 = v49;
      v25 = v50;
      (*(v50 + 16))(v49, v57, v21);
      v26 = (*(v25 + 80) + 321) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v8;
      *(v27 + 24) = *(a2 + 24);
      *(v27 + 40) = *(a2 + 40);
      *(v27 + 56) = *(a2 + 56);
      *(v27 + 64) = v22;
      *(v27 + 72) = *(a2 + 72);
      *(v27 + 88) = *(a2 + 88);
      memcpy((v27 + 104), v62, 0xD9uLL);
      (*(v25 + 32))(v27 + v26, v24, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536F8);
      v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953700);
      v29 = sub_274639B4C();
      v30 = sub_27440CA78(&qword_280953708, &qword_280953700);
      v31 = sub_2745C8EBC(qword_280953710, MEMORY[0x277CDDE78]);
      v58 = v28;
      v59 = v29;
      v60 = v30;
      v61 = v31;
      swift_getOpaqueTypeConformance2();
      v32 = v51;
      sub_27463AD5C();
      v33 = v54;
      sub_274639EEC();
      sub_27440CA78(&qword_2809536E8, &qword_2809536E0);
      sub_2745C8EBC(&qword_28094A6B8, MEMORY[0x277CDE0B8]);
      v35 = v45;
      v34 = v46;
      v36 = v53;
      sub_27463A69C();
      (*(v55 + 8))(v33, v34);
      (*(v52 + 8))(v32, v36);
      LOBYTE(v27) = sub_27463A37C();
      sub_2746390AC();
      v37 = v47;
      a3 = v48;
      v38 = v35 + *(v47 + 36);
      *v38 = v27;
      *(v38 + 8) = v39;
      *(v38 + 16) = v40;
      *(v38 + 24) = v41;
      *(v38 + 32) = v42;
      *(v38 + 40) = 0;
      sub_274404C28();
      v15 = v37;
      v43 = 0;
    }

    else
    {
      v43 = 1;
      v15 = v47;
      a3 = v48;
    }
  }

  else
  {
    v43 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v43, 1, v15);
}

uint64_t (*sub_2745C7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a9;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  v18 = type metadata accessor for ListParameterLayoutView();
  (*(*(v18 - 8) + 16))(__src, a1, v18);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  memcpy(v19 + 11, __src, 0xD9uLL);
  return sub_2745C8C54;
}

uint64_t sub_2745C72EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v77 = a3;
  v78 = a2;
  v3 = a2[5];
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v67 = sub_2746396BC();
  v71 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536B8);
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536F0);
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536A0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = sub_274639DEC();
  v20 = *(v19 - 8);
  v75 = v19;
  v76 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  if (v3 == MEMORY[0x277CE1428])
  {
    v62 = v15;
    v63 = v12;
    v65 = v13;
    v66 = v18;
    v64 = v10;
    v72 = v16;
    v26 = v74;
    v27 = *(v74 + 96);
    if (v27)
    {
      v28 = MEMORY[0x277CE1428];
      v29 = *(v74 + 88);
      v30 = *(v74 + 104);
      v31 = *(v74 + 112);
      v32 = v73;
      v33 = *((*MEMORY[0x277D85000] & *v73) + 0x98);

      v35 = v33(v34);
      v36 = *(v26 + 136);
      if (*(v26 + 144))
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v35 < v36)
      {
        v37 = swift_allocObject();
        v38 = v78;
        v39 = v78[4];
        *(v37 + 16) = v78[3];
        *(v37 + 24) = v39;
        *(v37 + 32) = v28;
        v40 = v38[12];
        *(v37 + 72) = v38[11];
        *(v37 + 80) = v40;
        *(v37 + 88) = v29;
        *(v37 + 96) = v27;
        *(v37 + 104) = v30;
        *(v37 + 112) = v31;
        *(v37 + 120) = v32;
        v41 = *(v38 + 3);
        *(v37 + 56) = *(v38 + 9);
        *(v37 + 40) = v41;
        v42 = MEMORY[0x28223BE20](v37);
        *(&v62 - 16) = *(v43 + 16);
        *(&v62 - 15) = v44;
        *(&v62 - 14) = v45;
        *(&v62 - 13) = v28;
        *(&v62 - 6) = v42;
        *(&v62 - 10) = *(v43 + 64);
        *(&v62 - 9) = v46;
        *(&v62 - 7) = v47;
        *(&v62 - 6) = v48;
        *(&v62 - 5) = v49;
        *(&v62 - 4) = v27;
        *(&v62 - 3) = v30;
        *(&v62 - 2) = v31;
        sub_27444921C();

        v50 = v32;
        v51 = v63;
        sub_27463AD5C();
        v52 = v70;
        sub_2746396AC();
        sub_27440CA78(&qword_2809536C0, &qword_2809536B8);
        sub_2745C8EBC(&qword_280949470, MEMORY[0x277CDDB18]);
        v53 = v62;
        v54 = v64;
        v55 = v67;
        sub_27463A69C();

        (*(v71 + 8))(v52, v55);
        (*(v69 + 8))(v51, v54);
        v56 = v65;
        v57 = v66;
        (*(v68 + 32))(v66, v53, v65);
        v58 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v57, v58, 1, v56);
        sub_2745C8470();
        v24 = v78[10];
        sub_27456E7CC();
        sub_274404A20(v57);
        goto LABEL_11;
      }
    }

    v58 = 1;
    v56 = v65;
    v57 = v66;
    goto LABEL_10;
  }

  (*(v74 + 40))(v73, v21);
  v24 = v78[10];
  sub_2744E9688(v5, v3, v24);
  v25 = *(v72 + 8);
  v25(v5, v3);
  sub_2744E9688(v8, v3, v24);
  sub_2745C8470();
  sub_27456E878();
  v25(v5, v3);
  v25(v8, v3);
LABEL_11:
  v79 = sub_2745C8470();
  v80 = v24;
  v59 = v75;
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v23, v59, WitnessTable);
  return (*(v76 + 8))(v23, v59);
}

BOOL sub_2745C7A28(uint64_t a1)
{
  if (!*(v1 + 96))
  {
    return *(a1 + 40) != MEMORY[0x277CE1428];
  }

  v3 = (*((*MEMORY[0x277D85000] & **v1) + 0x98))();
  v4 = *(v1 + 136);
  if (*(v1 + 144))
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3 < v4 || *(a1 + 40) != MEMORY[0x277CE1428];
}

uint64_t sub_2745C7ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a3 + a4 - 72);
  v14[0] = *(a3 + a4 - 88);
  v14[1] = v6;
  v7 = *(a3 + a4 - 40);
  v14[2] = *(a3 + a4 - 56);
  v14[3] = v7;
  v14[4] = *(a3 + a4 - 24);
  v15 = v5;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  v8 = sub_27463C0AC();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1, v9);
  return sub_2745C4D9C(v11);
}

uint64_t sub_2745C7BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v35 - v20;
  v23 = *(v22 + 72);
  v35[1] = v24;
  v35[2] = v25;
  v35[3] = v26;
  v35[4] = v27;
  v35[5] = v28;
  v35[6] = v29;
  v36 = v19;
  v37 = v31;
  v38 = v30;
  v39 = a13;
  v32 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  v23(a1 + *(v32 + 108));
  sub_2744E9688(v17, a8, a13);
  v33 = *(v15 + 8);
  v33(v17, a8);
  sub_2744E9688(v21, a8, a13);
  return (v33)(v21, a8);
}

uint64_t sub_2745C7D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a8;
  v50 = a2;
  v45 = a1;
  v42 = a13;
  v38 = a12;
  v35 = a11;
  v37 = a10;
  v19 = sub_27463AF4C();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x28223BE20](v19);
  v47 = v33 - v20;
  v21 = sub_274637EEC();
  MEMORY[0x28223BE20](v21 - 8);
  v44 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v51 = a3;
  v52 = a4;
  v39 = a4;
  v53 = a5;
  v54 = a6;
  v40 = a6;
  v55 = a7;
  v56 = a8;
  v43 = a7;
  v36 = a9;
  v23 = v37;
  v57 = a9;
  v58 = v37;
  v24 = v38;
  v59 = a11;
  v60 = v38;
  v25 = v42;
  v61 = v42;
  v46 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  v26 = sub_27463C0AC();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v33 - v27;
  v29 = *(v45 + 160);
  v33[2] = *(v45 + 152);
  v33[1] = v29;
  LODWORD(v45) = *(v45 + 168);
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v55 = a7;
  v56 = v34;
  v57 = a9;
  v58 = v23;
  v59 = v35;
  v60 = v24;
  v61 = v25;
  type metadata accessor for ListParameterLayoutView.Model();
  swift_getWitnessTable();
  sub_27463920C();
  v30 = v44;
  sub_274637EDC();
  v31 = v47;
  (*(v48 + 16))(v47, v50, v49);
  sub_2745C49E8(v30, v31, v28);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v46);
  sub_2745C4D9C(v28);
}

uint64_t sub_2745C807C()
{
  v0 = sub_274639B4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953700);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FA0);
  sub_2744129AC();
  sub_27463ACAC();
  sub_274639B3C();
  sub_27440CA78(&qword_280953708, &qword_280953700);
  sub_2745C8EBC(qword_280953710, MEMORY[0x277CDDE78]);
  sub_27463A67C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2745C82E4@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2745C8404@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = sub_27463A41C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

unint64_t sub_2745C8470()
{
  result = qword_2809536B0;
  if (!qword_2809536B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536B8);
    sub_2746396BC();
    sub_27440CA78(&qword_2809536C0, &qword_2809536B8);
    sub_2745C8EBC(&qword_280949470, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536B0);
  }

  return result;
}

unint64_t sub_2745C85B4()
{
  result = qword_2809536C8;
  if (!qword_2809536C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8);
    sub_2745C8638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536C8);
  }

  return result;
}

unint64_t sub_2745C8638()
{
  result = qword_2809536D0;
  if (!qword_2809536D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536E0);
    sub_274639EFC();
    sub_27440CA78(&qword_2809536E8, &qword_2809536E0);
    sub_2745C8EBC(&qword_28094A6B8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536D0);
  }

  return result;
}

uint64_t sub_2745C8808()
{
  OUTLINED_FUNCTION_57();
  v3 = v2;
  *v2 = sub_274639B2C();
  v3[1] = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953798);
  sub_2745C8884(v1, v0, v3 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537A0);
  *(v3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2745C8884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537A8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v46 - v9);
  v11 = sub_27463AC2C();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA38) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_27463AC8C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA58) + 28);
  sub_274639C7C();
  v18 = sub_274639C9C();
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v18);
  *v16 = swift_getKeyPath();
  LOBYTE(v11) = sub_27463A37C();
  sub_2746390AC();
  v19 = v10 + *(v6 + 44);
  *v19 = v11;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v48 = a1;
  v49 = a2;
  sub_274412BBC();

  v24 = sub_27463A53C();
  v26 = v25;
  LOBYTE(v6) = v27;
  v28 = [objc_opt_self() lightGrayColor];
  sub_27463AB0C();
  v29 = sub_27463A4DC();
  v31 = v30;
  v33 = v32;

  sub_274412C10(v24, v26, v6 & 1);

  sub_27463A3AC();
  v34 = sub_27463A50C();
  v36 = v35;
  LOBYTE(v14) = v37;
  v39 = v38;

  sub_274412C10(v29, v31, v33 & 1);

  v40 = v46;
  sub_27440CAC0();
  v41 = v47;
  sub_27440CAC0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537B0);
  v43 = v41 + *(v42 + 48);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v14 & 1;
  *(v43 + 24) = v39;
  v44 = v41 + *(v42 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_27440B094(v34, v36, v14 & 1);

  sub_27440CB1C(v10, &qword_2809537A8);
  sub_274412C10(v34, v36, v14 & 1);

  return sub_27440CB1C(v40, &qword_2809537A8);
}

uint64_t sub_2745C8C94()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x98))();
  if (!__OFSUB__(result, 1))
  {
    return v1(v2, result - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2745C8D10@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  a1[1] = v2;
}

uint64_t objectdestroy_10Tm_1()
{

  if (*(v0 + 184))
  {
  }

  sub_2743F459C();
  if (*(v0 + 304))
  {
    if (*(v0 + 288))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 264);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2745C8DFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v7 = *(v0 + 96);
  v8 = *(sub_27463AF4C() - 8);
  return sub_2745C7D4C(v0 + 104, v0 + ((*(v8 + 80) + 321) & ~*(v8 + 80)), v1, v2, v3, v4, v5, v6, v11, *(&v11 + 1), v10, *(&v10 + 1), v7);
}

uint64_t sub_2745C8EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2745C8F14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2745C8FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809502A8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  sub_27440CAC0();
  return sub_27463998C();
}

unint64_t sub_2745C908C()
{
  result = qword_2809537B8;
  if (!qword_2809537B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809537A0);
    sub_27440CA78(&qword_2809537C0, &qword_2809537C8);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809537B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_getWitnessTable();
}

uint64_t sub_2745C9248(uint64_t a1, Class *a2)
{
  v13.super_class = *a2;
  v3 = objc_msgSendSuper2(&v13, sel_moduleSummarySlotsForState_, a1);
  if (v3)
  {
    v4 = v3;
    sub_274466DA4();
    v5 = sub_27463B81C();

    if (!a1)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!a1)
    {
      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 value];
    if (v8)
    {
      v9 = v8;
      if (v5 && sub_274453594(v5))
      {
        sub_2744535A4(0, (v5 & 0xC000000000000001) == 0);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x277C58B20](0, v5);
        }

        else
        {
          v10 = *(v5 + 32);
        }

        v11 = v10;

        if ([v9 requiresUserConfirmation])
        {
          [v11 setInvalid_];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_274648560;
        *(v5 + 32) = v11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v5;
}

id sub_2745C93F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a1;
  v6 = swift_unknownObjectRetain();
  v7 = a4(v6);
  swift_unknownObjectRelease();

  if (v7)
  {
    sub_274466DA4();
    v8 = sub_27463B7FC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t WFPosterPickerParameter.view(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809537D0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v8 = *(v7 + 56);
  *(v3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v9 = v3 + v1[15];
  *v9 = swift_getKeyPath();
  *(v9 + 4) = 0;
  v10 = v3 + v1[16];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v3 + v1[17];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v12 = v0;
  sub_27444A564(v12);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v3 = sub_27463950C();
  v3[1] = v13;
  v14 = [v12 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  v18 = [v12 localizedDescription];
  if (v18)
  {
    v19 = v18;
    v20 = sub_27463B6AC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v3[2] = v15;
  v3[3] = v17;
  v3[4] = v20;
  v3[5] = v22;
  v23 = v3 + v1[12];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v1[11];
  v25 = v12;

  sub_27444AD2C(v25, 0, 4, 0, 0, v3 + v24);
  *(v3 + v1[13]) = 0;
  sub_2744CE5D8(v3, v6, &unk_2809537D0);
  sub_27440CA78(&unk_2809537E0, &unk_2809537D0);
  return sub_27463AE9C();
}

id WFPosterPickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0) && (v13 = [v12 value]) != 0)
  {
    v14 = v13;
  }

  else if ([v1 handlesDefaultPoster])
  {
    v14 = [objc_opt_self() defaultPoster];
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = [v16 variable];
    if (v17)
    {
      v18 = v17;
      [v11 populateWith_];
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  if (v14)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
    v20 = dispatch_semaphore_create(0);
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v14;
    v21[4] = v11;
    OUTLINED_FUNCTION_0_33();
    v27[1] = 1107296256;
    v27[2] = sub_2745C9C0C;
    v27[3] = &block_descriptor_38;
    v22 = _Block_copy(v27);
    v23 = v20;
    v24 = v14;
    v25 = v11;

    [v19 findPosterMatchingRepresentation:v24 completionHandler:v22];
    _Block_release(v22);
    sub_27463BDDC();
  }

  else
  {
    [v11 populateWithString_];
  }

  return v11;
}

uint64_t sub_2745C9A34(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 name];
    v8 = sub_27463B6AC();
    v10 = v9;

    sub_274457D08(v8, v10, a5);
  }

  else
  {
    v12 = [objc_opt_self() defaultPoster];
    if (v12 && (v13 = v12, sub_274412734(0, &unk_280953860), v14 = a4, v15 = sub_27463BF7C(), v13, v14, (v15 & 1) != 0))
    {
      [a5 populateWithString_];
    }

    else
    {
      sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v16 = qword_28094BB00;
      v17 = sub_27463B66C();
      v18 = sub_27463B66C();

      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      v20 = sub_27463B6AC();
      v22 = v21;

      sub_274457D08(v20, v22, a5);
    }
  }

  return sub_27463BDEC();
}

void sub_2745C9C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_2745C9C98(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFPosterPickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745C9D04()
{
  static WFPosterPickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745C9D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
  v7 = [v3 parameter];
  v8 = [v7 shouldOnlyShowEligiblePhotosPosters];

  OUTLINED_FUNCTION_39();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  OUTLINED_FUNCTION_0_33();
  v13[1] = 1107296256;
  if (v8)
  {
    v14 = sub_2745C9EC0;
    v15 = &block_descriptor_60_0;
    v10 = _Block_copy(v13);

    v11 = &selRef_fetchEligiblePostersWithCompletionHandler_;
  }

  else
  {
    OUTLINED_FUNCTION_3_38();
    v14 = v12;
    v15 = &block_descriptor_54;
    v10 = _Block_copy(v13);

    v11 = &selRef_getPostersWithCompletionHandler_;
  }

  [v6 *v11];

  _Block_release(v10);
}

uint64_t sub_2745C9EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_274637EEC();
    sub_2745CBDF8(&qword_28094F940, MEMORY[0x277CC95F0]);
    v4 = sub_27463BA4C();
  }

  v6 = a3;
  v5(v4, a3);
}

size_t sub_2745C9F90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v23 = sub_274637EEC();
  v7 = *(v23 - 8);
  v8 = MEMORY[0x28223BE20](v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a3)(0, v8);
  }

  v11 = sub_274453594(a1);
  if (!v11)
  {
LABEL_12:
    sub_2745E1E6C();
    a3();
  }

  v12 = v11;
  v24 = MEMORY[0x277D84F90];
  result = sub_274451474(0, v11 & ~(v11 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v21 = a4;
    v22 = a3;
    v14 = 0;
    v15 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v14, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 UUID];
      sub_274637ECC();

      v24 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_274451474(v19 > 1, v20 + 1, 1);
        v15 = v24;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v10, v23);
    }

    while (v12 != v14);
    a3 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745CA1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_274412734(0, &unk_280953860);
    v4 = sub_27463B81C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2745CA248(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  v5 = v2;
  v6 = a2;
  sub_2745C9D2C(sub_2745CBE4C, v4);
}

uint64_t sub_2745CA2C4(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_27463B1EC();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_27463B21C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094AF90);
  v12 = sub_27463BCEC();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_2745CBE54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_81;
  v14 = _Block_copy(aBlock);

  v15 = a3;
  v16 = a2;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_2745CA5D0(char *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = [a1 currentState];
  if (v15 && (v16 = v15, v17 = [v15 value], v16, v17))
  {
    v18 = [v17 UUID];
    sub_274637ECC();

    sub_27450A21C(v13);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    v7 = v10;
  }

  else
  {
    v19 = [a1 parameter];
    v20 = [v19 handlesDefaultPoster];

    if (!v20)
    {
      goto LABEL_10;
    }

    v21 = [objc_opt_self() defaultPoster];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 UUID];

      sub_274637ECC();
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    sub_27450A21C(v13);
    __swift_storeEnumTagSinglePayload(v7, v24, 1, v14);
  }

  sub_2744CE5D8(v7, v13, &unk_280953870);
LABEL_10:
  sub_2745CBE60(v13, v10);
  v25 = objc_allocWithZone(MEMORY[0x277D3EAE0]);

  v27 = sub_2745CBBAC(v26, v10);
  v28 = [objc_allocWithZone(MEMORY[0x277D3EAA0]) initWithEntryPoint_];
  [v28 setDelegate_];
  v29 = *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller];
  *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller] = v28;
  v30 = v28;

  v31 = [a3 sourceViewController];
  v32 = [v31 view];

  if (v32)
  {
    v33 = [v32 window];

    if (v33 && (v34 = [v33 windowScene], v33, v34))
    {
      [v30 presentFromWindowScene_];
      v35 = [a3 sourceViewController];

      sub_27450A21C(v13);
      v30 = *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController];
      *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController] = v35;
    }

    else
    {
      sub_27450A21C(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2745CAA08(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  aBlock[4] = sub_2745CBE40;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_7_19();
  aBlock[2] = v6;
  aBlock[3] = &block_descriptor_69;
  v7 = _Block_copy(aBlock);
  v8 = v2;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  objc_msgSendSuper2(&v9, sel_cancelEditingWithCompletionHandler_, v7);
  _Block_release(v7);
}

void sub_2745CAAF0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController);
  if (v3)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_27443E0E8;
    v6[3] = &block_descriptor_72;
    v4 = _Block_copy(v6);
    v5 = v3;

    [v5 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }

  else
  {
    a2();
  }
}

id sub_2745CAC5C(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745CAD20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2745CADA0(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v51 = v6;
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v48 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v53 = v3;
    v27 = a2;
    v28 = [v26 configurationUUID];
    if (v28)
    {
      v29 = v28;
      sub_274637ECC();

      v30 = *(v14 + 32);
      v30(v24, v21, v12);
      v31 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
      v52 = v27;
      v32 = v31;
      (*(v14 + 16))(v18, v24, v12);
      v33 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v34 = swift_allocObject();
      v35 = v53;
      *(v34 + 16) = v53;
      v30((v34 + v33), v18, v12);
      v58 = sub_2745CBD1C;
      v59 = v34;
      OUTLINED_FUNCTION_2_34();
      v55 = 1107296256;
      OUTLINED_FUNCTION_3_38();
      v56 = v36;
      v57 = &block_descriptor_30_0;
      v37 = _Block_copy(&aBlock);
      v38 = v35;

      [v32 getPostersWithCompletionHandler_];
      _Block_release(v37);

      return (*(v14 + 8))(v24, v12);
    }

    else
    {
      sub_274412734(0, &qword_28094AF90);
      v40 = sub_27463BCEC();
      v41 = swift_allocObject();
      v42 = v53;
      *(v41 + 16) = v53;
      v58 = sub_27444C524;
      v59 = v41;
      OUTLINED_FUNCTION_2_34();
      v55 = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v56 = v43;
      v57 = &block_descriptor_24;
      v44 = _Block_copy(&aBlock);
      v45 = v42;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
      v46 = v49;
      v47 = v52;
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v11, v46, v44);

      _Block_release(v44);
      (*(v51 + 8))(v46, v47);
      return (*(v48 + 8))(v11, v50);
    }
  }

  else
  {

    return [v3 completeEditing];
  }
}

uint64_t sub_2745CB2E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_27463B1EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B21C();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v8;
    MEMORY[0x28223BE20](v12);
    *(&v31 - 2) = a4;

    sub_27448EBA8();
    v16 = v15;
    if (sub_274453594(v15))
    {
      sub_2744535A4(0, (v16 & 0xC000000000000001) == 0);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x277C58B20](0, v16);
      }

      else
      {
        v17 = *(v16 + 32);
      }

      v18 = v17;

      sub_274412734(0, &qword_28094AF90);
      v19 = sub_27463BCEC();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = a3;
      v38 = sub_2745CBDC0;
      v39 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_27443E0E8;
      v37 = &block_descriptor_42_1;
      v21 = _Block_copy(&aBlock);
      v22 = a3;
      v23 = v18;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v14, v10, v21);
      _Block_release(v21);
    }

    else
    {

      sub_274412734(0, &qword_28094AF90);
      v19 = sub_27463BCEC();
      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      v38 = sub_27444C290;
      v39 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_27443E0E8;
      v37 = &block_descriptor_48;
      v28 = _Block_copy(&aBlock);
      v29 = a3;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v14, v10, v28);
      _Block_release(v28);
    }

    v8 = v31;
  }

  else
  {
    sub_274412734(0, &qword_28094AF90);
    v19 = sub_27463BCEC();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    v38 = sub_27444C524;
    v39 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_27443E0E8;
    v37 = &block_descriptor_36;
    v25 = _Block_copy(&aBlock);
    v26 = a3;

    sub_27463B20C();
    aBlock = MEMORY[0x277D84F90];
    sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
    sub_27463C1EC();
    MEMORY[0x277C58440](0, v14, v10, v25);
    _Block_release(v25);
  }

  (*(v8 + 8))(v10, v7);
  return (*(v32 + 8))(v14, v33);
}

uint64_t sub_2745CB9A8(id *a1)
{
  v2 = sub_274637EEC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_274637ECC();

  v8 = sub_274637EBC();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_2745CBAB4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D7C748]) initWithValue_];
  [a2 commitState_];
  [a2 completeEditing];
}

id sub_2745CBBAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_274637EEC();
    sub_2745CBDF8(&qword_28094F940, MEMORY[0x277CC95F0]);
    v5 = sub_27463BA3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_274637EEC();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v6) != 1)
  {
    v7 = sub_274637EAC();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v8 = [v3 initWithAllowedConfigurationUUIDs:v5 selectedConfigurationUUID:v7];

  return v8;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2745CBD1C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_274637EEC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2745CB2E4(a1, a2, v6, v7);
}

uint64_t sub_2745CBDF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2745CBE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745CBF64(void *a1, void *a2)
{
  v4 = sub_274638DAC();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v65 - v12;
  v14 = [a1 identifier];
  v15 = sub_27463B6AC();
  v17 = v16;

  if (v15 != 0x657469726F766166 || v17 != 0xE900000000000073)
  {
    OUTLINED_FUNCTION_1_38();
    if ((sub_27463C6BC() & 1) == 0)
    {
      objc_opt_self();
      v28 = OUTLINED_FUNCTION_1_38();
      if ((sub_2745CC5C0(v28, v29, v30) & 1) == 0)
      {
        return v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_274648560;
      sub_2745CC608();

      OUTLINED_FUNCTION_1_38();
      *(v31 + 32) = sub_2745CC54C();
      v32 = sub_27463BC5C();

      v33 = sub_274442C98(v32);
      v24 = v34;
      v36 = v35;

      if (v33)
      {

        if ((v36 & 1) == 0)
        {

          return v24;
        }

        sub_274638C2C();

        v37 = OUTLINED_FUNCTION_0_45();
        sub_2744438B8(v37, v38, v39);
        v40 = sub_274638D9C();
        v41 = sub_27463BBFC();

        v42 = OUTLINED_FUNCTION_0_45();
        sub_2745CC64C(v42, v43, v44);
        if (os_log_type_enabled(v40, v41))
        {
          v45 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v68 = v66;
          *v45 = 136315394;
          v46 = OUTLINED_FUNCTION_1_38();
          v49 = sub_2745E7980(v46, v47, v48);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          swift_getErrorValue();
          v50 = sub_27463C72C();
          v52 = sub_2745E7980(v50, v51, &v68);

          *(v45 + 14) = v52;
          _os_log_impl(&dword_2743F0000, v40, v41, "could not get local identifier for photo item %s with error %s", v45, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_14_6();
        }

        else
        {
        }

        v62 = OUTLINED_FUNCTION_0_45();
        sub_2745CC64C(v62, v63, v64);
        (*(v67 + 8))(v9, v4);
      }

      else
      {
        sub_274638C2C();

        v53 = sub_274638D9C();
        v54 = sub_27463BBFC();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v68 = v56;
          *v55 = 136315138;
          v57 = OUTLINED_FUNCTION_1_38();
          v60 = sub_2745E7980(v57, v58, v59);

          *(v55 + 4) = v60;
          _os_log_impl(&dword_2743F0000, v53, v54, "could not get local identifier for photo item %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_14_6();
        }

        else
        {
        }

        (*(v67 + 8))(v6, v4);
      }

      return 0;
    }
  }

  v19 = objc_opt_self();
  v20 = [a2 librarySpecificFetchOptions];
  v21 = [v19 fetchAssetCollectionsWithType:2 subtype:203 options:v20];

  v22 = [v21 firstObject];
  if (!v22)
  {
    sub_274638C2C();
    v25 = sub_274638D9C();
    v26 = sub_27463BBFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2743F0000, v25, v26, "could not get local identifier for favorites album", v27, 2u);
      OUTLINED_FUNCTION_14_6();
    }

    (*(v67 + 8))(v13, v4);
    return 0;
  }

  v23 = [v22 localIdentifier];
  v24 = sub_27463B6AC();

  return v24;
}

id sub_2745CC54C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_27463B66C();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_2745CC5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  v5 = [a3 isValidCloudIdentifierStringValue_];

  return v5;
}

unint64_t sub_2745CC608()
{
  result = qword_280953880;
  if (!qword_280953880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280953880);
  }

  return result;
}

void sub_2745CC64C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2745CC678(uint64_t a1)
{
  v2 = sub_27463BB9C();
  v3 = v2;
  v4 = *(v2 + 16);
  if (a1 == 1)
  {
    v5 = 32;
    for (i = *(v2 + 16); i; --i)
    {
      v7 = sub_274412734(0, &unk_280953888);
      v5 += 8;
      if (swift_dynamicCastMetatype())
      {

        return v7;
      }
    }
  }

  if (v4)
  {
    v7 = *(v3 + 32);

    if (v7 == sub_274412734(0, &qword_280949F00))
    {
      return sub_274412734(0, &unk_280953888);
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_2745CC77C(uint64_t a1)
{
  result = [v1 supportsAggrandizements];
  if (!result)
  {
    return result;
  }

  v4 = [v1 type];
  v5 = sub_27463B6AC();
  v7 = v6;
  if (v5 == sub_27463B6AC() && v7 == v8)
  {
    goto LABEL_19;
  }

  v10 = OUTLINED_FUNCTION_0_46();

  if (v10)
  {
    return 0;
  }

  v4 = [v1 type];
  v11 = sub_27463B6AC();
  v13 = v12;
  if (v11 == sub_27463B6AC() && v13 == v14)
  {
LABEL_19:

    return 0;
  }

  v16 = OUTLINED_FUNCTION_0_46();

  if (v16)
  {
    return 0;
  }

  result = sub_2745CC678(1);
  if (result)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_274412734(0, &unk_280953888);
    v18 = [ObjCClassFromMetadata isSubclassOfClass_];
    result = 0;
    if ((v18 & 1) == 0 && a1 == 1)
    {
      v19 = [ObjCClassFromMetadata allProperties];
      sub_274412734(0, &qword_28094F1F8);
      v20 = sub_27463B81C();

      v21 = sub_274453594(v20);

      if (v21 > 1)
      {
        return 1;
      }

      sub_274412734(0, &qword_28094F1B8);
      if ([ObjCClassFromMetadata isSubclassOfClass_])
      {
        return 1;
      }

      sub_274412734(0, &qword_28094F1C0);
      result = [ObjCClassFromMetadata isSubclassOfClass_];
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2745CC9D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_2745CC77C(a3);

  return a3 & 1;
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return sub_27463C6BC();
}

void sub_2745CCA38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState;
  if (*(*&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 24) == 1)
  {
    v2 = [v0 currentState];
    [v0 commitState_];

    *(*&v0[v1] + 24) = 0;
  }
}

uint64_t sub_2745CCAB0()
{
  v1 = [v0 parameter];
  [v1 singleStateClass];

  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530);
  OUTLINED_FUNCTION_21_2();
  swift_dynamicCastMetatypeUnconditional();
  OUTLINED_FUNCTION_19_8();
  return sub_27463BE9C();
}

uint64_t sub_2745CCB48()
{
  v1 = [v0 textEntry];
  if (v1)
  {
    [v1 selectedRange];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_274637CAC();
  }

  return OUTLINED_FUNCTION_5_0();
}

id sub_2745CCBBC()
{
  v1 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v27 - v13;
  result = [v0 currentState];
  if (result)
  {
    v16 = result;
    sub_27463BE7C();

    v17 = sub_2745CCB48();
    v19 = v18;
    v20 = sub_27463822C();
    v21 = [v20 substringWithRange_];

    sub_27463827C();
    v22 = *(v3 + 8);
    v22(v7, v1);
    (*(v3 + 32))(v14, v10, v1);
    v23 = [objc_opt_self() generalPasteboard];
    v24 = objc_opt_self();
    v25 = sub_27463822C();
    [v24 copyVariableString:v25 toPasteboard:v23];

    v26 = OUTLINED_FUNCTION_4_3();
    return (v22)(v26);
  }

  return result;
}

uint64_t sub_2745CCDC0(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v87) = a4;
  v85 = a2;
  v86 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  v6 = OUTLINED_FUNCTION_53_0(v5);
  MEMORY[0x28223BE20](v6);
  v76 = &v74 - v7;
  OUTLINED_FUNCTION_51_3();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v83 = v9;
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v81 = v11 - v10;
  OUTLINED_FUNCTION_51_3();
  v82 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v80 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v79 = v15 - v14;
  OUTLINED_FUNCTION_51_3();
  v88 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v78 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  OUTLINED_FUNCTION_51_3();
  v24 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v89 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v77 = v27 - v28;
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = &v74 - v31;
  v33 = [a1 type];
  v34 = sub_27463B6AC();
  v36 = v35;
  if (v34 == sub_27463B6AC() && v36 == v37)
  {

    v40 = v90;
    goto LABEL_8;
  }

  v39 = sub_27463C6BC();

  v40 = v90;
  if (v39)
  {
LABEL_8:
    v41 = [v40 currentState];
    if (v41)
    {
      v42 = v41;
      sub_27463BE7C();

      v43 = sub_2746382AC();
      (*(v89 + 8))(v32, v24);
      v44 = sub_274453594(v43);

      if (v44 > 0)
      {
        return result;
      }
    }
  }

  v46 = [objc_allocWithZone(WFSlotTemplateVariableToken) initWithVariable_];
  v47 = [objc_allocWithZone(MEMORY[0x277D7D7C8]) initWithSlotTemplateToken_];

  sub_2745CD664(v47);
  v48 = [objc_opt_self() attributedStringWithAttachment_];
  v49 = [v40 textEntry];
  if (v49)
  {
    v75 = v48;
    if (v87)
    {
      [v49 insertAttributedText_];
    }

    else
    {
      [v49 wf:v85 replaceRange:v86 withAttributedText:v48];
    }

    sub_274412734(0, &qword_28094AF90);
    v87 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v89 = *(v78 + 8);
    (v89)(v20, v88);
    v55 = swift_allocObject();
    v56 = v90;
    v55[2] = v90;
    v55[3] = a1;
    v55[4] = v47;
    aBlock[4] = sub_2745D3E04;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27443E0E8;
    aBlock[3] = &block_descriptor_96;
    v57 = _Block_copy(aBlock);
    v58 = v56;
    v59 = a1;
    v90 = v47;

    v60 = v79;
    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2745CE024(&qword_28094E100, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_274458A14(&qword_28094E110, &unk_28094AFA0);
    v61 = v81;
    v62 = v84;
    sub_27463C1EC();
    v63 = v87;
    MEMORY[0x277C58400](v23, v60, v61, v57);
    _Block_release(v57);

    swift_unknownObjectRelease();
    (*(v83 + 8))(v61, v62);
    (*(v80 + 8))(v60, v82);
    return (v89)(v23, v88);
  }

  else
  {
    v50 = v48;
    v51 = [v40 currentState];
    if (v51)
    {
      v52 = v51;
      v53 = v76;
      sub_27463BE7C();

      __swift_storeEnumTagSinglePayload(v53, 0, 1, v24);
      v54 = v77;
      (*(v89 + 32))(v77, v53, v24);
    }

    else
    {
      v64 = v76;
      __swift_storeEnumTagSinglePayload(v76, 1, 1, v24);
      v54 = v77;
      sub_2746382CC();
      if (__swift_getEnumTagSinglePayload(v64, 1, v24) != 1)
      {
        sub_27440CB1C(v64, &unk_2809530C0);
      }
    }

    v65 = sub_27463822C();
    v66 = [v65 attributedString];

    v67 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v68 = v67;
    v69 = [v68 length];
    if ((v87 & 1) != 0 || (v69 > v85 ? (v70 = v86 + v85 >= v69) : (v70 = 1), v70))
    {
      [v68 appendAttributedString_];
    }

    else
    {
      [v68 replaceCharactersInRange_withAttributedString_];
    }

    [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
    sub_27463821C();

    v71 = v90;
    v72 = sub_2745CCAB0();
    v73 = *(v89 + 8);
    v73(v32, v24);
    [v71 commitState_];

    return (v73)(v54, v24);
  }
}

void sub_2745CD664(void *a1)
{
  v3 = [v1 textEntry];
  if (v3)
  {
    v4 = [v3 font];
    [a1 setFont_];

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    v6 = [v5 tintColor];

    [a1 setTintColor_];
    swift_unknownObjectRelease();
  }

  v7 = [a1 token];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v22 = [v8 variable];

    if (!v22)
    {
      return;
    }

    v9 = [v22 type];
    v10 = sub_27463B6AC();
    v12 = v11;
    if (v10 == sub_27463B6AC() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_27463C6BC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v17 = [v1 parameter];
    v18 = [v17 defaultPlaceholder];

    v19 = sub_27463B6AC();
    v21 = v20;

    sub_2745D3664(v19, v21, a1);
LABEL_17:
    v16 = v22;
    goto LABEL_18;
  }

  v16 = v7;
LABEL_18:
}

void sub_2745CD8D4(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if (a1 != 1)
    {
      [a1 copy];
      sub_27463C13C();
      swift_unknownObjectRelease();
      sub_274412734(0, &qword_28094BD90);
      swift_dynamicCast();
      sub_2745CCDC0(v21, a2, a3, a4 & 1);
    }
  }

  else
  {
    v8 = [v4 variableProvider];
    if (v8)
    {
      v9 = v8;
      v10 = sub_274505FCC([v4 parameter]);
      if (v10)
      {
        v11 = sub_2744896FC(*MEMORY[0x277D7D068], v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = sub_2745CCB48();
      v14 = v13;
      *(v4 + OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput) = 1;
      sub_27448A8A0();
      v15 = [v4 variableUIDelegate];
      if (v15)
      {
        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = v4;
        *(v17 + 24) = v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = a2;
        *(v17 + 48) = a3;
        *(v17 + 56) = a4 & 1;
        aBlock[4] = sub_2745D3DF0;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_274486F8C;
        aBlock[3] = &block_descriptor_90;
        v18 = _Block_copy(aBlock);
        v19 = v4;

        [v16 showActionOutputPickerAllowingShortcutInput:v11 & 1 variableProvider:v9 completionHandler:v18];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v18);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

__n128 TextFieldView.init(editingSession:style:prefix:placeholder:isSecureTextEntry:isClear:isRinglessOnFocus:padding:focusImmediatelyWhenPresented:variableTypes:variableResultType:syntaxHighlightingType:onCommit:keyboardType:autocapitalizationType:minHeight:maxHeight:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, char a13, char a14, __int128 a15, __int128 a16, __n128 a17, uint64_t a18)
{
  v26 = *a2;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  *(a9 + 144) = sub_27463979C();
  *(a9 + 152) = v27;
  *a9 = a1;
  *(a9 + 8) = v26;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 50) = a13;
  *(a9 + 56) = a10;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  *(a9 + 88) = a16;
  result = a17;
  *(a9 + 104) = a17;
  *(a9 + 120) = a18;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12;
  return result;
}

uint64_t sub_2745CDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_274464A50(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_27440CB1C(v13, &unk_28094A230);
}

uint64_t WFTextInputParameter.view(with:)(uint64_t a1)
{
  v2 = type metadata accessor for TextInputRowView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = (v5 - v4);
  type metadata accessor for ParameterStateStore();
  sub_2745CE024(&qword_28094B550, 255, type metadata accessor for ParameterStateStore);

  v16 = sub_27463950C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2745CE068;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274458A90;
  *(v10 + 24) = a1;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0));
  swift_retain_n();
  sub_27444A690(v17);
  sub_274458A14(&unk_280953898, &qword_28094B5A0);
  *v6 = sub_27463950C();
  v6[1] = v12;
  v6[2] = v16;
  v6[3] = v8;
  v6[4] = sub_274458A60;
  v6[5] = v9;
  v6[6] = sub_274458A98;
  v6[7] = v10;
  v13 = *(v2 + 24);
  *(v6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v14 = v6 + *(v2 + 28);
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_2745CE024(&unk_2809538A8, 255, type metadata accessor for TextInputRowView);
  OUTLINED_FUNCTION_4_3();
  return sub_27463AE9C();
}

uint64_t sub_2745CE024(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WFTextInputParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  v5 = OUTLINED_FUNCTION_53_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v35 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_274412734(0, &qword_28094BD80);
  v14 = [v1 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  v18 = sub_27444C12C(v1);
  v20 = v19;
  v21 = sub_27463B66C();
  v22 = sub_27444AEE4(v15, v17, v18, v20, v21);
  if (a1 && (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = v23;
    swift_unknownObjectRetain();
    v25 = v24;
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v26 = v35;
    (*(v35 + 32))(v13, v7, v8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_27440CB1C(v7, &unk_2809530C0);
    }

    v25 = 0;
    v26 = v35;
  }

  v28 = [v2 defaultPlaceholder];
  v29 = sub_27463B6AC();
  v31 = v30;

  WFSlotTemplateSlot.populate(with:askVariableName:)(v13, v29, v31);

  (*(v26 + 8))(v13, v8);
  if (v27)
  {
    v32 = 0;
  }

  else
  {
    v32 = [v25 userInputInsertionIndex];
  }

  [v22 setUserInputInsertionIndex_];

  return v22;
}

id sub_2745CE398(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFTextInputParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t WFTextInputParameter.defaultStateForNewArrayElement()()
{
  sub_2746382DC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  [v0 singleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530);
  OUTLINED_FUNCTION_21_2();
  swift_dynamicCastMetatypeUnconditional();
  sub_27463828C();
  v2 = sub_27463BE9C();
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return v2;
}

id sub_2745CE508(void *a1)
{
  v1 = a1;
  v2 = WFTextInputParameter.defaultStateForNewArrayElement()();

  return v2;
}

uint64_t sub_2745CE550()
{
  static WFTextInputParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

id sub_2745CE590(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_27463B66C();

  return v5;
}

uint64_t sub_2745CE610()
{
  v0 = sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  v1 = qword_28094BB00;
  v2 = sub_27463B66C();
  sub_27463B66C();
  OUTLINED_FUNCTION_19_8();

  v3 = [v1 localizedStringForKey:v2 value:v0 table:0];

  sub_27463B6AC();
  return OUTLINED_FUNCTION_25_1();
}

id sub_2745CE6D4(void *a1)
{
  v1 = a1;
  WFDateFieldParameter.defaultPlaceholder.getter();

  v2 = sub_27463B66C();

  return v2;
}

uint64_t WFDateFieldParameter.defaultPlaceholder.getter()
{
  if (![v0 timeOnlyMode])
  {
    [v0 dateOnlyMode];
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  v1 = qword_28094BB00;
  OUTLINED_FUNCTION_25_1();
  v2 = sub_27463B66C();
  OUTLINED_FUNCTION_25_1();
  v3 = sub_27463B66C();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  sub_27463B6AC();
  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2745CE848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953938);
  MEMORY[0x28223BE20](v3);
  v5 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953940);
  MEMORY[0x28223BE20](v71);
  v73 = &v68 - v9;
  v10 = type metadata accessor for TextInputFieldView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953948);
  MEMORY[0x28223BE20](v72);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v70 = &v68 - v17;
  v18 = *(v2 + 8);
  v19 = qword_28094A100;
  v20 = [*(v18 + qword_28094A100) isMultiline];
  v21 = *(v18 + v19);
  v74 = v3;
  if (v20)
  {
    v22 = sub_2745D36D4(v21, &selRef_localizedPlaceholder);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v42 = [*(v18 + v19) localizedLabel];
      v24 = sub_27463B6AC();
      v25 = v43;
    }

    v44 = *(v18 + v19);
    v45 = *(v2 + 32);
    v76 = *(v2 + 16);
    v77 = v45;
    v78 = *(v2 + 48);
    v69 = v44;
    sub_2744342DC();
    v46 = sub_2745CF008();
    *(v12 + 14) = swift_getKeyPath();
    v12[120] = 0;
    *(v12 + 16) = swift_getKeyPath();
    v12[136] = 0;
    v47 = v10[11];
    *&v12[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
    swift_storeEnumTagMultiPayload();
    v48 = &v12[v10[12]];
    *v48 = sub_2746390EC() & 1;
    *(v48 + 1) = v49;
    v48[16] = v50 & 1;
    v51 = &v12[v10[13]];
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    *v51 = sub_27463979C();
    v51[1] = v52;
    v53 = &v12[v10[14]];
    *v53 = sub_2745CF698;
    *(v53 + 1) = 0;
    v53[16] = 0;
    *v12 = v24;
    *(v12 + 1) = v25;
    v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0));
    v55 = v69;
    sub_27444A690(v55);
    sub_274458A14(&unk_280953898, &qword_28094B5A0);
    v56 = sub_27463950C();
    v58 = v57;

    *(v12 + 2) = v56;
    *(v12 + 3) = v58;
    v59 = v77;
    *(v12 + 2) = v76;
    *(v12 + 3) = v59;
    *(v12 + 4) = v78;
    v12[80] = v46;
    v60 = swift_allocObject();
    v61 = v77;
    *(v60 + 16) = v76;
    *(v60 + 32) = v61;
    *(v60 + 48) = v78;
    *(v60 + 64) = v55;
    *(v12 + 11) = sub_2745D3C30;
    *(v12 + 12) = v60;
    v12[104] = 0;
    sub_2745D3E68();
    *&v14[*(v72 + 36)] = 256;
    v62 = v70;
    sub_274433B6C();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2744342DC();
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938);
    sub_274639DDC();
    v63 = v62;
    v64 = &qword_280953948;
  }

  else
  {
    v26 = v3[14];
    *(v5 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
    swift_storeEnumTagMultiPayload();
    v27 = v5 + v3[15];
    *v27 = swift_getKeyPath();
    *(v27 + 4) = 0;
    v28 = v5 + v3[16];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = v5 + v3[17];
    *v29 = swift_getKeyPath();
    v29[40] = 0;
    v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
    v31 = v21;
    sub_27444A564(v31);
    sub_274458A14(&qword_28094CF70, &unk_28094B440);
    *v5 = sub_27463950C();
    v5[1] = v32;
    v33 = [v31 localizedLabel];
    v34 = sub_27463B6AC();
    v36 = v35;

    v37 = [v31 localizedDescription];
    if (v37)
    {
      v38 = v37;
      v39 = sub_27463B6AC();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v5[2] = v34;
    v5[3] = v36;
    v5[4] = v39;
    v5[5] = v41;
    v65 = v74;
    v66 = v5 + v74[12];
    *v66 = 0;
    *(v66 + 1) = 0;
    v66[16] = 0;
    sub_2745CF290(v2, v5 + v65[11]);

    *(v5 + v65[13]) = 0;
    sub_274433B6C();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938);
    sub_274639DDC();
    v63 = v8;
    v64 = &qword_280953938;
  }

  return sub_27440CB1C(v63, v64);
}

uint64_t sub_2745CF008()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274639C4C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 8);
  v12 = qword_28094A100;
  if ([*(v11 + qword_28094A100) isMultiline])
  {
    return 0;
  }

  v20 = v3;
  v13 = type metadata accessor for TextInputRowView(0);
  sub_2744C6C14();
  v14 = sub_274639C3C();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    return 0;
  }

  v16 = v1 + *(v13 + 28);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_27463BC0C();
    v18 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v17, 0);
    (*(v20 + 8))(v5, v2);
    if ((v21 & 1) == 0)
    {
LABEL_9:
      v19 = [*(v11 + v12) textAlignment];
      WFTextAlignmentFromString();

      return sub_27463944C();
    }
  }

  return 0;
}

uint64_t sub_2745CF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[1] = a2;
  v3 = type metadata accessor for TextInputFieldView(0);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953948);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = *(a1 + 8);
  v10 = qword_28094A100;
  v11 = sub_2745D36D4(*(v9 + qword_28094A100), &selRef_localizedPlaceholder);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v15 = [*(v9 + v10) defaultPlaceholder];
    v13 = sub_27463B6AC();
    v14 = v16;
  }

  v17 = *(v9 + v10);
  v18 = *(a1 + 32);
  v38 = *(a1 + 16);
  v39 = v18;
  v40 = *(a1 + 48);
  v19 = v17;
  sub_2744342DC();
  v20 = sub_2745CF008();
  *(v5 + 14) = swift_getKeyPath();
  v5[120] = 0;
  *(v5 + 16) = swift_getKeyPath();
  v5[136] = 0;
  v21 = v3[11];
  *&v5[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  swift_storeEnumTagMultiPayload();
  v22 = &v5[v3[12]];
  *v22 = sub_2746390EC() & 1;
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  v25 = &v5[v3[13]];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  *v25 = sub_27463979C();
  v25[1] = v26;
  v27 = &v5[v3[14]];
  *v27 = sub_2745CF698;
  *(v27 + 1) = 0;
  v27[16] = 0;
  *v5 = v13;
  *(v5 + 1) = v14;
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0));
  v29 = v19;
  sub_27444A690(v29);
  sub_274458A14(&unk_280953898, &qword_28094B5A0);
  v30 = sub_27463950C();
  v32 = v31;

  *(v5 + 2) = v30;
  *(v5 + 3) = v32;
  v33 = v39;
  *(v5 + 2) = v38;
  *(v5 + 3) = v33;
  *(v5 + 4) = v40;
  v5[80] = v20;
  v34 = swift_allocObject();
  v35 = v39;
  *(v34 + 16) = v38;
  *(v34 + 32) = v35;
  *(v34 + 48) = v40;
  *(v34 + 64) = v29;
  *(v5 + 11) = sub_2745D48E8;
  *(v5 + 12) = v34;
  v5[104] = 0;
  sub_2745D3E68();
  *&v8[*(v6 + 36)] = 256;
  sub_274433B6C();
  return sub_2744342DC();
}

uint64_t sub_2745CF658@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TextInputFieldView.CommitState();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745CF698()
{
  type metadata accessor for TextInputFieldView.CommitState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2745CF6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_2746382DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 16))(&v13, v7);
  v10 = v13;
  if (v13)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v6 + 32))(v9, v4, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_27440CB1C(v4, &unk_2809530C0);
    }
  }

  sub_2745CF8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

void sub_2745CF8A4()
{
  if ([v0 isMonospace])
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v2 = [v1 fontDescriptorWithSymbolicTraits_];

    if (v2)
    {
      [objc_opt_self() fontWithDescriptor:v2 size:0.0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle_];

    v4 = v3;
  }
}

uint64_t sub_2745CF9A4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 112);
  if (*(v0 + 120) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v8 = MEMORY[0x277D84FA0];
  result = sub_274505FCC(*(*(v0 + 24) + qword_28094A100));
  if (!result)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2745CFB30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v126 = a1;
  v104 = type metadata accessor for TextInputFieldView(0);
  v128 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v130 = v3;
  v103 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_274639ABC();
  v4 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A70);
  MEMORY[0x28223BE20](v101);
  v8 = &v84 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A78);
  MEMORY[0x28223BE20](v129);
  v102 = &v84 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A80);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v84 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A88);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v84 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A90);
  MEMORY[0x28223BE20](v114);
  v107 = &v84 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A98);
  v115 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v111 = &v84 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AA0);
  v118 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v116 = &v84 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AA8);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v119 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AB0);
  v121 = *(v16 - 8);
  v122 = v16;
  MEMORY[0x28223BE20](v16);
  v117 = &v84 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
  v100 = sub_27463920C();
  v18 = *(v2 + 24);
  v19 = qword_28094A100;
  if ([*(v18 + qword_28094A100) isMultiline])
  {
    v99 = 0;
  }

  else
  {
    v20 = *(v2 + 128);
    if (*(v2 + 136) != 1)
    {

      sub_27463BC0C();
      v21 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v20, 0);
      (*(v4 + 8))(v6, v127);
      LOBYTE(v20) = v132;
    }

    if (v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v99 = v22;
  }

  v98 = sub_2745D36D4(*(v18 + v19), &selRef_prefix);
  v97 = v23;
  v24 = *(v2 + 8);
  v96 = *v2;
  v95 = v24;
  v25 = *(v18 + v19);

  v94 = [v25 isSecureTextEntry];
  v26 = sub_2745D0A24();
  v93 = sub_2745CF9A4();
  v92 = [*(v18 + v19) processesIntoContentItems] ^ 1;
  v91 = [*(v18 + v19) syntaxHighlightingType];
  v127 = type metadata accessor for TextInputFieldView;
  sub_2745D3E10();
  v128 = *(v128 + 80);
  v90 = swift_allocObject();
  v87 = type metadata accessor for TextInputFieldView;
  sub_2745D3E68();
  v89 = [*(v18 + v19) keyboardType];
  v88 = [*(v18 + v19) autocapitalizationType];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  v27 = sub_27463979C();
  v105 = v18;
  v86 = v27;
  v85 = v28;
  v29 = v26 & 1;
  (*(v2 + 48))(&v132);
  v30 = v132;
  v31 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953F70);
  sub_27463C09C();

  sub_2745D3E10();
  v32 = swift_allocObject();
  sub_2745D3E68();
  *v8 = v100;
  v8[8] = v99;
  v33 = v97;
  *(v8 + 2) = v98;
  *(v8 + 3) = v33;
  v34 = v95;
  *(v8 + 4) = v96;
  *(v8 + 5) = v34;
  v8[48] = v94;
  v8[49] = v29;
  v8[50] = 0;
  *(v8 + 7) = 0;
  v8[64] = 0;
  v35 = v92;
  *(v8 + 9) = v93;
  *(v8 + 10) = v35;
  *(v8 + 11) = v91;
  *(v8 + 12) = sub_2745D4250;
  v36 = v89;
  *(v8 + 13) = v90;
  *(v8 + 14) = v36;
  *(v8 + 15) = v88;
  *(v8 + 8) = xmmword_27464F170;
  v37 = v85;
  *(v8 + 18) = v86;
  *(v8 + 19) = v37;
  v38 = &v8[*(v31 + 56)];
  *v38 = sub_2745D4440;
  v38[1] = v32;
  v39 = v2 + *(v104 + 48);
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  LOBYTE(v132) = *v39;
  v40 = v132;
  v133 = v41;
  v134 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420);
  sub_2746390BC();
  v43 = v2;
  v44 = v19;
  v45 = v131;
  v104 = v43;
  sub_2745D3E10();
  v46 = swift_allocObject();
  sub_2745D3E68();
  v47 = v102;
  sub_274433B6C();
  v48 = v47 + *(v129 + 36);
  *v48 = v45;
  v49 = v44;
  *(v48 + 8) = sub_2745D44AC;
  *(v48 + 16) = v46;
  LOBYTE(v132) = v40;
  v50 = v105;
  v133 = v41;
  v134 = v42;
  sub_2746390DC();
  v51 = sub_2745D4504();
  v52 = v109;
  sub_27463A99C();

  sub_27440CB1C(v47, &qword_280953A78);
  v53 = [*(v50 + v49) autocorrectionType];
  v54 = sub_27463B6AC();
  v56 = v55;
  if (v54 == sub_27463B6AC() && v56 == v57)
  {
    v59 = 1;
  }

  else
  {
    v59 = sub_27463C6BC();
  }

  v132 = v129;
  v133 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v59 & 1;
  v62 = v106;
  v63 = v113;
  MEMORY[0x277C56F80](v61, v113, OpaqueTypeConformance2);
  (*(v112 + 8))(v52, v63);
  v64 = *(v104 + 80);
  KeyPath = swift_getKeyPath();
  v66 = v107;
  (*(v108 + 32))(v107, v62, v110);
  v67 = v114;
  v68 = v66 + *(v114 + 36);
  *v68 = KeyPath;
  *(v68 + 8) = v64;
  [*(v50 + v49) smartDashesDisabled];
  v69 = sub_2745D45E8();
  v70 = v111;
  sub_27463A59C();
  sub_27440555C(v66);
  [*(v50 + v49) smartQuotesDisabled];
  v132 = v67;
  v133 = v69;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v116;
  v73 = v120;
  sub_27463A5AC();
  (*(v115 + 8))(v70, v73);
  [*(v50 + v49) textReplacementDisabled];
  v132 = v73;
  v133 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v119;
  v76 = v124;
  sub_27463A5DC();
  (*(v118 + 8))(v72, v76);
  [*(v50 + v49) autoPeriodsDisabled];
  v132 = v76;
  v133 = v74;
  swift_getOpaqueTypeConformance2();
  v77 = v117;
  v78 = v125;
  sub_27463A57C();
  (*(v123 + 8))(v75, v78);
  v79 = sub_27463ABBC();
  v80 = swift_getKeyPath();
  v81 = v126;
  (*(v121 + 32))(v126, v77, v122);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AE0);
  v83 = (v81 + *(result + 36));
  *v83 = v80;
  v83[1] = v79;
  return result;
}

uint64_t sub_2745D0A24()
{
  v1 = v0;
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 128);
  if (*(v1 + 136) == 1)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_27463BC0C();
    v14 = sub_27463A2FC();
    v23 = v3;
    v15 = v14;
    sub_274638CEC();

    v3 = v23;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v13, 0);
    (*(v10 + 8))(v12, v9);
    if (v25 != 1)
    {
LABEL_7:
      type metadata accessor for TextInputFieldView(0);
      sub_2744C68C0();
      (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
      v19 = sub_27463917C();
      v20 = *(v3 + 8);
      v20(v5, v2);
      v20(v8, v2);
      return v19 & 1;
    }
  }

  v16 = (v1 + *(type metadata accessor for TextInputFieldView(0) + 48));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v16) = v16[16];
  v25 = v17;
  v26 = v18;
  v27 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420);
  sub_2746390BC();
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = 0;
  return v19 & 1;
}

void sub_2745D0D1C(uint64_t a1)
{
  v11 = sub_2746382DC();
  v2 = *(v11 - 8);
  *&v3 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(*(a1 + 24) + qword_28094A100) singleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530);
  swift_dynamicCastMetatype();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463896C();

  v6 = sub_27463BE9C();
  (*(v2 + 8))(v5, v11);
  type metadata accessor for TextInputFieldView(0);
  type metadata accessor for TextInputFieldView.CommitState();
  sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
  v7 = sub_27463920C();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  v9 = v6;

  v10 = *(a1 + 64);
  v12 = v6;
  v10(&v12);
}

void sub_2745D0F88(void **a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  type metadata accessor for TextInputFieldView(0);
  type metadata accessor for TextInputFieldView.CommitState();
  sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
  v4 = *(sub_27463920C() + 16);
  v5 = v4;

  if (!v4 || (v5, v3 != v5))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
    sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
    sub_27463920C();
    sub_27463BE7C();
    sub_27463897C();

    v6 = sub_27463920C();
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
  }

  sub_2745D117C();
}

void sub_2745D117C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28[-v3];
  v5 = *(*(v0 + 24) + qword_28094A100);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = type metadata accessor for TextInputFieldView(0);
    v7 = (v0 + *(v6 + 48));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v7) = v7[16];
    LOBYTE(v29[0]) = v8;
    v29[1] = v9;
    v30 = v7;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420);
    v11 = sub_2746390BC();
    if (v28[7] == 1)
    {
      (*(v0 + 48))(v29, v11);
      v12 = v29[0];
      if (v29[0])
      {
        sub_27463BE7C();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v16 = sub_2746382DC();
      __swift_storeEnumTagSinglePayload(v4, v13, 1, v16);
      v17 = WFDateFieldParameter.hintText(for:)(v4);
      v19 = v18;
      sub_27440CB1C(v4, &unk_2809530C0);
      if (v19)
      {
        v14 = v17;
      }

      else
      {
        v14 = 0;
      }

      if (v19)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0xE000000000000000;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    v20 = *(v1 + *(v6 + 52));
    if (v20)
    {
      v21 = v20;
      v22 = sub_27443CDC8();
      v24 = v23;

      if (v22 == v14 && v24 == v15)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v26 = sub_27463C6BC();

        if (v26)
        {
        }

        else
        {
          v27 = v21;
          sub_27443CE38();
        }
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t TextFieldView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t TextFieldView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v5, v1, sizeof(v5));
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809538B8);
  return sub_2745D1544(v5, (a1 + *(v3 + 44)));
}

uint64_t sub_2745D1544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for VariableTextEditor(0);
  MEMORY[0x28223BE20](v3);
  v55 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - v9;
  v10 = a1[3];
  if (v10)
  {
    *&v60 = a1[2];
    *(&v60 + 1) = v10;
    sub_274412BBC();

    v11 = sub_27463A53C();
    v13 = v12;
    v51 = v15;
    v52 = v11;
    v49 = v14 & 1;
    sub_27440B094(v11, v15, v14 & 1);
    v50 = v13;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
  }

  v48 = *a1;
  v16 = a1[18];
  if (v16)
  {
    v44 = *(a1 + 8);
    v60 = *(a1 + 2);
    v43 = *(a1 + 24);
    v17 = *(a1 + 50);
    v18 = a1[7];
    v19 = *(a1 + 64);
    v20 = a1[9];
    v47 = a1[10];
    v21 = a1[11];
    v46 = a1[12];
    v22 = a1[14];
    v45 = a1[13];
    v58 = v22;
    v59 = v20;
    v57 = a1[15];
    v23 = v57;
    v24 = a1[16];
    v25 = a1[17];
    *(v7 + 18) = sub_2745BBDFC;
    *(v7 + 19) = 0;
    v7[160] = 0;
    *(v7 + 25) = swift_getKeyPath();
    v7[208] = 0;
    *(v7 + 27) = swift_getKeyPath();
    v7[224] = 0;
    *(v7 + 29) = swift_getKeyPath();
    v7[240] = 0;
    v26 = *(v3 + 108);
    *&v7[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
    swift_storeEnumTagMultiPayload();
    v27 = &v7[*(v3 + 112)];
    *v27 = swift_getKeyPath();
    v27[9] = 0;
    *v7 = v44;
    *(v7 + 8) = v60;
    *(v7 + 12) = v43;
    v7[41] = v17;
    *(v7 + 4) = v18;
    v7[40] = v19;
    *(v7 + 6) = v20;
    *(v7 + 8) = v21;
    v7[104] = 0;
    *(v7 + 14) = v22;
    *(v7 + 15) = v23;
    *(v7 + 16) = v24;
    *(v7 + 17) = v25;
    v28 = v16;

    sub_27448E448(&v60, v56);
    sub_2744342DC();
    v29 = v45;

    sub_2745D3E10();
    sub_2745D3E10();
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    *(v7 + 21) = sub_27463950C();
    *(v7 + 22) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
    sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
    v31 = sub_27463950C();
    v33 = v32;

    *(v7 + 23) = v31;
    *(v7 + 24) = v33;
    *(v7 + 7) = v47;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = v46;
    *(v7 + 12) = v29;
    v34 = v53;
    sub_2745D3E68();
    v35 = v55;
    sub_2745D3E10();
    v36 = v54;
    v38 = v51;
    v37 = v52;
    *v54 = v52;
    v36[1] = v38;
    v40 = v49;
    v39 = v50;
    v36[2] = v49;
    v36[3] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953A10);
    sub_2745D3E10();
    sub_274483EE8(v37, v38, v40, v39);
    sub_274483F2C(v37, v38, v40, v39);
    sub_2745D3EC0(v34);
    sub_2745D3EC0(v35);
    return sub_274483F2C(v37, v38, v40, v39);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);

    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745D1B04()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745D1B94, v3, v2);
}

uint64_t sub_2745D1B94()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27448A3C0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_84_0;
  v0[7].receiver = v2;
  v3 = type metadata accessor for TextInputParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745D1D28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745D1DC0, v4, v3);
}

uint64_t sub_2745D1DC0()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745D1B04();
}

id sub_2745D1EB0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  v1 = objc_msgSendSuper2(&v3, sel_variableProvider);

  return v1;
}

uint64_t sub_2745D1F58(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_setVariableProvider_, a1);
  sub_2745D1FA8();
  return swift_unknownObjectRelease();
}

void sub_2745D1FA8()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource];
  if (v1)
  {
    v3 = v1;
    v2 = [v0 variableProvider];
    sub_2745BEA48();
  }
}

void sub_2745D2028(uint64_t a1, unsigned __int8 *a2)
{
  v40.receiver = v2;
  v40.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v40, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  v39 = *(*&v2[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 16);
  *(swift_allocObject() + 16) = v2;

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953978);
  sub_274458A14(&qword_280953980, &qword_280953978);
  v6 = sub_274638FFC();

  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription] = v6;

  v7 = OUTLINED_FUNCTION_6_25();
  v8 = [v7 isMultiline];

  *a2 = v8;
  v9 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  v10 = [v5 variableProvider];
  sub_2745BEA48();
  if (([v5 isProcessing] & 1) != 0 || (v11 = OUTLINED_FUNCTION_6_25(), (v12 = sub_274505FCC(v11)) == 0))
  {

    v12 = MEMORY[0x277D84FA0];
  }

  sub_2745BEB28(v12);
  v13 = *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource];
  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource] = v9;
  v14 = v9;

  swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  sub_274412734(0, &unk_2809539E8);
  v15 = OUTLINED_FUNCTION_25_1();
  v16 = dynamic_cast_existential_0_superclass_unconditional(v15);
  v17 = [objc_allocWithZone(sub_274638A6C()) init];
  swift_unknownObjectRetain();
  sub_274638A5C();
  sub_27463885C();
  swift_allocObject();
  sub_2745CE024(&qword_28094CF90, 255, type metadata accessor for VariableAutocompleter);
  v18 = v14;
  sub_27463886C();
  sub_274638A3C();
  sub_2745CE024(&qword_2809539F8, v19, type metadata accessor for TextInputParameterSummaryEditor);
  OUTLINED_FUNCTION_19_8();
  swift_unknownObjectRetain();
  sub_274638A4C();
  v20 = *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator];
  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator] = v17;
  v21 = v17;

  v22 = OUTLINED_FUNCTION_6_25();
  v23 = [v22 isSecureTextEntry];

  [v16 setSecureTextEntry_];
  v24 = OUTLINED_FUNCTION_6_25();
  v25 = [v24 keyboardType];

  WFKeyboardTypeFromString();
  OUTLINED_FUNCTION_18_15(v26, sel_setKeyboardType_);
  v27 = OUTLINED_FUNCTION_6_25();
  v28 = [v27 textContentType];

  v29 = WFTextContentTypeFromString();
  OUTLINED_FUNCTION_18_15(v30, sel_setTextContentType_);

  v31 = OUTLINED_FUNCTION_6_25();
  v32 = [v31 autocapitalizationType];

  WFAutocapitalizationTypeFromString();
  OUTLINED_FUNCTION_18_15(v33, sel_setAutocapitalizationType_);
  v34 = OUTLINED_FUNCTION_6_25();
  v35 = [v34 autocorrectionType];

  WFAutocorrectionTypeFromString();
  OUTLINED_FUNCTION_18_15(v36, sel_setAutocorrectionType_);
  v37 = OUTLINED_FUNCTION_6_25();
  LODWORD(v35) = [v37 smartQuotesDisabled];

  [v16 setSmartQuotesType_];
  v38 = OUTLINED_FUNCTION_6_25();
  LODWORD(v37) = [v38 smartDashesDisabled];

  [v16 setSmartDashesType_];
}

void sub_2745D25E0(void *a1)
{
  sub_2746382DC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  if (a1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D7CA28]);
    v5 = a1;
    [v4 initWithAttributedString_];
    sub_27463821C();
    a1 = sub_2745CCAB0();

    v6 = OUTLINED_FUNCTION_4_3();
    v7(v6);
  }

  [v1 stageState_];

  *(*&v1[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 24) = 1;
}

void sub_2745D2774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v2, sel_textEntryDidFinish);
  v1 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription;
  if (*&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription])
  {

    sub_274638EBC();
  }

  *&v0[v1] = 0;

  sub_2745CCA38();
  if ((v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] & 1) == 0)
  {
    [v0 completeEditingWithTextAttachmentToEdit_];
  }
}

uint64_t sub_2745D2870()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    return [v0 processesIntoContentItems] ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_2745D28F8(void *a1, void (**a2)(void))
{
  if ([a1 isProcessing])
  {
    a2[2](a2);
  }

  else
  {
    sub_2745CCBBC();
    v4 = [a1 textEntry];
    if (v4)
    {
      [v4 deleteBackward];
      swift_unknownObjectRelease();
    }
  }

  _Block_release(a2);
}

void sub_2745D29A4(void *a1, void (**a2)(void))
{
  if ([a1 isProcessing])
  {
    a2[2](a2);
  }

  else
  {
    sub_2745CCBBC();
  }

  _Block_release(a2);
}

void sub_2745D2A1C(void *a1, void (**a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = sub_2746382DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v44 - v19;
  if (([a1 isProcessing] & 1) != 0 || (v21 = objc_opt_self(), (objc_msgSend(v21, sel_clipboardContainsVariableString) & 1) == 0))
  {
    a2[2](a2);
    goto LABEL_8;
  }

  if (![a1 variableProvider])
  {
    goto LABEL_8;
  }

  v48 = v11;
  v22 = [objc_opt_self() generalPasteboard];
  v23 = [v21 serializedVariableStringFromPasteboard_];

  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_27463825C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_27440CB1C(v9, &unk_2809530C0);
LABEL_10:
    _Block_release(a2);
    return;
  }

  v47 = v23;
  v24 = *(v48 + 32);
  v24(v20, v9, v10);
  v25 = [a1 currentState];
  if (v25)
  {
    v26 = v25;
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v24(v16, v6, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_27440CB1C(v6, &unk_2809530C0);
    }
  }

  v27 = sub_2745CCB48();
  v29 = v28;
  v30 = sub_27463822C();
  v31 = sub_27463822C();
  v32 = [v30 stringByReplacingCharactersInRange:v27 withVariableString:{v29, v31}];

  sub_27463827C();
  v33 = sub_2746382AC();
  v34 = sub_274453594(v33);

  if (v34 >= 2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v35 = *(v48 + 8);
    v35(v13, v10);
    v35(v16, v10);
    v35(v20, v10);
    goto LABEL_10;
  }

  v36 = sub_27463822C();
  v37 = [v36 attributedString];

  v46 = *MEMORY[0x277D74060];
  v45 = [v37 length];
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2745D3C8C;
  *(v39 + 24) = v38;
  v44 = v38;
  aBlock[4] = sub_2745D3C94;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2745CDCCC;
  aBlock[3] = &block_descriptor_39;
  v40 = _Block_copy(aBlock);
  v41 = a1;

  [v37 enumerateAttribute:v46 inRange:0 options:v45 usingBlock:{0, v40}];
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if ((v40 & 1) == 0)
  {
    v42 = [v41 textEntry];
    if (v42)
    {
      [v42 insertAttributedText_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v43 = *(v48 + 8);
    v43(v13, v10);
    v43(v16, v10);
    v43(v20, v10);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_2745D30DC()
{
  sub_2744342DC();
  if (v2)
  {
    sub_274412734(0, &qword_280953970);
    if (swift_dynamicCast())
    {
      sub_2745CD664(v0);
    }
  }

  else
  {
    sub_27440CB1C(v1, &unk_28094A230);
  }
}

void sub_2745D31A4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id sub_2745D3218(char *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TextInputParameterSummaryEditor();
  v7 = [a1 parameter];
  v8 = [v6 variableResultTypeForParameter_];

  result = [a2 shouldDisplayEditorOnInsertionInContext_];
  if (result)
  {
    v10 = *&a1[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit];
    *&a1[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit] = a3;
    v11 = a3;

    return sub_27448A8A0();
  }

  return result;
}

void sub_2745D32C4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  a2[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] = 0;
  [a2 requestTextEntry];
  v14 = [a2 textEntry];
  if (v14)
  {
    [v14 setSelectedRange_];
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    v15 = a1;
    sub_2745CCDC0(v15, a5, a6, a7 & 1);
  }
}

id sub_2745D33C4(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] = 0;
  v7 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState;
  type metadata accessor for CommitState();
  swift_allocObject();
  *&v3[v7] = sub_2745B9364();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator] = 0;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  v8 = objc_msgSendSuper2(&v10, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v8;
}

id sub_2745D34E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745D3590()
{
  sub_27448E094();
  sub_27463880C();
  if (v0 != 2)
  {
    sub_2745CD8D4(v0, 0, 0, 1);
    sub_27448E0E8(v0);
  }
}

uint64_t sub_2745D360C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463992C();
  *a1 = result & 1;
  return result;
}

void sub_2745D3664(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setOverrideVariableName_];
}

uint64_t sub_2745D36D4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_27463B6AC();
  }

  return OUTLINED_FUNCTION_25_1();
}

unint64_t sub_2745D3764()
{
  result = qword_2809538C0;
  if (!qword_2809538C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809538C0);
  }

  return result;
}

uint64_t sub_2745D3800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2745D3840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextFieldView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2745D39BC()
{
  sub_274457F78(319, &qword_280953920, &qword_280953928, 0x277D7C950, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_274457F78(319, &qword_280953930, &unk_28094F530, 0x277D7CA30, type metadata accessor for StoredParameterState);
    if (v1 <= 0x3F)
    {
      sub_2745D3AE4(319, qword_28094E1A8, MEMORY[0x277CE02A8]);
      if (v2 <= 0x3F)
      {
        sub_27453EAA0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2745D3AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_21_2();
    v4 = sub_27463919C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2745D3B70()
{
  result = qword_280953950;
  if (!qword_280953950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953948);
    sub_2745CE024(&qword_280953958, 255, type metadata accessor for TextInputFieldView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953950);
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_0_superclass_unconditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745D3D30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444C34C;
  v2 = OUTLINED_FUNCTION_5_0();

  return v3(v2);
}

uint64_t sub_2745D3E10()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2745D3E68()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2745D3EC0(uint64_t a1)
{
  v2 = type metadata accessor for VariableTextEditor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2745D3F44()
{
  sub_274457F78(319, &qword_280953920, &qword_280953928, 0x277D7C950, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_274457F78(319, &qword_280953930, &unk_28094F530, 0x277D7CA30, type metadata accessor for StoredParameterState);
    if (v1 <= 0x3F)
    {
      sub_274510804();
      if (v2 <= 0x3F)
      {
        sub_27453EAA0();
        if (v3 <= 0x3F)
        {
          sub_2745D3AE4(319, &qword_280949EF8, MEMORY[0x277CDF3E0]);
          if (v4 <= 0x3F)
          {
            sub_2745681F0();
            if (v5 <= 0x3F)
            {
              sub_274481024();
              if (v6 <= 0x3F)
              {
                sub_2745D40E4();
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

void sub_2745D40E4()
{
  if (!qword_280953A50)
  {
    type metadata accessor for TextInputFieldView.CommitState();
    sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
    v0 = sub_27463922C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953A50);
    }
  }
}

unint64_t sub_2745D417C()
{
  result = qword_280953A60;
  if (!qword_280953A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A68);
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953A60);
  }

  return result;
}

void sub_2745D4250()
{
  v1 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_2745D0D1C(v3);
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for TextInputFieldView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_2743F459C();
  sub_2743F45E8(*(v2 + 112), *(v2 + 120));
  sub_2743F45E8(*(v2 + 128), *(v2 + 136));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_2743F459C();

  return swift_deallocObject();
}

void sub_2745D4440(void **a1)
{
  v2 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v2);

  sub_2745D0F88(a1);
}

void sub_2745D44AC()
{
  v0 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v0);
  sub_2745D117C();
}

unint64_t sub_2745D4504()
{
  result = qword_280953AB8;
  if (!qword_280953AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A78);
    sub_274458A14(&unk_280953AC0, &qword_280953A70);
    sub_274458A14(&unk_28094DDA0, &qword_280953AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AB8);
  }

  return result;
}

unint64_t sub_2745D45E8()
{
  result = qword_280953AD8;
  if (!qword_280953AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A78);
    sub_2745D4504();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&unk_28094D030, &qword_28094BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AD8);
  }

  return result;
}

unint64_t sub_2745D4720()
{
  result = qword_280953AE8;
  if (!qword_280953AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A90);
    sub_2745D45E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AE8);
  }

  return result;
}

id OUTLINED_FUNCTION_6_25()
{

  return [v0 (v1 + 780)];
}

id OUTLINED_FUNCTION_18_15(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2745D491C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_2745D495C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2745D49EC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v52 = sub_274639ABC();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_34:
    sub_2745D5948(v47);
    return;
  }

  v6 = sub_27463C27C();
  if (!v6)
  {
    goto LABEL_34;
  }

LABEL_3:
  v71 = MEMORY[0x277D84F90];
  sub_2744514D4(0, v6 & ~(v6 >> 63), 0);
  v63 = v71;
  v66 = sub_2745DDCC0(a1);
  v67 = v7;
  v68 = v8 & 1;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v46[1] = v2;
    v9 = *(v47 + 8);
    v70 = *(v47 + 136);
    v10 = *(v47 + 128);
    v58 = v9;
    v59 = v10;
    v69 = v10;
    v57 = v70;
    v56 = type metadata accessor for ParameterStateStore();
    v11 = 0;
    v50 = (v4 + 8);
    v55 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v53 = v12;
    v49 = a1 + 56;
    v48 = a1 + 64;
    v60 = a1;
    v54 = v6;
    while (!__OFADD__(v11++, 1))
    {
      v14 = v66;
      v15 = v68;
      v62 = v67;
      sub_2745D573C(v66, v67, v68, a1);
      v17 = v16;
      v18 = [v16 key];
      v19 = sub_27463B6AC();
      v21 = v20;

      v22 = *(v58 + v55);
      if (v57)
      {
        v65 = v59;
        v23 = v22;
        v24 = v17;
        sub_274439BF0(&v69, v64, &unk_28094C670);
      }

      else
      {
        v25 = v22;
        v26 = v17;
        sub_274439BF0(&v69, v64, &unk_28094C670);
        sub_27463BC0C();
        v27 = sub_27463A2FC();
        sub_274638CEC();

        v28 = v51;
        sub_274639AAC();
        swift_getAtKeyPath();
        sub_274415174(&v69, &unk_28094C670);
        (*v50)(v28, v52);
      }

      v29 = ParameterStateStore.__allocating_init(action:parameter:undoManager:)();

      v30 = v63;
      v71 = v63;
      v32 = *(v63 + 16);
      v31 = *(v63 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2744514D4((v31 > 1), v32 + 1, 1);
        v30 = v71;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (v30 + 24 * v32);
      v33[4] = v19;
      v33[5] = v21;
      v33[6] = v29;
      v63 = v30;
      if (v61)
      {
        a1 = v60;
        if (!v15)
        {
          goto LABEL_40;
        }

        if (sub_27463C24C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v38 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CA0);
        v39 = sub_27463BA6C();
        sub_27463C2DC();
        v39(v64, 0);
      }

      else
      {
        a1 = v60;
        if (v15)
        {
          goto LABEL_41;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v34 = 1 << *(v60 + 32);
        if (v14 >= v34)
        {
          goto LABEL_36;
        }

        v35 = v14 >> 6;
        v36 = *(v49 + 8 * (v14 >> 6));
        if (((v36 >> v14) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v60 + 36) != v62)
        {
          goto LABEL_38;
        }

        v37 = v36 & (-2 << (v14 & 0x3F));
        if (v37)
        {
          v34 = __clz(__rbit64(v37)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v35 << 6;
          v41 = v35 + 1;
          v42 = (v48 + 8 * v35);
          while (v41 < (v34 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              sub_274468390(v14, v62, 0);
              v34 = __clz(__rbit64(v43)) + v40;
              goto LABEL_30;
            }
          }

          sub_274468390(v14, v62, 0);
        }

LABEL_30:
        v45 = *(a1 + 36);
        v66 = v34;
        v67 = v45;
        v68 = 0;
        v38 = v54;
      }

      if (v11 == v38)
      {
        sub_274468390(v66, v67, v68);
        sub_2745D5948(v47);
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_2745D4F48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_27463B66C();

  v7 = [swift_getObjCClassFromMetadata() colorNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

uint64_t sub_2745D4FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  sub_2745E1974(v7);
  v9 = v8;
  *a1 = sub_274639C6C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  sub_2745D5060(v3, v4, v1, v5, v6, v9, (a1 + 24));
}

uint64_t sub_2745D5060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a2)
  {
    *&v85[0] = a1;
    *(&v85[0] + 1) = a2;
    sub_274412BBC();

    v8 = sub_27463A53C();
    v10 = v9;
    v12 = v11;
    sub_27463A46C();
    v13 = sub_27463A50C();
    v15 = v14;
    v17 = v16;

    sub_274412C10(v8, v10, v12 & 1);

    sub_27463ABCC();
    v18 = sub_27463A4DC();
    v49 = v19;
    v50 = v18;
    LOBYTE(v10) = v20;
    v22 = v21;

    sub_274412C10(v13, v15, v17 & 1);

    LOBYTE(v15) = sub_27463A31C();
    sub_2746390AC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v85[0]) = v10 & 1;
    v79[0] = 0;
    v31 = v10 & 1;
    v32 = v15;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v22 = 0;
    v32 = 0;
    v31 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  sub_274412734(0, qword_28094A770);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v33 = qword_280965DC8;
  v34 = objc_opt_self();
  v35 = v33;
  v36 = sub_2745D4F48(0xD000000000000015, 0x8000000274689B50, v33, [v34 currentTraitCollection]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0);
  sub_2745D5694(a3, v85);
  sub_2745D49EC(a6, a3);
  *&v85[0] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953C70);
  sub_27440CA78(&qword_280953C78, &qword_280953C70);
  v38 = sub_2746387DC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v39 = v36;
    v40 = v36;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(a3 + 64);
  v90[0] = *(a3 + 72);
  v88 = *(a3 + 80);
  v89 = *(a3 + 96);
  v86 = *(a3 + 104);
  v87 = *(a3 + 120);
  KeyPath = swift_getKeyPath();
  v66 = 0;
  v67 = swift_getKeyPath();
  v68 = 0;
  v69 = swift_getKeyPath();
  v70 = 0;
  v71 = swift_getKeyPath();
  v72 = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  sub_274439BF0(v90, v85, &qword_280953C80);
  sub_274439BF0(&v88, v85, &qword_280953C88);
  sub_274439BF0(&v86, v85, &qword_280953C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040);
  sub_27463ACDC();
  v73 = v85[0];
  v74 = v85[1];
  v75 = v85[2];
  v77 = 0;
  v78 = 0;
  v57[0] = a4;
  v57[1] = a5;
  v57[2] = a6;
  v57[3] = v38;
  v57[4] = v41;
  v58 = 0;
  v59 = v90[0];
  v61 = v89;
  v60 = v88;
  v63 = v87;
  v62 = v86;
  v76 = sub_274550400;
  v64 = v40;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();

  v42 = sub_27463979C();
  v44 = v43;
  v45 = swift_getKeyPath();
  sub_274556FE0(v57, v79);
  v81 = v42;
  v82 = v44;
  v83 = v45;
  v84 = 0;
  sub_2745D56CC(v79, v85);
  sub_274439BF0(v85, v53, &qword_280953C90);
  __src[0] = v50;
  __src[1] = v49;
  __src[2] = v31;
  __src[3] = v22;
  __src[4] = v32;
  __src[5] = v24;
  __src[6] = v26;
  __src[7] = v28;
  __src[8] = v30;
  LOBYTE(__src[9]) = 0;
  memcpy(a7, __src, 0x49uLL);
  sub_274439BF0(v53, a7 + 80, &qword_280953C90);
  sub_274439BF0(__src, v55, &qword_280953C98);

  sub_274415174(v85, &qword_280953C90);
  sub_274415174(v53, &qword_280953C90);
  v55[0] = v50;
  v55[1] = v49;
  v55[2] = v31;
  v55[3] = v22;
  v55[4] = v32;
  v55[5] = v24;
  v55[6] = v26;
  v55[7] = v28;
  v55[8] = v30;
  v56 = 0;
  return sub_274415174(v55, &qword_280953C98);
}

uint64_t sub_2745D56CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2745D573C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x277C589E0](a1, a2, v7);
      sub_274412734(0, qword_28094AE40);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_274412734(0, qword_28094AE40);
    if (sub_27463C25C() == *(a4 + 36))
    {
      sub_27463C26C();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_27463BF6C();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_27463BF7C();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t WFDynamicResolveParameter.view(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CC0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v8 = *(v7 + 56);
  *(v3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v9 = v3 + v1[15];
  *v9 = swift_getKeyPath();
  *(v9 + 4) = 0;
  v10 = v3 + v1[16];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v3 + v1[17];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v12 = v0;
  sub_27444A564(v12);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v3 = sub_27463950C();
  v3[1] = v13;
  v14 = [v12 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  v18 = [v12 localizedDescription];
  if (v18)
  {
    v19 = v18;
    v20 = sub_27463B6AC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v3[2] = v15;
  v3[3] = v17;
  v3[4] = v20;
  v3[5] = v22;
  v23 = v3 + v1[12];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v1[11];
  v25 = v12;

  sub_27444AD40(v25, 0, 4, 0, 0, v3 + v24);
  *(v3 + v1[13]) = 0;
  sub_2745D5C40(v3, v6);
  sub_27440CA78(&unk_280953CD0, &unk_280953CC0);
  return sub_27463AE9C();
}

uint64_t sub_2745D5C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id WFDynamicResolveParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v14 variable];
      if (v15)
      {
        v16 = v15;
        [v12 populateWith_];
      }

      else
      {
        v16 = [v2 localizedLabelForState_];
        [v12 populateWithString_];
      }

      swift_unknownObjectRelease();
    }
  }

  return v12;
}

id sub_2745D5E14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFDynamicResolveParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745D5E80()
{
  static WFDynamicResolveParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745D5EA8(uint64_t a1, void *a2)
{
  v4 = [v2 parameter];
  v5 = [objc_allocWithZone(WFParameterValuePickerViewController) initWithParameter:v4 widgetFamily:3 allowsVariables:0 initialCollection:0 currentState:0 delegate:v2];

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v6 = qword_28094BB00;
  v7 = sub_27463B66C();
  v8 = sub_27463B66C();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = sub_27463B6AC();
  v12 = v11;

  sub_2745D6BF4(v10, v12, v5);
  [v5 setVariableProvider_];
  swift_unknownObjectRelease();
  [v5 setVariableUIDelegate_];
  swift_unknownObjectRelease();
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v13 setModalPresentationStyle_];
  v14 = [v13 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setDelegate_];
    v16 = [a2 sourceView];
    [v15 setSourceView_];

    [a2 sourceRect];
    [v15 setSourceRect_];
    [v15 wf_forcePresentationInPresenterSceneIfNeeded];
  }

  v17 = [a2 sourceViewController];
  [v17 presentViewController:v13 animated:1 completion:0];

  v18 = *&v2[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController];
  *&v2[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController] = v13;
}

uint64_t sub_2745D6208()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745D629C, v3, v2);
}

uint64_t sub_2745D629C()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745D63B4;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_40;
  v0[7].receiver = v2;
  v3 = type metadata accessor for DynamicResolveParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745D63B4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745D64B8, v2, v1);
}

uint64_t sub_2745D64B8()
{
  OUTLINED_FUNCTION_79();

  sub_2745D6728(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2745D6598(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745D6630, v4, v3);
}

uint64_t sub_2745D6630()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745D6208();
}

void sub_2745D66DC(uint64_t a1)
{
  [v1 commitState_];
  [v1 completeEditing];

  sub_2745D6728(1);
}

void sub_2745D6728(char a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController];
    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v3 = [v1 parameter];
  v4 = [v3 delegate];

  if (v4)
  {
    v5 = [v1 parameter];
    [v4 dynamicResolveParameterDidEndResolutionSession_];

    swift_unknownObjectRelease();
  }
}

id sub_2745D6804(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DynamicResolveParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745D68BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicResolveParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745D6900()
{
  [v0 completeEditing];

  sub_2745D6728(1);
}

void sub_2745D6A14()
{
  [v0 completeEditing];

  sub_2745D6728(0);
}

uint64_t sub_2745D6B30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2745D6598(v2, v3);
}

void sub_2745D6BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setNoOptionAvailableTitle_];
}

void sub_2745D6C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_27445128C();
    v5 = sub_2745DDDF0(v2);
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        v9 = sub_27463B6AC();
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_27445128C();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_274468390(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_274468390(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_2745D6E90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v197 = a1;
  v198 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D58);
  OUTLINED_FUNCTION_3_24(v2, &__src[6]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D60);
  OUTLINED_FUNCTION_3_24(v5, &__dst[10]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D68);
  OUTLINED_FUNCTION_3_24(v8, &__src[4]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D70);
  OUTLINED_FUNCTION_3_24(v11, &__dst[2]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D78);
  OUTLINED_FUNCTION_3_24(v14, &__dst[5]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D80);
  OUTLINED_FUNCTION_3_24(v17, &__src[11]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D88);
  OUTLINED_FUNCTION_3_24(v20, &__dst[7]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D90);
  OUTLINED_FUNCTION_3_24(v23, &v204);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D98);
  OUTLINED_FUNCTION_3_24(v26, &__src[10]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DA0);
  OUTLINED_FUNCTION_3_24(v29, &__src[5]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v30);
  v32 = v191 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DA8);
  OUTLINED_FUNCTION_3_24(v33, __src);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DB0);
  OUTLINED_FUNCTION_3_24(v36, &__dst[9]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DB8);
  OUTLINED_FUNCTION_3_24(v39, &__src[1]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v40);
  v42 = v191 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DC0);
  OUTLINED_FUNCTION_3_24(v43, &v201);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DC8);
  OUTLINED_FUNCTION_3_24(v46, &__dst[3]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DD0);
  OUTLINED_FUNCTION_3_24(v49, &v198);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v50);
  v52 = v191 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DD8);
  OUTLINED_FUNCTION_3_24(v53, &__dst[4]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DE0);
  OUTLINED_FUNCTION_3_24(v56, &v202);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953DE8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v60);
  OUTLINED_FUNCTION_33_6();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40);
  MEMORY[0x277C575F0](__src);
  v62 = __src[0];
  v63 = [__src[0] valueType];

  switch(v63)
  {
    case 0uLL:
      v64 = OUTLINED_FUNCTION_30_12();
      v196 = sub_2745D86D0(v64, v65, v66);
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v67 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v68);
      OUTLINED_FUNCTION_12_1();
      v69 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v69);

      v70 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      OUTLINED_FUNCTION_43_5();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &unk_28094F530);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v71 = __dst[2];
      v72 = *MEMORY[0x277D7A628];
      v73 = swift_allocObject();
      v74 = OUTLINED_FUNCTION_8_27(v73);
      __src[7] = sub_2745DB934;
      __src[8] = v74;
      LOBYTE(__src[9]) = 0;
      sub_2745DA57C();
      v75 = v72;

      v76 = v71;
      OUTLINED_FUNCTION_34_10();
      sub_27463A86C();
      memcpy(__dst, __src, 0x49uLL);
      sub_2745DA94C(__dst);
      OUTLINED_FUNCTION_36_8(v72, v52);
      OUTLINED_FUNCTION_21_16();
      goto LABEL_6;
    case 1uLL:
      OUTLINED_FUNCTION_23_15();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v138 = *(v137 - 256);
      OUTLINED_FUNCTION_12_1();
      v139 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v139);
      OUTLINED_FUNCTION_12_1();
      v140 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v140);

      v141 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_28094F9C0);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v104 = __dst[2];
      type metadata accessor for CollectionPropertyListItemConfiguration();
      OUTLINED_FUNCTION_14_17();
      sub_2745DA8A8(v142, v143, v144);
      OUTLINED_FUNCTION_21_2();
      v145 = sub_27463979C();
      OUTLINED_FUNCTION_40_8(v145, v146);
      v110 = "Configuration";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953E08);
      OUTLINED_FUNCTION_20_18(&qword_280953E00);
      OUTLINED_FUNCTION_13_18();
      v147 = v191[3];
      sub_27463A86C();

      OUTLINED_FUNCTION_36_8(v147, v194);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA0D0();
      OUTLINED_FUNCTION_34_10();
      sub_274639DDC();
      OUTLINED_FUNCTION_5_37("Configuration", &__dst[8]);
      OUTLINED_FUNCTION_15_20();
      goto LABEL_9;
    case 2uLL:
      OUTLINED_FUNCTION_23_15();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v100 = *(v99 - 256);
      OUTLINED_FUNCTION_12_1();
      v101 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v101);
      OUTLINED_FUNCTION_12_1();
      v102 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v102);

      v103 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_28094F9B0);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v104 = __dst[2];
      type metadata accessor for CollectionPropertyListItemConfiguration();
      OUTLINED_FUNCTION_14_17();
      sub_2745DA8A8(v105, v106, v107);
      OUTLINED_FUNCTION_21_2();
      v108 = sub_27463979C();
      OUTLINED_FUNCTION_40_8(v108, v109);
      v110 = "editor.list.value.dictionary";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953E40);
      OUTLINED_FUNCTION_20_18(&qword_280953E38);
      OUTLINED_FUNCTION_13_18();
      v111 = v191[2];
      sub_27463A86C();

      OUTLINED_FUNCTION_22_10(v111, __dst);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_16();
      sub_2745DA708(v112, v113, v114, v115);
      sub_2745DA2C8();
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_5_37("editor.list.value.dictionary", &__dst[8]);
      OUTLINED_FUNCTION_21_16();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v110);
      OUTLINED_FUNCTION_5_37(v104, &v203);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v104);
      goto LABEL_12;
    case 3uLL:
      v116 = OUTLINED_FUNCTION_30_12();
      v196 = sub_2745D86D0(v116, v117, v118);
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v119 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v120 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v120);
      OUTLINED_FUNCTION_12_1();
      v121 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v121);

      v122 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      OUTLINED_FUNCTION_43_5();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &unk_28094F530);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v71 = __dst[2];
      v123 = *MEMORY[0x277D7A640];
      v124 = swift_allocObject();
      v125 = OUTLINED_FUNCTION_8_27(v124);
      __src[7] = sub_2745DA940;
      __src[8] = v125;
      LOBYTE(__src[9]) = 0;
      sub_2745DA57C();
      v126 = v123;

      v127 = v71;
      OUTLINED_FUNCTION_34_10();
      sub_27463A86C();
      memcpy(__dst, __src, 0x49uLL);
      sub_2745DA94C(__dst);
      OUTLINED_FUNCTION_36_8(v123, v52);
      OUTLINED_FUNCTION_15_20();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v128, v129, v130, v131);
      v132 = v193;
      sub_274639DDC();
      OUTLINED_FUNCTION_5_37(v132, &__dst[6]);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v132);
      OUTLINED_FUNCTION_5_37(v71, &v203);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v71);
      goto LABEL_12;
    case 4uLL:
      OUTLINED_FUNCTION_23_15();
      v78 = *(v77 - 256);

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v80 = *(v79 - 256);
      OUTLINED_FUNCTION_12_1();
      v81 = swift_allocObject();
      v81[2] = 0;
      v81[3] = 0;
      v81[4] = v32;
      v81[5] = v63;
      v81[6] = v80;
      OUTLINED_FUNCTION_12_1();
      v82 = swift_allocObject();
      v82[2] = 0;
      v82[3] = 0;
      v82[4] = v32;
      v82[5] = v63;
      v82[6] = v80;

      v83 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EB0);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v84 = __dst[0];
      v85 = __dst[1];
      v86 = __dst[2];
      __dst[0] = v78;
      __dst[1] = v84;
      __dst[2] = v85;
      __dst[3] = v86;
      sub_2745DA6B4();
      OUTLINED_FUNCTION_13_18();
      sub_27463A86C();

      OUTLINED_FUNCTION_36_8(v42, v192);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v87, v88, v89, v90);
      OUTLINED_FUNCTION_16_20();
      sub_2745DA708(v91, v92, v93, v94);
      OUTLINED_FUNCTION_28_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v95, v96, &qword_280953DB0);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      sub_27440CB1C(v62, &qword_280953DB0);
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v97, v98, &qword_280953DE0);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      sub_27440CB1C(v61, &qword_280953DE0);
      goto LABEL_12;
    case 5uLL:
      OUTLINED_FUNCTION_23_15();
      v149 = *(v148 - 256);

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v151 = *(v150 - 256);
      v152 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v153 = swift_allocObject();
      v153[2] = 0;
      v153[3] = 0;
      v153[4] = v63;
      v153[5] = v151;
      v153[6] = v152;
      OUTLINED_FUNCTION_12_1();
      v154 = swift_allocObject();
      v154[2] = 0;
      v154[3] = 0;
      v154[4] = v63;
      v154[5] = v151;
      v154[6] = v152;

      v155 = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EA8);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v156 = __dst[0];
      v157 = __dst[1];
      v158 = __dst[2];
      __dst[0] = v149;
      __dst[1] = v156;
      __dst[2] = v157;
      __dst[3] = v158;
      sub_2745DA7C0();
      OUTLINED_FUNCTION_13_18();
      sub_27463A86C();

      sub_2744626F0(v32, v192, &qword_280953DA0);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_16();
      sub_2745DA708(v159, v160, v161, v162);
      OUTLINED_FUNCTION_16_20();
      sub_2745DA708(v163, &qword_280953DA0, &unk_27465EA68, v164);
      OUTLINED_FUNCTION_28_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v165, v166, &qword_280953DB0);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      sub_27440CB1C(v62, &qword_280953DB0);
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v167, v168, &qword_280953DE0);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      sub_27440CB1C(v61, &qword_280953DE0);
      v169 = v32;
      v170 = &qword_280953DA0;
      return sub_27440CB1C(v169, v170);
    case 6uLL:
      v171 = OUTLINED_FUNCTION_30_12();
      v173 = *(v172 - 256);
      v176 = sub_2745D86D0(v171, v174, v175);
      v178 = v177;
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v180 = *(v179 - 256);
      v181 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v182 = swift_allocObject();
      v182[2] = 0;
      v182[3] = 0;
      v182[4] = v63;
      v182[5] = v180;
      v182[6] = v181;
      OUTLINED_FUNCTION_12_1();
      v183 = swift_allocObject();
      v183[2] = 0;
      v183[3] = 0;
      v183[4] = v63;
      v183[5] = v180;
      v183[6] = v181;

      v184 = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EA0);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      sub_27450B23C(v176, v178, v173, __dst[0], __dst[1], __dst[2], __src);
      sub_2745DA274();
      OUTLINED_FUNCTION_13_18();
      v185 = v191[1];
      sub_27463A86C();
      memcpy(__dst, __src, 0x61uLL);
      sub_2745DA8EC(__dst);
      OUTLINED_FUNCTION_22_10(v185, __dst);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_16();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v186, v187, v188, v189);
      sub_2745DA2C8();
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_5_37(v61, &__dst[8]);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v61);
      OUTLINED_FUNCTION_5_37(v181, &v203);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v181);
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA0D0();
      v133 = v195;
      sub_274639DDC();
      OUTLINED_FUNCTION_22_10(v133, &__dst[8]);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      v134 = v196;
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_7_1();
      sub_27440CB1C(v135, v136);
      OUTLINED_FUNCTION_22_10(v134, &v203);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
LABEL_12:
      OUTLINED_FUNCTION_7_1();
      return sub_27440CB1C(v169, v170);
  }
}

uint64_t sub_2745D86D0(void *a1, void *a2, void *a3)
{
  v6 = objc_opt_self();
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40);
  MEMORY[0x277C575F0](v13, v7);
  v8 = v13[0];
  v9 = [v13[0] valueType];

  v10 = [v6 localizedTitleForValueType_];
  v11 = sub_27463B6AC();

  return v11;
}

uint64_t sub_2745D87A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_2746382DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8);
  MEMORY[0x277C575F0](&v17, v13);
  v14 = v17;
  if (v17)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_27463828C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_27440CB1C(v8, &unk_2809530C0);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_2745D89A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
  v2 = sub_27463920C();
  v16 = *v0;
  v15 = *(v0 + 16);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x49uLL);
  v14 = *(v1 + 24);
  v4 = *MEMORY[0x277D7A5C0];
  sub_27448E448(&v16, __dst);
  sub_2744626F0(&v15, __dst, &unk_280953A00);
  sub_2745DB640(v1, __dst);
  sub_2745DB678(&v14, __dst);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745DA8A8(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  v5 = v4;
  v6 = sub_27463979C();
  __src[2] = v16;
  *&__src[0] = v2;
  BYTE8(__src[0]) = 2;
  __src[1] = 0uLL;
  LOWORD(__src[3]) = 256;
  BYTE2(__src[3]) = 0;
  *(&__src[3] + 1) = 0;
  LOBYTE(__src[4]) = 0;
  *(&__src[4] + 1) = v15;
  __src[5] = xmmword_274653F30;
  *&__src[6] = sub_2745DB638;
  *(&__src[6] + 1) = v3;
  *&__src[7] = v14;
  *(&__src[7] + 1) = v5;
  __src[8] = xmmword_27464F170;
  *&__src[9] = v6;
  *(&__src[9] + 1) = v7;
  __dst[0] = *(v1 + 32);
  *&__dst[1] = *(v1 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8);
  MEMORY[0x277C575F0](&v12, v8);
  v9 = v12;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v1, 0x49uLL);
  sub_2745DB640(v1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953F70);
  sub_274506594();
  sub_2745DB750();
  sub_27463AA4C();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_274510984(__dst);
}

uint64_t sub_2745D8CA4()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_274412734(0, &unk_28094F530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  sub_27463896C();

  sub_27463BE8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8);
  return sub_27463AEBC();
}

uint64_t sub_2745D8E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2746382DC();
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8);
  MEMORY[0x277C575F0](&v12, v8);
  v9 = v12;
  if (v12)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v11 + 32))(v7, v4, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_27463828C();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_27440CB1C(v4, &unk_2809530C0);
    }
  }

  sub_27463897C();
}

uint64_t sub_2745D90AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a3;
  *&v70 = a4;
  v67 = a1;
  v68 = a2;
  v71 = a5;
  v5 = sub_274637E2C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274637F2C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_274412734(0, &unk_28094D230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746541E0;
  v12 = *MEMORY[0x277D7CE70];
  v13 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x6E61656C6F6F62;
  *(inited + 48) = 0xE700000000000000;
  v14 = *MEMORY[0x277D7CE38];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110);
  *(inited + 80) = &unk_288361A88;
  v16 = *MEMORY[0x277D7CE30];
  v65 = v15;
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27464AEE0;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  v64 = sub_27463B70C();
  v22 = v21;
  v23 = sub_27463B70C();
  v25 = v24;
  v26 = v10;
  sub_274637F0C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v27 = qword_28094BB00;
  v28 = [qword_28094BB00 bundleURL];
  sub_274637E0C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  *(v17 + 32) = sub_2745DB4BC(v64, v22, v23, v25, 0, 0, v26, v7);
  v30 = sub_27463B70C();
  v32 = v31;
  v33 = sub_27463B70C();
  v35 = v34;
  sub_274637F0C();
  v36 = [v27 bundleURL];
  sub_274637E0C();

  v37 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  *(v17 + 40) = sub_2745DB4BC(v30, v32, v33, v35, 0, 0, v26, v7);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F98);
  *(inited + 120) = v17;
  v39 = *MEMORY[0x277D7CE00];
  *(inited + 144) = v38;
  *(inited + 152) = v39;
  *(inited + 160) = 0x65736C6166;
  *(inited + 168) = 0xE500000000000000;
  v40 = *MEMORY[0x277D7CE20];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v40;
  sub_274412734(0, &qword_280953FA0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v39;
  v43 = v40;
  v44 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v45 = sub_27463BA4C();

  v46 = v67;
  v47 = sub_2745F3630(v67, v45);
  sub_2745D6C58(v47);
  v49 = v48;

  *(inited + 224) = v65;
  *(inited + 200) = v49;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  sub_27463B4DC();
  v50 = sub_274497328();
  v66 = [objc_allocWithZone(MEMORY[0x277D7C3E8]) initWithDefinition_];

  sub_27463B9CC();
  v51 = v70;
  v52 = v70;

  v53 = v68;

  v54 = v69;

  v55 = sub_27463B9BC();
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D85700];
  v56[2] = v55;
  v56[3] = v57;
  v56[4] = v46;
  v56[5] = v53;
  v56[6] = v54;
  v56[7] = v51;

  v58 = v52;
  v59 = sub_27463B9BC();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = v57;
  v60[4] = v46;
  v60[5] = v53;
  v60[6] = v54;
  v60[7] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
  sub_27463AF0C();
  v70 = v72;
  v61 = v73;
  type metadata accessor for BindingParameterStateDataSource();
  v62 = swift_allocObject();
  *(v62 + 16) = v70;
  *(v62 + 32) = v61;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  sub_27458265C();
  return sub_27444AA9C(v66, 0, 4, 0, 0, v71);
}

void sub_2745D9728(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953FA8);
  MEMORY[0x277C575F0](v8, v5);
  v6 = v8[0];
  if (v8[0])
  {
    v7 = sub_2745D97A0();
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

id sub_2745D97A0()
{
  v1 = [v0 variable];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithVariable_];
  }

  else
  {
    v4 = [v0 value];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 number];

      if (v6)
      {
        [v6 BOOLValue];
      }
    }

    v2 = sub_27463B66C();

    v3 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];
  }

  v7 = v3;

  return v7;
}

uint64_t sub_2745D98AC(void *a1)
{
  if (*a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    sub_2745D9960();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D7C198]) initWithBoolValue_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953FA8);
  return sub_27463AEBC();
}

id sub_2745D9960()
{
  v1 = [v0 variable];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C198]) initWithVariable_];

    return v3;
  }

  else
  {
    v5 = [v0 value];
    if (!v5)
    {
      sub_274412734(0, &unk_28094D720);
      v5 = sub_27463BFAC();
    }

    v6 = sub_27463B6AC();
    v8 = v7;

    if (v6 == 1702195828 && v8 == 0xE400000000000000)
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_27463C6BC();
    }

    v11 = objc_allocWithZone(MEMORY[0x277D7C198]);

    return [v11 initWithBoolValue_];
  }
}

uint64_t sub_2745D9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_274412734(0, &unk_28094D230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v10 = *MEMORY[0x277D7CE70];
  v11 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x656C626169726176;
  *(inited + 48) = 0xE800000000000000;
  v12 = *MEMORY[0x277D7CE20];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  sub_274412734(0, &unk_280953F60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v10;
  v15 = v12;
  v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v17 = sub_27463BA4C();

  v18 = sub_2745F3630(a1, v17);
  sub_2745D6C58(v18);
  v20 = v19;

  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110);
  *(inited + 80) = v20;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  sub_27463B4DC();
  v21 = sub_274497328();
  v22 = [objc_allocWithZone(MEMORY[0x277D7CA20]) initWithDefinition_];

  sub_27463B9CC();
  v23 = a4;

  v24 = sub_27463B9BC();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = a1;
  v25[5] = a2;
  v25[6] = a3;
  v25[7] = a4;

  v27 = v23;
  v28 = sub_27463B9BC();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v26;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v29[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
  sub_27463AF0C();
  type metadata accessor for BindingParameterStateDataSource();
  v30 = swift_allocObject();
  *(v30 + 16) = v33;
  *(v30 + 32) = v34;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  sub_27458265C();
  return sub_27444AD54(v22, 0, 4, 0, 0, a5);
}

void *sub_2745D9E7C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953FB8);
  result = MEMORY[0x277C575F0](v7, v5);
  *a4 = v7[0];
  return result;
}

uint64_t sub_2745D9ED4(void *a1)
{
  if (*a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953FB8);
  return sub_27463AEBC();
}

uint64_t sub_2745D9FAC()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_27463C0AC();
  v1 = sub_27463AF4C();
  MEMORY[0x277C575F0](&v3, v1);
  return v3;
}

uint64_t sub_2745DA008()
{
  sub_27463C0AC();
  sub_27463AF4C();
  return sub_27463AEBC();
}

uint64_t sub_2745DA068@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionPropertyListItemConfiguration();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

unint64_t sub_2745DA0D0()
{
  result = qword_280953DF8;
  if (!qword_280953DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D68);
    sub_274458A14(&qword_280953E00, &unk_280953E08);
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953DF8);
  }

  return result;
}

unint64_t sub_2745DA1BC()
{
  result = qword_280953E18;
  if (!qword_280953E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D88);
    sub_2745DA708(&qword_280953E20, &qword_280953D98, &unk_27465EA60, sub_2745DA274);
    sub_2745DA2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E18);
  }

  return result;
}

unint64_t sub_2745DA274()
{
  result = qword_280953E28;
  if (!qword_280953E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E28);
  }

  return result;
}

unint64_t sub_2745DA2C8()
{
  result = qword_280953E30;
  if (!qword_280953E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D70);
    sub_274458A14(&qword_280953E38, &qword_280953E40);
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E30);
  }

  return result;
}

unint64_t sub_2745DA3B4()
{
  result = qword_280953E48;
  if (!qword_280953E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D60);
    sub_2745DA0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E48);
  }

  return result;
}

unint64_t sub_2745DA440()
{
  result = qword_280953E50;
  if (!qword_280953E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DE0);
    sub_2745DA4CC();
    sub_2745DA5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E50);
  }

  return result;
}

unint64_t sub_2745DA4CC()
{
  result = qword_280953E58;
  if (!qword_280953E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DD8);
    sub_2745DA708(&qword_280953E60, &unk_280953DE8, &unk_27465EAB0, sub_2745DA57C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E58);
  }

  return result;
}

unint64_t sub_2745DA57C()
{
  result = qword_280953E68;
  if (!qword_280953E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E68);
  }

  return result;
}

unint64_t sub_2745DA5D0()
{
  result = qword_280953E70;
  if (!qword_280953E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DB0);
    sub_2745DA708(&qword_280953E78, &qword_280953DB8, &unk_27465EA80, sub_2745DA6B4);
    sub_2745DA708(&qword_280953E88, &qword_280953DA0, &unk_27465EA68, sub_2745DA7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E70);
  }

  return result;
}

unint64_t sub_2745DA6B4()
{
  result = qword_280953E80;
  if (!qword_280953E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E80);
  }

  return result;
}

uint64_t sub_2745DA708(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745DA7C0()
{
  result = qword_280953E90;
  if (!qword_280953E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E90);
  }

  return result;
}

unint64_t sub_2745DA814()
{
  result = qword_280953E98;
  if (!qword_280953E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D90);
    sub_2745DA1BC();
    sub_2745DA3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E98);
  }

  return result;
}

uint64_t sub_2745DA8A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2745DAA10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2745DAA94()
{
  result = qword_280953F48;
  if (!qword_280953F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953F50);
    sub_2745DA440();
    sub_2745DA814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F48);
  }

  return result;
}

id sub_2745DABB8()
{
  sub_274412734(0, &unk_28094D230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v2 = *MEMORY[0x277D7CE70];
  v3 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x656C626169726176;
  *(inited + 48) = 0xE800000000000000;
  v4 = *MEMORY[0x277D7CE20];
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  sub_274412734(0, &unk_280953F60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v2;
  v7 = v4;
  v8 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v9 = sub_27463BA4C();

  v10 = sub_2745F3630(*v0, v9);
  sub_2745D6C58(v10);
  v12 = v11;

  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110);
  *(inited + 80) = v12;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  sub_27463B4DC();
  v13 = sub_274497328();
  v14 = [objc_allocWithZone(MEMORY[0x277D7CA20]) initWithDefinition_];

  return v14;
}

uint64_t sub_2745DADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_2745DABB8();
  v4 = v2[1];
  v33 = *v2;
  v31 = v2[3];
  v32 = v4;
  v5 = v2[4];
  sub_27463B9CC();
  sub_2744626F0(&v33, &v29, &unk_280953A00);

  sub_27445E9E4(&v32, &v29);
  v6 = *(a1 + 16);
  v7 = sub_27463C0AC();
  v8 = *(*(v7 - 8) + 16);
  v8(&v29, &v31, v7);

  v9 = sub_27463B9BC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  v12 = *(v2 + 1);
  *(v10 + 40) = *v2;
  *(v10 + 56) = v12;
  *(v10 + 72) = *(v2 + 2);
  sub_2744626F0(&v33, &v29, &unk_280953A00);

  sub_27445E9E4(&v32, &v29);
  v8(&v29, &v31, v7);

  v13 = sub_27463B9BC();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = MEMORY[0x277D85700];
  *(v14 + 32) = v6;
  v15 = *(v2 + 1);
  *(v14 + 40) = *v2;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
  sub_27463AF0C();
  v26 = v29;
  v16 = v30;
  type metadata accessor for BindingParameterStateDataSource();
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 32) = v16;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  sub_27458265C();
  v18 = sub_2745DB294();
  if (v5)
  {
    v20 = v18;
    v21 = v19;
    v22 = *(v5 + 16);
    v23 = *(v5 + 24);

    return sub_27444AA9C(v27, v20, v21, v22, v23, a2);
  }

  else
  {
    type metadata accessor for CollectionPropertyListItemConfiguration();
    sub_2745DA8A8(&unk_28094A750, v25, type metadata accessor for CollectionPropertyListItemConfiguration);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745DB100@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionValueEditor();
  result = sub_2745D9FAC();
  *a1 = result;
  return result;
}

uint64_t sub_2745DB138(void *a1)
{
  if (!*a1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

LABEL_9:
    type metadata accessor for CollectionValueEditor();
    return sub_2745DA008();
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (swift_dynamicCastUnknownClass())
    {
      swift_unknownObjectRetain();
    }

    goto LABEL_9;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 variable];
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];

  type metadata accessor for CollectionValueEditor();
  sub_2745DA008();

  return swift_unknownObjectRelease();
}

uint64_t sub_2745DB294()
{
  v0 = sub_2745D9FAC();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 values];
      sub_274412734(0, &qword_28094F988);
      v4 = sub_27463B81C();

      v5 = sub_274453594(v4);
LABEL_8:
      v10 = v5;

      v11 = sub_27452995C(v10);

      return v11;
    }
  }

  v6 = sub_2745D9FAC();
  if (v6)
  {
    v1 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 keyValuePairs];
      sub_274412734(0, &unk_28094B310);
      v9 = sub_27463B81C();

      v5 = sub_274453594(v9);
      goto LABEL_8;
    }
  }

  return sub_27452995C(0);
}

uint64_t objectdestroy_87Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_2745DB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_27463B66C();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_27463B66C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_27463B66C();

LABEL_6:
  v17 = sub_274637EFC();
  v18 = sub_274637DFC();
  v19 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:v17 bundleURL:v18];

  v20 = sub_274637E2C();
  (*(*(v20 - 8) + 8))(a8, v20);
  v21 = sub_274637F2C();
  (*(*(v21 - 8) + 8))(a7, v21);
  return v19;
}

uint64_t sub_2745DB678(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFTextFieldKeyboardType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_93Tm()
{

  sub_2743F459C();

  return swift_deallocObject();
}

unint64_t sub_2745DB750()
{
  result = qword_280953F80;
  if (!qword_280953F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953F70);
    sub_2745DB7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F80);
  }

  return result;
}

unint64_t sub_2745DB7D4()
{
  result = qword_280953F88;
  if (!qword_280953F88)
  {
    sub_274412734(255, &unk_28094F530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F88);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 OUTLINED_FUNCTION_1_39()
{
  result = *(v0 - 192);
  v2 = *(v0 - 176);
  *(v0 - 296) = result;
  *(v0 - 280) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2744626F0(a1, v4, v2);
}

void *OUTLINED_FUNCTION_8_27(void *result)
{
  result[2] = v2;
  result[3] = v4;
  result[4] = v5;
  *(v7 - 296) = 0;
  *(v7 - 296) = *(v7 - 352);
  *(v7 - 288) = v3;
  *(v7 - 280) = v1;
  *(v7 - 272) = v6;
  *(v7 - 264) = v2;
  *(v7 - 256) = v4;
  *(v7 - 248) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_27463AEEC();
}

uint64_t OUTLINED_FUNCTION_20_18(unint64_t *a1)
{

  return sub_274458A14(a1, v1);
}

uint64_t OUTLINED_FUNCTION_22_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2744626F0(a1, v4, v2);
}

void OUTLINED_FUNCTION_23_15()
{
  *(v3 - 192) = v2;
  *(v3 - 184) = v1;
  *(v3 - 176) = v0;
}

void *OUTLINED_FUNCTION_26_13(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  result[6] = v3;
  return result;
}

void *OUTLINED_FUNCTION_27_13(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  result[6] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_13(unint64_t *a1, uint64_t *a2)
{

  return sub_274458A14(a1, a2);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_274639DDC();
}

void OUTLINED_FUNCTION_33_6()
{
  *(v3 - 192) = v2;
  *(v3 - 184) = v1;
  *(v3 - 176) = v0;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, uint64_t a2)
{

  return sub_2744626F0(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1)
{

  return sub_27440CB1C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t result, uint64_t a2)
{
  *(v6 - 192) = v5;
  *(v6 - 184) = v2;
  *(v6 - 176) = v3;
  *(v6 - 168) = v4;
  *(v6 - 160) = result;
  *(v6 - 152) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_27463AF0C();
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return sub_27463AF0C();
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_27463AEDC();
}

uint64_t sub_2745DBCC8(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_27463C44C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2745DBE3C(uint64_t a1)
{
  v5 = MEMORY[0x277D84F90];
  sub_274453594(a1);
  sub_27463C44C();
  result = sub_274453594(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x277C58B20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_27463C41C();
    sub_27463C46C();
    sub_27463C47C();
    result = sub_27463C42C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2745DBF74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_27463C27C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    result = sub_27463C44C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for WFEditorActionItem();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BE00);
        swift_dynamicCast();
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

uint64_t sub_2745DC0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_27445132C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F550);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27445132C((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2745DC1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2744514F4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2744514F4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_274464A50(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2745DC2EC()
{
  sub_274639ABC();
  OUTLINED_FUNCTION_4_34();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  if (*(v1 + 96) == 1)
  {
    OUTLINED_FUNCTION_4_10();
    sub_27440CBD8(v8);
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_4_10();
    sub_2744627C0(v10, v11, v12, v13, 0);
    (*(v3 + 8))(v7, v0);
  }

  OUTLINED_FUNCTION_4_10();
}

uint64_t sub_2745DC448@<X0>(uint64_t a1@<X8>)
{
  sub_274639ABC();
  OUTLINED_FUNCTION_4_34();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for ContactPickerView(0);
  sub_2745DDD20(v2 + *(v13 + 36), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_274462750(v12, a1);
  }

  sub_27463BC0C();
  v15 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v1);
}

uint64_t sub_2745DC5E8()
{
  v1 = *(v0 + 8);
  v2 = qword_28094A100;
  v3 = &selRef_dropTargetUpdated;
  if ([*(v1 + qword_28094A100) allowsMultipleValues])
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
    [v4 setModalPresentationStyle_];
    v5 = [objc_allocWithZone(WFRecipientFieldViewController) init];
    v6 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0);
    MEMORY[0x277C575F0](&v50, v7);
    if (v50)
    {
      v3 = v2;
      v8 = v50;
      v9 = sub_2745DDBAC(v8);
      if (v9)
      {
        v10 = sub_2745DBE3C(v9);

        if (v10)
        {
          sub_274412734(0, &qword_280950570);
          v11 = sub_27463B7FC();

          [v5 setEntries_];

          v8 = v11;
        }
      }

      v2 = v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954118);
    sub_27463A2EC();
    v12 = v51;
    [v5 setDelegate_];

    v13 = *(v1 + v2);
    sub_274414140();
    v15 = v14;

    v16 = *(v15 + 16);
    if (!v16)
    {

      v38 = MEMORY[0x277D84F90];
LABEL_33:
      sub_2745E1BB4(v38);
      sub_274412734(0, &unk_28094C200);
      sub_27446839C();
      v39 = sub_27463BA3C();

      [v5 setSupportedPersonProperties_];

      [v5 setAllowsCustomHandles_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_274648560;
      *(v40 + 32) = v5;
      sub_274412734(0, &qword_280954130);
      v41 = v5;
      v42 = sub_27463B7FC();

      [v4 setViewControllers_];

      return v4;
    }

    v43 = v2;
    v44 = v1;
    v45 = v4;
    *&v51 = MEMORY[0x277D84F90];
    v47 = v15;
    sub_27463C44C();
    result = sub_2745DDDB0();
    v19 = result;
    v1 = v15;
    v21 = v20;
    v22 = 0;
    v23 = v1 + 56;
    v46 = v1 + 64;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v19 < 1 << *(v1 + 32))
      {
        v2 = v19 >> 6;
        v3 = 1 << v19;
        if ((*(v23 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }

        if (*(v1 + 36) != v21)
        {
          goto LABEL_36;
        }

        v48 = v22;
        v49 = v18;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        result = sub_27463C42C();
        if (v49)
        {
          goto LABEL_40;
        }

        v24 = 1 << *(v1 + 32);
        if (v19 >= v24)
        {
          goto LABEL_37;
        }

        v25 = *(v23 + 8 * v2);
        if ((v25 & v3) == 0)
        {
          goto LABEL_38;
        }

        if (*(v1 + 36) != v21)
        {
          goto LABEL_39;
        }

        v26 = v25 & (-2 << (v19 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v3 = v2 << 6;
          v27 = v2 + 1;
          v28 = (v46 + 8 * v2);
          while (v27 < (v24 + 63) >> 6)
          {
            v29 = *v28++;
            v2 = v29;
            v3 += 64;
            ++v27;
            if (v29)
            {
              result = sub_274468390(v19, v21, 0);
              v1 = v47;
              v24 = __clz(__rbit64(v2)) + v3;
              goto LABEL_23;
            }
          }

          result = sub_274468390(v19, v21, 0);
          v1 = v47;
        }

LABEL_23:
        v22 = v48 + 1;
        if (v48 + 1 == v16)
        {

          v38 = v51;
          v1 = v44;
          v4 = v45;
          v2 = v43;
          goto LABEL_33;
        }

        v18 = 0;
        v21 = *(v1 + 36);
        v19 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CBDC18]) *(v3 + 896)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954118);
  sub_27463A2EC();
  v30 = v51;
  [v4 setDelegate_];

  v31 = *(v1 + v2);
  sub_274414F9C();
  v33 = v32;

  if ((WFCNContactIsAuthorizedToAccessContact() & 1) != 0 || *(v33 + 16))
  {
    sub_2745DDC20(v33, v4);
  }

  sub_2745DC1EC(v33);
  v34 = sub_27463B7FC();

  v35 = WFPredicateForEnablingPerson();

  [v4 setPredicateForEnablingContact_];
  sub_2745DC1EC(v33);

  v36 = sub_27463B7FC();

  v37 = WFPredicateForSelectionOfPerson();

  [v4 setPredicateForSelectionOfContact_];
  if ([v4 respondsToSelector_])
  {
    [v4 _prepareViewController];
  }

  return v4;
}

id sub_2745DCC50()
{
  v1 = type metadata accessor for ContactPickerView(0);
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  sub_2745DDAEC(v0, v4 - v3);
  v6 = type metadata accessor for ContactPickerView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_2745DDAEC(v5, v7 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2745DDB50(v5);
  return v8;
}

uint64_t sub_2745DCD0C()
{
  v1 = sub_2746396DC();
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent + 48);
  if (v7)
  {

    v7(v8);

    return sub_274406A94(v7);
  }

  else
  {
    sub_2745DC2EC();
    if (v11)
    {
      v10();
    }

    else
    {
      sub_2745DC448(v6);
      MEMORY[0x277C575F0](v3);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_2744926AC(v6);
    }
  }
}

uint64_t sub_2745DCF00(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  *(inited + 32) = a2;
  v9[2] = v4;
  v6 = a2;
  v7 = sub_2745DBCC8(sub_2745DDDF4, v9, inited);
  swift_setDeallocating();
  sub_2744EBB98();
  sub_274414414(v7);
}

uint64_t sub_2745DD030(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  v5 = *(*(v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent + 8) + qword_28094A100);
  v6 = sub_27441489C(a2);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_274648560;
    *(v7 + 32) = v6;
    v8 = v6;
    sub_274414414(v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    v11 = [a2 contact];
    *(inited + 32) = v11;
    MEMORY[0x28223BE20](v11);
    v13[2] = v4;
    v12 = sub_2745DBCC8(sub_2745DDD90, v13, inited);
    swift_setDeallocating();
    sub_2744EBB98();
    sub_274414414(v12);
  }
}

uint64_t sub_2745DD22C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2746396DC();
  v7 = OUTLINED_FUNCTION_53_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for ContactPickerView(0);
  v13 = OUTLINED_FUNCTION_53_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = (v15 - v14);
  if ((a2 & 1) == 0)
  {
    [a1 commitRemainingText];
    v17 = [a1 entries];
    sub_274412734(0, &qword_280950570);
    OUTLINED_FUNCTION_21_2();
    v18 = sub_27463B81C();

    v19 = v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
    sub_2745DDAEC(v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent, v16);
    [*(*(v19 + 8) + qword_28094A100) multipleStateClass];
    swift_getObjCClassMetadata();
    sub_274412734(0, &unk_28094A220);
    OUTLINED_FUNCTION_21_2();
    if (swift_dynamicCastMetatype())
    {

      if (v18 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
        OUTLINED_FUNCTION_21_2();
        sub_27463C57C();
      }

      else
      {
        sub_27463C6CC();
      }

      v20 = sub_274467468();
    }

    else
    {

      v20 = 0;
    }

    v21 = v16[3];
    v22 = v16[4];
    v29[1] = v16[2];
    v29[2] = v21;
    v29[3] = v22;
    v29[0] = v20;
    v23 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0);
    sub_27463AEBC();
    sub_2745DDB50(v16);
  }

  v24 = *(v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent + 48);
  if (v24)
  {

    v24(v25);
    return sub_274406A94(v24);
  }

  else
  {
    sub_2745DC2EC();
    if (v27)
    {
      if (a2)
      {
        v28();
      }

      else
      {
        v27();
      }
    }

    else
    {
      sub_2745DC448(v11);
      MEMORY[0x277C575F0](v8);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_2744926AC(v11);
    }
  }
}

id sub_2745DD614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745DD684()
{
  result = type metadata accessor for ContactPickerView(319);
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

void sub_2745DD75C()
{
  sub_274462070(319, &qword_2809540B8, &qword_2809540C0, 0x277D7C298, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_2744620D8(319, &qword_2809540C8, &unk_2809540D0, &unk_27464CFE8, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_274462070(319, &qword_28094BED8, &unk_2809540E0, 0x277D7D7A0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2744620D8(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2744620D8(319, &qword_28094BEE0, &unk_280954100, &unk_27464C580, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2744620D8(319, &qword_28094BBC8, &unk_28094A210, &unk_27464FBA0, MEMORY[0x277CDF468]);
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

id sub_2745DD94C@<X0>(void *a1@<X8>)
{
  result = sub_2745DCC50();
  *a1 = result;
  return result;
}

uint64_t sub_2745DD974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2745DDC80(&qword_280954138);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2745DD9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2745DDC80(&qword_280954138);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2745DDA74()
{
  sub_2745DDC80(&qword_280954138);
  sub_27463A26C();
  __break(1u);
}

uint64_t sub_2745DDAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745DDB50(uint64_t a1)
{
  v2 = type metadata accessor for ContactPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745DDBAC(void *a1)
{
  v2 = [a1 parameterStates];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
  v3 = sub_27463B81C();

  return v3;
}

void sub_2745DDC20(uint64_t a1, void *a2)
{
  v3 = sub_27463B7FC();
  [a2 setDisplayedPropertyKeys_];
}

uint64_t sub_2745DDC80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactPickerView(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2745DDCC0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_27463C22C();
  }

  else
  {
    return sub_27463C1FC();
  }
}

uint64_t sub_2745DDD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2745DDE24(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2745DDE90(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_274637EEC();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t WFContactFieldParameter.view(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954140);
  MEMORY[0x28223BE20](v3);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v37 = sub_2745DE308();
  v10 = v9;
  sub_27463B9CC();

  v11 = sub_27463B9BC();
  OUTLINED_FUNCTION_68_0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;

  v14 = v1;
  v15 = sub_27463B9BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BDC0);
  sub_27463AF0C();
  v35 = v40;
  v36 = v39;
  v34 = v41;
  v17 = (v5 + v3[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  *v17 = sub_27463979C();
  v17[1] = v18;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(KeyPath);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v21);
  v22 = v5 + v3[19];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v23);
  v38 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_38();
  v38 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_38();
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v25 = v14;
  sub_27444A564(v25);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v5 = sub_27463950C();
  v5[1] = v26;
  v5[2] = v37;
  v5[3] = v10;
  v27 = [v25 localizedDescription];
  if (v27)
  {
    v28 = v27;
    v29 = sub_27463B6AC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v5[4] = v29;
  v5[5] = v31;
  v5[6] = 1;
  v32 = v35;
  v5[7] = v36;
  v5[8] = v32;
  v5[9] = v34;
  sub_2745DE538(v25, a1);
  *(v5 + v3[14]) = 0;
  sub_2745DE898(v5, v8);
  sub_27440CA78(&unk_280954148, &qword_280954140);
  return sub_27463AE9C();
}

uint64_t sub_2745DE308()
{
  if ([v0 hidesLabel])
  {
    return 0;
  }

  v2 = [v0 localizedLabel];
  v1 = sub_27463B6AC();

  return v1;
}

uint64_t sub_2745DE380@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (!result)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = [v3 variable];
  result = swift_unknownObjectRelease();
LABEL_6:
  *a1 = v4;
  return result;
}