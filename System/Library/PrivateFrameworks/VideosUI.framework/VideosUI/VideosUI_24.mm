void sub_1E37FA4CC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    v5 = v4;

    if (v4)
    {
      v6 = 1.0;
      if (v1)
      {
        v6 = 0.0;
      }

      [v5 setVuiAlpha_];
    }
  }
}

void sub_1E37FA56C(float *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(**(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter) + 152);

    v4(v1 == 0.0);

    OUTLINED_FUNCTION_36_3();
    v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0x430);
    v7 = v6();
    v8 = sub_1E3C52F80();

    if ((v8 & 1) != 0 && v1 > 0.0)
    {
      v6();
      v9 = OUTLINED_FUNCTION_70_3();
      sub_1E3C52FF4(v9);
    }
  }
}

unsigned __int8 *sub_1E37FA6B4(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 != 2)
  {
    v3 = *(v1 + 16);
    result = [v3 isMuted];
    if (result != (v2 & 1))
    {
      [v3 setMuted_];
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v4 = result;

        OUTLINED_FUNCTION_8();
        (*(v5 + 152))(v2 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_1E37FA784(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E37FA7D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha_];
  if (v1)
  {
    v4 = xmmword_1E4297490;
    v5 = xmmword_1E4297540;
    v6 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 1.1, 1.1);
    v5 = *&v8.a;
    v4 = *&v8.c;
    v6 = *&v8.tx;
  }

  *&v8.a = v5;
  *&v8.c = v4;
  *&v8.tx = v6;
  return [v2 setTransform_];
}

uint64_t sub_1E37FA93C()
{
  OUTLINED_FUNCTION_7_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v2 = (*(v1 + 544))();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1E37FA9BC()
{
  OUTLINED_FUNCTION_7_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    v1 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 640))();
    OUTLINED_FUNCTION_26_3();
    v5 = (*((*v1 & v4) + 0x298))();
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      if (v3 == v5 - 1)
      {
        [v0 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [objc_opt_self() isFeatureEnabled_];
      }
    }
  }
}

void sub_1E37FAAC0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
    OUTLINED_FUNCTION_3_0();
    *v4 = v1;
    *(v4 + 8) = 0;
  }
}

unsigned __int8 *sub_1E37FAB34()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType];

    return (v1 == 0);
  }

  return result;
}

void sub_1E37FAB80()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
    {

      sub_1E42004E4();
    }

    v1[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 2;
    sub_1E37EFFB4();
    v2 = *&v1[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
    if (v2)
    {
      v3 = v2;
      [v3 setVuiAlpha_];
    }
  }
}

void sub_1E37FAC38()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E37F219C();
  }
}

void sub_1E37FACA0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E41FDF24();
    if (v2)
    {
      v3 = v2;
      sub_1E4205F14();
      sub_1E4207414();
      sub_1E375D7E8(v4, v3, &v5);

      sub_1E375D84C(v4);
      if (*(&v6 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && (v4[0] & 1) == 0)
        {
          sub_1E37F71B4();
        }

        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    sub_1E325F6F0(&v5, &unk_1ECF296E0);
LABEL_9:
    sub_1E37F79E4();
  }
}

void sub_1E37FADC0()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1E37FAE10(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = v4;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) & 0xFE) == 2 || (*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) & 1) == 0)
    {
      *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = v1 ^ 1;
    }

    [Strong setNeedsStatusBarAppearanceUpdate];
  }
}

BOOL OUTLINED_FUNCTION_77_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_83_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_1E34AF594(v3);
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_1E34AF594(v3);
}

id sub_1E37FAFF8()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_2_35());
  OUTLINED_FUNCTION_1_67();
  sub_1E4205CB4();
  OUTLINED_FUNCTION_1_67();
  v3 = sub_1E4205C44();

  v4 = [v2 initWithRouterData:v3 appContext:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001E425E570;
  sub_1E327F454(v0, inited + 48);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v7 = sub_1E4205CB4();
  sub_1E37FB194();
  v8 = sub_1E37FB1D8(v7);

  v9 = sub_1E39DE0A4(v1, v8);

  [v6 setSelectEventDataSource_];

  __swift_destroy_boxed_opaque_existential_1(v0);
  return v6;
}

unint64_t sub_1E37FB194()
{
  result = qword_1EE23B170;
  if (!qword_1EE23B170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B170);
  }

  return result;
}

unint64_t sub_1E37FB1D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1E327F454(*(a1 + 56) + 40 * v11, v30);
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v26[2] = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v15 = v29;
    sub_1E3251BE8(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    swift_dynamicCast();
    sub_1E329504C(&v23, v25);
    sub_1E329504C(v25, v26);
    sub_1E329504C(v26, &v24);
    result = sub_1E327D33C(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = sub_1E329504C(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_1E329504C(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_1E37FB46C()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_2_35());
  OUTLINED_FUNCTION_1_67();
  sub_1E4205CB4();
  OUTLINED_FUNCTION_1_67();
  v3 = sub_1E4205C44();

  v4 = [v2 initWithRouterData:v3 appContext:0];

  sub_1E37FB194();
  v5 = v4;
  v6 = sub_1E39DE0A4(v1, v0);

  [v5 setSelectEventDataSource_];

  return v5;
}

id sub_1E37FB55C()
{
  v0 = sub_1E4205CB4();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 appController];

  if (v2)
  {
    v3 = [v2 appContext];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(VUIRouterDataSource);
  v5 = sub_1E37FB770(v0, v3);
  v6 = [objc_allocWithZone(VUIDocumentDataSource) init];
  [v6 setDocumentRef_];
  v7 = sub_1E4205F14();
  sub_1E37FB7F0(v7, v8, v6, &selRef_setControllerRef_);
  v9 = [objc_allocWithZone(VUIDocumentUIConfigurationModal) init];
  [v9 setType_];
  [v9 setAnimated_];
  v10 = sub_1E4205F14();
  sub_1E37FB7F0(v10, v11, v9, &selRef_setViewControllerDocumentIdentifier_);
  v12 = sub_1E4205F14();
  sub_1E37FB7F0(v12, v13, v9, &selRef_setViewControllerIdentifier_);
  [v9 setNavigationBarAdjustedToSizeClass_];
  [v6 setUiConfiguration_];
  v14 = [objc_allocWithZone(VUIEventDataSource) init];
  [v14 setDocumentDataSource_];
  [v5 setSelectEventDataSource_];

  return v5;
}

id sub_1E37FB770(uint64_t a1, void *a2)
{
  v4 = sub_1E4205C44();

  v5 = [v2 initWithRouterData:v4 appContext:a2];

  return v5;
}

void sub_1E37FB7F0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1E4205ED4();

  [a3 *a4];
}

__n128 sub_1E37FB85C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X8>)
{
  v8 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_50();
  sub_1E3EB9C0C(0, 0, 0, 0, 0, 1, v8 & 1, 2, v89, 0, 1, 0, 1, 0, 2, v66, SHIBYTE(v66));
  sub_1E375C2C0(v89, v94);
  v9 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_7_50();
  sub_1E3EB9DAC(v89, 0, 0, 1, 0, 0, 1, 0, __src, 1, 0, 0, 256, 3, 0, v9 & 1, v67, v68);
  v10 = memcpy(__dst, __src, sizeof(__dst));
  v84 = v91;
  v85 = v92;
  v86[0] = *v93;
  *(v86 + 10) = *&v93[10];
  v11 = COERCE_DOUBLE((*(*a3 + 184))(v10));
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v87 = 0;
  memcpy(v100, __src, sizeof(v100));
  v101 = v14;
  v70 = v15;
  v102 = v15;
  v103 = 0;
  v104 = v91;
  v105 = v92;
  v106[0] = *v93;
  *(v106 + 10) = *&v93[10];
  sub_1E375C1CC(v100, v94);
  v16 = j__OUTLINED_FUNCTION_18();
  v17 = j__OUTLINED_FUNCTION_18();
  v18 = j_j__OUTLINED_FUNCTION_5_8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = j__OUTLINED_FUNCTION_51_1();
  v26 = j__OUTLINED_FUNCTION_18();
  v27 = sub_1E3CBD2B8();
  v28 = j__OUTLINED_FUNCTION_18();
  v29 = j__OUTLINED_FUNCTION_5_8();
  sub_1E3EBA150(v100, 0, 0, 1, v16, v17, 0, v25 & 1, v94, v18, v20, v22, v24, v29, v30, v31, v32, 0, 1, v26 & 1, v27, v28 & 1);
  memcpy(v83, v94, sizeof(v83));
  v80[0] = *v96;
  *(v80 + 9) = *(&v96[4] + 1);
  v77 = *&v96[13];
  v81[0] = *v95;
  *(v81 + 3) = *&v95[3];
  v78 = *&v96[21];
  v79[0] = *v97;
  *(v79 + 14) = *&v97[14];
  v82 = 0;
  type metadata accessor for CollectionViewModel();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    type metadata accessor for LayoutGrid();

    sub_1E3A2579C(v14);
    v35 = *(*v34 + 392);

    v37 = v35(v36);

    if (v37)
    {
      sub_1E3C2AE10();
      v39 = v38;
      (*(*v37 + 1640))();
    }

    else
    {
    }
  }

  if ((*(*a1 + 392))(v33))
  {
    OUTLINED_FUNCTION_30();
    (*(v40 + 176))(v98);

    if ((v99 & 1) == 0)
    {
      v18 = *v98;
      v24 = *&v98[2];
      v20 = 0.0;
      v22 = 0.0;
      goto LABEL_24;
    }
  }

  type metadata accessor for CollectionLayoutFactory();
  sub_1E3C11D38(v72);
  v41.n128_u64[0] = v72[0];
  v42.n128_u64[0] = v72[1];
  v43.n128_u64[0] = v72[2];
  v44.n128_u64[0] = v72[3];
  j_nullsub_1(v41, v42, v43, v44);
  OUTLINED_FUNCTION_8_34();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v46 = *(v45 + 960);

    if (!v46(v47))
    {
LABEL_20:

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_5_43();
    if (!(!v49 & v48))
    {
      OUTLINED_FUNCTION_0_41();
      if (v49)
      {
        if (v50 != 25)
        {
          goto LABEL_19;
        }

        v61 = OUTLINED_FUNCTION_4_37();
        sub_1E3CB4B04(v62, v63, v61, v64, v65);
      }

      else
      {
        v51 = OUTLINED_FUNCTION_4_37();
        sub_1E3AB7F40(v52, v53, v51, v54, v55);
      }

      OUTLINED_FUNCTION_8_34();
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  if (a4)
  {
    v24 = *sub_1E3C11B40();
  }

LABEL_24:
  v56 = sub_1E39C2438(a2);
  sub_1E375C31C(v89);
  memcpy(v72, __dst, 0x78uLL);
  *&v72[15] = v14;
  v72[16] = v70;
  v73 = v87;
  v74 = v84;
  v75 = v85;
  *v76 = v86[0];
  *&v76[10] = *(v86 + 10);
  sub_1E37E6F2C(v72);
  v57 = v82;
  memcpy(a5, v83, 0xC8uLL);
  *(a5 + 200) = v14;
  *(a5 + 208) = v70;
  *(a5 + 216) = v57;
  *(a5 + 217) = v81[0];
  *(a5 + 220) = *(v81 + 3);
  *(a5 + 224) = v18;
  *(a5 + 232) = v22;
  *(a5 + 240) = v24;
  *(a5 + 248) = v20;
  *(a5 + 256) = v80[0];
  *(a5 + 265) = *(v80 + 9);
  *(a5 + 281) = v56 & 1;
  result = v77;
  v59 = v78;
  v60 = v79[0];
  *(a5 + 328) = *(v79 + 14);
  *(a5 + 298) = v59;
  *(a5 + 314) = v60;
  *(a5 + 282) = result;
  return result;
}

uint64_t sub_1E37FBE98()
{
  v0 = sub_1E4207784();

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

uint64_t sub_1E37FBEEC(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1E37FBF28(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x676E69646E6570;
  }

  else
  {
    v2 = 0x656C6269736976;
  }

  if (a2)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 0x656C6269736976;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E37FBFC4()
{
  sub_1E4206014();
}

uint64_t sub_1E37FC024()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E37FC098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E37FBE98();
  *a1 = result;
  return result;
}

uint64_t sub_1E37FC0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37FBEEC(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1E37FC0F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E37FC16C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37FC0F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E37FC1C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E37FC234()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E37FC2A0(unint64_t a1, int a2)
{
  v3 = v2;
  v125 = a2;
  p_aBlock = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v126 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v121 - v11;
  v130 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v132 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  v129 = v15;
  v128 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  v127 = v18;
  if (a1 >> 62)
  {
    goto LABEL_139;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v131 = v17;
    v122 = v12;
    v123 = v7;
    v124 = p_aBlock;
    v20 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
    OUTLINED_FUNCTION_4_38();
    v21 = sub_1E37FD33C(0, *(v3 + v20));
    swift_endAccess();
    aBlock = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30);
    sub_1E4148C68(sub_1E3800B78, v22, &v156);

    v12 = v156;
    OUTLINED_FUNCTION_4_38();
    v141 = v20;
    v23 = sub_1E37FD33C(1, *(v3 + v20));
    swift_endAccess();
    v155 = v23;
    v140 = v22;
    sub_1E4148C68(sub_1E3800B78, v22, &aBlock);

    v155 = v12;
    sub_1E37FE584(aBlock);
    p_aBlock = v155;
    v7 = sub_1E3FCC2B4(v155);
    v24 = sub_1E32AE9B0(p_aBlock);

    if (!v24)
    {
      v25 = sub_1E37FD390(2, v7);
      p_aBlock = v26;
      v28 = v27;
      v12 = v29;
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_1E42079E4();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = *(v31 + 16);

      if (__OFSUB__(v12 >> 1, v28))
      {
        __break(1u);
LABEL_142:
        swift_unknownObjectRelease();
LABEL_5:
        sub_1E37FE630(v25, p_aBlock, v28, v12);
        v7 = v30;
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      if (v32 != (v12 >> 1) - v28)
      {
        goto LABEL_142;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v7)
      {
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

LABEL_13:
    v33 = MEMORY[0x1E69E7CC0];
    v155 = MEMORY[0x1E69E7CC0];
    v156 = MEMORY[0x1E69E7CC0];
    v34 = sub_1E32AE9B0(v7);
    v139 = v3;
    v137 = v34;
    if (!v34)
    {
      v35 = v33;
      v145 = v33;
LABEL_86:

      aBlock = v33;
      p_aBlock = v145;
      v69 = sub_1E32AE9B0(v145);
      v7 = 0;
      v70 = p_aBlock & 0xC000000000000001;
      v71 = p_aBlock & 0xFFFFFFFFFFFFFF8;
      while (v69 != v7)
      {
        if (v70)
        {
          v72 = MEMORY[0x1E6911E60](v7, v145);
        }

        else
        {
          if (v7 >= *(v71 + 16))
          {
            goto LABEL_132;
          }

          v72 = *(v145 + 8 * v7 + 32);
        }

        v12 = v72;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_131;
        }

        p_aBlock = v72;
        sub_1E4205224();
        if (v73)
        {
        }

        else
        {
          p_aBlock = &aBlock;
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }

        ++v7;
      }

      aBlock = sub_1E38005A8(v74);
      sub_1E37FE70C(&aBlock, sub_1E37FF3F8, sub_1E37FEC80);
      v146 = 0;

      v75 = aBlock;
      v76 = v141;
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v154 = *(v3 + v76);
      p_aBlock = &v154;
      sub_1E37FE7A0(v75, 0);
      *(v3 + v76) = v154;
      swift_endAccess();
      aBlock = v33;
      v77 = sub_1E32AE9B0(v35);
      v78 = 0;
      v7 = v35 & 0xC000000000000001;
      while (v77 != v78)
      {
        if (v7)
        {
          v79 = MEMORY[0x1E6911E60](v78, v35);
        }

        else
        {
          if (v78 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v79 = *(v35 + 8 * v78 + 32);
        }

        v12 = v79;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_133;
        }

        p_aBlock = v79;
        sub_1E4205224();
        if (v80)
        {
        }

        else
        {
          p_aBlock = &aBlock;
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }

        ++v78;
      }

      v144 = v35;
      v81 = aBlock;
      v154 = v33;
      v82 = sub_1E32AE9B0(aBlock);
      v83 = 0;
      v3 += OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
      v7 = &qword_1ECF3D8E0;
      while (v82 != v83)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x1E6911E60](v83, v81);
        }

        else
        {
          if (v83 >= *(v81 + 16))
          {
            goto LABEL_136;
          }

          v84 = *(v81 + 8 * v83 + 32);
        }

        v12 = v84;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_135;
        }

        v85 = sub_1E4205224();
        if (v86)
        {
          __break(1u);
          v120 = v146;
LABEL_145:

          __break(1u);
          return result;
        }

        v87 = v85;
        v88 = *(v3 + 8);
        aBlock = *v3;
        LOBYTE(v148) = v88;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0);
        p_aBlock = &aBlock;
        sub_1E4148C68(sub_1E37FD4C8, v89, &v153);
        if (v153 >= v87)
        {
        }

        else
        {
          p_aBlock = &v154;
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }

        ++v83;
      }

      aBlock = sub_1E38005A8(v90);
      v91 = v146;
      sub_1E37FE70C(&aBlock, sub_1E37FED74, sub_1E37FEB8C);
      if (v91)
      {
        v120 = v91;
        goto LABEL_145;
      }

      v92 = aBlock;
      v93 = v139;
      v94 = v141;
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v154 = *(v93 + v94);
      sub_1E37FE7A0(v92, 1);
      *(v93 + v94) = v154;
      swift_endAccess();
      v144 = sub_1E32ADE38();
      v95 = sub_1E4206A04();
      v151 = sub_1E380063C;
      v152 = v93;
      aBlock = MEMORY[0x1E69E9820];
      v148 = 1107296256;
      v149 = sub_1E378AEA4;
      v150 = &block_descriptor_13;
      v96 = _Block_copy(&aBlock);

      v97 = v127;
      sub_1E4203FE4();
      aBlock = MEMORY[0x1E69E7CC0];
      v98 = sub_1E37E7A8C();
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v100, v101);
      v102 = v129;
      v145 = v99;
      v103 = v130;
      v146 = v98;
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v97, v102, v96);
      _Block_release(v96);

      v104 = v132 + 8;
      v105 = *(v132 + 8);
      v105(v102, v103);
      v106 = *(v131 + 8);
      v131 += 8;
      v106(v97, v128);
      OUTLINED_FUNCTION_4_38();
      v107 = sub_1E37FD33C(1, *(v93 + v94));
      swift_endAccess();
      v154 = v107;
      OUTLINED_FUNCTION_3_35();

      v108 = sub_1E32AE9B0(aBlock);

      if (v108)
      {
        v142 = v106;
        v143 = v105;
        v132 = v104;
        if (v125)
        {
          v109 = 2;
          do
          {
            sub_1E37FD5A0(0);
            --v109;
          }

          while (v109);
        }

        v110 = sub_1E4206A04();
        v111 = v126;
        sub_1E4204004();
        sub_1E37FD4D0();
        v112 = v122;
        sub_1E4204074();
        v113 = *(v123 + 8);
        v114 = v124;
        v113(v111, v124);
        v151 = sub_1E3800B7C;
        v152 = v93;
        aBlock = MEMORY[0x1E69E9820];
        v148 = 1107296256;
        v149 = sub_1E378AEA4;
        v150 = &block_descriptor_5;
        v115 = _Block_copy(&aBlock);

        v116 = v127;
        sub_1E4203FE4();
        aBlock = MEMORY[0x1E69E7CC0];
        v117 = v129;
        v118 = v130;
        sub_1E42072E4();
        MEMORY[0x1E69112E0](v112, v116, v117, v115);
        _Block_release(v115);

        v143(v117, v118);
        v142(v116, v128);
        return (v113)(v112, v114);
      }

      return result;
    }

    v12 = 0;
    v136 = v7 & 0xC000000000000001;
    v134 = v7 & 0xFFFFFFFFFFFFFF8;
    v133 = v7 + 32;
    v35 = MEMORY[0x1E69E7CC0];
    v145 = MEMORY[0x1E69E7CC0];
    v135 = v7;
    while (1)
    {
      if (v136)
      {
        v36 = MEMORY[0x1E6911E60](v12, v7);
      }

      else
      {
        if (v12 >= *(v134 + 16))
        {
          goto LABEL_138;
        }

        v36 = *(v133 + 8 * v12);
      }

      if (__OFADD__(v12++, 1))
      {
        goto LABEL_137;
      }

      v144 = v35;
      p_aBlock = v36;
      v38 = v36;
      v39 = sub_1E4205204();
      if (v40)
      {
        break;
      }

      v35 = v144;
LABEL_83:
      if (v12 == v137)
      {
        goto LABEL_86;
      }
    }

    v41 = v39;
    v42 = v40;
    v143 = v38;
    v43 = v141;
    OUTLINED_FUNCTION_4_38();
    p_aBlock = *(v3 + v43);
    if (*(p_aBlock + 16) && (v44 = sub_1E37FE540(0), (v45 & 1) != 0))
    {
      v46 = *(*(p_aBlock + 56) + 8 * v44);
    }

    else
    {
      v46 = 0;
    }

    swift_endAccess();
    v154 = v46;
    OUTLINED_FUNCTION_3_35();

    v7 = aBlock;
    if (aBlock >> 62)
    {
      v47 = sub_1E4207384();
    }

    else
    {
      v47 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v12;
    if (!v47)
    {
      LODWORD(v142) = 0;
      goto LABEL_50;
    }

    LODWORD(v142) = 0;
    v48 = 0;
    v146 = v7 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v12 = v48;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          if (v12 >= *(v146 + 16))
          {
            goto LABEL_129;
          }

          v49 = *(v7 + 8 * v12 + 32);
        }

        v50 = v49;
        v48 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_128;
        }

        p_aBlock = v49;
        v51 = sub_1E4205204();
        if (!v52)
        {
          goto LABEL_41;
        }

        p_aBlock = v52;
        if (v51 == v41 && v52 == v42)
        {
          break;
        }

        v3 = OUTLINED_FUNCTION_11_33();

        if (v3)
        {
          goto LABEL_44;
        }

