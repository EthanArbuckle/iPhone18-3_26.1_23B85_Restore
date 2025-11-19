void *sub_2744DA7E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v48 = a6;
  v47 = a5;
  v49 = a4;
  v21 = *((*MEMORY[0x277D85000] & *a3) + 0x50);
  v22 = type metadata accessor for ScrollableTableView.AccessoryID();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v43 = v41 - v24;
  sub_2744D4CB8();
  v25 = type metadata accessor for TableCell();
  WitnessTable = swift_getWitnessTable();
  v46 = a1;
  v45 = v25;
  v44 = WitnessTable;
  sub_27463B53C();

  v27 = v52[0];
  if (!v52[0])
  {
    sub_27448E108(a2, v52);
    v42 = sub_2744D501C();
    v41[1] = v21;
    v29 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10);
    swift_getWitnessTable();
    sub_27463B51C();
    v30 = sub_27463B52C();
    if (*v31)
    {
      v32 = sub_2744D61CC();
      v30(v50, 0);
      (*(*(v29 - 8) + 8))(v52, v29);
      v33 = v42(v51, 0);
      if (v32)
      {
        v34 = v32;
LABEL_9:
        v28 = v34;
        goto LABEL_10;
      }
    }

    else
    {
      v30(v50, 0);
      (*(*(v29 - 8) + 8))(v52, v29);
      v33 = v42(v51, 0);
    }

    v35 = (*(a2 + 88))(v33);
    if (!v35)
    {
      v39 = *(a2 + 40);
      swift_beginAccess();
      type metadata accessor for ScrollableTableView.LayoutItem();
      swift_getWitnessTable();
      v40 = type metadata accessor for LazyStackLayoutEngine();
      sub_2744D1B00(v49, v40, v39, a7);
      swift_endAccess();
      return 0;
    }

    v34 = v35;
    goto LABEL_9;
  }

  v28 = v52[0];
LABEL_10:
  v36 = *(a2 + 104);
  v37 = v27;
  v36(v28);
  sub_2744DA3E0(v28, v49, a3, v47, a7, a8, a9, a10, a11, a12);
  (*(v23 + 16))(v43, v46, v22);
  v51[0] = v28;
  swift_beginAccess();
  sub_27463B51C();
  sub_27463B54C();
  swift_endAccess();
  return v28;
}

uint64_t sub_2744DACC4(uint64_t a1, char *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_2744DAE68(a2, v4);
  v2 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
  return (*(*(v2 - 8) + 8))(v4, v2);
}

uint64_t sub_2744DAD80(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for ScrollableTableView.AccessoryID();
  sub_27448E108(a3 + *(v5 + 36), v8);
  sub_2744DAE68(a2, v8);
  v6 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
  return (*(*(v6 - 8) + 8))(v8, v6);
}

