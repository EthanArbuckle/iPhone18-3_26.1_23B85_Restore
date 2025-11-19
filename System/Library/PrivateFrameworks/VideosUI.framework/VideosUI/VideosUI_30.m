void sub_1E387983C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    OUTLINED_FUNCTION_192();
    return;
  }

  v2 = Strong;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_88_0();
  v5 = *(v4 + 488);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_38();
  v5(v8);

  OUTLINED_FUNCTION_36_3();
  (*((*v3 & v9) + 0x4D0))();
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*v3 & v10) + 0x1A8))();
  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {
LABEL_12:
    v14 = 0;
LABEL_13:

    v20 = sub_1E3869DD4();
    OUTLINED_FUNCTION_36_3();
    v22 = (*((*v3 & v21) + 0x260))();
    (*(*v20 + 152))(v22 & 1);

    OUTLINED_FUNCTION_8();
    v24 = *(v23 + 192);

    v24(v14);

    goto LABEL_14;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    OUTLINED_FUNCTION_21();
    v18 = (*(v17 + 552))();

    if (v18)
    {

      if (v16 == v18)
      {
        goto LABEL_13;
      }
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    ++v14;
    if (v19 == v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1E3879AD4()
{
  sub_1E4203E44();
  sub_1E4200FE4();
}

uint64_t sub_1E3879B44()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1E386AD2C();

    sub_1E3CB8ACC();
  }

  return result;
}

uint64_t sub_1E3879BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3879C28()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386DDA8();
}

void sub_1E3879D0C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E386B3D4();
    v5 = v4;
    v6 = 0.0;
    if (v1)
    {
      v6 = 1.0;
    }

    [v4 setAlpha_];
  }
}

uint64_t sub_1E3879D88()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v0, v1);
  return v0;
}

void sub_1E3879DE4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsFocusUpdate];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 updateFocusIfNeeded];
  }
}

uint64_t sub_1E3879E68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3879EB0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E386A170();
    v5 = v1 ^ 1u;
    sub_1E3D31490(v5);

    if (v5)
    {
      v7 = 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      (*(v6 + 432))();
      v7 = 1.0;
    }

    sub_1E38746CC();
    OUTLINED_FUNCTION_88_0();
    v9 = *(v8 + 432);
    v11 = v10;
    v9(v5);

    v12 = sub_1E386B308();
    [v12 setAlpha_];

    [v3 setNeedsStatusBarAppearanceUpdate];
    [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

unint64_t sub_1E387A028()
{
  result = qword_1ECF2C4F0;
  if (!qword_1ECF2C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C4F0);
  }

  return result;
}

void sub_1E387A07C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsContentsLoaded) = 1;
    OUTLINED_FUNCTION_64();
    if ((*(v4 + 608))())
    {
      OUTLINED_FUNCTION_2_4();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v6 = v3;
      v7 = v1;
      sub_1E3874870(1, sub_1E387A238, v5);
    }
  }
}

void sub_1E387A168(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_49();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 1240))();
  }

  else
  {
    OUTLINED_FUNCTION_3_49();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v3 + 1232))();
  }
}

id sub_1E387A238()
{
  v1 = *(v0 + 24);
  sub_1E3280A90(0, &qword_1EE23AE80);
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_25();
  sub_1E3B02648();

  return [v4 setContentsDidLoad_];
}

uint64_t objectdestroy_35Tm()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

