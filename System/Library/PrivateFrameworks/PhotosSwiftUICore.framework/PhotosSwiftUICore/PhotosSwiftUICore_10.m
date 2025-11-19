uint64_t sub_1C109D610()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C109D758()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 48);
  if (*(v0 + 56) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t PhotosInteractiveFavoriteBadge.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v78 = *(v4 + 8);
  v69 = type metadata accessor for PhotosFavoriteBadge();
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C12654A0();
  OUTLINED_FUNCTION_0();
  v71 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  v67 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91358);
  v62 = sub_1C1263190();
  v72 = *(v62 - 8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v66 = v11;
  OUTLINED_FUNCTION_8_1();
  v63 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  v98 = v63;
  v99 = sub_1C0FDB6D4(v12, v13);
  v65 = swift_getWitnessTable();
  v61 = sub_1C109F0EC();
  *&v100 = v62;
  *(&v100 + 1) = &type metadata for PhotosFavoriteButtonStyle;
  *&v101 = v65;
  *(&v101 + 1) = v61;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v73 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v64 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91970);
  v74 = OpaqueTypeMetadata2;
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v79 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v75 = v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C90);
  v80 = v18;
  v70 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v81 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v76 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v77 = v60 - v26;
  v27 = v2[1];
  v100 = *v2;
  v101 = v27;
  v102[0] = v2[2];
  *(v102 + 9) = *(v2 + 41);
  sub_1C1265790();
  v28 = swift_allocBox();
  v29 = a1[3];
  swift_unknownObjectRetain();
  sub_1C1265770();
  v30 = swift_allocObject();
  v31 = v3;
  *(v30 + 16) = v3;
  *(v30 + 24) = v29;
  v60[1] = v4;
  *(v30 + 32) = v4;
  *(v30 + 40) = v28;
  v32 = v101;
  *(v30 + 48) = v100;
  *(v30 + 64) = v32;
  *(v30 + 80) = v102[0];
  *(v30 + 89) = *(v102 + 9);
  v83 = v3;
  v84 = v29;
  v85 = v4;
  v86 = v28;
  v87 = &v100;

  v60[0] = a1;
  OUTLINED_FUNCTION_15_1();
  (*(v33 + 16))(&v95, &v100);
  v34 = v67;
  sub_1C1265480();
  *&v95 = 0xC020000000000000;
  sub_1C109F160();
  OUTLINED_FUNCTION_2_1();
  v35 = v66;
  v36 = v61;
  sub_1C1264AC0();
  v37 = v6;
  v38 = v62;
  (*(v71 + 8))(v34, v37);
  v71 = v28;
  v39 = v65;
  *&v95 = sub_1C109E0B8();
  v40 = (*(v78 + 8))(v31);
  swift_unknownObjectRelease();
  v41 = *(&v100 + 1);
  LOBYTE(v95) = v40 & 1;
  *(&v95 + 1) = *(&v100 + 1);
  swift_retain_n();
  v42 = v64;
  sub_1C1264A00();

  (*(v72 + 8))(v35, v38);
  v95 = v100;
  v96 = v101;
  v97[0] = v102[0];
  *(v97 + 9) = *(v102 + 9);
  if (sub_1C109D610())
  {
    v88 = v100;
    v89 = v101;
    v90[0] = v102[0];
    *(v90 + 9) = *(v102 + 9);
    sub_1C109D758();
  }

  *&v95 = v38;
  *(&v95 + 1) = &type metadata for PhotosFavoriteButtonStyle;
  *&v96 = v39;
  *(&v96 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v74;
  v45 = v75;
  sub_1C1264FD0();
  (*(v73 + 8))(v42, v44);
  *&v95 = v41;
  OUTLINED_FUNCTION_4_24();
  v48 = sub_1C0FDB6D4(v46, v47);
  v93 = OpaqueTypeConformance2;
  v94 = v48;
  v49 = v80;
  v50 = swift_getWitnessTable();
  v51 = v76;
  sub_1C1264E80();

  (*(v79 + 8))(v45, v49);
  OUTLINED_FUNCTION_0_0();
  v54 = sub_1C0FDB6D4(v52, v53);
  v91 = v50;
  v92 = v54;
  v55 = v70;
  v56 = swift_getWitnessTable();
  v57 = v77;
  sub_1C0FDBA4C(v51, v55, v56);
  v58 = *(v81 + 8);
  v58(v51, v55);
  sub_1C0FDBA4C(v57, v55, v56);
  v58(v57, v55);
}

uint64_t sub_1C109E0B8()
{
  v0 = sub_1C1265790();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1C1265750();
  (*(v1 + 8))(v3, v0);
  return v6[1];
}

uint64_t sub_1C109E1AC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v8 = sub_1C1261FA0();
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v51 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = v39 - v14;
  v15 = sub_1C1261B50();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v45 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1265E50();
  v43 = *(v17 - 8);
  v44 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v41 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1261AD0();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v46 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v40 = v39 - v22;
  v39[1] = a1;
  v57 = sub_1C109E0B8();
  *&v54 = sub_1C109E0B8();
  v23 = *(a5 + 8);
  v24 = *(v23 + 8);
  v25 = v24(a3, v23);
  swift_unknownObjectRelease();
  v26 = v42[1];
  v54 = *v42;
  v55 = v26;
  v56[0] = v42[2];
  *(v56 + 9) = *(v42 + 41);
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  v27 = sub_1C109D4C0();
  (*(a5 + 16))((v25 & 1) == 0, v27, a3, a5);
  swift_unknownObjectRelease();

  *&v54 = sub_1C109E0B8();
  v24(a3, v23);
  swift_unknownObjectRelease();
  v28 = v41;
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v28);
  (*(v43 + 8))(v28, v44);
  sub_1C1261B40();
  v29 = v40;
  sub_1C1261AE0();
  v30 = *MEMORY[0x1E69594E0];
  v31 = sub_1C1261A00();
  v32 = v49;
  (*(*(v31 - 8) + 104))(v49, v30, v31);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
  sub_1C109FA1C(v32, v50);
  sub_1C109FA8C();
  sub_1C1261B00();
  sub_1C109FAE0(v32);
  v33 = v46;
  v34 = v47;
  v35 = v48;
  (*(v47 + 16))(v46, v29, v48);
  v36 = v51;
  MEMORY[0x1C68EB8F0](v33);
  v37 = v52;
  sub_1C1261F90();
  (*(v53 + 8))(v36, v37);
  return (*(v34 + 8))(v29, v35);
}

uint64_t sub_1C109E738(uint64_t a1, uint64_t a2)
{
  *&v8 = sub_1C109E0B8();
  PhotosFavoriteBadge.init(_:tint:)(*(a2 + 8), &v7);
  v6 = v7;
  v3 = type metadata accessor for PhotosFavoriteBadge();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(&v6, v3, WitnessTable);

  swift_unknownObjectRelease();
  v7 = v8;
  sub_1C0FDBA4C(&v7, v3, WitnessTable);

  return swift_unknownObjectRelease();
}

uint64_t PhotosMockFavoriteProviding.init(isFavorite:)(char a1)
{
  sub_1C1261F60();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1C109E884(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C109EC4C();
  }

  return result;
}

uint64_t sub_1C109E990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109E9E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109E9E8()
{
  swift_getKeyPath();
  sub_1C109F1D4();
  sub_1C1261F30();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C109EA6C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*sub_1C109EAC0(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  *v3 = v1;
  v3[6] = sub_1C109F1D4();
  sub_1C1261F30();

  *v3 = v1;
  swift_getKeyPath();
  sub_1C1261F50();

  v3[7] = sub_1C109E940();
  return sub_1C109EBB4;
}

void sub_1C109EBB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t PhotosMockFavoriteProviding.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockFavoriteProviding.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosInteractiveFavoriteBadgeFactory.init(capacity:)(a1);
  return v2;
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ColorFactory();
  result = swift_allocObject();
  *(v1 + 16) = result;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      sub_1C1266A50();
      type metadata accessor for PhotosMockFavoriteProviding();
      v6 = 0;
      do
      {
        v7 = swift_allocObject();
        sub_1C1261F60();
        *(v7 + 16) = (v6 & 1) == 0;
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        sub_1C1266A30();
        ++v6;
      }

      while (a1 != v6);
      v5 = v8;
    }

    *(v2 + 24) = v5;
    return v2;
  }

  return result;
}

uint64_t sub_1C109EF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1265110();
  v6 = *(v2 + 24);
  sub_1C0FF768C(a1);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C68F02D0](a1, v6);
  }

  else
  {
  }

  return sub_1C109D1CC(v7, v5, a2);
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.deinit()
{

  return v0;
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.__deallocating_deinit()
{
  PhotosInteractiveFavoriteBadgeFactory.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C109F0EC()
{
  result = qword_1EDE81228;
  if (!qword_1EDE81228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81228);
  }

  return result;
}

unint64_t sub_1C109F160()
{
  result = qword_1EDE7B790;
  if (!qword_1EDE7B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B790);
  }

  return result;
}

unint64_t sub_1C109F1D4()
{
  result = qword_1EBE929C0;
  if (!qword_1EBE929C0)
  {
    type metadata accessor for PhotosMockFavoriteProviding();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE929C0);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMockFavoriteProviding()
{
  result = qword_1EBE929C8;
  if (!qword_1EBE929C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C109F32C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C109F3A4(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

void sub_1C109F4E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C109F6AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C109F6E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C109F728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C109F798()
{
  result = sub_1C1261F70();
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

unint64_t sub_1C109F964()
{
  result = qword_1EDE7BE20;
  if (!qword_1EDE7BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929D8);
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE20);
  }

  return result;
}

uint64_t sub_1C109FA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C109FA8C()
{
  result = qword_1EBE929F8;
  if (!qword_1EBE929F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE929F8);
  }

  return result;
}

uint64_t sub_1C109FAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosDropTargetStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, 0xE1uLL);
  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A00) + 36);
  sub_1C109FC40(__dst, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A08) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A10);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_1C109FC40@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1C12637E0();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1263310();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v38, a1, 0xD1uLL);
  memcpy(v39, a1, 0xD1uLL);
  if (sub_1C100D688(v39) == 1)
  {
    nullsub_1(v39);
    memcpy(v32, a1, 0xD1uLL);
    v13 = nullsub_1(v32);
    memcpy(v34, v13, sizeof(v34));
    sub_1C10A0544(v38, v33);
  }

  else
  {
    nullsub_1(v39);
    memcpy(v32, a1, 0xD1uLL);
    v29[1] = *nullsub_1(v32);
    sub_1C10A0544(v38, v33);
    sub_1C1266420();
    v14 = sub_1C1264410();
    v30 = v10;
    v15 = v14;
    sub_1C1262620();

    v10 = v30;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10A05B4(v38);
    (*(v4 + 8))(v6, v31);
  }

  memcpy(v33, v34, 0xD0uLL);
  sub_1C100C7D0(v33);
  v16 = v33[0];
  v17 = *(v7 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C12639D0();
  (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
  *v9 = v16;
  *(v9 + 1) = v16;
  sub_1C107CD70(v9, v12);
  *&v12[*(v10 + 20)] = 0xC004000000000000;
  memcpy(v32, a1, 0xE1uLL);
  v20 = sub_1C10A003C();
  sub_1C1262B10();
  sub_1C10A061C(v12, a2);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A30) + 36);
  v22 = v36;
  *v21 = v35;
  *(v21 + 16) = v22;
  *(v21 + 32) = v37;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A38);
  *(a2 + *(v23 + 52)) = v20;
  *(a2 + *(v23 + 56)) = 256;
  v24 = sub_1C12659A0();
  v26 = v25;
  sub_1C10A0680(v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A40);
  v28 = (a2 + *(result + 36));
  *v28 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_1C10A003C()
{
  v1 = sub_1C1263AE0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 216);
  if (*(v0 + 224) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v6, 0);
    (*(v3 + 8))(v5, v2);
    if (v10 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1263AD0();
    sub_1C10A06DC();
    return sub_1C1262C90();
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1C1265170();
  return sub_1C1262C90();
}

uint64_t View.dropTargetStyle()(uint64_t a1, uint64_t a2)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(__dst, __src, 0xD1uLL);
  KeyPath = swift_getKeyPath();
  v7 = 0;
  memcpy(v6, __dst, 0xD8uLL);
  v6[27] = KeyPath;
  LOBYTE(v6[28]) = 0;
  MEMORY[0x1C68EE920](v6, a1, &type metadata for PhotosDropTargetStyle, a2);
  memcpy(v10, v6, 0xE1uLL);
  return sub_1C10A02E8(v10);
}

uint64_t sub_1C10A033C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 225))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 208);
      if (v3 <= 1)
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

uint64_t sub_1C10A037C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C10A040C()
{
  result = qword_1EBE92A18;
  if (!qword_1EBE92A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A00);
    sub_1C0FDB6D4(&qword_1EBE92A20, &qword_1EBE92A10);
    sub_1C0FDB6D4(&qword_1EBE8FBF0, &qword_1EBE92A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A18);
  }

  return result;
}

unint64_t sub_1C10A04F0()
{
  result = qword_1EBE92EB0;
  if (!qword_1EBE92EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92EB0);
  }

  return result;
}

uint64_t sub_1C10A0544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A05B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10A061C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263310();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A0680(uint64_t a1)
{
  v2 = sub_1C1263310();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10A06DC()
{
  result = qword_1EBE92A48;
  if (!qword_1EBE92A48)
  {
    sub_1C1263AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A48);
  }

  return result;
}

uint64_t sub_1C10A0738@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.shelfHeightOverride.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t PhotosItemTruncationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

__n128 PhotosItemsListRow.cols.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 80));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t sub_1C10A08AC()
{
  type metadata accessor for PhotosScrollViewModel();
  sub_1C1265790();
  sub_1C1265750();
  return v1;
}

uint64_t PhotosItemsListRow.itemView.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));

  return v2;
}

uint64_t PhotosItemsListRow.init(data:id:cols:rows:itemTruncationMode:scrollViewModel:scrollViewAccessibilityIdentifier:draggingDelegate:itemTransition:itemView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v38 = *a3;
  v20 = *(a3 + 2);
  v21 = *a5;
  v22 = *(*a6 + 88);
  v23 = *(*a2 + *MEMORY[0x1E69E77B0]);
  __src[0] = a14;
  *&__src[1] = v23;
  __src[3] = a15;
  __src[4] = a16;
  __src[5] = v22;
  __src[6] = a17;
  v24 = type metadata accessor for PhotosItemsListRow();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(KeyPath);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v26);
  v27 = v24[30];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v27), __src, 0xD1uLL);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v28);
  v29 = v24[32];
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v30 = a9 + v24[33];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  v31 = a9 + v24[34];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v32);
  v33 = *(a14 - 8);
  (*(v33 + 16))(a9, a1, a14);
  *(a9 + v24[19]) = a2;
  v34 = (a9 + v24[25]);
  *v34 = a12;
  v34[1] = a13;
  v35 = a9 + v24[20];
  *v35 = v38;
  *(v35 + 16) = v20;
  *(a9 + v24[21]) = a4;
  *(a9 + v24[22]) = v21;
  sub_1C0FFEBF0();
  (*(v33 + 8))(a1, a14);
  v36 = (a9 + v24[26]);
  *v36 = a7;
  v36[1] = a8;
  result = sub_1C0F9DDE4(a10, a9 + v24[27]);
  *(a9 + v24[24]) = a11;
  return result;
}

double sub_1C10A0C40(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 116));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C10A0D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FFC7B0(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10A0FB4(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 132);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1058610(v8, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12;
  }

  return v8;
}

double sub_1C10A1120(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 136);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1001C04(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3);
  return v14;
}

void sub_1C10A12A8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 140);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10A1434(uint64_t a1)
{
  v3 = sub_1C1265810();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v1 + *(a1 + 84));
  *v6 = xmmword_1C12A3450;
  (*(v4 + 104))(v6, *MEMORY[0x1E697D748], v3);
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C1265830();
    v20 = v9;
    v19 = v13;
    return sub_1C12478D4(v20, v19);
  }

  result = sub_1C1265830();
  v15 = (v1 + *(a1 + 80));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    if (v17 != 0x8000000000000000 || v16 != -1)
    {
      v19 = v17 / v16;
      v20 = v12;
      return sub_1C12478D4(v20, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10A1614(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v7 + 84));
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C10A1758(a1, v6);
    v8 = sub_1C12662E0();
    (*(v4 + 8))(v6, v3);
  }

  *&result = COERCE_DOUBLE(sub_1C10A0FB4(a1));
  if ((v10 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(sub_1C10A0FB4(a1));
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *&result = *&result / v8;
    }
  }

  return result;
}

uint64_t sub_1C10A1758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = *(a1 + 24);
  v6 = sub_1C1266790();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v38 = v5;
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(v3 + *(a1 + 88));
  sub_1C10A08AC();
  v13 = sub_1C111EB24();

  if ((v12 & 1) == 0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    result = sub_1C12662E0();
    if (result < 2)
    {
      goto LABEL_25;
    }

    v20 = floor(*(v3 + *(a1 + 80)) / *(v3 + *(a1 + 80) + 8));
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          v21 = *(v3 + *(a1 + 84));
          v22 = v21 * v20;
          if ((v21 * v20) >> 64 == v22 >> 63)
          {
            v23 = sub_1C12662E0();
            if (v23 < v22)
            {
              v22 = v23;
            }

            result = sub_1C12662E0();
            if (v22 < result)
            {
              if ((v22 & 0x8000000000000000) == 0)
              {
                v41 = 0;
                v42 = v22;
                sub_1C1266390();
                swift_getAssociatedConformanceWitness();
                v41 = sub_1C12661C0();
                sub_1C12661A0();
                return swift_dynamicCast();
              }

              goto LABEL_43;
            }

            goto LABEL_25;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_25;
  }

  result = sub_1C12662E0();
  if (result < 2)
  {
    goto LABEL_25;
  }

  v15 = floor(*(v3 + *(a1 + 80)) / *(v3 + *(a1 + 80) + 8));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = *(v3 + *(a1 + 84));
  v17 = v16 * v15;
  if ((v16 * v15) >> 64 != v17 >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = sub_1C12662E0();
  if (v18 < v17)
  {
    v17 = v18;
  }

  result = sub_1C12662E0();
  if (v17 < result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v42 = v17;
      sub_1C1266390();
      swift_getAssociatedConformanceWitness();
      v19 = v38;
      v41 = sub_1C12661C0();
      sub_1C1265D60();
      if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
      {
        (*(v33 + 8))(v8, v34);
LABEL_32:
        v40 = v41;
        sub_1C12661A0();
        return swift_dynamicCast();
      }

      v27 = v35;
      v26 = v36;
      (*(v36 + 32))(v35, v8, v19);
      result = sub_1C1266170();
      v28 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        v29 = sub_1C12661A0();
        sub_1C1266120();
        v30 = v41;
        sub_1C10A7EE0(v28, v41);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v32 = v30 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v32 = v30;
        }

        (*(v26 + 40))(v32 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, v27, v19);
        nullsub_1(v29);
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_25:
  v24 = *(*(v11 - 8) + 16);
  v25 = v39;

  return v24(v25, v3, v11);
}

BOOL sub_1C10A1D28(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v7 + 84));
  result = 1;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C10A1758(a1, v6);
    v10 = sub_1C12662E0();
    (*(v4 + 8))(v6, v3);
    if (v10 >= v8 || !sub_1C10A1404(a1))
    {
      return 0;
    }
  }

  return result;
}

