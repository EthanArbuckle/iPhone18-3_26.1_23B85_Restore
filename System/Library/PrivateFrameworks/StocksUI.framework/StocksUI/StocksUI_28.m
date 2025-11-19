uint64_t sub_2207A5C10(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x277D84F90];
  result = sub_22070BDC4(0, v9, 0);
  v35 = a5;
  if (v9)
  {
    v36 = *a5;
    v14 = a4[2];
    v15 = a2;
    while (1)
    {
      v16 = v8 <= v15;
      if (a3 > 0)
      {
        v16 = v8 >= v15;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v36;
      if (__OFADD__(v8, v36))
      {
        goto LABEL_60;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_61;
      }

      if (v8 < 0)
      {
        goto LABEL_62;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_2207A6140();
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * v23 - 64;
          }

          result = memcpy(v20 + 4, a4 + v8 + 32, v19);
          v15 = a2;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_22070BDC4((v21 > 1), v22 + 1, 1);
        v15 = a2;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      if (!--v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a2;
LABEL_34:
    v24 = v17 <= v15;
    if (a3 > 0)
    {
      v24 = v17 >= v15;
    }

    if (v24)
    {
      return v38;
    }

    v25 = *v35;
    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v25;
      if (__OFADD__(v17, v25))
      {
        break;
      }

      v28 = a4[2];
      if (v28 < v27)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_64;
      }

      if (v17 < 0)
      {
        goto LABEL_65;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            sub_2207A6140();
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v30[2] = v29;
            v30[3] = 2 * v34 - 64;
          }

          result = memcpy(v30 + 4, a4 + v17 + 32, v29);
          v15 = a2;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_22070BDC4((v31 > 1), v32 + 1, 1);
        v15 = a2;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v15;
      if (a3 > 0)
      {
        v33 = v26 >= v15;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void sub_2207A5F68()
{
  if (!qword_28127E318)
  {
    sub_2205CF5B4();
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E318);
    }
  }
}

uint64_t sub_2207A5FCC(uint64_t a1, uint64_t a2)
{
  sub_2207A60D0(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207A6060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2207A60D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2207A60D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2207A6140()
{
  if (!qword_28127DF60)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DF60);
    }
  }
}

uint64_t sub_2207A61FC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = sub_22088ABEC();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A5F68();
  result = sub_2208926BC();
  v7 = 0;
  v45 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v49 = *MEMORY[0x277D6D320];
  v40 = (v3 + 8);
  v41 = (v3 + 104);
  v39 = result + 64;
  v42 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = v44;
      v20 = *(v45 + 56);
      v50 = *(*(v45 + 48) + v18);
      v21 = v20 + 48 * v18;
      v22 = *(v21 + 32);
      v48 = *(v21 + 40);
      v23 = v43;
      (*v41)(v43, v49, v44);
      v24 = v22;
      sub_22088ABDC();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      (*v40)(v23, v19);

      *(v39 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v42;
      *(*(v42 + 48) + v18) = v50;
      v33 = (*(result + 56) + 48 * v18);
      *v33 = v26;
      v33[1] = v28;
      v33[2] = v30;
      v33[3] = v32;
      v34 = v48;
      v33[4] = v24;
      v33[5] = v34;
      v35 = *(result + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(result + 16) = v37;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return result;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v47 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207A64F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207A6538(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2207A65A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_220885DFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = type metadata accessor for SortWatchlistCommandContext(0);
  if ((*(a4 + *(v12 + 24)) & 1) != 0 || (sub_220886A3C(), v13 = sub_220885D7C(), result = (*(v7 + 8))(v10, v6), (v13 & 1) == 0))
  {
    sub_2207A6718(a4 + *(v12 + 20));
    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    sub_220885F8C();
  }

  return result;
}

uint64_t sub_2207A66E4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_2207A7408(a1);
  *a2 = result & 1;
  return result;
}

void sub_2207A6718(uint64_t a1)
{
  v2 = sub_220885DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v64 = &v63 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v65 = &v63 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v66 = &v63 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v67 = &v63 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v68 = &v63 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v63 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v63 - v35;
  v37 = sub_220885DFC();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v42, a1, v37, v40);
  v43 = (*(v38 + 88))(v42, v37);
  if (v43 == *MEMORY[0x277D694A8])
  {
    (*(v38 + 96))(v42, v37);
    (*(v3 + 32))(v36, v42, v2);
    (*(v3 + 16))(v32, v36, v2);
    v44 = (*(v3 + 88))(v32, v2);
    v45 = v3;
    if (v44 != *MEMORY[0x277D694D0] && v44 != *MEMORY[0x277D694C8])
    {
      (*(v3 + 8))(v32, v2);
      goto LABEL_15;
    }

LABEL_8:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

LABEL_15:
    (*(v45 + 8))(v36, v2);
    goto LABEL_32;
  }

  if (v43 != *MEMORY[0x277D694B8])
  {
    if (v43 == *MEMORY[0x277D694F0])
    {
      (*(v38 + 96))(v42, v37);
      v50 = v67;
      (*(v3 + 32))(v67, v42, v2);
      (*(v3 + 16))(v18, v50, v2);
      v51 = (*(v3 + 88))(v18, v2);
      if (v51 != *MEMORY[0x277D694D0] && v51 != *MEMORY[0x277D694C8])
      {
        (*(v3 + 8))(v18, v2);
LABEL_31:
        (*(v3 + 8))(v50, v2);
        goto LABEL_32;
      }
    }

    else
    {
      if (v43 == *MEMORY[0x277D694E8])
      {
        (*(v38 + 96))(v42, v37);
        v45 = v3;
        v36 = v66;
        (*(v3 + 32))(v66, v42, v2);
        v54 = v65;
        (*(v3 + 16))(v65, v36, v2);
        v55 = (*(v3 + 88))(v54, v2);
        if (v55 != *MEMORY[0x277D694D0] && v55 != *MEMORY[0x277D694C8])
        {
          (*(v3 + 8))(v54, v2);
          goto LABEL_15;
        }

        goto LABEL_8;
      }

      if (v43 != *MEMORY[0x277D694C0])
      {
        if (v43 == *MEMORY[0x277D694E0])
        {
          type metadata accessor for Localized();
          v58 = swift_getObjCClassFromMetadata();
          v59 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();
        }

        else
        {
          (*(v38 + 8))(v42, v37);
        }

        goto LABEL_32;
      }

      (*(v38 + 96))(v42, v37);
      v50 = v64;
      (*(v3 + 32))(v64, v42, v2);
      v56 = v63;
      (*(v3 + 16))(v63, v50, v2);
      v57 = (*(v3 + 88))(v56, v2);
      if (v57 != *MEMORY[0x277D694D0] && v57 != *MEMORY[0x277D694C8])
      {
        (*(v3 + 8))(v56, v2);
        goto LABEL_31;
      }
    }

    type metadata accessor for Localized();
    v60 = swift_getObjCClassFromMetadata();
    v61 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    goto LABEL_31;
  }

  (*(v38 + 96))(v42, v37);
  v46 = v68;
  (*(v3 + 32))(v68, v42, v2);
  (*(v3 + 16))(v25, v46, v2);
  v47 = (*(v3 + 88))(v25, v2);
  if (v47 == *MEMORY[0x277D694D0] || v47 == *MEMORY[0x277D694C8])
  {
    type metadata accessor for Localized();
    v52 = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    (*(v3 + 8))(v46, v2);
LABEL_32:
    v62 = sub_22089132C();

    MEMORY[0x223D8ADB0](v62);

    return;
  }

  sub_2208928AC();
  __break(1u);
}

uint64_t sub_2207A7408(uint64_t a1)
{
  v3 = sub_220885DBC();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v31 = &v30 - v8;
  v35 = sub_220885DFC();
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886A4C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v22 = sub_220885FCC();
  v36 = a1;
  sub_22059C558(sub_22068BCFC, v22, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2205B7488(v16);
    v23 = 0;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v24 = *(a1 + *(type metadata accessor for SortWatchlistCommandContext(0) + 24));
    sub_220886A3C();
    if (v24 == 1)
    {
      v25 = v31;
      sub_220885DCC();
      (*(v9 + 8))(v12, v35);
      v26 = v32;
      sub_220885DCC();
      sub_2207A7808();
      v27 = v34;
      sub_22089167C();
      sub_22089167C();
      v28 = *(v33 + 8);
      v28(v26, v27);
      v28(v25, v27);
      (*(v18 + 8))(v21, v17);
      v23 = v38 == v37;
    }

    else
    {
      v23 = sub_220885D7C();
      (*(v9 + 8))(v12, v35);
      (*(v18 + 8))(v21, v17);
    }
  }

  return v23 & 1;
}

unint64_t sub_2207A7808()
{
  result = qword_27CF59C20;
  if (!qword_27CF59C20)
  {
    sub_220885DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C20);
  }

  return result;
}

uint64_t type metadata accessor for CreateWatchlistViewLayoutOptions()
{
  result = qword_27CF59C28;
  if (!qword_27CF59C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207A78E4(uint64_t a1, void (*a2)(char *))
{
  sub_2207A7B98(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_2205C44B4();
  v11 = *(v10 + 48);
  sub_2207A7B98(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D850];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF48], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2207A7AB4()
{
  result = qword_2812824C0;
  if (!qword_2812824C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812824C0);
  }

  return result;
}

void sub_2207A7B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_22044456C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_22044456C(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for StockFeedEarningsViewLayoutOptions()
{
  result = qword_2812825B8;
  if (!qword_2812825B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207A7D00()
{
  if (*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) != 1 || UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v1 = OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink;
    v2 = *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink);
    if (v2)
    {
      [v2 invalidate];
      v2 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }

  else
  {
    v3 = OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink;
    if (*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink))
    {
      return;
    }

    v4 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_autoScrollWithDisplayWithDisplayLink_];
    v5 = *(v0 + v3);
    *(v0 + v3) = v4;

    v6 = *(v0 + v3);
    if (!v6)
    {
      return;
    }

    [v6 setPreferredFramesPerSecond_];
    v7 = *(v0 + v3);
    if (!v7)
    {
      return;
    }

    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 currentRunLoop];
    [v9 addToRunLoop:v10 forMode:*MEMORY[0x277CBE738]];

    v2 = v10;
  }
}

double sub_2207A7E64()
{
  v1 = (v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta);
  if ((*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x402E000000000000;
  v1[8] = 0;
  return 15.0;
}

void sub_2207A7E94(void *a1)
{
  v3 = [v1 window];
  if (v3)
  {

    [v1 contentSize];
    if (v4 != 0.0)
    {
      v5 = sub_2207A7E64();
      [a1 duration];
      v7 = fmax(v5 * v6, 0.25);
      v8 = [v1 effectiveUserInterfaceLayoutDirection];
      [v1 contentOffset];
      v10 = v9;
      [v1 contentOffset];
      v11 = -v7;
      if (v8 != 1)
      {
        v11 = v7;
      }

      v12 = v10 + v11;

      [v1 setContentOffset_];
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = 0;

    sub_2207A7D00();
  }
}

id sub_2207A8138()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D764C0] object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x277D765F0] object:0];

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_2207A8248()
{
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = 0;
  v1 = v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_minimumScrollDelta) = 0x3FD0000000000000;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_preferredFrameRate) = 60;
  v2 = v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_tickerCollectionModel;
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 isRunningPerformanceTest];

  *v2 = 0x4008000000000000;
  *(v2 + 8) = 4;
  *(v2 + 16) = v4;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2207A8350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v7, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_220459914();

        v15 = sub_22089030C();
LABEL_16:
        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_2207AD938(v7, v11, type metadata accessor for StockFeedMastheadModel);
      sub_2207ABEFC(&v11[*(v8 + 20)], a1, sub_22045987C);
      return sub_2207ABE9C(v11, type metadata accessor for StockFeedMastheadModel);
    }

    v15 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2204597F0();
    v18 = *(v17 + 64);
    sub_2207AD938(&v7[*(v17 + 48)], a1, sub_22045987C);
    sub_2207ABE9C(&v7[v18], sub_220455030);
    v19 = sub_22088685C();
    return (*(*(v19 - 8) + 8))(v7, v19);
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_12:
    v14 = type metadata accessor for StockFeedModel;
    goto LABEL_13;
  }

  v14 = type metadata accessor for StockEarningsModel;
LABEL_13:
  sub_2207ABE9C(v7, v14);
LABEL_17:
  v16 = sub_22088676C();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_2207A8648(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22088698C();
    return a2;
  }

  return result;
}

uint64_t sub_2207A86E0()
{
  v1 = v0;
  v2 = sub_2208900AC();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22089030C();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207ABEFC(v1, v19, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2207ABE9C(v19, type metadata accessor for StockFeedMastheadModel);
        return 0x6563697270;
      }

      else
      {
        sub_2207ABE9C(v19, type metadata accessor for StockFeedMastheadModel);
        return 0x646165687473616DLL;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v28 = sub_22088685C();
      (*(*(v28 - 8) + 8))(v19, v28);
      return 0x7472616863;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0();
      v23 = *(v22 + 48);
      sub_2207ABE9C(v19 + *(v22 + 64), sub_220455030);
      sub_2207ABE9C(v19 + v23, sub_22045987C);
      v24 = sub_22088685C();
      (*(*(v24 - 8) + 8))(v19, v24);
      return 0x74654465746F7571;
    }

    else
    {
      sub_2207ABE9C(v19, type metadata accessor for StockEarningsModel);
      return 0x73676E696E726165;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_220459914();

      v29 = v31;
      (*(v31 + 32))(v9, v19, v6);
      v21 = sub_2208902AC();
      (*(v29 + 8))(v9, v6);
      return v21;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v26 = v32;
      (*(v32 + 32))(v5, v19, v2);
      v27 = sub_22089007C();
      (*(v26 + 8))(v5, v2);
      return v27;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_2207ABE9C(v19, type metadata accessor for StockFeedModel);
      return 0x64726163616C70;
    }

    if (EnumCaseMultiPayload == 6)
    {
      (*(v12 + 32))(v15, v19, v11);
      v21 = sub_22088FF4C();
      (*(v12 + 8))(v15, v11);
      return v21;
    }

    v30 = *v19;

    return v30;
  }
}

uint64_t sub_2207A8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220458840(&qword_281293DB0, type metadata accessor for StockFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2207A8CCC@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  sub_220454234(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v87 = &v77 - v3;
  v4 = sub_22088698C();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v77 - v10;
  sub_220508808();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v17 = v16;
  v88 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v82 = &v77 - v26;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v77 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v81 = &v77 - v32;
  v33 = sub_22088685C();
  v83 = *(v33 - 8);
  v84 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v79 = &v77 - v39;
  v40 = sub_22088564C();
  MEMORY[0x28223BE20](v40 - 8, v41);
  v80 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v77 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v77 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v89, v46, type metadata accessor for StockFeedModel);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 5)
  {
    if (result <= 2)
    {
      if (result < 2)
      {
        sub_2207AD938(v46, v50, type metadata accessor for StockFeedMastheadModel);
        (*(v83 + 16))(v79, v50, v84);
        sub_22088563C();
        sub_2207ABEFC(&v50[*(v47 + 20)], v81, sub_22045987C);
        sub_2207ABE9C(v50, type metadata accessor for StockFeedMastheadModel);
        v52 = sub_2208855EC();
        (*(*(v52 - 8) + 56))(v82, 1, 1, v52);
        v53 = sub_220885D0C();
        v54 = v90;
        v90[3] = v53;
        v54[4] = sub_220458840(&qword_2812992F0, MEMORY[0x277D69440]);
        __swift_allocate_boxed_opaque_existential_1(v54);
        return sub_220885CFC();
      }

      result = (*(v83 + 8))(v46, v84);
      goto LABEL_19;
    }

    if (result == 3)
    {
      sub_2204597F0();
      v65 = *(v64 + 48);
      v66 = *(v64 + 64);
      v68 = v83;
      v67 = v84;
      v69 = v79;
      (*(v83 + 32))(v79, v46, v84);
      v70 = v81;
      sub_2207AD938(&v46[v65], v81, sub_22045987C);
      v71 = &v46[v66];
      v72 = v82;
      sub_2207AD938(v71, v82, sub_220455030);
      (*(v68 + 16))(v36, v69, v67);
      sub_22088563C();
      sub_2207ABEFC(v70, v77, sub_22045987C);
      sub_2207ABEFC(v72, v78, sub_220455030);
      v73 = sub_220885D0C();
      v74 = v90;
      v90[3] = v73;
      v74[4] = sub_220458840(&qword_2812992F0, MEMORY[0x277D69440]);
      __swift_allocate_boxed_opaque_existential_1(v74);
      sub_220885CFC();
      sub_2207ABE9C(v72, sub_220455030);
      sub_2207ABE9C(v70, sub_22045987C);
      return (*(v68 + 8))(v69, v67);
    }

    if (result == 4)
    {
      v58 = type metadata accessor for StockEarningsModel;
LABEL_16:
      result = sub_2207ABE9C(v46, v58);
LABEL_19:
      v57 = v90;
LABEL_20:
      v57[4] = 0;
      *v57 = 0u;
      *(v57 + 1) = 0u;
      return result;
    }

LABEL_15:
    v58 = type metadata accessor for StockFeedModel;
    goto LABEL_16;
  }

  v56 = v85;
  v55 = v86;
  if (result > 7)
  {
    v57 = v90;
    if (result == 8)
    {
      sub_220459914();

      v63 = sub_22089030C();
      result = (*(*(v63 - 8) + 8))(v46, v63);
    }

    else if (result == 9)
    {
      result = sub_2207ABE9C(v46, type metadata accessor for StockFeedModel);
    }

    goto LABEL_20;
  }

  if (result != 6)
  {
    goto LABEL_15;
  }

  (*(v88 + 32))(v20, v46, v17);
  sub_22088FF6C();
  v89 = sub_2208868DC();
  v59 = *(v56 + 8);
  v59(v11, v55);
  sub_22088FF6C();
  sub_2208868DC();
  v59(v7, v55);
  swift_getObjectType();
  sub_220891DCC();
  swift_unknownObjectRelease();
  sub_22089031C();
  v60 = sub_22089033C();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v15, 1, v60) == 1)
  {
    (*(v88 + 8))(v20, v17);
    result = sub_2207ABE9C(v15, sub_220508808);
    v62 = v90;
    *v90 = 0u;
    *(v62 + 1) = 0u;
    v62[4] = 0;
  }

  else
  {
    v75 = v90;
    v90[3] = v60;
    v75[4] = sub_220458840(&unk_2812968F0, MEMORY[0x277D33410]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(v61 + 32))(boxed_opaque_existential_1, v15, v60);
    return (*(v88 + 8))(v20, v17);
  }

  return result;
}

uint64_t sub_2207A9748@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_220454720();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v13, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v19 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v19 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0();
      v17 = *(v16 + 48);
      sub_2207ABE9C(&v13[*(v16 + 64)], sub_220455030);
      sub_2207ABE9C(&v13[v17], sub_22045987C);
    }

    v18 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        goto LABEL_12;
      }

LABEL_18:
      v15 = 1;
      goto LABEL_19;
    }

    sub_220459914();

    v18 = sub_22089030C();
LABEL_15:
    (*(*(v18 - 8) + 8))(v13, v18);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_12:
    v19 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v13, v19);
    goto LABEL_18;
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_22088FF6C();
  (*(v6 + 8))(v9, v5);
  v15 = 0;
LABEL_19:
  v20 = sub_22088698C();
  return (*(*(v20 - 8) + 56))(a1, v15, 1, v20);
}

uint64_t sub_2207A9A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220454720();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207ABEFC(v2, v18, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v24 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v24 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v22 = *(v21 + 48);
      sub_2207ABE9C(&v18[*(v21 + 64)], sub_220455030);
      sub_2207ABE9C(&v18[v22], sub_22045987C);
    }

    v23 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    sub_220459914();

    v23 = sub_22089030C();
LABEL_16:
    (*(*(v23 - 8) + 8))(v18, v23);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v24 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v18, v24);
    goto LABEL_19;
  }

  (*(v11 + 32))(v14, v18, v10);
  sub_22088FF8C();
  if (v26[15] == 1)
  {
    sub_22088FF6C();
    Headline.dragItem.getter(a1);
    (*(v5 + 8))(v8, v4);
    return (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 8))(v14, v10);
LABEL_19:
  v25 = sub_22088E4EC();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t sub_2207A9E0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v40 = a1;
  v41 = a3;
  v47 = a2;
  v48 = a3;
  v43 = a4;
  v44 = a5;
  v49 = a4;
  v50 = a5;
  v45 = a6;
  v46 = a7;
  v51 = a6;
  v52 = a7;
  v42 = a8;
  v53 = a8;
  v54 = a9;
  v11 = sub_22088A8AC();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v37 - v13);
  sub_220454720();
  v16 = v15;
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v37 - v22;
  v24 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v9, v27, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v35 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v35 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0();
      v33 = *(v32 + 48);
      sub_2207ABE9C(&v27[*(v32 + 64)], sub_220455030);
      sub_2207ABE9C(&v27[v33], sub_22045987C);
    }

    v34 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      v31 = 0;
      if (EnumCaseMultiPayload != 9)
      {
        return v31;
      }

      goto LABEL_12;
    }

    sub_220459914();

    v34 = sub_22089030C();