void sub_1E387A358()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E387A3DC()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];

      v4 = [v1 view];
      if (v4)
      {
        [v4 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1E387A498()
{
  sub_1E386AD2C();
  sub_1E3CB8C20();
}

void sub_1E387A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_138_2();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v36 = Strong;
  if (!v34)
  {

    OUTLINED_FUNCTION_25_4();
LABEL_10:
    sub_1E325F6F0(&a11, &unk_1ECF296E0);
LABEL_12:
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v42();
    goto LABEL_13;
  }

  v37 = OUTLINED_FUNCTION_176_1();
  sub_1E38776C0(v37, v34, v38);
  if (!a14)
  {

    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0);
  if ((OUTLINED_FUNCTION_24_16() & 1) == 0)
  {

    goto LABEL_12;
  }

  v39 = OUTLINED_FUNCTION_175_1();
  sub_1E38776C0(v39, v34, v40);
  if (a14)
  {
    if (OUTLINED_FUNCTION_24_16())
    {
      v41 = a9;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F6F0(&a11, &unk_1ECF296E0);
  }

  v41 = 0;
LABEL_16:
  v43 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v43, v34, v44);
  if (!a14)
  {
    sub_1E325F6F0(&a11, &unk_1ECF296E0);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (!OUTLINED_FUNCTION_24_16())
  {
LABEL_20:
    v54 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_2_4();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_89_1(v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v54 = sub_1E387F690;
LABEL_21:
  v55 = sub_1E386A9A8();
  v56 = MEMORY[0x1E69E7D40];
  if (v55)
  {
    v57 = v55;
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_21();
    (*(v58 + 704))(a9, v59 & 1);
  }

  v60 = sub_1E386B444();
  sub_1E3874790(!v60, v41);
  sub_1E3869DD4();
  OUTLINED_FUNCTION_67_1();
  (*((*v56 & v61) + 0x260))();
  OUTLINED_FUNCTION_26();
  (*(v62 + 152))(v63 & 1);

  if (v54)
  {

    (v54)(v64);
    v65 = OUTLINED_FUNCTION_123_1();
    sub_1E37FAED8(v65, v66);
    v67 = OUTLINED_FUNCTION_123_1();
    sub_1E37FAED8(v67, v68);
  }

  *v30 = 1;
LABEL_13:
  OUTLINED_FUNCTION_137_2();
}

void sub_1E387A7D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v8 = Strong;
  if (a4)
  {
    sub_1E38776C0(0, a4, &aBlock);
    if (*(&v75 + 1))
    {
      sub_1E3280A90(0, &qword_1ECF2C3E0);
      if ((OUTLINED_FUNCTION_109_3() & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v9 = *&v78[0];
      sub_1E38776C0(3, a4, &aBlock);
      if (*(&v75 + 1))
      {
        if (OUTLINED_FUNCTION_109_3())
        {
          v70 = v9;
          v72 = LOBYTE(v78[0]);
          OUTLINED_FUNCTION_85();
          v10 += 53;
          v11 = *v10;
          v12 = (*v10)();
          v13 = sub_1E32AE9B0(v12);

          if (v13 <= 1)
          {
            sub_1E38746CC();
          }

          sub_1E38776C0(4, a4, &aBlock);
          if (*(&v75 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
            v14 = OUTLINED_FUNCTION_109_3();
            if (v14)
            {
              OUTLINED_FUNCTION_2_4();
              v14 = swift_allocObject();
              v15 = v14;
              *(v14 + 16) = v78[0];
              v16 = sub_1E387F690;
            }

            else
            {
              v16 = 0;
              v15 = 0;
            }

            v73 = v16;
          }

          else
          {
            v14 = sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
            v73 = 0;
            v15 = 0;
          }

          v17 = (v11)(v14);
          OUTLINED_FUNCTION_124_1(v17);
          if (v4 == 1)
          {
            v18 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_88_0();
            v20 = *(v19 + 864);
            v21 = v15;
            v23 = v22;
            OUTLINED_FUNCTION_25();
            v20();

            OUTLINED_FUNCTION_4_0();
            v24 = swift_allocObject();
            OUTLINED_FUNCTION_105_2(v24);
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_5_10();
            v25 = swift_allocObject();
            v25[2] = v23;
            v25[3] = v73;
            v25[4] = v15;
            v26 = *((*v18 & *v8) + 0x260);
            v27 = sub_1E37FAED4(v73, v21);
            if (v26(v27))
            {
              OUTLINED_FUNCTION_2_4();
              v28 = swift_allocObject();
              *(v28 + 16) = sub_1E387E404;
              *(v28 + 24) = v25;
              v76 = sub_1E37D1918;
              v77 = v28;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v75 = v29;
              *(&v75 + 1) = &block_descriptor_365;
              v30 = _Block_copy(&aBlock);
            }

            else
            {
              OUTLINED_FUNCTION_5_10();
              v46 = swift_allocObject();
              v46[2] = a1;
              v46[3] = sub_1E387E404;
              v46[4] = v25;
              v76 = sub_1E387E4E8;
              v77 = v46;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v75 = v47;
              *(&v75 + 1) = &block_descriptor_353;
              v30 = _Block_copy(&aBlock);
              v48 = a1;
            }

            v49 = OUTLINED_FUNCTION_173_0();
            [v49 v50];
            _Block_release(v30);
            v51 = sub_1E386B444();
            sub_1E3874790(!v51, v72);
            OUTLINED_FUNCTION_131_3();
            v53 = *(v52 + 128);
            (v53)(&aBlock);
            if (aBlock == 9 || (LOBYTE(v78[0]) = aBlock, v79 = 1, sub_1E387E680(), (sub_1E4205E84() & 1) == 0))
            {
              OUTLINED_FUNCTION_4_0();
              v54 = swift_allocObject();
              *(v54 + 16) = v8;
              v76 = sub_1E387E634;
              v77 = v54;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v75 = v55;
              *(&v75 + 1) = &block_descriptor_359;
              v56 = _Block_copy(&aBlock);
              v57 = v8;

              v58 = OUTLINED_FUNCTION_173_0();
              [v58 v59];
              _Block_release(v56);
            }

            v53();

            sub_1E37FAED8(v73, v21);

            goto LABEL_39;
          }

          OUTLINED_FUNCTION_4_0();
          v31 = swift_allocObject();
          OUTLINED_FUNCTION_83_1(v31);
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_27_10();
          v32 = swift_allocObject();
          *(v32 + 16) = a4;
          *(v32 + 24) = v9;
          *(v32 + 32) = v72;
          *(v32 + 40) = a1;
          *(v32 + 48) = v73;
          *(v32 + 56) = v15;
          v69 = v32;
          sub_1E37FAED4(v73, v15);
          v33 = a1;

          v71 = v9;
          v34 = v11();
          OUTLINED_FUNCTION_124_1(v34);
          if (v4 > 2 || (OUTLINED_FUNCTION_85(), ((*(v35 + 608))() & 1) != 0))
          {
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v36 = swift_unknownObjectWeakLoadStrong();
            if (v36)
            {
              v37 = *(v36 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
              v68 = v36;
              OUTLINED_FUNCTION_4_0();
              v38 = swift_allocObject();
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_10_9();
              v39 = v15;
              v40 = swift_allocObject();
              v40[2] = v38;
              v40[3] = v33;
              v41 = v73;
              v40[4] = v73;
              v40[5] = v39;
              v67 = *((*MEMORY[0x1E69E7D40] & *v37) + 0x360);
              sub_1E37FAED4(v73, v39);
              v42 = v33;
              v43 = v37;

              v44 = v71;
              v45 = v72;
              v67(v71, v72, sub_1E387E3F8, v40);
              v15 = v39;

LABEL_38:
              v64 = sub_1E386B444();
              v65 = OUTLINED_FUNCTION_189_0(v64);
              sub_1E3874790(v65, v45);

              OUTLINED_FUNCTION_131_3();
              (*(v66 + 128))();
              sub_1E37FAED8(v41, v15);

LABEL_39:
              return;
            }

            v41 = v73;
            v45 = v72;
          }

          else
          {

            v79 = 7;
            memset(v78, 0, sizeof(v78));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
            OUTLINED_FUNCTION_2_4();
            v61 = swift_allocObject();
            *(v61 + 16) = sub_1E387E2B8;
            *(v61 + 24) = v69;
            inited[4].n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
            inited[2].n128_u64[1] = sub_1E37D1918;
            inited[3].n128_u64[0] = v61;
            sub_1E3879330();

            v62 = sub_1E4205CB4();
            OUTLINED_FUNCTION_131_3();
            (*(v63 + 152))(&v79, v78, v62);

            sub_1E325F6F0(v78, &unk_1ECF296E0);
            v41 = v73;
            v45 = v72;
          }

          v44 = v71;
          goto LABEL_38;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {

    aBlock = 0u;
    v75 = 0u;
  }

  sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
LABEL_18:
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))();
}

void sub_1E387B2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v6 = Strong;
  if (a4)
  {
    sub_1E38776C0(0, a4, &v43);
    if (*(&v44 + 1))
    {
      sub_1E3280A90(0, &qword_1ECF2C3E0);
      if ((OUTLINED_FUNCTION_106_4() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      sub_1E38776C0(1, a4, &v43);
      if (*(&v44 + 1))
      {
        if (OUTLINED_FUNCTION_106_4())
        {
          sub_1E38776C0(4, a4, &v43);
          if (*(&v44 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
            if (OUTLINED_FUNCTION_106_4())
            {
              OUTLINED_FUNCTION_2_4();
              v40 = swift_allocObject();
              *(v40 + 16) = v41;
              v7 = sub_1E387F690;
            }

            else
            {
              v7 = 0;
              v40 = 0;
            }

            v39 = v7;
          }

          else
          {
            sub_1E325F6F0(&v43, &unk_1ECF296E0);
            v39 = 0;
            v40 = 0;
          }

          OUTLINED_FUNCTION_21();
          (*(v9 + 264))();
          *&v43 = v41;
          BYTE8(v43) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4F8);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(v10, &qword_1ECF2C4F8);
          sub_1E38D2054(&v43, &v42);
          v11 = v42;

          if (v11)
          {
            OUTLINED_FUNCTION_88_0();
            v13 = *(v12 + 920);
            v15 = v14;
            v16 = v13(v11);

            if (v16)
            {
              v38 = v16;
              OUTLINED_FUNCTION_45();
              v18 = *(v17 + 328);
              v19 = v11;
              v20 = v18();

              if (v20 && (v20, v11 == v20))
              {
                v21 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
                OUTLINED_FUNCTION_3_0();
                v22 = *&v6[v21];
                *&v6[v21] = v41;
                v23 = v41;

                OUTLINED_FUNCTION_88_0();
                v25 = *(v24 + 856);
                v27 = v26;
                v25(v23, v41, 0);

                v28 = v38;
              }

              else
              {
                v29 = v6;
                [v29 addChildViewController_];
                [v41 didMoveToParentViewController_];

                v30 = OUTLINED_FUNCTION_51_1();
                v28 = v38;
                (*((*MEMORY[0x1E69E7D40] & *v38) + 0x2C0))(v41, v30 & 1);
              }

              if (v39)
              {

                (v39)(v31);
                v32 = OUTLINED_FUNCTION_123_1();
                sub_1E37FAED8(v32, v33);
              }

              OUTLINED_FUNCTION_12_5();
              OUTLINED_FUNCTION_65_7();
              v34();

              v35 = OUTLINED_FUNCTION_123_1();
              goto LABEL_32;
            }
          }

          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_65_7();
          v37();
          v35 = v39;
          v36 = v40;
LABEL_32:
          sub_1E37FAED8(v35, v36);

          return;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {

    v43 = 0u;
    v44 = 0u;
  }

  sub_1E325F6F0(&v43, &unk_1ECF296E0);
LABEL_16:
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_65_7();
  v8();
}

void sub_1E387B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    if (v34)
    {
      sub_1E38776C0(3, v34, &a12);
      if (a14)
      {
        if (OUTLINED_FUNCTION_110_2())
        {
          v48 = a11;
          goto LABEL_10;
        }

LABEL_9:
        v48 = 0;
LABEL_10:
        sub_1E38776C0(1, v34, &a12);
        if (a14)
        {
          v38 = OUTLINED_FUNCTION_110_2();
          if (v38)
          {
            v39 = a11;
          }

          else
          {
            v39 = 0;
          }

          v40 = v38 ^ 1u;
          goto LABEL_18;
        }

LABEL_16:
        sub_1E325F6F0(&a12, &unk_1ECF296E0);
        if (!v34)
        {
          v41 = v30;
          v39 = 0;
          OUTLINED_FUNCTION_148_1();
          v40 = 1;
          goto LABEL_23;
        }

        v39 = 0;
        v40 = 1;
LABEL_18:
        sub_1E38776C0(4, v34, &a12);
        if (a14)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
          v41 = v30;
          if (OUTLINED_FUNCTION_110_2())
          {
            OUTLINED_FUNCTION_2_4();
            v42 = swift_allocObject();
            *(v42 + 16) = a11;
            v43 = sub_1E387F690;
LABEL_25:
            v44 = *&v36[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
            v45 = *((*MEMORY[0x1E69E7D40] & *v44) + 0x350);
            v46 = *&v36[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController];
            v47 = v44;
            v45(v46, v39, v40, v48, v43, v42);

            sub_1E37FAED8(v43, v42);
            *v41 = 2;
            goto LABEL_26;
          }

LABEL_24:
          v43 = 0;
          v42 = 0;
          goto LABEL_25;
        }

        v41 = v30;
LABEL_23:
        sub_1E325F6F0(&a12, &unk_1ECF296E0);
        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_148_1();
    }

    sub_1E325F6F0(&a12, &unk_1ECF296E0);
    if (!v34)
    {
      v48 = 0;
      OUTLINED_FUNCTION_148_1();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_154();
  (*(v37 + 128))();
LABEL_26:
  OUTLINED_FUNCTION_94_0();
}

void sub_1E387BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_138_2();
  a28 = v30;
  a29 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    if (v33)
    {
      v38 = OUTLINED_FUNCTION_175_1();
      sub_1E38776C0(v38, v33, v39);
      if (a13)
      {
        if (OUTLINED_FUNCTION_24_16())
        {
          v40 = a9;
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_4();
    }

    sub_1E325F6F0(&a11, &unk_1ECF296E0);
    v40 = 0;
    if (!v33)
    {
      OUTLINED_FUNCTION_25_4();
      goto LABEL_14;
    }

LABEL_11:
    v41 = OUTLINED_FUNCTION_90_3();
    sub_1E38776C0(v41, v33, v42);
    if (a13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
      if (OUTLINED_FUNCTION_24_16())
      {
        OUTLINED_FUNCTION_2_4();
        v43 = swift_allocObject();
        OUTLINED_FUNCTION_89_1(v43, v44, v45, v46, v47, v48, v49, v50, v51);
        v52 = sub_1E387F690;
      }

      else
      {
        v52 = 0;
        v43 = 0;
      }

      goto LABEL_17;
    }

LABEL_14:
    sub_1E325F6F0(&a11, &unk_1ECF296E0);
    v43 = 0;
    v52 = 0;
    if (!v33)
    {
      OUTLINED_FUNCTION_25_4();
      goto LABEL_22;
    }

LABEL_17:
    sub_1E38776C0(1, v33, &a11);
    if (a13)
    {
      v53 = OUTLINED_FUNCTION_24_16();
      if ((v53 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_1E38776C0(2, v33, &a11);
      if (a13)
      {
        v53 = OUTLINED_FUNCTION_24_16();
        if (v53)
        {
          OUTLINED_FUNCTION_88_0();
          v55 = *(v54 + 880);
          v57 = v56;
          v55(a9, a9, v40, v52, v43);
          v58 = OUTLINED_FUNCTION_123_1();
          sub_1E37FAED8(v58, v59);

          *v29 = 2;
          goto LABEL_24;
        }

LABEL_23:
        (*((*MEMORY[0x1E69E7D40] & *v35) + 0x80))(v53);
        v60 = OUTLINED_FUNCTION_123_1();
        sub_1E37FAED8(v60, v61);

        goto LABEL_24;
      }
    }

LABEL_22:
    v53 = sub_1E325F6F0(&a11, &unk_1ECF296E0);
    goto LABEL_23;
  }

  (*((*MEMORY[0x1E69E7D40] & *v35) + 0x80))();
LABEL_24:
  OUTLINED_FUNCTION_137_2();
}

void sub_1E387BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_138_2();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_23_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_45();
    (*(v40 + 128))();
    goto LABEL_16;
  }

  v37 = Strong;
  if (v33)
  {
    v38 = OUTLINED_FUNCTION_175_1();
    sub_1E38776C0(v38, v33, v39);
    if (a14)
    {
      OUTLINED_FUNCTION_24_16();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  sub_1E325F6F0(&a11, &unk_1ECF296E0);
  if (!v33)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_12;
  }

LABEL_9:
  v41 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v41, v33, v42);
  if (a14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
    if (OUTLINED_FUNCTION_24_16())
    {
      OUTLINED_FUNCTION_2_4();
      v43 = swift_allocObject();
      OUTLINED_FUNCTION_89_1(v43, v44, v45, v46, v47, v48, v49, v50, v51);
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1E325F6F0(&a11, &unk_1ECF296E0);
LABEL_13:
  v52 = sub_1E386A9A8();
  if (v52)
  {
    v53 = v52;
    v54 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x1F8);
    v55 = *&v37[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
    v54();
    OUTLINED_FUNCTION_129_1();
    OUTLINED_FUNCTION_166_0();
    v56();
  }

  OUTLINED_FUNCTION_85();
  v58 = (*(v57 + 608))();
  v59 = OUTLINED_FUNCTION_124();
  sub_1E37FAED8(v59, v60);

  *v35 = v58 & 1;
LABEL_16:
  OUTLINED_FUNCTION_137_2();
}

void sub_1E387BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_45();
    (*(v38 + 128))();
    goto LABEL_17;
  }

  v37 = Strong;
  if (v33)
  {
    sub_1E38776C0(3, v33, &a12);
    if (a14)
    {
      OUTLINED_FUNCTION_106_4();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_148_1();
  }

  sub_1E325F6F0(&a12, &unk_1ECF296E0);
  if (!v33)
  {
    OUTLINED_FUNCTION_148_1();
    goto LABEL_12;
  }

LABEL_9:
  sub_1E38776C0(4, v33, &a12);
  if (a14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
    if (OUTLINED_FUNCTION_106_4())
    {
      OUTLINED_FUNCTION_2_4();
      *(swift_allocObject() + 16) = a11;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1E325F6F0(&a12, &unk_1ECF296E0);
LABEL_13:
  v39 = sub_1E386A9A8();
  if (v39)
  {
    v40 = v39;
    v41 = *((*MEMORY[0x1E69E7D40] & *v39) + 0x1F8);
    v48 = v35;
    v42 = *&v37[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
    v41();
    OUTLINED_FUNCTION_129_1();
    OUTLINED_FUNCTION_166_0();
    v43();
    v44 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v44, v45);

    v35 = v48;
    v37 = v40;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v46, v47);
  }

  *v35 = 3;
LABEL_17:
  OUTLINED_FUNCTION_94_0();
}

void sub_1E387C26C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, void (*a15)(), void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_93_1();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  v39 = v38;
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_154();
    (*(v54 + 128))();
LABEL_19:
    OUTLINED_FUNCTION_94_0();
    return;
  }

  v41 = Strong;
  if (!v37)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_8;
  }

  v42 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v42, v37, v43);
  if (!a14)
  {
LABEL_8:
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (OUTLINED_FUNCTION_49_12())
  {
    OUTLINED_FUNCTION_2_4();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_84_7(v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v53 = sub_1E387F690;
    goto LABEL_10;
  }

LABEL_9:
  v53 = 0;
  v37 = 0;
LABEL_10:
  v55 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v56 += 53;
  v57 = *v56;
  v58 = (*v56)();
  sub_1E32AE9B0(v58);
  OUTLINED_FUNCTION_169_1();

  if (v33 != 1)
  {
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v72 = swift_allocObject();
    *(v72 + 16) = v53;
    *(v72 + 24) = v37;
    v73 = *((*v55 & *v41) + 0x478);
    v74 = OUTLINED_FUNCTION_74();
    sub_1E37FAED4(v74, v75);
    v76 = OUTLINED_FUNCTION_187();
    v73(v76);

    MEMORY[0x1E69144A0](&aBlock);
    OUTLINED_FUNCTION_26_3();
    if ((*((*v55 & v77) + 0x298))())
    {
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_25();
      v78();
    }

    v79 = OUTLINED_FUNCTION_74();
    sub_1E37FAED8(v79, v80);
    goto LABEL_18;
  }

  v60 = (v57)(v59);
  if ((v60 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x1E6911E60](0, v60);
    goto LABEL_14;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v61 = *(v60 + 32);
LABEL_14:
    v62 = v61;

    OUTLINED_FUNCTION_4_0();
    v63 = swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_10_9();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = v62;
    v64[4] = v53;
    v64[5] = v37;
    a15 = sub_1E387E214;
    a16 = v64;
    aBlock = MEMORY[0x1E69E9820];
    a12 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    a13 = v65;
    a14 = &block_descriptor_307;
    v66 = _Block_copy(&aBlock);
    v67 = v62;
    v68 = OUTLINED_FUNCTION_74();
    sub_1E37FAED4(v68, v69);

    [v39 executeBlockAfterCurrentStateTransition_];

    v70 = OUTLINED_FUNCTION_74();
    sub_1E37FAED8(v70, v71);
    _Block_release(v66);

LABEL_18:
    *v32 = 0;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1E387C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_85();
    return (*(v21 + 128))();
  }

  v8 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v9, a4, v10);
  if (!v31)
  {
LABEL_8:
    sub_1E325F6F0(v30, &unk_1ECF296E0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (!OUTLINED_FUNCTION_49_12())
  {
LABEL_9:
    v20 = 0;
    a1 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_84_7(v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = sub_1E387F690;
LABEL_10:
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = a1;
  v24 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x478);
  v25 = OUTLINED_FUNCTION_74();
  sub_1E37FAED4(v25, v26);
  v27 = OUTLINED_FUNCTION_187();
  v24(v27);

  v28 = OUTLINED_FUNCTION_74();
  sub_1E37FAED8(v28, v29);

  result = MEMORY[0x1E69144A0](v30);
  *v4 = 0;
  return result;
}

uint64_t sub_1E387C7E4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_6;
  }

  v5 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v5, v6, v7);
  if (!v33)
  {
LABEL_6:
    sub_1E325F6F0(v32, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (OUTLINED_FUNCTION_49_12())
  {
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_84_7(v8, v9, v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1E387F690;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
  v2 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v2;
    v21 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x478);
    v22 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED4(v22, v23);
    v24 = OUTLINED_FUNCTION_157_1();
    v21(v24);

    v25 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED8(v25, v26);

    result = MEMORY[0x1E69144A0](&v31);
    *a2 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v28();
    v29 = OUTLINED_FUNCTION_39_3();
    return sub_1E37FAED8(v29, v30);
  }

  return result;
}

uint64_t sub_1E387C9C0@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_6;
  }

  v5 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v5, v6, v7);
  if (!v33)
  {
LABEL_6:
    sub_1E325F6F0(v32, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (OUTLINED_FUNCTION_49_12())
  {
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_84_7(v8, v9, v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1E387F690;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
  v2 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v2;
    v21 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x478);
    v22 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED4(v22, v23);
    v24 = OUTLINED_FUNCTION_157_1();
    v21(v24);

    v25 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED8(v25, v26);

    result = MEMORY[0x1E69144A0](&v31);
    *a2 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v28();
    v29 = OUTLINED_FUNCTION_39_3();
    return sub_1E37FAED8(v29, v30);
  }

  return result;
}

void sub_1E387CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_23_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_65_7();
    v21();
    return;
  }

  v6 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_176_1();
  sub_1E38776C0(v7, a4, v8);
  if (!v27)
  {
LABEL_10:
    sub_1E325F6F0(v26, &unk_1ECF296E0);
    goto LABEL_11;
  }

  v9 = sub_1E3280A90(0, &qword_1ECF2C3E0);
  OUTLINED_FUNCTION_26_13(v9, v10, v11, v9, v12, v13, v14, v15, v23, v24);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_45();
    v17 = (*(v16 + 576))();
    if (v17)
    {
      v18 = v17;
      v19 = v6;
      [v18 multiPlayerViewController:v19 didSelectPlayerViewController:v25];
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_65_7();
    v20();

    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_65_7();
  v22();
LABEL_12:
}

void sub_1E387CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  if (!a4)
  {

    aBlock = 0u;
    v61 = 0u;
LABEL_10:
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
LABEL_12:
    OUTLINED_FUNCTION_154();
    (*(v10 + 128))();
    return;
  }

  sub_1E38776C0(0, a4, &aBlock);
  if (!*(&v61 + 1))
  {

    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0);
  if ((OUTLINED_FUNCTION_106_4() & 1) == 0)
  {

    goto LABEL_12;
  }

  v8 = v64;
  sub_1E38776C0(4, a4, &aBlock);
  if (*(&v61 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
    if (OUTLINED_FUNCTION_106_4())
    {
      OUTLINED_FUNCTION_2_4();
      v9 = swift_allocObject();
      *(v9 + 16) = v64;
      v55 = sub_1E387F690;
      v56 = v9;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
  }

  v55 = 0;
  v56 = 0;
LABEL_15:
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_88_0();
  v13 = *(v12 + 920);
  v15 = v14;
  v16 = v13(v8);

  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v8;
  v19 = [v18 view];
  if (!v19)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = v19;
  v21 = [v19 snapshotViewAfterScreenUpdates_];

  if (v21)
  {
    v22 = [v18 view];
    if (!v22)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v23 = v22;
    [v22 frame];
    OUTLINED_FUNCTION_3();

    v24 = OUTLINED_FUNCTION_6();
    [v25 v26];
    if (v16)
    {
      [v16 addSubview_];
    }

    *(v17 + 16) = v21;
  }

  v27 = [v18 view];
  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = v27;
  v54 = v16;
  [v27 removeFromSuperview];

  [v18 removeFromParentViewController];
  [v18 didMoveToParentViewController_];
  v29 = [v18 vuiView];

  if (!v29)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v29 setAccessibilityElementsHidden_];

  OUTLINED_FUNCTION_67_1();
  (*((*v11 & v30) + 0x4D8))();
  v31 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_3_0();
  v32 = *&v7[v31];
  *&v7[v31] = v18;
  v33 = v18;

  OUTLINED_FUNCTION_88_0();
  v35 = *(v34 + 896);
  v37 = v36;
  v35(v18);

  OUTLINED_FUNCTION_67_1();
  v39 = (*((*v11 & v38) + 0x1A8))();
  v40 = sub_1E32AE9B0(v39);
  if (!v40)
  {
    goto LABEL_35;
  }

  v41 = v40;
  v42 = 0;
  while (1)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1E6911E60](v42, v39);
      swift_unknownObjectRelease();
      if (v43 == v33)
      {
        break;
      }

      goto LABEL_30;
    }

    if (v42 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if (*(v39 + 8 * v42 + 32) == v33)
    {
      break;
    }

LABEL_30:
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    ++v42;
    if (v44 == v41)
    {
      goto LABEL_35;
    }
  }

  v59 = sub_1E3EBABAC();
  v57 = v42;
  v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v45, &qword_1ECF2C420);
  v39 = &v59;
  sub_1E38D2054(&v57, &aBlock);
  v46 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v47 = aBlock;

    v39 = v7;
    sub_1E3869DD4();
    OUTLINED_FUNCTION_30();
    (*(v48 + 224))(v47, v46, v42);
  }

LABEL_35:

  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v49);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_89();
  v50 = swift_allocObject();
  v50[2] = v39;
  v50[3] = v33;
  v50[4] = v17;
  v50[5] = v55;
  v50[6] = v56;
  v62 = sub_1E387DEF4;
  v63 = v50;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_1E329EEC4;
  *(&v61 + 1) = &block_descriptor_272;
  v51 = _Block_copy(&aBlock);
  v52 = v33;
  v53 = v54;

  sub_1E37FAED4(v55, v56);

  [v52 showFullScreenPresentationFromView:v53 completion:v51];

  sub_1E37FAED8(v55, v56);
  _Block_release(v51);

  *v4 = 6;
}

void sub_1E387D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v8 = Strong;
  if (!a4)
  {

    OUTLINED_FUNCTION_116_0();
LABEL_10:
    sub_1E325F6F0(&v15, &unk_1ECF296E0);
    goto LABEL_11;
  }

  sub_1E38776C0(0, a4, &v15);
  if (!v17)
  {

    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0);
  if (swift_dynamicCast())
  {
    v9 = v20;
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    v18 = sub_1E387DE40;
    v19 = v10;
    *&v15 = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_62_8();
    v16 = v11;
    v17 = &block_descriptor_262;
    v12 = _Block_copy(&v15);

    [a1 executeBlockAfterCurrentStateTransition_];
    _Block_release(v12);
    OUTLINED_FUNCTION_26_3();
    v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x240))();
    if (!v14)
    {

      goto LABEL_11;
    }

    [v14 multiPlayerViewController:v8 didEnterFullscreenWithPlayerViewController:v9];
    swift_unknownObjectRelease();
  }

LABEL_11:
  *v4 = 3;
}

void sub_1E387D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v7 = Strong;
  if (!a4)
  {

    OUTLINED_FUNCTION_25_4();
LABEL_9:
    sub_1E325F6F0(v24, &unk_1ECF296E0);
    goto LABEL_11;
  }

  v8 = OUTLINED_FUNCTION_176_1();
  sub_1E38776C0(v8, a4, v9);
  if (!v25)
  {

    goto LABEL_9;
  }

  v10 = sub_1E3280A90(0, &qword_1ECF2C3E0);
  OUTLINED_FUNCTION_26_13(v10, v11, v12, v10, v13, v14, v15, v16, v21, v22);
  if (swift_dynamicCast())
  {
    v17 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
    OUTLINED_FUNCTION_3_0();
    v18 = *&v7[v17];
    *&v7[v17] = v23;
    v19 = v23;

    sub_1E386A094();
    OUTLINED_FUNCTION_7_5();
    (*((*MEMORY[0x1E69E7D40] & v20) + 0x168))(v19);
  }

LABEL_11:
  *v4 = 3;
}

void sub_1E387D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v20();
    return;
  }

  v7 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v8, a4, v9);
  if (!v37)
  {
LABEL_8:
    sub_1E325F6F0(v36, &unk_1ECF296E0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (OUTLINED_FUNCTION_49_12())
  {
    OUTLINED_FUNCTION_2_4();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_89_1(v10, v11, v12, v13, v14, v15, v16, v17, v18);
    v19 = sub_1E387F690;
    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
  v10 = 0;
LABEL_10:
  v21 = (v7 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion);
  v22 = *(v7 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion);
  v23 = *(v7 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion + 8);
  *v21 = v19;
  v21[1] = v10;
  v24 = OUTLINED_FUNCTION_124();
  sub_1E37FAED4(v24, v25);
  v26 = sub_1E37FAED8(v22, v23);
  v27 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x148))(v26);
  if (v27)
  {
    v28 = v27;
    [v27 setShowsPlaybackControls_];
    v29 = OUTLINED_FUNCTION_184_0();
    [v29 v30];
    v31 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v31, v32);

    *v4 = 7;
  }

  else
  {
    OUTLINED_FUNCTION_40_17();
    OUTLINED_FUNCTION_147_1();
    v33();
    v34 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v34, v35);
  }
}

void sub_1E387D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, void *(*a12)(), void *a13, uint64_t a14, void *a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v30;
  a30 = v32;
  v33 = v31;
  v35 = v34;
  v37 = v36;
  if (!v31)
  {
    OUTLINED_FUNCTION_116_0();
    goto LABEL_6;
  }

  sub_1E38776C0(4, v31, &a9);
  if (!a11)
  {
LABEL_6:
    sub_1E325F6F0(&a9, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_4();
    v38 = swift_allocObject();
    *(v38 + 16) = a16;
    v39 = sub_1E387DE18;
    goto LABEL_8;
  }

LABEL_7:
  v39 = 0;
  v38 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v41 = Strong;
  if (!v33)
  {

    OUTLINED_FUNCTION_116_0();
LABEL_15:
    sub_1E325F6F0(&a9, &unk_1ECF296E0);
LABEL_16:
    if (!v39)
    {
LABEL_18:
      OUTLINED_FUNCTION_85();
      (*(v56 + 128))();
      v57 = OUTLINED_FUNCTION_53();
      sub_1E37FAED8(v57, v58);
      goto LABEL_19;
    }

LABEL_17:

    (v39)(v53);
    v54 = OUTLINED_FUNCTION_53();
    sub_1E37FAED8(v54, v55);
    goto LABEL_18;
  }

  sub_1E38776C0(0, v33, &a9);
  if (!a11)
  {

    goto LABEL_15;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (!v39)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v42 = a15;
  OUTLINED_FUNCTION_10_9();
  v43 = swift_allocObject();
  v43[2] = v41;
  v43[3] = v42;
  v43[4] = v39;
  v43[5] = v38;
  a12 = sub_1E387DCCC;
  a13 = v43;
  *&a9 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_62_8();
  a10 = v44;
  a11 = &block_descriptor_251;
  v45 = _Block_copy(&a9);
  v46 = v41;
  v47 = v42;
  v48 = OUTLINED_FUNCTION_53();
  sub_1E37FAED4(v48, v49);

  [v35 executeBlockAfterCurrentStateTransition_];
  _Block_release(v45);
  v50 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x260))();

  v51 = OUTLINED_FUNCTION_53();
  sub_1E37FAED8(v51, v52);
  *v37 = v50 & 1;
LABEL_19:
  OUTLINED_FUNCTION_94_0();
}

void *sub_1E387DCCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_3_0();
  v5 = *&v1[v4];
  *&v1[v4] = 0;

  v6 = &v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion];
  v7 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion];
  if (v7)
  {
    v8 = *(v6 + 1);

    v7(v9);
    sub_1E37FAED8(v7, v8);
    v10 = *v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v6 + 1);
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1E37FAED8(v10, v11);
  [v1 setNeedsFocusUpdate];
  [v1 updateFocusIfNeeded];
  OUTLINED_FUNCTION_67_1();
  result = (*((*MEMORY[0x1E69E7D40] & v12) + 0x240))();
  if (result)
  {
    [result multiPlayerViewController:v1 didExitFullscreenWithPlayerViewController:v2];
    result = swift_unknownObjectRelease();
  }

  if (v3)
  {
    return v3(result);
  }

  return result;
}

