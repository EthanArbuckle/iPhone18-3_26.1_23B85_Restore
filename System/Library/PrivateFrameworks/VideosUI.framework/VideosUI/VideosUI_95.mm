uint64_t sub_1E3E00370()
{
  v0 = sub_1E3E002F8();

  return MEMORY[0x1EEE6BDC0](v0, 193, 7);
}

double sub_1E3E003C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3E0043C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 96))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3E004D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E3E00568(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E3E005F8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3E0066C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3E00798(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3E008BC;
}

void sub_1E3E008BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3E0066C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3E0066C(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3E00970(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3E009C0(a1, a2);
  return v4;
}

uint64_t sub_1E3E009C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI39EnclosingOrthogonalScrollViewProperties__bounds;
  type metadata accessor for CGRect(0);
  memset(v13, 0, sizeof(v13));
  sub_1E4200634();
  (*(v7 + 32))(v2 + v11, v10, v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1E3E00AC4()
{

  v1 = OBJC_IVAR____TtC8VideosUI39EnclosingOrthogonalScrollViewProperties__bounds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3E00B68()
{
  v1 = *(*v0 + 16);

  return v1;
}

void (*sub_1E3E00C14(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 112))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3E00C8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnclosingOrthogonalScrollViewProperties();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for EnclosingOrthogonalScrollViewProperties()
{
  result = qword_1ECF640B0;
  if (!qword_1ECF640B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E00D20()
{
  sub_1E3E00DBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3E00DBC()
{
  if (!qword_1EE289F20)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289F20);
    }
  }
}

uint64_t sub_1E3E00E14(__int16 *a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_27;
  }

  v10 = *(*a1 + 464);
  v11 = a2;
  v12 = v10();
  if (v12)
  {
    v13 = v12;
    if (sub_1E32AE9B0(v12))
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v14 = *(v13 + 32);
      }

      type metadata accessor for ImageViewModel();
      v62 = swift_dynamicCastClass();
      if (v62)
      {
        v61 = a2;
        v15 = (*(*a1 + 392))();
        if (v15)
        {
          v16 = v15;
          v63 = v14;
          type metadata accessor for BrandLockupCellLayout();
          v60[2] = v16;
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            v18 = v17;
            v19 = (*a3 == 2) | ~*a3;
            v20 = (*v17 + 1696);
            v21 = *v20;
            v22 = (*v20)();
            [v11 vuiBounds];
            v60[1] = v22;
            sub_1E3E01568(v22, v23);
            v25 = v24;
            v27 = v26;
            sub_1E3DF9E68(v68);
            LOBYTE(v22) = v72;
            v67 = 0;
            type metadata accessor for UIFactory();
            v60[0] = OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView;
            v28 = *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
            v29 = v67;
            v65 = &unk_1F5D869A0;
            v66 = &off_1F5D868A0;
            v30 = swift_allocObject();
            v64[0] = v30;
            *(v30 + 16) = v25;
            *(v30 + 24) = v27;
            *(v30 + 32) = v29;
            *(v30 + 33) = v69;
            *(v30 + 49) = v70;
            *(v30 + 65) = v71[0];
            *(v30 + 80) = *(v71 + 15);
            *(v30 + 96) = v19 & 1;
            *(v30 + 97) = v22;
            v31 = v28;

            v33 = (v21)(v32);
            sub_1E3D09CE8();
            v34 = sub_1E393D92C(v62, v28, v64, v33);

            sub_1E373C624(v64);
            v35 = *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
            *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView] = v34;
            v36 = v34;
            v37 = [v11 vuiContentView];
            [v37 vui:*&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView] addSubview:v35 oldView:?];

            v38 = *v21();
            (*(v38 + 552))(v64);
            v39 = *v64;
            v40 = *&v64[1];
            v41 = *&v64[2];
            v42 = *&v65;

            v43 = 0.0;
            if ((v66 & 1) == 0)
            {
              v43 = sub_1E3952BE8(v39, v40, v41, v42);
            }

            v44 = *&v11[v60[0]];
            if (v44)
            {
              v45 = [v44 vuiLayer];
              [v45 setCornerRadius_];
            }

            *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_viewLayout] = v18;

            if (v34)
            {
              [v36 setVuiUserInteractionEnabled_];
            }

            v46 = [v11 vui:1 isAccessibilityElement:?];
            (*(*v62 + 904))(v46);
            v47 = v61;
            if (v48)
            {
              v49 = sub_1E4205ED4();
            }

            else
            {
              v49 = 0;
            }

            [v11 vui:v49 setAccessibilityText:?];

            return v47;
          }

          goto LABEL_26;
        }
      }

LABEL_22:

LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
  }

LABEL_27:
  v51 = sub_1E324FBDC();
  v52 = v6;
  (*(v7 + 16))(v9, v51, v6);

  v53 = sub_1E41FFC94();
  v54 = sub_1E4206814();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68[0] = v56;
    *v55 = 136315138;
    sub_1E384EE08(a1[49]);
    v59 = sub_1E3270FC8(v57, v58, v68);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1E323F000, v53, v54, "BrandLockupCell: Failed to get correct cell for [%s]", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1E69143B0](v56, -1, -1);
    MEMORY[0x1E69143B0](v55, -1, -1);
  }

  (*(v7 + 8))(v9, v52);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3E01568(uint64_t a1, double a2)
{
  (*(*a1 + 208))(*&a2, 0);
  v3 = (*(*a1 + 312))(0, 0);
  return (*(*a1 + 2288))(v3);
}

double sub_1E3E0162C(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_viewLayout];
  if (v6)
  {
    v7 = *(*v6 + 1696);

    v9 = v7(v8);

    if (a1)
    {
      sub_1E3E01568(v9, a2);

      return a2;
    }
  }

  else if (a1)
  {
    return a2;
  }

  v10 = *&v3[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
  if (v10)
  {
    v11 = v10;
    [v3 vuiBounds];
    [v11 setFrame_];
  }

  return a2;
}

id sub_1E3E01790(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_setHighlighted_, a1 & 1);
  result = *&v1[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3E01850()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_254(&OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v0 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v1, v2, v0);
}

id sub_1E3E018CC(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_254(&OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

void *sub_1E3E019B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v2 = v1;
  return v1;
}

uint64_t _s5ClockVMa()
{
  result = qword_1EE299860;
  if (!qword_1EE299860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E01A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = _s5ClockVMa();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  *(v16 - v15) = a1;
  v19 = *(v18 + 32);
  v20 = sub_1E4205BF4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v17 + v19, a7, v20);
  *(v17 + 24) = a5;
  *(v17 + 32) = a6 & 1;
  if (a4)
  {
    v22 = sub_1E42052A4();
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    *(v17 + 8) = v24;
    a3 = sub_1E42052B4();
    v26 = v25;
    (*(v21 + 8))(a7, v20);
    if (v26)
    {
      a3 = 0;
    }
  }

  else
  {
    (*(v21 + 8))(a7, v20);
    *(v17 + 8) = a2;
  }

  *(v17 + 16) = a3;
  sub_1E38E97F0(v17, a8);
  return __swift_storeEnumTagSinglePayload(a8, 0, 1, v13);
}

uint64_t sub_1E3E01C24()
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v70 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v70 - v7;
  v8 = *(v0 + 8);
  v9 = *(v0 + 16);
  v76 = v0;
  v10 = type metadata accessor for SportsVoiceOverUtility();
  v11 = sub_1E38BAE70();
  v77 = sub_1E38BA560(14, v9, v11);
  v13 = v12;

  if (!v13)
  {
    v81 = v8;
    v79 = sub_1E4207944();
    v80 = v17;
    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v81 = v9;
    v18 = sub_1E4207944();
    MEMORY[0x1E69109E0](v18);

    v13 = v80;
    v77 = v79;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1E38BAE70();
  v8 = sub_1E38BA560(13, v8, v14);
  v16 = v15;

LABEL_6:
  v78 = v13;
  if (v9)
  {
    v19 = sub_1E38BAE70();
    v9 = sub_1E38BA560(14, v9, v19);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750);
  inited = swift_initStackObject();
  v23 = 0;
  v72 = xmmword_1E4299720;
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = v8;
  *(inited + 40) = v16;
  v24 = inited + 40;
  *(inited + 48) = v9;
  *(inited + 56) = v21;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v26 = (v24 + 16 * v23);
  while (++v23 != 3)
  {
    v27 = v26 + 2;
    v28 = *v26;
    v26 += 2;
    if (v28)
    {
      v73 = v10;
      v29 = *(v27 - 3);

      v30 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1E3740F88(0, *(v25 + 2) + 1, 1, v25);
      }

      v32 = *(v25 + 2);
      v31 = *(v25 + 3);
      if (v32 >= v31 >> 1)
      {
        v25 = sub_1E3740F88((v31 > 1), v32 + 1, 1, v25);
      }

      *(v25 + 2) = v32 + 1;
      v33 = &v25[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v28;
      v3 = v30;
      v10 = v73;
      goto LABEL_10;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v34 = *(v25 + 2);
  if (v34 != 1)
  {
    if (v34 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
      v35 = swift_initStackObject();
      v35[1] = v72;
      v35[2].n128_u8[0] = 18;
      v36 = *(v25 + 5);
      v35[2].n128_u64[1] = *(v25 + 4);
      v35[3].n128_u64[0] = v36;
      v35[3].n128_u8[8] = 19;
      v37 = *(v25 + 7);
      v35[4].n128_u64[0] = *(v25 + 6);
      v35[4].n128_u64[1] = v37;
      sub_1E38EA7FC();

      v38 = sub_1E4205CB4();
      v39 = sub_1E38BAE70();
      v40 = sub_1E38BA3C8(15, v38, v39);
      v42 = v41;

      if (v42)
      {

        v77 = v40;
        v78 = v42;
LABEL_25:
        v45 = *(_s5ClockVMa() + 32);
        v46 = v76;
        v47 = sub_1E4205294();
        v48 = v74;
        sub_1E4205514();

        v49 = *(v75 + 48);
        v50 = sub_1E4205BF4();
        v51 = *(v50 - 8);
        (*(v51 + 16))(v3, v46 + v45, v50);
        sub_1E3E02410(v48, &v3[v49]);
        if ((*(v51 + 88))(v3, v50) != *MEMORY[0x1E69D3D78])
        {
          goto LABEL_27;
        }

        v52 = sub_1E4205784();
        if (__swift_getEnumTagSinglePayload(&v3[v49], 1, v52) == 1)
        {
          goto LABEL_27;
        }

        v54 = v71;
        sub_1E3E02480(&v3[v49], v71);
        OUTLINED_FUNCTION_1_2();
        v56 = v55;
        v58 = (*(v57 + 88))(v54, v52);
        if (v58 == *MEMORY[0x1E69D3BD0])
        {
          if ((*(v76 + 32) & 1) != 0 || (v59 = *(v76 + 24), v59 < 1))
          {
            sub_1E325F6F0(&v3[v49], &qword_1ECF2BD98);
            (*(v51 + 8))(v3, v50);
            return v77;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
          v60 = swift_initStackObject();
          OUTLINED_FUNCTION_0_255(v60, v72)[3].n128_u8[8] = 20;
          v79 = v59;
          v60[4].n128_u64[0] = sub_1E4207944();
          v60[4].n128_u64[1] = v61;
          sub_1E38EA7FC();
          v62 = sub_1E4205CB4();
          v63 = sub_1E38BAE70();
          v64 = 16;
        }

        else
        {
          if (v58 != *MEMORY[0x1E69D3BF0])
          {
            (*(v56 + 8))(v54, v52);
LABEL_27:
            sub_1E325F6F0(v3, &qword_1ECF393B8);
            return v77;
          }

          v65 = *(v76 + 24);
          v66 = *(v76 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
          if ((v66 & 1) != 0 || v65 < 1)
          {
            v69 = swift_initStackObject();
            OUTLINED_FUNCTION_0_255(v69, xmmword_1E4297BE0);
            sub_1E38EA7FC();
            v62 = sub_1E4205CB4();
            v63 = sub_1E38BAE70();
            v64 = 17;
          }

          else
          {
            v67 = swift_initStackObject();
            OUTLINED_FUNCTION_0_255(v67, v72)[3].n128_u8[8] = 20;
            v79 = v65;
            v67[4].n128_u64[0] = sub_1E4207944();
            v67[4].n128_u64[1] = v68;
            sub_1E38EA7FC();
            v62 = sub_1E4205CB4();
            v63 = sub_1E38BAE70();
            v64 = 18;
          }
        }

        v53 = sub_1E38BA3C8(v64, v62, v63);

        sub_1E325F6F0(&v3[v49], &qword_1ECF2BD98);
        (*(v51 + 8))(v3, v50);
        return v53;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (*(v25 + 2))
  {
    v44 = *(v25 + 5);
    v77 = *(v25 + 4);
    v78 = v44;

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E02410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E02480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E024F0()
{
  v1 = sub_1E4205BF4();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  sub_1E4205294();
  v11 = _s5ClockVMa();
  (*(v3 + 16))(v7, v0 + *(v11 + 32), v1);
  sub_1E385BAA0();
  v12 = type metadata accessor for SportsPlayPeriod();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2B488);
    return 0;
  }

  else
  {
    sub_1E385CD18();
    v13 = v14;
    sub_1E383B454(v10);
  }

  return v13;
}

uint64_t sub_1E3E02680(uint64_t a1)
{
  v2 = sub_1E4205BF4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, a1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69D3D88])
  {
    v10 = sub_1E38BA38C();
    v11 = 26;
  }

  else if (v9 == *MEMORY[0x1E69D3D70])
  {
    v10 = sub_1E38BA38C();
    v11 = 27;
  }

  else
  {
    if (v9 != *MEMORY[0x1E69D3D78])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = sub_1E38BA38C();
    v11 = 28;
  }

  v12 = sub_1E38BA390(v11, v10);

  return v12;
}

uint64_t sub_1E3E02810(uint64_t a1, char a2)
{
  v4 = sub_1E3E02680(a1);
  if (v3)
  {
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 10;
    *(inited + 40) = v4;
    *(inited + 48) = v5;
    sub_1E38EA7FC();
    v7 = sub_1E4205CB4();
    v8 = sub_1E38BAE70(v7);
    v4 = sub_1E38BA3C8(a2, v7, v8);
  }

  return v4;
}

void sub_1E3E02918()
{
  sub_1E42052C4();
  if (v0 <= 0x3F)
  {
    sub_1E3E029C4();
    if (v1 <= 0x3F)
    {
      sub_1E4205BF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3E029C4()
{
  if (!qword_1EE23B418)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B418);
    }
  }
}

void sub_1E3E02A14(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

id sub_1E3E02AA8(int64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0();
  v5 = *&v2[v4];
  if (v5)
  {
    v6 = v5;
    sub_1E3B8C6DC(a1);
  }

  return [v2 vui_setNeedsLayout];
}

uint64_t sub_1E3E02B74(uint64_t a1, uint64_t a2)
{
  v11[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393C8);
  v4 = sub_1E4148C68(sub_1E3E02C94, v3, v11);
  v5 = v11[0];
  *(v5 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout) = (*(*a1 + 392))(v4);

  type metadata accessor for SeasonPickerButton();
  v6 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0();
  v7 = *(v5 + v6);
  v8 = v7;
  v9 = sub_1E3B8BEE0(a1, v7);

  sub_1E3E02A14(v9);
  return v5;
}

id sub_1E3E02C94@<X0>(void *a1@<X8>)
{
  type metadata accessor for EpisodeSectionHeaderView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

double sub_1E3E02CD8(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout];
  if (!v6 || (v7 = *(*v6 + 176), v8 = , v7(v20, v8), v9 = v20[0], , (v21 & 1) != 0))
  {
    v9 = *MEMORY[0x1E69DDCE0];
  }

  v10 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0();
  v11 = *&v3[v10];
  if (v11)
  {
    v12 = v11;
    [v12 vui:a2 sizeThatFits:0.0];
    v14 = v13;
    v16 = v15;
    v22.origin.x = 0.0;
    v22.origin.y = v9;
    v22.size.width = v14;
    v22.size.height = v16;
    CGRectGetMaxY(v22);

    if (a1)
    {
      return a2;
    }
  }

  else if (a1)
  {
    return a2;
  }

  [v3 vuiIsRTL];
  v17 = *&v3[v10];
  if (v17)
  {
    v18 = v17;
    [v3 bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v18 setFrame_];
  }

  return a2;
}

double sub_1E3E02EEC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3E02CD8(0, v1);
}

id sub_1E3E02FDC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3E03068(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3E03180()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v1;
  v52 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_13_139();
  v50 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v49 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  sub_1E4202624();
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v54 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12_127(v30, v49);
  if (v7)
  {
    sub_1E4202EA4();
    v31 = sub_1E3806164();
    v55 = v3;
    v56 = v31;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v32 = v3;
    v33 = v9;
    v34 = *(v19 + 16);
    v34(v26, v23, v17);
    v52 = v27;
    v35 = *(v19 + 8);
    v35(v23, v17);
    v34(v23, v26, v17);
    v9 = v33;
    v3 = v32;
    v36 = v53;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v37, v38);
    v35(v23, v17);
    v35(v26, v17);
    v27 = v52;
  }

  else
  {
    v39 = v50;
    v40 = *(v50 + 16);
    v40(v16, v52, v5);
    v41 = v49;
    v40(v49, v16, v5);
    v42 = sub_1E3806164();
    v61 = v3;
    v62 = v42;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v36 = v53;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v43, v44, v45);
    v46 = *(v39 + 8);
    v46(v41, v5);
    v46(v16, v5);
  }

  v47 = sub_1E3806164();
  v59 = v3;
  v60 = v47;
  OUTLINED_FUNCTION_4_1();
  v57 = swift_getWitnessTable();
  v58 = v3;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v48 = v54;
  (*(v54 + 16))(v9, v36, v27);
  (*(v48 + 8))(v36, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E03528()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v1;
  v49 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v50 = v8;
  OUTLINED_FUNCTION_13_139();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  sub_1E4202624();
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v52 = v28;
  OUTLINED_FUNCTION_5_7();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v51 = &v47 - v31;
  if (v7)
  {
    v55 = WitnessTable;
    v56 = v7;
    sub_1E32822E0();
    sub_1E4203114();
    v32 = sub_1E3806164();
    v53 = v3;
    v54 = v32;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v33 = *(v19 + 16);
    v33(v26, v23, v17);
    v49 = v27;
    v34 = *(v19 + 8);
    v34(v23, v17);
    v33(v23, v26, v17);
    v35 = v51;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v36, v37);
    v34(v23, v17);
    v34(v26, v17);
    v27 = v49;
  }

  else
  {
    v38 = v47;
    v39 = *(v47 + 16);
    v39(v16, v49, v5, v30);
    (v39)(v13, v16, v5);
    v40 = sub_1E3806164();
    v61 = v3;
    v62 = v40;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v35 = v51;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v41, v42, v43);
    v44 = *(v38 + 8);
    v44(v13, v5);
    v44(v16, v5);
  }

  v45 = sub_1E3806164();
  v59 = v3;
  v60 = v45;
  OUTLINED_FUNCTION_4_1();
  v57 = swift_getWitnessTable();
  v58 = v3;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v46 = v52;
  (*(v52 + 16))(v50, v35, v27);
  (*(v46 + 8))(v35, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E038E0()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v33 = v7;
  v34 = v8;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for VoiceOverTextAccessibility();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v32 - v25;
  sub_1E3E03B24(v10, v16 + *(v13 + 20));
  v27 = v34;
  *v16 = v33;
  v16[1] = v12;
  v28 = v16 + *(v13 + 24);
  *v28 = v27;
  v28[8] = v35 & 1;

  MEMORY[0x1E690DE70](v16, v5, v13, v3);
  sub_1E3E03B94(v16);
  v29 = sub_1E3E03BF0();
  v38 = v3;
  v39 = v29;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v30 = *(v19 + 16);
  v30(v26, v23, v17);
  v31 = *(v19 + 8);
  v31(v23, v17);
  v30(v37, v26, v17);
  v31(v26, v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for VoiceOverTextAccessibility()
{
  result = qword_1EE294E38;
  if (!qword_1EE294E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E03B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E03B94(uint64_t a1)
{
  v2 = type metadata accessor for VoiceOverTextAccessibility();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E03BF0()
{
  result = qword_1EE294E50[0];
  if (!qword_1EE294E50[0])
  {
    type metadata accessor for VoiceOverTextAccessibility();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294E50);
  }

  return result;
}

void sub_1E3E03C70()
{
  sub_1E3B1C340(319, &qword_1EE23B5F8);
  if (v0 <= 0x3F)
  {
    sub_1E3E03D2C();
    if (v1 <= 0x3F)
    {
      sub_1E3B1C340(319, &qword_1EE23B420);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3E03D2C()
{
  if (!qword_1ECF393D8)
  {
    sub_1E4202494();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF393D8);
    }
  }
}

void sub_1E3E03DA0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v48 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393F0);
  OUTLINED_FUNCTION_0_10();
  v60 = v16;
  v61 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_127(v18, v48[0]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  if (v0[1])
  {
    v57 = v19;
    v50 = *v0;
    MEMORY[0x1EEE9AC00](v21);
    v56 = v6;
    v48[-2] = v0;
    v53 = v22;
    v49 = v23;

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39418);
    v54 = v9;
    v26 = v25;
    v27 = v11;
    v28 = sub_1E3E049B0();
    v29 = sub_1E3E04A14();
    v55 = v5;
    v30 = v29;
    v51 = v28;
    v52 = v24;
    v31 = sub_1E3E35D1C(v26, v14);
    v48[1] = v48;
    MEMORY[0x1EEE9AC00](v31);
    v48[-2] = v1;
    v32 = v14;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39410);
    v62 = v24;
    v63 = v26;
    v64 = v28;
    v65 = v30;
    OUTLINED_FUNCTION_3_190();
    v48[2] = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = sub_1E3E04AE0();
    v37 = v58;
    v38 = v59;
    v39 = v33;
    sub_1E3E35D1C(v33, v58);
    (*(v27 + 8))(v32, v38);
    v62 = v50;
    v63 = v49;
    sub_1E32822E0();
    v40 = sub_1E4202C44();
    v42 = v41;
    LOBYTE(v28) = v43;
    v62 = v38;
    v63 = v39;
    v64 = OpaqueTypeConformance2;
    v65 = v36;
    swift_getOpaqueTypeConformance2();
    v44 = v53;
    v45 = v61;
    sub_1E4202EC4();
    sub_1E37434B8(v40, v42, v28 & 1);

    (*(v60 + 8))(v37, v45);
    sub_1E37E93E8(v44, v54, &qword_1ECF393F8);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04860();
    sub_1E4201F44();
    sub_1E325F6F0(v44, &qword_1ECF393F8);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400);
    OUTLINED_FUNCTION_2();
    (*(v47 + 16))(v9, v3, v46);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04860();
    sub_1E3E049B0();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E04278()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v1;
  v30 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39450);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39458);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VoiceOverTextAccessibility();
  sub_1E3E03B24(v0 + *(v21 + 20), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E3E04CFC(v14);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400);
    OUTLINED_FUNCTION_2();
    (*(v23 + 16))(v5, v28, v22);
    swift_storeEnumTagMultiPayload();
    v24 = sub_1E3E049B0();
    v31 = v22;
    v32 = v24;
    OUTLINED_FUNCTION_7_177();
    OUTLINED_FUNCTION_11_140();
    sub_1E4201F44();
  }

  else
  {
    (*(v17 + 32))(v20, v14, v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400);
    v26 = sub_1E3E049B0();
    sub_1E4203224();
    (*(v8 + 16))(v5, v11, v6);
    swift_storeEnumTagMultiPayload();
    v31 = v25;
    v32 = v26;
    OUTLINED_FUNCTION_7_177();
    OUTLINED_FUNCTION_11_140();
    sub_1E4201F44();
    (*(v8 + 8))(v11, v6);
    (*(v17 + 8))(v20, v15);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E045A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  if (*(a2 + *(type metadata accessor for VoiceOverTextAccessibility() + 24) + 8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8);
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(v6, a1, v10);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04BDC();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    v14 = sub_1E3E049B0();
    v15 = sub_1E3E04A14();
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    OUTLINED_FUNCTION_3_190();
    swift_getOpaqueTypeConformance2();
    return sub_1E4201F44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    v19 = sub_1E3E049B0();
    v20 = sub_1E3E04A14();
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    OUTLINED_FUNCTION_3_190();
    swift_getOpaqueTypeConformance2();
    sub_1E4203374();
    sub_1E37E93E8(v9, v6, &qword_1ECF39440);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04BDC();
    sub_1E4201F44();
    return sub_1E325F6F0(v9, &qword_1ECF39440);
  }
}

unint64_t sub_1E3E04860()
{
  result = qword_1ECF39408;
  if (!qword_1ECF39408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF393F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF393E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    sub_1E3E04AE0();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39408);
  }

  return result;
}

unint64_t sub_1E3E049B0()
{
  result = qword_1ECF39420;
  if (!qword_1ECF39420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39420);
  }

  return result;
}

unint64_t sub_1E3E04A14()
{
  result = qword_1ECF39428;
  if (!qword_1ECF39428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    sub_1E3E049B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39428);
  }

  return result;
}

unint64_t sub_1E3E04AE0()
{
  result = qword_1ECF39430;
  if (!qword_1ECF39430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39410);
    sub_1E3E04BDC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39430);
  }

  return result;
}

