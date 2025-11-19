id ContentCollectionPreviewView.PreviewState.selectionState.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 >> 6)
  {
    v3 = *v1;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >> 6)
  {
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  *a1 = v3;
  return OUTLINED_FUNCTION_11_13(v3, v4, a1);
}

void ContentCollectionPreviewView.PreviewState.state(transitioningTo:selectionType:contentCollection:)(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v10 = *v4;
  v9 = v4[1];
  v11 = *(v4 + 16);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      if (*a1)
      {
        if (v7 == 1)
        {
          *a4 = v10;
          *(a4 + 8) = v9;
          v12 = 0x80;
LABEL_30:
          *(a4 + 16) = v12;
          goto LABEL_31;
        }

        if (!v4[1])
        {
          if (v8 == 1)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        if (v4[1] == 1)
        {
          if (v8 == 2)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        if (*a2)
        {
LABEL_41:
          OUTLINED_FUNCTION_7_22();
          v62 = [a3 items];
          OUTLINED_FUNCTION_18_7();
          OUTLINED_FUNCTION_46();
          v63 = sub_274BF5144();

          sub_274BC91A8(v63);
          v65 = v64;

          OUTLINED_FUNCTION_14_9(v66, v67, v68, v69, v70, v71, v72, v73, v77, *v78, *&v78[4], v78[6], v8, v79);
          v74 = OUTLINED_FUNCTION_16_8();
          sub_274B4C9F8(v74, v75, v76);

          v10 = v82;
          v9 = v83;
          LOBYTE(v11) = 64;
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      OUTLINED_FUNCTION_7_22();
      v31 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_18_7();
      v32 = sub_274BF5144();

      sub_274BC91A8(v32);
      v34 = v33;

      if (!v34)
      {
LABEL_25:
        v41 = OUTLINED_FUNCTION_26_5();
        v42 = sub_274BF5144();

        if (sub_274B22B94(v42))
        {
          sub_274B17EC8(0, (v42 & 0xC000000000000001) == 0);
          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x277C65230](0, v42);
          }

          else
          {
            v43 = *(v42 + 32);
          }

          v34 = v43;
        }

        else
        {

          v34 = 0;
        }
      }
    }

    else
    {
      if (*a1)
      {
        if (v7 != 1)
        {
          *a4 = v10;
          *(a4 + 8) = v9;
          v12 = 64;
          goto LABEL_30;
        }

        if (v4[1])
        {
          if (v4[1] == 1)
          {
            if (v8 == 2)
            {
              goto LABEL_45;
            }
          }

          else if (!*a2)
          {
LABEL_44:
            sub_274B217DC(*v4, 2);
LABEL_45:
            sub_274B217DC(v10, v9);
            goto LABEL_46;
          }
        }

        else if (v8 == 1)
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_7_22();
        v47 = [a3 items];
        OUTLINED_FUNCTION_18_7();
        OUTLINED_FUNCTION_46();
        v48 = sub_274BF5144();

        sub_274BC91A8(v48);
        v50 = v49;

        OUTLINED_FUNCTION_14_9(v51, v52, v53, v54, v55, v56, v57, v58, v77, *v78, *&v78[4], v78[6], v8, v79);
        v59 = OUTLINED_FUNCTION_16_8();
        sub_274B4C9F8(v59, v60, v61);

        v10 = v81;
        v9 = v83;
        LOBYTE(v11) = 0x80;
LABEL_46:
        *a4 = v10;
        *(a4 + 8) = v9;
        *(a4 + 16) = v11;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_7_22();
      v38 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_18_7();
      v39 = sub_274BF5144();

      sub_274BC91A8(v39);
      v34 = v40;

      if (!v34)
      {
        goto LABEL_25;
      }
    }

    *a4 = v34;
    *(a4 + 8) = v10;
    *(a4 + 16) = v9;
LABEL_47:
    OUTLINED_FUNCTION_25_5();
    return;
  }

  v13 = v10;
  v14 = OUTLINED_FUNCTION_19();
  sub_274B217DC(v14, v15);

  if (v7)
  {
    v16 = [a3 items];
    OUTLINED_FUNCTION_18_7();
    OUTLINED_FUNCTION_46();
    v17 = sub_274BF5144();

    sub_274BC91A8(v17);
    v19 = v18;

    OUTLINED_FUNCTION_14_9(v20, v21, v22, v23, v24, v25, v26, v27, v77, *v78, *&v78[4], v78[6], v8, v9);
    v28 = OUTLINED_FUNCTION_19();
    sub_274B21754(v28, v29);

    *a4 = v80;
    *(a4 + 8) = v11;
    if (v7 == 1)
    {
      v30 = 0x80;
    }

    else
    {
      v30 = 64;
    }

    *(a4 + 16) = v30;
    goto LABEL_47;
  }

  v35 = OUTLINED_FUNCTION_19();
  sub_274B21754(v35, v36);
  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11;
  v37 = v13;
  OUTLINED_FUNCTION_19();
LABEL_31:
  OUTLINED_FUNCTION_25_5();

  sub_274B217DC(v44, v45);
}

void __ContentCollectionPreviewView.init(visibleItemIndex:quickLookPreview:contentCollection:state:pageMetrics:context:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v17 = *a8;
  v18 = a8[1];
  v37 = *(a8 + 16);
  v19 = *a11;
  if (a5)
  {
    v31 = a5;
    v32 = a6;
    v30 = a4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
    sub_274BF4904();
    v30 = v40;
    v31 = v41;
    v32 = v42;
  }

  v33 = a4;
  v34 = a6;
  sub_274BCBA88(a4, a5, a6);
  v20 = a7;
  v21 = [v20 items];
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_46();
  v22 = sub_274BF5144();

  v23 = sub_274B22B94(v22);
  v38 = v18;
  v39 = v17;
  if (v23)
  {
    v24 = v23;
    v40 = MEMORY[0x277D84F90];
    sub_274BF59F4();
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v25 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C65230](v25, v22);
      }

      else
      {
        v26 = *(v22 + 8 * v25 + 32);
      }

      ++v25;
      type metadata accessor for ContentItemDataSource();
      swift_allocObject();
      v27 = OUTLINED_FUNCTION_46();
      ContentItemDataSource.init(_:)(v27);
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      sub_274BF59D4();
    }

    while (v24 != v25);

    v28 = v40;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v29 = a10;
  if (!a10)
  {
    type metadata accessor for __ContentCollectionPageView.PageMetrics();
    swift_allocObject();
    v29 = __ContentCollectionPageView.PageMetrics.init()();
  }

  type metadata accessor for PreviewableContentCollection();
  swift_allocObject();
  sub_274B809B0(v20);
  sub_274BF4774();
  sub_274BCBAD4(v33, a5, v34);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v30;
  *(a9 + 32) = v31;
  *(a9 + 40) = v32;
  *(a9 + 48) = v20;
  *(a9 + 56) = v39;
  *(a9 + 64) = v38;
  *(a9 + 72) = v37;
  *(a9 + 80) = v29;
  *(a9 + 88) = v19;
  *(a9 + 96) = v28;
  *(a9 + 104) = 0;
  *(a9 + 112) = v40;
  *(a9 + 120) = v41;
}

uint64_t sub_274BC87F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BC887C();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_274BC887C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274BC88F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_274BF2D74();
}

void (*sub_274BC8970(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_274BF2D54();
  return sub_274BC8A00;
}

void sub_274BC8A00(void **a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_8_18();
  v3(v2);

  free(v1);
}

uint64_t sub_274BC8A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E918);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_274BC8BAC(v5);
}

uint64_t sub_274BC8B38()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E910);
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274BC8BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E918);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E910);
  sub_274BF2D44();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_274BC8CD4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E918);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E910);
  sub_274BF2D34();
  swift_endAccess();
  return sub_274BC8DF8;
}

void sub_274BC8DF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_274BC8BAC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_274BC8BAC(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

id static ContentCollectionPreviewViewOptions.optionsFromConfiguration(_:)(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ContentCollectionPreviewViewOptions()) init];
  if (!a1)
  {
    goto LABEL_5;
  }

  v3 = a1;
  v4 = [v3 titleLineLimit];
  if (!v4)
  {

LABEL_5:
    sub_274BC88F4();
    return v2;
  }

  v5 = v4;
  [v4 integerValue];
  sub_274BC88F4();

  return v2;
}

id ContentCollectionPreviewViewOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContentCollectionPreviewViewOptions.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E910);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC14WorkflowUICore35ContentCollectionPreviewViewOptions__lineLimit;
  v11 = 0;
  v12 = 1;
  sub_274BF2D24();
  (*(v3 + 32))(&v0[v7], v6, v1);
  v8 = type metadata accessor for ContentCollectionPreviewViewOptions();
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ContentCollectionPreviewViewOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentCollectionPreviewViewOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274BC9168@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentCollectionPreviewViewOptions();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

void sub_274BC91A8(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v4 = 0;
      v19 = a1 & 0xC000000000000001;
      v20 = sub_274B22B94(a1);
      v17 = a1 + 32;
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
      v16 = a1;
      while (v4 != v20)
      {
        if (v19)
        {
          v5 = MEMORY[0x277C65230](v4, v16);
        }

        else
        {
          if (v4 >= *(v18 + 16))
          {
            goto LABEL_22;
          }

          v5 = *(v17 + 8 * v4);
        }

        v6 = v5;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = v5;
          v9 = sub_274BF58C4();

          if (v9)
          {
            return;
          }
        }

        else if (*(v2 + 16))
        {
          sub_274B08760();
          v10 = sub_274BF5614();
          v11 = ~(-1 << *(v2 + 32));
          while (1)
          {
            v12 = v10 & v11;
            if (((*(v2 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
            {
              break;
            }

            v13 = *(*(v2 + 48) + 8 * v12);
            v14 = sub_274BF5624();

            v10 = v12 + 1;
            if (v14)
            {
              return;
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = v2;
  }
}

void sub_274BC934C(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    *a3 = 0;
    v5 = 2;
LABEL_17:
    *(a3 + 8) = v5;
    return;
  }

  if (*a1 != 1)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274BFFAB0;
      *(inited + 32) = a2;
      if (sub_274B22B94(inited))
      {
        v7 = a2;
        v8 = inited;
LABEL_10:
        sub_274B48714(v8);
LABEL_16:
        *a3 = v9;
        v5 = 1;
        goto LABEL_17;
      }

      swift_setDeallocating();
      v10 = a2;
      sub_274BCBA40();
    }

    else if (MEMORY[0x277D84F90] >> 62 && sub_274BF5874())
    {
      v8 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v9 = MEMORY[0x277D84FA0];
    goto LABEL_16;
  }

  *a3 = a2;
  *(a3 + 8) = 0;

  v4 = a2;
}

BOOL static ContentCollectionPreviewView.MultipleSelectionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_14;
    }

    if (v2)
    {
      if (v4)
      {
        sub_274B08760();
        v9 = OUTLINED_FUNCTION_8_18();
        sub_274B217DC(v9, v10);
        v11 = OUTLINED_FUNCTION_13_13();
        sub_274B217DC(v11, v12);
        v13 = OUTLINED_FUNCTION_8_18();
        sub_274B217DC(v13, v14);
        v15 = OUTLINED_FUNCTION_13_13();
        sub_274B217DC(v15, v16);
        v17 = sub_274BF5624();
        v18 = OUTLINED_FUNCTION_13_13();
        sub_274B21754(v18, v19);
        v20 = OUTLINED_FUNCTION_8_18();
        sub_274B21754(v20, v21);
        v22 = OUTLINED_FUNCTION_13_13();
        sub_274B21754(v22, v23);
        v24 = OUTLINED_FUNCTION_8_18();
        sub_274B21754(v24, v25);
        return (v17 & 1) != 0;
      }

      sub_274B217DC(0, 0);
      sub_274B217DC(0, 0);
      v34 = OUTLINED_FUNCTION_13_13();
      sub_274B217DC(v34, v35);
      v36 = OUTLINED_FUNCTION_13_13();
      sub_274B21754(v36, v37);
    }

    else
    {
      v29 = v4;
      v30 = OUTLINED_FUNCTION_8_18();
      sub_274B217DC(v30, v31);
      sub_274B217DC(0, 0);
      sub_274B21754(0, 0);
      v32 = OUTLINED_FUNCTION_8_18();
      sub_274B21754(v32, v33);
      if (!v4)
      {
        return 1;
      }
    }

    v27 = OUTLINED_FUNCTION_8_18();
    goto LABEL_15;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_274B217DC(*a2, 1);
      sub_274B217DC(v2, 1);
      sub_274BC9628(v2, v4);
      v7 = v6;
      sub_274B21754(v2, 1);
      sub_274B21754(v4, 1);
      return v7 & 1;
    }

    goto LABEL_14;
  }

  if (v5 != 2 || v4 != 0)
  {
LABEL_14:
    sub_274B217DC(*a2, *(a2 + 8));
    sub_274B217DC(v2, v3);
    sub_274B21754(v2, v3);
    v27 = v4;
    v28 = v5;
LABEL_15:
    sub_274B21754(v27, v28);
    return 0;
  }

  sub_274B21754(*a1, 2);
  sub_274B21754(0, 2);
  return 1;
}

void sub_274BC9628(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_42:
      MEMORY[0x2821FCF40](v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_274BCBB78(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v23 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = sub_274B08760();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v24 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v25 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v18 = sub_274BF5614();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = *(*(a2 + 48) + 8 * v20);
          v22 = sub_274BF5624();

          v18 = v20 + 1;
        }

        while ((v22 & 1) == 0);

        v13 = v24;
        v11 = v25;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v23 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v25 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }
}

void ContentCollectionPreviewView.MultipleSelectionState.hash(into:)(void *a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x277C65580](2);

      sub_274BCBC78(a1, v3);
    }

    else
    {
      MEMORY[0x277C65580](0);
    }
  }

  else
  {
    MEMORY[0x277C65580](1);
    if (v3)
    {
      sub_274BF5CF4();
      v4 = v3;
      sub_274BF5634();
      v5 = OUTLINED_FUNCTION_8_18();

      sub_274B21754(v5, v6);
    }

    else
    {
      sub_274BF5CF4();
    }
  }
}

uint64_t ContentCollectionPreviewView.MultipleSelectionState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_274BF5CD4();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x277C65580](2);
      sub_274BCBC78(__src, v1);
    }

    else
    {
      MEMORY[0x277C65580](0);
    }
  }

  else
  {
    MEMORY[0x277C65580](1);
    sub_274BF5CF4();
    if (v1)
    {
      v3 = v1;
      sub_274BF5634();
      v4 = OUTLINED_FUNCTION_8_18();
      sub_274B21754(v4, v5);
    }
  }

  return sub_274BF5D44();
}

uint64_t sub_274BC9A0C()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_274BF5CD4();
  ContentCollectionPreviewView.MultipleSelectionState.hash(into:)(v3);
  return sub_274BF5D44();
}

void *ContentCollectionPreviewView.PreviewState.activeItem(in:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) > 0x3Fu)
  {
    OUTLINED_FUNCTION_4_22();
    sub_274B4D900(v5, v6, v7);
    sub_274BC91A8(a1);
    v9 = v8;
    OUTLINED_FUNCTION_4_22();
    sub_274B4C9F8(v10, v11, v12);
    return v9;
  }

  else
  {
    v3 = v2;
  }

  return v2;
}