uint64_t sub_2744DAE68(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  [a1 removeFromSuperview];
  *&a1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8] = 0;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_56(&a1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex]);
  v7 = *((*v6 & *v3) + 0xF8);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v3 + v7);
  v8 = v28[0];
  *(v3 + v7) = 0x8000000000000000;
  v9 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
  OUTLINED_FUNCTION_9_9();
  swift_getWitnessTable();
  v27 = a2;
  OUTLINED_FUNCTION_29_5();
  v13 = sub_2744DDADC(v10, v11, v12);
  if (__OFADD__(*(v8 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10);
  OUTLINED_FUNCTION_28_7();
  sub_27463C50C();
  if (sub_27463C4CC())
  {
    OUTLINED_FUNCTION_29_5();
    v20 = sub_2744DDADC(v17, v18, v19);
    if ((v16 & 1) == (v21 & 1))
    {
      v15 = v20;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

LABEL_5:
  v22 = v28[0];
  *(v3 + v7) = v28[0];
  if ((v16 & 1) == 0)
  {
    v28[5] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_25_0();
    (*(v23 + 16))(v28, v27, v9);
    sub_27463C4FC();
  }

  v24 = (*(v22 + 56) + 8 * v15);
  v25 = a1;
  MEMORY[0x277C57F30]();
  sub_2745C4440(*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_27463B8AC();
  return swift_endAccess();
}

_BYTE *sub_2744DB0D4(_BYTE *result, char a2)
{
  if ((result[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex + 8] & 1) == 0)
  {
    v3 = *&result[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex];
    result = sub_2744D7EB8();
    if ((v4 & 1) != 0 || v3 != result)
    {
      swift_beginAccess();
      type metadata accessor for ScrollableTableView.LayoutItem();
      OUTLINED_FUNCTION_1_17();
      swift_getWitnessTable();
      v5 = type metadata accessor for LazyStackLayoutEngine();
      sub_2744D1D30(v3, v5);
      swift_endAccess();
      return sub_2744D6004(a2 & 1);
    }
  }

  return result;
}

double sub_2744DB1D8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &__dst[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for ScrollableTableView.LayoutAtom();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &__dst[-1] - v11;
  (*(v13 + 16))(&__dst[-1] - v11, v2, v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      memcpy(__dst, &v12[*(TupleTypeMetadata2 + 48)], sizeof(__dst));
      v16 = *&__dst[5];
      sub_2744DE060(__dst);
      (*(v4 + 8))(v12, v3);
    }

    else
    {
      memcpy(__dst, v12, sizeof(__dst));
      v16 = *&__dst[5];
      sub_2744DE060(__dst);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    v16 = (*(v8 + 24))(v3, v8);
    (*(v4 + 8))(v6, v3);
  }

  return v16;
}

uint64_t sub_2744DB408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ScrollableTableView.LayoutAtom();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ScrollableTableView.LayoutItem();
  v12 = a5 + *(result + 36);
  *v12 = a2;
  *(v12 + 8) = a3 & 1;
  *(a5 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_2744DB4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = *(a4 + 8);
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v28 - v7;
  v8 = sub_27463C0AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v28 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v28 - v14;
  v17 = *(v16 + 48);
  v35 = v9;
  v18 = *(v9 + 16);
  v32 = a1;
  v18(&v28 - v14, a1, v8, v13);
  v33 = a2;
  (v18)(&v15[v17], a2, v8);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v15[v17], 1, AssociatedTypeWitness) == 1)
    {
      (*(v35 + 8))(v15, v8);
LABEL_9:
      v26 = type metadata accessor for ScrollableTableView.AccessoryID();
      v20 = MEMORY[0x277C58A40](v32 + *(v26 + 36), v33 + *(v26 + 36));
      return v20 & 1;
    }

    goto LABEL_6;
  }

  v19 = v34;
  (v18)(v34, v15, v8);
  if (__swift_getEnumTagSinglePayload(&v15[v17], 1, AssociatedTypeWitness) == 1)
  {
    (*(v36 + 8))(v19, AssociatedTypeWitness);
LABEL_6:
    (*(v12 + 8))(v15, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v21 = v36;
  v22 = &v15[v17];
  v23 = v29;
  (*(v36 + 32))(v29, v22, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v24 = sub_27463B5BC();
  v25 = *(v21 + 8);
  v25(v23, AssociatedTypeWitness);
  v25(v19, AssociatedTypeWitness);
  (*(v35 + 8))(v15, v8);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2744DB88C()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  swift_getAssociatedConformanceWitness();
  sub_27463C0BC();
  return sub_27463C30C();
}

uint64_t sub_2744DB944()
{
  sub_27463C74C();
  sub_2744DB88C();
  return sub_27463C7AC();
}

uint64_t sub_2744DB99C()
{
  sub_27463C74C();
  sub_2744DB88C();
  return sub_27463C7AC();
}

id sub_2744DBA2C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744DBAA4(char *a1)
{
  sub_2743F6ED0(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  v3 = *(v2 + 136);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v4 = sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v14 = *(v5 + 8);
  v14(&a1[v3], v4);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  sub_2744DE3D0(*&a1[*(v7 + 168)], *&a1[*(v7 + 168) + 8], a1[*(v7 + 168) + 16]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  v12 = &a1[*(v11 + 312)];

  return (v14)(v12, v4);
}

uint64_t sub_2744DBDD0(uint64_t a1)
{
  result = sub_2744DE2CC(&unk_28094EAA0, type metadata accessor for EditorDragItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2744DC348()
{
  swift_getAssociatedTypeWitness();
  result = sub_27463C0AC();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_2744DC504()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744DC540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2744DC590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_2744DC5EC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2744DC630()
{
  swift_getAssociatedTypeWitness();
  result = sub_27463C0AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2744DC6C8(int *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(result - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_30:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, result);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

LABEL_27:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          v16 = *a1;
        }

        else
        {
          v16 = 0;
        }

        result = v7 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_30;
    }
  }

  return result;
}

void sub_2744DC86C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = 0;
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v10 < a3)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v13 = a3 - v10 + 1;
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
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v7)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (a2)
        {
LABEL_36:
          if (v9 < 0x7FFFFFFF)
          {
            v20 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 8) = 0u;
              *(v20 + 24) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = a2 - 1;
            }
          }

          else if (v9 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2 + 1, v8, AssociatedTypeWitness);
          }

          else
          {
            if (v11 <= 3)
            {
              v17 = ~(-1 << (8 * v11));
            }

            else
            {
              v17 = -1;
            }

            if (v11)
            {
              v18 = v17 & (~v9 + a2);
              if (v11 <= 3)
              {
                v19 = v11;
              }

              else
              {
                v19 = 4;
              }

              bzero(a1, v11);
              switch(v19)
              {
                case 2:
                  *a1 = v18;
                  break;
                case 3:
                  *a1 = v18;
                  a1[2] = BYTE2(v18);
                  break;
                case 4:
                  *a1 = v18;
                  break;
                default:
                  *a1 = v18;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v10;
    }

    else
    {
      v15 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v10 + a2;
      bzero(a1, ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v7)
    {
      case 1:
        a1[v12] = v15;
        break;
      case 2:
        *&a1[v12] = v15;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v12] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_2744DCB28()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_2744DCF88(319, &qword_28094ED68, &type metadata for TableItemAccessory, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2744DCF88(319, qword_28094ED70, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2744DCC20(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744DCD7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
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
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_2744DCF88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2744DCFD8()
{
  type metadata accessor for ScrollableTableView.LayoutAtom();
  if (v0 <= 0x3F)
  {
    sub_2744DCF88(319, qword_28094ED70, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int16 *sub_2744DD08C(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 120;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (v5 <= 0x78)
  {
    v5 = 120;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
LABEL_26:
    v13 = *(((result + v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v13 >= 2)
    {
      return (((v13 + 2147483646) & 0x7FFFFFFF) + 1);
    }

    return 0;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v6 <= 3)
  {
    v7 = ((a2 + 65281) >> 16) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  switch(v9)
  {
    case 1:
      v10 = *(result + v6);
      if (!*(result + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 2:
      v10 = *(result + v6);
      if (!*(result + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 3:
      __break(1u);
      return result;
    case 4:
      v10 = *(result + v6);
      if (!v10)
      {
        goto LABEL_26;
      }

LABEL_22:
      v11 = (v10 - 1) << (8 * v6);
      if (v6 <= 3)
      {
        v12 = *result;
      }

      else
      {
        v11 = 0;
        v12 = *result;
      }

      result = ((v12 | v11) + 255);
      break;
    default:
      goto LABEL_26;
  }

  return result;
}

void sub_2744DD1B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 120;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= 0x78)
  {
    v7 = 120;
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 18;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 65281) >> 16) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    v13 = (a2 - 255) >> 16;
    bzero(a1, (v7 & 0xFFFFFFFFFFFFFFF8) + 18);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_31;
      case 3:
        goto LABEL_38;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          *((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
        }

        break;
    }
  }
}

uint64_t sub_2744DD36C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40);
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744DD42C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 120;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v6 = 120;
  if (v5 > 0x78)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_24:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 254;
}

void sub_2744DD568(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 120;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= 0x78)
  {
    v7 = 120;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor32ScrollableTableViewDragDropStateO(uint64_t a1)
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

uint64_t sub_2744DD760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744DD7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744DD7E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2744DD80C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744DD860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2744DD8A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744DD910()
{
  result = qword_28094EF00;
  if (!qword_28094EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EF00);
  }

  return result;
}

uint64_t sub_2744DD964(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2744DD9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_27463C27C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_27463C2CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2744DDADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27463B55C();

  return sub_2744DDB38(a1, v6, a2, a3);
}

unint64_t sub_2744DDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a4;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v16 + 48) + *(v6 + 72) * i, a3, v7);
    v13 = sub_27463B5BC();
    (*(v6 + 8))(v9, a3);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2744DDCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (sub_27463B8BC())
  {
    sub_27463C36C();
    v14 = sub_27463C35C();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v36 = sub_27463B8BC();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_27463B89C();
      sub_27463B84C();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v39 = v15;
        result = sub_27463C3CC();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_27463B55C();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_27463B5BC();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t sub_2744DE090(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_27463C7AC();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    type metadata accessor for EditorDropItem();
    sub_2744DE2CC(&qword_28094EF08, type metadata accessor for EditorDropItem);
    result = sub_27463BA7C();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));
    v17 = v13;

    while (1)
    {
      sub_27463C74C();
      MEMORY[0x277C58EA0](v13);
      v16 = sub_27463C7AC();

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_27463C2BC())
      {
        goto LABEL_20;
      }

      type metadata accessor for EditorDropItem();
      swift_dynamicCast();
      v13 = v17;
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      sub_274406A24();
      return MEMORY[0x277C58EA0](v11);
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2744DE2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2744DE314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2744DE3D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2744DE41C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return sub_27463B4DC();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return sub_27463B87C();
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return sub_27463C56C();
}

id OUTLINED_FUNCTION_53_2()
{

  return [v1 (v0 + 3941)];
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1)
{
  *(a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

void sub_2744DE8D4()
{
  sub_2744DEDBC();
  if (v0 <= 0x3F)
  {
    sub_27463C0AC();
    if (v1 <= 0x3F)
    {
      sub_274431930();
      if (v2 <= 0x3F)
      {
        sub_2744DEE0C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2744DE98C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 7;
  if (!v6)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((result + v9 + 17) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(result + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v11 = ((((v10 + *(*(v4 - 8) + 64) + ((v9 + 17) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
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

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = v8 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_2744DEB14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v20 = (&a1[v12 + 17] & ~v12);
            if (v10 >= a2)
            {
              v24 = a2 + 1;
              v25 = &a1[v12 + 17] & ~v12;

              __swift_storeEnumTagSinglePayload(v25, v24, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v21 = ~(-1 << (8 * v13));
              }

              else
              {
                v21 = -1;
              }

              if (v13)
              {
                v22 = v21 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v23 = v13;
                }

                else
                {
                  v23 = 4;
                }

                bzero(v20, v13);
                switch(v23)
                {
                  case 2:
                    *v20 = v22;
                    break;
                  case 3:
                    *v20 = v22;
                    v20[2] = BYTE2(v22);
                    break;
                  case 4:
                    *v20 = v22;
                    break;
                  default:
                    *v20 = v22;
                    break;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            a1[16] = 0;
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_2744DEDBC()
{
  if (!qword_28094EFB8)
  {
    v0 = sub_27463AF4C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094EFB8);
    }
  }
}

void sub_2744DEE0C()
{
  if (!qword_28094EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFC8);
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094EFC0);
    }
  }
}

double sub_2744DEEB4(char a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_27463A35C();
  sub_27463A36C();
  if (sub_27463A36C() != v10)
  {
    a3 = 0.0;
  }

  v11 = sub_27463A37C();
  sub_27463A36C();
  if (sub_27463A36C() != v11)
  {
    a5 = 0.0;
  }

  sub_27463A34C();
  sub_27463A36C();
  sub_27463A36C();
  sub_27463A33C();
  sub_27463A36C();
  sub_27463A36C();
  v12 = -(a3 + a5);
  if (a1)
  {
    v12 = a3 + a5;
  }

  return v12 + a6;
}

uint64_t sub_2744DEFC0()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v5, v3);
  return v5;
}

uint64_t sub_2744DF018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  sub_27463AEEC();
  return v1;
}

uint64_t sub_2744DF074@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v45.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  v13 = sub_274639F5C();
  OUTLINED_FUNCTION_4_0();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v45.i8[-v20];
  (*(v15 + 16))(&v45.i8[-v20], a1, v13, v19);
  (*(v8 + 16))(v12, v4, a2);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = (v17 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = a2[1];
  v45 = a2[2];
  v26 = v45;
  v46 = v25;
  *(v24 + 16) = v25;
  *(v24 + 32) = v26;
  v27 = *(v15 + 32);
  v28 = v24;
  v47 = v24;
  v27(v24 + v22, v21, v13);
  (*(v8 + 32))(v28 + v23, v12, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0);
  OUTLINED_FUNCTION_22();
  v29 = sub_27463965C();
  v46 = vzip1q_s64(v46, v45);
  v52 = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52.i64[0] = OpaqueTypeMetadata2;
  v52.i64[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v52.i64[0] = OpaqueTypeMetadata2;
  v52.i64[1] = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  v32 = sub_27463C0AC();
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17();
  v35 = sub_27440CA78(v34, &qword_28094EFD0);
  v56 = WitnessTable;
  v57 = v35;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_14();
  v55 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v37 = swift_getWitnessTable();
  v52.i64[0] = v29;
  v52.i64[1] = v32;
  v53 = v36;
  v54 = v37;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0);
  OUTLINED_FUNCTION_43();
  sub_27463965C();
  v52.i64[0] = v29;
  v52.i64[1] = v32;
  v53 = v36;
  v54 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  v40 = sub_27440CA78(v39, &qword_280953AD0);
  v50 = v38;
  v51 = v40;
  swift_getWitnessTable();
  v49.i64[0] = sub_27463949C();
  v49.i64[1] = v41;
  v42 = sub_2746394AC();
  v43 = swift_getWitnessTable();
  sub_2744E9688(&v49, v42, v43);

  v49 = v52;
  sub_2744E9688(&v49, v42, v43);
}

uint64_t sub_2744DF53C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v77 = a5;
  v79 = a3;
  v70 = a2;
  v67 = a1;
  v72 = a8;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v100 = a7;
  v80 = type metadata accessor for ContentAvoidingSheet();
  v69 = *(v80 - 8);
  v82 = *(v69 + 64);
  MEMORY[0x28223BE20](v80);
  v81 = v54 - v10;
  swift_getWitnessTable();
  v11 = sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0);
  v58 = v11;
  v12 = sub_27463965C();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = v54 - v13;
  v97 = a4;
  v98 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = a4;
  v98 = a6;
  v73 = a4;
  v74 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = OpaqueTypeMetadata2;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v97 = OpaqueTypeMetadata2;
  v98 = OpaqueTypeConformance2;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = MEMORY[0x277CE0790];
  v68 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_2746394AC();
  v16 = sub_27463C0AC();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_27440CA78(&qword_28094EFD8, &qword_28094EFD0);
  v93 = WitnessTable;
  v94 = v18;
  v59 = v12;
  v19 = swift_getWitnessTable();
  v57 = v19;
  v92 = swift_getWitnessTable();
  v56 = v16;
  v76 = swift_getWitnessTable();
  v97 = v12;
  v98 = v16;
  v99 = v19;
  v100 = v76;
  v63 = MEMORY[0x277CDEE28];
  v61 = swift_getOpaqueTypeMetadata2();
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v75 = v54 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0);
  v64 = sub_27463965C();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v62 = v54 - v23;
  v24 = v77;
  v83 = a4;
  v84 = v77;
  v25 = v78;
  v85 = a6;
  v86 = v78;
  v26 = v79;
  v87 = v79;
  v88 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFE0);
  sub_2744E13D4();
  sub_274639C5C();
  sub_27463A74C();
  v58 = sub_2744DF018();
  v54[3] = v27;
  v28 = v69;
  v70 = *(v69 + 16);
  v29 = v81;
  v30 = v80;
  v70(v81, v26, v80);
  v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v32[2] = v73;
  v32[3] = v24;
  v32[4] = v74;
  v32[5] = v25;
  v69 = *(v28 + 32);
  (v69)(v32 + v31, v29, v30);
  v67 = swift_checkMetadataState();
  v33 = v57;
  v34 = v59;
  v35 = v55;
  sub_27463A91C();

  v36 = v34;
  (*(v71 + 8))(v35, v34);
  v37 = v79;
  v91 = sub_2744DEFC0() & 1;
  v38 = v81;
  v39 = v37;
  v40 = v80;
  v70(v81, v39, v80);
  v41 = swift_allocObject();
  v42 = v77;
  v41[2] = v73;
  v41[3] = v42;
  v43 = v78;
  v41[4] = v74;
  v41[5] = v43;
  (v69)(v41 + v31, v38, v40);
  v97 = v36;
  v98 = v67;
  v99 = v33;
  v100 = v76;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = v61;
  v47 = v75;
  sub_27463AA5C();

  (*(v65 + 8))(v47, v46);
  v48 = sub_27440CA78(&unk_28094DDA0, &qword_280953AD0);
  v89 = v44;
  v90 = v48;
  v49 = v64;
  v50 = swift_getWitnessTable();
  v51 = v62;
  sub_2744E9688(v45, v49, v50);
  v52 = *(v66 + 8);
  v52(v45, v49);
  sub_2744E9688(v51, v49, v50);
  return (v52)(v51, v49);
}

uint64_t sub_2744DFEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v4 = (a1 + *(type metadata accessor for ContentAvoidingSheet() + 60));
  v24 = *v4;
  LOBYTE(a2) = *(v4 + 16);
  v26 = *(v4 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0);
  result = sub_27463ACEC();
  if (v23)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    sub_2746393AC();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_27463A34C();
    sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v20)
    {
      sub_27463A36C();
    }

    sub_2744DEEB4(v22 == 0.0, v13, v15, v17, v19, v21);
    v6 = sub_27463AB7C();
    sub_27463B0CC();
    result = sub_2746392FC();
    v7 = v24;
    v8 = BYTE8(v24);
    v9 = a2;
    v10 = v26;
    v11 = v27;
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_2744E0060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a6;
  *&v61[0] = a2;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  *(&v61[0] + 1) = a4;
  v75 = a4;
  v76 = a5;
  v58 = a5;
  v8 = type metadata accessor for ContentAvoidingSheet();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v54 - v10;
  v11 = sub_27463C0AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v60 = *(a3 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v57 = v8;
  v22 = *(v8 + 52);
  v23 = a1;
  (*(v12 + 16))(v14, a1 + v22, v11, v19);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v72 = 0;
    v73 = 0;
    v24 = *(&v61[0] + 1);
    v25 = *&v61[0];
    v74 = v61[0];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v74 = __PAIR128__(v24, v25);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v74 = OpaqueTypeMetadata2;
    *(&v74 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeMetadata2();
    sub_27463965C();
    *&v74 = OpaqueTypeMetadata2;
    *(&v74 + 1) = OpaqueTypeConformance2;
    v70 = swift_getOpaqueTypeConformance2();
    v28 = MEMORY[0x277CE0790];
    v71 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    sub_2746394AC();
    swift_getWitnessTable();
    sub_2745758B8(&v72, &v74);
    v29 = v74;
  }

  else
  {
    v30 = v60;
    v54 = *(v60 + 32);
    v55 = v21;
    v54(v21, v14, a3);
    v31 = v56;
    v32 = v23;
    v33 = v57;
    (*(v56 + 16))(v59, v32, v57);
    (*(v30 + 16))(v17, v21, a3);
    v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
    v35 = (v9 + *(v30 + 80) + v34) & ~*(v30 + 80);
    v36 = swift_allocObject();
    v37 = *&v61[0];
    *(v36 + 2) = *&v61[0];
    *(v36 + 3) = a3;
    v38 = *(&v61[0] + 1);
    v39 = v58;
    *(v36 + 4) = *(&v61[0] + 1);
    *(v36 + 5) = v39;
    v40 = v33;
    v41 = v37;
    (*(v31 + 32))(&v36[v34], v59, v40);
    v25 = v41;
    v24 = v38;
    v54(&v36[v35], v17, a3);
    *&v74 = v25;
    *(&v74 + 1) = v38;
    v42 = swift_getOpaqueTypeMetadata2();
    *&v74 = v25;
    *(&v74 + 1) = v24;
    v43 = swift_getOpaqueTypeConformance2();
    *&v74 = v42;
    *(&v74 + 1) = v43;
    swift_getOpaqueTypeMetadata2();
    sub_27463965C();
    *&v74 = v42;
    *(&v74 + 1) = v43;
    v65 = swift_getOpaqueTypeConformance2();
    v28 = MEMORY[0x277CE0790];
    v66 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v44 = sub_27463949C();
    v46 = v45;
    (*(v60 + 8))(v55, a3);
    v72 = v44;
    v73 = v46;
    v47 = sub_2746394AC();
    WitnessTable = swift_getWitnessTable();
    sub_2744E9688(&v72, v47, WitnessTable);

    v64 = v74;
    sub_2744E9688(&v64, v47, WitnessTable);

    v63[0] = v72;
    v63[1] = v73;
    sub_2745758B8(v63, &v64);

    v29 = v64;
  }

  *(v61 + 8) = v29;
  v74 = v29;
  v72 = v25;
  v73 = v24;
  v49 = swift_getOpaqueTypeMetadata2();
  v72 = v25;
  v73 = v24;
  v50 = swift_getOpaqueTypeConformance2();
  v72 = v49;
  v73 = v50;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v72 = v49;
  v73 = v50;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v28;
  swift_getWitnessTable();
  sub_2746394AC();
  v51 = sub_27463C0AC();
  v67 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  sub_2744E9688(&v74, v51, v52);
  return sub_274406A94(*(&v61[0] + 1));
}

uint64_t sub_2744E0848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a5;
  v77 = a7;
  v62 = a3;
  v55 = a2;
  v78 = a1;
  v79 = a8;
  v13 = sub_2746393DC();
  v73 = *(v13 - 8);
  v74 = v13;
  v75 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v15 = type metadata accessor for ContentAvoidingSheet();
  v70 = *(v15 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v52 - v16;
  v68 = sub_27463A2DC();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a4;
  v84 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = OpaqueTypeMetadata2;
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &v52 - v23;
  v83 = a4;
  v84 = a6;
  v53 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  v84 = OpaqueTypeConformance2;
  v63 = MEMORY[0x277CDED50];
  v60 = swift_getOpaqueTypeMetadata2();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v52 - v25;
  v64 = sub_27463965C();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v61 = &v52 - v29;
  (*(a2 + *(v15 + 56)))(v62, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF8);
  sub_274639BEC();
  *(swift_allocObject() + 16) = xmmword_2746486A0;
  sub_274639BDC();
  sub_274639BCC();
  sub_274574354();
  v52 = a4;
  sub_27463A81C();

  (*(v59 + 8))(v21, a4);
  sub_27463A2CC();
  v30 = v80;
  v31 = OpaqueTypeConformance2;
  sub_27463A8CC();
  (*(v66 + 8))(v18, v68);
  (*(v58 + 8))(v24, v30);
  v32 = v69;
  v33 = v70;
  (*(v70 + 16))(v69, v55, v15);
  v35 = v72;
  v34 = v73;
  v36 = v74;
  (*(v73 + 16))(v72, v78, v74);
  v37 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v38 = v34;
  v39 = (v71 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v40 = swift_allocObject();
  v41 = v76;
  *(v40 + 2) = v52;
  *(v40 + 3) = v41;
  v42 = v77;
  *(v40 + 4) = v53;
  *(v40 + 5) = v42;
  (*(v33 + 32))(&v40[v37], v32, v15);
  (*(v38 + 32))(&v40[v39], v35, v36);
  v83 = v80;
  v84 = v31;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = v60;
  v46 = v54;
  sub_27463AA2C();

  (*(v65 + 8))(v46, v45);
  v81 = v43;
  v82 = MEMORY[0x277CE0790];
  v47 = v64;
  WitnessTable = swift_getWitnessTable();
  v49 = v61;
  sub_2744E9688(v44, v47, WitnessTable);
  v50 = *(v67 + 8);
  v50(v44, v47);
  sub_2744E9688(v49, v47, WitnessTable);
  return (v50)(v49, v47);
}

uint64_t sub_2744E1050()
{
  sub_2746393BC();
  v1 = v0;
  sub_2746393AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v11 = sub_27463A33C();
  *(inited + 32) = v11;
  v12 = sub_27463A34C();
  *(inited + 33) = v12;
  sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v11)
  {
    sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v12)
  {
    sub_27463A36C();
  }

  sub_2744DEEB4(1, v3, v5, v7, v9, v1);
  type metadata accessor for ContentAvoidingSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0);
  return sub_27463ACFC();
}

_BYTE *sub_2744E1214(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    type metadata accessor for ContentAvoidingSheet();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0);
    return sub_27463ACFC();
  }

  return result;
}

uint64_t sub_2744E12B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_21();
  v9 = type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  v10 = sub_274639F5C();
  OUTLINED_FUNCTION_19_0(v10);
  v12 = v11;
  v14 = v13;
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = v2 + ((v15 + *(v14 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_2744DF53C(a1, (v2 + v15), v16, v3, v4, v5, v6, a2);
}

unint64_t sub_2744E13D4()
{
  result = qword_28094EFE8;
  if (!qword_28094EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFE0);
    sub_2744C98E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EFE8);
  }

  return result;
}

uint64_t sub_2744E1458@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_21();
  v7 = *(type metadata accessor for ContentAvoidingSheet() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_2744E0060(v8, v2, v3, v4, v5, a1);
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_1_18();
  type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_3_14();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  v4 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v5 + 8))(v3 + v4);
  }

  return swift_deallocObject();
}

_BYTE *sub_2744E1610(_BYTE *a1)
{
  OUTLINED_FUNCTION_3_21();
  type metadata accessor for ContentAvoidingSheet();

  return sub_2744E1214(a1);
}

uint64_t sub_2744E16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_19_0(v9);
  v11 = v10;
  v13 = v12;
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = v2 + ((v14 + *(v13 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2744E0848(a1, v2 + v14, v15, v5, v6, v7, v8, a2);
}

uint64_t sub_2744E17B4()
{
  v0 = type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_19_0(v0);
  sub_2746393DC();

  return sub_2744E1050();
}

void ParameterLayoutView.init(parameter:label:description:isSelected:forceHorizontalLayout:control:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, char a10, void (*a11)(void))
{
  v16 = type metadata accessor for ParameterLayoutView();
  v17 = v16[14];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v18 = a9 + v16[15];
  *v18 = swift_getKeyPath();
  *(v18 + 4) = 0;
  v19 = a9 + v16[16];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a9 + v16[17];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v22 = a1;
  sub_27444A564(v22);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a9 = sub_27463950C();
  a9[1] = v23;
  if (!a3)
  {
    v24 = [v22 localizedLabel];
    a2 = sub_27463B6AC();
    a3 = v25;
  }

  v26 = a4;
  if (!a5)
  {
    v27 = [v22 localizedDescription];
    if (v27)
    {
      v28 = v27;
      v26 = sub_27463B6AC();
      a5 = v29;
    }

    else
    {
      v26 = 0;
      a5 = 0xE000000000000000;
    }
  }

  a9[2] = a2;
  a9[3] = a3;
  a9[4] = v26;
  a9[5] = a5;
  v30 = a9 + v16[12];
  *v30 = a6;
  *(v30 + 1) = a7;
  v30[16] = a8;
  a11();

  *(a9 + v16[13]) = a10 & 1;
}

uint64_t sub_2744E1C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_27445EAD4(v2 + *(a1 + 56), &v15 - v10, &qword_28094BDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_274639C4C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_2744E1E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 60);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*(v9 + 9) == 1)
  {
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
  }

  else
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274458484(v10, v11, 0);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_2744E1F70(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274435568(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2744E20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_27445EAD4(v2 + *(a1 + 68), v12, &qword_28094E078);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t ParameterLayoutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_12_8();
  v36 = v2;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_7_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  OUTLINED_FUNCTION_16_8();
  sub_274639DEC();
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_62_0();
  sub_274639DEC();
  OUTLINED_FUNCTION_16_8();
  sub_274639DEC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v3 = MEMORY[0x277CE0340];
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_9(v5, MEMORY[0x277CDF918]);
  v7 = v6;
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v62 = v66;
  v63 = swift_getWitnessTable();
  v35 = v3;
  v60 = v4;
  v61 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_274412BBC();
  OUTLINED_FUNCTION_4_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = MEMORY[0x277CDF918];
  v33 = v7;
  v52 = swift_getWitnessTable();
  v53 = MEMORY[0x277CDFC60];
  v34 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30();
  v8 = sub_27463AD8C();
  OUTLINED_FUNCTION_9_10();
  v31 = swift_getWitnessTable();
  v30 = sub_274482428();
  v56 = v8;
  v57 = &type metadata for ParameterRowButtonStyle;
  v58 = v31;
  v59 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  v32 = sub_274639DEC();
  OUTLINED_FUNCTION_62_0();
  sub_274639DEC();
  v9 = sub_27463AC1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = *(v37 + 24);
  v40 = v36;
  v41 = v16;
  v42 = v38;
  v56 = v8;
  v57 = &type metadata for ParameterRowButtonStyle;
  v58 = v31;
  v59 = v30;
  v17 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_15();
  v20 = sub_2744E9640(v18, v19);
  v50 = v17;
  v51 = v20;
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_20();
  v23 = sub_27440CA78(v22, &qword_28094AA90);
  v48 = v34;
  v49 = v23;
  v46 = swift_getWitnessTable();
  v47 = v46;
  v24 = swift_getWitnessTable();
  v44 = v21;
  v45 = v24;
  v25 = swift_getWitnessTable();
  sub_27463AC0C();
  v43 = v25;
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  v26 = *(v10 + 16);
  v27 = OUTLINED_FUNCTION_24_5();
  v26(v27);
  v28 = *(v10 + 8);
  v28(v12, v9);
  (v26)(v39, v15, v9);
  return (v28)(v15, v9);
}

uint64_t sub_2744E2914@<X0>(uint64_t a1@<X0>, void (**a2)(void, void)@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a3;
  v131 = a1;
  v141 = a4;
  v5 = sub_274639C2C();
  v128 = *(v5 - 8);
  v129 = v5;
  MEMORY[0x28223BE20](v5);
  v127 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v145 = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v144 = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v143 = sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v142 = sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v188 = WitnessTable;
  v189 = v8;
  v9 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v186 = v9;
  v187 = v10;
  v11 = swift_getWitnessTable();
  v184 = swift_getWitnessTable();
  v185 = MEMORY[0x277CDF918];
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v182 = v12;
  v183 = v13;
  v14 = swift_getWitnessTable();
  v180 = v9;
  v181 = v14;
  v15 = swift_getWitnessTable();
  v178 = v11;
  v179 = v15;
  v16 = v142;
  v17 = swift_getWitnessTable();
  v18 = sub_274412BBC();
  v19 = MEMORY[0x277D837D0];
  *&v171 = v16;
  *(&v171 + 1) = MEMORY[0x277D837D0];
  *&v172 = v17;
  *(&v172 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v20 = sub_27463965C();
  *&v171 = v16;
  *(&v171 + 1) = v19;
  *&v172 = v17;
  *(&v172 + 1) = v18;
  v21 = v131;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v177 = MEMORY[0x277CDF918];
  v174 = swift_getWitnessTable();
  v175 = MEMORY[0x277CDFC60];
  v144 = swift_getWitnessTable();
  v22 = sub_27463AD8C();
  v120 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v119 = &v113 - v23;
  v24 = swift_getWitnessTable();
  v25 = sub_274482428();
  v142 = v22;
  v143 = v24;
  *&v171 = v22;
  *(&v171 + 1) = &type metadata for ParameterRowButtonStyle;
  *&v172 = v24;
  v145 = v25;
  *(&v172 + 1) = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v118 = &v113 - v27;
  sub_27463A29C();
  v123 = OpaqueTypeMetadata2;
  v28 = sub_27463965C();
  v126 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v125 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v121 = &v113 - v31;
  MEMORY[0x28223BE20](v32);
  v124 = &v113 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90);
  v34 = sub_27463965C();
  v35 = sub_274639DEC();
  v117 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v116 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v130 = &v113 - v38;
  v132 = v20;
  v114 = *(v20 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v113 - v40;
  v138 = v34;
  v115 = *(v34 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v113 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v113 - v49;
  v139 = v51;
  v140 = v28;
  v52 = sub_274639DEC();
  v136 = *(v52 - 8);
  v137 = v52;
  MEMORY[0x28223BE20](v52);
  v135 = &v113 - v53;
  v54 = v133;
  v55 = v134;
  v56 = type metadata accessor for ParameterLayoutView();
  v57 = v21 + *(v56 + 48);
  v58 = *(v57 + 8);
  if (v58)
  {
    v59 = *v57;
    v60 = *(v57 + 16);
    v61 = swift_allocObject();
    v130 = &v113;
    *(v61 + 16) = v59;
    *(v61 + 24) = v58;
    v62 = v60 & 1;
    *(v61 + 32) = v60 & 1;
    MEMORY[0x28223BE20](v61);
    *(&v113 - 4) = v54;
    *(&v113 - 3) = v55;
    *(&v113 - 2) = v21;
    sub_274483110(v59, v58);

    v63 = v119;
    sub_27463AD5C();
    v64 = v118;
    v65 = v142;
    v66 = v143;
    sub_27463A6AC();
    (*(v120 + 8))(v63, v65);
    v133 = v59;
    v134 = v58;
    *&v171 = v59;
    *(&v171 + 1) = v58;
    LOBYTE(v172) = v62;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    MEMORY[0x277C575F0](v170, v67);
    if (v170[0])
    {
      v68 = v127;
      sub_274639C0C();
      v69 = v129;
    }

    else
    {
      *&v171 = MEMORY[0x277D84F90];
      sub_2744E9640(&qword_28094C3B8, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0);
      sub_27440CA78(&qword_28094C3C8, &qword_28094C3C0);
      v68 = v127;
      v69 = v129;
      sub_27463C1EC();
    }

    *&v171 = v65;
    *(&v171 + 1) = &type metadata for ParameterRowButtonStyle;
    *&v172 = v66;
    *(&v172 + 1) = v145;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = v121;
    v78 = v123;
    sub_27463A85C();
    (*(v128 + 8))(v68, v69);
    (*(v122 + 8))(v64, v78);
    v79 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470]);
    v150 = v76;
    v151 = v79;
    v80 = v140;
    v132 = swift_getWitnessTable();
    v81 = v126;
    v82 = *(v126 + 16);
    v83 = v124;
    v82(v124, v77, v80);
    v84 = *(v81 + 8);
    v84(v77, v80);
    v85 = v125;
    v82(v125, v83, v80);
    v86 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    v87 = v144;
    v148 = v144;
    v149 = v86;
    v146 = swift_getWitnessTable();
    v147 = v146;
    swift_getWitnessTable();
    v88 = v135;
    sub_27456E7CC();

    v84(v85, v80);
    v84(v83, v80);
  }

  else
  {
    v70 = v56;
    v129 = v47;
    v133 = v44;
    sub_2744E42E4(v56, v41);
    sub_2744E8F6C();
    v71 = v132;
    v72 = v144;
    sub_27463A6FC();
    (*(v114 + 8))(v41, v71);
    sub_2744E20CC(v70, v170);
    v134 = v50;
    if (v170[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0);
      v73 = swift_dynamicCast();
      v74 = v115;
      if (v73)
      {
        v75 = v173 == 1;
      }

      else
      {
        v171 = 0u;
        v172 = 0u;
        v173 = xmmword_274653F30;
        v75 = 1;
      }

      v89 = v133;
    }

    else
    {
      sub_27440CB1C(v170, &unk_2809507C0);
      v171 = 0u;
      v172 = 0u;
      v173 = xmmword_274653F30;
      v75 = 1;
      v89 = v133;
      v74 = v115;
    }

    sub_27440CB1C(&v171, &qword_280951AF0);
    v90 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    v91 = v90;
    v92 = (v74 + 16);
    v133 = (v74 + 8);
    if (v75)
    {
      v168 = v72;
      v169 = v90;
      v93 = v138;
      swift_getWitnessTable();
      v94 = *v92;
      v95 = v129;
      (*v92)(v129, v134, v93);
      v94(v89, v95, v93);
      v96 = v130;
      sub_27456E878();
    }

    else
    {
      v152 = v72;
      v153 = v90;
      v93 = v138;
      swift_getWitnessTable();
      v97 = *v92;
      v95 = v129;
      (*v92)(v129, v134, v93);
      v97(v89, v95, v93);
      v96 = v130;
      sub_27456E7CC();
    }

    v98 = *v133;
    v138 = v98;
    v98(v89, v93);
    v98(v95, v93);
    v166 = v72;
    v167 = v91;
    v164 = swift_getWitnessTable();
    v165 = v164;
    v99 = v139;
    v132 = swift_getWitnessTable();
    v100 = v116;
    v101 = v117;
    (*(v117 + 16))(v116, v96, v99);
    *&v171 = v142;
    *(&v171 + 1) = &type metadata for ParameterRowButtonStyle;
    *&v172 = v143;
    *(&v172 + 1) = v145;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470]);
    v162 = v102;
    v163 = v103;
    swift_getWitnessTable();
    v88 = v135;
    sub_27456E878();
    v104 = *(v101 + 8);
    v104(v100, v99);
    v104(v130, v99);
    v138(v134, v93);
    v87 = v144;
  }

  *&v171 = v142;
  *(&v171 + 1) = &type metadata for ParameterRowButtonStyle;
  *&v172 = v143;
  *(&v172 + 1) = v145;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470]);
  v160 = v105;
  v161 = v106;
  v107 = swift_getWitnessTable();
  v108 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
  v158 = v87;
  v159 = v108;
  v156 = swift_getWitnessTable();
  v157 = v156;
  v109 = swift_getWitnessTable();
  v154 = v107;
  v155 = v109;
  v110 = v137;
  swift_getWitnessTable();
  v111 = v136;
  (*(v136 + 16))(v141, v88, v110);
  return (*(v111 + 8))(v88, v110);
}

uint64_t sub_2744E3D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v18[3] = a3;
  v18[4] = a1;
  v19 = a4;
  v18[2] = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v18[1] = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v18[0] = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v20 = sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v31 = v37;
  v32 = swift_getWitnessTable();
  v29 = v4;
  v30 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v6 = sub_274412BBC();
  v25 = v20;
  v26 = MEMORY[0x277D837D0];
  v27 = v5;
  v28 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v7 = sub_27463965C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v14 = type metadata accessor for ParameterLayoutView();
  sub_2744E42E4(v14, v10);
  v25 = v20;
  v26 = MEMORY[0x277D837D0];
  v27 = v5;
  v28 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v13, v10, v7);
  v16 = *(v8 + 8);
  v16(v10, v7);
  v15(v19, v13, v7);
  return (v16)(v13, v7);
}

uint64_t sub_2744E42E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v37 = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v35 = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v34 = sub_27463AE6C();
  v33 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v2 = sub_274639DEC();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v6;
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v55 = v7;
  v56 = v8;
  v9 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF918];
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v51 = v10;
  v52 = v11;
  v12 = swift_getWitnessTable();
  v49 = v7;
  v50 = v12;
  v13 = swift_getWitnessTable();
  v47 = v9;
  v48 = v13;
  v14 = v38;
  v15 = swift_getWitnessTable();
  v16 = sub_274412BBC();
  v37 = v2;
  v43 = v2;
  v44 = MEMORY[0x277D837D0];
  v17 = v15;
  v45 = v15;
  v46 = v16;
  v18 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v32 - v20;
  v32 = sub_27463965C();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v32 - v22;
  v23 = v39;
  sub_2744E4AB0(v39, v4);
  v24 = v23;
  if (sub_2744E4A80(v23))
  {
    v26 = *(v14 + 32);
    v25 = *(v14 + 40);
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  v43 = v26;
  v44 = v25;
  v27 = v37;
  sub_27463A8DC();

  (*(v36 + 8))(v4, v27);
  sub_27463A31C();
  sub_2744E5B88(v24);
  v43 = v27;
  v44 = MEMORY[0x277D837D0];
  v45 = v17;
  v46 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_27463A9FC();
  (*(v33 + 8))(v21, OpaqueTypeMetadata2);
  sub_2744E5C4C(v24);
  v41 = OpaqueTypeConformance2;
  v42 = MEMORY[0x277CDF918];
  v31 = v32;
  swift_getWitnessTable();
  sub_27457574C();
  sub_27463A90C();
  return (*(v35 + 8))(v29, v31);
}

uint64_t sub_2744E4AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  v4 = sub_27463ADAC();
  v116 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v138 = v4;
  v135 = sub_27463AE6C();
  v5 = sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v136 = sub_27463AE6C();
  v6 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v7 = sub_27463ADAC();
  v137 = v6;
  v8 = sub_274639DEC();
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v114 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v110 - v11;
  v134 = v12;
  v13 = sub_274639DEC();
  v121 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v120 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v110 - v16;
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v17 = sub_27463ADAC();
  v112 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v111 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v110 = &v110 - v20;
  v118 = *(v5 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v117 = &v110 - v25;
  v132 = v5;
  v133 = v26;
  v27 = sub_274639DEC();
  v119 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v130 = &v110 - v31;
  v123 = v32;
  v128 = v13;
  v33 = sub_274639DEC();
  v126 = *(v33 - 8);
  v127 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v110 - v34;
  v36 = v122;
  sub_2744E1F70(a1, &v187);
  v131 = v7;
  v125 = v35;
  if (v187 == 2)
  {
    v124 = v29;
    sub_2744E1E04(a1, &v187);
    if (v188 == 1 && v187)
    {
      sub_2744E5CC0(a1, v23);
      WitnessTable = swift_getWitnessTable();
      v39 = swift_getWitnessTable();
      v139 = WitnessTable;
      v140 = v39;
      v40 = v132;
      swift_getWitnessTable();
      v42 = v117;
      v41 = v118;
      v43 = *(v118 + 16);
      v43(v117, v23, v40);
      v44 = *(v41 + 8);
      v44(v23, v40);
      v43(v23, v42, v40);
      swift_getWitnessTable();
      sub_27456E7CC();
      v44(v23, v40);
      v44(v42, v40);
    }

    else
    {
      MEMORY[0x28223BE20](v37);
      v55 = *(a1 + 24);
      *(&v110 - 4) = v116;
      *(&v110 - 3) = v55;
      *(&v110 - 2) = v36;
      sub_27456E924();
      v56 = v111;
      sub_27463AD9C();
      v57 = v133;
      v122 = swift_getWitnessTable();
      v58 = v112;
      v59 = *(v112 + 16);
      v60 = v110;
      v59(v110, v56, v57);
      v61 = *(v58 + 8);
      v61(v56, v57);
      v59(v56, v60, v57);
      v62 = swift_getWitnessTable();
      v63 = swift_getWitnessTable();
      v151 = v62;
      v152 = v63;
      swift_getWitnessTable();
      sub_27456E878();
      v61(v56, v57);
      v61(v60, v57);
    }

    v64 = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v149 = v64;
    v150 = v65;
    v66 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v147 = v66;
    v148 = v67;
    v68 = v123;
    v122 = swift_getWitnessTable();
    v69 = v119;
    v70 = v124;
    (*(v119 + 16))(v124, v130, v68);
    v145 = swift_getWitnessTable();
    v146 = MEMORY[0x277CDF918];
    v71 = swift_getWitnessTable();
    v72 = swift_getWitnessTable();
    v143 = v71;
    v144 = v72;
    v73 = swift_getWitnessTable();
    v141 = v66;
    v142 = v73;
    swift_getWitnessTable();
    v74 = v125;
    sub_27456E7CC();
    v75 = *(v69 + 8);
    v75(v70, v68);
    v75(v130, v68);
  }

  else
  {
    v45 = MEMORY[0x277CDF918];
    sub_2744E1E04(a1, &v187);
    if (v188 == 1 && v187)
    {
      sub_2744E5CC0(a1, v23);
      v130 = MEMORY[0x277CE1138];
      v46 = swift_getWitnessTable();
      v47 = swift_getWitnessTable();
      v157 = v46;
      v158 = v47;
      v119 = MEMORY[0x277CE0340];
      v48 = v132;
      v122 = swift_getWitnessTable();
      v49 = v117;
      v50 = v118;
      v51 = *(v118 + 16);
      v51(v117, v23, v48);
      v52 = *(v50 + 8);
      v52(v23, v48);
      v51(v23, v49, v48);
      v155 = swift_getWitnessTable();
      v156 = MEMORY[0x277CDF918];
      v53 = swift_getWitnessTable();
      v54 = swift_getWitnessTable();
      v153 = v53;
      v154 = v54;
      swift_getWitnessTable();
      sub_27456E7CC();
      v52(v23, v48);
      v52(v49, v48);
    }

    else
    {
      v76 = v114;
      sub_2744E6FF0(a1, v114);
      v130 = MEMORY[0x277CE1198];
      v185 = swift_getWitnessTable();
      v186 = v45;
      v77 = swift_getWitnessTable();
      v78 = swift_getWitnessTable();
      v183 = v77;
      v184 = v78;
      v119 = MEMORY[0x277CE0340];
      v79 = v134;
      v122 = swift_getWitnessTable();
      v80 = v115;
      v81 = *(v115 + 16);
      v82 = v113;
      v81(v113, v76, v79);
      v83 = *(v80 + 8);
      v83(v76, v79);
      v81(v76, v82, v79);
      v84 = swift_getWitnessTable();
      v85 = swift_getWitnessTable();
      v181 = v84;
      v182 = v85;
      swift_getWitnessTable();
      sub_27456E878();
      v83(v76, v79);
      v83(v82, v79);
    }

    v86 = swift_getWitnessTable();
    v87 = swift_getWitnessTable();
    v179 = v86;
    v180 = v87;
    v88 = swift_getWitnessTable();
    v177 = swift_getWitnessTable();
    v178 = MEMORY[0x277CDF918];
    v89 = swift_getWitnessTable();
    v90 = swift_getWitnessTable();
    v175 = v89;
    v176 = v90;
    v91 = swift_getWitnessTable();
    v173 = v88;
    v174 = v91;
    v92 = v128;
    swift_getWitnessTable();
    v93 = v120;
    v94 = v121;
    v95 = v124;
    (*(v121 + 16))(v120, v124, v92);
    v96 = swift_getWitnessTable();
    v171 = v88;
    v172 = v96;
    swift_getWitnessTable();
    v74 = v125;
    sub_27456E878();
    v97 = *(v94 + 8);
    v97(v93, v92);
    v97(v95, v92);
  }

  v98 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v169 = v98;
  v170 = v99;
  v100 = swift_getWitnessTable();
  v101 = swift_getWitnessTable();
  v167 = v100;
  v168 = v101;
  v102 = swift_getWitnessTable();
  v165 = swift_getWitnessTable();
  v166 = MEMORY[0x277CDF918];
  v103 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v163 = v103;
  v164 = v104;
  v105 = swift_getWitnessTable();
  v161 = v100;
  v162 = v105;
  v106 = swift_getWitnessTable();
  v159 = v102;
  v160 = v106;
  v107 = v127;
  swift_getWitnessTable();
  v108 = v126;
  (*(v126 + 16))(v129, v74, v107);
  return (*(v108 + 8))(v74, v107);
}

double sub_2744E5B88(uint64_t a1)
{
  sub_2744E1E04(a1, &v9);
  v3 = 0.0;
  if (v10 != 1 || v9 == 0)
  {
    sub_2744E1F70(a1, &v9);
    if (v9 != 2)
    {
      v5 = *(v1 + 24);
      v6 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v6 = HIBYTE(v5) & 0xF;
      }

      if (v6)
      {
        sub_2744E20CC(a1, &v9);
        v7 = v11;
        sub_27440CB1C(&v9, &unk_2809507C0);
        if (v7)
        {
          return 19.0;
        }

        else
        {
          return 16.0;
        }
      }

      else
      {
        return 8.0;
      }
    }
  }

  return v3;
}