unint64_t sub_1E3E04BDC()
{
  result = qword_1ECF39438;
  if (!qword_1ECF39438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39438);
  }

  return result;
}

uint64_t sub_1E3E04CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E04D64()
{
  result = qword_1ECF39460;
  if (!qword_1ECF39460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39468);
    sub_1E3E04860();
    sub_1E3E049B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39460);
  }

  return result;
}

uint64_t sub_1E3E04DF0()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 464))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04E4C()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 488))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04EA8()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    sub_1E39BE4D0();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04EE0()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  return swift_weakLoadStrong();
}

uint64_t sub_1E3E04F60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E04EE0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E04FB8(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (!a1)
    {

      goto LABEL_8;
    }

    v11 = a1;
    type metadata accessor for ViewModel();
    sub_1E3E08944(&qword_1EE23BA60, type metadata accessor for ViewModel);

    v5 = sub_1E4205E84();
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    swift_weakAssign();
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  v9 = v2;
  v10 = a1;
  (*(*v2 + 392))(v8);
}

unint64_t sub_1E3E05160()
{
  v1 = v0;
  if (*(v0 + 80))
  {
    v2 = *(v0 + 72);
  }

  else
  {
    sub_1E42074B4();

    if (swift_weakLoadStrong())
    {
    }

    MEMORY[0x1E69109E0]();

    v2 = 0xD00000000000001ALL;
    *(v1 + 72) = 0xD00000000000001ALL;
    *(v1 + 80) = 0x80000001E4284970;
  }

  return v2;
}

uint64_t sub_1E3E05254()
{
  v0 = swift_allocObject();
  sub_1E3E05294();
  return v0;
}

uint64_t sub_1E3E05294()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  sub_1E41FE924();
  swift_weakAssign();
  sub_1E3E05310();

  return v0;
}

void sub_1E3E05310()
{
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = *(v0 + 40);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    return;
  }

  if (!swift_weakLoadStrong())
  {
    aBlock = 0u;
    v37 = 0u;
    goto LABEL_11;
  }

  LOBYTE(v40) = 10;
  OUTLINED_FUNCTION_26_0();
  (*(v18 + 776))(&aBlock, &v40, &unk_1F5D5D528, &off_1F5D5C858);

  if (!*(&v37 + 1))
  {
LABEL_11:
    sub_1E325F7A8(&aBlock, &unk_1ECF296E0);
    return;
  }

  if (swift_dynamicCast())
  {
    v19 = v40;
    sub_1E41FE5C4();
    sub_1E41FE574();
    v21 = v20;
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v23(v16, v10);
    v24 = v19 - v21;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v25(v9);

    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_100();
      v28 = OUTLINED_FUNCTION_10_11();
      *&aBlock = v28;
      *v22 = 136315650;
      v29 = sub_1E3E05160();
      sub_1E3270FC8(v29, v30, &aBlock);
      OUTLINED_FUNCTION_34_3();
      *(v22 + 4) = v1;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v19;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v24;
      _os_log_impl(&dword_1E323F000, v26, v27, "%s registerGameEventUpdatingIfNeeded gameStartTime: %f, durationFromNow: %f", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    (*(v5 + 8))(v9, v3);
    if (v24 <= 0.0)
    {
      sub_1E3E063FC();
    }

    else
    {
      v31 = objc_opt_self();
      v32 = swift_allocObject();
      swift_weakInit();
      v38 = sub_1E3E0898C;
      v39 = v32;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v37 = sub_1E377674C;
      *(&v37 + 1) = &block_descriptor_119;
      v33 = _Block_copy(&aBlock);

      v34 = [v31 scheduledTimerWithTimeInterval:0 repeats:v33 block:v24];
      _Block_release(v33);
      v35 = *(v2 + 64);
      *(v2 + 64) = v34;
    }
  }
}

void sub_1E3E056FC(uint64_t a1)
{
  v5 = v1;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v5 + 40);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    return;
  }

  sub_1E3294F34(a1, v65);
  if (!v65[3])
  {
    sub_1E325F7A8(v65, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    sub_1E41FE5C4();
    sub_1E41FE574();
    v20 = v21;
    (*(v14 + 8))(v18, v12);
    goto LABEL_8;
  }

  v20 = v65[16];
LABEL_8:
  Strong = swift_weakLoadStrong();
  v23 = sub_1E3E06254(Strong);

  v64 = v11;
  if (v23)
  {
    v24 = 0;
    v2 = *(v23 + 2);
    v3 = v23 + 40;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v2)
      {

        OUTLINED_FUNCTION_24_88();

        sub_1E3E07E64(v65);

        v33 = sub_1E3E063BC(v65[0]);

        goto LABEL_21;
      }

      if (!*(v23 + 2))
      {
        break;
      }

      OUTLINED_FUNCTION_26_89();
      if (v27 == v28 && v4 <= *&v20)
      {
        v29 = *(v26 - 24);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_24_88();
        if ((v30 & 1) == 0)
        {
          OUTLINED_FUNCTION_19_114();
          OUTLINED_FUNCTION_23_84();
        }

        v7 = v25[2];
        v31 = v25[3];
        if (v7 >= v31 >> 1)
        {
          v25 = v65;
          sub_1E3E087E8((v31 > 1), v7 + 1, 1);
          OUTLINED_FUNCTION_23_84();
        }

        v25[2] = (v7 + 1);
        v32 = &v25[2 * v7];
        v32[4] = v29;
        *(v32 + 5) = v4;
        v11 = v64;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v33 = 0;
LABEL_21:
  sub_1E3E04FB8(v33);
  v34 = swift_weakLoadStrong();
  v35 = sub_1E3E06254(v34);

  if (v35)
  {
    v7 = 0;
    v3 = *(v35 + 2);
    v24 = v35 + 40;
    v36 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
      if (!*(v35 + 2))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_26_89();
      if (v27 == v28 && v4 > *&v20)
      {
        v38 = *(v37 - 24);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_24_88();
        if ((v39 & 1) == 0)
        {
          OUTLINED_FUNCTION_19_114();
          OUTLINED_FUNCTION_23_84();
        }

        v41 = v36[2];
        v40 = v36[3];
        v2 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          v36 = v65;
          sub_1E3E087E8((v40 > 1), v41 + 1, 1);
          OUTLINED_FUNCTION_23_84();
        }

        v36[2] = v2;
        v42 = &v36[2 * v41];
        v42[4] = v38;
        *(v42 + 5) = v4;
        v11 = v64;
      }
    }

    OUTLINED_FUNCTION_24_88();

    sub_1E3E07E64(v65);

    v43 = *(v65[0] + 2);
    OUTLINED_FUNCTION_28_72();
    if (v43)
    {
      v45 = *(v44 + 40);
    }

    else
    {
      v45 = 0.0;
    }

    if (v43 && (v47 = ceil(v45 - *&v20), v47 >= 0.0))
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E4205F14();
      *(inited + 40) = v49;
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_1E4299720;
      *(v50 + 32) = 0x65756C6176;
      *(v50 + 40) = 0xE500000000000000;
      if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v47 <= -1.0)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v47 >= 1.84467441e19)
      {
LABEL_56:
        __break(1u);

        __break(1u);
        return;
      }

      v51 = MEMORY[0x1E69E6810];
      *(v50 + 48) = v47;
      *(v50 + 72) = v51;
      *(v50 + 80) = 0x646574616D696E61;
      *(v50 + 88) = 0xE800000000000000;
      *(v50 + 120) = MEMORY[0x1E69E6370];
      *(v50 + 96) = 1;
      v52 = sub_1E4205CB4();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *(inited + 48) = v52;
      v46 = sub_1E4205CB4();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_72();
  }

  *(v5 + 32) = v46;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v53(v11);

  v54 = sub_1E41FFC94();
  v55 = sub_1E4206814();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_100();
    v65[0] = OUTLINED_FUNCTION_72_0();
    *v56 = 136315650;
    v57 = sub_1E3E05160();
    sub_1E3270FC8(v57, v58, v65);
    OUTLINED_FUNCTION_34_3();
    *(v56 + 4) = v2;
    *(v56 + 12) = 2048;
    if (sub_1E3E04EE0())
    {
      v59 = sub_1E3E05EA4();
    }

    else
    {
      v59 = 0xBFF0000000000000;
    }

    *(v56 + 14) = v59;
    *(v56 + 22) = 2080;
    if (!*(v5 + 32))
    {
      sub_1E4205CB4();
    }

    v60 = sub_1E4205C74();
    v62 = v61;

    v63 = sub_1E3270FC8(v60, v62, v65);

    *(v56 + 24) = v63;
    _os_log_impl(&dword_1E323F000, v54, v55, "%s resolveChildren: timestamp = %f, eventMonitorDescriptors = %s", v56, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 1))(v64, v7);
  }

  else
  {

    (*(v3 + 1))(v11, v7);
  }
}

unint64_t sub_1E3E05EA4()
{
  LOBYTE(v2) = 53;
  (*(*v0 + 776))(v3, &v2, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v3[3])
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1E325F7A8(v3, &unk_1ECF296E0);
  }

  return 0xBFF0000000000000;
}