uint64_t PhotosItemsListRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a1;
  v218 = a2;
  v3 = sub_1C12643C0();
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v216 = v5;
  OUTLINED_FUNCTION_49();
  v222 = sub_1C12643E0();
  OUTLINED_FUNCTION_0();
  v217 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v215 = v8;
  OUTLINED_FUNCTION_49();
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v213 = v10;
  v214 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v212 = v11;
  OUTLINED_FUNCTION_49();
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v210 = v13;
  v211 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v209 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50);
  v17 = a1[6];
  v16 = a1[7];
  v233[2] = v15;
  v233[3] = v17;
  v233[4] = v16;
  v18 = a1[4];
  v233[0] = a1[2];
  v233[1] = v18;
  OUTLINED_FUNCTION_31_7();
  sub_1C12656A0();
  v233[35] = sub_1C10A3184();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v221 = type metadata accessor for LazyHGridOrVGrid();
  v19 = a1[3];
  *&v20 = v18;
  *(&v20 + 1) = a1[5];
  *&v21 = v233[0];
  v224 = v233[0];
  *(&v21 + 1) = v19;
  v22 = a1[8];
  v198 = v20;
  v196 = v21;
  v197 = v22;
  OUTLINED_FUNCTION_31_7();
  type metadata accessor for PhotosItemsListRow.ItemContainerView();
  sub_1C1263190();
  v233[33] = OUTLINED_FUNCTION_18_14();
  v233[34] = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosItemsListCellContainer();
  sub_1C1263190();
  OUTLINED_FUNCTION_8_19();
  v233[31] = swift_getWitnessTable();
  v233[32] = sub_1C1001354();
  v219 = v17;
  v233[4] = v17;
  v233[5] = v16;
  v23 = v16;
  v233[6] = swift_getWitnessTable();
  OUTLINED_FUNCTION_31_7();
  type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for LazyHGridOrVGrid();
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_31_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  v24 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  OUTLINED_FUNCTION_17_15();
  OUTLINED_FUNCTION_11_0();
  v173 = v24;
  v174 = v25;
  v26 = type metadata accessor for PhotosTestableScrollView();
  OUTLINED_FUNCTION_26_1();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v206 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  v205 = v31;
  v195 = v26;
  v202 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v201 = v34;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_34();
  v194 = v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60);
  v204 = v33;
  v37 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v200 = v38;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_34();
  v193 = v40;
  v207 = OpaqueTypeMetadata2;
  v199 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_3();
  v177 = v41;
  v233[29] = v41;
  v233[30] = sub_1C0FDB6D4(v42, &qword_1EBE92A60);
  v43 = swift_getWitnessTable();
  v44 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v188 = v45;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_34();
  v185 = v47;
  v203 = v37;
  v178 = v43;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v186 = v50;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_34();
  v180 = v52;
  v190 = v44;
  v175 = v48;
  v189 = v49;
  v233[0] = v49;
  v233[1] = v222;
  v179 = swift_getOpaqueTypeConformance2();
  v233[2] = v179;
  v233[3] = MEMORY[0x1E697CC08];
  v53 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v182 = v54;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_34();
  v176 = v56;
  v208 = v23;
  v184 = v53;
  v181 = type metadata accessor for PhotosScrollPositionModifier();
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v191 = v58;
  v192 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v183 = &v160 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v187 = &v160 - v61;
  v221 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v171 = &v160 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v63;
  MEMORY[0x1EEE9AC00](v64);
  v220 = &v160 - v65;
  OUTLINED_FUNCTION_49();
  v66 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v168 = v67;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_8();
  v167 = v69;
  v70 = v223;
  v71 = *(v223 - 1);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v170 = &v160 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v169 = &v160 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v160 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_15(v79);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v160 - v81;
  v166 = swift_getWitnessTable();
  v83 = v225;
  View.photosTrace.getter(v70, v166);
  v84 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v82, 1, v84) == 1)
  {
    sub_1C0FFC7B0(v82, &qword_1EBE919B0);
  }

  else
  {
    v164 = v84;
    v165 = v66;
    v85 = *(v71 + 16);
    v85(v78, v83, v70);
    v85(v169, v83, v70);
    sub_1C1262640();
    v86 = sub_1C1262670();
    v87 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v88 = swift_slowAlloc();
      v161 = v87;
      v163 = v71;
      v89 = v88;
      v162 = swift_slowAlloc();
      v233[0] = v162;
      *v89 = 134349314;
      v90 = sub_1C12662E0();
      v160 = v86;
      v91 = *(v71 + 8);
      v91(v78, v223);
      *(v89 + 4) = v90;
      *(v89 + 12) = 2082;
      v92 = v169;
      v93 = View.photosChangedProperties.getter(v223, v166);
      v95 = v94;
      v91(v92, v223);
      v70 = v223;
      v96 = sub_1C0FA0E80(v93, v95, v233);

      *(v89 + 14) = v96;
      v97 = sub_1C1262630();
      v98 = v160;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v160, v161, v97, "PhotosItemsListRow", "PhotosItemsListRow count:%{public}ld %{public}s", v89, 0x16u);
      v99 = v162;
      __swift_destroy_boxed_opaque_existential_0Tm(v162);
      MEMORY[0x1C68F1630](v99, -1, -1);
      MEMORY[0x1C68F1630](v89, -1, -1);

      v100 = OUTLINED_FUNCTION_30_6();
      v101(v100);
      v71 = v163;
    }

    else
    {
      v102 = *(v71 + 8);
      v102(v78, v70);

      v103 = OUTLINED_FUNCTION_30_6();
      v104(v103);
      v102(v169, v70);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v105 + 8))(v82);
  }

  v106 = v220;
  v107 = v225;
  sub_1C10A1758(v70, v220);
  LODWORD(v169) = sub_1C1264420();
  v108 = (v107 + *(v70 + 104));
  v109 = v108[1];
  v168 = *v108;
  v110 = v170;
  (*(v71 + 16))(v170, v107, v70);
  v111 = v221;
  v112 = v171;
  v113 = v224;
  (*(v221 + 16))(v171, v106, v224);
  v114 = (*(v71 + 80) + 72) & ~*(v71 + 80);
  v115 = (v72 + v114 + *(v111 + 80)) & ~*(v111 + 80);
  v116 = swift_allocObject();
  v117 = v198;
  *(v116 + 16) = v196;
  *(v116 + 32) = v117;
  v118 = v208;
  *(v116 + 48) = v219;
  *(v116 + 56) = v118;
  *(v116 + 64) = v197;
  v119 = v116 + v114;
  v120 = v223;
  (*(v71 + 32))(v119, v110, v223);
  (*(v111 + 32))(v116 + v115, v112, v113);

  swift_checkMetadataState();
  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v169, v168, v109, sub_1C10A373C, v116, v233);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(v116) = sub_1C1264460();
  *(inited + 32) = v116;
  v122 = sub_1C1264480();
  *(inited + 33) = v122;
  v123 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v116)
  {
    v123 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v122)
  {
    v123 = sub_1C12644B0();
  }

  v124 = sub_1C10A1120(v120);
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v209;
  sub_1C1263E00();
  v132 = swift_checkMetadataState();
  v133 = v205;
  MEMORY[0x1C68EE490](v123, v131, v132, v202, v124, v126, v128, v130);
  (*(v210 + 8))(v131, v211);
  memcpy(v232, v233, 0xE8uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v134 + 8))(v232, v132);
  v135 = v194;
  v136 = v207;
  sub_1C1264CC0();
  (*(v206 + 8))(v133, v136);
  sub_1C100AE3C();
  v137 = v193;
  v138 = v204;
  sub_1C1264C10();
  (*(v201 + 8))(v135, v138);
  v139 = v212;
  sub_1C1264140();
  v140 = v203;
  sub_1C1005F50();
  v141 = v185;
  sub_1C1264C50();
  (*(v213 + 8))(v139, v214);
  (*(v200 + 8))(v137, v140);
  sub_1C10A08AC();
  sub_1C111EB24();

  v142 = v180;
  v143 = v190;
  sub_1C1264B70();
  (*(v188 + 8))(v141, v143);
  sub_1C12643B0();
  v144 = v215;
  sub_1C12643D0();
  v145 = v176;
  v146 = v189;
  v147 = v222;
  v148 = v179;
  v149 = MEMORY[0x1E697CC08];
  sub_1C1264D90();
  (*(v217 + 8))(v144, v147);
  (*(v186 + 8))(v142, v146);
  v150 = sub_1C10A08AC();
  v228 = v146;
  v229 = v147;
  v230 = v148;
  v231 = v149;
  v151 = swift_getOpaqueTypeConformance2();
  v153 = v183;
  v152 = v184;
  View.photosScrollPosition<A>(scrollViewModel:)(v150, v184, v151);

  (*(v182 + 8))(v145, v152);
  (*(v221 + 8))(v220, v224);
  OUTLINED_FUNCTION_14_7();
  v154 = swift_getWitnessTable();
  v226 = v151;
  v227 = v154;
  v155 = v192;
  v156 = swift_getWitnessTable();
  v157 = v187;
  sub_1C0FDBA4C(v153, v155, v156);
  v158 = *(v191 + 8);
  v158(v153, v155);
  sub_1C0FDBA4C(v157, v155, v156);
  return (v158)(v157, v155);
}

unint64_t sub_1C10A3184()
{
  result = qword_1EDE7BD88;
  if (!qword_1EDE7BD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50);
    sub_1C10A323C();
    sub_1C0FDB6D4(&qword_1EDE7BC58, &qword_1EBE924C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD88);
  }

  return result;
}

unint64_t sub_1C10A323C()
{
  result = qword_1EDE7BE50;
  if (!qword_1EDE7BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A58);
    sub_1C1001354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE50);
  }

  return result;
}

uint64_t sub_1C10A32F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v27 = a6;
  v29 = a2;
  v28 = a1;
  v30 = a8;
  v26 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50);
  sub_1C12656A0();
  v51 = sub_1C10A3184();
  swift_getWitnessTable();
  type metadata accessor for LazyHGridOrVGrid();
  v25 = a4;
  type metadata accessor for PhotosItemsListRow.ItemContainerView();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer();
  v14 = sub_1C1263190();
  v40 = swift_getWitnessTable();
  v41 = sub_1C1001354();
  v46 = a5;
  v47 = v14;
  v48 = a7;
  v49 = a9;
  v50 = swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  swift_getWitnessTable();
  v44 = type metadata accessor for LazyHGridOrVGrid();
  v45 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v15 = sub_1C12655C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  sub_1C1265940();
  v31 = a3;
  v32 = v25;
  v33 = a5;
  v34 = v27;
  v35 = a7;
  v36 = a9;
  v37 = v26;
  v38 = v28;
  v39 = v29;
  sub_1C12655B0();
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v15, v22);
  v23 = *(v16 + 8);
  v23(v18, v15);
  sub_1C0FDBA4C(v21, v15, v22);
  return (v23)(v21, v15);
}

uint64_t sub_1C10A373C()
{
  OUTLINED_FUNCTION_4_25();
  v9 = *(type metadata accessor for PhotosItemsListRow() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1C10A32F8(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v2, v3, v4, v5, v6, v1, v7, v8);
}

uint64_t sub_1C10A384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v84 = a6;
  v80 = a2;
  v81 = a9;
  v73 = a10;
  type metadata accessor for PhotosItemsListRow.ItemContainerView();
  sub_1C1263190();
  v107[5] = swift_getWitnessTable();
  v107[6] = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer();
  v16 = sub_1C1263190();
  v107[3] = swift_getWitnessTable();
  v107[4] = sub_1C1001354();
  v108 = a3;
  v109 = a4;
  v110 = a5;
  v111 = v16;
  v112 = a7;
  v113 = a8;
  WitnessTable = swift_getWitnessTable();
  v78 = type metadata accessor for PhotosDraggableForEach();
  v77 = swift_getWitnessTable();
  v17 = type metadata accessor for LazyHGridOrVGrid();
  v71 = v17;
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v57 - v18;
  v67 = &unk_1C12B05F4;
  v70 = swift_getWitnessTable();
  v108 = v17;
  v109 = v70;
  v74 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v76 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v57 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50);
  v108 = a3;
  v109 = a5;
  v24 = a5;
  v110 = v23;
  v111 = a7;
  v60 = a7;
  v112 = a8;
  v66 = sub_1C12656A0();
  v107[2] = sub_1C10A3184();
  v65 = swift_getWitnessTable();
  v25 = type metadata accessor for LazyHGridOrVGrid();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v57 - v29;
  v108 = a3;
  v109 = a4;
  v30 = a3;
  v62 = a3;
  v63 = v24;
  v64 = a4;
  v31 = v84;
  v110 = v24;
  v111 = v84;
  v112 = a7;
  v113 = a8;
  v61 = a8;
  v32 = v73;
  WitnessTable = v73;
  v33 = type metadata accessor for PhotosItemsListRow();
  v58 = sub_1C10A1D28(v33);
  v59 = sub_1C10A1614(v33);
  LOBYTE(a7) = v34;
  v57 = sub_1C10A1434(v33);
  v35 = sub_1C10A0C40(v33);
  v96 = v30;
  v97 = a4;
  v98 = v24;
  v99 = v31;
  v36 = v60;
  v100 = v60;
  v101 = a8;
  v37 = v80;
  v102 = v32;
  v103 = v80;
  v104 = a1;
  v38 = v85;
  sub_1C10A4500(v58, v59, a7 & 1, v57, sub_1C10A7A8C, v85, v35);
  v39 = v82;
  v65 = swift_getWitnessTable();
  sub_1C0FDBA4C(v38, v39, v65);
  v66 = *(v83 + 8);
  v67 = (v83 + 8);
  v66(v38, v39);
  LOBYTE(v39) = sub_1C10A1D28(v33);
  v40 = sub_1C10A1614(v33);
  LOBYTE(a7) = v41;
  v42 = sub_1C10A1434(v33);
  v43 = sub_1C10A0C40(v33);
  v87 = v62;
  v88 = v64;
  v89 = v63;
  v90 = v84;
  v91 = v36;
  v92 = v61;
  v93 = v32;
  v94 = v37;
  v95 = a1;
  v44 = v72;
  sub_1C10A4500(v39 & 1, v40, a7 & 1, v42, sub_1C10A7AA4, v72, v43);
  v46 = v70;
  v45 = v71;
  OUTLINED_FUNCTION_15_6();
  v47 = v68;
  sub_1C1264CD0();
  (*(v79 + 8))(v44, v45);
  v108 = v45;
  v109 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v69;
  v50 = v76;
  sub_1C0FDBA4C(v47, v76, OpaqueTypeConformance2);
  v51 = v75;
  v52 = *(v75 + 8);
  v52(v47, v50);
  v53 = v82;
  v54 = v85;
  (*(v83 + 16))(v85, v86, v82);
  v108 = v54;
  (*(v51 + 16))(v47, v49, v50);
  v109 = v47;
  v107[0] = v53;
  v107[1] = v50;
  v105 = v65;
  v106 = OpaqueTypeConformance2;
  sub_1C119EE80(&v108, 2, v107);
  v52(v49, v50);
  v55 = v66;
  v66(v86, v53);
  v52(v47, v50);
  return v55(v85, v53);
}

uint64_t sub_1C10A3F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a4;
  v55 = a6;
  v50 = a1;
  v56 = a9;
  v52 = a2;
  v53 = a10;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v45 = a5;
  v62 = a7;
  v63 = a8;
  v43 = a7;
  v44 = a8;
  v64 = a10;
  v14 = type metadata accessor for PhotosItemsListRow();
  v15 = *(v14 - 8);
  v48 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = v42 - v16;
  v17 = a3;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[2] = v21;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50);
  v58 = v17;
  v59 = a5;
  v60 = v49;
  v61 = a7;
  v62 = a8;
  v22 = sub_1C12656A0();
  v51 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v47 = v42 - v27;
  v28 = *(v18 + 16);
  v29 = v17;
  v42[1] = v17;
  v28(v21, v50, v17, v26);
  v30 = v14;
  v31 = v46;
  (*(v15 + 16))(v46);
  v32 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v33 = swift_allocObject();
  v34 = v54;
  *(v33 + 2) = v29;
  *(v33 + 3) = v34;
  v35 = v44;
  v36 = v55;
  *(v33 + 4) = v45;
  *(v33 + 5) = v36;
  *(v33 + 6) = v43;
  *(v33 + 7) = v35;
  *(v33 + 8) = v53;
  (*(v15 + 32))(&v33[v32], v31, v30);
  v37 = sub_1C10A3184();

  sub_1C1265680();
  v57 = v37;
  WitnessTable = swift_getWitnessTable();
  v39 = v47;
  sub_1C0FDBA4C(v24, v22, WitnessTable);
  v40 = *(v51 + 8);
  v40(v24, v22);
  sub_1C0FDBA4C(v39, v22, WitnessTable);
  return (v40)(v39, v22);
}

void *sub_1C10A4324@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v36 = sub_1C1265170();
  v35 = sub_1C1264420();
  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v40[6] = a9;
  v17 = type metadata accessor for PhotosItemsListRow();
  v18 = (a1 + *(v17 + 80));
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_1C10A0C40(v17);
  v22 = sub_1C12659A0();
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v39 = 0;
  __src[35] = 0;
  sub_1C10A0D98(v17, v40);
  v28 = v40[22];
  v29 = v40[23];
  v30 = v40[24];
  v31 = v40[25];

  sub_1C100C7D0(v40);
  v32 = sub_1C12659A0();
  *&v41[0] = v28;
  *(&v41[0] + 1) = v29;
  v41[1] = 0uLL;
  *&v42 = v30;
  *(&v42 + 1) = v31;
  *&v43 = v32;
  *(&v43 + 1) = v33;
  *&__src[3] = v41[0];
  *&__src[11] = 0uLL;
  *&__src[19] = v42;
  *&__src[27] = v43;
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v30;
  v44[5] = v31;
  v44[6] = v32;
  v44[7] = v33;
  sub_1C10A7E70(v41, v37);
  sub_1C0FFC7B0(v44, &qword_1EBE924C0);
  *a8 = v36;
  *(a8 + 8) = v35;
  *(a8 + 16) = v19;
  *(a8 + 24) = v20;
  *(a8 + 32) = v21;
  *(a8 + 40) = v22;
  *(a8 + 48) = v24;
  *(a8 + 56) = KeyPath;
  *(a8 + 64) = 0;
  *(a8 + 72) = v26;
  *(a8 + 80) = 0;
  *(a8 + 88) = v27;
  *(a8 + 96) = 0;
  return memcpy((a8 + 98), __src, 0x46uLL);
}