uint64_t sub_2744E5C4C(uint64_t a1)
{
  sub_2744E1F70(a1, &v5);
  if (v5 == 2)
  {
    return 0;
  }

  sub_2744E1E04(a1, &v3);
  if ((v4 & (v3 != 0)) != 0)
  {
    return 0;
  }

  else
  {
    return 0x4046000000000000;
  }
}

uint64_t sub_2744E5CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  v4 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v47 = v4;
  v5 = sub_27463AE6C();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - v8;
  v52 = v3;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  v43 = swift_getWitnessTable();
  v9 = sub_27463ADAC();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v43 - v13;
  v14 = sub_274639C4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_274639DEC();
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x28223BE20](v18);
  v53 = &v43 - v19;
  v20 = a1;
  v21 = a1;
  v22 = v51;
  sub_2744E1C00(v21, v17);
  v23 = sub_274639C3C();
  v24 = (*(v15 + 8))(v17, v14);
  if (v23)
  {
    MEMORY[0x28223BE20](v24);
    v25 = *(v20 + 24);
    *(&v43 - 4) = v52;
    *(&v43 - 3) = v25;
    *(&v43 - 2) = v22;
    sub_27456E924();
    sub_27463AD9C();
    swift_getWitnessTable();
    v27 = v44;
    v26 = v45;
    v28 = *(v45 + 16);
    v28(v44, v11, v9);
    v29 = *(v26 + 8);
    v29(v11, v9);
    v28(v11, v27, v9);
    swift_getWitnessTable();
    v30 = v53;
    sub_27456E7CC();
    v29(v11, v9);
    v29(v27, v9);
  }

  else
  {
    v31 = sub_274639C6C();
    MEMORY[0x28223BE20](v31);
    v32 = *(v20 + 24);
    *(&v43 - 4) = v52;
    *(&v43 - 3) = v32;
    *(&v43 - 2) = v22;
    v33 = v49;
    sub_27463AE5C();
    swift_getWitnessTable();
    v34 = v50;
    v35 = *(v50 + 16);
    v36 = v48;
    v35(v48, v33, v5);
    v37 = *(v34 + 8);
    v37(v33, v5);
    v35(v33, v36, v5);
    swift_getWitnessTable();
    v30 = v53;
    sub_27456E878();
    v37(v33, v5);
    v37(v36, v5);
  }

  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v57 = v38;
  v58 = v39;
  v40 = v55;
  swift_getWitnessTable();
  v41 = v54;
  (*(v54 + 16))(v56, v30, v40);
  return (*(v41 + 8))(v30, v40);
}