void sub_1E387DE40()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    if ((*(v1 + 664))())
    {
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_25();
      v2();
    }
  }
}

void sub_1E387DEF4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v1 setShowsPlaybackControls_];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled_];

      [v1 setDelegate_];
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v8 = *(v2 + 16);
      if (v8)
      {
        [v8 removeFromSuperview];
      }

      v9 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
      v10 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_88_0();
      v12 = *(v11 + 904);
      v14 = v13;
      v12(v1);

      v22 = 4;
      OUTLINED_FUNCTION_177();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_102_5(inited, xmmword_1E4297BE0);
      inited[4].n128_u64[0] = sub_1E3280A90(0, &qword_1ECF2C3E0);
      inited[2].n128_u64[1] = v1;
      sub_1E3879330();
      v16 = v1;
      v17 = sub_1E4205CB4();
      OUTLINED_FUNCTION_21();
      (*(v18 + 152))(&v22, v21, v17);

      v19 = sub_1E325F6F0(v21, &unk_1ECF296E0);
      if (v3)
      {
        v3(v19);
      }

      [*&v5[v9] setNeedsLayout];
      [*&v5[v9] layoutIfNeeded];
      sub_1E386A094();
      OUTLINED_FUNCTION_7_5();
      (*((*v10 & v20) + 0x168))(v16);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_225Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E387E1E4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1E387E214()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_64();
    (*(v6 + 1112))(v1, v3, v2);
  }
}

void sub_1E387E2B8()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_10_9();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v3;
    v10[4] = v4;
    v10[5] = v5;
    v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x360);
    v12 = v8;

    v13 = v3;
    sub_1E37FAED4(v4, v5);
    v11(v1, v2, sub_1E387F6D0, v10);
  }

  OUTLINED_FUNCTION_192();
}

void sub_1E387E404()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E3869DD4();
    OUTLINED_FUNCTION_85();
    v6 = (*(v5 + 608))();
    (*(*v4 + 152))(v6 & 1);

    if (v1)
    {
      v1(v7);
    }
  }
}

uint64_t sub_1E387E4E8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v9 = 7;
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  inited[4].n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  inited[2].n128_u64[1] = sub_1E37D1918;
  inited[3].n128_u64[0] = v4;
  sub_1E3879330();

  v5 = sub_1E4205CB4();
  OUTLINED_FUNCTION_21();
  (*(v6 + 152))(&v9, v8, v5);

  return sub_1E325F6F0(v8, &unk_1ECF296E0);
}

id sub_1E387E634()
{
  v1 = *(v0 + 16);
  [v1 setNeedsFocusUpdate];

  return [v1 updateFocusIfNeeded];
}

unint64_t sub_1E387E680()
{
  result = qword_1ECF2C508;
  if (!qword_1ECF2C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C508);
  }

  return result;
}

uint64_t objectdestroy_303Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E387E720()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1E386B444();
  v4 = OUTLINED_FUNCTION_189_0(v3);
  sub_1E3874790(v4, v1);
  v5 = sub_1E3869DD4();
  OUTLINED_FUNCTION_67_1();
  v7 = (*((*MEMORY[0x1E69E7D40] & v6) + 0x260))();
  (*(*v5 + 152))(v7 & 1);

  if (v2)
  {
    return v2(result);
  }

  return result;
}

id sub_1E387E80C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_1E387E864()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    if ((*(v1 + 608))())
    {
      OUTLINED_FUNCTION_169();
      sub_1E3874870(v2, v3, v4);
    }
  }
}

uint64_t sub_1E387E8EC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C510);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386FB54();
}

void sub_1E387E9D0()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_3();
    (*((*MEMORY[0x1E69E7D40] & v6) + 0x358))(v1, 0, v7 & 1);

    *&v4[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers] = 0;

    v8 = sub_1E32AE9B0(v2);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        goto LABEL_15;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v2 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_21();
      v13 = (*(v12 + 920))(v11);
      if (v13)
      {
        v14 = v13;
        OUTLINED_FUNCTION_85();
        if ((*(v15 + 576))())
        {
          [v14 frame];
          v16 = OUTLINED_FUNCTION_121();
          [v16 v17];
          swift_unknownObjectRelease();
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1E387EC0C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386F488();
}

void sub_1E387ECF0()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    v4[0] = *MEMORY[0x1E695EFD0];
    v4[1] = v3;
    v4[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E387ED78(uint64_t a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v12 = (*(v11 + 424))();
    v13 = sub_1E32AE9B0(v12);

    if (v13 >= 2)
    {
      v54 = a3;
      OUTLINED_FUNCTION_18_1();
      v14 += 72;
      v15 = *v14;
      v16 = (*v14)();
      if (v16)
      {
        [v16 detailsViewHeightForMultiPlayerViewController_];
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0.0;
      }

      OUTLINED_FUNCTION_8();
      (*(v19 + 1712))();
      OUTLINED_FUNCTION_30();
      (*(v20 + 176))(v55);
      v21 = *&v55[2];

      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      if (v56)
      {
        v23 = *(MEMORY[0x1E69DDCE0] + 16);
      }

      else
      {
        v23 = v21;
      }

      OUTLINED_FUNCTION_8();
      (*(v24 + 1736))();
      OUTLINED_FUNCTION_30();
      (*(v25 + 176))(v57);
      v26 = *&v57[2];

      if (v58)
      {
        v27 = v22;
      }

      else
      {
        v27 = v26;
      }

      v28 = v18 + v27;
      v29 = sub_1E386B308();
      [v29 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v59.origin.x = v31;
      v59.origin.y = v33;
      v59.size.width = v35;
      v59.size.height = v37;
      v38 = v23 + CGRectGetMaxY(v59);
      v39 = *((*v10 & *v9) + 0x260);
      if (v39())
      {
        v38 = v28;
      }

      if ((a1 - 3) < 2)
      {
        OUTLINED_FUNCTION_18_1();
        v51 = (*(v50 + 1232))();
        sub_1E387057C(v51, v54, v52, a5, v18 * 0.333333333);
      }

      else if (a1 == 2)
      {
        if ((v39() & 1) != 0 && v54 > 0.0 || (v39() & 1) == 0 && v54 < 0.0)
        {
          sub_1E3870360(v53, v54, -v38);
        }
      }

      else if (a1 == 1)
      {
        OUTLINED_FUNCTION_18_1();
        (*(v40 + 1240))();
        v41 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController;
        v42 = *(v9 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController);
        if (v42)
        {
          v43 = [v42 view];
          if (!v43)
          {
            __break(1u);
            return;
          }

          v44 = v43;
          [v43 setHidden_];
        }

        if ((v39() & 1) == 0)
        {
          v45 = *(v9 + v41);
          if (v45)
          {
            v46 = v45;
            if (v15())
            {
              v47 = v9;
              v48 = OUTLINED_FUNCTION_123_3();
              [v48 v49];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }
        }
      }
    }
  }
}

uint64_t objectdestroy_404Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v5, v2);

  return swift_deallocObject();
}

uint64_t sub_1E387F2AC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386EDA8();
}

void sub_1E387F390()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v2 = Strong;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 552))();
  if (v4)
  {
    v0 = v4;
LABEL_9:
    if (v0 != *&v2[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController])
    {
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_169();
      v8();

LABEL_15:
      return;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_5();
  v6 = (*(v5 + 424))();
  if (!sub_1E32AE9B0(v6))
  {

LABEL_13:

LABEL_14:
    v0 = [objc_opt_self() sharedInstance];
    [v0 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
    goto LABEL_15;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v6);
    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_8:
    OUTLINED_FUNCTION_28_3();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1E387F548()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v1 + 1232))();
  }
}

void sub_1E387F5C0()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v1 + 1240))();
  }
}

uint64_t OUTLINED_FUNCTION_32_26()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E37748D8(0, 0, v4, a4, v5);
}

uint64_t OUTLINED_FUNCTION_80_3(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

__n128 *OUTLINED_FUNCTION_82_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 4;
  return result;
}

__n128 OUTLINED_FUNCTION_84_7(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

void OUTLINED_FUNCTION_103_3()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 128) + *(v0 + 28);
  *v2 = *(v0 + 192);
  *(v2 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_106_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_107_4()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_108_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_109_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_110_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return sub_1E4206544();
}

double OUTLINED_FUNCTION_117_2@<D0>(char a1@<W8>)
{
  *(v1 - 225) = a1;
  result = 0.0;
  *(v1 - 256) = 0u;
  *(v1 - 272) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t result, uint64_t a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1)
{
  *(v1 + 136) = a1;

  return sub_1E4206424();
}

id OUTLINED_FUNCTION_165_2()
{

  return [v0 (v1 + 2808)];
}

void *OUTLINED_FUNCTION_195(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

void *OUTLINED_FUNCTION_196(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_198_0()
{

  return sub_1E4206554();
}

uint64_t OUTLINED_FUNCTION_202()
{
}

uint64_t OUTLINED_FUNCTION_203()
{

  return sub_1E4206424();
}

void sub_1E387FB88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C598);
  OUTLINED_FUNCTION_3_6(v10, v93 + 8);
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5B0);
  OUTLINED_FUNCTION_3_6(v23, v96);
  v79 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(&v71 - v26);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17_3(&v71 - v28);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17_3(&v71 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  v83 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17_3(&v71 - v35);

  if (sub_1E39C408C(67))
  {
    v72 = v31;
    v73 = a3;

    v37 = (*(*a2 + 1832))(v36);
    swift_retain_n();
    v38 = sub_1E397F070(a1, v37, &v85);
    v93[0] = v85;
    v93[1] = v86;
    v94 = v87;
    v39 = *(*(*v37 + 2096))(v38);
    (*(v39 + 2016))();

    v95 = v86;
    v96[0] = v87;
    sub_1E3880454();
    sub_1E39B9610();

    sub_1E38804A8(&v95);
    v40 = (*(v12 + 32))(v19, v15, v74);
    v19[*(v16 + 36)] = 0;
    (*(*v37 + 176))(v88, v40);
    if (v89)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v44.n128_u64[0] = v88[3];
      v43.n128_u64[0] = v88[2];
      v42.n128_u64[0] = v88[1];
      v41.n128_u64[0] = v88[0];
      j_nullsub_1(v41, v42, v43, v44);
    }

    OUTLINED_FUNCTION_3();
    v50 = v77;
    v51 = v75;
    v52 = sub_1E4202734();
    v53 = sub_1E379E528(v19, v22, &qword_1ECF2C5A0);
    v54 = &v22[*(v51 + 36)];
    *v54 = v52;
    *(v54 + 1) = v3;
    *(v54 + 2) = v4;
    *(v54 + 3) = v5;
    *(v54 + 4) = v6;
    v54[40] = 0;
    v55 = (*(*v37 + 744))(v53);
    v56 = v73;
    v57 = v72;
    if (!v55)
    {
      v55 = [objc_opt_self() clearColor];
    }

    v58 = v55;
    sub_1E38806D8(&qword_1EE289628, &qword_1ECF2C5A8, &unk_1E42A7010, sub_1E3880510);
    sub_1E39B87A4(v58);

    v59 = sub_1E32B741C(v22);
    (*(*v37 + 552))(v90, v59);
    v60 = 0.0;
    if ((v91 & 1) == 0)
    {
      v60 = sub_1E3952BE8(v90[0], v90[1], v90[2], v90[3]);
    }

    v61 = v80;
    v62 = (v80 + *(v76 + 36));
    v63 = *(sub_1E4201534() + 20);
    v64 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v65 + 104))(v62 + v63, v64);
    *v62 = v60;
    v62[1] = v60;
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
    (*(v79 + 32))(v61, v50, v81);
    sub_1E4202744();
    v66 = *(*v37 + 152);
    v66(v92);
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v67 = v61;
    v68 = v84;
    sub_1E379E528(v67, v84, &qword_1ECF2C5B8);
    OUTLINED_FUNCTION_4_52(v68 + *(v78 + 36));
    sub_1E4202784();
    v66(v93);

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v69 = v83;
    sub_1E379E528(v68, v83, &qword_1ECF2C5C0);
    OUTLINED_FUNCTION_4_52(v69 + *(v57 + 36));
    v70 = v82;
    sub_1E379E528(v69, v82, &qword_1ECF2C5C8);
    sub_1E379E528(v70, v56, &qword_1ECF2C5C8);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {

    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  }
}

unint64_t sub_1E3880454()
{
  result = qword_1EE2882D0;
  if (!qword_1EE2882D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882D0);
  }

  return result;
}

uint64_t sub_1E38804A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3880510()
{
  result = qword_1EE289A00;
  if (!qword_1EE289A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5A0);
    sub_1E3880454();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A00);
  }

  return result;
}

unint64_t sub_1E3880628()
{
  result = qword_1EE2894B8;
  if (!qword_1EE2894B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5E0);
    sub_1E38806D8(&qword_1EE2894C0, &qword_1ECF2C5C8, &unk_1E42A7030, sub_1E388075C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894B8);
  }

  return result;
}

uint64_t sub_1E38806D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E388078C()
{
  result = qword_1EE2899D0;
  if (!qword_1EE2899D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5A8);
    sub_1E38806D8(&qword_1EE289628, &qword_1ECF2C5A8, &unk_1E42A7010, sub_1E3880510);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899D0);
  }

  return result;
}

uint64_t sub_1E38808B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5E8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v105 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_5();
  v118 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v105 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v110 = type metadata accessor for CanonicalFooterAiringInfo();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_3(&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5F8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_2_5();
  v111 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17_3(&v105 - v21);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C608);
  OUTLINED_FUNCTION_0_10();
  v119 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C618);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C620);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = *(v1 + 8);
  v34 = 0.0;
  if (!sub_1E374E8E4(v33, 2))
  {
    v135 = *(v1 + 3);
    v136 = v1[8];
    __src[0] = *(v1 + 3);
    *&__src[1] = v1[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    if (v130 == 0.0 && v131 == 0.0)
    {
      v35 = v1[2];
      if (!v35)
      {
LABEL_50:
        type metadata accessor for AppEnvironment();
        OUTLINED_FUNCTION_2_49();
        sub_1E3882C50(v103, v104);
        OUTLINED_FUNCTION_21_1();
        result = sub_1E4201744();
        __break(1u);
        return result;
      }

      v36 = *(*v35 + 184);

      v38 = v36(v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        v34 = *&v38;
      }
    }

    else
    {
      __src[0] = v135;
      *&__src[1] = v136;
      sub_1E42038F4();
      v34 = v130;
    }
  }

  v124 = v9;
  v125 = v6;
  v126 = v4;
  v127 = a1;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v34);
  j_nullsub_1(v41, v42, v43, v44);
  v46 = v45;
  v48 = v47;
  v49 = sub_1E374E8E4(v33, 2);
  if (v49)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = v46;
  }

  if (v49)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v48;
  }

  v129 = v2;
  v52 = *(**v2 + 464);
  v106 = *v2;
  v53 = v52();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v133 = v54;
  v55 = sub_1E32AE9B0(v54);
  for (i = 0; ; ++i)
  {
    if (v55 == i)
    {
      v57 = 0;
      goto LABEL_32;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1E6911E60](i, v54);
    }

    else
    {
      if (i >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v57 = *(v54 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LOWORD(v132) = *(v57 + 98);
    v137 = 108;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (*&__src[0] == *&v130 && *(&__src[0] + 1) == *&v131)
    {
      break;
    }

    v59 = sub_1E42079A4();

    if (v59)
    {
      goto LABEL_32;
    }
  }

LABEL_32:

  v60 = sub_1E3882660(&v133, v57);
  v61 = sub_1E32AE9B0(v133);
  v62 = v129;
  if (v61 < v60)
  {
    goto LABEL_49;
  }

  sub_1E3882AB0(v60, v61);
  v63 = sub_1E374E8E4(v62[8], 2);
  v64 = sub_1E42036E4();
  if (!v63)
  {
    LOBYTE(v130) = 13;
    v63 = v106;
    (*(*v106 + 776))(__src, &v130, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (*(&__src[1] + 1))
    {
      swift_dynamicCast();
      OUTLINED_FUNCTION_16_33();
      if (v65 & 1) != 0 && sub_1E3F36DEC() != 8 && (sub_1E3881E80())
      {
        v66 = *sub_1E3E5FACC();
        v67 = sub_1E4203644();

        v64 = v67;
      }

      goto LABEL_41;
    }

    sub_1E325F6F0(__src, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_16_33();
LABEL_41:
  *v60 = sub_1E4201D54();
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v109 = v64;
  if (v57)
  {

    v69 = v108;
    sub_1E414B87C(v68);
    v70 = v107;
    sub_1E414B648(v57, v69, v107);
    sub_1E3881E1C(v70, v63);
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  __swift_storeEnumTagSinglePayload(v63, v71, 1, v110);
  v72 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C628) + 44);
  v73 = v133;

  v75 = v112;
  sub_1E3881634(v74, v112, v34, v50, v51);
  v110 = v73;

  sub_1E3294EE4(v63, v111, &qword_1ECF2C5F8);
  v76 = v118;
  sub_1E3294EE4(v75, v118, &qword_1ECF2C5F0);
  OUTLINED_FUNCTION_12_12();
  sub_1E3294EE4(v77, v78, v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C630);
  sub_1E3294EE4(v76, v72 + *(v80 + 48), &qword_1ECF2C5F0);
  sub_1E325F6F0(v75, &qword_1ECF2C5F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v81, v82);
  sub_1E325F6F0(v76, &qword_1ECF2C5F0);
  v83 = v129;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v84, v85);
  v86 = swift_allocObject();
  memcpy((v86 + 16), v83, 0x48uLL);
  sub_1E3881D84(v83, __src);
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(v87, &qword_1ECF2C600);
  v88 = OUTLINED_FUNCTION_51_1();
  v89 = v117;
  v90 = v128;
  sub_1E40AB6EC(v88 & 1);

  sub_1E325F6F0(v90, &qword_1ECF2C600);
  sub_1E4203DB4();
  sub_1E42015C4();
  v91 = v116;
  (*(v119 + 32))(v116, v89, v120);
  memcpy((v91 + *(v114 + 36)), __src, 0x70uLL);
  LOBYTE(v73) = sub_1E4202734();
  v92 = v123;
  sub_1E329E454(v91, v123, &qword_1ECF2C610);
  v93 = v92 + *(v115 + 36);
  *v93 = v73;
  *(v93 + 8) = 0;
  *(v93 + 16) = v50;
  *(v93 + 24) = 0;
  *(v93 + 32) = v51;
  *(v93 + 40) = 0;
  v132 = v109;
  LOBYTE(v91) = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v91)
  {
    sub_1E42026F4();
  }

  v94 = swift_allocObject();
  memcpy((v94 + 16), v83, 0x48uLL);
  sub_1E3881D84(v83, &v130);
  sub_1E4203DA4();
  v95 = v124;
  sub_1E42032A4();

  v96 = sub_1E4203D84();
  v98 = v97;

  v99 = v122;
  v100 = v122 + *(v121 + 36);
  (*(v125 + 32))(v100, v95, v126);
  v101 = (v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C640) + 36));
  *v101 = v96;
  v101[1] = v98;
  sub_1E329E454(v92, v99, &qword_1ECF2C618);
  sub_1E329E454(v99, v127, &qword_1ECF2C620);
}