uint64_t sub_1C10A4500@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = a6 + *(type metadata accessor for LazyHGridOrVGrid() + 52);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  result = a5();
  *a6 = a1 & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  return result;
}

uint64_t sub_1C10A45C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v61 = a1;
  v64 = a9;
  *&v70 = a3;
  *(&v70 + 1) = a4;
  v71 = a5;
  v72 = a6;
  v59 = a6;
  v73 = a7;
  v74 = a8;
  v52 = a8;
  v75 = a10;
  v58 = a10;
  v57 = type metadata accessor for PhotosItemsListRow();
  v62 = *(v57 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v46[-v17];
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v46[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v70 = a3;
  *(&v70 + 1) = a4;
  v50 = a4;
  v71 = a5;
  v72 = a6;
  v21 = a5;
  v51 = a5;
  v73 = a7;
  v74 = a8;
  v22 = a7;
  v49 = a7;
  v75 = a10;
  type metadata accessor for PhotosItemsListRow.ItemContainerView();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer();
  v23 = sub_1C1263190();
  v24 = swift_getWitnessTable();
  v25 = sub_1C1001354();
  v66 = v24;
  v67 = v25;
  v55 = v23;
  v53 = swift_getWitnessTable();
  *&v70 = a3;
  *(&v70 + 1) = a4;
  v71 = v21;
  v72 = v23;
  v73 = v22;
  v26 = v52;
  v74 = v52;
  v75 = v53;
  v27 = type metadata accessor for PhotosDraggableForEach();
  v56 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v48 = &v46[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v29);
  v54 = &v46[-v31];
  v32 = a3;
  (*(v18 + 16))(v65, v61, a3, v30);
  v33 = v57;
  v61 = *(a2 + *(v57 + 76));

  v47 = sub_1C10A1D28(v33);
  sub_1C0FDB0A8(a2 + *(v33 + 108), &v70);
  v34 = *(a2 + *(v33 + 96));
  v35 = v62;
  v36 = v60;
  (*(v62 + 16))(v60, a2, v33);
  v37 = (*(v35 + 80) + 72) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v50;
  *(v38 + 2) = v32;
  *(v38 + 3) = v39;
  v40 = v59;
  *(v38 + 4) = v51;
  *(v38 + 5) = v40;
  *(v38 + 6) = v49;
  *(v38 + 7) = v26;
  *(v38 + 8) = v58;
  (*(v35 + 32))(&v38[v37], v36, v33);

  v41 = v48;
  sub_1C1039330(v61, v47, &v70, v34, 0, 0, sub_1C10A7ABC, v48, v38, v32);
  v42 = swift_getWitnessTable();
  v43 = v54;
  sub_1C0FDBA4C(v41, v27, v42);
  v44 = *(v56 + 8);
  v44(v41, v27);
  sub_1C0FDBA4C(v43, v27, v42);
  return (v44)(v43, v27);
}

uint64_t sub_1C10A4B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v37 = *(a2 + 16);
  v36 = *(a2 + 24);
  v35 = *(a2 + 32);
  v34 = *(a2 + 40);
  v33 = *(a2 + 48);
  v32 = *(a2 + 56);
  v31 = *(a2 + 64);
  v55 = v37;
  v56 = v36;
  v57 = v35;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  type metadata accessor for PhotosItemsListRow.ItemContainerView();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x1E697E040];
  v40 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v6 = type metadata accessor for PhotosItemsListCellContainer();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_1C1263190();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - v13;
  v14 = sub_1C10A4FAC(a1, a2);
  v15 = sub_1C10A5380(a1, a2);
  v42 = v37;
  v43 = v36;
  v44 = v35;
  v45 = v34;
  v46 = v33;
  v47 = v32;
  v48 = v31;
  v49 = v3;
  v50 = a1;
  sub_1C11FC1D4(v14 & 1, v15 & 1, sub_1C10A7B4C, v8);
  v16 = sub_1C1264420();
  v17 = (v3 + *(a2 + 80));
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_1C10A0C40(a2);
  v21 = sub_1C12659A0();
  v23 = v22;
  v24 = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v16, v18, v19, v21, v23, v6, v24, v20);
  (*(v38 + 8))(v8, v6);
  v25 = sub_1C1001354();
  v51 = v24;
  v52 = v25;
  v26 = swift_getWitnessTable();
  v27 = v30;
  sub_1C0FDBA4C(v11, v9, v26);
  v28 = *(v39 + 8);
  v28(v11, v9);
  sub_1C0FDBA4C(v27, v9, v26);
  return (v28)(v27, v9);
}

uint64_t sub_1C10A4FAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v42 = a1;
  v43 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v34 - v13;
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C10A1758(v20, v19);
  v21 = *(a2 + 84);
  v41 = v2;
  v22 = *&v2[v21];
  if (v22 < 1 || (v23 = *(*(*(a2 + 48) + 8) + 8), (sub_1C12662F0() & 1) != 0))
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v34 = v16;
  v40 = *&v41[*(a2 + 76)];
  swift_getAtKeyPath();
  v24 = v19;
  sub_1C12662D0();
  v25 = v45[0];
  v41 = v24;
  v42 = v15;
  sub_1C1266310();
  v39 = v46;
  if (v25 >= v46)
  {
    v31 = *(v36 + 8);
    v36 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_11:
    v31(v44, v8);
    (*(v34 + 8))(v41, v42);
    return 0;
  }

  v37 = v23;
  v38 = a2;
  v26 = (v35 + 16);
  v27 = (v35 + 8);
  v28 = (v36 + 8);
  v36 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v46 = v25;
    v29 = sub_1C12663A0();
    v30 = v43;
    (*v26)(v6);
    (v29)(v45, 0);
    swift_getAtKeyPath();
    (*v27)(v6, v30);
    LOBYTE(v29) = sub_1C1265DE0();
    v31 = *v28;
    (*v28)(v11, v8);
    if (v29)
    {
      break;
    }

    v32 = v25 + v22;
    if (!__OFADD__(v25, v22))
    {
      v25 += v22;
      if (v32 < v39)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  v31(v44, v8);
  (*(v34 + 8))(v41, v42);
  return 1;
}

uint64_t sub_1C10A5380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *(a2 + 24);
  v77 = *(v5 - 8);
  v78 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v9 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v79 = &v69 - v10;
  v91 = v5;
  v72 = sub_1C1266790();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v69 - v11;
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v69 - v18;
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v69 - v22;
  v23 = *(v4 + 16);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C10A1758(v4, v27);
  v88 = *(v3 + *(v4 + 84));
  v76 = v88 - 1;
  if (v88 < 1 || (v87 = *(*(*(v4 + 48) + 8) + 8), (sub_1C12662F0() & 1) != 0))
  {
    (*(v24 + 8))(v27, v23);
    return 0;
  }

  v75 = v9;
  v29 = *(v3 + *(v4 + 76));
  v30 = v92;
  swift_getAtKeyPath();
  v31 = v84;
  (*(v85 + 16))(v84, v30, v8);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v8);
  sub_1C1265D60();
  v32 = v91;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v91);
  v70 = v24;
  v86 = v27;
  v83 = v29;
  if (EnumTagSinglePayload == 1)
  {
    (*(v71 + 8))(v12, v72);
    v34 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v8);
  }

  else
  {
    v34 = v80;
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
    (*(v77 + 8))(v12, v32);
  }

  v35 = v81;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v81 + 16);
  v38 = v79;
  v39 = v75;
  v37(v79, v84, v75);
  v78 = v36;
  v37((v38 + v36), v34, v39);
  if (__swift_getEnumTagSinglePayload(v38, 1, v8) == 1)
  {
    v40 = *(v35 + 8);
    v41 = v75;
    v40(v34, v75);
    v40(v84, v41);
    if (__swift_getEnumTagSinglePayload(v38 + v78, 1, v8) == 1)
    {
      v40(v38, v75);
      v42 = *(v85 + 8);
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v43 = v73;
  v37(v73, v38, v75);
  v44 = v78;
  if (__swift_getEnumTagSinglePayload(v38 + v78, 1, v8) == 1)
  {
    v45 = *(v81 + 8);
    v46 = v75;
    v45(v80, v75);
    v45(v84, v46);
    (*(v85 + 8))(v43, v8);
LABEL_14:
    (*(v74 + 8))(v38, TupleTypeMetadata2);
LABEL_15:
    result = sub_1C12662D0();
    v47 = v93[0] + v76;
    if (__OFADD__(v93[0], v76))
    {
      __break(1u);
      return result;
    }

    sub_1C1266310();
    v84 = v93[0];
    if (v47 >= v93[0])
    {
      v59 = *(v85 + 8);
      v85 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    }

    else
    {
      v48 = (v77 + 16);
      v49 = (v77 + 8);
      v50 = (v85 + 8);
      v85 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v93[4] = v47;
        v51 = v23;
        v52 = sub_1C12663A0();
        v53 = v4;
        v54 = v89;
        v55 = v91;
        (*v48)(v89);
        v52(v93, 0);
        v56 = v8;
        v57 = v90;
        swift_getAtKeyPath();
        v58 = v54;
        v4 = v53;
        (*v49)(v58, v55);
        LOBYTE(v53) = sub_1C1265DE0();
        v59 = *v50;
        v60 = v57;
        v8 = v56;
        (*v50)(v60, v56);
        if (v53)
        {
          v59(v92, v56);
          (*(v70 + 8))(v86, v51);
          return 1;
        }

        v61 = v47 + v88;
        if (__OFADD__(v47, v88))
        {
          break;
        }

        v47 += v88;
        v23 = v51;
        if (v61 >= v84)
        {
          goto LABEL_23;
        }
      }

      v23 = v51;
    }

LABEL_23:
    v59(v92, v8);
    (*(v70 + 8))(v86, v23);
    return 0;
  }

  v62 = v85;
  v63 = v38 + v44;
  v64 = v90;
  (*(v85 + 32))(v90, v63, v8);
  v65 = sub_1C1265DE0();
  v42 = *(v62 + 8);
  v42(v64, v8);
  v66 = *(v81 + 8);
  v67 = v75;
  v66(v80, v75);
  v66(v84, v67);
  v42(v43, v8);
  v66(v79, v67);
  if ((v65 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v68 = v86;
  v42(v92, v8);
  (*(v70 + 8))(v68, v23);
  return 1;
}

uint64_t sub_1C10A5D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  v44 = a2;
  v47 = a5;
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v10;
  v51 = v11;
  v12 = v10;
  v38[1] = v10;
  v52 = v13;
  v53 = v14;
  v15 = v13;
  v38[2] = v13;
  v38[3] = v14;
  v16 = v14;
  v54 = v17;
  v55 = v18;
  v19 = v17;
  v38[4] = v17;
  v56 = a6;
  v20 = type metadata accessor for PhotosItemsListRow.ItemContainerView();
  v45 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v39 = v38 - v21;
  v22 = sub_1C1263190();
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v40 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v43 = v38 - v25;
  v50 = v12;
  v51 = a3;
  v52 = v15;
  v53 = v16;
  v54 = v19;
  v55 = a4;
  v56 = a6;
  v26 = type metadata accessor for PhotosItemsListRow();
  v27 = (a1 + *(v26 + 100));
  v28 = *v27;
  v29 = v27[1];
  v30 = v41;
  (*(v42 + 16))(v41, v44, a3);
  v31 = v39;
  sub_1C10A60C0(v28, v29, v30, a3, v39);

  sub_1C10A1614(v26);
  WitnessTable = swift_getWitnessTable();
  sub_1C12659A0();
  v33 = v40;
  sub_1C1264E90();
  (*(v45 + 8))(v31, v20);
  v48 = WitnessTable;
  v49 = MEMORY[0x1E697E040];
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_1C0FDBA4C(v33, v22, v34);
  v36 = *(v46 + 8);
  v36(v33, v22);
  sub_1C0FDBA4C(v35, v22, v34);
  return (v36)(v35, v22);
}

uint64_t sub_1C10A60C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PhotosItemsListRow.ItemContainerView();
  return (*(*(a4 - 8) + 32))(&a5[*(v8 + 76)], a3, a4);
}

uint64_t sub_1C10A6158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 + 16);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v34[1] = swift_getWitnessTable();
  v5 = sub_1C1262920();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = v34 - v9;
  v10 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = *(a1 + 24);
  v12 = sub_1C1265AB0();
  v34[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = sub_1C1263C30();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v37 = v34 - v19;
  if (*v2)
  {
    v20 = sub_1C1263AB0();
    MEMORY[0x1EEE9AC00](v20);
    v34[-4] = v4;
    v34[-3] = v11;
    v33 = v21;
    sub_1C10A6A8C();
    sub_1C1262910();
    WitnessTable = swift_getWitnessTable();
    v23 = v35;
    sub_1C0FDBA4C(v7, v5, WitnessTable);
    v24 = v36[1];
    v24(v7, v5);
    sub_1C0FDBA4C(v23, v5, WitnessTable);
    swift_getWitnessTable();
    v25 = v37;
    sub_1C1112E18();
    v24(v7, v5);
    v24(v23, v5);
  }

  else
  {

    v35 = sub_1C12638C0();
    v36 = v34;
    MEMORY[0x1EEE9AC00](v35);
    v34[-4] = v4;
    v34[-3] = v11;
    sub_1C10A6A8C();
    v33 = v11;
    sub_1C1265AA0();
    v26 = swift_getWitnessTable();
    sub_1C0FDBA4C(v14, v12, v26);
    v27 = *(v34[0] + 8);
    v27(v14, v12);
    sub_1C0FDBA4C(v17, v12, v26);
    swift_getWitnessTable();
    v25 = v37;
    sub_1C1112D68();
    v27(v14, v12);
    v27(v17, v12);
  }

  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v41 = v28;
  v42 = v29;
  v30 = v39;
  v31 = swift_getWitnessTable();
  sub_1C0FDBA4C(v25, v30, v31);
  return (*(v38 + 8))(v25, v30);
}

uint64_t sub_1C10A676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LazyHGridOrVGrid();
  sub_1C0FDBA4C(a1 + *(v9 + 48), a2, a3);
  sub_1C0FDBA4C(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C10A6864@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_1C1263190();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  type metadata accessor for LazyHGridOrVGrid();
  sub_1C12659A0();
  sub_1C1264E90();
  v17[2] = a1;
  v17[3] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v6, v3, WitnessTable);
  v11 = *(v4 + 8);
  v11(v6, v3);
  (*(v4 + 16))(v6, v9, v3);
  v15 = 0;
  v16 = 1;
  v17[0] = v6;
  v17[1] = &v15;
  v14[0] = v3;
  v14[1] = MEMORY[0x1E6981840];
  v13[2] = WitnessTable;
  v13[3] = MEMORY[0x1E6981838];
  sub_1C119EE80(v17, 2, v14);
  v11(v9, v3);
  return (v11)(v6, v3);
}

uint64_t sub_1C10A6A8C()
{
  sub_1C1263DC0();
  sub_1C10A7A1C();
  return sub_1C1266FE0();
}

unint64_t sub_1C10A6AE4()
{
  result = qword_1EBE92A68;
  if (!qword_1EBE92A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A68);
  }

  return result;
}