void static ContentCollectionPreviewView.PreviewState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 <= 0x3F)
    {
      if (v3)
      {
        if (!v6)
        {
          sub_274B4D900(0, *(a2 + 8), v7);
          v65 = OUTLINED_FUNCTION_2_30();
          sub_274B4D900(v65, v66, v67);
          v68 = OUTLINED_FUNCTION_2_30();
          sub_274B4C9F8(v68, v69, v70);
          v58 = 0;
          goto LABEL_14;
        }

        sub_274B08760();
        v8 = OUTLINED_FUNCTION_3_28();
        sub_274B4D900(v8, v9, v10);
        v11 = OUTLINED_FUNCTION_2_30();
        sub_274B4D900(v11, v12, v13);
        v14 = OUTLINED_FUNCTION_75();
        sub_274B217DC(v14, v15);
        v16 = OUTLINED_FUNCTION_57();
        sub_274B217DC(v16, v17);
        v18 = v6;
        v19 = v3;
        v20 = sub_274BF5624();

        if ((v20 & 1) == 0)
        {
          v21 = OUTLINED_FUNCTION_57();
          sub_274B21754(v21, v22);
          v23 = OUTLINED_FUNCTION_75();
          sub_274B21754(v23, v24);
LABEL_13:
          OUTLINED_FUNCTION_4_22();
          sub_274B4C9F8(v55, v56, v57);
          v58 = v6;
LABEL_14:
          sub_274B4C9F8(v58, v5, v7);
          goto LABEL_15;
        }
      }

      else
      {
        if (v6)
        {
          v59 = OUTLINED_FUNCTION_3_28();
          sub_274B4D900(v59, v60, v61);
          OUTLINED_FUNCTION_4_22();
          sub_274B4D900(v62, v63, v64);
          goto LABEL_13;
        }

        sub_274B4D900(0, *(a2 + 8), v7);
        OUTLINED_FUNCTION_4_22();
        sub_274B4D900(v71, v72, v73);
        v74 = OUTLINED_FUNCTION_75();
        sub_274B217DC(v74, v75);
        v76 = OUTLINED_FUNCTION_57();
        sub_274B217DC(v76, v77);
      }

      v90 = v2;
      v91 = v4;
      v88 = v5;
      v89 = v7;
      static ContentCollectionPreviewView.MultipleSelectionState.== infix(_:_:)(&v90, &v88);
      v78 = OUTLINED_FUNCTION_2_30();
      sub_274B4C9F8(v78, v79, v80);
      v81 = OUTLINED_FUNCTION_3_28();
      sub_274B4C9F8(v81, v82, v83);
      v84 = OUTLINED_FUNCTION_57();
      sub_274B21754(v84, v85);
      v86 = OUTLINED_FUNCTION_75();
      sub_274B21754(v86, v87);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v4 >> 6 != 1)
  {
    if ((v7 & 0xC0) == 0x80)
    {
      goto LABEL_11;
    }

LABEL_12:
    v49 = OUTLINED_FUNCTION_3_28();
    sub_274B4D900(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_2_30();
    sub_274B4D900(v52, v53, v54);
    goto LABEL_13;
  }

  if ((v7 & 0xC0) != 0x40)
  {
    goto LABEL_12;
  }

LABEL_11:
  v90 = *a1;
  v91 = v2;
  v88 = v6;
  v89 = v5;
  v25 = OUTLINED_FUNCTION_3_28();
  sub_274B4D900(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_2_30();
  sub_274B4D900(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_3_28();
  sub_274B4D900(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_2_30();
  sub_274B4D900(v34, v35, v36);
  static ContentCollectionPreviewView.MultipleSelectionState.== infix(_:_:)(&v90, &v88);
  v37 = OUTLINED_FUNCTION_2_30();
  sub_274B4C9F8(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_3_28();
  sub_274B4C9F8(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_3_28();
  sub_274B4C9F8(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_2_30();
  sub_274B4C9F8(v46, v47, v48);
LABEL_15:
  OUTLINED_FUNCTION_25_5();
}

void ContentCollectionPreviewView.PreviewState.hash(into:)(void *a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x277C65580](v6);
    if (v3)
    {
      if (v3 == 1)
      {
        MEMORY[0x277C65580](2);
        v8 = a1;
        v9 = v4;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    MEMORY[0x277C65580](1);
    if (v4)
    {
      sub_274BF5CF4();
      sub_274B217DC(v4, 0);
      sub_274BF5634();
      v10 = OUTLINED_FUNCTION_16_8();

      sub_274B4C9F8(v10, v11, v12);
      return;
    }

LABEL_25:
    sub_274BF5CF4();
    return;
  }

  MEMORY[0x277C65580](0);
  if (v4)
  {
    sub_274BF5CF4();
    v7 = v4;
    sub_274BF5634();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_274BF5CF4();
    if (v5)
    {
LABEL_6:
      if (v5 == 1)
      {
        MEMORY[0x277C65580](2);
        v8 = a1;
        v9 = v3;
LABEL_12:

        sub_274BCBC78(v8, v9);
        return;
      }

LABEL_15:
      MEMORY[0x277C65580](0);
      return;
    }
  }

  MEMORY[0x277C65580](1);
  if (!v3)
  {
    goto LABEL_25;
  }

  sub_274BF5CF4();
  v13 = v3;
  sub_274BF5634();
  v14 = OUTLINED_FUNCTION_13_13();

  sub_274B21754(v14, v15);
}

uint64_t ContentCollectionPreviewView.PreviewState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_274BF5CD4();
  ContentCollectionPreviewView.PreviewState.hash(into:)(v3);
  return sub_274BF5D44();
}

uint64_t sub_274BC9FA8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_274BF5CD4();
  ContentCollectionPreviewView.PreviewState.hash(into:)(v3);
  return sub_274BF5D44();
}

uint64_t ContentCollectionPreviewView.init(state:contentCollection:onItemActivated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v8;
  type metadata accessor for PreviewableContentCollection();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_46();
  sub_274B809B0(v9);
  result = sub_274BF4774();
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t sub_274BCA0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentCollectionGridView();
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v67 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EA30);
  MEMORY[0x28223BE20](v76);
  v75 = &v67 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EA38);
  MEMORY[0x28223BE20](v74);
  v11 = &v67 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EA08);
  MEMORY[0x28223BE20](v78);
  v13 = &v67 - v12;
  v14 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v14;
  LOBYTE(__src[2]) = *(a1 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  MEMORY[0x277C64160](v86, v15);
  v16 = v86[0];
  v17 = v86[1];
  v77 = v87;
  v18 = v87 >> 6;
  if (v18)
  {
    if (v18 == 1)
    {
      v69 = v11;
      v73 = a2;
      __src[0] = *(a1 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
      sub_274BF4784();
      v68 = v79;
      sub_274BF51E4();
      sub_274B217DC(v16, v17);
      v19 = sub_274BF51D4();
      v20 = swift_allocObject();
      v21 = v17;
      v22 = MEMORY[0x277D85700];
      *(v20 + 16) = v19;
      *(v20 + 24) = v22;
      v70 = v16;
      *(v20 + 32) = v16;
      v72 = v21;
      *(v20 + 40) = v21;
      sub_274BCCCC8(a1, __src);
      v23 = sub_274BF51D4();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = v22;
      memcpy(v24 + 4, a1, 0x48uLL);
      sub_274BF48F4();
      v25 = v82;
      v26 = v83;
      v27 = v84;
      v29 = *(a1 + 56);
      v28 = *(a1 + 64);
      *v6 = v68;
      *(v6 + 8) = v25;
      *(v6 + 3) = v26;
      v6[32] = v27;
      *&v79 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
      sub_274BF4774();
      *(v6 + 40) = __src[0];
      *(v6 + 7) = v29;
      *(v6 + 8) = v28;
      v30 = v4[8];
      *&v6[v30] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
      swift_storeEnumTagMultiPayload();
      v31 = &v6[v4[9]];
      v32 = MEMORY[0x277D84F90];
      *&v79 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D450);
      sub_274BF4774();
      v33 = *(&__src[0] + 1);
      *v31 = *&__src[0];
      *(v31 + 1) = v33;
      v34 = &v6[v4[10]];
      v79 = 0u;
      v80 = 0u;
      v81 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D460);
      sub_274BF4774();
      v35 = __src[2];
      v36 = *(&__src[2] + 1);
      v37 = __src[1];
      *v34 = __src[0];
      *(v34 + 1) = v37;
      v34[32] = v35;
      *(v34 + 5) = v36;
      if (sub_274B22B94(v32))
      {
        sub_274B48714(MEMORY[0x277D84F90]);
      }

      else
      {
        v38 = MEMORY[0x277D84FA0];
      }

      v62 = v69;
      v63 = &v6[v4[11]];
      *&v79 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB08);
      sub_274BF4774();
      v64 = *(&__src[0] + 1);
      *v63 = *&__src[0];
      *(v63 + 1) = v64;
      *&v6[v4[12]] = 0x4024000000000000;
      *&v6[v4[13]] = 0x4031000000000000;
      *&v6[v4[14]] = 0x4024000000000000;
      v65 = v6;
      v66 = v71;
      sub_274B9029C(v65, v71);
      sub_274BCCE5C(v66, v62);
      swift_storeEnumTagMultiPayload();
      sub_274BCCB28();
      sub_274BCCF30(&qword_28098E998, type metadata accessor for ContentCollectionGridView);
      sub_274BF3A64();
      sub_274AFA6A8(v13, v75, &qword_28098EA08);
      swift_storeEnumTagMultiPayload();
      sub_274BCCA6C();
      sub_274BCCB7C();
      sub_274BF3A64();
      sub_274B4C9F8(v70, v72, v77);
      sub_274AFA708(v13, &qword_28098EA08);
      return sub_274BCCEC0(v66);
    }

    else
    {
      __src[0] = *(a1 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
      sub_274BF4784();
      sub_274BF51E4();
      sub_274B217DC(v16, v17);
      v54 = v16;
      v55 = sub_274BF51D4();
      v56 = swift_allocObject();
      v57 = MEMORY[0x277D85700];
      *(v56 + 16) = v55;
      *(v56 + 24) = v57;
      *(v56 + 32) = v54;
      *(v56 + 40) = v17;
      sub_274BCCCC8(a1, __src);
      v58 = sub_274BF51D4();
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v57;
      memcpy(v59 + 4, a1, 0x48uLL);
      sub_274BF48F4();
      v82 = v79;
      v83 = v80;
      v84 = BYTE8(v80);
      v60 = *(a1 + 56);
      v61 = *(a1 + 64);

      sub_274B19828(&v82, v60, v61, __src);
      memcpy(v75, __src, 0x60uLL);
      swift_storeEnumTagMultiPayload();
      sub_274B21770(__src, &v79);
      sub_274BCCA6C();
      sub_274BCCB7C();
      sub_274BF3A64();
      sub_274B4C9F8(v54, v17, v77);
      return sub_274BCCD24(__src);
    }
  }

  else
  {
    __src[0] = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
    sub_274BF4784();
    v68 = v79;
    sub_274BF51E4();
    v71 = v16;
    v39 = sub_274BF51D4();
    v70 = v4;
    v73 = a2;
    v40 = v16;
    v41 = v39;
    v42 = swift_allocObject();
    v69 = v13;
    v43 = MEMORY[0x277D85700];
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v40;
    sub_274BCCCC8(a1, __src);
    v44 = v17;
    v45 = v17;
    v72 = v17;
    v46 = v77;
    sub_274B217DC(v44, v77);
    v47 = sub_274BF51D4();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v43;
    memcpy((v48 + 32), a1, 0x48uLL);
    *(v48 + 104) = v45;
    *(v48 + 112) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
    sub_274BF48F4();
    v49 = __src[0];
    v50 = *&__src[1];
    *v11 = v68;
    *(v11 + 8) = v49;
    *(v11 + 3) = v50;
    swift_storeEnumTagMultiPayload();
    sub_274BCCB28();
    sub_274BCCF30(&qword_28098E998, type metadata accessor for ContentCollectionGridView);

    v51 = v50;
    v52 = v69;
    sub_274BF3A64();
    sub_274AFA6A8(v52, v75, &qword_28098EA08);
    swift_storeEnumTagMultiPayload();
    sub_274BCCA6C();
    sub_274BCCB7C();
    sub_274BF3A64();

    sub_274B21754(v72, v46);

    return sub_274AFA708(v52, &qword_28098EA08);
  }
}

void sub_274BCAAEC(void **a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, char a6)
{
  v8 = *a1;
  v9 = a4[1];
  v19[0] = *a4;
  v19[1] = v9;
  v20 = *(a4 + 32);
  v10 = a4[1];
  v16 = *a4;
  v17 = v10;
  v18 = *(a4 + 32);
  v14[5] = v8;
  v14[6] = a5;
  v15 = a6;
  v11 = v8;
  sub_274B217DC(a5, a6);
  sub_274AFA6A8(v19, v14, &qword_28098C1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  sub_274BF48D4();
  v12 = v17;
  v13 = v18;

  sub_274B4C9F8(v12, *(&v12 + 1), v13);
}

void sub_274BCABC4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a4[1];
  v16[0] = *a4;
  v16[1] = v7;
  v17 = *(a4 + 32);
  v8 = a4[1];
  v13 = *a4;
  v14 = v8;
  v15 = *(a4 + 32);
  v11[5] = v5;
  v11[6] = v6;
  v12 = a5;
  sub_274B217DC(v5, v6);
  sub_274AFA6A8(v16, v11, &qword_28098C1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  sub_274BF48D4();
  v9 = v14;
  v10 = v15;

  sub_274B4C9F8(v9, *(&v9 + 1), v10);
}

uint64_t __ContentCollectionPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E920);
  OUTLINED_FUNCTION_1();
  v107 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_0();
  v105 = v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E928);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v118 = v6;
  v100 = type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  v97 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E930);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v101 = v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E938);
  OUTLINED_FUNCTION_1();
  v103 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  v102 = v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E940);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_0();
  v110 = v15;
  sub_274BF3B84();
  OUTLINED_FUNCTION_1();
  v114 = v17;
  v115 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E948);
  OUTLINED_FUNCTION_1();
  v99 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  v98 = v22;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E950);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_0();
  v111 = v24;
  v25 = *(v1 + 48);
  v104 = *(v1 + 56);
  v106 = *(v1 + 64);
  v26 = *(v1 + 72);
  v27 = *(v1 + 88);
  v28 = *(v1 + 96);
  v29 = *(v1 + 104);
  v30 = *(v1 + 112);
  v31 = *(v1 + 120);
  if (v27)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 24.0;
  }

  WFContentCollection.shouldShowGridView.getter();
  if (v33)
  {
    v107 = v19;
    if ((v26 & 0xC0) == 0x40)
    {
      LODWORD(v105) = v26;
      *v123 = v30;
      *&v123[8] = v31;
      v34 = v104;
      v35 = v106;
      sub_274B217DC(v104, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
      sub_274BF4784();
      v36 = v122[0];
      sub_274BF51E4();
      sub_274B217DC(v34, v35);
      v37 = sub_274BF51D4();
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      *(v38 + 16) = v37;
      *(v38 + 24) = v39;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v40 = sub_274BF51D4();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v39;
      sub_274BF48F4();
      v42 = __src[0];
      v43 = *&__src[1];
      v44 = BYTE8(__src[1]);
      v45 = v97;
      *v97 = v36;
      v46 = v45;
      *(v45 + 1) = v42;
      v45[3] = v43;
      *(v45 + 32) = v44;
      v122[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
      OUTLINED_FUNCTION_15_8();
      *(v46 + 40) = *v123;
      *(v46 + 56) = CGSizeMake;
      *(v46 + 64) = 0;
      v47 = v100;
      v48 = *(v100 + 32);
      *(v46 + v48) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
      swift_storeEnumTagMultiPayload();
      v49 = (v46 + v47[9]);
      v50 = MEMORY[0x277D84F90];
      v122[0] = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D450);
      OUTLINED_FUNCTION_15_8();
      v51 = *&v123[8];
      *v49 = *v123;
      v49[1] = v51;
      v52 = v46 + v47[10];
      memset(v122, 0, 32);
      LOBYTE(v122[4]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D460);
      OUTLINED_FUNCTION_15_8();
      v53 = v123[32];
      v54 = *&v123[40];
      v55 = *&v123[16];
      *v52 = *v123;
      *(v52 + 16) = v55;
      *(v52 + 32) = v53;
      *(v52 + 40) = v54;
      if (sub_274B22B94(v50))
      {
        sub_274B48714(MEMORY[0x277D84F90]);
      }

      else
      {
        v56 = MEMORY[0x277D84FA0];
      }

      v79 = v118;
      v80 = v115;
      v81 = v107;
      v82 = (v46 + v47[11]);
      v122[0] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB08);
      OUTLINED_FUNCTION_15_8();
      v83 = *&v123[8];
      *v82 = *v123;
      v82[1] = v83;
      *(v46 + v47[12]) = 0x4024000000000000;
      *(v46 + v47[13]) = 0x4031000000000000;
      *(v46 + v47[14]) = 0x4024000000000000;
      sub_274BF4A94();
      OUTLINED_FUNCTION_20_6();
      v84 = v101;
      sub_274B9029C(v46, v101);
      v85 = v112;
      v86 = (v84 + *(v112 + 36));
      v87 = *&v123[16];
      *v86 = *v123;
      v86[1] = v87;
      v86[2] = *&v123[32];
      v88 = sub_274BF3E54();
      sub_274BF3B74();
      v118 = sub_274BCC084();
      v89 = v102;
      MEMORY[0x277C63B30](v88, *&v32, 0, v81, v85, v118);
      (*(v114 + 8))(v81, v80);
      sub_274AFA708(v84, &qword_28098E930);
      v90 = v103;
      v91 = v113;
      (*(v103 + 16))(v110, v89, v113);
      swift_storeEnumTagMultiPayload();
      v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E980);
      v93 = sub_274BCC00C(&qword_28098E988, &qword_28098E980);
      v122[0] = v92;
      v122[1] = v93;
      OUTLINED_FUNCTION_5_20();
      swift_getOpaqueTypeConformance2();
      v122[0] = v85;
      v122[1] = v118;
      swift_getOpaqueTypeConformance2();
      v78 = v111;
      sub_274BF3A64();
      sub_274B4C9F8(v104, v106, v105);
      (*(v90 + 8))(v89, v91);
    }

    else
    {
      v67 = [v25 items];
      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_46();
      v68 = sub_274BF5144();

      *v123 = v30;
      *&v123[8] = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
      sub_274BF4784();
      v69 = v122[0];
      sub_274BF4A94();
      OUTLINED_FUNCTION_20_6();
      *&v121[39] = __src[2];
      *&v121[23] = __src[1];
      *&v121[7] = __src[0];
      *(&v122[4] + 1) = *v121;
      v122[0] = v68;
      v122[1] = v28;
      v122[2] = v29;
      v122[3] = v69;
      LOBYTE(v122[4]) = v27;
      *(&v122[6] + 1) = *&v121[16];
      *(&v122[8] + 1) = *&v121[32];
      v122[10] = *(&__src[2] + 1);
      sub_274BF3E54();
      v70 = v107;
      sub_274BF3B74();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E980);
      v72 = sub_274BCC00C(&qword_28098E988, &qword_28098E980);
      v73 = v98;
      v74 = OUTLINED_FUNCTION_23_6();
      MEMORY[0x277C63B30](v74);
      (*(v114 + 8))(v70, v115);
      memcpy(v123, v122, 0x58uLL);
      sub_274AFA708(v123, &qword_28098E980);
      v75 = v99;
      v76 = v109;
      (*(v99 + 16))(v110, v73, v109);
      swift_storeEnumTagMultiPayload();
      v122[0] = v71;
      v122[1] = v72;
      OUTLINED_FUNCTION_5_20();
      swift_getOpaqueTypeConformance2();
      v77 = sub_274BCC084();
      v122[0] = v112;
      v122[1] = v77;
      swift_getOpaqueTypeConformance2();
      v78 = v111;
      sub_274BF3A64();
      (*(v75 + 8))(v73, v76);
      v79 = v118;
    }

    sub_274AEDF28(v78, v79);
    swift_storeEnumTagMultiPayload();
    sub_274BCBEEC();
    v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E960);
    v95 = sub_274BCC00C(&qword_28098E968, &qword_28098E960);
    v122[0] = v94;
    v122[1] = v95;
    OUTLINED_FUNCTION_6_16();
    sub_274BF3A64();
    return sub_274AEDF90(v78);
  }

  else
  {
    v57 = [v25 items];
    OUTLINED_FUNCTION_18_7();
    OUTLINED_FUNCTION_46();
    v58 = sub_274BF5144();

    *v123 = v30;
    *&v123[8] = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E958);
    sub_274BF4784();
    v59 = v122[0];
    sub_274BF4A94();
    sub_274BF34A4();
    memcpy(&v124[7], __src, 0x70uLL);
    v122[0] = v58;
    v122[1] = v28;
    v122[2] = v29;
    v122[3] = v59;
    LOBYTE(v122[4]) = v27;
    memcpy(&v122[4] + 1, v124, 0x77uLL);
    sub_274BF3EA4();
    sub_274BF3B74();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E960);
    v61 = sub_274BCC00C(&qword_28098E968, &qword_28098E960);
    v62 = v105;
    v63 = OUTLINED_FUNCTION_23_6();
    MEMORY[0x277C63B30](v63);
    (*(v114 + 8))(v19, v115);
    memcpy(v123, v122, sizeof(v123));
    sub_274AFA708(v123, &qword_28098E960);
    v64 = v107;
    v65 = v120;
    (*(v107 + 2))(v118, v62, v120);
    swift_storeEnumTagMultiPayload();
    sub_274BCBEEC();
    v122[0] = v60;
    v122[1] = v61;
    OUTLINED_FUNCTION_6_16();
    sub_274BF3A64();
    return (*(v64 + 1))(v62, v65);
  }
}