LABEL_15:
    (*(*(v34 - 8) + 8))(v27, v34);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_12:
    v35 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v27, v35);
    return 0;
  }

  v29 = v39;
  (*(v39 + 32))(v23, v27, v16);
  sub_22088AB2C();
  (*(v29 + 16))(v19, v23, v16);
  (*(v38 + 16))(v14, v40, v11);
  v30 = sub_220686898(v19, v14, a2, v41, v43, v44, v45, v46, v42, a9);
  (*(v29 + 8))(v23, v16);
  return v30;
}

uint64_t sub_2207AA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v49 = a8;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a6;
  v54 = a7;
  v15 = sub_22088E81C();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v9, v22, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v33 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v33 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v30 = *(v29 + 48);
      sub_2207ABE9C(&v22[*(v29 + 64)], sub_220455030);
      sub_2207ABE9C(&v22[v30], sub_22045987C);
    }

    v31 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      v32 = 0;
      if (EnumCaseMultiPayload != 9)
      {
        return v32;
      }

      goto LABEL_13;
    }

    sub_220459914();

    v31 = sub_22089030C();
LABEL_16:
    (*(*(v31 - 8) + 8))(v22, v31);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v33 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v22, v33);
    return 0;
  }

  v46 = a9;
  sub_220454234(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_220899360;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22089B140;
  v25 = sub_22088B17C();
  v26 = sub_22088B13C();
  if (v26)
  {
    v27 = MEMORY[0x277D6D630];
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
  }

  *(v24 + 32) = v26;
  *(v24 + 56) = v28;
  *(v24 + 64) = v27;
  v45 = v25;
  v35 = sub_22088B12C();
  if (v35)
  {
    v36 = MEMORY[0x277D6D630];
    v37 = v45;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
  }

  *(v24 + 72) = v35;
  *(v24 + 96) = v37;
  *(v24 + 104) = v36;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = v48;
  v55 = a6;
  v56 = a7;
  v57 = v49;
  v58 = v46;
  sub_22088A8AC();
  sub_22088A89C();
  type metadata accessor for StockFeedServiceConfig();
  sub_220458840(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v38 = sub_22088E79C();
  (*(v47 + 8))(v18, v15);
  sub_22088A87C();
  v39 = v45;
  v40 = sub_22088B11C();

  sub_22062782C(v38);
  if (v40)
  {
    v41 = v39;
    v42 = MEMORY[0x277D6D630];
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(v24 + 120) = 0;
    *(v24 + 128) = 0;
  }

  *(v24 + 112) = v40;
  *(v24 + 136) = v41;
  *(v24 + 144) = v42;
  sub_22088AB2C();
  sub_22088B4FC();
  sub_22088B4BC();

  v32 = sub_22088AAEC();
  sub_2207ABE9C(v22, type metadata accessor for StockFeedModel);
  return v32;
}

uint64_t sub_2207AA760()
{
  v1 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v11 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v11 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v9 = sub_22089030C();
    goto LABEL_16;
  }

  v10 = EnumCaseMultiPayload == 9;
  result = 0;
  if (v10)
  {
LABEL_13:
    v11 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v4, v11);
    return 0;
  }

  return result;
}

uint64_t sub_2207AA964()
{
  v1 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0();
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v9 = sub_22089030C();
LABEL_15:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_12:
    v10 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v4, v10);
  }

  return 0;
}

uint64_t sub_2207AAB60()
{
  v1 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v6 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_19;
      }

      sub_2204597F0();
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v6 = type metadata accessor for StockFeedModel;
LABEL_14:
      sub_2207ABE9C(v4, v6);
      return 0;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v9 = sub_22089030C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 9)
  {
    return 0;
  }

LABEL_12:
  v10 = type metadata accessor for StockFeedModel;
LABEL_19:
  sub_2207ABE9C(v4, v10);
  return 1;
}

uint64_t sub_2207AAD98@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v8, v13, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v21 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v21 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0();
      v19 = *(v18 + 48);
      sub_2207ABE9C(&v13[*(v18 + 64)], sub_220455030);
      sub_2207ABE9C(&v13[v19], sub_22045987C);
    }

    v20 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v15 = *a1;
      v16 = a2(0);
      (*(*(v16 - 8) + 104))(a4, v15, v16);
      return sub_2207ABE9C(v13, type metadata accessor for StockFeedModel);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v20 = sub_22089030C();
LABEL_15:
    (*(*(v20 - 8) + 8))(v13, v20);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_12:
    v21 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v13, v21);
  }

LABEL_18:
  v22 = *a3;
  v23 = a2(0);
  return (*(*(v23 - 8) + 104))(a4, v22, v23);
}

uint64_t sub_2207AB070()
{
  v1 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v9 = sub_22089030C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_13:
    v10 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v4, v10);
  }

  return 0;
}

uint64_t sub_2207AB26C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2, a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v6, v5, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_2208900AC();
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 9)
  {
    (*(v9 + 32))(a2, v5, v8);
    return (*(v10 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return sub_2207ABE9C(v5, type metadata accessor for StockFeedModel);
  }
}

uint64_t sub_2207AB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2208900AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207AB458()
{
  v1 = sub_22088698C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v15, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v22 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v22 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v20 = *(v19 + 48);
      sub_2207ABE9C(&v15[*(v19 + 64)], sub_220455030);
      sub_2207ABE9C(&v15[v20], sub_22045987C);
    }

    v21 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        goto LABEL_13;
      }

      return sub_2207A86E0();
    }

    sub_220459914();

    v21 = sub_22089030C();
LABEL_16:
    (*(*(v21 - 8) + 8))(v15, v21);
    return sub_2207A86E0();
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v22 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v15, v22);
    return sub_2207A86E0();
  }

  (*(v8 + 32))(v11, v15, v7);
  sub_22088FF6C();
  v17 = sub_2208868DC();
  (*(v2 + 8))(v5, v1);
  v18 = [v17 title];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_22089136C();
  }

  v36[0] = sub_22088FF4C();
  v36[1] = v24;
  MEMORY[0x223D89680](8236, 0xE200000000000000);
  v25 = sub_2207AD7FC(36);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x223D895D0](v25, v27, v29, v31);
  v34 = v33;

  MEMORY[0x223D89680](v32, v34);

  MEMORY[0x223D89680](3026478, 0xE300000000000000);
  v35 = v36[0];
  (*(v8 + 8))(v11, v7);
  return v35;
}

uint64_t sub_2207AB894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22089030C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v18, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v25 = type metadata accessor for StockFeedMastheadModel;
LABEL_18:
      sub_2207ABE9C(v18, v25);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v25 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0();
      v22 = *(v21 + 48);
      sub_2207ABE9C(&v18[*(v21 + 64)], sub_220455030);
      sub_2207ABE9C(&v18[v22], sub_22045987C);
    }

    v23 = sub_22088685C();
    (*(*(v23 - 8) + 8))(v18, v23);
LABEL_19:
    v20 = MEMORY[0x277D32DD0];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_220459914();

      (*(v5 + 32))(v8, v18, v4);
      sub_2208902AC();
      _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
      _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
      sub_22088F41C();
      (*(v5 + 8))(v8, v4);
      v20 = MEMORY[0x277D32D10];
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v24 = sub_2208900AC();
      (*(*(v24 - 8) + 32))(a1, v18, v24);
      v20 = MEMORY[0x277D32E00];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v25 = type metadata accessor for StockFeedModel;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_2204FF8CC(a1);
    (*(v11 + 8))(v14, v10);
    v20 = MEMORY[0x277D32E10];
  }

  else
  {
    sub_2207ABE9C(v18, type metadata accessor for StockFeedModel);
    sub_2207A86E0();
    sub_22088FEEC();
    v20 = MEMORY[0x277D32DB8];
  }

LABEL_20:
  v26 = *v20;
  v27 = sub_22088FF2C();
  return (*(*(v27 - 8) + 104))(a1, v26, v27);
}

uint64_t sub_2207ABD04()
{
  v1 = v0;
  v2 = sub_2208900AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v1, v10, type metadata accessor for StockFeedModel);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_22089008C();
    (*(v3 + 8))(v6, v2);
    return v11;
  }

  else
  {
    sub_2207ABE9C(v10, type metadata accessor for StockFeedModel);
    return 0;
  }
}

uint64_t sub_2207ABE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207ABEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207ABF64(uint64_t a1, uint64_t a2)
{
  v250 = a1;
  v251 = a2;
  v2 = type metadata accessor for StockEarningsModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v249 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v248 = &v209 - v7;
  v8 = sub_2208900AC();
  v236 = *(v8 - 8);
  v237 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v227 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v226 = &v209 - v13;
  v14 = sub_22089030C();
  v234 = *(v14 - 8);
  v235 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v225 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v224 = &v209 - v19;
  sub_220454720();
  v232 = *(v20 - 8);
  v233 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v223 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v222 = &v209 - v25;
  v215 = sub_2208855EC();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v26);
  v209 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207AD898(0);
  v212 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v213 = &v209 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_22088676C();
  v220 = *(v219 - 8);
  MEMORY[0x28223BE20](v219, v31);
  v211 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220522FA4();
  v217 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v218 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v210 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v221 = &v209 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v228 = &v209 - v44;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v216 = &v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v231 = &v209 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v230 = &v209 - v53;
  v54 = sub_22088685C();
  v242 = *(v54 - 8);
  v243 = v54;
  MEMORY[0x28223BE20](v54, v55);
  v241 = &v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v229 = &v209 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v247 = &v209 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v246 = &v209 - v65;
  v66 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v66 - 8, v67);
  v245 = &v209 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v244 = &v209 - v71;
  v72 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v209 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76, v77);
  v239 = &v209 - v78;
  MEMORY[0x28223BE20](v79, v80);
  v240 = &v209 - v81;
  MEMORY[0x28223BE20](v82, v83);
  v85 = (&v209 - v84);
  MEMORY[0x28223BE20](v86, v87);
  v238 = &v209 - v88;
  MEMORY[0x28223BE20](v89, v90);
  v92 = &v209 - v91;
  MEMORY[0x28223BE20](v93, v94);
  v96 = &v209 - v95;
  MEMORY[0x28223BE20](v97, v98);
  v100 = &v209 - v99;
  MEMORY[0x28223BE20](v101, v102);
  v104 = &v209 - v103;
  sub_2207AD8B8(0);
  MEMORY[0x28223BE20](v105 - 8, v106);
  v108 = &v209 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = &v108[*(v109 + 56)];
  sub_2207ABEFC(v250, v108, type metadata accessor for StockFeedModel);
  v250 = v110;
  sub_2207ABEFC(v251, v110, type metadata accessor for StockFeedModel);
  v251 = v108;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v121 = v75;
    v122 = v92;
    v123 = v246;
    v124 = v247;
    v126 = v244;
    v125 = v245;
    v127 = v248;
    v128 = v249;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2207ABEFC(v251, v100, type metadata accessor for StockFeedModel);
        v178 = v250;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v127 = v126;
          v179 = v125;
          sub_2207AD938(v100, v126, type metadata accessor for StockFeedMastheadModel);
          sub_2207AD938(v178, v125, type metadata accessor for StockFeedMastheadModel);
          v162 = sub_2207557B8(v126, v125);
          v175 = type metadata accessor for StockFeedMastheadModel;
          v176 = type metadata accessor for StockFeedMastheadModel;
          v177 = v179;
          goto LABEL_52;
        }

        v155 = type metadata accessor for StockFeedMastheadModel;
        v156 = v100;
      }

      else
      {
        sub_2207ABEFC(v251, v104, type metadata accessor for StockFeedModel);
        v154 = v250;
        if (!swift_getEnumCaseMultiPayload())
        {
          v127 = v126;
          v184 = v125;
          sub_2207AD938(v104, v126, type metadata accessor for StockFeedMastheadModel);
          sub_2207AD938(v154, v125, type metadata accessor for StockFeedMastheadModel);
          v162 = sub_2207557B8(v126, v125);
          v175 = type metadata accessor for StockFeedMastheadModel;
          v176 = type metadata accessor for StockFeedMastheadModel;
          v177 = v184;
          goto LABEL_52;
        }

        v155 = type metadata accessor for StockFeedMastheadModel;
        v156 = v104;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2207ABEFC(v251, v96, type metadata accessor for StockFeedModel);
        v157 = v250;
        v158 = swift_getEnumCaseMultiPayload();
        v159 = v243;
        if (v158 != 2)
        {
          (*(v242 + 8))(v96, v243);
          goto LABEL_49;
        }

        v160 = v242;
        v161 = *(v242 + 32);
        v161(v123, v96, v243);
        v161(v124, v157, v159);
        v162 = MEMORY[0x223D7E940](v123, v124);
        v163 = *(v160 + 8);
        v163(v124, v159);
        v163(v123, v159);
        v164 = type metadata accessor for StockFeedModel;
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v129 = v122;
        sub_2207ABEFC(v251, v122, type metadata accessor for StockFeedModel);
        sub_2204597F0();
        v131 = *(v130 + 48);
        v132 = *(v130 + 64);
        v133 = v250;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_2207ABE9C(v129 + v132, sub_220455030);
          sub_2207ABE9C(v129 + v131, sub_22045987C);
          (*(v242 + 8))(v129, v243);
          goto LABEL_49;
        }

        v134 = v242;
        v135 = v243;
        v136 = *(v242 + 32);
        v137 = v229;
        v136(v229, v129, v243);
        v136(v241, v133, v135);
        v138 = v230;
        sub_2207AD938(v129 + v131, v230, sub_22045987C);
        v139 = v228;
        sub_2207AD938(v129 + v132, v228, sub_220455030);
        v140 = v133 + v131;
        v141 = v231;
        sub_2207AD938(v140, v231, sub_22045987C);
        v142 = v133 + v132;
        v143 = v137;
        v144 = v241;
        v145 = v221;
        sub_2207AD938(v142, v221, sub_220455030);
        if ((MEMORY[0x223D7E940](v143, v144) & 1) == 0)
        {
          goto LABEL_59;
        }

        v146 = *(v217 + 48);
        v147 = v138;
        v148 = v218;
        sub_2207ABEFC(v147, v218, sub_22045987C);
        sub_2207ABEFC(v141, v148 + v146, sub_22045987C);
        v149 = *(v220 + 48);
        v150 = v219;
        if (v149(v148, 1, v219) == 1)
        {
          v151 = v149(v148 + v146, 1, v150);
          v141 = v231;
          if (v151 == 1)
          {
            sub_2207ABE9C(v148, sub_22045987C);
            v138 = v230;
LABEL_62:
            v193 = *(v212 + 48);
            v194 = v213;
            sub_2207ABEFC(v139, v213, sub_220455030);
            sub_2207ABEFC(v145, v194 + v193, sub_220455030);
            v195 = v214;
            v196 = *(v214 + 48);
            v197 = v215;
            if (v196(v194, 1, v215) == 1)
            {
              sub_2207ABE9C(v145, sub_220455030);
              sub_2207ABE9C(v231, sub_22045987C);
              sub_2207ABE9C(v139, sub_220455030);
              sub_2207ABE9C(v138, sub_22045987C);
              v198 = *(v242 + 8);
              v199 = v243;
              v198(v241, v243);
              v198(v229, v199);
              if (v196(v194 + v193, 1, v197) == 1)
              {
                sub_2207ABE9C(v194, sub_220455030);
                v162 = 1;
                v164 = type metadata accessor for StockFeedModel;
                goto LABEL_50;
              }

              goto LABEL_67;
            }

            v200 = v210;
            sub_2207ABEFC(v194, v210, sub_220455030);
            if (v196(v194 + v193, 1, v197) == 1)
            {
              v201 = v195;
              sub_2207ABE9C(v145, sub_220455030);
              sub_2207ABE9C(v231, sub_22045987C);
              sub_2207ABE9C(v228, sub_220455030);
              sub_2207ABE9C(v230, sub_22045987C);
              v202 = *(v242 + 8);
              v203 = v243;
              v202(v241, v243);
              v202(v229, v203);
              (*(v201 + 8))(v200, v197);
LABEL_67:
              sub_2207ABE9C(v194, sub_2207AD898);
              goto LABEL_60;
            }

            v204 = v145;
            v205 = v209;
            (*(v195 + 32))(v209, v194 + v193, v197);
            sub_220458840(&qword_281299378, MEMORY[0x277D69178]);
            v162 = sub_2208912FC();
            v206 = *(v195 + 8);
            v206(v205, v197);
            v176 = sub_220455030;
            sub_2207ABE9C(v204, sub_220455030);
            sub_2207ABE9C(v231, sub_22045987C);
            sub_2207ABE9C(v228, sub_220455030);
            sub_2207ABE9C(v230, sub_22045987C);
            v207 = *(v242 + 8);
            v208 = v243;
            v207(v241, v243);
            v207(v229, v208);
            v206(v200, v197);
            v185 = v194;
LABEL_53:
            sub_2207ABE9C(v185, v176);
            v164 = type metadata accessor for StockFeedModel;
            goto LABEL_50;
          }
        }

        else
        {
          v186 = v216;
          sub_2207ABEFC(v148, v216, sub_22045987C);
          if (v149(v148 + v146, 1, v150) != 1)
          {
            v189 = v220;
            v190 = v186;
            v191 = v211;
            (*(v220 + 32))(v211, v148 + v146, v150);
            sub_220458840(&qword_2812990C8, MEMORY[0x277D697F8]);
            LODWORD(v250) = sub_2208912FC();
            v192 = *(v189 + 8);
            v192(v191, v150);
            v192(v190, v150);
            sub_2207ABE9C(v148, sub_22045987C);
            v141 = v231;
            v138 = v230;
            v134 = v242;
            if (v250)
            {
              goto LABEL_62;
            }

LABEL_59:
            sub_2207ABE9C(v145, sub_220455030);
            sub_2207ABE9C(v141, sub_22045987C);
            sub_2207ABE9C(v139, sub_220455030);
            sub_2207ABE9C(v138, sub_22045987C);
            v187 = *(v134 + 8);
            v188 = v243;
            v187(v144, v243);
            v187(v143, v188);
LABEL_60:
            v162 = 0;
            v164 = type metadata accessor for StockFeedModel;
            goto LABEL_50;
          }

          (*(v220 + 8))(v186, v150);
          v141 = v231;
        }

        sub_2207ABE9C(v148, sub_220522FA4);
        v138 = v230;
        v134 = v242;
        goto LABEL_59;
      }

      v173 = v121;
      sub_2207ABEFC(v251, v121, type metadata accessor for StockFeedModel);
      v174 = v250;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_2207AD938(v173, v127, type metadata accessor for StockEarningsModel);
        sub_2207AD938(v174, v128, type metadata accessor for StockEarningsModel);
        v162 = sub_22083A8D0(v127, v128);
        v175 = type metadata accessor for StockEarningsModel;
        v176 = type metadata accessor for StockEarningsModel;
        v177 = v128;
LABEL_52:
        sub_2207ABE9C(v177, v175);
        v185 = v127;
        goto LABEL_53;
      }

      v155 = type metadata accessor for StockEarningsModel;
      v156 = v173;
    }

    sub_2207ABE9C(v156, v155);
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v152 = v250;
    if (EnumCaseMultiPayload == 8)
    {
      v169 = v240;
      sub_2207ABEFC(v251, v240, type metadata accessor for StockFeedModel);
      sub_220459914();

      if (swift_getEnumCaseMultiPayload() == 8)
      {

        v115 = v234;
        v170 = *(v234 + 32);
        v117 = v224;
        v171 = v169;
        v114 = v235;
        v170(v224, v171, v235);
        v118 = v225;
        v170(v225, v152, v114);
        v120 = MEMORY[0x223D88470](v117, v118);
        goto LABEL_30;
      }

      (*(v234 + 8))(v169, v235);
    }

    else
    {
      if (EnumCaseMultiPayload == 9)
      {
        v113 = v239;
        sub_2207ABEFC(v251, v239, type metadata accessor for StockFeedModel);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v115 = v236;
          v114 = v237;
          v153 = *(v236 + 32);
          v117 = v226;
          v153(v226, v113, v237);
          v118 = v227;
          v153(v227, v152, v114);
          v120 = sub_22089009C();
          goto LABEL_30;
        }

        v182 = v236;
        v181 = v237;
        goto LABEL_48;
      }

      v180 = swift_getEnumCaseMultiPayload();
      v164 = type metadata accessor for StockFeedModel;
      if (v180 == 10)
      {
        v162 = 1;
        goto LABEL_50;
      }
    }