uint64_t sub_1E3E05F60()
{
  OUTLINED_FUNCTION_1_227();
  sub_1E3E08944(v0, v1);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3E05FD4()
{
  OUTLINED_FUNCTION_1_227();
  sub_1E3E08944(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3E06080()
{
  swift_weakDestroy();
  swift_weakDestroy();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC8VideosUI24TimeBasedVariantResolver___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3E06104()
{
  sub_1E3E06080();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1E3E06254(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 440))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E32AE9B0(v2);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1E3E087E8(0, v4 & ~(v4 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](v7, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = sub_1E3E05EA4();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E3E087E8((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E063BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E3E063FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (!swift_weakLoadStrong())
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v21) = 4;
  OUTLINED_FUNCTION_26_0();
  (*(v8 + 776))(&v23, &v21, &unk_1F5D5D0A8, &off_1F5D5C758);

  if (!*(&v24 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v23, &unk_1ECF296E0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    v10 = *(Strong + 16);
    v9 = *(Strong + 24);

    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = v21;
  v9 = v22;
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_10:
  v12 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v12, v1);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_49_0();
    *&v23 = OUTLINED_FUNCTION_72_0();
    *v15 = 136315394;
    v16 = sub_1E3E05160();
    v20 = v1;
    v18 = v3;
    v19 = sub_1E3270FC8(v16, v17, &v23);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1E3270FC8(v10, v9, &v23);
    _os_log_impl(&dword_1E323F000, v13, v14, "%s registerGameEventUpdating canonicalId: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v18 + 8))(v7, v20);
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  type metadata accessor for Tier1LiveUpdateProvider();
  j__OUTLINED_FUNCTION_18();
  swift_unknownObjectRetain();
  *(v0 + 48) = sub_1E3C05A88();
  *(v0 + 56) = &off_1F5D780A8;

  swift_unknownObjectRelease();
  sub_1E3C07F70();

LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E06758()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v93 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - v19;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v102 = v21;
  v103 = v22;
  v104 = v23;
  (v22)(v20);

  v24 = sub_1E41FFC94();
  v25 = sub_1E4206814();

  v26 = os_log_type_enabled(v24, v25);
  v97 = v9;
  v98 = v12;
  v100 = v15;
  if (v26)
  {
    v27 = v4;
    v28 = v2;
    v29 = OUTLINED_FUNCTION_6_21();
    v108[0] = OUTLINED_FUNCTION_100();
    *v29 = 136315138;
    v30 = sub_1E3E05160();
    OUTLINED_FUNCTION_14_64(v30, v31);
    OUTLINED_FUNCTION_34_3();
    *(v29 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v24, v25, "%s didUpdatePostgameVariant", v29, 0xCu);
    OUTLINED_FUNCTION_3_191();
    v2 = v28;
    v4 = v27;
    OUTLINED_FUNCTION_6_0();

    v32 = v27;
  }

  else
  {

    v32 = v4;
  }

  v33 = *(v32 + 1);
  (v33)(v20, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v39 = v101;
    v103(v101, v102, v2);

    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_6_21();
      v108[0] = OUTLINED_FUNCTION_10_11();
      v42 = OUTLINED_FUNCTION_31_62(4.8149e-34);
      v44 = OUTLINED_FUNCTION_14_64(v42, v43);

      *(v33 + 4) = v44;
      OUTLINED_FUNCTION_18_101(&dword_1E323F000, v45, v41, "%s didUpdatePostgameVariant: viewModel is nil, ignore");
      OUTLINED_FUNCTION_3_191();
      OUTLINED_FUNCTION_55();

      v46 = OUTLINED_FUNCTION_99_0();
      (v33)(v46);
      goto LABEL_37;
    }

    v69 = v39;
LABEL_33:
    (v33)(v69, v2);
    goto LABEL_37;
  }

  v35 = Strong;
  OUTLINED_FUNCTION_26_0();
  v37 = (*(v36 + 624))();
  v101 = v35;
  while (1)
  {
    if (!v37)
    {
      v47 = v100;
      OUTLINED_FUNCTION_5_179();
      v48();

      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_6_21();
        v96 = v33;
        v99 = OUTLINED_FUNCTION_10_11();
        v108[0] = v99;
        v51 = OUTLINED_FUNCTION_31_62(4.8149e-34);
        v53 = v2;
        v54 = OUTLINED_FUNCTION_14_64(v51, v52);

        *(v33 + 4) = v54;
        v2 = v53;
        OUTLINED_FUNCTION_18_101(&dword_1E323F000, v55, v50, "%s didUpdateVariant: unable to find collectionViewModel");
        OUTLINED_FUNCTION_3_191();
        v33 = v96;
        OUTLINED_FUNCTION_6_0();

        v56 = v100;
      }

      else
      {

        v56 = v47;
      }

      (v33)(v56, v2);
      v70 = v101;
      goto LABEL_23;
    }

    type metadata accessor for CollectionViewModel();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      break;
    }

    (*(*v37 + 624))();
    OUTLINED_FUNCTION_12_1();

    v37 = v35;
  }

  v57 = v38;
  v100 = v4;
  v58 = v99;
  OUTLINED_FUNCTION_5_179();
  v59();

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  if (os_log_type_enabled(v60, v61))
  {
    v95 = v2;
    v96 = v33;
    v62 = OUTLINED_FUNCTION_49_0();
    v94 = OUTLINED_FUNCTION_72_0();
    v108[0] = v94;
    v63 = OUTLINED_FUNCTION_31_62(4.8151e-34);
    v65 = v64;
    v66 = sub_1E3270FC8(v63, v64, v108);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    if (v57[3])
    {
      v67 = v57[2];
      v68 = v57[3];
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
    }

    sub_1E3270FC8(v67, v68, v108);
    OUTLINED_FUNCTION_12_1();

    *(v62 + 14) = v65;
    _os_log_impl(&dword_1E323F000, v60, v61, "%s didUpdatePostgameVariant notify collectionViewModel: %s", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v71 = v99;
    v2 = v95;
    v33 = v96;
  }

  else
  {

    v71 = v58;
  }

  (v33)(v71, v2);
  v70 = v101;
  (*(*v57 + 1480))(v101);

LABEL_23:
  if (TVAppFeature.isEnabled.getter(10))
  {

    goto LABEL_37;
  }

  v107 = v70;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39470);
  if (!swift_dynamicCast())
  {
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    sub_1E325F7A8(v105, &qword_1ECF39478);
    v82 = v97;
    OUTLINED_FUNCTION_5_179();
    v83();

    v84 = sub_1E41FFC94();
    v85 = sub_1E42067F4();

    if (os_log_type_enabled(v84, v85))
    {
      OUTLINED_FUNCTION_6_21();
      v108[0] = OUTLINED_FUNCTION_10_11();
      v86 = OUTLINED_FUNCTION_31_62(4.8149e-34);
      v88 = OUTLINED_FUNCTION_14_64(v86, v87);

      *(v33 + 4) = v88;
      OUTLINED_FUNCTION_18_101(&dword_1E323F000, v89, v85, "%s didUpdatePostgameVariant listener is missing");
      OUTLINED_FUNCTION_3_191();
      OUTLINED_FUNCTION_55();

      v90 = OUTLINED_FUNCTION_99_0();
      (v33)(v90);
      goto LABEL_37;
    }

    v69 = v82;
    goto LABEL_33;
  }

  v96 = v33;
  sub_1E3251BE8(v105, v108);
  v72 = v98;
  OUTLINED_FUNCTION_5_179();
  v73();

  v74 = sub_1E41FFC94();
  v75 = sub_1E4206814();

  if (os_log_type_enabled(v74, v75))
  {
    v95 = v2;
    v76 = OUTLINED_FUNCTION_49_0();
    *&v105[0] = OUTLINED_FUNCTION_72_0();
    *v76 = 136315394;
    v77 = sub_1E3E05160();
    v79 = sub_1E3270FC8(v77, v78, v105);

    *(v76 + 4) = v79;
    *(v76 + 12) = 2080;
    if (*(v70 + 24))
    {
      v80 = *(v70 + 16);
      v81 = *(v70 + 24);
    }

    else
    {
      v80 = 0;
      v81 = 0xE000000000000000;
    }

    sub_1E3270FC8(v80, v81, v105);
    OUTLINED_FUNCTION_12_1();

    *(v76 + 14) = v80;
    _os_log_impl(&dword_1E323F000, v74, v75, "%s didUpdatePostgameVariant notify listener: %s", v76, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (v96)(v98, v95);
  }

  else
  {

    (v96)(v72, v2);
  }

  v91 = v109;
  v92 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  (*(v92 + 8))(v1, v91, v92);

  __swift_destroy_boxed_opaque_existential_1(v108);
LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E070C4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (!swift_weakLoadStrong())
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v21) = 12;
  OUTLINED_FUNCTION_26_0();
  (*(v7 + 776))(&v22, &v21, &unk_1F5D5D528, &off_1F5D5C858);

  if (!*(&v23 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v22, &unk_1ECF296E0);
    v8 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v8 = v21;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v9, v0);

  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v20 = v0;
    v12 = OUTLINED_FUNCTION_49_0();
    *&v22 = OUTLINED_FUNCTION_72_0();
    *v12 = 136315394;
    v13 = sub_1E3E05160();
    v15 = sub_1E3270FC8(v13, v14, &v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (!v8)
    {
      sub_1E4205CB4();
    }

    v16 = sub_1E4205C74();
    v18 = v17;

    v19 = sub_1E3270FC8(v16, v18, &v22);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s gameScoreContext = %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v2 + 8))(v6, v20);
  }

  else
  {

    (*(v2 + 8))(v6, v0);
  }

  if (!v8)
  {
    v8 = sub_1E4205CB4();
  }

  sub_1E3744600(v8);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E07420()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v1;
  v35 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E324FBDC();
  (*(v11 + 16))(v15, v16, v9);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  v19 = os_log_type_enabled(v17, v18);
  v36 = v0;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_100();
    v32 = v9;
    v37 = v21;
    *v20 = 136315138;
    v22 = sub_1E3E05160();
    v24 = sub_1E3270FC8(v22, v23, &v37);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1E323F000, v17, v18, "%s update sportingEvent", v20, 0xCu);
    OUTLINED_FUNCTION_3_191();
    OUTLINED_FUNCTION_6_0();

    (*(v11 + 8))(v15, v32);
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  sub_1E4205044();
  v25 = *(v3 + 104);
  v26 = v33;
  v27 = v35;
  v25(v33, *MEMORY[0x1E69D3B78], v35);
  v28 = sub_1E3823168();
  v29 = *(v3 + 8);
  v30 = OUTLINED_FUNCTION_99_0();
  v29(v30);
  (v29)(v8, v27);
  if ((v28 & 1) == 0)
  {
    sub_1E4205044();
    v25(v26, *MEMORY[0x1E69D3B88], v27);
    sub_1E3823168();
    v31 = OUTLINED_FUNCTION_99_0();
    v29(v31);
    (v29)(v8, v27);
  }

  sub_1E3E07734();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E07734()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(v3 + 40);
  if (v13 != 2 && (v13 & 1) != 0 || (v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v12);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_10_11();
    v30[0] = v17;
    *v1 = 136315138;
    v18 = sub_1E3E05160();
    OUTLINED_FUNCTION_14_64(v18, v19);
    OUTLINED_FUNCTION_34_3();
    *(v1 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s game is final", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  (*(v8 + 8))(v12, v6);
  v20 = *(v3 + 40);
  if (v20 != 2 && (v20 & 1) != 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  *(v3 + 40) = 1;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v22 = (*(*Strong + 440))(Strong)) == 0)
  {
    v26 = 0;
LABEL_23:

    sub_1E3E04FB8(v26);
    *(v3 + 32) = 0;

    if (*(v3 + 48))
    {
      v27 = *(v3 + 56);
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 16);
      swift_unknownObjectRetain();
      v29(0, ObjectType, v27);
      swift_unknownObjectRelease();
    }

    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    swift_unknownObjectRelease();
    sub_1E3E06758();
    goto LABEL_26;
  }

  v23 = v22;
  v24 = sub_1E32AE9B0(v22);
  for (i = 0; ; ++i)
  {
    if (v24 == i)
    {

      v26 = 0;
      goto LABEL_23;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1E6911E60](i, v23);
    }

    else
    {
      if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v26 = *(v23 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v30[3] = &unk_1F5D5D528;
    v30[4] = &off_1F5D5C858;
    LOBYTE(v30[0]) = 11;
    sub_1E3E07E10();
    sub_1E39C2B80();
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (v31 != 3)
    {
      LOBYTE(v30[0]) = v31;
      sub_1E3858078();
      if (sub_1E4205E84())
      {

        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1E3E07ABC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v17 = v1;
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = OUTLINED_FUNCTION_100();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_1E3E05160();
    v16 = sub_1E3270FC8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s update scoreboardViewModel", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    v1 = v17;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  [v1 hasEventEnded];
  sub_1E3E07734();
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for TimeBasedVariantResolver()
{
  result = qword_1EE296D40;
  if (!qword_1EE296D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E07D00(uint64_t a1)
{
  OUTLINED_FUNCTION_1_227();
  result = sub_1E3E08944(v2, v3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E3E07D50()
{
  result = sub_1E41FE934();
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

unint64_t sub_1E3E07E10()
{
  result = qword_1ECF39480;
  if (!qword_1ECF39480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39480);
  }

  return result;
}

uint64_t sub_1E3E07E64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3E08910(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E3E07ED0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3E07ED0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3E08034(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3E07FC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3E07FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 > *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3E08034(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v81 = result;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 <= v13) ^ (v18 > v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 <= v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return result;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 > *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v82 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v37 = *(v8 + 16);
      v36 = *(v8 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_1E37FFF70((v36 > 1), v37 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v38;
      v39 = v8 + 32;
      v40 = (v8 + 32 + 16 * v37);
      *v40 = v7;
      v40[1] = v9;
      v83 = *v81;
      if (!*v81)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = (v39 + 16 * (v38 - 1));
          v43 = (v8 + 16 * v38);
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = *(v8 + 32);
            v45 = *(v8 + 40);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = (v39 + 16 * (v41 - 1));
          v74 = *v73;
          v75 = (v39 + 16 * v41);
          v76 = v75[1];
          result = sub_1E3E08644((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v83);
          if (v5)
          {
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = *(v8 + 16);
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          result = memmove((v39 + 16 * v41), v75 + 2, 16 * (v78 - 1 - v41));
          *(v77 + 16) = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = v39 + 16 * v38;
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*v81)
  {
    goto LABEL_115;
  }

  sub_1E3E08518(&v85, *v81, a3);
}

uint64_t sub_1E3E08518(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3E08644((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3E08644(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[2 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v6[1] <= v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 2;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 2;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[2 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[2 * v9];
LABEL_25:
  for (v5 -= 2; v11 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v11 - 1) <= *(v6 - 1))
    {
      v17 = v6 - 2;
      v14 = v5 + 2 == v6;
      v6 -= 2;
      if (!v14)
      {
        *v5 = *v17;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 2)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 2;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

char *sub_1E3E087E8(char *a1, int64_t a2, char a3)
{
  result = sub_1E3E08808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3E08808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E08944(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3E0898C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3E063FC();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);
    *(Strong + 64) = 0;
  }
}

uint64_t sub_1E3E08A64()
{
  v0[152] = 0;
  OUTLINED_FUNCTION_4_197();
  v0[154] = v1;
  v0[153] = v2;
  v3 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v4);

  return v3;
}

uint64_t sub_1E3E08AAC(__n128 a1)
{
  v2 = v1;
  a1.n128_u64[0] = 16.0;
  v131 = j__OUTLINED_FUNCTION_7_78(a1);
  v132 = v3;
  v133 = v4;
  v134 = v5;
  v135 = 0;
  sub_1E3C2CC78();
  v6 = 0x4010000000000000;
  sub_1E3C2EBC8();
  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1696))(14);

  v8 = *(v1 + 154);
  if (v8 == 1)
  {
    v129[0] = 0x403A000000000000;
    v6 = 0x4033000000000000;
  }

  else
  {
    v129[0] = 0x4010000000000000;
  }

  v129[1] = 0x4030000000000000;
  v129[2] = v6;
  v129[3] = 0x4030000000000000;
  v130 = 0;
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 160);

  v10(v129);

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 2056);

  v12(3, 0);

  OUTLINED_FUNCTION_36();
  v14 = *(v13 + 2080);

  v14(3, 0);

  OUTLINED_FUNCTION_36();
  v16 = *(v15 + 2104);

  v16(1, 0);

  OUTLINED_FUNCTION_36();
  v18 = *(v17 + 2128);

  v18(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_36();
  v20 = *(v19 + 1720);

  v20(7);

  v21 = *(v1 + 112);

  v22 = *sub_1E3E5FD88();
  v23 = *(*v21 + 680);
  v24 = v22;
  v23(v22);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v25 + 1696))(14);

  if (v8)
  {
    v127[0] = 0x4036000000000000;
    v26 = 0x4033000000000000;
  }

  else
  {
    v26 = 0x4010000000000000;
    v127[0] = 0x4010000000000000;
  }

  v127[1] = 0x4030000000000000;
  v127[2] = v26;
  v127[3] = 0x4030000000000000;
  v128 = 0;
  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 160);

  v28(v127);

  OUTLINED_FUNCTION_36();
  v30 = *(v29 + 2056);

  v30(2, 0);

  OUTLINED_FUNCTION_36();
  v32 = *(v31 + 2080);

  v32(2, 0);

  OUTLINED_FUNCTION_36();
  v34 = *(v33 + 2104);

  v34(1, 0);

  OUTLINED_FUNCTION_36();
  v36 = *(v35 + 2128);

  v36(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_36();
  v38 = *(v37 + 1720);

  v38(7);

  v39 = v2[15];

  v40 = sub_1E3E5FDEC();
  v41 = *v40;
  v42 = *(*v39 + 680);
  v43 = *v40;
  v42(v41);

  sub_1E374E9C4();
  OUTLINED_FUNCTION_2_1();
  (*(v44 + 1808))(3);

  OUTLINED_FUNCTION_12_13();
  v45 = *sub_1E3E5F90C();
  v46 = *(*v2 + 1976);
  v47 = v45;
  v46(v45);

  OUTLINED_FUNCTION_12_13();
  sub_1E39537A8();
  v125[0] = v48;
  v125[1] = v49;
  v125[2] = v50;
  v125[3] = v51;
  v126 = 0;
  (*(*v2 + 560))(v125);

  __asm { FMOV            V0.2D, #16.0 }

  v119[0] = _Q0;
  v119[1] = _Q0;
  v120 = 0;
  OUTLINED_FUNCTION_8();
  v58 = *(v57 + 160);

  v58(v119);

  if (*(v2 + 153) == 1)
  {
    OUTLINED_FUNCTION_12_13();
    sub_1E418A500();
    OUTLINED_FUNCTION_8();
    (*(v59 + 440))();
  }

  if (*(v2 + 152) == 1)
  {
    OUTLINED_FUNCTION_12_13();
    sub_1E418A4F4();
    OUTLINED_FUNCTION_8();
    (*(v60 + 440))();
  }

  sub_1E3D4839C();
  if ((v8 & 1) == 0)
  {
    v121 = xmmword_1E42C07A0;
    v122 = 0x4010000000000000;
    v123 = 0x4030000000000000;
    v124 = 0;
  }

  OUTLINED_FUNCTION_8();
  (*(v61 + 160))();

  sub_1E3D4839C();
  v62.n128_u64[0] = 16.0;
  v117[0] = j__OUTLINED_FUNCTION_7_78(v62);
  v117[1] = v63;
  v117[2] = v64;
  v117[3] = v65;
  v118 = 0;
  OUTLINED_FUNCTION_8();
  (*(v66 + 184))(v117);

  v67 = v2[18];

  sub_1E39537A8();
  v115[0] = v68;
  v115[1] = v69;
  v115[2] = v70;
  v115[3] = v71;
  v116 = 0;
  (*(*v67 + 560))(v115);

  v72 = v2[18];

  v73 = *sub_1E418A500();
  (*(*v72 + 440))(v73, 0);

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    sub_1E374EAFC();
    OUTLINED_FUNCTION_26_0();
    (*(v74 + 1936))(2);

    OUTLINED_FUNCTION_36();
    v76 = *(v75 + 1864);

    v76(1);
  }

  sub_1E374EAFC();
  OUTLINED_FUNCTION_26_0();
  (*(v77 + 2056))(1, 0);

  OUTLINED_FUNCTION_36();
  v79 = *(v78 + 2080);

  v79(0, 0);

  OUTLINED_FUNCTION_36();
  v81 = *(v80 + 2104);

  v81(0, 0);

  v82 = *v40;
  OUTLINED_FUNCTION_8();
  v84 = *(v83 + 680);

  v85 = v82;
  v84(v82);

  LOBYTE(v109) = 22;

  sub_1E3C2FC98();
  sub_1E3C3DE00(&qword_1F5D549D8);
  sub_1E3C3DE00(&qword_1F5D549D8);
  sub_1E3C3DE00(&qword_1F5D549D8);
  sub_1E3C2FCB8(&v109, v113);
  LODWORD(v109) = v113[0];
  WORD2(v109) = WORD2(v113[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v86 + 1600))(&v109, 48, v87 & 1, &qword_1F5D549D8);

  OUTLINED_FUNCTION_36();
  v89 = *(v88 + 1792);

  v89(10);

  if (v8)
  {
    v113[0] = 0x4030000000000000;
    v90 = 0x4034000000000000;
  }

  else
  {
    v90 = 0x4010000000000000;
    v113[0] = 0x4010000000000000;
  }

  v113[1] = 0x4030000000000000;
  v113[2] = v90;
  v113[3] = 0x4030000000000000;
  v114 = 0;
  OUTLINED_FUNCTION_8();
  v92 = *(v91 + 160);

  v92(v113);

  sub_1E3B910AC();
  __asm { FMOV            V0.2D, #24.0 }

  v109 = _Q0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v94 + 160))(&v109);

  v95 = objc_opt_self();

  v96 = [v95 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v97 + 680))();

  OUTLINED_FUNCTION_36();
  v99 = *(v98 + 2072);

  v99(14);

  OUTLINED_FUNCTION_36();
  v101 = *(v100 + 2096);

  v101(7);

  sub_1E3C37CBC(v102, 39);

  sub_1E3C37CBC(v103, 23);

  sub_1E3C37CBC(v104, 15);

  sub_1E3C37CBC(v105, 17);

  sub_1E3C37CBC(v106, 31);

  sub_1E3C37CBC(v107, 1);
}

uint64_t sub_1E3E09950()
{
  OUTLINED_FUNCTION_4_197();
  *(v0 + 152) = v1;
  *(v0 + 153) = 256;
  v2 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v3);

  return v2;
}

uint64_t sub_1E3E099C0()
{
  *(v0 + 152) = 0;
  OUTLINED_FUNCTION_4_197();
  *(v0 + 154) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v2);

  return v1;
}

uint64_t sub_1E3E09A08(uint64_t a1)
{
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    if (a1)
    {
      result = sub_1E39C2CD0();
      if (v3)
      {

        sub_1E374EA2C();
        OUTLINED_FUNCTION_26_0();
        (*(v4 + 1984))(1);

        sub_1E374EA94();
        OUTLINED_FUNCTION_2_1();
        (*(v5 + 1984))(1);

        sub_1E374EAFC();
        OUTLINED_FUNCTION_2_1();
        (*(v6 + 1984))(1);

        sub_1E374E9C4();
        OUTLINED_FUNCTION_2_1();
        (*(v7 + 2000))(3);

        sub_1E3D4839C();
        __asm { FMOV            V1.2D, #16.0 }

        v14[0] = xmmword_1E42B5EA0;
        v14[1] = _Q1;
        v15 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v13 + 184))(v14);
      }
    }
  }

  return result;
}

uint64_t sub_1E3E09BDC(uint64_t a1)
{
  [objc_opt_self() isPad];
  v18 = a1;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490);
  if (!swift_dynamicCast())
  {
    return sub_1E418A524();
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  v2 = sub_1E39C1F18();
  result = sub_1E32AE9B0(v2);
  v4 = result;
  v5 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v5, v2);
      v6 = result;
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    if ((*(*v6 + 392))(result))
    {
      OUTLINED_FUNCTION_26_0();
      v9 = (*(v8 + 432))();
      v11 = v10;

      if (v11)
      {
        goto LABEL_16;
      }

      v12 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E39ABC54(0, *(v16 + 16) + 1, 1, v16);
        v12 = result;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      v16 = v12;
      if (v14 >= v13 >> 1)
      {
        result = sub_1E39ABC54((v13 > 1), v14 + 1, 1, v12);
        v16 = result;
      }

      *(v16 + 16) = v14 + 1;
      *(v16 + 8 * v14 + 32) = v9;
      v5 = v7;
    }

    else
    {

LABEL_16:
      ++v5;
    }
  }

  if (*(v16 + 16))
  {
    v15 = *(v16 + 32);
  }

  else
  {

    v15 = *sub_1E418A524();
  }

  result = sub_1E418A500();
  if (v15 != *result)
  {
    return sub_1E418A4F4();
  }

  return result;
}

double sub_1E3E09EB8(uint64_t a1)
{
  sub_1E374E9C4();
  OUTLINED_FUNCTION_26_0();
  v3 = COERCE_DOUBLE((*(v2 + 432))());
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    return v3;
  }

  sub_1E3E09BDC(a1);
  return v6;
}

uint64_t sub_1E3E09F3C()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 155, 7);
}

uint64_t sub_1E3E09F98()
{
  v1 = v0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v2 = objc_opt_self();
    *__dst = [v2 clearColor];
    *&v611 = [v2 clearColor];
    v3 = sub_1E3E5FB0C();
    *&v608 = *v3;
    v4 = v608;
    *&v605 = [v2 systemFillColor];
    *&v602 = *v3;
    v5 = sub_1E3755B54();
    v6 = v602;
    v7 = sub_1E3C3DE00(v5);
    v15 = OUTLINED_FUNCTION_0_256(v7, v8, v9, v10, v11, v12, v13, v14, v341, v352, v363, v374, v385, v395, v405, v415, v425, v436, v447, v458, v469, v480, v491, v502, v513, v524, v534, v545, v555, v566, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v599);
    sub_1E3C2FCB8(v15, v16);
    *&__dst[32] = *&__src[2];
    v17 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_11_141(v17, v18, v19, v20, v21, v22, v23, v24, v342, v353, v364, v375, v386, v396, v406, v416, v426, v437, v448, v459, v470, v481, v492, v503, v514, v525, v535, v546, v556, v567, __src[0]);
    sub_1E3C2FDFC();

    __dst[32] = 1;
    v611 = 0u;
    v612 = 0u;
    LOBYTE(v613) = 1;
    sub_1E39537A8();
    OUTLINED_FUNCTION_11_19(v25, v26, v27, v28);
    sub_1E39537A8();
    OUTLINED_FUNCTION_8_155(v29, v30, v31, v32);
    sub_1E39537A8();
    OUTLINED_FUNCTION_10_12(v33, v34, v35, v36);
    type metadata accessor for UIEdgeInsets();
    v38 = v37;
    v39 = sub_1E3C3DE00(v37);
    *(&v596 + 1) = *(&v599 + 1);
    v597 = v600;
    LOBYTE(v598) = v601;
    v47 = OUTLINED_FUNCTION_0_256(v39, v40, v41, v42, v43, v44, v45, v46, v343, v354, v365, v376, v387, v397, v407, v417, v427, v438, v449, v460, v471, v482, v493, v504, v515, v526, v536, v547, v557, v568, 0, 0, 0, 0, *&__dst[32], *(&__src[2] + 1), *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v599);
    sub_1E3C2FCB8(v47, v48);
    OUTLINED_FUNCTION_12_128(v49, v50, v51, v52, v53, v54, v55, v56, v344, v355, v366, v377, v388, v398, v408, v418, v428, v439, v450, v461, v472, v483, v494, v505, v516, v527, v537, v548, v558, v569, *__dst);
    v57 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_11_141(v57, v58, v59, v60, v61, v62, v63, v64, v345, v356, v367, v378, v389, v399, v409, v419, v429, v440, v451, v462, v473, v484, v495, v506, v517, v528, v538, v549, v559, v570, __dst[0]);
    sub_1E3C2FDFC();
    *__dst = 0;
    *&v611 = *sub_1E3E5FB88();
    *&v608 = v611;
    *&v605 = v611;
    *&v602 = v611;
    v65 = v611;
    sub_1E3C3DE00(v5);
    *&v596 = v599;
    sub_1E3C2FCB8(__dst, __src);
    v66 = __src[0];
    v67 = __src[1];
    v68 = __src[2];
    *__dst = __src[0];
    *&__dst[16] = __src[1];
    *&__dst[32] = __src[2];
    v69 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_11_141(v69, v70, v71, v72, v73, v74, v75, v76, v346, v357, v368, v379, v390, v400, v410, v420, v430, v441, v452, v463, v474, v485, v496, v507, v518, v529, v539, v550, v560, v571, __dst[0]);
    sub_1E3C2FDFC();

    OUTLINED_FUNCTION_15_0();
    if (*(v1 + 128) == 1)
    {
      v77 = [objc_opt_self() isPad];
      type metadata accessor for LayoutGrid();
      sub_1E3C2F814();
      sub_1E3A25914();
      v80 = 0x4024000000000000;
      if (v77)
      {
        v80 = 0x4028000000000000;
      }

      v615 = *&v80;
      v616 = v78;
      v617 = v80;
      v618 = v79;
      v619 = 0;
      sub_1E3C2CC78();
    }

    else
    {
      sub_1E3952C28(20.0);
      OUTLINED_FUNCTION_106_0();
      v84 = sub_1E3952C28(24.0);
      OUTLINED_FUNCTION_12_10(v84, v85, v86, v87);
      v88.n128_u64[0] = 20.0;
      v89 = j__OUTLINED_FUNCTION_7_78(v88);
      OUTLINED_FUNCTION_11_19(v89, v90, v91, v92);
      v93.n128_u64[0] = 12.0;
      v94 = j__OUTLINED_FUNCTION_7_78(v93);
      OUTLINED_FUNCTION_8_155(v94, v95, v96, v97);
      v98.n128_u64[0] = 12.0;
      v99 = j__OUTLINED_FUNCTION_7_78(v98);
      OUTLINED_FUNCTION_10_12(v99, v100, v101, v102);
      v103 = sub_1E3C3DE00(v38);
      *(&v596 + 1) = *(&v599 + 1);
      v597 = v600;
      LOBYTE(v598) = v601;
      v111 = OUTLINED_FUNCTION_0_256(v103, v104, v105, v106, v107, v108, v109, v110, v341, v352, v363, v374, v385, v395, v405, v415, v425, v436, v447, v458, v469, v480, v491, v502, v513, v524, v534, v545, v555, v566, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v599);
      sub_1E3C2FCB8(v111, v112);
      OUTLINED_FUNCTION_12_128(v113, v114, v115, v116, v117, v118, v119, v120, v347, v358, v369, v380, v391, v401, v411, v421, v431, v442, v453, v464, v475, v486, v497, v508, v519, v530, v540, v551, v561, v572, *__dst);
      v121 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_11_141(v121, v122, v123, v124, v125, v126, v127, v128, v348, v359, v370, v381, v392, v402, v412, v422, v432, v443, v454, v465, v476, v487, v498, v509, v520, v531, v541, v552, v562, v573, __dst[0]);
      sub_1E3C2FDFC();
    }
  }

  else
  {
    v81 = objc_opt_self();
    v82 = [v81 clearColor];
    sub_1E3C2DE50();
    v83 = [v81 clearColor];
    sub_1E3C2E258();
  }

  v129 = TVAppFeature.isEnabled.getter(10);
  sub_1E37BD068();
  if (v129)
  {
    v130 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v132 = *(v131 + 680);
    v133 = v130;
    v132(v130);

    OUTLINED_FUNCTION_0_36();
    v135 = *(v134 + 2008);

    v135(1);

    OUTLINED_FUNCTION_8();
    v137 = *(v136 + 232);

    v137(0, 0);

    OUTLINED_FUNCTION_0_36();
    v139 = *(v138 + 256);

    v139(0x7FF0000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v141 = *(v140 + 1984);

    v141(5);

    OUTLINED_FUNCTION_0_36();
    v143 = *(v142 + 1696);

    v143(14);

    OUTLINED_FUNCTION_0_36();
    v145 = *(v144 + 2128);

    v145(0x3FE6666666666666, 0);

    OUTLINED_FUNCTION_0_36();
    v147 = *(v146 + 2056);

    v148 = OUTLINED_FUNCTION_8_5();
    v147(v148);

    OUTLINED_FUNCTION_0_36();
    v150 = *(v149 + 2080);

    v151 = OUTLINED_FUNCTION_8_5();
    v150(v151);

    OUTLINED_FUNCTION_0_36();
    v153 = *(v152 + 2104);

    v153(0, 0);

    OUTLINED_FUNCTION_0_36();
    v155 = *(v154 + 1720);

    v155(10);

    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v156, v157, v158, v159);
    (*(v160 + 160))(__src);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v161 + 1696))(19);

    v162 = *(v1 + 104);

    v163 = *sub_1E3E5FD88();
    v164 = *(*v162 + 680);
    v165 = v163;
    v164(v163);

    OUTLINED_FUNCTION_0_36();
    v167 = *(v166 + 2056);

    v168 = OUTLINED_FUNCTION_15_8();
    v167(v168);

    OUTLINED_FUNCTION_0_36();
    v170 = *(v169 + 2080);

    v171 = OUTLINED_FUNCTION_15_8();
    v170(v171);

    OUTLINED_FUNCTION_0_36();
    v173 = *(v172 + 1984);

    v173(5);
  }

  v174 = TVAppFeature.isEnabled.getter(10);
  sub_1E374EA2C();
  if (v174)
  {
    OUTLINED_FUNCTION_8();
    (*(v175 + 2008))(1);

    v176 = *(v1 + 112);

    v177 = *sub_1E3E5FDEC();
    v178 = *(*v176 + 680);
    v179 = v177;
    v178(v177);

    OUTLINED_FUNCTION_8();
    v181 = *(v180 + 232);

    v181(0, 0);

    OUTLINED_FUNCTION_3_1();
    v183 = *(v182 + 256);

    v183(0x7FF0000000000000, 0);

    OUTLINED_FUNCTION_3_1();
    v185 = *(v184 + 1984);

    v185(5);

    OUTLINED_FUNCTION_3_1();
    v187 = *(v186 + 1720);

    v187(10);

    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v188, v189, v190, v191);
    (*(v192 + 160))(__src);

    OUTLINED_FUNCTION_3_1();
    v194 = *(v193 + 1696);

    v194(19);

    OUTLINED_FUNCTION_3_1();
    v196 = *(v195 + 2056);

    v197 = OUTLINED_FUNCTION_8_5();
    v196(v197);

    OUTLINED_FUNCTION_3_1();
    v199 = *(v198 + 2080);

    v200 = OUTLINED_FUNCTION_8_5();
    v199(v200);

    OUTLINED_FUNCTION_3_1();
    v202 = *(v201 + 2104);

    v203 = OUTLINED_FUNCTION_8_5();
    v202(v203);
  }

  else
  {
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v204, v205, v206, v207);
    (*(v208 + 160))(__src);

    OUTLINED_FUNCTION_3_1();
    v210 = *(v209 + 1696);

    v210(21);

    v211 = *(v1 + 112);

    v212 = *sub_1E3E5FDEC();
    v213 = *(*v211 + 680);
    v214 = v212;
    v213(v212);

    OUTLINED_FUNCTION_3_1();
    v216 = *(v215 + 2056);

    v217 = OUTLINED_FUNCTION_15_8();
    v216(v217);

    OUTLINED_FUNCTION_3_1();
    v219 = *(v218 + 2080);

    v220 = OUTLINED_FUNCTION_15_8();
    v219(v220);

    OUTLINED_FUNCTION_3_1();
    v222 = *(v221 + 1984);

    v222(5);
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    v223 = sub_1E37DAE10();
    (*(*v223 + 1808))(3);

    v224 = *(v1 + 120);
    OUTLINED_FUNCTION_36();
    v226 = *(v225 + 1880);

    v226(1);

    OUTLINED_FUNCTION_16_117();
    v227.n128_u64[0] = 0.5;
    v615 = j__OUTLINED_FUNCTION_7_78(v227);
    v616 = v228;
    v617 = v229;
    v618 = v230;
    v619 = 0;
    (*(*v224 + 1856))(&v615);

    v231 = *(v1 + 120);
    sub_1E3755B54();
    v232 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    v233 = [v232 initWithWhite:0.0 alpha:0.08];
    v234 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
    v235 = sub_1E3E5F2F8(v233, v234);

    (*(*v231 + 1832))(v235);

    v236 = *(v1 + 120);
    OUTLINED_FUNCTION_36();
    v238 = *(v237 + 2216);

    v238(1);

    OUTLINED_FUNCTION_16_117();
    v239 = *sub_1E418A500();
    (*(*v236 + 440))(v239, 0);

    OUTLINED_FUNCTION_36();
    v241 = *(v240 + 2000);

    v241(2);

    *__dst = 0x4050800000000000;
    __dst[8] = 0;
    *&v611 = 0x4050800000000000;
    BYTE8(v611) = 0;
    *&v608 = 0x4054000000000000;
    BYTE8(v608) = 0;
    *&v605 = 0x4050800000000000;
    BYTE8(v605) = 0;
    *&v602 = 0x4050800000000000;
    BYTE8(v602) = 0;

    v242 = MEMORY[0x1E69E7DE0];
    v243 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
    BYTE8(v596) = BYTE8(v599);
    v251 = OUTLINED_FUNCTION_0_256(v243, v244, v245, v246, v247, v248, v249, v250, v341, v352, v363, v374, v385, v395, v405, v415, v425, v436, v447, v458, v469, v480, v491, v502, v513, v524, v534, v545, v555, v566, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v599);
    sub_1E3C2FCB8(v251, v252);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v253 + 1600))(__dst, 2, v254 & 1, v242);

    OUTLINED_FUNCTION_16_117();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_106_0();
    v255 = sub_1E3952CA4();
    OUTLINED_FUNCTION_12_10(v255, v256, v257, v258);
    v259 = sub_1E3952CA4();
    OUTLINED_FUNCTION_11_19(v259, v260, v261, v262);
    v263 = sub_1E3952CA4();
    OUTLINED_FUNCTION_8_155(v263, v264, v265, v266);
    v267 = sub_1E3952CA4();
    OUTLINED_FUNCTION_10_12(v267, v268, v269, v270);
    type metadata accessor for UIEdgeInsets();
    v272 = v271;
    v273 = sub_1E3C3DE00(v271);
    *(&v596 + 1) = *(&v599 + 1);
    v597 = v600;
    LOBYTE(v598) = v601;
    v281 = OUTLINED_FUNCTION_0_256(v273, v274, v275, v276, v277, v278, v279, v280, v349, v360, v371, v382, v393, v403, v413, v423, v433, v444, v455, v466, v477, v488, v499, v510, v521, v532, v542, v553, v563, v574, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v599);
    sub_1E3C2FCB8(v281, v282);
    OUTLINED_FUNCTION_12_128(v283, v284, v285, v286, v287, v288, v289, v290, v350, v361, v372, v383, v394, v404, v414, v424, v434, v445, v456, v467, v478, v489, v500, v511, v522, v533, v543, v554, v564, v575, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v291 + 1600))(__dst, 0, v292 & 1, v272);

    OUTLINED_FUNCTION_16_117();
    v293.n128_u64[0] = 8.0;
    j__OUTLINED_FUNCTION_7_78(v293);
    OUTLINED_FUNCTION_106_0();
    sub_1E39537A8();
    OUTLINED_FUNCTION_12_10(v294, v295, v296, v297);
    sub_1E3C2FC98();
    v605 = v608;
    v606 = v609;
    LOBYTE(v607) = v610;
    sub_1E3C3DE00(v272);
    v599 = v602;
    v600 = v603;
    LOBYTE(v601) = v604;
    sub_1E3C3DE00(v272);
    *v523 = v596;
    v544 = v597;
    LOBYTE(v565) = v598;
    sub_1E3C3DE00(v272);
    LOBYTE(v435) = v501;
    sub_1E3C2FCB8(__dst, __src);
    OUTLINED_FUNCTION_12_128(v298, v299, v300, v301, v302, v303, v304, v305, v351, v362, v373, v384, v457, v468, v479, v490, v435, v446, v457, v468, v479, v490, v501, v512, v523[0], v523[1], v544, *(&v544 + 1), v565, v576, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v306 + 1600))(__dst, 17, v307 & 1, v272);
  }

  else
  {
    v308 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    sub_1E3755B54();
    v309 = sub_1E4206F24();
    [v308 setShadowColor_];
    [v308 setShadowBlurRadius_];
    [v308 setShadowOffset_];
    v310 = *(*sub_1E37DAE10() + 608);
    v311 = v308;
    v310(v308);

    OUTLINED_FUNCTION_36();
    v313 = *(v312 + 312);

    v313(0x4050800000000000, 0);

    v314 = *(v1 + 120);
    __src[0] = xmmword_1E4296C50;
    __src[1] = xmmword_1E4298700;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_8();
    v316 = *(v315 + 160);

    v316(__src);

    OUTLINED_FUNCTION_16_117();
    sub_1E39537A8();
    *__dst = v317;
    *&__dst[8] = v318;
    *&__dst[16] = v319;
    *&__dst[24] = v320;
    __dst[32] = 0;
    (*(*v314 + 560))(__dst);

    OUTLINED_FUNCTION_16_117();
    v321 = *sub_1E3E6097C();
    v322 = *(*v314 + 1832);
    v323 = v321;
    v322(v321);

    OUTLINED_FUNCTION_16_117();
    v324.n128_u64[0] = 1.0;
    v615 = j__OUTLINED_FUNCTION_7_78(v324);
    v616 = v325;
    v617 = v326;
    v618 = v327;
    v619 = 0;
    (*(*v314 + 1856))(&v615);

    OUTLINED_FUNCTION_36();
    v329 = *(v328 + 1880);

    v329(1);
  }

  v330 = sub_1E3E0B6CC();
  __asm { FMOV            V0.2D, #6.0 }

  __src[0] = _Q0;
  memset(&__src[1], 0, 17);
  (*(*v330 + 160))(__src);

  v336 = sub_1E37BD068();
  sub_1E3C37CBC(v336, 23);

  v337 = sub_1E374EA2C();
  sub_1E3C37CBC(v337, 15);

  v338 = sub_1E37DAE10();
  sub_1E3C37CBC(v338, 39);

  v339 = sub_1E3E0B6CC();
  sub_1E3C37CBC(v339, 53);
}