uint64_t sub_274BCB96C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C300);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_17_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274BCB9C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_17_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274BCBA40()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_274BCBA88(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
  }

  return result;
}

void sub_274BCBAD4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for ContentCollectionPreviewViewOptions()
{
  result = qword_28098E9C8;
  if (!qword_28098E9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274BCBB78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_274BF5874())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_274BF58C4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_274BCBC78(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_274BF5D44();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_274BF5844();
    sub_274B08760();
    sub_274BCCF30(&qword_28098AD48, sub_274B08760);
    sub_274BF52D4();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v6)
  {
    v11 = v5;
LABEL_17:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = *(*(a2 + 48) + ((v11 << 9) | (8 * v14)));
    for (i = v16; ; i = v16)
    {
      v15 = sub_274BF5614();

      v10 ^= v15;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_274BF58B4())
      {
        goto LABEL_20;
      }

      sub_274B08760();
      swift_dynamicCast();
    }
  }

  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= ((v4 + 64) >> 6))
    {
LABEL_20:
      sub_274AEF594();
      MEMORY[0x277C65580](v10);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v13;
    if (v6)
    {
      v5 = v11;
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_274BCBE98()
{
  result = qword_28098E970;
  if (!qword_28098E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E970);
  }

  return result;
}

unint64_t sub_274BCBEEC()
{
  result = qword_28098E978;
  if (!qword_28098E978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E980);
    sub_274BCC00C(&qword_28098E988, &qword_28098E980);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E930);
    sub_274BCC084();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E978);
  }

  return result;
}

uint64_t sub_274BCC00C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_274BCBE98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274BCC084()
{
  result = qword_28098E990;
  if (!qword_28098E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E930);
    sub_274BCCF30(&qword_28098E998, type metadata accessor for ContentCollectionGridView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E990);
  }

  return result;
}

unint64_t sub_274BCC144()
{
  result = qword_28098E9A0;
  if (!qword_28098E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9A0);
  }

  return result;
}

unint64_t sub_274BCC19C()
{
  result = qword_28098E9A8;
  if (!qword_28098E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9A8);
  }

  return result;
}

unint64_t sub_274BCC1F4()
{
  result = qword_28098E9B0;
  if (!qword_28098E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9B0);
  }

  return result;
}

unint64_t sub_274BCC24C()
{
  result = qword_28098E9B8;
  if (!qword_28098E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9B8);
  }

  return result;
}

unint64_t sub_274BCC2B4()
{
  result = qword_28098E9C0;
  if (!qword_28098E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9C0);
  }

  return result;
}

void sub_274BCC348()
{
  sub_274BCC528();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274BCC528()
{
  if (!qword_28098E9D8)
  {
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_28098E9D8);
    }
  }
}

uint64_t sub_274BCC59C(uint64_t a1, int a2)
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

uint64_t sub_274BCC5DC(uint64_t result, int a2, int a3)
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

uint64_t sub_274BCC63C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_274BCC67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_274BCC6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_274BCC6F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
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

uint64_t sub_274BCC740(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_274BCC7C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_274BCC8AC(uint64_t a1, int a2)
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

uint64_t sub_274BCC8EC(uint64_t result, int a2, int a3)
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

unint64_t sub_274BCC95C()
{
  result = qword_28098E9E0;
  if (!qword_28098E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E9E8);
    sub_274BCC9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9E0);
  }

  return result;
}

unint64_t sub_274BCC9E0()
{
  result = qword_28098E9F0;
  if (!qword_28098E9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E9F8);
    sub_274BCCA6C();
    sub_274BCCB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E9F0);
  }

  return result;
}

unint64_t sub_274BCCA6C()
{
  result = qword_28098EA00;
  if (!qword_28098EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EA08);
    sub_274BCCB28();
    sub_274BCCF30(&qword_28098E998, type metadata accessor for ContentCollectionGridView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EA00);
  }

  return result;
}

unint64_t sub_274BCCB28()
{
  result = qword_28098EA10;
  if (!qword_28098EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EA10);
  }

  return result;
}

unint64_t sub_274BCCB7C()
{
  result = qword_28098EA18;
  if (!qword_28098EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EA18);
  }

  return result;
}

unint64_t sub_274BCCBD0()
{
  result = qword_28098EA20;
  if (!qword_28098EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EA28);
    sub_274BCBEEC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E960);
    sub_274BCC00C(&qword_28098E968, &qword_28098E960);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EA20);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  swift_unknownObjectRelease();
  sub_274B21754(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

id sub_274BCCDBC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return OUTLINED_FUNCTION_11_13(v2, *(v1 + 40), a1);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  sub_274B4C9F8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_274BCCE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentCollectionGridView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BCCEC0(uint64_t a1)
{
  v2 = type metadata accessor for ContentCollectionGridView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274BCCF30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274BCCFE0()
{
  v0 = sub_274BF5B24();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t WFLinkEntityContentItem.preview(configuration:)(uint64_t a1)
{
  v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A168);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v5 = v16 - v4;
  type metadata accessor for SportsEventPreviewView();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 8);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  sub_274BF4F44();

  v14 = sub_274BCCFE0();
  if (v14 == 2 || (v14 & 1) != 0)
  {
    v17[0] = v9;
    v17[1] = v10;
    v18 = v11;
    WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)(v17, 0, 1, v5);
    sub_274B08B6C();
  }

  else
  {
    sub_274BCD204(v1, v8);
    sub_274BCD940();
  }

  return sub_274BF48B4();
}

uint64_t type metadata accessor for SportsEventPreviewView()
{
  result = qword_28098EA48;
  if (!qword_28098EA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274BCD204(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v54 - v6;
  v8 = [a1 entity];
  sub_274BCDB68(0x6D69547472617473, 0xE900000000000065, &v60);

  if (v61)
  {
    v9 = sub_274BF2114();
    v10 = swift_dynamicCast() ^ 1;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    sub_274AFA708(&v60, &qword_28098B300);
    v12 = sub_274BF2114();
    v11 = v7;
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v10, 1, v12);
  v13 = type metadata accessor for SportsEventPreviewView();
  sub_274BCED98(v7, a2 + v13[5]);
  v14 = [a1 entity];
  sub_274BCDB68(0x736D616574, 0xE500000000000000, &v60);

  if (v61)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EAA0);
    OUTLINED_FUNCTION_0_31();
    if (swift_dynamicCast())
    {
      v15 = v58;
      goto LABEL_9;
    }
  }

  else
  {
    sub_274AFA708(&v60, &qword_28098B300);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_9:
  if (sub_274B22B94(v15) == 2)
  {
    v16 = v15 & 0xC000000000000001;
    sub_274B17EC8(0, (v15 & 0xC000000000000001) == 0);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x277C65230](0, v15);
    }

    else
    {
      v17 = v15[4];
    }

    v18 = v17;
    v19 = [v17 value];

    sub_274BF57C4();
    swift_unknownObjectRelease();
    sub_274AD8430(0, &qword_28098D020);
    OUTLINED_FUNCTION_0_31();
    if (swift_dynamicCast())
    {
      v20 = v58;
    }

    else
    {
      v20 = 0;
    }

    sub_274B17EC8(1, v16 == 0);
    if (v16)
    {
      v21 = MEMORY[0x277C65230](1, v15);
    }

    else
    {
      v21 = v15[5];
    }

    v26 = v21;

    v27 = [v26 value];

    sub_274BF57C4();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_0_31();
    if (swift_dynamicCast())
    {
      v28 = v58;
    }

    else
    {
      v28 = 0;
    }

    if (v20)
    {
      v29 = v20;
      OUTLINED_FUNCTION_3_29();

      if (v61)
      {
        OUTLINED_FUNCTION_0_31();
        if (swift_dynamicCast())
        {
          v30 = v59;
          v56 = v58;
          goto LABEL_34;
        }

LABEL_33:
        v56 = 0;
        v30 = 0xE000000000000000;
LABEL_34:
        v55 = v30;
        if (v28)
        {
          v31 = v28;
          OUTLINED_FUNCTION_3_29();

          if (v61)
          {
            OUTLINED_FUNCTION_0_31();
            if (swift_dynamicCast())
            {
              v33 = v58;
              v32 = v59;
              goto LABEL_41;
            }

LABEL_40:
            v33 = 0;
            v32 = 0xE000000000000000;
LABEL_41:
            v57 = v20;
            sub_274BF4FE4();
            if (qword_2809893B8 != -1)
            {
              swift_once();
            }

            v34 = qword_28098C7C0;
            v35 = sub_274BF4F04();
            v36 = sub_274BF4F04();

            v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

            sub_274BF4F44();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_274BFA880;
            v39 = MEMORY[0x277D837D0];
            *(v38 + 56) = MEMORY[0x277D837D0];
            v40 = sub_274B12CA0();
            v41 = v55;
            *(v38 + 32) = v56;
            *(v38 + 40) = v41;
            *(v38 + 96) = v39;
            *(v38 + 104) = v40;
            *(v38 + 64) = v40;
            *(v38 + 72) = v33;
            *(v38 + 80) = v32;
            v42 = sub_274BF4F14();
            v44 = v43;

            *a2 = v42;
            a2[1] = v44;
            if (v57)
            {
              v45 = v57;
              OUTLINED_FUNCTION_4_23();
              sub_274BCDB68(v32, 0xE900000000000061, v46);

              if (v61)
              {
                OUTLINED_FUNCTION_6_17();
                goto LABEL_48;
              }
            }

            else
            {
              OUTLINED_FUNCTION_5_21();
              OUTLINED_FUNCTION_4_23();
            }

            sub_274AFA708(&v60, &qword_28098B300);
LABEL_48:
            v47 = sub_274BF1F64();
            v49 = v48;

            v50 = (a2 + v13[6]);
            *v50 = v47;
            v50[1] = v49;
            if (v28)
            {
              v51 = v28;
              sub_274BCDB68(v32, 0xE900000000000061, &v60);

              if (v61)
              {
                OUTLINED_FUNCTION_6_17();
LABEL_53:
                v52 = sub_274BF1F64();
                v25 = v53;

                a2 = (a2 + v13[7]);
                *a2 = v52;
                goto LABEL_54;
              }
            }

            else
            {
              v51 = 0;
              OUTLINED_FUNCTION_5_21();
            }

            sub_274AFA708(&v60, &qword_28098B300);
            goto LABEL_53;
          }
        }

        else
        {
          OUTLINED_FUNCTION_5_21();
        }

        sub_274AFA708(&v60, &qword_28098B300);
        goto LABEL_40;
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_21();
    }

    sub_274AFA708(&v60, &qword_28098B300);
    goto LABEL_33;
  }

  *(a2 + v13[6]) = xmmword_274C07130;
  *(a2 + v13[7]) = xmmword_274C07130;
  v22 = [a1 entity];
  sub_274BCDB68(0x656C746974, 0xE500000000000000, &v60);

  if (v61)
  {
    OUTLINED_FUNCTION_0_31();
    v23 = swift_dynamicCast();
    v24 = v58;
    if (v23)
    {
      v25 = v59;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    sub_274AFA708(&v60, &qword_28098B300);
    v24 = 0;
    v25 = 0;
  }

  *a2 = v24;
LABEL_54:
  a2[1] = v25;
}

unint64_t sub_274BCD940()
{
  result = qword_28098EA40;
  if (!qword_28098EA40)
  {
    type metadata accessor for SportsEventPreviewView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EA40);
  }

  return result;
}

void sub_274BCD9EC()
{
  sub_274BCDB00(319, &qword_28098EA58);
  if (v0 <= 0x3F)
  {
    sub_274BCDAA8();
    if (v1 <= 0x3F)
    {
      sub_274BCDB00(319, &qword_28098EA68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_274BCDAA8()
{
  if (!qword_28098EA60)
  {
    sub_274BF2114();
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_28098EA60);
    }
  }
}

void sub_274BCDB00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_274BF5724();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_274BCDB68(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = [v4 properties];
  sub_274AD8430(0, &qword_28098EAA8);
  v8 = sub_274BF5144();

  v9 = sub_274B22B94(v8);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      goto LABEL_20;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C65230](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = [v11 identifier];
    v14 = sub_274BF4F44();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {

LABEL_16:

      v19 = [v12 value];

      if (v19)
      {
        v20 = [v19 value];

        sub_274BF57C4();

        swift_unknownObjectRelease();
        return;
      }

LABEL_20:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    v18 = sub_274BF5C24();

    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_274BCDD88(uint64_t a1)
{
  v2 = sub_274BF2234();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF2114();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_274BF2254();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2224();
  sub_274BF2104();
  if (sub_274BF21D4() & 1) != 0 || (sub_274BF21E4())
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    [v12 setDoesRelativeDateFormatting_];
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v23 = *MEMORY[0x277CC9988];
    v26 = a1;
    v22 = *(v3 + 104);
    v22(v5);
    v24 = sub_274BF2244();
    v25 = v6;
    v13 = *(v3 + 8);
    v13(v5, v2);
    (v22)(v5, v23, v2);
    v14 = sub_274BF2244();
    v13(v5, v2);
    v6 = v25;
    v15 = "ewOptions";
    if (v24 == v14)
    {
      v15 = "EEE, MMM d, yyyy 'at' h:mm a";
      v16 = 0xD000000000000016;
    }

    else
    {
      v16 = 0xD00000000000001CLL;
    }

    sub_274B80628(v16, v15 | 0x8000000000000000, v12);
  }

  v17 = sub_274BF20A4();
  v18 = [v12 stringFromDate_];

  v19 = sub_274BF4F44();
  (*(v27 + 8))(v8, v6);
  (*(v9 + 8))(v11, v28);
  return v19;
}

void *sub_274BCE144@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4 - 8];
  v6 = sub_274BF2114();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for SportsEventPreviewView();
  sub_274AFA6A8(v1 + *(v10 + 20), v5, &qword_28098C728);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_274AFA708(v5, &qword_28098C728);
LABEL_6:
    sub_274BCEA10(v23);
    memcpy(v22, v23, 0x172uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EA70);
    OUTLINED_FUNCTION_1_28();
    sub_274AFA930(v15, v16);
    sub_274BF3A64();
    return memcpy(a1, v24, 0x172uLL);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (!*(v1 + 8))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_6;
  }

  v11 = sub_274BF3804();
  LOBYTE(v22[0]) = 1;
  sub_274BCE4C4(v1, v9, v24);
  memcpy(v20, v24, 0x159uLL);
  memcpy(v21, v24, 0x159uLL);
  sub_274AFA6A8(v20, v23, &qword_28098EA80);
  sub_274AFA708(v21, &qword_28098EA80);
  memcpy(&v19[7], v20, 0x159uLL);
  v12 = v22[0];
  v22[0] = v11;
  v22[1] = 0;
  LOBYTE(v22[2]) = v12;
  memcpy(&v22[2] + 1, v19, 0x160uLL);
  sub_274BCEA1C(v22);
  memcpy(v24, v22, 0x172uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EA70);
  OUTLINED_FUNCTION_1_28();
  sub_274AFA930(v13, v14);
  sub_274BF3A64();
  (*(v7 + 8))(v9, v6);
  memcpy(v24, v23, 0x172uLL);
  return memcpy(a1, v24, 0x172uLL);
}