LABEL_49:
    v162 = 0;
    v164 = sub_2207AD8B8;
    goto LABEL_50;
  }

  v112 = v250;
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v113 = v238;
      sub_2207ABEFC(v251, v238, type metadata accessor for StockFeedModel);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v115 = v232;
        v114 = v233;
        v116 = *(v232 + 32);
        v117 = v222;
        v116(v222, v113, v233);
        v118 = v223;
        v116(v223, v112, v114);
        sub_22088698C();
        v119 = MEMORY[0x277D69858];
        sub_220458840(&unk_281299030, MEMORY[0x277D69858]);
        sub_220458840(&unk_281299040, v119);
        v120 = sub_22088FF5C();
LABEL_30:
        v162 = v120;
        v172 = *(v115 + 8);
        v172(v118, v114);
        v172(v117, v114);
        v164 = type metadata accessor for StockFeedModel;
        goto LABEL_50;
      }

      v182 = v232;
      v181 = v233;
LABEL_48:
      (*(v182 + 8))(v113, v181);
      goto LABEL_49;
    }

    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2207ABE9C(v112, type metadata accessor for StockFeedModel);
      v164 = type metadata accessor for StockFeedModel;
      v162 = 1;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  sub_2207ABEFC(v251, v85, type metadata accessor for StockFeedModel);
  v166 = *v85;
  v165 = v85[1];
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_49;
  }

  v167 = *v112;
  v168 = v112[1];
  if (v166 == v167 && v165 == v168)
  {
    v162 = 1;
  }

  else
  {
    v162 = sub_2208928BC();
  }

  v164 = type metadata accessor for StockFeedModel;
LABEL_50:
  sub_2207ABE9C(v251, v164);
  return v162 & 1;
}

uint64_t sub_2207AD7FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2208914CC();

    return sub_22089159C();
  }

  return result;
}

void sub_2207AD8D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2207AD938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207AD9A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2205715CC();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksAudioTrack();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ADB88(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v13);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464();
LABEL_5:
    v15 = *&v7[*(v14 + 48)];
    v16 = *(v14 + 64);
    sub_2205717B0(v7, v11);
    v17 = sub_22088774C();
    (*(*(v17 - 8) + 8))(&v7[v16], v17);
    sub_2205714D0();
    v19 = v18;
    v20 = *(v18 + 48);
    sub_2205717B0(v11, a1);
    *(a1 + v20) = v15;
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  sub_2205714D0();
  return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
}

uint64_t sub_2207ADB88(uint64_t a1, uint64_t a2)
{
  sub_2205715CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207ADBEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  return v0;
}

uint64_t sub_2207ADC5C()
{
  sub_2207ADBEC();

  return swift_deallocClassInstance();
}

uint64_t sub_2207ADDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_2812979E8, sub_22050605C, MEMORY[0x277D83D88]);
  v5[30] = swift_task_alloc();
  sub_22050605C();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_2204FA2D0();
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();
  sub_22050632C(0, &qword_28127E950, sub_2204FA2D0);
  v5[38] = v9;
  v5[39] = swift_task_alloc();
  sub_2204F1480();
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v11 = MEMORY[0x277D6EC68];
  sub_2204F1130(0, &qword_28127E350, &qword_281296EC0, MEMORY[0x277D6EC68], MEMORY[0x277D843E0]);
  v5[43] = v12;
  v5[44] = swift_task_alloc();
  sub_2204F1130(0, &qword_28127E340, &qword_281296EC0, v11, MEMORY[0x277D843E8]);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v13 = sub_22088C96C();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v14 = sub_22088C32C();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  v15 = sub_22088DA1C();
  v5[53] = v15;
  v5[54] = *(v15 - 8);
  v5[55] = swift_task_alloc();
  v16 = sub_22088FCAC();
  v5[56] = v16;
  v5[57] = *(v16 - 8);
  v5[58] = swift_task_alloc();
  v17 = sub_220886D4C();
  v5[59] = v17;
  v5[60] = *(v17 - 8);
  v5[61] = swift_task_alloc();
  v18 = sub_220886D3C();
  v5[62] = v18;
  v5[63] = *(v18 - 8);
  v5[64] = swift_task_alloc();
  v19 = sub_220886D1C();
  v5[65] = v19;
  v5[66] = *(v19 - 8);
  v5[67] = swift_task_alloc();
  sub_2204F0A94(0, &qword_281296950, MEMORY[0x277D32FE0], v6);
  v5[68] = swift_task_alloc();
  v20 = sub_22088FF3C();
  v5[69] = v20;
  v5[70] = *(v20 - 8);
  v5[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2204EFC84, 0, 0);
}

uint64_t sub_2207AE3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v43 = a2;
  v38 = a1;
  v3 = sub_22088FC9C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FBBC();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088FBDC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_22088FC0C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = sub_22088FC3C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_22088FC5C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_281296A28, MEMORY[0x277D326A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v38 - v21;
  sub_2204F0A94(0, &unk_281296A30, MEMORY[0x277D32698], v18);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v38 - v25;
  v27 = sub_22088FC7C();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v38 + 272))
  {
    sub_22088FC4C();
    v33 = sub_22088FC1C();
    (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
    v34 = sub_22088FC6C();
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
    (*(v28 + 104))(v32, *MEMORY[0x277D326B0], v27);
  }

  else
  {
    (*(v28 + 104))(v32, *MEMORY[0x277D326B0], v27, v30);
    v35 = sub_22088FC1C();
    (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
    v36 = sub_22088FC6C();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
    sub_22088FC4C();
  }

  sub_22088FBFC();
  sub_22088FBFC();
  (*(v39 + 104))(v9, *MEMORY[0x277D32680], v40);
  sub_22088FBCC();
  sub_22088FC8C();

  return sub_22088FBEC();
}

uint64_t sub_2207AE96C()
{
  sub_2204FA2D0();
  sub_2204FA480();
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  sub_22088F5BC();
  return sub_220504D6C(v1);
}

uint64_t sub_2207AE9F8()
{
  v31 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v31, v0);
  v30 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088FD8C();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4();
  v28 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F55C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = MEMORY[0x277D84F90];
    sub_220505460(0, v11, 0);
    v12 = v32;
    v13 = *(v2 + 16);
    v25 = v2 + 16;
    v26 = v13;
    v14 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    v23 = (v2 + 8);
    v24 = v15;
    v22[0] = v10;
    v22[1] = v6 + 32;
    do
    {
      v16 = v26;
      v17 = v27;
      v18 = v29;
      v26(v27, v14, v29);
      v16(v30, v17, v18);
      swift_storeEnumTagMultiPayload();
      sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
      sub_22088BC2C();
      (*v23)(v17, v18);
      v32 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_220505460(v19 > 1, v20 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v20 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v9, v28);
      v14 += v24;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_2207AED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v27 = sub_22088F58C();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D31C50];
  sub_2204F0A94(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_22088F39C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v26 - v20;
  sub_2204FA000(a1, v12, &qword_281296C60, v8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2204C5F44(v12, &qword_281296C60, MEMORY[0x277D31C50]);
    v22 = 1;
    v23 = v29;
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    (*(v14 + 16))(v17, v21, v13);
    (*(v4 + 16))(v7, v28, v27);
    v23 = v29;
    sub_2207AF040(v17, v7, v29);
    (*(v14 + 8))(v21, v13);
    v22 = 0;
  }

  sub_220488B20(0);
  return (*(*(v24 - 8) + 56))(v23, v22, 1, v24);
}

uint64_t sub_2207AF040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header(0);
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer(0);
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration(0);
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088D61C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088F39C();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 16);
  v80 = a1;
  v24(a3, a1);
  v25 = *MEMORY[0x277D6E758];
  v74 = *(v19 + 104);
  v75 = v19 + 104;
  v74(v22, v25, v18);
  v26 = sub_22088F57C();
  v27 = *(v19 + 8);
  v76 = v22;
  v77 = v19 + 8;
  v73 = v27;
  v27(v22, v18);
  v28 = *(v26 + 16);
  v29 = MEMORY[0x277D84F90];
  v83 = a2;
  v84 = a3;
  v82 = v17;
  if (v28)
  {
    v70 = v18;
    v71 = v13;
    v87 = MEMORY[0x277D84F90];
    sub_22070CCAC(0, v28, 0);
    v30 = v87;
    v85 = sub_22088FE7C();
    v31 = *(v85 - 8);
    v32 = *(v31 + 16);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v69 = v26;
    v34 = v26 + v33;
    v35 = *(v31 + 72);
    v36 = v81;
    do
    {
      v32(v9, v34, v85);
      v87 = v30;
      v37 = v9;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22070CCAC(v38 > 1, v39 + 1, 1);
        v36 = v81;
        v30 = v87;
      }

      *(v30 + 16) = v39 + 1;
      sub_2205230D8(v37, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v39, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
      v34 += v35;
      --v28;
      v9 = v37;
    }

    while (v28);

    a2 = v83;
    a3 = v84;
    v17 = v82;
    v18 = v70;
    v13 = v71;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_220488B20(0);
  v41 = v40;
  *(a3 + *(v40 + 28)) = v30;
  v42 = v76;
  v74(v76, *MEMORY[0x277D6E750], v18);
  v43 = sub_22088F57C();
  v73(v42, v18);
  v44 = *(v43 + 16);
  v81 = v41;
  if (v44)
  {
    v87 = v29;
    sub_22070CC5C(0, v44, 0);
    v45 = v87;
    v85 = sub_22088FE7C();
    v46 = *(v85 - 8);
    v47 = *(v46 + 16);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v77 = v43;
    v49 = v43 + v48;
    v50 = *(v46 + 72);
    v51 = v72;
    do
    {
      v47(v13, v49, v85);
      v87 = v45;
      v52 = v13;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22070CC5C(v53 > 1, v54 + 1, 1);
        v51 = v72;
        v45 = v87;
      }

      *(v45 + 16) = v54 + 1;
      sub_2205230D8(v52, v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v54, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v49 += v50;
      --v44;
      v13 = v52;
    }

    while (v44);

    a2 = v83;
    a3 = v84;
    v41 = v81;
    v17 = v82;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 32)) = v45;
  v55 = sub_22088F56C();
  v56 = *(v55 + 16);
  if (v56)
  {
    v87 = v29;
    sub_22070CC0C(0, v56, 0);
    v57 = v87;
    v58 = sub_22088F7AC();
    v59 = *(v58 - 8);
    v60 = *(v59 + 16);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v85 = v55;
    v62 = v55 + v61;
    v63 = *(v59 + 72);
    do
    {
      v60(v17, v62, v58);
      v87 = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_22070CC0C(v64 > 1, v65 + 1, 1);
        v57 = v87;
      }

      *(v57 + 16) = v65 + 1;
      sub_2205230D8(v17, v57 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v65, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
      v62 += v63;
      --v56;
    }

    while (v56);

    v66 = sub_22088F58C();
    (*(*(v66 - 8) + 8))(v83, v66);
    result = (*(v78 + 8))(v80, v79);
    a3 = v84;
    v41 = v81;
  }

  else
  {

    v68 = sub_22088F58C();
    (*(*(v68 - 8) + 8))(a2, v68);
    result = (*(v78 + 8))(v80, v79);
    v57 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 36)) = v57;
  return result;
}

uint64_t sub_2207AF7CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v36[1] = a2;
  v3 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v3, v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C32C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051D97C();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v16 = *v15;
    v17 = v15[1];
    (*(v8 + 16))(v11, a1, v7);
    sub_22088C31C();
    v19 = v18;
    sub_22088C31C();
    sub_22088C20C();
    v21 = v20;
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    sub_220561394();
    v24 = sub_220891F2C();
    v25 = [objc_allocWithZone(MEMORY[0x277D74248]) init];
    sub_22089148C();
    v27 = v26;
    v29 = v28;

    v30 = v21 + (v19 - v21 - v23) * 0.5 - v27 * 0.5;
    v37.origin.x = v30;
    v37.origin.y = 100.0;
    v37.size.width = v27;
    v37.size.height = v29;
    v38.size.height = CGRectGetMaxY(v37);
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = v19;
    v39 = CGRectIntegral(v38);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v39.origin.x = v30;
    v39.origin.y = 100.0;
    v39.size.width = v27;
    v39.size.height = v29;
    v40 = CGRectIntegral(v39);
    *v6 = v16;
    *(v6 + 1) = v17;
    *(v6 + 2) = x;
    *(v6 + 3) = y;
    *(v6 + 4) = width;
    *(v6 + 5) = height;
    *(v6 + 48) = v40;
    swift_storeEnumTagMultiPayload();
    sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel);
    return sub_22088BC2C();
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2207AFB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2204C6018;

  return sub_2207ADDB0(a1, a2, a3, a4);
}

uint64_t sub_2207AFC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2204F1130(0, a2, &qword_281296EC0, MEMORY[0x277D6EC68], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2207AFD4C()
{
  if (!qword_281283710)
  {
    sub_2204F0A94(255, &qword_281283718, sub_220488B20, MEMORY[0x277D83D88]);
    type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281283710);
    }
  }
}

uint64_t sub_2207AFE18@<X0>(BOOL *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  result = sub_22088615C();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_2207AFE70()
{
  sub_22061D1D0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v5 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27[-v8];
  v10 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v10, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v14 = sub_22088969C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = v13;
  sub_2205A0924(v33, &v28, &unk_281298970, &unk_281298980);
  if (*(&v29 + 1))
  {
    sub_220457328(&v28, v30);
    v15 = sub_220597454(v30);
    v17 = v16;
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_2205A0B34(&v28, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v15 = qword_2812908F8;
    v17 = qword_281290900;
    v19 = qword_281290908;

    sub_2204A80F4(v17);
  }

  v29 = 0u;
  v28 = 0u;
  sub_2205A08A4(v9, v5);
  sub_2205A0924(v35, v30, &unk_281296D10, &qword_281296D20);
  v20 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v21 = (v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_2205A0994(v5, v22 + v20);
  v23 = v22 + v21;
  v24 = v30[1];
  *v23 = v30[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v31;
  v25 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v15;
  v25[1] = v17;
  v25[2] = v19;

  sub_2204A80F4(v17);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v17);
  sub_2205A0B34(v33, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v35, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v9, sub_22061D1D0);
  sub_220650F50(v12, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v28, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207B04C0(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22044D56C(0, &qword_27CF57228);
  sub_2205A6E58();
  v14 = sub_2208918EC();
  v15 = a4;
  v16 = a1;
  sub_2207B0590(v14, a4, a5, a6, a7, a8);
}

uint64_t sub_2207B0590(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25[1] = a4;
  v8 = v6;
  ObjectType = swift_getObjectType();
  v11 = sub_22088F11C();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088F14C();
  v15 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D56C(0, &qword_27CF57228);
  sub_2205A6E58();
  v19 = sub_2208918DC();
  v31.receiver = v8;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, *a3, v19, a2);

  sub_22044D56C(0, &qword_28127E7C0);
  v20 = sub_220891D0C();
  v21 = swift_allocObject();
  *(v21 + 16) = v8;
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);
  v23 = v8;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22047F924(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22047F924(&qword_28127EA50, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v18, v14, v22);
  _Block_release(v22);

  (*(v29 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v28);
}

void sub_2207B08D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setAlpha_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v11[4] = a3;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2204C35E8;
  v11[3] = a4;
  v9 = _Block_copy(v11);
  v10 = a1;

  [v7 animateWithDuration:v9 animations:0.25];
  _Block_release(v9);
}

void sub_2207B0C28(uint64_t a1, uint64_t a2, double *a3, char *a4)
{
  v5 = v4;
  v10 = *&a4[OBJC_IVAR____TtC8StocksUI17SectionHeaderView_backgroundView];
  [v10 setFrame_];
  v11 = *&a4[OBJC_IVAR____TtC8StocksUI17SectionHeaderView_titleLabel];
  [v11 setFrame_];
  swift_beginAccess();
  sub_22046DA2C(v4 + 16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = [a4 traitCollection];
  v13 = sub_22064ACF8(a1, a2, v12);

  [v11 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1(v19);
  v14 = [objc_opt_self() clearColor];
  [a4 setBackgroundColor_];

  v15 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v16 = *(*v15 + 80);
  v17 = *(*v15 + 88);
  __swift_project_boxed_opaque_existential_1((*v15 + 56), v16);
  v18 = (*(v17 + 16))(v16, v17);
  [v10 setBackgroundColor_];
}

uint64_t type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier()
{
  result = qword_27CF59C68;
  if (!qword_27CF59C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207B0E5C()
{
  sub_220886A4C();
  if (v0 <= 0x3F)
  {
    sub_2207B1B04(319, &qword_28127EB28, MEMORY[0x277D698E0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2207B0F20(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v59 = a3;
  sub_22046B2A0();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v62 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v71 = v50 - v17;
  v58 = sub_22088B64C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v18);
  v56 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207B1A44(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v55 = v20;
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v53 = v50 - v22;
  sub_22047572C();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v50[1] = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v69 = v26;
  v52 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v51 = v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier();
  v65 = sub_2208869DC();
  v67 = v30;
  v64 = sub_2208869BC();
  v66 = v31;
  v32 = *(v3 + *(updated + 24));

  if ((sub_22088F0DC() & 1) != 0 && *(v32 + 16) <= 1uLL)
  {
    v33 = a2;

    v65 = 0;
    v67 = 0;
    v64 = 0;
    v66 = 0;
    v32 = 0;
  }

  else
  {
    v33 = a2;
  }

  sub_2207B19FC(&qword_281296EE8, sub_2204A1D20);
  v34 = sub_22089197C();
  v60 = v33;
  if (v34)
  {
    v35 = v34;
    v63 = v32;
    v84 = MEMORY[0x277D84F90];
    sub_22070C45C(0, v34 & ~(v34 >> 63), 0);
    v36 = v84;
    result = sub_22089193C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v70 = (v11 + 32);
      v61 = (v11 + 8);
      v68 = a1;
      while (1)
      {
        v38 = sub_2208919BC();
        (*(v11 + 16))(v14);
        v38(&v78, 0);
        sub_22088B2AC();
        if (v83)
        {
          if (v83 != 1)
          {
            (*v70)(v71, v14, v10, v81, v82);
            goto LABEL_14;
          }

          sub_2204BE754(v78, v79, v80, v81, v82, 1u);
          v39 = v65;
          v40 = v67;
          v72 = v65;
          v73 = v67;
          v74 = v64;
          v75 = v66;
          v76 = v63;
          v77 = 1;
        }

        else
        {
          sub_2204BE754(v78, v79, v80, v81, v82, 0);
          v39 = v65;
          v40 = v67;
          v72 = v65;
          v73 = v67;
          v74 = v64;
          v75 = v66;
          v76 = v63;
          v77 = 0;
        }

        sub_2204CF2E4(v39, v40);
        sub_22088B2FC();
        type metadata accessor for StockListModel(0);
        sub_22045B950();
        sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel);
        sub_22088B29C();
        (*v61)(v14, v10);
LABEL_14:
        v84 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_22070C45C(v41 > 1, v42 + 1, 1);
          v36 = v84;
        }

        *(v36 + 16) = v42 + 1;
        (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v42, v71, v10);
        sub_2208919AC();
        if (!--v35)
        {
          sub_2204BE768(v65, v67);
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_2204BE768(v65, v67);
    v36 = MEMORY[0x277D84F90];
LABEL_19:
    v43 = sub_2207B19FC(&qword_281297DC8, sub_22046B19C);
    v44 = sub_2207B19FC(&qword_281297DD0, sub_22046B19C);
    MEMORY[0x223D80A20](v36, v10, v43, v44);
    type metadata accessor for StockListModel(0);
    sub_22045B950();
    sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel);
    v45 = v51;
    sub_22088E7CC();
    v46 = v57;
    v47 = v56;
    v48 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x277D6D868], v58);
    sub_2204CD300();
    v49 = v53;
    sub_22088C67C();
    (*(v46 + 8))(v47, v48);
    v60(v49);
    (*(v54 + 8))(v49, v55);
    return (*(v52 + 8))(v45, v69);
  }

  return result;
}

uint64_t sub_2207B181C()
{
  sub_2207B1B04(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE28], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2207B19FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2207B1A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2207B1B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207B1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088DA5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = MEMORY[0x277D84F90];
  v10 = *MEMORY[0x277D6E9A8];
  v11 = sub_22088DA4C();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(v6 + 104))(v9, *MEMORY[0x277D6E998], v5);
  v14 = a2;
  v15 = a3;
  sub_2205261F0(sub_220526850, v13);
  type metadata accessor for TickerLayoutModel();
  sub_220484CDC();
  sub_2204847CC(&qword_2812910E8, type metadata accessor for TickerLayoutModel);
  return sub_22088C35C();
}

uint64_t sub_2207B1D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_22088C96C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_22088C32C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[10] = v7;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_2207B1EB8, 0, 0);
}

uint64_t sub_2207B1EB8()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v0[9] + 16))(v0[10], v4, v0[8]);
  (*(v3 + 104))(v2, *MEMORY[0x277D6E078], v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  sub_220575288(sub_2207B2040, v6);

  type metadata accessor for TickerLayoutModel();
  sub_220484CDC();
  sub_2204847CC(&qword_2812910E8, type metadata accessor for TickerLayoutModel);
  sub_22088B06C();

  v7 = v0[1];

  return v7();
}

id StockSearchModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StockSearchModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2207B2158()
{
  v1 = OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_group;
  v2 = sub_22088885C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_appConfigurationManager);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static StartupTaskGroup.backgroundFetchRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281298810 != -1)
  {
    swift_once();
  }

  v2 = sub_22088885C();
  v3 = __swift_project_value_buffer(v2, qword_281298818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StockChartHighlightStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

unint64_t sub_2207B2358()
{
  result = qword_27CF59C98;
  if (!qword_27CF59C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C98);
  }

  return result;
}

uint64_t sub_2207B23BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220456CCC();
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207B244C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281290F80);
  result = sub_2208884DC();
  if (!v84)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A880);
  result = sub_2208884DC();
  if (!v81)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A868);
  result = sub_2208884DC();
  if (!v80)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A870);
  result = sub_2208884DC();
  if (!v78)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B48);
  result = sub_2208884DC();
  v3 = v75;
  if (!v75)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v57 = v82;
  v58 = v81;
  v56 = v76;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298738);
  result = sub_2208884DC();
  if (v74[3])
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    v55 = &v50;
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v54 = &v50;
    MEMORY[0x28223BE20](v8, v8);
    v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v53 = &v50;
    MEMORY[0x28223BE20](v12, v12);
    v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v6;
    v17 = *v10;
    v18 = *v14;
    v19 = type metadata accessor for WelcomeStyler();
    v72 = v19;
    v73 = &off_2834167E0;
    v71[0] = v16;
    v20 = type metadata accessor for WelcomeViewAnimator();
    v69 = v20;
    v70 = &off_283420900;
    v68[0] = v17;
    v66 = v20;
    v67 = &off_283420910;
    v65[0] = v18;
    v21 = type metadata accessor for WelcomeViewController();
    v22 = objc_allocWithZone(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v52 = &v50;
    MEMORY[0x28223BE20](v23, v23);
    v25 = (&v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v51 = &v50;
    MEMORY[0x28223BE20](v27, v27);
    v29 = (&v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v50 = &v50;
    MEMORY[0x28223BE20](v31, v31);
    v33 = (&v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v25;
    v36 = *v29;
    v37 = *v33;
    v64[3] = v19;
    v64[4] = &off_2834167E0;
    v64[0] = v35;
    v62 = v20;
    v63 = &off_283420900;
    v61[0] = v36;
    v60[3] = v20;
    v60[4] = &off_283420910;
    v60[0] = v37;
    v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_allowRendering] = 0;
    v38 = OBJC_IVAR____TtC8StocksUI21WelcomeViewController_statusBarView;
    v39 = objc_allocWithZone(sub_22088AEDC());
    *&v22[v38] = [v39 initWithFrame_];
    sub_22046DA2C(v64, &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_styler]);
    v40 = &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler];
    v41 = v57;
    *v40 = v58;
    v40[1] = v41;
    sub_22046DA2C(v61, &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewProvider]);
    sub_22046DA2C(v60, &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator]);
    v42 = &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_toolbarManager];
    v43 = v56;
    *v42 = v3;
    v42[1] = v43;
    sub_22046DA2C(v74, &v22[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager]);
    v59.receiver = v22;
    v59.super_class = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v44 = objc_msgSendSuper2(&v59, sel_initWithNibName_bundle_, 0, 0);
    *(*&v44[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler] + 24) = &off_283425CF0;
    swift_unknownObjectWeakAssign();
    v45 = *(*(*__swift_project_boxed_opaque_existential_1(v61, v62) + 16) + OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton);
    v46 = v44;
    [v45 addTarget:v46 action:sel_didTapContinueButton forControlEvents:64];
    v47 = *(*(*__swift_project_boxed_opaque_existential_1(v61, v62) + 16) + OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v47;
    v49 = sub_22088E13C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v79);
    __swift_destroy_boxed_opaque_existential_1(v83);
    return v46;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2207B2D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for WelcomeRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_220457328(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_28341E8B0;
  *a2 = v4;
  return result;
}