uint64_t sub_1E3881634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v6 = v5;
  v64[5] = a2;
  v64[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v64 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C678);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v64 - v17;
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(a3);
  if ((sub_1E3A24FDC(v19) & 1) != 0 || sub_1E374E8E4(v5[8], 2))
  {
    sub_1E3A24FDC(v19);
    v20 = sub_1E3A24FDC(v19);
    v21 = OUTLINED_FUNCTION_13_47(v20);
    v22 = j__OUTLINED_FUNCTION_51_1();
    v23 = j__OUTLINED_FUNCTION_18();
    v24 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_16(v21, v22 & 1, __src, 0, 1, 0, 1, 0, 2, v23 & 1, v24 & 1);
    *v18 = sub_1E4201D54();
    *(v18 + 1) = 0;
    v18[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6A8);
    v66 = a1;
    swift_getKeyPath();
    v25 = swift_allocObject();
    memcpy((v25 + 16), __src, 0x5BuLL);
    memcpy((v25 + 112), v6, 0x48uLL);

    sub_1E375C2C0(__src, v65);
    sub_1E3881D84(v6, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v26, &unk_1ECF2C790);
    OUTLINED_FUNCTION_4_53();
    sub_1E3882C50(v27, v28);
    sub_1E3882420();
    sub_1E4203B34();
    OUTLINED_FUNCTION_12_12();
    sub_1E3294EE4(v29, v30, v31);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v32, v33);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v34, v35);
    OUTLINED_FUNCTION_14_41();
    sub_1E4201F44();
    sub_1E375C31C(__src);
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v36, v37);
  }

  else
  {
    v64[1] = v15;
    sub_1E3A25950(a3);
    v40 = v39;
    if (sub_1E3A24FDC(v19))
    {
      v41 = a3 - a4 - a5;
    }

    else
    {
      v41 = a3 - a4 - a5 - (v40 + v40);
    }

    v42 = sub_1E3A24FDC(v19);
    v43 = v41 / 3.0;
    if (v42)
    {
      v43 = v41;
    }

    v44 = *&v43;
    v45 = j__OUTLINED_FUNCTION_51_1();
    v46 = j__OUTLINED_FUNCTION_18();
    v47 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_16(v44, v45 & 1, __src, 0, 1, 0, 1, 0, 2, v46 & 1, v47 & 1);
    v48 = sub_1E42026E4();
    v49 = sub_1E42026F4();
    sub_1E42026F4();
    if (sub_1E42026F4() != v48)
    {
      v49 = sub_1E42026F4();
    }

    *v13 = sub_1E4201B64();
    v13[1] = v40;
    *(v13 + 16) = 0;
    v64[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C680) + 44);
    v66 = a1;
    v64[2] = swift_getKeyPath();
    v50 = swift_allocObject();
    memcpy((v50 + 16), __src, 0x5BuLL);
    *(v50 + 107) = v49;
    memcpy((v50 + 112), v6, 0x48uLL);
    *(v50 + 184) = 0;
    *(v50 + 192) = a4;
    *(v50 + 200) = 0;
    *(v50 + 208) = a5;
    *(v50 + 216) = v40;
    *(v50 + 224) = v19;

    sub_1E3881D84(v6, v65);
    sub_1E375C2C0(__src, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C688);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v51, &unk_1ECF2C790);
    OUTLINED_FUNCTION_4_53();
    sub_1E3882C50(v52, v53);
    v54 = sub_1E3882420();
    v65[0] = &type metadata for CanonicalFooterSection;
    v65[1] = v54;
    swift_getOpaqueTypeConformance2();
    sub_1E4203B34();
    OUTLINED_FUNCTION_12_12();
    sub_1E3294EE4(v55, v56, v57);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v58, v59);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v60, v61);
    OUTLINED_FUNCTION_14_41();
    sub_1E4201F44();
    sub_1E375C31C(__src);
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v62, v63);
  }
}

double sub_1E3881DBC(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  return v3 + a1;
}

uint64_t sub_1E3881E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalFooterAiringInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3881E80()
{
  sub_1E37E6ADC();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

__n128 sub_1E3881F30@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_2_49();
  sub_1E3882C50(v6, v7);
  v8 = sub_1E4201754();
  v10 = v9;
  sub_1E42038E4();
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  result = v12;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 9) = v12.n128_u32[0];
  *(a3 + 12) = *(v12.n128_u32 + 3);
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 48) = v12;
  *(a3 + 64) = v13;
  return result;
}

unint64_t sub_1E38820A0()
{
  result = qword_1ECF2C648;
  if (!qword_1ECF2C648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C620);
    sub_1E3882158();
    sub_1E32752B0(&qword_1ECF2C660, &qword_1ECF2C640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C648);
  }

  return result;
}

unint64_t sub_1E3882158()
{
  result = qword_1ECF2C650;
  if (!qword_1ECF2C650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C618);
    sub_1E38821E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C650);
  }

  return result;
}

unint64_t sub_1E38821E4()
{
  result = qword_1ECF2C658;
  if (!qword_1ECF2C658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C600);
    sub_1E32752B0(&qword_1ECF2C638, &qword_1ECF2C600);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C658);
  }

  return result;
}

uint64_t sub_1E38822E0(uint64_t *a1)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  v4 = *a1;

  v7 = *(v1 + 200);
  v8 = *(v1 + 184);
  sub_1E375C2C0(v1 + 16, __dst);
  sub_1E40FF04C(v4, (v1 + 16), 0, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), (v1 + 112), 0x48uLL);
  *(v5 + 104) = v7;
  *(v5 + 88) = v8;
  *(v5 + 120) = v2;
  *(v5 + 128) = v3;
  sub_1E3881D84(v1 + 112, __dst);
  sub_1E4203DA4();
  sub_1E3882420();
  sub_1E42032A4();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_1E388260C(__dst);
}

unint64_t sub_1E3882420()
{
  result = qword_1ECF2C690;
  if (!qword_1ECF2C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C690);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

void *sub_1E38824D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 120);

  sub_1E375C2C0(v2 + 16, __src);
  sub_1E40FF04C(v4, (v2 + 16), v5, __src);
  return memcpy(a2, __src, 0x78uLL);
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

void sub_1E38825A4()
{
  v1 = *(v0 + 128);
  sub_1E3A24FDC(v1);
  v2 = sub_1E3A24FDC(v1);
  OUTLINED_FUNCTION_13_47(v2);
}

uint64_t sub_1E3882660(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  result = sub_1E388293C(v6, a2);
  if (v2)
  {
LABEL_41:

    return v3;
  }

  if (v8)
  {
    v3 = sub_1E32AE9B0(v6);

    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v6 >> 62)
      {
        result = sub_1E4207384();
      }

      else
      {
        result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_41;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v9, v6);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          break;
        }

        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }
      }

      if (a2)
      {
        type metadata accessor for ViewModel();
        sub_1E3882C50(&qword_1EE23BA60, type metadata accessor for ViewModel);

        v10 = sub_1E4205E84();

        if (v10)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      if (v3 != v9)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60](v3, v6);
          v12 = MEMORY[0x1E6911E60](v9, v6);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= v13)
          {
            goto LABEL_49;
          }

          if (v9 >= v13)
          {
            goto LABEL_50;
          }

          v11 = *(v6 + 32 + 8 * v3);
          v12 = *(v6 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_1E37EFA58(v6);
          v14 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v12;

        if ((v6 & 0x8000000000000000) != 0 || v14)
        {
          result = sub_1E37EFA58(v6);
          v6 = result;
          v15 = result & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v15 + 16))
        {
          goto LABEL_47;
        }

        *(v15 + 8 * v9 + 32) = v11;

        *a1 = v6;
      }

      v16 = __OFADD__(v3++, 1);
      if (v16)
      {
        goto LABEL_46;
      }

LABEL_34:
      v16 = __OFADD__(v9++, 1);
      if (v16)
      {
        goto LABEL_45;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E388293C(unint64_t a1, uint64_t a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v6, a1);
      goto LABEL_6;
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    if (a2)
    {
      type metadata accessor for ViewModel();
      sub_1E3882C50(&qword_1EE23BA60, type metadata accessor for ViewModel);

      v7 = sub_1E4205E84();

      if (v7)
      {

        return v6;
      }
    }

    else
    {
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E3882AB0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1E32AE9B0(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1E32AE9B0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3797CDC(result);

  return sub_1E3882B54(v4, a2, 0);
}

uint64_t sub_1E3882B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ViewModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3882C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3882C98()
{
  type metadata accessor for ImageMemoryCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 24) = v1;
  result = sub_1E3883158();
  qword_1EE2AB118 = v0;
  return result;
}

uint64_t *sub_1E3882D04()
{
  if (qword_1EE2A2FF0 != -1)
  {
    OUTLINED_FUNCTION_2_50();
  }

  return &qword_1EE2AB118;
}

id sub_1E3882D44()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1E3882D9C();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1E3882D9C()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 launchConfig];

  v10 = [v9 imageInMemoryCacheSizeLimitInBytes];
  if (v10 <= 0)
  {
    sub_1E3882FB0();
    v10 = v11;
  }

  sub_1E324FBDC();
  v12 = OUTLINED_FUNCTION_3_50();
  v13(v12);
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v14, v15, "ImageMemoryCache: effectiveCacheSize:%ld", v16, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  [v7 setTotalCostLimit_];
  v17 = sub_1E4205ED4();
  [v7 setName_];

  return v7;
}

void sub_1E3882FB0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 physicalMemory];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v8 / 0x32 >= 0x11E1A300)
    {
      v9 = 300000000;
    }

    else
    {
      v9 = v8 / 0x32;
    }

    sub_1E324FBDC();
    v10 = OUTLINED_FUNCTION_3_50();
    v11(v10);
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v8;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&dword_1E323F000, v12, v13, "ImageMemoryCache: physicalMemory=%llu, defaultCacheSize=%ld", v14, 0x16u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v2 + 8))(v6, v0);
  }
}

uint64_t sub_1E3883158()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  swift_allocObject();
  swift_weakInit();
  sub_1E3883864(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  (*(v2 + 8))(v6, v0);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();
}

id sub_1E3883304()
{
  v0 = sub_1E3882D44();
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  return v2;
}

void sub_1E3883374(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = [a1 vuiCGImage];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  Width = CGImageGetWidth(v13);
  Height = CGImageGetHeight(v14);
  v17 = Width * Height;
  if ((Width * Height) >> 64 != (Width * Height) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(v14);
  if ((v17 * BitsPerPixel) >> 64 != (v17 * BitsPerPixel) >> 63)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v19 = v17 * BitsPerPixel / 8;
  v20 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v20, v6);
  v21 = v14;

  v22 = v6;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v29 = v19;
    v25 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v25 = 134219010;
    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    *(v25 + 14) = CGImageGetWidth(v21);
    *(v25 + 22) = 2048;
    *(v25 + 24) = CGImageGetHeight(v21);
    *(v25 + 32) = 2048;
    *(v25 + 34) = CGImageGetBitsPerPixel(v21);

    *(v25 + 42) = 2080;
    *(v25 + 44) = sub_1E3270FC8(a2, a3, &v30);
    _os_log_impl(&dword_1E323F000, v23, v24, "ImageMemoryCache: setImage size:%ld, wxh:%ldx%ld, bits:%ld, key:%s", v25, 0x34u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    v19 = v29;
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v12, v22);
  }

  else
  {

    (*(v8 + 8))(v12, v22);
  }

  v26 = sub_1E3882D44();
  v27 = sub_1E4205ED4();
  [v26 setObject:a1 forKey:v27 cost:v19];
}

uint64_t sub_1E388368C()
{
  sub_1E3883664();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E38836C0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_3_50();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "ImageMemoryCache: didReceiveMemoryWarning", v11, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1E3883810()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E38836C0();
  }

  return result;
}

uint64_t sub_1E3883864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E38838AC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v8 = a2;
  v9 = sub_1E42013A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  sub_1E3883AF4(a1);
  if (v8 == 2)
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_99();
    (*(v13 + 224))();
    if (v14)
    {
      OUTLINED_FUNCTION_99();
      (*(v15 + 248))();
    }
  }

  if (a3 == 2)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_99();
      (*(v16 + 328))();
      if (v17)
      {
        OUTLINED_FUNCTION_99();
        (*(v18 + 352))();
      }
    }
  }

LABEL_10:
  v20[2] = a4;
  v20[3] = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  sub_1E4203584();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E3883AF4(uint64_t a1)
{
  if (a1 && (type metadata accessor for TextLayout(), swift_dynamicCastClass()) && (OUTLINED_FUNCTION_26_0(), (*(v2 + 1976))() != 7))
  {
    sub_1E3883DA0(a1, 0);
  }

  else
  {
    sub_1E3883E84(a1);
    if (!a1)
    {
      return sub_1E4203474();
    }
  }

  (*(*a1 + 224))();
  (*(*a1 + 200))();
  (*(*a1 + 248))();
  (*(*a1 + 328))();
  (*(*a1 + 304))();
  (*(*a1 + 352))();
  return sub_1E4203474();
}

uint64_t sub_1E3883DA0(uint64_t a1, char a2)
{
  if (a1 && (type metadata accessor for TextLayout(), swift_dynamicCastClass()))
  {
    OUTLINED_FUNCTION_26_0();
    switch((*(v3 + 1976))())
    {
      case 1u:

        return sub_1E4203DA4();
      case 2u:
        if (a2)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      case 3u:
      case 4u:
      case 5u:
      case 7u:
        goto LABEL_4;
      case 6u:
        goto LABEL_10;
      default:
        if ((a2 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_10:

        result = sub_1E4203DC4();
        break;
    }
  }

  else
  {
LABEL_4:

    return sub_1E4203DB4();
  }

  return result;
}

uint64_t sub_1E3883E84(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_26_0();
    v2 = (*(v1 + 480))();
    OUTLINED_FUNCTION_8();
    switch((*(v3 + 456))())
    {
      case 1u:
        if (v2 == 2)
        {

          result = sub_1E4203D84();
        }

        else
        {
          if (v2 != 3)
          {
            goto LABEL_3;
          }

          result = sub_1E4203D94();
        }

        break;
      case 2u:
        if (v2 == 3)
        {
          goto LABEL_24;
        }

        if (v2 != 2)
        {
          goto LABEL_36;
        }

LABEL_30:

        return sub_1E4203D44();
      case 3u:
        if (v2 == 3)
        {
          goto LABEL_27;
        }

        if (v2 != 2)
        {
          goto LABEL_33;
        }

LABEL_19:

        return sub_1E4203D54();
      case 4u:
        if (v2 == 2)
        {
          goto LABEL_30;
        }

        if (v2 == 3)
        {
LABEL_24:

          return sub_1E4203D64();
        }

        else
        {
LABEL_36:

          return sub_1E4203DB4();
        }

      case 5u:
        if (v2 == 2)
        {
          goto LABEL_19;
        }

        if (v2 == 3)
        {
LABEL_27:

          return sub_1E4203D74();
        }

        else
        {
LABEL_33:

          return sub_1E4203DC4();
        }

      default:
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:

    return sub_1E4203DA4();
  }

  return result;
}

uint64_t sub_1E3884090(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_26_0();
    switch((*(v1 + 456))())
    {
      case 2u:
      case 4u:

        result = sub_1E4201D54();
        break;
      case 3u:
      case 5u:

        result = sub_1E4201D64();
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:

    return sub_1E4201D44();
  }

  return result;
}

uint64_t sub_1E3884154(uint64_t a1)
{
  if (!a1)
  {
LABEL_7:

    return sub_1E4201B84();
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 480))();
  if (v2 != 3)
  {
    if (v2 == 2)
    {

      return sub_1E4201B64();
    }

    goto LABEL_7;
  }

  return sub_1E4201B74();
}

uint64_t sub_1E38841FC(uint64_t a1, char a2)
{
  sub_1E3883DA0(a1, a2);
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    (*(v3 + 224))();
    OUTLINED_FUNCTION_8();
    (*(v4 + 200))();
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 248))();
    v7 = (*(*a1 + 328))(v6);
    (*(*a1 + 304))(v7);
    (*(*a1 + 352))();
  }

  return sub_1E4203474();
}

double sub_1E3884424@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_55();
  sub_1E3885510(v6, v7);
  v8 = sub_1E4201754();
  v10 = v9;
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 192);

  v12(v13);
  type metadata accessor for CGPoint(0);
  sub_1E42038E4();
  OUTLINED_FUNCTION_8();
  (*(v14 + 224))();

  sub_1E42038E4();
  result = v16;
  *a3 = a1;
  *(a3 + 1) = a2;
  a3[3] = 0.0;
  a3[4] = 0.0;
  a3[2] = 0.0;
  a3[5] = v16;
  *(a3 + 6) = v17;
  *(a3 + 7) = v18;
  a3[8] = v16;
  *(a3 + 9) = v17;
  *(a3 + 10) = v8;
  *(a3 + 11) = v10;
  return result;
}

uint64_t sub_1E3884578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  sub_1E3884A6C(&v42 - v5);
  v43 = sub_1E4203DA4();
  v8 = v7;
  v9 = *(v4 + 36);
  v53 = *(v1 + 16);
  v54 = *(v1 + 32);
  v44 = *(v1 + 16);
  v45 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (*v47 <= 0.0)
  {
    if (!*(v1 + 80))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 184);

    v14 = COERCE_DOUBLE(v12(v13));
    v16 = v15;

    if (v16)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    sub_1E42038F4();
    v10 = *v47;
  }

  OUTLINED_FUNCTION_1_77();
  sub_1E42038F4();
  if (*&v47[8] > 0.0)
  {
    OUTLINED_FUNCTION_1_77();
    sub_1E42038F4();
    v17 = *&v47[8];
LABEL_12:

    sub_1E3E49370(v25, &v50, v10, v17, v17, 0.0);
    *v47 = v50;
    *&v47[8] = v51;
    v48 = v52;
    v49 = 256;
    v26 = swift_allocObject();
    memcpy((v26 + 16), v1, 0x60uLL);
    sub_1E38855B4(v1, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C710);
    sub_1E38857F4();
    v27 = OUTLINED_FUNCTION_51_1();
    sub_1E40AB6EC(v27 & 1);

    *&v6[v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C728) + 36)] = 0;
    v28 = &v6[v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6B8) + 36)];
    *v28 = v43;
    v28[1] = v8;
    *v47 = *(v1 + 16);
    *&v47[16] = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E4203914();
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = sub_1E3885320();
    v33 = OUTLINED_FUNCTION_51_1();
    sub_1E41DBF30(v29, *(&v29 + 1), v33 & 1, v4, v32, v30, v31);

    sub_1E32B752C(v6);
    OUTLINED_FUNCTION_8();
    (*(v34 + 216))();
    type metadata accessor for CGPoint(0);
    sub_1E3885510(&qword_1ECF2C6F8, type metadata accessor for CGPoint);
    v35 = sub_1E3B501F8();

    v36 = swift_allocObject();
    memcpy((v36 + 16), v2, 0x60uLL);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C700);
    *(a1 + *(v37 + 52)) = v35;
    v38 = (a1 + *(v37 + 56));
    *v38 = sub_1E3885558;
    v38[1] = v36;
    return sub_1E38855B4(v2, &v44);
  }

  if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_8();
    v19 = *(v18 + 184);

    v19(v20);
    v22 = v21;
    v24 = v23;

    v17 = 0.0;
    if ((v24 & 1) == 0)
    {
      v17 = v22;
    }

    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_55();
  sub_1E3885510(v40, v41);
  result = OUTLINED_FUNCTION_6_46();
  __break(1u);
  return result;
}