uint64_t sub_274BCE4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for SportsEventPreviewView();
  v6 = (a1 + *(v5 + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_274BF3E94();
  sub_274BF2E54();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  __src[0] = 0;
  sub_274BCEA24(v7, v8);
  v18 = sub_274BF38F4();
  LOBYTE(v51[0]) = 1;
  sub_274BCE774(a2, __src);
  memcpy(__dst, __src, 0xA4uLL);
  memcpy(v47, __src, 0xA4uLL);
  sub_274AFA6A8(__dst, v38, &qword_28098EA88);
  sub_274AFA708(v47, &qword_28098EA88);
  memcpy(&v45[7], __dst, 0xA4uLL);
  v19 = v51[0];
  v20 = (a1 + *(v5 + 28));
  v21 = *v20;
  v22 = v20[1];
  LOBYTE(a2) = sub_274BF3E74();
  sub_274BF2E54();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  __src[0] = 0;
  *&v41 = v7;
  *(&v41 + 1) = v8;
  LOBYTE(v42) = v9;
  *(&v42 + 1) = v11;
  *v43 = v13;
  *&v43[8] = v15;
  *&v43[16] = v17;
  v43[24] = 0;
  v39 = 0;
  v40 = 1;
  v44[0] = &v41;
  v44[1] = &v39;
  v38[0] = v18;
  v38[1] = 0;
  LOBYTE(v38[2]) = v19;
  memcpy(&v38[2] + 1, v45, 0xABuLL);
  v36 = 0;
  v37 = 1;
  v44[2] = v38;
  v44[3] = &v36;
  *&v33 = v21;
  *(&v33 + 1) = v22;
  LOBYTE(v34) = a2;
  *(&v34 + 1) = v24;
  *v35 = v26;
  *&v35[8] = v28;
  *&v35[16] = v30;
  v35[24] = 0;
  v44[4] = &v33;
  sub_274BA1F48(v44, a3);
  v48[0] = v33;
  v48[1] = v34;
  v49[0] = *v35;
  *(v49 + 9) = *&v35[9];
  sub_274BCEA24(v21, v22);
  sub_274AFA708(v48, &qword_28098DB00);
  memcpy(__src, v38, 0xBCuLL);
  sub_274AFA708(__src, &qword_28098DB08);
  v51[0] = v41;
  v51[1] = v42;
  *v52 = *v43;
  *&v52[9] = *&v43[9];
  return sub_274AFA708(v51, &qword_28098DB00);
}

uint64_t sub_274BCE774@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_274ADDF6C();

  v3 = sub_274BF4104();
  v28 = v4;
  v5 = v4;
  v7 = v6;
  v32 = v8;
  KeyPath = swift_getKeyPath();
  v31 = sub_274BF3FE4();
  v26 = swift_getKeyPath();
  v9 = v7 & 1;
  v29 = v7 & 1;
  v25 = swift_getKeyPath();
  v45 = sub_274BCDD88(a1);
  v46 = v10;
  v11 = sub_274BF4104();
  v23 = v12;
  v24 = v11;
  v14 = v13;
  v22 = v15;
  v16 = swift_getKeyPath();
  v17 = sub_274BF3ED4();
  v18 = swift_getKeyPath();
  v19 = v14 & 1;
  LOBYTE(v45) = v14 & 1;
  v20 = sub_274BF3B94();
  __src[0] = v3;
  __src[1] = v5;
  LOBYTE(__src[2]) = v9;
  __src[3] = v32;
  __src[4] = KeyPath;
  __src[5] = 3;
  LOBYTE(__src[6]) = 0;
  __src[7] = v26;
  __src[8] = v31;
  __src[9] = v25;
  LOBYTE(__src[10]) = 1;
  memcpy(__dst, __src, 0x51uLL);
  v35[0] = v24;
  v35[1] = v23;
  LOBYTE(v35[2]) = v19;
  v35[3] = v22;
  v35[4] = v16;
  v35[5] = 2;
  LOBYTE(v35[6]) = 0;
  v35[7] = v18;
  v35[8] = v17;
  LODWORD(v35[9]) = v20;
  memcpy(&__dst[88], v35, 0x4CuLL);
  memcpy(a2, __dst, 0xA4uLL);
  v36[0] = v24;
  v36[1] = v23;
  v37 = v19;
  v38 = v22;
  v39 = v16;
  v40 = 2;
  v41 = 0;
  v42 = v18;
  v43 = v17;
  v44 = v20;
  sub_274AFA6A8(__src, &v45, &qword_28098EA90);
  sub_274AFA6A8(v35, &v45, &qword_28098EA98);
  sub_274AFA708(v36, &qword_28098EA98);
  v45 = v3;
  v46 = v28;
  v47 = v29;
  v48 = v32;
  v49 = KeyPath;
  v50 = 3;
  v51 = 0;
  v52 = v26;
  v53 = v31;
  v54 = v25;
  v55 = 1;
  return sub_274AFA708(&v45, &qword_28098EA90);
}

uint64_t sub_274BCEA24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_274B68344(a1, a2);
  }

  return a1;
}

void *sub_274BCEA38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_274BF46E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_274AD8430(0, &unk_28098EFB0);
  sub_274B68344(a1, a2);
  sub_274B68344(a1, a2);
  v10 = sub_274B32FDC();
  if (!v10)
  {
    sub_274B6839C(a1, a2);
LABEL_5:
    v13 = sub_274BF46D4();
    LOBYTE(v16[0]) = 1;
    v18[0] = v13;
    BYTE2(v18[8]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EAC0);
    sub_274BCEFD0();
    sub_274BF3A64();
    return memcpy(a3, __dst, 0x43uLL);
  }

  v11 = v10;
  sub_274BF46C4();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v12 = sub_274BF4734();

  (*(v7 + 8))(v9, v6);
  sub_274BF4A94();
  sub_274BF30D4();
  v15[16] = v21;
  v15[8] = 1;
  v16[0] = v12;
  v16[1] = v18[9];
  LOBYTE(v16[2]) = v19;
  *(&v16[2] + 1) = __dst[0];
  HIDWORD(v16[2]) = *(__dst + 3);
  v16[3] = v20;
  LOBYTE(v16[4]) = v21;
  HIDWORD(v16[4]) = *(v18 + 3);
  *(&v16[4] + 1) = v18[0];
  *&v16[5] = v22;
  v16[7] = 0;
  LOWORD(v16[8]) = 1;
  memcpy(__dst, v16, 0x42uLL);
  v17 = 0;
  BYTE2(__dst[16]) = 0;
  sub_274AFA6A8(v16, v18, &qword_28098EAC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EAC0);
  sub_274BCEFD0();
  sub_274BF3A64();

  sub_274B6839C(a1, a2);
  sub_274AFA708(v16, &qword_28098EAC0);
  memcpy(__dst, v18, 0x43uLL);
  return memcpy(a3, __dst, 0x43uLL);
}

uint64_t sub_274BCED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274BCEE4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 16))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v3 = *(a1 + 8) >> 60;
      if (((4 * v3) & 0xC) != 0)
      {
        v2 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
      }

      else
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

uint64_t sub_274BCEEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_274BCEEFC()
{
  result = qword_28098EAB0;
  if (!qword_28098EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EAB8);
    sub_274AFA930(&qword_28098EA78, &qword_28098EA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EAB0);
  }

  return result;
}

unint64_t sub_274BCEFD0()
{
  result = qword_28098EAC8;
  if (!qword_28098EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EAC0);
    sub_274B8C134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EAC8);
  }

  return result;
}

unint64_t sub_274BCF05C()
{
  result = qword_28098EAD0;
  if (!qword_28098EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098EAD8);
    sub_274BCEFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EAD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return swift_dynamicCast();
}

uint64_t sub_274BCF108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_274BF2D24();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_274BCF1F8()
{
  type metadata accessor for MutablePublishedBox();
  OUTLINED_FUNCTION_1_29();
  swift_getWitnessTable();

  return sub_274BF2F94();
}

uint64_t MutableStateObject.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for MutablePublishedBox();
  OUTLINED_FUNCTION_1_29();
  swift_getWitnessTable();
  return sub_274BF2F84();
}

uint64_t sub_274BCF310(void (*a1)(void))
{
  type metadata accessor for MutablePublishedBox();
  a1();
  return MutablePublishedBox.__allocating_init(_:)();
}

uint64_t MutablePublishedBox.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  MutablePublishedBox.init(_:)();
  return v0;
}

uint64_t MutableStateObject.wrappedValue.getter()
{
  sub_274BCF1F8();
  v0 = MutablePublishedBox.value.getter();

  return v0;
}

uint64_t sub_274BCF400@<X0>(uint64_t *a1@<X8>)
{
  result = MutableStateObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274BCF43C()
{
  swift_unknownObjectRetain();

  return MutableStateObject.wrappedValue.setter();
}

uint64_t MutableStateObject.wrappedValue.setter()
{
  sub_274BCF1F8();
  MutablePublishedBox.value.setter();
}

uint64_t MutablePublishedBox.value.getter()
{
  OUTLINED_FUNCTION_19_4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t MutablePublishedBox.value.setter()
{
  OUTLINED_FUNCTION_19_4();
  swift_getKeyPath();
  swift_getKeyPath();

  swift_unknownObjectRetain();
  sub_274BF2D74();
  sub_274BCF81C();
  return swift_unknownObjectRelease();
}

void (*MutableStateObject.wrappedValue.modify(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6))(void **a1, char a2)
{
  v12 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v12;
  v12[3] = a5;
  v12[4] = a6;
  *(v12 + 40) = a4;
  v12[1] = a2;
  v12[2] = a3;
  *v12 = MutableStateObject.wrappedValue.getter();
  return sub_274BCF714;
}

void sub_274BCF714(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_4_24();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
  }

  free(v2);
}

uint64_t sub_274BCF7C4@<X0>(uint64_t *a1@<X8>)
{
  result = MutablePublishedBox.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274BCF81C()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v12 - v6;
  MutablePublishedBox.value.getter();
  sub_274BF2CC4();
  swift_unknownObjectRelease();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v8;
  swift_getAssociatedConformanceWitness();

  v10 = sub_274BF2DB4();

  (*(v5 + 8))(v7, AssociatedTypeWitness);

  *(v1 + *(*v1 + 104)) = v10;
}

uint64_t (*MutablePublishedBox.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = MutablePublishedBox.value.getter();
  return sub_274BCFA64;
}

uint64_t sub_274BCFA64(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MutablePublishedBox.value.setter();
  }

  swift_unknownObjectRetain();
  MutablePublishedBox.value.setter();

  return swift_unknownObjectRelease();
}

uint64_t MutablePublishedBox.$value.getter()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_1_2();
  sub_274BF2D94();
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274BCFB30(uint64_t a1)
{
  v2 = sub_274BF2D84();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MutablePublishedBox.$value.setter(v5);
}

uint64_t MutablePublishedBox.$value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v2 = sub_274BF2D84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  sub_274BF2D94();
  sub_274BF2D44();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MutablePublishedBox.$value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_18();
  v4 = sub_274BF2D84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  MutablePublishedBox.$value.getter();
  return sub_274BCFE2C;
}

void sub_274BCFE2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    MutablePublishedBox.$value.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MutablePublishedBox.$value.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MutablePublishedBox.init(_:)()
{
  OUTLINED_FUNCTION_1_2();
  *(v0 + *(v1 + 104)) = 0;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_1_2();
  v3 = *(v2 + 80);
  v4 = swift_unknownObjectRetain();
  sub_274BCF79C(v4, v3);
  swift_endAccess();
  sub_274BCF81C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_274BCFF78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for MutablePublishedBox();
    swift_getWitnessTable();
    sub_274BF2CE4();

    sub_274BF2D04();
  }

  return result;
}

uint64_t MutablePublishedBox.deinit()
{
  OUTLINED_FUNCTION_19_4();
  v2 = *(v1 + 96);
  v3 = sub_274BF2D94();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  OUTLINED_FUNCTION_18();

  return v0;
}

uint64_t MutablePublishedBox.__deallocating_deinit()
{
  MutablePublishedBox.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274BD0118()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BD0178()
{
  result = sub_274BF2D94();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return swift_beginAccess();
}

uint64_t sub_274BD0298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EBE0);
  sub_274AFA930(&qword_28098EBE8, &qword_28098EBE0);
  return sub_274BF4034();
}

uint64_t sub_274BD033C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EBF0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EBF8);
  v30 = *(v7 - 8);
  v8 = v30;
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_274BF38A4();
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC00);
  sub_274BD1194();
  v29 = v13;
  sub_274BF4994();
  sub_274BF38A4();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC10);
  sub_274BD124C();
  v27 = v6;
  sub_274BF4994();
  v14 = *(v8 + 16);
  v28 = v10;
  v15 = v13;
  v16 = v31;
  v14(v10, v15, v31);
  v17 = v32;
  v18 = v33;
  v19 = *(v32 + 16);
  v20 = v34;
  v19(v33, v6, v34);
  v21 = v35;
  v14(v35, v10, v16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC50);
  v19(&v21[*(v22 + 48)], v18, v20);
  v23 = *(v17 + 8);
  v23(v27, v20);
  v24 = *(v30 + 8);
  v24(v29, v16);
  v23(v18, v20);
  return (v24)(v28, v16);
}

uint64_t sub_274BD06D0()
{
  sub_274BF2584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC70);
  sub_274BF2164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB18);
  sub_274AFA930(&qword_28098EC78, &qword_28098EC70);
  sub_274AFA930(&qword_28098E510, &qword_28098BB18);
  sub_274BD13B8();
  return sub_274BF4954();
}

void *sub_274BD0800@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v8 = 1;
  sub_274BD08DC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_274B066B4(__dst, &v5, &qword_28098BAD0);
  sub_274B0671C(v10, &qword_28098BAD0);
  memcpy(&v7[7], __dst, 0x50uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x57uLL);
}

uint64_t sub_274BD08DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3894();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_274BF2114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_274BF2554();
  sub_274BF20B4();
  v7 = sub_274BF20E4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v24 = v7;
  v25 = v9;
  sub_274ADDF6C();
  v10 = sub_274BF4104();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;
  sub_274BF3884();
  sub_274BF3874();
  v24 = sub_274BF2564();
  sub_274BF3854();
  sub_274BF3874();
  sub_274BF38B4();
  v16 = sub_274BF40E4();
  v18 = v17;
  v19 = v4 & 1;
  LOBYTE(v24) = v4 & 1;
  v23[24] = v4 & 1;
  v23[16] = 1;
  LOBYTE(v4) = v20 & 1;
  v23[8] = v20 & 1;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v19;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v20 & 1;
  *(a1 + 72) = v21;
  sub_274AF396C(v10, v12, v19);

  sub_274AF396C(v16, v18, v4);

  sub_274AFA1D0(v16, v18, v4);

  sub_274AFA1D0(v10, v12, v24);
}

uint64_t sub_274BD0B88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v6 = sub_274BF2594();
  if (v6)
  {
    v8[1] = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC38);
    sub_274AFA930(&qword_28098EC58, &qword_28098EC60);
    sub_274AFA930(&qword_28098EC30, &qword_28098EC38);
    sub_274BF3044();
    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

void *sub_274BD0DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v8 = 1;
  sub_274BD0E8C(__src);
  memcpy(__dst, __src, 0x71uLL);
  memcpy(v10, __src, 0x71uLL);
  sub_274B066B4(__dst, &v5, &qword_28098EC68);
  sub_274B0671C(v10, &qword_28098EC68);
  memcpy(&v7[7], __dst, 0x71uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x78uLL);
}

uint64_t sub_274BD0E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v4[0] = 1;
  sub_274BD0FE0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  sub_274B066B4(__dst, v8, &qword_28098BAD0);
  sub_274B0671C(v7, &qword_28098BAD0);
  memcpy(&v5[7], __dst, 0x50uLL);
  v8[0] = v2;
  v8[1] = 0;
  LOBYTE(v8[2]) = 1;
  memcpy(&v8[2] + 1, v5, 0x57uLL);
  v4[104] = 1;
  memcpy(a1, v8, 0x68uLL);
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *__src = v2;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v5, 0x57uLL);
  sub_274B066B4(v8, v4, &qword_28098BB18);
  return sub_274B0671C(__src, &qword_28098BB18);
}

uint64_t sub_274BD0FE0@<X0>(uint64_t a1@<X8>)
{
  sub_274BF23B4();
  sub_274ADDF6C();
  v2 = sub_274BF4104();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF23C4();
  v6 = sub_274BF4104();
  v8 = v7;
  v10 = v9;
  sub_274BF3FA4();
  v11 = sub_274BF40D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

unint64_t sub_274BD1194()
{
  result = qword_28098EC08;
  if (!qword_28098EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EC00);
    sub_274AFA930(&qword_28098E510, &qword_28098BB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EC08);
  }

  return result;
}

unint64_t sub_274BD124C()
{
  result = qword_28098EC18;
  if (!qword_28098EC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EC10);
    sub_274BD12D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EC18);
  }

  return result;
}

unint64_t sub_274BD12D0()
{
  result = qword_28098EC20;
  if (!qword_28098EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EC28);
    sub_274AFA930(&qword_28098EC30, &qword_28098EC38);
    sub_274AFA930(&qword_28098EC40, &qword_28098EC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EC20);
  }

  return result;
}

unint64_t sub_274BD13B8()
{
  result = qword_28098EC80;
  if (!qword_28098EC80)
  {
    sub_274BF2574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EC80);
  }

  return result;
}

uint64_t sub_274BD1460()
{
  type metadata accessor for LazyTextView.Coordinator();

  return swift_allocObject();
}

id sub_274BD1494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  sub_274BDB47C(a2, a3, v5);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setEditable_];
  v9 = v7;
  [v9 setContentInset_];
  [v9 setScrollIndicatorInsets_];

  v10 = sub_274BD15C4();
  [v9 setFont_];

  return v9;
}

id sub_274BD15C4()
{
  v0 = sub_274BF3F94();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_274BF3774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098ECD0);
  sub_274BF3CE4();
  v10 = sub_274BF36E4();
  v11 = *(v4 + 8);
  v11(v9, v3);
  if (v10)
  {
    sub_274BF3CE4();
    sub_274BF3674();
    v11(v6, v3);
    v12 = sub_274BF3EB4();

    (*(v19 + 8))(v2, v20);
    v13 = CTFontCopyName(v12, *MEMORY[0x277CC4930]);
    if (v13)
    {
      v14 = v13;
      sub_274BD2044();
      sub_274BF4F44();
      Size = CTFontGetSize(v12);
      v16 = sub_274BD18DC(Size);

      if (v16)
      {
        return v16;
      }
    }

    else
    {
    }
  }

  v18 = [objc_opt_self() preferredFontForTextStyle_];

  return v18;
}

void sub_274BD1880(void *a1)
{
  v2 = sub_274BD15C4();
  [a1 setFont_];
}

id sub_274BD18DC(double a1)
{
  v2 = sub_274BF4F04();

  v3 = [swift_getObjCClassFromMetadata() fontWithName:v2 size:a1];

  return v3;
}

uint64_t sub_274BD1960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BD1460();
  *a1 = result;
  return result;
}

uint64_t sub_274BD198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BD1FF0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274BD19F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BD1FF0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274BD1A54()
{
  sub_274BD1FF0();
  sub_274BF3A24();
  __break(1u);
}

double sub_274BD1A7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_274BF1B34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = a1;
  *(&v24 + 1) = a2;
  sub_274BF1B24();
  sub_274ADDF6C();
  v10 = sub_274BF5754();
  (*(v7 + 8))(v9, v6);
  v11 = *(v10 + 16);

  if (v11 < 2)
  {
    *&v24 = a1;
    *(&v24 + 1) = a2;

    v19 = sub_274BF4104();
    v20 = v13;
    v21 = v12 & 1;
    v22 = v14;
    v23 = 1;
    sub_274BD1F24();
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_274BD1F24();
  }

  sub_274BF3A64();
  result = *&v24;
  v16 = v25;
  v17 = v26;
  *a3 = v24;
  *(a3 + 16) = v16;
  *(a3 + 32) = v17;
  return result;
}