void sub_2207B2E0C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WelcomeViewController();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2207B2E8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128CFF8);
  result = sub_2208884DC();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281290F88);
  result = sub_2208884DC();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281290380);
  result = sub_2208884DC();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7, v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11, v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_2207B3D30(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_2834258E0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2207B3134@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128BFE8);
  result = sub_2208884DC();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_27CF59CA8);
    result = sub_2208884DC();
    if (v6)
    {
      type metadata accessor for WelcomeInteractor();
      v5 = swift_allocObject();
      v5[3] = 0;
      result = swift_unknownObjectWeakInit();
      v5[4] = v8;
      v5[5] = v9;
      v5[6] = v6;
      v5[7] = v7;
      *a2 = v5;
      a2[1] = &off_283424EC8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207B3258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WelcomeDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_283421438;
  return result;
}

uint64_t sub_2207B3298@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WelcomeTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;

    sub_22088726C();

    a2[3] = v5;
    a2[4] = &off_283414D78;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207B33A4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v10 = v20;
  if (v20)
  {
    v11 = a2(0);
    v12 = v21;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v13, v13);
    v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = a3(v15, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207B3538@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281286BB8);
  result = sub_2208884DC();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8, v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for WelcomeViewStylerFactory();
    v21[3] = v13;
    v21[4] = &off_283423238;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16, v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_283423238;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207B3770(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289E70);
  result = sub_2208884DC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A860);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280BE0);
  result = sub_2208884DC();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220888B3C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220456CCC();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v19 + 16))(v18, v16);
    v20 = sub_2207B3F8C(*v8, *v13, *v18, v3, v4);

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2207B3B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220);
    result = sub_2208884DC();
    v5 = v15;
    if (v15)
    {
      v6 = type metadata accessor for WelcomeModelProvider();
      v7 = v16;
      v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      v13 = sub_220466390(&v17, v11, v6, v5, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      a2[3] = v6;
      a2[4] = &off_28341CF70;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2207B3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WelcomeRouter();
  v32[3] = v9;
  v32[4] = &off_28341E8B0;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_283414D78;
  v29[0] = a4;
  type metadata accessor for WelcomeEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15, v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_28341E8B0;
  v25 = &off_283414D78;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_220457328(&v26, (v10 + 6));
  sub_220457328(&v23, (v10 + 11));
  *(a1 + 24) = &off_2834258D8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

uint64_t sub_2207B3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for WelcomeModelProvider();
  v45[3] = v10;
  v45[4] = &off_28341CF70;
  v45[0] = a1;
  v11 = type metadata accessor for WelcomeViewRenderer();
  v43 = v11;
  v44 = &off_283413A98;
  v42[0] = a2;
  v12 = type metadata accessor for WelcomeViewLayoutAttributesFactory();
  v40 = v12;
  v41 = &off_283414AD8;
  v39[0] = a3;
  type metadata accessor for WelcomeViewAnimator();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v45, v10);
  v15 = MEMORY[0x28223BE20](v14, v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, v15);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v20 = MEMORY[0x28223BE20](v19, v19);
  v22 = &v35[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = &v35[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27, v25);
  v29 = *v17;
  v30 = *v22;
  v31 = *v27;
  v38[3] = v10;
  v38[4] = &off_28341CF70;
  v38[0] = v29;
  v37[4] = &off_283413A98;
  v37[3] = v11;
  v37[0] = v30;
  v36[4] = &off_283414AD8;
  v36[3] = v12;
  v36[0] = v31;
  *(v13 + 16) = [objc_allocWithZone(type metadata accessor for WelcomeView()) initWithFrame_];
  v35[7] = 0;
  sub_2207B43B4();
  swift_allocObject();
  *(v13 + 24) = sub_22088866C();
  v32 = MEMORY[0x277D84F90];
  *(v13 + 168) = MEMORY[0x277D84F90];
  *(v13 + 176) = v32;
  *(v13 + 200) = 0u;
  *(v13 + 216) = 0u;
  *(v13 + 232) = 0u;
  *(v13 + 248) = 0u;
  *(v13 + 184) = 0u;
  *(v13 + 257) = 0u;
  *(v13 + 273) = 2;
  sub_22046DA2C(v38, v13 + 32);
  sub_22046DA2C(v37, v13 + 72);
  sub_22046DA2C(v36, v13 + 112);
  *(v13 + 152) = a4;
  *(v13 + 160) = a5;
  swift_allocObject();
  swift_weakInit();

  v33 = a5;

  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v13;
}

void sub_2207B43B4()
{
  if (!qword_27CF59CA0)
  {
    v0 = sub_2208886BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59CA0);
    }
  }
}

uint64_t sub_2207B4414@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v122 = sub_22088665C();
  v138 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v2);
  v114 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v130 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v121 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088516C();
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v10);
  v120 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v119 = &v111 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v118 = &v111 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v117 = &v111 - v20;
  v21 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v131 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v141, v24);
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v28 = v27;
  v125 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C();
  v136 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v37 = v36;
  v132 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v135 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC();
  v41 = v40 - 8;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v46 = v45;
  (*(*(v45 - 8) + 16))(v44, v1, v45);
  v47 = *(v41 + 44);
  v48 = sub_22046F734(&qword_281296EE8, sub_2204A1D20);
  sub_22089193C();
  v139 = v48;
  v140 = v46;
  sub_22089199C();
  v137 = v44;
  if (*&v44[v47] != *&v142)
  {
    v64 = v47;
    v65 = v132++;
    v133 = (v65 + 2);
    v66 = v125 + 16;
    v67 = v125 + 8;
    v116 = v126 + 32;
    v115 = v126 + 8;
    v113 = (v138 + 16);
    v112 = (v138 + 8);
    v126 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v128 = v26;
    v134 = v64;
    v127 = v66;
    while (1)
    {
      v138 = sub_2208919BC();
      v68 = *v133;
      v69 = v135;
      (*v133)(v135);
      (v138)(&v142, 0);
      sub_2208919AC();
      (v68)(v35, v69, v37);
      v70 = *(v136 + 36);
      sub_22046F734(&qword_281297DB8, sub_22046B19C);
      sub_22089193C();
      (*v132)(v69, v37);
      sub_22089199C();
      if (*&v35[v70] != *&v142)
      {
        break;
      }

LABEL_25:
      sub_2204AB5DC(v35, sub_2204BBE2C);
      v49 = v137;
      sub_22089199C();
      if (*(v49 + v134) == *&v142)
      {
        goto LABEL_3;
      }
    }

    v71 = v128;
    v72 = v127;
    while (1)
    {
      v73 = sub_2208919BC();
      (*v72)(v31);
      v73(&v142, 0);
      sub_2208919AC();
      sub_22088AD8C();
      (*v67)(v31, v28);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v77 = v131;
        sub_2204D1A74(v71, v131, type metadata accessor for StockListStockModel);
        v138 = type metadata accessor for StockViewModel();
        v78 = v77 + *(v138 + 20);
        v79 = v121;
        sub_22047939C(v78, v121, sub_22045987C);
        v80 = sub_22088676C();
        v123 = *(v80 - 8);
        v81 = *(v123 + 48);
        v124 = v80;
        if (v81(v79, 1) == 1)
        {
          sub_2204AB5DC(v79, sub_22045987C);
        }

        else
        {
          sub_2208866FC();
          (*(v123 + 8))(v79, v124);
          (*v116)(v117, v118, v129);
          sub_2208850DC();
          v83 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_2204B415C(0, *(v126 + 2) + 1, 1, v126);
          }

          v85 = *(v126 + 2);
          v84 = *(v126 + 3);
          v124 = v85 + 1;
          if (v85 >= v84 >> 1)
          {
            v126 = sub_2204B415C((v84 > 1), v85 + 1, 1, v126);
          }

          (*v115)(v117, v129);
          v86 = v126;
          *(v126 + 2) = v124;
          *&v86[8 * v85 + 32] = fabs(v83);
        }

        v87 = v130;
        sub_22047939C(v131 + *(v138 + 24), v130, sub_2204E99F0);
        v88 = type metadata accessor for StockSparklineViewModel(0);
        v89 = v87;
        v90 = v88;
        if ((*(*(v88 - 8) + 48))(v89, 1, v88) != 1)
        {
          v91 = v130 + *(v90 + 32);
          v92 = v114;
          (*v113)(v114, v91, v122);
          sub_2204AB5DC(v130, type metadata accessor for StockSparklineViewModel);
          sub_2208865AC();
          (*v112)(v92, v122);
          (*v116)(v119, v120, v129);
          sub_2208850DC();
          v94 = v93;
          v95 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_2204B415C(0, *(v95 + 2) + 1, 1, v95);
          }

          v96 = v95;
          v97 = *(v95 + 2);
          v125 = v96;
          v98 = *(v96 + 3);
          v138 = v97 + 1;
          if (v97 >= v98 >> 1)
          {
            v125 = sub_2204B415C((v98 > 1), v97 + 1, 1, v125);
          }

          (*v115)(v119, v129);
          sub_2204AB5DC(v131, type metadata accessor for StockListStockModel);
          v99 = v125;
          *(v125 + 2) = v138;
          *&v99[8 * v97 + 32] = fabs(v94);
          goto LABEL_29;
        }

        sub_2204AB5DC(v131, type metadata accessor for StockListStockModel);
        v75 = sub_2204E99F0;
        v76 = v130;
        goto LABEL_32;
      }

LABEL_29:
      sub_22089199C();
      if (*&v35[v70] == *&v142)
      {
        goto LABEL_25;
      }
    }

    v75 = type metadata accessor for StockListModel;
    v76 = v71;
LABEL_32:
    sub_2204AB5DC(v76, v75);
    goto LABEL_29;
  }

  v125 = MEMORY[0x277D84F90];
  v126 = MEMORY[0x277D84F90];
  v49 = v137;
LABEL_3:
  sub_2204AB5DC(v49, sub_2204B9DAC);
  sub_2204B25BC();
  v50 = v126;
  result = sub_22089173C();
  if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v142 <= -2147483650.0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v142 >= 2147483650.0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v52 = v125;
  result = sub_22089173C();
  if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v142 <= -2147483650.0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v142 >= 2147483650.0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v53 = *(v50 + 2);
  if (!v53)
  {
    v59 = 0.0;
    goto LABEL_48;
  }

  v54 = *(v50 + 4);
  v55 = v53 - 1;
  if (v53 != 1)
  {
    v56 = (v50 + 40);
    do
    {
      v57 = *v56++;
      v58 = v57;
      if (v57 < v54)
      {
        v54 = v58;
      }

      --v55;
    }

    while (v55);
  }

  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_79;
  }

  if (v54 <= -2147483650.0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v54 >= 2147483650.0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v59 = *(v50 + 4);
  v60 = v53 - 1;
  if (v53 != 1)
  {
    v61 = (v50 + 40);
    do
    {
      v62 = *v61++;
      v63 = v62;
      if (v59 < v62)
      {
        v59 = v63;
      }

      --v60;
    }

    while (v60);
  }

LABEL_48:

  if (v53 && (*&v59 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_82;
  }

  if (v59 <= -2147483650.0)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v59 >= 2147483650.0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v100 = *(v52 + 2);
  if (!v100)
  {
    v106 = 0.0;
    goto LABEL_68;
  }

  v101 = *(v52 + 4);
  v102 = v100 - 1;
  if (v100 != 1)
  {
    v103 = (v52 + 40);
    do
    {
      v104 = *v103++;
      v105 = v104;
      if (v104 < v101)
      {
        v101 = v105;
      }

      --v102;
    }

    while (v102);
  }

  if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_85;
  }

  if (v101 <= -2147483650.0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v101 >= 2147483650.0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v106 = *(v52 + 4);
  v107 = v100 - 1;
  if (v100 != 1)
  {
    v108 = (v52 + 40);
    do
    {
      v109 = *v108++;
      v110 = v109;
      if (v106 < v109)
      {
        v106 = v110;
      }

      --v107;
    }

    while (v107);
  }

LABEL_68:

  if (v100 && (*&v106 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_88;
  }

  if (v106 <= -2147483650.0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v106 < 2147483650.0)
  {
    return sub_2208897EC();
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_2207B53E8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  (*(v1 + 48))(v2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_2204AB448();
  sub_22046F734(&qword_281297D28, sub_2204AB448);

  sub_22088B6DC();
}

uint64_t sub_2207B555C(uint64_t a1)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(*result + 232);
    v30 = *(result + v8);
    sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
    sub_2204C5950(&qword_281298030);

    sub_22089193C();
    result = sub_22089199C();
    if (v26 & 1) != 0 || (v29)
    {
      __break(1u);
      return result;
    }

    v9 = v24;
    v10 = v27;
    v11 = v28;
    v12 = v25;

    if (v12 == v11)
    {
      if (v9 == v10)
      {
        sub_2207B5940(a1);
      }

      if (qword_281298078 == -1)
      {
LABEL_8:
        v13 = sub_22088A84C();
        __swift_project_value_buffer(v13, qword_2812B6CB8);

        v14 = sub_22088A82C();
        v15 = sub_220891AFC();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v24 = v17;
          *v16 = 136315138;
          v27 = *(v7 + v8);
          sub_2204C5950(&qword_281298028);
          v18 = sub_22089287C();
          v20 = sub_2204A7B78(v18, v19, &v24);

          *(v16 + 4) = v20;
          _os_log_impl(&dword_22043F000, v14, v15, "Stock list update priceChangeDisplay will be queued while refresh is blocked by: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x223D8B7F0](v17, -1, -1);
          MEMORY[0x223D8B7F0](v16, -1, -1);
        }

        v21 = sub_220885D4C();
        v22 = *(v21 - 8);
        (*(v22 + 16))(v5, a1, v21);
        (*(v22 + 56))(v5, 0, 1, v21);
        v23 = *(*v7 + 248);
        swift_beginAccess();
        sub_2207C1A18(v5, v7 + v23, sub_22045BAA4);
        swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_2207B5940(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088AF8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  sub_22088B6BC();
  sub_22088B71C();

  (*(v5 + 104))(v8, *MEMORY[0x277D6D520], v4);
  sub_22046F734(&qword_281297F18, MEMORY[0x277D6D528]);
  v13 = sub_2208912FC();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v12, v4);
  if (v13)
  {
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    v17 = *(v3 + 80);
    v16 = *(v3 + 88);
    v18 = (*(v16 + 56))(a1, v17, v16);
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    MEMORY[0x28223BE20](v20, v21);
    *(&v23 - 4) = v17;
    *(&v23 - 3) = v16;
    *(&v23 - 2) = v19;
    *(&v23 - 1) = v18;
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v22 = sub_220888F2C();

    return v22;
  }
}

uint64_t sub_2207B5C64(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2207B5CC4(a1);
  }

  return result;
}

uint64_t sub_2207B5CC4(uint64_t a1)
{
  (*(*(*v1 + 88) + 96))(a1, *(*v1 + 80));
  sub_2204AB448();
  sub_22046F734(&qword_281297D28, sub_2204AB448);
  sub_22088B6DC();
}

uint64_t sub_2207B5DB8(uint64_t a1)
{
  v2 = sub_22088AF8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2207C22A8(a1, v14);
    v16 = sub_22089030C();
    if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
    {
      sub_2207C2344(v14);
      sub_22088B6BC();
      sub_22088B71C();

      (*(v3 + 104))(v6, *MEMORY[0x277D6D518], v2);
      sub_22046F734(&qword_281297F18, MEMORY[0x277D6D528]);
      v17 = sub_2208912FC();
      v18 = *(v3 + 8);
      v18(v6, v2);
      v19 = (v18)(v10, v2);
      if ((v17 & 1) == 0)
      {
        sub_2204A98C4(v19);
      }
    }

    else
    {

      return sub_2207C2344(v14);
    }
  }

  return result;
}

void sub_2207B6074(uint64_t a1)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  sub_2207C22A8(a1, v5);
  v6 = sub_22089030C();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_2207C2344(v5);
  if (v7 != 1)
  {
    if (qword_281298078 != -1)
    {
      swift_once();
    }

    v13 = sub_22088A84C();
    __swift_project_value_buffer(v13, qword_2812B6CB8);
    v14 = sub_22088A82C();
    v15 = sub_220891AFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22043F000, v14, v15, "Stock list will not reattempt prewarm because new state is offline", v16, 2u);
      MEMORY[0x223D8B7F0](v16, -1, -1);
    }

    goto LABEL_17;
  }

  v8 = sub_22088BF0C();
  if (!(v8 >> 62))
  {
    sub_2204A788C(v8);
    goto LABEL_16;
  }

  if (v8 >> 62 != 1)
  {
LABEL_16:
    sub_2204A98C4();
LABEL_17:

    return;
  }

  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v9 = sub_22088A84C();
  __swift_project_value_buffer(v9, qword_2812B6CB8);
  v10 = sub_22088A82C();
  v11 = sub_220891AFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22043F000, v10, v11, "Stock list will not reattempt prewarm because it has already finished", v12, 2u);
    MEMORY[0x223D8B7F0](v12, -1, -1);
  }
}