unint64_t sub_1C10A6B68()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_1C1266F10();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel();
      v0 = sub_1C1265790();
      if (v3 <= 0x3F)
      {
        sub_1C10A77C0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
        v0 = v4;
        if (v5 <= 0x3F)
        {
          v0 = sub_1C1007F88();
          if (v6 <= 0x3F)
          {
            sub_1C10A77C0(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v0 = v7;
            if (v8 <= 0x3F)
            {
              swift_getExtendedExistentialTypeMetadata();
              sub_1C10A77C0(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C10A77C0(319, &qword_1EDE775B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                if (v12 > 0x3F)
                {
                  return v11;
                }

                sub_1C10A77C0(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
                if (v13 > 0x3F)
                {
                  return v11;
                }

                sub_1C10A77C0(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v14 > 0x3F)
                {
                  return v11;
                }

                sub_1C10A7810(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v15 > 0x3F)
                {
                  return v11;
                }

                sub_1C10A6EE0();
                if (v16 > 0x3F)
                {
                  return v11;
                }

                sub_1C10A77C0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                if (v17 > 0x3F)
                {
                  return v11;
                }

                else
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C10A6EE0()
{
  if (!qword_1EDE775A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93690);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE775A8);
    }
  }
}

uint64_t sub_1C10A6F44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C10A70C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
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
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10A7310()
{
  sub_1C10A77C0(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C10A7810(319, &qword_1EDE76AD0, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C10A77C0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C10A7454(uint64_t result, unsigned int a2, uint64_t a3)
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
      return __swift_getEnumTagSinglePayload((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *(v17 + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 40) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
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

void sub_1C10A75C0(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
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
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
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
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((v18 + 39) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *(v18 + 24) = v19;
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
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10A77C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C10A7810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *sub_1C10A7874(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10A7954()
{
  result = qword_1EBE92A70;
  if (!qword_1EBE92A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A70);
  }

  return result;
}

unint64_t sub_1C10A7A1C()
{
  result = qword_1EDE7BBA0;
  if (!qword_1EDE7BBA0)
  {
    sub_1C1263DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBA0);
  }

  return result;
}

uint64_t sub_1C10A7ABC()
{
  OUTLINED_FUNCTION_4_25();
  v0 = type metadata accessor for PhotosItemsListRow();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_7_3();
  return sub_1C10A4B10(v1, v2);
}

uint64_t objectdestroy_55Tm()
{
  type metadata accessor for PhotosItemsListRow();
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v3);

  v5 = v0[23];
  type metadata accessor for PhotosScrollViewModel();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v3 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + v0[27]);
  OUTLINED_FUNCTION_27_1(v0[28]);
  OUTLINED_FUNCTION_27_1(v0[29]);
  OUTLINED_FUNCTION_1_10(v3 + v0[30]);
  OUTLINED_FUNCTION_27_1(v0[31]);
  v7 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_1C1058610(*(v3 + v0[33]), *(v3 + v0[33] + 8), *(v3 + v0[33] + 9));
  v9 = v3 + v0[34];
  sub_1C1001C04(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  OUTLINED_FUNCTION_27_1(v0[35]);
  return swift_deallocObject();
}

void *sub_1C10A7DE0()
{
  OUTLINED_FUNCTION_4_25();
  v0 = type metadata accessor for PhotosItemsListRow();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_7_3();
  return sub_1C10A4324(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1C10A7E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A7EE0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 PhotosNotificationCell.init(_:isExpanded:icon:content:bottomAccessory:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *(a9 + 136) = swift_getKeyPath();
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  result = *(a1 + 32);
  v21 = *(a1 + 48);
  *(a9 + 32) = result;
  *(a9 + 48) = v21;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = a2;
  *(a9 + 120) = a3;
  *(a9 + 128) = a4;
  return result;
}

uint64_t sub_1C10A8008()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t PhotosNotificationCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  *&v54 = a1 + 5;
  v3 = a1[2];
  sub_1C1263190();
  v52 = a1[3];
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  sub_1C1263190();
  v49 = a1[4];
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v59 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C20);
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v60 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v48 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v58 = sub_1C1263190();
  v62 = *(v58 - 8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v48 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A78);
  v56 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v63 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v48 - v24;
  memcpy(v85, v55, 0x99uLL);
  *&v25 = v49;
  *(&v25 + 1) = *v54;
  *&v26 = v3;
  *(&v26 + 1) = v52;
  v54 = v25;
  v55 = v26;
  v70 = v26;
  v71 = v25;
  v27 = a1[7];
  v52 = a1[6];
  v49 = v27;
  v72 = v52;
  v73 = v27;
  v74 = v85;
  v75 = *&v85[5];
  sub_1C1263AA0();
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  v28 = swift_getWitnessTable();
  v29 = v48;
  sub_1C1264FA0();
  (*(v6 + 8))(v9, v4);
  v84 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C00);
  v82 = v28;
  v83 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  sub_1C0FDB6D4(&unk_1EDE76D60, &qword_1EBE90C00);
  sub_1C100C6E8();
  v31 = v51;
  sub_1C1264960();
  (*(v59 + 8))(v29, v10);
  OUTLINED_FUNCTION_8_3();
  v33 = sub_1C0FDB6D4(v32, &qword_1EBE90C20);
  v80 = v30;
  v81 = v33;
  v34 = swift_getWitnessTable();
  v35 = v53;
  sub_1C1264AE0();
  (*(v60 + 8))(v31, v14);
  sub_1C1265950();
  v65 = v55;
  v66 = v54;
  v67 = v52;
  v68 = v49;
  v69 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A80);
  OUTLINED_FUNCTION_10();
  v37 = sub_1C0FDB6D4(v36, &qword_1EBE91C40);
  v78 = v34;
  v79 = v37;
  v38 = v58;
  v39 = swift_getWitnessTable();
  sub_1C10A987C();
  v40 = v57;
  sub_1C1264F60();
  (*(v62 + 8))(v35, v38);
  OUTLINED_FUNCTION_11();
  v42 = sub_1C0FDB6D4(v41, &qword_1EBE92A78);
  v76 = v39;
  v77 = v42;
  v43 = v56;
  v44 = swift_getWitnessTable();
  v45 = v61;
  sub_1C0FDBA4C(v40, v43, v44);
  v46 = *(v63 + 8);
  v46(v40, v43);
  sub_1C0FDBA4C(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_1C10A87E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void, void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v58 = a6;
  v52 = a5;
  v56 = a7;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v45 - v17;
  v19 = v18;
  v45 = v18;
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1C12654C0();
  v50 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v49 = sub_1C1263190();
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v45 - v25;
  sub_1C12638E0();
  v26 = a1;
  v59 = v19;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v27 = a4;
  v28 = v52;
  v29 = v58;
  v63 = v52;
  v64 = v58;
  v65 = v26;
  v30 = v26;
  v46 = v26;
  v66 = a8;
  v67 = a9;
  sub_1C12654B0();
  memcpy(v78, v30, 0x99uLL);
  v72 = v45;
  v73 = a2;
  v74 = a3;
  v75 = v27;
  v76 = v28;
  v77 = v29;
  type metadata accessor for PhotosNotificationCell();
  sub_1C10A8008();
  v31 = swift_getWitnessTable();
  v32 = v57;
  sub_1C1265060();
  (*(v50 + 8))(v22, v20);
  v70 = v31;
  v71 = MEMORY[0x1E697EBE0];
  v33 = v49;
  v50 = swift_getWitnessTable();
  v34 = v48;
  sub_1C0FDBA4C(v32, v33, v50);
  v35 = v51;
  v52 = *(v51 + 8);
  v36 = v52(v32, v33);
  v37 = v53;
  v46[12](v36);
  v38 = v55;
  sub_1C0FDBA4C(v37, a3, v58);
  v39 = v54;
  WitnessTable = *(v54 + 8);
  WitnessTable(v37, a3);
  v40 = *(v35 + 16);
  v41 = v57;
  v40(v57, v34, v33);
  v78[0] = v41;
  (*(v39 + 16))(v37, v38, a3);
  v78[1] = v37;
  v72 = v33;
  v73 = a3;
  v68 = v50;
  v69 = v58;
  sub_1C119EE80(v78, 2, &v72);
  v42 = WitnessTable;
  WitnessTable(v38, a3);
  v43 = v52;
  v52(v34, v33);
  v42(v37, a3);
  return v43(v41, v33);
}

uint64_t sub_1C10A8D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v48 = a3;
  v49 = a6;
  v9 = *(a3 - 8);
  v46 = a5;
  v47 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v38 - v12;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1263190();
  v43 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  (*(a1 + 64))(v22);
  sub_1C10A0734();
  sub_1C1264E90();
  (*(v14 + 8))(v17, a2);
  v56[3] = a4;
  v56[4] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v25 = v24;
  v39 = v20;
  sub_1C0FDBA4C(v20, v18, WitnessTable);
  v26 = v43;
  v42 = *(v43 + 8);
  v27 = v42(v20, v18);
  v28 = v44;
  (*(a1 + 80))(v27);
  v29 = v45;
  v30 = v46;
  v31 = v48;
  sub_1C0FDBA4C(v28, v48, v46);
  v32 = v47;
  v40 = *(v47 + 8);
  v40(v28, v31);
  v33 = *(v26 + 16);
  v34 = v39;
  v33(v39, v25, v18);
  v56[0] = v34;
  (*(v32 + 16))(v28, v29, v31);
  v54 = 0;
  v55 = 1;
  v56[1] = v28;
  v56[2] = &v54;
  v53[0] = v18;
  v53[1] = v31;
  v53[2] = MEMORY[0x1E6981840];
  v50 = WitnessTable;
  v51 = v30;
  v52 = MEMORY[0x1E6981838];
  sub_1C119EE80(v56, 3, v53);
  v35 = v40;
  v40(v29, v31);
  v36 = v42;
  v42(v25, v18);
  v35(v28, v31);
  return v36(v34, v18);
}

uint64_t sub_1C10A9148@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A98);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  memcpy(__dst, a1, 0x99uLL);
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v29[5] = a6;
  v29[6] = a7;
  type metadata accessor for PhotosNotificationCell();
  v19 = sub_1C10A9384();
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B60);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929D8);
    v25 = sub_1C109F964();
    __dst[0] = v24;
    __dst[1] = v25;
    swift_getOpaqueTypeConformance2();
    sub_1C1265480();
    sub_1C0FCF004(v21);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92AA8) + 36)] = xmmword_1C12B0720;
    v26 = &v18[*(v16 + 36)];
    *v26 = 0xC02E000000000000;
    v26[8] = 0;
    sub_1C0FB4B4C(v18, a8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a8, v27, 1, v16);
}

uint64_t (*sub_1C10A9384())()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v3) = *(v0 + 152);
  v5 = *(v0 + 136);
  v9[0] = *(v0 + 136);
  if (v3 == 1)
  {
    sub_1C0FCF1B4(v5);
    v6 = v9[0];
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FFC474(v5, *(&v9[0] + 1), 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[1];
  }

  if (!v6)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v6;
  return sub_1C0FFC480;
}

uint64_t sub_1C10A9538()
{
  v0 = sub_1C1263130();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12652F0();
  sub_1C1265230();
  v5 = sub_1C12651E0();

  KeyPath = swift_getKeyPath();
  v8[1] = v4;
  v8[2] = KeyPath;
  v8[3] = v5;
  (*(v1 + 104))(v3, *MEMORY[0x1E697E6E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929D8);
  sub_1C109F964();
  sub_1C1264BB0();
  (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1C10A96D8())()
{
  sub_1C10AA0C4();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_10();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1C0FFC94C;
}

uint64_t sub_1C10A975C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C10A96D8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_2_10();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C10AA214;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C10A97C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_2_10();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC94C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C10A9A70(v4, v3);
}

unint64_t sub_1C10A987C()
{
  result = qword_1EBE92A88;
  if (!qword_1EBE92A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A80);
    sub_1C10A9900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A88);
  }

  return result;
}

unint64_t sub_1C10A9900()
{
  result = qword_1EBE92A90;
  if (!qword_1EBE92A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A98);
    sub_1C10A99B8();
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A90);
  }

  return result;
}

unint64_t sub_1C10A99B8()
{
  result = qword_1EBE92AA0;
  if (!qword_1EBE92AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92AA8);
    sub_1C0FDB6D4(&qword_1EBE92AB0, &qword_1EBE92AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92AA0);
  }

  return result;
}

uint64_t sub_1C10A9A70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C10AA0C4();
  return sub_1C1263800();
}

uint64_t View.photosNotificationCellCancellation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1C68EE920](v4, a3, &type metadata for PhotosNotificationCellCancellationModifier);
}

uint64_t sub_1C10A9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B50);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_1C0FE7B00;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B58);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v12;
  sub_1C10AA01C(v10, a4);
  return sub_1C0FCF1B4(a2);
}

void PhotosNotificationCellConfiguration.cellPadding.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void static PhotosNotificationCellConfiguration.smallIcon.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #20.0 }

  *a1 = xmmword_1C12B0730;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0740, xmmword_1C12B0750);
}

void static PhotosNotificationCellConfiguration.largeIcon.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #10.0 }

  *a1 = xmmword_1C12B0760;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0770, xmmword_1C12B0780);
}

void static PhotosNotificationCellConfiguration.largeIconStacked.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #10.0 }

  *a1 = xmmword_1C12B0760;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0770, xmmword_1C12B0790);
}

uint64_t sub_1C10A9E20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10A9E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1C10A9EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10A9F30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10A9F50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1C10A9F9C()
{
  result = qword_1EBE92B48;
  if (!qword_1EBE92B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B48);
  }

  return result;
}

uint64_t sub_1C10AA01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10AA0C4()
{
  result = qword_1EBE92B70;
  if (!qword_1EBE92B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B70);
  }

  return result;
}

unint64_t sub_1C10AA128()
{
  result = qword_1EBE92B78;
  if (!qword_1EBE92B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92B50);
    sub_1C0FDB6D4(&qword_1EBE92B80, &qword_1EBE92B58);
    sub_1C0FDB6D4(&qword_1EBE90B48, &qword_1EBE90B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B78);
  }

  return result;
}

uint64_t sub_1C10AA244@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v17 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a2, a3, 0);
    (*(v11 + 8))(v13, v10);
    v14 = v24[1];
    if (v24[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v14 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 40))(ObjectType, v14);
  swift_unknownObjectRelease();
LABEL_6:
  v18 = a1 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v16 & 1;
  *(v19 + 24) = a1 & 1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = a4 & 1;
  *(v19 + 48) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = v20;
  KeyPath = swift_getKeyPath();
  LOBYTE(v24[0]) = 0;
  *a5 = v18;
  *(a5 + 8) = sub_1C10AA4C0;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C10AAA3C;
  *(a5 + 32) = v19;
  *(a5 + 40) = sub_1C10AAA58;
  *(a5 + 48) = v21;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v18;
  sub_1C1058CE4(a2, a3, v20);
  return sub_1C1058CE4(a2, a3, v20);
}

double sub_1C10AA4CC@<D0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (a4)
    {
      swift_unknownObjectRetain();
      v14 = a3;
      if (a2)
      {
LABEL_5:
        ObjectType = swift_getObjectType();
        (*(v14 + 200))(ObjectType, v14);
        v17 = v16;
        swift_unknownObjectRelease();
        v18 = swift_getObjectType();
        v19 = (*(v17 + 24))(v18, v17);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {

      sub_1C1266420();
      v20 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FF9034(a2, a3, 0);
      (*(v11 + 8))(v13, v10);
      v14 = *(&v36 + 1);
      if (v36)
      {
        goto LABEL_5;
      }
    }

    v19 = 0;
LABEL_8:
    if (a4)
    {
      swift_unknownObjectRetain();
      if (a2)
      {
LABEL_10:
        v21 = swift_getObjectType();
        (*(a3 + 200))(v21, a3);
        v23 = v22;
        swift_unknownObjectRelease();
        v24 = swift_getObjectType();
        v25 = (*(v23 + 16))(v24, v23);
        swift_unknownObjectRelease();
LABEL_13:
        KeyPath = swift_getKeyPath();
        v32 = v19;
        v33 = v25;
        v34 = KeyPath;
        v35 = 256;
        sub_1C10AAA70();
        sub_1C10AAAC4();
        goto LABEL_14;
      }
    }

    else
    {

      sub_1C1266420();
      v26 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FF9034(a2, a3, 0);
      (*(v11 + 8))(v13, v10);
      a3 = *(&v36 + 1);
      if (v36)
      {
        goto LABEL_10;
      }
    }

    v25 = 0;
    goto LABEL_13;
  }

  v32 = swift_getKeyPath();
  sub_1C10AAA70();
  sub_1C10AAAC4();
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_14:
  sub_1C1263C20();
  result = *&v36;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  *a5 = v36;
  *(a5 + 16) = v29;
  *(a5 + 24) = v30;
  *(a5 + 25) = v31;
  return result;
}

uint64_t sub_1C10AA850@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FF9034(a1, a2, 0);
  result = (*(v9 + 8))(v11, v8);
  LOBYTE(a1) = v18[0];
  a2 = v18[1];
  if (v18[0])
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(a2 + 200))(ObjectType, a2);
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = swift_getObjectType();
    LOBYTE(a1) = (*(v16 + 8))(v17, v16);
    result = swift_unknownObjectRelease();
  }

LABEL_6:
  *a4 = a1 & 1;
  *(a4 + 1) = 257;
  return result;
}

unint64_t sub_1C10AAA70()
{
  result = qword_1EBE92B88;
  if (!qword_1EBE92B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B88);
  }

  return result;
}

unint64_t sub_1C10AAAC4()
{
  result = qword_1EBE92B90;
  if (!qword_1EBE92B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B90);
  }

  return result;
}

unint64_t sub_1C10AAB18()
{
  result = qword_1EBE92B98;
  if (!qword_1EBE92B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B98);
  }

  return result;
}

uint64_t PhotosColumns.countPerPage.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if (*v0 != 0x8000000000000000 || v1 != -1)
    {
      return *v0 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

PhotosSwiftUICore::PhotosColumns __swiftcall PhotosColumns.init(_:span:prefixItemAdditionalSpan:)(Swift::Int _, Swift::Int span, Swift::Int prefixItemAdditionalSpan)
{
  *v3 = _;
  v3[1] = span;
  v3[2] = prefixItemAdditionalSpan;
  result.prefixItemAdditionalSpan = prefixItemAdditionalSpan;
  result.span = span;
  result.count = _;
  return result;
}

void *sub_1C10AABF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12659A0();
  v4 = v3;
  sub_1C10AACD0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_1C102EFA0(__dst, &v6, &qword_1EBE92BB8);
  sub_1C0F9E21C(v9, &qword_1EBE92BB8);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0x58uLL);
}

uint64_t sub_1C10AACD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1265300();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = sub_1C12651B0();
  sub_1C0FDB76C();
  v6 = sub_1C1265270();
  sub_1C12652F0();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v7 = sub_1C1265350();

  (*(v3 + 8))(v5, v2);
  sub_1C1262D40();
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(v13[0]) = 1;
  *&v11[3] = *&v11[27];
  *&v11[11] = *&v11[35];
  *&v11[19] = *&v11[43];
  v8 = sub_1C1265190();
  v12[0] = v7;
  v12[1] = 0;
  LOWORD(v12[2]) = 1;
  *(&v12[2] + 2) = *v11;
  *(&v12[4] + 2) = *&v11[8];
  *(&v12[6] + 2) = *&v11[16];
  v12[8] = *&v11[23];
  v12[9] = v8;
  *a1 = v6;
  memcpy(a1 + 1, v12, 0x50uLL);
  v13[0] = v7;
  v13[1] = 0;
  v14 = 1;
  v15 = *v11;
  v16 = *&v11[8];
  *v17 = *&v11[16];
  *&v17[14] = *&v11[23];
  v18 = v8;

  sub_1C102EFA0(v12, v10, &qword_1EBE92BC0);
  sub_1C0F9E21C(v13, &qword_1EBE92BC0);
}

_BYTE *storeEnumTagSinglePayload for PhotosMockFaceView(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C10AB01C()
{
  result = qword_1EBE92BA8;
  if (!qword_1EBE92BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92BA8);
  }

  return result;
}

uint64_t PhotosListCell.init(_:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  v4 = type metadata accessor for PhotosListCell();
  v5 = v4[9];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((v3 + v5), __src, 0xD1uLL);
  v6 = v4[10];
  *(v3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  sub_1C1009908();
  *(v3 + v4[12]) = 0x4039000000000000;
  *(v3 + v4[13]) = 0x403D000000000000;
  v7 = v4[14];
  *(v3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8);
  swift_storeEnumTagMultiPayload();
  return (*(*(v0 - 8) + 32))(v3, v1, v0);
}

uint64_t sub_1C10AB1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 36);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10AB3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C1263130();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C10AB5FC(uint64_t a1)
{
  sub_1C10AB1DC(a1, v2);
  sub_1C100C7D0(v2);
  return v2[161];
}

double sub_1C10AB62C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  return v1;
}

double sub_1C10AB678()
{
  result = sub_1C10AB62C();
  if (result <= 44.0)
  {
    return 44.0;
  }

  return result;
}

uint64_t sub_1C10AB6A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C10AF1D8(v8, a1);
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v5, v2);
}

uint64_t PhotosListCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BC8);
  sub_1C10239B0(&qword_1EBE92BD0, &qword_1EBE92BC8);
  *a2 = sub_1C1009330();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BD8);
  sub_1C10AB9B4(v2, *(a1 + 16), a2 + *(v6 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BE0);
  sub_1C10239B0(&qword_1EBE92BE8, &qword_1EBE92BE0);
  sub_1C100AE3C();
  v7 = OUTLINED_FUNCTION_2_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BF0);
  *(a2 + *(result + 36)) = v7 & 1;
  return result;
}