LABEL_41:

        ++v12;
        if (v48 == v47)
        {
          goto LABEL_50;
        }
      }

LABEL_44:
      v54 = v143;
      p_aBlock = &v156;
      MEMORY[0x1E6910BF0]();
      v3 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_12_21();
      }

      sub_1E4206324();

      v145 = v156;
      LODWORD(v142) = 1;
    }

    while (v48 != v47);
LABEL_50:

    v55 = v139;
    v56 = v141;
    OUTLINED_FUNCTION_4_38();
    p_aBlock = *(v55 + v56);
    if (*(p_aBlock + 16) && (v57 = sub_1E37FE540(1), (v58 & 1) != 0))
    {
      v59 = *(*(p_aBlock + 56) + 8 * v57);
    }

    else
    {
      v59 = 0;
    }

    swift_endAccess();
    v154 = v59;
    OUTLINED_FUNCTION_3_35();

    v7 = aBlock;
    if (aBlock >> 62)
    {
      v60 = sub_1E4207384();
      if (v60)
      {
        goto LABEL_56;
      }

LABEL_78:

      v12 = v138;
      if (v142)
      {

        v3 = v139;
        v33 = MEMORY[0x1E69E7CC0];
        v35 = v144;
        v7 = v135;
      }

      else
      {
        p_aBlock = &v155;
        MEMORY[0x1E6910BF0](v68);
        v3 = v139;
        v33 = MEMORY[0x1E69E7CC0];
        v7 = v135;
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v35 = v155;
      }

      goto LABEL_83;
    }

    v60 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_78;
    }

LABEL_56:
    v61 = 0;
    v146 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_57:
    v12 = v61;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1E6911E60](v12, v7);
      }

      else
      {
        if (v12 >= *(v146 + 16))
        {
          goto LABEL_130;
        }

        v62 = *(v7 + 8 * v12 + 32);
      }

      v63 = v62;
      v61 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      p_aBlock = v62;
      v64 = sub_1E4205204();
      if (v65)
      {
        p_aBlock = v65;
        if (v64 == v41 && v65 == v42)
        {

LABEL_72:
          v67 = v143;
          p_aBlock = &v155;
          MEMORY[0x1E6910BF0]();
          v3 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_12_21();
          }

          sub_1E4206324();

          v144 = v155;
          LODWORD(v142) = 1;
          if (v61 == v60)
          {

            v3 = v139;
            v33 = MEMORY[0x1E69E7CC0];
            v35 = v144;
            v7 = v135;
            v12 = v138;
            goto LABEL_83;
          }

          goto LABEL_57;
        }

        v3 = OUTLINED_FUNCTION_11_33();

        if (v3)
        {
          goto LABEL_72;
        }
      }

      ++v12;
      if (v61 == v60)
      {
        goto LABEL_78;
      }
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v119 = v17;
    result = sub_1E4207384();
    v17 = v119;
  }

  return result;
}

uint64_t sub_1E37FD33C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37FE540(a1 & 1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E37FD390(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1E4207704();

    return v10;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1E37EFABC(0, a2);
  sub_1E37EFABC(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1E4205234();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1E42074F4();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

double sub_1E37FD4D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44();
  sub_1E37FD33C(0, *(v0 + v1));
  swift_endAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30);
  sub_1E32752B0(&qword_1ECF2AE58, &unk_1ECF3DAE0);
  v3 = sub_1E4149048(v2);

  result = 1.0;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

void sub_1E37FD5A0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v87 = v8;
  v88 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v86 = v12;
  v89 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v84 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v78 - v18;
  v19 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44();
  v20 = sub_1E37FD33C(1, *(v1 + v19));
  swift_endAccess();
  aBlock[0] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30);
  sub_1E4148C68(sub_1E3800B78, v21, v95);

  v22 = v95[0];
  if (!sub_1E32AE9B0(v95[0]))
  {

    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {

    v23 = MEMORY[0x1E6911E60](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v23 = *(v22 + 32);
  }

  if (!sub_1E32AE9B0(v22))
  {
    __break(1u);
    goto LABEL_57;
  }

  v80 = v10;
  v24 = sub_1E37FDFF8(v22);
  if (!v24)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

  v25 = v24;
  if (!sub_1E32AE9B0(v22))
  {
    goto LABEL_66;
  }

  if (sub_1E32AE9B0(v22) < 1)
  {
    goto LABEL_58;
  }

  v26 = sub_1E32AE9B0(v22);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v90 = v23;
  v23 = v95;
  sub_1E3797CDC(v28);
  sub_1E38001B4(0, 1, 0);
  v22 = v95[0];

  v95[0] = v22;
  v29 = sub_1E32AE9B0(v22);
  v79 = v6;
  LODWORD(v82) = a1;
  if (!v29)
  {
    goto LABEL_14;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_64;
  }

  while (1)
  {
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_5_44();
    v30 = sub_1E37FD33C(0, *(v2 + v19));
    swift_endAccess();
    v94 = v30;
    sub_1E4148C68(sub_1E3800B78, v21, aBlock);

    v31 = sub_1E32AE9B0(aBlock[0]);

    if (v31)
    {
LABEL_14:
      v25 = v4;
      v4 = 0;
      goto LABEL_22;
    }

    if (!sub_1E32AE9B0(v22))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v32 = sub_1E37FDFF8(v22);
    if (!v32)
    {
      goto LABEL_76;
    }

    v33 = v32;
    if (!sub_1E32AE9B0(v22))
    {
      goto LABEL_74;
    }

    v25 = v4;
    if (sub_1E32AE9B0(v22) < 1)
    {
      goto LABEL_72;
    }

    v34 = sub_1E32AE9B0(v22);
    v27 = __OFSUB__(v34, 1);
    v35 = v34 - 1;
    if (v27)
    {
      goto LABEL_73;
    }

    v4 = v33;
    sub_1E3797CDC(v35);
    sub_1E38001B4(0, 1, 0);
    v22 = v95[0];
LABEL_22:
    v23 = sub_1E37FE074(2, v22);
    v22 = v36;
    v6 = v37;
    a1 = v38;
    v91 = v14;
    v83 = v4;
    if ((v38 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = v21;
    sub_1E42079E4();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(a1 >> 1, v6))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      swift_unknownObjectRelease();
      v21 = v14;
      v14 = v91;
      v4 = v83;
LABEL_23:
      sub_1E37FE630(v23, v22, v6, a1);
      a1 = v39;
LABEL_30:
      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    if (v41 != (a1 >> 1) - v6)
    {
      goto LABEL_68;
    }

    a1 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v21 = v14;
    v14 = v91;
    v4 = v83;
    if (!a1)
    {
      a1 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }

LABEL_31:
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_5_44();
    v42 = *(v2 + v19);

    v43 = sub_1E37FD33C(0, v42);
    swift_endAccess();
    aBlock[0] = v43;
    sub_1E4148C68(sub_1E37FE1C4, v21, &v94);

    v44 = v94;
    sub_1E37EFABC(0, v94);
    if (sub_1E32AE9B0(v44) < 0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v45 = sub_1E32AE9B0(v44);
    v6 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    MEMORY[0x1E6911E60](0, v22);
    swift_unknownObjectRelease();
  }

  v22 = v90;
  sub_1E3797CDC(v6);
  v90 = v22;
  sub_1E3800070(0, 0, 1, v22);
  v23 = v94;
  v81 = a1;
  if (v4)
  {
    sub_1E37EFABC(0, v94);
    if (sub_1E32AE9B0(v23) < 0)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v46 = sub_1E32AE9B0(v23);
      v6 = v46 + 1;
      if (!__OFADD__(v46, 1))
      {
        v47 = v21;
        v48 = v4;
        v49 = v4;
        sub_1E3797CDC(v6);
        sub_1E3800070(0, 0, 1, v49);
        v23 = v94;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v48 = 0;
  v47 = v21;
LABEL_38:
  v50 = sub_1E37FD390(2, v23);
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v78 = v25;
  if ((v55 & 1) == 0)
  {
LABEL_39:
    sub_1E37FE630(v50, v52, v54, v56);
    v58 = v57;
    v59 = v47;
    v60 = v81;
    goto LABEL_48;
  }

  sub_1E42079E4();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x1E69E7CC0];
  }

  v62 = *(v61 + 16);

  if (__OFSUB__(v56 >> 1, v54))
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v62 != (v56 >> 1) - v54)
  {
LABEL_70:
    swift_unknownObjectRelease();
    v14 = v91;
    goto LABEL_39;
  }

  v58 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v14 = v91;
  v59 = v47;
  v60 = v81;
  if (v58)
  {
    if (!v48)
    {
      goto LABEL_50;
    }

LABEL_49:
    v63 = sub_1E4205224();
    if (v64)
    {
      goto LABEL_50;
    }

    v65 = 0;
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_48:
    swift_unknownObjectRelease();
    if (v48)
    {
      goto LABEL_49;
    }

LABEL_50:
    v63 = sub_1E4205224();
  }

  v66 = v2 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
  *v66 = v63;
  *(v66 + 8) = v65 & 1;
  OUTLINED_FUNCTION_8_35();
  OUTLINED_FUNCTION_11_3();
  swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v2 + v19);
  sub_1E37FE7A0(v58, 0);
  *(v2 + v19) = v93;
  swift_endAccess();

  OUTLINED_FUNCTION_8_35();
  OUTLINED_FUNCTION_11_3();
  swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v2 + v19);
  sub_1E37FE7A0(v60, 1);
  v67 = v93;
  *(v2 + v19) = v93;
  swift_endAccess();
  v93 = sub_1E37FD33C(0, v67);
  sub_1E4148C68(sub_1E3800B78, v59, aBlock);

  sub_1E37FC1C4();
  if (v82)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1E32ADE38();
    v69 = sub_1E4206A04();
    v70 = v84;
    sub_1E4204004();
    sub_1E37FD4D0();
    v71 = v85;
    sub_1E4204074();
    v82 = *(v14 + 8);
    v91 = v14 + 8;
    v82(v70, v89);
    aBlock[4] = sub_1E38006EC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_8;
    v72 = _Block_copy(aBlock);

    v73 = v78;
    v74 = v86;
    sub_1E4203FE4();
    aBlock[0] = v68;
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v75, v76);
    v77 = v87;
    sub_1E42072E4();
    MEMORY[0x1E69112E0](v71, v74, v77, v72);
    _Block_release(v72);

    (*(v79 + 8))(v77, v73);
    (*(v80 + 8))(v74, v88);
    v82(v71, v89);
  }

  else
  {
  }
}