uint64_t sub_2207B6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220886A4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - v17;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = *(*v24 + 120);
      v32 = a3;
      v26 = *(v24 + v31);
      v33 = a4;
      v34 = Strong;
      __swift_project_boxed_opaque_existential_1((v26 + 32), *(v26 + 56));

      sub_2208863EC();
      sub_220886A3C();
      v27 = *(v11 + 8);
      v27(v18, v10);
      v28 = sub_220885DFC();
      (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
      __swift_project_boxed_opaque_existential_1((*(v24 + v31) + 32), *(*(v24 + v31) + 56));
      sub_2208863EC();
      sub_2208869CC();
      v27(v14, v10);
      v29 = sub_220885D4C();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      type metadata accessor for StockListInteractor();
      sub_2204B683C(v22, v9);

      swift_unknownObjectRelease();
      sub_2204AB5DC(v9, sub_22045BAA4);
      return sub_2204AB5DC(v22, sub_2204B5FB8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2207B66BC()
{
  v1 = v0;
  sub_2207C2118(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088CA0C();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220886A4C();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220885D4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v44 = &v38 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v38 - v22;
  v24 = *(v0 + *(*v0 + 120));
  __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  sub_2208863EC();
  sub_2208869CC();
  (*(v8 + 8))(v11, v43);
  v25 = *(v13 + 16);
  v43 = v23;
  v26 = v23;
  v27 = v12;
  v28 = v13;
  v38 = v13 + 16;
  v25(v16, v26, v27);
  v29 = (*(v13 + 88))(v16, v27);
  v30 = *MEMORY[0x277D69480];
  if (v29 == v30)
  {
    v30 = *MEMORY[0x277D69478];
  }

  else if (v29 != *MEMORY[0x277D69468])
  {
    v30 = *MEMORY[0x277D69468];
    if (v29 != *MEMORY[0x277D69478])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  v41 = v25;
  v31 = *(v13 + 104);
  v32 = v44;
  v31(v44, v30, v27);
  (*(v39 + 104))(v42, *MEMORY[0x277D6E0F8], v40);
  v33 = *(v1 + *(*v1 + 128));
  v47 = sub_22088731C();
  v48 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  v46 = v33;
  v49 = 0u;
  v50 = 0u;
  v51 = 1;
  sub_22088C4DC();
  swift_allocObject();

  sub_22088C4BC();
  v42 = *(v1 + *(*v1 + 136) + 8);
  swift_getObjectType();
  if (qword_281296FC8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  v34 = v45;
  sub_2208863EC();
  v35 = type metadata accessor for ChangeWatchlistDisplayContext(0);
  v41(v34 + *(v35 + 20), v32, v27);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);

  sub_22088B7AC();

  sub_2204AB5DC(v34, sub_2207C2118);
  v36 = *(v28 + 8);
  v36(v32, v27);
  return (v36)(v43, v27);
}

uint64_t sub_2207B6CCC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088CE3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v8;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_22088726C();
}

uint64_t sub_2207B6E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v69 = a3;
  v3 = sub_22088516C();
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v76 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208897FC();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v73 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v70 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22088A06C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v12);
  v63 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088D81C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v14);
  v59 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22088928C();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v16);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088944C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = v55 - v25;
  v27 = sub_220886A4C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22088943C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v32);
  v34 = v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v3;
    v36 = *(*result + 120);
    v55[1] = result;
    __swift_project_boxed_opaque_existential_1((*(result + v36) + 32), *(*(result + v36) + 56));
    sub_2208863EC();
    v37 = sub_2208869AC();
    v38 = MEMORY[0x277D68560];
    if ((v37 & 1) == 0)
    {
      v38 = MEMORY[0x277D68558];
    }

    (*(v19 + 104))(v26, *v38, v18);
    (*(v19 + 16))(v22, v26, v18);
    sub_22088942C();
    (*(v19 + 8))(v26, v18);
    (*(v28 + 8))(v31, v27);
    sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v39 = sub_220886F8C();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_220899360;
    (*(v40 + 104))(v42 + v41, *MEMORY[0x277CEAD18], v39);
    sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550]);
    v43 = v58;
    sub_220886F1C();

    (*(v57 + 8))(v34, v43);
    v44 = v59;
    sub_22088CE0C();
    v45 = (*(v60 + 88))(v44, v61);
    if (v45 == *MEMORY[0x277D6E830])
    {
      v46 = MEMORY[0x277D68F60];
    }

    else
    {
      v46 = MEMORY[0x277D68F68];
      if (v45 != *MEMORY[0x277D6E840] && v45 != *MEMORY[0x277D6E848] && v45 != *MEMORY[0x277D6E838])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }
    }

    (*(v65 + 104))(v63, *v46, v67);
    v47 = v62;
    sub_22088927C();
    sub_22046F734(&qword_281298540, MEMORY[0x277D683C0]);
    v48 = v66;
    sub_220886F1C();
    (*(v64 + 8))(v47, v48);
    sub_22088B6BC();
    v78 = v79;
    sub_22045BB28(0);
    sub_22046F734(&qword_281297C90, sub_22045BB28);
    v49 = v70;
    sub_22088BF9C();

    v50 = v73;
    sub_2207B4414(v73);
    (*(v71 + 8))(v49, v72);
    sub_22046F734(&qword_281298458, MEMORY[0x277D687E0]);
    v51 = v75;
    sub_220886F1C();
    (*(v74 + 8))(v50, v51);
    sub_22088995C();
    v52 = v76;
    sub_22088CE2C();
    sub_22046F734(&qword_281298400, MEMORY[0x277D688F8]);
    sub_220886ECC();
    v53 = *(v77 + 8);
    v54 = v56;
    v53(v52, v56);
    sub_22088CE1C();
    sub_220886EDC();

    return (v53)(v52, v54);
  }

  return result;
}

uint64_t sub_2207B7980(uint64_t a1)
{
  v2 = v1;
  v43 = *v2;
  sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v41 = &v35 - v7;
  v8 = type metadata accessor for StockListStockModel(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v44 = &v35 - v13;
  v14 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v20 + 8))(v23, v19);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      return sub_2204AB5DC(v17, type metadata accessor for StockListModel);
    }
  }

  else
  {
    v36 = type metadata accessor for StockListStockModel;
    v25 = v44;
    sub_2204D1A74(v17, v44, type metadata accessor for StockListStockModel);
    v37 = *(v2 + *(*v2 + 128));
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v25;
    v28 = v39;
    sub_22047939C(v27, v39, type metadata accessor for StockListStockModel);
    v30 = v41;
    v29 = v42;
    (*(v42 + 16))(v41, v40, v5);
    v31 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v32 = (v9 + *(v29 + 80) + v31) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v34 = v43;
    *(v33 + 2) = *(v43 + 80);
    *(v33 + 3) = *(v34 + 88);
    *(v33 + 4) = v26;
    sub_2204D1A74(v28, &v33[v31], v36);
    (*(v29 + 32))(&v33[v32], v30, v5);

    sub_22088726C();

    sub_2204AB5DC(v44, type metadata accessor for StockListStockModel);
  }

  return result;
}

uint64_t sub_2207B7DD8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v153 = a4;
  v166 = a3;
  v164 = a1;
  sub_22046B36C();
  v145 = v4;
  v143 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v151 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v152 = v7;
  v142 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v160 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088971C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v144 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088944C();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v14);
  v127 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v126 = &v122 - v18;
  v132 = sub_22088943C();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v19);
  v130 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v158 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_220886A4C();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v24);
  v124 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v125 = &v122 - v28;
  v135 = sub_22088665C();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v29);
  v133 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v157 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22088516C();
  v162 = *(v34 - 8);
  v163 = v34;
  MEMORY[0x28223BE20](v34, v35);
  v161 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v165 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22088965C();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v40);
  v146 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22088915C();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22088699C();
  v46 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v47);
  v49 = &v122 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088685C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v122 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22088914C();
  v155 = *(v55 - 8);
  v156 = v55;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v122 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v159 = result;
  if (result)
  {
    v122 = v11;
    v123 = v10;
    (*(v51 + 16))(v54, v166, v50);
    sub_22088681C();
    sub_2208867CC();
    sub_22067D2D4(v45);
    (*(v46 + 8))(v49, v154);
    sub_22088683C();
    sub_22088912C();
    (*(v51 + 8))(v54, v50);
    sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v61 = v60;
    v62 = sub_220886F8C();
    v63 = *(v62 - 8);
    v64 = *(v63 + 80);
    v65 = (v64 + 32) & ~v64;
    v140 = *(v63 + 72);
    v139 = v64;
    v66 = swift_allocObject();
    v136 = xmmword_220899360;
    *(v66 + 16) = xmmword_220899360;
    v67 = *MEMORY[0x277CEAD18];
    v68 = *(v63 + 104);
    v141 = v65;
    v138 = v67;
    v154 = v63 + 104;
    v137 = v68;
    v68(v66 + v65);
    sub_22046F734(&qword_281298578, MEMORY[0x277D68270]);
    v69 = v156;
    sub_220886F1C();

    (*(v155 + 8))(v58, v69);
    v70 = type metadata accessor for StockViewModel();
    v71 = v165;
    v72 = v166;
    sub_22047939C(&v166[*(v70 + 20)], v165, sub_22045987C);
    v73 = sub_22088676C();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v71, 1, v73) == 1)
    {
      result = sub_2204AB5DC(v165, sub_22045987C);
      v75 = 0.0;
    }

    else
    {
      v76 = v161;
      v77 = v165;
      sub_2208866FC();
      (*(v74 + 8))(v77, v73);
      sub_2208850DC();
      v75 = v78;
      result = (*(v162 + 8))(v76, v163);
    }

    v79 = v157;
    v80 = v158;
    if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (fabs(v75) < 2147483650.0)
    {
      sub_22047939C(&v72[*(v70 + 24)], v157, sub_2204E99F0);
      v81 = type metadata accessor for StockSparklineViewModel(0);
      if ((*(*(v81 - 8) + 48))(v79, 1, v81) == 1)
      {
        result = sub_2204AB5DC(v79, sub_2204E99F0);
        v82 = 0.0;
      }

      else
      {
        v83 = v134;
        v84 = v79 + *(v81 + 32);
        v85 = v133;
        v86 = v135;
        (*(v134 + 16))(v133, v84, v135);
        sub_2204AB5DC(v79, type metadata accessor for StockSparklineViewModel);
        v87 = v161;
        sub_2208865AC();
        (*(v83 + 8))(v85, v86);
        sub_2208850DC();
        v82 = v88;
        result = (*(v162 + 8))(v87, v163);
      }

      if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (fabs(v82) < 2147483650.0)
        {
          v89 = v146;
          sub_22088964C();
          sub_22046F734(&qword_281298488, MEMORY[0x277D686C8]);
          v90 = v148;
          sub_220886F1C();
          (*(v147 + 8))(v89, v90);
          v91 = *(v159 + *(*v159 + 120));
          __swift_project_boxed_opaque_existential_1((v91 + 32), *(v91 + 56));
          v92 = sub_220885FCC();
          MEMORY[0x28223BE20](v92, v93);
          *(&v122 - 2) = v72;
          sub_22059C558(sub_2207C2070, v92, v80);

          v94 = v149;
          v95 = v150;
          if ((*(v149 + 48))(v80, 1, v150) == 1)
          {
            sub_2204AB5DC(v80, sub_2204961E0);
          }

          else
          {
            v96 = *(v94 + 32);
            v166 = "stInteractor.swift";
            v97 = v125;
            v96(v125, v80, v95);
            v98 = *(v94 + 16);
            v165 = v61;
            v99 = v62;
            v100 = v124;
            v98(v124, v97, v95);
            v101 = sub_2208869AC();
            v102 = v128;
            v103 = MEMORY[0x277D68560];
            if ((v101 & 1) == 0)
            {
              v103 = MEMORY[0x277D68558];
            }

            v104 = v126;
            v105 = v94;
            v106 = v129;
            (*(v128 + 104))(v126, *v103, v129);
            (*(v102 + 16))(v127, v104, v106);
            v107 = v130;
            sub_22088942C();
            (*(v102 + 8))(v104, v106);
            v108 = *(v105 + 8);
            v109 = v100;
            v62 = v99;
            v108(v109, v95);
            v110 = v141;
            v111 = swift_allocObject();
            *(v111 + 16) = v136;
            v137(v111 + v110, v138, v99);
            sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550]);
            v112 = v132;
            sub_220886F1C();

            (*(v131 + 8))(v107, v112);
            v108(v97, v95);
          }

          v113 = v152;
          sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
          sub_22088BC0C();
          v114 = v151;
          sub_22088BBEC();
          sub_22046F734(&qword_281293CE0, type metadata accessor for StockListModel);
          result = sub_22088E7FC();
          if (result >= 0xFFFFFFFF80000000)
          {
            if (result <= 0x7FFFFFFF)
            {
              v115 = v144;
              sub_22088970C();
              (*(v143 + 8))(v114, v145);
              (*(v142 + 8))(v160, v113);
              v116 = v141;
              v117 = swift_allocObject();
              *(v117 + 16) = v136;
              v137(v117 + v116, v138, v62);
              sub_22046F734(&qword_281298470, MEMORY[0x277D68720]);
              v118 = v123;
              sub_220886F1C();

              (*(v122 + 8))(v115, v118);
              sub_220889A2C();
              v119 = v161;
              sub_22088BC1C();
              sub_22046F734(&qword_2812983D0, MEMORY[0x277D68970]);
              sub_220886ECC();
              v120 = v163;
              v121 = *(v162 + 8);
              v121(v119, v163);
              sub_22088BBFC();
              sub_220886EDC();

              return (v121)(v119, v120);
            }

LABEL_26:
            __break(1u);
            return result;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_2207B9150(uint64_t a1, uint64_t a2)
{
  v3 = sub_2208869BC();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for StockListStockModel(0) + 24));
  if (v3 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207B91D8(uint64_t a1)
{
  v3 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046F734(&qword_28128AD90, type metadata accessor for StockListSelectionModel);
  sub_2208886AC();
  sub_22047939C(a1, v10, type metadata accessor for StockListSelectionModel);
  v11 = sub_22088685C();
  result = (*(*(v11 - 8) + 48))(v10, 2, v11);
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1((v1 + *(*v1 + 208)), *(v1 + *(*v1 + 208) + 24));
    v13 = *MEMORY[0x277D68EE8];
    v14 = sub_220889FFC();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
    swift_storeEnumTagMultiPayload();
    sub_2204C17CC(v6);
    v15 = type metadata accessor for EngagementEvent;
    v16 = v6;
  }

  else
  {
    v15 = type metadata accessor for StockListSelectionModel;
    v16 = v10;
  }

  return sub_2204AB5DC(v16, v15);
}

uint64_t sub_2207B9424()
{
  v1 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 208)), *(v0 + *(*v0 + 208) + 24));
  swift_storeEnumTagMultiPayload();
  sub_2204C17CC(v4);
  return sub_2204AB5DC(v4, type metadata accessor for EngagementEvent);
}

uint64_t sub_2207B94F4()
{
  v26[1] = *v0;
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockListRouteModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088867C();
  if ((*(v2 + 48))(v17, 2, v1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = (v0 + *(*v0 + 176));
      v20 = v19[3];
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      AttributionProviderType.source.getter(v20, v21);
      sub_22047C2BC(&v9[*(v6 + 20)], v13);
      sub_2204AB5DC(v9, type metadata accessor for AttributionSource);
      swift_storeEnumTagMultiPayload();
      sub_220781AC8(v13);
      sub_2204AB5DC(v13, type metadata accessor for StockListRouteModel);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = (*(v2 + 32))(v5, v17, v1);
    MEMORY[0x28223BE20](v22, v23);
    v26[-2] = v0;
    v26[-1] = v5;
    sub_2204556F0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    sub_220888FBC();
    sub_22046D5B4();
    v24 = sub_220891D0C();
    sub_2204C5D60(0, &qword_28127DDF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    sub_220888E6C();

    v25 = sub_220891D0C();
    sub_220888EAC();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_2207B9948@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for StockListRouteModel();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    sub_22047C2BC(a1, v7);
    swift_storeEnumTagMultiPayload();
    sub_220781AC8(v7);
    sub_2204AB5DC(v7, type metadata accessor for StockListRouteModel);
    result = swift_unknownObjectRelease();
  }

  *a2 = v9 == 0;
  return result;
}

uint64_t sub_2207B9A3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockListRouteModel();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = (a2 + *(*a2 + 176));
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    AttributionProviderType.source.getter(v13, v14);
    sub_22047C2BC(&v6[*(v3 + 20)], v10);
    sub_2204AB5DC(v6, type metadata accessor for AttributionSource);
    swift_storeEnumTagMultiPayload();
    sub_220781AC8(v10);
    sub_2204AB5DC(v10, type metadata accessor for StockListRouteModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2207B9BC4(uint64_t a1, int a2)
{
  v143 = a2;
  v148 = *v2;
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v133 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v139 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22088CA0C();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v10);
  v141 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2208854AC();
  v152 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v12);
  v151 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22088685C();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v14);
  v134 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v140 = &v129 - v18;
  v19 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v136 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v138 = &v129 - v24;
  v25 = sub_22088BC8C();
  v26 = *(v25 - 8);
  v153 = v25;
  v154 = v26;
  MEMORY[0x28223BE20](v25, v27);
  v137 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  ObjectType = &v129 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v142 = &v129 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v156 = &v129 - v37;
  v38 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v129 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockListStockModel(0);
  v135 = *(v48 - 8);
  v49 = *(v135 + 64);
  MEMORY[0x28223BE20](v48 - 8, v50);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v129 - v53;
  sub_22088CEEC();
  sub_22088AD8C();
  (*(v44 + 8))(v47, v43);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2204AB5DC(v41, type metadata accessor for StockListModel);
    return sub_22088CF0C();
  }

  v131 = v49;
  v132 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = ObjectType;
  v56 = v151;
  v58 = v152;
  v59 = v155;
  sub_2204D1A74(v41, v54, type metadata accessor for StockListStockModel);
  v60 = v156;
  v61 = a1;
  sub_22088CEFC();
  v63 = v153;
  v62 = v154;
  v130 = *(v154 + 88);
  v64 = v130(v60, v153);
  if (v64 == *MEMORY[0x277D6DA60])
  {
    (*(v62 + 96))(v60, v63);
    sub_220690814();
    (v58)[4](v56, &v60[*(v65 + 48)], v59);
    v66 = sub_22088548C();
    v68 = *(v148 + 10);
    v67 = *(v148 + 11);
    v158 = (*(v67 + 88))(v54, v66, v61, v68, v67);
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = swift_allocObject();
    v70[2] = v68;
    v70[3] = v67;
    v70[4] = v69;
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();

    v71 = v58[1];
    v72 = v155;
    v71(v56, v155);
    sub_2204AB5DC(v54, type metadata accessor for StockListStockModel);

    return (v71)(v156, v72);
  }

  if (v64 != *MEMORY[0x277D6DA70])
  {
    v155 = v61;
    v129 = v54;
    v82 = v142;
    v151 = *(v62 + 16);
    (v151)(v142, v60, v63);
    *v57 = 0x6D79536572616853;
    v57[1] = 0xEB000000006C6F62;
    v83 = *(v62 + 104);
    LODWORD(v152) = *MEMORY[0x277D6DA68];
    v148 = v83;
    v83(v57);
    sub_22046F734(&qword_27CF59CB8, MEMORY[0x277D6DA80]);
    v84 = sub_2208912FC();
    v85 = *(v62 + 8);
    (v85)(v57, v63);
    (v85)(v82, v63);
    v154 = v62 + 8;
    if (v84)
    {
      v152 = v85;
      (*(v144 + 104))(v141, *MEMORY[0x277D6E0E0], v145);
      v86 = v149;
      v87 = *(v149 + *(*v149 + 128));
      v160 = sub_22088731C();
      v161 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8]);
      v158 = v87;

      sub_22088CEBC();
      v162 = 0u;
      v163 = 0u;
      v164 = 1;
      sub_22088C4DC();
      swift_allocObject();
      sub_22088C4BC();
      v88 = (v86 + *(*v86 + 136));
      v89 = *v88;
      v151 = v88[1];
      v155 = v89;
      ObjectType = swift_getObjectType();
      if (qword_281297080 != -1)
      {
        swift_once();
      }

      v149 = qword_2812B6CA8;
      v90 = v146;
      v91 = *(v146 + 16);
      v92 = v140;
      v93 = v129;
      v94 = v147;
      v91(v140, v129, v147);
      v95 = type metadata accessor for StockViewModel();
      v96 = v139;
      sub_22047939C(v93 + *(v95 + 20), v139, sub_22045987C);
      v97 = type metadata accessor for StockShareActivityItemSource();
      v98 = objc_allocWithZone(v97);
      v91(&v98[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v92, v94);
      sub_22047939C(v96, &v98[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
      v157.receiver = v98;
      v157.super_class = v97;
      v99 = objc_msgSendSuper2(&v157, sel_init);
      sub_2204AB5DC(v96, sub_22045987C);
      (*(v90 + 8))(v92, v94);
      v158 = v99;
      v159 = 2;

      sub_22088B7AC();

      sub_2204AB5DC(v129, type metadata accessor for StockListStockModel);
      v100 = v156;
    }

    else
    {
      v105 = v137;
      (v151)(v137, v156, v63);
      *v57 = 0x61576567616E614DLL;
      v57[1] = 0xEF7473696C686374;
      (v148)(v57, v152, v63);
      v106 = sub_2208912FC();
      (v85)(v57, v63);
      (v85)(v105, v63);
      v107 = v85;
      if ((v106 & 1) == 0)
      {
        v114 = v156;
        v115 = (v130)(v156, v63, v145);
        v116 = v129;
        if (v115 == v152)
        {
          v107(v114, v63);
        }

        else if (v115 != *MEMORY[0x277D6DA78])
        {
          sub_22088CF0C();
          sub_2204AB5DC(v116, type metadata accessor for StockListStockModel);
          return (v107)(v114, v63);
        }

        sub_22088CF0C();
        return sub_2204AB5DC(v116, type metadata accessor for StockListStockModel);
      }

      v152 = v85;
      v108 = v156;
      (*(v144 + 104))(v141, *MEMORY[0x277D6E0E0], v145);
      v109 = *(v149 + *(*v149 + 128));
      v160 = sub_22088731C();
      v161 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8]);
      v158 = v109;

      sub_22088CEBC();
      v162 = 0u;
      v163 = 0u;
      v164 = 1;
      sub_22088C4DC();
      swift_allocObject();
      sub_22088C4BC();
      swift_getObjectType();
      v110 = v129;
      if (qword_281296F90 != -1)
      {
        swift_once();
      }

      v111 = v146;
      v112 = v133;
      v113 = v147;
      (*(v146 + 16))(v133, v110, v147);
      (*(v111 + 56))(v112, 0, 1, v113);

      sub_22088B7AC();

      sub_2204AB5DC(v112, sub_2206AA758);
      sub_2204AB5DC(v110, type metadata accessor for StockListStockModel);
      v100 = v108;
    }

    return (v152)(v100, v153);
  }

  if (v143)
  {
    v73 = v61;
    v74 = v54;
    v75 = v138;
    sub_22088867C();
    v76 = v136;
    sub_22047939C(v75, v136, type metadata accessor for StockListSelectionModel);
    v77 = v146;
    v78 = v147;
    v79 = (*(v146 + 48))(v76, 2, v147);
    if (v79)
    {
      v80 = v132;
      if (v79 == 1)
      {
        v156 = 0xE500000000000000;
        v81 = 0x7961646F74;
      }

      else
      {
        v156 = 0xE400000000000000;
        v81 = 1701736302;
      }

      v154 = v81;
      v119 = v148;
    }

    else
    {
      v117 = v140;
      (*(v77 + 32))(v140, v76, v78);
      v154 = sub_22088677C();
      v156 = v118;
      (*(v77 + 8))(v117, v78);
      v119 = v148;
      v80 = v132;
    }

    sub_2204AB5DC(v75, type metadata accessor for StockListSelectionModel);
    v121 = *(v119 + 10);
    v120 = *(v119 + 11);
    v122 = v73;
    v155 = (*(v120 + 80))(v73, v121, v120);
    v158 = v155;
    v123 = swift_allocObject();
    swift_weakInit();
    v129 = v74;
    sub_22047939C(v74, v80, type metadata accessor for StockListStockModel);
    v124 = (*(v135 + 80) + 40) & ~*(v135 + 80);
    v125 = (v131 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    v126[2] = v121;
    v126[3] = v120;
    v126[4] = v123;
    sub_2204D1A74(v80, v126 + v124, type metadata accessor for StockListStockModel);
    *(v126 + v125) = v122;
    v127 = (v126 + ((v125 + 15) & 0xFFFFFFFFFFFFFFF8));
    v128 = v156;
    *v127 = v154;
    v127[1] = v128;
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();

    sub_2204AB5DC(v129, type metadata accessor for StockListStockModel);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v102 = v147;
    if (Strong)
    {
      v103 = v146;
      v104 = v134;
      (*(v146 + 16))(v134, v54, v147);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2207C15B0(v104, v61);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      (*(v103 + 8))(v104, v102);
    }

    return sub_2204AB5DC(v54, type metadata accessor for StockListStockModel);
  }
}

