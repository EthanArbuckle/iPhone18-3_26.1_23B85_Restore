void sub_1C1A3AB90()
{
  v1 = v0;
  v2 = [v0 superview];
  [v2 layoutIfNeeded];

  v3 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass() && (v4 = sub_1C1A6E2EC()) != 0)
    {
      v5 = v4;
      sub_1C198FB8C(0, &qword_1EDE63970);
      v19 = v5;
      v6 = sub_1C19CF6C8();
      v7 = v19;
      if ((v8 & 1) == 0)
      {
        v7 = v19;
        if (v6 >= 1)
        {
          v9 = v6;
          sub_1C1A6F64C();
          sub_1C198FB8C(0, &qword_1EDE63F30);
          v10 = sub_1C1A6F8EC();
          sub_1C19A9E58(&unk_1EBF03FD0);
          v11 = swift_allocObject();
          v12 = MEMORY[0x1E69E6530];
          *(v11 + 16) = xmmword_1C1A73A30;
          v13 = MEMORY[0x1E69E65A8];
          *(v11 + 56) = v12;
          *(v11 + 64) = v13;
          *(v11 + 32) = v9;
          sub_1C1A6F18C();

          v7 = sub_1C1A6F63C();
        }
      }

      sub_1C1A3AEC8(v7);
      v14 = [objc_allocWithZone(MEMORY[0x1E698B398]) initWithNumberValue_];
      v15 = sub_1C1A6E30C();
      v16 = sub_1C1A3B2C0(v15);
      v17 = sub_1C1A3A138();
      v18 = [objc_allocWithZone(MEMORY[0x1E698B3C0]) initWithID:v14 kind:*MEMORY[0x1E698B360] context:v16];
      [v17 setRequest_];

      [objc_msgSend(*&v1[v3] metricsHelper)];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C1A3AEC8(void *a1)
{
  v2 = v1;
  sub_1C198FB8C(0, &qword_1EDE63970);
  if (sub_1C19CF498())
  {
    v4 = 1;
  }

  else
  {
    sub_1C1A6DB2C();
    v5 = sub_1C1A6E45C();
    v4 = v5 == sub_1C1A6E45C();
  }

  v6 = sub_1C1A3A138();
  [v6 setAdMarkerHidden_];

  v7 = sub_1C19CF498();
  v8 = MEMORY[0x1E69E6158];
  if (v7)
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v27 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1A73CD0;
    *(v9 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v9 + 64) = sub_1C1A0F564();
    *(v9 + 32) = a1;
    v10 = *&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent];
    v11 = a1;
    v12 = [v10 identifier];
    v13 = sub_1C1A6F3CC();
    v15 = v14;

    v8 = MEMORY[0x1E69E6158];
    *(v9 + 96) = MEMORY[0x1E69E6158];
    *(v9 + 104) = sub_1C199E518();
    *(v9 + 72) = v13;
    *(v9 + 80) = v15;
    sub_1C1A6F18C();
  }

  if (sub_1C19CF5B0())
  {
    v16 = 2;
  }

  else
  {
    v17 = [v2 traitCollection];
    v16 = [v17 userInterfaceStyle];
  }

  [*&v2[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] setOverrideUserInterfaceStyle_];
  result = sub_1C19CF5B0();
  if (result)
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73CD0;
    *(v20 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v20 + 64) = sub_1C1A0F564();
    *(v20 + 32) = a1;
    v21 = *&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent];
    v22 = a1;
    v23 = [v21 identifier];
    v24 = sub_1C1A6F3CC();
    v26 = v25;

    *(v20 + 96) = v8;
    *(v20 + 104) = sub_1C199E518();
    *(v20 + 72) = v24;
    *(v20 + 80) = v26;
    sub_1C1A6F18C();
  }

  return result;
}

id sub_1C1A3B2C0(uint64_t a1)
{
  sub_1C198FB8C(0, &qword_1EDE63970);
  v2 = sub_1C19CF7A4();
  if ((v3 & 1) == 0 && v2 >= 1)
  {
    v4 = v2;
    v5 = sub_1C1A6E04C();
    if ((v6 & 1) == 0)
    {
      v7 = v5;
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v8 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E6530];
      *(v9 + 16) = xmmword_1C1A73A30;
      v11 = MEMORY[0x1E69E65A8];
      *(v9 + 56) = v10;
      *(v9 + 64) = v11;
      *(v9 + 32) = v4;
      sub_1C1A6F18C();

      a1 = v7;
    }
  }

  v12 = MEMORY[0x1E698B318];
  v13 = 15.0;
  v14 = 15.0;
  if (a1 == 4788)
  {
    v12 = MEMORY[0x1E698B310];
  }

  else
  {
    v14 = 15.0;
  }

  if (a1 == 4789)
  {
    v12 = MEMORY[0x1E698B308];
    v13 = 10.0;
    v14 = 10.0;
  }

  if (a1 == 4790)
  {
    v12 = MEMORY[0x1E698B300];
    v15 = 10.0;
  }

  else
  {
    v15 = v13;
  }

  if (a1 == 4790)
  {
    v16 = 10.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = *v12;
  v18 = sub_1C1A3A138();
  [v18 setLayoutMargins_];

  return v17;
}

void sub_1C1A3B578()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___bottomBorder);
}

id AppAdView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAdView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppAdView()
{
  result = qword_1EBF04C38;
  if (!qword_1EBF04C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1A3B710(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1C69055B0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1C1A6F9EC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1C1A3B838(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C1A3B8E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v39 = a1;
  v40 = a3;
  v8 = sub_1C19A9E58(&qword_1EBF03C30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PreloadedContentDiagnosticPayload();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1A6D5DC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D5AC();
  v19 = *(v11 + 20);
  v41 = v15;
  v42 = v16;
  v20 = v16;
  v21 = v14;
  v22 = v39;
  (*(v20 + 16))(v21 + v19, v18, v15);
  v23 = v40;
  *v21 = v40;
  v21[1] = a4;
  sub_1C1A3BEE4(v21, v10);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  v38 = a2;
  v24 = a2;
  v25 = v23;
  sub_1C19B590C(v10, v22, v24);
  swift_endAccess();
  swift_beginAccess();
  v26 = *(v5 + 56);
  v45[0] = v23;
  v45[1] = a4;
  v44 = v45;

  LOBYTE(v10) = sub_1C1A3B838(sub_1C1A3BF48, v43, v26);

  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v27 = *(v5 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 56) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1C19CADF4(0, *(v27 + 2) + 1, 1, v27);
      *(v5 + 56) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1C19CADF4((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = v23;
    *(v31 + 5) = a4;
    *(v5 + 56) = v27;
    swift_endAccess();
  }

  v32 = sub_1C1A6F64C();
  sub_1C199E4CC();
  v33 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v33, v32))
  {

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45[0] = v35;
    *v34 = 136446722;
    *(v34 + 4) = sub_1C19A1884(v22, v38, v45);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1C19A1884(v25, a4, v45);
    *(v34 + 22) = 2050;
    *(v34 + 24) = *(*(v5 + 56) + 16);

    _os_log_impl(&dword_1C198D000, v33, v32, "[Diagnostic] preloaded %{public}s for %{public}s. Article count: %{public}ld", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v35, -1, -1);
    MEMORY[0x1C6906260](v34, -1, -1);
  }

  sub_1C1A3BE88(v21);
  return (*(v42 + 8))(v18, v41);
}

uint64_t sub_1C1A3BD84()
{
  sub_1C199935C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A3BDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreloadedContentDiagnosticPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A3BE30(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C1A6FCEC() & 1;
  }
}

uint64_t sub_1C1A3BE88(uint64_t a1)
{
  v2 = type metadata accessor for PreloadedContentDiagnosticPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1A3BEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreloadedContentDiagnosticPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A3BF48(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C1A6FCEC() & 1;
  }
}

void sub_1C1A3BFA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v75 = a1;
  v67 = a2;
  v70 = sub_1C1A6D65C();
  v76 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1A6D68C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = sub_1C1A6D6AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = sub_1C19A9E58(&qword_1EBF04C48);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  sub_1C1A6D66C();
  sub_1C1A6D69C();
  v68 = *(v10 + 8);
  v69 = v9;
  v68(v15, v9);
  sub_1C1A6D67C();
  v22 = *(v4 + 8);
  v72 = v4 + 8;
  v73 = v3;
  v22(v8, v3);
  v23 = v76;
  v24 = *(v76 + 48);
  v25 = v70;
  if (v24(v21, 1) == 1)
  {
    sub_1C1A3C6DC(v21);
    v65 = 0xE000000000000000;
    v66 = 0;
  }

  else
  {
    v26 = sub_1C1A6D63C();
    v65 = v27;
    v66 = v26;
    (*(v23 + 8))(v21, v25);
  }

  v28 = v25;
  sub_1C1A6D66C();
  v29 = v71;
  sub_1C1A6D69C();
  v68(v12, v69);
  sub_1C1A6D67C();
  v22(v29, v73);
  if ((v24)(v18, 1, v28) == 1)
  {
    sub_1C1A3C6DC(v18);
    v30 = 0;
    v31 = 0;
    v32 = v76;
  }

  else
  {
    v30 = sub_1C1A6D63C();
    v31 = v33;
    v32 = v76;
    (*(v76 + 8))(v18, v28);
  }

  v34 = v74;
  sub_1C1A6D64C();
  v35 = sub_1C1A6D63C();
  v37 = v36;
  (*(v32 + 8))(v34, v28);
  if (v31)
  {
    if (v30 == v35 && v31 == v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = sub_1C1A6FCEC();
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = [objc_opt_self() currentTraitCollection];
  v40 = [v39 preferredContentSizeCategory];

  v41 = v75;
  v42 = [*(v75 + OBJC_IVAR___APPrivacyMarker_markerLabel) font];
  if (v42)
  {
    v43 = v42;
    [v42 pointSize];
    v45 = v44;
    v46 = v44;

    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -9.22337204e18)
    {
      if (v45 < 9.22337204e18)
      {
        v77 = v45;
        v29 = sub_1C1A6FCCC();
        v30 = v47;
        v43 = [*(v41 + OBJC_IVAR___APPrivacyMarker_markerView) layer];
        [v43 cornerRadius];
        v49 = v48;
        v50 = v48;

        if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v49 > -9.22337204e18)
          {
            if (v49 < 9.22337204e18)
            {
              v76 = v30;
              v77 = v49;
              v43 = sub_1C1A6FCCC();
              v41 = v51;
              sub_1C19A9E58(&unk_1EBF03FD0);
              v52 = swift_allocObject();
              v75 = xmmword_1C1A73A30;
              *(v52 + 16) = xmmword_1C1A73A30;
              v53 = sub_1C19F8178(v38 & 1);
              v54 = MEMORY[0x1E69E63B0];
              v55 = MEMORY[0x1E69E6438];
              *(v52 + 56) = MEMORY[0x1E69E63B0];
              *(v52 + 64) = v55;
              *(v52 + 32) = v53;
              v35 = sub_1C1A6F3EC();
              v30 = v56;
              v57 = swift_allocObject();
              *(v57 + 16) = v75;
              v58 = sub_1C19F7B54();
              *(v57 + 56) = v54;
              *(v57 + 64) = v55;
              *(v57 + 32) = v58;
              v38 = sub_1C1A6F3EC();
              v22 = v59;
              if (qword_1EDE62750 == -1)
              {
LABEL_22:
                v60 = qword_1EDE66528;
                v61 = unk_1EDE66530;

                v62 = v67;
                v63 = v65;
                *v67 = v66;
                v62[1] = v63;
                v64 = v76;
                v62[2] = v29;
                v62[3] = v64;
                v62[4] = v43;
                v62[5] = v41;
                v62[6] = v35;
                v62[7] = v30;
                v62[8] = v38;
                v62[9] = v22;
                v62[10] = v60;
                v62[11] = v61;
                return;
              }

LABEL_29:
              swift_once();
              goto LABEL_22;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1C1A3C6DC(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF04C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1A3C768()
{
  result = qword_1EBF04C50;
  if (!qword_1EBF04C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04C50);
  }

  return result;
}

unint64_t sub_1C1A3C7C0()
{
  result = qword_1EBF04C58;
  if (!qword_1EBF04C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04C58);
  }

  return result;
}

uint64_t sub_1C1A3C814(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_38:
    v3 = sub_1C1A6F9EC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return a1;
  }

  v4 = 0;
  v5 = a1;
  while (2)
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C69055B0](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_37;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (([v7 masksToBounds] & 1) == 0)
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    v9 = sub_1C19C5FAC();
    v10 = v5 >> 62;
    v18 = v5 >> 62;
    if (!(v5 >> 62))
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= i)
      {
        goto LABEL_16;
      }

LABEL_39:
      __break(1u);
      break;
    }

    result = sub_1C1A6F9EC();
    v10 = v5 >> 62;
    if (result < i)
    {
      goto LABEL_39;
    }

LABEL_16:
    if (v9 >> 62)
    {
      v15 = sub_1C1A6F9EC();
      v10 = v5 >> 62;
      v12 = v15;
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v9;
    if (v10)
    {
      v13 = v12;
      result = sub_1C1A6F9EC();
      v12 = v13;
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = result + v12;
    if (!__OFADD__(result, v12))
    {
      v16 = v12;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v18)
        {
          if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      else if (!v18)
      {
LABEL_28:
        v5 = sub_1C1A6FB0C();
LABEL_29:
        sub_1C19E7A04(i, i, v16, v17);

        if (v4 != v3)
        {
          continue;
        }

        return v5;
      }

      sub_1C1A6F9EC();
      goto LABEL_28;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1A3CA5C()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
  }

  else
  {
    v6 = *MEMORY[0x1E6989DF8];
    v7 = sub_1C1A6EDFC();
    v8 = *(v7 - 8);
    (*(v8 + 104))(v4, v6, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    sub_1C1A6ED0C();
    swift_allocObject();
    v5 = sub_1C1A6ECEC();
    *(v1 + 48) = v5;
  }

  return v5;
}

uint64_t sub_1C1A3CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v88 = a5;
  v89 = a6;
  v82 = a4;
  v81 = a3;
  v83 = a2;
  v9 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v74 - v10;
  v95 = sub_1C1A6E4BC();
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v74 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v74 - v15;
  v16 = sub_1C1A6D5DC();
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1A6D62C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  sub_1C1A3CA5C();
  sub_1C1A6ECDC();

  sub_1C1A6D61C();
  v98 = sub_1C1A6D5EC();
  v90 = v26;
  v80 = v20;
  v27 = *(v20 + 8);
  v92 = v19;
  v87 = v20 + 8;
  v85 = v27;
  v27(v25, v19);
  sub_1C1A6D61C();
  v96 = v18;
  sub_1C1A6D5CC();
  v91 = v22;
  v28 = sub_1C1A6D5EC();
  v30 = v29;
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v97 = qword_1EDE66578;
  v31 = sub_1C19E5F0C();
  v33 = v32;
  v34 = a1;
  v86 = a1;
  v76 = a1;
  v35 = qword_1C1A77968[a1];
  type metadata accessor for AppStoreRequestTask();
  v36 = swift_allocObject();
  *(v36 + 96) = 0;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 104) = 0;
  *(v36 + 112) = 0;
  *(v36 + 120) = 0;
  sub_1C1A6D5CC();
  v37 = v90;
  *(v36 + 16) = v98;
  *(v36 + 24) = v37;
  *(v36 + 48) = v28;
  *(v36 + 56) = v30;
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;
  *(v36 + 80) = v35;
  v39 = sub_1C1A3DE18(&qword_1EBF04C60, v38, type metadata accessor for AppStoreDynamicDataProvider);
  swift_beginAccess();
  *(v36 + 96) = v39;
  swift_unknownObjectWeakAssign();
  v90 = v7;
  v40 = objc_allocWithZone(sub_1C1A6E8BC());

  v98 = sub_1C1A6E84C();
  v41 = v99;
  v42 = *(v99 + 104);
  v43 = **(&unk_1E81480B0 + v34);
  v44 = v78;
  v45 = v95;
  v42(v78, v43, v95);
  sub_1C19E64C4(v44, 0, 0);
  v46 = *(v41 + 8);
  v46(v44, v45);
  v47 = v79;
  v77 = v42;
  v42(v79, v43, v45);
  v48 = v46;
  sub_1C19E68C0();
  v49 = v45;
  v50 = v98;
  LODWORD(v34) = v76;
  v99 = v41 + 8;
  v46(v47, v49);
  sub_1C1A6E87C();

  sub_1C1A6E85C();

  if (v34 == 2)
  {
    v51 = *MEMORY[0x1E69C6098];
    v52 = v75;
    v53 = v95;
    v54 = v77;
    v77(v75, v51, v95);
    sub_1C19E64C4(v52, 0, 0);
    v48(v52, v53);
    v54(v52, v51, v53);
    sub_1C19E68C0();
    v48(v52, v53);
    sub_1C1A6E89C();

    sub_1C1A6E88C();

    v55 = *MEMORY[0x1E69C60A0];
    v56 = v77;
    v77(v52, v55, v53);
    sub_1C19E64C4(v52, 0, 0);
    v48(v52, v53);
    v56(v52, v55, v53);
    sub_1C19E68C0();
    v57 = v53;
    v50 = v98;
    v48(v52, v57);
    sub_1C1A6E89C();

    sub_1C1A6E88C();
  }

  sub_1C1A6E8AC();
  sub_1C1A6E83C();
  sub_1C1A6E86C();
  sub_1C1A6E9EC();
  sub_1C1A6E82C();
  v58 = v80;
  v59 = v84;
  v61 = v91;
  v60 = v92;
  (*(v80 + 16))(v84, v91, v92);
  (*(v58 + 56))(v59, 0, 1, v60);
  v62 = sub_1C1A6E9DC();
  v63 = swift_allocObject();
  *(v63 + 16) = v86;
  v64 = v88;
  v65 = v89;
  *(v63 + 24) = v36;
  *(v63 + 32) = v64;
  v66 = v90;
  *(v63 + 40) = v65;
  *(v63 + 48) = v66;

  sub_1C1A6E95C();

  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v67 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C19A9E58(&qword_1EBF03E20);
  v68 = sub_1C1A6E34C();
  v69 = *(v68 - 8);
  v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C1A73A30;
  *(v71 + v70) = 1;
  (*(v69 + 104))(v71 + v70, *MEMORY[0x1E69C6018], v68);
  sub_1C1A6E96C();

  (*(v93 + 8))(v96, v94);
  v85(v61, v60);
  v72 = *(v36 + 72);
  *(v36 + 72) = v62;

  return v36;
}

void sub_1C1A3D5E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *), uint64_t a6, uint64_t a7)
{
  v14 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v15 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = a5;
    v30 = v28;
    *v16 = 136315138;
    v17 = sub_1C198FB8C(0, &qword_1EDE62710);
    v18 = MEMORY[0x1C6904FE0](a1, v17);
    v20 = v14;
    v21 = a6;
    v22 = a7;
    v23 = a4;
    v24 = a3;
    v25 = sub_1C19A1884(v18, v19, &v30);

    *(v16 + 4) = v25;
    a3 = v24;
    a4 = v23;
    a7 = v22;
    a6 = v21;
    _os_log_impl(&dword_1C198D000, v15, v20, "[PCUI] apContentDataItems %s", v16, 0xCu);
    sub_1C199935C(v28);
    a5 = v29;
    MEMORY[0x1C6906260](v28, -1, -1);
    MEMORY[0x1C6906260](v16, -1, -1);
  }

  if (a2 >> 62)
  {
    sub_1C19A9E58(&qword_1EBF04478);
    v27 = sub_1C1A6FB9C();

    a2 = v27;
  }

  else
  {
    sub_1C1A6FCFC();
  }

  sub_1C1A3DE70(a3, a2, a4, a5, a6, a7);

  v26 = *(a4 + 72);
  *(a4 + 72) = 0;
}

void sub_1C1A3D85C(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 96) == 4)
  {
    sub_1C1A3CA5C();
    sub_1C1A6ECCC();

    v2 = objc_opt_self();
    v3 = sub_1C1A6F39C();
    [v2 sendEvent_];
  }

  else
  {
    sub_1C1A6EB6C();
    if (swift_dynamicCastClass())
    {
      v4 = sub_1C1A6EABC();
    }

    else
    {
      v4 = -1;
    }

    sub_1C1A3CA5C();
    sub_1C1A6ECCC();

    *(swift_allocObject() + 16) = v4;
    sub_1C1A6D84C();
  }
}