id sub_1E37FDFF8(unint64_t a1)
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
    return *(a1 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E37FE074(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1E4205234();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E37FE1D0(char a1)
{
  OUTLINED_FUNCTION_11_3();
  v3 = sub_1E37FE260(v5, a1 & 1);
  if (*v2)
  {
    *v2 = MEMORY[0x1E69E7CC0];
  }

  (v3)(v5, 0);
  return swift_endAccess();
}

void (*sub_1E37FE260(void *a1, char a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1E38002B0(v4, a2 & 1);
  return sub_1E376FAC0;
}

uint64_t sub_1E37FE2C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E37FE378()
{
  v0 = swift_allocObject();
  sub_1E37FE3B0();
  return v0;
}

uint64_t sub_1E37FE3B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue__plays;
  v10[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0);
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  *(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_maximumVisiblePlays) = 2;
  v8 = v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_1E37FE4E4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E4205234();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1E37FE540(char a1)
{
  v2 = sub_1E37FC024();

  return sub_1E37FE90C(a1 & 1, v2);
}

uint64_t sub_1E37FE584(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E38009E8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E37FE630(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1E4205234();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1E37FE70C(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1E37FEA94(v10, a2, a3);
  return sub_1E4207554();
}

unint64_t sub_1E37FE7A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E37FE540(a2 & 1);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE48);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E37FE540(a2 & 1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1E37FE8C4(v9, a2 & 1, a1, v13);
  }
}

unint64_t sub_1E37FE8C4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
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

unint64_t sub_1E37FE90C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x676E69646E6570;
    }

    else
    {
      v6 = 0x656C6269736976;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x676E69646E6570 : 0x656C6269736976;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1E42079A4();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

void *sub_1E37FEA14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1E37FEA94(uint64_t a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = *(a1 + 8);
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    a3 = sub_1E37FE4E4(v7 / 2);
    v11[0] = v10;
    v11[1] = v7 / 2;
    result = a2(v11, v12, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return (a3)(0, v7, 1, a1);
  }

  return result;
}

void sub_1E37FEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v22 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        v13 = sub_1E4205224();
        if (v14)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v15 = v13;
        v16 = sub_1E4205224();
        if (v17)
        {
          goto LABEL_13;
        }

        v18 = v16;

        if (v15 >= v18)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_14;
        }

        v19 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v19;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v22 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E37FEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v22 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        v13 = sub_1E4205224();
        if (v14)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v15 = v13;
        v16 = sub_1E4205224();
        if (v17)
        {
          goto LABEL_13;
        }

        v18 = v16;

        if (v18 >= v15)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_14;
        }

        v19 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v19;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v22 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E37FED74(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v112 = v6;
        v8 = *a3;
        v9 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = *(*a3 + 8 * v5);
        v12 = v10;
        v117 = sub_1E4205224();
        if (v13)
        {
          goto LABEL_142;
        }

        v115 = sub_1E4205224();
        if (v14)
        {
          goto LABEL_143;
        }

        v108 = 8 * v7;
        v15 = (v8 + 8 * v7 + 16);
        v110 = v7;
        v16 = v7 + 2;
        v5 = v9;
        while (1)
        {
          v17 = v16;
          if (v5 + 1 >= v4)
          {
            break;
          }

          v18 = v4;
          v19 = v5;
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_1E4205224();
          if (v24)
          {
            goto LABEL_137;
          }

          v25 = v23;
          v26 = sub_1E4205224();
          if (v27)
          {
            goto LABEL_136;
          }

          v28 = v26;

          v29 = (v117 < v115) ^ (v25 >= v28);
          ++v15;
          v5 = v19 + 1;
          v16 = v17 + 1;
          v4 = v18;
          if ((v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v5 = v4;
LABEL_13:
        if (v117 >= v115)
        {
          v7 = v110;
          v6 = v112;
        }

        else
        {
          v6 = v112;
          if (v5 < v110)
          {
            goto LABEL_129;
          }

          if (v110 >= v5)
          {
            v7 = v110;
          }

          else
          {
            if (v4 >= v17)
            {
              v30 = v17;
            }

            else
            {
              v30 = v4;
            }

            v31 = 8 * v30 - 8;
            v32 = v5;
            v33 = v110;
            v7 = v110;
            v34 = v108;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_140;
                }

                v36 = *(v35 + v34);
                *(v35 + v34) = *(v35 + v31);
                *(v35 + v31) = v36;
              }

              ++v33;
              v31 -= 8;
              v34 += 8;
            }

            while (v33 < v32);
          }
        }
      }

      v37 = a3[1];
      if (v5 < v37)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_128;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v37)
          {
            v37 = (v7 + a4);
          }

          if (v37 >= v7)
          {
            if (v5 == v37)
            {
              goto LABEL_45;
            }

            v116 = v37;
            v38 = v7;
            v39 = *a3;
            v40 = *a3 + 8 * v5 - 8;
            v111 = v38;
            v113 = v6;
            v41 = v38 - v5;
LABEL_36:
            v118 = v5;
            v42 = *(v39 + 8 * v5);
            v43 = v41;
            v44 = v40;
            while (1)
            {
              v45 = *v44;
              v46 = v42;
              v47 = v45;
              v48 = sub_1E4205224();
              if (v49)
              {
                goto LABEL_134;
              }

              v50 = v48;
              v51 = sub_1E4205224();
              if (v52)
              {
                break;
              }

              v53 = v51;

              if (v50 >= v53)
              {
                goto LABEL_43;
              }

              if (!v39)
              {
                goto LABEL_135;
              }

              v54 = *v44;
              v42 = *(v44 + 8);
              *v44 = v42;
              *(v44 + 8) = v54;
              v44 -= 8;
              if (__CFADD__(v43++, 1))
              {
LABEL_43:
                v5 = (v118 + 1);
                v40 += 8;
                --v41;
                if (v118 + 1 == v116)
                {
                  v5 = v116;
                  v7 = v111;
                  v6 = v113;
                  goto LABEL_45;
                }

                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          v6 = sub_1E37FFF5C(v6);
          goto LABEL_99;
        }
      }

LABEL_45:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      }

      v57 = *(v6 + 16);
      v56 = *(v6 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v6 = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v6);
      }

      *(v6 + 16) = v58;
      v59 = v6 + 32;
      v60 = (v6 + 32 + 16 * v57);
      *v60 = v7;
      v60[1] = v5;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_141;
      }

      if (v57)
      {
        break;
      }

LABEL_94:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_97;
      }
    }

    while (1)
    {
      v61 = v58 - 1;
      v62 = (v59 + 16 * (v58 - 1));
      v63 = (v6 + 16 * v58);
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v64 = *(v6 + 32);
        v65 = *(v6 + 40);
        v74 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        v67 = v74;
LABEL_65:
        if (v67)
        {
          goto LABEL_114;
        }

        v79 = *v63;
        v78 = v63[1];
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_117;
        }

        v83 = v62[1];
        v84 = v83 - *v62;
        if (__OFSUB__(v83, *v62))
        {
          goto LABEL_120;
        }

        if (__OFADD__(v81, v84))
        {
          goto LABEL_122;
        }

        if (v81 + v84 >= v66)
        {
          if (v66 < v84)
          {
            v61 = v58 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v58 < 2)
      {
        goto LABEL_116;
      }

      v86 = *v63;
      v85 = v63[1];
      v74 = __OFSUB__(v85, v86);
      v81 = v85 - v86;
      v82 = v74;
LABEL_80:
      if (v82)
      {
        goto LABEL_119;
      }

      v88 = *v62;
      v87 = v62[1];
      v74 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v89 < v81)
      {
        goto LABEL_94;
      }

LABEL_87:
      if (v61 - 1 >= v58)
      {
        __break(1u);
LABEL_109:
        __break(1u);
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
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (!*a3)
      {
        goto LABEL_138;
      }

      v93 = v6;
      v94 = (v59 + 16 * (v61 - 1));
      v95 = *v94;
      v96 = v61;
      v6 = v59 + 16 * v61;
      v97 = *(v6 + 8);
      sub_1E37FFA7C((*a3 + 8 * *v94), (*a3 + 8 * *v6), (*a3 + 8 * v97), v119);
      if (v121)
      {
        goto LABEL_107;
      }

      if (v97 < v95)
      {
        goto LABEL_109;
      }

      v98 = v5;
      v5 = *(v93 + 16);
      if (v96 > v5)
      {
        goto LABEL_110;
      }

      *v94 = v95;
      v94[1] = v97;
      if (v96 >= v5)
      {
        goto LABEL_111;
      }

      v99 = v96;
      v121 = 0;
      v58 = v5 - 1;
      memmove(v6, (v6 + 16), 16 * (v5 - 1 - v99));
      v6 = v93;
      *(v93 + 16) = v5 - 1;
      v100 = v5 > 2;
      v5 = v98;
      if (!v100)
      {
        goto LABEL_94;
      }
    }

    v68 = v59 + 16 * v58;
    v69 = *(v68 - 64);
    v70 = *(v68 - 56);
    v74 = __OFSUB__(v70, v69);
    v71 = v70 - v69;
    if (v74)
    {
      goto LABEL_112;
    }

    v73 = *(v68 - 48);
    v72 = *(v68 - 40);
    v74 = __OFSUB__(v72, v73);
    v66 = v72 - v73;
    v67 = v74;
    if (v74)
    {
      goto LABEL_113;
    }

    v75 = v63[1];
    v76 = v75 - *v63;
    if (__OFSUB__(v75, *v63))
    {
      goto LABEL_115;
    }

    v74 = __OFADD__(v66, v76);
    v77 = v66 + v76;
    if (v74)
    {
      goto LABEL_118;
    }

    if (v77 >= v71)
    {
      v91 = *v62;
      v90 = v62[1];
      v74 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v74)
      {
        goto LABEL_126;
      }

      if (v66 < v92)
      {
        v61 = v58 - 2;
      }

      goto LABEL_87;
    }

    goto LABEL_65;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v5 = *a1;
  if (!*a1)
  {
LABEL_144:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v101 = (v6 + 16);
  v102 = *(v6 + 16);
  while (v102 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_139;
    }

    v103 = v6;
    v104 = (v6 + 16 * v102);
    v105 = *v104;
    v106 = &v101[2 * v102];
    v6 = v106[1];
    sub_1E37FFA7C((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v6), v5);
    if (v121)
    {
      break;
    }

    if (v6 < v105)
    {
      goto LABEL_123;
    }

    if (v102 - 2 >= *v101)
    {
      goto LABEL_124;
    }

    *v104 = v105;
    v104[1] = v6;
    v107 = *v101 - v102;
    if (*v101 < v102)
    {
      goto LABEL_125;
    }

    v121 = 0;
    v102 = *v101 - 1;
    memmove(v106, v106 + 2, 16 * v107);
    *v101 = v102;
    v6 = v103;
  }

LABEL_107:
}

void sub_1E37FF3F8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v112 = v6;
        v8 = *a3;
        v9 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = *(*a3 + 8 * v5);
        v12 = v10;
        v117 = sub_1E4205224();
        if (v13)
        {
          goto LABEL_142;
        }

        v115 = sub_1E4205224();
        if (v14)
        {
          goto LABEL_143;
        }

        v108 = 8 * v7;
        v15 = (v8 + 8 * v7 + 16);
        v110 = v7;
        v16 = v7 + 2;
        v5 = v9;
        while (1)
        {
          v17 = v16;
          if (v5 + 1 >= v4)
          {
            break;
          }

          v18 = v4;
          v19 = v5;
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_1E4205224();
          if (v24)
          {
            goto LABEL_137;
          }

          v25 = v23;
          v26 = sub_1E4205224();
          if (v27)
          {
            goto LABEL_136;
          }

          v28 = v26;

          v29 = (v115 < v117) ^ (v28 >= v25);
          ++v15;
          v5 = v19 + 1;
          v16 = v17 + 1;
          v4 = v18;
          if ((v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v5 = v4;
LABEL_13:
        if (v115 >= v117)
        {
          v7 = v110;
          v6 = v112;
        }

        else
        {
          v6 = v112;
          if (v5 < v110)
          {
            goto LABEL_129;
          }

          if (v110 >= v5)
          {
            v7 = v110;
          }

          else
          {
            if (v4 >= v17)
            {
              v30 = v17;
            }

            else
            {
              v30 = v4;
            }

            v31 = 8 * v30 - 8;
            v32 = v5;
            v33 = v110;
            v7 = v110;
            v34 = v108;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_140;
                }

                v36 = *(v35 + v34);
                *(v35 + v34) = *(v35 + v31);
                *(v35 + v31) = v36;
              }

              ++v33;
              v31 -= 8;
              v34 += 8;
            }

            while (v33 < v32);
          }
        }
      }

      v37 = a3[1];
      if (v5 < v37)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_128;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v37)
          {
            v37 = (v7 + a4);
          }

          if (v37 >= v7)
          {
            if (v5 == v37)
            {
              goto LABEL_45;
            }

            v116 = v37;
            v38 = v7;
            v39 = *a3;
            v40 = *a3 + 8 * v5 - 8;
            v111 = v38;
            v113 = v6;
            v41 = v38 - v5;
LABEL_36:
            v118 = v5;
            v42 = *(v39 + 8 * v5);
            v43 = v41;
            v44 = v40;
            while (1)
            {
              v45 = *v44;
              v46 = v42;
              v47 = v45;
              v48 = sub_1E4205224();
              if (v49)
              {
                goto LABEL_134;
              }

              v50 = v48;
              v51 = sub_1E4205224();
              if (v52)
              {
                break;
              }

              v53 = v51;

              if (v53 >= v50)
              {
                goto LABEL_43;
              }

              if (!v39)
              {
                goto LABEL_135;
              }

              v54 = *v44;
              v42 = *(v44 + 8);
              *v44 = v42;
              *(v44 + 8) = v54;
              v44 -= 8;
              if (__CFADD__(v43++, 1))
              {
LABEL_43:
                v5 = (v118 + 1);
                v40 += 8;
                --v41;
                if (v118 + 1 == v116)
                {
                  v5 = v116;
                  v7 = v111;
                  v6 = v113;
                  goto LABEL_45;
                }

                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          v6 = sub_1E37FFF5C(v6);
          goto LABEL_99;
        }
      }

LABEL_45:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      }

      v57 = *(v6 + 16);
      v56 = *(v6 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v6 = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v6);
      }

      *(v6 + 16) = v58;
      v59 = v6 + 32;
      v60 = (v6 + 32 + 16 * v57);
      *v60 = v7;
      v60[1] = v5;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_141;
      }

      if (v57)
      {
        break;
      }

LABEL_94:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_97;
      }
    }

    while (1)
    {
      v61 = v58 - 1;
      v62 = (v59 + 16 * (v58 - 1));
      v63 = (v6 + 16 * v58);
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v64 = *(v6 + 32);
        v65 = *(v6 + 40);
        v74 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        v67 = v74;
LABEL_65:
        if (v67)
        {
          goto LABEL_114;
        }

        v79 = *v63;
        v78 = v63[1];
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_117;
        }

        v83 = v62[1];
        v84 = v83 - *v62;
        if (__OFSUB__(v83, *v62))
        {
          goto LABEL_120;
        }

        if (__OFADD__(v81, v84))
        {
          goto LABEL_122;
        }

        if (v81 + v84 >= v66)
        {
          if (v66 < v84)
          {
            v61 = v58 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v58 < 2)
      {
        goto LABEL_116;
      }

      v86 = *v63;
      v85 = v63[1];
      v74 = __OFSUB__(v85, v86);
      v81 = v85 - v86;
      v82 = v74;
LABEL_80:
      if (v82)
      {
        goto LABEL_119;
      }

      v88 = *v62;
      v87 = v62[1];
      v74 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v89 < v81)
      {
        goto LABEL_94;
      }

LABEL_87:
      if (v61 - 1 >= v58)
      {
        __break(1u);
LABEL_109:
        __break(1u);
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
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (!*a3)
      {
        goto LABEL_138;
      }

      v93 = v6;
      v94 = (v59 + 16 * (v61 - 1));
      v95 = *v94;
      v96 = v61;
      v6 = v59 + 16 * v61;
      v97 = *(v6 + 8);
      sub_1E37FFCEC((*a3 + 8 * *v94), (*a3 + 8 * *v6), (*a3 + 8 * v97), v119);
      if (v121)
      {
        goto LABEL_107;
      }

      if (v97 < v95)
      {
        goto LABEL_109;
      }

      v98 = v5;
      v5 = *(v93 + 16);
      if (v96 > v5)
      {
        goto LABEL_110;
      }

      *v94 = v95;
      v94[1] = v97;
      if (v96 >= v5)
      {
        goto LABEL_111;
      }

      v99 = v96;
      v121 = 0;
      v58 = v5 - 1;
      memmove(v6, (v6 + 16), 16 * (v5 - 1 - v99));
      v6 = v93;
      *(v93 + 16) = v5 - 1;
      v100 = v5 > 2;
      v5 = v98;
      if (!v100)
      {
        goto LABEL_94;
      }
    }

    v68 = v59 + 16 * v58;
    v69 = *(v68 - 64);
    v70 = *(v68 - 56);
    v74 = __OFSUB__(v70, v69);
    v71 = v70 - v69;
    if (v74)
    {
      goto LABEL_112;
    }

    v73 = *(v68 - 48);
    v72 = *(v68 - 40);
    v74 = __OFSUB__(v72, v73);
    v66 = v72 - v73;
    v67 = v74;
    if (v74)
    {
      goto LABEL_113;
    }

    v75 = v63[1];
    v76 = v75 - *v63;
    if (__OFSUB__(v75, *v63))
    {
      goto LABEL_115;
    }

    v74 = __OFADD__(v66, v76);
    v77 = v66 + v76;
    if (v74)
    {
      goto LABEL_118;
    }

    if (v77 >= v71)
    {
      v91 = *v62;
      v90 = v62[1];
      v74 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v74)
      {
        goto LABEL_126;
      }

      if (v66 < v92)
      {
        v61 = v58 - 2;
      }

      goto LABEL_87;
    }

    goto LABEL_65;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v5 = *a1;
  if (!*a1)
  {
LABEL_144:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v101 = (v6 + 16);
  v102 = *(v6 + 16);
  while (v102 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_139;
    }

    v103 = v6;
    v104 = (v6 + 16 * v102);
    v105 = *v104;
    v106 = &v101[2 * v102];
    v6 = v106[1];
    sub_1E37FFCEC((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v6), v5);
    if (v121)
    {
      break;
    }

    if (v6 < v105)
    {
      goto LABEL_123;
    }

    if (v102 - 2 >= *v101)
    {
      goto LABEL_124;
    }

    *v104 = v105;
    v104[1] = v6;
    v107 = *v101 - v102;
    if (*v101 < v102)
    {
      goto LABEL_125;
    }

    v121 = 0;
    v102 = *v101 - 1;
    memmove(v106, v106 + 2, 16 * v107);
    *v101 = v102;
    v6 = v103;
  }