uint64_t sub_2207BB000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v42 = a3;
  v9 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockListStockModel(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8, v20);
  v21 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088C6AC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    (*(v23 + 16))(v26, a1, v22);
    v29 = (*(v23 + 88))(v26, v22);
    if (v29 == *MEMORY[0x277D6DF98])
    {
      (*(v23 + 8))(v26, v22);
    }

    else if (v29 != *MEMORY[0x277D6DF90])
    {
      if (v29 != *MEMORY[0x277D6DFA0])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      sub_22047939C(v42, &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockListStockModel);
      v30 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      v33 = v44;
      *(v32 + 16) = v43;
      *(v32 + 24) = v33;
      sub_2204D1A74(v21, v32 + v30, type metadata accessor for StockListStockModel);
      *(v32 + v31) = v28;

      sub_22088726C();

      if (sub_2204D0EE0())
      {
        sub_2207BBD88();
      }

      sub_22088CEEC();
      v34 = sub_22088AD4C();
      v36 = v35;
      (*(v45 + 8))(v16, v13);
      if (v34 == v46 && v36 == v47)
      {
      }

      else
      {
        v37 = sub_2208928BC();

        if ((v37 & 1) == 0)
        {
        }
      }

      v38 = sub_22088685C();
      v39 = v41;
      (*(*(v38 - 8) + 56))(v41, 2, 2, v38);
      sub_22046F734(&qword_28128AD90, type metadata accessor for StockListSelectionModel);
      sub_2208886AC();
      sub_2204AB5DC(v39, type metadata accessor for StockListSelectionModel);
    }

    sub_22088CF0C();
  }

  return result;
}

uint64_t sub_2207BB530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v71 = a2;
  v72 = a1;
  v68 = sub_22088944C();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v3);
  v66 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v63 = &v48 - v7;
  v67 = sub_220886A4C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088943C();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v61 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088915C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088699C();
  v18 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088685C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22088914C();
  v56 = *(v55 - 8);
  v28 = MEMORY[0x28223BE20](v55, v27);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v23 + 16);
  v58 = v23 + 16;
  v59 = v31;
  v57 = v22;
  (v31)(v26, v71, v22, v28);
  sub_22088681C();
  sub_2208867CC();
  sub_22067D2D4(v17);
  (*(v18 + 8))(v21, v54);
  sub_22088683C();
  sub_22088912C();
  (*(v23 + 8))(v26, v22);
  sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v54 = v32;
  v51 = sub_220886F8C();
  v33 = *(v51 - 8);
  v53 = *(v33 + 72);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v52 = xmmword_220899360;
  *(v35 + 16) = xmmword_220899360;
  v50 = *MEMORY[0x277CEAD18];
  v49 = *(v33 + 104);
  v49(v35 + v34);
  v48 = "stInteractor.swift";
  sub_22046F734(&qword_281298578, MEMORY[0x277D68270]);
  v36 = v55;
  sub_220886F1C();

  (*(v56 + 8))(v30, v36);
  v37 = *(v62 + *(*v62 + 120));
  __swift_project_boxed_opaque_existential_1((v37 + 32), *(v37 + 56));
  v38 = v60;
  sub_2208863EC();
  v39 = sub_2208869AC();
  v41 = v63;
  v40 = v64;
  v42 = MEMORY[0x277D68560];
  if ((v39 & 1) == 0)
  {
    v42 = MEMORY[0x277D68558];
  }

  v43 = v68;
  (*(v64 + 104))(v63, *v42, v68);
  (*(v40 + 16))(v66, v41, v43);
  v44 = v61;
  sub_22088942C();
  (*(v40 + 8))(v41, v43);
  (*(v65 + 8))(v38, v67);
  v45 = swift_allocObject();
  *(v45 + 16) = v52;
  (v49)(v45 + v34, v50, v51);
  sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550]);
  v46 = v69;
  sub_220886F1C();

  (*(v70 + 8))(v44, v46);
  sub_22088994C();
  v59(v26, v71, v57);
  v73[3] = sub_22088A7BC();
  __swift_allocate_boxed_opaque_existential_1(v73);
  sub_22088A7AC();
  sub_22046F734(&qword_27CF587A0, MEMORY[0x277D688E8]);
  sub_220886F3C();
  return sub_22056D130(v73);
}

uint64_t sub_2207BBD88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2204D0EE0();
  if (result)
  {
    v8 = *(*v0 + 184);
    v9 = (v0 + v8);
    v10 = *(v0 + v8 + 24);
    v11 = *(v1 + v8 + 32);
    __swift_project_boxed_opaque_existential_1(v9, *(v1 + v8 + 24));
    AttributionProviderType.source.getter(v10, v11);
    v12 = (*(*(v2 + 88) + 120))(v6, *(v2 + 80));
    sub_2204AB5DC(v6, type metadata accessor for AttributionSource);
    v13[1] = v12;
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);
    sub_22088B6DC();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220789A70();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2207BBF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088F11C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088F14C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v12);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046D5B4();
  v15 = sub_220891D0C();
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v16;
  aBlock[4] = sub_2207C1EC0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_106;
  v18 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22046F734(&qword_28127EA50, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_2207BC28C()
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22088685C();
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v43 - v14;
  sub_2204A1D20();
  v17 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v46 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v43 - v22;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v50 = *(v28 - 8);
  v51 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v47 = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v44 = v3;
    v45 = v7;
    sub_22088B6BC();
    v52 = v53;
    sub_22045BB28(0);
    v33 = v32;
    v43[1] = sub_22046F734(&qword_281297C90, sub_22045BB28);
    v43[2] = v33;
    sub_22088BF9C();

    sub_22088867C();
    sub_22047939C(v15, v11, type metadata accessor for StockListSelectionModel);
    v34 = v48;
    if (!(*(v48 + 48))(v11, 2, v4))
    {
      v35 = v45;
      (*(v34 + 32))(v45, v11, v4);
      sub_22088677C();
      (*(v34 + 8))(v35, v4);
    }

    v36 = v51;
    sub_2204AB5DC(v15, type metadata accessor for StockListSelectionModel);
    sub_22088E70C();

    v37 = *(v49 + 8);
    v37(v23, v17);
    v38 = v50;
    if ((*(v50 + 48))(v27, 1, v36) == 1)
    {

      return sub_2204AB5DC(v27, sub_2204CF334);
    }

    else
    {
      v39 = v47;
      (*(v38 + 32))(v47, v27, v36);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22088B6BC();
        v52 = v53;
        v40 = v46;
        sub_22088BF9C();

        v41 = v44;
        sub_22088E7EC();
        v37(v40, v17);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_2204D0828(v41, Strong);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        sub_2204AB5DC(v41, sub_2204D04A4);
        return (*(v38 + 8))(v39, v51);
      }

      else
      {

        return (*(v38 + 8))(v39, v36);
      }
    }
  }

  return result;
}

uint64_t sub_2207BC898(__int128 *a1)
{
  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + *(*v1 + 120));
  __swift_project_boxed_opaque_existential_1((v12 + 32), *(v12 + 56));
  v13 = a1[1];
  v19 = *a1;
  v20 = v13;

  sub_2208863EC();
  v14 = sub_2208869BC();
  v16 = v15;
  (*(v4 + 8))(v7, v3);
  v17 = v20;
  *v11 = v19;
  *(v11 + 1) = v17;
  *(v11 + 4) = v14;
  *(v11 + 5) = v16;
  swift_storeEnumTagMultiPayload();
  sub_22088BDBC();
  return sub_2204AB5DC(v11, type metadata accessor for StocksActivity);
}

uint64_t sub_2207BCA7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v54 = a4;
  v56 = a2;
  v59 = a1;
  v52 = *v4;
  v6 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v58, v9);
  v57 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22088BCAC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v11);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088BC8C();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v47 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2208854AC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v25 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 16);
  v26(v25, a3, v20, v24);
  v27 = (*(v21 + 80) + 41) & ~*(v21 + 80);
  v28 = swift_allocObject();
  v29 = v52;
  v52 = *(v52 + 80);
  *(v28 + 16) = v52;
  v44 = *(v29 + 88);
  *(v28 + 24) = v44;
  *(v28 + 32) = v4;
  *(v28 + 40) = v54;
  v30 = v28 + v27;
  v31 = a3;
  (*(v21 + 32))(v30, v25, v20);
  (*(v17 + 16))(v46, v59, v47);
  sub_220690814();
  v33 = *(v32 + 48);
  v34 = v48;
  (v26)(v48, v56, v20);
  v56 = v31;
  (v26)(&v34[v33], v31, v20);
  (*(v49 + 104))(v34, *MEMORY[0x277D6DA60], v50);
  (*(v53 + 104))(v51, *MEMORY[0x277D6DAA0], v55);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2207C1AAC;
  *(v35 + 24) = v28;
  sub_2207C1B14(0, &qword_27CF58128, MEMORY[0x277D6E3E0]);
  swift_allocObject();

  v36 = sub_22088CEDC();
  v37 = v57;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      return sub_2204AB5DC(v37, type metadata accessor for StockListModel);
    }
  }

  else
  {
    v40 = v45;
    sub_2204D1A74(v37, v45, type metadata accessor for StockListStockModel);
    v41 = sub_22088548C();
    v60 = (*(v44 + 88))(v40, v41, v36, v52);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2207C1AAC;
    *(v42 + 24) = v28;
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();

    sub_2204AB5DC(v40, type metadata accessor for StockListStockModel);
  }
}

uint64_t sub_2207BD11C(uint64_t *a1, int a2, uint64_t a3)
{
  v25 = a2;
  v4 = *a1;
  v27 = sub_22088F11C();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22088F14C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2208854AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22046D5B4();
  v26 = sub_220891D0C();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a3, v12);
  v18 = (*(v13 + 80) + 41) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v4 + 80);
  *(v19 + 24) = *(v4 + 88);
  *(v19 + 32) = v17;
  *(v19 + 40) = v25;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_2207C1C74;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_82;
  v20 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22046F734(&qword_28127EA50, sub_22056D204);
  v21 = v27;
  sub_2208923FC();
  v22 = v26;
  MEMORY[0x223D89EC0](0, v11, v7, v20);
  _Block_release(v20);

  (*(v30 + 8))(v7, v21);
  return (*(v28 + 8))(v11, v29);
}

uint64_t sub_2207BD518(uint64_t a1, char a2, uint64_t a3)
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v14 = sub_2208854AC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v12, a3, v14);
      (*(v15 + 56))(v12, 0, 1, v14);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_2204D0828(v12, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2204AB5DC(v12, sub_2204D04A4);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = sub_2208854AC();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v8, a3, v17);
      (*(v18 + 56))(v8, 0, 1, v17);
      sub_22078974C(v8);

      swift_unknownObjectRelease();
      return sub_2204AB5DC(v8, sub_2204D04A4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2207BD7B4(int a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v42 = *v3;
  v6 = v42;
  v7 = sub_22088F11C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F14C();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + *(v6 + 232));
  v57 = 0;
  v56 = v14;
  sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
  sub_2204C5950(&qword_27CF59CB0);

  v15 = sub_22089160C();
  if (v15 == 2)
  {
    v36 = v11;
    v39 = v3;
    v37 = v8;
    v38 = v7;
    v40 = a3;
    v41 = a2;
    aBlock = v14;

    sub_2208915BC();
    sub_2204C5950(&qword_281298030);
    while (1)
    {
      result = sub_22089199C();
      if (v55 & 1) != 0 || (v49)
      {
        __break(1u);
        return result;
      }

      if (v54 != v48)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v53 == aBlock)
      {

        a2 = v41;
        goto LABEL_15;
      }

      v17 = sub_2208919BC();
      v19 = *v18;
      v17(&aBlock, 0);
      sub_2208919AC();
      if (v19 != 1 && v19 != 2)
      {
        break;
      }

      a2 = sub_2208928BC();

      if (a2)
      {
        goto LABEL_19;
      }
    }

LABEL_19:

    sub_220707710(v53, v54, v55);

    a3 = v40;
    a2 = v41;
    v7 = v38;
    v8 = v37;
    v11 = v36;
    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v20 = v15;

  if (v20)
  {
    if ((v46 & 1) == 0)
    {
LABEL_25:
      if (qword_281298078 != -1)
      {
        swift_once();
      }

      v25 = sub_22088A84C();
      __swift_project_value_buffer(v25, qword_2812B6CB8);
      v26 = sub_22088A82C();
      v27 = sub_220891AFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22043F000, v26, v27, "Stock list coming out of editing state", v28, 2u);
        MEMORY[0x223D8B7F0](v28, -1, -1);
      }

      sub_2204A78A0(0, 0, 0);
      sub_22046D5B4();
      v29 = sub_220891D0C();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v32 = v42;
      v31[2] = *(v42 + 80);
      v31[3] = *(v32 + 88);
      v31[4] = a2;
      v31[5] = a3;
      v31[6] = v30;
      v51 = sub_2207C1A9C;
      v52 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_2204C35E8;
      v50 = &block_descriptor_46;
      v33 = _Block_copy(&aBlock);
      sub_2204A80F0(a2, a3);

      v34 = v43;
      sub_22088F13C();
      aBlock = MEMORY[0x277D84F90];
      sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198]);
      sub_22056D204();
      sub_22046F734(&qword_28127EA50, sub_22056D204);
      v35 = v45;
      sub_2208923FC();
      MEMORY[0x223D89EC0](0, v34, v35, v33);
      _Block_release(v33);

      (*(v8 + 8))(v35, v7);
      return (*(v44 + 8))(v34, v11);
    }

    goto LABEL_20;
  }

LABEL_15:
  if (v46)
  {
LABEL_20:
    if (qword_281298078 != -1)
    {
LABEL_32:
      swift_once();
    }

    v21 = sub_22088A84C();
    __swift_project_value_buffer(v21, qword_2812B6CB8);
    v22 = sub_22088A82C();
    v23 = sub_220891AFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22043F000, v22, v23, "Stock list entering editing state", v24, 2u);
      MEMORY[0x223D8B7F0](v24, -1, -1);
    }

    result = sub_2207BE064(0);
    if (a2)
    {
      return (a2)(result);
    }

    return result;
  }

  if (a2)
  {
    return (a2)(result);
  }

  return result;
}

uint64_t sub_2207BDF68(void (*a1)(__n128))
{
  v2 = type metadata accessor for StockListSelectionModel();
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a1(v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22088867C();
    sub_2204CFC28(v6);

    return sub_2204AB5DC(v6, type metadata accessor for StockListSelectionModel);
  }

  return result;
}

uint64_t sub_2207BE064(char a1)
{
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v2 = sub_22088A84C();
  __swift_project_value_buffer(v2, qword_2812B6CB8);
  v3 = sub_22088A82C();
  v4 = sub_220891AFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000012;
      }

      else
      {
        v7 = 0x6E696C6C6F726373;
      }

      if (a1 == 1)
      {
        v8 = 0x80000002208BECB0;
      }

      else
      {
        v8 = 0xE900000000000067;
      }
    }

    else
    {
      v8 = 0xE700000000000000;
      v7 = 0x676E6974696465;
    }

    v9 = sub_2204A7B78(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22043F000, v3, v4, "Stock list refreshing will be blocked by: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223D8B7F0](v6, -1, -1);
    MEMORY[0x223D8B7F0](v5, -1, -1);
  }

  v12 = a1;

  sub_22088ACAC();
}

uint64_t sub_2207BE26C(uint64_t a1, uint64_t a2)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220885D4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 248);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_22045BAA4);
  swift_endAccess();
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v10 = sub_22088A84C();
  __swift_project_value_buffer(v10, qword_2812B6CB8);
  v11 = sub_22088A82C();
  v12 = sub_220891AFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22043F000, v11, v12, "Stock list is being refreshed with queued price data", v13, 2u);
    MEMORY[0x223D8B7F0](v13, -1, -1);
  }

  return sub_2204C5A34(a2);
}

uint64_t sub_2207BE43C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_2204558B8(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088582C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 240);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_2204558B8);
  result = swift_endAccess();
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_2207BE55C(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(uint64_t))
{
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v7 = sub_22088A84C();
  __swift_project_value_buffer(v7, qword_2812B6CB8);
  v8 = sub_22088A82C();
  v9 = sub_220891AFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22043F000, v8, v9, a3, v10, 2u);
    MEMORY[0x223D8B7F0](v10, -1, -1);
  }

  return a4(a2);
}

uint64_t sub_2207BE668(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220885D4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 248);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_22045BAA4);
  result = swift_endAccess();
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_2207BE788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = a7;
    v14[3] = a8;
    v14[4] = v13;
    v14[5] = sub_2207C265C;
    v14[6] = v12;
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();
  }

  else
  {
  }
}