uint64_t sub_1E3E0B61C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
  result = swift_beginAccess();
  if (v3 != *(v1 + 128))
  {
    return sub_1E3E09F98();
  }

  return result;
}

double sub_1E3E0B68C()
{
  if ((*(v0 + 168) & 1) == 0)
  {
    return *(v0 + 136);
  }

  sub_1E3952C58();
  *(v0 + 136) = result;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0;
  return result;
}

uint64_t sub_1E3E0B6CC()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(3, 1, v3 & 1);
    *(v2 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0B778()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3E09F98();

  return v1;
}

uint64_t sub_1E3E0B7D4(uint64_t a1, void *a2, char a3)
{
  v4 = a1;
  sub_1E3C35CF4(a1, a2);
  v5 = sub_1E3890920(v4, a3);

  return sub_1E3E0B61C(v5);
}

uint64_t sub_1E3E0B824()
{
}

uint64_t sub_1E3E0B864()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E0B8AC()
{
  v0 = sub_1E3E0B864();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1E3E0B8DC(char a1, uint64_t a2, char a3)
{
  v4 = sub_1E3890920(a1, a3);
  OUTLINED_FUNCTION_15_0();
  return (v4 ^ *(v3 + 128)) & 1;
}

id sub_1E3E0B96C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v9, sel_initWithAppContext_, a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:sel_handleHighlightsUpdatedNotification_ name:*sub_1E3FC5094() object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:sel_handleRestrictionsDidChange_ name:*sub_1E3FC54A0() object:0];

  sub_1E3280A90(0, &qword_1EE23B1D0);
  sub_1E3B79200(sub_1E3E0BABC, 0);

  return v5;
}

void sub_1E3E0BABC()
{
  v0 = sub_1E3285D14();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();
}

uint64_t sub_1E3E0BB74(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v38 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v37 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E3277E60(0xD000000000000015, 0x80000001E4284AE0, a1, &aBlock);
  if (!v41)
  {
LABEL_12:
    sub_1E329505C(&aBlock);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  if (OUTLINED_FUNCTION_3_192())
  {
    v21 = v44;
    sub_1E3277E60(0x6449646573726170, 0xEE004C5255794273, a1, &aBlock);
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
      if ((OUTLINED_FUNCTION_3_192() & 1) == 0)
      {
LABEL_17:

        goto LABEL_13;
      }

      v36 = v21;
      v22 = v44;
      sub_1E3277E60(0xD000000000000011, 0x80000001E4261580, a1, &aBlock);
      if (v41)
      {
        if (OUTLINED_FUNCTION_3_192())
        {
          v23 = v44;
          sub_1E3280A90(0, &qword_1EE23B1D0);
          v24 = sub_1E4206A04();
          v25 = swift_allocObject();
          v25[2] = v36;
          v25[3] = v22;
          v25[4] = v23;
          v42 = sub_1E3E0C874;
          v43 = v25;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v40 = sub_1E378AEA4;
          v41 = &block_descriptor_120;
          v26 = _Block_copy(&aBlock);

          sub_1E4203FE4();
          *&aBlock = MEMORY[0x1E69E7CC0];
          sub_1E37E7A8C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
          sub_1E378AD28();
          sub_1E42072E4();
          MEMORY[0x1E6911380](0, v20, v14, v26);
          _Block_release(v26);

          (*(v38 + 8))(v14, v9);
          return (*(v37 + 8))(v20, v15);
        }

        goto LABEL_17;
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v28, v2);

  v29 = sub_1E41FFC94();
  v30 = sub_1E42067F4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v31 = 136315138;
    v33 = sub_1E4205C74();
    v35 = sub_1E3270FC8(v33, v34, &aBlock);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1E323F000, v29, v30, "Syndication::Unable to use parsing results: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E69143B0](v32, -1, -1);
    MEMORY[0x1E69143B0](v31, -1, -1);
  }

  return (*(v4 + 8))(v8, v2);
}

void sub_1E3E0C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E3285D14();
  v14 = *((*MEMORY[0x1E69E7D40] & **v13) + 0x100);
  v15 = *v13;
  v14(a1, a2, a3);

  v16 = [objc_opt_self() defaultCenter];
  v17 = *sub_1E3FC541C();
  sub_1E41FDEF4();
  v18 = sub_1E41FDED4();
  (*(v8 + 8))(v12, v6);
  [v16 postNotification_];
}

id sub_1E3E0C2C8()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = v0;
  [v3 removeObserver:v4 name:*sub_1E3FC5094() object:0];

  v5 = [v2 defaultCenter];
  v6 = v4;
  [v5 removeObserver:v6 name:*sub_1E3FC54A0() object:0];

  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_1E3E0C424()
{
  v1 = v0;
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v24 = 0u;
    v25 = 0u;
    return sub_1E329505C(&v24);
  }

  v3 = v2;
  v4 = sub_1E3FC2F14();
  v22 = *v4;
  v23 = v4[1];

  sub_1E4207414();
  sub_1E375D7E8(&aBlock, v3, &v24);

  v5 = sub_1E375D84C(&aBlock);
  if (!*(&v25 + 1))
  {
    return sub_1E329505C(&v24);
  }

  OUTLINED_FUNCTION_6_167(v5, v6, v7, &type metadata for SyndicationInfo, v8, v9, v10, v11, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), aBlock);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = aBlock;
    v14 = v27;
    v15 = v28;
    v16 = [v1 appContext];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v13;
      v19[3] = v14;
      v19[4] = v15;
      v19[5] = v18;
      v30 = sub_1E3E0C9BC;
      v31 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v28 = v20;
      v29 = &block_descriptor_14_0;
      v21 = _Block_copy(&aBlock);

      [v17 evaluate_];
      _Block_release(v21);
    }
  }

  return result;
}

void sub_1E3E0C6C8()
{
  v1 = [v0 appContext];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_1E3E0C8A4;
    v13 = v3;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v10 = v4;
    v11 = &block_descriptor_7_1;
    v5 = _Block_copy(&v8);

    v6 = OUTLINED_FUNCTION_4_199();
    [v6 v7];
    _Block_release(v5);
  }
}

void sub_1E3E0C8A4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSHighlightsManager();
  }

  else
  {
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v3;
  v15[3] = Strong;
  sub_1E3280A90(0, &qword_1EE23AE50);
  v4 = a1;
  v5 = sub_1E3A243F8(v15, a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E4205ED4();
    v8 = OUTLINED_FUNCTION_4_199();
    v10 = [v8 v9];

    if (v10)
    {
      v11 = sub_1E4205ED4();
      v12 = OUTLINED_FUNCTION_4_199();
      v14 = [v12 v13];
    }
  }
}