uint64_t sub_1E3884A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v73 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6C8);
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v64 - v19;
  OUTLINED_FUNCTION_4_54(*(v1 + 16));
  v76 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (v90 <= 0.0)
  {
    if (!*(v1 + 80))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_8();
    v22 = *(v21 + 184);

    v24 = COERCE_DOUBLE(v22(v23));
    LOBYTE(v22) = v25;

    if (v22)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1E42038F4();
    v20 = v90;
  }

  OUTLINED_FUNCTION_2_51();
  sub_1E42038F4();
  if (v91 > 0.0)
  {
    OUTLINED_FUNCTION_2_51();
    sub_1E42038F4();
    v26 = v91;
    goto LABEL_13;
  }

  if (!*(v1 + 80))
  {
LABEL_27:
    type metadata accessor for AppEnvironment();
    OUTLINED_FUNCTION_0_55();
    sub_1E3885510(v62, v63);
    result = OUTLINED_FUNCTION_6_46();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 184);

  v28(v29);
  v31 = v30;
  v33 = v32;

  if (v33)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v31;
  }

LABEL_13:
  OUTLINED_FUNCTION_4_54(*(v1 + 40));
  v76 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C708);
  sub_1E42038F4();
  v34 = v91;
  v95 = *(v1 + 64);
  OUTLINED_FUNCTION_4_54(*(v1 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v35 = v90;
  OUTLINED_FUNCTION_4_54(*(v1 + 64));
  sub_1E42038F4();
  v36 = v90;
  v87 = MEMORY[0x1E69E7CC0];
  v37 = *v1;
  v38 = *(**v1 + 576);

  v40 = v38(v39);
  if (v40)
  {
    (*(*v40 + 224))(v40);

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v65 = v3;
      v41 = *(v15 + 32);
      v42 = v66;
      v41(v66, v12, v13);
      (*(v15 + 16))(v67, v42, v13);
      v43 = sub_1E3885C98(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1E3885C98(v44 > 1, v45 + 1, 1, v43);
      }

      (*(v15 + 8))(v66, v13);
      *(v43 + 16) = v45 + 1;
      v41((v43 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v45), v67, v13);
      v87 = v43;
      v3 = v65;
      goto LABEL_20;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  }

  sub_1E38858D4(v12);
LABEL_20:
  type metadata accessor for BaseImpressionManager();
  v46 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v47 = sub_1E388593C(v46);
  v48 = *(v2 + 8);
  v49 = (*(*v48 + 136))(v47);
  sub_1E3E49370(v37, v88, v20, v36, v26, v49);
  v50 = swift_allocObject();
  v51 = v88[1];
  *(v50 + 16) = v88[0];
  *(v50 + 32) = v51;
  *(v50 + 48) = v89;
  *(v50 + 56) = v20;
  *(v50 + 64) = fmax(v34, 0.0) + v35;
  OUTLINED_FUNCTION_4_54(v95);

  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  v86 = LOBYTE(v91);
  v84 = v93;
  v74 = sub_1E3885BD0;
  v75 = v50;
  v76 = v90;
  v77 = LOBYTE(v91);
  *v78 = *v85;
  *&v78[3] = *&v85[3];
  v79 = v92;
  v80 = v93;
  *v81 = *v83;
  *&v81[3] = *&v83[3];
  v52 = *(v37 + 98);
  v54 = v52 == 83 || v52 == 86;
  v82 = v94;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6D0);
  v56 = sub_1E3885458();
  v57 = v68;
  sub_1E38D54B8(v54, v48, v55, v56);

  v74 = v55;
  v75 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v71;
  v60 = v70;
  sub_1E3B2B2FC(v70, OpaqueTypeConformance2);
  sub_1E3B2A5DC();

  sub_1E3885BDC(v88);
  (*(v73 + 8))(v59, v3);
  return (*(v69 + 8))(v57, v60);
}

unint64_t sub_1E3885320()
{
  result = qword_1ECF2C6C0;
  if (!qword_1ECF2C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6D0);
    sub_1E3885458();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF2C6F0, &qword_1ECF2C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C6C0);
  }

  return result;
}

unint64_t sub_1E3885458()
{
  result = qword_1ECF2C6D8;
  if (!qword_1ECF2C6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6D0);
    sub_1E32752B0(&qword_1ECF2C6E0, &qword_1ECF2C6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C6D8);
  }

  return result;
}

uint64_t sub_1E3885510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3885654(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E3885694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_1E388575C(double a1, double a2)
{
  if (a2 > 0.0)
  {
    OUTLINED_FUNCTION_8();
    (*(v2 + 232))(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    return sub_1E4203904();
  }

  return result;
}

unint64_t sub_1E38857F4()
{
  result = qword_1ECF2C718;
  if (!qword_1ECF2C718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C710);
    sub_1E3885880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C718);
  }

  return result;
}

unint64_t sub_1E3885880()
{
  result = qword_1ECF2C720;
  if (!qword_1ECF2C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C720);
  }

  return result;
}

uint64_t sub_1E38858D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int64_t sub_1E388593C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3885C30(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1E4204724();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1E3885A3C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E3E6CDBC();
  v11 = v10[1];
  *&v19[0] = *v10;
  *(&v19[0] + 1) = v11;
  sub_1E4202274();
  sub_1E4200E84();
  v13 = v12;
  (*(v6 + 8))(v9, v4);
  if (v13 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = -v13;
  }

  v15 = *a1;

  sub_1E4203DA4();
  sub_1E4200D94();
  *a2 = v15;
  v16 = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 8) = v16;
  *(a2 + 40) = 0;
  *(a2 + 48) = v14;
  v17 = v19[1];
  *(a2 + 56) = v19[0];
  *(a2 + 72) = v17;
  result = *&v20;
  *(a2 + 88) = v20;
  return result;
}

size_t sub_1E3885C30(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3885C98(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

size_t sub_1E3885C98(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3885D84(v8, v7);
  v10 = *(sub_1E4204724() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3885E80(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E3885D84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BA0);
  v4 = *(sub_1E4204724() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3885E80(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4204724(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4204724();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3885F70()
{
  v1 = v0;
  v2 = sub_1E3886250();
  v3 = TVAppFeature.isEnabled.getter(10);
  if (v2)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_5_0();
      v4 = v1[15];
      OUTLINED_FUNCTION_14_0();
      v1[13] = v4;

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_55();
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v7 + 312))(0x405E000000000000, 0);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740);
    v8 = sub_1E3887D10;
  }

  else
  {
    if (v3)
    {
      OUTLINED_FUNCTION_5_0();
      v5 = v1[14];
      OUTLINED_FUNCTION_14_0();
      v1[13] = v5;
    }

    OUTLINED_FUNCTION_4_55();
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v6 + 312))(0x4064000000000000, 0);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740);
    v8 = sub_1E3887EF0;
  }

  sub_1E4148DE0(v8);

LABEL_15:
  result = OUTLINED_FUNCTION_5_0();
  v10 = v1[16];
  if (v10)
  {

    v11 = sub_1E3886250();
    (*(*v10 + 944))(v11);
  }

  return result;
}

uint64_t sub_1E38861D0(char a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = *(v1 + 99);
  *(v1 + 99) = a1;
  result = OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + 99);
  if (v5 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

    return sub_1E3885F70();
  }

  v6 = (v5 ^ v3) & 1;
  if (v3 == 2 || v6 != 0)
  {
    return sub_1E3885F70();
  }

  return result;
}

uint64_t sub_1E3886250()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 99);
  if (v1 == 2)
  {
    v2 = sub_1E3C2F814();
    LOBYTE(v1) = sub_1E3A24FDC(v2) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1E38862CC(char a1)
{
  *(v1 + 99) = 2;
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 104) = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = v2;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 98) = a1 & 1;
  v3 = sub_1E3C2F9A0();

  type metadata accessor for ViewGradientLayout();
  v4 = sub_1E40C3088();
  (*(*v4 + 1728))(0x3FE0000000000000, 0, 0);
  (*(*v4 + 1776))(1);
  v5 = *(*v4 + 312);

  v5(0x405E000000000000, 0);

  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  sub_1E38870E8(v4, v7);

  v8 = sub_1E40C3088();
  __dst[16] = 0;
  LOBYTE(v112) = 0;
  type metadata accessor for CGPoint(0);
  v10 = v9;
  sub_1E3C3DE00(v9);
  v140 = v103;
  v141 = v106;
  sub_1E3C3DE00(v10);
  LOBYTE(v135) = v139;
  sub_1E3C3DE00(v10);
  LOBYTE(v127) = v131;
  v11 = sub_1E3C3DE00(v10);
  LOBYTE(v119) = v123;
  OUTLINED_FUNCTION_7_61(v11, v12, v13, v14, v15, v16, v17, v18, v84, v88, v90, v92, v94, v96, v98, v100, v103, *(&v103 + 1), v106, v108, 0, 0x3FF0000000000000, v112, v114, 0x3FE0000000000000, 0x3FF0000000000000, *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v121, v122, v119, v120, v121, v122, v123, v124, v129, v130, v127, v128, v129, v130, v131, v132, v137, v138, v135, v136, v137);
  memcpy(__dst, __src, 0x89uLL);
  v19 = OUTLINED_FUNCTION_18();
  v20 = *(*v8 + 1600);
  v20(__dst, 115, v19 & 1, v10);
  __dst[0] = 1;
  LOBYTE(v110) = 2;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v140) = v104;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v133) = v137;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v125) = v129;
  v21 = sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v117) = v121;
  OUTLINED_FUNCTION_7_61(v21, v22, v23, v24, v25, v26, v27, v28, v85, v89, v91, v93, v95, v97, v99, v101, v104, v105, v107, v109, v110, v111, v113, v115, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  *__dst = __src[0];
  *&__dst[4] = WORD2(__src[0]);
  v29 = OUTLINED_FUNCTION_18();
  v20(__dst, 117, v29 & 1, &type metadata for ViewGradientLayout.GradientType);
  v30 = [v6 blackColor];
  sub_1E3887888(v8, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
  inited = swift_initStackObject();
  v86 = xmmword_1E4297BE0;
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 2;
  *(inited + 40) = v4;
  type metadata accessor for VUIPosition(0);
  v33 = v32;
  sub_1E3887D80(&qword_1EE23B3C0);

  v34 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0();
  *(v3 + 112) = v34;

  v35 = [objc_opt_self() blackColor];
  v36 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];
  v37 = v35;
  sub_1E3887DC4(0, 8, 0);
  OUTLINED_FUNCTION_17_31();
  if (!(!v41 & v40))
  {
    v79 = OUTLINED_FUNCTION_2_52();
    sub_1E3887DC4(v79, v6, 1);
    v38 = __src[0];
    v39 = *(__src[0] + 24) >> 1;
  }

  *(v38 + 16) = v6;
  *(v38 + 8 * v33 + 32) = 0;
  if (v39 < v33 + 2)
  {
    v80 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v80);
    v38 = __src[0];
  }

  *(v38 + 16) = v33 + 2;
  *(v38 + 8 * v6 + 32) = 0;
  v42 = *(v38 + 16);
  v43 = v42 + 1;
  if (v42 >= *(v38 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_51();
  }

  v44 = __src[0];
  *(__src[0] + 16) = v43;
  *(v44 + 8 * v42 + 32) = 0x3F9EB851EB851EB8;
  if ((v42 + 2) > *(v44 + 24) >> 1)
  {
    v81 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v81);
    v44 = __src[0];
  }

  *(v44 + 16) = v42 + 2;
  *(v44 + 8 * v43 + 32) = 0x3FC147AE147AE148;
  OUTLINED_FUNCTION_17_31();
  if (!(!v41 & v40))
  {
    v82 = OUTLINED_FUNCTION_2_52();
    sub_1E3887DC4(v82, v42 + 1, 1);
    v45 = __src[0];
    v46 = *(__src[0] + 24) >> 1;
  }

  v102 = v3;
  *(v45 + 16) = v43;
  *(v45 + 8 * v42 + 32) = 0x3FD147AE147AE148;
  if (v46 < (v42 + 2))
  {
    v83 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v83);
  }

  v47 = __src[0];
  *(__src[0] + 16) = v42 + 2;
  *(v47 + 8 * v43 + 32) = 0x3FD9EB851EB851ECLL;
  v49 = *(v47 + 16);
  v48 = *(v47 + 24);
  v50 = v48 >> 1;
  v51 = v49 + 1;
  if (v48 >> 1 <= v49)
  {
    OUTLINED_FUNCTION_3_51();
    v47 = __src[0];
    v48 = *(__src[0] + 24);
    v50 = v48 >> 1;
  }

  *(v47 + 16) = v51;
  *(v47 + 8 * v49 + 32) = 0x3FE147AE147AE148;
  if (v50 < (v49 + 2))
  {
    OUTLINED_FUNCTION_19_27((v48 > 1));
    v47 = __src[0];
  }

  *(v47 + 16) = v49 + 2;
  v52 = (v47 + 32);
  *(v47 + 32 + 8 * v51) = 0x3FE599999999999ALL;
  __src[0] = v36;
  for (i = *(v47 + 16); i; --i)
  {
    if ([v37 colorWithAlphaComponent_])
    {
      MEMORY[0x1E6910BF0]();
      if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    ++v52;
  }

  v54 = sub_1E40C2E40();
  v55 = *(v102 + 98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v56 = swift_allocObject();
  v57 = v56;
  *(v56 + 16) = xmmword_1E42A73A0;
  v58 = 0.65;
  if (v55)
  {
    v58 = 0.45;
    v59 = 0.36;
  }

  else
  {
    v59 = 0.56;
  }

  *(v56 + 32) = [v37 colorWithAlphaComponent_];
  *(v57 + 40) = [v37 colorWithAlphaComponent_];
  v60 = [v37 colorWithAlphaComponent_];

  *(v57 + 48) = v60;
  v61 = sub_1E40C2E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
  v62 = swift_initStackObject();
  if (v55)
  {
    *(v62 + 16) = v87;
    *(v62 + 32) = 14;
    *(v62 + 40) = v61;
    v63 = sub_1E4205CB4();
  }

  else
  {
    *(v62 + 16) = xmmword_1E4299720;
    *(v62 + 32) = 14;
    *(v62 + 40) = v61;
    *(v62 + 48) = 3;
    *(v62 + 56) = v54;
    v63 = sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_3_0();
  *(v102 + 120) = v63;

  v64 = sub_1E40C3088();
  v65 = [objc_opt_self() effectWithStyle_];
  OUTLINED_FUNCTION_36();
  (*(v66 + 1896))();
  OUTLINED_FUNCTION_36();
  (*(v67 + 1776))(1);
  OUTLINED_FUNCTION_36();
  (*(v68 + 1728))(0x3FE0000000000000, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v69 + 1752))(0x3FE0000000000000, 0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v70 + 1824))(&unk_1F5D60678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1E429DCC0;
  v72 = objc_opt_self();
  *(v71 + 32) = [v72 whiteColor];
  *(v71 + 40) = [v72 clearColor];
  (*(*v64 + 1800))(v71);
  OUTLINED_FUNCTION_36();
  v74 = *(v73 + 512);

  v74(3);

  v75 = *MEMORY[0x1E69798E8];
  v76 = *(*v64 + 1944);
  v77 = *MEMORY[0x1E69798E8];
  v76(v75);

  OUTLINED_FUNCTION_3_0();
  *(v102 + 128) = v64;

  return v102;
}

void sub_1E3886E78()
{
  *(v0 + 99) = 2;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 104) = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = v1;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3886EEC(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v6 = *(v3 + 104);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 104) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      do
      {
LABEL_9:
        v12 &= v12 - 1;
        OUTLINED_FUNCTION_8();
        v18 = *(v17 + 1640);

        v18(a1, a2, a3);
      }

      while (v12);
      continue;
    }
  }

  OUTLINED_FUNCTION_5_0();
  if (*(v3 + 128))
  {
    OUTLINED_FUNCTION_8();
    v20 = *(v19 + 1640);

    v20(a1, a2, a3);
  }

  return sub_1E3885F70();
}