uint64_t sub_1C10AB9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C00);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v36 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C08);
  MEMORY[0x1EEE9AC00](v38);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for PhotosListCell();
  if (sub_1C10AB5FC(v19))
  {
    sub_1C10AB678();
    *v13 = sub_1C1263AB0();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C60);
    sub_1C10AC08C(a1, a2, &v13[*(v20 + 44)]);
    sub_1C10AB1DC(v19, v44);
    sub_1C100C7D0(v44);
    v37 = v45;
    v36 = v46;
    v21 = sub_1C1264470();
    v22 = &v13[*(v11 + 36)];
    *v22 = v21;
    *(v22 + 24) = v36;
    *(v22 + 8) = v37;
    v22[40] = 0;
    v23 = &qword_1EBE92C10;
    sub_1C10AF3D4();
    swift_storeEnumTagMultiPayload();
    sub_1C10AF014();
    sub_1C10AF0CC();
    sub_1C1263C20();
    v24 = v13;
  }

  else
  {
    *v10 = sub_1C12638E0();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C20);
    sub_1C10ADB58(a1, a2, &v10[*(v25 + 44)]);
    sub_1C10AB1DC(v19, v44);
    sub_1C100C7D0(v44);
    v37 = v45;
    v36 = v46;
    v26 = sub_1C1264470();
    v27 = &v10[*(v39 + 36)];
    *v27 = v26;
    *(v27 + 24) = v36;
    *(v27 + 8) = v37;
    v27[40] = 0;
    v23 = &qword_1EBE92C00;
    sub_1C10AF3D4();
    swift_storeEnumTagMultiPayload();
    sub_1C10AF014();
    sub_1C10AF0CC();
    sub_1C1263C20();
    v24 = v10;
  }

  sub_1C0F9E27C(v24, v23);
  sub_1C1265150();
  v28 = sub_1C12651E0();

  if (qword_1EDE77908 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDE77910;
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDE82B08;
  v31 = qword_1EDE82B10;
  v32 = qword_1EDE82B28;
  *v8 = v28;
  *(v8 + 4) = 514;
  *(v8 + 2) = v30;
  *(v8 + 3) = v31;
  *(v8 + 2) = xmmword_1EDE82B18;
  *(v8 + 6) = v32;
  *(v8 + 7) = 0;
  *(v8 + 8) = v29;
  *(v8 + 9) = swift_getKeyPath();
  v8[104] = 0;
  *(v8 + 14) = swift_getKeyPath();
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 145) = 0u;
  *(v8 + 21) = swift_getKeyPath();
  v8[176] = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  sub_1C12628D0();
  v33 = v40;
  sub_1C10AF3D4();
  v34 = v43;
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C58);
  sub_1C10AF3D4();
  sub_1C0F9E27C(v8, &qword_1EBE90C40);
  sub_1C0F9E27C(v18, &qword_1EBE92C18);
  sub_1C0F9E27C(v34, &qword_1EBE90C40);
  return sub_1C0F9E27C(v33, &qword_1EBE92C18);
}

uint64_t sub_1C10AC08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C68);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v33 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C70);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  *v18 = sub_1C12638E0();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C78);
  sub_1C10AC35C(a1, a2, &v18[*(v19 + 44)]);
  v20 = sub_1C1264470();
  v21 = &v18[*(v13 + 44)];
  *v21 = v20;
  __asm { FMOV            V0.2D, #8.0 }

  *(v21 + 8) = _Q0;
  *(v21 + 24) = xmmword_1C12B0D40;
  v21[40] = 0;
  *v11 = sub_1C12659A0();
  v11[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA0);
  sub_1C10AD90C(v11 + *(v28 + 44));
  v29 = sub_1C1264470();
  v30 = v11 + *(v6 + 44);
  *v30 = v29;
  *(v30 + 8) = xmmword_1C12A7250;
  __asm { FMOV            V0.2D, #12.0 }

  *(v30 + 24) = _Q0;
  v30[40] = 0;
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C80);
  sub_1C10AF3D4();
  sub_1C0F9E27C(v11, &qword_1EBE92C68);
  sub_1C0F9E27C(v18, &qword_1EBE92C70);
  sub_1C0F9E27C(v8, &qword_1EBE92C68);
  return sub_1C0F9E27C(v15, &qword_1EBE92C70);
}

uint64_t sub_1C10AC35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C88);
  MEMORY[0x1EEE9AC00](v76);
  v67 = &v59[-v5];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v59[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C90);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59[-v10];
  v69 = sub_1C12657D0();
  v11 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C98);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v59[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v59[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v72 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59[-v24];
  v26 = sub_1C12659A0();
  v73 = v27;
  v74 = v26;
  sub_1C10ACC00(a1, a2, v80);
  memcpy(v86, v80, sizeof(v86));
  memcpy(v87, v80, sizeof(v87));
  sub_1C10AF3D4();
  sub_1C0F9E27C(v87, &qword_1EBE90CD0);
  memcpy(__dst, v86, sizeof(__dst));
  v28 = type metadata accessor for PhotosListCell();
  v70 = v25;
  sub_1C10ACD48(v28, v25);
  sub_1C10AB6A0(v16);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA8);
  if (__swift_getEnumTagSinglePayload(v16, 1, v29) == 1)
  {
    sub_1C0F9E27C(v16, &qword_1EBE90C38);
LABEL_6:
    v50 = v71;
    v51 = v71;
    v52 = 1;
    goto LABEL_7;
  }

  MEMORY[0x1C68EEF20](v29);
  sub_1C0F9E27C(v16, &qword_1EBE92CA8);
  v30 = sub_1C12657C0();
  (*(v11 + 8))(v13, v69);
  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1C12659A0();
  sub_1C1262C80();
  v31 = v80[18];
  v32 = v82;
  v33 = v84;
  v34 = v85;
  LOBYTE(v80[0]) = 1;
  LOBYTE(v79[0]) = v81;
  v78 = v83;
  v35 = *MEMORY[0x1E697E6D0];
  v36 = sub_1C1263130();
  v37 = v68;
  (*(*(v36 - 8) + 104))(v68, v35, v36);
  sub_1C10AF248(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C10AF184();
    v69 = v33;
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
    v61 = v32;
    v39 = v62;
    sub_1C1264BC0();
    sub_1C0F9E27C(v37, &qword_1EBE92FE0);
    v40 = v80[0];
    v60 = LOBYTE(v79[0]);
    LODWORD(v63) = v78;
    v42 = v65;
    v41 = v66;
    v68 = v34;
    v43 = *(v65 + 16);
    v44 = v31;
    v45 = v64;
    v43(v64, v39, v66);
    v46 = v67;
    *v67 = 0;
    *(v46 + 8) = v40;
    v46[2] = v44;
    *(v46 + 24) = v60;
    v46[4] = v61;
    *(v46 + 40) = v63;
    v47 = v68;
    v46[6] = v69;
    v46[7] = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CC0);
    v43(v46 + *(v48 + 48), v45, v41);
    v49 = *(v42 + 8);
    v49(v39, v41);
    v49(v45, v41);
    v50 = v71;
    sub_1C0FB4D1C();
    v51 = v50;
    v52 = 0;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v51, v52, 1, v76);
    v53 = v70;
    v54 = v72;
    sub_1C10AF3D4();
    v55 = v75;
    sub_1C10AF3D4();
    v57 = v73;
    v56 = v74;
    v79[0] = v74;
    v79[1] = v73;
    memcpy(&v79[2], __dst, 0x80uLL);
    v58 = v77;
    memcpy(v77, v79, 0x90uLL);
    v58[18] = 0;
    *(v58 + 152) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CB0);
    sub_1C10AF3D4();
    sub_1C10AF3D4();
    sub_1C10AF3D4();
    sub_1C0F9E27C(v50, &qword_1EBE92C98);
    sub_1C0F9E27C(v53, &qword_1EBE92CA0);
    sub_1C0F9E27C(v55, &qword_1EBE92C98);
    sub_1C0F9E27C(v54, &qword_1EBE92CA0);
    v80[0] = v56;
    v80[1] = v57;
    memcpy(&v80[2], __dst, 0x80uLL);
    return sub_1C0F9E27C(v80, &qword_1EBE90CE0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10ACC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = sub_1C1265170();
  sub_1C12659A0();
  sub_1C1262C80();
  v6 = v27;
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v18 = v32;
  v19 = v31;
  v26 = v28;
  v25 = v30;
  v24 = 0;
  v10 = sub_1C12659A0();
  v20 = v11;
  v21 = v10;
  sub_1C10AE428(a1, a2, v23);
  v12 = v23[0];
  v13 = v23[1];
  v14 = v23[2];
  v15 = v23[3];
  v16 = v23[4];
  sub_1C100DCB0(v23[0]);
  result = sub_1C100DD20(v12);
  *a3 = v22;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v19;
  *(a3 + 48) = v18;
  *(a3 + 56) = 0x3FF0000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = v12;
  *(a3 + 80) = v13;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v16;
  *(a3 + 112) = v21;
  *(a3 + 120) = v20;
  return result;
}

uint64_t sub_1C10ACD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10);
  OUTLINED_FUNCTION_0();
  v94 = v5;
  v95 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v93 = v7;
  v101.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  v96.n128_u64[0] = v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CC8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v106 = v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CD0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v99 = v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CD8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v100 = v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v108 = v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE0);
  OUTLINED_FUNCTION_0();
  v97 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  v22 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v90 - v29;
  v30 = sub_1C10AB5FC(a1);
  v31 = MEMORY[0x1E697E6C0];
  if ((v30 & 1) == 0)
  {
    sub_1C10AB3F8(v27);
    v32 = sub_1C1263120();
    (*(v24 + 8))(v27, v22);
    if ((v32 & 1) == 0)
    {
      v31 = MEMORY[0x1E697E708];
    }
  }

  v33 = *v31;
  v109 = v24;
  v34 = *(v24 + 104);
  v35 = v110;
  v111 = v22;
  v34(v110, v33, v22);
  (*(*(a1 + 24) + 40))(&v114, *(a1 + 16));
  v107 = a2;
  switch(v114)
  {
    case 1:
      v112[0] = xmmword_1C12A7260;
      LOBYTE(v112[1]) = 0;
      if (qword_1EDE7B058 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    case 2:
      v112[0] = xmmword_1C12B0D50;
      LOBYTE(v112[1]) = 0;
      if (qword_1EDE7B058 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    default:
      sub_1C100A454(a1);
      sub_1C1264510();
      v36 = sub_1C1264870();
      v38 = v37;
      v21 = v39;
      v97 = v34;

      LODWORD(__dst[0]) = sub_1C1263E50();
      v40 = sub_1C1264850();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      sub_1C0FDB8E8(v36, v38, v21 & 1);

      v91 = v42;
      v92 = v40;
      *&__dst[0] = v40;
      *(&__dst[0] + 1) = v42;
      v35 = (v44 & 1);
      LOBYTE(__dst[1]) = v35;
      *(&__dst[1] + 1) = v46;
      v47 = v108;
      v97(v108, *MEMORY[0x1E697E6D0], v111);
      OUTLINED_FUNCTION_1_20();
      sub_1C10AF248(v48, v49);
      if (sub_1C1265DE0())
      {
        OUTLINED_FUNCTION_20_1();
        v51 = sub_1C10239B0(v50, &qword_1EBE92FE0);
        v52 = v47;
        v53 = v93;
        v54 = v102;
        sub_1C1264BC0();
        sub_1C0F9E27C(v52, &qword_1EBE92FE0);
        sub_1C0FDB8E8(v92, v91, v35);

        *&__dst[0] = MEMORY[0x1E6981148];
        *(&__dst[0] + 1) = v54;
        *&__dst[1] = MEMORY[0x1E6981138];
        *(&__dst[1] + 1) = v51;
        v55 = v51;
        swift_getOpaqueTypeConformance2();
        v56 = v95;
        v57 = v96.n128_u64[0];
        sub_1C1264DF0();
        (*(v94 + 8))(v53, v56);
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C100D8A4();
        v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8);
        v59 = sub_1C10AF290();
        *&__dst[0] = v58;
        *(&__dst[0] + 1) = v54;
        *&__dst[1] = v59;
        *(&__dst[1] + 1) = v55;
        swift_getOpaqueTypeConformance2();
        v60 = v100;
        sub_1C1263C20();
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        sub_1C1263C20();
        sub_1C0F9E27C(v60, &qword_1EBE92CD8);
        sub_1C0F9E27C(v57, &qword_1EBE90D18);
        return (*(v109 + 8))(v110, v111);
      }

      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_3_25();
LABEL_8:
      OUTLINED_FUNCTION_10_16(&qword_1EDE7B060);
      OUTLINED_FUNCTION_15_17();
      OUTLINED_FUNCTION_8_20();
      v96 = __dst[0];
      v61 = sub_1C1265230();
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_6_19(KeyPath, v96);
      OUTLINED_FUNCTION_1_20();
      sub_1C10AF248(v63, v64);
      if (OUTLINED_FUNCTION_11_14())
      {
        v65 = v21;
        (*(v109 + 16))(v108, v35, v61);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE8);
        sub_1C10AF290();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_13_14();
        sub_1C10239B0(v67, v68);
        v92 = v21;
        v69 = v66;
        v70 = v102;
        sub_1C1264BC0();
        OUTLINED_FUNCTION_13_14();
        sub_1C0F9E27C(v71, v72);
        memcpy(__dst, v112, 0x58uLL);
        sub_1C0F9E27C(__dst, &qword_1EBE92CE8);
        v73 = v97;
        v74 = v103;
        (*(v97 + 2))(v99, v65, v103);
        swift_storeEnumTagMultiPayload();
        sub_1C100D8A4();
        *&v112[0] = v69;
        *(&v112[0] + 1) = v70;
        OUTLINED_FUNCTION_4_26();
        v75 = v100;
        sub_1C1263C20();
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        sub_1C1263C20();
        sub_1C0F9E27C(v75, &qword_1EBE92CD8);
        (*(v73 + 1))(v92, v74);
        return (*(v109 + 8))(v110, v111);
      }

      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_3_25();
LABEL_12:
      OUTLINED_FUNCTION_10_16(&qword_1EDE7B060);
      OUTLINED_FUNCTION_15_17();
      OUTLINED_FUNCTION_8_20();
      v101 = __dst[0];
      v77 = sub_1C1265230();
      v78 = swift_getKeyPath();
      OUTLINED_FUNCTION_6_19(v78, v101);
      OUTLINED_FUNCTION_1_20();
      sub_1C10AF248(v79, v80);
      result = OUTLINED_FUNCTION_11_14();
      v81 = v109;
      if (result)
      {
        (*(v109 + 16))(v108, v35, v77);
        v101.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE8);
        sub_1C10AF290();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_13_14();
        sub_1C10239B0(v82, v83);
        v84 = v21;
        v85 = v102;
        sub_1C1264BC0();
        OUTLINED_FUNCTION_13_14();
        sub_1C0F9E27C(v86, v87);
        memcpy(__dst, v112, 0x58uLL);
        sub_1C0F9E27C(__dst, &qword_1EBE92CE8);
        v88 = v97;
        v89 = v103;
        (*(v97 + 2))(v106, v84, v103);
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        *&v112[0] = v101.n128_u64[0];
        *(&v112[0] + 1) = v85;
        OUTLINED_FUNCTION_4_26();
        sub_1C1263C20();
        (*(v88 + 1))(v84, v89);
        return (*(v81 + 8))(v110, v111);
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1C10AD90C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PhotosListCell();
  v10 = sub_1C100A3D4(v9);
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v18 = xmmword_1C12A7270;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C1265090();
  v14 = *(v3 + 16);
  v14(v5, v8, v2);
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB8);
  v14((a1 + *(v15 + 48)), v5, v2);
  sub_1C0FDB850(v10, v12, 0);
  v16 = *(v3 + 8);

  v16(v8, v2);
  v16(v5, v2);
  sub_1C0FDB8E8(v10, v12, 0);
}

uint64_t sub_1C10ADB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1C12657D0();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v46 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v55);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10);
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = sub_1C12659A0();
  v62 = v23;
  v63 = v22;
  sub_1C10AE2C8(a1, a2, v67);
  memcpy(v73, v67, sizeof(v73));
  memcpy(v74, v67, sizeof(v74));
  sub_1C10AF3D4();
  sub_1C0F9E27C(v74, &qword_1EBE90CD0);
  memcpy(__dst, v73, sizeof(__dst));
  v24 = type metadata accessor for PhotosListCell();
  v67[0] = sub_1C100A3D4(v24);
  v67[1] = v25;
  LOBYTE(v67[2]) = 0;
  v67[3] = MEMORY[0x1E69E7CC0];
  v26 = *MEMORY[0x1E697E6D0];
  v27 = sub_1C1263130();
  (*(*(v27 - 8) + 104))(v16, v26, v27);
  sub_1C10AF248(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    v54 = a3;
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
    v60 = v21;
    sub_1C1264BC0();
    sub_1C0F9E27C(v16, &qword_1EBE92FE0);

    sub_1C10ACD48(v24, v61);
    sub_1C10AB6A0(v10);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
    {
      sub_1C0F9E27C(v10, &qword_1EBE90C38);
    }

    else
    {
      v30 = v51;
      MEMORY[0x1C68EEF20](v29);
      sub_1C0F9E27C(v10, &qword_1EBE92CA8);
      v31 = sub_1C12657C0();
      (*(v52 + 8))(v30, v53);
      if (v31)
      {
        sub_1C12659A0();
        sub_1C1262C80();
        LODWORD(v55) = 0;
        v52 = v69;
        v53 = v67[19];
        v50 = v72;
        v51 = v71;
        LOBYTE(v66[0]) = 1;
        v65 = v68;
        v64 = v70;
        v49 = 1;
        v48 = v68;
        v47 = v70;
        LOBYTE(v67[0]) = 0;
LABEL_7:
        v33 = v56;
        v32 = v57;
        v34 = *(v57 + 16);
        v35 = v58;
        v34(v56, v60, v58);
        v36 = v59;
        sub_1C10AF3D4();
        v66[0] = v63;
        v66[1] = v62;
        memcpy(&v66[2], __dst, 0x80uLL);
        v37 = v54;
        memcpy(v54, v66, 0x90uLL);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE92D00);
        v34(&v37[v38[12]], v33, v35);
        v39 = &v37[v38[16]];
        *v39 = 0;
        v39[8] = 1;
        sub_1C10AF3D4();
        v40 = &v37[v38[24]];
        v41 = v49;
        *v40 = 0;
        *(v40 + 1) = v41;
        v42 = v48;
        *(v40 + 2) = v53;
        *(v40 + 3) = v42;
        v43 = v47;
        *(v40 + 4) = v52;
        *(v40 + 5) = v43;
        v44 = v50;
        *(v40 + 6) = v51;
        *(v40 + 7) = v44;
        v40[64] = v55;
        sub_1C10AF3D4();
        sub_1C0F9E27C(v61, &qword_1EBE92CA0);
        v45 = *(v32 + 8);
        v45(v60, v35);
        sub_1C0F9E27C(v36, &qword_1EBE92CA0);
        v45(v33, v35);
        v67[0] = v63;
        v67[1] = v62;
        memcpy(&v67[2], __dst, 0x80uLL);
        return sub_1C0F9E27C(v67, &qword_1EBE90CE0);
      }
    }

    v48 = 0;
    v49 = 0;
    v52 = 0;
    v53 = 0;
    v47 = 0;
    v50 = 0;
    v51 = 0;
    LODWORD(v55) = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10AE2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = sub_1C1265170();
  type metadata accessor for PhotosListCell();
  sub_1C10AB678();
  sub_1C10AB678();
  sub_1C12659A0();
  sub_1C1262C80();
  v6 = v27;
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v18 = v32;
  v19 = v31;
  v26 = v28;
  v25 = v30;
  v24 = 0;
  v10 = sub_1C12659A0();
  v20 = v11;
  v21 = v10;
  sub_1C10AE428(a1, a2, v23);
  v12 = v23[0];
  v13 = v23[1];
  v14 = v23[2];
  v15 = v23[3];
  v16 = v23[4];
  sub_1C100DCB0(v23[0]);
  result = sub_1C100DD20(v12);
  *a3 = v22;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v19;
  *(a3 + 48) = v18;
  *(a3 + 56) = 0x3FF0000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = v12;
  *(a3 + 80) = v13;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v16;
  *(a3 + 112) = v21;
  *(a3 + 120) = v20;
  return result;
}