void sub_1E3E0C9BC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v11 = v8[2];
  v10 = v8[3];
  v12 = v8[4];
  v13 = MEMORY[0x1E69E7CC8];
  if (v11)
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    v21 = OUTLINED_FUNCTION_6_167(v57, v14, v15, v16, v17, v18, v19, v20, v51, v52, v53, *(&v53 + 1), v54, v55, v11);
    sub_1E329504C(v21, v22);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_5_180();
    a1 = sub_1E32A87C0(v23, v24, 0x80000001E4284BB0);
    v13 = v52;
  }

  if (v10)
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    v32 = OUTLINED_FUNCTION_6_167(v57, v25, v26, v27, v28, v29, v30, v31, v51, v52, v53, *(&v53 + 1), v54, v55, v10);
    sub_1E329504C(v32, v33);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_5_180();
    a1 = sub_1E32A87C0(v34, v35, 0x80000001E4284B90);
    v13 = v52;
  }

  v57 = MEMORY[0x1E69E6530];
  v36 = OUTLINED_FUNCTION_6_167(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52, v53, *(&v53 + 1), v54, v55, v12);
  sub_1E329504C(v36, v37);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(&v53, 0xD000000000000011, 0x80000001E4261580);
  v38 = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v40 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSHighlightsManager();
  }

  else
  {
    v56[1] = 0;
    v56[2] = 0;
  }

  v56[0] = v40;
  v57 = Strong;
  sub_1E3280A90(0, &qword_1EE23AE50);
  v41 = v9;
  v42 = sub_1E3A243F8(v56, v9);
  if (v42)
  {
    v43 = v42;
    v44 = sub_1E4205ED4();
    v45 = OUTLINED_FUNCTION_4_199();
    v47 = [v45 v46];

    if (v47)
    {
      v48 = sub_1E4205ED4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1E4297BE0;
      *(v49 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *(v49 + 32) = v38;
      v50 = sub_1E3A49FB0(v48, v49, v43);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1E3E0CC64()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    v23[32] = 0;
    v32 = xmmword_1E42D4920;
    v33 = vdupq_n_s64(0x4044000000000000uLL);
    v34 = 0;
    type metadata accessor for UIEdgeInsets();
    sub_1E3C3DE00(v3);
    OUTLINED_FUNCTION_3_193();
    OUTLINED_FUNCTION_6_7();
    v4 = OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_107(v4, v5, v6, v7, v8, v9, v10, v11, 0x4034000000000000, 0x404B000000000000, 0x4040800000000000, 0x404B000000000000, *&v23[32], *&v23[40], *&v23[48], *&v23[56], *&v23[64], *&v23[72], *&v23[80], *&v23[88], *&v23[96], *&v23[104], *&v23[112], *&v23[120], *&v23[128], *&v23[136], *&v23[144], *&v23[152], *&v23[160], *&v23[168], *&v23[176], *&v23[184], *&v23[192], *&v23[200], *&v23[208], *&v23[216], *&v23[224], *&v23[232], v24, v25, v26, v27, v28, v29, v30);
    sub_1E3C2FCB8(v31, __src);
    memcpy(v23, __src, 0xE9uLL);
    v12 = OUTLINED_FUNCTION_18();
    v20 = OUTLINED_FUNCTION_6_168(v12, v13, v14, v15, v16, v17, v18, v19, *v23);
    v21(v20);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0CDA8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    *v28 = *MEMORY[0x1E69DDCE0];
    *&v28[16] = v3;
    v28[32] = 0;
    sub_1E3952C94();
    v37 = v4;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = 0;
    type metadata accessor for UIEdgeInsets();
    sub_1E3C3DE00(v8);
    OUTLINED_FUNCTION_3_193();
    OUTLINED_FUNCTION_6_7();
    v9 = OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_107(v9, v10, v11, v12, v13, v14, v15, v16, *v28, *&v28[8], *&v28[16], *&v28[24], *&v28[32], *&v28[40], *&v28[48], *&v28[56], *&v28[64], *&v28[72], *&v28[80], *&v28[88], *&v28[96], *&v28[104], *&v28[112], *&v28[120], *&v28[128], *&v28[136], *&v28[144], *&v28[152], *&v28[160], *&v28[168], *&v28[176], *&v28[184], *&v28[192], *&v28[200], *&v28[208], *&v28[216], *&v28[224], *&v28[232], v29, v30, v31, v32, v33, v34, v35);
    sub_1E3C2FCB8(v36, __src);
    memcpy(v28, __src, 0xE9uLL);
    v17 = OUTLINED_FUNCTION_18();
    v25 = OUTLINED_FUNCTION_6_168(v17, v18, v19, v20, v21, v22, v23, v24, *v28);
    v26(v25);
    *(v2 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0CF20()
{
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + 104) = _Q0;
  *(v0 + 120) = xmmword_1E42D4930;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3E0CF3C()
{
}

uint64_t sub_1E3E0CF6C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E0CFA4()
{
  v0 = sub_1E3E0CF6C();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3E0CFF8@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3E0D030(v2, a1);
}

uint64_t sub_1E3E0D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrdinalNumber.OrdinalNumberContent();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 24);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  v9 = sub_1E3C27528();

  if (!v9)
  {
LABEL_4:
    type metadata accessor for OrdinalNumberLayout();
    sub_1E3EA5EE8();
  }

  type metadata accessor for OrdinalNumberLayout();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_4;
  }

  v6[1] = v10;
  sub_1E3E0D1B0(v6, a2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t type metadata accessor for OrdinalNumber.OrdinalNumberContent()
{
  result = qword_1EE2A6930;
  if (!qword_1EE2A6930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E0D1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrdinalNumber.OrdinalNumberContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E0D214@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E4203D44();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39498);
  return sub_1E3E0D260(v1, a1 + *(v4 + 44));
}

uint64_t sub_1E3E0D260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27[-v17];
  (*(**(a1 + 8) + 2440))(v16);
  sub_1E3A9D424();

  v19 = *(v12 + 44);
  v20 = *MEMORY[0x1E6981E10];
  v21 = sub_1E4203E94();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  v22 = v28;
  *v18 = *&v27[8];
  *(v18 + 1) = v22;
  *(v18 + 4) = v29;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E3E0D78C(v18, v14);
  v23 = *(v5 + 16);
  v23(v7, v10, v4);
  sub_1E3E0D78C(v14, a2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF394B0);
  v23((a2 + *(v24 + 48)), v7, v4);
  v25 = *(v5 + 8);
  v25(v10, v4);
  sub_1E3E0D7FC(v18);
  v25(v7, v4);
  return sub_1E3E0D7FC(v14);
}

void sub_1E3E0D5B0()
{
  type metadata accessor for TextViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrdinalNumberLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3E0D64C()
{
  result = qword_1EE284200;
  if (!qword_1EE284200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF394A0);
    sub_1E3E0D6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284200);
  }

  return result;
}

unint64_t sub_1E3E0D6D0()
{
  result = qword_1EE284238[0];
  if (!qword_1EE284238[0])
  {
    type metadata accessor for OrdinalNumber.OrdinalNumberContent();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE284238);
  }

  return result;
}

unint64_t sub_1E3E0D728()
{
  result = qword_1EE288430;
  if (!qword_1EE288430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF394A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288430);
  }

  return result;
}

uint64_t sub_1E3E0D78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E0D7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t VUILocationServiceProxyObjCAuthorizationStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3E0D878@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUILocationServiceProxyObjCAuthorizationStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static VUILocationServiceProxyObjC.authorizationStatus.getter()
{
  v0 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E41FEDE4();
  sub_1E41FEDD4();
  sub_1E41FED94();

  v7 = sub_1E3E0D99C();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1E3E0D99C()
{
  v0 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_9_140();
  v8(v7);
  v9 = (*(v2 + 88))(v6, v0);
  if (v9 == *MEMORY[0x1E69D5900])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E69D5908])
  {
    return 0;
  }

  (*(v2 + 8))(v6, v0);
  return 2;
}

void static VUILocationServiceProxyObjC.requestUserAuthorization()()
{
  v1 = sub_1E41FEF74();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41FEDE4();
  sub_1E41FEDD4();
  sub_1E41FEDC4();
  if (v0)
  {

    v8 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    if (swift_dynamicCast())
    {
      if ((*(v3 + 88))(v7, v1) == *MEMORY[0x1E69D5830])
      {

        sub_1E39E0BC8();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v3 + 8))(v7, v1);
      }
    }
  }

  else
  {
  }
}

uint64_t static VUILocationServiceProxyObjC.retrieveLocation()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FEF84();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3E0DD6C, 0, 0);
}

uint64_t sub_1E3E0DD6C()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEDE4();
  *(v0 + 48) = sub_1E41FEDD4();
  v3 = (*MEMORY[0x1E69D57E8] + MEMORY[0x1E69D57E8]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1E3E0DE20;

  return v3();
}

uint64_t sub_1E3E0DE20()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3E0DF6C, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_1E3E0DF6C()
{
  v1 = *(v0 + 64);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 32) + 88))(*(v0 + 40), *(v0 + 24));
    if (v3 == *MEMORY[0x1E69D5840])
    {

      sub_1E39E0D84();
      swift_allocError();
      *v4 = 0;
LABEL_6:
      swift_willThrow();
      goto LABEL_8;
    }

    if (v3 == *MEMORY[0x1E69D5838])
    {

      sub_1E39E0D84();
      swift_allocError();
      *v5 = 1;
      goto LABEL_6;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  }

LABEL_8:

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3E0E168(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3E0E1FC;

  return static VUILocationServiceProxyObjC.retrieveLocation()();
}

uint64_t sub_1E3E0E1FC()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v2)
  {
    v9 = sub_1E41FE264();

    v10 = v9;
  }

  else if (v4)
  {
    v11 = sub_1E4205C44();

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v6 + 16);
  v13 = OUTLINED_FUNCTION_9_140();
  v14(v13);

  _Block_release(v12);
  OUTLINED_FUNCTION_54();

  return v15();
}

id VUILocationServiceProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUILocationServiceProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUILocationServiceProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E0E440()
{
  result = qword_1ECF394B8;
  if (!qword_1ECF394B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF394B8);
  }

  return result;
}

uint64_t sub_1E3E0E4C8()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E3286A7C;

  return sub_1E3E0E168(v2);
}

uint64_t sub_1E3E0E684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E0E6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void type metadata accessor for CATransform3D()
{
  if (!qword_1ECF394C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF394C0);
    }
  }
}

id sub_1E3E0E740(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1E41FFBF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v10 = VUISignpostLogObject();
  sub_1E41FFBA4();

  if (a3)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  else
  {
    v11 = a2;
  }

  v12 = v11;
  sub_1E4206B94();
  v13 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v6 + 8))(v8, v5);
  return v12;
}

unint64_t sub_1E3E0E8E8()
{
  result = qword_1EE24D460;
  if (!qword_1EE24D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24D460);
  }

  return result;
}

uint64_t sub_1E3E0E97C()
{
  OUTLINED_FUNCTION_1_228();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1E3E0E9C0()
{
  OUTLINED_FUNCTION_1_228();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1E3E0EA04()
{
  sub_1E3E0EA3C();
  sub_1E42025D4();
  __break(1u);
}

unint64_t sub_1E3E0EA3C()
{
  result = qword_1ECF394C8;
  if (!qword_1ECF394C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF394C8);
  }

  return result;
}

uint64_t sub_1E3E0EAD4()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 352))();
}

uint64_t sub_1E3E0EB74()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

BOOL sub_1E3E0EBD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  OUTLINED_FUNCTION_12_5();
  v2 += 86;
  v3 = *v2;
  if ((*v2)())
  {
    OUTLINED_FUNCTION_85();
    v5 = (*(v4 + 376))();
    sub_1E32AE9B0(v5);
    OUTLINED_FUNCTION_11_5();

    if (v0)
    {
      return 1;
    }
  }

  if (v3())
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_5();
  v8 = *((*(v7 + 632))() + 16);

  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_5();
  v10 = (*(v9 + 736))();
  sub_1E32AE9B0(v10);
  OUTLINED_FUNCTION_50();

  return v1 != 0;
}

uint64_t sub_1E3E0ED44()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0ED78(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E0EE04()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0EE38(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E0EEC4()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0EEF8(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E0EF84()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0EFB8(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E3E0F0A8()
{
  v1 = objc_opt_self();
  if ([v1 allowsAccountModification] && (v2 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v3 = objc_msgSend(v2, sel_accountConfig), v2, LODWORD(v2) = objc_msgSend(v3, sel_showAccountSettingOnSidebar), v3, v2) && (!objc_msgSend(v1, sel_isLibraryOnlyCountry) || (objc_msgSend(v1, sel_isLibraryOnlyCountryResolved) & 1) == 0))
  {
    OUTLINED_FUNCTION_21();
    v4 = (*(v7 + 400))() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 sidebar];
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView];
  }

  v8 = v6;
  [v5 setBottomBarView_];
}

void sub_1E3E0F224()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  OUTLINED_FUNCTION_120_1();
  v14 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v16 = (*(v15 + 440))();
  v17 = sub_1E374E8E4(v16, 1);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v57 = v19;
  v58 = v6;
  v56 = v18;
  if (v17)
  {
    v54 = v8;
    v18(v13);
    v20 = v3;
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_42_9();
      v53 = v3;
      v24 = v23;
      v25 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_144_6(v25);
      *v24 = 136315394;
      *(v24 + 4) = OUTLINED_FUNCTION_183_4((v20 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
      *(v24 + 12) = 1024;
      *(v24 + 14) = (*((*v14 & *v20) + 0x1D8))() & 1;

      _os_log_impl(&dword_1E323F000, v21, v22, "%s updateNavigationVisibility tabbar: tabBarModeNavigationHidden:%{BOOL}d", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v1);
      v1 = v6;
      v6 = v58;
      OUTLINED_FUNCTION_6_0();
      v3 = v53;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v26 = OUTLINED_FUNCTION_133_7();
    v27(v26);
    OUTLINED_FUNCTION_16_89();
    [v20 setTabBarHidden_];
  }

  else
  {
    HIDWORD(v52) = v5;
    v28 = OUTLINED_FUNCTION_297();
    v29(v28);
    v53 = v3;
    v30 = v3;
    v31 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_42_9();
      v54 = v8;
      v34 = v33;
      v35 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_144_6(v35);
      *v34 = 136315394;
      *(v34 + 4) = OUTLINED_FUNCTION_183_4((v30 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
      *(v34 + 12) = 1024;
      *(v34 + 14) = (*((*v14 & *v30) + 0x1C0))() & 1;

      _os_log_impl(&dword_1E323F000, v31, v2, "%s updateNavigationVisibility sidbar: sideBarModeNavHidden:%{BOOL}d", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v1);
      v1 = v6;
      v6 = v58;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v36 = OUTLINED_FUNCTION_163_6();
    v37(v36);
    OUTLINED_FUNCTION_4_154();
    v40 = (*(v39 + 448))();
    v41 = BYTE4(v52);
    if (v40)
    {
      [v30 setTabBarHidden:1 animated:BYTE4(v52) & 1];
    }

    else
    {
      OUTLINED_FUNCTION_4_154();
      [v30 setTabBarHidden:((*(v42 + 400))() & 1) == 0 animated:v41 & 1];
    }

    v3 = v53;
  }

  sub_1E324FBDC();
  v43 = OUTLINED_FUNCTION_40_3();
  v56(v43);
  v44 = v3;
  v45 = sub_1E41FFC94();
  v46 = sub_1E4206814();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_42_9();
    v48 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_144_6(v48);
    *v47 = 136315394;
    *(v47 + 4) = OUTLINED_FUNCTION_183_4((v44 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
    *(v47 + 12) = 1024;
    *(v47 + 14) = (*((*MEMORY[0x1E69E7D40] & *v44) + 0x1C0))() & 1;

    _os_log_impl(&dword_1E323F000, v45, v46, "%s updateNavigationVisibility sideBarModeNavHidden:%{BOOL}d", v47, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_55();

    v55(v6, v58);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_13_8();
    (v55)(v49);
  }

  OUTLINED_FUNCTION_4_154();
  if ((*(v50 + 448))())
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  [v44 setMode_];
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E0F8B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3E0F8E4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_234();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v4 != *(v1 + v5))
  {
    sub_1E3E0F0A8();
    sub_1E3E0F224();
  }
}

void (*sub_1E3E0F95C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0F9D0;
}

void sub_1E3E0F9E8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = [v0 hasRemoteBarItems];
  v6 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation;
  v7 = v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation] & (v5 ^ 1);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v0);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v16 = v7;
    v12 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_100();
    *v12 = 136315906;
    *(v12 + 4) = OUTLINED_FUNCTION_183_4(&v9[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix]);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v0[v6];

    *(v12 + 18) = 1024;
    *(v12 + 20) = v5 & 1;
    *(v12 + 24) = 1024;
    *(v12 + 26) = v16 & 1;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s updateSidebarNavigationHidden: libraryHideSidebarNavigation: %{BOOL}d, hasRemoteBarItems:%{BOOL}d, sidebarHideNavigation:%{BOOL}d", v12, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v0, v1);
    v13 = v16;
  }

  else
  {

    v14 = OUTLINED_FUNCTION_97_1();
    v15(v14);
    v13 = v7;
  }

  sub_1E3E0FC4C(v13 & 1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E0FBF0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation);
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = a1;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation))
  {
    sub_1E3E0F9E8();
  }
}

uint64_t sub_1E3E0FC18()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0FC58()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void (*sub_1E3E0FC98())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0FD0C;
}

void sub_1E3E0FD24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t sub_1E3E0FD68()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3E0FDA8(char a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_234();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  v7 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v6 != *(v2 + v7))
  {
    sub_1E3E0F224();
  }
}

void (*sub_1E3E0FE1C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0FE90;
}

void *sub_1E3E0FEA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3E0FEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3E0FF78()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E0FFAC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E10038()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3E1006C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E3E1015C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v70 = v3;
  v71 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v0 + v5) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v0 + v6) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v7 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 rootControllerConfig];

  *(v2 + v7) = v9;
  v10 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView;
  type metadata accessor for PadRootSideBarProfileView();
  *(v2 + v10) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarItemConfigs) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 0;
  v11 = (v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix);
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x80000001E4284D40;
  type metadata accessor for PadRootSplitViewController();
  OUTLINED_FUNCTION_25();
  v14 = objc_msgSendSuper2(v12, v13);
  v15 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  v16 = *&v14[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v17 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  v18 = *&v14[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager];
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x300);
  v21 = v14;
  v22 = v16;
  v23 = v18;
  v20(v18);

  v24 = *&v14[v15];
  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_26_3();
  v27 = *((*v19 & v26) + 0x1A8);
  v28 = v21;
  v29 = v24;
  OUTLINED_FUNCTION_35_0();

  v27(sub_1E3E242DC, v25);

  v30 = *&v14[v17];
  OUTLINED_FUNCTION_12_5();
  v32 = *(v31 + 248);
  v33 = v28;
  v34 = v30;
  v32(v21, &off_1F5D87320);

  [v33 setDelegate_];
  v35 = v33;
  v36 = [v35 sidebar];
  [v36 setDelegate_];

  v37 = sub_1E324FBDC();
  (*(v71 + 16))(v1, v37, v70);
  v38 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_84_1())
  {
    v39 = OUTLINED_FUNCTION_6_21();
    v72 = OUTLINED_FUNCTION_100();
    *v39 = 136315138;

    v40 = OUTLINED_FUNCTION_39_9();
    v43 = sub_1E3270FC8(v40, v41, v42);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v71 + 8))(v1, v70);
  v49 = [v35 sidebar];
  [v49 setPreferredLayout_];

  if (sub_1E39DFFC8())
  {
    [objc_opt_self() vuiSetShouldCollapseTabBarOnScroll:1 on:v35];
  }

  [v35 setMode_];
  [v35 setTabBarHidden_];
  v50 = [v35 view];

  if (v50)
  {
    [v50 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E4297BE0;
    v52 = sub_1E41FFF64();
    v53 = MEMORY[0x1E69DC130];
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
    sub_1E4206944();
    swift_unknownObjectRelease();

    v55 = objc_opt_self();
    v56 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v56, v57, v58, sel_willEnterForeground_, *MEMORY[0x1E69DF7E8]);

    v59 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v59, v60, v61, sel_didEnterBackground_, *MEMORY[0x1E69DF7E0]);

    v62 = [v55 defaultCenter];
    v63 = v54;
    [v62 addObserver:v63 selector:sel_accountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

    v64 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v64, v65, v66, sel_isLibraryOnlyCountryChanged_, @"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification");

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E4297BE0;
    v68 = sub_1E41FFDE4();
    v69 = MEMORY[0x1E69DC0A0];
    *(v67 + 32) = v68;
    *(v67 + 40) = v69;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1E4206944();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E10978()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v22 = v4;
  v21 = v2;
  sub_1E397C3E4();
  if ((sub_1E4205E84() & 1) == 0)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_1E3E1C958();
      }

      else
      {
        sub_1E3E1B42C();
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v9(v8);
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v12 = 136315394;
      v19[1] = v4;
      sub_1E3E25614();
      v13 = sub_1E4207944();
      sub_1E3270FC8(v13, v14, &v20);
      OUTLINED_FUNCTION_12_1();

      *(v12 + 4) = v0;
      *(v12 + 12) = 2080;
      v19[0] = v2;
      v15 = sub_1E4207944();
      sub_1E3270FC8(v15, v16, &v20);
      OUTLINED_FUNCTION_50();

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1E323F000, v10, v11, "RootSplitViewController:: updating from %s mode to %s mode", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v17 = OUTLINED_FUNCTION_74();
    v18(v17);
    sub_1E3E0F224();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E10BC8(uint64_t a1)
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_16_89();
  v3 = (*(v2 + 440))();
  if (sub_1E374E8E4(v3, 0) && (OUTLINED_FUNCTION_85(), ((*(v4 + 272))() & 1) == 0))
  {
    OUTLINED_FUNCTION_85();
    v8 = *(v7 + 288);

    return v8(a1);
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    return (*(v5 + 448))(a1);
  }
}

void sub_1E3E10D08(void *a1, void *a2, char a3)
{
  v8 = a1[3];
  OUTLINED_FUNCTION_0_257(a1, v8);
  v9(v8);
  OUTLINED_FUNCTION_206_1();
  OUTLINED_FUNCTION_39();
  (*((*MEMORY[0x1E69E7D40] & v10) + 0x250))();
  v11 = OUTLINED_FUNCTION_16_5();
  v65 = sub_1E378A81C(v11, v4, v3);

  if (!v65)
  {
    goto LABEL_20;
  }

  if ((v65[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader] & 1) == 0)
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = OUTLINED_FUNCTION_39_0();
    v15 = v14(v13);
    v23 = v15;
    if (v15 && (v15 = , IsBoldTextEnabled))
    {
      OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v59, v61, v65);
      if ((*(v24 + 296))())
      {
        goto LABEL_22;
      }

      LODWORD(v62) = IsBoldTextEnabled;
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v59, v61, v65);
      if ((*(v26 + 272))())
      {
        goto LABEL_22;
      }

      LODWORD(v62) = IsBoldTextEnabled;
      v25 = 0;
    }

    OUTLINED_FUNCTION_4_154();
    v28 = (*(v27 + 200))();
    if (v28)
    {
      v36 = v28;
      OUTLINED_FUNCTION_39_51(v28, v29, v30, v31, v32, v33, v34, v35, v60, v62, v66);
      v38 = (*(v37 + 320))();
      if (v25)
      {
        if ((v38 & 1) == 0)
        {

LABEL_15:
          OUTLINED_FUNCTION_4_154();
          v40 = (*(v39 + 304))(1);
LABEL_19:
          OUTLINED_FUNCTION_39_51(v40, v41, v42, v43, v44, v45, v46, v47, v60, v62, v66);
          (*(v49 + 184))(a2);
          v50 = *sub_1E3CE4D98();
          OUTLINED_FUNCTION_4_0();
          v51 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1E38C6028(a1, v68);
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          *(v52 + 24) = v67;
          *(v52 + 32) = v23 != 0;
          sub_1E3251BE8(v68, v52 + 40);
          *(v52 + 80) = a3 & 1;
          OUTLINED_FUNCTION_21();
          v54 = *(v53 + 224);
          v55 = v50;
          OUTLINED_FUNCTION_35_0();

          v56 = v67;
          v54(a1, v63, 0, 1, sub_1E3E24938, v52);

LABEL_20:
          OUTLINED_FUNCTION_229_0();
          return;
        }

        goto LABEL_21;
      }

      if ((v38 & 1) == 0)
      {
LABEL_21:
        v64 = v36;
        sub_1E3E23C48();

        goto LABEL_22;
      }
    }

    else if (v25)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_154();
    v40 = (*(v48 + 280))(1);
    goto LABEL_19;
  }