uint64_t sub_2744E6360@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v25 = sub_27463AE6C();
  v2 = sub_274639DEC();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = sub_27463965C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008);
  MEMORY[0x28223BE20](v28);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for ParameterLayoutView();
  sub_2744E682C(v16, v15);
  sub_2744E5CC0(v16, v4);
  sub_27463B0EC();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v37[5] = WitnessTable;
  v37[6] = v18;
  v19 = swift_getWitnessTable();
  sub_27463A8FC();
  (*(v27 + 8))(v4, v2);
  v37[3] = v19;
  v37[4] = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = *(v6 + 16);
  v22 = v26;
  v21(v26, v8, v5);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_27445EAD4(v15, v12, &qword_28094F008);
  v35 = 0x4034000000000000;
  v36 = 0;
  v37[0] = v12;
  v37[1] = &v35;
  v21(v8, v22, v5);
  v37[2] = v8;
  v34[0] = v28;
  v34[1] = MEMORY[0x277CE1180];
  v34[2] = v5;
  v31 = sub_2744E8FE4();
  v32 = MEMORY[0x277CE1170];
  v33 = v20;
  sub_274575750(v37, 3, v34);
  v23(v22, v5);
  sub_27440CB1C(v15, &qword_28094F008);
  v23(v8, v5);
  return sub_27440CB1C(v12, &qword_28094F008);
}

uint64_t sub_2744E682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F128);
  MEMORY[0x28223BE20](v67);
  v68 = &v56 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F130);
  MEMORY[0x28223BE20](v56);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v56 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0C8);
  MEMORY[0x28223BE20](v66);
  v59 = (&v56 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F138);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0F8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v61 = &v56 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0E8);
  MEMORY[0x28223BE20](v70);
  v64 = &v56 - v17;
  v60 = v2;
  sub_2744E78E8();
  sub_2744E81FC();
  v18 = sub_27463A50C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = sub_27463A38C();
  sub_2746390AC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v22 &= 1u;
  __dst[0] = v22;
  LOBYTE(v73[0]) = 0;
  KeyPath = swift_getKeyPath();
  v71[0] = 0;
  *&v73[0] = v18;
  *(&v73[0] + 1) = v20;
  LOBYTE(v73[1]) = v22;
  *(&v73[1] + 1) = v24;
  LOBYTE(v73[2]) = v25;
  *(&v73[2] + 1) = v27;
  *&v73[3] = v29;
  *(&v73[3] + 1) = v31;
  *&v73[4] = v33;
  BYTE8(v73[4]) = 0;
  *&v73[5] = KeyPath;
  *(&v73[5] + 1) = 6;
  LOBYTE(v73[6]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F100);
  sub_2744E92A8();
  sub_27463A7BC();
  memcpy(__dst, v73, 0x61uLL);
  v35 = v61;
  sub_27440CB1C(__dst, &qword_28094F100);
  sub_2744E20CC(a1, v73);
  LOBYTE(v24) = *(&v73[1] + 1) == 0;
  sub_27440CB1C(v73, &unk_2809507C0);
  (*(v62 + 32))(v35, v13, v63);
  v36 = *(v15 + 44);
  v37 = a1;
  v38 = (v35 + v36);
  *v38 = 0;
  v38[1] = v24;
  sub_2744E20CC(a1, v71);
  if (!v72)
  {
    sub_27440CB1C(v71, &unk_2809507C0);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    memset(v73, 0, 32);
    v73[2] = xmmword_274653F30;
    sub_27440CB1C(v73, &qword_280951AF0);
    v41 = v64;
    v40 = v65;
    v42 = v70;
    goto LABEL_7;
  }

  v39 = *&v73[2];
  sub_27440CB1C(v73, &qword_280951AF0);
  v41 = v64;
  v40 = v65;
  v42 = v70;
  if (v39 != 1)
  {
    v43 = sub_274639FAC();
    goto LABEL_8;
  }

LABEL_7:
  v43 = sub_274639F8C();
LABEL_8:
  v44 = v43;
  sub_27445EA84(v35, v41, &qword_28094F0F8);
  *(v41 + *(v42 + 36)) = v44;
  sub_2744E1E04(v37, v73);
  if (BYTE8(v73[0]))
  {
    sub_27445EAD4(v41, v68, &qword_28094F0E8);
    swift_storeEnumTagMultiPayload();
    sub_2744E9070();
    sub_2744E9128();
    sub_274639DDC();
  }

  else
  {
    v45 = sub_274639B2C();
    v46 = v59;
    *v59 = v45;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F140) + 44);
    v48 = swift_getKeyPath();
    v49 = v57;
    sub_27445EAD4(v41, v57, &qword_28094F0E8);
    v50 = v49 + *(v56 + 36);
    *v50 = v48;
    *(v50 + 8) = 2;
    v51 = v58;
    sub_27445EAD4(v49, v58, &qword_28094F130);
    *v47 = 0;
    *(v47 + 8) = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F148);
    sub_27445EAD4(v51, v47 + *(v52 + 48), &qword_28094F130);
    sub_27440CB1C(v49, &qword_28094F130);
    sub_27440CB1C(v51, &qword_28094F130);
    sub_27463B0CC();
    sub_2746392FC();
    v53 = (v46 + *(v66 + 36));
    v54 = v73[1];
    *v53 = v73[0];
    v53[1] = v54;
    v53[2] = v73[2];
    sub_27445EAD4(v46, v68, &qword_28094F0C8);
    swift_storeEnumTagMultiPayload();
    sub_2744E9070();
    sub_2744E9128();
    sub_274639DDC();
    sub_27440CB1C(v46, &qword_28094F0C8);
  }

  sub_27445EA84(v40, v69, &qword_28094F008);
  return sub_27440CB1C(v41, &qword_28094F0E8);
}

uint64_t sub_2744E6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  v58 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  v4 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v54 = v4;
  v5 = sub_27463ADAC();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v48 = swift_getWitnessTable();
  v10 = sub_27463AE6C();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - v11;
  v63 = v12;
  v13 = sub_27463965C();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v48 - v17;
  v18 = sub_274639C4C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v5;
  v22 = sub_274639DEC();
  v61 = *(v22 - 8);
  v62 = v22;
  MEMORY[0x28223BE20](v22);
  v59 = &v48 - v23;
  v24 = v57;
  sub_2744E1C00(a1, v21);
  v25 = sub_274639C3C();
  v26 = (*(v19 + 8))(v21, v18);
  if (v25)
  {
    v27 = sub_274639C6C();
    MEMORY[0x28223BE20](v27);
    v28 = *(a1 + 24);
    *(&v48 - 4) = v58;
    *(&v48 - 3) = v28;
    *(&v48 - 2) = v24;
    v29 = v49;
    sub_27463AE5C();
    sub_27463A38C();
    v30 = v63;
    v31 = swift_getWitnessTable();
    sub_27463A9FC();
    (*(v50 + 8))(v29, v30);
    v65 = v31;
    v66 = MEMORY[0x277CDF918];
    v58 = swift_getWitnessTable();
    v32 = v52;
    v33 = *(v52 + 16);
    v34 = v51;
    v33(v51, v15, v13);
    v35 = *(v32 + 8);
    v35(v15, v13);
    v33(v15, v34, v13);
    swift_getWitnessTable();
    v36 = v59;
    sub_27456E7CC();
    v35(v15, v13);
    v35(v34, v13);
  }

  else
  {
    MEMORY[0x28223BE20](v26);
    v37 = *(a1 + 24);
    *(&v48 - 4) = v58;
    *(&v48 - 3) = v37;
    *(&v48 - 2) = v24;
    sub_27456E924();
    sub_27463AD9C();
    v38 = v60;
    swift_getWitnessTable();
    v39 = v55;
    v40 = v56;
    v41 = *(v56 + 16);
    v41(v55, v7, v38);
    v42 = *(v40 + 8);
    v42(v7, v38);
    v41(v7, v39, v38);
    v71 = swift_getWitnessTable();
    v72 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v36 = v59;
    sub_27456E878();
    v42(v7, v38);
    v42(v39, v38);
  }

  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v67 = v43;
  v68 = v44;
  v45 = v62;
  swift_getWitnessTable();
  v46 = v61;
  (*(v61 + 16))(v64, v36, v45);
  return (*(v46 + 8))(v36, v45);
}

uint64_t sub_2744E78E8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2744E7918@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v21[2] = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  v2 = sub_274639DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008);
  MEMORY[0x28223BE20](v21[0]);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = type metadata accessor for ParameterLayoutView();
  sub_2744E682C(v14, v13);
  sub_2744E5CC0(v14, v5);
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v25[3] = WitnessTable;
  v25[4] = v16;
  v17 = swift_getWitnessTable();
  v18 = *(v3 + 16);
  v18(v8, v5, v2);
  v19 = *(v3 + 8);
  v19(v5, v2);
  sub_27445EAD4(v13, v10, &qword_28094F008);
  v23 = 0;
  v24 = 1;
  v25[0] = v10;
  v25[1] = &v23;
  v18(v5, v8, v2);
  v25[2] = v5;
  v22[0] = v21[0];
  v22[1] = MEMORY[0x277CE1180];
  v22[2] = v2;
  v21[3] = sub_2744E8FE4();
  v21[4] = MEMORY[0x277CE1170];
  v21[5] = v17;
  sub_274575750(v25, 3, v22);
  v19(v8, v2);
  sub_27440CB1C(v13, &qword_28094F008);
  v19(v5, v2);
  return sub_27440CB1C(v10, &qword_28094F008);
}