uint64_t sub_2207BE948(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_220886A4C();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27[3] = Strong;
      v24 = sub_220885DFC();
      (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
      v25 = *(v22 + *(*v22 + 120));
      v27[1] = a6;
      v27[2] = a5;
      __swift_project_boxed_opaque_existential_1((v25 + 32), *(v25 + 56));

      sub_2208863EC();
      sub_2208869CC();
      (*(v28 + 8))(v12, v9);
      v26 = sub_220885D4C();
      (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
      type metadata accessor for StockListInteractor();
      sub_2204B683C(v20, v16);

      swift_unknownObjectRelease();
      sub_2204AB5DC(v16, sub_22045BAA4);
      Strong = sub_2204AB5DC(v20, sub_2204B5FB8);
    }

    a3(Strong);
  }

  return result;
}

uint64_t sub_2207BEC60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a3;
  v49 = a1;
  v52 = a4;
  v5 = *a4;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v47 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v47 - v27;
  v54 = a2;
  sub_22088867C();
  sub_22047939C(v28, v24, type metadata accessor for StockListSelectionModel);
  v48 = v13;
  v29 = *(v13 + 48);
  v30 = v29(v24, 2, v12);
  v53 = v5;
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0xE500000000000000;
      v32 = 0x7961646F74;
    }

    else
    {
      v31 = 0xE400000000000000;
      v32 = 1701736302;
    }
  }

  else
  {
    v33 = v16;
    v34 = v48;
    (*(v48 + 32))(v33, v24, v12);
    v32 = sub_22088677C();
    v31 = v35;
    v36 = v34;
    v16 = v33;
    (*(v36 + 8))(v33, v12);
  }

  sub_2204AB5DC(v28, type metadata accessor for StockListSelectionModel);
  v37 = v55;
  sub_22047939C(v55, v20, type metadata accessor for StockListSelectionModel);
  v38 = v29(v20, 2, v12);
  if (!v38)
  {
    v40 = v48;
    (*(v48 + 32))(v16, v20, v12);
    v41 = sub_22088677C();
    v39 = v42;
    (*(v40 + 8))(v16, v12);
    goto LABEL_12;
  }

  if (v38 != 1)
  {
    v39 = 0xE400000000000000;
    v41 = 1701736302;
LABEL_12:
    if (v32 != v41)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v39 = 0xE500000000000000;
  if (v32 != 0x7961646F74)
  {
LABEL_15:
    v43 = sub_2208928BC();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (v31 != v39)
  {
    goto LABEL_15;
  }

LABEL_16:
  v45 = v50;
  sub_22047939C(v49, v50, sub_22045987C);
  if (qword_281298D08 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_220886B3C();
  v46 = v51;
  sub_22084DA0C(v45, v56, v51);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22078997C();
    swift_unknownObjectRelease();
  }

  sub_2204CFC28(v37);
  return sub_2204AB5DC(v46, type metadata accessor for StockListToolbarModel);
}

uint64_t sub_2207BF18C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45[1] = a6;
  v45[2] = a7;
  v49 = a3;
  v50 = a5;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v46 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088676C();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v45 - v21;
  v23 = sub_22088685C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22088867C();
    v33 = (*(v24 + 48))(v31, 2, v23);
    if (v33)
    {
LABEL_13:
      a4(v33);
    }

    v45[0] = a4;
    (*(v24 + 32))(v27, v31, v23);
    v34 = sub_22088581C();
    v35 = sub_22088681C();
    if (*(v34 + 16))
    {
      v49 = sub_2204AF97C(v35, v36);
      v38 = v37;

      if (v38)
      {
        v39 = *(v47 + 16);
        v39(v18, *(v34 + 56) + *(v47 + 72) * v49, v48);

        v40 = v47;
        v41 = v18;
        v42 = v48;
        (*(v47 + 32))(v22, v41, v48);
        v39(v11, v22, v42);
        (*(v40 + 56))(v11, 0, 1, v42);
        if (qword_281298D08 != -1)
        {
          swift_once();
        }

        type metadata accessor for StockListInteractor();
        swift_getWitnessTable();
        sub_220886B3C();
        v43 = v46;
        sub_22084DA0C(v11, v51, v46);
        Strong = swift_unknownObjectWeakLoadStrong();
        a4 = v45[0];
        if (Strong)
        {

          sub_22078997C();

          swift_unknownObjectRelease();
        }

        sub_2204AB5DC(v43, type metadata accessor for StockListToolbarModel);
        (*(v47 + 8))(v22, v48);
        goto LABEL_12;
      }
    }

    else
    {
    }

    a4 = v45[0];
LABEL_12:
    v33 = (*(v24 + 8))(v27, v23);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2207BF670(uint64_t a1)
{
  v18 = a1;
  v20 = *v1;
  v19 = sub_2208857BC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19, v4);
  v5 = sub_220888B7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298C00 != -1)
  {
    swift_once();
  }

  v17 = qword_281298C08;
  v22 = 2;
  sub_2204556F0(0, &unk_28127E120, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  sub_220888B6C();
  sub_220888B5C();
  v21 = v10;
  sub_22046F734(&qword_281298740, MEMORY[0x277D6CD38]);
  sub_2207C2478(0);
  sub_22046F734(&qword_28127EAA0, sub_2207C2478);
  sub_2208923FC();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v19;
  (*(v2 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v19);
  v13 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 2) = *(v20 + 80);
  *(v14 + 3) = *(v15 + 88);
  *(v14 + 4) = v11;
  (*(v2 + 32))(&v14[v13], &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_22088840C();

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2207BFA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(a4 + 64))(a2, a3, a4);
    sub_2204AB448();
    sub_22046F734(&qword_281297D28, sub_2204AB448);

    sub_22088B6DC();
  }

  return result;
}

uint64_t sub_2207BFB50(uint64_t a1)
{
  v2 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088C6AC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  LODWORD(a1) = (*(v7 + 88))(v11, v6);
  v12 = *MEMORY[0x277D6DFA0];
  result = (*(v7 + 8))(v11, v6);
  if (a1 == v12)
  {
    if (sub_2204D0EE0())
    {
      return sub_2207BBD88();
    }

    else
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_220789BE4();
        swift_unknownObjectRelease();
      }

      sub_22088867C();
      sub_2204CE544(v5);
      return sub_2204AB5DC(v5, type metadata accessor for StockListSelectionModel);
    }
  }

  return result;
}

uint64_t sub_2207BFD68()
{
  v1 = *v0;
  v2 = sub_220886A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + v1[15]);
  __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
  sub_2208863EC();
  __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
  v8 = sub_220885FCC();
  v9 = (*(v1[11] + 112))(v6, v8, v1[10]);

  (*(v3 + 8))(v6, v2);
  v11[1] = v9;
  sub_2204AB448();
  sub_22046F734(&qword_281297D28, sub_2204AB448);
  sub_22088B6DC();
}

void sub_2207BFF74()
{
  sub_22088582C();
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_220888E5C();
}

uint64_t sub_2207C0050()
{
  v1 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v82 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v83, v4);
  v93 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v91 = &v74 - v8;
  v9 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v87 = &v74 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v78 = &v74 - v21;
  sub_22046B2A0();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v88 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v90 = v25;
  v92 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v75 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v29 = v28;
  v74 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC();
  v77 = v33 - 8;
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  v38 = v37;
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = (&v74 - v45);
  v76 = v0;
  sub_22088B6BC();
  v96 = v97;
  sub_22045BB28(0);
  sub_22046F734(&qword_281297C90, sub_22045BB28);
  sub_22088BF9C();

  KeyPath = swift_getKeyPath();
  v95 = MEMORY[0x277D84F90];
  v86 = v39;
  v47 = *(v39 + 16);
  v79 = v46;
  v47(v42, v46, v38);
  sub_22046F734(&qword_281296EF0, sub_2204A1D20);
  sub_2208915BC();
  v48 = *(v77 + 44);
  sub_22046F734(&qword_281296EE8, sub_2204A1D20);
  sub_22089199C();
  if (*&v36[v48] != *v94)
  {
    v49 = (v74 + 16);
    v50 = (v74 + 8);
    do
    {
      v51 = sub_2208919BC();
      (*v49)(v32);
      v51(v94, 0);
      sub_2208919AC();
      v52 = v88;
      swift_getAtKeyPath();
      (*v50)(v32, v29);
      sub_2205D2A00(v52);
      sub_22089199C();
    }

    while (*&v36[v48] != *v94);
  }

  sub_2204AB5DC(v36, sub_2204B9DAC);
  (*(v86 + 8))(v79, v38);
  v53 = *(v95 + 16);
  if (v53)
  {
    KeyPath = *(v92 + 16);
    v54 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v77 = v95;
    v55 = v95 + v54;
    v88 = *(v92 + 72);
    v92 += 16;
    v56 = (v92 - 8);
    v79 = (v85 + 16);
    v86 = v85 + 32;
    v57 = MEMORY[0x277D84F90];
    v58 = v84;
    v59 = v75;
    v60 = v91;
    do
    {
      v62 = v90;
      KeyPath(v59, v55, v90);
      sub_22088AD8C();
      (*v56)(v59, v62);
      sub_2204D1A74(v60, v93, type metadata accessor for StockListModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2204AB5DC(v93, type metadata accessor for StockListModel);
        }
      }

      else
      {
        v64 = v82;
        sub_2204D1A74(v93, v82, type metadata accessor for StockListStockModel);
        v65 = v81;
        sub_22047939C(v64, v81, type metadata accessor for StockViewModel);
        sub_2204AB5DC(v64, type metadata accessor for StockListStockModel);
        v66 = v80;
        (*v79)(v80, v65, v58);
        sub_2204AB5DC(v65, type metadata accessor for StockViewModel);
        v67 = *v86;
        (*v86)(v87, v66, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_22048E1D8(0, v57[2] + 1, 1, v57);
        }

        v69 = v57[2];
        v68 = v57[3];
        if (v69 >= v68 >> 1)
        {
          v57 = sub_22048E1D8(v68 > 1, v69 + 1, 1, v57);
        }

        v57[2] = v69 + 1;
        v61 = v57 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v69;
        v58 = v84;
        v67(v61, v87, v84);
      }

      v55 += v88;
      --v53;
    }

    while (v53);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
    v58 = v84;
  }

  v70 = v85;
  v71 = v78;
  if (!v57[2])
  {
  }

  (*(v85 + 16))(v78, v57 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v58);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v94[0] = 0;
    sub_22077F41C(v71, v57, v94);

    (*(v70 + 8))(v71, v58);
    return swift_unknownObjectRelease();
  }

  else
  {

    return (*(v70 + 8))(v71, v58);
  }
}

uint64_t *sub_2207C0A70()
{
  v1 = *v0;
  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 176));
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 184));

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 208));
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 216));

  sub_2204AB5DC(v0 + *(*v0 + 240), sub_2204558B8);
  sub_2204AB5DC(v0 + *(*v0 + 248), sub_22045BAA4);
  return v0;
}

uint64_t sub_2207C0CFC()
{
  sub_2207C0A70();

  return swift_deallocClassInstance();
}

uint64_t sub_2207C0D9C()
{
  v1 = *(*(v0 + *(*v0 + 120)) + 120);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_2207C0E08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002208BECB0;
  if (v2 == 1)
  {
    v5 = 0x80000002208BECB0;
  }

  else
  {
    v3 = 0x6E696C6C6F726373;
    v5 = 0xE900000000000067;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x676E6974696465;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6E696C6C6F726373;
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6974696465;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_2207C0F0C()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207C0FB8()
{
  sub_22089146C();
}

uint64_t sub_2207C1050()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207C10F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2207C2600();
  *a1 = result;
  return result;
}

void sub_2207C1128(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000002208BECB0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6E696C6C6F726373;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6974696465;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2207C1190()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6E696C6C6F726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6974696465;
  }
}

void sub_2207C121C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2207C12DC(uint64_t a1)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - v8;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v24 - v16;
  sub_22088576C();
  if (v18)
  {

    sub_2207BFD68();
  }

  else
  {
    sub_22088577C();
    v19 = sub_220885DFC();
    v20 = (*(*(v19 - 8) + 48))(v17, 1, v19);
    sub_2204AB5DC(v17, sub_2204B5FB8);
    if (v20 == 1)
    {
      sub_22088578C();
      v21 = sub_220885D4C();
      v22 = (*(*(v21 - 8) + 48))(v9, 1, v21);
      sub_2204AB5DC(v9, sub_22045BAA4);
      if (v22 == 1 || (sub_22088575C() & 1) != 0)
      {
        sub_2207BF670(a1);
      }
    }

    else
    {
      sub_2207BFF74();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22088577C();
    sub_22088578C();
    sub_2204B683C(v13, v5);
    swift_unknownObjectRelease();
    sub_2204AB5DC(v5, sub_22045BAA4);
    return sub_2204AB5DC(v13, sub_2204B5FB8);
  }

  return result;
}

uint64_t sub_2207C15B0(uint64_t a1, uint64_t a2)
{
  sub_22088684C();
  sub_2207C1E64();
  sub_22088E0CC();
  swift_allocObject();
  sub_22088E07C();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  sub_22088E0AC();

  sub_22088E08C();
}

uint64_t sub_2207C16E0()
{
  v1 = *(v0 + 24);
  v2 = off_283413EC8[0];
  type metadata accessor for StockListDataManager();
  return v2(v1);
}