LABEL_22:
  OUTLINED_FUNCTION_229_0();
}

void sub_1E3E11148()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v0 + v2) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v0 + v3) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v4 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 rootControllerConfig];

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView;
  type metadata accessor for PadRootSideBarProfileView();
  *(v1 + v7) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarItemConfigs) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 0;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix);
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x80000001E4284D40;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3E11370(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v4) + 0x148))())
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    sub_1E3E10BC8(v7);
    OUTLINED_FUNCTION_26_3();
    (*((*v3 & v8) + 0x150))(0);
  }

  OUTLINED_FUNCTION_21();
  return (*(v9 + 312))(1);
}

uint64_t sub_1E3E11508(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  return (*((*MEMORY[0x1E69E7D40] & v3) + 0x138))(0);
}

void sub_1E3E115E4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  if (sub_1E374E8E4(v2, 2))
  {
    v3 = [v0 sidebar];
    v4 = [v3 isHidden];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics;
    if (v5 != v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics])
    {
      OUTLINED_FUNCTION_8_9();
      if (v4)
      {
        (*(v7 + 1176))();
        type metadata accessor for Metrics();
        OUTLINED_FUNCTION_38();

        sub_1E3BA769C(v8);
      }

      else
      {
        (*(v7 + 1160))();
      }
    }

    v0[v6] = v5;
  }
}

void sub_1E3E117BC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v3) + 0x160))())
  {
    v4 = [v0 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    sub_1E3E10BC8(v6);
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v7) + 0x168))(0);
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_8_9();
  v8 += 116;
  v9 = *v8;
  v10 = (*v8)();
  if (v10)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v11 = OUTLINED_FUNCTION_33_14();
    v12(v11);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v15);
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v21 = OUTLINED_FUNCTION_13_8();
    v10 = v22(v21);
  }

  if ((v9)(v10))
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 1000))();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E11A2C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1176))();
}

uint64_t sub_1E3E11AA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_118();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v7 = v4;
  a4();

  v8 = OUTLINED_FUNCTION_53();
  return v9(v8);
}

id sub_1E3E11B6C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PadRootSplitViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3E11D90()
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_8_9();
  (*(v2 + 440))();
  sub_1E397C3E4();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_8_9();
    result = (*(v4 + 1096))();
    if (v5)
    {
      OUTLINED_FUNCTION_159_3();
      v6 = sub_1E396B0E4();
      if (v1 == *v6 && v0 == v6[1])
      {
      }

      else
      {
        v8 = OUTLINED_FUNCTION_176_5();

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_8_9();
      v10 = *(v9 + 544);

      v11 = OUTLINED_FUNCTION_13_8();
      return v10(v11);
    }
  }

  return result;
}

void sub_1E3E11EEC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v138 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  OUTLINED_FUNCTION_7_20();
  v161[0] = (*(v14 + 440))();
  LOBYTE(v158) = 1;
  sub_1E397C3E4();
  v15 = &type metadata for RootSplitViewManager.Mode;
  if (sub_1E4205E84())
  {
    v16 = sub_1E324FBDC();
    (*(v8 + 16))(v1, v16, v6);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v18))
    {
      v19 = OUTLINED_FUNCTION_125_0();
      *v19 = 0;
      _os_log_impl(&dword_1E323F000, v17, v1, "RootSplitViewController:: Pad:: receive library updates in tabbarMode", v19, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v20 = OUTLINED_FUNCTION_35_5();
    v21(v20);
    goto LABEL_92;
  }

  v149 = v2;
  v139 = v12;
  v151 = v13;
  v140 = v8;
  v142 = v6;
  v141 = v3;
  v22 = sub_1E32AE9B0(v5);
  if (v22)
  {
    v23 = v22;
    if (v22 < 1)
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_196_1();
    v25 = *((*MEMORY[0x1E69E7D40] & v24) + 0x2A0);
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1E6911E60](v6, v5);
      }

      else
      {
        v26 = *(v5 + 8 * v6 + 32);
      }

      v27 = v26;
      ++v6;
      v29 = *&v26[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
      v28 = *&v26[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
      v154[0] = 0;
      *&v158 = v29;
      *(&v158 + 1) = v28;

      OUTLINED_FUNCTION_117_11();
      v30 = v25();
      v15 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      OUTLINED_FUNCTION_157_7();
      sub_1E3CA4D10();
      v30(v161, 0);
    }

    while (v23 != v6);
  }

  OUTLINED_FUNCTION_68_5();
  v32 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v147 = (*(v33 + 1088))();
  v148 = v34;
  v35 = MEMORY[0x1E69E7CC0];
  v163 = MEMORY[0x1E69E7CC0];
  v36 = (*((*v32 & v15->Kind) + 0x278))();
  v37 = 0;
  v38 = *(v36 + 16);
  for (i = (v36 + 32); ; i = (i + 40))
  {
    if (v38 == v37)
    {

      v162 = 0;
      memset(v161, 0, sizeof(v161));
      goto LABEL_19;
    }

    if (v37 >= *(v36 + 16))
    {
      goto LABEL_96;
    }

    sub_1E38C6028(i, &v158);
    sub_1E38C6028(&v158, v161);
    v40 = OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40);
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v37;
    __swift_destroy_boxed_opaque_existential_1(&v158);
  }

  sub_1E3251BE8(&v158, v161);