uint64_t sub_2744E7CD4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v32 = sub_27463AE6C();
  v2 = sub_274639DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094F010);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for ParameterLayoutView();
  sub_2744E682C(v19, v10);
  sub_27463B0DC();
  sub_27463973C();
  sub_27445EA84(v10, v15, &qword_28094F008);
  memcpy(&v15[*(v11 + 36)], __src, 0x70uLL);
  sub_27445EA84(v15, v18, qword_28094F010);
  sub_2744E5CC0(v19, v5);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v40[3] = WitnessTable;
  v40[4] = v21;
  v22 = swift_getWitnessTable();
  v23 = *(v3 + 16);
  v24 = v31;
  v23(v31, v5, v2);
  v25 = *(v3 + 8);
  v25(v5, v2);
  v26 = v29;
  sub_27445EAD4(v18, v29, qword_28094F010);
  v38 = 0;
  v39 = 1;
  v40[0] = v26;
  v40[1] = &v38;
  v23(v5, v24, v2);
  v40[2] = v5;
  v37[0] = v28;
  v37[1] = MEMORY[0x277CE1180];
  v37[2] = v2;
  v34 = sub_2744E9414();
  v35 = MEMORY[0x277CE1170];
  v36 = v22;
  sub_274575750(v40, 3, v37);
  v25(v24, v2);
  sub_27440CB1C(v18, qword_28094F010);
  v25(v5, v2);
  return sub_27440CB1C(v26, qword_28094F010);
}

uint64_t sub_2744E81FC()
{
  sub_27463A46C();
  sub_27463A3EC();
  v0 = sub_27463A42C();

  return v0;
}

uint64_t sub_2744E823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = type metadata accessor for ParameterLayoutView();
  v13 = *(v6 + 16);
  v13(v11, (a1 + *(v12 + 44)), a2);
  v13(v8, v11, a2);
  v18 = 0;
  v19 = 0;
  v20[0] = v8;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x277CE1180];
  v16[0] = a3;
  v16[1] = MEMORY[0x277CE1170];
  sub_274575750(v20, 2, v17);
  v14 = *(v6 + 8);
  v14(v11, a2);
  return (v14)(v8, a2);
}

uint64_t sub_2744E83CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = type metadata accessor for ParameterLayoutView();
  v13 = *(v6 + 16);
  v13(v11, (a1 + *(v12 + 44)), a2);
  v20 = 0;
  v21 = 0;
  v22[0] = &v20;
  v13(v8, v11, a2);
  v18 = 0;
  v19 = 0;
  v22[1] = v8;
  v22[2] = &v18;
  v17[0] = MEMORY[0x277CE1180];
  v17[1] = a2;
  v17[2] = MEMORY[0x277CE1180];
  v16[1] = MEMORY[0x277CE1170];
  v16[2] = a3;
  v16[3] = MEMORY[0x277CE1170];
  sub_274575750(v22, 3, v17);
  v14 = *(v6 + 8);
  v14(v11, a2);
  return (v14)(v8, a2);
}

uint64_t sub_2744E8578@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F098);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  sub_27463A0CC();
  v5[*(v3 + 44)] = 0;
  v6 = [objc_opt_self() systemGray4Color];
  sub_27463AB0C();
  sub_27463A0DC();
  v7 = sub_27463ABAC();

  if (sub_27463A0DC())
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_27463B10C();
  }

  v9 = sub_27463B0CC();
  v11 = v10;
  sub_2744E8EFC(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0A0);
  v13 = (a1 + *(result + 36));
  *v13 = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v11;
  return result;
}

void sub_2744E8710()
{
  sub_2744E8E08(319, &qword_280950070, sub_274439BAC, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_2744E8E6C(319, &unk_28094C490, &qword_280950E20, &unk_27464D880, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2744E8E08(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2744335D4(319, &qword_28094BC08);
          if (v4 <= 0x3F)
          {
            sub_2744335D4(319, &unk_28094A600);
            if (v5 <= 0x3F)
            {
              sub_2744E8E6C(319, &qword_28094A5F0, &unk_2809507C0, &unk_274649C60, MEMORY[0x277CDF468]);
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

uint64_t sub_2744E8900(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_274639C4C();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, v7, v5);
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((((v14 + ((v16 + ((*(v6 + 64) + ((v15 + 48) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v17 <= 3)
    {
      v18 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_24:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }

        result = v8 + (v25 | v23) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_2744E8B54(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_274639C4C() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((((v12 + ((v14 + ((*(v8 + 64) + ((v13 + 48) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v20;
        break;
      case 2:
        *(a1 + v15) = v20;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v15) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_2744E8E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2744E8E6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2744E8EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2744E8F6C()
{
  result = qword_28094F0A8;
  if (!qword_28094F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0A8);
  }

  return result;
}

unint64_t sub_2744E8FE4()
{
  result = qword_28094F0B8;
  if (!qword_28094F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
    sub_2744E9070();
    sub_2744E9128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0B8);
  }

  return result;
}

unint64_t sub_2744E9070()
{
  result = qword_28094F0C0;
  if (!qword_28094F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0C8);
    sub_27440CA78(&qword_28094F0D0, &qword_28094F0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0C0);
  }

  return result;
}

unint64_t sub_2744E9128()
{
  result = qword_28094F0E0;
  if (!qword_28094F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0E8);
    sub_2744E91E0();
    sub_27440CA78(&qword_28094AA10, &qword_28094AA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0E0);
  }

  return result;
}

unint64_t sub_2744E91E0()
{
  result = qword_28094F0F0;
  if (!qword_28094F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F100);
    sub_2744E92A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0F0);
  }

  return result;
}

unint64_t sub_2744E92A8()
{
  result = qword_28094F108;
  if (!qword_28094F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F100);
    sub_2744E9360();
    sub_27440CA78(&qword_28094F118, &qword_28094F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F108);
  }

  return result;
}

unint64_t sub_2744E9360()
{
  result = qword_28094F110;
  if (!qword_28094F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F110);
  }

  return result;
}

unint64_t sub_2744E9414()
{
  result = qword_28094F150;
  if (!qword_28094F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
    sub_2744E8FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F150);
  }

  return result;
}

unint64_t sub_2744E94A0()
{
  result = qword_28094F158;
  if (!qword_28094F158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0A0);
    sub_2744E9558();
    sub_27440CA78(&qword_28094F170, &qword_28094F178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F158);
  }

  return result;
}

unint64_t sub_2744E9558()
{
  result = qword_28094F160;
  if (!qword_28094F160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F098);
    sub_2744E9640(&qword_28094F168, MEMORY[0x277CDE278]);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F160);
  }

  return result;
}

uint64_t sub_2744E9640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = result;
  *(v2 - 128) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_getTupleTypeMetadata3();
}

uint64_t VariableConfigurationAggrandizementsViewModel.init(variable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2744E9758@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v4 = *(v1 + 48);
  v11 = *(v1 + 32);
  v12 = v4;
  v14 = *(v1 + 56);
  v5 = v14;
  v13 = *(v1 + 40);
  v6 = v11;
  sub_2744EBCAC(&v13, v9);
  v7 = sub_2744E97F4(v6);

  return sub_2744E98C0(v10, v7, a1);
}

uint64_t sub_2744E97F4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_10();
  v2 = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 propertyName];
    if (!v4)
    {
      sub_27463B6AC();
      v4 = sub_27463B66C();
    }

    v5 = [swift_getObjCClassFromMetadata() propertyForName_];

    if (v5)
    {
      v6 = sub_27463BD1C();

      if (v6)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_2744E98C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v107 = a2;
  v108 = a3;
  v121 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1A8) - 8);
  MEMORY[0x28223BE20](v121);
  v112 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = (&v102 - v6);
  v7 = sub_274638B1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v102 - v16);
  LODWORD(v120) = *MEMORY[0x277D7D450];
  v119 = *(v8 + 104);
  v119(v10, v15);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 1) = *a1;
  *(v18 + 2) = v19;
  v20 = a1[3];
  *(v18 + 3) = a1[2];
  *(v18 + 4) = v20;
  v21 = *(v12 + 64);
  v118 = *(v8 + 32);
  v118(v17 + v21, v10, v7);
  __swift_storeEnumTagSinglePayload(v17 + v21, 0, 1, v7);
  *(v17 + *(v12 + 68)) = 0;
  *v17 = sub_2744EBCE4;
  v17[1] = v18;
  v110 = v17;
  v22 = v10;
  (v119)(v10, v120, v7);
  v23 = swift_allocObject();
  v24 = a1[1];
  v23[1] = *a1;
  v23[2] = v24;
  v25 = a1[3];
  v23[3] = a1[2];
  v23[4] = v25;
  v26 = v121;
  v27 = v121[16];
  v28 = v109;
  v118(v109 + v27, v22, v7);
  __swift_storeEnumTagSinglePayload(v28 + v27, 0, 1, v7);
  *(v28 + v26[17]) = 0;
  *v28 = sub_2744EBD4C;
  v28[1] = v23;
  v29 = v28;
  sub_274412734(0, &qword_28094F1B8);
  v30 = swift_dynamicCastMetatype();
  v31 = MEMORY[0x277D85700];
  if (v30)
  {
    v32 = a1[1];
    v126 = *a1;
    v127 = v32;
    v33 = a1[3];
    v128 = a1[2];
    v129 = v33;
    sub_2744EBD54(a1, v122);
    sub_2744EBD54(a1, v122);
    v34 = sub_2744EADB0();
    v35 = v34;
    if (v34)
    {
      v36 = [v34 timeUnits];
    }

    else
    {
      v36 = 0;
    }

    sub_27463B9CC();
    sub_2744EBD54(a1, &v126);
    v37 = sub_27463B9BC();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v31;
    v39 = a1[1];
    *(v38 + 32) = *a1;
    *(v38 + 48) = v39;
    v40 = a1[3];
    *(v38 + 64) = a1[2];
    *(v38 + 80) = v40;
    *(v38 + 96) = v36;
    v114 = v35 == 0;
    *(v38 + 104) = v114;
    sub_2744EBD54(a1, &v126);
    v41 = sub_27463B9BC();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v31;
    v43 = a1[1];
    *(v42 + 32) = *a1;
    *(v42 + 48) = v43;
    v44 = a1[3];
    *(v42 + 64) = a1[2];
    *(v42 + 80) = v44;
    sub_274412734(0, &qword_28094F1F0);
    sub_27463AF0C();
    v45 = *(&v126 + 1);
    v46 = v127;
    v119 = v126;

    v118 = v45;

    v121 = v46;
    v47 = v46;
  }

  else
  {
    sub_2744EBD54(a1, &v126);
    sub_2744EBD54(a1, &v126);
    v36 = 0;
    v114 = 0;
    v119 = 0;
    v118 = 0;
    v121 = 0;
  }

  v120 = v36;
  sub_274412734(0, &qword_28094F1C0);
  if (swift_dynamicCastMetatype())
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, &v126);
    v48 = sub_27463B9BC();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v31;
    v50 = a1[1];
    *(v49 + 32) = *a1;
    *(v49 + 48) = v50;
    v51 = a1[3];
    *(v49 + 64) = a1[2];
    *(v49 + 80) = v51;
    sub_2744EBD54(a1, &v126);
    v52 = sub_27463B9BC();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v31;
    v54 = a1[1];
    *(v53 + 32) = *a1;
    *(v53 + 48) = v54;
    v55 = a1[3];
    *(v53 + 64) = a1[2];
    *(v53 + 80) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1E0);
    sub_27463AF0C();
    sub_274540484(v126, *(&v126 + 1), v127, v122);
    v56 = v122[1];
    v106 = *(&v124 + 1);
    v115 = v124;
    v117 = v122[0];
    v132 = v123;
    v133 = v122[0];
    v113 = v123;
    v131 = v124;
    v105 = v125;
    v130 = v125;
    sub_27445E9E4(&v133, &v126);
    v116 = v56;

    sub_274439BF0(&v132, &v126, &qword_28094F1E0);
    sub_27448E448(&v131, &v126);
    sub_274439BF0(&v130, &v126, &qword_28094F1E8);
  }

  else
  {
    v117 = 0;
    v116 = 0;
    v113 = 0;
    v115 = 0;
    v106 = 0;
    v105 = 0;
  }

  sub_274412734(0, &qword_28094F1C8);
  if (swift_dynamicCastMetatype() && (v57 = a1[1], v126 = *a1, v127 = v57, v58 = a1[3], v128 = a1[2], v129 = v58, (v59 = sub_2744EADB0()) != 0) && (v60 = v59, v61 = [v59 measurementUnitType], v60, v61))
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, &v126);
    v62 = sub_27463B9BC();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v31;
    v64 = a1[1];
    *(v63 + 32) = *a1;
    *(v63 + 48) = v64;
    v65 = a1[3];
    *(v63 + 64) = a1[2];
    *(v63 + 80) = v65;
    sub_2744EBD54(a1, &v126);
    v66 = sub_27463B9BC();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v31;
    v68 = a1[1];
    *(v67 + 32) = *a1;
    *(v67 + 48) = v68;
    v69 = a1[3];
    *(v67 + 64) = a1[2];
    *(v67 + 80) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1D8);
    sub_27463AF0C();
    v70 = v126;
    v104 = v127;
    v71 = v127;
    v103 = v61;
    v72 = v61;
    v107 = v70;

    v102 = *(&v70 + 1);
  }

  else
  {
    v103 = 0;
    v107 = 0;
    v102 = 0;
    v104 = 0;
  }

  v73 = v111;
  sub_274439BF0(v110, v111, &qword_28094F1B0);
  v74 = v112;
  sub_274439BF0(v29, v112, &qword_28094F1A8);
  v75 = v108;
  sub_274439BF0(v73, v108, &qword_28094F1B0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1D0);
  sub_274439BF0(v74, v75 + v76[12], &qword_28094F1A8);
  v77 = (v75 + v76[16]);
  v78 = v120;
  *v77 = v120;
  v79 = v78;
  v80 = v114;
  v77[1] = v114;
  v81 = v80;
  v114 = v80;
  v82 = v119;
  v77[2] = v119;
  v83 = v82;
  v119 = v82;
  v84 = v118;
  v77[3] = v118;
  v85 = v84;
  v118 = v84;
  v86 = v121;
  v77[4] = v121;
  v121 = v86;
  v87 = (v75 + v76[20]);
  v88 = v117;
  v89 = v116;
  *v87 = v117;
  v87[1] = v89;
  v90 = v113;
  v91 = v115;
  v87[2] = v113;
  v87[3] = v91;
  v92 = v105;
  v87[4] = v106;
  v87[5] = v92;
  v108 = (v75 + v76[24]);
  sub_2744EBD8C(v79, v81, v83, v85, v86);
  v117 = v88;
  v116 = v89;
  v113 = v90;
  v115 = v91;
  sub_2744EBDE4(v88, v89, v90);
  v93 = v103;
  v94 = v107;
  v95 = v102;
  v96 = v104;
  sub_2744EBE50(v103, v107, v102, v104);
  sub_2744EBEAC(v88, v89, v90);
  v97 = v114;
  v98 = v119;
  v99 = v118;
  sub_2744EBF18(v120, v114, v119, v118, v121);
  sub_2744EBF64(v93, v94, v95, v96);
  v100 = v108;
  *v108 = v93;
  v100[1] = v94;
  v100[2] = v95;
  v100[3] = v96;
  sub_274415174(v109, &qword_28094F1A8);
  sub_274415174(v110, &qword_28094F1B0);
  sub_2744EBF64(v93, v94, v95, v96);
  sub_2744EBEAC(v117, v116, v113);
  sub_2744EBF18(v120, v97, v98, v99, v121);
  sub_274415174(v112, &qword_28094F1A8);
  return sub_274415174(v111, &qword_28094F1B0);
}