LABEL_107:
}

uint64_t sub_1E37FFA7C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      v10 = __dst;
      memmove(a4, __src, 8 * v7);
      __dst = v10;
    }

    v11 = &v4[v7];
    while (1)
    {
      if (v4 >= v11 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_40;
      }

      v13 = v6;
      v14 = __dst;
      v15 = v4;
      v16 = *v4;
      v17 = *__dst;
      v18 = v16;
      result = sub_1E4205224();
      if (v20)
      {
        __break(1u);
        goto LABEL_48;
      }

      v21 = result;
      result = sub_1E4205224();
      if (v22)
      {
        goto LABEL_49;
      }

      v23 = result;

      if (v21 >= v23)
      {
        break;
      }

      v24 = v14;
      __dst = v14 + 1;
      v25 = v13;
      v4 = v15;
      if (v13 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 = v25 + 1;
    }

    v24 = v15;
    v4 = v15 + 1;
    v25 = v13;
    __dst = v14;
    if (v13 == v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v25 = *v24;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[v8] <= a4)
  {
    v27 = __dst;
    memmove(a4, __dst, 8 * v8);
    __dst = v27;
  }

  v11 = &v4[v8];
  v45 = v4;
  v44 = v6;
LABEL_26:
  v28 = __dst - 1;
  while (1)
  {
    --v5;
    if (v11 <= v4 || __dst <= v6)
    {
      break;
    }

    v30 = __dst;
    v31 = v11;
    v32 = *--v11;
    v33 = v28;
    v34 = *v28;
    v35 = v32;
    v36 = v34;
    result = sub_1E4205224();
    if (v37)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v38 = result;
    result = sub_1E4205224();
    if (v39)
    {
      goto LABEL_50;
    }

    v40 = result;

    v41 = v5 + 1;
    if (v38 < v40)
    {
      __dst = v33;
      v6 = v44;
      v4 = v45;
      v11 = v31;
      if (v41 != v30)
      {
        *v5 = *v33;
        __dst = v33;
      }

      goto LABEL_26;
    }

    v6 = v44;
    v4 = v45;
    __dst = v30;
    v28 = v33;
    if (v31 != v41)
    {
      *v5 = *v11;
    }
  }

LABEL_40:
  v42 = v11 - v4;
  if (__dst != v4 || __dst >= &v4[v42])
  {
    memmove(__dst, v4, 8 * v42);
  }

  return 1;
}

uint64_t sub_1E37FFCEC(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      v10 = __dst;
      memmove(a4, __src, 8 * v7);
      __dst = v10;
    }

    v11 = &v4[v7];
    while (1)
    {
      if (v4 >= v11 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_40;
      }

      v13 = v6;
      v14 = __dst;
      v15 = v4;
      v16 = *v4;
      v17 = *__dst;
      v18 = v16;
      result = sub_1E4205224();
      if (v20)
      {
        __break(1u);
        goto LABEL_48;
      }

      v21 = result;
      result = sub_1E4205224();
      if (v22)
      {
        goto LABEL_49;
      }

      v23 = result;

      if (v23 >= v21)
      {
        break;
      }

      v24 = v14;
      __dst = v14 + 1;
      v25 = v13;
      v4 = v15;
      if (v13 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 = v25 + 1;
    }

    v24 = v15;
    v4 = v15 + 1;
    v25 = v13;
    __dst = v14;
    if (v13 == v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v25 = *v24;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[v8] <= a4)
  {
    v27 = __dst;
    memmove(a4, __dst, 8 * v8);
    __dst = v27;
  }

  v11 = &v4[v8];
  v45 = v4;
  v44 = v6;
LABEL_26:
  v28 = __dst - 1;
  while (1)
  {
    --v5;
    if (v11 <= v4 || __dst <= v6)
    {
      break;
    }

    v30 = __dst;
    v31 = v11;
    v32 = *--v11;
    v33 = v28;
    v34 = *v28;
    v35 = v32;
    v36 = v34;
    result = sub_1E4205224();
    if (v37)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v38 = result;
    result = sub_1E4205224();
    if (v39)
    {
      goto LABEL_50;
    }

    v40 = result;

    v41 = v5 + 1;
    if (v40 < v38)
    {
      __dst = v33;
      v6 = v44;
      v4 = v45;
      v11 = v31;
      if (v41 != v30)
      {
        *v5 = *v33;
        __dst = v33;
      }

      goto LABEL_26;
    }

    v6 = v44;
    v4 = v45;
    __dst = v30;
    v28 = v33;
    if (v31 != v41)
    {
      *v5 = *v11;
    }
  }

LABEL_40:
  v42 = v11 - v4;
  if (__dst != v4 || __dst >= &v4[v42])
  {
    memmove(__dst, v4, 8 * v42);
  }

  return 1;
}

char *sub_1E37FFF70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32780);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1E3800070(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_1E4205234();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E38001B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1E4205234();
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

void (*sub_1E38002B0(void *a1, char a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1E380052C(v4);
  v4[9] = sub_1E3800340((v4 + 4), a2 & 1);
  return sub_1E377D9EC;
}

unint64_t (*sub_1E3800340(uint64_t a1, char a2))(unint64_t result)
{
  v3 = v2;
  *(a1 + 8) = v2;
  *(a1 + 24) = a2;
  v6 = *v2;
  v7 = sub_1E37FE540(a2 & 1);
  *(a1 + 25) = v8 & 1;
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE48);
  if (sub_1E4207644())
  {
    v11 = sub_1E37FE540(a2 & 1);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v9;
  if (v10)
  {
    v13 = *(*(*v3 + 56) + 8 * v9);
  }

  else
  {
    v13 = 0;
  }

  *a1 = v13;
  return sub_1E3800458;
}

unint64_t sub_1E3800458(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v3 = *(result + 24) & 1;
      v4 = *(result + 16);

      return sub_1E37FE8C4(v4, v3, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0);
    sub_1E3800994();

    return sub_1E4207664();
  }

  return result;
}

void (*sub_1E380052C(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E3800554;
}

uint64_t sub_1E380055C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1E38005A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E38009E8((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E380063C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44();
  sub_1E37FD33C(0, *(v1 + v2));
  swift_endAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30);
  sub_1E4148C68(sub_1E3800B78, v3, v5);

  return sub_1E37FC1C4();
}

unint64_t sub_1E38006F8()
{
  result = qword_1ECF2AE38;
  if (!qword_1ECF2AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE38);
  }

  return result;
}

uint64_t type metadata accessor for SportsPlayByPlayQueue()
{
  result = qword_1EE2A9C70;
  if (!qword_1EE2A9C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38007A0()
{
  sub_1E3800854();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3800854()
{
  if (!qword_1ECF2AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3DAE0);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2AE40);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SportsPlayByPlayQueue.Key(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3800994()
{
  result = qword_1ECF2AE50;
  if (!qword_1ECF2AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE50);
  }

  return result;
}

uint64_t sub_1E38009E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E4205234();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF2AE58, &unk_1ECF3DAE0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SportsScoreboardViewAccessibleView()
{
  result = qword_1EE2A99D0;
  if (!qword_1EE2A99D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E3800BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SportsScoreboardViewAccessibleView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(a4 + v8[6]) = a1;
  *(a4 + v8[7]) = a2;
  v10 = a4 + v8[8];

  return memcpy(v10, a3, 0xC3uLL);
}

void *sub_1E3800CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE60);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4];
  *v5 = *sub_1E41F0A04();
  *(v5 + 1) = 0;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE68);
  sub_1E3800DF8();
  sub_1E4203DA4();
  sub_1E42015C4();
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE70);
  return memcpy((a1 + *(v9 + 36)), __src, 0x70uLL);
}

void sub_1E3800DF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v90 = v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v89 = v8;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE90);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v87 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v88 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v84 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v85 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v76 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v91 = v33;
  OUTLINED_FUNCTION_138();
  v77 = type metadata accessor for SportsScoreboardViewAccessibleView();
  v34 = *(v1 + *(v77 + 24));
  v35 = sub_1E38266E4();
  v76[1] = sub_1E38267CC();
  v92 = v1;
  sub_1E374709C(v18);
  v36 = *MEMORY[0x1E697E7D0];
  v37 = *(v11 + 104);
  v80 = v11 + 104;
  v79 = v37;
  v37(v15, v36, v9);
  v38 = sub_1E4201314();
  v39 = *(v11 + 8);
  v39(v15, v9);
  v83 = v9;
  v81 = v39;
  v39(v18, v9);
  v86 = v6;
  if (v35)
  {
    v40 = v38;
    if (sub_1E39C408C(39))
    {
      type metadata accessor for ImageViewModel();
      if (!swift_dynamicCastClass())
      {
      }
    }
  }

  else
  {
    v40 = v38;
  }

  if (v40)
  {
    v41 = sub_1E41F0984();
  }

  else
  {
    v41 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v42)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v41 = &qword_1EE28B3B8;
    }
  }

  *v31 = *v41;
  *(v31 + 1) = 0;
  v31[16] = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE78);
  v43 = v92;
  sub_1E38015D8();

  sub_1E3741EA0(v31, v91, &qword_1ECF2AE90);
  v44 = *(v43 + *(v77 + 28));

  v45 = v89;
  sub_1E41EEC10(v34, v44, v89);
  v46 = sub_1E41F0A04();
  v47 = (v45 + *(v82 + 36));
  *v47 = *v46;
  v47[1] = sub_1E374AE08;
  v47[2] = 0;
  v48 = sub_1E38266EC();
  sub_1E38267D4();
  sub_1E374709C(v18);
  v49 = v83;
  v79(v15, *MEMORY[0x1E697E7D8], v83);
  v50 = sub_1E4201314();
  v51 = OUTLINED_FUNCTION_32_0();
  v52 = v81;
  (v81)(v51);
  v52(v18, v49);
  if (!v48)
  {
    v54 = v86;
    goto LABEL_16;
  }

  v53 = sub_1E39C408C(39);
  v54 = v86;
  if (!v53)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v55 = sub_1E41F0984();
    goto LABEL_21;
  }

  type metadata accessor for ImageViewModel();
  if (swift_dynamicCastClass())
  {
LABEL_16:
    if ((v50 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v50)
  {
    goto LABEL_17;
  }

LABEL_19:
  v55 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
  if (!v42)
  {
    OUTLINED_FUNCTION_0_42();
    swift_once();
    v55 = &qword_1EE28B3B8;
  }

LABEL_21:
  v56 = v84;
  *v84 = *v55;
  v56[1] = 0;
  *(v56 + 16) = 0;
  sub_1E38015D8();

  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v57, v58, v59);
  v99 = 0;
  v100 = 0;
  v101[0] = &v99;
  v60 = v88;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v61, v62, v63);
  v97 = 0;
  v98 = 0;
  v101[1] = v60;
  v101[2] = &v97;
  sub_1E3743538(v45, v54, &qword_1ECF28D70);
  v95 = 0;
  v96 = 0;
  v101[3] = v54;
  v101[4] = &v95;
  v64 = v87;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v65, v66, v67);
  v93 = 0;
  v94 = 0;
  v101[5] = v64;
  v101[6] = &v93;
  sub_1E38014CC(v101, v90);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v68, v69);
  sub_1E325F6F0(v45, &qword_1ECF28D70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v70, v71);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v72, v73);
  sub_1E325F6F0(v54, &qword_1ECF28D70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v74, v75);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38014CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF28);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF2AE90);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF28D70);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  result = sub_1E3743538(v11, a2 + v5[28], &qword_1ECF2AE90);
  v15 = a2 + v5[32];
  v16 = *(a1 + 48);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  return result;
}

void sub_1E38015D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v57 = v4;
  v6 = v5;
  v65 = v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v55 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEA0);
  OUTLINED_FUNCTION_0_10();
  v60 = v12;
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v64 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v62 = v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEB0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v59 = v22 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v26 = v25;
  OUTLINED_FUNCTION_138();
  type metadata accessor for SportsScoreboardViewAccessibleView();
  v27 = sub_1E3827278();
  v28 = 1;
  v66 = v26;
  if (v27)
  {
    v55[3] = v3;
    v56 = v1;
    v29 = sub_1E3826B74();
    if (v29)
    {
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);

      if (!v6)
      {
        if (!v30)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_21;
      }

      v30 = 0;
      v31 = 0;
    }

    v33 = *(v6 + 16);
    v32 = *(v6 + 24);

    if (v30)
    {
      if (v32)
      {
        if (v31 != v33 || v30 != v32)
        {
          OUTLINED_FUNCTION_53();
          v35 = sub_1E42079A4();

          if (v35)
          {
            goto LABEL_21;
          }

LABEL_18:
          if (v57)
          {
            (*(*v57 + 392))(v36);
          }

          goto LABEL_22;
        }

LABEL_21:
        OUTLINED_FUNCTION_5_0();

LABEL_22:
        v26 = v66;
        *v19 = sub_1E4201B84();
        *(v19 + 1) = 0;
        v19[16] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AED8);
        sub_1E3801AB0();

        sub_1E3741EA0(v19, v26, &qword_1ECF2AEA8);
        v28 = 0;
        goto LABEL_23;
      }
    }

    else if (!v32)
    {
      goto LABEL_21;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_23:
  __swift_storeEnumTagSinglePayload(v26, v28, 1, v58);
  sub_1E3802A14();
  sub_1E41F0A04();
  sub_1E3827278();
  sub_1E3803794();
  v37 = v62;
  sub_1E41F0AD8();
  sub_1E325F6F0(v10, &qword_1ECF2AE98);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v38, v39, v40);
  v42 = v60;
  v41 = v61;
  v43 = *(v60 + 16);
  v44 = v64;
  v43(v64, v37, v61);
  v45 = v65;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v46, v47, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AED0);
  v43(v45 + *(v49 + 48), v44, v41);
  v50 = *(v42 + 8);
  v50(v37, v41);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v51, v52);
  v50(v44, v41);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v53, v54);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3801AB0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v68 = v2;
  v76 = v3;
  v5 = v4;
  v78 = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v65 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v77 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v71 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v80 = v15;
  OUTLINED_FUNCTION_138();
  v16 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  sub_1E374709C(&v65 - v24);
  v26 = *(v18 + 104);
  v27 = (v18 + 8);
  v28 = v5;
  v69 = v26;
  if (v5)
  {
    v29 = *MEMORY[0x1E697E7D0];
  }

  else
  {
    v29 = *MEMORY[0x1E697E7D8];
  }

  v26(v22, v29, v16);
  OUTLINED_FUNCTION_53();
  v30 = sub_1E4201314();
  v31 = *v27;
  (*v27)(v22, v16);
  v31(v25, v16);
  if (v30)
  {
    v66 = v1;
    v67 = v28;
    type metadata accessor for SportsScoreboardViewAccessibleView();

    sub_1E3AC5824();
    v33 = v32;
    v74 = v34 & 1;
    v75 = v35;

    v73 = v33;

    LOBYTE(v28) = v67;
    v1 = v66;
  }

  else
  {
    v75 = 0;
    v74 = 0;
    v73 = 1;
  }

  v36 = sub_1E3801FEC(v1);
  v37 = v79;
  sub_1E3802680(v68, v36, v79);

  v38 = sub_1E41F0A04();
  v39 = (v37 + *(v70 + 36));
  *v39 = *v38;
  v39[1] = sub_1E374A0BC;
  v39[2] = 0;
  if (v28)
  {
    v40 = sub_1E41F0984();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v41)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v40 = &qword_1EE28B3B8;
    }
  }

  v42 = *v40;
  v43 = v71;
  sub_1E3741EA0(v79, v71, &qword_1ECF28D40);
  v44 = (v43 + *(v72 + 36));
  *v44 = v42;
  v44[1] = sub_1E3803508;
  v44[2] = 0;
  sub_1E3741EA0(v43, v80, &qword_1ECF2AEE0);
  sub_1E374709C(v25);
  if (v28)
  {
    v45 = MEMORY[0x1E697E7D8];
  }

  else
  {
    v45 = MEMORY[0x1E697E7D0];
  }

  v69(v22, *v45, v16);
  OUTLINED_FUNCTION_53();
  v46 = sub_1E4201314();
  v31(v22, v16);
  v31(v25, v16);
  if (v46)
  {
    type metadata accessor for SportsScoreboardViewAccessibleView();

    sub_1E3AC5824();
    v48 = v47;
    v50 = v49;
    v52 = v51 & 1;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v48 = 1;
  }

  v53 = v80;
  v54 = v77;
  sub_1E3743538(v80, v77, &qword_1ECF2AEE0);
  v55 = v78;
  v56 = v75;
  *v78 = v73;
  v55[1] = v56;
  *(v55 + 16) = v74;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEE8);
  sub_1E3743538(v54, v55 + *(v57 + 48), &qword_1ECF2AEE0);
  v58 = v55 + *(v57 + 64);
  v59 = OUTLINED_FUNCTION_15_34();
  sub_1E3803844(v59);
  v60 = OUTLINED_FUNCTION_16_23();
  sub_1E3803844(v60);
  v61 = OUTLINED_FUNCTION_15_34();
  sub_1E380388C(v61);
  v62 = OUTLINED_FUNCTION_16_23();
  sub_1E380388C(v62);
  *v58 = v48;
  *(v58 + 1) = v50;
  v58[16] = v52;
  sub_1E325F6F0(v53, &qword_1ECF2AEE0);
  v63 = OUTLINED_FUNCTION_16_23();
  sub_1E380388C(v63);
  sub_1E325F6F0(v54, &qword_1ECF2AEE0);
  v64 = OUTLINED_FUNCTION_15_34();
  sub_1E380388C(v64);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3801FEC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v68 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  if (!a1)
  {
    return 0;
  }

  [ copyWithZone_];
  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for ViewLayout();
  v19 = swift_dynamicCast();
  v67 = v69;
  if (v19)
  {
    v20 = v69;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v11 + 104);
  v21(v18, *MEMORY[0x1E697E6C8], v9);
  type metadata accessor for ImageLayout();
  if (swift_dynamicCastClass())
  {
    v22 = OUTLINED_FUNCTION_74();
    v23(v22);
    v21(v18, *MEMORY[0x1E697E728], v9);
  }

  type metadata accessor for TextLayout();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    if (v20)
    {
      v25 = v24;
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v65 = v26;
        v66 = v3;
        v63 = *(v11 + 16);
        v64 = v11 + 16;
        v63(v2, v18, v9);
        v27 = *(*v25 + 1712);

        v29 = v27(v28);
        if (v29 != 13)
        {
          v30 = v68;
          sub_1E3B03354(v29, v68);
          v31 = OUTLINED_FUNCTION_7_51();
          v32(v31);
          v29 = (*(v11 + 32))(v2, v30, v9);
        }

        v33 = (*(*v25 + 1808))(v29);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_7_51();
          v36(v35);
        }

        else
        {
          v37 = *&v33;
          type metadata accessor for SportsScoreboardViewAccessibleView();
          v38 = v68;
          sub_1E3746E10(v68);
          v63(v8, v2, v9);
          OUTLINED_FUNCTION_12_30();
          v39 = sub_1E3AC5CD8(v38, v8, v37);
          sub_1E325F6F0(v8, &qword_1ECF2A250);
          v40 = *(v11 + 8);
          v40(v38, v9);
          (*(*v65 + 1816))(COERCE_DOUBLE(*&v39), 0);

          v40(v2, v9);
        }
      }
    }
  }

  v41 = (*(*a1 + 200))();
  if ((v42 & 1) == 0 && v20)
  {
    v43 = *&v41;
    type metadata accessor for SportsScoreboardViewAccessibleView();

    v44 = v68;
    sub_1E3746E10(v68);
    v45 = OUTLINED_FUNCTION_53();
    v46(v45);
    OUTLINED_FUNCTION_12_30();
    v47 = sub_1E3AC5CD8(v44, v8, v43);
    sub_1E325F6F0(v8, &qword_1ECF2A250);
    v48 = OUTLINED_FUNCTION_7_51();
    v49(v48);
    (*(*v20 + 208))(COERCE_DOUBLE(*&v47), 0);
  }

  v50 = (*(*a1 + 304))(v41);
  if ((v51 & 1) != 0 || !v20)
  {
    v59 = OUTLINED_FUNCTION_74();
    v60(v59);
  }

  else
  {
    v52 = *&v50;
    type metadata accessor for SportsScoreboardViewAccessibleView();

    v53 = v68;
    sub_1E3746E10(v68);
    v54 = OUTLINED_FUNCTION_53();
    v55(v54);
    OUTLINED_FUNCTION_12_30();
    v56 = sub_1E3AC5CD8(v53, v8, v52);
    sub_1E325F6F0(v8, &qword_1ECF2A250);
    v57 = *(v11 + 8);
    v57(v53, v9);
    (*(*v20 + 312))(COERCE_DOUBLE(*&v56), 0);

    v58 = OUTLINED_FUNCTION_74();
    (v57)(v58);
    return v67;
  }

  return v20;
}