LABEL_19:
  v41 = v149;
  sub_1E3E2597C(v161, &v158, &qword_1ECF2EC80);
  AssociatedTypeWitness = *(&v159 + 1);
  if (*(&v159 + 1))
  {
    v43 = OUTLINED_FUNCTION_9_141(&v158);
    i = v44(v43);
    OUTLINED_FUNCTION_59_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v45 = AssociatedTypeWitness[2];
    if (v45)
    {
      *&v152 = v35;
      sub_1E377FD30(0, v45, 0);
      v46 = v152;
      v47 = (AssociatedTypeWitness + 4);
      do
      {
        sub_1E38C6028(v47, v154);
        v48 = v155;
        i = v156;
        OUTLINED_FUNCTION_0_257(v154, v155);
        v50 = v49(v48);
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_1(v154);
        *&v152 = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          v56 = OUTLINED_FUNCTION_35(v53);
          i = &v152;
          sub_1E377FD30(v56, v54 + 1, 1);
          v46 = v152;
        }

        *(v46 + 16) = v54 + 1;
        v55 = v46 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v52;
        v47 += 40;
        --v45;
      }

      while (v45);

      v41 = v149;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(&v158);
  }

  else
  {
    sub_1E325F7FC(&v158, &qword_1ECF2EC80);
    v46 = MEMORY[0x1E69E7CC0];
  }

  v57 = sub_1E32772D8(v46);
  v157 = v57;
  if (!sub_1E32AE9B0(v41))
  {
    OUTLINED_FUNCTION_114_2();

    v150 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v150 = type metadata accessor for LibrarySidebarItem();
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_27_29();
  v58 += 82;
  v145 = *v58;
  v144 = v58;
  OUTLINED_FUNCTION_189_3(v41 & 0xC000000000000001);
  v143 = v41 + 32;
  do
  {
    OUTLINED_FUNCTION_153_6();
    sub_1E34AF4E4(v46, AssociatedTypeWitness == 0, v41);
    if (AssociatedTypeWitness)
    {
      v59 = OUTLINED_FUNCTION_53();
      v60 = MEMORY[0x1E6911E60](v59);
    }

    else
    {
      v60 = *(v143 + 8 * v46);
    }

    v61 = v60;
    if (__OFADD__(v46++, 1))
    {
      goto LABEL_95;
    }

    v63 = &v60[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v65 = *&v60[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v64 = *&v60[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

    OUTLINED_FUNCTION_117_11();
    OUTLINED_FUNCTION_132_2();
    v66();
    OUTLINED_FUNCTION_145();
    *&v158 = v65;
    *(&v158 + 1) = v64;
    sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_89_13();
    sub_1E3CA4D00();

    if (!v154[0])
    {
      v78 = 0;
      v79 = 1;
      goto LABEL_56;
    }

    sub_1E3E2597C(v161, v154, &qword_1ECF2EC80);
    if (!v155)
    {
      OUTLINED_FUNCTION_82();
      sub_1E325F7FC(v80, v81);
      v158 = 0u;
      v159 = 0u;
      v160 = 0;
LABEL_54:
      sub_1E325F7FC(&v158, &qword_1ECF2EC80);
      goto LABEL_55;
    }

    v67 = OUTLINED_FUNCTION_9_141(v154);
    v68(v67);
    OUTLINED_FUNCTION_26_90();
    v69 = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_11_5();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v70 = 0;
    v71 = *(v69 + 16);
    for (j = v69 + 32; ; j += 40)
    {
      if (v71 == v70)
      {

        v160 = 0;
        v158 = 0u;
        v159 = 0u;
        goto LABEL_51;
      }

      if (v70 >= *(v69 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

      sub_1E38C6028(j, &v152);
      v73 = v153;
      OUTLINED_FUNCTION_0_257(&v152, v153);
      if (v74(v73) == *v63 && v75 == *(v63 + 1))
      {
        break;
      }

      v77 = sub_1E42079A4();

      if (v77)
      {
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_1(&v152);
      ++v70;
    }

LABEL_50:

    sub_1E3251BE8(&v152, &v158);
LABEL_51:
    v82 = MEMORY[0x1E69E7D40];
    __swift_destroy_boxed_opaque_existential_1(v154);
    if (!*(&v159 + 1))
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_157_7();
    if (swift_dynamicCast())
    {
      v83 = *((*v82 & *v154[0]) + 0xA8);
      v84 = v154[0];
      LODWORD(v83) = v83();

      OUTLINED_FUNCTION_27_29();
      v86 = (*(v85 + 168))();

      v78 = v83 ^ v86;
      v79 = v83 ^ v86;
      goto LABEL_56;
    }

LABEL_55:
    v78 = 0;
    v79 = 0;
LABEL_56:
    if (!v148)
    {
      if ((v78 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v147 != *v63 || v148 != *(v63 + 1))
    {
      if (((v79 & sub_1E42079A4() | v78) & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_64:
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();

      goto LABEL_65;
    }

    if ((v79 | v78))
    {
      goto LABEL_64;
    }

LABEL_65:

    v90 = OUTLINED_FUNCTION_27_0();
    sub_1E397B708(v90, v91);

    AssociatedTypeWitness = v61;
    OUTLINED_FUNCTION_90_2();
    sub_1E37EE4E8(v92);
    i = &v163;
    MEMORY[0x1E6910BF0]();
    v93 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v93 >> 1)
    {
      OUTLINED_FUNCTION_35(v93);
      sub_1E42062F4();
    }

    sub_1E4206324();

    OUTLINED_FUNCTION_89_0();
    v41 = v149;
  }

  while (v46 != v94);
  v150 = v163;
  OUTLINED_FUNCTION_114_2();

  v57 = v157;
LABEL_72:
  OUTLINED_FUNCTION_4_4();
  v97 = v96 & v95;
  v99 = (v98 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v100 = 0;
  if (v97)
  {
    goto LABEL_77;
  }

  while (2)
  {
    v101 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      goto LABEL_94;
    }

    if (v101 < v99)
    {
      v97 = *(v57 + 56 + 8 * v101);
      ++v100;
      if (!v97)
      {
        continue;
      }

      v100 = v101;
LABEL_77:
      OUTLINED_FUNCTION_172_0();
      v104 = *v102;
      v103 = *(v102 + 8);
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v106 = *(v105 + 656);
      v107 = swift_bridgeObjectRetain_n();
      v106(v107);
      OUTLINED_FUNCTION_134_2();
      *&v158 = v104;
      *(&v158 + 1) = v103;
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_89_13();
      sub_1E3CA4D00();

      v108 = v154[0];
      if (v154[0])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_117_11();
          [v109 v110];

          goto LABEL_82;
        }
      }

      OUTLINED_FUNCTION_117_11();
LABEL_82:
      v97 &= v97 - 1;
      *&v152 = 0;
      v154[0] = v104;
      v154[1] = v103;
      v111 = *((*MEMORY[0x1E69E7D40] & *i) + 0x2A0);

      v111(&v158);
      OUTLINED_FUNCTION_159_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      sub_1E3CA4D10();
      v112 = OUTLINED_FUNCTION_192_2();
      v111(v112);

      if (!v97)
      {
        continue;
      }

      goto LABEL_77;
    }

    break;
  }

  v113 = sub_1E324FBDC();
  v114 = v140;
  v115 = v139;
  v116 = v142;
  (*(v140 + 16))(v139, v113, v142);
  v117 = sub_1E41FFC94();
  v118 = sub_1E4206814();
  if (OUTLINED_FUNCTION_262(v118))
  {
    v119 = OUTLINED_FUNCTION_6_21();
    v120 = OUTLINED_FUNCTION_100();
    *&v158 = v120;
    *v119 = 136315138;
    v121 = type metadata accessor for LibrarySidebarItem();
    OUTLINED_FUNCTION_190_2();

    MEMORY[0x1E6910C30](v122, v121);

    v123 = OUTLINED_FUNCTION_39_0();
    v126 = sub_1E3270FC8(v123, v124, v125);

    *(v119 + 4) = v126;
    _os_log_impl(&dword_1E323F000, v117, v118, "RootSplitViewController:: Pad:: new library sidebar items %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    (*(v114 + 8))(v115, v142);
    v127 = MEMORY[0x1E69E7D40];
  }

  else
  {

    (*(v114 + 8))(v115, v116);
    v127 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_190_2();
  }

  OUTLINED_FUNCTION_25_5();
  v129 = *(v128 + 384);

  v129(v130);
  sub_1E3E13168();

  OUTLINED_FUNCTION_39();
  v132 = (*((*v127 & v131) + 0x118))();
  if (v132 != 3)
  {
    v133 = v132;
    OUTLINED_FUNCTION_25_5();
    if ((*(v134 + 272))())
    {
      OUTLINED_FUNCTION_25_5();
      if ((*(v135 + 304))())
      {
        OUTLINED_FUNCTION_16_89();
        (*(v136 + 448))(v133);
        OUTLINED_FUNCTION_39();
        (*((*v127 & v137) + 0x120))(3);
      }
    }
  }

  sub_1E325F7FC(v161, &qword_1ECF2EC80);

LABEL_92:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E12F34(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_1E32AE9B0(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1E3E13020(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1E3E25084(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1E3E2597C(v4, v11, &unk_1ECF3D320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F0E0);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3E25084((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1E3E13168()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v200 = v3;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0);
  OUTLINED_FUNCTION_0_10();
  v194 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v202 = &v187 - v6;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v187 - v16;
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v19 = *(v18 + 440);
  v199 = v0;
  v20 = v19();
  v21 = sub_1E374E8E4(v20, 2);
  v22 = sub_1E324FBDC();
  v23 = v9;
  v26 = *(v9 + 16);
  v25 = (v9 + 16);
  v24 = v26;
  if (v21)
  {
    v188 = v22;
    v203 = v7;
    v190 = v25;
    OUTLINED_FUNCTION_189_3(v24);
    v27();
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v29))
    {
      v30 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v30);
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v31, v32, v33, v34, v25, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v36 = *(v23 + 8);
    v35 = (v23 + 8);
    v191 = v35;
    v187 = v36;
    v37 = v36(v17, v203);
    v38 = v199;
    v39 = *((*MEMORY[0x1E69E7D40] & *v199) + 0x278);
    v40 = v199;
    v196 = (*MEMORY[0x1E69E7D40] & *v199) + 632;
    v195 = v39;
    v41 = v39(v37);
    v42 = 0;
    v43 = *(v41 + 16);
    i = v41 + 32;
    v198 = v2;
    while (v43 != v42)
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_100;
      }

      sub_1E38C6028(i, &v205);
      v45 = v207;
      v40 = v208;
      OUTLINED_FUNCTION_0_257(&v205, v207);
      v46(v45);
      OUTLINED_FUNCTION_159_3();
      v47 = sub_1E396B0E4();
      if (j == *v47 && v40 == v47[1])
      {

LABEL_18:

        sub_1E3251BE8(&v205, v209);
        sub_1E3251BE8(v209, &v210);
        v193 = type metadata accessor for LibrarySidebarItem();
        OUTLINED_FUNCTION_34_7(&v210, v212);
        v71 = OUTLINED_FUNCTION_50();
        v192 = v72(v71);
        v74 = v73;
        v75 = v212;
        OUTLINED_FUNCTION_0_257(&v210, v212);
        v77 = v76(v75);
        v79 = v78;
        v80 = v213;
        OUTLINED_FUNCTION_220_0(&v210, v212);
        v81 = OUTLINED_FUNCTION_38();
        LOBYTE(v75) = v82(v81, v80);
        v83 = v213;
        __swift_project_boxed_opaque_existential_1(&v210, v212);
        v84 = OUTLINED_FUNCTION_16_5();
        LOBYTE(v80) = v85(v84, v83);
        v35 = v198;
        OUTLINED_FUNCTION_97_14();
        v59 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & v86) + 0x178))();
        v2 = j__OUTLINED_FUNCTION_18();
        v87 = j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_195_3();
        BYTE3(v188) = v80 & 1;
        BYTE2(v188) = v87 & 1;
        BYTE1(v188) = v75 & 1;
        LOBYTE(v188) = 1;
        v187 = 0;
        v88 = OUTLINED_FUNCTION_114_2();
        OUTLINED_FUNCTION_178_4(v88, v74, v77, v79, v89, v90, v91, v92, v187, v188, SBYTE1(v188), SBYTE2(v188), SBYTE3(v188), SBYTE4(v188), v189);
        j = v93;
        __swift_destroy_boxed_opaque_existential_1(&v210);
        v38 = v199;
LABEL_19:
        OUTLINED_FUNCTION_27_29();
        (*(v94 + 480))(0);
        v95 = *(v35 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
        v96 = *((*v59 & *j) + 0x1C8);
        v97 = v95;
        v96(v95, &off_1F5D8BA78);

        v98 = (*((*v59 & *v38) + 0x2B0))();
        v99 = &off_1EE277438;
        v193 = j;
        if (v98)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_1E4297BE0;
          *(v100 + 56) = type metadata accessor for LibrarySidebarItem();
          *(v100 + 64) = &off_1EE277438;
          *(v100 + 32) = j;
          v101 = *((*v59 & *v38) + 0x280);
          v102 = j;
          v101(v100);
          v99 = j;
          goto LABEL_46;
        }

        v40 = v38;
        OUTLINED_FUNCTION_38_49();
        v41 = v103();
        v2 = 0;
        v104 = *(v41 + 16);
        for (i = v41 + 32; ; i += 40)
        {
          if (v104 == v2)
          {

            OUTLINED_FUNCTION_201();
            goto LABEL_46;
          }

          if (v2 >= *(v41 + 16))
          {
            goto LABEL_101;
          }

          sub_1E38C6028(i, &v210);
          v105 = v212;
          v40 = v213;
          OUTLINED_FUNCTION_0_257(&v210, v212);
          v106(v105);
          OUTLINED_FUNCTION_159_3();
          v107 = sub_1E396B0E4();
          if (j == *v107 && v40 == v107[1])
          {

            __swift_destroy_boxed_opaque_existential_1(&v210);
          }

          else
          {
            v109 = v107;
            OUTLINED_FUNCTION_176_5();
            OUTLINED_FUNCTION_28_3();
            __swift_destroy_boxed_opaque_existential_1(&v210);
            if ((v105 & 1) == 0)
            {

              v110 = v199;
              v40 = v199;
              OUTLINED_FUNCTION_38_49();
              v41 = v111();
              v2 = 0;
              i = *(v41 + 16);
              for (j = 32; ; j += 40)
              {
                if (i == v2)
                {

                  OUTLINED_FUNCTION_27_29();
                  v118 = *(v117 + 648);
                  OUTLINED_FUNCTION_201();
                  v119 = &off_1EE277438;
                  j = &v210;
                  v118(&v210);
                  OUTLINED_FUNCTION_152();
                  sub_1E3E2422C();
                  sub_1E3E24278(*(*v110 + 16));
                  v120 = OUTLINED_FUNCTION_11_6();
                  sub_1E3E2587C(v120, v121, v110);
                  (v118)(&v210, 0);
                  goto LABEL_46;
                }

                if (v2 >= *(v41 + 16))
                {
                  goto LABEL_102;
                }

                sub_1E38C6028(v41 + j, &v210);
                v112 = v212;
                OUTLINED_FUNCTION_0_257(&v210, v212);
                v114 = v113(v112);
                v40 = v115;
                if (v114 == *v109 && v115 == v109[1])
                {
                  break;
                }

                sub_1E42079A4();
                OUTLINED_FUNCTION_28_3();
                __swift_destroy_boxed_opaque_existential_1(&v210);
                if (v112)
                {
                  goto LABEL_43;
                }

                v2 = (v2 + 1);
              }

              __swift_destroy_boxed_opaque_existential_1(&v210);
LABEL_43:

              v212 = type metadata accessor for LibrarySidebarItem();
              v213 = &off_1EE277438;
              *&v210 = v193;
              v122 = *((*MEMORY[0x1E69E7D40] & *v110) + 0x288);
              v123 = v193;
              v41 = v122(v209);
              i = v124;
              v40 = *v124;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *i = v40;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                goto LABEL_104;
              }

              while (2)
              {
                v99 = v193;
                if (v2 >= v40[2])
                {
                  __break(1u);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1(v40 + j);
                sub_1E3251BE8(&v210, v40 + j);
                (v41)(v209, 0);
LABEL_46:
                v204 = v200;
                OUTLINED_FUNCTION_27_29();
                v127 = *(v126 + 376);

                v40 = v99;
                v41 = v127(v128);
                v129 = sub_1E32AE9B0(v41);
                if (v129)
                {
                  i = v129;
                  if (v129 >= 1)
                  {
                    for (k = 0; k != i; ++k)
                    {
                      if ((v41 & 0xC000000000000001) != 0)
                      {
                        v131 = MEMORY[0x1E6911E60](k, v41);
                      }

                      else
                      {
                        v131 = *(v41 + 8 * k + 32);
                      }

                      v132 = v131;
                      if (v204)
                      {
                        v133 = *&v131[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
                        v134 = *&v131[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

                        sub_1E397B708(v133, v134);
                      }

                      else
                      {
                      }
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
LABEL_56:

                  v40 = v199;
                  OUTLINED_FUNCTION_38_49();
                  v41 = *(v135() + 16);

                  j = MEMORY[0x1E69E7D40];
                  if (v41)
                  {
                    OUTLINED_FUNCTION_16_89();
                    v137 = (*(v136 + 520))();
                    if (v137)
                    {
                      v41 = v137;
                      v138 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                      OUTLINED_FUNCTION_25();
                      swift_beginAccess();
                      LOBYTE(v138) = *(v41 + v138);

                      if ((v138 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_22_77();
                        v139();
                        v41 = sub_1E41FFC94();
                        v140 = sub_1E4206814();
                        if (OUTLINED_FUNCTION_6_33(v140))
                        {
                          v141 = OUTLINED_FUNCTION_125_0();
                          OUTLINED_FUNCTION_9_11(v141);
                          OUTLINED_FUNCTION_6_29();
                          _os_log_impl(v142, v143, v144, v145, v146, 2u);
                          OUTLINED_FUNCTION_51_2();
                        }

                        OUTLINED_FUNCTION_132_2();
                        v147();
                      }
                    }

                    v40 = v35;
                    sub_1E3E16BA8();
                  }

                  v197 = v204;
                  if (v204)
                  {
                    v2 = (v204 + 56);
                    OUTLINED_FUNCTION_4_4();
                    i = v149 & v148;
                    v151 = (v150 + 63) >> 6;

                    v35 = 0;
                    if (i)
                    {
                      goto LABEL_69;
                    }

                    while (1)
                    {
                      v152 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_99;
                      }

                      if (v152 >= v151)
                      {
                        break;
                      }

                      i = v2[v152];
                      v35 = (v35 + 1);
                      if (i)
                      {
                        v35 = v152;
                        do
                        {
LABEL_69:
                          OUTLINED_FUNCTION_172_0();
                          v41 = *(v153 + 8);
                          OUTLINED_FUNCTION_68_5();
                          OUTLINED_FUNCTION_21();
                          v155 = *(v154 + 608);

                          j = v155(&v210);
                          v157 = v156;
                          v40 = *v156;
                          v158 = OUTLINED_FUNCTION_13_8();
                          v160 = sub_1E327D33C(v158, v159);
                          if (v161)
                          {
                            v162 = v160;
                            LODWORD(v203) = swift_isUniquelyReferenced_nonNull_native();
                            *&v205 = *v157;
                            *v157 = 0x8000000000000000;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A8);
                            sub_1E4207644();
                            v40 = v205;

                            type metadata accessor for SideBarItemConfig();
                            sub_1E4207664();
                            *v157 = v40;
                          }

                          i &= i - 1;
                          (j)(&v210, 0);
                        }

                        while (i);
                      }
                    }

                    j = MEMORY[0x1E69E7D40];
                  }

                  OUTLINED_FUNCTION_25_5();
                  v163 += 123;
                  v164 = *v163;
                  (*v163)(1);
                  sub_1E3E18440();
                  sub_1E3E1A2B0();
                  v164(0);
                  OUTLINED_FUNCTION_39();
                  *&v210 = (*((*j & v165) + 0x290))();
                  *(&v210 + 1) = v166;
                  v167 = OUTLINED_FUNCTION_32_0();
                  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(v167);
                  OUTLINED_FUNCTION_81_21(&qword_1EE279310);
                  sub_1E4206194();
                  v169 = sub_1E3280A90(255, &qword_1EE23B250);
                  v200 = v169;
                  while (1)
                  {
                    *&v205 = MEMORY[0x1E69E6158];
                    *(&v205 + 1) = v169;
                    v206 = MEMORY[0x1E69E6168];
                    OUTLINED_FUNCTION_76_21();
                    swift_getOpaqueTypeConformance2();
                    sub_1E4207174();
                    v35 = *(&v210 + 1);
                    if (!*(&v210 + 1))
                    {
                      OUTLINED_FUNCTION_15_5();
                      v177(v202, v201);
                      OUTLINED_FUNCTION_67_1();
                      (*((*MEMORY[0x1E69E7D40] & v178) + 0x198))(1);
                      OUTLINED_FUNCTION_38_49();
                      v180 = v179();
                      sub_1E39574B8(v180, &v210);

                      v181 = v212;
                      if (v212)
                      {
                        OUTLINED_FUNCTION_34_7(&v210, v212);
                        v182 = OUTLINED_FUNCTION_50();
                        v181 = v183(v182);
                        __swift_destroy_boxed_opaque_existential_1(&v210);
                        OUTLINED_FUNCTION_32_0();
                        sub_1E4205ED4();
                        OUTLINED_FUNCTION_12_1();
                      }

                      else
                      {
                        sub_1E325F7FC(&v210, &qword_1ECF2EC80);
                      }

                      v184 = v193;
                      v185 = OUTLINED_FUNCTION_33_14();
                      [v185 v186];

                      goto LABEL_96;
                    }

                    v40 = v211;
                    objc_opt_self();
                    OUTLINED_FUNCTION_20_2();
                    v170 = swift_dynamicCastObjCClass();
                    if (v170)
                    {
                      break;
                    }

LABEL_90:
                  }

                  v203 = v40;
                  v171 = [v170 viewControllers];
                  OUTLINED_FUNCTION_106();
                  swift_checkMetadataState();
                  OUTLINED_FUNCTION_20_2();
                  v41 = sub_1E42062B4();

                  v2 = (v41 & 0xFFFFFFFFFFFFFF8);
                  if (v41 >> 62)
                  {
                    i = sub_1E4207384();
                  }

                  else
                  {
                    i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  for (m = 0; ; ++m)
                  {
                    if (i == m)
                    {

                      v169 = v200;
                      v40 = v203;
                      goto LABEL_90;
                    }

                    if ((v41 & 0xC000000000000001) != 0)
                    {
                      v176 = OUTLINED_FUNCTION_55_39();
                      v173 = MEMORY[0x1E6911E60](v176);
                    }

                    else
                    {
                      if (m >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_98;
                      }

                      v173 = *(v41 + 8 * m + 32);
                    }

                    j = v173;
                    if (__OFADD__(m, 1))
                    {
                      break;
                    }

                    swift_getObjectType();
                    v174 = OUTLINED_FUNCTION_138_1();
                    if (dynamic_cast_existential_1_conditional(v174))
                    {
                      OUTLINED_FUNCTION_145();
                      ObjectType = swift_getObjectType();
                      (*(v168 + 64))(0, ObjectType, v168);
                    }
                  }

                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
                }

                __break(1u);
LABEL_104:
                v40 = sub_1E3E25304(v40);
                *i = v40;
                continue;
              }
            }
          }

          v2 = (v2 + 1);
        }
      }

      OUTLINED_FUNCTION_176_5();
      OUTLINED_FUNCTION_28_3();
      if (v45)
      {
        goto LABEL_18;
      }

      __swift_destroy_boxed_opaque_existential_1(&v205);
      i += 40;
      ++v42;
    }

    v193 = type metadata accessor for LibrarySidebarItem();
    v56 = *(v38 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle + 8);
    v192 = *(v38 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);

    v57 = sub_1E396B0E4();
    v35 = v2;
    v58 = *v57;
    v2 = v57[1];
    v59 = MEMORY[0x1E69E7D40];
    v60 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x2B0);

    v62 = v60(v61);
    OUTLINED_FUNCTION_97_14();
    (*((*v59 & v63) + 0x178))();
    j__OUTLINED_FUNCTION_18();
    v64 = j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_195_3();
    BYTE3(v188) = (v62 & 1) == 0;
    BYTE2(v188) = v64 & 1;
    LOWORD(v188) = 257;
    v187 = 0;
    v65 = OUTLINED_FUNCTION_114_2();
    OUTLINED_FUNCTION_178_4(v65, v56, v58, v2, v66, v67, v68, v69, v187, v188, SBYTE1(v188), SBYTE2(v188), SBYTE3(v188), SBYTE4(v188), v189);
    j = v70;
    goto LABEL_19;
  }

  v24(v13, v22, v7);
  v49 = v2;
  v50 = sub_1E41FFC94();
  v51 = v7;
  v52 = sub_1E4206814();

  if (os_log_type_enabled(v50, v52))
  {
    v53 = OUTLINED_FUNCTION_6_21();
    *&v210 = OUTLINED_FUNCTION_100();
    *v53 = 136315138;
    v203 = v51;
    LOBYTE(v209[0]) = v19();
    sub_1E3E25614();
    v54 = sub_1E4207944();
    sub_1E3270FC8(v54, v55, &v210);
    OUTLINED_FUNCTION_11_5();

    *(v53 + 4) = v49;
    _os_log_impl(&dword_1E323F000, v50, v52, "RootSplitViewController:: Pad:: commit changes for sidebar mode, but the current mode is %s", v53, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();

    (*(v23 + 8))(v13, v203);
  }

  else
  {

    (*(v23 + 8))(v13, v51);
  }

LABEL_96:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E144EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_42_9();
    v15 = OUTLINED_FUNCTION_100();
    *v14 = 136315394;
    *(v14 + 4) = OUTLINED_FUNCTION_183_4(&v11[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix]);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v2 & 1;
    _os_log_impl(&dword_1E323F000, v12, v13, "%s libraryHideSideBar: hidden:%{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  (*(v5 + 8))(v9, v3);
  sub_1E3E0FBF0(v2 & 1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E14684()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1000))();
}

void sub_1E3E14798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v11(v0);

  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_6_21();
    *v14 = 134217984;
    *(v14 + 4) = *(v6 + 16);

    OUTLINED_FUNCTION_235(&dword_1E323F000, v15, v16, "RootSplitViewController:: Pad:: update with bar items count %ld");
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v9 + 8))(v0, v7);
  v17 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_85();
  v19 = *(v18 + 376);
  v20 = v2;
  v19(v2);
  OUTLINED_FUNCTION_67_1();
  (*((*v17 & v21) + 0x3F0))(v6, v4 & 1);
  OUTLINED_FUNCTION_67_1();
  if ((*((*v17 & v22) + 0x3A0))())
  {
    OUTLINED_FUNCTION_30();
    v24 = *(v23 + 880);
    v25 = swift_unknownObjectRetain();
    v24(v25, &off_1F5D87340);
  }

  v26 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
  OUTLINED_FUNCTION_21_70();
  v27 += 86;
  v28 = *v27;
  v29 = (*v27)();
  v30 = (*((*v17 & *v26) + 0x110))(v29 & 1);
  (v28)(v30);
  OUTLINED_FUNCTION_36_3();
  (*((*v17 & v31) + 0x1E0))(v32 & 1);
  sub_1E3E13168();

  sub_1E3E14C2C();
  OUTLINED_FUNCTION_36_3();
  v34 = (*((*v17 & v33) + 0x118))();
  if (v34 != 3)
  {
    v35 = v34;
    OUTLINED_FUNCTION_27_29();
    if ((*(v36 + 272))())
    {
      OUTLINED_FUNCTION_27_29();
      if ((*(v37 + 304))())
      {
        OUTLINED_FUNCTION_21_70();
        (*(v38 + 448))(v35);
        OUTLINED_FUNCTION_36_3();
        (*((*v17 & v39) + 0x120))(3);
      }
    }
  }

  sub_1E3E0F9E8();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E14C2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0);
  OUTLINED_FUNCTION_0_10();
  v40 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v12 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v14 = *(v13 + 440);
  v15 = v14();
  if (sub_1E374E8E4(v15, 1))
  {
    v16 = *((*v12 & *v11) + 0x3D8);
    v16(1);
    sub_1E3E18440();
    sub_1E3E1A2B0();
    v16(0);
    OUTLINED_FUNCTION_1_31();
    v43 = (*((*v12 & v17) + 0x290))();
    v44 = v18;
    v19 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19);
    OUTLINED_FUNCTION_81_21(&qword_1EE279310);
    sub_1E4206194();
    v20 = v1;
    v21 = v12;
    sub_1E3280A90(255, &qword_1EE23B250);
    while (1)
    {
      OUTLINED_FUNCTION_76_21();
      swift_getOpaqueTypeConformance2();
      sub_1E4207174();
      if (!v44)
      {
        (*(v40 + 8))(v20, v41);
        OUTLINED_FUNCTION_26_3();
        (*((*v21 & v39) + 0x198))(1);
        goto LABEL_24;
      }

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        break;
      }

LABEL_18:
    }

    v23 = [v22 viewControllers];
    swift_checkMetadataState();
    OUTLINED_FUNCTION_19_3();
    v24 = sub_1E42062B4();

    if (v24 >> 62)
    {
      v25 = sub_1E4207384();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        v20 = v1;
        v21 = MEMORY[0x1E69E7D40];
        goto LABEL_18;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E6911E60](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v27 = *(v24 + 8 * i + 32);
      }

      v28 = v27;
      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_getObjectType();
      v29 = OUTLINED_FUNCTION_40_3();
      if (dynamic_cast_existential_1_conditional(v29))
      {
        OUTLINED_FUNCTION_49_4();
        ObjectType = swift_getObjectType();
        (*(v45 + 8))(1, ObjectType, v45);
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v31(v8);
    v32 = v0;
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_16_2();
      v43 = v42;
      *v32 = 136315138;
      v14();
      sub_1E3E25614();
      v35 = sub_1E4207944();
      v37 = sub_1E3270FC8(v35, v36, &v43);

      *(v32 + 4) = v37;
      OUTLINED_FUNCTION_112_12(&dword_1E323F000, v38, v34, "RootSplitViewController:: Pad:: commit changes for tabbar mode, but the current mode is %s");
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();
    }

    (*(v4 + 8))(v8, v2);
LABEL_24:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3E15228()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1032))();
  if ((v1 & 1) == 0)
  {

    sub_1E3E152AC();
  }
}

void sub_1E3E152AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_35_62();
  (*(v14 + 1064))(&v140, v4);
  if (!*(&v141 + 1))
  {
    sub_1E325F7FC(&v140, &unk_1ECF2F1D0);
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v22, v5);
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v24))
    {
      v25 = OUTLINED_FUNCTION_42_9();
      *v25 = 134218240;
      *(v25 + 4) = v4;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v2 & 1;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v26, v27, v28, v29, v30, 0x12u);
      OUTLINED_FUNCTION_51_2();
    }

    v31 = OUTLINED_FUNCTION_123_1();
    v32(v31);
    goto LABEL_72;
  }

  sub_1E3251BE8(&v140, v145);
  OUTLINED_FUNCTION_97_14();
  v16 = ((*v13 & v15) + 488);
  v17 = *((*v13 & v15) + 0x1E8);
  v18 = v17();
  if (v19 & 1) == 0 && v18 == v4 && (v2)
  {
    v17();
    OUTLINED_FUNCTION_35_62();
    (*(v20 + 520))();
    OUTLINED_FUNCTION_97_14();
    (*((*v13 & v21) + 0x400))(v2 & 1);
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v145);
LABEL_72:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v131 = v17;
  v132 = v16;
  v134 = v0;
  v33 = v146;
  v34 = v147;
  OUTLINED_FUNCTION_220_0(v145, v146);
  OUTLINED_FUNCTION_33();
  v36 = v35(v33, v34);
  v38 = v37;
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v39) + 0x290))();
  OUTLINED_FUNCTION_227_0();
  *&v140 = v36;
  *(&v140 + 1) = v38;
  v40 = sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v41 = v144;
  v133 = v4;
  if (!v144)
  {
    sub_1E38C6028(v145, &v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
    type metadata accessor for RemoteBarItem();
    OUTLINED_FUNCTION_157_7();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_232_0();
      v42 = v146;
      v43 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      OUTLINED_FUNCTION_33();
      v44(v42, v43);
      OUTLINED_FUNCTION_134_2();

      *&v140 = v12;
      *(&v140 + 1) = v42;
      OUTLINED_FUNCTION_230_0();
      v41 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x450))(v137, 1, 1, v140, *(&v140 + 1));
    }

    else
    {
      v41 = 0;
    }

    sub_1E38C6028(v145, &v140);
    type metadata accessor for LibraryBarItem();
    OUTLINED_FUNCTION_157_7();
    v129 = v2;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_232_0();
      v46 = *(v137 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v45 = *(v137 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8);

      *&v140 = v46;
      *(&v140 + 1) = v45;
      OUTLINED_FUNCTION_230_0();
      v13 = MEMORY[0x1E69E7D40];
      v47 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x410))(v137, 0, 1, v140, *(&v140 + 1));

      v41 = v47;
    }

    else
    {
      v13 = MEMORY[0x1E69E7D40];
    }

    if (!v41)
    {
      goto LABEL_38;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_40_3();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v130 = v41;
      v135 = v12;
      v49 = [v48 viewControllers];
      v40 = sub_1E42062B4();

      v50 = sub_1E32AE9B0(v40);
      v51 = 0;
      v12 = (v40 & 0xC000000000000001);
      while (1)
      {
        if (v50 == v51)
        {

          v2 = v129;
          OUTLINED_FUNCTION_190_2();
          v13 = MEMORY[0x1E69E7D40];
          v41 = v130;
          goto LABEL_30;
        }

        if (v12)
        {
          v52 = MEMORY[0x1E6911E60](v51, v40);
        }

        else
        {
          if (v51 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v52 = *(v40 + 8 * v51 + 32);
        }

        v53 = v52;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        swift_getObjectType();
        v54 = OUTLINED_FUNCTION_19_3();
        if (dynamic_cast_existential_1_conditional(v54))
        {
          v56 = v55;
          ObjectType = swift_getObjectType();
          OUTLINED_FUNCTION_62_30();
          OUTLINED_FUNCTION_21();
          v59 = (*(v58 + 440))();
          v60 = sub_1E374E8E4(v59, 1);
          (*(v56 + 64))(v60, ObjectType, v56);
        }

        ++v51;
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v2 = v129;
  }

LABEL_30:
  objc_opt_self();
  OUTLINED_FUNCTION_40_3();
  v61 = swift_dynamicCastObjCClass();
  if (!v61)
  {

    goto LABEL_38;
  }

  v62 = v61;
  v63 = v41;
  v131();
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v64) + 0x208))();
  OUTLINED_FUNCTION_97_14();
  (*((*v13 & v65) + 0x1F0))(v133, 0);
  if (v2)
  {
    type metadata accessor for VideosUI();
    v66 = v41;
    static VideosUI.notifyAppearingViewControllerOfTabSwitch(_:)(v62);
  }

  v130 = v41;
  OUTLINED_FUNCTION_35_62();
  v68 = (*(v67 + 440))();
  v69 = sub_1E374E8E4(v68, 2);
  v70 = v146;
  v71 = v147;
  OUTLINED_FUNCTION_220_0(v145, v146);
  OUTLINED_FUNCTION_33();
  v72(v70, v71);
  isEscapingClosureAtFileLocation = v73;
  v135 = v12;
  if ((v69 & 1) == 0)
  {
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_199_0();
    v13 = [isEscapingClosureAtFileLocation v89];

    if (v13)
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x3B8))())
      {
        v133 = v63;
        v69 = objc_opt_self();
        OUTLINED_FUNCTION_2_4();
        v90 = swift_allocObject();
        *(v90 + 16) = isEscapingClosureAtFileLocation;
        *(v90 + 24) = v13;
        OUTLINED_FUNCTION_2_4();
        v91 = swift_allocObject();
        v92 = sub_1E3E25A2C;
        *(v91 + 16) = sub_1E3E25A2C;
        *(v91 + 24) = v90;
        v142 = sub_1E37D1918;
        v143 = v91;
        OUTLINED_FUNCTION_75_21();
        *(&v140 + 1) = 1107296256;
        OUTLINED_FUNCTION_67();
        *&v141 = v93;
        *(&v141 + 1) = &block_descriptor_83_1;
        v94 = _Block_copy(&v140);
        v95 = isEscapingClosureAtFileLocation;
        v96 = v94;
        v97 = v95;
        v98 = v13;

        v99 = OUTLINED_FUNCTION_33_14();
        [v99 v100];

        _Block_release(v96);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        OUTLINED_FUNCTION_214_1();
        goto LABEL_65;
      }

      [isEscapingClosureAtFileLocation setSelectedTab_];
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_214_1();
    v92 = 0;