uint64_t sub_1C10AE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_41(a1, a2);
  v6 = v5(v4);
  if (v7)
  {
    v17[0] = v6;
    v17[1] = v7;
    v18 = 1;
    if (qword_1EDE7B058 != -1)
    {
      OUTLINED_FUNCTION_3_25();
    }

    v13 = qword_1EDE7B060;
    v14 = dword_1EDE7B068;
    v15 = BYTE2(dword_1EDE7B068);
    v16 = 1;
    PhotosPrefetchableImage(_:font:)(v17, &v13, &v19);
    sub_1C100DC0C();
    v12 = v19;
    v8 = v20;
    v9 = sub_1C12651F0();
    result = swift_getKeyPath();
    v11 = v12;
  }

  else
  {
    v8 = 0;
    result = 0;
    v9 = 0;
    v11 = 0uLL;
  }

  *a3 = v11;
  *(a3 + 16) = v8;
  *(a3 + 24) = result;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_1C10AE52C()
{
  if (qword_1EDE7B890 != -1)
  {
    swift_once();
  }

  qword_1EDE77910 = qword_1EDE7B898;
}

uint64_t photosListCellBackgroundColor.getter()
{
  if (qword_1EDE77908 != -1)
  {
    swift_once();
  }
}

void sub_1C10AE630()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C107032C();
    if (v1 <= 0x3F)
    {
      sub_1C100D364();
      if (v2 <= 0x3F)
      {
        sub_1C100D3BC();
        if (v3 <= 0x3F)
        {
          sub_1C100D46C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10AE710(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v3 = *(v32 - 8);
  v4 = *(v3 + 84);
  v5 = *(sub_1C1263130() - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C12657D0() - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 64);
  if (v4 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  if (*(v5 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v5 + 64);
  }

  v14 = *(v3 + 64);
  v15 = *(v6 + 80);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = v13 + v15 + 1;
  v18 = a1;
  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v19 = v10 + ((((((*(v6 + 64) + ((v17 + ((v16 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & (v9 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_15;
  }

  v23 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

LABEL_23:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v25 = v19;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v12 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  if (v4 == v12)
  {
    v27 = v4;
    v28 = v32;
  }

  else
  {
    v29 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v11 <= 0xFE)
    {
      v30 = *(v29 + 208);
      if (v30 > 1)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v18 = (v17 + ((v29 + v16 + 209) & ~v16)) & ~v15;
    v27 = v7;
    v28 = v31;
  }

  return __swift_getEnumTagSinglePayload(v18, v27, v28);
}

void sub_1C10AEAB8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v4 = *(v36 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  v7 = *(v35 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_1C12657D0() - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 64);
  if (v5 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (*(v6 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v6 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = *(v7 + 80);
  v18 = v14 + v17 + 1;
  v19 = (((((*(v7 + 64) + ((v18 + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v20 = v11 + v19 + 1;
  v21 = 8 * v20;
  if (a3 <= v13)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v20 <= 3)
    {
      v28 = ((a3 - v13 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v28))
      {
        v24 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v24 = v29;
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
  }

  if (v13 >= v23)
  {
    v27 = ~v17;
    switch(v24)
    {
      case 1:
        v22[v20] = 0;
        if (v23)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v22[v20] = 0;
        if (v23)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&v22[v20] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v23)
        {
          return;
        }

LABEL_35:
        if (v5 == v13)
        {
          v31 = v22;
          v32 = v5;
          v33 = v36;
        }

        else
        {
          v34 = &v22[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v12 <= 0xFE)
          {
            if (v23 > 0xFE)
            {
              *(v34 + 200) = 0;
              *(v34 + 184) = 0u;
              *(v34 + 168) = 0u;
              *(v34 + 152) = 0u;
              *(v34 + 136) = 0u;
              *(v34 + 120) = 0u;
              *(v34 + 104) = 0u;
              *(v34 + 88) = 0u;
              *(v34 + 72) = 0u;
              *(v34 + 56) = 0u;
              *(v34 + 40) = 0u;
              *(v34 + 24) = 0u;
              *(v34 + 8) = 0u;
              *(v34 + 208) = 0;
              *v34 = (v23 - 255);
            }

            else
            {
              *(v34 + 208) = -v23;
            }

            return;
          }

          v31 = (v18 + ((v34 + v16 + 209) & ~v16)) & v27;
          v32 = v8;
          v33 = v35;
        }

        __swift_storeEnumTagSinglePayload(v31, v23, v32, v33);
        break;
    }
  }

  else
  {
    v25 = ~v13 + v23;
    if (v20 < 4)
    {
      v26 = (v25 >> v21) + 1;
      if (v20)
      {
        v30 = v25 & ~(-1 << v21);
        bzero(v22, v20);
        if (v20 == 3)
        {
          *v22 = v30;
          v22[2] = BYTE2(v30);
        }

        else if (v20 == 2)
        {
          *v22 = v30;
        }

        else
        {
          *v22 = v25;
        }
      }
    }

    else
    {
      bzero(v22, v20);
      *v22 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        v22[v20] = v26;
        break;
      case 2:
        *&v22[v20] = v26;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&v22[v20] = v26;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10AEF30()
{
  result = qword_1EBE92BF8;
  if (!qword_1EBE92BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BF0);
    sub_1C10239B0(&qword_1EBE92BE8, &qword_1EBE92BE0);
    sub_1C10239B0(&unk_1EDE7BB80, &qword_1EBE90C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92BF8);
  }

  return result;
}

unint64_t sub_1C10AF014()
{
  result = qword_1EBE92C28;
  if (!qword_1EBE92C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92C10);
    sub_1C10239B0(&qword_1EBE92C30, &unk_1EBE92C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92C28);
  }

  return result;
}

unint64_t sub_1C10AF0CC()
{
  result = qword_1EBE92C40;
  if (!qword_1EBE92C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92C00);
    sub_1C10239B0(&qword_1EBE92C48, &unk_1EBE92C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92C40);
  }

  return result;
}

unint64_t sub_1C10AF184()
{
  result = qword_1EBE92CB8;
  if (!qword_1EBE92CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92CB8);
  }

  return result;
}

uint64_t sub_1C10AF1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10AF248(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C10AF290()
{
  result = qword_1EDE7BD28;
  if (!qword_1EDE7BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8);
    sub_1C10AF348();
    sub_1C10239B0(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD28);
  }

  return result;
}

unint64_t sub_1C10AF348()
{
  result = qword_1EDE7BD78;
  if (!qword_1EDE7BD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CF0);
    sub_1C1062140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD78);
  }

  return result;
}

uint64_t sub_1C10AF3D4()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_3();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1C10AF430()
{
  result = qword_1EBE92CF8;
  if (!qword_1EBE92CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CD8);
    sub_1C100D8A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C10AF290();
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92CF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_1C1265DE0();
}

void *PhotosMapCell.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy(a3 + 2, __src, 0xD1uLL);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C10AF5E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, (v1 + 16), 0xD1uLL);
  memcpy(v15, (v1 + 16), 0xD1uLL);
  if (sub_1C100D688(v15) == 1)
  {
    nullsub_1(v15);
    memcpy(v12, v14, 0xD1uLL);
    v7 = nullsub_1(v12);
    memcpy(a1, v7, 0xD0uLL);
    memcpy(v13, v14, 0xD1uLL);
    v8 = nullsub_1(v13);
    return sub_1C100D690(v8, v11);
  }

  else
  {
    nullsub_1(v15);
    memcpy(v12, v14, 0xD1uLL);
    nullsub_1(v12);
    memcpy(v13, v14, 0xD1uLL);
    nullsub_1(v13);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10AFFB4(v14);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PhotosMapCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = *(a1 + 16);
  *&v66 = a1;
  OUTLINED_FUNCTION_1();
  v60 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  v62 = v4;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - v11;
  v12 = *(a1 + 24);
  OUTLINED_FUNCTION_0_0();
  v14 = sub_1C0FDB6D4(v13, &unk_1EBE92EC0);
  v54 = v12;
  v82 = v12;
  v83 = v14;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v17 = sub_1C0FDB6D4(v16, &qword_1EBE91C40);
  v80 = WitnessTable;
  v81 = v17;
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v20 = sub_1C0FDB6D4(v19, &unk_1EBE92ED0);
  v78 = v18;
  v79 = v20;
  v21 = swift_getWitnessTable();
  v61 = v8;
  v53 = v21;
  v22 = type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_1();
  v56 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v27 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v57 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v55 = &v52 - v34;
  v35 = *v2;
  v36 = v2[1];
  (*v2)(v33);
  v75 = v35;
  v76 = v36;
  v63 = v2;
  memcpy(v77, v2 + 2, sizeof(v77));
  sub_1C10AF5E8(v84);
  memcpy(v74, v85, sizeof(v74));
  sub_1C100D690(v84, v87);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDE82B08;
  v38 = qword_1EDE82B10;
  v52 = xmmword_1EDE82B18;
  v39 = qword_1EDE82B28;

  sub_1C100C7D0(v84);

  *&v87[0] = v37;
  *(&v87[0] + 1) = v38;
  v87[1] = v52;
  *&v87[2] = v39;
  memcpy(&v87[2] + 8, v74, 0xA8uLL);
  v40 = v58;
  v41 = v62;
  v42 = v65;
  View.cellStyle(for:)(v87, v54, v58);
  memcpy(v86, v87, sizeof(v86));
  sub_1C100C7D0(v86);
  (*(v60 + 8))(v42, v41);
  v73 = 2;
  v72 = 2;
  v75 = v35;
  v76 = v36;
  memcpy(v77, v63 + 2, sizeof(v77));
  sub_1C10AF5E8(v87);
  v43 = v87[0];
  v66 = v87[1];
  v44 = *&v87[2];

  sub_1C100C7D0(v87);
  v69 = v43;
  v70 = v66;
  v71 = v44;
  v45 = v61;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v73, 0, 0, v61, v26);

  (*(v59 + 8))(v40, v45);
  OUTLINED_FUNCTION_4_3();
  v46 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  sub_1C1264E50();
  (*(v56 + 8))(v26, v22);
  v47 = sub_1C1025E04();
  v67 = v46;
  v68 = v47;
  v48 = swift_getWitnessTable();
  v49 = v55;
  sub_1C0FDBA4C(v31, v27, v48);
  v50 = *(v57 + 8);
  v50(v31, v27);
  sub_1C0FDBA4C(v49, v27, v48);
  return (v50)(v49, v27);
}

uint64_t sub_1C10AFEA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10AFEE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
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

uint64_t sub_1C10AFF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10AFFB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10B001C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10B0060(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C10B00A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10B0158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v123 = a2;
  v6 = a1[3];
  v153 = a1[2];
  v5 = v153;
  v154 = &type metadata for OneUpToolbarSpacer;
  v155 = v6;
  v156 = &type metadata for OneUpToolbarSpacer;
  v157 = a1[4];
  v7 = v157;
  OUTLINED_FUNCTION_9_17();
  v8 = sub_1C1265B00();
  OUTLINED_FUNCTION_1();
  v117 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v98 - v11;
  OUTLINED_FUNCTION_1();
  v114 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v115 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v118 = v17;
  OUTLINED_FUNCTION_1();
  v113 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30();
  v112 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v125 = v23;
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v124 = v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92990);
  v129 = v5;
  v130 = v6;
  v126 = v7;
  swift_getTupleTypeMetadata3();
  v32 = sub_1C1265B00();
  OUTLINED_FUNCTION_5_20(&qword_1EBE92E08);
  v120 = v32;
  sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_0();
  v111 = v37;
  v128 = v38;
  v122 = v8;
  v121 = sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v119 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v127 = &v98 - v41;
  v42 = *v2;
  v43 = sub_1C1264450();
  if (v43 == sub_1C1264450())
  {
    v44 = v3;
    v45 = sub_1C10B0C80();
    v46 = sub_1C10B11AC();
    v48 = a1[5];
    v47 = a1[6];
    v49 = a1[7];
    if (v46)
    {
      v50 = 65537;
    }

    else
    {
      v50 = 1;
    }

    v97 = a1[7];
    v125 = v34;
    v52 = v129;
    v51 = v130;
    v53 = v126;
    v54 = sub_1C10B0AF0(v50, 0, 1, v129, v130, v126, v48, v47, v45, v97);
    v56 = v55;
    v124 = &v98;
    v57 = MEMORY[0x1EEE9AC00](v54);
    *(&v98 - 8) = v52;
    *(&v98 - 7) = v51;
    *(&v98 - 6) = v53;
    *(&v98 - 5) = v48;
    *(&v98 - 4) = v47;
    *(&v98 - 3) = v49;
    v97 = v44;
    v58(sub_1C10B1C10, v57);

    OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
    OUTLINED_FUNCTION_2_23();
    WitnessTable = swift_getWitnessTable();
    v131 = v56;
    v132 = WitnessTable;
    OUTLINED_FUNCTION_12_0();
    v60 = v128;
    v61 = swift_getWitnessTable();
    v62 = v111;
    v63 = OUTLINED_FUNCTION_7_20();
    sub_1C0FDBA4C(v63, v64, v61);
    v65 = *(v125 + 8);
    v66 = OUTLINED_FUNCTION_7_20();
    v65(v66);
    sub_1C0FDBA4C(v62, v60, v61);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_20();
    sub_1C1112D68();
    v67 = OUTLINED_FUNCTION_7_20();
    v65(v67);
    (v65)(v62, v60);
  }

  else
  {
    v3[1]();
    v103 = a1[5];
    v100 = v42;
    v68 = v29;
    v106 = v29;
    v69 = v129;
    sub_1C0FDBA4C(v29, v129, v103);
    v70 = v25;
    v71 = *(v25 + 8);
    v104 = v25 + 8;
    v105 = v71;
    v71(v68, v69);
    KeyPath = swift_getKeyPath();
    v72 = v112;
    v3[3]();
    v102 = a1[6];
    v73 = v130;
    sub_1C0FDBA4C(v72, v130, v102);
    v74 = v113;
    v75 = *(v113 + 8);
    v110 = v113 + 8;
    v111 = v75;
    v75(v72, v73);
    v107 = swift_getKeyPath();
    v76 = v115;
    v3[5]();
    v99 = a1[7];
    v77 = v118;
    v78 = v126;
    sub_1C0FDBA4C(v76, v126, v99);
    v79 = v114;
    v80 = *(v114 + 8);
    v101 = v114 + 8;
    v109 = v80;
    v80(v76, v78);
    v81 = v106;
    (*(v70 + 16))(v106, v124, v69);
    LOBYTE(v69) = v100;
    v149 = v100;
    v150 = 0x4044000000000000;
    v151 = KeyPath;
    v152 = 0;
    v153 = v81;
    v154 = &v149;
    v82 = v130;
    (*(v74 + 16))(v72, v125, v130);
    v145 = v69;
    v146 = 0x4044000000000000;
    v147 = v107;
    v148 = 0;
    v155 = v72;
    v156 = &v145;
    v83 = v77;
    v84 = v126;
    (*(v79 + 16))(v76, v83, v126);
    v157 = v76;

    v85 = v129;
    v144[0] = v129;
    v144[1] = &type metadata for OneUpToolbarSpacer;
    v144[2] = v82;
    v144[3] = &type metadata for OneUpToolbarSpacer;
    v144[4] = v84;
    v139 = v103;
    v140 = sub_1C10B1B6C();
    v141 = v102;
    v142 = v140;
    v143 = v99;
    v86 = v116;
    sub_1C119EE80(&v153, 5, v144);
    v109(v76, v84);

    v111(v72, v82);

    v87 = v105;
    v105(v106, v85);
    OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
    OUTLINED_FUNCTION_2_23();
    v88 = swift_getWitnessTable();
    v137 = v85;
    v138 = v88;
    OUTLINED_FUNCTION_12_0();
    v61 = swift_getWitnessTable();
    v89 = v122;
    swift_getWitnessTable();
    sub_1C1112E18();

    (*(v117 + 8))(v86, v89);
    v109(v118, v126);
    v111(v125, v130);
    v87(v124, v129);
  }

  OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
  OUTLINED_FUNCTION_2_23();
  v90 = swift_getWitnessTable();
  v135 = v61;
  v136 = v90;
  OUTLINED_FUNCTION_12_0();
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v133 = v91;
  v134 = v92;
  OUTLINED_FUNCTION_19_0();
  v93 = v121;
  v94 = swift_getWitnessTable();
  v95 = v127;
  sub_1C0FDBA4C(v127, v93, v94);
  return (*(v119 + 8))(v95, v93);
}

uint64_t (*sub_1C10B0AF0(int a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a10;
  *(v19 + 64) = a9;
  *(v19 + 72) = a1;
  *(v19 + 73) = BYTE1(a1) & 1;
  *(v19 + 74) = BYTE2(a1) & 1;
  *(v19 + 80) = a2;
  *(v19 + 88) = a3 & 1;
  return sub_1C10B1C24;
}

uint64_t sub_1C10B0BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getTupleTypeMetadata3();
  v6 = sub_1C1265B00();
  v7 = sub_1C10B1C94();
  WitnessTable = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, &unk_1F407F4A8, v6, v7, WitnessTable, a3);
}

double sub_1C10B0C80()
{
  v1 = sub_1C1263EB0();
  v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 64);
  v36 = *(v0 + 56);
  v18 = v37;

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    v32 = v14;
    v20 = v1;
    v21 = v13;
    v22 = v3;
    v23 = v19;
    sub_1C1262620();

    v3 = v22;
    v13 = v21;
    v1 = v20;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v36, &qword_1EBE92928);
    (*(v15 + 8))(v17, v32);
  }

  sub_1C1226AE4();

  v24 = v35;
  (*(v35 + 104))(v10, *MEMORY[0x1E697FF40], v1);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_1C10B1CE8(v13, v5);
  sub_1C10B1CE8(v10, &v5[v25]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_1C0F9E21C(v10, &qword_1EBE902F0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) == 1)
    {
      sub_1C0F9E21C(v5, &qword_1EBE902F0);
      return 40.0;
    }

    goto LABEL_8;
  }

  v27 = v34;
  sub_1C10B1CE8(v5, v34);
  if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) == 1)
  {
    sub_1C0F9E21C(v10, &qword_1EBE902F0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0);
    (*(v24 + 8))(v27, v1);
LABEL_8:
    sub_1C0F9E21C(v5, &qword_1EBE902E8);
    return 8.0;
  }

  v28 = v33;
  (*(v24 + 32))(v33, &v5[v25], v1);
  sub_1C1097070();
  v29 = sub_1C1265DE0();
  v30 = *(v24 + 8);
  v30(v28, v1);
  sub_1C0F9E21C(v10, &qword_1EBE902F0);
  sub_1C0F9E21C(v13, &qword_1EBE902F0);
  v30(v27, v1);
  sub_1C0F9E21C(v5, &qword_1EBE902F0);
  result = 40.0;
  if ((v29 & 1) == 0)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_1C10B11AC()
{
  v1 = sub_1C1263EB0();
  v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 64);
  v36 = *(v0 + 56);
  v18 = v37;

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    v32 = v14;
    v20 = v1;
    v21 = v13;
    v22 = v3;
    v23 = v19;
    sub_1C1262620();

    v3 = v22;
    v13 = v21;
    v1 = v20;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v36, &qword_1EBE92928);
    (*(v15 + 8))(v17, v32);
  }

  sub_1C1226AE4();

  v24 = v35;
  (*(v35 + 104))(v10, *MEMORY[0x1E697FF40], v1);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_1C10B1CE8(v13, v5);
  sub_1C10B1CE8(v10, &v5[v25]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
  {
    v27 = v34;
    sub_1C10B1CE8(v5, v34);
    if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) != 1)
    {
      v28 = v33;
      (*(v24 + 32))(v33, &v5[v25], v1);
      sub_1C1097070();
      v26 = sub_1C1265DE0();
      v29 = *(v24 + 8);
      v29(v28, v1);
      sub_1C0F9E21C(v10, &qword_1EBE902F0);
      sub_1C0F9E21C(v13, &qword_1EBE902F0);
      v29(v27, v1);
      sub_1C0F9E21C(v5, &qword_1EBE902F0);
      return v26 & 1;
    }

    sub_1C0F9E21C(v10, &qword_1EBE902F0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0);
    (*(v24 + 8))(v27, v1);
    goto LABEL_8;
  }

  sub_1C0F9E21C(v10, &qword_1EBE902F0);
  sub_1C0F9E21C(v13, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) != 1)
  {
LABEL_8:
    sub_1C0F9E21C(v5, &qword_1EBE902E8);
    v26 = 0;
    return v26 & 1;
  }

  sub_1C0F9E21C(v5, &qword_1EBE902F0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1C10B16C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a6;
  v67 = a7;
  v56 = a3;
  v57 = a5;
  v61 = a4;
  v62 = a8;
  v60 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v50 - v14;
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v50 - v20;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v65 = &v50 - v28;
  (*(v29 + 8))(v27);
  v52 = a2;
  sub_1C0FDBA4C(v25, a2, a5);
  v30 = *(v22 + 8);
  v58 = v22 + 8;
  v59 = v30;
  v31 = v30(v25, a2);
  v32 = *(a1 + 24);
  v63 = v18;
  v32(v31);
  v33 = v56;
  sub_1C0FDBA4C(v18, v56, v66);
  v34 = v55;
  v54 = *(v55 + 8);
  v35 = v54(v18, v33);
  (*(a1 + 40))(v35);
  v36 = v61;
  sub_1C0FDBA4C(v12, v61, v67);
  v37 = v60;
  v53 = *(v60 + 8);
  v53(v12, v36);
  v38 = *(v22 + 16);
  v50 = v25;
  v39 = v52;
  v38(v25, v65, v52);
  v72[0] = v25;
  v40 = *(v34 + 16);
  v41 = v63;
  v42 = v51;
  v43 = v33;
  v40(v63, v51, v33);
  v72[1] = v41;
  v44 = *(v37 + 16);
  v45 = v64;
  v44(v12, v64, v36);
  v72[2] = v12;
  v71[0] = v39;
  v71[1] = v33;
  v71[2] = v36;
  v68 = v57;
  v69 = v66;
  v70 = v67;
  sub_1C119EE80(v72, 3, v71);
  v46 = v53;
  v53(v45, v36);
  v47 = v54;
  v54(v42, v43);
  v48 = v59;
  v59(v65, v39);
  v46(v12, v36);
  v47(v63, v43);
  return v48(v50, v39);
}

unint64_t sub_1C10B1B6C()
{
  result = qword_1EBE92E10;
  if (!qword_1EBE92E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E10);
  }

  return result;
}

uint64_t sub_1C10B1BC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10B1C94()
{
  result = qword_1EBE92E18;
  if (!qword_1EBE92E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E18);
  }

  return result;
}

uint64_t sub_1C10B1CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v13 = 0;
  v12 = 0;
  __src[0] = a1;
  *&__src[8] = a2;
  *&__src[16] = a3;
  *&__src[24] = a8;
  *&__src[32] = a4;
  *&__src[40] = a5;
  *&__src[48] = swift_getKeyPath();
  __src[56] = 0;
  *&__src[64] = swift_getKeyPath();
  *&__src[72] = 0;
  *&__src[80] = swift_getKeyPath();
  *&__src[88] = 0;
  MEMORY[0x1C68EE920](__src, a6, &type metadata for PhotosContainerRelativeFrameModifier, a7);
  memcpy(__dst, __src, 0x5AuLL);
  return sub_1C10B2030(__dst);
}

uint64_t sub_1C10B1E80()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosHorizontalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

void (*EnvironmentValues.photosHorizontalContainerLength.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C10B2060();
  sub_1C12637F0();
  OUTLINED_FUNCTION_4_27();
  return sub_1C10B1F6C;
}

uint64_t sub_1C10B1F98(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

uint64_t sub_1C10B1FE4()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosVerticalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

unint64_t sub_1C10B2060()
{
  result = qword_1EDE7FEC0;
  if (!qword_1EDE7FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FEC0);
  }

  return result;
}

unint64_t sub_1C10B20B4()
{
  result = qword_1EDE7FF90[0];
  if (!qword_1EDE7FF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7FF90);
  }

  return result;
}

void (*EnvironmentValues.photosVerticalContainerLength.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C10B20B4();
  sub_1C12637F0();
  OUTLINED_FUNCTION_4_27();
  return sub_1C10B21F8;
}

void sub_1C10B2204(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1C1263800();

  free(v1);
}

uint64_t sub_1C10B2270()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

uint64_t sub_1C10B2334(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 90))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 1)
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

uint64_t sub_1C10B2374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

double sub_1C10B23E0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 == 1)
  {
    return v5;
  }

  sub_1C1266420();
  v7 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0F9E21C(&v9, &qword_1EBE92E30);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1C10B2560(char a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE7F650 != -1)
  {
    swift_once();
  }

  if (byte_1EDE9B668 != 1)
  {
    return 0;
  }

  if (a1)
  {
    v12 = *(v1 + 88);
    v7 = *(v1 + 80);
  }

  else
  {
    v12 = *(v1 + 72);
    v7 = *(v1 + 64);
  }

  v11 = v7;
  if (HIBYTE(v12) != 1)
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v11, &qword_1EBE92E38);
    (*(v4 + 8))(v6, v3);
    return v10;
  }

  return v7;
}