uint64_t sub_1E3802680@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v58 = v9;
  v59 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v19);
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v57[2] = a3;
    if (a2)
    {
      type metadata accessor for TextLayout();
      swift_dynamicCastClass();
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v57[0] = type metadata accessor for SportsScoreboardViewAccessibleView();
    v57[1] = v3;
    v25 = *(**(*(v3 + *(v57[0] + 28)) + 216) + 176);

    v25(v60, v26);
    v27 = v60[0];
    v28 = v60[1];
    v29 = v60[2];
    v30 = v60[3];

    if (v61)
    {
      v35 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v31.n128_u64[0] = v27;
      v32.n128_u64[0] = v28;
      v33.n128_u64[0] = v29;
      v34.n128_u64[0] = v30;
      v35 = j_nullsub_1(v31, v32, v33, v34);
    }

    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = sub_1E4202734();
    (*(v58 + 32))(v16, v12, v59);
    v44 = &v16[*(v13 + 36)];
    *v44 = v43;
    *(v44 + 1) = v39;
    *(v44 + 2) = v40;
    *(v44 + 3) = v41;
    *(v44 + 4) = v42;
    v44[40] = 0;
    v45 = sub_1E3827278();

    if (v45)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    sub_1E3741EA0(v16, v4, &qword_1ECF28CC0);
    *(v4 + *(v17 + 36)) = v46;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v47, v48, v49);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v50, v51, v52);
    OUTLINED_FUNCTION_21_18();
    return __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  }

  else
  {
    OUTLINED_FUNCTION_21_18();

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

void sub_1E3802A14()
{
  OUTLINED_FUNCTION_31_1();
  v76 = v1;
  v72 = v2;
  v70 = v3;
  v5 = v4;
  v79 = v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEF8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v75 = v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF00);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v78 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v77 = v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v68 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v65 - v25;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF08);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v65 - v39;
  v41 = type metadata accessor for SportsScoreboardViewAccessibleView();
  v42 = (*(**(v5 + *(v41 + 24)) + 1232))();
  v80 = v5;
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    sub_1E3827278();
    OUTLINED_FUNCTION_5_0();

    v66 = sub_1E3801FEC(v44);

    if (v70 && (type metadata accessor for ImageViewModel(), (v45 = swift_dynamicCastClass()) != 0))
    {
      v46 = v45;

      sub_1E3EB9BB4(v81);
      if (v66)
      {
        type metadata accessor for ImageLayout();
        v65 = swift_dynamicCastClass();
      }

      else
      {
        v65 = 0;
      }

      v49 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v46, v81, v65, v49 & 1, 0, 0, v67);

      sub_1E375C31C(v81);
      v50 = OUTLINED_FUNCTION_53();
      v48 = v69;
      v51(v50);
      v47 = 0;
    }

    else
    {
      v47 = 1;
      v48 = v69;
    }

    __swift_storeEnumTagSinglePayload(v29, v47, 1, v48);
    sub_1E3741EA0(v29, v32, &qword_1ECF29938);

    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v52, v53, v54);
    v43 = 0;
  }

  v55 = 1;
  __swift_storeEnumTagSinglePayload(v40, v43, 1, v71);
  v56 = v75;
  if (v72)
  {

    *v9 = sub_1E4201B84();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF18);
    sub_1E38030F4();

    sub_1E3741EA0(v9, v14, &qword_1ECF2AEF0);
    v55 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v55, 1, v73);
  sub_1E3741EA0(v14, v56, &qword_1ECF2AEF8);
  if (v76)
  {
    v57 = sub_1E41F0984();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v58)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v57 = &qword_1EE28B3B8;
    }
  }

  v59 = *v57;
  sub_1E3741EA0(v56, v0, &qword_1ECF2AEF8);
  v60 = (v0 + *(v74 + 36));
  *v60 = v59;
  v60[1] = sub_1E3803508;
  v60[2] = 0;
  v61 = v77;
  sub_1E3741EA0(v0, v77, &qword_1ECF2AF00);
  sub_1E3743538(v40, v37, &qword_1ECF2AF08);
  v62 = v78;
  sub_1E3743538(v61, v78, &qword_1ECF2AF00);
  v63 = v79;
  sub_1E3743538(v37, v79, &qword_1ECF2AF08);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF10);
  sub_1E3743538(v62, v63 + *(v64 + 48), &qword_1ECF2AF00);
  sub_1E325F6F0(v61, &qword_1ECF2AF00);
  sub_1E325F6F0(v40, &qword_1ECF2AF08);
  sub_1E325F6F0(v62, &qword_1ECF2AF00);
  sub_1E325F6F0(v37, &qword_1ECF2AF08);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38030F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v46 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v45 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v43 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = sub_1E39C408C(10);
  v44 = v1;
  if (v25)
  {
    if (*v25 == _TtC8VideosUI13TextViewModel)
    {
      v26 = *(v1 + *(type metadata accessor for SportsScoreboardViewAccessibleView() + 28));
      OUTLINED_FUNCTION_5_0();
      if (*(v26 + 248))
      {
      }

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      (*(v45 + 32))(v24, v10, v3);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21_18();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = sub_1E39C408C(23);
  if (v31)
  {
    if (*v31 == _TtC8VideosUI13TextViewModel)
    {
      v32 = *(v44 + *(type metadata accessor for SportsScoreboardViewAccessibleView() + 28));
      OUTLINED_FUNCTION_5_0();
      if (*(v32 + 248))
      {
      }

      OUTLINED_FUNCTION_18();
      v33 = v43;
      sub_1E3F23370();

      (*(v45 + 32))(v21, v33, v3);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21_18();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1E3743538(v24, v18, &qword_1ECF29210);
  sub_1E3743538(v21, v15, &qword_1ECF29210);
  v38 = v46;
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v39, v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF20);
  sub_1E3743538(v15, v38 + *(v42 + 48), &qword_1ECF29210);
  OUTLINED_FUNCTION_27_12(v21);
  OUTLINED_FUNCTION_27_12(v24);
  OUTLINED_FUNCTION_27_12(v15);
  OUTLINED_FUNCTION_27_12(v18);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3803510()
{
  sub_1E38038D0();
  result = sub_1E4201D74();
  qword_1EE28B3B8 = result;
  return result;
}

void sub_1E3803584()
{
  sub_1E3803688(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
  if (v0 <= 0x3F)
  {
    sub_1E3803688(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsScoreboardLayout();
        if (v3 <= 0x3F)
        {
          sub_1E374A270();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3803688(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E38036DC()
{
  result = qword_1ECF2AE80;
  if (!qword_1ECF2AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AE70);
    sub_1E32752B0(&qword_1ECF2AE88, &qword_1ECF2AE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE80);
  }

  return result;
}

unint64_t sub_1E3803794()
{
  result = qword_1ECF2AEB8;
  if (!qword_1ECF2AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AE98);
    sub_1E32752B0(&qword_1ECF2AEC0, &qword_1ECF2AEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AEB8);
  }

  return result;
}

uint64_t sub_1E3803844(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E380388C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1E38038D0()
{
  result = qword_1EE2AA1D0[0];
  if (!qword_1EE2AA1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2AA1D0);
  }

  return result;
}

uint64_t type metadata accessor for OfferCard()
{
  result = qword_1EE28F290;
  if (!qword_1EE28F290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3803980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfferCard();
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v8 = (a3 + *(v6 + 32));
  type metadata accessor for ViewInteractionStates();
  v24[0] = sub_1E3B1E0A8(0);
  sub_1E42038E4();
  v9 = v26[1];
  *v8 = v26[0];
  v8[1] = v9;
  *a3 = a1;
  v10 = *(*a1 + 392);

  v12 = v10(v11);

  if (v12)
  {
    v13 = *v12;
    if (*v12 == _TtC8VideosUI15OfferCardLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for OfferCardLayout();
  v12 = sub_1E3FB6848();
  v13 = *v12;
LABEL_5:
  isa = v13[12].isa;

  *(a3 + 16) = (isa)(v15);
  if (*(a2 + 136))
  {

    result = sub_1E37E6F2C(a2);
  }

  else
  {
    v17 = *(a2 + 120);
    cache = (*v12)[4].cache;
    v19 = cache(v24);
    if (v25)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = *&v24[1];
    }

    (cache)(v26, v19);

    v21 = *&v26[3];
    if (v27)
    {
      v21 = 0.0;
    }

    v22 = v17 - v20 - v21;
    v23 = sub_1E374E9C4();
    (*(*v23 + 256))(*&v22, 0);
    sub_1E37E6F2C(a2);
  }

  *(a3 + 8) = v12;
  return result;
}

uint64_t sub_1E3803C24@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v82 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v80 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v79 = v5 - v4;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v77 = v7;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v76 = v9 - v8;
  v10 = type metadata accessor for OfferCard();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF30);
  OUTLINED_FUNCTION_0_10();
  v68 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF38);
  OUTLINED_FUNCTION_0_10();
  v69 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF40);
  OUTLINED_FUNCTION_0_10();
  v70 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v67 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF50);
  OUTLINED_FUNCTION_0_10();
  v74 = v29;
  v75 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v72 = &v67 - v31;
  sub_1E3804370(v18);
  v32 = v1;
  sub_1E380498C(v1, v13);
  v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = swift_allocObject();
  sub_1E3806224(v13, v34 + v33, type metadata accessor for OfferCard);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF58);
  OUTLINED_FUNCTION_5_45();
  v38 = sub_1E3804AC4(v36, &qword_1ECF2AF58, &unk_1E429F9D8, v37);
  v85 = v35;
  v86 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = j__OUTLINED_FUNCTION_18();
  sub_1E383F5C4(v40 & 1, sub_1E38049F0, v34, 0, 0, v14, OpaqueTypeConformance2);

  (*(v68 + 8))(v18, v14);
  v41 = v32[1];
  v85 = v14;
  v86 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v18) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v34) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v14) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v43 = OUTLINED_FUNCTION_51_1();
  v44 = v18 & 1;
  v45 = v67;
  sub_1E383F6D4(v41, v44, v34 & 1, v14 & 1, v43 & 1, v19, v42);
  v46 = OUTLINED_FUNCTION_74();
  v48 = v47(v46);
  v49 = (*(**v32 + 392))(v48);
  if (v49 && ((*(*v49 + 152))(&v85), v50 = v85, v51 = v86, v52 = v87, v53 = v88, , (v89 & 1) == 0))
  {
    v54.n128_u64[0] = v50;
    v55.n128_u64[0] = v51;
    v56.n128_u64[0] = v52;
    v57.n128_u64[0] = v53;
    j_nullsub_1(v54, v55, v56, v57);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v58 = sub_1E4202734();
  (*(v70 + 32))(v27, v45, v71);
  v59 = v73;
  v60 = &v27[*(v73 + 36)];
  *v60 = v58;
  OUTLINED_FUNCTION_11_4(v60);
  v61 = v76;
  sub_1E4202474();
  v62 = sub_1E3804C8C();
  v63 = v72;
  sub_1E4203224();
  (*(v77 + 8))(v61, v78);
  sub_1E325F6F0(v27, &qword_1ECF2AF48);
  v64 = v79;
  sub_1E4201C94();
  v83 = v59;
  v84 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v75;
  sub_1E4203294();
  (*(v80 + 8))(v64, v82);
  return (*(v74 + 8))(v63, v65);
}

uint64_t sub_1E3804370@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v80 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v73 - v5);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v73 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  type metadata accessor for OfferCard();
  sub_1E3746E10(v22);
  v23 = v22;
  v24 = sub_1E3B0352C();
  (*(v18 + 8))(v22, v16);
  if (v24)
  {
    sub_1E4201D54();
    OUTLINED_FUNCTION_13_41();
    v26 = (*(v25 + 1152))();
    v81 = v16;
    v82 = v26;
    LOBYTE(v83) = v27 & 1;
    sub_1E37E65E0();
  }

  else
  {
    sub_1E4201B84();
    OUTLINED_FUNCTION_13_41();
    v29 = (*(v28 + 1152))();
    v81 = v16;
    v82 = v29;
    LOBYTE(v83) = v30 & 1;
    sub_1E37E658C();
  }

  v31 = sub_1E4203E84();
  (*(*v22 + 176))(&v81);
  if (v85)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v34.n128_u64[0] = v83;
    v35.n128_u64[0] = v84;
    v32.n128_u64[0] = v81;
    v33.n128_u64[0] = v82;
    j_nullsub_1(v32, v33, v34, v35);
  }

  if (v24)
  {
    v36 = 2;
  }

  else
  {
    v36 = *(v3 + 16);
  }

  (*(*v22 + 488))(v36);
  *v6 = v31;
  v37 = *(v74 + 44);

  sub_1E3804E24(v6 + v37);
  v38 = sub_1E4202764();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v38)
  {
    v39 = sub_1E4202774();
  }

  sub_1E4200A54();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1E3741EA0(v6, v9, &qword_1ECF2AFA0);
  v48 = &v9[*(v75 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_1E4202784();
  v50 = sub_1E4202774();
  sub_1E4202774();
  v51 = sub_1E4202774();
  v52 = v78;
  if (v51 != v49)
  {
    v50 = sub_1E4202774();
  }

  sub_1E4200A54();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_1E3741EA0(v9, v12, &qword_1ECF2AF90);
  v61 = &v12[*(v76 + 36)];
  *v61 = v50;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  v62 = sub_1E4202744();
  v63 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v62)
  {
    v63 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v12, v52, &qword_1ECF2AF80);
  v64 = (v52 + *(v77 + 36));
  *v64 = v63;
  v65 = OUTLINED_FUNCTION_12_31(v64);
  v66 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v65)
  {
    v66 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v52, v2, &qword_1ECF2AF70);
  v67 = (v2 + *(v79 + 36));
  *v67 = v66;
  OUTLINED_FUNCTION_11_4(v67);
  OUTLINED_FUNCTION_5_45();
  sub_1E3804AC4(v68, &qword_1ECF2AF58, &unk_1E429F9D8, v69);
  sub_1E3883AF4(v23);

  v70 = OUTLINED_FUNCTION_74();
  return sub_1E325F6F0(v70, v71);
}