uint64_t sub_1E3887098(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3887C44(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E38870E8(uint64_t a1, void *a2)
{
  v4 = dbl_1E42A73B0[sub_1E3886250() == 0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E429DCC0;
  *(v5 + 32) = [a2 colorWithAlphaComponent_];
  *(v5 + 40) = [a2 colorWithAlphaComponent_];
  return (*(*a1 + 1800))(v5);
}

uint64_t sub_1E38871E0(double a1)
{
  v2 = v1;
  result = sub_1E3886250();
  if (!result)
  {
    OUTLINED_FUNCTION_18_21();
    v5 = sub_1E3887098(2, *(v1 + 112));
    v6 = swift_endAccess();
    if (v5)
    {
      v7 = COERCE_DOUBLE((*(*v5 + 304))(v6));
      if (v8)
      {
        v9 = 120.0;
      }

      else
      {
        v9 = v7;
      }

      v135.origin.x = OUTLINED_FUNCTION_1_9();
      v10 = v9 / CGRectGetHeight(v135);
      (*(*v5 + 1752))(0x3FE0000000000000, *&v10, 0);
    }

    OUTLINED_FUNCTION_18_21();
    v11 = sub_1E3887098(3, *(v1 + 112));
    swift_endAccess();
    if (v11)
    {

      v136.origin.x = OUTLINED_FUNCTION_1_9();
      Height = CGRectGetHeight(v136);
      *&v99 = (Height - (a1 + 10.0)) / Height;
      v137.origin.x = OUTLINED_FUNCTION_1_9();
      v13 = 700.0 / CGRectGetWidth(v137);
      v138.origin.x = OUTLINED_FUNCTION_1_9();
      v14 = CGRectGetHeight(v138) - (a1 + 182.0);
      v139.origin.x = OUTLINED_FUNCTION_1_9();
      v15 = v14 / CGRectGetHeight(v139);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E4297BD0;
      *(v16 + 32) = 0;
      *(v16 + 40) = (a1 + 10.0 + -88.0) / (a1 + 10.0);
      *(v16 + 48) = 0x3FF0000000000000;
      __dst[16] = 0;
      v132 = xmmword_1E4297490;
      v133 = 0;
      type metadata accessor for CGPoint(0);
      v18 = v17;
      sub_1E3C3DE00(v17);
      OUTLINED_FUNCTION_15_43();
      OUTLINED_FUNCTION_14_42();
      v19 = OUTLINED_FUNCTION_13_48();
      LOBYTE(v108) = v112;
      v27 = OUTLINED_FUNCTION_0_56(v19, v20, v21, v22, v23, v24, v25, v26, v93, v99, 0x3FE0000000000000, 0x3FF0000000000000, *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v110, v111, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      sub_1E3C2FCB8(v27, v28);
      memcpy(__dst, __src, 0x89uLL);
      v29 = OUTLINED_FUNCTION_18();
      v30 = *(*v11 + 1600);
      (v30)(__dst, 115, v29 & 1, v18);
      *__dst = 0x3FE0000000000000;
      *&__dst[8] = v100;
      __dst[16] = 0;
      *&v132 = v13;
      *(&v132 + 1) = v15;
      v133 = 0;
      sub_1E3C3DE00(v18);
      OUTLINED_FUNCTION_15_43();
      OUTLINED_FUNCTION_14_42();
      v31 = OUTLINED_FUNCTION_13_48();
      LOBYTE(v108) = v112;
      v39 = OUTLINED_FUNCTION_0_56(v31, v32, v33, v34, v35, v36, v37, v38, v94, v100, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v110, v111, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      sub_1E3C2FCB8(v39, v40);
      memcpy(__dst, __src, 0x89uLL);
      v41 = OUTLINED_FUNCTION_18();
      v49 = OUTLINED_FUNCTION_12_2(v41, v42, v43, v44, v45, v46, v47, v48, v95, v101, __dst[0]);
      v30(v49, 116);
      *__dst = v16;
      *&v132 = &unk_1F5D606A8;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
      sub_1E3C3DE00(v50);
      v130 = v131;
      sub_1E3C3DE00(v50);
      v122 = v126;
      sub_1E3C3DE00(v50);
      v114 = v118;
      v51 = sub_1E3C3DE00(v50);
      v59 = OUTLINED_FUNCTION_0_56(v51, v52, v53, v54, v55, v56, v57, v58, v5, v11, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v110, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      sub_1E3C2FCB8(v59, v60);
      *__dst = __src[0];
      *&__dst[16] = __src[1];
      *&__dst[32] = __src[2];
      v61 = OUTLINED_FUNCTION_18();
      v69 = OUTLINED_FUNCTION_12_2(v61, v62, v63, v64, v65, v66, v67, v68, v96, v102, __dst[0]);
      v30(v69, 114);

      __dst[0] = 1;
      LOBYTE(v132) = 2;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v130) = v131;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v122) = v126;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v114) = v118;
      v70 = sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v106) = v110;
      v78 = OUTLINED_FUNCTION_0_56(v70, v71, v72, v73, v74, v75, v76, v77, v97, v103, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      sub_1E3C2FCB8(v78, v79);
      *__dst = __src[0];
      *&__dst[4] = WORD2(__src[0]);
      v80 = OUTLINED_FUNCTION_18();
      v88 = OUTLINED_FUNCTION_12_2(v80, v81, v82, v83, v84, v85, v86, v87, v98, v104, __dst[0]);
      v30(v88, 117);
    }

    if (*(v2 + 98))
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v2 + 128))
      {
        v89 = 100.0;
LABEL_14:
        v90 = v89 + a1;
        OUTLINED_FUNCTION_8();
        v92 = *(v91 + 312);

        v92(*&v90, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v2 + 128))
      {
        v89 = 10.0;
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t sub_1E3887770(void *a1)
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_10_36();
    v3 = sub_1E3887098(2, *(v1 + 112));
    if (v3)
    {
      v4 = v3;
      swift_endAccess();
      sub_1E38870E8(v4, a1);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_10_36();
    v7 = *(v1 + 112);
  }

  else
  {
    OUTLINED_FUNCTION_10_36();
    v5 = sub_1E3887098(2, *(v1 + 104));
    if (v5)
    {
      v6 = v5;
      swift_endAccess();
      sub_1E38870E8(v6, a1);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_10_36();
    v7 = *(v1 + 104);
  }

  v8 = sub_1E3887098(3, v7);
  if (!v8)
  {
    return swift_endAccess();
  }

  v9 = v8;
  swift_endAccess();
  sub_1E3887888(v9, a1);
}

uint64_t sub_1E3887888(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42A73A0;
  *(v4 + 32) = [a2 colorWithAlphaComponent_];
  *(v4 + 40) = [a2 colorWithAlphaComponent_];
  *(v4 + 48) = [a2 colorWithAlphaComponent_];
  return (*(*a1 + 1800))(v4);
}

uint64_t sub_1E3887980()
{
}

uint64_t sub_1E38879C0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3887A08()
{
  v0 = sub_1E38879C0();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

unint64_t sub_1E3887A3C()
{
  result = qword_1ECF2C730;
  if (!qword_1ECF2C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C730);
  }

  return result;
}

unint64_t sub_1E3887A94()
{
  result = qword_1ECF2C738;
  if (!qword_1ECF2C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C738);
  }

  return result;
}

_BYTE *_s8VideosUI10LayoutTypeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3887C44(uint64_t a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  v2 = sub_1E4207BA4();

  return sub_1E3887CB0(a1, v2);
}

unint64_t sub_1E3887CB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1E3887D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() blackColor];
  sub_1E38870E8(v1, v2);
}

uint64_t sub_1E3887D80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VUIPosition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1E3887DC4(char *a1, int64_t a2, char a3)
{
  result = sub_1E3887DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3887DE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

id sub_1E3887F00(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || *a1 != _TtC8VideosUI13TextViewModel)
  {
    return v3;
  }

  if (a3)
  {
    type metadata accessor for TextLayout();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;

      goto LABEL_10;
    }
  }

  v8 = off_1EE283540[0];

  if (v8())
  {
    type metadata accessor for TextLayout();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for TextLayout();
  v7 = sub_1E383BCC0();
LABEL_10:

  OUTLINED_FUNCTION_18();
  v9 = sub_1E3C287F4(v7);

  v10 = sub_1E373F6E0();
  if (v10)
  {
    if (a2)
    {
      objc_opt_self();
      a2 = OUTLINED_FUNCTION_3_52();
    }

    sub_1E3280A90(0, &qword_1EE23B1F8);
    v16 = (*(*v7 + 2408))(v9);
    v17 = a2;
    v18 = sub_1E38899CC(v9, v16, a2);
    v3 = v18;
    if (v18)
    {
      v80 = sub_1E3889AA4;
      v81 = a1;
      aBlock = MEMORY[0x1E69E9820];
      v77 = 1107296256;
      v78 = sub_1E3889A38;
      v79 = &block_descriptor_20;
      v24 = _Block_copy(&aBlock);

      v25 = v3;

      [v25 setSelectionHandler_];
      _Block_release(v24);
    }

    goto LABEL_33;
  }

  LOBYTE(v82[0]) = 0;
  v26 = *(*a1 + 776);
  v27 = OUTLINED_FUNCTION_2_53(v10, &unk_1F5D5DD08, &off_1F5D5CA18, v11, v12, v13, v14, v15, v70, v71, v73, v75, aBlock, v77, v78, v79, v80, v81, 0);
  v26(v27);
  v28 = v79;
  sub_1E325F748(&aBlock, &unk_1ECF296E0);
  if (v28)
  {
    if (a2)
    {
      objc_opt_self();
    }

    v18 = sub_1E3888874(a1);
    goto LABEL_32;
  }

  LOBYTE(v82[0]) = 1;
  (v26)(&aBlock, v82, &unk_1F5D5DC78, &off_1F5D5C9F8);
  v29 = v79;
  v18 = sub_1E325F748(&aBlock, &unk_1ECF296E0);
  if (!v29)
  {
    if (!v9)
    {
      v3 = 0;
      goto LABEL_33;
    }

    v32 = *(*v7 + 2264);
    v75 = v9;
    v33 = v32();
    if (v33 != 3)
    {
      v34 = v33;
      LOBYTE(aBlock) = v33;
      LOBYTE(v82[0]) = 0;
      sub_1E376C468();
      if ((sub_1E4205E84() & 1) == 0)
      {
        if (a2)
        {
          objc_opt_self();
          v55 = OUTLINED_FUNCTION_3_52();
          v56 = v75;
          if (v55)
          {
            v57 = [v55 label];
            v56 = v75;
            v58 = v57;
          }

          else
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          v56 = v75;
        }

        v74 = sub_1E388902C(a1, v56, v7, v58);

        v72 = j__OUTLINED_FUNCTION_13_30(v34);
        if (a2)
        {
          objc_opt_self();
          v59 = OUTLINED_FUNCTION_3_52();
          if (v59)
          {
            v60 = a2;
          }
        }

        else
        {
          v59 = 0;
        }

        sub_1E3280A90(0, &unk_1EE23B110);
        v61 = v74;
        v3 = sub_1E3889360(v72, v61, 0, v59);
        v67 = OUTLINED_FUNCTION_2_53(v3, &unk_1F5D5DD98, &off_1F5D5CA38, v62, v63, v64, v65, v66, v70, v72, v74, v75, aBlock, v77, v78, v79, v80, v81, 3);
        v26(v67);
        if (v79)
        {
          if (OUTLINED_FUNCTION_9_38())
          {
            v68 = LOBYTE(v82[0]);
            v69 = v3;
            [v69 setDisableClippingOnTallScripts_];
          }

          else
          {
          }
        }

        else
        {

          sub_1E325F748(&aBlock, &unk_1ECF296E0);
        }

        goto LABEL_33;
      }
    }

    v35 = *(*v7 + 648);

    v37 = v35(v36);

    if (v37 != 5 && ((sub_1E38887C4() & 1) != 0 || (sub_1E4125EE8(v37) & 1) != 0 && (TVAppFeature.isEnabled.getter(10) & 1) != 0))
    {
      v51 = (*(*v7 + 2408))();
      if (a2)
      {
        objc_opt_self();
        v52 = OUTLINED_FUNCTION_3_52();
        if (v52)
        {
          v53 = a2;
        }
      }

      else
      {
        v52 = 0;
      }

      sub_1E3280A90(0, &qword_1ECF2C750);
      v18 = sub_1E3889680(v9, v51, v52);
      goto LABEL_32;
    }

    if (TVAppFeature.isEnabled.getter(10))
    {
      v38 = v75;
      if (!a2)
      {
        goto LABEL_29;
      }

      objc_opt_self();
      if (OUTLINED_FUNCTION_3_52())
      {
        goto LABEL_29;
      }
    }

    else
    {
      v38 = v75;
      if (!a2)
      {
LABEL_29:
        v39 = 0;
LABEL_53:
        v3 = sub_1E388902C(a1, v38, v7, v39);

        goto LABEL_33;
      }
    }

    objc_opt_self();
    v39 = OUTLINED_FUNCTION_3_52();
    if (v39)
    {
      v54 = a2;
    }

    goto LABEL_53;
  }

  v79 = &unk_1F5D5DC78;
  v80 = &off_1F5D5C9F8;
  LOBYTE(aBlock) = 2;
  v30 = sub_1E39C29F0(&aBlock, 0);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (a2)
  {
    objc_opt_self();
    v31 = OUTLINED_FUNCTION_3_52();
  }

  else
  {
    v31 = 0;
  }

  v18 = sub_1E3888D40(a1, v7, v30 & 1, v31);
LABEL_32:
  v3 = v18;
LABEL_33:
  v40 = OUTLINED_FUNCTION_2_53(v18, &unk_1F5D5DAC8, &off_1F5D5C998, v19, v20, v21, v22, v23, v70, v71, v73, v75, aBlock, v77, v78, v79, v80, v81, 1);
  v41(v40);
  if (v79)
  {
    v42 = OUTLINED_FUNCTION_9_38();
    if (v42)
    {
      v43 = v82[1];
      if (v3)
      {
        v44 = v82[0];
        [v3 vui:1 isAccessibilityElement:?];
        sub_1E37FB7F0(v44, v43, v3, &selRef_vui_setAccessibilityText_);
      }

      else
      {
      }
    }
  }

  else
  {
    v42 = sub_1E325F748(&aBlock, &unk_1ECF296E0);
  }

  (*(*a1 + 320))(v42);
  if (v45)
  {
    if (v3)
    {
      type metadata accessor for Accessibility();
      sub_1E40A7DC8();
      v47 = v46;
      v49 = v48;

      sub_1E37FB7F0(v47, v49, v3, &selRef_setVuiAccessibilityIdentifier_);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1E38887C4()
{
  sub_1E3889B60();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

id sub_1E3888874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v32 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v34 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v35) = 0;
  v22 = *(*a1 + 776);
  v23 = OUTLINED_FUNCTION_7_62();
  v22(v23);
  if (!v37)
  {
    sub_1E325F748(v36, &unk_1ECF296E0);
    return 0;
  }

  OUTLINED_FUNCTION_6_47();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    return 0;
  }

  v33 = v5;
  sub_1E41FE564();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  LOBYTE(v35) = 1;
  v24 = OUTLINED_FUNCTION_7_62();
  v22(v24);
  if (v37)
  {
    OUTLINED_FUNCTION_6_47();
    if (OUTLINED_FUNCTION_21_4())
    {
      sub_1E41FE564();
      sub_1E325F748(v16, &unk_1ECF28E20);
      OUTLINED_FUNCTION_4_56(v14);
      sub_1E3889AF0(v14, v16);
    }
  }

  else
  {
    sub_1E325F748(v36, &unk_1ECF296E0);
  }

  LOBYTE(v35) = 2;
  v26 = OUTLINED_FUNCTION_7_62();
  v22(v26);
  if (!v37)
  {
    sub_1E325F748(v36, &unk_1ECF296E0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_47();
  if (!OUTLINED_FUNCTION_21_4())
  {
LABEL_13:
    v32 = 0;
    goto LABEL_14;
  }

  v32 = v35;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v17);
  LOBYTE(v35) = 1;
  v27 = OUTLINED_FUNCTION_7_62();
  v22(v27);
  if (v37)
  {
    OUTLINED_FUNCTION_6_47();
    v28 = OUTLINED_FUNCTION_21_4();
    v29 = v33;
    if (v28)
    {
      sub_1E41FE564();
      sub_1E325F748(v11, &unk_1ECF28E20);
      OUTLINED_FUNCTION_4_56(v14);
      sub_1E3889AF0(v14, v11);
    }
  }

  else
  {
    sub_1E325F748(v36, &unk_1ECF296E0);
    v29 = v33;
  }

  sub_1E3280A90(0, &unk_1ECF2C760);
  sub_1E329E324(v11, v14);
  v30 = v34;
  (*(v34 + 16))(v8, v21, v17);
  OUTLINED_FUNCTION_4_56(v8);
  sub_1E329E324(v16, v29);
  v25 = sub_1E388982C(v14, v8, v29, v32);
  sub_1E325F748(v11, &unk_1ECF28E20);
  sub_1E325F748(v16, &unk_1ECF28E20);
  (*(v30 + 8))(v21, v17);
  return v25;
}

id sub_1E3888D40(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v28 - v15;
  LOBYTE(v31) = 1;
  (*(*a1 + 776))(v28, &v31, &unk_1F5D5DC78, &off_1F5D5C9F8);
  if (!v29)
  {
    sub_1E325F748(v28, &unk_1ECF296E0);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    return 0;
  }

  v29 = &unk_1F5D5DC78;
  v30 = &off_1F5D5C9F8;
  LOBYTE(v28[0]) = 0;
  v17 = j__OUTLINED_FUNCTION_18();
  v18 = sub_1E39C29F0(v28, v17 & 1);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v19 = TVAppFeature.isEnabled.getter(10);
  v20 = 0xEF5446454C5F4E4FLL;
  if (v18)
  {
    v20 = 0xED00004E495F4E4FLL;
  }

  if (v19)
  {
    v21 = 0x5F53455249505845;
  }

  else
  {
    v21 = 0x4954415249505845;
  }

  if (v19)
  {
    v22 = 0xEA00000000004E49;
  }

  else
  {
    v22 = v20;
  }

  sub_1E41FE564();
  v23 = (*(v10 + 16))(v14, v16, v8);
  v24 = (*(*a2 + 2408))(v23);
  sub_1E3280A90(0, &unk_1ECF2C760);
  v25 = a4;
  v26 = sub_1E388973C(v14, v24, a4, v21, v22, a3 & 1);
  (*(v10 + 8))(v16, v8);
  return v26;
}

id sub_1E388902C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1E3280A90(0, &qword_1EE23AD40);
  v8 = (*(*a3 + 2408))();
  v9 = a4;
  v10 = a2;
  v11 = sub_1E3889680(a2, v8, a4);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v47 = sub_1E3889BB4;
  v48 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E38896EC;
  v46 = &block_descriptor_9_1;
  v15 = _Block_copy(aBlock);

  [v11 setAttributedTextProvider_];
  _Block_release(v15);
  v16 = *(*a1 + 776);
  v23 = OUTLINED_FUNCTION_1_78(v17, &unk_1F5D5DD98, &off_1F5D5CA38, v18, v19, v20, v21, v22, v39, 4);
  v16(v23);
  if (v46)
  {
    v24 = OUTLINED_FUNCTION_0_57();
    if (v24 && (v42 & 1) != 0)
    {
      v24 = [v11 useExtremeSizingOnTallScripts];
    }
  }

  else
  {
    v24 = sub_1E325F748(aBlock, &unk_1ECF296E0);
  }

  v30 = OUTLINED_FUNCTION_1_78(v24, &unk_1F5D5DD98, &off_1F5D5CA38, v25, v26, v27, v28, v29, v40, 5);
  v16(v30);
  if (v46)
  {
    v31 = OUTLINED_FUNCTION_0_57();
    if (v31)
    {
      v31 = [v11 setUseLanguageAwareMarginScaling_];
    }
  }

  else
  {
    v31 = sub_1E325F748(aBlock, &unk_1ECF296E0);
  }

  v37 = OUTLINED_FUNCTION_1_78(v31, &unk_1F5D5DD98, &off_1F5D5CA38, v32, v33, v34, v35, v36, v41, 6);
  v16(v37);
  if (v46)
  {
    if (OUTLINED_FUNCTION_0_57())
    {
      [v11 setLanguageAwareSystemSpacingMultiplier_];
    }
  }

  else
  {
    sub_1E325F748(aBlock, &unk_1ECF296E0);
  }

  return v11;
}

id sub_1E3889360(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = [swift_getObjCClassFromMetadata() labelWithType:a1 label:a2 traitCollection:a3 existingVisualEffectLabel:a4];

  return v7;
}

id sub_1E38893DC(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != _TtC8VideosUI13TextViewModel)
  {
    return 0;
  }

  if (a3)
  {

    v5 = a3;
LABEL_4:

    OUTLINED_FUNCTION_18();
    v6 = sub_1E3C287F4(v5);

    if (a2)
    {
      objc_opt_self();
      v7 = OUTLINED_FUNCTION_3_52();
      if (v7)
      {
        v8 = a2;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C758);
    sub_1E4148C68(sub_1E3889644, v13, &v23);

    v14 = v23;
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 clearColor];
    [v16 setVuiBackgroundColor_];

    [v16 setVuiAttributedText_];
    v18 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    v11 = v16;
    [v11 setTextContainerInset_];
    [v11 setEditable_];

    goto LABEL_12;
  }

  v9 = *(*a1 + 392);

  v11 = v9(v10);
  if (v11)
  {
    type metadata accessor for TextLayout();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v5 = v12;
      goto LABEL_4;
    }

    return 0;
  }

LABEL_12:

  return v11;
}