uint64_t sub_2207C1760(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockListSelectionModel() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_2207BEC60(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2207C1854()
{
  v1 = *(sub_22088582C() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_2207BE26C(v2, v3);
}

uint64_t objectdestroy_19Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2207C1960(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_22088582C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[4];
  v8 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2207BF18C(a1, v7, v1 + v6, v9, v10, v3, v4);
}

uint64_t sub_2207C1A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C1AAC()
{
  v1 = *(sub_2208854AC() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_2207BD11C(v2, v3, v4);
}

void sub_2207C1B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockListModel(255);
    v7 = sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_2208854AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2207C1C74()
{
  v1 = *(sub_2208854AC() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_2207BD518(v2, v3, v4);
}

uint64_t sub_2207C1D04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for StockListStockModel(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);
  v9 = v1[4];
  v10 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_2207BB000(a1, v9, v1 + v6, v8, v11, v12, v3, v4);
}

uint64_t sub_2207C1DC8(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListStockModel(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2207BB530(a1, v1 + v4, v5);
}

unint64_t sub_2207C1E64()
{
  result = qword_27CF59CC0;
  if (!qword_27CF59CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CC0);
  }

  return result;
}

uint64_t sub_2207C1ECC()
{
  v1 = *(v0 + 24);
  v2 = off_283413ED0[0];
  type metadata accessor for StockListDataManager();
  return v2(v1);
}

uint64_t sub_2207C1F68(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListStockModel(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
  v7 = *(v1 + 32);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2207B7DD8(a1, v7, (v1 + v4), v8);
}

uint64_t sub_2207C2090(uint64_t a1)
{
  v3 = *(sub_22088CE3C() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2207B6E90(a1, v4, v5);
}

uint64_t objectdestroy_128Tm()
{
  v1 = sub_22089030C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2207C2238()
{
  v1 = *(sub_22089030C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_220766568(v2, v3);
}

uint64_t sub_2207C22A8(uint64_t a1, uint64_t a2)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C2344(uint64_t a1)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2207C23D8()
{
  v0 = off_283413ED8[0];
  type metadata accessor for StockListDataManager();
  return v0();
}

uint64_t objectdestroy_25Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2207C2578()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_2208857BC() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2207BFA1C(v4, v5, v1, v2);
}

uint64_t sub_2207C2600()
{
  v0 = sub_22089270C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2207C26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v185 = a2;
  v196 = a3;
  v168 = sub_220884FDC();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v6);
  v165 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_220884F6C();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v8);
  v160 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220884DAC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v164 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088543C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v161 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208852DC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v159 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D83D88];
  sub_2207C4310(0, &qword_2812994C8, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v158 = &v156 - v22;
  sub_2207C4310(0, &qword_2812994C0, MEMORY[0x277CC93A0], v19);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v156 = &v156 - v25;
  v172 = sub_22088505C();
  v174 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v26);
  v157 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v166 = &v156 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v173 = &v156 - v33;
  v171 = sub_2208853AC();
  v170 = *(v171 - 1);
  MEMORY[0x28223BE20](v171, v34);
  v169 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_2208853CC();
  v183 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v36);
  v178 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v190 = &v156 - v40;
  v41 = sub_22088C32C();
  v192 = *(v41 - 8);
  v193 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v195 = &v156 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C4310(0, &qword_281299480, MEMORY[0x277CC9578], v19);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v175 = &v156 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v191 = &v156 - v49;
  v194 = sub_22088516C();
  v50 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v51);
  v176 = &v156 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v156 - v55;
  v57 = type metadata accessor for StockEarningsModel();
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v156 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v60;
  v61 = sub_22088685C();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v156 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2207C3BB8(v4, a1);
  v180 = v67;
  v181 = v66;
  v184 = v62;
  v68 = *(v62 + 16);
  v68(v65, a1, v61);
  sub_220649AF0(a1, v60);
  v69 = v57[5];
  v186 = v50;
  v70 = *(v50 + 16);
  v70(v56, a1 + v69, v194);
  v71 = v191;
  sub_2207C4220(a1 + v57[6], v191);
  (*(v192 + 16))(v195, v185, v193);
  v177 = v57;
  LODWORD(v179) = *(a1 + v57[8]);
  v72 = v196;
  v182 = v65;
  v185 = v61;
  v68(v196, v65, v61);
  v73 = v190;
  v74 = v194;
  v75 = type metadata accessor for StockFeedEarningsViewModel();
  v76 = v188;
  sub_220649AF0(v188, &v72[v75[5]]);
  v70(&v72[v75[6]], v56, v74);
  sub_2207C4220(v71, &v72[v75[7]]);
  v77 = &v72[v75[8]];
  v78 = v180;
  *v77 = v181;
  v77[1] = v78;
  v72[v75[9]] = v179;
  v79 = sub_22083A4D4();
  *&v72[v75[12]] = v79;
  v80 = v75[11];
  v81 = sub_2207EFC34(v195, v56);
  v181 = v82;
  sub_22088538C();
  v189 = v56;
  if (sub_2207EF05C(v71, v73, v56) < 1)
  {
    v196[v80] = v79 == 0;
    v87 = v186;
    v85 = v183;
    v86 = v178;
  }

  else
  {
    v196[v80] = 1;
    v83 = v175;
    sub_2207C4220(v71, v175);
    v84 = v186;
    if ((*(v186 + 48))(v83, 1, v74) != 1)
    {
      v99 = v74;
      v177 = v81;
      v180 = v75;
      v100 = v176;
      (*(v84 + 32))(v176, v83, v99);
      v101 = *MEMORY[0x277CC9998];
      v102 = v170;
      v103 = *(v170 + 104);
      v104 = v169;
      v105 = v171;
      v103(v169, v101, v171);
      v179 = sub_2208853BC();
      v106 = *(v102 + 8);
      v106(v104, v105);
      v103(v104, v101, v105);
      v107 = sub_2208853BC();
      v106(v104, v105);
      if (v179 == v107)
      {

        v179 = sub_220884F0C();
        v108 = *(v179 - 8);
        v177 = *(v108 + 56);
        v181 = v108 + 56;
        v109 = v156;
        v177(v156, 1, 1, v179);
        v110 = sub_220884EEC();
        v111 = *(v110 - 8);
        v171 = *(v111 + 56);
        v175 = v111 + 56;
        v112 = v158;
        (v171)(v158, 1, 1, v110);
        sub_22088524C();
        sub_22088533C();
        sub_22088540C();
        sub_220884D9C();
        v113 = v166;
        sub_220884F2C();
        v114 = v160;
        sub_220884F5C();
        sub_220884F1C();
        (*(v162 + 8))(v114, v163);
        v115 = v174 + 8;
        v170 = *(v174 + 8);
        (v170)(v113, v172);
        v174 = v115;
        v177(v109, 1, 1, v179);
        (v171)(v112, 1, 1, v110);
        sub_22088524C();
        sub_22088533C();
        sub_22088540C();
        sub_220884D9C();
        v116 = v157;
        sub_220884F2C();
        v117 = v165;
        sub_220884FBC();
        sub_220884F4C();
        (*(v167 + 8))(v117, v168);
        v118 = v116;
        v119 = v172;
        v120 = v170;
        (v170)(v118, v172);
        sub_2205F78B0();
        v121 = v119;
        sub_22088514C();
        v181 = v197;
        v179 = v198;
        sub_22088514C();
        v122 = v198;
        v178 = v197;
        sub_22088514C();
        v124 = v197;
        v123 = v198;
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v126 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_22089B140;
        v128 = MEMORY[0x277D837D0];
        *(v127 + 56) = MEMORY[0x277D837D0];
        v129 = sub_22048D860();
        *(v127 + 32) = v124;
        *(v127 + 40) = v123;
        *(v127 + 96) = v128;
        *(v127 + 104) = v129;
        v130 = v178;
        *(v127 + 64) = v129;
        *(v127 + 72) = v130;
        *(v127 + 80) = v122;
        *(v127 + 136) = v128;
        *(v127 + 144) = v129;
        v131 = v179;
        *(v127 + 112) = v181;
        *(v127 + 120) = v131;
        v94 = sub_22089139C();
        v96 = v132;

        v120(v113, v121);
        v120(v173, v121);
        v133 = *(v186 + 8);
        v134 = v194;
        v133(v176, v194);
        (*(v183 + 8))(v190, v187);
        (*(v192 + 8))(v195, v193);
        sub_22047EBB4(v191, &qword_281299480, MEMORY[0x277CC9578]);
        v133(v189, v134);
      }

      else
      {
        v140 = v84;
        v141 = v195;
        v142 = sub_2207EFC34(v195, v100);
        v144 = v143;
        type metadata accessor for Localized();
        v145 = swift_getObjCClassFromMetadata();
        v146 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_220899920;
        v148 = MEMORY[0x277D837D0];
        *(v147 + 56) = MEMORY[0x277D837D0];
        v149 = sub_22048D860();
        v150 = v181;
        *(v147 + 32) = v177;
        *(v147 + 40) = v150;
        *(v147 + 96) = v148;
        *(v147 + 104) = v149;
        *(v147 + 64) = v149;
        *(v147 + 72) = v142;
        *(v147 + 80) = v144;
        v94 = sub_22089139C();
        v96 = v151;

        v152 = *(v140 + 8);
        v153 = v194;
        v152(v100, v194);
        (*(v183 + 8))(v190, v187);
        (*(v192 + 8))(v141, v193);
        sub_22047EBB4(v191, &qword_281299480, MEMORY[0x277CC9578]);
        v152(v189, v153);
      }

      v76 = v188;
      v75 = v180;
      goto LABEL_14;
    }

    sub_22047EBB4(v83, &qword_281299480, MEMORY[0x277CC9578]);
    v85 = v183;
    v86 = v178;
    v87 = v84;
  }

  sub_22088538C();
  v88 = sub_2208852FC();
  v89 = *(v85 + 8);
  v90 = v187;
  v89(v86, v187);
  if (v88 & 1) != 0 || (sub_22088538C(), v91 = sub_22088532C(), v89(v86, v90), (v91))
  {

    type metadata accessor for Localized();
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];
    v94 = sub_220884CAC();
    v96 = v95;

    v97 = v190;
    v98 = v90;
  }

  else
  {
    type metadata accessor for Localized();
    v135 = swift_getObjCClassFromMetadata();
    v136 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_220899360;
    *(v137 + 56) = MEMORY[0x277D837D0];
    *(v137 + 64) = sub_22048D860();
    v138 = v181;
    *(v137 + 32) = v81;
    *(v137 + 40) = v138;
    v94 = sub_22089139C();
    v96 = v139;

    v97 = v190;
    v98 = v187;
  }

  v89(v97, v98);
  (*(v192 + 8))(v195, v193);
  sub_22047EBB4(v191, &qword_281299480, MEMORY[0x277CC9578]);
  (*(v87 + 8))(v189, v194);
LABEL_14:
  sub_2207C42B4(v76);
  result = (*(v184 + 8))(v182, v185);
  v155 = &v196[v75[10]];
  *v155 = v94;
  v155[1] = v96;
  return result;
}

uint64_t sub_2207C3BB8(uint64_t a1, uint64_t a2)
{
  v45 = sub_22088516C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220884BDC();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v40 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088543C();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2208853CC();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C4310(0, &qword_2812991D8, MEMORY[0x277D696C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v37 - v18;
  v20 = sub_22088638C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v37[1] = swift_getObjectType();
  v37[2] = v25;
  v37[3] = v26;
  sub_22088655C();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_22047EBB4(v19, &qword_2812991D8, MEMORY[0x277D696C0]);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    sub_22088538C();
    v37[0] = type metadata accessor for StockEarningsModel();
    (*(v38 + 16))(v12, a2 + *(v37[0] + 28), v39);
    sub_22088539C();
    sub_2207C4310(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v27 = sub_2208853AC();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220899360;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277CC9968], v27);
    sub_2207E1070(v30);
    swift_setDeallocating();
    (*(v28 + 8))(v30 + v29, v27);
    swift_deallocClassInstance();
    v31 = v41;
    sub_22088636C();
    v32 = v40;
    sub_22088530C();

    (*(v43 + 8))(v31, v45);
    v33 = sub_220884B6C();
    if ((v34 & 1) == 0)
    {
      if (v33 < 1)
      {
        v36 = sub_22088637C();
        (*(v46 + 8))(v32, v47);
        (*(v42 + 8))(v15, v44);
        (*(v21 + 8))(v24, v20);
        return v36;
      }

      sub_22088653C();
    }

    (*(v46 + 8))(v32, v47);
    (*(v42 + 8))(v15, v44);
    (*(v21 + 8))(v24, v20);
  }

  return 0;
}

uint64_t sub_2207C4220(uint64_t a1, uint64_t a2)
{
  sub_2207C4310(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C42B4(uint64_t a1)
{
  v2 = type metadata accessor for StockEarningsModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207C4310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207C4374(uint64_t a1, unsigned __int8 *a2)
{
  v178 = a2;
  v179 = a1;
  v172 = sub_220884E9C();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v2);
  v155 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_220447B54(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v169 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v170 = (&v147 - v10);
  sub_220447B54(0, &qword_27CF5A2F0, sub_2206230B4, v4);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v154 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v167 = &v147 - v16;
  v165 = sub_22089022C();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v17);
  v166 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22089041C();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v19);
  v163 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2208906CC();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v21);
  v160 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4();
  v168 = v23;
  v174 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v175 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2208876BC();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22088D1DC();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v30);
  v150 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32, v33);
  v151 = &v147 - v34;
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], v4);
  v147 = *(v35 - 8);
  v36 = *(v147 + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v148 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v156 = &v147 - v40;
  v41 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v149 = &v147 - v47;
  v48 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = (&v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v147 - v54;
  MEMORY[0x28223BE20](v56, v57);
  v59 = (&v147 - v58);
  MEMORY[0x28223BE20](v60, v61);
  v176 = &v147 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v173 = &v147 - v65;
  v66 = type metadata accessor for ForYouFeedRouteModel();
  MEMORY[0x28223BE20](v66, v67);
  v157 = &v147 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v72 = &v147 - v71;
  LODWORD(v178) = *v178;
  sub_2207C7784(v179, &v147 - v71, type metadata accessor for ForYouFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v89 = MEMORY[0x277CC9260];
      v90 = v170;
      sub_2207C7684(v72, v170, &qword_2812994E0, MEMORY[0x277CC9260]);
      v91 = v169;
      sub_2207C7704(v90, v169, &qword_2812994E0, v89);
      v92 = v171;
      v93 = v172;
      if ((*(v171 + 48))(v91, 1, v172) == 1)
      {
        v94 = MEMORY[0x277CC9260];
        sub_2207C7B54(v90, &qword_2812994E0, MEMORY[0x277CC9260]);
        v95 = v91;
        v96 = v94;
      }

      else
      {
        v111 = v155;
        (*(v92 + 32))(v155, v91, v93);
        v112 = [objc_opt_self() sharedApplication];
        v113 = sub_220884E3C();
        sub_2205CE854(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_220448A78(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
        v114 = sub_22089125C();

        [v112 openURL:v113 options:v114 completionHandler:0];

        (*(v92 + 8))(v111, v93);
        v96 = MEMORY[0x277CC9260];
        v95 = v90;
      }

      return sub_2207C7B54(v95, &qword_2812994E0, v96);
    }

    v83 = v176;
    sub_2207C7BC4(v72, v176, type metadata accessor for StocksActivity.Article);
    sub_2207C7784(v83, v59, type metadata accessor for StocksActivity.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = *v59;
      v85 = v174;
    }

    else
    {
      sub_2204481D8();
      v98 = *(v97 + 64);
      sub_2207C7BC4(v59, v29, MEMORY[0x277D2FB40]);
      v84 = sub_22088768C();
      sub_2207C7884(v29, MEMORY[0x277D2FB40]);
      sub_2207C7824(v59 + v98, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220448010);
      v85 = v174;
      if (!v84)
      {
        v126 = v176;
        v127 = v157;
        sub_2207C7784(v176, v157, type metadata accessor for StocksActivity.Article);
        swift_storeEnumTagMultiPayload();
        v187[0] = v178;
        sub_2207C4374(v127, v187);
        sub_2207C7884(v127, type metadata accessor for ForYouFeedRouteModel);
        v141 = v126;
        return sub_2207C7884(v141, type metadata accessor for StocksActivity.Article);
      }
    }

    v179 = v84;
    *&v185[0] = v84;
    (*(v158 + 104))(v160, *MEMORY[0x277D33A68], v159);
    (*(v161 + 104))(v163, *MEMORY[0x277D33570], v162);
    (*(v164 + 104))(v166, *MEMORY[0x277D33270], v165);
    memset(v187, 0, sizeof(v187));
    sub_22044826C();
    swift_unknownObjectRetain();
    v99 = v175;
    sub_2208905CC();
    v100 = v177[12];
    ObjectType = swift_getObjectType();
    sub_22088E3DC();
    v102 = v167;
    v103 = v168;
    v171 = *(v85 + 16);
    (v171)(v167, v99, v168);
    v170 = *(v85 + 56);
    (v170)(v102, 0, 1, v103);
    v172 = ObjectType;
    v173 = v100;
    LOBYTE(v100) = sub_22088B7DC();

    sub_2207C7B54(v102, &qword_27CF5A2F0, sub_2206230B4);
    if ((v100 & 1) == 0)
    {
      v55 = v176;
      v116 = v157;
      sub_2207C7784(v176, v157, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      v187[0] = v178;
      sub_2207C4374(v116, v187);
      swift_unknownObjectRelease();
      sub_2207C7884(v116, type metadata accessor for ForYouFeedRouteModel);
      (*(v85 + 8))(v175, v103);
      goto LABEL_27;
    }

    sub_22088E3DC();
    v104 = v154;
    v105 = v175;
    (v171)(v154, v175, v103);
    (v170)(v104, 0, 1, v103);
    sub_22088B81C();
    swift_unknownObjectRelease();

    sub_2207C7B54(v104, &qword_27CF5A2F0, sub_2206230B4);
    (*(v174 + 8))(v105, v103);
    v141 = v176;
    return sub_2207C7884(v141, type metadata accessor for StocksActivity.Article);
  }

  if (EnumCaseMultiPayload)
  {
    sub_2207C7BC4(v72, v55, type metadata accessor for StocksActivity.Article);
    sub_2207C7784(v55, v51, type metadata accessor for StocksActivity.Article);
    v86 = swift_getEnumCaseMultiPayload();
    if (v86 == 1)
    {
      v88 = *v51;
    }

    else
    {
      sub_2204481D8();
      v107 = *(v106 + 64);
      sub_2207C7BC4(v51, v29, MEMORY[0x277D2FB40]);
      v88 = sub_22088768C();
      sub_2207C7884(v29, MEMORY[0x277D2FB40]);
      v86 = sub_2207C7824(v51 + v107, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220448010);
      if (!v88)
      {
        v128 = v157;
        sub_2207C7784(v55, v157, type metadata accessor for StocksActivity.Article);
        swift_storeEnumTagMultiPayload();
        v187[0] = v178;
        sub_2207C4374(v128, v187);
        sub_2207C7884(v128, type metadata accessor for ForYouFeedRouteModel);
        goto LABEL_27;
      }
    }

    MEMORY[0x28223BE20](v86, v87);
    v108 = v177;
    *(&v147 - 2) = v177;
    *(&v147 - 1) = v55;
    sub_220888FBC();
    v109 = swift_allocObject();
    *(v109 + 16) = v88;
    *(v109 + 24) = v108;
    swift_unknownObjectRetain();

    v110 = sub_220888D9C();
    sub_220888E4C();
    swift_unknownObjectRelease();

LABEL_27:
    v141 = v55;
    return sub_2207C7884(v141, type metadata accessor for StocksActivity.Article);
  }

  v74 = v173;
  sub_2207C7BC4(v72, v173, type metadata accessor for StocksActivity.Article);
  v75 = v178;
  if (v178)
  {
    v76 = v177;
    __swift_project_boxed_opaque_existential_1(v177 + 35, v177[38]);
    v77 = sub_22088B89C();
    if (v77)
    {
      v78 = v77;
      sub_2207C7784(v74, v44, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      __swift_project_boxed_opaque_existential_1(v76 + 35, v76[38]);
      v79 = v78;
      v80 = sub_22088B8AC();
      v81 = v80;
      if (v75 == 1)
      {

        v82 = v150;
        *v150 = v81;
        v142 = MEMORY[0x277D6E588];
      }

      else
      {
        if (v75 == 2)
        {

          v82 = v150;
          *v150 = 0;
          v82[1] = v81;
        }

        else
        {
          v143 = v150;
          *v150 = v78;
          v143[1] = v80;
          v82 = v143;
        }

        v142 = MEMORY[0x277D6E590];
      }

      v144 = v153;
      v145 = v152;
      v146 = v151;
      (*(v152 + 104))(v82, *v142, v153);
      (*(v145 + 32))(v146, v82, v144);
      sub_22088B01C();

      (*(v145 + 8))(v146, v144);
      sub_2207C7884(v44, type metadata accessor for StocksActivity);
    }

    v141 = v74;
    return sub_2207C7884(v141, type metadata accessor for StocksActivity.Article);
  }

  v117 = v177;
  v118 = v177[10];
  v119 = v149;
  sub_2207C7784(v74, v149, type metadata accessor for StocksActivity.Article);
  swift_storeEnumTagMultiPayload();
  v120 = v117[18];
  v121 = sub_22088969C();
  v122 = v156;
  (*(*(v121 - 8) + 56))(v156, 1, 1, v121);
  sub_22046DA2C((v117 + 19), v187);
  v186 = 0;
  memset(v185, 0, sizeof(v185));
  v184 = v118;
  sub_2205A0924(v185, &v180, &unk_281298970, &unk_281298980);
  if (v181)
  {
    sub_220458198(&v180, v182);
    v123 = sub_220597454(v182);
    v179 = v124;
    v178 = v125;
    __swift_destroy_boxed_opaque_existential_1(v182);
  }

  else
  {
    sub_2207C7824(&v180, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v123 = qword_2812908F8;
    v129 = qword_281290900;
    v130 = qword_281290908;

    v179 = v129;
    v178 = v130;
    sub_2204A80F4(v129);
  }

  v131 = v119;
  v181 = sub_22088731C();
  *&v180 = v120;
  v132 = MEMORY[0x277D686D0];
  v133 = v148;
  sub_2207C7704(v122, v148, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v187, v182, &unk_281296D10, &qword_281296D20);
  v134 = (*(v147 + 80) + 24) & ~*(v147 + 80);
  v135 = (v36 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v136 = swift_allocObject();
  *(v136 + 16) = v120;
  sub_2207C7684(v133, v136 + v134, &qword_281298480, v132);
  v137 = v136 + v135;
  v138 = v182[1];
  *v137 = v182[0];
  *(v137 + 16) = v138;
  *(v137 + 32) = v183;
  v139 = (v136 + ((v135 + 47) & 0xFFFFFFFFFFFFFFF8));
  v140 = v179;
  *v139 = v123;
  v139[1] = v140;
  v139[2] = v178;
  swift_retain_n();

  sub_2204A80F4(v140);
  sub_2204549FC();
  sub_220448A78(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v140);
  sub_2207C7824(v185, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2207C7824(v187, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2207C7B54(v156, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2207C7884(v131, type metadata accessor for StocksActivity);
  sub_2207C7884(v173, type metadata accessor for StocksActivity.Article);
  return sub_2207C7824(&v180, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207C5CA8(uint64_t a1, uint64_t a2)
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v37 = *(v4 - 8);
  v5 = *(v37 + 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 80);
  sub_2207C7784(a2, v15, type metadata accessor for StocksActivity.Article);
  swift_storeEnumTagMultiPayload();
  v17 = *(a1 + 144);
  v18 = sub_22088969C();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_22046DA2C(a1 + 152, v46);
  sub_22046DA2C(a1 + 40, v45);
  v47 = v16;
  sub_2205A0924(v45, &v41, &unk_281298970, &unk_281298980);
  v36 = v15;
  if (v42)
  {
    sub_220458198(&v41, v43);
    v19 = sub_220597454(v43);
    v39 = v20;
    v38 = v21;
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_2207C7824(&v41, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v19 = qword_2812908F8;
    v22 = qword_281290900;
    v23 = qword_281290908;

    v39 = v22;
    v38 = v23;
    sub_2204A80F4(v22);
  }

  v42 = sub_22088731C();
  *&v41 = v17;
  v24 = MEMORY[0x277D686D0];
  sub_2207C7704(v11, v7, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v46, v43, &unk_281296D10, &qword_281296D20);
  v25 = (v37[80] + 24) & ~v37[80];
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v11;
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  sub_2207C7684(v7, v27 + v25, &qword_281298480, v24);
  v28 = v27 + v26;
  v29 = v43[1];
  *v28 = v43[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v44;
  v30 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  v31 = v39;
  *v30 = v19;
  v30[1] = v31;
  v30[2] = v38;
  swift_retain_n();

  sub_2204A80F4(v31);
  sub_2204549FC();
  sub_220448A78(&unk_281297EC0, sub_2204549FC);
  v32 = v36;
  v33 = v40;
  sub_22088E92C();

  if (v33)
  {
    sub_2207C7824(&v41, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v34 = sub_220888EBC();

    sub_2204DA45C(v31);
    sub_2207C7824(v45, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2207C7824(v46, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7B54(v37, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2207C7884(v32, type metadata accessor for StocksActivity);
    return v34;
  }

  else
  {
    sub_2207C7824(v45, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2207C7824(v46, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7B54(v37, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2207C7884(v32, type metadata accessor for StocksActivity);
    sub_2207C7824(&v41, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2204DA45C(v31);
  }

  return v19;
}

uint64_t sub_2207C6398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_220447B54(0, &qword_27CF5A2F0, sub_2206230B4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v42 = &v37 - v9;
  v10 = sub_22089022C();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22089041C();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2208906CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4();
  v23 = v22;
  v46 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D33A68], v17, v25);
  (*(v13 + 104))(v16, *MEMORY[0x277D33570], v38);
  (*(v40 + 104))(v39, *MEMORY[0x277D33270], v41);
  v47 = 0u;
  v48 = 0u;
  sub_22044826C();
  swift_unknownObjectRetain();
  sub_2208905CC();
  swift_getObjectType();
  sub_22088E3DC();
  v28 = v46;
  v29 = v42;
  v40 = *(v46 + 16);
  v41 = v27;
  (v40)(v42, v27, v23);
  v30 = *(v28 + 56);
  v43 = v23;
  v39 = v30;
  (v30)(v29, 0, 1, v23);
  v31 = v29;
  LOBYTE(v29) = sub_22088B7DC();

  sub_2207C7B54(v31, &qword_27CF5A2F0, v44);
  if (v29)
  {
    sub_22088E3DC();
    v32 = v37;
    v33 = v41;
    v34 = v43;
    (v40)(v37, v41, v43);
    (v39)(v32, 0, 1, v34);
    v35 = v45;
    sub_22088B81C();
    if (v35)
    {
    }

    sub_2207C7B54(v32, &qword_27CF5A2F0, sub_2206230B4);
  }

  else
  {
    v34 = v43;
    v33 = v41;
  }

  return (*(v46 + 8))(v33, v34);
}

uint64_t sub_2207C6894(uint64_t a1)
{
  v3 = type metadata accessor for ForYouFeedRouteModel();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447B54(0, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for StocksActivity(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C7784(a1, v6, type metadata accessor for ForYouFeedRouteModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2207C7884(v6, type metadata accessor for ForYouFeedRouteModel);
    v20 = 1;
  }

  else
  {
    sub_2207C7BC4(v6, v10, type metadata accessor for StocksActivity.Article);
    sub_2207C7BC4(v10, v14, type metadata accessor for StocksActivity.Article);
    swift_storeEnumTagMultiPayload();
    v20 = 0;
  }

  (*(v16 + 56))(v14, v20, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2207C7B54(v14, qword_281295190, type metadata accessor for StocksActivity);
    return 0;
  }

  else
  {
    sub_2207C7BC4(v14, v19, type metadata accessor for StocksActivity);
    v22 = *(v1 + 80);
    v23 = *(v1 + 144);
    sub_22046DA2C(v1 + 152, v31);
    v30[4] = v22;
    v30[3] = sub_22088731C();
    v30[0] = v23;
    sub_2205A0924(v31, v28, &unk_281296D10, &qword_281296D20);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = v28[1];
    *(v24 + 24) = v28[0];
    *(v24 + 40) = v25;
    *(v24 + 56) = v29;
    sub_2204549FC();
    sub_220448A78(&unk_281297EC0, sub_2204549FC);
    swift_retain_n();
    v26 = sub_22088E91C();

    sub_2207C7824(v31, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7884(v19, type metadata accessor for StocksActivity);
    sub_2207C7824(v30, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    return v26;
  }
}