uint64_t sub_1E380498C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38049F0()
{
  v0 = type metadata accessor for OfferCard();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0);
  sub_1E42038F4();
  sub_1E3B1E260();
}

uint64_t sub_1E3804AC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1E3804BA8()
{
  result = qword_1ECF2AF98;
  if (!qword_1ECF2AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AFA0);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0);
    sub_1E32752B0(&qword_1ECF2AFA8, &qword_1ECF2AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AF98);
  }

  return result;
}

unint64_t sub_1E3804C8C()
{
  result = qword_1ECF2AFB8;
  if (!qword_1ECF2AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF58);
    sub_1E3804AC4(&qword_1ECF2AF60, &qword_1ECF2AF58, &unk_1E429F9D8, sub_1E3804A94);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AFB8);
  }

  return result;
}

uint64_t sub_1E3804E24@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v28 - v23;
  sub_1E38050D8();
  sub_1E38056C0();
  sub_1E3805B14(v8);
  sub_1E3743538(v24, v21, &qword_1ECF2AFE0);
  sub_1E3743538(v16, v13, &qword_1ECF2AFD8);
  sub_1E3743538(v8, v5, &qword_1ECF29938);
  v25 = v29;
  sub_1E3743538(v21, v29, &qword_1ECF2AFE0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE8);
  sub_1E3743538(v13, v25 + *(v26 + 48), &qword_1ECF2AFD8);
  sub_1E3743538(v5, v25 + *(v26 + 64), &qword_1ECF29938);
  sub_1E325F6F0(v8, &qword_1ECF29938);
  sub_1E38061BC(v16);
  sub_1E325F6F0(v24, &qword_1ECF2AFE0);
  sub_1E325F6F0(v5, &qword_1ECF29938);
  sub_1E38061BC(v13);
  return sub_1E325F6F0(v21, &qword_1ECF2AFE0);
}

void sub_1E38050D8()
{
  OUTLINED_FUNCTION_21_5();
  v53 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF8);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51[-v9];
  v11 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  type metadata accessor for OfferCard();
  sub_1E3746E10(v17);
  sub_1E3B0352C();
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_8();
  (*(v18 + 176))(v54);
  if (v55)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v22.n128_u64[0] = v54[3];
    v21.n128_u64[0] = v54[2];
    v20.n128_u64[0] = v54[1];
    v19.n128_u64[0] = v54[0];
    j_nullsub_1(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 488))();
  if (v24)
  {
    v25 = sub_1E373E010(39, v24);

    if (v25)
    {
      v26 = *(*v25 + 392);

      v28 = v26(v27);

      if (v28)
      {
        type metadata accessor for ImageLayout();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          OUTLINED_FUNCTION_8();
          v31 = *(v30 + 304);

          v33 = COERCE_DOUBLE(v31(v32));
          v35 = v34;

          if (v35)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = v33;
          }

          v37 = *(*v29 + 1704);

          v39 = v37(v38);

          if (v39 != 2 && (v39 & 1) != 0)
          {
            [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v36];
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v25 = 0;
  }

  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B010);
  sub_1E3805CC0(v25, &v5[*(v40 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v5, v0, &qword_1ECF2AFF8);
  memcpy((v0 + *(v6 + 36)), v56, 0x70uLL);
  v41 = sub_1E4202744();
  v42 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v41)
  {
    v42 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v43 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v43, v44, v45);
  v46 = &v10[*(v52 + 36)];
  *v46 = v42;
  v47 = OUTLINED_FUNCTION_12_31(v46);
  v48 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    v48 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v49 = v53;
  sub_1E3741EA0(v10, v53, &qword_1ECF2B008);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE0) + 36));
  *v50 = v48;
  OUTLINED_FUNCTION_11_4(v50);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E38056C0()
{
  OUTLINED_FUNCTION_21_5();
  v39 = v1;
  v2 = type metadata accessor for StackedTextViews(0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = (*(**v0 + 488))(v5);
  v38 = v7;
  if (v8)
  {
    v9 = v8;

    v10 = sub_1E373E010(23, v9);

    if (v10 && *v10 != _TtC8VideosUI13TextViewModel)
    {

      v10 = 0;
    }

    v11 = sub_1E373E010(17, v9);

    if (v11 && *v11 != _TtC8VideosUI13TextViewModel)
    {

      v11 = 0;
    }

    v12 = sub_1E373E010(15, v9);

    if (v12 && *v12 != _TtC8VideosUI13TextViewModel)
    {

      v12 = 0;
    }

    v13 = sub_1E373E010(222, v9);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  v14 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4298AD0;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = v12;
  OUTLINED_FUNCTION_8();
  v17 = *(v16 + 176);

  v17(v40, v18);
  if (v41)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v21.n128_u64[0] = v40[2];
    v22.n128_u64[0] = v40[3];
    v19.n128_u64[0] = v40[0];
    v20.n128_u64[0] = v40[1];
    j_nullsub_1(v19, v20, v21, v22);
  }

  v23 = v14;
  v24 = sub_1E4201D54();
  sub_1E403E278(v15, v23, v24, 1);
  v25 = sub_1E4202744();
  v26 = sub_1E4202774();
  sub_1E4202774();
  v27 = sub_1E4202774();
  v28 = v38;
  if (v27 != v25)
  {
    v26 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v29 = OUTLINED_FUNCTION_74();
  sub_1E3806224(v29, v30, v31);
  v32 = (v28 + *(v37 + 36));
  *v32 = v26;
  v33 = OUTLINED_FUNCTION_12_31(v32);
  v34 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v33)
  {
    v34 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v35 = v39;
  sub_1E3806280(v28, v39);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8) + 36));
  *v36 = v34;
  OUTLINED_FUNCTION_11_4(v36);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3805B14@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = (*(**v1 + 488))();
  if (v8)
  {
    v9 = sub_1E373E010(31, v8);

    if (v9)
    {
      type metadata accessor for ImageViewModel();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        sub_1E3EB9BB4(v18);
        v12 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v11, v18, 0, v12 & 1, 0, 0, v2);

        sub_1E375C31C(v18);
        (*(v6 + 32))(a1, v2, v4);
        return OUTLINED_FUNCTION_39_5();
      }
    }
  }

  v14 = OUTLINED_FUNCTION_34_5();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1E3805CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  if (a1 && (type metadata accessor for ImageViewModel(), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10;
    v12 = *(*v10 + 392);

    if (v12(v13))
    {
      type metadata accessor for ImageLayout();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
      }
    }

    else
    {
      v14 = 0;
    }

    sub_1E3EB9BB4(v21);
    v20 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v11, v21, v14, v20 & 1, 0, 0, v9);

    sub_1E375C31C(v21);
    (*(v6 + 32))(a2, v9, v4);
    return OUTLINED_FUNCTION_39_5();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_34_5();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

void sub_1E3805EBC()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OfferCardLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3805FE8();
      if (v2 <= 0x3F)
      {
        sub_1E3806038(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1E3806038(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3805FE8()
{
  if (!qword_1EE287238)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE287238);
    }
  }
}

void sub_1E3806038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E380609C()
{
  result = qword_1ECF2AFC0;
  if (!qword_1ECF2AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF48);
    sub_1E3804C8C();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AFC0);
  }

  return result;
}

unint64_t sub_1E3806164()
{
  result = qword_1EE288768;
  if (!qword_1EE288768)
  {
    sub_1E4202624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288768);
  }

  return result;
}

uint64_t sub_1E38061BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3806224(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3806280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3806314(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3806360(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appContext;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38063DC;
}

void sub_1E38063DC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9(a1);
  swift_unknownObjectWeakAssign();
  if (v3)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

uint64_t sub_1E3806464(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_15_0();
  return a2(v2 + v4);
}

uint64_t sub_1E38064AC()
{
  OUTLINED_FUNCTION_37();
  swift_weakAssign();
}

void (*sub_1E38064FC(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_parent;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E3806578;
}

void sub_1E3806578(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9(a1);
  swift_weakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

double variable initialization expression of DocumentServiceRequestContext.contextDataRef@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1E380665C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_15_0();
  return sub_1E3294F34(v2 + v4, a2);
}

uint64_t sub_1E38066B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1E380680C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_37();
  *(v2 + v4) = a1;
}

uint64_t DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(char a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = swift_allocObject();
  DocumentServiceRequestContext.init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DocumentServiceRequestContext.init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(char a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v26 = a6;
  v27 = a7;
  v24 = a3;
  v25 = a4;
  v13 = sub_1E41FE624();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v17 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef);
  *v18 = 0u;
  v18[1] = 0u;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_updateContextDataRef) = 0;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appendContextDataRef) = 0;
  sub_1E41FE614();
  (*(v14 + 32))(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID, v16, v13);
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates) = a8;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType) = a1;
  v19 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  v21 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef;
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(v26, v8 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef;
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(v27, v8 + v22);
  swift_endAccess();
  return v8;
}

uint64_t sub_1E3806B44@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  strcpy((inited + 32), "documentType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = DocumentType.rawValue.getter(*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType));
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v5;
  strcpy((inited + 80), "controllerRef");
  *(inited + 94) = -4864;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  *(inited + 96) = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  *(inited + 104) = v7;
  *(inited + 120) = v5;
  strcpy((inited + 128), "contextDataRef");
  *(inited + 143) = -18;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 216);

  v9(v10);
  *(inited + 176) = 0x6863746566657270;
  *(inited + 184) = 0xEF66655261746144;
  OUTLINED_FUNCTION_8();
  (*(v11 + 240))();
  *(inited + 224) = 0x5474736575716572;
  *(inited + 232) = 0xEB00000000657079;
  v12 = ViewModelRequestType.rawValue.getter(*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType));
  *(inited + 264) = v5;
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  ViewModelKeys.rawValue.getter(34);
  *(inited + 272) = v14;
  *(inited + 280) = v15;
  v16 = (*(*v1 + 264))();
  v17 = v16;
  if (v16)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    *(inited + 296) = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v17;
  *(inited + 312) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v18 = sub_1E4205CB4();
  if (sub_1E37D01CC())
  {
    OUTLINED_FUNCTION_8();
    v20 = (*(v19 + 288))();
    if (v20)
    {
      *&v27 = v20;
      *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1E3807164(&v27, 0xD000000000000014, 0x80000001E425E740);
    }

    else
    {
      v21 = sub_1E327D33C(0xD000000000000014, 0x80000001E425E740);
      if (v22)
      {
        v23 = v21;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B028);
        sub_1E4207644();

        v24 = (*(v18 + 56) + 32 * v23);
        v25 = v24[1];
        v27 = *v24;
        v28 = v25;
        sub_1E4207664();
      }

      else
      {
        v27 = 0uLL;
        *&v28 = 0;
        *(&v28 + 1) = 1;
      }

      sub_1E325F6F0(&v27, &qword_1ECF2B020);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  a1[3] = result;
  *a1 = v18;
  return result;
}

uint64_t DocumentServiceRequestContext.deinit()
{
  v1 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appContext);
  swift_weakDestroy();

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef, &unk_1ECF296E0);
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef, &unk_1ECF296E0);

  return v0;
}

uint64_t DocumentServiceRequestContext.__deallocating_deinit()
{
  DocumentServiceRequestContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3807068@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3807164(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B028);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 32 * v11;

    return sub_1E37EB5D0(a1, v16);
  }

  else
  {
    sub_1E38073E0(v11, a2, a3, a1, v15);
  }
}

uint64_t type metadata accessor for DocumentServiceRequestContext()
{
  result = qword_1EE293600;
  if (!qword_1EE293600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3807304()
{
  result = sub_1E41FE624();
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

unint64_t sub_1E38073E0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
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

uint64_t sub_1E3807434@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for MediaShowcasingButtonsPresenter();
  OUTLINED_FUNCTION_2_36();
  sub_1E380E6AC(v6);
  result = sub_1E42010C4();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = sub_1E38074D0;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  return result;
}

void sub_1E38074D8()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B030);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B048);
  OUTLINED_FUNCTION_0_10();
  v42 = v10;
  v43 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  switch(*(v0 + 16))
  {
    case 1:
      v37 = &v42 - v17;
      sub_1E3807F88();
      v38 = v42;
      v39 = v43;
      (*(v42 + 16))(v2, v13, v43);
      swift_storeEnumTagMultiPayload();
      sub_1E3807EA8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090);
      OUTLINED_FUNCTION_1();
      v41 = sub_1E3743478(v40);
      OUTLINED_FUNCTION_25_21(v41);
      sub_1E4201F44();
      sub_1E3743538(v37, v1, &qword_1ECF2B060);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      sub_1E325F69C(v37, &qword_1ECF2B060);
      (*(v38 + 8))(v13, v39);
      goto LABEL_7;
    case 2:
    case 3:
      OUTLINED_FUNCTION_84_5();
      swift_storeEnumTagMultiPayload();
      sub_1E3807AAC();
      sub_1E4201F44();
      v18 = &qword_1ECF2B038;
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v19, v20, v21);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      v22 = v4;
      goto LABEL_4;
    case 4:
      sub_1E3808158();
      v18 = &qword_1ECF2B040;
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v23, v24, v25);
      OUTLINED_FUNCTION_84_5();
      swift_storeEnumTagMultiPayload();
      sub_1E3807AAC();
      sub_1E4201F44();
      v26 = OUTLINED_FUNCTION_47_4();
      sub_1E3743538(v26, v27, &qword_1ECF2B038);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      sub_1E325F69C(v4, &qword_1ECF2B038);
      v22 = v3;
LABEL_4:
      v28 = v18;
      goto LABEL_6;
    default:
      type metadata accessor for MediaShowcasingButtonsPresenter();
      OUTLINED_FUNCTION_2_36();
      sub_1E380E6AC(v29);

      OUTLINED_FUNCTION_82();
      v30 = sub_1E42010C4();
      *v2 = 0;
      *(v2 + 8) = v30;
      *(v2 + 16) = v31;
      swift_storeEnumTagMultiPayload();
      sub_1E3807EA8();

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090);
      OUTLINED_FUNCTION_1();
      v33 = sub_1E3743478(v32);
      OUTLINED_FUNCTION_25_21(v33);
      sub_1E4201F44();
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v34, v35, v36);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
LABEL_6:
      sub_1E325F69C(v22, v28);
LABEL_7:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

unint64_t sub_1E3807AAC()
{
  result = qword_1EE288708;
  if (!qword_1EE288708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
    sub_1E3807BCC();
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288708);
  }

  return result;
}

unint64_t sub_1E3807BCC()
{
  result = qword_1EE2899E8;
  if (!qword_1EE2899E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B070);
    sub_1E3807CC0();
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&unk_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899E8);
  }

  return result;
}

unint64_t sub_1E3807CC0()
{
  result = qword_1EE289D98;
  if (!qword_1EE289D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B070);
    sub_1E3743478(&unk_1EE289DD8);
    sub_1E3743478(&unk_1EE288320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289D98);
  }

  return result;
}

unint64_t sub_1E3807DA4()
{
  result = qword_1ECF2B088;
  if (!qword_1ECF2B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B060);
    sub_1E3807EA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090);
    sub_1E3743478(&unk_1EE288520);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B088);
  }

  return result;
}

unint64_t sub_1E3807EA8()
{
  result = qword_1ECF46FA0[0];
  if (!qword_1ECF46FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46FA0);
  }

  return result;
}

unint64_t sub_1E3807EFC()
{
  result = qword_1EE288DF0;
  if (!qword_1EE288DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B038);
    sub_1E3807AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DF0);
  }

  return result;
}

uint64_t sub_1E3807F88()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = *(v0 + 8);
  v5 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  if (*(v4 + v5) && (OUTLINED_FUNCTION_8(), v7 = *(v6 + 488), v8 = , v9 = v7(v8), , v9) && (v10 = sub_1E373E010(91, v9), , v10))
  {
    OUTLINED_FUNCTION_30_1();
    (*(v11 + 464))();
    OUTLINED_FUNCTION_35_0();
  }

  else
  {
  }

  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0B8);
  OUTLINED_FUNCTION_76_0();
  sub_1E3809CBC();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_13();
  v13 = sub_1E3743478(v12);
  sub_1E418F2CC(1, v2, v13);
  OUTLINED_FUNCTION_40_13();
  return sub_1E325F69C(v14, v15);
}