uint64_t sub_1C1A3D9C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1A6E74C();
  if (v3)
  {
    goto LABEL_2;
  }

  if (v2 == 2)
  {
    v9 = MEMORY[0x1E69C6098];
  }

  else if (v2 == 1)
  {
    v9 = MEMORY[0x1E69C6090];
  }

  else
  {
    if ((v2 - 3) > 7)
    {
LABEL_2:
      v4 = sub_1C1A6E4BC();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a1;
      v8 = 1;
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E69C60A0];
  }

  v10 = *v9;
  v11 = sub_1C1A6E4BC();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a1, v10, v11);
  v5 = *(v13 + 56);
  v7 = a1;
  v8 = 0;
  v6 = v11;
LABEL_10:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_1C1A3DB14()
{

  return swift_deallocClassInstance();
}

void sub_1C1A3DBD4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = sub_1C1A6F39C();
  sub_1C19A9E58(&qword_1EBF03E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73CD0;
  *(inited + 32) = 0x6F436E6F73616572;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = sub_1C1A6F63C();
  *(inited + 56) = 0x7453646C6F437369;
  *(inited + 64) = 0xEB00000000747261;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C19B6E74(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&qword_1EBF03E40);
  swift_arrayDestroy();
  sub_1C198FB8C(0, &qword_1EDE62670);
  v5 = sub_1C1A6F2FC();

  [v2 sendEvent:v3 customPayload:v5];
}

uint64_t sub_1C1A3DD74()
{
  sub_1C1A3CA5C();
  sub_1C1A6ECCC();

  *(swift_allocObject() + 16) = 15;
  sub_1C1A6D84C();
}

uint64_t sub_1C1A3DE18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C1A3DE70(uint64_t a1, unint64_t a2, char *a3, void (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v101 = a4;
  v102 = a6;
  v103 = a3;
  v99 = a1;
  v100 = a5;
  v7 = sub_1C1A6D5DC();
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v91 - v11;
  v13 = sub_1C1A6E4BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = sub_1C1A6D62C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_55:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v80 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v19 = v103;
    if (*(v103 + 8))
    {

      sub_1C1A6D9FC();

      v81 = sub_1C1A6D5EC();
      v82 = v20;
      v20 = v81;
      v12 = v83;
      (*(v21 + 8))(v24, v82);
    }

    else
    {
      v20 = *(v103 + 6);
      v12 = *(v103 + 7);
    }

    if (qword_1EDE63320 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_63;
  }

  if (!sub_1C1A6F9EC())
  {
    goto LABEL_55;
  }

LABEL_3:
  v93 = v20;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(a2 + 32);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    __break(1u);
LABEL_63:
    swift_once();
LABEL_59:
    v84 = sub_1C19E5F0C();
    v86 = v85;
    sub_1C1A6EB6C();
    sub_1C1A6D61C();
    v87 = objc_allocWithZone(sub_1C1A6E9EC());
    v88 = sub_1C1A6E98C();
    v89 = sub_1C1A6EA7C();

    v90 = sub_1C1A06F5C(v89, v84, v86, v20, v12, 1);
    v101(v90, v19);
    sub_1C1A3D85C(v90);
LABEL_60:

    return;
  }

  v25 = MEMORY[0x1C69055B0](0, a2, v22);
LABEL_6:
  swift_getObjectType();
  v98 = v25;
  v26 = sub_1C19E93F8();
  if (!v26)
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v28 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v29 = v103;
    if (*(v103 + 8))
    {

      sub_1C1A6D9FC();

      v30 = sub_1C1A6D5EC();
      v32 = v31;
      (*(v21 + 8))(v24, v93);
    }

    else
    {
      v30 = *(v103 + 6);
      v32 = *(v103 + 7);
    }

    v58 = v98;
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v59 = sub_1C19E5F0C();
    v61 = v60;
    v62 = [v58 serverUnfilledReason];
    sub_1C1A6D61C();
    v63 = objc_allocWithZone(sub_1C1A6E9EC());
    v64 = sub_1C1A6E98C();
    sub_1C1A6EB6C();
    v65 = sub_1C1A6EA7C();

    if (v62 == 1025)
    {
      v66 = 1;
      v67 = v101;
    }

    else
    {
      if (v62 == 1031)
      {
        v66 = 2;
      }

      else if (v62 == 1058)
      {
        v66 = 0;
      }

      else
      {
        v66 = 3;
      }

      v67 = v101;
    }

    v68 = sub_1C1A06F5C(v65, v59, v61, v30, v32, v66);
    v67(v68, v29);
    sub_1C1A3D85C(v68);
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  v92 = v26;
  v97 = v13;
  if (!v99)
  {
    v27 = MEMORY[0x1E69C60A8];
    goto LABEL_13;
  }

  if (v99 == 1)
  {
    v27 = MEMORY[0x1E69C60C0];
LABEL_13:
    (*(v14 + 104))(v19, *v27, v13);
LABEL_14:
    v94 = v14;
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v33 = sub_1C19E5F0C();
    v35 = v34;
    if (*(v103 + 8))
    {

      sub_1C1A6D9FC();

      v36 = sub_1C1A6D5EC();
      v38 = v37;
      (*(v21 + 8))(v24, v93);
    }

    else
    {
      v36 = *(v103 + 6);
      v38 = *(v103 + 7);
    }

    type metadata accessor for AppStoreAd();
    (*(v94 + 16))(v16, v19, v97);
    v39 = swift_unknownObjectRetain();
    v40 = sub_1C1A69F78(v39, v33, v35, v36, v38, v16);
    sub_1C1A6EB6C();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      *&v41 = COERCE_DOUBLE(sub_1C1A6EB2C());
      if (v42)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = *&v41;
        sub_1C1A6D5CC();
        sub_1C1A6D57C();
        v52 = v51;
        (*(v95 + 8))(v9, v96);
        sub_1C19A9E58(&qword_1EBF04C68);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1A73CD0;
        *(inited + 32) = 0x6E6F697461727544;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        *(inited + 56) = 1701869908;
        *(inited + 64) = 0xE400000000000000;
        *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v54 = sub_1C19B7720(inited);
        swift_setDeallocating();
        sub_1C19A9E58(&qword_1EBF04C70);
        swift_arrayDestroy();
        v55 = objc_opt_self();
        v56 = sub_1C1A6F39C();
        sub_1C1A1E6B0(v54);

        sub_1C198FB8C(0, &qword_1EDE62670);
        v57 = sub_1C1A6F2FC();

        [v55 sendEvent:v56 customPayload:v57];
        swift_unknownObjectRelease();
      }
    }

    v101(v40, v103);
    sub_1C1A3D85C(v40);
    swift_unknownObjectRelease();

    (*(v94 + 8))(v19, v97);
    return;
  }

  [v98 serverUnfilledReason];
  v43 = sub_1C1A6DF6C();
  if (v43 != sub_1C1A6DF6C())
  {
    (*(v14 + 104))(v19, *MEMORY[0x1E69C6090], v97);
    goto LABEL_14;
  }

  sub_1C1A3D9C8(v12);
  v44 = v97;
  if ((*(v14 + 48))(v12, 1, v97) != 1)
  {
    (*(v14 + 32))(v19, v12, v44);
    goto LABEL_14;
  }

  sub_1C1A3EC64(v12);
  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v45 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v46 = v103;
  if (*(v103 + 8))
  {

    sub_1C1A6D9FC();

    v47 = sub_1C1A6D5EC();
    v49 = v48;
    (*(v21 + 8))(v24, v93);
  }

  else
  {
    v47 = *(v103 + 6);
    v49 = *(v103 + 7);
  }

  v69 = v98;
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v70 = sub_1C19E5F0C();
  v72 = v71;
  v73 = [v69 serverUnfilledReason];
  sub_1C1A6D61C();
  v74 = objc_allocWithZone(sub_1C1A6E9EC());
  v75 = sub_1C1A6E98C();
  sub_1C1A6EB6C();
  v76 = sub_1C1A6EA7C();

  if (v73 == 1025)
  {
    v77 = 1;
    v78 = v101;
  }

  else
  {
    if (v73 == 1031)
    {
      v77 = 2;
    }

    else if (v73 == 1058)
    {
      v77 = 0;
    }

    else
    {
      v77 = 3;
    }

    v78 = v101;
  }

  v79 = sub_1C1A06F5C(v76, v70, v72, v47, v49, v77);
  v78(v79, v46);
  sub_1C1A3D85C(v79);

  swift_unknownObjectRelease();
}