uint64_t sub_1C10B2734()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x5AuLL);
  sub_1C10B293C(v0, &v3);
  sub_1C12659A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E28);
  sub_1C0FDB6D4(&qword_1EDE7BB00, &qword_1EBE92E28);
  sub_1C1264DC0();
}

double sub_1C10B284C(char a1, uint64_t a2, double a3)
{
  v5 = COERCE_DOUBLE(sub_1C10B2560(a1 & 1));
  if (v6)
  {
    v5 = a3;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = v5 - v8 * (v7 + -1.0);
  if (v9 <= 0.0)
  {
    v9 = 0.0;
  }

  v10 = v8 * (*(a2 + 16) + -1.0) + v9 / v7 * *(a2 + 16);
  v11 = sub_1C10B23E0();
  return round(v11 * v10) / v11;
}

uint64_t sub_1C10B2974()
{
  result = sub_1C10B2998();
  byte_1EDE9B668 = result & 1;
  return result;
}

uint64_t sub_1C10B2998()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0F9E21C(v11, &qword_1EBE90620);
    v3 = sub_1C1265E70();
    v4 = [v0 BOOLForKey_];

    if (!v4)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_1C0F9E21C(v11, &qword_1EBE90620);
  }

  if (qword_1EDE7C188 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1262720();
  __swift_project_value_buffer(v6, qword_1EDE7C190);
  v7 = sub_1C12626F0();
  v8 = sub_1C1266430();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C0F96000, v7, v8, "PhotosContainerRelativeFrameWorkaround enabled", v9, 2u);
    MEMORY[0x1C68F1630](v9, -1, -1);
  }

  v5 = 1;
LABEL_10:

  return v5;
}

uint64_t sub_1C10B2B78()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE7C190);
  __swift_project_value_buffer(v0, qword_1EDE7C190);
  return sub_1C12626E0();
}

uint64_t sub_1C10B2BE4()
{
  sub_1C1263840();
  OUTLINED_FUNCTION_1_22();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58);
  __swift_allocate_value_buffer(v6, qword_1EBEA4848);
  __swift_project_value_buffer(v6, qword_1EBEA4848);
  sub_1C1263830();
  if (qword_1EBE8FC78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_31();
  sub_1C10B352C(v7, v8);

  sub_1C1262990();

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1C10B2D54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E60);
  OUTLINED_FUNCTION_1_22();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E68);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EBE8FC70 != -1)
  {
    swift_once();
  }

  v24 = v6;
  v7 = __swift_project_value_buffer(v0, qword_1EBE92E40);
  v22 = *(v2 + 16);
  v23 = v7;
  v22(v5);
  if (qword_1EBE8FC88 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E70);
  v9 = sub_1C1263210();
  v10 = sub_1C1263840();
  v11 = sub_1C10B34D8();
  OUTLINED_FUNCTION_0_31();
  v14 = sub_1C10B352C(v12, v13);
  v25 = &type metadata for ZIndexTransition;
  v26 = v10;
  v27 = v11;
  v28 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1C10B352C(&qword_1EBE92E80, MEMORY[0x1E697E898]);
  v25 = v8;
  v26 = v9;
  v27 = OpaqueTypeConformance2;
  v28 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  sub_1C1262990();

  v18 = *(v2 + 8);
  v18(v5, v0);
  v25 = v0;
  v26 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C1262CE0();
  (v22)(v5, v23, v0);
  if (qword_1EBE8FC90 != -1)
  {
    swift_once();
  }

  sub_1C1262990();

  v18(v5, v0);
  sub_1C1262CE0();
  v19 = sub_1C1262CA0();

  qword_1EBEA4860 = v19;
  return result;
}

uint64_t sub_1C10B3120()
{
  v0 = sub_1C1263210();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1263840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E70);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E60);
  __swift_allocate_value_buffer(v11, qword_1EBE92E40);
  v17 = __swift_project_value_buffer(v11, qword_1EBE92E40);
  v21 = 0x4024000000000000;
  sub_1C1263830();
  v12 = sub_1C10B34D8();
  v13 = sub_1C10B352C(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
  sub_1C1262980();
  (*(v5 + 8))(v7, v4);
  sub_1C1265B80();
  sub_1C1263220();
  v21 = &type metadata for ZIndexTransition;
  v22 = v4;
  v23 = v12;
  v24 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1C10B352C(&qword_1EBE92E80, MEMORY[0x1E697E898]);
  v14 = v18;
  v15 = v19;
  sub_1C1262980();
  (*(v20 + 8))(v3, v15);
  return (*(v8 + 8))(v10, v14);
}

uint64_t sub_1C10B3474()
{
  result = sub_1C1265A50();
  qword_1EBEA4868 = result;
  return result;
}

uint64_t sub_1C10B3494()
{
  result = sub_1C1265A40();
  qword_1EBEA4870 = result;
  return result;
}

unint64_t sub_1C10B34D8()
{
  result = qword_1EBE92E78;
  if (!qword_1EBE92E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E78);
  }

  return result;
}

uint64_t sub_1C10B352C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C10B3590(uint64_t a1, uint64_t *a2)
{
  sub_1C12659D0();
  v3 = sub_1C12659F0();

  *a2 = v3;
  return result;
}

uint64_t sub_1C10B3624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (sub_1C1263250())
  {
    a3 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E88);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E90);
  *(a2 + *(result + 36)) = a3;
  return result;
}

unint64_t sub_1C10B36DC()
{
  result = qword_1EBE92E98;
  if (!qword_1EBE92E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E90);
    sub_1C0FDB6D4(&unk_1EBE92EA0, &qword_1EBE92E88);
    sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E98);
  }

  return result;
}

double sub_1C10B37C0()
{
  v0.n128_f64[0] = OUTLINED_FUNCTION_2_25(&v11);
  *&result = OUTLINED_FUNCTION_0_32(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

uint64_t areEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C10B39E4(a1, &v20);
  if (v21)
  {
    sub_1C0F9DDE4(&v20, v26);
    sub_1C10B39E4(a2, &v20);
    if (v21)
    {
      sub_1C0F9DDE4(&v20, v23);
      v5 = v27;
      v6 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1EEE9AC00](v7);
      v9 = OUTLINED_FUNCTION_1_23(v8, v19[0]);
      v10(v9);
      PhotosDisplayableMediaWrapper.init<A>(_:)(v2, v5, v6, &v20);
      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1EEE9AC00](v13);
      v15 = OUTLINED_FUNCTION_1_23(v14, v19[0]);
      v16(v15);
      PhotosDisplayableMediaWrapper.init<A>(_:)(v2, v11, v12, v19);
      v17 = v22(v19);
      sub_1C1094DD8(v19);
      sub_1C1094DD8(&v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      return v17 & 1;
    }

    sub_1C10B3A54(&v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_1C10B3A54(&v20);
  }

  if (*(a1 + 24))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a2 + 24) == 0;
  }

  return v17 & 1;
}

uint64_t sub_1C10B39E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10B3A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosDisplayableMediaWrapper.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  a4[3] = v10;
  a4[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  v13 = *(v8 + 32);
  v13(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  result = (v13)(v15 + v14, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_1C10B420C;
  a4[6] = v15;
  return result;
}

double sub_1C10B3C14@<D0>(uint64_t a1@<X8>)
{
  PhotosDisplayableMedia.imageContentsRect(item:targetPixelSize:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1C10B3C58@<D0>(uint64_t a1@<X8>)
{
  PhotosDisplayableMedia.preferredContentBoundsWhenDisplayed(in:options:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t PhotosDisplayableMedia.contentBoundsWhenDisplayed(in:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  if ((v6 & 1) == 0)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    (*(v8 + 8))(v7, v8);
    sub_1C12665B0();
    return PXRectWithAspectRatioFittingRect();
  }

  return result;
}

uint64_t sub_1C10B3D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v34 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30[0] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v30 - v11;
  v13 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v35 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - v19;
  sub_1C0FDB0A8(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AC0);
  v21 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v21 ^ 1u, 1, a3);
  v32 = v6;
  (*(v6 + 16))(v18, v34, a3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, a3);
  v33 = TupleTypeMetadata2;
  v34 = v13;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v13 + 16);
  v23(v12, v20, v8);
  v23(&v12[v22], v18, v8);
  if (__swift_getEnumTagSinglePayload(v12, 1, a3) != 1)
  {
    v23(v35, v12, v8);
    if (__swift_getEnumTagSinglePayload(&v12[v22], 1, a3) != 1)
    {
      v26 = v32;
      v27 = v30[0];
      (*(v32 + 32))(v30[0], &v12[v22], a3);
      v25 = sub_1C1265DE0();
      v28 = *(v26 + 8);
      v28(v27, a3);
      v24 = *(v13 + 8);
      v24(v18, v8);
      v28(v35, a3);
      v24(v12, v8);
      goto LABEL_8;
    }

    v24 = *(v13 + 8);
    v24(v18, v8);
    (*(v32 + 8))(v35, a3);
    goto LABEL_6;
  }

  v24 = *(v13 + 8);
  v24(v18, v8);
  if (__swift_getEnumTagSinglePayload(&v12[v22], 1, a3) != 1)
  {
LABEL_6:
    (*(v31 + 8))(v12, v33);
    v25 = 0;
    goto LABEL_8;
  }

  v24(v12, v8);
  v25 = 1;
LABEL_8:
  v24(v20, v8);
  return v25 & 1;
}

_BYTE *storeEnumTagSinglePayload for PhotosMediaDisplayOptions(_BYTE *result, int a2, int a3)
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

double sub_1C10B4364()
{
  v0 = PhotosDisplayableMedia.imageContentsRect(item:targetPixelSize:)(&v11);
  *&result = OUTLINED_FUNCTION_0_32(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12).n128_u64[0];
  return result;
}

double sub_1C10B4398()
{
  v0 = PhotosDisplayableMedia.preferredContentBoundsWhenDisplayed(in:options:)(&v11);
  *&result = OUTLINED_FUNCTION_0_32(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12).n128_u64[0];
  return result;
}

uint64_t EnvironmentValues.photosSnapshotProvider.getter()
{
  sub_1C10B4408();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C10B4408()
{
  result = qword_1EDE81198;
  if (!qword_1EDE81198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81198);
  }

  return result;
}

uint64_t sub_1C10B445C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosSnapshotProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C10B44F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1C10B4558(v2, v1);
}

uint64_t sub_1C10B4558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C10B45B8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C10B4638;
}