double sub_274BD1D34@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF4F44();
  sub_274BD1A7C(v2, v3, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ECA0);
  sub_274BD1E98();
  sub_274BF3A64();
  result = *v8;
  v5 = v8[1];
  v6 = v9;
  v7 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_274BD1E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274BD1E98()
{
  result = qword_28098ECA8;
  if (!qword_28098ECA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ECA0);
    sub_274BD1F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ECA8);
  }

  return result;
}

unint64_t sub_274BD1F24()
{
  result = qword_28098ECB0;
  if (!qword_28098ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ECB0);
  }

  return result;
}

unint64_t sub_274BD1F88()
{
  result = qword_28098ECB8;
  if (!qword_28098ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ECB8);
  }

  return result;
}

unint64_t sub_274BD1FF0()
{
  result = qword_28098ECC8;
  if (!qword_28098ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ECC8);
  }

  return result;
}

unint64_t sub_274BD2044()
{
  result = qword_28098EF20;
  if (!qword_28098EF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098EF20);
  }

  return result;
}

void sub_274BD2088()
{
  type metadata accessor for AsyncLoaderProgressView.ContentState();
  sub_274BF47B4();
  if (v0 <= 0x3F)
  {
    sub_274BD2870();
    if (v1 <= 0x3F)
    {
      sub_274AD8470();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_274BD2138(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5 <= 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - 2;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v5 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v5 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_39:
    if (v6 < 0x7FFFFFFF)
    {
      if (v5 <= 1)
      {
        if (v8 <= 3)
        {
          v25 = (~(-1 << v9) - v5 + 2) >> v9;
          if (v25 > 0xFFFE)
          {
            v24 = 4;
          }

          else
          {
            v26 = 1;
            if (v25 >= 0xFF)
            {
              v26 = 2;
            }

            if (v25)
            {
              v24 = v26;
            }

            else
            {
              v24 = 0;
            }
          }
        }

        else
        {
          v24 = 1;
        }

        v8 += v24;
      }

      v27 = *((((result + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }

    if (v5)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(result, v5, v4);
      v23 = EnumTagSinglePayload >= 2;
      result = EnumTagSinglePayload - 2;
      if (result != 0 && v23)
      {
        return result;
      }
    }

    return 0;
  }

  v14 = ((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v7;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
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

  switch(v19)
  {
    case 1:
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    case 2:
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_39;
      }

LABEL_35:
      v21 = v20 - 1;
      if (v16)
      {
        v21 = 0;
        LODWORD(v16) = *result;
      }

      result = v7 + (v16 | v21) + 1;
      break;
    default:
      goto LABEL_39;
  }

  return result;
}

void sub_274BD2388(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  if (v7 <= 1)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = v11;
  if (v7 <= 1)
  {
    if (v11 <= 3)
    {
      v15 = (~(-1 << v12) - v7 + 2) >> v12;
      if (v15 > 0xFFFE)
      {
        v14 = 4;
      }

      else
      {
        v16 = 1;
        if (v15 >= 0xFF)
        {
          v16 = 2;
        }

        if (v15)
        {
          v14 = v16;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }

    v13 = v14 + v11;
  }

  v17 = ((((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v10;
    if (((((((((v13 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_48;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_48;
        }

        break;
      case 3:
LABEL_116:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_47;
      default:
LABEL_47:
        if (a2)
        {
LABEL_48:
          if (v8 < 0x7FFFFFFF)
          {
            if (v7 <= 1)
            {
              if (v11 <= 3)
              {
                v32 = (~(-1 << v12) - v7 + 2) >> v12;
                if (v32 > 0xFFFE)
                {
                  v26 = 4;
                }

                else
                {
                  v33 = 1;
                  if (v32 >= 0xFF)
                  {
                    v33 = 2;
                  }

                  if (v32)
                  {
                    v26 = v33;
                  }

                  else
                  {
                    v26 = 0;
                  }
                }
              }

              else
              {
                v26 = 1;
              }

              v11 += v26;
            }

            v41 = (((&a1[((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v41 = a2 & 0x7FFFFFFF;
              v41[1] = 0;
            }

            else
            {
              *v41 = a2 - 1;
            }
          }

          else
          {
            v24 = v11;
            if (v7 <= 1)
            {
              if (v11 <= 3)
              {
                v27 = (~(-1 << v12) - v7 + 2) >> v12;
                v28 = 1;
                if (v27 >= 0xFF)
                {
                  v28 = 2;
                }

                if (!v27)
                {
                  v28 = 0;
                }

                if (v27 <= 0xFFFE)
                {
                  v25 = v28;
                }

                else
                {
                  v25 = 4;
                }
              }

              else
              {
                v25 = 1;
              }

              v24 = v25 + v11;
            }

            if (v9 >= a2)
            {
              v30 = v11;
              if (v7 <= 1)
              {
                if (v11 <= 3)
                {
                  v34 = (~(-1 << v12) - v7 + 2) >> v12;
                  v35 = 1;
                  if (v34 >= 0xFF)
                  {
                    v35 = 2;
                  }

                  if (!v34)
                  {
                    v35 = 0;
                  }

                  if (v34 <= 0xFFFE)
                  {
                    v31 = v35;
                  }

                  else
                  {
                    v31 = 4;
                  }
                }

                else
                {
                  v31 = 1;
                }

                v30 = (v31 + v11);
              }

              if (v8 >= a2)
              {
                if (a2 + 2 <= v7)
                {
                  v42 = a2 + 2;

                  __swift_storeEnumTagSinglePayload(a1, v42, v7, v6);
                }

                else
                {
                  v38 = -1 << v12;
                  if (v11 <= 3)
                  {
                    v39 = ~v38;
                  }

                  else
                  {
                    v39 = -1;
                  }

                  if (v11)
                  {
                    v29 = v39 & (a2 - v7 + 1);
                    if (v11 <= 3)
                    {
                      v40 = v11;
                    }

                    else
                    {
                      v40 = 4;
                    }

                    bzero(a1, v11);
                    switch(v40)
                    {
                      case 2:
LABEL_114:
                        *a1 = v29;
                        break;
                      case 3:
LABEL_115:
                        *a1 = v29;
                        a1[2] = BYTE2(v29);
                        break;
                      case 4:
                        goto LABEL_68;
                      default:
LABEL_104:
                        *a1 = v29;
                        break;
                    }
                  }
                }
              }

              else
              {
                if (v30 <= 3)
                {
                  v36 = ~(-1 << (8 * v30));
                }

                else
                {
                  v36 = -1;
                }

                if (v30)
                {
                  v29 = v36 & (~v8 + a2);
                  if (v30 <= 3)
                  {
                    v37 = v30;
                  }

                  else
                  {
                    v37 = 4;
                  }

                  bzero(a1, v30);
                  switch(v37)
                  {
                    case 2:
                      goto LABEL_114;
                    case 3:
                      goto LABEL_115;
                    case 4:
                      goto LABEL_68;
                    default:
                      goto LABEL_104;
                  }
                }
              }
            }

            else if (((v24 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
            {
              v29 = ~v9 + a2;
              bzero(a1, ((v24 + 7) & 0xFFFFFFF8) + 8);
LABEL_68:
              *a1 = v29;
            }
          }
        }

        break;
    }
  }

  else
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v10;
    }

    if (v17)
    {
      v23 = ~v10 + a2;
      bzero(a1, v17);
      *a1 = v23;
    }

    switch(v21)
    {
      case 1:
        a1[v17] = v22;
        break;
      case 2:
        *&a1[v17] = v22;
        break;
      case 3:
        goto LABEL_116;
      case 4:
        *&a1[v17] = v22;
        break;
      default:
        return;
    }
  }
}

void sub_274BD2870()
{
  if (!qword_28098EA58)
  {
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_28098EA58);
    }
  }
}

uint64_t sub_274BD28C0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_274BD291C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_30:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_30;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
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

    return v6 + (v7 | v15) + 1;
  }

LABEL_31:
  if (!v5)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v17 = EnumTagSinglePayload >= 2;
  result = EnumTagSinglePayload - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_274BD2AE4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7 - 2;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v13 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
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

    v10 = v12 + v8;
  }

  v15 = 8 * v10;
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v10 <= 3)
    {
      v21 = ((v17 + ~(-1 << v15)) >> v15) + 1;
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
  }

  else
  {
    v18 = 0;
  }

  if (v11 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (a2 + 2 <= v7)
          {
            v28 = a2 + 2;

            __swift_storeEnumTagSinglePayload(a1, v28, v7, v6);
          }

          else
          {
            v24 = -1 << v9;
            if (v8 <= 3)
            {
              v25 = ~v24;
            }

            else
            {
              v25 = -1;
            }

            if (v8)
            {
              v26 = v25 & (a2 - v7 + 1);
              if (v8 <= 3)
              {
                v27 = v8;
              }

              else
              {
                v27 = 4;
              }

              bzero(a1, v8);
              switch(v27)
              {
                case 2:
                  *a1 = v26;
                  break;
                case 3:
                  *a1 = v26;
                  a1[2] = BYTE2(v26);
                  break;
                case 4:
                  *a1 = v26;
                  break;
                default:
                  *a1 = v26;
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
    v19 = ~v11 + a2;
    if (v10 < 4)
    {
      v20 = (v19 >> v15) + 1;
      if (v10)
      {
        v23 = v19 & ~(-1 << v15);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v10 == 2)
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
      bzero(a1, v10);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v10] = v20;
        break;
      case 2:
        *&a1[v10] = v20;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v10] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_274BD2E04(uint64_t a1)
{

  sub_274B69B9C(0, 0);

  return a1;
}

void sub_274BD2E58()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28098C930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_274AFA6A8(v5, v22 - v9, &unk_28098C930);
  v11 = sub_274BF5214();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_274AFA708(v10, &unk_28098C930);
  }

  else
  {
    sub_274BF5204();
    OUTLINED_FUNCTION_6_9();
    (*(v13 + 8))(v10, v11);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_274BF51C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_274BF4FB4() + 32;
      OUTLINED_FUNCTION_35();
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_274AFA708(v5, &unk_28098C930);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_274AFA708(v5, &unk_28098C930);
  OUTLINED_FUNCTION_35();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BD3120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28098C930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_274AFA6A8(a3, v24 - v10, &unk_28098C930);
  v12 = sub_274BF5214();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_274AFA708(v11, &unk_28098C930);
  }

  else
  {
    sub_274BF5204();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_274BF51C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_274BF4FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8E8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_274AFA708(a3, &unk_28098C930);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_274AFA708(a3, &unk_28098C930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8E8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_274BD3418()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v24 = v7;
  v9 = v8;
  v25 = v10;
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  v34 = MEMORY[0x277CE1410];
  v35 = v1;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_274B174F4();
  swift_getWitnessTable();
  v11 = sub_274BF48A4();
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  v26 = v5;
  v27 = v3;
  v28 = v1;
  v29 = v9;
  v30 = v23;
  v31 = v24;
  sub_274B2CD38();
  sub_274BF4894();
  OUTLINED_FUNCTION_4_13();
  v20 = swift_getWitnessTable();
  sub_274ADB48C(v16, v11, v20);
  v21 = *(v13 + 8);
  v21(v16, v11);
  sub_274ADB48C(v19, v11, v20);
  v21(v19, v11);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BD3638@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a6;
  v79 = a7;
  v68 = a3;
  v69 = a2;
  v71 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v63 - v11;
  v74 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_274BF3A74();
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for ContentItemRepresentationLoader.State();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v63 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860);
  v22 = sub_274BF3A74();
  v76 = *(v22 - 8);
  v77 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  sub_274B698E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
  v25 = sub_274BF5D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 2, v25);
  v27 = MEMORY[0x277CE1410];
  if (EnumTagSinglePayload)
  {
    v28 = v78;
    sub_274ADB9A0();
    v80 = v27;
    v81 = v28;
    swift_getWitnessTable();
    sub_274B174F4();
    sub_274ADB9A0();
    (*(v75 + 8))(v17, v15);
    v29 = v28;
    v30 = v24;
  }

  else
  {
    v64 = v17;
    v65 = v15;
    v31 = a5;
    v32 = v75;
    v66 = v21;
    v67 = v24;
    v33 = MEMORY[0x277CE1410];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v20;
      swift_getErrorValue();
      __dst[0] = sub_274BF5C54();
      __dst[1] = v35;
      sub_274ADDF6C();
      v36 = sub_274BF4104();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = sub_274BF3E44();
      sub_274BF2E54();
      LOBYTE(__dst[0]) = v40 & 1;
      __src[0] = v36;
      __src[1] = v38;
      LOBYTE(__src[2]) = v40 & 1;
      __src[3] = v42;
      LOBYTE(__src[4]) = v43;
      __src[5] = v44;
      __src[6] = v45;
      __src[7] = v46;
      __src[8] = v47;
      LOBYTE(__src[9]) = 0;
      memcpy(v90, __src, sizeof(v90));
      sub_274AFA6A8(__src, __dst, &qword_28098A860);
      sub_274AFA6A8(__src, __dst, &qword_28098A860);
      v88 = v27;
      v29 = v78;
      v89 = v78;
      swift_getWitnessTable();
      sub_274B174F4();
      v30 = v67;
      sub_274B2CC88();

      sub_274AFA708(__src, &qword_28098A860);
      sub_274AFA708(__src, &qword_28098A860);
      memcpy(__dst, v90, 0x49uLL);
      sub_274AFA708(__dst, &qword_28098A860);
    }

    else
    {
      v48 = *(v74 + 32);
      v49 = v72;
      v63 = a4;
      v48(v72, v20, a4);
      v50 = v70;
      v69(v49);
      v51 = v73;
      v52 = v31;
      v53 = v78;
      sub_274ADB48C(v50, v31, v78);
      v71 = *(v71 + 8);
      (v71)(v50, v31);
      sub_274ADB48C(v51, v31, v53);
      v54 = v64;
      sub_274B2CC88();
      v82 = v33;
      v83 = v53;
      v55 = v65;
      swift_getWitnessTable();
      sub_274B174F4();
      v56 = v67;
      sub_274ADB9A0();
      (*(v32 + 8))(v54, v55);
      v57 = v71;
      (v71)(v50, v52);
      v57(v73, v52);
      v30 = v56;
      v27 = MEMORY[0x277CE1410];
      v29 = v53;
      (*(v74 + 8))(v72, v63);
    }
  }

  v86 = v27;
  v87 = v29;
  WitnessTable = swift_getWitnessTable();
  v59 = sub_274B174F4();
  v84 = WitnessTable;
  v85 = v59;
  v60 = v77;
  v61 = swift_getWitnessTable();
  sub_274ADB48C(v30, v60, v61);
  return (*(v76 + 8))(v30, v60);
}

BOOL sub_274BD3D70(uint64_t a1)
{
  OUTLINED_FUNCTION_0_5();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  v7 = *(a1 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 2, v7);
  if (!EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_6_9();
    (*(v9 + 8))(v5, v7);
  }

  return EnumTagSinglePayload == 0;
}

void sub_274BD3E6C()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v51 = v3;
  sub_274BF5214();
  OUTLINED_FUNCTION_0_5();
  v49 = v5;
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_5();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EDD8);
  v40 = v2[3];
  v12 = v40;
  sub_274BF3A74();
  v43 = sub_274BF46B4();
  OUTLINED_FUNCTION_0_5();
  v46 = v13;
  MEMORY[0x28223BE20](v14);
  v41 = &v40 - v15;
  sub_274BF31B4();
  v16 = sub_274BF33D4();
  OUTLINED_FUNCTION_0_5();
  v47 = v17;
  MEMORY[0x28223BE20](v18);
  v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v40 - v21;
  v52 = v2[2];
  v22 = v52;
  v53 = v12;
  v54 = v2[4];
  v23 = v54;
  v55 = v0;
  v59 = sub_274BD66FC();
  v60 = v23;
  OUTLINED_FUNCTION_3_0();
  WitnessTable = swift_getWitnessTable();
  sub_274BF46A4();
  v25 = v44;
  (*(v8 + 16))(v44, v0, v2);
  v26 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 2) = v22;
  *(v27 + 3) = v28;
  *(v27 + 4) = v23;
  (*(v8 + 32))(&v27[v26], v25, v2);
  v58 = WitnessTable;
  OUTLINED_FUNCTION_28_0();
  v29 = v43;
  v30 = swift_getWitnessTable();
  v31 = v48;
  sub_274BF51F4();
  v32 = v42;
  v33 = v41;
  sub_274BF43B4();

  (*(v49 + 8))(v31, v50);
  (*(v46 + 8))(v33, v29);
  OUTLINED_FUNCTION_9_14();
  v36 = sub_274BD7110(v34, v35);
  v56 = v30;
  v57 = v36;
  OUTLINED_FUNCTION_11_10();
  v37 = swift_getWitnessTable();
  v38 = v45;
  sub_274ADB48C(v32, v16, v37);
  v39 = *(v47 + 8);
  v39(v32, v16);
  sub_274ADB48C(v38, v16, v37);
  v39(v38, v16);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BD42D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a5;
  v48 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v45 - v12;
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v14);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EDF0);
  MEMORY[0x28223BE20](v50);
  v17 = &v45 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EE00);
  MEMORY[0x28223BE20](v49);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EDD8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v55 = a4;
  v23 = type metadata accessor for AsyncLoaderProgressView.ContentState();
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  v52 = v20;
  v26 = sub_274BF3A74();
  v53 = *(v26 - 8);
  v54 = v26;
  MEMORY[0x28223BE20](v26);
  v51 = &v45 - v27;
  sub_274BF47B4();
  v28 = a1;
  sub_274BF4784();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 2, a2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      *v19 = 0;
      v19[8] = 1;
      swift_storeEnumTagMultiPayload();
      sub_274AFA930(&qword_28098EDE8, &qword_28098EDF0);
      sub_274BF3A64();
      sub_274BD66FC();
      v30 = v51;
      v31 = v55;
      sub_274ADB9A0();
      v32 = &qword_28098EDD8;
      v33 = v22;
    }

    else
    {
      *v17 = sub_274BF38F4();
      *(v17 + 1) = 0;
      v17[16] = 1;
      v39 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EE08) + 44)];
      v40 = a1;
      v31 = v55;
      sub_274BD494C(v40, v39);
      sub_274AEE7D0(v17, v19);
      swift_storeEnumTagMultiPayload();
      sub_274AFA930(&qword_28098EDE8, &qword_28098EDF0);
      sub_274BF3A64();
      sub_274BD66FC();
      v30 = v51;
      sub_274ADB9A0();
      sub_274AFA708(v22, &qword_28098EDD8);
      v33 = v17;
      v32 = &qword_28098EDF0;
    }

    sub_274AFA708(v33, v32);
  }

  else
  {
    v34 = v47;
    v35 = v45;
    (*(v47 + 32))(v45, v25, a2);
    v31 = v55;
    v36 = type metadata accessor for AsyncLoaderProgressView();
    (*(v28 + *(v36 + 48)))(v35);
    v37 = v46;
    sub_274ADB48C(v10, a3, v31);
    v38 = *(v48 + 8);
    v38(v10, a3);
    sub_274ADB48C(v37, a3, v31);
    sub_274BD66FC();
    v30 = v51;
    sub_274B2CC88();
    v38(v10, a3);
    v38(v37, a3);
    (*(v34 + 8))(v35, a2);
  }

  v42 = v53;
  v41 = v54;
  v57 = sub_274BD66FC();
  v58 = v31;
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v30, v41, WitnessTable);
  return (*(v42 + 8))(v30, v41);
}

uint64_t sub_274BD494C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v49 = sub_274BF3C84();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0F0);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EE10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = (a1 + *(type metadata accessor for AsyncLoaderProgressView() + 44));
  v15 = v14[1];
  if (v15)
  {
    v56 = *v14;
    v57 = v15;
    sub_274ADDF6C();

    v53 = sub_274BF4104();
    v45 = v16;
    v18 = v17;
    v52 = v19;
    KeyPath = swift_getKeyPath();
    v20 = sub_274BF3E44();
    sub_274BF2E54();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    LOBYTE(v56) = v18 & 1;
    LOBYTE(__src[0]) = 0;
    v54 = 0;
    v15 = v18 & 1;
    v44 = 0;
    v43 = v20;
    v42 = 2;
  }

  else
  {
    v53 = 0;
    v45 = 0;
    v52 = 0;
    KeyPath = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
  }

  v41 = v15;
  sub_274BF3054();
  sub_274BF3C74();
  sub_274AFA930(&qword_28098E0E8, &qword_28098E0F0);
  sub_274BD7110(&qword_28098EE18, MEMORY[0x277CDE330]);
  v29 = v47;
  v30 = v49;
  sub_274BF4184();
  (*(v48 + 8))(v4, v30);
  (*(v46 + 8))(v6, v29);
  v31 = *(v8 + 16);
  v31(v10, v13, v7);
  __src[0] = v53;
  v32 = v45;
  __src[1] = v45;
  __src[2] = v15;
  __src[3] = v52;
  v49 = v13;
  __src[4] = KeyPath;
  v33 = v42;
  __src[5] = v42;
  v34 = v44;
  __src[6] = v44;
  v35 = v43;
  __src[7] = v43;
  __src[8] = v22;
  __src[9] = v24;
  __src[10] = v26;
  __src[11] = v28;
  LOBYTE(__src[12]) = 0;
  v36 = v50;
  memcpy(v50, __src, 0x61uLL);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EE20);
  v31(&v36[*(v37 + 48)], v10, v7);
  sub_274AFA6A8(__src, &v56, qword_28098EE28);
  v38 = *(v8 + 8);
  v38(v49, v7);
  v38(v10, v7);
  v56 = v53;
  v57 = v32;
  v58 = v41;
  v59 = v52;
  v60 = KeyPath;
  v61 = v33;
  v62 = v34;
  v63 = v35;
  v64 = v22;
  v65 = v24;
  v66 = v26;
  v67 = v28;
  v68 = 0;
  return sub_274AFA708(&v56, qword_28098EE28);
}

uint64_t sub_274BD4F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[102] = a4;
  v4[101] = a3;
  v4[95] = a2;
  v4[89] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28098C930);
  v4[103] = swift_task_alloc();
  v5 = type metadata accessor for AsyncLoaderProgressView.ContentState();
  v4[104] = v5;
  v4[105] = *(v5 - 8);
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = sub_274BF51E4();
  v4[109] = sub_274BF51D4();
  v7 = sub_274BF51C4();
  v4[110] = v7;
  v4[111] = v6;

  return MEMORY[0x2822009F8](sub_274BD5088, v7, v6);
}

uint64_t sub_274BD5088()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  *(v0 + 896) = sub_274BF47B4();
  sub_274BF4784();
  v4 = sub_274BD3D70(v3);
  v5 = *(v2 + 8);
  *(v0 + 904) = v5;
  *(v0 + 912) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (v4)
  {

    OUTLINED_FUNCTION_13_14();

    return v6();
  }

  else
  {
    v8 = *(v0 + 824);
    v9 = *(v0 + 760);
    v10 = *(v0 + 712);
    v11 = sub_274BF5214();
    v21 = *(v0 + 808);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
    v12 = sub_274BF51D4();
    OUTLINED_FUNCTION_35();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v15 = sub_274BD3120(0, 0, v8, &unk_274C079F8, v13);
    *(v0 + 920) = v15;
    v16 = swift_task_alloc();
    *(v0 + 928) = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v21;
    *(v16 + 40) = v10;
    *(v16 + 48) = v15;
    swift_getFunctionTypeMetadata0();
    swift_asyncLet_begin();
    v17 = swift_task_alloc();
    *(v0 + 936) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8E8);
    *v17 = v0;
    v17[1] = sub_274BD5300;
    v19 = MEMORY[0x277D84A98];
    v20 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 992, v15, v18, v19, v20);
  }
}