id sub_1E3889644@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUITextView) init];
  *a1 = result;
  return result;
}

id sub_1E3889680(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() labelWithAttributedString:a1 textLayout:a2 existingLabel:a3];

  return v6;
}

id sub_1E38896EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1E388973C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1E41FE514();
  v11 = sub_1E4205ED4();

  v12 = [swift_getObjCClassFromMetadata() labelWithExpirationDate:v10 textLayout:a2 existingLabel:a3 locStringPrefix:v11 useWarningColor:a6 & 1];

  v13 = sub_1E41FE5D4();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_1E388982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E41FE5D4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v8) != 1)
  {
    v9 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v8) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a2, v8);
  }

  if (__swift_getEnumTagSinglePayload(a3, 1, v8) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v12 = [swift_getObjCClassFromMetadata() labelForRentalExpirationDate:v9 downloadExpirationDate:v10 contentAvailabilityDate:v11 downloadStatus:a4];

  return v12;
}

id sub_1E38899CC(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() textViewWithAttributedString:a1 textLayout:a2 existingTextView:a3];

  return v6;
}

void sub_1E3889A38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1E3889AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3889B60()
{
  result = qword_1EE287248;
  if (!qword_1EE287248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287248);
  }

  return result;
}

uint64_t sub_1E3889BB4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    OUTLINED_FUNCTION_18();
    v2 = sub_1E3C287F4(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E3889D5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v3 = (*((*v1 & *v2) + 0x218))();

  v4 = [v3 currentMediaItem];
  return v4;
}

uint64_t sub_1E3889E74()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v3 = (*((*v1 & *v2) + 0x218))();

  if (v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1E3889F40(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_1E41FFC94();
  v12 = a3();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(a1, a2, &v17);
    _os_log_impl(&dword_1E323F000, v11, v12, "ClipsTemplateViewController:: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_1E388A10C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = (*(*a1 + 488))();
  if (!v10 || (sub_1E373E010(227, v10), OUTLINED_FUNCTION_12_1(), , !v5))
  {
    OUTLINED_FUNCTION_1_79();
    sub_1E3889F40(0xD000000000000012, v26 | 0x8000000000000000, v27);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v11 = sub_1E39C2E98();
  if (!v11)
  {
LABEL_15:
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_1_79();
    sub_1E3889F40(v28 + 28, v29 | 0x8000000000000000, v30);

    return 0;
  }

  v12 = v11;
  v13 = sub_1E39C2DB4();
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = sub_1E388A824(v12);
  v17 = sub_1E3744600(v14);
  result = sub_1E388C154(v16, v17, v15);
  if (!result)
  {
    goto LABEL_70;
  }

  v19 = result;

  result = sub_1E32AE9B0(v19);
  if (!result)
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v20 = MEMORY[0x1E6911E60](0, v19);
LABEL_10:
  v21 = v20;
  v79 = a4;

  v22 = v21;
  result = [v21 metadata];
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v23 = result;
  v24 = [result ratingValue];

  if (v24)
  {
    v25 = [v24 integerValue];
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = [v22 metadata];
  if (result)
  {
    v31 = result;
    v32 = [result ratingValue];

    if (v32)
    {
      [v32 &selRef_initWithMediaLibrary_fetchRequest_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0);
    v33 = sub_1E4205F84();
    MEMORY[0x1E69109E0](v33);

    OUTLINED_FUNCTION_0_58();
    sub_1E3889F40(v34, 0xED00002065756C61, v35);

    if (v25)
    {
      v36 = v25;
    }

    else
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1E42074B4();

    v37 = [v22 metadata];
    if (v37 && (v38 = sub_1E388C0E4(v37), v39))
    {
      v40 = v39;
    }

    else
    {

      v40 = 0xE500000000000000;
      v38 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1E69109E0](v38, v40);

    OUTLINED_FUNCTION_0_58();
    sub_1E3889F40(v41, 0xEE00206E69616D6FLL, v42);

    v43 = [v22 metadata];
    if (!v43)
    {
      goto LABEL_56;
    }

    v44 = sub_1E388C0E4(v43);
    if (!v45)
    {
      goto LABEL_56;
    }

    v46 = v44;
    v47 = v45;
    if (v44 != sub_1E4205F14() || v47 != v48)
    {
      v77 = v36;
      v50 = OUTLINED_FUNCTION_11_39();

      if (v50)
      {

        v36 = v77;
        goto LABEL_43;
      }

      v52 = v46 == sub_1E4205F14() && v47 == v51;
      v36 = v77;
      if (!v52)
      {
        v53 = OUTLINED_FUNCTION_11_39();

        if ((v53 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_43;
      }
    }

LABEL_43:
    v54 = sub_1E4205F14();
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      if (v54 == sub_1E4205F14() && v57 == v58)
      {

        if (a5)
        {
LABEL_55:

          OUTLINED_FUNCTION_7_13();
          OUTLINED_FUNCTION_0_58();
          v68 = v67 | 0xC;
LABEL_57:
          sub_1E3889F40(v68, v66 | 0x8000000000000000, v65);

          return 0;
        }
      }

      else
      {
        v78 = v22;
        v60 = v36;
        v61 = sub_1E42079A4();

        v62 = (v61 & 1) == 0;
        v36 = v60;
        v22 = v78;
        v63 = a4;
        if (v62)
        {
          v63 = a2;
        }

        v79 = v63;
        if (v62)
        {
          v64 = a3;
        }

        else
        {
          v64 = a5;
        }

        if (v64)
        {
          goto LABEL_55;
        }
      }

      sub_1E42074B4();

      MEMORY[0x1E69109E0](v56, v57);

      MEMORY[0x1E69109E0](8254, 0xE200000000000000);
      v71 = sub_1E4207944();
      MEMORY[0x1E69109E0](v71);

      MEMORY[0x1E69109E0](2113056, 0xE300000000000000);
      v72 = sub_1E4207944();
      MEMORY[0x1E69109E0](v72);

      MEMORY[0x1E69109E0](2112800, 0xE300000000000000);
      v70 = v79 < v36;
      if (v79 >= v36)
      {
        v73 = 0x65736C6166;
      }

      else
      {
        v73 = 1702195828;
      }

      if (v79 >= v36)
      {
        v74 = 0xE500000000000000;
      }

      else
      {
        v74 = 0xE400000000000000;
      }

      MEMORY[0x1E69109E0](v73, v74);

      OUTLINED_FUNCTION_0_58();
      sub_1E3889F40(v75, 0xEF3C206465746369, v76);

      return v70;
    }

LABEL_56:
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_0_58();
    v68 = v69 + 15;
    goto LABEL_57;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1E388A824(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E382A1D8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E382A1D8((v5 > 1), v6 + 1, 1);
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

uint64_t sub_1E388A954(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E6911E60](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

void sub_1E388A9D0(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  LOBYTE(v10) = a5;
  v134 = a1;

  sub_1E388BFFC(0x726564616568, 0xE600000000000000, &v132);
  sub_1E329505C(&v132);
  v14 = sub_1E4205CB4();
  *(&v133 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *&v132 = v14;
  sub_1E329504C(&v132, &v130);
  v15 = v134;
  swift_isUniquelyReferenced_nonNull_native();
  v129 = v15;
  sub_1E32A87C0(&v130, 0x74756F79616CLL, 0xE600000000000000);
  v16 = v15;
  type metadata accessor for PlayerCollectionViewModel();

  v17 = sub_1E3FC60D0(117, v15, 0);
  v18 = v17;
  if (v10 & 1) != 0 && (a7)
  {
    if (v17)
    {
      v122 = a2;
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_13:

LABEL_145:
    v53 = 0;
    v41 = 0;
    v83 = 0;
    a7 = 0;
    a3 = 0;
    goto LABEL_146;
  }

  v127 = a6;
  OUTLINED_FUNCTION_47_0();
  v19 += 130;
  v20 = *v19;
  v21 = v19;

  v23 = v20(v22);

  v122 = a2;
  if (v23)
  {
    if (sub_1E32AE9B0(v23))
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        goto LABEL_218;
      }

      OUTLINED_FUNCTION_9_39();
      if (v24)
      {
        OUTLINED_FUNCTION_13_49();
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_221;
    }

    v23 = 0;
  }

  while (1)
  {
    OUTLINED_FUNCTION_47_0();
    v26 += 130;
    v16 = *v26;
    a2 = v26;

    v21 = v16(v27);

    if (!v21)
    {
      goto LABEL_21;
    }

    if (sub_1E32AE9B0(v21))
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E6911E60](0, v21);
        goto LABEL_20;
      }

      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v21 + 32);

LABEL_20:

        v30 = MEMORY[0x1EEE9AC00](v29);
        a7 = (*(*v28 + 1048))(sub_1E388C238, v30);

LABEL_21:
        if (!v23)
        {
          goto LABEL_35;
        }

LABEL_22:

        v32 = v16(v31);

        if (v32)
        {
          if (sub_1E32AE9B0(v32))
          {
            if ((v32 & 0xC000000000000001) == 0)
            {
              if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_226;
              }

              v33 = *(v32 + 32);

              goto LABEL_27;
            }

            goto LABEL_224;
          }
        }

        else
        {
LABEL_30:
        }

LABEL_34:
        v122 = 0;
        goto LABEL_35;
      }

LABEL_221:
      __break(1u);
LABEL_222:
      OUTLINED_FUNCTION_14_43();
      v23 = v114;
LABEL_103:
      v66 = (*(*v23 + 504))(&v132);
      if (*v67)
      {
        v68 = v67;
        v123 = v66;
        v131 = v21;
        *&v130 = v119;
        *(&v130 + 1) = a3;
        if (v16)
        {

          OUTLINED_FUNCTION_14_43();
          v70 = v69;
        }

        else
        {
          v70 = *a7;
        }

        type metadata accessor for TextViewModel();
        v87 = sub_1E3C27638(17, &v130, v70, 0, 0);
        if (v87)
        {
          v88 = v87;
          swift_isUniquelyReferenced_nonNull_native();
          *&v130 = *v68;
          sub_1E37518B8(v88, 17);
          *v68 = v130;
        }

        else
        {
          sub_1E388BF2C(17);
        }

        v84 = &v132;
        v85 = 0;
        v86 = v123;
      }

      else
      {
        v84 = OUTLINED_FUNCTION_2_54();
      }

      v86(v84, v85);

      v64 = a3;
      a2 = v119;
      if (!v16)
      {
        goto LABEL_111;
      }

LABEL_154:
      MEMORY[0x1E6911E60](0, v128);
LABEL_113:
      OUTLINED_FUNCTION_8();
      (*(v73 + 488))();
      OUTLINED_FUNCTION_12_1();

      if (!v23)
      {

LABEL_142:

LABEL_144:

        v18 = 0;
        goto LABEL_145;
      }

      v124 = v18;
      v118 = v64;
      v119 = a2;
      v116 = v10;
      a7 = v23 + 64;
      v74 = 1 << *(v23 + 32);
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      a2 = v75 & *(v23 + 64);
      v76 = (v74 + 63) >> 6;

      v10 = 0;
      while (1)
      {
        if (!a2)
        {
          v18 = v124;
          while (1)
          {
            v77 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v77 >= v76)
            {

              goto LABEL_142;
            }

            a2 = *(a7 + 8 * v77);
            ++v10;
            if (a2)
            {
              v10 = v77;
              goto LABEL_123;
            }
          }

          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_123:
        v78 = __clz(__rbit64(a2));
        v79 = *(*(v23 + 48) + ((v10 << 7) | (2 * v78)));
        a2 &= a2 - 1;
        LOWORD(v132) = *(*(v23 + 48) + ((v10 << 7) | (2 * v78)));
        LOWORD(v130) = 224;
        a3 = sub_1E3741534();
        if ((OUTLINED_FUNCTION_12_38() & 1) == 0)
        {
          LOWORD(v132) = v79;
          LOWORD(v130) = 17;
          if ((OUTLINED_FUNCTION_12_38() & 1) == 0)
          {
            break;
          }
        }
      }

      v23 = 0;
      *&v132 = MEMORY[0x1E69E7CC0];
      a2 = v79;
      v18 = v124;
      while (1)
      {
        while (1)
        {
          a7 = v128;
          if (v127 == v23)
          {
            if (v125)
            {
              OUTLINED_FUNCTION_8();
              v89 += 61;
              v90 = *v89;
              a3 = v89;

              v90(v91);
              OUTLINED_FUNCTION_12_1();

              if (v90)
              {
                v115 = sub_1E373E010(a2, v90);

                goto LABEL_161;
              }
            }

            goto LABEL_160;
          }

          if (v16)
          {
            a3 = MEMORY[0x1E6911E60](v23, v128);
          }

          else
          {
            if (v23 >= *(a4 + 16))
            {
              goto LABEL_216;
            }

            a3 = *(v128 + 8 * v23 + 32);
          }

          a7 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_206;
          }

          v80 = (*(*a3 + 488))();
          if (v80)
          {
            break;
          }

LABEL_136:

          ++v23;
        }

        if (!*(v80 + 16) || (sub_1E3740AE8(a2), (v81 & 1) == 0))
        {

          goto LABEL_136;
        }

        MEMORY[0x1E6910BF0](v82);
        a3 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v121 = v132;
        ++v23;
      }
    }

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_35:
    OUTLINED_FUNCTION_47_0();
    v40 = *(v39 + 656);

    v40(a3);

    a7 = *v18 + 1040;
    v41 = *a7;

    v43 = (v41)(v42);
    v120 = v41;
    if (!v43)
    {
      break;
    }

    v23 = v43;
    if (!sub_1E32AE9B0(v43))
    {

      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
LABEL_214:
      OUTLINED_FUNCTION_15_44();
LABEL_40:

      OUTLINED_FUNCTION_8();
      a3 = (*(v45 + 872))();

      if (a3)
      {
        goto LABEL_44;
      }

      break;
    }

    OUTLINED_FUNCTION_9_39();
    if (v44)
    {
      OUTLINED_FUNCTION_13_49();
      goto LABEL_40;
    }

    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    OUTLINED_FUNCTION_15_44();
LABEL_11:

    OUTLINED_FUNCTION_8();
    (*(v25 + 872))();
    OUTLINED_FUNCTION_12_1();

    if (v23)
    {
      *&v130 = v23;
      *&v132 = a2;
      BYTE8(v132) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      sub_1E3798394();
      sub_1E38D2054(&v132, &v129);

      v23 = v129;
    }
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_44:
  a7 = MEMORY[0x1E69E7CC0];
  *&v132 = MEMORY[0x1E69E7CC0];
  v46 = sub_1E32AE9B0(a3);
  a2 = 0;
  v10 = a3 & 0xC000000000000001;
  a4 = a3 & 0xFFFFFFFFFFFFFF8;
  v121 = a7;
  while (v46 != a2)
  {
    if (v10)
    {
      v47 = MEMORY[0x1E6911E60](a2, a3);
      v41 = v47;
    }

    else
    {
      if (a2 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_159;
      }

      v41 = *(a3 + 8 * a2 + 32);
    }

    v16 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      v115 = 0;
LABEL_161:
      v23 = 0;
      v117 = a2;
      while (v127 != v23)
      {
        if (v16)
        {
          a3 = MEMORY[0x1E6911E60](v23, a7);
        }

        else
        {
          if (v23 >= *(a4 + 16))
          {
            goto LABEL_217;
          }

          a3 = *(a7 + 8 * v23 + 32);
        }

        if (__OFADD__(v23, 1))
        {
          goto LABEL_207;
        }

        v93 = (*(*a3 + 504))(&v132);
        if (*v92)
        {
          v10 = v92;
          sub_1E3740AE8(a2);
          if (v94)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_10_37();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
            sub_1E4207644();
            v95 = v130;

            type metadata accessor for ViewModel();
            sub_1E37414E0();
            a7 = v128;
            sub_1E4207664();
            *v10 = v95;
          }

          v96 = OUTLINED_FUNCTION_2_54();
          v93(v96);
          a2 = v117;
        }

        else
        {
          v97 = OUTLINED_FUNCTION_2_54();
          v93(v97);
        }

        ++v23;
      }

      a4 = v121;
      v23 = sub_1E32AE9B0(v121);
      a2 = 0;
      v127 = v121 & 0xC000000000000001;
      while (v23 != a2)
      {
        if (v127)
        {
          v16 = MEMORY[0x1E6911E60](a2, a4);
        }

        else
        {
          if (a2 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v16 = *(a4 + 8 * a2 + 32);
        }

        if (__OFADD__(a2, 1))
        {
          goto LABEL_209;
        }

        v99 = (*(*v16 + 504))(&v132);
        if (*v98)
        {
          v100 = v98;
          sub_1E3740AE8(67);
          if (v101)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_10_37();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
            a4 = v121;
            sub_1E4207644();
            v102 = v130;

            type metadata accessor for ViewModel();
            sub_1E37414E0();
            a7 = v128;
            sub_1E4207664();
            *v100 = v102;
          }
        }

        v103 = OUTLINED_FUNCTION_2_54();
        v99(v103);

        ++a2;
      }

      a2 = v120;
      v104 = v120();
      a3 = v122;
      if (v104)
      {
        v105 = v104;
        if (sub_1E32AE9B0(v104))
        {
          if ((v105 & 0xC000000000000001) == 0)
          {
            OUTLINED_FUNCTION_9_39();
            if (v106)
            {
              OUTLINED_FUNCTION_13_49();
              goto LABEL_190;
            }

            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
            return;
          }

LABEL_226:
          OUTLINED_FUNCTION_15_44();
LABEL_190:

          OUTLINED_FUNCTION_8();
          (*(v107 + 1048))(j__OUTLINED_FUNCTION_51_1, 0);
          OUTLINED_FUNCTION_12_1();
        }
      }

      v108 = (a2)(v104);
      v41 = v118;
      v53 = v119;
      if (v108)
      {
        v109 = v108;
        if (sub_1E32AE9B0(v108))
        {
          if ((v109 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_15_44();
          }

          else
          {
            OUTLINED_FUNCTION_9_39();
            if (!v110)
            {
              goto LABEL_229;
            }

            OUTLINED_FUNCTION_13_49();
          }

          OUTLINED_FUNCTION_8();
          (*(v111 + 1016))(a4);
          OUTLINED_FUNCTION_12_1();
        }
      }

      v112 = v115;
      if (!v115)
      {
        goto LABEL_203;
      }

      goto LABEL_204;
    }

    v48 = (*(*v41 + 488))(v47);
    if (v48)
    {
      if (!*(v48 + 16) || (sub_1E3740AE8(227), (v49 & 1) == 0))
      {

        goto LABEL_54;
      }

      MEMORY[0x1E6910BF0](v50);
      v41 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      a7 = v132;
      ++a2;
    }

    else
    {
LABEL_54:

      ++a2;
    }
  }

  OUTLINED_FUNCTION_47_0();
  v52 = (*(v51 + 960))();
  if (v52 && ((*(*v52 + 488))(v52), OUTLINED_FUNCTION_12_1(), , v46))
  {
    v125 = sub_1E373E010(227, v46);
  }

  else
  {
    v125 = 0;
  }

  v23 = sub_1E32AE9B0(a7);
  v53 = 0;
  v16 = (a7 & 0xC000000000000001);
  a4 = a7 & 0xFFFFFFFFFFFFFF8;
  v128 = a7;
  a7 += 32;
  while (1)
  {
    if (v53 == v23)
    {
      v59 = sub_1E32AE9B0(v128);
      a2 = MEMORY[0x1E69E7CA0];
      v127 = v59;
      if (v59)
      {
        if (!v16)
        {
          if (*(a4 + 16))
          {

            goto LABEL_79;
          }

          __break(1u);
          goto LABEL_214;
        }

        goto LABEL_212;
      }

      v132 = 0u;
      v133 = 0u;
LABEL_84:
      sub_1E329505C(&v132);
      LOBYTE(v10) = 0;
      if (v127)
      {
        if (v16)
        {
          goto LABEL_95;
        }

LABEL_86:
        if (!*(a4 + 16))
        {
          goto LABEL_208;
        }

        goto LABEL_88;
      }

LABEL_97:
      LOBYTE(v130) = 3;
      OUTLINED_FUNCTION_47_0();
      v32 = v18;
      (*(v65 + 776))(&v132, &v130, &unk_1F5D5E848, &off_1F5D5CC98);
      if (!*(&v133 + 1))
      {
        sub_1E329505C(&v132);
LABEL_107:
        v71 = [objc_opt_self() sharedInstance];
        if (!v71)
        {
          goto LABEL_230;
        }

        v23 = v71;
        a2 = sub_1E3741090(0xD000000000000016, 0x80000001E4264220, v71);
        v64 = v72;

        if (!v64)
        {
          goto LABEL_231;
        }

        if (!v127)
        {
LABEL_143:

          goto LABEL_144;
        }

LABEL_110:
        if (v16)
        {
          goto LABEL_154;
        }

LABEL_111:
        while (!*(a4 + 16))
        {
LABEL_211:
          __break(1u);
LABEL_212:
          OUTLINED_FUNCTION_14_43();
LABEL_79:
          LOBYTE(v130) = 4;
          OUTLINED_FUNCTION_8();
          (*(v60 + 776))(&v132, &v130, &unk_1F5D5E848, &off_1F5D5CC98);

          if (!*(&v133 + 1))
          {
            goto LABEL_84;
          }

          if (swift_dynamicCast())
          {
            LOBYTE(v10) = sub_1E3D7CB28();
            if (!v16)
            {
              goto LABEL_86;
            }
          }

          else
          {
            LOBYTE(v10) = 0;
            if (!v16)
            {
              goto LABEL_86;
            }
          }

LABEL_95:
          OUTLINED_FUNCTION_14_43();
LABEL_88:
          OUTLINED_FUNCTION_8();
          (*(v61 + 488))();
          OUTLINED_FUNCTION_12_1();

          if (!v23)
          {
            goto LABEL_97;
          }

          v62 = sub_1E373E010(17, v23);

          if (!v62)
          {
            goto LABEL_97;
          }

          if (*v62 != _TtC8VideosUI13TextViewModel)
          {

            goto LABEL_97;
          }

          a2 = sub_1E3C27024();
          v64 = v63;

          if (v64)
          {
            goto LABEL_110;
          }

          a2 = 0;
          v64 = 0xE000000000000000;
          if (v16)
          {
            goto LABEL_154;
          }
        }

        goto LABEL_113;
      }

      v21 = MEMORY[0x1E69E6158];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_107;
      }

      a3 = *(&v130 + 1);
      if (!v127)
      {
        goto LABEL_143;
      }

      v119 = v130;
      if (v16)
      {
        goto LABEL_222;
      }

      if (*(a4 + 16))
      {
        v23 = *a7;

        goto LABEL_103;
      }

      __break(1u);
LABEL_224:
      v33 = MEMORY[0x1E6911E60](0, v32);
LABEL_27:

      v35 = (*(*v33 + 872))(v34);

      if (!v35)
      {
        goto LABEL_30;
      }

      v36 = sub_1E3841D9C(v23, v35);
      v38 = v37;

      if (v38)
      {
        goto LABEL_34;
      }

      v122 = v36;
      goto LABEL_35;
    }

    if (v16)
    {
      v41 = MEMORY[0x1E6911E60](v53, v128);
    }

    else
    {
      if (v53 >= *(a4 + 16))
      {
        goto LABEL_202;
      }

      v41 = *(a7 + 8 * v53);
    }

    if (__OFADD__(v53++, 1))
    {
      break;
    }

    v56 = v41;
    do
    {
      v57 = (*(*v56 + 576))(v55);
      if (v57)
      {
        (*(*v57 + 208))(0);
      }

      v58 = (*(*v56 + 624))(v57);

      v56 = v58;
    }

    while (v58);
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  v112 = sub_1E388A954(a4);
LABEL_204:

  OUTLINED_FUNCTION_47_0();
  (*(v113 + 1616))(v112);

  v83 = v116 & 1;
LABEL_146:
  *a8 = v18;
  a8[1] = v53;
  a8[2] = v41;
  a8[3] = v83;
  a8[4] = a7;
  a8[5] = a3;
}

uint64_t sub_1E388BF2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3740AE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  type metadata accessor for ViewModel();
  sub_1E37414E0();
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

double sub_1E388BFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1E327D33C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
    sub_1E4207644();

    sub_1E329504C((*(v9 + 56) + 32 * v7), a3);
    sub_1E4207664();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E388C0E4(void *a1)
{
  v2 = [a1 ratingDomain];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E388C154(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v4 = sub_1E42062A4();

  v5 = sub_1E4205C44();

  v6 = [a3 videosPlayablesFromDictionaries:v4 andMetadataDictionary:v5];

  if (!v6)
  {
    return 0;
  }

  sub_1E388C2BC();
  v7 = sub_1E42062B4();

  return v7;
}

unint64_t sub_1E388C264()
{
  result = qword_1EE23BA60;
  if (!qword_1EE23BA60)
  {
    type metadata accessor for ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23BA60);
  }

  return result;
}

unint64_t sub_1E388C2BC()
{
  result = qword_1EE23B1C0;
  if (!qword_1EE23B1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B1C0);
  }

  return result;
}

void sub_1E388C300(char a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = (*(v8 + 640))();
  if (!v9)
  {
LABEL_24:
    OUTLINED_FUNCTION_19_28();
    return;
  }

  v47 = v9;
  if (sub_1E388C888())
  {
    [v3 frame];
    OUTLINED_FUNCTION_19();
    if (!CGRectEqualToRect(v49, v50))
    {
      sub_1E388CA64(1);
      v12 = [objc_allocWithZone(VUIOverlayBackgroundMaterialImagesOperation) initWithSourceBackgroundImage_];
      [v12 setResizedBackgroundImageSize_];
      v48 = MEMORY[0x1E69E7CC0];
      sub_1E39DFFE0();
      OUTLINED_FUNCTION_7_63();
      if (v14)
      {
        v15 = (*(v13 + 568))();
        if (!v15)
        {
LABEL_9:
          v16 = MEMORY[0x1E69E7CC0];
LABEL_14:
          sub_1E378AAC8(v16, v12);
          if (a1)
          {
            [v12 start];
            sub_1E388CB80(v12);
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23B2A0);
            OUTLINED_FUNCTION_4_0();
            v30 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v31 = swift_allocObject();
            *(v31 + 16) = v30;
            *(v31 + 24) = v12;
            v32 = v12;
            v33 = sub_1E378A448(sub_1E388EAF4, v31);
            v12 = v32;
            [v33 addDependency_];
            v34 = [objc_opt_self() mainQueue];
            [v34 addOperation_];

            [*sub_1E41DA684() addOperation_];
            OUTLINED_FUNCTION_36_3();
            (*((*v7 & v35) + 0x2D0))(v12);
            OUTLINED_FUNCTION_36_3();
            v37 = *((*v7 & v36) + 0x2C8);
            v38 = v37();
            if (v38)
            {
              v39 = v38;
              swift_getKeyPath();
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v40 = OUTLINED_FUNCTION_9_40();
            }

            else
            {
              v40 = 0;
            }

            OUTLINED_FUNCTION_7_63();
            v42 = (*(v41 + 744))(v40);
            v43 = (v37)(v42);
            if (v43)
            {
              v44 = v43;
              swift_getKeyPath();
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v45 = OUTLINED_FUNCTION_9_40();
            }

            else
            {
              v45 = 0;
            }

            OUTLINED_FUNCTION_7_63();
            (*(v46 + 768))(v45);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v15 = (*(v13 + 520))();
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v17 = v15;
      sub_1E3280A90(0, &qword_1EE23AF28);
      sub_1E3AA9EB4();

      [v3 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v17 frame];
      sub_1E378A374(v19, v21, v23, v25, v26, v27, v28, v29);
      MEMORY[0x1E6910BF0]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v16 = v48;

      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_19_28();
}

uint64_t sub_1E388C888()
{
  if ((sub_1E388CD34() & 1) == 0)
  {
    return 0;
  }

  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 784))();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_59();
  if (((*(v3 + 664))() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_59();
    v7 = (*(v6 + 568))();
    if (v7 && (v8 = v7, [v7 frame], v10 = v9, v12 = v11, v14 = v13, v16 = v15, v8, OUTLINED_FUNCTION_26_3(), (v18 = (*((*v0 & v17) + 0x2B0))()) != 0))
    {
      v19 = v18;
      OUTLINED_FUNCTION_19();
      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      if (!CGRectEqualToRect(v27, v28))
      {
        v19 = v19;
        [v19 size];
        v26.width = v20;
        v26.height = v21;
        v25.width = v14;
        v25.height = v16;
        v22 = CGSizeEqualToSize(v25, v26);

        v4 = !v22;
LABEL_14:

        return v4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_59();
      v24 = (*(v23 + 688))();
      if (!v24)
      {
        return 1;
      }

      v19 = v24;
    }

    v4 = 0;
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1E388CA64(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 744))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v4) + 0x300))(0);
  if (a1)
  {
    OUTLINED_FUNCTION_0_59();
    v6 = (*(v5 + 712))();
    [v6 cancel];
  }

  OUTLINED_FUNCTION_0_59();
  v8 = *(v7 + 720);

  return v8(0);
}

void sub_1E388CB80(void *a1)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    v15 = [a1 resizedSourceBackgroundImage];
    if (v15)
    {
      OUTLINED_FUNCTION_21();
      v3 = *(v2 + 792);
      v4 = v15;
      v3(v15);
    }

    v5 = sub_1E378AA48(a1);
    if (v5)
    {
      v6 = v5;
      if (sub_1E388CD34())
      {
        v7 = sub_1E3AA9EB4();
        v8 = *v7;
        v9 = v7[1];

        v10 = sub_1E378A81C(v8, v9, v6);

        if (v10)
        {
          OUTLINED_FUNCTION_21();
          v12 = *(v11 + 696);
          v13 = v10;
          v12(v10);
          sub_1E388CDDC(0.2);
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_21();
      (*(v14 + 672))(0);
    }
  }
}

void *sub_1E388CD34()
{
  if (sub_1E39DFFE0())
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x238))();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x208))();
    if (!result)
    {
      return result;
    }
  }

  v2 = result;
  v3 = [result isHidden];

  return (v3 ^ 1);
}