void sub_1C10B4638(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PhotosSnapshotProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t PhotosSnapshotProvider.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1C10B4728(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1C12652F0();
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t PhotosSnapshotProvider.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t (*EnvironmentValues.photosSnapshotProvider.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C10B4408();
  sub_1C12637F0();
  return sub_1C10B487C;
}

uint64_t sub_1C10B487C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

int *PhotosMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11)
{
  v17 = *a6;
  OUTLINED_FUNCTION_15_1();
  (*(v18 + 32))(a8);
  result = type metadata accessor for PhotosMaterialTitleCell();
  v20 = (a8 + result[13]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a8 + result[14]);
  *v21 = a3;
  v21[1] = a4;
  *(a8 + result[15]) = a5;
  *(a8 + result[16]) = a9;
  *(a8 + result[17]) = v17;
  v22 = (a8 + result[18]);
  *v22 = a7;
  v22[1] = a10;
  *(a8 + result[19]) = a11;
  return result;
}

uint64_t PhotosMaterialTitleCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v4 = *(a1 + 40);
  v98 = *(a1 + 24);
  v97 = v4;
  type metadata accessor for PhotosMaterialTitleCellContentView();
  OUTLINED_FUNCTION_0();
  v102 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v99 = v7;
  v104 = v8;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v105 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v100 = v11;
  v106 = v12;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v107 = v14;
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v101 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v88 - v18;
  v19 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v23 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v88 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v88 - v32;
  swift_getWitnessTable();
  v34 = OUTLINED_FUNCTION_22_8();
  View.photosTrace.getter(v34, v35);
  v96 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v33, 1, v96) == 1)
  {
    sub_1C0F9E27C(v33, &qword_1EBE919B0);
  }

  else
  {
    v93 = v21;
    v94 = v19;
    v36 = *(v23 + 16);
    v36(v30, v2, a1);
    v95 = v2;
    v36(v27, v2, a1);
    sub_1C1262640();
    v37 = sub_1C1262670();
    v38 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v91 = v38;
      v92 = v37;
      v39 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v114[0] = v90;
      v40 = v39;
      *v39 = 136446466;
      v41 = &v30[*(a1 + 56)];
      v42 = v41[1];
      if (v42)
      {
        v89 = *v41;
        v43 = v42;
      }

      else
      {
        v43 = 0xE300000000000000;
        v89 = 7104878;
      }

      v47 = *(v23 + 8);

      v47(v30, a1);
      v48 = sub_1C0FA0E80(v89, v43, v114);

      *(v40 + 1) = v48;
      *(v40 + 6) = 2082;
      v49 = OUTLINED_FUNCTION_22_8();
      v51 = View.photosChangedProperties.getter(v49, v50);
      v53 = v52;
      v47(v27, a1);
      v54 = sub_1C0FA0E80(v51, v53, v114);

      *(v40 + 14) = v54;
      v55 = sub_1C1262630();
      v56 = v92;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v92, v91, v55, "PhotosMaterialTitleCell", "PhotosMaterialTitleCell title:%{public}s %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_4_8();

      v57 = OUTLINED_FUNCTION_18_15();
      v58(v57);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_18_15();
      v45(v44);
      v46 = *(v23 + 8);
      v46(v27, a1);
      v46(v30, a1);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v59 + 8))(v33);
    v2 = v95;
  }

  v60 = *(a1 + 56);
  v61 = (v2 + *(a1 + 52));
  v62 = v61[1];
  v96 = *v61;
  v63 = v2 + v60;
  v64 = *(v2 + *(a1 + 60));
  v65 = *(v2 + *(a1 + 64));
  v66 = v2;
  v67 = *(v2 + v60);
  v68 = *(v63 + 8);
  v69 = *(a1 + 72);
  LOBYTE(v114[0]) = *(v66 + *(a1 + 68));
  v70 = *(v66 + v69);
  v71 = *(v66 + *(a1 + 76));
  swift_unknownObjectRetain();

  v72 = v99;
  PhotosMaterialTitleCellContentView.init(glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)(v96, v62, v67, v68, v64, v114, v70, v99, v65, v71);
  v73 = *(a1 + 32);
  v114[3] = *(a1 + 16);
  v114[4] = v73;
  __swift_allocate_boxed_opaque_existential_1(v114);
  OUTLINED_FUNCTION_15_1();
  (*(v74 + 16))();
  OUTLINED_FUNCTION_1_24();
  v75 = v104;
  WitnessTable = swift_getWitnessTable();
  v77 = v100;
  View.selectionStyle(for:)(v114, v75, WitnessTable);
  (*(v102 + 8))(v72, v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v114);
  v78 = sub_1C100D614();
  v112 = WitnessTable;
  v113 = v78;
  OUTLINED_FUNCTION_2_26();
  v79 = v106;
  v80 = swift_getWitnessTable();
  v81 = v101;
  View.dropTargetStyle()(v79, v80);
  (*(v105 + 8))(v77, v79);
  v82 = sub_1C10A04F0();
  v110 = v80;
  v111 = v82;
  v83 = v108;
  v84 = swift_getWitnessTable();
  v85 = v103;
  sub_1C0FDBA4C(v81, v83, v84);
  v86 = *(v107 + 8);
  v86(v81, v83);
  sub_1C0FDBA4C(v85, v83, v84);
  return (v86)(v85, v83);
}

uint64_t PhotosMaterialTitleCellContentView.init(glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10)
{
  v17 = *a6;
  v18 = type metadata accessor for PhotosMaterialTitleCellContentView();
  v19 = a8 + v18[15];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v18[16];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v20), __src, 0xD1uLL);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a9;
  *(a8 + 48) = v17;
  v21 = swift_unknownObjectRetain();
  a7(v21);
  result = swift_unknownObjectRelease();
  *(a8 + v18[14]) = a10;
  return result;
}

uint64_t PhotosMaterialTitleCellAffordanceLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10B5570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 64);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosMaterialTitleCellContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  type metadata accessor for PhotosAssetView();
  v147 = *(a1 + 16);
  v3 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v143 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v141 = v6;
  v7 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v148 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v146 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EB8);
  OUTLINED_FUNCTION_19_1();
  v11 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v154 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v151 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  OUTLINED_FUNCTION_19_1();
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v152 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  v150 = v18;
  OUTLINED_FUNCTION_10_17();
  v21 = sub_1C10B9338(v19, v20);
  v22 = *(a1 + 24);
  v182 = v21;
  v183 = v22;
  v129 = v22;
  OUTLINED_FUNCTION_19_0();
  v145 = v3;
  WitnessTable = swift_getWitnessTable();
  v180 = WitnessTable;
  v181 = MEMORY[0x1E697F568];
  OUTLINED_FUNCTION_3_3();
  *&v149 = v7;
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v130 = v23;
  v178 = v23;
  v179 = sub_1C10239B0(v24, &qword_1EBE92EB8);
  *&v155 = v11;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v132 = v25;
  v176 = v25;
  v177 = sub_1C10239B0(v26, &unk_1EBE92EC0);
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v174 = v27;
  v175 = sub_1C10239B0(v28, &qword_1EBE91C40);
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v172 = v29;
  v173 = sub_1C10239B0(v30, &unk_1EBE92ED0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_1();
  v153 = v15;
  v131 = v31;
  v32 = type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v134 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  v133 = v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  OUTLINED_FUNCTION_19_1();
  v135 = v32;
  v36 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v139 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_34();
  v136 = v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8);
  OUTLINED_FUNCTION_19_1();
  v140 = v36;
  v144 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v142 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  v137 = v42 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v138 = &v119 - v45;
  v46 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v127 = v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_30();
  v55 = (v53 - v54);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v119 - v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v119 - v60;
  OUTLINED_FUNCTION_1_24();
  v126 = swift_getWitnessTable();
  v62 = v157;
  View.photosTrace.getter(a1, v126);
  v63 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v61, 1, v63) == 1)
  {
    sub_1C0F9E27C(v61, &qword_1EBE919B0);
    v64 = a1;
    v65 = v62;
  }

  else
  {
    v124 = v63;
    v125 = v46;
    v66 = *(v51 + 16);
    v66(v58, v62, a1);
    v67 = OUTLINED_FUNCTION_20_2();
    (v66)(v67);
    sub_1C1262640();
    v68 = sub_1C1262670();
    v69 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v122 = a1;
      v123 = v50;
      v70 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v171[0] = v119;
      *v70 = 136446466;
      v71 = *(v58 + 3);
      v121 = v68;
      v120 = v69;
      if (v71)
      {
        v72 = *(v58 + 2);
        v73 = v71;
      }

      else
      {
        v73 = 0xE300000000000000;
        v72 = 7104878;
      }

      v75 = *(v51 + 8);

      v64 = v122;
      v75(v58, v122);
      v76 = sub_1C0FA0E80(v72, v73, v171);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2082;
      v77 = View.photosChangedProperties.getter(v64, v126);
      v79 = v78;
      v75(v55, v64);
      v80 = sub_1C0FA0E80(v77, v79, v171);

      *(v70 + 14) = v80;
      v81 = v123;
      v82 = sub_1C1262630();
      v83 = v121;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v121, v120, v82, "PhotosMaterialTitleCellContentView", "PhotosMaterialTitleCellContentView title:%{public}s %{public}s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_4_8();

      (*(v127 + 8))(v81, v125);
    }

    else
    {

      (*(v127 + 8))(v50, v125);
      v74 = *(v51 + 8);
      v74(v55, a1);
      v74(v58, a1);
      v64 = a1;
    }

    v65 = v157;
    OUTLINED_FUNCTION_15_1();
    (*(v84 + 8))(v61);
  }

  v85 = v147;
  if (*(v65 + 32))
  {
    v86 = 0;
  }

  else
  {
    v86 = v147 == MEMORY[0x1E6981E70];
  }

  v87 = v86;
  v88 = v141;
  sub_1C10B65C0(v64, v141);
  v89 = v145;
  v157 = *(v65 + 40);
  sub_1C12649E0();
  v90 = (*(v143 + 8))(v88, v89);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v129;
  *(&v119 - 4) = v85;
  *(&v119 - 3) = v91;
  *(&v119 - 16) = v87;
  *(&v119 - 1) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92EF0);
  sub_1C10239B0(&qword_1EBE92EF8, &qword_1EBE92EF0);
  sub_1C12659A0();
  v92 = v151;
  sub_1C1264F60();
  v93 = OUTLINED_FUNCTION_20_2();
  v94(v93);
  sub_1C10B5570(v64, v168);
  memcpy(v167, v169, sizeof(v167));
  sub_1C100D690(v168, v171);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v95 = qword_1EDE82B08;
  v96 = qword_1EDE82B10;
  v149 = xmmword_1EDE82B18;
  v97 = qword_1EDE82B28;

  sub_1C100C7D0(v168);

  *&v171[0] = v95;
  *(&v171[0] + 1) = v96;
  v171[1] = v149;
  *&v171[2] = v97;
  memcpy(&v171[2] + 8, v167, 0xA8uLL);
  v98 = v150;
  v99 = v155;
  View.cellStyle(for:)(v171, v132, v150);
  memcpy(v170, v171, sizeof(v170));
  sub_1C100C7D0(v170);
  (*(v154 + 8))(v92, v99);
  v166 = 2;
  v165 = 0;
  sub_1C10B5570(v64, v171);
  v100 = v171[0];
  v155 = v171[1];
  v101 = *&v171[2];

  sub_1C100C7D0(v171);
  v162 = v100;
  v163 = v155;
  v164 = v101;
  v102 = v133;
  v103 = v153;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v166, 0, 0, v153, v133);

  (*(v152 + 8))(v98, v103);
  LOBYTE(v162) = 1;
  OUTLINED_FUNCTION_4_3();
  v104 = v135;
  v105 = swift_getWitnessTable();
  sub_1C1061D74();
  v106 = v136;
  sub_1C12649C0();
  (*(v134 + 8))(v102, v104);
  *&v162 = v157;
  BYTE8(v162) = 0;
  v107 = sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30);
  v160 = v105;
  v161 = v107;
  OUTLINED_FUNCTION_3_3();
  v108 = v140;
  v109 = swift_getWitnessTable();
  sub_1C10B8244();
  sub_1C12649C0();
  (*(v139 + 8))(v106, v108);
  v110 = sub_1C10239B0(&qword_1EDE7B9C8, &qword_1EBE92EE8);
  v158 = v109;
  v159 = v110;
  v111 = v144;
  v112 = swift_getWitnessTable();
  v113 = v138;
  v114 = OUTLINED_FUNCTION_20_2();
  sub_1C0FDBA4C(v114, v115, v112);
  v116 = *(v142 + 8);
  v117 = OUTLINED_FUNCTION_20_2();
  v116(v117);
  sub_1C0FDBA4C(v113, v111, v112);
  return (v116)(v113, v111);
}

uint64_t sub_1C10B65C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for PhotosAssetView();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v31 - v15;
  v16 = sub_1C1263C30();
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  if (v4 == MEMORY[0x1E6981E70])
  {
    v22 = *(v2 + 32);
    v23 = qword_1C12B1DF0[*(v2 + 48)];
    swift_unknownObjectRetain();
    v24 = sub_1C1200D04();
    [v24 setNetworkAccessAllowed_];
    *(v13 + 19) = swift_getKeyPath();
    v13[160] = 0;
    v25 = v11[12];
    *&v13[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v26 = &v13[v11[13]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = &v13[v11[14]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    *v13 = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    v13[48] = 1;
    v13[8] = 1;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 34) = 256;
    *(v13 + 52) = 0;
    *(v13 + 60) = 0;
    *(v13 + 9) = v23;
    v13[80] = 0;
    *(v13 + 11) = v22;
    *(v13 + 12) = 0;
    *(v13 + 13) = v24;
    *(v13 + 7) = 0u;
    *(v13 + 8) = 0u;
    v13[144] = 2;
    v28 = v32;
    sub_1C0FF7598(v13, v32);
    sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
    v20 = *(a1 + 24);
    sub_1C1112D68();
    sub_1C0FF753C(v28);
  }

  else
  {
    v19 = *(a1 + 52);
    v20 = *(a1 + 24);
    sub_1C0FDBA4C(v2 + v19, v4, v20);
    sub_1C0FDBA4C(v10, v4, v20);
    sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
    sub_1C1112E18();
    v21 = *(v5 + 8);
    v21(v7, v4);
    v21(v10, v4);
  }

  v35 = sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
  v36 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v16, WitnessTable);
  return (*(v33 + 8))(v18, v16);
}

uint64_t sub_1C10B6A40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1C12659A0();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F08);
  return sub_1C10B6AB8(a1, a2, a3, a4 + *(v9 + 44));
}

uint64_t sub_1C10B6AB8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F10);
  MEMORY[0x1EEE9AC00](v42);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F18);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v40 - v19;
  v40[1] = a3;
  if (a1)
  {
    static PhotosLegibilityGradient.strong(abovePlaceholder:)(1, v43);
    v21 = v44;
    v22 = v45;
    v23 = v43[1];
    *v14 = v43[0];
    *(v14 + 1) = v23;
    *(v14 + 4) = v21;
    v14[40] = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
    sub_1C10B8F84();
    sub_1C10B8FD8();
    sub_1C1263C20();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
    v25 = type metadata accessor for PhotosMaterialTitleCellContentView();
  }

  else
  {
    v25 = type metadata accessor for PhotosMaterialTitleCellContentView();
    if (sub_1C10B6FCC())
    {
      if (qword_1EBE8FCA8 != -1)
      {
        swift_once();
      }

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
      v27 = __swift_project_value_buffer(v26, qword_1EBE93F58);
      sub_1C0FE5654(v27, v14, &qword_1EBE91CC0);
      swift_storeEnumTagMultiPayload();
      sub_1C10B8F84();
      sub_1C10B8FD8();
      sub_1C1263C20();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28);
      v29 = v20;
      v30 = 0;
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28);
      v29 = v20;
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  }

  v31 = sub_1C10401F0(2u, *(a2 + *(v25 + 56)));
  if (v31)
  {
    v32 = v31;
    v31(v43);
    sub_1C0FCF004(v32);
    v33 = *&v43[0];
  }

  else
  {
    v33 = 0;
  }

  *v11 = sub_1C1263AA0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F30);
  sub_1C10B7018(a2, &v11[*(v34 + 44)]);
  KeyPath = swift_getKeyPath();
  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F38) + 36)];
  *v36 = KeyPath;
  v36[8] = 0;
  *&v11[*(v42 + 36)] = sub_1C1265190();
  sub_1C0FE5654(v20, v17, &qword_1EBE92F20);
  sub_1C0FE5654(v11, v8, &qword_1EBE92F10);
  v37 = v41;
  sub_1C0FE5654(v17, v41, &qword_1EBE92F20);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F40);
  *(v37 + *(v38 + 48)) = v33;
  sub_1C0FE5654(v8, v37 + *(v38 + 64), &qword_1EBE92F10);
  sub_1C0F9E27C(v11, &qword_1EBE92F10);
  sub_1C0F9E27C(v20, &qword_1EBE92F20);
  sub_1C0F9E27C(v8, &qword_1EBE92F10);

  return sub_1C0F9E27C(v17, &qword_1EBE92F20);
}

BOOL sub_1C10B6FCC()
{
  if (sub_1C10B81B8())
  {
    return 1;
  }

  return sub_1C10B81E8();
}

uint64_t sub_1C10B7018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v18 = sub_1C12638E0();
  sub_1C10B71F4(a1, v19);
  v11 = v19[0];
  v10 = v19[1];
  v17 = v20;
  v12 = v21;
  *v9 = sub_1C12638D0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F90);
  sub_1C10B72EC(a1, &v9[*(v13 + 44)]);
  sub_1C0FE5654(v9, v6, &qword_1EBE92F88);
  *a2 = v18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 40) = v17;
  *(a2 + 48) = v12;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F98);
  sub_1C0FE5654(v6, a2 + *(v14 + 64), &qword_1EBE92F88);

  sub_1C0F9E27C(v9, &qword_1EBE92F88);
  sub_1C0F9E27C(v6, &qword_1EBE92F88);
}

uint64_t sub_1C10B71F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PhotosMaterialTitleCellContentView() + 56));
  v4 = sub_1C10401F0(0, v3);
  v5 = v4;
  if (v4)
  {
    v4(&v10);
    sub_1C0FCF004(v5);
    v5 = v10;
  }

  v6 = sub_1C10401F0(1u, v3);
  if (v6)
  {
    v7 = v6;
    v6(&v10);
    sub_1C0FCF004(v7);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
}

uint64_t sub_1C10B72EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FA0);
  MEMORY[0x1EEE9AC00](v60);
  v57 = (&v52 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FB0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v52 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FB8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v52 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FC0);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FC8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v58 = *(a1 + *(type metadata accessor for PhotosMaterialTitleCellContentView() + 56));
  v20 = sub_1C10401F0(3u, v58);
  if (v20)
  {
    v21 = v20;
    v20(__src);
    sub_1C0FCF004(v21);
    *v57 = __src[0];
    swift_storeEnumTagMultiPayload();
    sub_1C10B9200(&qword_1EDE770D8, &qword_1EBE92FC0, &unk_1C12B1C60, sub_1C10B91D0);
    sub_1C1263C20();
  }

  else
  {
    *v6 = sub_1C12638B0();
    *(v6 + 1) = 0x4008000000000000;
    v6[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FD0);
    sub_1C10B7998(a1, &v6[*(v22 + 44)]);
    sub_1C1265960();
    sub_1C1263390();
    sub_1C0FE4040(v6, v8, &qword_1EBE92FA8);
    memcpy(&v8[*(v53 + 36)], __src, 0x70uLL);
    v23 = sub_1C12644D0();
    sub_1C12628A0();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_1C0FE4040(v8, v10, &qword_1EBE92FB0);
    v32 = &v10[*(v54 + 36)];
    *v32 = v23;
    *(v32 + 1) = v25;
    *(v32 + 2) = v27;
    *(v32 + 3) = v29;
    *(v32 + 4) = v31;
    v32[40] = 0;
    v33 = sub_1C1264460();
    sub_1C12628A0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_1C0FE4040(v10, v12, &qword_1EBE92FB8);
    v42 = &v12[*(v59 + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = v12;
    v44 = v55;
    sub_1C0FE4040(v43, v55, &qword_1EBE92FC0);
    sub_1C0FE5654(v44, v57, &qword_1EBE92FC0);
    swift_storeEnumTagMultiPayload();
    sub_1C10B9200(&qword_1EDE770D8, &qword_1EBE92FC0, &unk_1C12B1C60, sub_1C10B91D0);
    sub_1C1263C20();
    sub_1C0F9E27C(v44, &qword_1EBE92FC0);
  }

  v45 = sub_1C10401F0(4u, v58);
  v46 = v45;
  if (v45)
  {
    v45(&v62);
    sub_1C0FCF004(v46);
    v46 = v62;
  }

  v47 = v56;
  sub_1C0FE5654(v19, v56, &qword_1EBE92FC8);
  v48 = v61;
  sub_1C0FE5654(v47, v61, &qword_1EBE92FC8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FD8);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  *(v48 + *(v49 + 64)) = v46;
  sub_1C0F9E27C(v19, &qword_1EBE92FC8);

  return sub_1C0F9E27C(v47, &qword_1EBE92FC8);
}