uint64_t sub_274BD5300()
{
  OUTLINED_FUNCTION_2_25();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v3 = v2;

  v4 = *(v1 + 888);
  v5 = *(v1 + 880);

  return MEMORY[0x2822009F8](sub_274BD5414, v5, v4);
}

uint64_t sub_274BD5414()
{
  OUTLINED_FUNCTION_7();
  if (swift_task_isCancelled())
  {

    return MEMORY[0x282200928](v0 + 16, v0 + 696, sub_274BD5574, v0 + 768);
  }

  else
  {
    v1 = *(v0 + 760);
    v2 = *(v0 + 712);
    v3 = swift_task_alloc();
    v4 = *(v0 + 808);
    *(v3 + 16) = v1;
    *(v3 + 24) = v4;
    *(v3 + 40) = v2;
    sub_274BF4AD4();
    sub_274BF31E4();

    v5 = swift_task_alloc();
    *(v0 + 960) = v5;
    *v5 = v0;
    v5[1] = sub_274BD5828;

    return MEMORY[0x282200480](250000000);
  }
}

uint64_t sub_274BD5574()
{
  OUTLINED_FUNCTION_6_19();
  v0[118] = v0[88];

  OUTLINED_FUNCTION_4_25();
  v1 = swift_task_alloc();
  v0[119] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_20_7(v1);

  return v3(v2);
}

uint64_t sub_274BD563C()
{
  OUTLINED_FUNCTION_6_19();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v3 = v2;

  v4 = *(v1 + 888);
  v5 = *(v1 + 880);

  return MEMORY[0x2822009F8](sub_274BD5774, v5, v4);
}

uint64_t sub_274BD5774()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  __swift_storeEnumTagSinglePayload(v1, 0, 2, v0[95]);
  (*(v3 + 16))(v2, v1, v4);
  sub_274BF4794();
  v5 = OUTLINED_FUNCTION_26_6();
  v6(v5);
  v7 = OUTLINED_FUNCTION_5_22();

  return MEMORY[0x282200920](v7);
}

uint64_t sub_274BD5828()
{
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_11_9();
  v3 = v2;
  OUTLINED_FUNCTION_19_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_30();
  *v6 = v5;

  if (v0)
  {
  }

  *(v3 + 968) = 0;

  return MEMORY[0x282200928](v3 + 16, v3 + 696, sub_274BD592C, v3 + 656);
}

uint64_t sub_274BD592C()
{
  OUTLINED_FUNCTION_6_19();
  v0[122] = v0[88];

  OUTLINED_FUNCTION_4_25();
  v1 = swift_task_alloc();
  v0[123] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_20_7(v1);

  return v3(v2);
}

uint64_t sub_274BD59F4()
{
  OUTLINED_FUNCTION_6_19();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v3 = v2;

  v4 = *(v1 + 888);
  v5 = *(v1 + 880);

  return MEMORY[0x2822009F8](sub_274BD5B2C, v5, v4);
}

uint64_t sub_274BD5B2C()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 760);
  v3 = *(v0 + 712);
  v9 = *(v0 + 808);
  __swift_storeEnumTagSinglePayload(v1, 0, 2, v2);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  sub_274BF4AD4();
  sub_274BF31E4();

  v5 = OUTLINED_FUNCTION_26_6();
  v6(v5);
  v7 = OUTLINED_FUNCTION_5_22();

  return MEMORY[0x282200920](v7);
}

uint64_t sub_274BD5C38()
{
  OUTLINED_FUNCTION_2_25();

  OUTLINED_FUNCTION_13_14();

  return v0();
}

uint64_t sub_274BD5CC8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_274BF51E4();
  v1[4] = sub_274BF51D4();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_274BD5D7C;

  return MEMORY[0x282200480](50000000);
}

uint64_t sub_274BD5D7C()
{
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_19_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    v4 = sub_274BF51C4();
    v6 = v5;
    v7 = sub_274BD72A0;
  }

  else
  {
    v4 = sub_274BF51C4();
    v6 = v8;
    v7 = sub_274BD5EF4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_274BD5EF4()
{
  OUTLINED_FUNCTION_2_25();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1 != 0;
  OUTLINED_FUNCTION_13_14();

  return v3();
}

uint64_t sub_274BD5F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for AsyncLoaderProgressView();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274BD603C, 0, 0);
}

uint64_t sub_274BD603C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v13 = *(v0 + 40);
  (*(v4 + 16))(v1, *(v0 + 24), v3);
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v13;
  *(v10 + 32) = v5;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v6;
  *v7 = &unk_274C07A20;
  v7[1] = v10;

  OUTLINED_FUNCTION_13_14();

  return v11();
}

uint64_t sub_274BD616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_274BD6194, 0, 0);
}

uint64_t sub_274BD6194()
{
  OUTLINED_FUNCTION_2_25();
  *(v0 + 80) = *(type metadata accessor for AsyncLoaderProgressView() + 52);
  sub_274BF51E4();
  *(v0 + 64) = sub_274BF51D4();
  v2 = sub_274BF51C4();

  return MEMORY[0x2822009F8](sub_274BD623C, v2, v1);
}

uint64_t sub_274BD623C()
{
  OUTLINED_FUNCTION_6_19();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  v6 = (*(v2 + v1) + **(v2 + v1));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_274BD6340;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t sub_274BD6340()
{
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_11_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_274BD642C, 0, 0);
}

uint64_t sub_274BD642C()
{
  OUTLINED_FUNCTION_2_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8E8);
  sub_274BF5224();
  OUTLINED_FUNCTION_13_14();

  return v0();
}

uint64_t sub_274BD64B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AsyncLoaderProgressView.ContentState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_storeEnumTagSinglePayload(v11 - v8, 2, 2, a2);
  (*(v4 + 16))(v6, v9, v3);
  sub_274BF47B4();
  sub_274BF4794();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_274BD65F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AsyncLoaderProgressView.ContentState();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - v5, a2, v3, v4);
  sub_274BF47B4();
  return sub_274BF4794();
}

unint64_t sub_274BD66FC()
{
  result = qword_28098EDE0;
  if (!qword_28098EDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EDD8);
    sub_274AFA930(&qword_28098EDE8, &qword_28098EDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EDE0);
  }

  return result;
}

uint64_t sub_274BD67B4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for AsyncLoaderProgressView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_31(v6);
  *v7 = v8;
  v7[1] = sub_274BD68A4;

  return sub_274BD4F1C(v0 + v5, v1, v2, v3);
}

uint64_t sub_274BD68A4()
{
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_11_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v2 = v1;

  OUTLINED_FUNCTION_13_14();

  return v3();
}

uint64_t sub_274BD6984()
{
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_22_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_31(v1);
  *v2 = v3;
  v2[1] = sub_274BD72A4;

  return sub_274BD5CC8(v0);
}

uint64_t sub_274BD6A20()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_31(v8);
  *v9 = v10;
  v9[1] = sub_274BD68A4;

  return sub_274BD5F60(v2, v6, v7, v3, v4, v5);
}

uint64_t sub_274BD6B20(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for AsyncLoaderProgressView() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_31(v9);
  *v10 = v11;
  v10[1] = sub_274BD72A4;

  return sub_274BD616C(a1, v1 + v7, v8, v4, v3, v5);
}

uint64_t sub_274BD6C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_274BD6D4C;

  return v6(a1);
}

uint64_t sub_274BD6D4C()
{
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_11_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v2 = v1;

  OUTLINED_FUNCTION_13_14();

  return v3();
}

uint64_t sub_274BD6E30@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BF3724();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274BD6E94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_274BD6F88;

  return v5(v2 + 32);
}

uint64_t sub_274BD6F88()
{
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_11_9();
  v2 = v1;
  OUTLINED_FUNCTION_19_8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_1_30();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_13_14();

  return v8();
}

uint64_t sub_274BD7080()
{
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_22_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_31(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_33(v1);

  return v4(v3);
}

uint64_t sub_274BD7110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274BD7158()
{
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_22_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_31(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_33(v1);

  return v4(v3);
}

uint64_t sub_274BD71E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BD7300(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E61747369737361;
  }

  else
  {
    v3 = 1919251317;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (a2)
  {
    v5 = 0x6E61747369737361;
  }

  else
  {
    v5 = 1919251317;
  }

  if (a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_32();
  }

  return v8 & 1;
}

uint64_t sub_274BD7390(unsigned __int8 a1, char a2)
{
  v2 = 0x737961776C41;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737961776C41;
  switch(v4)
  {
    case 1:
      v5 = 0x656D6974656D6F53;
      v3 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0x796C65726152;
      break;
    case 3:
      v5 = 0x656C62616E55;
      break;
    case 4:
      v5 = 0x74276E6469442049;
      v3 = 0xEC00000079725420;
      break;
    case 5:
      v5 = 0x6C70704120746F4ELL;
      v3 = 0xEE00656C62616369;
      break;
    case 6:
      v5 = 0;
      v3 = 0xE000000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x656D6974656D6F53;
      v6 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0x796C65726152;
      break;
    case 3:
      v2 = 0x656C62616E55;
      break;
    case 4:
      v2 = 0x74276E6469442049;
      v6 = 0xEC00000079725420;
      break;
    case 5:
      v2 = 0x6C70704120746F4ELL;
      v6 = 0xEE00656C62616369;
      break;
    case 6:
      v2 = 0;
      v6 = 0xE000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_32();
  }

  return v8 & 1;
}

uint64_t sub_274BD7554(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F6870;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656E6F6870;
  switch(v4)
  {
    case 1:
      v5 = 0x61772C656E6F6870;
      v3 = 0xEB00000000686374;
      break;
    case 2:
      v3 = 0xE100000000000000;
      v5 = 48;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 12589;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = "able";
      goto LABEL_7;
    case 5:
      v5 = 0xD000000000000010;
      v6 = "sysdiagnose-only";
LABEL_7:
      v3 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x61772C656E6F6870;
      v7 = 0xEB00000000686374;
      break;
    case 2:
      v7 = 0xE100000000000000;
      v2 = 48;
      break;
    case 3:
      v7 = 0xE200000000000000;
      v2 = 12589;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v8 = "able";
      goto LABEL_14;
    case 5:
      v2 = 0xD000000000000010;
      v8 = "sysdiagnose-only";
LABEL_14:
      v7 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_32();
  }

  return v10 & 1;
}

uint64_t sub_274BD76C8(unsigned __int8 a1, char a2)
{
  v2 = 0x7974697275636553;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7974697275636553;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000014;
      v3 = 0x8000000274C095D0;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7265776F50;
      break;
    case 3:
      v5 = 0x616D726F66726550;
      v6 = 6644590;
      goto LABEL_12;
    case 4:
      v5 = 0x69626173552F4955;
      v3 = 0xEC0000007974696CLL;
      break;
    case 5:
      v5 = 0x2073756F69726553;
      v6 = 6780226;
      goto LABEL_12;
    case 6:
      v5 = 0x754220726568744FLL;
      v3 = 0xE900000000000067;
      break;
    case 7:
      v5 = 0x2065727574616546;
      v3 = 0xED00002977654E28;
      break;
    case 8:
      v5 = 0x6D65636E61686E45;
      v6 = 7630437;
LABEL_12:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v3 = 0xE400000000000000;
      v5 = 1802723668;
      break;
    case 10:
      v5 = 0;
      v3 = 0xE000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000014;
      v7 = 0x8000000274C095D0;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x7265776F50;
      break;
    case 3:
      v2 = 0x616D726F66726550;
      v8 = 6644590;
      goto LABEL_24;
    case 4:
      v2 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
      break;
    case 5:
      v2 = 0x2073756F69726553;
      v8 = 6780226;
      goto LABEL_24;
    case 6:
      v2 = 0x754220726568744FLL;
      v7 = 0xE900000000000067;
      break;
    case 7:
      v2 = 0x2065727574616546;
      v7 = 0xED00002977654E28;
      break;
    case 8:
      v2 = 0x6D65636E61686E45;
      v8 = 7630437;
LABEL_24:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v7 = 0xE400000000000000;
      v2 = 1802723668;
      break;
    case 10:
      v2 = 0;
      v7 = 0xE000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_32();
  }

  return v10 & 1;
}

uint64_t sub_274BD7978()
{
  sub_274BF2194();
  sub_274BDB6E4(&qword_28098EF90, MEMORY[0x277CC9778]);
  sub_274BF5114();
  sub_274BF5114();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_274BF5C24();
  }

  return v1 & 1;
}