uint64_t sub_2744EA4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v19 = *(a1 + 40);
  *&v19[16] = *(a1 + 56);
  result = sub_2744EA6A0();
  if (result)
  {
    *v19 = *a1;
    *&v19[16] = *(a1 + 16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
    MEMORY[0x277C575F0](&v20, v5);
    v6 = v20;
    v7 = sub_27463BB9C();

    sub_27463B9CC();
    sub_2744EBD54(a1, v19);
    v8 = sub_27463B9BC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    v11 = *(a1 + 16);
    *(v9 + 32) = *a1;
    *(v9 + 48) = v11;
    v12 = *(a1 + 48);
    *(v9 + 64) = *(a1 + 32);
    *(v9 + 80) = v12;
    sub_2744EBD54(a1, v19);
    v13 = sub_27463B9BC();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v15 = *(a1 + 16);
    *(v14 + 32) = *a1;
    *(v14 + 48) = v15;
    v16 = *(a1 + 48);
    *(v14 + 64) = *(a1 + 32);
    *(v14 + 80) = v16;
    sub_274412734(0, &qword_28094F208);
    result = sub_27463AF0C();
    v17 = *v19;
    v18 = *&v19[8];
  }

  else
  {
    v7 = 0;
    v17 = 0;
    v18 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_2744EA6A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v18 = *v0;
  v19 = v2;
  v20 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](&v17);
  v5 = v17;
  v6 = [v17 supportsAggrandizements];

  if (!v6)
  {
    goto LABEL_8;
  }

  v18 = v1;
  v19 = v2;
  v20 = v3;
  MEMORY[0x277C575F0](&v17, v4);
  v7 = v17;
  v8 = [v17 type];

  v9 = sub_27463B6AC();
  v11 = v10;

  if (v9 == sub_27463B6AC() && v11 == v12)
  {

LABEL_8:
    v15 = 0;
    return v15 & 1;
  }

  v14 = sub_27463C6BC();

  v15 = v14 ^ 1;
  return v15 & 1;
}

id sub_2744EA7E8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D7C258]) initWithCoercionItemClass_];
  *a1 = result;
  return result;
}

uint64_t VariableConfigurationAggrandizementsViewModel.apply(_:)()
{
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_10_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](v14);
  v2 = v14[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  *(inited + 32) = v0;
  v14[1] = MEMORY[0x277D84F90];
  v4 = v0;
  v5 = *(inited + 32);
  if (v5)
  {
    v6 = v5;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v8)
    {
      OUTLINED_FUNCTION_2_18(v7);
      sub_27463B85C();
    }

    sub_27463B8AC();
  }

  swift_setDeallocating();
  sub_2744EBC28(&qword_28094F1A0);
  sub_274412734(0, &unk_28094F190);
  v9 = sub_27463B7FC();

  v11 = OUTLINED_FUNCTION_13_9(v10, sel_variableBySettingAggrandizements_);

  OUTLINED_FUNCTION_10_13();
  v14[0] = v11;

  v12 = v1;
  OUTLINED_FUNCTION_17_8();
}

uint64_t sub_2744EA9FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = [swift_getObjCClassFromMetadata() allProperties];
  sub_274412734(0, &qword_28094F1F8);
  v6 = sub_27463B81C();

  v7 = sub_274453594(v6);

  if (v7)
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, v22);
    v9 = sub_27463B9BC();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    v12 = *(a1 + 16);
    *(v10 + 32) = *a1;
    *(v10 + 48) = v12;
    v13 = *(a1 + 48);
    *(v10 + 64) = *(a1 + 32);
    *(v10 + 80) = v13;
    sub_2744EBD54(a1, v22);
    v14 = sub_27463B9BC();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v11;
    v16 = *(a1 + 16);
    *(v15 + 32) = *a1;
    *(v15 + 48) = v16;
    v17 = *(a1 + 48);
    *(v15 + 64) = *(a1 + 32);
    *(v15 + 80) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F200);
    result = sub_27463AF0C();
    v18 = v22[0];
    v19 = v22[1];
    v20 = v22[2];
    v21 = *(a1 + 24);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v4 = 0;
  }

  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v4;
  return result;
}

void VariableConfigurationAggrandizementsViewModel.apply(_:)()
{
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_10_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  OUTLINED_FUNCTION_10_13();
  *(inited + 32) = VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter();
  *(inited + 40) = v0;
  v7[1] = MEMORY[0x277D84F90];
  v2 = v0;
  while (1)
  {
    do
    {
      OUTLINED_FUNCTION_5_21();
    }

    while (!v3);
    v4 = v3;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v6)
    {
      OUTLINED_FUNCTION_2_18(v5);
      sub_27463B85C();
    }

    sub_27463B8AC();
  }
}

{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_1_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  OUTLINED_FUNCTION_11_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746541E0;
  OUTLINED_FUNCTION_0_28();
  *(inited + 32) = VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 40) = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  *(inited + 48) = v0;
  OUTLINED_FUNCTION_1_19();
  v2 = v0;
  *(inited + 56) = VariableConfigurationAggrandizementsViewModel.dictionaryAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 64) = VariableConfigurationAggrandizementsViewModel.unitAggrandizement.getter();
  while (1)
  {
    do
    {
      OUTLINED_FUNCTION_5_21();
    }

    while (!v3);
    v4 = v3;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v6)
    {
      OUTLINED_FUNCTION_2_18(v5);
      sub_27463B85C();
    }

    OUTLINED_FUNCTION_12_9();
  }
}

{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_1_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  OUTLINED_FUNCTION_11_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746541E0;
  OUTLINED_FUNCTION_0_28();
  *(inited + 32) = VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 40) = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 48) = VariableConfigurationAggrandizementsViewModel.dateAggrandizement.getter();
  *(inited + 56) = v0;
  OUTLINED_FUNCTION_1_19();
  v2 = v0;
  *(inited + 64) = VariableConfigurationAggrandizementsViewModel.unitAggrandizement.getter();
  while (1)
  {
    do
    {
      OUTLINED_FUNCTION_5_21();
    }

    while (!v3);
    v4 = v3;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v6)
    {
      OUTLINED_FUNCTION_2_18(v5);
      sub_27463B85C();
    }

    OUTLINED_FUNCTION_12_9();
  }
}

{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_1_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  OUTLINED_FUNCTION_11_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746541E0;
  OUTLINED_FUNCTION_0_28();
  *(inited + 32) = VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 40) = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 48) = VariableConfigurationAggrandizementsViewModel.dateAggrandizement.getter();
  OUTLINED_FUNCTION_0_28();
  *(inited + 56) = VariableConfigurationAggrandizementsViewModel.dictionaryAggrandizement.getter();
  *(inited + 64) = v0;
  v2 = v0;
  while (1)
  {
    do
    {
      OUTLINED_FUNCTION_5_21();
    }

    while (!v3);
    v4 = v3;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v6)
    {
      OUTLINED_FUNCTION_2_18(v5);
      sub_27463B85C();
    }

    OUTLINED_FUNCTION_12_9();
  }
}

id sub_2744EADB0()
{
  v16 = *v0;
  v17 = *(v0 + 1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](&v15, v1);
  v2 = v15;
  v3 = [v15 aggrandizements];

  sub_274412734(0, &unk_28094F190);
  v4 = sub_27463B81C();

  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = sub_274453594(v4);
  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v10 = MEMORY[0x277C58B20](0, v5);
      goto LABEL_16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v5 = v16;
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  if (!sub_274453594(v5))
  {

    return 0;
  }

  sub_2744535A4(0, (v5 & 0xC000000000000001) == 0);
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  v10 = *(v5 + 32);
LABEL_16:
  v11 = v10;

  v12 = [v11 propertyName];
  if (!v12)
  {
    sub_27463B6AC();
    v12 = sub_27463B66C();
  }

  v13 = [swift_getObjCClassFromMetadata() propertyForName_];

  if (!v13)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2744EB038@<X0>(uint64_t a1@<X2>, __int16 a2@<W3>, char a3@<W4>, void *a4@<X8>)
{
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  sub_2744EBCAC(&v17, v16);
  v7 = VariableConfigurationAggrandizementsViewModel.dateAggrandizement.getter();
  if (!v7)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    if ((a2 & 0xE0) == 0)
    {
      sub_274412734(0, &qword_28094F1F0);
      v9 = *MEMORY[0x277CFC678];
      v10 = MEMORY[0x277CFC680];
      goto LABEL_7;
    }

    if ((a2 & 0x201C) != 0)
    {
LABEL_5:
      sub_274412734(0, &qword_28094F1F0);
      v8 = MEMORY[0x277CFC678];
    }

    else
    {
      sub_274412734(0, &qword_28094F1F0);
      v8 = MEMORY[0x277CFC680];
    }

    v9 = *v8;
    v10 = MEMORY[0x277CFC698];
LABEL_7:
    v11 = *v10;
    v12 = v9;
    v13 = v11;
    v7 = sub_2744EBB30(v9, v11, 0);
  }

  v14 = v7;
  result = sub_2744EC0C0(&v17);
  *a4 = v14;
  return result;
}

id sub_2744EB1A0(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void, BOOL, uint64_t))
{
  v19 = *v3;
  v20 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](&v18, v4);
  v5 = v18;
  v6 = [v18 aggrandizements];

  sub_274412734(0, &unk_28094F190);
  v7 = sub_27463B81C();

  v8 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v9 = sub_274453594(v7);
  v10 = 0;
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v13 = MEMORY[0x277C58B20](0, v8);
      goto LABEL_16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v8 = v19;
      ++v10;
    }

    else
    {

      ++v10;
    }
  }

  if (a2(v8))
  {
    a3(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    v13 = *(v8 + 32);
LABEL_16:
    v14 = v13;

    return v14;
  }

  return 0;
}

uint64_t sub_2744EB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_11(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, v16, v17);
  v8(v9);
}

uint64_t sub_2744EB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_11(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, v16, v17);
  v8(v9);
}

uint64_t VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter()
{
  OUTLINED_FUNCTION_14_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180);
  MEMORY[0x277C575F0](&v7, v0);
  v1 = v7;
  v2 = [v7 aggrandizements];

  sub_274412734(0, &unk_28094F190);
  v3 = sub_27463B81C();

  if (!sub_274453594(v3))
  {

    return 0;
  }

  sub_2744535A4(0, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C58B20](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id sub_2744EBB30(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDateStyle:a1 timeStyle:a2 relativeDateStyle:a3];

  return v6;
}

uint64_t sub_2744EBB98()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2744EBBEC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2744EBC28(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t objectdestroyTm_6()
{

  return swift_deallocObject();
}

void sub_2744EBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {

    v5 = a5;
  }
}

uint64_t sub_2744EBDE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v4 = a3;
  }

  return result;
}

uint64_t sub_2744EBE50(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;
  }

  return result;
}

uint64_t sub_2744EBEAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
  }

  return result;
}

void sub_2744EBF64(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

id sub_2744EBFC4@<X0>(void *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.unitAggrandizement.getter();
  *a1 = result;
  return result;
}

id sub_2744EC020@<X0>(void *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.dictionaryAggrandizement.getter();
  *a1 = result;
  return result;
}

id sub_2744EC0F0@<X0>(void *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2744EC1FC()
{
  result = qword_28094F210;
  if (!qword_28094F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F218);
    sub_2744EC280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F210);
  }

  return result;
}

unint64_t sub_2744EC280()
{
  result = qword_28094F220;
  if (!qword_28094F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F220);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  a13 = *(a4 + 40);
  a14 = *(a4 + 56);

  return sub_2744EBCAC(&a13, &a10);
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return sub_27463AEBC();
}

void OUTLINED_FUNCTION_11_10()
{

  JUMPOUT(0x277C575F0);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_27463B8AC();
}

id OUTLINED_FUNCTION_13_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_27463AEBC();
}

void sub_2744EC474()
{
  sub_2744F28BC(319, &qword_28094A888, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2744ECA38(319, &qword_28094C4D0, &qword_28094C4D8, &unk_27464D890, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_274480F90();
      if (v2 <= 0x3F)
      {
        sub_274481024();
        if (v3 <= 0x3F)
        {
          sub_2744F28BC(319, &qword_28094F2B0, &type metadata for ActionSummarySection, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2744ECA38(319, &unk_28094C490, &qword_280950E20, &unk_27464D880, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                sub_2744ECA38(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for CGPoint(319);
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
}

uint64_t sub_2744EC690(uint64_t result, unsigned int a2, uint64_t a3)
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

  if (v8 >= a2)
  {
LABEL_26:
    v17 = result & 0xFFFFFFFFFFFFFFF8;
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((((v17 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v7 + 17) & ~v7, v6, v4);
    }

    else
    {
      v18 = *(v17 + 40);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((((*(*(v4 - 8) + 64) + ((v7 + 153) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744EC80C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v10 + 17) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v18 + 32) = a2 & 0x7FFFFFFF;
            *(v18 + 40) = 0;
          }

          else
          {
            *(v18 + 40) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

void sub_2744ECA38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2744ECAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v31 = v5;
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v33 = v7;
  type metadata accessor for ActionAttributionView();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  v9 = sub_27463AE8C();
  OUTLINED_FUNCTION_1();
  v34 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  sub_27463B09C();
  v36 = v33;
  v37 = v8;
  v38 = v2;
  sub_27463AE7C();
  v23 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_27463BC0C();
    v24 = sub_27463A2FC();
    sub_274638CEC();

    v25 = v30;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v23, 0);
    (*(v31 + 8))(v25, v32);
  }

  OUTLINED_FUNCTION_2_19();
  WitnessTable = swift_getWitnessTable();
  sub_27457574C();
  sub_27463A90C();
  (*(v34 + 8))(v13, v9);
  v39 = WitnessTable;
  v40 = MEMORY[0x277CDFC60];
  OUTLINED_FUNCTION_10_0();
  v26 = swift_getWitnessTable();
  sub_2744E9688(v19, v14, v26);
  v27 = *(v16 + 8);
  v27(v19, v14);
  sub_2744E9688(v22, v14, v26);
  return (v27)(v22, v14);
}

uint64_t sub_2744ECF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v73 = a2;
  type metadata accessor for ActionAttributionView();
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0);
  swift_getTupleTypeMetadata2();
  v6 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_27463ADAC();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v49[-v11];
  v13 = *(a1 + 88);
  if (v13)
  {
    v69 = &v49[-v11];
    v66 = v7;
    v67 = v6;
    v14 = v9;
    v15 = *(a1 + 96);
    v16 = *(a1 + 104);
    v18 = *(a1 + 80);
    v62 = *(a1 + 72);
    v17 = v62;
    v64 = *(a1 + 64);
    v19 = v64;
    v65 = v18;
    v20 = type metadata accessor for ActionHeaderView();
    v68 = a3;
    v21 = v20;
    v22 = *(a1 + *(v20 + 80)) + 2.0;
    v59 = *(a1 + 40);
    v60 = v15;
    v23 = v18;
    v24 = v15;
    v9 = v14;
    v7 = v66;
    sub_27448287C(v19, v17, v23, v13, v24, v16);

    v55 = v16;
    v63 = sub_2744ED520(v21);
    v25 = *(a1 + 112);
    v57 = *(a1 + 120);
    v26 = v57;
    v58 = v25;
    v27 = *(a1 + 136);
    v53 = *(a1 + 144);
    v28 = v53;
    v54 = v27;
    v51 = v13;
    v56 = *(a1 + 128);
    v52 = *(a1 + 152);
    KeyPath = swift_getKeyPath();
    v80[0] = 0;
    sub_274483110(v25, v26);
    sub_274483110(v27, v28);
    type metadata accessor for ActionViewModel();
    sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel);
    v29 = sub_27463950C();
    v31 = v30;
    LODWORD(v59) = v80[0];
    v50 = sub_27463A33C();
    sub_2746390AC();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v55;

    v41 = v60;

    v42 = v51;

    v43 = v62;

    v79[0] = v29;
    v79[1] = v31;
    v79[2] = v64;
    v79[3] = v43;
    a3 = v68;
    v79[4] = v65;
    v79[5] = v42;
    v79[6] = v41;
    v79[7] = v40;
    v12 = v69;
    *&v79[8] = v22;
    v79[9] = v63;
    v79[10] = v58;
    v79[11] = v57;
    LOBYTE(v79[12]) = v56;
    v79[13] = v54;
    v79[14] = v53;
    LOBYTE(v79[15]) = v52;
    v79[16] = KeyPath;
    LOBYTE(v79[17]) = v59;
    LOBYTE(v79[18]) = v50;
    v79[19] = v33;
    v79[20] = v35;
    v79[21] = v37;
    v79[22] = v39;
    LOBYTE(v79[23]) = 0;
    *(&v79[23] + 1) = 256;
    CGSizeMake(v79);
    memcpy(v80, v79, 0xBBuLL);
  }

  else
  {
    sub_2744EE9B8(v80);
  }

  v44 = sub_274639B1C();
  MEMORY[0x28223BE20](v44);
  *&v49[-32] = v73;
  *&v49[-24] = a3;
  *&v49[-16] = a1;
  sub_27463AD9C();
  v45 = swift_getWitnessTable();
  sub_2744E9688(v9, v7, v45);
  v46 = v72;
  v47 = *(v72 + 8);
  v47(v9, v7);
  memcpy(v77, v80, 0xBBuLL);
  v78[0] = v77;
  (*(v46 + 16))(v9, v12, v7);
  v78[1] = v9;
  sub_27445EAD4(v80, v79, &qword_28094F2B8);
  v76[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2B8);
  v76[1] = v7;
  v74 = sub_2744EE9CC();
  v75 = v45;
  sub_274575750(v78, 2, v76);
  sub_27440CB1C(v80, &qword_28094F2B8);
  v47(v12, v7);
  v47(v9, v7);
  memcpy(v79, v77, 0xBBuLL);
  return sub_27440CB1C(v79, &qword_28094F2B8);
}

uint64_t sub_2744ED520(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27464AEE0;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v5 scaledValueForValue_];
  v7 = v6;

  v8 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v8 scaledValueForValue_];
  v10 = v9;

  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D7D7A8]) initWithRect:0 fromEdge:{0.0, 0.0, v7 * 1.1 + 10.0, v10 + -1.3 + 4.0}];
  v11 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v11 scaledValueForValue_];
  v13 = v12;

  v14 = v13 + 8.0 + *(v1 + *(a1 + 80));
  v15 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v15 scaledValueForValue_];
  v17 = v16;

  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277D7D7A8]) initWithRect:1 fromEdge:{0.0, 0.0, v14, v17 + 5.7 + -1.3}];
  return v3;
}