void sub_1E3808158()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B188);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = *(v0 + 8);
  v9 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  if (*(v8 + v9) && (OUTLINED_FUNCTION_8(), v11 = *(v10 + 488), v12 = , v11(v12), OUTLINED_FUNCTION_89_3(), v11))
  {
    sub_1E373E010(91, v11);
    OUTLINED_FUNCTION_35_0();

    OUTLINED_FUNCTION_8();
    (*(v13 + 464))();
    OUTLINED_FUNCTION_89_3();
  }

  else
  {
  }

  v14 = *(v8 + v9);
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = *(*v14 + 392);

  if (!v15(v16))
  {

LABEL_11:

LABEL_12:
    v17 = 1;
    goto LABEL_13;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  sub_1E380852C();

  (*(v6 + 32))(v3, v1, v4);
  v17 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v3, v17, 1, v4);
  OUTLINED_FUNCTION_25_2();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E38083DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E380841C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3808474()
{
  result = qword_1ECF2B098;
  if (!qword_1ECF2B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0A0);
    sub_1E3807DA4();
    sub_1E3807EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B098);
  }

  return result;
}

void sub_1E380852C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v99 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v98 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v94 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v92 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v19 - v18);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B190);
  OUTLINED_FUNCTION_0_10();
  v89 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B198);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1A0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v29 = v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v32 = v31;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B068);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 152);
  v36(v104);
  if ((v105 & 1) == 0)
  {
    sub_1E3952BE0(v104[0], v104[1], v104[2], v104[3]);
  }

  v84 = *(v4 + 216);
  v37 = objc_opt_self();
  v102 = v4;
  if ([v37 isPhone])
  {
    v83 = 1;
  }

  else
  {
    v83 = [v37 isPad];
  }

  v38 = v106;
  v36(v106);
  if (v107)
  {
    v38 = MEMORY[0x1E69DDCE0];
    v39 = *(MEMORY[0x1E69DDCE0] + 8);
    v40 = *(MEMORY[0x1E69DDCE0] + 16);
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v39 = *&v106[1];
    v40 = *&v106[2];
    v41 = *&v106[3];
  }

  sub_1E4123084(v102[120], v108, *v38, v39, v40, v41);
  v42 = v109;
  v43 = v108[1];
  *v32 = v108[0];
  *(v32 + 16) = v43;
  *(v32 + 32) = v42;
  if (sub_1E32AE9B0(v6))
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    [v37 isTV];
    sub_1E3809044();

    sub_1E3741EA0(v1, v29, &qword_1ECF2B198);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v44, 1, v85);
  v81 = v32;
  v45 = v32 + *(v101 + 44);

  v46 = sub_1E3809B68(1, v6);
  sub_1E380DFBC(v46, v47, v48, v49);
  v51 = v50;
  swift_unknownObjectRelease();
  v103[3] = v51;
  swift_getKeyPath();
  v112[0] = *v2;
  v110 = *(v2 + 24);
  v111 = *(v2 + 40);
  v52 = swift_allocObject();
  v53 = *(v2 + 16);
  *(v52 + 16) = *v2;
  *(v52 + 32) = v53;
  *(v52 + 41) = *(v2 + 25);
  *(v52 + 64) = v84;
  *(v52 + 72) = v83;
  OUTLINED_FUNCTION_2_4();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E380E150;
  *(v54 + 24) = v52;
  sub_1E3743538(v112, v103, &qword_1ECF2B180);

  sub_1E3743538(&v110, v103, &qword_1ECF35A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38);
  OUTLINED_FUNCTION_24_11();
  sub_1E3743478(v55);
  sub_1E375BEF4();
  sub_1E380E194();
  sub_1E4203B34();
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v56, v57, v58);
  v59 = *(v89 + 16);
  v60 = OUTLINED_FUNCTION_27_0();
  v59(v60);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v61, v62, v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B240);
  (v59)(v45 + *(v64 + 48), v88, v90);
  v65 = *(v89 + 8);
  v65(v87, v90);
  sub_1E325F69C(v29, &qword_1ECF2B1A0);
  v65(v88, v90);
  sub_1E325F69C(v86, &qword_1ECF2B1A0);
  (*(v92 + 104))(v91, *MEMORY[0x1E697E668], v94);
  v66 = swift_allocObject();
  v67 = *(v2 + 16);
  *(v66 + 16) = *v2;
  *(v66 + 32) = v67;
  *(v66 + 41) = *(v2 + 25);
  *(v66 + 64) = v102;
  sub_1E3743538(v112, v103, &qword_1ECF2B180);
  sub_1E3743538(&v110, v103, &qword_1ECF35A90);
  v68 = sub_1E3807CC0();

  v69 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v91, v69 & 1, sub_1E380E64C, v66, v101, v68);

  (*(v92 + 8))(v91, v94);
  sub_1E325F69C(v81, &qword_1ECF2B070);
  sub_1E4201AF4();
  (*(v98 + 16))(v96, v97, v99);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v70);
  OUTLINED_FUNCTION_32_0();
  v71 = sub_1E4200E14();
  v72 = OUTLINED_FUNCTION_76_0();
  v74 = v73(v72);
  *(v95 + *(v93 + 36)) = v71;
  v75 = (*(*v102 + 1920))(v74);
  if (v75 == 13)
  {
    v76 = sub_1E42012F4();
    v77 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v76);
  }

  else
  {
    v77 = v82;
    sub_1E3B033CC(v75, v82);
  }

  sub_1E3B03114(v77, v100);
  sub_1E325F69C(v77, &qword_1ECF2A250);
  sub_1E3807BCC();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_55_0();
  sub_1E3743478(v78);
  sub_1E4202FA4();
  v79 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v79, v80);
  sub_1E325F69C(v95, &qword_1ECF2B068);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3809044()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v127 = v3;
  v126 = v4;
  v6 = v5;
  v131 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B218);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v112 - v10);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B208);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B248);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v130 = v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v123 = v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v125 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1E8);
  OUTLINED_FUNCTION_17_2(v23);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_1();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v119 = v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v117 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v120 = v31;
  v32 = sub_1E3B21A30();
  v33 = *sub_1E32A9398();
  v34 = sub_1E3C14D60();

  if ((sub_1E373F6E0() & 1) != 0 && (v32 & 1) != 0 && (v34 & 1) == 0)
  {
    v35 = *(v2 + 3);
    v36 = *(v2 + 4);
    v116 = v11;
    v37 = *(v2 + 40);
    v38 = type metadata accessor for CountDownProgressPresenter();
    OUTLINED_FUNCTION_4_39();
    sub_1E380E6AC(v39);
    v114 = v36;
    v115 = v35;
    v113 = v37;
    v11 = v116;
    v112 = v38;
    sub_1E4200BC4();
    LOBYTE(v36) = sub_1E3C13D98(*(v6 + 16), *(v6 + 24));

    if ((v36 & 1) == 0)
    {
      v61 = objc_opt_self();
      v62 = [v61 defaultCenter];
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B268);
      sub_1E4206C14();

      v63 = [v61 defaultCenter];
      v64 = *sub_1E394E1E8();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1F8);
      v66 = v64;
      sub_1E4206C14();

      type metadata accessor for ButtonLayout();

      sub_1E3BBFC3C(1);
      OUTLINED_FUNCTION_45_1();
      sub_1E4200BC4();
      v67 = OUTLINED_FUNCTION_76_0();
      sub_1E3C14148(v67, v68, v69, v70);
      v139 = *v2;
      OUTLINED_FUNCTION_44_8();
      v71 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v71);
      memcpy(v1, v136, 0x59uLL);
      v72 = &v1[*(v116 + 56)];
      *v72 = sub_1E380E6F0;
      v72[1] = v71;
      OUTLINED_FUNCTION_44_8();
      v73 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v73);
      v74 = &v1[*(v65 + 56)];
      *v74 = sub_1E380E818;
      v74[1] = v75;
      v76 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v76);
      *(v77 + 64) = v6;
      v78 = &v1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1E8) + 36)];
      *v78 = 0;
      *(v78 + 1) = 0;
      *(v78 + 2) = sub_1E380E900;
      *(v78 + 3) = v76;
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();

      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();
      if (v126)
      {
        OUTLINED_FUNCTION_8();
        (*(v79 + 304))();
      }

      sub_1E4203DA4();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_36_0();
      sub_1E4200D94();
      v93 = v119;
      sub_1E3741EA0(v1, v119, &qword_1ECF2B1E8);
      v94 = v117;
      v95 = (v93 + *(v118 + 36));
      v96 = *&v136[16];
      *v95 = *v136;
      v95[1] = v96;
      v95[2] = *&v136[32];
      v97 = OUTLINED_FUNCTION_63_0();
      sub_1E3741EA0(v97, v98, v99);
      *(v94 + *(v121 + 36)) = v127 & 1;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v100, v101, v102);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v103, v104, v105);
      swift_storeEnumTagMultiPayload();
      sub_1E380E2AC();
      sub_1E380E47C();
      v106 = v125;
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v107, v108, v109);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B228);
      sub_1E380E220();
      sub_1E380E534();
      sub_1E4201F44();
      sub_1E325F69C(v106, &qword_1ECF2B1B8);
      goto LABEL_17;
    }
  }

  *&v136[24] = &unk_1F5D5D0A8;
  *&v136[32] = &off_1F5D5C758;
  v136[0] = 2;
  v40 = j__OUTLINED_FUNCTION_18();
  v41 = sub_1E39C29F0(v136, v40 & 1);
  __swift_destroy_boxed_opaque_existential_1(v136);
  if ((v41 & 1) == 0)
  {
    *&v45 = OUTLINED_FUNCTION_34_17();
    v140 = 2;
    v141 = 0;
    *(v46 + 8) = v45;
    *(v46 + 24) = v45;
    v142 = 1;
    v143 = 0;
    v134 = 0;
    v132 = v45;
    v133 = v45;
    v47 = v126;

    v48 = sub_1E383C8A8();
    sub_1E383C8B0();
    v49 = OUTLINED_FUNCTION_39_3();
    v56 = sub_1E383C8FC(v49, v50, v51, v52, v53, 0, 1, v54, v55, v48);
    if (v47)
    {
      (*(*v47 + 304))(v56);
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    memcpy(v135, v136, 0xF8uLL);
    memcpy(v136, v135, sizeof(v136));
    v137 = v127 & 1;
    v138 = 0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v57, v58, v59);
    swift_storeEnumTagMultiPayload();
    v60 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v60);
    sub_1E380E220();
    sub_1E380E534();
    OUTLINED_FUNCTION_69_0();
    sub_1E4201F44();
LABEL_17:
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v110, v111);
    goto LABEL_18;
  }

  v42 = sub_1E4201D44();
  v43 = 0.0;
  if (v126 && ((*(*v126 + 152))(v136), (v136[32] & 1) == 0))
  {
    v43 = sub_1E3952BD8(*v136, *&v136[8], *&v136[16]);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  *v11 = v42;
  v11[1] = v43;
  *(v11 + 16) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B258);
  v80 = v127 & 1;
  sub_1E380B58C();
  sub_1E3741EA0(v11, v15, &qword_1ECF2B218);
  v81 = (v15 + *(v124 + 36));
  *v81 = v80;
  v81[1] = 0;
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v82, v83, v84);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v85, v86, v87);
  swift_storeEnumTagMultiPayload();
  sub_1E380E2AC();
  sub_1E380E47C();
  v88 = v125;
  sub_1E4201F44();
  sub_1E3743538(v88, v130, &qword_1ECF2B1B8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B228);
  sub_1E380E220();
  sub_1E380E534();
  sub_1E4201F44();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v89, v90);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v91, v92);