BOOL sub_274BD7A58(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

id sub_274BD7B08(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_274BF4F04();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

uint64_t WFNumberContentItem.preview(configuration:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v1 setMaximumSignificantDigits_];
  [v1 setUsesSignificantDigits_];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    v5 = [v3 number];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      sub_274BF4FE4();
      if (qword_2809893B8 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_274BF4FE4();
      if (qword_2809893B8 == -1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_12_9();
        v10 = OUTLINED_FUNCTION_12_9();

        v8 = OUTLINED_FUNCTION_10_10(v11, sel_localizedStringForKey_value_table_);

        sub_274BF4F44();
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_1_10();
    goto LABEL_8;
  }

  v7 = [v0 number];
  v8 = [v1 stringFromNumber_];

  if (!v8)
  {
    goto LABEL_10;
  }

  sub_274BF4F44();
LABEL_9:

LABEL_10:
  v12 = objc_allocWithZone(type metadata accessor for WFPreviewTextViewDelegate());

  [v12 init];
  OUTLINED_FUNCTION_11_14();
  v13 = sub_274BF48B4();

  return v13;
}

unint64_t sub_274BD7E6C()
{
  result = qword_28098EEB0;
  if (!qword_28098EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EEB0);
  }

  return result;
}

uint64_t WFStringContentItem.preview(configuration:)()
{
  sub_274B06430(v0, &selRef_string);
  v1 = objc_allocWithZone(type metadata accessor for WFPreviewTextViewDelegate());

  [v1 init];
  OUTLINED_FUNCTION_11_14();
  return sub_274BF48B4();
}

uint64_t WFRichTextContentItem.preview(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = sub_274BD8240();
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(type metadata accessor for WFPreviewTextViewDelegate());
    v8 = v6;

    *v12 = 0;
    v12[8] = 1;
    v12[16] = v2;
    v12[17] = v3;
    *&v12[24] = v4;
    memset(&v12[32], 0, 32);
    v12[64] = 1;
    *&v12[72] = [v7 init];
    sub_274BD7E6C();
    v9 = sub_274BF48B4();
  }

  else
  {
    if (v2)
    {
      sub_274B0DFBC(34.0, 34.0);
      swift_getKeyPath();
      __src[0] = 0;
      type metadata accessor for ContentItemDataSource();
      sub_274BDB6E4(&qword_28098D070, type metadata accessor for ContentItemDataSource);
      swift_retain_n();
      *&v12[8] = sub_274BF3264();
      *&v12[16] = v10;
      v12[24] = 1;
      v12[25] = v3;
      *&v12[32] = v4;
      *&v12[40] = 0x3FB999999999999ALL;
      v12[48] = 0;
      sub_274B08F64();
    }

    else
    {
      type metadata accessor for PreviewableContentCollection.PreviewableThumbnailItem();
      swift_allocObject();
      sub_274B80A30(v1);
      sub_274BF4A94();
      sub_274BF34A4();
      memcpy(&v13[7], __src, 0x70uLL);
      memcpy(&v12[1], v13, 0x77uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEC8);
      sub_274BDB3BC();
    }

    return sub_274BF48B4();
  }

  return v9;
}

id sub_274BD8240()
{
  result = [v0 preferredObjectType];
  if (result)
  {
    v2 = result;
    sub_274AD8430(0, qword_28098A8F0);
    v3 = [v2 isEqualToClass_];

    if (v3)
    {
      return [v0 attributedString];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL WFRichTextContentItem.shouldPresentActionMenu.getter()
{
  v0 = sub_274BD8240();
  v1 = v0;
  if (v0)
  {
  }

  return v1 == 0;
}

uint64_t WFRichTextContentItem.shouldIgnoreSafeArea(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_274BD8240();
  if (!v2)
  {
    return v1 ^ 1u;
  }

  return 1;
}

uint64_t sub_274BD83EC(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return CGSizeMake([a5 sizeThatFits_]);
  }
}

uint64_t sub_274BD847C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v9[0] = *v0;
  v9[1] = v1;
  v10 = v2;
  v7[0] = v3;
  v7[1] = v4;
  v8 = v5;
  objc_allocWithZone(type metadata accessor for WFMarkdownTextView());
  sub_274BDB728(v9[0], v1, v2);

  return WFMarkdownTextView.init(content:configuration:customTextContainerInset:)(v9, v7, v0 + 40);
}

uint64_t sub_274BD8588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BDB690();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274BD85EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BDB690();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274BD8650()
{
  sub_274BDB690();
  sub_274BF3A24();
  __break(1u);
}

uint64_t WFMarkdownTextView.init(content:configuration:customTextContainerInset:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v189 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v6 - 8);
  v205 = &v185 - v7;
  sub_274BF1C54();
  OUTLINED_FUNCTION_1();
  v203 = v9;
  v204 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v199 = sub_274BF1C64();
  OUTLINED_FUNCTION_1();
  v201 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v17 = (v16 - v15);
  v18 = sub_274BF1C84();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = *(a1 + 8);
  v200 = *a1;
  v202 = v22;
  v23 = *(a1 + 16);
  v24 = *a2;
  v191 = a2[1];
  v190 = *(a2 + 1);
  v25 = OBJC_IVAR____TtC14WorkflowUICore18WFMarkdownTextView_textViewDelegate;
  *&v3[v25] = [objc_allocWithZone(type metadata accessor for WFPreviewTextViewDelegate()) init];
  v26 = *MEMORY[0x277CBF3A0];
  v27 = *(MEMORY[0x277CBF3A0] + 8);
  v28 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *(MEMORY[0x277CBF3A0] + 24);
  v30 = type metadata accessor for WFMarkdownTextView();
  v210.receiver = v3;
  v210.super_class = v30;
  v31 = objc_msgSendSuper2(&v210, sel_initWithFrame_textContainer_, 0, v26, v27, v28, v29);
  v192 = v24;
  if (v24)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31;
    v33 = v31;
    v34 = sub_274B06430(v33, &selRef_text);
    if (v35)
    {
      sub_274BD9C44(v34, v35);
      v37 = v36;

      v193 = v37 ^ 1u;
      goto LABEL_7;
    }
  }

  v193 = 0;