uint64_t sub_2744ED710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F0);
  MEMORY[0x28223BE20](v40);
  v37 = (&v32 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F8);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2C0);
  MEMORY[0x28223BE20](v38);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v32 - v10;
  type metadata accessor for ActionAttributionView();
  sub_27463965C();
  sub_27463965C();
  v11 = sub_27463965C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for ActionHeaderView();
  sub_2744EDC10(v18, v14);
  WitnessTable = swift_getWitnessTable();
  v20 = MEMORY[0x277CDF918];
  v46[6] = WitnessTable;
  v46[7] = MEMORY[0x277CDF918];
  v46[4] = swift_getWitnessTable();
  v46[5] = v20;
  v46[2] = swift_getWitnessTable();
  v46[3] = v20;
  v21 = swift_getWitnessTable();
  sub_2744E9688(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v23 = 1;
  if ((*(a1 + *(v18 + 72)) & 1) == 0)
  {
    v34 = v21;
    v24 = v35;
    sub_2744EE180(v35);
    v25 = v36;
    v33 = v17;
    sub_27445EAD4(v24, v36, &qword_28094F2F8);
    v26 = v37;
    *v37 = 0;
    *(v26 + 8) = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F300);
    sub_27445EAD4(v25, v26 + *(v27 + 48), &qword_28094F2F8);
    v28 = v24;
    v21 = v34;
    sub_27440CB1C(v28, &qword_28094F2F8);
    v17 = v33;
    sub_27440CB1C(v25, &qword_28094F2F8);
    sub_27445EA84(v26, v42, &qword_28094F2F0);
    v23 = 0;
  }

  v29 = v42;
  __swift_storeEnumTagSinglePayload(v42, v23, 1, v40);
  (*(v12 + 16))(v14, v17, v11);
  v46[0] = v14;
  v30 = v39;
  sub_27445EAD4(v29, v39, &qword_28094F2C0);
  v46[1] = v30;
  v45[0] = v11;
  v45[1] = v38;
  v43 = v21;
  v44 = sub_2744F21A4();
  sub_274575750(v46, 2, v45);
  sub_27440CB1C(v29, &qword_28094F2C0);
  v22(v17, v11);
  sub_27440CB1C(v30, &qword_28094F2C0);
  return (v22)(v14, v11);
}

uint64_t sub_2744EDC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_274639ABC();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionAttributionView();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v52 = v13;
  v14 = sub_27463965C();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v49 = &v42 - v15;
  v55 = v16;
  v56 = sub_27463965C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v42 - v17;
  v18 = *(v2 + 40);
  v46 = a1;
  v19 = *(a1 + 60);
  v20 = *(v7 + 16);
  v21 = *(v2 + *(a1 + 76));
  v22 = v18;
  v23 = v47;
  v20(v47, v2 + v19, v6);
  v24 = sub_2744EE294();
  v26 = v25;
  v27 = sub_2744EE308();
  v48 = v12;
  sub_2744EE32C(v21, v23, v24, v26, v27, v28 & 1, v6, v12);
  sub_27463A35C();
  v29 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_27463BC0C();
    v30 = sub_27463A2FC();
    sub_274638CEC();

    v31 = v43;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v29, 0);
    (*(v44 + 8))(v31, v45);
  }

  v32 = v52;
  WitnessTable = swift_getWitnessTable();
  v34 = v48;
  v35 = v49;
  sub_27463A9FC();
  (*(v50 + 8))(v34, v32);
  sub_27463A33C();
  v36 = MEMORY[0x277CDF918];
  v60 = WitnessTable;
  v61 = MEMORY[0x277CDF918];
  v37 = v55;
  v38 = swift_getWitnessTable();
  v39 = v51;
  sub_27463A9FC();
  (*(v53 + 8))(v35, v37);
  sub_27463A34C();
  v58 = v38;
  v59 = v36;
  v40 = v56;
  swift_getWitnessTable();
  sub_27463A9FC();
  return (*(v54 + 8))(v39, v40);
}

uint64_t sub_2744EE180@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F318);
  sub_2744EE428(v1);
  v3 = sub_27463A33C();
  sub_2746390AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F320) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_27463A37C();
  sub_2746390AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F8);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_2744EE294()
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);

  return sub_27463979C();
}

uint64_t sub_2744EE32C@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = sub_2744EF678();
  *(a8 + 8) = v16;
  *(a8 + 16) = a1;
  v17 = type metadata accessor for ActionAttributionView();
  (*(*(a7 - 8) + 32))(a8 + v17[10], a2, a7);
  v18 = (a8 + v17[11]);
  *v18 = a3;
  v18[1] = a4;
  v19 = a8 + v17[12];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  v21 = a8 + v17[13];
  *v21 = a5;
  *(v21 + 8) = a6 & 1;
  return result;
}

uint64_t sub_2744EE428(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for ActionHeaderView() + 64));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a1 + 40);
  sub_2744069F0(v3);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v16 = sub_27463979C();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel);
  v9 = sub_27463950C();
  v11 = v10;
  v12 = [objc_opt_self() workflowUserDefaults];
  v13 = [v12 BOOLForKey_];

  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 16.0;
  }

  v18 = 0;
  __src[0] = v9;
  __src[1] = v11;
  __src[2] = v3;
  __src[3] = v4;
  __src[4] = v16;
  __src[5] = v7;
  __src[6] = KeyPath;
  LOBYTE(__src[7]) = 0;
  *&__src[8] = v14;
  __src[9] = swift_getKeyPath();
  LOBYTE(__src[10]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F328);
  sub_2744F2260();
  sub_2744F2318();
  sub_27463A88C();
  memcpy(__dst, __src, 0x51uLL);
  return sub_27440CB1C(__dst, &qword_28094F328);
}

void sub_2744EE68C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActionHeaderView();
  v5 = *(a1 + 40);
  v6 = (a1 + *(v4 + 64));
  v7 = *v6;
  v8 = v6[1];
  v9 = v5;
  sub_2744069F0(v7);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v10 = sub_27463979C();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel);
  v14 = sub_27463950C();
  v16 = v15;
  v17 = [objc_opt_self() workflowUserDefaults];
  v18 = [v17 BOOLForKey_];

  v19 = 16.0;
  if (v18)
  {
    v19 = 0.0;
  }

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = v19;
}

uint64_t sub_2744EE830()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v9, &qword_28094CD80);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

unint64_t sub_2744EE9CC()
{
  result = qword_28094F2C8;
  if (!qword_28094F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8);
    sub_2744EEA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2C8);
  }

  return result;
}

unint64_t sub_2744EEA50()
{
  result = qword_28094F2D0;
  if (!qword_28094F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2D8);
    sub_2744EEADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2D0);
  }

  return result;
}

unint64_t sub_2744EEADC()
{
  result = qword_28094F2E0;
  if (!qword_28094F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2E8);
    sub_2744829A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2E0);
  }

  return result;
}

uint64_t sub_2744EEB68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2746396BC();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F450);
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F458);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F460);
  MEMORY[0x28223BE20](v60);
  v64 = v53 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F468);
  MEMORY[0x28223BE20](v63);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F470);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v65 = v53 - v18;
  v19 = [*(v2[1] + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) isDeletable];
  if (v19 && (v20 = v2[2]) != 0)
  {
    v55 = v15;
    v56 = v16;
    v57 = a1;
    v53[1] = v53;
    v21 = v2[3];
    MEMORY[0x28223BE20](v19);
    v53[-2] = v2;
    sub_2744069F0(v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F478);
    sub_2744F3078();
    v53[2] = v21;
    v54 = v20;
    sub_27463AD5C();
    sub_2746396AC();
    v22 = sub_27440CA78(&qword_28094F4B8, &qword_28094F450);
    v23 = sub_2744F32CC(&qword_280949470, MEMORY[0x277CDDB18]);
    sub_27463A69C();
    (*(v59 + 8))(v6, v4);
    (*(v58 + 8))(v9, v7);
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v24 = qword_28094BB00;
    v25 = sub_27463B66C();
    v26 = sub_27463B66C();

    v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

    v28 = sub_27463B6AC();
    v30 = v29;

    v70 = v28;
    v71 = v30;
    v66 = v7;
    v67 = v4;
    v68 = v22;
    v69 = v23;
    swift_getOpaqueTypeConformance2();
    sub_274412BBC();
    v31 = v64;
    v32 = v62;
    sub_27463A7CC();

    (*(v61 + 8))(v12, v32);
    LOBYTE(v32) = sub_27463A32C();
    sub_2746390AC();
    v33 = v31 + *(v60 + 36);
    *v33 = v32;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    *(v33 + 24) = v36;
    *(v33 + 32) = v37;
    *(v33 + 40) = 0;
    v38 = v2[4];
    if (v38)
    {
      v39 = v38;
      v40 = sub_27443B4C4();
      v41 = v57;
      v42 = v55;
      if (v40)
      {
        v43 = 1;
      }

      else
      {
        v43 = sub_2744EE830();
      }

      KeyPath = swift_getKeyPath();
      v46 = swift_allocObject();
      *(v46 + 16) = v43 & 1;
      sub_27445EA84(v31, v42, &qword_28094F460);
      v47 = (v42 + *(v63 + 36));
      *v47 = KeyPath;
      v47[1] = sub_2744826D8;
      v47[2] = v46;
      v48 = sub_27443B4C4();

      if (v48)
      {
        sub_274406A94(v54);
        v49 = 0.0;
      }

      else
      {
        v50 = sub_2744EE830();
        sub_274406A94(v54);
        if (v50)
        {
          v49 = 0.0;
        }

        else
        {
          v49 = 1.0;
        }
      }

      v51 = v56;
      v52 = v65;
      sub_27445EA84(v42, v65, &qword_28094F468);
      *(v52 + *(v51 + 36)) = v49;
      sub_27445EA84(v52, v41, &qword_28094F470);
      return __swift_storeEnumTagSinglePayload(v41, 0, 1, v51);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v16);
  }

  return result;
}

void *sub_2744EF334@<X0>(_BYTE *a1@<X8>)
{
  sub_2744EF4B4(__src);
  v2 = *MEMORY[0x277D76918];
  v3 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v3 scaledValueForValue_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v4 scaledValueForValue_];

  sub_27463B0CC();
  sub_27463973C();
  memcpy(__dst, __src, 0x51uLL);
  result = memcpy(a1, __dst, 0xC8uLL);
  a1[200] = 0;
  return result;
}

uint64_t sub_2744EF4B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_27463AC2C();
  v6 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v6 scaledValueForValue_];

  v7 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_27463A40C();
  sub_27440CB1C(v4, &qword_280949FF8);
  KeyPath = swift_getKeyPath();
  v10 = [objc_opt_self() quaternaryLabelColor];
  v11 = sub_27463AB0C();
  v12 = swift_getKeyPath();
  v13 = sub_27463A32C();
  result = sub_2746390AC();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_2744EF678()
{
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel);

  return sub_27463950C();
}

id sub_2744EF6F4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  if (v2)
  {

    return v2;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744EF788(uint64_t a1)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_2744EF920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v89 - v6;
  v100 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v103 = v9;
  v104 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463A15C();
  v95 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = sub_2744F296C();
  v15 = *(a1 + 24);
  v126 = v5;
  v127 = v13;
  v106 = v13;
  v112 = v14;
  v128 = v14;
  v129 = v15;
  v105 = v15;
  v16 = sub_27463A4BC();
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_2744F32CC(&qword_28094F430, MEMORY[0x277CDE310]);
  v114 = WitnessTable;
  v115 = v16;
  v126 = v16;
  v127 = v10;
  v111 = v10;
  v128 = WitnessTable;
  v129 = v20;
  v113 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v89 - v22;
  sub_27463A29C();
  v24 = sub_27463965C();
  v99 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = &v89 - v27;
  MEMORY[0x28223BE20](v28);
  v98 = &v89 - v29;
  MEMORY[0x28223BE20](v30);
  v97 = &v89 - v31;
  v109 = sub_274639DEC();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v89 - v32;
  v33 = sub_2744F068C(a1);
  if ((v33 & 1) != 0 || *(v3 + 16) == 1)
  {
    sub_2744F0824(a1, v7);
    v35 = v114;
    v34 = v115;
    v36 = v111;
    v126 = v115;
    v127 = v111;
    v37 = v113;
    v128 = v114;
    v129 = v113;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
    v116 = OpaqueTypeConformance2;
    v117 = v39;
    swift_getWitnessTable();
    v40 = v107;
    v41 = v112;
    sub_27456E878();
    sub_27440CB1C(v7, &qword_28094F3C0);
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    v42 = v105;
    *(&v89 - 4) = v106;
    *(&v89 - 3) = v42;
    *(&v89 - 2) = v3;
    MEMORY[0x28223BE20](v43);
    *(&v89 - 4) = v44;
    *(&v89 - 3) = v45;
    *(&v89 - 2) = v3;
    v92 = v5;
    v93 = v3;
    sub_27463A4AC();
    sub_27463A14C();
    v46 = v115;
    v47 = v111;
    sub_27463AABC();
    (*(v95 + 8))(v12, v47);
    (*(v94 + 8))(v18, v46);
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v48 = qword_28094BB00;
    v49 = sub_27463B66C();
    v50 = sub_27463B66C();

    v91 = v48;
    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    v52 = sub_27463B6AC();
    v54 = v53;

    v124 = v52;
    v125 = v54;
    v126 = v115;
    v127 = v47;
    v128 = v114;
    v129 = v113;
    v94 = swift_getOpaqueTypeConformance2();
    v95 = sub_274412BBC();
    sub_27463A7CC();

    (*(v96 + 8))(v23, OpaqueTypeMetadata2);
    sub_27463B70C();
    v55 = sub_27463B66C();
    v56 = sub_27463B66C();

    v57 = [v48 localizedStringForKey:v55 value:v56 table:0];

    v58 = sub_27463B6AC();
    v60 = v59;

    v126 = v58;
    v127 = v60;
    v61 = v100;
    v96 = *(v100 + 16);
    v62 = v104;
    (v96)(v104, v93, a1);
    v90 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v63 = v90;
    v64 = swift_allocObject();
    v65 = v105;
    *(v64 + 16) = v106;
    *(v64 + 24) = v65;
    v100 = *(v61 + 32);
    (v100)(v64 + v63, v62, a1);
    v66 = v101;
    sub_27463961C();

    v99 = *(v99 + 8);
    (v99)(v66, v24);
    sub_27463B70C();
    v67 = sub_27463B66C();
    v68 = sub_27463B66C();

    v69 = [v91 localizedStringForKey:v67 value:v68 table:0];

    v70 = sub_27463B6AC();
    v72 = v71;

    v126 = v70;
    v127 = v72;
    v73 = v104;
    (v96)(v104, v93, a1);
    v74 = v90;
    v75 = swift_allocObject();
    v76 = v105;
    *(v75 + 16) = v106;
    *(v75 + 24) = v76;
    (v100)(v75 + v74, v73, a1);
    v77 = v98;
    v78 = v102;
    sub_27463961C();

    v79 = v99;
    (v99)(v78, v24);
    v80 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
    v122 = v94;
    v123 = v80;
    v81 = swift_getWitnessTable();
    v82 = v97;
    sub_2744E9688(v77, v24, v81);
    v79(v77, v24);
    sub_2744E9688(v82, v24, v81);
    v40 = v107;
    v83 = v112;
    sub_27456E7CC();
    v79(v77, v24);
    v79(v82, v24);
    v36 = v111;
    v41 = v83;
    v35 = v114;
    v34 = v115;
    v37 = v113;
  }

  v126 = v34;
  v127 = v36;
  v128 = v35;
  v129 = v37;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
  v120 = v84;
  v121 = v85;
  v118 = swift_getWitnessTable();
  v119 = v41;
  v86 = v109;
  v87 = swift_getWitnessTable();
  sub_2744E9688(v40, v86, v87);
  return (*(v108 + 8))(v40, v86);
}