void sub_1E388CDDC(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 520))();
  if (v3)
  {
    v5 = v3;
    v4 = sub_1E3280A90(0, &qword_1EE23B220);
    sub_1E3AAB920(v4, &off_1F5D6E2D0, a1);
  }
}

uint64_t sub_1E388CEA0()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 600);

  return v3(v1);
}

void sub_1E388CF08(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 616))();
  if (!v3)
  {
    return;
  }

  v11 = v3;
  v4 = sub_1E32859C4(v3, &selRef_canonicalId);
  v6 = v5;
  v7 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1E42079A4();

        if ((v10 & 1) == 0)
        {
LABEL_19:

          return;
        }
      }

LABEL_16:
      sub_1E3280A90(0, &qword_1EE23AF68);
      if (sub_1E4206F64() & 1) == 0 && (sub_1E388D0C8(a1))
      {
        sub_1E388C300(1, 0.0, 0.0);
      }

      goto LABEL_19;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }
}

uint64_t sub_1E388D0C8(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E39DFFE0();
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))();
    if (!v10)
    {
LABEL_3:
      v11 = 0;
      return v11 & 1;
    }
  }

  else
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x208))();
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  v12 = v10;
  if (![a1 showScoreboard] || (v13 = sub_1E32859C4(a1, &selRef_canonicalId), v15 = sub_1E41494A8(v13, v14), , v15) || (v33 = v12, v56 = sub_1E3780DC4(a1), v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8E0), sub_1E388EBAC(), v54 = v34, v35 = sub_1E4149048(v34), , (v35 & 1) != 0) && !objc_msgSend(a1, sel_configureScoreUpdates))
  {
    v16 = sub_1E3E37EEC();
    (*(v5 + 16))(v7, v16, v4);
    v17 = a1;
    v18 = sub_1E41FFC94();
    v19 = sub_1E42067D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v54 = v12;
      v56 = v21;
      *v20 = 136315394;
      v22 = sub_1E32859C4(v17, &selRef_canonicalId);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v25 = sub_1E3270FC8(v22, v24, &v56);
      v53 = v4;
      v26 = v25;

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      v27 = sub_1E377D34C();
      v28 = (v27 & 1) == 0;
      if (v27)
      {
        v29 = 0xD00000000000001ALL;
      }

      else
      {
        v29 = 0xD000000000000014;
      }

      if (v28)
      {
        v30 = "T@VUIPlayer,N,R";
      }

      else
      {
        v30 = "to prevent spoilers.";
      }

      v31 = sub_1E3270FC8(v29, v30 | 0x8000000000000000, &v56);

      *(v20 + 14) = v31;
      _os_log_impl(&dword_1E323F000, v18, v19, "Suppressing scoreboard for %s %s", v20, 0x16u);
      swift_arrayDestroy();
      v12 = v54;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v7, v53);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    sub_1E388D920();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x270))(0);
    [v12 setHidden_];
    v11 = 0;
  }

  else
  {
    [v12 setHidden_];
    v36 = sub_1E377C574();
    sub_1E377CDC8();
    v38 = v37;

    OUTLINED_FUNCTION_36_3();
    (*((*v9 & v39) + 0x270))(v38);
    if ((sub_1E39DFFE0() & 1) == 0)
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v53 = v12;
        [v41 invalidateData];
        [v41 setDelegate_];
        [v41 setVuiClipsToBounds_];
        OUTLINED_FUNCTION_36_3();
        v43 = *((*v9 & v42) + 0x178);
        v44 = v43();
        if (v44)
        {
          v45 = (*(*v44 + 1944))(v44);

          (*(*v45 + 552))(&v56, v46);
          v12 = v33;

          if ((v57 & 1) == 0)
          {
            v47 = objc_opt_self();
            sub_1E3952BF8();
            [v47 radiusFromCornerRadii_];
            v44 = [v53 _setCornerRadius_];
          }
        }

        v48 = (v43)(v44);
        v49 = v48;
        if (v48)
        {
          v50 = (*(*v48 + 1944))(v48);

          v49 = (*(*v50 + 1784))(v51);
          v12 = v33;
        }

        [v41 setScoreboardLayout_];
      }
    }

    [v2 setNeedsLayout];
    v11 = sub_1E388C888();
    if ((v11 & 1) == 0)
    {
      sub_1E388CDDC(0.2);
    }

    if ([v2 vui_isInAWindow])
    {
      if ([a1 &selRef__playbackStateWillChange_ + 1])
      {
        v55 = sub_1E3780DC4(a1);
        v52 = sub_1E4149048(v54);

        if (v52)
        {
          sub_1E388D920();
          sub_1E388DAA0();
        }
      }
    }
  }

  [v12 vui_setNeedsDisplay];

  return v11 & 1;
}

uint64_t sub_1E388D838()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 616))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 jsContextDictionary];

    v4 = sub_1E4205C64();
    return v4;
  }

  else
  {

    return sub_1E4205CB4();
  }
}

void sub_1E388D920()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x268))();
  if (v3)
  {
    v16 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_1E4206474();
      OUTLINED_FUNCTION_18_22(v8);
      v9 = v0;
      v10 = sub_1E4206424();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v6;
      v11[5] = v7;
      v11[6] = v9;
      OUTLINED_FUNCTION_16_34(v11, v13, v14, v15, v11);
    }

    else
    {
    }
  }
}

void sub_1E388DAA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x268))();
  if (v3)
  {
    v17 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if ([v17 configureScoreUpdates])
      {
        v8 = sub_1E4206474();
        OUTLINED_FUNCTION_18_22(v8);
        v9 = v17;
        v10 = v0;
        v11 = sub_1E4206424();
        v12 = swift_allocObject();
        v13 = MEMORY[0x1E69E85E0];
        v12[2] = v11;
        v12[3] = v13;
        v12[4] = v9;
        v12[5] = v10;
        v12[6] = v6;
        v12[7] = v7;
        OUTLINED_FUNCTION_16_34(v12, v14, v15, v16, v12);

        return;
      }
    }
  }
}

uint64_t sub_1E388DC50()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_1E41FE5D4();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[8] = v6;
  v0[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E388DD14, v6, v5);
}

uint64_t sub_1E388DD14()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v3 = [v2 lastUpdatedTime];
  sub_1E41FE584();

  v4 = v2;
  *(v0 + 80) = sub_1E376EE58(v2, 1, v1);
  v5 = sub_1E376DBD0();
  v6 = *v5;
  *(v0 + 88) = *v5;

  *(v0 + 96) = sub_1E32859C4(v4, &selRef_leagueId);
  *(v0 + 104) = v7;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v8 = *v6;
  *(v0 + 112) = *(*v6 + 488);
  *(v0 + 120) = (v8 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E388DE54, v6, 0);
}

uint64_t sub_1E388DE54()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 24), &off_1F5D609E0, *(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E388DF00, v1, v2);
}

uint64_t sub_1E388DF00()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E388DF6C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FFCB4();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E388E060, v6, v5);
}