LABEL_7:
  v38 = MEMORY[0x277D76A28];
  v39 = MEMORY[0x277D76918];
  if (!v23)
  {
    v46 = objc_opt_self();
    v47 = v202;

    v194 = v46;
    v48 = [v46 systemShortcutsUserDefaults];
    v49 = sub_274BF4F04();
    v50 = [v48 BOOLForKey_];

    v51 = v200;
    v52 = OUTLINED_FUNCTION_0_34();
    sub_274BDB46C(v52, v53, v54);
    v55 = MEMORY[0x277D74368];
    if (!v50)
    {
      v40 = v32;
      sub_274BDB47C(v51, v47, v32);
      OUTLINED_FUNCTION_5_23();
      if (v59)
      {
        v60 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
        if (!v60)
        {
          __break(1u);
          goto LABEL_125;
        }

        v61 = v60;
        v62 = OUTLINED_FUNCTION_0_34();
        sub_274BDB46C(v62, v63, v64);
      }

      else
      {
        v65 = OUTLINED_FUNCTION_0_34();
        sub_274BDB46C(v65, v66, v67);
        OUTLINED_FUNCTION_3_30();
        v69 = v68 == 0;
        v70 = MEMORY[0x277D76A28];
        if (v69)
        {
          v70 = MEMORY[0x277D76918];
        }

        v71 = *v70;
        v61 = [objc_opt_self() preferredFontForTextStyle_];

        v40 = v32;
      }

      [v40 setFont_];

      goto LABEL_22;
    }

    v56 = MEMORY[0x277D74368];
    sub_274AD8430(0, &unk_28098EEF0);
    v201[13](v17, *MEMORY[0x277CC8BA8], v199);
    v203[13](v12, *MEMORY[0x277CC8B98], v204);

    sub_274BF1C74();
    v57 = sub_274BF1F54();
    __swift_storeEnumTagSinglePayload(v205, 1, 1, v57);
    v58 = 0;
    v204 = sub_274BF5574();
    v101 = [v204 mutableString];
    [v101 length];

    OUTLINED_FUNCTION_5_23();
    v187 = v32;
    if (v102)
    {
      v103 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
      if (v103)
      {
LABEL_50:
        v205 = *MEMORY[0x277D740A8];
        v186 = v103;
        [v204 addAttribute_value_range_];
        v107 = 0x277CCA000uLL;
        v108 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v188 = sub_274BDA754(0xD000000000000014, 0x8000000274C0CB70, 0);
        v109 = &qword_279EF5000;
        v40 = v200;
        v185 = 0;
        if (!v188)
        {
LABEL_111:
          OUTLINED_FUNCTION_6_20();
LABEL_51:
          v110 = [v194 systemShortcutsUserDefaults];
          v111 = sub_274BF4F04();
          v112 = [v110 BOOLForKey_];

          if (!v112)
          {
LABEL_121:
            v183 = v204;
            v184 = v187;
            [v187 setAttributedText_];

            v40 = v184;
            goto LABEL_22;
          }

          v40 = [v204 string];
          if (!v40)
          {
            sub_274BF4F44();
            v40 = sub_274BF4F04();
          }

          v21 = sub_274BF4F44();
          v114 = v113;
          v115 = objc_allocWithZone(*(v107 + 3176));
          v58 = v185;
          v116 = sub_274BDA754(0xD000000000000011, 0x8000000274C0CBB0, 0);
          if (!v58)
          {
            v17 = v116;
            v117 = HIBYTE(v114) & 0xF;
            if ((v114 & 0x2000000000000000) == 0)
            {
              v117 = v21;
            }

            v118 = 7;
            if (((v114 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
            {
              v118 = 11;
            }

            v206 = 15;
            v207 = v118 | (v117 << 16);
            v208 = v21;
            v209 = v114;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C360);
            v107 = sub_274BDB4D4();
            sub_274ADDF6C();
            v119 = sub_274BF5704();
            v121 = [v17 *(v109 + 3536)];

            sub_274AD8430(0, &unk_28098EF10);
            OUTLINED_FUNCTION_46();
            v109 = sub_274BF5144();

            if (!(v109 >> 62))
            {
              v122 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v122)
              {
LABEL_120:

                goto LABEL_121;
              }

              goto LABEL_61;
            }

LABEL_119:
            v122 = sub_274BF5874();
            if (!v122)
            {
              goto LABEL_120;
            }

LABEL_61:
            v123 = v109 & 0xC000000000000001;
            v195 = v109 & 0xFFFFFFFFFFFFFF8;
            v194 = (v109 + 32);
            v200 = v21;
            v201 = v114;
            v198 = v109;
            v199 = v17;
            v197 = v109 & 0xC000000000000001;
            while (1)
            {
              v124 = __OFSUB__(v122--, 1);
              if (v124)
              {
                __break(1u);
                goto LABEL_111;
              }

              if (v123)
              {
                v125 = MEMORY[0x277C65230](v122, v109);
              }

              else
              {
                if ((v122 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

                if (v122 >= *(v195 + 16))
                {
                  goto LABEL_113;
                }

                v125 = *(v194 + v122);
              }

              v107 = v125;
              [v125 rangeAtIndex_];
              sub_274BF5424();
              if ((v126 & 1) == 0)
              {
                break;
              }

LABEL_88:

              if (!v122)
              {
                goto LABEL_120;
              }
            }

            v127 = sub_274BF50D4();
            v128 = MEMORY[0x277C64860](v127);
            v130 = v129;

            v131 = [v107 range];
            v132 = [v204 attributesAtIndex:v131 effectiveRange:0];
            type metadata accessor for Key(0);
            v134 = v133;
            v135 = sub_274BDB6E4(&qword_280989580, type metadata accessor for Key);
            v136 = sub_274BF4DF4();

            if (*(v136 + 16) && (v137 = sub_274BDA9E4(v205), (v138 & 1) != 0) && (sub_274AF5954(*(v136 + 56) + 32 * v137, &v206), sub_274AD8430(0, &qword_28098EF20), (swift_dynamicCast() & 1) != 0))
            {
              v139 = v208;
              [v208 pointSize];
              v141 = v140;
            }

            else
            {
              v141 = 20.0;
            }

            v142 = *(v136 + 16);
            v202 = v135;
            v203 = v134;
            if (v142 && (v143 = sub_274BDA9E4(v205), (v144 & 1) != 0) && (sub_274AF5954(*(v136 + 56) + 32 * v143, &v206), sub_274AD8430(0, &qword_28098EF20), (swift_dynamicCast() & 1) != 0) && (v145 = v208, v146 = [v208 fontDescriptor], v145, LOBYTE(v145) = objc_msgSend(v146, sel_symbolicTraits), v146, (v145 & 2) != 0))
            {
              v147 = 7;
            }

            else
            {
              v147 = 5;
            }

            v148 = [objc_opt_self() configurationWithPointSize:v147 weight:1 scale:v141];
            v206 = v128;
            v207 = v130;
            MEMORY[0x28223BE20](v148);
            *(&v185 - 2) = &v206;
            v149 = sub_274BD7A58(sub_274BA5B04, (&v185 - 4), &unk_2883C6AE0);
            swift_arrayDestroy();
            v150 = v148;
            v151 = sub_274BF4F04();

            v152 = objc_opt_self();
            v153 = &selRef__systemImageNamed_withConfiguration_;
            if (!v149)
            {
              v153 = &selRef_systemImageNamed_withConfiguration_;
            }

            v154 = [v152 *v153];

            if (v154)
            {
              v155 = [v154 imageWithRenderingMode_];
              if (v155)
              {
                v156 = v155;
                v157 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
                [v157 setImage_];
                [v156 size];
                v159 = (v141 - v158) * 0.5 + v141 * -0.15;
                [v156 size];
                v161 = v160;
                [v156 size];
                [v157 setBounds_];
                v163 = [objc_opt_self() attributedStringWithAttachment_];
                v196 = v58;
                v164 = v163;
                v165 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
                v166 = sub_274BF4DE4();

                [v165 addAttributes:v166 range:{0, objc_msgSend(v165, sel_length)}];

                v167 = [v107 rangeAtIndex_];
                [v204 replaceCharactersInRange:v167 withAttributedString:{v168, v165}];

                v58 = v196;
LABEL_87:
                v21 = v200;
                v114 = v201;
                v109 = v198;
                v17 = v199;
                v123 = v197;
                goto LABEL_88;
              }
            }

            else
            {
            }

            goto LABEL_87;
          }

LABEL_126:

          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v109 = [objc_opt_self() boldSystemFontOfSize_];
        v169 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
        [v169 setParagraphSpacingBefore_];
        v201 = v169;
        [v169 setParagraphSpacing_];
        v114 = v204;
        v203 = [v114 string];
        if (v203)
        {
          OUTLINED_FUNCTION_6_20();
          v170 = [v114 string];

          if (!v170)
          {
            sub_274BF4F44();
            v170 = sub_274BF4F04();
          }

          v171 = [v203 length];
          v172 = [v188 matchesInString:v170 options:0 range:{0, v171}];

          sub_274AD8430(0, &unk_28098EF10);
          OUTLINED_FUNCTION_46();
          v173 = sub_274BF5144();

          v198 = v173;
          if (v173 >> 62)
          {
            v107 = sub_274BF5874();
            if (v107)
            {
LABEL_97:
              v202 = v198 & 0xC000000000000001;
              v199 = *MEMORY[0x277D74118];
              v196 = v198 & 0xFFFFFFFFFFFFFF8;
              v195 = v198 + 32;
              v200 = v114;
              v197 = v109;
              while (1)
              {
                v124 = __OFSUB__(v107--, 1);
                if (v124)
                {
                  goto LABEL_114;
                }

                if (v202)
                {
                  v174 = MEMORY[0x277C65230](v107, v198);
                }

                else
                {
                  if ((v107 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_117;
                  }

                  if (v107 >= *(v196 + 16))
                  {
                    goto LABEL_118;
                  }

                  v174 = *(v195 + 8 * v107);
                }

                v175 = v174;
                v176 = [v174 rangeAtIndex_];
                v177 = [v175 rangeAtIndex_];
                v58 = v178;
                v114 = [v203 substringWithRange_];
                v17 = v114;
                v21 = v114;
                if (!v114)
                {
                  sub_274BF4F44();
                  v21 = sub_274BF4F04();

                  sub_274BF4F44();
                  v17 = sub_274BF4F04();
                  v109 = v197;
                }

                v179 = &v58[v177];
                if (__OFADD__(v177, v58))
                {
                  goto LABEL_115;
                }

                v180 = v179 - v176;
                if (__OFSUB__(v179, v176))
                {
                  break;
                }

                v58 = sel_replaceCharactersInRange_withString_;
                v181 = v114;
                v114 = v200;
                [v200 replaceCharactersInRange:v176 withString:{v180, v21}];

                v182 = [v17 length];
                [v114 addAttribute:v205 value:v109 range:{v176, v182}];
                [v114 addAttribute:v199 value:v201 range:{v176, v182}];

                if (!v107)
                {
                  goto LABEL_109;
                }
              }

LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }
          }

          else
          {
            v107 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v107)
            {
              goto LABEL_97;
            }
          }

LABEL_109:

          v109 = 0x279EF5000;
          v107 = 0x277CCA000;
          goto LABEL_51;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      __break(1u);
    }

    OUTLINED_FUNCTION_3_30();
    v69 = v104 == 0;
    v105 = MEMORY[0x277D76A28];
    if (v69)
    {
      v105 = MEMORY[0x277D76918];
    }

    v106 = *v105;
    v103 = [objc_opt_self() preferredFontForTextStyle_];

    goto LABEL_50;
  }

  v40 = v32;
  v41 = v200;
  [v32 setAttributedText_];
  OUTLINED_FUNCTION_3_30();
  if (v42)
  {
    v43 = v38;
  }

  else
  {
    v43 = v39;
  }

  v44 = *v43;
  v45 = [objc_opt_self() preferredFontForTextStyle_];

  [v32 setFont_];
  sub_274BDB46C(v41, v202, 1);
LABEL_22:
  v72 = objc_opt_self();
  v73 = v40;
  v74 = [v72 clearColor];
  [v73 setBackgroundColor_];

  v75 = v73;
  [v75 setEditable_];
  OUTLINED_FUNCTION_5_23();
  if (v76)
  {
    [v75 setTextAlignment_];
  }

  else
  {
    [v75 setTextAlignment_];

    v77 = v75;
  }

  v78 = [v75 textContainer];

  [v78 setLineFragmentPadding_];
  if (*(v189 + 32))
  {

    OUTLINED_FUNCTION_5_23();
    if (v79)
    {
      OUTLINED_FUNCTION_3_30();
      if (v81)
      {
        v82 = 8.0;
LABEL_33:
        if (v192)
        {
          [v75 setTextContainerInset_];
        }

        else
        {
          [v75 setTextContainerInset_];
        }

        v92 = v75;

        goto LABEL_39;
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_30();
      if (v88)
      {
        v82 = 0.0;
        goto LABEL_33;
      }
    }

    [v75 setTextContainerInset_];
    v89 = v75;
  }

  else
  {

    v83 = OUTLINED_FUNCTION_73();
    [v84 v85];
    v86 = v75;

    OUTLINED_FUNCTION_3_30();
    if (v87)
    {
LABEL_39:
      v90 = 0;
      v91 = 36.0;
      goto LABEL_40;
    }
  }

  v90 = 1;
  v91 = 14.0;
LABEL_40:
  [v75 setScrollIndicatorInsets_];

  v93 = [v72 labelColor];
  [v75 setTextColor_];

  v94 = OBJC_IVAR____TtC14WorkflowUICore18WFMarkdownTextView_textViewDelegate;
  [v75 setDelegate_];
  [v75 setTextDragDelegate_];

  if (v192)
  {
    v95 = [v75 textContainer];
    OUTLINED_FUNCTION_5_23();
    [v97 v98];

    v99 = [v75 textContainer];
    [v99 setLineBreakMode_];
  }

  [v75 setScrollEnabled_];
  return v75;
}

uint64_t sub_274BD9C44(uint64_t a1, uint64_t a2)
{
  sub_274BDB7A8(a1, a2);

  return 0;
}

void sub_274BD9CA4()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore18WFMarkdownTextView_textViewDelegate;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for WFPreviewTextViewDelegate()) init];
  sub_274BF5AC4();
  __break(1u);
}

id WFMarkdownTextView.__allocating_init(frame:textContainer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OUTLINED_FUNCTION_73();
  v7 = [v5 v6];

  return v7;
}

uint64_t sub_274BD9E94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EF98);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - v5;
  v6 = sub_274BF5434();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF1F54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_274BF5444();
  if ((*(v7 + 88))(v9, v6) != *MEMORY[0x277D74E28])
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v17 = *(v11 + 32);
  v17(v16, v9, v10);
  v18 = [a3 children];
  sub_274AD8430(0, &unk_28098EFA0);
  v19 = sub_274BF5144();

  v36 = v19;
  if (!sub_274B22B94(v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!sub_274B22B94(v19))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v17;
  v34 = v11;
  sub_274B17EC8(0, (v19 & 0xC000000000000001) == 0);
  if ((v19 & 0xC000000000000001) == 0)
  {
    v20 = *(v19 + 32);
    goto LABEL_6;
  }

LABEL_16:
  v20 = MEMORY[0x277C65230](0, v19);
LABEL_6:
  v21 = v20;
  result = sub_274B22B94(v19);
  if (result)
  {
    result = sub_274B19804(v19);
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v23 = sub_274B22B94(v19);
      v24 = __OFSUB__(v23, 1);
      result = v23 - 1;
      if (!v24)
      {
        sub_274BDAB20(result);
        sub_274BDB1BC(0, 1, 0);
        v25 = v36;

        sub_274AD8430(0, &qword_28098A260);
        sub_274AD8430(0, &unk_28098EFB0);
        sub_274B09D00();
        v26 = v34 + 16;
        (*(v34 + 16))(v13, v16, v10);
        v27 = (*(v26 + 64) + 16) & ~*(v26 + 64);
        v28 = swift_allocObject();
        v33(v28 + v27, v13, v10);
        v29 = sub_274BF5644();
        sub_274BDB2B4(0, v25);
        result = sub_274B19804(v25);
        if ((result & 0x8000000000000000) == 0)
        {
          v30 = sub_274B22B94(v25);
          v24 = __OFADD__(v30, 1);
          result = v30 + 1;
          if (!v24)
          {
            sub_274BDAB20(result);
            sub_274BDB07C(0, 0, 1, v29);
            sub_274AD8430(0, &qword_28098C4C8);
            sub_274BF1E94();
            sub_274BF55F4();
            sub_274AD8430(0, &qword_28098EFC0);
            v31 = sub_274BF55C4();
            __swift_storeEnumTagSinglePayload(v35, 1, 1, v31);
            v32 = sub_274BF55D4();
            (*(v34 + 8))(v16, v10);
            return v32;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_274BDA3E4()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = sub_274BF1F54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = objc_opt_self();
  sub_274BF1E94();
  v8 = sub_274BF4F04();

  v17[0] = 0;
  v9 = [v7 forceStringToURL:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    sub_274BF1F04();
    v11 = v10;

    (*(v1 + 32))(v6, v3, v0);
    v12 = [objc_opt_self() sharedContext];
    v13 = sub_274BF1ED4();
    [v12 openURL_];

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    v14 = v17[0];
    v15 = sub_274BF1E74();

    swift_willThrow();
  }
}

id sub_274BDA698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPreviewTextViewDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_274BDA710(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_274BDA754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_274BF4F04();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_274BF1E74();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_274BDA830(uint64_t a1, uint64_t a2)
{
  sub_274BF5CD4();
  sub_274BF4FF4();
  v4 = sub_274BF5D44();

  return sub_274BDABC0(a1, a2, v4);
}

unint64_t sub_274BDA8A8()
{
  sub_274BF5614();
  v0 = OUTLINED_FUNCTION_46();

  return sub_274BDAC74(v0, v1);
}

unint64_t sub_274BDA8E8(uint64_t a1)
{
  v2 = sub_274BF5CC4();

  return sub_274BDAD4C(a1, v2);
}

unint64_t sub_274BDA92C(double a1)
{
  v2 = sub_274BF5CC4();

  return sub_274BDADAC(v2, a1);
}

unint64_t sub_274BDA978(unsigned __int16 a1)
{
  sub_274BF5CD4();
  sub_274BF5D04();
  v2 = sub_274BF5D44();

  return sub_274BDAE08(a1, v2);
}

unint64_t sub_274BDA9E4(uint64_t a1)
{
  sub_274BF4F44();
  sub_274BF5CD4();
  sub_274BF4FF4();
  v2 = sub_274BF5D44();

  return sub_274BDAE68(a1, v2);
}

uint64_t sub_274BDAAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_274BDAB20(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_274BF5874();
LABEL_9:
  result = sub_274BF59A4();
  *v1 = result;
  return result;
}

unint64_t sub_274BDABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_274BF5C24() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_274BDAC74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_274AD8430(0, &unk_2815A2F10);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_274BF5624();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_274BDAD4C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_274BDADAC(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_274BDAE08(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_274BDAE68(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_274BF4F44();
    v7 = v6;
    if (v5 == sub_274BF4F44() && v7 == v8)
    {

      return i;
    }

    v10 = sub_274BF5C24();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_274BDAF60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_274AEF52C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

void sub_274BDB07C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_274AD8430(0, &unk_28098EFA0);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_274BF5874();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_274B68AA0((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_274BF5874();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_274BDB1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_274AD8430(0, &unk_28098EFA0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_274BF5874();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_274B68AA0(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_274BF5874();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_274BDB2B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_274BF5874();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_274BDB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_274BF5C24() & 1;
  }
}

_BYTE *sub_274BDB350@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unint64_t sub_274BDB3BC()
{
  result = qword_28098EED0;
  if (!qword_28098EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EEC8);
    sub_274AFC448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EED0);
  }

  return result;
}

void sub_274BDB46C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_274BDB47C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_274BF4F04();
  [a3 setText_];
}

unint64_t sub_274BDB4D4()
{
  result = qword_28098EF00;
  if (!qword_28098EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EF00);
  }

  return result;
}

uint64_t dispatch thunk of WFMarkdownTextView.__allocating_init(content:configuration:customTextContainerInset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 88);
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, a2, v8);
}

uint64_t sub_274BDB5E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_274BDB628(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_274BDB690()
{
  result = qword_28098EF88;
  if (!qword_28098EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EF88);
  }

  return result;
}

uint64_t sub_274BDB6E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_274BDB728(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_274BDB738()
{
  sub_274BF1F54();

  sub_274BDA3E4();
}

BOOL sub_274BDB7A8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_274BF5974();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void OUTLINED_FUNCTION_6_20()
{
  v3 = *(v1 - 224);

  sub_274BDB46C(v0, v3, 0);
}

uint64_t sub_274BDB8EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_274BDB940@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = sub_274B811D4();
    v20 = 0;
    KeyPath = swift_getKeyPath();
    v12 = 0;
    v13 = v4;
    HIBYTE(v19) = 0;
  }

  else
  {
    sub_274BDBA80(&KeyPath, *(a1 + 16));
    v5 = sub_274BF3E44();
    sub_274BF2E54();
    v20 = 1;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = 256;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EFE8);
  sub_274AFA930(&qword_28098EFF0, &qword_28098EFE0);
  sub_274BDCF54();
  sub_274BF3A64();
  return memcpy(a3, __src, 0x52uLL);
}

uint64_t sub_274BDBC1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274BF38F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F020);
  return sub_274BDBC6C(v1, a1 + *(v3 + 44));
}

uint64_t sub_274BDBC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F028);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v54[-v9];
  sub_274BDBFE0(a1, &v54[-v9]);
  v11 = sub_274BF3E44();
  sub_274BF2E54();
  v12 = &v10[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = [*(*(a1 + 16) + 16) name];
  v18 = sub_274BF4F44();
  v20 = v19;

  v62 = v18;
  v63 = v20;
  sub_274ADDF6C();
  v21 = sub_274BF4104();
  v58 = v22;
  v59 = v21;
  v24 = v23;
  v60 = v25;
  KeyPath = swift_getKeyPath();
  v26 = sub_274BDC6F0();
  v61 = v7;
  if (v27)
  {
    v62 = v26;
    v63 = v27;
    v28 = sub_274BF4104();
    v30 = v29;
    v32 = v31;
    sub_274BF4654();
    v55 = v24;
    v33 = sub_274BF4094();
    v35 = v34;
    v37 = v36;
    v56 = a2;

    sub_274AFA1D0(v28, v30, v32 & 1);

    sub_274BF3FC4();
    v38 = sub_274BF40D4();
    v40 = v39;
    LOBYTE(v30) = v41;
    v43 = v42;
    LOBYTE(v24) = v55;

    v44 = v37 & 1;
    v7 = v61;
    sub_274AFA1D0(v33, v35, v44);
    a2 = v56;

    v45 = v30 & 1;
    sub_274AF396C(v38, v40, v45);
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v45 = 0;
    v43 = 0;
  }

  sub_274AEEC40(v10, v7);
  sub_274AEEC40(v7, a2);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F030);
  v47 = a2 + *(v46 + 48);
  v56 = v10;
  v49 = v58;
  v48 = v59;
  *v47 = v59;
  *(v47 + 8) = v49;
  v50 = v24 & 1;
  *(v47 + 16) = v50;
  v51 = KeyPath;
  *(v47 + 24) = v60;
  *(v47 + 32) = v51;
  *(v47 + 40) = 2;
  *(v47 + 48) = 0;
  v52 = (a2 + *(v46 + 64));
  sub_274AF396C(v48, v49, v50);

  sub_274B7ABEC(v38, v40, v45, v43);
  sub_274B7AD64(v38, v40, v45, v43);
  *v52 = v38;
  v52[1] = v40;
  v52[2] = v45;
  v52[3] = v43;
  sub_274AEECB0(v56);
  sub_274B7AD64(v38, v40, v45, v43);
  sub_274AFA1D0(v48, v49, v50);

  return sub_274AEECB0(v61);
}

uint64_t sub_274BDBFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_274BF46E4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F038);
  MEMORY[0x28223BE20](v42);
  v40 = &v36 - v6;
  v7 = sub_274BF3C84();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EE10);
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = *(a1 + 16);
  v18 = sub_274B334BC();
  if (v19 == 254)
  {
    sub_274BF3054();
    sub_274BF3C74();
    v37 = sub_274AFA930(&qword_28098E0E8, &qword_28098E0F0);
    v20 = sub_274BDD1B8(&qword_28098EE18, MEMORY[0x277CDE330]);
    sub_274BF4184();
    (*(v38 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    v21 = v39;
    (*(v39 + 16))(v40, v16, v14);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F040);
    v45[0] = v10;
    v45[1] = v7;
    v45[2] = v37;
    v45[3] = v20;
    swift_getOpaqueTypeConformance2();
    sub_274BDD200();
    sub_274BF3A64();
    return (*(v21 + 8))(v16, v14);
  }

  v39 = v10;
  v23 = v7;
  v24 = v40;
  sub_274B352C4(v18, v19);
  v25 = sub_274B74FC8();
  if (v25 && (v26 = v25, v27 = [v25 wfType], v26, v27))
  {
    v28 = v23;
    v29 = v39;
  }

  else
  {
    v30 = [*(v17 + 16) preferredFileType];
    v28 = v23;
    v29 = v39;
    if (!v30)
    {
LABEL_10:
      sub_274BDD1B0(v45);
      goto LABEL_11;
    }

    v27 = v30;
  }

  v31 = [v27 documentIcon];

  if (!v31)
  {
    goto LABEL_10;
  }

  sub_274BF5604();
  v33 = v36;
  v32 = v37;
  (*(v36 + 104))(v5, *MEMORY[0x277CE0FE0], v37);
  v41 = sub_274BF4734();

  (*(v33 + 8))(v5, v32);
  sub_274BF4A94();
  sub_274BF34A4();

  v44[118] = 1;
  v29 = v39;
  memcpy(&v44[6], __src, 0x70uLL);
  v43[0] = v41;
  v43[1] = 0;
  LOWORD(v43[2]) = 1;
  memcpy(&v43[2] + 2, v44, 0x76uLL);
  CGSizeMake(v43);
  memcpy(v45, v43, sizeof(v45));
LABEL_11:
  memcpy(v24, v45, 0x88uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F040);
  v34 = sub_274AFA930(&qword_28098E0E8, &qword_28098E0F0);
  v35 = sub_274BDD1B8(&qword_28098EE18, MEMORY[0x277CDE330]);
  v43[0] = v29;
  v43[1] = v28;
  v43[2] = v34;
  v43[3] = v35;
  swift_getOpaqueTypeConformance2();
  sub_274BDD200();
  return sub_274BF3A64();
}

uint64_t sub_274BDC6F0()
{
  v0 = sub_274BDC7B4();
  if (v1)
  {
    v2 = sub_274B74FC8();
    v3 = v2;
    if (!v2)
    {
      return 0;
    }

    v4 = [v2 fileSize];
  }

  else
  {
    v4 = v0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v6 = [v5 stringFromByteCount_];

  v7 = sub_274BF4F44();
  return v7;
}

uint64_t sub_274BDC7B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274BDC82C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274BDC8B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CCF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - v5;
  v7 = OBJC_IVAR____TtCV14WorkflowUICoreP33_80EE03CF3D0FFB9454B18F84CD9337D324FileThumbnailPreviewView14FileSizeLoader__fileSize;
  aBlock = 0;
  LOBYTE(v12) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098CC68);
  sub_274BF2D24();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = a1;
  v15 = sub_274BDD034;
  v16 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_274BDB8EC;
  v14 = &block_descriptor_19;
  v8 = _Block_copy(&aBlock);
  v9 = a1;

  [v9 getPreferredFileSize_];
  _Block_release(v8);

  return v1;
}

uint64_t sub_274BDCA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF4C94();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274BF4CD4();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B0F2B4();
  v10 = sub_274BF5504();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_274BDD054;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274BDD1B8(&qword_280989F88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274AFA930(&qword_280989F98, &qword_280989F90);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t sub_274BDCD84()
{
  v1 = OBJC_IVAR____TtCV14WorkflowUICoreP33_80EE03CF3D0FFB9454B18F84CD9337D324FileThumbnailPreviewView14FileSizeLoader__fileSize;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CCF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FileThumbnailPreviewView.FileSizeLoader()
{
  result = qword_28098EFD0;
  if (!qword_28098EFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274BDCE88()
{
  sub_274B7A8C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_274BDCF54()
{
  result = qword_28098EFF8;
  if (!qword_28098EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EFE8);
    sub_274BDCFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EFF8);
  }

  return result;
}

unint64_t sub_274BDCFE0()
{
  result = qword_28098F000;
  if (!qword_28098F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F000);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274BDD0DC()
{
  result = qword_28098F010;
  if (!qword_28098F010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F018);
    sub_274AFA930(&qword_28098EFF0, &qword_28098EFE0);
    sub_274BDCF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F010);
  }

  return result;
}

uint64_t sub_274BDD1B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274BDD200()
{
  result = qword_28098F048;
  if (!qword_28098F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F040);
    sub_274BDD284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F048);
  }

  return result;
}

unint64_t sub_274BDD284()
{
  result = qword_28098F050;
  if (!qword_28098F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F058);
    sub_274AFA5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F050);
  }

  return result;
}

void SmartPromptPreviewView.init(contentCollection:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
  sub_274BF4774();
  v4 = a1;
  if ([v4 numberOfItems] != 1)
  {

LABEL_8:
    v8 = 0;
    v10 = 64;
    v9 = 2;
    goto LABEL_9;
  }

  v5 = [v4 items];

  sub_274B08760();
  v6 = sub_274BF5144();

  if (!sub_274B22B94(v6))
  {

    goto LABEL_8;
  }

  sub_274B17EC8(0, (v6 & 0xC000000000000001) == 0);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x277C65230](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = 0;
  v10 = 0;
LABEL_9:
  *a2 = v4;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
}