uint64_t sub_1C1A3EC64(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1C1A3ECD0(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1C1A405D0(v4, a2);
  return sub_1C199FFB8;
}

uint64_t (*sub_1C1A3ED48(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1C1A40674(v6, a2, a3);
  return sub_1C199FFB8;
}

void sub_1C1A3EDD0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([v1 ready] && (v4 = *(v3 + 16)) != 0 && (v5 = *(v3 + 24)) != 0)
    {
      sub_1C1A6DCFC();
      v6 = v4;
      sub_1C19A2D24(v5);
      swift_unknownObjectRetain();
      v7 = sub_1C1A6DCBC();
      v5();
      sub_1C19A504C(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1C1A3EED8()
{
  sub_1C19A504C(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A3EF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C199F2D4(a1, a2);
  [*(v4 + 56) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_1C1991010(a1, a2);
  if ((v12 & 1) == 0 || (v13 = *(*(v10 + 56) + 8 * v11), , , !*(v13 + 16)) || (v14 = sub_1C1991010(a3, a4), (v15 & 1) == 0))
  {

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

LABEL_8:
  [*(v5 + 56) unlock];
  return v16;
}

id sub_1C1A3F034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v13 = a2;
  sub_1C199F2D4(a2, a3);
  [*(v7 + 56) lock];
  swift_beginAccess();
  if (!*(*(v7 + 40) + 16) || (, sub_1C1991010(v13, a3), v16 = v15, , (v16 & 1) == 0))
  {

    v17 = sub_1C19A0180(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *(v7 + 40);
    *(v7 + 40) = 0x8000000000000000;
    sub_1C19A0194(v17, v13, a3, isUniquelyReferenced_nonNull_native);

    *(v7 + 40) = v73[0];
    swift_endAccess();
  }

  swift_beginAccess();
  if (!*(*(v7 + 32) + 16) || (, sub_1C1991010(v13, a3), v20 = v19, , (v20 & 1) == 0))
  {

    v21 = sub_1C19B71B0(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *(v7 + 32);
    *(v7 + 32) = 0x8000000000000000;
    sub_1C1A49CA8(v21, v13, a3, v22);

    *(v7 + 32) = v73[0];
    swift_endAccess();
  }

  if (a7 && a1)
  {
    v70 = a1;
    v23 = sub_1C1A6F64C();
    sub_1C199E4CC();
    v24 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v24, v23))
    {
      v67 = a6;
      v69 = v13;
      v25 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v74[0] = v27;
      *v26 = 136380675;
      v28 = *(v70 + 16);
      v68 = a7;
      if (v28)
      {
        [*(v28 + OBJC_IVAR___APPCMetricsView_promotedContent) adType];
        v29 = sub_1C1A6DE9C();
        v31 = v30;
      }

      else
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v32 = sub_1C19A1884(v29, v31, v74);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1C198D000, v24, v23, "[Diagnostic] updating diagnostic. type of ad: %{private}s", v26, 0xCu);
      sub_1C199935C(v27);
      MEMORY[0x1C6906260](v27, -1, -1);
      MEMORY[0x1C6906260](v26, -1, -1);

      a4 = v25;
      a7 = v68;
      v13 = v69;
      a6 = v67;
    }

    else
    {
    }

    sub_1C1A3B8E4(a4, a5, a6, a7);
    a1 = v70;
  }

  v33 = *(v8 + 40);
  if (*(v33 + 16))
  {

    v34 = sub_1C1991010(v13, a3);
    if ((v35 & 1) != 0 && (v36 = *(*(v33 + 56) + 8 * v34), , , *(v36 + 16)))
    {
      sub_1C1991010(a4, a5);
      v38 = v37;

      if (v38)
      {
        sub_1C1A6F67C();
        sub_1C199E4CC();
        v39 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v40 = v13;
        v41 = a4;
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1C1A74920;
        v71 = a1;
        v74[0] = a1;
        sub_1C19A9E58(&qword_1EBF04C78);
        v43 = sub_1C1A6F8FC();
        v45 = v44;
        v46 = MEMORY[0x1E69E6158];
        *(v42 + 56) = MEMORY[0x1E69E6158];
        v47 = sub_1C199E518();
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        *(v42 + 96) = v46;
        *(v42 + 104) = v47;
        *(v42 + 64) = v47;
        *(v42 + 72) = v40;
        *(v42 + 80) = a3;
        *(v42 + 136) = v46;
        *(v42 + 144) = v47;
        *(v42 + 112) = v41;
        *(v42 + 120) = a5;

        sub_1C1A6F18C();

        v48 = *(v8 + 40);
        if (*(v48 + 16))
        {

          v49 = sub_1C1991010(v40, a3);
          if (v50 & 1) != 0 && (v51 = *(*(v48 + 56) + 8 * v49), , , *(v51 + 16)) && (sub_1C1991010(v41, a5), (v52))
          {

            if (v71)
            {
              v53 = *(v71 + 16);
            }

            else
            {
              v53 = 0;
            }

            swift_unknownObjectWeakAssign();
          }

          else
          {
          }
        }

        return [*(v8 + 56) unlock];
      }
    }

    else
    {
    }
  }

  sub_1C1A6F67C();
  sub_1C199E4CC();
  v54 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v55 = a4;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C1A74920;
  v74[0] = a1;
  sub_1C19A9E58(&qword_1EBF04C78);
  v57 = sub_1C1A6F8FC();
  v59 = v58;
  v60 = a1;
  v61 = MEMORY[0x1E69E6158];
  *(v56 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1C199E518();
  *(v56 + 32) = v57;
  *(v56 + 40) = v59;
  *(v56 + 96) = v61;
  *(v56 + 104) = v62;
  *(v56 + 64) = v62;
  *(v56 + 72) = v13;
  *(v56 + 80) = a3;
  *(v56 + 136) = v61;
  *(v56 + 144) = v62;
  *(v56 + 112) = v55;
  *(v56 + 120) = a5;

  sub_1C1A6F18C();

  v63 = sub_1C199F9D8();
  v64 = sub_1C199FA28(v73, v13, a3);
  if (*v65)
  {

    sub_1C19B5C40(v60, v55, a5);
  }

  (v64)(v73, 0);
  (v63)(v74, 0);
  return [*(v8 + 56) unlock];
}

void *sub_1C1A3F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C199F2D4(a1, a2);
  [*(v4 + 56) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = sub_1C1991010(a1, a2);
  if ((v12 & 1) == 0 || (v13 = *(*(v10 + 56) + 8 * v11), , , !*(v13 + 16)) || (v14 = sub_1C1991010(a3, a4), (v15 & 1) == 0))
  {

    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  Strong = *(v16 + 16);
  v18 = Strong;

  if (!Strong)
  {
LABEL_8:
    swift_beginAccess();
    v19 = *(v5 + 40);
    if (*(v19 + 16))
    {

      v20 = sub_1C1991010(a1, a2);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);

        if (*(v22 + 16))
        {
          sub_1C1991010(a3, a4);
          if (v23)
          {

            Strong = swift_unknownObjectWeakLoadStrong();

            goto LABEL_15;
          }
        }
      }
    }

    Strong = 0;
  }

LABEL_15:
  [*(v5 + 56) unlock];
  return Strong;
}

id sub_1C1A3F984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C19A9E58(&qword_1EBF03C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v45 - v7;
  sub_1C1A4004C(a1, a2);
  sub_1C1A6F67C();
  v8 = sub_1C199E4CC();
  v51 = &OBJC_IVAR____TtC17PromotedContentUI20PreloadingMetricView_metricsView;
  v52 = "n>16@0:8";
  v53 = v8;
  v9 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A73A30;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1C199E518();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  sub_1C1A6F18C();

  [*(v3 + 56) lock];
  swift_beginAccess();
  v48 = v3;
  v11 = *(v3 + 32);
  swift_getKeyPath();
  v56[0] = MEMORY[0x1E69E7CC0];
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v56[3] = *(*(v11 + 56) + ((v18 << 9) | (8 * v19)));

      swift_getAtKeyPath();

      result = sub_1C1A51884(v57);
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  v45 = a1;
  v46 = a2;

  v47 = v56[0];
  v21 = *(v56[0] + 16);
  v22 = v54;
  if (v21)
  {
    v23 = *(v48 + 72);
    v50 = "up all views for id (%@)";
    v24 = (v47 + 40);
    *&v20 = 136446210;
    v49 = v20;
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      swift_beginAccess();

      v55 = v25;
      v27 = sub_1C1991010(v25, v26);
      if (v28)
      {
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v23 + 64);
        v57 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1A4AAA0();
          v31 = v57;
        }

        v32 = *(v31 + 56);
        v33 = type metadata accessor for PreloadedContentDiagnosticPayload();
        v34 = *(v33 - 8);
        v35 = v32 + *(v34 + 72) * v29;
        v22 = v54;
        sub_1C1A40A54(v35, v54, type metadata accessor for PreloadedContentDiagnosticPayload);
        sub_1C19B67C0(v29, v31);
        *(v23 + 64) = v31;
        (*(v34 + 56))(v22, 0, 1, v33);
      }

      else
      {
        v33 = type metadata accessor for PreloadedContentDiagnosticPayload();
        (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
      }

      swift_endAccess();
      type metadata accessor for PreloadedContentDiagnosticPayload();
      v36 = (*(*(v33 - 8) + 48))(v22, 1, v33);
      sub_1C19A0CCC(v22);
      if (v36 == 1)
      {
      }

      else
      {
        v37 = sub_1C1A6F39C();
        AnalyticsSendEvent();

        v38 = sub_1C1A6F64C();
        v39 = sub_1C1A6F8EC();
        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v56[0] = v41;
          *v40 = v49;
          *(v40 + 4) = sub_1C19A1884(v55, v26, v56);
          _os_log_impl(&dword_1C198D000, v39, v38, "[Diagnostic] discarded %{public}s", v40, 0xCu);
          sub_1C199935C(v41);
          MEMORY[0x1C6906260](v41, -1, -1);
          MEMORY[0x1C6906260](v40, -1, -1);
        }
      }

      v24 += 2;
      --v21;
    }

    while (v21);
  }

  v42 = v48;
  swift_beginAccess();
  v43 = v46;

  v44 = v45;
  sub_1C19B5B0C(0, v45, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1C19B5AE0(0, v44, v43);
  swift_endAccess();
  return [*(v42 + 56) unlock];
}

uint64_t sub_1C1A3FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1A3F984(a3, a4);
  }

  return result;
}

id sub_1C1A4004C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [*(v2 + 64) lock];
  swift_beginAccess();
  v6 = *(v2 + 48);
  if (*(v6 + 16))
  {

    v7 = sub_1C1991010(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      [v9 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_1C19B57D8(0, a1, a2);
  swift_endAccess();
  return [*(v3 + 64) unlock];
}

uint64_t sub_1C1A40154()
{

  return v0;
}

uint64_t sub_1C1A401A4()
{
  sub_1C1A40154();

  return swift_deallocClassInstance();
}

double sub_1C1A40238@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C1991010(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1A4A204();
      v10 = v12;
    }

    sub_1C19916E4((*(v10 + 56) + 32 * v8), a3);
    sub_1C19B6488(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C1A402DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C1991010(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1A4A524();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1C1A6D5DC();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1C19B67A8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1C1A6D5DC();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1C1A4044C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(unint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1C1991010(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1C1A40A54(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t (*sub_1C1A405D0(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1C199FCB4(v5);
  v5[9] = sub_1C1A40720(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1C199FFBC;
}

uint64_t (*sub_1C1A40674(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1C199FCB4(v7);
  v7[9] = sub_1C1A408FC(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C199FFBC;
}

void (*sub_1C1A40720(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1C19A30DC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1C1A4A510();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1C1A48A5C(v16, a3 & 1);
    v11 = sub_1C19A30DC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1C1A40868;
}

void sub_1C1A40868(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1C1A4A090(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_1C19B6638(v1[3], *v1[2]);
  }

  free(v1);
}

void (*sub_1C1A408FC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1C1991010(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1C1A4AECC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1C1A49324(v18, a4 & 1);
    v13 = sub_1C1991010(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1C19A0010;
}

uint64_t sub_1C1A40A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PrivacyMarkerType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

unint64_t sub_1C1A40B48()
{
  result = qword_1EBF04C80;
  if (!qword_1EBF04C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04C80);
  }

  return result;
}

id sub_1C1A40BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  [v6 lock];
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_1C1991010(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
    swift_beginAccess();
    v10 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1C1A49A7C(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v14;
    swift_endAccess();

    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

LABEL_6:
  [v6 unlock];
  return v10;
}

uint64_t sub_1C1A40D00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A40D40(uint64_t a1)
{
  v2 = sub_1C1A6D25C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1C1A6D24C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C1A40E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1990FA8(a3, v25 - v10, &unk_1EBF050D0);
  v12 = sub_1C1A6F5AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1991140(v11, &unk_1EBF050D0);
  }

  else
  {
    sub_1C1A6F59C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1A6F56C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1A6F43C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C1991140(a3, &unk_1EBF050D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1991140(a3, &unk_1EBF050D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1A41134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1990FA8(a3, v25 - v10, &unk_1EBF050D0);
  v12 = sub_1C1A6F5AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1991140(v11, &unk_1EBF050D0);
  }

  else
  {
    sub_1C1A6F59C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1A6F56C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1A6F43C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C1991140(a3, &unk_1EBF050D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1991140(a3, &unk_1EBF050D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1C1A4142C(uint64_t a1)
{
  v2 = v1;
  if (sub_1C19C868C() || (v4 = OBJC_IVAR___APPCPromotedContentView_promotedContent, [*&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent] adType], v5 = sub_1C1A6DEAC(), v5 == sub_1C1A6DEAC()))
  {
    v2[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = *(a1 + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_shouldBlockNavigation);
    v6 = *(a1 + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation);
    v7 = *(a1 + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation + 8);

    sub_1C1A428F4(v6, v7);
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v8 = sub_1C1A6F1BC();
    sub_1C1994600(v8, qword_1EDE665F0);
    v9 = v2;
    oslog = sub_1C1A6F19C();
    v10 = sub_1C1A6F66C();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 67109378;
      *(v11 + 4) = 36;
      *(v11 + 8) = 2080;
      v13 = [*&v2[v4] identifier];
      v14 = sub_1C1A6F3CC();
      v16 = v15;

      v17 = sub_1C19A1884(v14, v16, &v19);

      *(v11 + 10) = v17;
      _os_log_impl(&dword_1C198D000, oslog, v10, "Content ID: %-*s Attempting to handle without a recently recognized tap.", v11, 0x12u);
      sub_1C199935C(v12);
      MEMORY[0x1C6906260](v12, -1, -1);
      MEMORY[0x1C6906260](v11, -1, -1);
    }
  }
}

uint64_t sub_1C1A41660(CGFloat a1, CGFloat a2)
{
  [v2 frame];
  if (CGRectGetWidth(v38) > 0.0)
  {
    [v2 frame];
    if (CGRectGetHeight(v39) > 0.0)
    {
      if (a1 >= 0.0 && a2 >= 0.0)
      {
        [v2 frame];
        v5 = a1 / CGRectGetWidth(v40);
        [v2 frame];
        CGRectGetHeight(v41);
        return *&v5;
      }

      v37.x = a1;
      v37.y = a2;
      v24 = NSStringFromCGPoint(v37);
      v25 = sub_1C1A6F3CC();
      v27 = v26;

      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v28 = sub_1C1A6F1BC();
      sub_1C1994600(v28, qword_1EDE665F0);
      v29 = v2;

      v13 = sub_1C1A6F19C();
      v14 = sub_1C1A6F66C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v36 = v16;
        *v15 = 67109634;
        *(v15 + 4) = 36;
        *(v15 + 8) = 2080;
        v30 = [*&v29[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
        v31 = sub_1C1A6F3CC();
        v33 = v32;

        v34 = sub_1C19A1884(v31, v33, &v36);

        *(v15 + 10) = v34;
        *(v15 + 18) = 2080;
        v35 = sub_1C19A1884(v25, v27, &v36);

        *(v15 + 20) = v35;
        v23 = "Content ID: %-*s Failed to normalize interaction point using point %s.";
        goto LABEL_10;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  [v2 frame];
  v7 = NSStringFromCGRect(v42);
  v8 = sub_1C1A6F3CC();
  v10 = v9;

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v11 = sub_1C1A6F1BC();
  sub_1C1994600(v11, qword_1EDE665F0);
  v12 = v2;

  v13 = sub_1C1A6F19C();
  v14 = sub_1C1A6F66C();

  if (!os_log_type_enabled(v13, v14))
  {
    goto LABEL_15;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v36 = v16;
  *v15 = 67109634;
  *(v15 + 4) = 36;
  *(v15 + 8) = 2080;
  v17 = [*&v12[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v18 = sub_1C1A6F3CC();
  v20 = v19;

  v21 = sub_1C19A1884(v18, v20, &v36);

  *(v15 + 10) = v21;
  *(v15 + 18) = 2080;
  v22 = sub_1C19A1884(v8, v10, &v36);

  *(v15 + 20) = v22;
  v23 = "Content ID: %-*s Failed to normalize interaction point in frame %s.";
LABEL_10:
  _os_log_impl(&dword_1C198D000, v13, v14, v23, v15, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x1C6906260](v16, -1, -1);
  MEMORY[0x1C6906260](v15, -1, -1);
LABEL_16:

  return 0;
}

void sub_1C1A41A98(void *a1)
{
  v3 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1C1A6D48C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6E0AC();
  if (swift_dynamicCastClass())
  {
    v31 = a1;
    sub_1C1A437DC();
  }

  else
  {
    sub_1C1A6E0DC();
    if (swift_dynamicCastClass())
    {
      v10 = a1;
      sub_1C1A6E0CC();
      sub_1C1A6EA2C();
      v11 = objc_allocWithZone(sub_1C1A6DE4C());
      v12 = sub_1C1A6DE3C();
      sub_1C1A43CB8(v12);

      return;
    }

    sub_1C1A6DFCC();
    if (swift_dynamicCastClass())
    {
      v13 = v1;
      v31 = a1;
      v14 = sub_1C1A6DFBC();
      if (v14)
      {
        v15 = v14;
        v16 = sub_1C1A6DF8C();
        v18 = v17;
        sub_1C1A6DFAC();
        swift_unknownObjectRetain();
        sub_1C1A6DF9C();
        v19 = objc_allocWithZone(type metadata accessor for ExpandViewController());
        v20 = v13;
        v21 = sub_1C1A4C368(v16, v18, v8, v15, v20, v19);
        v22 = sub_1C1A6F5AC();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        sub_1C1A6F58C();
        v23 = v20;
        v24 = v21;
        v25 = sub_1C1A6F57C();
        v26 = swift_allocObject();
        v27 = MEMORY[0x1E69E85E0];
        v26[2] = v25;
        v26[3] = v27;
        v26[4] = v23;
        v26[5] = v24;
        sub_1C1A40E34(0, 0, v5, &unk_1C1A77C00, v26);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1C1A6DF1C();
      if (swift_dynamicCastClass())
      {
        v31 = a1;
        sub_1C1A43AFC();
      }

      else
      {
        sub_1C1A6DE4C();
        v28 = swift_dynamicCastClass();
        if (v28)
        {
          v29 = v28;
          v31 = a1;
          sub_1C1A43CB8(v29);
        }

        else
        {
          sub_1C1A6E8FC();
          if (!swift_dynamicCastClass())
          {
            return;
          }

          v31 = a1;
          sub_1C1A44670();
        }
      }
    }
  }

  v9 = v31;
}

void sub_1C1A41E28(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9 = v8;
  v18 = sub_1C19A9E58(&qword_1EBF04170);
  *&v19 = MEMORY[0x1EEE9AC00](v18 - 8).n128_u64[0];
  v21 = v94 - v20;
  v22 = [a2 bestRepresentation];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x330))(a1, v22))
    {
      if (a1)
      {
        v25 = a1;
LABEL_17:
        v50 = OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation;
        if ((*(v8 + OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation) & 1) != 0 || (v37 = v8 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized, *(v8 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized) != 1))
        {
          *(v8 + OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation) = 0;
          v37 = v8 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized;
          *(v8 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized) = 0;
          v59 = qword_1EDE63990;
          v60 = a1;
          if (v59 != -1)
          {
            swift_once();
          }

          v61 = sub_1C1A6F1BC();
          sub_1C1994600(v61, qword_1EDE665F0);
          v62 = v9;
          v63 = sub_1C1A6F19C();
          v64 = sub_1C1A6F67C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v96[0] = v66;
            *v65 = 67109378;
            *(v65 + 4) = 36;
            *(v65 + 8) = 2080;
            v67 = [*(v62 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
            v68 = sub_1C1A6F3CC();
            v94[1] = v23;
            v95 = v25;
            v69 = v37;
            v70 = v50;
            v71 = v68;
            v73 = v72;

            v74 = v71;
            v50 = v70;
            v37 = v69;
            v75 = sub_1C19A1884(v74, v73, v96);

            *(v65 + 10) = v75;
            _os_log_impl(&dword_1C198D000, v63, v64, "Content ID: %-*s Action blocked due to accidental tap detection.", v65, 0x12u);
            sub_1C199935C(v66);
            MEMORY[0x1C6906260](v66, -1, -1);
            MEMORY[0x1C6906260](v65, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_54;
        }

        v51 = *(v8 + OBJC_IVAR___APPCPromotedContentView_videoTapAction);
        *(v9 + OBJC_IVAR___APPCPromotedContentView_videoTapAction) = 0;
        v52 = a1;

        v53 = sub_1C1A6F25C();
        (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
        v54 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
        swift_beginAccess();
        sub_1C19D41C8(v21, v9 + v54);
        swift_endAccess();
        v55 = v9 + OBJC_IVAR___APPCPromotedContentView_videoMoreLocation;
        *v55 = 0;
        *(v55 + 1) = 0;
        v55[16] = 1;
        sub_1C1A6DFCC();
        if (swift_dynamicCastClass())
        {
          goto LABEL_48;
        }

        v56 = [v23 tapAction];
        if (v56)
        {
          v57 = v56;
          sub_1C1A6E8FC();
          if (swift_dynamicCastClass())
          {
            sub_1C1A6DF1C();
            v58 = sub_1C1A6DF3C();
            if (v58)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }
        }

        v82 = [v23 tapAction];
        if (v82)
        {
          v83 = v82;
          sub_1C1A6E8FC();
          if (swift_dynamicCastClass())
          {
            sub_1C1A6DE4C();
            v58 = sub_1C1A6DE6C();
            if (v58)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }
        }

        v84 = [v23 tapAction];
        if (v84)
        {
          v85 = v84;
          sub_1C1A6E4EC();
          if (swift_dynamicCastClass())
          {
            sub_1C1A6DF1C();
            v58 = sub_1C1A6DF2C();
            if (!v58)
            {
              goto LABEL_44;
            }

LABEL_47:
            v88 = v58;

            v25 = v88;
            goto LABEL_48;
          }
        }

LABEL_44:
        v86 = [v23 tapAction];
        if (!v86)
        {
          goto LABEL_48;
        }

        v87 = v86;
        sub_1C1A6E4EC();
        if (swift_dynamicCastClass())
        {
          sub_1C1A6DE4C();
          v58 = sub_1C1A6DE5C();
          if (!v58)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

LABEL_48:
        sub_1C1A6E8FC();
        if (swift_dynamicCastClass())
        {
          sub_1C1A6DE4C();
          v25 = v25;
          v89 = sub_1C1A6DE6C();
          if (v89)
          {
            v90 = v89;

            v25 = v90;
          }
        }

        v91 = *(v9 + OBJC_IVAR___APPCPromotedContentView_lastPerformedAction);
        *(v9 + OBJC_IVAR___APPCPromotedContentView_lastPerformedAction) = v25;
        v92 = v25;

        sub_1C1A43408(a3, a4, a5, a6, a7, a8);
        [a2 adType];
        v93 = sub_1C1A6DEAC();
        if (v93 == sub_1C1A6DEAC())
        {
          swift_unknownObjectRelease();

          (*((*v24 & *v9) + 0x340))();
        }

        else
        {
          sub_1C1A41A98(v92);

          swift_unknownObjectRelease();
        }

LABEL_54:
        *(v9 + v50) = 0;
        goto LABEL_55;
      }

      v25 = [v23 tapAction];
      if (v25)
      {
        goto LABEL_17;
      }

      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v76 = sub_1C1A6F1BC();
      sub_1C1994600(v76, qword_1EDE665F0);
      v39 = v8;
      v40 = sub_1C1A6F19C();
      v41 = sub_1C1A6F66C();

      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v96[0] = v43;
      *v42 = 67109378;
      *(v42 + 4) = 36;
      *(v42 + 8) = 2080;
      v77 = [*(v39 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
      v78 = sub_1C1A6F3CC();
      v80 = v79;

      v81 = sub_1C19A1884(v78, v80, v96);

      *(v42 + 10) = v81;
      v49 = "Content ID: %-*s No tap action found for best representation.";
    }

    else
    {
      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v38 = sub_1C1A6F1BC();
      sub_1C1994600(v38, qword_1EDE665F0);
      v39 = v8;
      v40 = sub_1C1A6F19C();
      v41 = sub_1C1A6F66C();

      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v96[0] = v43;
      *v42 = 67109378;
      *(v42 + 4) = 36;
      *(v42 + 8) = 2080;
      v44 = [*(v39 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
      v45 = sub_1C1A6F3CC();
      v47 = v46;

      v48 = sub_1C19A1884(v45, v47, v96);

      *(v42 + 10) = v48;
      v49 = "Content ID: %-*s Failed to verify tap action type.";
    }

    _os_log_impl(&dword_1C198D000, v40, v41, v49, v42, 0x12u);
    sub_1C199935C(v43);
    MEMORY[0x1C6906260](v43, -1, -1);
    MEMORY[0x1C6906260](v42, -1, -1);
LABEL_15:
    swift_unknownObjectRelease();

    *(v39 + OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation) = 0;
    v37 = v39 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized;
    goto LABEL_55;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v26 = sub_1C1A6F1BC();
  sub_1C1994600(v26, qword_1EDE665F0);
  v27 = v8;
  v28 = sub_1C1A6F19C();
  v29 = sub_1C1A6F66C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v96[0] = v31;
    *v30 = 67109378;
    *(v30 + 4) = 36;
    *(v30 + 8) = 2080;
    v32 = [*(v27 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v33 = sub_1C1A6F3CC();
    v35 = v34;

    v36 = sub_1C19A1884(v33, v35, v96);

    *(v30 + 10) = v36;
    _os_log_impl(&dword_1C198D000, v28, v29, "Content ID: %-*s No best representation found to process tap action.", v30, 0x12u);
    sub_1C199935C(v31);
    MEMORY[0x1C6906260](v31, -1, -1);
    MEMORY[0x1C6906260](v30, -1, -1);
  }

  *(v27 + OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation) = 0;
  v37 = v27 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized;
LABEL_55:
  *v37 = 0;
}

void sub_1C1A428F4(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_1C19A9E58(&qword_1EBF04170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v96[-v7];
  v9 = sub_1C1A6F25C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v96[-v13];
  v14 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v96[-v15];
  v17 = sub_1C1A6D48C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v96[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v96[-v23];
  v3[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 1;
  v103 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v25 = [*&v3[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
  if (!v25)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v29 = sub_1C1A6F1BC();
    sub_1C1994600(v29, qword_1EDE665F0);
    v30 = v3;
    v104 = sub_1C1A6F19C();
    v31 = sub_1C1A6F66C();

    if (os_log_type_enabled(v104, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v106[0] = v33;
      *v32 = 67109378;
      *(v32 + 4) = 36;
      *(v32 + 8) = 2080;
      v34 = [*&v3[v103] identifier];
      v35 = sub_1C1A6F3CC();
      v37 = v36;

      v38 = sub_1C19A1884(v35, v37, v106);

      *(v32 + 10) = v38;
      _os_log_impl(&dword_1C198D000, v104, v31, "Content ID: %-*s No best representation found for tap recognized.", v32, 0x12u);
      sub_1C199935C(v33);
      MEMORY[0x1C6906260](v33, -1, -1);
      MEMORY[0x1C6906260](v32, -1, -1);

      return;
    }

    goto LABEL_15;
  }

  v26 = v25;
  v100 = v10;
  v104 = [v25 tapAction];
  [v26 adType];
  v27 = sub_1C1A6DEAC();
  if (v27 == sub_1C1A6DEAC())
  {
    sub_1C1A6E3CC();
    if (swift_dynamicCastClass())
    {
      v99 = v9;
      swift_unknownObjectRetain();
      v28 = sub_1C1A6E3BC();
      v106[0] = 0xD000000000000013;
      v106[1] = 0x80000001C1A83320;
      MEMORY[0x1C6904F50](v28);

      sub_1C1A6D46C();

      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        swift_unknownObjectRelease_n();

        sub_1C1991140(v16, &unk_1EBF04600);
        return;
      }

      (*(v18 + 32))(v24, v16, v17);
      (*(v18 + 16))(v20, v24, v17);
      v41 = objc_allocWithZone(sub_1C1A6DE4C());
      v42 = sub_1C1A6DE3C();
      swift_unknownObjectRelease();

      (*(v18 + 8))(v24, v17);
      v39 = v42;
      v9 = v99;
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
LABEL_15:
    v40 = v104;

    return;
  }

  v39 = v104;
  if (!v104)
  {

    swift_unknownObjectRelease();
    return;
  }

LABEL_19:
  v43 = v39;
  sub_1C1A6EA1C();
  v44 = sub_1C1A6DECC();
  if (v44 == sub_1C1A6DECC() || (sub_1C1A6EA1C(), v45 = sub_1C1A6DECC(), v45 == sub_1C1A6DECC()))
  {
  }

  else
  {
    sub_1C1A6EA1C();
    v50 = sub_1C1A6DECC();
    v51 = v9;
    v52 = sub_1C1A6DECC();

    v53 = v50 == v52;
    v9 = v51;
    if (!v53)
    {
      v54 = *&v3[v103];
      v55 = v43;
      swift_unknownObjectRetain();
      [v3 frame];
      sub_1C1A41E28(v43, v54, a1, a2, v56, v57, v58, v59);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }
  }

  sub_1C1A6EA1C();
  v46 = sub_1C1A6DECC();
  if (v46 != sub_1C1A6DECC() || (v47 = *&v3[OBJC_IVAR___APPCPromotedContentView_videoTapAction]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_27:

    return;
  }

  v48 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
  swift_beginAccess();
  sub_1C1990FA8(&v3[v48], v8, &qword_1EBF04170);
  v49 = v100;
  if ((*(v100 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();

    sub_1C1991140(v8, &qword_1EBF04170);
    return;
  }

  v60 = v102;
  (*(v49 + 32))(v102, v8, v9);
  v61 = &v3[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation];
  if (v3[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation + 16])
  {
    v62 = *(v49 + 8);
    v63 = v47;
    v62(v60, v9);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v65 = *v61;
  v64 = v61[1];
  v66 = qword_1EDE63990;
  v67 = v47;
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_1C1A6F1BC();
  sub_1C1994600(v68, qword_1EDE665F0);
  v69 = v3;
  v70 = sub_1C1A6F19C();
  v71 = sub_1C1A6F64C();

  v104 = v70;
  v72 = os_log_type_enabled(v70, v71);
  v99 = v9;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v105 = v98;
    *v73 = 67109378;
    *(v73 + 4) = 36;
    *(v73 + 8) = 2080;
    v74 = [*&v3[v103] identifier];
    v75 = v69;
    v76 = v67;
    v77 = sub_1C1A6F3CC();
    v97 = v71;
    v79 = v78;

    v80 = v77;
    v67 = v76;
    v69 = v75;
    v81 = sub_1C19A1884(v80, v79, &v105);

    *(v73 + 10) = v81;
    v82 = v104;
    _os_log_impl(&dword_1C198D000, v104, v97, "Content ID: %-*s Proccessing tap for video.", v73, 0x12u);
    v83 = v98;
    sub_1C199935C(v98);
    MEMORY[0x1C6906260](v83, -1, -1);
    MEMORY[0x1C6906260](v73, -1, -1);
  }

  else
  {
  }

  v85 = v101;
  v84 = v102;
  sub_1C1A6F24C();
  v86 = sub_1C1A6F23C();
  v87 = sub_1C1A6F23C();
  if (v86 < v87)
  {
    __break(1u);
  }

  else
  {
    if (v86 - v87 <= 0xBEBC200)
    {
      v88 = *&v3[v103];
      v89 = v67;
      swift_unknownObjectRetain();
      [v69 frame];
      sub_1C1A41E28(v47, v88, v65, v64, v90, v91, v92, v93);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();

    v94 = v99;
    v95 = *(v100 + 8);
    v95(v85, v99);
    v95(v84, v94);
  }
}

uint64_t sub_1C1A43408(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = NSStringFromCGPoint(*&a1);
  v14 = sub_1C1A6F3CC();
  v16 = v15;

  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  v17 = NSStringFromCGRect(v49);
  v18 = sub_1C1A6F3CC();
  v20 = v19;

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v21 = sub_1C1A6F1BC();
  sub_1C1994600(v21, qword_1EDE665F0);
  v22 = v6;

  v23 = sub_1C1A6F19C();
  v24 = sub_1C1A6F64C();

  if (os_log_type_enabled(v23, v24))
  {
    v45 = v18;
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v25 = 67109890;
    *(v25 + 4) = 36;
    *(v25 + 8) = 2080;
    v26 = [*&v22[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v27 = sub_1C1A6F3CC();
    v29 = v28;

    v30 = sub_1C19A1884(v27, v29, &v47);

    *(v25 + 10) = v30;
    *(v25 + 18) = 2080;
    v31 = sub_1C19A1884(v14, v16, &v47);

    *(v25 + 20) = v31;
    *(v25 + 28) = 2080;
    v32 = sub_1C19A1884(v45, v20, &v47);

    *(v25 + 30) = v32;
    _os_log_impl(&dword_1C198D000, v23, v24, "Content ID: %-*s Sending interaction metric at location %s in frame %s.", v25, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v46, -1, -1);
    MEMORY[0x1C6906260](v25, -1, -1);
  }

  else
  {
  }

  *&v33 = COERCE_DOUBLE(sub_1C1A41660(a1, a2));
  if (v35)
  {
    v36 = [*&v22[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
    LODWORD(v37) = -1.0;
    LODWORD(v38) = -1.0;
  }

  else
  {
    v39 = *&v33;
    v40 = v34;
    v36 = [*&v22[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
    *&v37 = v39;
    *&v38 = v40;
  }

  [v36 interactedAtXPos:v37 yPos:v38];
  swift_unknownObjectRelease();
  v41 = &v22[OBJC_IVAR___APPCPromotedContentView_interactionDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v43 = *(v41 + 1);
    ObjectType = swift_getObjectType();
    (*(v43 + 8))(ObjectType, v43);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1A437DC()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1C1A6E09C();
  v6 = sub_1C1A2633C(v5);
  v7 = objc_allocWithZone(type metadata accessor for CalendarEventViewController());

  v8 = v1;
  v9 = sub_1C1A4BBBC(v6, v8, v7);

  v10 = sub_1C1A6F5AC();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1C1A6F58C();
  v11 = v8;
  v12 = v9;
  v13 = sub_1C1A6F57C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_1C1A40E34(0, 0, v4, &unk_1C1A77C10, v14);
}

void sub_1C1A43AFC()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C1A6DEFC();
  v6 = sub_1C1A6DF0C();
  v7 = [objc_allocWithZone(MEMORY[0x1E697BAA0]) init];
  v8 = objc_allocWithZone(type metadata accessor for StoreProductRequester());
  v9 = v1;
  v10 = sub_1C1A4B4D0(v5, v6, v9, v7, v8);
  v11 = *&v9[OBJC_IVAR___APPCPromotedContentView_storeProductRequester];
  *&v9[OBJC_IVAR___APPCPromotedContentView_storeProductRequester] = v10;
  v12 = v10;

  v13 = sub_1C1A6F5AC();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1C1A6F58C();
  v14 = v9;
  v15 = v12;
  v16 = sub_1C1A6F57C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = v15;
  sub_1C1A40E34(0, 0, v4, &unk_1C1A77C20, v17);
}

void sub_1C1A43CB8(void *a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v85 - v3;
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v85 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  v90 = a1;
  sub_1C1A6DE2C();
  v17 = sub_1C1A4BD3C(&unk_1F413EDF8);
  swift_arrayDestroy();
  sub_1C1A6D44C();
  if (!v18)
  {

    v32 = *(v5 + 8);
    v32(v16, v4);
    v33 = v32;
    v34 = v90;
    goto LABEL_11;
  }

  v19 = sub_1C1A6F42C();
  v21 = v20;

  v22 = sub_1C1A63388(v19, v21, v17);

  v91 = *(v5 + 8);
  v91(v16, v4);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = objc_opt_self();
  v24 = [v23 sharedApplication];
  v25 = [v24 delegate];

  if (!v25)
  {
    goto LABEL_10;
  }

  v87 = v25;
  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 bundleIdentifier];

  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v34 = v90;
    v33 = v91;
    goto LABEL_11;
  }

  v86 = v23;
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  if (v28 == 0x6C7070612E6D6F63 && v30 == 0xEE007377656E2E65)
  {

    v31 = v87;
LABEL_30:
    if ([v31 respondsToSelector_])
    {
      v69 = [v86 sharedApplication];
      sub_1C1A6DE2C();
      sub_1C19B6BB4(MEMORY[0x1E69E7CC0]);
      v70 = sub_1C1A6D41C();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_1C1A4C310();
      v71 = sub_1C1A6F2FC();

      [v31 application:v69 openURL:v70 options:v71];

      v91(v13, v4);
    }

    v72 = &v89[OBJC_IVAR___APPCPromotedContentView_interactionDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v73 = *(v72 + 1);
      ObjectType = swift_getObjectType();
      (*(v73 + 24))(ObjectType, v73);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return;
  }

  v68 = sub_1C1A6FCEC();

  v34 = v90;
  v31 = v87;
  if (v68)
  {
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  v33 = v91;
LABEL_11:
  sub_1C1A6DE2C();
  v35 = sub_1C1A2A7D0();
  v33(v13, v4);
  if (v35)
  {
    v36 = sub_1C1A6F5AC();
    v37 = v88;
    (*(*(v36 - 8) + 56))(v88, 1, 1, v36);
    sub_1C1A6F58C();
    v38 = v89;
    v39 = v34;
    v40 = sub_1C1A6F57C();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v38;
    v41[5] = v39;
    v43 = &unk_1C1A77BB0;
LABEL_26:
    sub_1C1A41134(0, 0, v37, v43, v41);
    goto LABEL_27;
  }

  sub_1C1A6DE2C();
  v44 = sub_1C1A6D45C();
  v46 = v45;
  v91 = v33;
  v33(v10, v4);
  if (v46)
  {
    if (qword_1EBF035C8 != -1)
    {
      swift_once();
    }

    v47 = sub_1C1A63388(v44, v46, qword_1EBF076A0);

    v34 = v90;
    if (v47 & 1) != 0 && (sub_1C1A6DE1C())
    {
      v48 = sub_1C1A6F5AC();
      v49 = v88;
      (*(*(v48 - 8) + 56))(v88, 1, 1, v48);
      sub_1C1A6F58C();
      v50 = v89;
      v51 = v34;
      v52 = sub_1C1A6F57C();
      v53 = swift_allocObject();
      v54 = MEMORY[0x1E69E85E0];
      v53[2] = v52;
      v53[3] = v54;
      v53[4] = v50;
      v53[5] = v51;
      sub_1C1A40E34(0, 0, v49, &unk_1C1A77BA0, v53);
LABEL_27:

      return;
    }
  }

  sub_1C1A6DE2C();
  v55 = sub_1C1A6D45C();
  v57 = v56;
  v91(v7, v4);
  v58 = v34;
  if (v57)
  {
    if (qword_1EBF035C8 != -1)
    {
      swift_once();
    }

    v59 = sub_1C1A63388(v55, v57, qword_1EBF076A0);

    if ((v59 & 1) != 0 && (sub_1C1A6DE1C() & 1) == 0)
    {
      sub_1C1A6DE2C();
      v75 = objc_allocWithZone(type metadata accessor for SafariViewController());
      v76 = v89;
      v77 = sub_1C1A4BF64(v13, v76, v75);

      [v77 setModalPresentationStyle_];
      v78 = sub_1C1A6F5AC();
      v79 = v88;
      (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
      sub_1C1A6F58C();
      v80 = v76;
      v81 = v77;
      v82 = sub_1C1A6F57C();
      v83 = swift_allocObject();
      v84 = MEMORY[0x1E69E85E0];
      v83[2] = v82;
      v83[3] = v84;
      v83[4] = v80;
      v83[5] = v81;
      sub_1C1A40E34(0, 0, v79, &unk_1C1A77B90, v83);

      return;
    }
  }

  v60 = v89;
  sub_1C19992F8(&v89[OBJC_IVAR___APPCPromotedContentView_urlOpener], v92);
  v61 = v93;
  v62 = v94;
  sub_1C1994048(v92, v93);
  sub_1C1A6DE2C();
  LOBYTE(v61) = (*(v62 + 8))(v13, v61, v62);
  v91(v13, v4);
  sub_1C199935C(v92);
  if (v61)
  {
    v63 = sub_1C1A6F5AC();
    v37 = v88;
    (*(*(v63 - 8) + 56))(v88, 1, 1, v63);
    sub_1C1A6F58C();
    v64 = v60;
    v65 = v58;
    v66 = sub_1C1A6F57C();
    v41 = swift_allocObject();
    v67 = MEMORY[0x1E69E85E0];
    v41[2] = v66;
    v41[3] = v67;
    v41[4] = v64;
    v41[5] = v65;
    v43 = &unk_1C1A77B80;
    goto LABEL_26;
  }
}

uint64_t sub_1C1A44670()
{
  v1 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v65 - v2;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_1C1A6D48C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  sub_1C1A6E8DC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1C1991140(v6, &unk_1EBF04600);
  }

  v68 = v0;
  v69 = v3;
  v15 = *(v8 + 32);
  v15(v13, v6, v7);
  if (sub_1C1A2A7D0())
  {
    v16 = sub_1C1A6F5AC();
    (*(*(v16 - 8) + 56))(v69, 1, 1, v16);
    (*(v8 + 16))(v10, v13, v7);
    sub_1C1A6F58C();
    v17 = v68;
    v18 = sub_1C1A6F57C();
    v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 2) = v18;
    *(v20 + 3) = v21;
    *(v20 + 4) = v17;
    v15(&v20[v19], v10, v7);
    sub_1C1A41134(0, 0, v69, &unk_1C1A77C60, v20);

    return (*(v8 + 8))(v13, v7);
  }

  v66 = v15;
  v67 = v7;
  v22 = sub_1C1A6D45C();
  v24 = v13;
  if (v23)
  {
    if (qword_1EBF035C8 != -1)
    {
      v61 = v22;
      v62 = v23;
      swift_once();
      v22 = v61;
      v23 = v62;
    }

    v25 = sub_1C1A63388(v22, v23, qword_1EBF076A0);

    if (v25)
    {
      v26 = sub_1C1A6E8CC();
      if (v26 != 2 && (v26 & 1) != 0)
      {
        v27 = sub_1C1A6F5AC();
        v28 = v69;
        (*(*(v27 - 8) + 56))(v69, 1, 1, v27);
        v29 = v67;
        (*(v8 + 16))(v10, v13, v67);
        sub_1C1A6F58C();
        v30 = v68;
        v31 = sub_1C1A6F57C();
        v32 = (*(v8 + 80) + 40) & ~*(v8 + 80);
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        *(v33 + 2) = v31;
        *(v33 + 3) = v34;
        *(v33 + 4) = v30;
        v66(&v33[v32], v10, v29);
        sub_1C1A40E34(0, 0, v28, &unk_1C1A77C50, v33);
LABEL_20:

        return (*(v8 + 8))(v24, v29);
      }
    }
  }

  v35 = sub_1C1A6D45C();
  if (!v36)
  {
    goto LABEL_18;
  }

  if (qword_1EBF035C8 != -1)
  {
    v63 = v35;
    v64 = v36;
    swift_once();
    v35 = v63;
    v36 = v64;
  }

  v37 = sub_1C1A63388(v35, v36, qword_1EBF076A0);

  if ((v37 & 1) != 0 && (v38 = sub_1C1A6E8CC(), v38 != 2) && (v38 & 1) == 0)
  {
    v50 = v67;
    (*(v8 + 16))(v10, v13, v67);
    v51 = objc_allocWithZone(type metadata accessor for SafariViewController());
    v52 = v68;
    v53 = sub_1C1A4BF64(v10, v52, v51);

    [v53 setModalPresentationStyle_];
    v54 = sub_1C1A6F5AC();
    v55 = v69;
    (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
    sub_1C1A6F58C();
    v56 = v52;
    v57 = v53;
    v58 = sub_1C1A6F57C();
    v59 = swift_allocObject();
    v60 = MEMORY[0x1E69E85E0];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v56;
    v59[5] = v57;
    sub_1C1A40E34(0, 0, v55, &unk_1C1A77C40, v59);

    return (*(v8 + 8))(v24, v50);
  }

  else
  {
LABEL_18:
    v39 = v68;
    sub_1C19992F8(v68 + OBJC_IVAR___APPCPromotedContentView_urlOpener, v70);
    v40 = v71;
    v41 = v72;
    sub_1C1994048(v70, v71);
    v42 = (*(v41 + 8))(v24, v40, v41);
    sub_1C199935C(v70);
    if (v42)
    {
      v43 = sub_1C1A6F5AC();
      v44 = v69;
      (*(*(v43 - 8) + 56))(v69, 1, 1, v43);
      v29 = v67;
      (*(v8 + 16))(v10, v24, v67);
      sub_1C1A6F58C();
      v45 = v39;
      v46 = sub_1C1A6F57C();
      v47 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v48 = swift_allocObject();
      v49 = MEMORY[0x1E69E85E0];
      *(v48 + 2) = v46;
      *(v48 + 3) = v49;
      *(v48 + 4) = v45;
      v66(&v48[v47], v10, v29);
      sub_1C1A41134(0, 0, v44, &unk_1C1A77C30, v48);
      goto LABEL_20;
    }

    return (*(v8 + 8))(v24, v67);
  }
}

uint64_t sub_1C1A44E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1C1A6F58C();
  v5[3] = sub_1C1A6F57C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C1A44F14;

  return sub_1C1A45050(a5);
}

uint64_t sub_1C1A44F14()
{

  v1 = sub_1C1A6F56C();

  return MEMORY[0x1EEE6DFA0](sub_1C1A4D5F0, v1, v0);
}

uint64_t sub_1C1A45050(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1C1A6F58C();
  v2[20] = sub_1C1A6F57C();
  v4 = sub_1C1A6F56C();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C1A450E8, v4, v3);
}

uint64_t sub_1C1A450E8()
{
  v27 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong viewControllerToPresentFrom];
    swift_unknownObjectRelease();
LABEL_5:
    v4 = [v2 presentedViewController];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for ExpandViewController();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v2;
      }

      else
      {
        v7 = v5;
      }

      if (v6)
      {
        v2 = v6;
      }
    }

    v0[23] = v2;
    v8 = v0[18];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v0[2] = v0;
    v0[3] = sub_1C1A4545C;
    v10 = swift_continuation_init();
    v0[17] = sub_1C19A9E58(&qword_1EBF04C90);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C1A48498;
    v0[13] = &unk_1F41426D0;
    v0[14] = v10;
    [v2 presentViewController:v8 animated:!IsReduceMotionEnabled completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v3 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
  if (v3)
  {
    v2 = v3;
    goto LABEL_5;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v11 = v0[19];
  v12 = sub_1C1A6F1BC();
  sub_1C1994600(v12, qword_1EDE665F0);
  v13 = v11;
  v14 = sub_1C1A6F19C();
  v15 = sub_1C1A6F66C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 67109378;
    *(v17 + 4) = 36;
    *(v17 + 8) = 2080;
    v19 = [*(v16 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v20 = sub_1C1A6F3CC();
    v22 = v21;

    v23 = sub_1C19A1884(v20, v22, &v26);

    *(v17 + 10) = v23;
    _os_log_impl(&dword_1C198D000, v14, v15, "Content ID: %-*s Unable to determine which view controller to present from.", v17, 0x12u);
    sub_1C199935C(v18);
    MEMORY[0x1C6906260](v18, -1, -1);
    MEMORY[0x1C6906260](v17, -1, -1);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1C1A4545C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C1A45564, v2, v1);
}

uint64_t sub_1C1A45564()
{
  v27 = v0;

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v1;
  v5 = v2;
  v6 = sub_1C1A6F19C();
  v7 = sub_1C1A6F65C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 67109635;
    *(v10 + 4) = 36;
    *(v10 + 8) = 2080;
    v13 = [*(v8 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v14 = sub_1C1A6F3CC();
    v16 = v15;

    v17 = sub_1C19A1884(v14, v16, &v26);

    *(v10 + 10) = v17;
    *(v10 + 18) = 2113;
    *(v10 + 20) = v9;
    *v11 = v9;
    v18 = v9;
    _os_log_impl(&dword_1C198D000, v6, v7, "Content ID: %-*s Presented view controller %{private}@.", v10, 0x1Cu);
    sub_1C1991140(v11, &unk_1EBF04B10);
    MEMORY[0x1C6906260](v11, -1, -1);
    sub_1C199935C(v12);
    MEMORY[0x1C6906260](v12, -1, -1);
    MEMORY[0x1C6906260](v10, -1, -1);
  }

  v19 = v0[19] + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v0[23];
  if (Strong)
  {
    v22 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(ObjectType, v22);
    swift_unknownObjectRelease();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1C1A457F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  sub_1C1A6F58C();
  v5[19] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v5[20] = v7;
  v5[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C1A4588C, v7, v6);
}

uint64_t sub_1C1A4588C()
{
  *(v0 + 176) = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  sub_1C1A6EB6C();
  v1 = swift_dynamicCastClass();
  *(v0 + 184) = v1;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = v1;
    sub_1C1A6EA8C();
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_1C1990FA8(v0 + 16, v0 + 56, &unk_1EBF042F0);
  v3 = *(v0 + 80);
  sub_1C1991140(v0 + 56, &unk_1EBF042F0);
  if (!v3)
  {
    if (v1)
    {
      v4 = v1;
      v5 = sub_1C1A6EADC();
      *(v0 + 192) = v5;

      if (v5)
      {
        v6 = swift_task_alloc();
        *(v0 + 200) = v6;
        v7 = sub_1C19A9E58(&unk_1EBF042F0);
        v8 = sub_1C19A9E58(&qword_1EBF04990);
        *v6 = v0;
        v6[1] = sub_1C1A45AC8;
        v9 = MEMORY[0x1E69E7288];

        return MEMORY[0x1EEE6DA10](v0 + 96, v5, v7, v8, v9);
      }
    }

    sub_1C1991140(v0 + 16, &unk_1EBF042F0);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_1C1A45CE0;

  return sub_1C1A2DE60(v0 + 16);
}

uint64_t sub_1C1A45AC8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1C1A46280;
  }

  else
  {
    v5 = sub_1C1A45C20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C1A45C20()
{
  sub_1C1991140(v0 + 16, &unk_1EBF042F0);
  v1 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 128);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_1C1A45CE0;

  return sub_1C1A2DE60(v0 + 16);
}

uint64_t sub_1C1A45CE0(char a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);
    v6 = *(v4 + 168);
    v7 = sub_1C1A46448;
  }

  else
  {
    *(v4 + 248) = a1 & 1;
    v5 = *(v4 + 160);
    v6 = *(v4 + 168);
    v7 = sub_1C1A45E0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C1A45E0C()
{
  v23 = v0;
  if (*(v0 + 248) == 1)
  {
    v1 = *(*(v0 + 144) + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController);
    *(v0 + 232) = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_1C1A460C0;

    return sub_1C1A45050(v2);
  }

  else
  {

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 136);
    v6 = sub_1C1A6F1BC();
    sub_1C1994600(v6, qword_1EDE665F0);
    v7 = v5;
    v8 = sub_1C1A6F19C();
    v9 = sub_1C1A6F65C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 184);
    if (v10)
    {
      v12 = *(v0 + 176);
      v13 = *(v0 + 136);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 67109378;
      *(v14 + 4) = 36;
      *(v14 + 8) = 2080;
      v16 = [*(v13 + v12) identifier];
      v17 = sub_1C1A6F3CC();
      v19 = v18;

      v20 = sub_1C19A1884(v17, v19, &v22);

      *(v14 + 10) = v20;
      _os_log_impl(&dword_1C198D000, v8, v9, "Content ID: %-*s Failed to load product using StoreKit.", v14, 0x12u);
      sub_1C199935C(v15);
      MEMORY[0x1C6906260](v15, -1, -1);
      MEMORY[0x1C6906260](v14, -1, -1);
    }

    else
    {
    }

    sub_1C1991140(v0 + 16, &unk_1EBF042F0);
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1C1A460C0()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1C1A46200, v4, v3);
}

uint64_t sub_1C1A46200()
{
  v1 = *(v0 + 184);

  sub_1C1991140(v0 + 16, &unk_1EBF042F0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C1A46280()
{
  v1 = v0[23];

  sub_1C1991140((v0 + 2), &unk_1EBF042F0);
  v2 = v0[26];
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = sub_1C1A6F19C();
  v6 = sub_1C1A6F66C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C198D000, v5, v6, "%@", v7, 0xCu);
    sub_1C1991140(v8, &unk_1EBF04B10);
    MEMORY[0x1C6906260](v8, -1, -1);
    MEMORY[0x1C6906260](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C1A46448()
{
  v1 = v0[23];

  sub_1C1991140((v0 + 2), &unk_1EBF042F0);
  v2 = v0[28];
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = sub_1C1A6F19C();
  v6 = sub_1C1A6F66C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C198D000, v5, v6, "%@", v7, 0xCu);
    sub_1C1991140(v8, &unk_1EBF04B10);
    MEMORY[0x1C6906260](v8, -1, -1);
    MEMORY[0x1C6906260](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C1A46610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_1C1A6D48C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1C1A6F58C();
  v5[13] = sub_1C1A6F57C();
  v8 = sub_1C1A6F56C();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C1A46708, v8, v7);
}

uint64_t sub_1C1A46708()
{
  sub_1C19992F8(v0[8] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1994048(v0 + 2, v1);
  sub_1C1A6DE2C();
  v3 = sub_1C19B7734(MEMORY[0x1E69E7CC0]);
  v0[16] = v3;
  v7 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1C1A46880;
  v5 = v0[12];

  return v7(v5, v3, v1, v2);
}

uint64_t sub_1C1A46880(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C1A4D5E8, v7, v6);
}

uint64_t sub_1C1A46A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1C1A6D48C();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_1C1A6F58C();
  v5[21] = sub_1C1A6F57C();
  v8 = sub_1C1A6F56C();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C1A46B1C, v8, v7);
}

uint64_t sub_1C1A46B1C()
{
  sub_1C19992F8(v0[16] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 11));
  v1 = v0[14];
  v2 = v0[15];
  sub_1C1994048(v0 + 11, v1);
  sub_1C1A6DE2C();
  sub_1C19A9E58(&qword_1EBF04C88);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x1E69DDB50];
  *(inited + 32) = *MEMORY[0x1E69DDB50];
  *(inited + 16) = xmmword_1C1A73A30;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v5 = v4;
  v6 = sub_1C19B7734(inited);
  v0[24] = v6;
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03C08);
  v10 = (*(v2 + 16) + **(v2 + 16));
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1C1A46D10;
  v8 = v0[20];

  return v10(v8, v6, v1, v2);
}

uint64_t sub_1C1A46D10(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 224) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 184);
  v7 = *(v2 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C1A46EB8, v7, v6);
}

uint64_t sub_1C1A46EB8()
{
  v1 = *(v0 + 224);
  sub_1C199935C(v0 + 88);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    sub_1C1A6DE2C();
    v6 = objc_allocWithZone(type metadata accessor for SafariViewController());
    v7 = v5;
    v8 = sub_1C1A4BF64(v4, v7, v6);
    *(v0 + 208) = v8;

    [v8 setModalPresentationStyle_];
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1C1A47000;

    return sub_1C1A45050(v8);
  }
}

uint64_t sub_1C1A47000()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C1A47120, v3, v2);
}

uint64_t sub_1C1A47120()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C1A47190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1C1A6F58C();
  v5[3] = sub_1C1A6F57C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C19C0A18;

  return sub_1C1A45050(a5);
}

uint64_t sub_1C1A4724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_1C1A6D48C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1C1A6F58C();
  v5[13] = sub_1C1A6F57C();
  v8 = sub_1C1A6F56C();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C1A47344, v8, v7);
}

uint64_t sub_1C1A47344()
{
  sub_1C19992F8(v0[8] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1994048(v0 + 2, v1);
  sub_1C1A6DE2C();
  v3 = sub_1C19B7734(MEMORY[0x1E69E7CC0]);
  v0[16] = v3;
  v7 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1C1A474BC;
  v5 = v0[12];

  return v7(v5, v3, v1, v2);
}

uint64_t sub_1C1A474BC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C1A47664, v7, v6);
}

uint64_t sub_1C1A47664()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);

  *v2 = v1;
  sub_1C199935C(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C1A476E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1C1A6F58C();
  v5[10] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C1A47784, v7, v6);
}

uint64_t sub_1C1A47784()
{
  sub_1C19992F8(v0[8] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1994048(v0 + 2, v1);
  v3 = sub_1C19B7734(MEMORY[0x1E69E7CC0]);
  v0[13] = v3;
  v7 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C1A478EC;
  v5 = v0[9];

  return v7(v5, v3, v1, v2);
}

uint64_t sub_1C1A478EC(char a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C1A4D5E0, v4, v3);
}

uint64_t sub_1C1A47A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1C1A6D48C();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_1C1A6F58C();
  v5[21] = sub_1C1A6F57C();
  v8 = sub_1C1A6F56C();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C1A47B2C, v8, v7);
}

uint64_t sub_1C1A47B2C()
{
  sub_1C19992F8(v0[16] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 11));
  v1 = v0[14];
  v2 = v0[15];
  sub_1C1994048(v0 + 11, v1);
  sub_1C19A9E58(&qword_1EBF04C88);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x1E69DDB50];
  *(inited + 32) = *MEMORY[0x1E69DDB50];
  *(inited + 16) = xmmword_1C1A73A30;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v5 = v4;
  v6 = sub_1C19B7734(inited);
  v0[24] = v6;
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03C08);
  v10 = (*(v2 + 16) + **(v2 + 16));
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1C1A47D10;
  v8 = v0[17];

  return v10(v8, v6, v1, v2);
}

uint64_t sub_1C1A47D10(char a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C1A47E5C, v4, v3);
}

uint64_t sub_1C1A47E5C()
{
  v1 = *(v0 + 224);
  sub_1C199935C(v0 + 88);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    (*(*(v0 + 152) + 16))(v4, *(v0 + 136), *(v0 + 144));
    v6 = objc_allocWithZone(type metadata accessor for SafariViewController());
    v7 = v5;
    v8 = sub_1C1A4BF64(v4, v7, v6);
    *(v0 + 208) = v8;

    [v8 setModalPresentationStyle_];
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1C1A47FB4;

    return sub_1C1A45050(v8);
  }
}

uint64_t sub_1C1A47FB4()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1C1A4D5EC, v3, v2);
}

uint64_t sub_1C1A480D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1C1A6F58C();
  v5[10] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C1A48170, v7, v6);
}

uint64_t sub_1C1A48170()
{
  sub_1C19992F8(v0[8] + OBJC_IVAR___APPCPromotedContentView_urlOpener, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1994048(v0 + 2, v1);
  v3 = sub_1C19B7734(MEMORY[0x1E69E7CC0]);
  v0[13] = v3;
  v7 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C1A482D8;
  v5 = v0[9];

  return v7(v5, v3, v1, v2);
}

uint64_t sub_1C1A482D8(char a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C1A48424, v4, v3);
}

uint64_t sub_1C1A48424()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  *v2 = v1;
  sub_1C199935C(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C1A48498(uint64_t a1)
{
  v1 = *sub_1C1994048((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1C1A48508(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C19A9E58(&qword_1EBF03D08);
  v33 = a2;
  result = sub_1C1A6FBDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C19916E4(v24, v34);
      }

      else
      {
        sub_1C19A1A5C(v24, v34);
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C19916E4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1A487C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C19A9E58(&qword_1EBF04C98);
  v34 = a2;
  result = sub_1C1A6FBDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_1C1A6FDAC();
      MEMORY[0x1C6905870](v21);
      result = sub_1C1A6FDDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1A48A70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C19A9E58(&qword_1EBF03CE8);
  v37 = a2;
  result = sub_1C1A6FBDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1A48D30(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v48 = a6;
  v8 = v6;
  v10 = a3(0);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v42 - v11;
  v12 = *v6;
  sub_1C19A9E58(a4);
  v46 = a2;
  result = sub_1C1A6FBDC();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v6;
    v44 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v45 + 72);
      v33 = v28 + v32 * v27;
      if (v46)
      {
        sub_1C1A40A54(v33, v47, v48);
      }

      else
      {
        sub_1C1A4D3D0(v33, v47, v48);
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = sub_1C1A40A54(v47, *(v14 + 56) + v32 * v22, v48);
      ++*(v14 + 16);
      v12 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_1C1A49084(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1C19A9E58(a3);
  v35 = a2;
  result = sub_1C1A6FBDC();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1C1A49338(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1C19A9E58(a3);
  result = sub_1C1A6FBDC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1C1A6FD9C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1C1A495B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C1991010(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for VisibilityTiming();
      return sub_1C1A4D438(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for VisibilityTiming);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C1A4AADC(type metadata accessor for VisibilityTiming, &qword_1EBF03CA0, &unk_1C1A740B0, type metadata accessor for VisibilityTiming);
    goto LABEL_7;
  }

  sub_1C1A48D30(v15, a4 & 1, type metadata accessor for VisibilityTiming, &qword_1EBF03CA0, &unk_1C1A740B0, type metadata accessor for VisibilityTiming);
  v22 = sub_1C1991010(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C1A4A0D4(v12, a2, a3, a1, v18, type metadata accessor for VisibilityTiming, type metadata accessor for VisibilityTiming);
}

_OWORD *sub_1C1A497B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1991010(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C1A4A204();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C1A48508(v16, a4 & 1);
    v11 = sub_1C1991010(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C1A6FD3C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1C199935C(v22);

    return sub_1C19916E4(a1, v22);
  }

  else
  {
    sub_1C1A4A024(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1C1A49908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C19B61F4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1A487C0(v16, a4 & 1);
      result = sub_1C19B61F4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C1A6FD3C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C1A4A3A8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1C1A49A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C1991010(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PreloadedContentDiagnosticPayload();
      return sub_1C1A4D438(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PreloadedContentDiagnosticPayload);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C1A4AADC(type metadata accessor for PreloadedContentDiagnosticPayload, &qword_1EBF03CB8, &unk_1C1A740C8, type metadata accessor for PreloadedContentDiagnosticPayload);
    goto LABEL_7;
  }

  sub_1C1A48D30(v15, a4 & 1, type metadata accessor for PreloadedContentDiagnosticPayload, &qword_1EBF03CB8, &unk_1C1A740C8, type metadata accessor for PreloadedContentDiagnosticPayload);
  v22 = sub_1C1991010(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C1A4A0D4(v12, a2, a3, a1, v18, type metadata accessor for PreloadedContentDiagnosticPayload, type metadata accessor for PreloadedContentDiagnosticPayload);
}

uint64_t sub_1C1A49CBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1C1991010(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1C1A49084(v18, a4 & 1, a5);
      v13 = sub_1C1991010(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C1A6FD3C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C1A4AD6C(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

unint64_t sub_1C1A49E84(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_1C19A30DC(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1C1A49338(v16, a3 & 1, a4);
      result = sub_1C19A30DC(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C1A6FD3C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C1A4B040(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

_OWORD *sub_1C1A4A024(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C19916E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1C1A4A090(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1C1A4A0D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1C1A40A54(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_1C1A4A180(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1C1A4A204()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF03D08);
  v2 = *v0;
  v3 = sub_1C1A6FBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C19A1A5C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C19916E4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1C1A4A3A8()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF04C98);
  v2 = *v0;
  v3 = sub_1C1A6FBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1C1A4A524()
{
  v1 = v0;
  v35 = sub_1C1A6D5DC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C19A9E58(&qword_1EBF03C80);
  v3 = *v0;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1C1A4A7A4()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF03CE8);
  v2 = *v0;
  v3 = sub_1C1A6FBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C1A4A944(uint64_t *a1)
{
  v2 = v1;
  sub_1C19A9E58(a1);
  v3 = *v1;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C1A4AADC(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v37 - v8;
  sub_1C19A9E58(a2);
  v9 = *v4;
  v10 = sub_1C1A6FBCC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v41 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = v9;
        v30 = *v28;
        v31 = v28[1];
        v32 = v38;
        v33 = *(v39 + 72) * v25;
        v34 = v40;
        sub_1C1A4D3D0(v27 + v33, v38, v40);
        v35 = v41;
        v36 = (*(v41 + 48) + v26);
        *v36 = v30;
        v36[1] = v31;
        v9 = v29;
        sub_1C1A40A54(v32, *(v35 + 56) + v33, v34);

        v20 = v42;
      }

      while (v42);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v37;
        v11 = v41;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1C1A4AD6C(uint64_t *a1)
{
  v2 = v1;
  sub_1C19A9E58(a1);
  v3 = *v1;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C1A4AEE0(uint64_t *a1)
{
  v2 = v1;
  sub_1C19A9E58(a1);
  v3 = *v1;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C1A4B040(uint64_t *a1)
{
  v2 = v1;
  sub_1C19A9E58(a1);
  v3 = *v1;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C1A4B18C(uint64_t *a1)
{
  v2 = v1;
  sub_1C19A9E58(a1);
  v3 = *v1;
  v4 = sub_1C1A6FBCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C1A4B2C8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C1A4B3BC;

  return v5(v2 + 32);
}

uint64_t sub_1C1A4B3BC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C1A4B4D0(void *a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v70 = a4;
  v69 = a3;
  ObjectType = swift_getObjectType();
  v73 = sub_1C1A6EBFC();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionResult;
  v11 = *MEMORY[0x1E69C5F28];
  v12 = sub_1C1A6DDCC();
  (*(*(v12 - 8) + 104))(&a5[v10], v11, v12);
  *&a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationObserver] = 0;
  *&a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationOpenObserver] = 0;
  v13 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_backgroundedTime;
  v14 = sub_1C1A6D5DC();
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *&a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_adamIdentifier] = a1;
  sub_1C19A9E58(&qword_1EBF04390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  *(inited + 32) = sub_1C1A6F3CC();
  *(inited + 40) = v16;
  *(inited + 72) = sub_1C1A4CEC8();
  *(inited + 48) = a1;
  v68 = a1;
  v17 = sub_1C19B6BD8(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03D10);
  v77 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductInfo;
  *&a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductInfo] = v17;
  v18 = (a2 + 64);
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 64);
  v22 = (v19 + 63) >> 6;
  v76 = a2;

  v23 = 0;
  v75 = a5;
  while (v21)
  {
LABEL_11:
    v27 = (v23 << 10) | (16 * __clz(__rbit64(v21)));
    v28 = (*(v76 + 48) + v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v76 + 56) + v27);
    v32 = *v31;
    v33 = v31[1];
    v80 = MEMORY[0x1E69E6158];
    *&v79 = v32;
    *(&v79 + 1) = v33;
    v34 = v77;
    swift_beginAccess();
    sub_1C19916E4(&v79, v82);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = a5;
    a5 = isUniquelyReferenced_nonNull_native;
    v81 = *&v36[v34];
    v37 = v81;
    *&v36[v34] = 0x8000000000000000;
    v5 = sub_1C1991010(v29, v30);
    v39 = v37[2];
    v40 = (v38 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_23;
    }

    v42 = v38;
    if (v37[3] >= v41)
    {
      if (a5)
      {
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C1A4A204();
        if (v42)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C1A48508(v41, a5);
      v43 = sub_1C1991010(v29, v30);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_30;
      }

      v5 = v43;
      if (v42)
      {
LABEL_4:

        v24 = v81;
        v25 = (v81[7] + 32 * v5);
        sub_1C199935C(v25);
        sub_1C19916E4(v82, v25);
        goto LABEL_5;
      }
    }

    v24 = v81;
    v81[(v5 >> 6) + 8] |= 1 << v5;
    v45 = (v24[6] + 16 * v5);
    *v45 = v29;
    v45[1] = v30;
    sub_1C19916E4(v82, (v24[7] + 32 * v5));
    v46 = v24[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_27;
    }

    v24[2] = v48;
LABEL_5:
    v21 &= v21 - 1;
    a5 = v75;
    *&v75[v77] = v24;

    swift_endAccess();
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = v18[v26];
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_11;
    }
  }

  v18 = &OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController;
  v49 = &a5[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController];
  v50 = v70;
  *v49 = v70;
  *(v49 + 1) = &off_1F4141EC0;
  v51 = qword_1EDE637E0;
  v5 = a5;
  a5 = v50;
  if (v51 != -1)
  {
    goto LABEL_28;
  }

LABEL_23:
  sub_1C19992F8(qword_1EDE66590, &v79);
  sub_1C1994048(&v79, v80);
  v52 = v72;
  v53 = v71;
  v54 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x1E6989CF8], v73);
  v55 = sub_1C1A6EC3C();
  (*(v52 + 8))(v53, v54);
  *(v5 + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_isAAKEnabled) = v55 & 1;
  sub_1C199935C(&v79);
  v78.receiver = v5;
  v78.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v78, sel_init);
  v57 = &v56[*v18];
  v58 = *v57;
  v59 = *(v57 + 1);
  v60 = swift_getObjectType();
  v61 = *(v59 + 16);
  v62 = v56;
  v63 = v58;
  v61(v56, v60, v59);

  v64 = [*v57 view];
  if (v64)
  {
    v65 = v64;

    [v65 setAutoresizingMask_];

    *&v62[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionDelegate + 8] = &off_1F41403B8;
    v66 = v69;
    swift_unknownObjectWeakAssign();

    return v62;
  }

  __break(1u);
LABEL_30:
  result = sub_1C1A6FD3C();
  __break(1u);
  return result;
}

id sub_1C1A4BBBC(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
  v7 = *MEMORY[0x1E69C5F28];
  v8 = sub_1C1A6DDCC();
  (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);
  v9 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore;
  *&a3[v9] = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  *&a3[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver] = 0;
  v10 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
  v11 = sub_1C1A6D5DC();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  *&a3[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionDelegate + 8] = 0;
  v12 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_calendarEvent] = a1;
  *(v12 + 8) = &off_1F41403B8;
  swift_unknownObjectWeakAssign();
  v14.receiver = a3;
  v14.super_class = ObjectType;

  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1C1A4BD3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF04410);
    v3 = sub_1C1A6FAAC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1C1A6FCEC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C1A4BEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C1A4724C(a1, v4, v5, v7, v6);
}

id sub_1C1A4BF64(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationObserver] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationCloseObserver] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationOpenObserver] = 0;
  v6 = OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_backgroundedTime;
  v7 = sub_1C1A6D5DC();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *&a3[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_actionDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1F41403B8;
  swift_unknownObjectWeakAssign();
  v8 = sub_1C1A6D41C();
  v9 = [objc_allocWithZone(MEMORY[0x1E697A840]) init];
  v13.receiver = a3;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithURL_configuration_, v8, v9);

  v11 = sub_1C1A6D48C();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_1C1A4C0D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A47190(a1, v4, v5, v7, v6);
}

uint64_t sub_1C1A4C190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A46A28(a1, v4, v5, v7, v6);
}

uint64_t sub_1C1A4C250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A46610(a1, v4, v5, v7, v6);
}

unint64_t sub_1C1A4C310()
{
  result = qword_1EBF03878;
  if (!qword_1EBF03878)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03878);
  }

  return result;
}

char *sub_1C1A4C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v9 = &a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_navigationCoordinator;
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_navigationCoordinator] = 0;
  swift_unknownObjectWeakInit();
  v11 = &a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate];
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver] = 0;
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver] = 0;
  v12 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
  v13 = sub_1C1A6D5DC();
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  v14 = &a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding];
  *v14 = 0;
  v14[8] = 1;
  *(v11 + 1) = &off_1F41403B8;
  swift_unknownObjectWeakAssign();
  v15 = sub_1C1A1C6E0(a1, a2);

  v16 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView;
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView] = v15;
  swift_getObjectType();
  swift_unknownObjectWeakAssign();
  v17 = type metadata accessor for WebAdNavigationCoordinator();
  v18 = swift_unknownObjectRetain();
  v19 = sub_1C19B525C(v18, v17);
  v20 = *&a6[v10];
  *&a6[v10] = v19;
  v21 = v19;

  v22 = *&a6[v16];
  [v22 setNavigationDelegate_];

  v23 = sub_1C1A28E8C();
  v24 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton;
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton] = v23;
  v25 = objc_opt_self();
  v26 = v23;
  v27 = [v25 mainBundle];
  sub_1C1A6D31C();

  v28 = sub_1C1A6F39C();

  [v26 setAccessibilityLabel_];

  v29 = [objc_allocWithZone(type metadata accessor for TapGestureRecognizer()) init];
  *&a6[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_tapGestureRecognizer] = v29;
  v30 = *&a6[v24];
  swift_beginAccess();
  v31 = v30;
  v32 = v29;
  sub_1C19EE060(&v69, v31);
  v33 = v69;
  swift_endAccess();

  v34 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_expandedDestinationURL;
  v58 = sub_1C1A6D48C();
  v35 = *(v58 - 8);
  (*(v35 + 16))(&a6[v34], a3, v58);
  v68.receiver = a6;
  v68.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v68, sel_initWithNibName_bundle_, 0, 0);
  v37 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView;
  v38 = *&v36[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView];
  v39 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  v40 = *&v38[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock];
  v41 = v36;
  v42 = v38;
  [v40 lock];
  *&v42[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = &off_1F413F9E0;
  swift_unknownObjectWeakAssign();
  [*&v38[v39] unlock];

  v43 = *&v36[v37];
  v44 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_tapGestureRecognizer;
  [v43 addGestureRecognizer_];
  [*&v41[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton] addTarget:v41 action:sel_closeButtonTappedWithSender_ forControlEvents:64];
  [*&v41[v44] addTarget:v41 action:sel_tapRecognized_];
  v45 = objc_opt_self();
  v46 = [v45 defaultCenter];
  v47 = *MEMORY[0x1E69DDAC8];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_1C1A4CDE0;
  v67 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1C1A40D40;
  v65 = &unk_1F4142810;
  v49 = _Block_copy(&aBlock);
  v50 = v41;

  v51 = [v46 addObserverForName:v47 object:0 queue:0 usingBlock:v49];
  _Block_release(v49);

  *&v50[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver] = v51;
  swift_unknownObjectRelease();
  v52 = [v45 defaultCenter];
  v53 = *MEMORY[0x1E69DDBC0];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v66 = sub_1C1A4CE00;
  v67 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1C1A40D40;
  v65 = &unk_1F4142838;
  v55 = _Block_copy(&aBlock);

  v56 = [v52 addObserverForName:v53 object:0 queue:0 usingBlock:v55];
  _Block_release(v55);

  swift_unknownObjectRelease();
  (*(v35 + 8))(a3, v58);
  *&v50[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver] = v56;

  swift_unknownObjectRelease();
  return v50;
}

uint64_t sub_1C1A4CA38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1990BB0;

  return sub_1C1990524(a1, v4);
}

uint64_t sub_1C1A4CAF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1990BB0;

  return sub_1C1A4B2C8(a1, v4);
}

uint64_t sub_1C1A4CBA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C19909C4;

  return sub_1C1A4B2C8(a1, v4);
}

uint64_t sub_1C1A4CC60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A44E58(a1, v4, v5, v7, v6);
}

uint64_t sub_1C1A4CD20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A44E58(a1, v4, v5, v7, v6);
}

uint64_t sub_1C1A4CDE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1A4CE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A457F4(a1, v4, v5, v7, v6);
}

unint64_t sub_1C1A4CEC8()
{
  result = qword_1EBF04870;
  if (!qword_1EBF04870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF04870);
  }

  return result;
}

uint64_t sub_1C1A4CF14(uint64_t a1)
{
  v4 = *(sub_1C1A6D48C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1990BB0;

  return sub_1C1A480D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C1A4D00C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1A4D054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1990BB0;

  return sub_1C1A44E58(a1, v4, v5, v7, v6);
}

uint64_t sub_1C1A4D114(uint64_t a1)
{
  v4 = *(sub_1C1A6D48C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1990BB0;

  return sub_1C1A47A38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C1A4D20C()
{
  v1 = sub_1C1A6D48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1A4D2D8(uint64_t a1)
{
  v4 = *(sub_1C1A6D48C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1990BB0;

  return sub_1C1A476E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C1A4D3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A4D438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A4D4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(qword_1EBF04CA0);
    v3 = sub_1C1A6FAAC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      sub_1C1A6FDAC();
      v11 = sub_1C1A6DECC();
      MEMORY[0x1C6905870](v11);
      result = sub_1C1A6FDDC();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_1C1A6DECC();
        result = sub_1C1A6DECC();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + 8 * i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t PageEnterAdEvent.init(pageIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for PageEnterAdEvent();
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double PageEnterAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t PageEnterAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*PageEnterAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19C8510;
}

uint64_t static PageEnterAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PageEnterAdEvent() + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for PageEnterAdEvent()
{
  result = qword_1EDE61B58;
  if (!qword_1EDE61B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C1A4D904()
{
  type metadata accessor for MetricsViewTracker();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1C19B7060(MEMORY[0x1E69E7CC0]);
  sub_1C19A9E58(&qword_1EBF04D30);
  v1 = sub_1C1A6F54C();
  v1[2] = 3;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 24) = 3;
  *(v0 + 32) = v1;
  *&result = 2;
  *(v0 + 40) = xmmword_1C1A77CC0;
  qword_1EDE66570 = v0;
  return result;
}

void sub_1C1A4D98C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C1A6F7CC();
  swift_beginAccess();
  if (!*(v2[2] + 16) || (sub_1C19A30DC(v6), (v7 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v2[2];
    v2[2] = 0x8000000000000000;
    sub_1C1A49A68(MEMORY[0x1E69E7CC0], v6, isUniquelyReferenced_nonNull_native);
    v2[2] = v28;
  }

  swift_endAccess();
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v9 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A73CD0;
  *(v10 + 56) = type metadata accessor for MetricsView();
  *(v10 + 64) = sub_1C1A4E7B8();
  *(v10 + 32) = a2;
  *(v10 + 96) = sub_1C198FB8C(0, &qword_1EDE626B8);
  *(v10 + 104) = sub_1C1A4E810();
  *(v10 + 72) = a1;
  v11 = a2;
  v12 = a1;
  sub_1C1A6F18C();

  if (sub_1C1A4DEAC(v6, v11))
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v6 = sub_1C1A3ECD0(v27, v6);
  if (!*v13)
  {
    v6(v27, 0);
    goto LABEL_9;
  }

  v14 = v13;
  _s17PromotedContentUI15WeakMetricsViewCMa_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_unknownObjectWeakAssign();
  MEMORY[0x1C6904FB0](v15);
  if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_1C1A6F55C();
    v6(v27, 0);
LABEL_9:
    swift_endAccess();
LABEL_10:
    swift_beginAccess();
    v16 = v3[5];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = v3[4];
    if (v16 >= *(v17 + 16))
    {
      goto LABEL_27;
    }

    if (!*(v17 + 8 * v16 + 32))
    {
      sub_1C19A9E58(&qword_1EBF04D28);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      sub_1C1A4E0B0(v6);
      swift_endAccess();

      v16 = v3[5];
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v17 = v3[4];
    }

    if (v16 >= *(v17 + 16))
    {
      goto LABEL_29;
    }

    if (*(v17 + 8 * v16 + 32))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        v19 = v12;
        v20 = sub_1C1A6F7BC();

        if (v20)
        {
          return;
        }
      }
    }

    v21 = v3[6];
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v22 = v3[4];
    if (v21 < *(v22 + 16))
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    sub_1C1A6F53C();
  }

  if (*(v22 + 8 * v21 + 32) && (v23 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v24 = v23;
    sub_1C1A4E17C(v23);
    sub_1C19A9E58(&qword_1EBF04D28);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    sub_1C1A4E0B0(v25);
    swift_endAccess();
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF04D28);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    sub_1C1A4E0B0(v26);
    swift_endAccess();
  }
}

BOOL sub_1C1A4DEAC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_1C19A30DC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v19 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_27;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C69055B0](v9, v7);
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            v8 = sub_1C1A6F9EC();
            goto LABEL_5;
          }

          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_17;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v12 = Strong, type metadata accessor for MetricsView(), v13 = a2, v14 = sub_1C1A6F7BC(), v13, v12, (v14 & 1) != 0))
        {
          sub_1C1A6FB2C();
          sub_1C1A6FB5C();
          sub_1C1A6FB6C();
          sub_1C1A6FB3C();
        }

        else
        {
        }

        ++v9;
        if (v10 == v8)
        {
          v16 = v19;
          goto LABEL_21;
        }
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_21:

    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      v17 = sub_1C1A6F9EC();
    }

    else
    {
      v17 = *(v16 + 16);
    }

    return v17 != 0;
  }

  else
  {
LABEL_18:
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_1C1A4E0B0(uint64_t result)
{
  v5 = v2[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *v2;
  if (!*v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 == 0x8000000000000000 && v3 == -1)
  {
    goto LABEL_16;
  }

  v1 = result;
  v4 = v7 % v3;
  v2[2] = v7 % v3;
  v9 = v2[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = sub_1C1A0DA24();
  v9 = result;
  if ((v4 & 0x8000000000000000) == 0)
  {
LABEL_9:
    if (v4 < *(v9 + 16))
    {
      *(v9 + 8 * v4 + 32) = v1;

      v2[1] = v9;
      v2[3] = (v4 + 1) % v3;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C1A4E17C(void *a1)
{
  v3 = sub_1C1A6F7CC();
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_1C19A30DC(v3), (v6 & 1) == 0))
  {
    swift_endAccess();
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v28 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A73A30;
    *(v29 + 56) = sub_1C198FB8C(0, &qword_1EDE626B8);
    *(v29 + 64) = sub_1C1A4E810();
    *(v29 + 32) = a1;
    v30 = a1;
    sub_1C1A6F18C();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v37 = v7;
  swift_endAccess();
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_41:

    v12 = MEMORY[0x1E69E7CC0];
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v31)
    {
      goto LABEL_44;
    }

LABEL_42:
    while (v31 <= *(v12 + 2))
    {
      v32 = v31 - 1;
      sub_1C1A0D994(*&v12[8 * v31 + 24]);

      v31 = v32;
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_40:
  result = sub_1C1A6F9EC();
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (result < 1)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v9 = result;
  v36 = v7 & 0xC000000000000001;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v34 = v9;
  v35 = v7;
  do
  {
    if (v36)
    {
      MEMORY[0x1C69055B0](v11, v7);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_8;
    }

    v14 = Strong;
    v15 = OBJC_IVAR___APPCMetricsView_promotedContent;
    v16 = [objc_msgSend(*(Strong + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper)];
    v17 = swift_unknownObjectRelease();
    if (!v16)
    {

      v23 = __OFADD__(v10++, 1);
      if (v23)
      {
        goto LABEL_39;
      }

      goto LABEL_8;
    }

    v18 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x420);
    v19 = v18(v17);
    if (!v19)
    {
LABEL_17:

      goto LABEL_22;
    }

    v20 = v19;
    type metadata accessor for WebAdView();
    if (!swift_dynamicCastClass())
    {

LABEL_22:
      v9 = v34;
      v7 = v35;
      v23 = __OFADD__(v10++, 1);
      if (v23)
      {
        goto LABEL_39;
      }

      goto LABEL_8;
    }

    v21 = [objc_msgSend(*(v14 + v15) metricsHelper)];
    v22 = swift_unknownObjectRelease();
    if (v21)
    {
      goto LABEL_17;
    }

    v24 = v18(v22);
    if (v24)
    {
      v25 = v24;
      if (swift_dynamicCastClass())
      {
        [v14 setReady_];
        sub_1C1A6386C();
        [v14 collapse];
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1C19CACF0(0, *(v12 + 2) + 1, 1, v12);
    }

    v9 = v34;
    v7 = v35;
    v27 = *(v12 + 2);
    v26 = *(v12 + 3);
    if (v27 >= v26 >> 1)
    {
      v12 = sub_1C19CACF0((v26 > 1), v27 + 1, 1, v12);
    }

    *(v12 + 2) = v27 + 1;
    *&v12[8 * v27 + 32] = v10;
    v23 = __OFADD__(v10++, 1);
    if (v23)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_8:
    ++v11;
  }

  while (v9 != v11);

  v31 = *(v12 + 2);
  if (v31)
  {
    goto LABEL_42;
  }

LABEL_44:

  v33 = sub_1C1A6F7CC();
  swift_beginAccess();
  sub_1C19B56EC(v37, v33);
  return swift_endAccess();
}

uint64_t sub_1C1A4E678()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A4E6DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1A4E718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1A4E760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1A4E7B8()
{
  result = qword_1EDE63558;
  if (!qword_1EDE63558)
  {
    type metadata accessor for MetricsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63558);
  }

  return result;
}

unint64_t sub_1C1A4E810()
{
  result = qword_1EDE626A8;
  if (!qword_1EDE626A8)
  {
    sub_1C198FB8C(255, &qword_1EDE626B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE626A8);
  }

  return result;
}

void sub_1C1A4E87C(uint64_t a1, double a2)
{
  v4 = sub_1C1A6F39C();
  sub_1C19A9E58(&qword_1EBF03E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73CD0;
  strcpy((inited + 32), "swipeDistance");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 56), "cacheDuration");
  *(inited + 70) = -4864;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1C19B6E74(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&qword_1EBF03E40);
  swift_arrayDestroy();
  sub_1C1A4EA14();
  v6 = sub_1C1A6F2FC();

  AnalyticsSendEvent();
}

unint64_t sub_1C1A4EA14()
{
  result = qword_1EDE62670;
  if (!qword_1EDE62670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE62670);
  }

  return result;
}

id sub_1C1A4EA70(void *a1)
{
  v1[OBJC_IVAR____TtC17PromotedContentUI10DimmerView_dimmed] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DimmerView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 clearColor];
    [v5 setBackgroundColor_];

    [v5 setAlpha_];
    [v5 setIsAccessibilityElement_];
    [v5 setUserInteractionEnabled_];
  }

  return v3;
}

id sub_1C1A4EB90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DimmerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PrivacyMarker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void static PrivacyMarker.privacyMarkerSize(sizeCategory:isVideo:minimumTappableSize:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  _s17PromotedContentUI13PrivacyMarkerC07privacyE4Size4type12sizeCategory015minimumTappableG0So6CGSizeVAA0dE4TypeO_So09UIContentgJ0aAItFZ_0(&v3, a1);
}

double sub_1C1A4EC60()
{
  v1 = v0 + OBJC_IVAR___APPrivacyMarker_minimumTappableSize;
  swift_beginAccess();
  return *v1;
}

void sub_1C1A4ECA8(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___APPrivacyMarker_minimumTappableSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  sub_1C19970C4();
}

void (*sub_1C1A4ED04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1A4ED68;
}

void sub_1C1A4ED68(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C19970C4();
  }
}

id PrivacyMarker.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *PrivacyMarker.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v10 = OBJC_IVAR___APPrivacyMarker_markerView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4[OBJC_IVAR___APPrivacyMarker_privacyMarkerType] = 0;
  *&v4[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition] = 2;
  v11 = &v4[OBJC_IVAR___APPrivacyMarker_minimumTappableSize];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR___APPrivacyMarker_adjustsFontForContentSizeCategory] = 1;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for PrivacyMarker();
  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR___APPrivacyMarker_markerView];
  v14 = v12;
  [v14 addSubview_];
  [v13 setUserInteractionEnabled_];
  v15 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  v16 = *&v14[OBJC_IVAR___APPrivacyMarker_markerLabel];
  [v13 addSubview_];
  [v13 frame];
  [v16 setFrame_];
  [v16 setUserInteractionEnabled_];
  sub_1C19963F0();
  v17 = sub_1C1A6F39C();
  [v14 setAccessibilityIdentifier_];

  v18 = [*&v14[v15] text];
  [v14 setAccessibilityLabel_];

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 addObserver:v14 selector:sel_systemColorStatusChanged_ name:*MEMORY[0x1E69DD8B8] object:0];

  v21 = [v19 defaultCenter];
  [v21 addObserver:v14 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  sub_1C1996934();
  sub_1C19970C4();

  return v14;
}

char *PrivacyMarker.init(adjustsFontForContentSizeCategory:)(char a1)
{
  v3 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR___APPrivacyMarker_markerView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v1[OBJC_IVAR___APPrivacyMarker_privacyMarkerType] = 0;
  *&v1[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition] = 2;
  v5 = &v1[OBJC_IVAR___APPrivacyMarker_minimumTappableSize];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR___APPrivacyMarker_adjustsFontForContentSizeCategory] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PrivacyMarker();
  v6 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR___APPrivacyMarker_markerView];
  v8 = v6;
  [v8 addSubview_];
  [v7 setUserInteractionEnabled_];
  v9 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  v10 = *&v8[OBJC_IVAR___APPrivacyMarker_markerLabel];
  [v7 addSubview_];
  [v7 frame];
  [v10 setFrame_];
  [v10 setUserInteractionEnabled_];
  sub_1C19963F0();
  v11 = sub_1C1A6F39C();
  [v8 setAccessibilityIdentifier_];

  v12 = [*&v8[v9] text];
  [v8 setAccessibilityLabel_];

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v8 selector:sel_systemColorStatusChanged_ name:*MEMORY[0x1E69DD8B8] object:0];

  v15 = [v13 defaultCenter];
  [v15 addObserver:v8 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  sub_1C1996934();
  sub_1C19970C4();

  return v8;
}

id sub_1C1A4F3C0(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    v9 = 60.0;
  }

  else
  {
    v9 = 44.0;
  }

  [v3 bounds];
  if (CGRectGetWidth(v15) <= v9 || ([v3 bounds], CGRectGetHeight(v16) <= v9))
  {
    [v3 bounds];
    v11 = CGRectGetWidth(v17) - v9;
    [v3 bounds];
    v12 = CGRectGetHeight(v18) - v9;
    [v3 bounds];
    v20 = CGRectInset(v19, v11 + v11, v12 + v12);
    v14.x = a2;
    v14.y = a3;
    return CGRectContainsPoint(v20, v14);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = type metadata accessor for PrivacyMarker();
    return objc_msgSendSuper2(&v13, sel_pointInside_withEvent_, a1, a2, a3);
  }
}

uint64_t sub_1C1A4F56C()
{
  v1 = *(v0 + OBJC_IVAR___APPrivacyMarker_markerView);
  result = sub_1C1996AD0();
  if ((result & 1) == 0)
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      if (qword_1EBF035B0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [v1 setBackgroundColor_];
      if (qword_1EBF035B8 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EBF04980;
    }

    else
    {
      if (qword_1EDE62860 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [v1 setBackgroundColor_];
      if (qword_1EDE62818 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDE62820;
    }

    swift_beginAccess();
    return [v1 setTintColor_];
  }

  return result;
}

id PrivacyMarker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyMarker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1A4FA2C()
{
  v1 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v2 = OBJC_IVAR___APPrivacyMarker_markerView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR___APPrivacyMarker_privacyMarkerType) = 0;
  *(v0 + OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition) = 2;
  v3 = (v0 + OBJC_IVAR___APPrivacyMarker_minimumTappableSize);
  *v3 = 0;
  v3[1] = 0;
  sub_1C1A6FB8C();
  __break(1u);
}

uint64_t type metadata accessor for SponsorshipAdPreviewConfiguration()
{
  result = qword_1EBF04D78;
  if (!qword_1EBF04D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1A4FB94()
{
  sub_1C19FA438(319, &qword_1EDE62740);
  if (v0 <= 0x3F)
  {
    sub_1C1A4FC84();
    if (v1 <= 0x3F)
    {
      sub_1C19FA438(319, &qword_1EDE60C90);
      if (v2 <= 0x3F)
      {
        sub_1C1A6D48C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1A4FC84()
{
  if (!qword_1EBF04D88)
  {
    sub_1C1A6D6FC();
    v0 = sub_1C1A6F91C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF04D88);
    }
  }
}

uint64_t sub_1C1A4FCDC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1954047348;
    v6 = 0x6D695F746867696CLL;
    if (a1 != 8)
    {
      v6 = 0x616D695F6B726164;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 7627113;
    if (a1 != 5)
    {
      v7 = 6911082;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7566185;
    v2 = 6583649;
    v3 = 7370853;
    if (a1 != 3)
    {
      v3 = 6709870;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 6452595;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C1A4FDF0(void *a1)
{
  v3 = sub_1C19A9E58(&qword_1EBF04DC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1C1994048(a1, a1[3]);
  sub_1C1A50D88();
  sub_1C1A6FE0C();
  v8[31] = 0;
  sub_1C1A6FC6C();
  if (!v1)
  {
    v8[30] = 1;
    sub_1C1A6FC6C();
    type metadata accessor for SponsorshipAdPreviewConfiguration();
    v8[29] = 2;
    sub_1C1A6D6FC();
    sub_1C1A51380(&qword_1EBF04DC8, MEMORY[0x1E69860B8]);
    sub_1C1A6FC8C();
    v8[28] = 3;
    sub_1C1A6FC7C();
    v8[27] = 4;
    sub_1C1A6FC7C();
    v8[26] = 5;
    sub_1C1A6FC7C();
    v8[25] = 6;
    sub_1C1A6FC6C();
    v8[24] = 7;
    sub_1C1A6FC9C();
    v8[15] = 8;
    sub_1C1A6D48C();
    sub_1C1A51380(&qword_1EBF04DD0, MEMORY[0x1E6968FB0]);
    sub_1C1A6FCAC();
    v8[14] = 9;
    sub_1C1A6FCAC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C1A50190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1C1A6D48C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = sub_1C19A9E58(&qword_1EBF04D70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v62 = sub_1C19A9E58(&qword_1EBF04DA0);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v52 - v12;
  v14 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v64 = a1;
  sub_1C1994048(a1, v17);
  sub_1C1A50D88();
  v61 = v13;
  v18 = v63;
  sub_1C1A6FDFC();
  if (v18)
  {
    return sub_1C199935C(v64);
  }

  v54 = v5;
  v55 = v8;
  v19 = v60;
  v56 = v14;
  v63 = v16;
  v74 = 0;
  v20 = sub_1C1A6FC1C();
  v22 = v63;
  *v63 = v20;
  *(v22 + 1) = v23;
  v73 = 1;
  *(v22 + 2) = sub_1C1A6FC1C();
  *(v22 + 3) = v24;
  sub_1C1A6D6FC();
  v72 = 2;
  sub_1C1A51380(&qword_1EBF04DB0, MEMORY[0x1E69860B8]);
  v53 = 0;
  sub_1C1A6FC3C();
  v25 = v56;
  sub_1C1A50DDC(v11, &v22[v56[6]]);
  v71 = 3;
  v26 = sub_1C1A6FC2C();
  v27 = &v22[v25[7]];
  *v27 = v26;
  v27[8] = v28 & 1;
  v70 = 4;
  v29 = sub_1C1A6FC2C();
  v30 = v25;
  v31 = &v22[v25[8]];
  *v31 = v29;
  v31[8] = v32 & 1;
  v69 = 5;
  v33 = sub_1C1A6FC2C();
  v34 = &v22[v25[9]];
  *v34 = v33;
  v34[8] = v35 & 1;
  v68 = 6;
  v36 = sub_1C1A6FC1C();
  v38 = &v22[v25[10]];
  *v38 = v36;
  v38[1] = v37;
  v67 = 7;
  v52 = 0;
  v39 = sub_1C1A6FC4C();
  v53 = 0;
  v40 = v58;
  v41 = v59;
  v42 = &v22[v30[11]];
  *v42 = v39;
  v42[1] = v43;
  v66 = 8;
  sub_1C1A51380(&qword_1EBF04DB8, MEMORY[0x1E6968FB0]);
  v44 = v55;
  v45 = v53;
  sub_1C1A6FC5C();
  v53 = v45;
  if (v45)
  {
    (*(v19 + 8))(v61, v62);
    v46 = 0;
  }

  else
  {
    v47 = *(v40 + 32);
    v47(&v22[v56[12]], v44, v41);
    v65 = 9;
    v48 = v53;
    sub_1C1A6FC5C();
    v53 = v48;
    if (!v48)
    {
      (*(v19 + 8))(v61, v62);
      v51 = v63;
      v47(v63 + v56[13], v54, v59);
      sub_1C1A0DB4C(v51, v57);
      sub_1C199935C(v64);
      return sub_1C1A0DBB0(v51);
    }

    (*(v19 + 8))(v61, v62);
    v46 = 1;
    v22 = v63;
    v40 = v58;
    v41 = v59;
  }

  v49 = v52;
  sub_1C199935C(v64);

  sub_1C1991140(&v22[v56[6]], &qword_1EBF04D70);
  if (!v49)
  {
  }

  v50 = v56;

  if (v46)
  {
    return (*(v40 + 8))(&v22[v50[12]], v41);
  }

  return result;
}

uint64_t sub_1C1A50904(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1C1A4FCDC(*a1);
  v5 = v4;
  if (v3 == sub_1C1A4FCDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1A6FCEC();
  }

  return v8 & 1;
}

uint64_t sub_1C1A5098C()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  sub_1C1A4FCDC(v1);
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C1A509F0()
{
  sub_1C1A4FCDC(*v0);
  sub_1C1A6F45C();
}

uint64_t sub_1C1A50A44()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  sub_1C1A4FCDC(v1);
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C1A50AA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1A51620();
  *a1 = result;
  return result;
}

uint64_t sub_1C1A50AD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1A4FCDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1A50B1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1A51620();
  *a1 = result;
  return result;
}

uint64_t sub_1C1A50B50(uint64_t a1)
{
  v2 = sub_1C1A50D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1A50B8C(uint64_t a1)
{
  v2 = sub_1C1A50D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1A50BC8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C1A50C44(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

unint64_t sub_1C1A50D88()
{
  result = qword_1EBF04DA8;
  if (!qword_1EBF04DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04DA8);
  }

  return result;
}

uint64_t sub_1C1A50DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF04D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A50E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF04D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A50EBC(void *a1, void *a2)
{
  v4 = sub_1C1A6D6FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF04D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF04DD8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1C1A6FCEC() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
    goto LABEL_21;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1C1A6FCEC() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v51 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  v18 = v51[6];
  v19 = *(v11 + 48);
  sub_1C1A50E4C(a1 + v18, v13);
  sub_1C1A50E4C(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_1C1A50E4C(v13, v10);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v19], v4);
      sub_1C1A51380(&qword_1EBF04DE0, MEMORY[0x1E69860B8]);
      v23 = sub_1C1A6F38C();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1C1991140(v13, &qword_1EBF04D70);
      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_1C1991140(v13, &qword_1EBF04DD8);
    goto LABEL_21;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_20;
  }

  sub_1C1991140(v13, &qword_1EBF04D70);
LABEL_24:
  v25 = v51;
  v26 = v51[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_21;
    }
  }

  v31 = v51[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_21;
    }
  }

  v36 = v51[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_21;
    }
  }

  v41 = v51[10];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_1C1A6FCEC() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v45)
  {
    goto LABEL_21;
  }

  v46 = v25[11];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  if (v47 == *v49 && v48 == v49[1] || (sub_1C1A6FCEC()) && (sub_1C1A6D42C())
  {
    v21 = sub_1C1A6D42C();
    return v21 & 1;
  }

LABEL_21:
  v21 = 0;
  return v21 & 1;
}