LABEL_18:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3809B68(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for ViewModel();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1E3809CBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0C0);
  OUTLINED_FUNCTION_0_10();
  v58 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v57 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v56 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0E0);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v18 = *(v2 + 8);
  v19 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  v20 = *(v18 + v19);
  if (!v20)
  {
    v38 = 1;
    goto LABEL_14;
  }

  v21 = *(*v20 + 392);

  if (!v21(v22))
  {
LABEL_9:

    v38 = 1;
    goto LABEL_14;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_9;
  }

  v23 = sub_1E3B21080();
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_81_3();
      sub_1E380A6FC();
      v14 = v56;
      v24 = OUTLINED_FUNCTION_47_4();
      v25(v24);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8);
      v26 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v26);
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_55_0();
      sub_1E380D924(v27);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_167_0();
      v29 = sub_1E3743478(v28);
      OUTLINED_FUNCTION_22_17(v29);
      swift_getOpaqueTypeConformance2();
      v30 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v30);
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_167_0();
      v32 = sub_1E380D924(v31);
      OUTLINED_FUNCTION_64_7(v32);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v33, v34, v35);
      swift_storeEnumTagMultiPayload();
      sub_1E380D764();
      sub_1E3807AAC();
      OUTLINED_FUNCTION_23_20();

      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v36, v37);
      (*(v58 + 8))(v57, v59);
    }

    else
    {
      sub_1E3808158();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v50, v51, v52);
      swift_storeEnumTagMultiPayload();
      sub_1E380D764();
      sub_1E3807AAC();
      OUTLINED_FUNCTION_23_20();

      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v53, v54);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81_3();
    sub_1E380A3CC();
    v55 = v14;
    v39 = *(v14 + 16);
    v14 = v56;
    v39(v56, v0, v60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_55_0();
    sub_1E380D924(v40);
    OUTLINED_FUNCTION_14_2();
    v42 = sub_1E3743478(v41);
    OUTLINED_FUNCTION_22_17(v42);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B150);
    OUTLINED_FUNCTION_9_30();
    v44 = sub_1E380D924(v43);
    OUTLINED_FUNCTION_64_7(v44);
    sub_1E4201F44();
    OUTLINED_FUNCTION_32_3();
    sub_1E3743538(v45, v46, v47);
    swift_storeEnumTagMultiPayload();
    sub_1E380D764();
    sub_1E3807AAC();
    OUTLINED_FUNCTION_23_20();

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v48, v49);
    (*(v55 + 8))(v0, v60);
  }

  sub_1E3741EA0(v14, v4, &qword_1ECF2B0E8);
  v38 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v4, v38, 1, v16);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380A3CC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_66_9(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v33 = v9;
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_8();
  (*(v14 + 152))(v34);
  if ((v35 & 1) == 0)
  {
    sub_1E3952BD8(v34[0], v34[1], v34[2]);
  }

  sub_1E32AE9B0(v0);
  sub_1E380AA2C();
  sub_1E4201AF4();
  v15 = OUTLINED_FUNCTION_56_8();
  v16(v15);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v17);
  OUTLINED_FUNCTION_84_5();
  v18 = sub_1E4200E14();
  v19 = OUTLINED_FUNCTION_45_1();
  v21 = v20(v19);
  *(v3 + *(v12 + 36)) = v18;
  v22 = (*(*v2 + 1920))(v21);
  if (v22 == 13)
  {
    sub_1E42012F4();
    v23 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    sub_1E3B033CC(v22, v1);
  }

  sub_1E3B03114(v1, v33);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_77();
  sub_1E380D924(v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v28);
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_77();
  sub_1E325F69C(v31, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380A6FC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_66_9(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v33 = v9;
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B150);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_8();
  (*(v14 + 152))(v34);
  if ((v35 & 1) == 0)
  {
    sub_1E3952BD8(v34[0], v34[1], v34[2]);
  }

  sub_1E32AE9B0(v0);
  sub_1E380B1A8();
  sub_1E4201AF4();
  v15 = OUTLINED_FUNCTION_56_8();
  v16(v15);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v17);
  OUTLINED_FUNCTION_84_5();
  v18 = sub_1E4200E14();
  v19 = OUTLINED_FUNCTION_45_1();
  v21 = v20(v19);
  *(v3 + *(v12 + 36)) = v18;
  v22 = (*(*v2 + 1920))(v21);
  if (v22 == 13)
  {
    sub_1E42012F4();
    v23 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    sub_1E3B033CC(v22, v1);
  }

  sub_1E3B03114(v1, v33);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_77();
  sub_1E380D924(v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v28);
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_77();
  sub_1E325F69C(v31, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380AA2C()
{
  OUTLINED_FUNCTION_31_1();
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v32 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v31 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B138);
  OUTLINED_FUNCTION_0_10();
  v27 = v11;
  v28 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B118);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  sub_1E4123084(*(v6 + 120), v35, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  v15 = v36;
  v16 = v35[1];
  *v1 = v35[0];
  *(v1 + 16) = v16;
  *(v1 + 32) = v15;
  v26 = v1 + *(v30 + 44);
  v37 = *v4;
  sub_1E3B21D98(v34);
  v17 = *(v6 + 208);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B140);
  OUTLINED_FUNCTION_26_17();
  v20 = sub_1E380ED80(v19);
  sub_1E38838AC(v17, 2u, 2, v20, v0);
  memcpy(v38, v34, 0x59uLL);
  sub_1E325F69C(v38, &qword_1ECF2B140);
  sub_1E380AE18(v29);
  *&v34[0] = v18;
  *(&v34[0] + 1) = v20;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_57();
  sub_1E3E03180();

  (*(v28 + 8))(v0, v27);
  v34[0] = *(v4 + 24);
  LOBYTE(v34[1]) = *(v4 + 40);
  OUTLINED_FUNCTION_44_8();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_72_5(v21);
  v22 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B130) + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_1E380DF04;
  v22[3] = v21;
  (*(v33 + 104))(v31, *MEMORY[0x1E697E668], v32);
  OUTLINED_FUNCTION_44_8();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_72_5(v23);
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_88_6();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_88_6();
  v24 = sub_1E380DA8C();
  OUTLINED_FUNCTION_76_0();
  v25 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v31, v25 & 1, sub_1E380DF5C, v23, v30, v24);

  (*(v33 + 8))(v31, v32);
  sub_1E325F69C(v1, &qword_1ECF2B118);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E380AE18(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v2 + 624))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 552))(), , !v4))
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_12;
  }

  v22 = &unk_1F5D7BE68;
  v23 = &off_1F5D7BC48;
  LOBYTE(v20) = 5;
  sub_1E3F9F164(&v20);

  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (!*(&v25 + 1))
  {
LABEL_12:
    v16 = &v24;
LABEL_13:
    sub_1E325F69C(v16, &unk_1ECF296E0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = v20;
  if (!(*(*a1 + 552))())
  {

    v18 = 0u;
    v19 = 0u;
LABEL_17:
    v16 = &v18;
    goto LABEL_13;
  }

  v22 = &unk_1F5D7BE68;
  v23 = &off_1F5D7BC48;
  LOBYTE(v20) = 6;
  sub_1E3F9F164(&v20);

  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (!*(&v19 + 1))
  {

    goto LABEL_17;
  }

  sub_1E329504C(&v18, &v24);
  sub_1E3744600(v5);

  sub_1E328438C(&v24, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  swift_dynamicCast();
  v6 = objc_allocWithZone(VUIVideosPlayable);
  v7 = OUTLINED_FUNCTION_63_0();
  v9 = sub_1E37448C4(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 canonicalID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1E4205F14();
      v15 = v14;

      __swift_destroy_boxed_opaque_existential_1(&v24);
      if (v15)
      {
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_1E42074B4();

        v20 = 0xD000000000000012;
        v21 = 0x80000001E425E800;
        MEMORY[0x1E69109E0](v13, v15);

        MEMORY[0x1E69109E0](34, 0xE100000000000000);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

LABEL_14:
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();

  return OUTLINED_FUNCTION_57();
}

void sub_1E380B1A8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  sub_1E4123084(*(v4 + 120), v21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  v14 = v22;
  v15 = v21[1];
  *v0 = v21[0];
  *(v0 + 16) = v15;
  *(v0 + 32) = v14;
  sub_1E380B3EC();
  (*(v7 + 104))(v11, *MEMORY[0x1E697E668], v5);
  v25 = *v2;
  v23 = *(v2 + 24);
  v24 = *(v2 + 40);
  OUTLINED_FUNCTION_44_8();
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  *(v16 + 41) = *(v2 + 25);
  sub_1E3743538(&v25, v20, &qword_1ECF2B180);
  sub_1E3743538(&v23, v20, &qword_1ECF35A90);
  v18 = sub_1E380DD98();
  OUTLINED_FUNCTION_39_0();
  v19 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v11, v19 & 1, sub_1E380DF64, v16, v12, v18);

  (*(v7 + 8))(v11, v5);
  sub_1E325F69C(v0, &qword_1ECF2B170);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380B3EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B138);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  sub_1E3B22578();
  v9 = *(v4 + 208);
  v10 = OUTLINED_FUNCTION_39_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_26_17();
  OUTLINED_FUNCTION_33_4();
  v13 = sub_1E380ED80(v12);
  sub_1E38838AC(v9, 2u, 2, v13, v0);
  memcpy(v17, v16, sizeof(v17));
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v14, v15);
  sub_1E380AE18(v2);
  v16[0] = v11;
  v16[1] = v13;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  sub_1E3E03180();

  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380B58C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B270);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v44 - v16);
  *&v18 = OUTLINED_FUNCTION_34_17();
  v48[10] = 2;
  v49 = 0;
  v51 = v18;
  v52 = v18;
  v50 = 1;
  v53 = 0;
  v45 = 0;
  v44[0] = v18;
  v44[1] = v18;

  v19 = sub_1E383C8A8();
  v20 = sub_1E383C8B0();
  sub_1E383C8FC(v7, v5, v48, v20, &v50, 0, 1, v44, v47, v19);
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    (*(v21 + 304))();
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  memcpy(v46, v47, 0xF8uLL);
  memcpy(v47, v46, 0x128uLL);
  v47[296] = v3 & 1;
  v47[297] = 0;
  v22 = *(v1 + 8);
  v23 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  if (!*(v22 + v23))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v25 = *(v24 + 488);

  v27 = v25(v26);

  if (!v27)
  {
    goto LABEL_10;
  }

  v28 = sub_1E373E010(11, v27);

  if (!v28)
  {
    goto LABEL_10;
  }

  if (*v28 != _TtC8VideosUI13TextViewModel)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278);
    v34 = OUTLINED_FUNCTION_17_23();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_1();
  if ((*(v29 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    v31 = (*(v30 + 248))();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 1;
  }

  *v17 = sub_1E395FA08(v31, v33 & 1);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();

  v34 = v17;
  v35 = 0;
  v36 = 1;
  v37 = v43;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1E3743538(v47, v44, &qword_1ECF2B228);
  sub_1E3743538(v17, v14, &qword_1ECF2B270);
  sub_1E3743538(v44, v9, &qword_1ECF2B228);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B280);
  sub_1E3743538(v14, v9 + *(v38 + 48), &qword_1ECF2B270);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v39, v40);
  sub_1E325F69C(v47, &qword_1ECF2B228);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v41, v42);
  sub_1E325F69C(v44, &qword_1ECF2B228);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E380B9A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  v8 = *(v3 + v7);
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    v10 = *(v9 + 392);

    v10(v11);
    OUTLINED_FUNCTION_35_0();

    type metadata accessor for MediaShowcasingMetadataLayout();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
    }
  }

  type metadata accessor for MediaShowcasingButtonsPresenter();
  OUTLINED_FUNCTION_2_36();
  sub_1E380E6AC(v12);

  sub_1E42010C4();
  if (v8 && (OUTLINED_FUNCTION_30_1(), v14 = *(v13 + 1920), v15 = , v16 = v14(v15), , v16 != 13))
  {
    sub_1E3B033CC(v16, v1);
  }

  else
  {
    sub_1E42012F4();
    v17 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  sub_1E3B03114(v1, v0);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0A8);
  sub_1E380BC64();
  OUTLINED_FUNCTION_14_2();
  sub_1E3743478(v21);
  sub_1E4202FA4();

  sub_1E325F69C(v0, &qword_1ECF2A1F8);

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E380BC64()
{
  result = qword_1ECF2B0B0;
  if (!qword_1ECF2B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0A8);
    sub_1E380BCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B0B0);
  }

  return result;
}

unint64_t sub_1E380BCE8()
{
  result = qword_1ECF47030[0];
  if (!qword_1ECF47030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF47030);
  }

  return result;
}

void sub_1E380BD3C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201B84();
  v40 = 1;
  v5 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  if (!*(v1 + v5))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 488);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_1E373E010(91, v9);

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = (*(*v10 + 392))(v11);
  if (!v12)
  {
LABEL_10:

LABEL_11:
    sub_1E380EA48(__src);
    goto LABEL_12;
  }

  v13 = v12;
  if (*v12 != _TtC8VideosUI28MediaShowcasingButtonsLayout)
  {

    goto LABEL_10;
  }

  v14 = off_1EE24AE70[0]();
  v34 = v14 == 18 || !sub_1E412561C(v14);
  v35 = sub_1E4201B84();
  v46 = 0;
  v36 = sub_1E4201D44();
  v16 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0();
  if (!*(v1 + v16))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 488);

  v18(v19);
  OUTLINED_FUNCTION_89_3();
  if (!v18)
  {
    goto LABEL_19;
  }

  v20 = sub_1E373E010(11, v18);

  if (v20 && *v20 != _TtC8VideosUI13TextViewModel)
  {

LABEL_19:
    v20 = 0;
  }

  if (TVAppFeature.isEnabled.getter(20))
  {
    v21 = 1;
    goto LABEL_29;
  }

  if (*(v1 + v16))
  {
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 488);

    v23(v24);
    OUTLINED_FUNCTION_89_3();
    if (v23)
    {
      v21 = sub_1E373E010(11, v23);

      if (!v21 || *v21 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_28;
      }
    }
  }

  v21 = 0;
LABEL_28:

LABEL_29:

  sub_1E37C5408(v21);
  sub_1E3781D80(v21);
  sub_1E3781D80(v21);

  v26 = ((*v13)[11].cache)(v25);
  v27 = 1;
  if (v26 != 7)
  {
    __src[0] = v26;
    LOBYTE(v44[0]) = 4;
    sub_1E3793D00();
    if (sub_1E4205E84())
    {
      v27 = 0;
    }
  }

  __src[0] = 1;
  v33 = v27;
  LOBYTE(v44[0]) = v27;

  sub_1E37C5408(v21);

  sub_1E3781D80(v21);
  OUTLINED_FUNCTION_26();
  (*(v28 + 248))();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_36_0();
  sub_1E42015C4();
  memcpy(&v47[6], v49, 0x70uLL);
  v42 = v34;
  v43[0] = v35;
  v43[1] = 0;
  v29 = v46;
  LOBYTE(v43[2]) = v46;
  *(&v43[2] + 1) = v45[0];
  HIDWORD(v43[2]) = *(v45 + 3);
  v43[3] = v36;
  v43[4] = 0;
  LOBYTE(v43[5]) = 1;
  *(&v43[5] + 1) = v48[0];
  HIDWORD(v43[5]) = *(v48 + 3);
  v43[6] = v10;
  v43[7] = v20;
  v43[8] = v21;
  v43[9] = 0;
  LOBYTE(v43[10]) = 0;
  BYTE1(v43[10]) = v33;
  memcpy(&v43[10] + 2, v47, 0x76uLL);
  memcpy(&v37[6], v43, 0xC8uLL);
  sub_1E3743538(v43, __src, &qword_1ECF2B290);

  v41 = 0;
  v30 = v42;
  __dst[0] = v35;
  __dst[1] = 0;
  LOBYTE(__dst[2]) = v29;
  *(&__dst[2] + 1) = v45[0];
  HIDWORD(__dst[2]) = *(v45 + 3);
  __dst[3] = v36;
  __dst[4] = 0;
  LOBYTE(__dst[5]) = 1;
  *(&__dst[5] + 1) = v48[0];
  HIDWORD(__dst[5]) = *(v48 + 3);
  __dst[6] = v10;
  __dst[7] = v20;
  __dst[8] = v21;
  __dst[9] = 0;
  LOBYTE(__dst[10]) = 0;
  BYTE1(__dst[10]) = v33;
  memcpy(&__dst[10] + 2, v47, 0x76uLL);
  sub_1E325F69C(__dst, &qword_1ECF2B290);
  v44[0] = 0;
  LOBYTE(v44[1]) = 0;
  BYTE1(v44[1]) = v30;
  memcpy(&v44[1] + 2, v37, 0xCEuLL);
  v44[27] = 0;
  LOBYTE(v44[28]) = 0;
  nullsub_1(v31, v32);
  memcpy(__src, v44, 0xE1uLL);
LABEL_12:
  memcpy(__dst, __src, 0xE1uLL);
  memcpy(v44, __dst, 0xE1uLL);
  memcpy(__src, __dst, 0xE1uLL);
  sub_1E3743538(v44, v37, &qword_1ECF2B288);
  sub_1E325F69C(__src, &qword_1ECF2B288);
  memcpy(&v39[7], v44, 0xE1uLL);
  v15 = v40;
  *v3 = v4;
  *(v3 + 8) = 0;
  *(v3 + 16) = v15;
  memcpy((v3 + 17), v39, 0xE8uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E380C458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4201D44();
  LOBYTE(v79) = 0;
  if (!a1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
LABEL_26:
    v48 = OUTLINED_FUNCTION_12_32();
    sub_1E380EB58(v48, v49, v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_12_32();
    sub_1E380EBAC(v54, v55, v56, v57, v58, v59);
    LOBYTE(v81[0]) = 0;
    v60 = OUTLINED_FUNCTION_12_32();
    result = sub_1E380EBAC(v60, v61, v62, v63, v64, v65);
    *a2 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = v79;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = v21;
    *(a2 + 48) = v22;
    *(a2 + 56) = a1;
    *(a2 + 64) = v23;
    *(a2 + 72) = v24;
    *(a2 + 80) = v25;
    return result;
  }

  OUTLINED_FUNCTION_26();
  v6 = *(v5 + 776);

  v6(v81, v7, &unk_1F5D5E338, &off_1F5D5CB78);
  if (!v82)
  {
    sub_1E325F69C(v81, &unk_1ECF296E0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0 || v80 != 1)
  {
LABEL_15:
    OUTLINED_FUNCTION_26();
    v26 += 58;
    v9 = *v26;
    v27 = (*v26)();
    if (v27)
    {
      v12 = v27;
      if (sub_1E32AE9B0(v27))
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E6911E60](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v28 = *(v12 + 32);
        }

        OUTLINED_FUNCTION_30_1();
        (*(v29 + 392))(v30);
        OUTLINED_FUNCTION_35_0();

        if (v28)
        {
          OUTLINED_FUNCTION_8();
          (*(v31 + 152))(&v85);

          if ((v86 & 1) == 0)
          {
            v32 = OUTLINED_FUNCTION_24_0();
            sub_1E3952BE0(v32, v33, v34, v35);
          }
        }
      }

      else
      {
      }
    }

    v36 = sub_1E4201B84();
    v9();

    swift_retain_n();
    v37 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2C8);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_167_0();
    sub_1E3743478(v38);
    OUTLINED_FUNCTION_9_0();
    v40 = sub_1E3743478(v39);
    OUTLINED_FUNCTION_79_7(v40, v41, v42, v43, v44, v45, v46, v47, v4, v79, v36);
LABEL_25:
    sub_1E4201F44();

    v21 = v81[0];
    v22 = v81[1];
    a1 = v81[2];
    v23 = v82;
    v24 = v83;
    v25 = v84;
    OUTLINED_FUNCTION_12_32();
    sub_1E380EB70();
    v4 = v78;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_26();
  v8 += 58;
  v9 = *v8;
  v11 = (*v8)(v10);
  if (!v11)
  {
LABEL_28:
    v66 = sub_1E4201D44();
    v9();

    swift_retain_n();
    v67 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2C8);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_167_0();
    sub_1E3743478(v68);
    OUTLINED_FUNCTION_9_0();
    v70 = sub_1E3743478(v69);
    OUTLINED_FUNCTION_79_7(v70, v71, v72, v73, v74, v75, v76, v77, v4, v79, v66);
    goto LABEL_25;
  }

  v12 = v11;
  result = sub_1E32AE9B0(v11);
  if (!result)
  {

    goto LABEL_28;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v14 = MEMORY[0x1E6911E60](0, v12);
LABEL_10:

    OUTLINED_FUNCTION_30_1();
    (*(v15 + 392))(v16);
    OUTLINED_FUNCTION_35_0();

    if (v14)
    {
      OUTLINED_FUNCTION_8();
      (*(v17 + 152))(&v85);

      if ((v86 & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_24_0();
        sub_1E3952BD8(v18, v19, v20);
      }
    }

    goto LABEL_28;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E380C9A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  v5 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_24_11();
  sub_1E3743478(v6);
  sub_1E375BEF4();
  OUTLINED_FUNCTION_33_4();
  sub_1E380ED80(v7);
  return sub_1E4203B34();
}

void sub_1E380CB00()
{
  OUTLINED_FUNCTION_31_1();
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B338);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B320);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B310);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v17 = MEMORY[0x1EEE9AC00](v16);
  if ((*(**v5 + 392))(v17))
  {
    v41 = v9;
    type metadata accessor for ButtonLayout();
    if (swift_dynamicCastClass())
    {
      v39 = v14;
      v40 = v7;
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B340);
      sub_1E380CEF8();
      if (TVAppFeature.isEnabled.getter(20))
      {
        sub_1E3743538(v1, v12, &qword_1ECF2B330);
        *&v12[*(v41 + 36)] = 1;
        sub_1E3743538(v12, v0, &qword_1ECF2B320);
        swift_storeEnumTagMultiPayload();
        sub_1E380EEAC();
        OUTLINED_FUNCTION_1();
        sub_1E3743478(v18);
        sub_1E4201F44();

        v19 = OUTLINED_FUNCTION_27_0();
        sub_1E325F69C(v19, v20);
      }

      else
      {
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v26, v27, v28);
        swift_storeEnumTagMultiPayload();
        sub_1E380EEAC();
        OUTLINED_FUNCTION_1();
        sub_1E3743478(v29);
        sub_1E4201F44();
      }

      v30 = v39;
      v31 = v40;
      sub_1E325F69C(v1, &qword_1ECF2B330);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v32, v33, v34);
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v35, v36, v37);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}