LABEL_67:
    v90 = 0;
    OUTLINED_FUNCTION_153_6();
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_35_62();
  (*(v75 + 1144))();

  v69 = v147;
  OUTLINED_FUNCTION_70(v145);
  v76 = OUTLINED_FUNCTION_26_1();
  v40 = v77(v76);
  v79 = v78;
  sub_1E38C6028(v145, &v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  if (!swift_dynamicCast())
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    sub_1E325F7FC(&v140, &qword_1ECF2EC80);
    v137 = 0u;
    v138 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_52:
    sub_1E325F7FC(&v137, &qword_1ECF2EC80);
    goto LABEL_53;
  }

  v131 = v40;
  v132 = v79;
  v133 = v63;
  v129 = v2;
  v80 = *(&v141 + 1);
  v13 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
  v81 = v13[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = sub_1E4207104();
  v128 = &v128;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  v84 = MEMORY[0x1EEE9AC00](v83);
  v86 = &v128 - v85;
  v81(v80, v13, v84);
  if (__swift_getEnumTagSinglePayload(v86, 1, AssociatedTypeWitness) == 1)
  {
    v87 = OUTLINED_FUNCTION_27_0();
    v88(v87);
    OUTLINED_FUNCTION_151_7();
    AssociatedConformanceWitness = 0;
    v137 = 0u;
    v138 = 0u;
  }

  else
  {
    *(&v138 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v137);
    OUTLINED_FUNCTION_37_1();
    (*(v101 + 32))();
    OUTLINED_FUNCTION_151_7();
  }

  __swift_destroy_boxed_opaque_existential_1(&v140);
  LOBYTE(v2) = v129;
  v63 = v133;
  v40 = v131;
  if (!*(&v138 + 1))
  {
    goto LABEL_52;
  }

  v102 = OUTLINED_FUNCTION_157_7();
  sub_1E3251BE8(v102, v103);
  v69 = v142;
  OUTLINED_FUNCTION_70(&v140);
  v104 = OUTLINED_FUNCTION_26_1();
  if (v105(v104))
  {

    v106 = *(&v141 + 1);
    OUTLINED_FUNCTION_0_257(&v140, *(&v141 + 1));
    v40 = v107(v106);
  }

  __swift_destroy_boxed_opaque_existential_1(&v140);
LABEL_53:
  isEscapingClosureAtFileLocation = sub_1E4205ED4();

  v92 = [v134 tabForIdentifier_];

  if (!v92)
  {
    OUTLINED_FUNCTION_214_1();
    goto LABEL_67;
  }

  v108 = [v92 viewController];
  OUTLINED_FUNCTION_153_6();
  if (!v109)
  {
    v13 = v92;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_56_20();
  type metadata accessor for RootHostingViewController();
  v110 = swift_dynamicCastClass();
  if (!v110)
  {

    goto LABEL_70;
  }

  v111 = (*((*MEMORY[0x1E69E7D40] & *v110) + 0x60))();
  if (!v111 || (isEscapingClosureAtFileLocation = v111, v111, v62 != isEscapingClosureAtFileLocation))
  {
    OUTLINED_FUNCTION_21();
    isEscapingClosureAtFileLocation = *(v112 + 152);
    v69 = v112 + 152;
    v113 = v130;
    (isEscapingClosureAtFileLocation)(v62);
  }

  objc_opt_self();
  v114 = swift_dynamicCastObjCClass();
  if (v114)
  {
    v40 = v114;
    v115 = v92;
    v116 = [v40 children];
    sub_1E3280A90(0, &unk_1ECF39558);
    OUTLINED_FUNCTION_19_3();
    v117 = sub_1E42062B4();

    MEMORY[0x1EEE9AC00](v118);
    *(&v128 - 2) = v145;
    v69 = 0;
    sub_1E3E12F34(sub_1E3E2554C, (&v128 - 4), v117);
    isEscapingClosureAtFileLocation = v119;

    [v40 setSelectedChild_];
  }

  OUTLINED_FUNCTION_199_0();
  OUTLINED_FUNCTION_12_5();
  if ((*(v120 + 400))())
  {
    OUTLINED_FUNCTION_62_30();
    OUTLINED_FUNCTION_21();
    if (((*(v121 + 952))() & 1) == 0)
    {
      [isEscapingClosureAtFileLocation setSelectedTab_];

LABEL_46:
      OUTLINED_FUNCTION_153_6();
LABEL_70:

      OUTLINED_FUNCTION_214_1();
      v92 = 0;
      v90 = 0;
      goto LABEL_71;
    }
  }

  v133 = v63;
  v132 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v69 = swift_allocObject();
  *(v69 + 16) = isEscapingClosureAtFileLocation;
  *(v69 + 24) = v92;
  OUTLINED_FUNCTION_2_4();
  v122 = swift_allocObject();
  v40 = sub_1E3E2553C;
  *(v122 + 16) = sub_1E3E2553C;
  *(v122 + 24) = v69;
  v142 = sub_1E37D1918;
  v143 = v122;
  OUTLINED_FUNCTION_75_21();
  *(&v140 + 1) = 1107296256;
  OUTLINED_FUNCTION_67();
  *&v141 = v123;
  *(&v141 + 1) = &block_descriptor_93_1;
  v124 = _Block_copy(&v140);
  v125 = v92;
  v126 = isEscapingClosureAtFileLocation;

  [v132 performWithoutAnimation_];

  _Block_release(v124);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v92 = 0;
    v90 = 0;
LABEL_65:
    OUTLINED_FUNCTION_153_6();
    v63 = v133;
LABEL_71:
    OUTLINED_FUNCTION_62_30();
    OUTLINED_FUNCTION_21();
    (*(v127 + 1024))(v2 & 1);

    __swift_destroy_boxed_opaque_existential_1(v145);
    sub_1E37FAED8(v40, v69);
    sub_1E37FAED8(v92, v90);
    goto LABEL_72;
  }

LABEL_77:
  __break(1u);
}

BOOL sub_1E3E165C4()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1072))();
  return (v1 & 1) == 0;
}

uint64_t sub_1E3E16684()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 656);

  v1(v2);
  OUTLINED_FUNCTION_49_4();
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  return v4;
}

BOOL sub_1E3E167D8()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();

  return sub_1E374E8E4(v1, 1);
}

uint64_t sub_1E3E168D4()
{
  if ([v0 isTabBarHidden])
  {
    return 0;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  [result bounds];
  OUTLINED_FUNCTION_240_0();
  v3 = OUTLINED_FUNCTION_14_25();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  [result bounds];
  v6 = v5;

  result = [v0 view];
  if (result)
  {
    if (v6 >= v3)
    {
      v7 = 1194.0;
    }

    else
    {
      v7 = 1024.0;
    }

    [result bounds];
    OUTLINED_FUNCTION_240_0();
    if (OUTLINED_FUNCTION_14_25() < v7)
    {
      return 1;
    }

    v8 = [v0 sidebar];
    v1 = [v8 isHidden];

    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1E3E16A58()
{
  sub_1E3280A90(0, &unk_1ECF39558);
  v1 = sub_1E42062A4();
  [v0 setTabs:v1 animated:0];
}

uint64_t sub_1E3E16B14()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1048))() & 1;
}

void sub_1E3E16BA8()
{
  OUTLINED_FUNCTION_31_1();
  v239 = v2;
  v227 = v3;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  v10 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v233 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v14 - v13);
  v230 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v229 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v18 - v17);
  v236 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v231 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v22);
  v23 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v238 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v237 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v210 - v37;
  OUTLINED_FUNCTION_26_3();
  v40 = (*((*MEMORY[0x1E69E7D40] & v39) + 0x208))();
  if (!v40)
  {
    goto LABEL_6;
  }

  v41 = v40;
  v221 = v10;
  v223 = v0;
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v43 = (*(v42 + 928))();
  if (!v43)
  {

    goto LABEL_6;
  }

  v44 = v43;
  v218 = v6;
  v45 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
  swift_beginAccess();
  if (*(&v41->isa + v45))
  {

LABEL_6:
    if (v239)
    {
      v46 = sub_1E324FBDC();
      (*(v25 + 16))(v1, v46, v23);
      v47 = sub_1E41FFC94();
      v48 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v48))
      {
        v49 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v49);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v25 + 8))(v1, v23);
    }

LABEL_52:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v214 = v4;
  v213 = v45;
  v222 = v25;
  v219 = v44;
  v220 = v23;
  v217 = v41;
  OUTLINED_FUNCTION_21();
  v56 = (*(v55 + 632))();
  v57 = 0;
  v58 = *(v56 + 16);
  v59 = (v56 + 32);
  v60 = &qword_1E42AD1A0;
  while (1)
  {
    if (v58 == v57)
    {
LABEL_15:

      v62 = [objc_opt_self() sharedInstance];
      v215 = [v62 isPlaybackUIBeingShown];

      OUTLINED_FUNCTION_26_3();
      v64 = (*((*MEMORY[0x1E69E7D40] & v63) + 0x1B8))();
      v216 = sub_1E374E8E4(v64, 2);
      v59 = *(*v219 + 952);

      v66 = v59(v65);

      OUTLINED_FUNCTION_197_1();
      v68 = [v59 v67];
      v69 = v220;
      if (v68)
      {
      }

      else
      {
        v70 = [objc_opt_self() sharedInstance];
        v71 = [v70 isPurchaseInProgress];

        if (!v71)
        {
          v60 = &selRef_setWaitingForTransactionToStart_;
          if (v216)
          {
            if (v58 != v57)
            {
              v73 = v66;
              if (v215)
              {
                goto LABEL_42;
              }

              v38 = &unk_1E429A000;
              v99 = 0;
LABEL_38:
              OUTLINED_FUNCTION_85();
              if ((*(v110 + 544))() & 1) != 0 || (v73)
              {
                goto LABEL_26;
              }

              if (v99)
              {
                goto LABEL_25;
              }

              OUTLINED_FUNCTION_85();
              if (((*(v111 + 568))() & 1) == 0)
              {
                goto LABEL_54;
              }

LABEL_42:
              v99 = 0;
              goto LABEL_26;
            }

            v99 = 0;
            v100 = 1;
          }

          else
          {
            v99 = 0;
            v100 = 0;
          }

          v73 = v66;
          if (v239)
          {
            goto LABEL_29;
          }

          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_85();
      v73 = v66;
      if (((*(v72 + 568))() & 1) == 0)
      {
        v212 = v66;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_94_18();
        v74(v38);
        v75 = sub_1E41FFC94();
        v76 = sub_1E4206814();
        if (OUTLINED_FUNCTION_6_33(v76))
        {
          v77 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v77);
          OUTLINED_FUNCTION_6_29();
          _os_log_impl(v78, v79, v80, v81, v82, 2u);
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v222 + 8))(v38, v69);
        OUTLINED_FUNCTION_67_1();
        (*((*MEMORY[0x1E69E7D40] & v83) + 0x240))(1);
        sub_1E3280A90(0, &qword_1EE23B1D0);
        v211 = sub_1E4206A04();
        OUTLINED_FUNCTION_129_10();
        sub_1E4204004();
        v84 = v228;
        *v228 = 5;
        (*(v229 + 104))(v84, *MEMORY[0x1E69E7F48], v230);
        OUTLINED_FUNCTION_143();
        MEMORY[0x1E690E9C0](v38, v84);
        v85 = OUTLINED_FUNCTION_11_6();
        v86(v85);
        OUTLINED_FUNCTION_190_2();
        v231 = *(v66 + 8);
        v231(v38, v236);
        OUTLINED_FUNCTION_4_0();
        v87 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v245 = sub_1E3E24D2C;
        v246 = v87;
        OUTLINED_FUNCTION_15_123();
        *(&v242 + 1) = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v243 = v88;
        v244 = &block_descriptor_30_0;
        v59 = _Block_copy(&v242);

        v89 = v232;
        sub_1E4203FE4();
        *&v242 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_7_180();
        sub_1E3274BD0(v90, v91);
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v93, v94);
        v95 = v234;
        OUTLINED_FUNCTION_217();
        sub_1E42072E4();
        v96 = v235;
        v97 = v211;
        MEMORY[0x1E69112E0](v235, v89, v95, v59);
        OUTLINED_FUNCTION_197_1();
        _Block_release(v98);

        (*(v218 + 8))(v95, v92);
        (*(v233 + 8))(v89, v221);
        v231(v96, v236);
        v73 = v212;
      }

      v60 = &selRef_setWaitingForTransactionToStart_;
      if (!v216)
      {
        v100 = 0;
        v99 = 1;
LABEL_28:
        if (v239)
        {
LABEL_29:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_94_18();
          v101 = v237;
          v102(v237);
          v103 = v59;
          v104 = sub_1E41FFC94();
          v105 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v105))
          {
            v106 = OUTLINED_FUNCTION_237();
            *v106 = 67110656;
            *(v106 + 4) = v100;
            *(v106 + 8) = 1024;
            *(v106 + 10) = v101;
            *(v106 + 14) = 1024;
            *(v106 + 16) = v215;
            *(v106 + 20) = 1024;
            v107 = MEMORY[0x1E69E7D40];
            *(v106 + 22) = (*((*MEMORY[0x1E69E7D40] & *v103) + 0x220))() & 1;

            *(v106 + 26) = 1024;
            *(v106 + 28) = v73 & 1;
            *(v106 + 32) = 1024;
            *(v106 + 34) = v99;
            *(v106 + 38) = 1024;
            *(v106 + 40) = (*((*v107 & *v103) + 0x238))() & 1;

            _os_log_impl(&dword_1E323F000, v104, v105, "    RootSplitViewController:: account message: post animated sidebar opening: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v106, 0x2Cu);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_176();

            OUTLINED_FUNCTION_243();
          }

          else
          {

            OUTLINED_FUNCTION_176();

            v104 = v217;
          }

          OUTLINED_FUNCTION_15_5();
          v109 = v237;
LABEL_50:
          v119 = &v247 + 8;
LABEL_51:
          v108(v109, *(v119 - 32));
          goto LABEL_52;
        }

LABEL_46:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_94_18();
        v112 = v238;
        v113(v238);
        v114 = v59;
        v115 = sub_1E41FFC94();
        v116 = sub_1E4206814();
        if (OUTLINED_FUNCTION_262(v116))
        {
          v117 = OUTLINED_FUNCTION_237();
          *v117 = 67110656;
          *(v117 + 4) = v100;
          *(v117 + 8) = 1024;
          *(v117 + 10) = v112;
          *(v117 + 14) = 1024;
          *(v117 + 16) = v215;
          *(v117 + 20) = 1024;
          v118 = MEMORY[0x1E69E7D40];
          *(v117 + 22) = (*((*MEMORY[0x1E69E7D40] & *v114) + 0x220))() & 1;

          *(v117 + 26) = 1024;
          *(v117 + 28) = v73 & 1;
          *(v117 + 32) = 1024;
          *(v117 + 34) = v99;
          *(v117 + 38) = 1024;
          *(v117 + 40) = (*((*v118 & *v114) + 0x238))() & 1;

          _os_log_impl(&dword_1E323F000, v115, v116, "    RootSplitViewController:: account message: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v117, 0x2Cu);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_176();

          OUTLINED_FUNCTION_243();
        }

        else
        {

          OUTLINED_FUNCTION_176();

          v115 = v217;
        }

        OUTLINED_FUNCTION_15_5();
        v109 = v238;
        goto LABEL_50;
      }

      if (v58 == v57 || (v215 & 1) != 0)
      {
LABEL_25:
        v99 = 1;
LABEL_26:
        v100 = 1;
        goto LABEL_28;
      }

      v38 = &unk_1E429A000;
      v99 = 1;
      goto LABEL_38;
    }

    if (v57 >= *(v56 + 16))
    {
      break;
    }

    sub_1E38C6028(v59, &v242);
    sub_1E3251BE8(&v242, &v247);
    v61 = OUTLINED_FUNCTION_11_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v61);
    type metadata accessor for LibrarySidebarItem();
    if (!swift_dynamicCast())
    {
      goto LABEL_15;
    }

    ++v57;

    v59 = (v59 + 40);
  }

  __break(1u);
LABEL_54:
  v120 = [objc_opt_self() v60[64]];
  v121 = [v120 accountMessageConfig];

  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v122 = v217;
  v123 = sub_1E375D4BC();
  if (!v123)
  {
    v247 = 0u;
    v248 = 0u;
    v125 = v239;
    goto LABEL_59;
  }

  v240 = sub_1E4205F14();
  v241 = v124;

  sub_1E4207414();
  sub_1E375D7E8(&v242, v123, &v247);

  sub_1E375D84C(&v242);
  v125 = v239;
  if (!*(&v248 + 1))
  {
LABEL_59:
    sub_1E325F7FC(&v247, &unk_1ECF296E0);
    if (v123)
    {
      goto LABEL_60;
    }

    v247 = 0u;
    v248 = 0u;
    v126 = 1;
    goto LABEL_65;
  }

  if (OUTLINED_FUNCTION_238_0())
  {
    v126 = v242;
    goto LABEL_61;
  }

LABEL_60:
  v126 = 1;
LABEL_61:
  v240 = sub_1E4205F14();
  v241 = v127;
  sub_1E4207414();
  sub_1E375D7E8(&v242, v123, &v247);

  sub_1E375D84C(&v242);
  if (!*(&v248 + 1))
  {
LABEL_65:
    sub_1E325F7FC(&v247, &unk_1ECF296E0);
    goto LABEL_66;
  }

  if (OUTLINED_FUNCTION_238_0())
  {
    v128 = v242;
    goto LABEL_67;
  }

LABEL_66:
  v128 = 1;
LABEL_67:
  v239 = v128;
  if ([v121 alwaysForceOpenSidebarAnimated])
  {
    v129 = 1;
  }

  else
  {
    v130 = [v121 alwaysForceOpenSidebarNonAnimated];
    v129 = (v130 ^ 1) & v126 & v227;
  }

  v131 = [v59 sidebar];
  v132 = [v131 isHidden];

  OUTLINED_FUNCTION_67_1();
  if ((*((*MEMORY[0x1E69E7D40] & v133) + 0x1C0))())
  {
    if (v125)
    {
      sub_1E324FBDC();
      v134 = v222;
      OUTLINED_FUNCTION_131_0();
      v135 = v225;
      v136 = v220;
      v137(v225);
      v138 = sub_1E41FFC94();
      v139 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v139))
      {
        v140 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v140);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v141, v142, v143, v144, v145, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*(v134 + 8))(v135, v136);
      goto LABEL_52;
    }

LABEL_80:
    OUTLINED_FUNCTION_176();

    goto LABEL_52;
  }

  v238 = v121;
  if (v125)
  {
    if (v132)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v146 = OUTLINED_FUNCTION_209_0();
      v147(v146);
      v148 = sub_1E41FFC94();
      v149 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v149))
      {
        v150 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v150);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v151, v152, v153, v154, v155, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      v156 = OUTLINED_FUNCTION_191_3();
      v157(v156);
LABEL_92:
      OUTLINED_FUNCTION_15_8();
LABEL_93:
      sub_1E3E20EA4();
      OUTLINED_FUNCTION_176();

      *(&v122->isa + v213) = 1;
      goto LABEL_52;
    }

LABEL_89:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v181 = OUTLINED_FUNCTION_209_0();
    v182(v181);
    v183 = sub_1E41FFC94();
    v184 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v184))
    {
      v185 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v185);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v186, v187, v188, v189, v190, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v191 = OUTLINED_FUNCTION_191_3();
    v192(v191);
    OUTLINED_FUNCTION_224();
    goto LABEL_93;
  }

  v158 = sub_1E324FBDC();
  v237 = *(v222 + 16);
  v237(v226, v158, v220);
  v159 = sub_1E41FFC94();
  v160 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 67109632;
    *(v161 + 4) = v126;
    *(v161 + 8) = 1024;
    *(v161 + 10) = v129;
    *(v161 + 14) = 1024;
    *(v161 + 16) = v239;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v162, v163, v164, v165, v161, 0x14u);
    v122 = v217;
    OUTLINED_FUNCTION_6_0();
  }

  v166 = *(v222 + 8);
  v166(v226, v220);
  if ((v132 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (!v126)
  {
    goto LABEL_92;
  }

  if ((v239 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    sub_1E3E20EA4();
    *(&v122->isa + v213) = 1;
  }

  if (v129)
  {
    OUTLINED_FUNCTION_197_1();
    OUTLINED_FUNCTION_85();
    (*(v167 + 552))(1);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v168 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v169 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v170 = swift_allocObject();
    *(v170 + 16) = v169;
    *(v170 + 24) = v239;
    *(v170 + 25) = v227 & 1;
    v245 = sub_1E3E24D1C;
    v246 = v170;
    OUTLINED_FUNCTION_15_123();
    *(&v242 + 1) = *(v38 + 375);
    OUTLINED_FUNCTION_14_1();
    v243 = v171;
    v244 = &block_descriptor_26_0;
    v172 = _Block_copy(&v242);

    v173 = v232;
    sub_1E4203FE4();
    *&v242 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v174, v175);
    v176 = OUTLINED_FUNCTION_32_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v176);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v177, v178);
    v179 = v234;
    OUTLINED_FUNCTION_217();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v173, v179, v172);

    _Block_release(v172);
    OUTLINED_FUNCTION_176();

    OUTLINED_FUNCTION_243();

    OUTLINED_FUNCTION_15_5();
    v180(v179, &unk_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v109 = v173;
    v119 = &v248;
    goto LABEL_51;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v193 = swift_allocObject();
  v194 = v223;
  *(v193 + 16) = v223;
  OUTLINED_FUNCTION_2_4();
  v195 = swift_allocObject();
  *(v195 + 16) = sub_1E3E24CC0;
  *(v195 + 24) = v193;
  v245 = sub_1E379E500;
  v246 = v195;
  OUTLINED_FUNCTION_15_123();
  *(&v242 + 1) = *(v38 + 375);
  OUTLINED_FUNCTION_67();
  v243 = v196;
  v244 = &block_descriptor_121;
  v197 = _Block_copy(&v242);
  v194;

  v198 = OUTLINED_FUNCTION_116_8();
  [v198 v199];
  _Block_release(v197);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v201 = sub_1E324FBDC();
    v237(v224, v201, v220);
    v202 = sub_1E41FFC94();
    v203 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v203))
    {
      v204 = OUTLINED_FUNCTION_125_0();
      *v204 = 0;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v205, v206, v207, v208, v204, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v166(v224, v220);
    if (v239)
    {
      OUTLINED_FUNCTION_224();
      sub_1E3E20EA4();
      OUTLINED_FUNCTION_176();

      v209 = v217;
      *(&v217->isa + v213) = 1;

      goto LABEL_52;
    }

    OUTLINED_FUNCTION_243();

    goto LABEL_80;
  }

  __break(1u);
}