uint64_t sub_2744F068C(uint64_t a1)
{
  v2 = sub_2744EF6F4(a1);
  v3 = sub_27443B4C4();

  if (v3)
  {
    return 1;
  }

  return sub_2744EF788(a1);
}

uint64_t sub_2744F06F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionAttributionView();
  sub_2744E9688(a1 + *(v9 + 40), a2, a3);
  sub_2744E9688(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_2744F0824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v92 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F428);
  MEMORY[0x28223BE20](v85);
  v4 = &v81 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F438);
  MEMORY[0x28223BE20](v82);
  v83 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F418);
  MEMORY[0x28223BE20](v6);
  v84 = &v81 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F440);
  MEMORY[0x28223BE20](v93);
  v95 = &v81 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F448);
  MEMORY[0x28223BE20](v88);
  v89 = &v81 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3D8);
  MEMORY[0x28223BE20](v94);
  v90 = &v81 - v10;
  v11 = sub_274638B7C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_274638B6C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_274638B8C();
  v87 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3E8);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - v22;
  v24 = *(v2 + 16);
  if (v24 == 2)
  {
    v41 = *MEMORY[0x277D76918];
    v42 = objc_allocWithZone(MEMORY[0x277D75520]);
    v43 = [v42 initForTextStyle_];
    [v43 scaledValueForValue_];

    sub_274638B5C();
    v44 = sub_27463AC2C();
    sub_27463A43C();
    sub_27463A3FC();
    v45 = sub_27463A42C();

    KeyPath = swift_getKeyPath();
    if (qword_280949280 != -1)
    {
      swift_once();
    }

    v47 = qword_280965DC8;
    v48 = sub_27463ABDC();
    v49 = swift_getKeyPath();
    sub_27463B0CC();
    sub_2746392FC();
    *__src = v44;
    *&__src[8] = KeyPath;
    *&__src[16] = v45;
    *&__src[24] = v49;
    *&__src[32] = v48;
    memcpy(v89, __src, 0x58uLL);
    swift_storeEnumTagMultiPayload();
    sub_27445EAD4(__src, v96, &qword_28094F3F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8);
    sub_2744F2A84();
    sub_2744F2B70();
    v50 = v90;
    sub_274639DDC();
    sub_27445EAD4(v50, v95, &qword_28094F3D8);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();
    sub_27440CB1C(__src, &qword_28094F3F8);
    v39 = v50;
    v40 = &qword_28094F3D8;
  }

  else if (v24 == 1)
  {
    v85 = v6;
    v84 = v21;
    v25 = [objc_opt_self() clearBackground];
    v26 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v27 = sub_27446D8F0(0xD000000000000019, 0x800000027468B680, v25);
    v28 = *MEMORY[0x277D76918];
    v29 = objc_allocWithZone(MEMORY[0x277D75520]);
    v83 = v27;
    v30 = [v29 initForTextStyle_];
    [v30 scaledValueForValue_];
    v32 = v31;

    *v18 = v32;
    v18[1] = v32;
    (*(v16 + 104))(v18, *MEMORY[0x277D7D690], v15);
    v33 = [objc_opt_self() wf_accentColor];
    v34 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    *v14 = v34;
    v14[8] = 1;
    (*(v12 + 104))(v14, *MEMORY[0x277D7D6C0], v11);
    v35 = v86;
    v36 = v83;
    sub_274638B9C();
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0]);
    v37 = v91;
    sub_27463A80C();
    (*(v87 + 8))(v35, v37);
    sub_27445EAD4(v23, v89, &qword_28094F3E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8);
    sub_2744F2A84();
    sub_2744F2B70();
    v38 = v90;
    sub_274639DDC();
    sub_27445EAD4(v38, v95, &qword_28094F3D8);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();

    sub_27440CB1C(v38, &qword_28094F3D8);
    v39 = v23;
    v40 = &qword_28094F3E8;
  }

  else
  {
    v51 = *(*(v2 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v52 = [v51 icon];

    if (v52)
    {
      v53 = *MEMORY[0x277D76918];
      v54 = objc_allocWithZone(MEMORY[0x277D75520]);
      v55 = v52;
      v56 = [v54 initForTextStyle_];
      [v56 scaledValueForValue_];
      v58 = v57;

      *v18 = v58;
      v18[1] = v58;
      (*(v16 + 104))(v18, *MEMORY[0x277D7D690], v15);
      sub_2744F20D0(v14);
      v59 = v86;
      sub_274638B9C();
      v60 = v87;
      v61 = v91;
      (*(v87 + 16))(v83, v59, v91);
      swift_storeEnumTagMultiPayload();
      sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0]);
      sub_2744F2D70();
      v62 = v84;
      sub_274639DDC();
      sub_27445EAD4(v62, v95, &qword_28094F418);
      swift_storeEnumTagMultiPayload();
      sub_2744F29F8();
      sub_2744F2CB4();
      sub_274639DDC();

      sub_27440CB1C(v62, &qword_28094F418);
      return (*(v60 + 8))(v59, v61);
    }

    v64 = *(sub_27463970C() + 20);
    v65 = *MEMORY[0x277CE0118];
    v66 = sub_274639BFC();
    (*(*(v66 - 8) + 104))(&v4[v64], v65, v66);
    __asm { FMOV            V0.2D, #6.0 }

    *v4 = _Q0;
    v72 = [objc_opt_self() wf_systemGray3Color];
    v73 = sub_27463AB0C();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400);
    *&v4[*(v74 + 52)] = v73;
    *&v4[*(v74 + 56)] = 256;
    v75 = *MEMORY[0x277D76918];
    v76 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v76 scaledValueForValue_];

    v77 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v77 scaledValueForValue_];

    sub_27463B0CC();
    sub_2746392FC();
    v78 = &v4[*(v85 + 36)];
    v79 = *&__src[16];
    *v78 = *__src;
    *(v78 + 1) = v79;
    *(v78 + 2) = *&__src[32];
    sub_27445EAD4(v4, v83, &qword_28094F428);
    swift_storeEnumTagMultiPayload();
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0]);
    sub_2744F2D70();
    v80 = v84;
    sub_274639DDC();
    sub_27445EAD4(v80, v95, &qword_28094F418);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();
    sub_27440CB1C(v80, &qword_28094F418);
    v39 = v4;
    v40 = &qword_28094F428;
  }

  return sub_27440CB1C(v39, v40);
}

void sub_2744F1710()
{
  v0 = sub_27463800C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ActionAttributionView();
  v8 = sub_2744F19D0(v7);
  if ((v9 & 1) == 0)
  {
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (((v8 - 1) & 0x8000000000000000) == 0)
    {
      v10 = sub_2744EF6F4(v7);
      v11 = &v10[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = *(v11 + 1);

      if (Strong)
      {
        sub_274637FDC();
        sub_274637FDC();
        ObjectType = swift_getObjectType();
        (*(v13 + 48))(v6, v3, ObjectType, v13);
        swift_unknownObjectRelease();
        v15 = *(v1 + 8);
        v15(v3, v0);
        v15(v6, v0);
        return;
      }
    }
  }

  v16 = *MEMORY[0x277D76438];
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v17 = qword_28094BB00;
  v18 = sub_27463B66C();
  v19 = sub_27463B66C();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v20)
  {
    sub_27463B6AC();
    v20 = sub_27463B66C();
  }

  UIAccessibilityPostNotification(v16, v20);
}

uint64_t sub_2744F19D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = sub_274639ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(a1 + 48);
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v12, 0);
    (*(v8 + 8))(v10, v7);
    v12 = v18;
  }

  if (!v12)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v17 = *(*(v1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  sub_27463837C();

  (*(v4 + 8))(v6, v3);
  if (!v18)
  {
    return 0;
  }

  v15 = v19;

  return v15;
}

void sub_2744F1C64(uint64_t a1)
{
  v2 = sub_27463800C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v34 - v7;
  v8 = sub_274639ABC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionAttributionView();
  v36 = a1;
  v35 = sub_2744F19D0(v12);
  if ((v13 & 1) == 0)
  {
    v14 = (v36 + *(v12 + 48));
    v15 = *v14;
    v16 = *(v14 + 8);

    if ((v16 & 1) == 0)
    {
      sub_27463BC0C();
      v17 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      j__swift_release(v15, 0);
      (*(v9 + 8))(v11, v8);
      v15 = v37;
    }

    if (v15)
    {
      v18 = *(v15 + 24);

      v19 = [v18 actions];

      sub_2744F302C();
      v20 = sub_27463B81C();

      v21 = sub_274453594(v20);

      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return;
      }

      if (v35 + 1 < v21)
      {
        v22 = sub_2744EF6F4(v12);
        v23 = &v22[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v25 = *(v23 + 1);

        if (Strong)
        {
          v26 = v34;
          sub_274637FDC();
          sub_274637FDC();
          ObjectType = swift_getObjectType();
          (*(v25 + 48))(v26, v5, ObjectType, v25);
          swift_unknownObjectRelease();
          v28 = *(v3 + 8);
          v28(v5, v2);
          v28(v26, v2);
          return;
        }
      }
    }
  }

  v29 = *MEMORY[0x277D76438];
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v30 = qword_28094BB00;
  v31 = sub_27463B66C();
  v32 = sub_27463B66C();

  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  if (!v33)
  {
    sub_27463B6AC();
    v33 = sub_27463B66C();
  }

  UIAccessibilityPostNotification(v29, v33);
}

uint64_t sub_2744F20D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v4 = [v3 iconColor];

  if (v4)
  {
    *a1 = v4;
    *(a1 + 8) = 1;
    v5 = MEMORY[0x277D7D6C0];
  }

  else
  {
    v5 = MEMORY[0x277D7D6D0];
  }

  v6 = *v5;
  v7 = sub_274638B7C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

unint64_t sub_2744F21A4()
{
  result = qword_28094F308;
  if (!qword_28094F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0);
    sub_27440CA78(&qword_28094F310, &qword_28094F2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F308);
  }

  return result;
}

unint64_t sub_2744F2260()
{
  result = qword_28094F330;
  if (!qword_28094F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F328);
    sub_2744F2318();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F330);
  }

  return result;
}

unint64_t sub_2744F2318()
{
  result = qword_28094F338[0];
  if (!qword_28094F338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28094F338);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2744F238C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2744F23CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2744F242C()
{
  sub_274480F90();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_274481024();
      if (v2 <= 0x3F)
      {
        sub_2744ECA38(319, &qword_28094C4D0, &qword_28094C4D8, &unk_27464D890, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2744F28BC(319, &qword_28094C510, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2744F2554(uint64_t result, unsigned int a2, uint64_t a3)
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 17) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 17) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        v15 = (v14 - 1) << (8 * v9);
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

void sub_2744F26BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
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
LABEL_43:
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
            v18 = &a1[v10 + 17] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
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
        goto LABEL_43;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2744F28BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2744F296C()
{
  result = qword_28094F3C8;
  if (!qword_28094F3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3C0);
    sub_2744F29F8();
    sub_2744F2CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3C8);
  }

  return result;
}

unint64_t sub_2744F29F8()
{
  result = qword_28094F3D0;
  if (!qword_28094F3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3D8);
    sub_2744F2A84();
    sub_2744F2B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3D0);
  }

  return result;
}

unint64_t sub_2744F2A84()
{
  result = qword_28094F3E0;
  if (!qword_28094F3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3E8);
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0]);
    sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3E0);
  }

  return result;
}

unint64_t sub_2744F2B70()
{
  result = qword_28094F3F0;
  if (!qword_28094F3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3F8);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3F0);
  }

  return result;
}

unint64_t sub_2744F2BFC()
{
  result = qword_28094F400;
  if (!qword_28094F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F408);
    sub_2744129AC();
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F400);
  }

  return result;
}

unint64_t sub_2744F2CB4()
{
  result = qword_28094F410;
  if (!qword_28094F410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F418);
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0]);
    sub_2744F2D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F410);
  }

  return result;
}

unint64_t sub_2744F2D70()
{
  result = qword_28094F420;
  if (!qword_28094F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F428);
    sub_27440CA78(qword_28094C530, &qword_28094E400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F420);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ActionAttributionView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);
  j__swift_release(*(v3 + v2[14]), *(v3 + v2[14] + 8));
  sub_2743F45E8(*(v3 + v2[15]), *(v3 + v2[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_2744F2F94(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ActionAttributionView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_2744F302C()
{
  result = qword_28094E040;
  if (!qword_28094E040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094E040);
  }

  return result;
}

unint64_t sub_2744F3078()
{
  result = qword_28094F480;
  if (!qword_28094F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F478);
    sub_2744F3130();
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F480);
  }

  return result;
}

unint64_t sub_2744F3130()
{
  result = qword_28094F488;
  if (!qword_28094F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F490);
    sub_2744F31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F488);
  }

  return result;
}

unint64_t sub_2744F31BC()
{
  result = qword_28094F498;
  if (!qword_28094F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4A0);
    sub_2744F3240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F498);
  }

  return result;
}

unint64_t sub_2744F3240()
{
  result = qword_28094F4A8;
  if (!qword_28094F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4B0);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4A8);
  }

  return result;
}

uint64_t sub_2744F32CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2744F3314()
{
  result = qword_28094F4C0;
  if (!qword_28094F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4C8);
    sub_2744F3398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4C0);
  }

  return result;
}

unint64_t sub_2744F3398()
{
  result = qword_28094F4D0;
  if (!qword_28094F4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F470);
    sub_2744F3424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4D0);
  }

  return result;
}

unint64_t sub_2744F3424()
{
  result = qword_28094F4D8;
  if (!qword_28094F4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F468);
    sub_2744F34DC();
    sub_27440CA78(&unk_28094C740, &qword_280949FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4D8);
  }

  return result;
}