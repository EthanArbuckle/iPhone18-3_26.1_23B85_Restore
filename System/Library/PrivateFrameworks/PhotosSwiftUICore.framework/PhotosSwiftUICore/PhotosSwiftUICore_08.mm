uint64_t sub_1C10649F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1064A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1064A4C()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v4 = sub_1C10655C0(v2, v3);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v14, v0);
  sub_1C1261F30();

  v12 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__isFavorite;
  OUTLINED_FUNCTION_8_16();
  return *(v1 + v12);
}

uint64_t sub_1C1064AE0(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C1064B3C())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_24();
  v7 = sub_1C10655C0(v5, v6);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C10649A4();
  return sub_1C1064C14;
}

uint64_t sub_1C1064C2C()
{
  OUTLINED_FUNCTION_0_24();
  sub_1C10655C0(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C1064CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C10655C0(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1C1064FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PhotosMockAsset()
{
  result = qword_1EBE91EA8;
  if (!qword_1EBE91EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockAsset.deinit()
{
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate, &qword_1EBE91E68);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockAsset.__deallocating_deinit()
{
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate, &qword_1EBE91E68);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1065250(uint64_t a1)
{
  result = sub_1C10655C0(&qword_1EBE91E98, type metadata accessor for PhotosMockAsset);
  *(a1 + 16) = result;
  return result;
}

void sub_1C10652F8()
{
  sub_1C1065568();
  if (v0 <= 0x3F)
  {
    sub_1C1261F70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C1065568()
{
  if (!qword_1EDE82F30)
  {
    sub_1C1261DE0();
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE82F30);
    }
  }
}

uint64_t sub_1C10655C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1065608()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.oneUpChromeEnvironment.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t OneUpPhotosBadgeView.spec.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C1065688(v7, &v6);
}

__n128 OneUpPhotosBadgeView.init(spec:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_1C1265410();
  *(a2 + 64) = v8;
  *(a2 + 72) = *(&v8 + 1);
  sub_1C1265410();
  *(a2 + 80) = v8;
  *(a2 + 88) = *(&v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EC8);
  sub_1C1265410();
  *(a2 + 96) = v8;
  *(a2 + 112) = swift_getKeyPath();
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = swift_getKeyPath();
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v3 = type metadata accessor for OneUpPhotosBadgeView();
  v4 = *(v3 + 40);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 44);
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
  sub_1C106BFA8(&qword_1EDE7C6C8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
  *v5 = sub_1C1262A80();
  *(v5 + 8) = v6 & 1;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t OneUpPhotosBadgeView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91ED0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v6 - v2;
  sub_1C1065944(v0, v6 - v2);
  v4 = *(v0 + 40);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  sub_1C106989C();
  sub_1C0FDB9AC();
  sub_1C1264C80();
  return sub_1C0FD1A5C(v3, &qword_1EBE91ED0);
}

uint64_t sub_1C1065944@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F18);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - v5;
  v7 = type metadata accessor for OneUpPhotosBadgeView();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F00);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v55 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EF8);
  MEMORY[0x1EEE9AC00](v70);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FB8);
  MEMORY[0x1EEE9AC00](v71);
  v14 = &v55 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v55 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EE0);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v55 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EE8);
  MEMORY[0x1EEE9AC00](v66);
  v58 = &v55 - v17;
  if (!sub_1C1066344())
  {
    goto LABEL_7;
  }

  v19 = v18;
  v63 = v14;
  v64 = a2;
  v65 = v4;
  ObjectType = swift_getObjectType();
  v21 = a1[1];
  v83[0] = *a1;
  v83[1] = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v83[2] = a1[2];
  v84 = v22;
  v79 = v24;
  v80 = v23;
  v25 = a1[3];
  v81 = a1[2];
  v82 = v25;
  v26 = *(v19 + 8);
  sub_1C1065688(v83, v77);
  v26(v77, &v79, ObjectType, v19);
  swift_unknownObjectRelease();
  v85[0] = v79;
  v85[1] = v80;
  v85[2] = v81;
  v85[3] = v82;
  sub_1C106B624(v85);
  if (v78 == 255)
  {
    v4 = v65;
    v14 = v63;
LABEL_7:
    sub_1C1066700(2, v6);
    v6[*(v4 + 36)] = 0;
    v36 = &qword_1EBE91F18;
    sub_1C0FE5654(v6, v14, &qword_1EBE91F18);
    swift_storeEnumTagMultiPayload();
    sub_1C10699AC();
    sub_1C1069D40();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v6, v36);
  }

  if ((v78 & 1) == 0)
  {
    v37 = sub_1C0F9DDE4(v77, &v79);
    MEMORY[0x1EEE9AC00](v37);
    *(&v55 - 2) = &v79;
    *(&v55 - 1) = a1;
    MEMORY[0x1EEE9AC00](v38);
    *(&v55 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20);
    v40 = sub_1C1069E24();
    v41 = sub_1C106A55C();
    v73 = v39;
    v74 = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
    v75 = v40;
    v76 = v41;
    swift_getOpaqueTypeConformance2();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30);
    v43 = sub_1C10597CC();
    v44 = sub_1C1057E3C();
    v73 = &type metadata for PhotosMenuContent;
    v74 = v42;
    v75 = v43;
    v76 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v58;
    sub_1C1264750();
    sub_1C0FE5654(v45, v68, &qword_1EBE91EE8);
    swift_storeEnumTagMultiPayload();
    sub_1C1069A38();
    sub_1C1069AF0();
    v46 = v69;
    sub_1C1263C20();
    sub_1C0FE5654(v46, v63, &qword_1EBE91EE0);
    swift_storeEnumTagMultiPayload();
    sub_1C10699AC();
    sub_1C1069D40();
    sub_1C1263C20();
    sub_1C0FD1A5C(v46, &qword_1EBE91EE0);
    sub_1C0FD1A5C(v45, &qword_1EBE91EE8);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v79);
  }

  v56 = *(&v84 + 1);
  v27 = v77[0];
  sub_1C106BA70(a1, &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
  v28 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v29 = swift_allocObject();
  v30 = sub_1C106BA14(&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for OneUpPhotosBadgeView);
  *(v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  MEMORY[0x1EEE9AC00](v30);
  *(&v55 - 2) = a1;
  v58 = *(&v27 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20);
  v32 = sub_1C1069E24();
  v33 = sub_1C106A55C();
  *&v79 = v31;
  *(&v79 + 1) = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
  *&v80 = v32;
  *(&v80 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v61;
  sub_1C1265480();
  v34[*(v59 + 36)] = 1;
  if ((v56 & 0x4000000000000) != 0)
  {
    sub_1C1067144();
    v35 = sub_1C1189A50();
  }

  else
  {
    v35 = 0;
  }

  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v35;
  v50 = v34;
  v51 = v60;
  sub_1C0FE4040(v50, v60, &qword_1EBE91F00);
  v52 = (v51 + *(v70 + 36));
  *v52 = KeyPath;
  v52[1] = sub_1C1023064;
  v52[2] = v49;
  v36 = &qword_1EBE91EF8;
  v53 = v51;
  v6 = v62;
  sub_1C0FE4040(v53, v62, &qword_1EBE91EF8);
  sub_1C0FE5654(v6, v68, &qword_1EBE91EF8);
  swift_storeEnumTagMultiPayload();
  sub_1C1069A38();
  sub_1C1069AF0();
  v54 = v69;
  sub_1C1263C20();
  sub_1C0FE5654(v54, v63, &qword_1EBE91EE0);
  swift_storeEnumTagMultiPayload();
  sub_1C10699AC();
  sub_1C1069D40();
  sub_1C1263C20();

  sub_1C0FD1A5C(v54, &qword_1EBE91EE0);
  return sub_1C0FD1A5C(v6, v36);
}

uint64_t sub_1C1066344()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  if (*(v0 + 152) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

double sub_1C10664A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FDB0A8(a1, &v9);
  v3 = swift_allocObject();
  sub_1C0F9DDE4(&v9, v3 + 16);
  if (sub_1C1066578())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 264))(&v9, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  result = *&v9;
  v8 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v11;
  *(a2 + 56) = 1;
  *a2 = sub_1C106B6FC;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C1066578()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (*(v0 + 128) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1C1066700@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v4 = type metadata accessor for OneUpPhotosBadgeView();
  v89 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = v5;
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C1263C40();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F40);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v75 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F38);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v75 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F30);
  MEMORY[0x1EEE9AC00](v81);
  v86 = &v75 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F28);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v75 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F20);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v75 - v15;
  *v9 = sub_1C12638E0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FE0);
  sub_1C1067A64(v2, a1, &v9[*(v16 + 44)]);
  v17 = sub_1C12644D0();
  sub_1C12628A0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F68) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_1C1264460();
  sub_1C12628A0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F60) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1C12659A0();
  v39 = v38;
  v40 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F58) + 36)];
  sub_1C1068910(v2, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F78) + 36));
  *v41 = v37;
  v41[1] = v39;
  v42 = &v9[*(v7 + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80);
  sub_1C1263400();
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1C12639D0();
  v46 = *(*(v45 - 8) + 104);
  v77 = v44;
  v46(v42, v44, v45);
  v42[*(v43 + 36)] = 0;
  v47 = v76;
  sub_1C1263460();
  sub_1C106A2A8();
  sub_1C106BFA8(&qword_1EDE76E08, MEMORY[0x1E697C658]);
  v48 = v78;
  v49 = v2;
  sub_1C1264A50();
  (*(v79 + 8))(v47, v48);
  sub_1C0FD1A5C(v9, &qword_1EBE91F50);
  v50 = sub_1C1068CEC();
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F48) + 36)] = v50;
  if (qword_1EDE82E90 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDE82E98;
  v52 = sub_1C1264710();
  KeyPath = swift_getKeyPath();
  v54 = &v11[*(v80 + 36)];
  *v54 = KeyPath;
  v54[1] = v52;
  sub_1C12659A0();
  sub_1C1263390();
  v55 = v83;
  sub_1C0FE4040(v11, v83, &qword_1EBE91F40);
  memcpy((v55 + *(v82 + 36)), __src, 0x70uLL);
  v56 = v86;
  v57 = &v86[*(v81 + 36)];
  v46(v57, v77, v45);
  *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88) + 36)] = 256;
  sub_1C0FE4040(v55, v56, &qword_1EBE91F38);
  v58 = *(v49 + 64);
  v59 = *(v49 + 72);
  v94[0] = v58;
  v95 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  if (v93)
  {
    v60 = 1.1;
  }

  else
  {
    v60 = 1.0;
  }

  sub_1C1265B90();
  v62 = v61;
  v64 = v63;
  v65 = v84;
  sub_1C0FE4040(v56, v84, &qword_1EBE91F30);
  v66 = v65 + *(v85 + 36);
  *v66 = v60;
  *(v66 + 8) = v60;
  *(v66 + 16) = v62;
  *(v66 + 24) = v64;
  if (qword_1EDE7B4B0 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDE7B4B8;
  v94[0] = v58;
  v95 = v59;
  sub_1C1265420();
  v68 = v93;
  v69 = v88;
  sub_1C0FE4040(v65, v88, &qword_1EBE91F28);
  v70 = v69 + *(v87 + 36);
  *v70 = v67;
  *(v70 + 8) = v68;

  sub_1C1067144();
  sub_1C11893E4(v94);

  v93 = v94[0];
  v71 = v91;
  sub_1C106BA70(v49, v91, type metadata accessor for OneUpPhotosBadgeView);
  v72 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v73 = swift_allocObject();
  sub_1C106BA14(v71, v73 + v72, type metadata accessor for OneUpPhotosBadgeView);
  sub_1C1069E24();
  sub_1C106A55C();
  sub_1C1265000();

  return sub_1C0FD1A5C(v69, &qword_1EBE91F20);
}

uint64_t sub_1C10670A8(uint64_t a1, void (*a2)(void))
{
  if ((*(a1 + 62) & 4) == 0 || (sub_1C1067144(), sub_1C11893E4(&v4), result = , !v4))
  {
    a2();
    sub_1C1067144();
    sub_1C11893E4(&v5);

    if (v5)
    {
      return sub_1C1067294();
    }
  }

  return result;
}

uint64_t sub_1C1067144()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for OneUpPhotosBadgeView() + 44));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C1067294()
{
  v1 = sub_1C1265C50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1C1265C10();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for OneUpPhotosBadgeView();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 72);
  LOBYTE(aBlock) = *(v0 + 64);
  v31 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  result = sub_1C1265420();
  if ((v36 & 1) == 0)
  {
    v26 = v7;
    v27 = v2;
    v28 = v1;
    v13 = *(v0 + 104);
    v25 = *(v0 + 96);
    aBlock = v25;
    v31 = v13;
    v23 = v13;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD8);
    v14 = sub_1C1265420();
    if (v36)
    {
      sub_1C1265C70();
    }

    MEMORY[0x1EEE9AC00](v14);
    *(&v22 - 2) = v0;
    sub_1C1265A30();
    sub_1C1262EA0();

    sub_1C106BA70(v0, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
    v15 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v16 = swift_allocObject();
    sub_1C106BA14(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OneUpPhotosBadgeView);
    v34 = sub_1C106B728;
    v35 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1C0FD7FC4;
    v33 = &block_descriptor_5;
    _Block_copy(&aBlock);
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C106BFA8(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
    sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00);
    sub_1C1266870();
    sub_1C1265C80();
    swift_allocObject();
    v17 = sub_1C1265C60();

    aBlock = v25;
    v31 = v23;
    v36 = v17;

    sub_1C1265430();
    sub_1C0FDAFC4();
    v18 = sub_1C12664C0();
    sub_1C1265C40();
    v19 = v26;
    sub_1C1265C90();
    v20 = v28;
    v21 = *(v27 + 8);
    v21(v4, v28);
    sub_1C12664A0();

    return (v21)(v19, v20);
  }

  return result;
}

uint64_t sub_1C1067780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v37 = sub_1C12648B0();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92068);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v33 - v7;
  v40[0] = a1;
  v40[1] = a2;
  sub_1C0FDB9AC();

  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1C12644C0();
  sub_1C12628A0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v13 & 1;
  v42 = v13 & 1;
  v41 = 0;
  v26 = sub_1C12644A0();
  sub_1C12628A0();
  v43 = 0;
  v39[0] = v9;
  v39[1] = v11;
  LOBYTE(v39[2]) = v25;
  v39[3] = v15;
  LOBYTE(v39[4]) = v16;
  v39[5] = v18;
  v39[6] = v20;
  v39[7] = v22;
  v39[8] = v24;
  LOBYTE(v39[9]) = 0;
  LOBYTE(v39[10]) = v26;
  v39[11] = v27;
  v39[12] = v28;
  v39[13] = v29;
  v39[14] = v30;
  LOBYTE(v39[15]) = 0;
  sub_1C12648A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92058);
  sub_1C106BE98();
  sub_1C12650C0();
  (*(v35 + 8))(v6, v37);
  memcpy(v40, v39, 0x79uLL);
  sub_1C0FD1A5C(v40, &qword_1EBE92058);
  v31 = v38;
  (*(v34 + 32))(v38, v8, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92018);
  *(v31 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1C1067A64@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1263150();
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92010);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v86 - v8;
  v9 = sub_1C1263840();
  v100 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v86 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92018);
  MEMORY[0x1EEE9AC00](v109);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v86 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92020);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v86 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92028);
  MEMORY[0x1EEE9AC00](v94);
  v104 = &v86 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92030);
  MEMORY[0x1EEE9AC00](v107);
  v97 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v86 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92038);
  MEMORY[0x1EEE9AC00](v108);
  v23 = &v86 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92040);
  MEMORY[0x1EEE9AC00](v112);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92048);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  if (*(a1 + 8))
  {

    v31 = sub_1C1265320();
    v32 = sub_1C12644C0();
    sub_1C12628A0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v113 = v32;
  }

  else
  {
    v31 = 0;
    v113 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
  }

  if ((*(a1 + 62) & 4) != 0)
  {
    v44 = *(a1 + 88);
    v116 = *(a1 + 80);
    v117 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    if (v115 == 1)
    {
      sub_1C1067144();
      v45 = sub_1C11899A4();

      v46 = !v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = *(a1 + 24);
    if (!v47)
    {
      v68 = 1;
      goto LABEL_24;
    }

    v105 = v46;
    v91 = v9;
    v106 = a2;
    v89 = *(a1 + 16);
    v48 = *(a1 + 64);
    v49 = *(a1 + 72);
    v116 = v48;
    v117 = v49;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    if (v115 == 1 && (v88 = v49, sub_1C1067144(), v50 = sub_1C11899A4(), , v50))
    {
      v87 = a3;
      v51 = v93;
      sub_1C1067780(v89, v47, v93);
      v116 = v48;
      v117 = v88;
      sub_1C1265420();
      if (v115)
      {
        v52 = 1.0;
      }

      else
      {
        v52 = 0.0;
      }

      v53 = v51;
      v54 = v95;
      sub_1C0FE4040(v53, v95, &qword_1EBE92018);
      *(v54 + *(v92 + 36)) = v52;
      if (qword_1EBE8FC48 != -1)
      {
        swift_once();
      }

      v55 = qword_1EBE91EC0;
      v116 = v48;
      v117 = v88;
      sub_1C1265420();
      v56 = v115;
      v57 = v104;
      sub_1C0FE4040(v54, v104, &qword_1EBE92020);
      v58 = v57 + *(v94 + 36);
      *v58 = v55;
      *(v58 + 8) = v56;

      v59 = v99;
      sub_1C1263830();
      v60 = v100;
      v61 = v91;
      (*(v100 + 16))(v98, v59, v91);
      sub_1C106BFA8(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
      v62 = sub_1C1262CE0();
      (*(v60 + 8))(v59, v61);
      v63 = v97;
      sub_1C0FE4040(v104, v97, &qword_1EBE92028);
      v64 = v107;
      *(v63 + *(v107 + 36)) = v62;
      v65 = v63;
      v66 = v96;
      sub_1C0FE4040(v65, v96, &qword_1EBE92030);
      sub_1C0FE4040(v66, v23, &qword_1EBE92030);
      v67 = 0;
      a3 = v87;
    }

    else
    {
      v67 = 1;
      v64 = v107;
    }

    __swift_storeEnumTagSinglePayload(v23, v67, 1, v64);
    sub_1C0FE5654(v23, v111, &qword_1EBE92038);
    swift_storeEnumTagMultiPayload();
    sub_1C106BB50();
    sub_1C106BDD0();
    sub_1C1263C20();
    v42 = v23;
    v43 = &qword_1EBE92038;
  }

  else
  {
    v41 = *(a1 + 24);
    if (!v41)
    {
      v68 = 1;
      LOBYTE(v46) = 1;
      goto LABEL_24;
    }

    v106 = a2;
    sub_1C1067780(*(a1 + 16), v41, v14);
    sub_1C0FE5654(v14, v111, &qword_1EBE92018);
    v105 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1C106BB50();
    sub_1C106BDD0();
    sub_1C1263C20();
    v42 = v14;
    v43 = &qword_1EBE92018;
  }

  sub_1C0FD1A5C(v42, v43);
  sub_1C0FE4040(v25, v30, &qword_1EBE92040);
  v68 = 0;
  LOBYTE(v46) = v105;
  LOBYTE(a2) = v106;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v30, v68, 1, v112);
  if (a2 == 2 || (v46 & 1) == 0)
  {
    v72 = a3;
    v71 = v30;
    v73 = v31;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
LABEL_37:
    v81 = v114;
    sub_1C0FE5654(v71, v114, &qword_1EBE92048);
    v82 = v113;
    *v72 = v73;
    *(v72 + 8) = v82;
    *(v72 + 16) = v34;
    *(v72 + 24) = v36;
    *(v72 + 32) = v38;
    *(v72 + 40) = v40;
    *(v72 + 48) = 0;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92050);
    sub_1C0FE5654(v81, v72 + *(v83 + 48), &qword_1EBE92048);
    v84 = v72 + *(v83 + 64);

    sub_1C106BACC(v74);

    sub_1C106BB10(v74);
    *v84 = v74;
    *(v84 + 8) = v75;
    *(v84 + 16) = v76;
    *(v84 + 24) = v77;
    sub_1C0FD1A5C(v71, &qword_1EBE92048);
    sub_1C106BB10(v74);
    sub_1C0FD1A5C(v81, &qword_1EBE92048);
  }

  if ((a2 & 1) == 0)
  {
    v71 = v30;
    goto LABEL_33;
  }

  v69 = v101;
  sub_1C1068708(v101);
  v70 = (*(v102 + 88))(v69, v103);
  if (v70 == *MEMORY[0x1E697E7D0])
  {
    v71 = v30;
LABEL_33:
    v72 = a3;
    v73 = v31;
    v74 = sub_1C1265320();
    v79 = *(a1 + 88);
    v116 = *(a1 + 80);
    v78 = v116;
    v117 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    v80 = v115;
    v76 = sub_1C1265A60();
    v116 = v78;
    v117 = v79;
    sub_1C1265420();
    v77 = v115;
    if (v80)
    {
      v75 = 0x3FF0000000000000;
    }

    else
    {
      v75 = 0;
    }

    goto LABEL_37;
  }

  if (v70 == *MEMORY[0x1E697E7D8])
  {
    v71 = v30;
    goto LABEL_33;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C1068708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpPhotosBadgeView();
  sub_1C0FE5654(v1 + *(v10 + 40), v9, &qword_1EBE904D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263150();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1068910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1265900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265650();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FE8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1C12639D0();
  (*(*(v15 - 8) + 104))(v10, v14, v15);
  if ((*(a1 + 62) & 4) != 0 && (sub_1C1067144(), v16 = sub_1C11899F0(), , v16))
  {
    *&v30 = sub_1C1265130();
  }

  else
  {
    if (qword_1EDE7B488 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_1EDE7B490);
    (*(v5 + 16))(v7, v17, v4);
  }

  v18 = sub_1C1262C90();
  sub_1C106BA14(v10, v13, MEMORY[0x1E6981998]);
  *&v13[*(v11 + 52)] = v18;
  *&v13[*(v11 + 56)] = 256;
  if (qword_1EDE82EA0 != -1)
  {
    swift_once();
  }

  v19 = dword_1EDE82EA8;
  sub_1C1262B10();
  sub_1C106BA70(v13, a2, MEMORY[0x1E6981998]);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FF0) + 36);
  v21 = v31;
  *v20 = v30;
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FF8);
  *(a2 + *(v22 + 52)) = v19;
  *(a2 + *(v22 + 56)) = 256;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92000) + 36);
  sub_1C0FE5654(v13, v23, &qword_1EBE91FE8);
  v24 = sub_1C12659A0();
  v26 = v25;
  sub_1C0FD1A5C(v13, &qword_1EBE91FE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92008);
  v28 = (v23 + *(result + 36));
  *v28 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_1C1068CEC()
{
  if ((*(v0 + 62) & 4) != 0 && (sub_1C1067144(), v1 = sub_1C11899F0(), , v1))
  {

    return sub_1C1265190();
  }

  else
  {

    return sub_1C1265230();
  }
}

void sub_1C1068D58(uint64_t a1, _BYTE *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD8);
      v2 = sub_1C1265420();
      if (v3)
      {
        sub_1C1265C70();
      }

      MEMORY[0x1EEE9AC00](v2);
      sub_1C1265A30();
      sub_1C1262EA0();
    }
  }
}

uint64_t sub_1C1068E74(uint64_t a1)
{
  v2 = sub_1C1265C10();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1265C30();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OneUpPhotosBadgeView();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = sub_1C1265C50();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1C1067144();
  v15 = sub_1C11899A4();

  v33 = a1;
  sub_1C1265A30();
  sub_1C1262EA0();
  if (!v15)
  {
  }

  sub_1C0FDAFC4();
  v24 = sub_1C12664C0();
  sub_1C1265C40();
  sub_1C1265C90();
  v25 = *(v9 + 8);
  v25(v11, v32);
  sub_1C106BA70(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_1C106BA14(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for OneUpPhotosBadgeView);
  aBlock[4] = sub_1C106B8C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0FD7FC4;
  aBlock[3] = &block_descriptor_51;
  v18 = _Block_copy(aBlock);

  sub_1C1265C20();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C106BFA8(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
  sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00);
  v19 = v27;
  v20 = v31;
  sub_1C1266870();
  v21 = v24;
  MEMORY[0x1C68EFDD0](v14, v6, v19, v18);
  _Block_release(v18);

  (*(v30 + 8))(v19, v20);
  (*(v28 + 8))(v6, v29);
  return (v25)(v14, v32);
}

uint64_t sub_1C1069398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265430();
  return sub_1C1265430();
}

uint64_t sub_1C106949C()
{
  sub_1C1265A30();
  sub_1C1262EA0();
}

void sub_1C1069570()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = PXFontCreateWithDescriptorAndSize();

  qword_1EDE82E98 = v1;
}

uint64_t EnvironmentValues.oneUpBadgeContentProvider.getter()
{
  sub_1C106A5B0();
  sub_1C12637F0();
  if (v1)
  {
    swift_unknownObjectWeakLoadStrong();
  }

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1C1069654()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.oneUpBadgeContentProvider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C1069694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t type metadata accessor for OneUpPhotosBadgeView()
{
  result = qword_1EDE82E78;
  if (!qword_1EDE82E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentValues.oneUpBadgeContentProvider.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBadgeContentProviderReference();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  sub_1C0FEB470(v3, a2);
  sub_1C106A5B0();
  sub_1C1263800();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10697D4(uint64_t a1)
{
  v2 = sub_1C1263150();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12635C0();
}

unint64_t sub_1C106989C()
{
  result = qword_1EDE76CD0;
  if (!qword_1EDE76CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91ED0);
    sub_1C1069920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76CD0);
  }

  return result;
}

unint64_t sub_1C1069920()
{
  result = qword_1EDE76E30;
  if (!qword_1EDE76E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91ED8);
    sub_1C10699AC();
    sub_1C1069D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E30);
  }

  return result;
}

unint64_t sub_1C10699AC()
{
  result = qword_1EDE76ED0;
  if (!qword_1EDE76ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EE0);
    sub_1C1069A38();
    sub_1C1069AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76ED0);
  }

  return result;
}

unint64_t sub_1C1069A38()
{
  result = qword_1EDE773E0;
  if (!qword_1EDE773E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EE8);
    sub_1C0FDB6D4(&qword_1EDE76D20, &qword_1EBE91EF0);
    sub_1C1059838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773E0);
  }

  return result;
}

unint64_t sub_1C1069AF0()
{
  result = qword_1EDE770E0;
  if (!qword_1EDE770E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EF8);
    sub_1C1069BA8();
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770E0);
  }

  return result;
}

unint64_t sub_1C1069BA8()
{
  result = qword_1EDE771A8;
  if (!qword_1EDE771A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F00);
    sub_1C1069C34();
    sub_1C1069CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771A8);
  }

  return result;
}

unint64_t sub_1C1069C34()
{
  result = qword_1EDE77320;
  if (!qword_1EDE77320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F08);
    sub_1C0FDB6D4(&unk_1EDE76C68, &qword_1EBE91F10);
    sub_1C105833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77320);
  }

  return result;
}

unint64_t sub_1C1069CEC()
{
  result = qword_1EDE78ED8;
  if (!qword_1EDE78ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78ED8);
  }

  return result;
}

unint64_t sub_1C1069D40()
{
  result = qword_1EDE77358;
  if (!qword_1EDE77358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20);
    sub_1C1069E24();
    sub_1C106A55C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77358);
  }

  return result;
}

unint64_t sub_1C1069E24()
{
  result = qword_1EDE76FF8;
  if (!qword_1EDE76FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20);
    sub_1C1069EDC();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FF8);
  }

  return result;
}

unint64_t sub_1C1069EDC()
{
  result = qword_1EDE77018;
  if (!qword_1EDE77018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F28);
    sub_1C1069F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77018);
  }

  return result;
}

unint64_t sub_1C1069F68()
{
  result = qword_1EDE77078;
  if (!qword_1EDE77078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F30);
    sub_1C106A020();
    sub_1C0FDB6D4(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77078);
  }

  return result;
}

unint64_t sub_1C106A020()
{
  result = qword_1EDE77110;
  if (!qword_1EDE77110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F38);
    sub_1C106A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77110);
  }

  return result;
}

unint64_t sub_1C106A0AC()
{
  result = qword_1EDE771F8;
  if (!qword_1EDE771F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F40);
    sub_1C106A164();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771F8);
  }

  return result;
}

unint64_t sub_1C106A164()
{
  result = qword_1EDE77390;
  if (!qword_1EDE77390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F50);
    sub_1C1263C40();
    sub_1C106A2A8();
    sub_1C106BFA8(&qword_1EDE76E08, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77390);
  }

  return result;
}

unint64_t sub_1C106A2A8()
{
  result = qword_1EDE77050;
  if (!qword_1EDE77050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F50);
    sub_1C106A360();
    sub_1C0FDB6D4(&qword_1EDE7BA30, &qword_1EBE91F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77050);
  }

  return result;
}

unint64_t sub_1C106A360()
{
  result = qword_1EDE770D0;
  if (!qword_1EDE770D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F58);
    sub_1C106A418();
    sub_1C0FDB6D4(&qword_1EDE76F18, &qword_1EBE91F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770D0);
  }

  return result;
}

unint64_t sub_1C106A418()
{
  result = qword_1EDE77190;
  if (!qword_1EDE77190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F60);
    sub_1C106A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77190);
  }

  return result;
}

unint64_t sub_1C106A4A4()
{
  result = qword_1EDE77310;
  if (!qword_1EDE77310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F68);
    sub_1C0FDB6D4(&qword_1EDE76C38, &qword_1EBE91F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77310);
  }

  return result;
}

unint64_t sub_1C106A55C()
{
  result = qword_1EDE77728[0];
  if (!qword_1EDE77728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE77728);
  }

  return result;
}

unint64_t sub_1C106A5B0()
{
  result = qword_1EDE7C1A8[0];
  if (!qword_1EDE7C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C1A8);
  }

  return result;
}

void __swiftcall OneUpPhotosBadgeViewSpec.init(systemImageName:localizedTitle:accessibilityLabel:backgroundStyle:badgeInfo:)(PhotosSwiftUICore::OneUpPhotosBadgeViewSpec *__return_ptr retstr, Swift::String_optional systemImageName, Swift::String_optional localizedTitle, Swift::String accessibilityLabel, PhotosSwiftUICore::OneUpPhotosBadgeViewSpec::BackgroundStyle backgroundStyle, Swift::UInt badgeInfo)
{
  v6 = *backgroundStyle;
  retstr->systemImageName = systemImageName;
  retstr->localizedTitle = localizedTitle;
  retstr->accessibilityLabel = accessibilityLabel;
  retstr->badgeInfo = badgeInfo;
  retstr->backgroundStyle = v6;
}

uint64_t OneUpPhotosBadgeViewSpec.BackgroundStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C106A780()
{
  sub_1C1265190();
  v0 = sub_1C12651E0();

  qword_1EDE82EC0 = v0;
  return result;
}

uint64_t sub_1C106A7E8()
{
  result = sub_1C1263E30();
  dword_1EDE82EA8 = result;
  return result;
}

uint64_t static OneUpPhotosBadgeViewSpec.backgroundStrokeStyle.getter()
{
  if (qword_1EDE82EA0 != -1)
  {
    swift_once();
  }

  return dword_1EDE82EA8;
}

uint64_t sub_1C106A878()
{
  v0 = sub_1C1265900();
  __swift_allocate_value_buffer(v0, qword_1EDE7B490);
  __swift_project_value_buffer(v0, qword_1EDE7B490);
  return sub_1C12658D0();
}

uint64_t static OneUpPhotosBadgeViewSpec.backgroundMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7B488 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1265900();
  v3 = __swift_project_value_buffer(v2, qword_1EDE7B490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C106A990()
{
  result = sub_1C12659D0();
  qword_1EDE7B4B8 = result;
  return result;
}

uint64_t sub_1C106A9E8()
{
  result = sub_1C1265A60();
  qword_1EBE91EC0 = result;
  return result;
}

BOOL static OneUpPhotosBadgeViewSpec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = *(a1 + 32);
      v33 = *(a1 + 40);
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v22 = *(a2 + 40);
      v23 = sub_1C1266D50();
      v14 = v22;
      v9 = v21;
      v8 = v20;
      v16 = v19;
      v15 = v18;
      v5 = v32;
      v7 = v33;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v25 = v9;
      v26 = v14;
      v27 = sub_1C1266D50();
      v14 = v26;
      v9 = v25;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5 == v12 && v7 == v14)
  {
    if (v8 == v15)
    {
      return v9 == v16;
    }

    return 0;
  }

  v29 = v9;
  v30 = sub_1C1266D50();
  result = 0;
  if (v30)
  {
    v9 = v29;
    if (((v8 ^ v15) & 1) == 0)
    {
      return v9 == v16;
    }
  }

  return result;
}

uint64_t OneUpPhotosBadgeViewSpec.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (!*(v0 + 8))
  {
    sub_1C1266EB0();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1266EB0();
    goto LABEL_6;
  }

  sub_1C1266EB0();
  sub_1C1265EF0();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C1266EB0();
  sub_1C1265EF0();
LABEL_6:
  sub_1C1265EF0();
  MEMORY[0x1C68F07E0](v2);
  return MEMORY[0x1C68F07E0](v3);
}

uint64_t OneUpPhotosBadgeViewSpec.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1)
  {
    sub_1C1265EF0();
  }

  sub_1C1266EB0();
  if (v2)
  {
    sub_1C1265EF0();
  }

  sub_1C1265EF0();
  MEMORY[0x1C68F07E0](v3);
  MEMORY[0x1C68F07E0](v4);
  return sub_1C1266EE0();
}

uint64_t sub_1C106AD68()
{
  sub_1C1266E90();
  OneUpPhotosBadgeViewSpec.hash(into:)();
  return sub_1C1266EE0();
}

void (*EnvironmentValues.oneUpBadgeContentProvider.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_1C106A5B0();
  sub_1C12637F0();
  v4 = v3[2];
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);
  }

  else
  {
    Strong = 0;
    v6 = 0;
  }

  *v3 = Strong;
  v3[1] = v6;
  return sub_1C106AE5C;
}

void sub_1C106AE5C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  type metadata accessor for WeakBadgeContentProviderReference();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    v3[2] = sub_1C0FEB470(v6, v4);
    OUTLINED_FUNCTION_48();
    swift_unknownObjectRelease();
  }

  else
  {
    v3[2] = sub_1C0FEB470(v5, v4);
    OUTLINED_FUNCTION_48();
  }

  swift_unknownObjectRelease();

  free(v3);
}

unint64_t sub_1C106AF48()
{
  result = qword_1EBE91F90;
  if (!qword_1EBE91F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91F90);
  }

  return result;
}

unint64_t sub_1C106AFA0()
{
  result = qword_1EBE91F98;
  if (!qword_1EBE91F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91F98);
  }

  return result;
}

void sub_1C106B01C()
{
  sub_1C106B1CC();
  if (v0 <= 0x3F)
  {
    sub_1C106B21C(319, &qword_1EDE76CA8, &qword_1EBE91EC8, &unk_1C12ACAF0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C106B21C(319, &qword_1EDE77668, &qword_1EBE91478, &unk_1C12B6A70, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C106B21C(319, &qword_1EDE775C8, &qword_1EBE91FA8, &unk_1C12ACDC0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C106B280(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
          if (v4 <= 0x3F)
          {
            sub_1C106B280(319, &qword_1EDE775B8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
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

void sub_1C106B1CC()
{
  if (!qword_1EDE76CA0)
  {
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CA0);
    }
  }
}

void sub_1C106B21C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1C106B280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C106B2E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1C106B328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpPhotosBadgeViewSpec.BackgroundStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C106B498(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C106B4D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C106B520(uint64_t result, unsigned int a2)
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

unint64_t sub_1C106B558()
{
  result = qword_1EDE77338;
  if (!qword_1EDE77338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91FB0);
    sub_1C106989C();
    sub_1C106BFA8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77338);
  }

  return result;
}

uint64_t sub_1C106B654()
{
  v1 = *(type metadata accessor for OneUpPhotosBadgeView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C10670A8(v0 + v2, v3);
}

uint64_t objectdestroy_44Tm()
{
  type metadata accessor for OneUpPhotosBadgeView();
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1C0FF9034(*(v3 + 112), *(v3 + 120), *(v3 + 128));
  sub_1C0FF9034(*(v3 + 136), *(v3 + 144), *(v3 + 152));
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C106B8E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OneUpPhotosBadgeView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1C106B970(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for OneUpPhotosBadgeView();

  sub_1C1068D58(a1, a2);
}

uint64_t sub_1C106BA14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C106BA70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C106BACC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C106BB10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C106BB50()
{
  result = qword_1EDE77060;
  if (!qword_1EDE77060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92038);
    sub_1C106BBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77060);
  }

  return result;
}

unint64_t sub_1C106BBD4()
{
  result = qword_1EDE77068;
  if (!qword_1EDE77068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92030);
    sub_1C106BC8C();
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77068);
  }

  return result;
}

unint64_t sub_1C106BC8C()
{
  result = qword_1EDE77100;
  if (!qword_1EDE77100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92028);
    sub_1C106BD44();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77100);
  }

  return result;
}

unint64_t sub_1C106BD44()
{
  result = qword_1EDE771E0;
  if (!qword_1EDE771E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92020);
    sub_1C106BDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771E0);
  }

  return result;
}

unint64_t sub_1C106BDD0()
{
  result = qword_1EDE77348;
  if (!qword_1EDE77348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92058);
    sub_1C106BE98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77348);
  }

  return result;
}

unint64_t sub_1C106BE98()
{
  result = qword_1EDE7BDC0;
  if (!qword_1EDE7BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92058);
    sub_1C106BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDC0);
  }

  return result;
}

unint64_t sub_1C106BF24()
{
  result = qword_1EDE7BEB0;
  if (!qword_1EDE7BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEB0);
  }

  return result;
}

uint64_t sub_1C106BFA8(unint64_t *a1, void (*a2)(uint64_t))
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

id PhotosBlur.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  if (v3 > 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  swift_beginAccess();
  v6 = qword_1EDE78950;
  v7 = unk_1EDE78958;
  v8 = __swift_project_boxed_opaque_existential_1(qword_1EDE78938, qword_1EDE78950);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(v7 + 8))(v6, v7);
  (*(v9 + 8))(v12, v6);
  result = [objc_opt_self() effectWithBlurRadius_];
  *a1 = result;
  return result;
}

id sub_1C106C1BC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v0 init];
}

uint64_t sub_1C106C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C106C7A4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C106C274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C106C7A4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C106C2D8()
{
  sub_1C106C7A4();
  sub_1C1263BD0();
  __break(1u);
}

void sub_1C106C300()
{
  qword_1EDE78950 = &type metadata for FallbackSettings;
  unk_1EDE78958 = &off_1F4073310;
  qword_1EDE78938 = 0x401C000000000000;
}

uint64_t photosBlurSettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  swift_beginAccess();
  return sub_1C0FDB0A8(qword_1EDE78938, a1);
}

uint64_t photosBlurSettings.setter(uint64_t *a1)
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_1EDE78938, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t (*photosBlurSettings.modify())()
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t getEnumTagSinglePayload for PhotosBlur(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotosBlur(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1C106C73C()
{
  result = qword_1EDE78A48;
  if (!qword_1EDE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A48);
  }

  return result;
}

unint64_t sub_1C106C7A4()
{
  result = qword_1EDE78A40;
  if (!qword_1EDE78A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A40);
  }

  return result;
}

uint64_t sub_1C106C83C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

__n128 PhotosSearchHomeView.init(onStartScrollingHandler:recentSuggestions:recentSuggestionOnSelectHandler:recentSuggestionOnClearHandler:recentSuggestionOnExpandHandler:isShowingInitialSuggestions:initialSuggestionsAlignment:initialSuggestions:initialSuggestionOnSelectHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __n128 a13, uint64_t a14)
{
  *a9 = sub_1C1012790() & 1;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  result = a13;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  return result;
}

uint64_t PhotosSearchHomeView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v93 = a1;
  v94 = v6;
  v91 = a1[6];
  v92 = v7;
  __dst[0] = v4;
  __dst[1] = v5;
  v8 = v4;
  v9 = v5;
  __dst[2] = v6;
  __dst[3] = v7;
  __dst[4] = v91;
  type metadata accessor for PhotosSearchRecentSuggestionsView();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_1_17();
  v113[21] = swift_getWitnessTable();
  v113[22] = MEMORY[0x1E697E5C0];
  v86 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E697E5D8];
  v113[19] = WitnessTable;
  v113[20] = MEMORY[0x1E697E5D8];
  v113[17] = swift_getWitnessTable();
  v113[18] = v11;
  swift_getWitnessTable();
  v12 = sub_1C1262940();
  v71 = v12;
  OUTLINED_FUNCTION_1();
  v75 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v72 = OUTLINED_FUNCTION_3_21();
  __dst[0] = v12;
  __dst[1] = v72;
  v74 = MEMORY[0x1E697D220];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v77 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v67 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92070);
  v78 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v80 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v67 - v22;
  v81 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v84 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v67 - v25;
  v83 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v85 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v79 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v67 - v30;
  memcpy(__dst, v3, 0x88uLL);
  v101 = v8;
  v102 = v9;
  v31 = v94;
  v33 = v91;
  v32 = v92;
  v103 = v94;
  v104 = v92;
  v105 = v91;
  v106 = __dst;
  sub_1C1264440();
  sub_1C106C824();
  OUTLINED_FUNCTION_6_16();
  v34 = swift_allocObject();
  v34[2] = v8;
  v34[3] = v9;
  v88 = v8;
  v89 = v9;
  v34[4] = v31;
  v34[5] = v32;
  v35 = v32;
  v34[6] = v33;
  v36 = v33;
  OUTLINED_FUNCTION_4_21(v34);
  v37 = *(v93 - 1);
  v68 = *(v37 + 16);
  v69 = v37 + 16;
  v68(v113, __dst);
  v38 = v70;
  v39 = v71;
  v40 = v72;
  sub_1C1264D10();

  (*(v75 + 8))(v16, v39);
  v95 = v8;
  v96 = v9;
  v41 = v94;
  v97 = v94;
  v98 = v35;
  v99 = v36;
  v100 = __dst;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92078);
  v113[0] = v39;
  v113[1] = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C106DA38();
  v43 = OpaqueTypeMetadata2;
  sub_1C1264F60();
  (*(v77 + 8))(v38, v43);
  OUTLINED_FUNCTION_6_16();
  v44 = swift_allocObject();
  v45 = v89;
  v44[2] = v88;
  v44[3] = v45;
  v44[4] = v41;
  v44[5] = v35;
  v44[6] = v36;
  OUTLINED_FUNCTION_4_21(v44);
  v46 = v93;
  v47 = v68;
  (v68)(v113, __dst, v93);
  OUTLINED_FUNCTION_11();
  v49 = sub_1C0FDB6D4(v48, &qword_1EBE92070);
  v111 = OpaqueTypeConformance2;
  v112 = v49;
  v50 = v78;
  v51 = swift_getWitnessTable();
  v52 = v76;
  v53 = v90;
  sub_1C1264FF0();

  (*(v80 + 8))(v53, v50);
  OUTLINED_FUNCTION_6_16();
  v54 = swift_allocObject();
  v55 = v89;
  v54[2] = v88;
  v54[3] = v55;
  v56 = v91;
  v57 = v92;
  v54[4] = v94;
  v54[5] = v57;
  v54[6] = v56;
  OUTLINED_FUNCTION_4_21(v54);
  v47(v113, __dst, v46);
  v58 = MEMORY[0x1E69805D0];
  v109 = v51;
  v110 = MEMORY[0x1E69805D0];
  v59 = v81;
  v60 = swift_getWitnessTable();
  v61 = v79;
  sub_1C1264A60();

  (*(v84 + 8))(v52, v59);
  v107 = v60;
  v108 = v58;
  v62 = v83;
  v63 = swift_getWitnessTable();
  v64 = v82;
  sub_1C0FDBA4C(v61, v62, v63);
  v65 = *(v85 + 8);
  v65(v61, v62);
  sub_1C0FDBA4C(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_1C106D174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v40 = a3;
  v42 = a2;
  v54 = a7;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v44 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v50 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v37 - v8;
  v47 = sub_1C1263190();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v41 = &v37 - v9;
  v48 = sub_1C1263190();
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v37 - v10;
  v43 = sub_1C1263190();
  v53 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v37 - v13;
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v18 = a1[8];
  v19 = a1[9];
  v20 = a1[10];

  v21 = v38;
  PhotosSearchRecentSuggestionsView.init(suggestions:selectionHandler:clearRecentSearchesHandler:expandRecentSearchesHandler:)(v14, v15, v16, v17, v18, v19, v20, v38);
  v61 = v14;
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266370();
  v22 = v44;
  WitnessTable = swift_getWitnessTable();
  v24 = v41;
  sub_1C1264F50();
  (*(v50 + 8))(v21, v22);
  sub_1C12644D0();
  v59 = WitnessTable;
  v60 = MEMORY[0x1E697E5C0];
  v25 = v47;
  v26 = swift_getWitnessTable();
  v27 = v45;
  sub_1C1264FB0();
  (*(v51 + 8))(v24, v25);
  sub_1C1264460();
  v28 = MEMORY[0x1E697E5D8];
  v57 = v26;
  v58 = MEMORY[0x1E697E5D8];
  v29 = v48;
  v30 = swift_getWitnessTable();
  v31 = v46;
  sub_1C1264FB0();
  (*(v52 + 8))(v27, v29);
  v55 = v30;
  v56 = v28;
  v32 = v43;
  v33 = swift_getWitnessTable();
  v34 = v49;
  sub_1C0FDBA4C(v31, v32, v33);
  v35 = *(v53 + 8);
  v35(v31, v32);
  sub_1C0FDBA4C(v34, v32, v33);
  return (v35)(v34, v32);
}

uint64_t sub_1C106D718()
{
  result = sub_1C1262B00();
  if (result)
  {
    return (*(v0 + 72))();
  }

  return result;
}

uint64_t sub_1C106D750@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = __src[14];
  memcpy(__dst, __src, 0x88uLL);

  __srca[0] = a2;
  __srca[1] = a3;
  __srca[2] = a4;
  __srca[3] = a5;
  __srca[4] = a6;
  type metadata accessor for PhotosSearchHomeView();
  v14 = sub_1C106C83C();
  v16 = __src[15];
  v15 = __src[16];
  __srca[0] = v13;
  LOBYTE(__srca[1]) = v14 & 1;
  __srca[2] = 0;
  LOBYTE(__srca[3]) = 2;
  __srca[4] = v16;
  __srca[5] = v15;
  __srca[6] = sub_1C106DCB4;
  memset(&__srca[7], 0, 24);
  v17 = qword_1EBE8FC78;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92098);
  sub_1C106DBA8();
  sub_1C106DBFC();
  sub_1C1265030();
  memcpy(__dst, __srca, 0x50uLL);
  sub_1C106E114(__dst);
  v19 = sub_1C1264470();
  v20 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92090) + 36);
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  v21 = sub_1C1264490();
  sub_1C12628A0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92078);
  v31 = a7 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

unint64_t sub_1C106DA38()
{
  result = qword_1EBE92080;
  if (!qword_1EBE92080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92078);
    sub_1C106DAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92080);
  }

  return result;
}

unint64_t sub_1C106DAC4()
{
  result = qword_1EBE92088;
  if (!qword_1EBE92088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92098);
    sub_1C106DBA8();
    sub_1C106DBFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92088);
  }

  return result;
}

unint64_t sub_1C106DBA8()
{
  result = qword_1EBE920A0;
  if (!qword_1EBE920A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE920A0);
  }

  return result;
}

unint64_t sub_1C106DBFC()
{
  result = qword_1EBE920A8;
  if (!qword_1EBE920A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92098);
    sub_1C0FDB6D4(&qword_1EBE920B0, &qword_1EBE920B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE920A8);
  }

  return result;
}

uint64_t sub_1C106DCB4(uint64_t a1, uint64_t a2)
{
  result = sub_1C12659D0();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a2 - 1, a1))
  {
    sub_1C12659E0();

    v5 = sub_1C12659F0();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C106DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 88) & 1) == 0 || (v5 = 1.0, !*(*(a2 + 112) + 16)))
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE920B8);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92098);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C106DE14(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(v15, __src, sizeof(v15));
  __dst[0] = a2;
  __dst[1] = a3;
  __dst[2] = a4;
  __dst[3] = a5;
  __dst[4] = a6;
  v12 = type metadata accessor for PhotosSearchHomeView();
  v13 = *(v12 - 8);
  (*(v13 + 16))(__dst, __src, v12);
  sub_1C106C894();
  memcpy(__dst, v15, sizeof(__dst));
  return (*(v13 + 8))(__dst, v12);
}

uint64_t objectdestroyTm_4()
{

  OUTLINED_FUNCTION_6_16();

  return swift_deallocObject();
}

uint64_t sub_1C106E008()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C106E04C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C106E08C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C106E168@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE82B10;
  v3 = qword_1EDE82B28;
  *a1 = qword_1EDE82B08;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1EDE82B18;
  *(a1 + 32) = v3;
}

uint64_t PhotosCenteredLabelCell.BadgeConfiguration.symbolNameProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosCenteredLabelCell.BadgeConfiguration.init(symbolNameProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C106E228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 68);
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
    sub_1C0FD1A5C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosCenteredLabelCell.init(_:badgeConfiguration:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a2;
  v16 = a2[1];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a8;
  __src[4] = a10;
  v17 = type metadata accessor for PhotosCenteredLabelCell();
  v18 = v17[17];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v18), __src, 0xD1uLL);
  result = (*(*(a5 - 8) + 32))(a9, a1, a5);
  v20 = (a9 + v17[16]);
  *v20 = v15;
  v20[1] = v16;
  v21 = (a9 + v17[15]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t PhotosCenteredLabelCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v81 = a2;
  v2 = *(a1 + 48);
  v78 = *(a1 + 24);
  v79 = v2;
  type metadata accessor for PhotosDetailsPresentationSourceView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92150);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92158);
  OUTLINED_FUNCTION_11_0();
  v3 = sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  v80 = v4;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  v107 = WitnessTable;
  v108 = sub_1C0FDB6D4(v6, &qword_1EBE92148);
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_21();
  v105 = v7;
  v106 = sub_1C0FDB6D4(v8, &qword_1EBE92150);
  v103 = swift_getWitnessTable();
  v104 = sub_1C0FDB6D4(&qword_1EBE92170, &qword_1EBE92158);
  v73 = v3;
  v62 = swift_getWitnessTable();
  v9 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v75 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v72 = v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v76 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  v71 = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  v63 = v13;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v17 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v74 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v69 = v20;
  v59 = v17;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v77 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  v70 = v24;
  OUTLINED_FUNCTION_13_0();
  v57 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v101 = v57;
  v102 = sub_1C0FDB6D4(v25, qword_1EBE92178);
  v61 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v99 = v61;
  v100 = sub_1C0FDB6D4(v26, &unk_1EBE92EC0);
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v97 = v27;
  v98 = sub_1C0FDB6D4(v28, &qword_1EBE91C40);
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v95 = v29;
  v96 = sub_1C0FDB6D4(v30, &unk_1EBE92ED0);
  v58 = swift_getWitnessTable();
  v93 = v58;
  v94 = sub_1C100D614();
  v65 = v21;
  v66 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v67 = v31;
  v68 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v60 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v64 = &v56 - v35;
  sub_1C1265960();
  v36 = *(v82 + 16);
  v56 = *(v82 + 32);
  *&v37 = v36;
  *(&v37 + 1) = v78;
  v84 = v37;
  v85 = v56;
  v86 = v79;
  v87 = v83;
  v38 = v72;
  sub_1C12655B0();
  *&v110[0] = sub_1C1265170();
  sub_1C100C6E8();
  v39 = v71;
  sub_1C1264960();

  (*(v75 + 8))(v38, v9);
  v41 = v82;
  v40 = v83;
  sub_1C106E228(v82, v110);
  v42 = v69;
  v43 = v63;
  View.cellStyle(for:)(v110, v61, v69);
  memcpy(v109, v110, sizeof(v109));
  sub_1C100C7D0(v109);
  (*(v76 + 8))(v39, v43);
  *(&v110[1] + 1) = v36;
  *&v110[2] = *(&v56 + 1);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v40, v36);
  v45 = v70;
  v46 = v59;
  View.selectionStyle(for:)(v110, v59, v58);
  (*(v74 + 8))(v42, v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v110);
  v92 = 2;
  v91 = 2;
  sub_1C106E228(v41, v110);
  v47 = v110[0];
  v83 = v110[1];
  v48 = *&v110[2];

  sub_1C100C7D0(v110);
  v88 = v47;
  v89 = v83;
  v90 = v48;
  v49 = v60;
  v50 = v65;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v92, 0, 0, v65, v60);

  (*(v77 + 8))(v45, v50);
  v51 = v67;
  v52 = swift_getWitnessTable();
  v53 = v64;
  sub_1C0FDBA4C(v49, v51, v52);
  v54 = *(v68 + 8);
  v54(v49, v51);
  sub_1C0FDBA4C(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1C106EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a4;
  v67 = a1;
  v64 = a7;
  v11 = *(a3 - 8);
  v52 = a5;
  v53 = v11;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v50 = &v49 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148);
  v55 = sub_1C1263190();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v68 = &v49 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92150);
  v58 = sub_1C1263190();
  v62 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v49 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92158);
  v61 = sub_1C1263190();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v49 - v21;
  v93 = a2;
  v94 = a3;
  v22 = v66;
  *&v95 = v66;
  *(&v95 + 1) = a5;
  v96 = a6;
  v23 = type metadata accessor for PhotosCenteredLabelCell();
  v24 = v67;
  (*(v67 + *(v23 + 60)))();
  v92 = 2;
  v91 = 2;
  v65 = a6;
  sub_1C106E168(&v93);
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v92, 0, 0, a3, v16);

  v25 = *(v53 + 8);
  v51 = a3;
  v25(v13, a3);
  sub_1C1265160();
  v26 = v22;
  v27 = *(v22 + 56);
  v28 = v24;
  v27(a2, v26);
  v29 = sub_1C12651E0();

  v93 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_1C1170094();
  v31 = v50;
  sub_1C1264F70();

  (v56[1])(v31, v14);
  sub_1C1265960();
  v53 = v32;
  v56 = &v49;
  v75 = a2;
  v76 = a3;
  v33 = v52;
  v77 = v26;
  v78 = v52;
  v79 = v65;
  v80 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92280);
  v34 = sub_1C0FDB6D4(&qword_1EBE92160, &qword_1EBE92148);
  v85 = WitnessTable;
  v86 = v34;
  v35 = v55;
  v36 = swift_getWitnessTable();
  sub_1C10703C8();
  v37 = v54;
  v38 = v68;
  sub_1C1264F60();
  (*(v59 + 8))(v38, v35);
  sub_1C12659A0();
  v68 = &v49;
  v69 = a2;
  v70 = v51;
  v71 = v66;
  v72 = v33;
  v73 = v65;
  v74 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922A0);
  v39 = sub_1C0FDB6D4(&qword_1EBE92168, &qword_1EBE92150);
  v83 = v36;
  v84 = v39;
  v40 = v58;
  v41 = swift_getWitnessTable();
  sub_1C1070508();
  v42 = v57;
  sub_1C1264F60();
  (*(v62 + 8))(v37, v40);
  v43 = sub_1C0FDB6D4(&qword_1EBE92170, &qword_1EBE92158);
  v81 = v41;
  v82 = v43;
  v44 = v61;
  v45 = swift_getWitnessTable();
  v46 = v60;
  sub_1C0FDBA4C(v42, v44, v45);
  v47 = *(v63 + 8);
  v47(v42, v44);
  sub_1C0FDBA4C(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t sub_1C106F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v33 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1C1264700();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 64))(a2, a4, v18);
  if (result)
  {
    v30 = a5;
    v31 = a6;
    *&v32 = a1;
    if (qword_1EDE833C0 != -1)
    {
      swift_once();
    }

    v34 = xmmword_1C12A7260;
    LODWORD(v35) = 262913;
    v36 = 0;
    LODWORD(v37) = 65280;

    sub_1C12192C4(&v34);

    v22 = sub_1C1265320();
    (*(v17 + 104))(v20, *MEMORY[0x1E6980EF8], v16);
    v23 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
    sub_1C1264600();
    v24 = sub_1C1264640();
    sub_1C0FD1A5C(v15, &qword_1EBE96550);
    (*(v17 + 8))(v20, v16);
    KeyPath = swift_getKeyPath();
    *&v34 = a2;
    *(&v34 + 1) = v33;
    v35 = a4;
    v36 = v30;
    v37 = v31;
    v26 = type metadata accessor for PhotosCenteredLabelCell();
    sub_1C106E228(v26, &v34);
    sub_1C100C7D0(&v34);
    v33 = v39;
    v32 = v38;
    result = sub_1C1264470();
    v27 = v33;
    v28 = v32;
    v40 = 0;
    v29 = result;
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v24 = 0;
    v29 = 0;
    v28 = 0uLL;
    v27 = 0uLL;
  }

  *a7 = v22;
  *(a7 + 8) = KeyPath;
  *(a7 + 16) = v24;
  *(a7 + 24) = v29;
  *(a7 + 32) = v28;
  *(a7 + 48) = v27;
  *(a7 + 64) = 0;
  return result;
}

__n128 sub_1C106F920@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922C0);
  sub_1C0FDB6D4(&qword_1EBE922C8, &qword_1EBE922C0);
  *a7 = sub_1C10A7F5C();
  *(a7 + 8) = 0x4028000000000000;
  *(a7 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D0);
  sub_1C106FA80(a1, a2, a3, a4, a5, a6, a7 + *(v14 + 44));
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v15 = type metadata accessor for PhotosCenteredLabelCell();
  sub_1C106E228(v15, v20);
  sub_1C100C7D0(v20);
  v18 = v22;
  v19 = v21;
  LOBYTE(a1) = sub_1C1264470();
  v16 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922A0) + 36);
  *v16 = a1;
  result = v19;
  *(v16 + 24) = v18;
  *(v16 + 8) = v19;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_1C106FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20);
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v22 = type metadata accessor for PhotosCenteredLabelCell();
  v23 = *(a1 + *(v22 + 64));
  v24 = 1;
  if (v23)
  {

    v42 = v23(a1);
    v43 = v25;
    LOBYTE(v44) = 1;
    v40 = 262146;
    v41 = 17367552;
    if (qword_1EDE7AF08 != -1)
    {
      swift_once();
    }

    v39 = word_1EDE7AF16;
    PhotosPrefetchableImage(_:font:symbolVariant:)();
    sub_1C0FCF004(v23);
    sub_1C100DC0C();
    (*(v37 + 32))(v21, v15, v13);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v24, 1, v13);
  sub_1C106FD9C(v22, &v42);
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  sub_1C0FB15D8(v21, v18);
  v33 = v38;
  sub_1C0FB15D8(v18, v38);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE922E0) + 48);
  *v34 = v26;
  *(v34 + 8) = v27;
  *(v34 + 16) = v28;
  *(v34 + 24) = v29;
  *(v34 + 32) = v30;
  *(v34 + 40) = v31;
  *(v34 + 44) = v32;
  sub_1C0FDB850(v26, v27, v28);

  sub_1C0FB1640(v21);
  sub_1C0FDB8E8(v26, v27, v28);

  return sub_1C0FB1640(v18);
}

uint64_t sub_1C106FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C106FE70(a1);
  PhotosPrefetchable.Font.font.getter();
  v3 = sub_1C1264870();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  KeyPath = swift_getKeyPath();
  result = sub_1C1263E40();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 44) = result;
  return result;
}

uint64_t sub_1C106FE70(uint64_t a1)
{
  result = (*(*(*(a1 + 32) + 8) + 40))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C106FEB8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = sub_1C1007F88();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      type metadata accessor for PhotosCenteredLabelCell.BadgeConfiguration();
      v0 = sub_1C1266790();
      if (v4 <= 0x3F)
      {
        sub_1C107032C();
        v0 = v5;
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C106FFB0(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
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
        v14 = (v13 - 1) << (8 * (((((((v6 + 7) & 0xF8) + 23) & 0xF8) + 23) & 0xF8) - 47));
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

void sub_1C1070114(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
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
              v17[1] = 0;
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
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209);
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

void sub_1C107032C()
{
  if (!qword_1EDE77600)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77600);
    }
  }
}

uint64_t sub_1C107037C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C10703C8()
{
  result = qword_1EBE92288;
  if (!qword_1EBE92288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92280);
    sub_1C107044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92288);
  }

  return result;
}

unint64_t sub_1C107044C()
{
  result = qword_1EBE92290;
  if (!qword_1EBE92290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92298);
    sub_1C1062140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92290);
  }

  return result;
}

unint64_t sub_1C1070508()
{
  result = qword_1EBE922A8;
  if (!qword_1EBE922A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE922A0);
    sub_1C0FDB6D4(&qword_1EBE922B0, &qword_1EBE922B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE922A8);
  }

  return result;
}

uint64_t PhotosThumbnailPlaceholderView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C1070620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C101268C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosThumbnailPlaceholderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1070620(v5);
  v6 = ColorScheme.px_thumbnailPlaceholderColor.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t type metadata accessor for PhotosThumbnailPlaceholderView()
{
  result = qword_1EDE804B8;
  if (!qword_1EDE804B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosObservablePerson.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservablePerson.init(_:)(a1);
  return v2;
}

uint64_t *PhotosObservablePerson.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_20_12();
  v5 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  OUTLINED_FUNCTION_20_12();
  v18 = (v2 + *(v17 + 136));
  *v18 = 0;
  v18[1] = 0;
  OUTLINED_FUNCTION_10_15();
  sub_1C1261F60();
  (*(v13 + 16))(v16, a1, v5);
  sub_1C10342F0(v16, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v8 + 32))(v2 + *(v19 + 120), v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_20_12();
  (*(*(v20 + 96) + 16))(v5);
  OUTLINED_FUNCTION_10_15();
  v22 = (v2 + *(v21 + 128));
  *v22 = v23;
  v22[1] = v24;
  OUTLINED_FUNCTION_20_12();
  v26 = *(v25 + 88);
  v27 = *(v26 + 16);
  v28 = (*(v27 + 24))(v5, v27);
  v30 = v29;
  OUTLINED_FUNCTION_10_15();
  v32 = (v2 + *(v31 + 136));

  *v32 = v28;
  v32[1] = v30;
  (*(v27 + 40))(v5, v27);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v33 + 144)) = v34 & 1;
  (*(*(*(v26 + 8) + 8) + 8))(v5);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v35 + 152)) = v36 & 1;
  LOBYTE(v27) = (*(v27 + 32))(v5, v27);
  (*(v13 + 8))(a1, v5);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v37 + 160)) = v27 & 1;
  return v2;
}

uint64_t PhotosObservablePerson.item.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  swift_beginAccess();
  swift_getKeyPath();
  sub_1C1072138();

  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1C1070E98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = v5;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_21_3();
  v7 = sub_1C0FA8038();

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_4_22();
    v9 = *(v6 + 96);
    *(v10 - 32) = *(v6 + 80);
    *(v10 - 16) = v9;
    swift_getKeyPath();
    OUTLINED_FUNCTION_19_8();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_9_15();
  }

  else
  {
    *v2 = a1;
    v2[1] = a2;
  }
}

uint64_t sub_1C1070FD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = v5;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
  sub_1C1073248();
  v7 = sub_1C0FA8038();

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_4_22();
    v9 = *(v6 + 96);
    *(v10 - 32) = *(v6 + 80);
    *(v10 - 16) = v9;
    swift_getKeyPath();
    OUTLINED_FUNCTION_19_8();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_9_15();
  }

  else
  {
    *v2 = a1;
    v2[1] = a2;
  }
}

uint64_t sub_1C107111C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  OUTLINED_FUNCTION_8_17(a1);
  result = sub_1C0FA8038();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15();
  }

  else
  {
    *(v1 + v4) = v2;
  }

  return result;
}

uint64_t sub_1C1071224(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  OUTLINED_FUNCTION_8_17(a1);
  result = sub_1C0FA8038();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15();
  }

  else
  {
    *(v1 + v4) = v2;
  }

  return result;
}

uint64_t sub_1C107132C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  OUTLINED_FUNCTION_8_17(a1);
  result = sub_1C0FA8038();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15();
  }

  else
  {
    *(v1 + v4) = v2;
  }

  return result;
}

uint64_t sub_1C1071434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  *&v68 = *v1 + 104;
  v4 = v3[10];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  PhotosObservablePerson.item.getter(&v60 - v15);
  v17 = v3[12];
  v18 = (*(v17 + 16))(v4, v17);
  v20 = v19;
  v21 = *(v5 + 8);
  v66 = v5 + 8;
  v64 = v21;
  v21(v16, v4);
  v22 = v3[11];
  *&v23 = v4;
  *(&v23 + 1) = v22;
  *&v24 = v17;
  v25 = v18;
  *(&v24 + 1) = *v68;
  v68 = v24;
  v69 = v23;
  v72 = v23;
  v73 = v24;
  swift_getKeyPath();
  sub_1C1071FC8();

  v74 = v2;
  v70 = v69;
  v71 = v68;
  swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  sub_1C1261F50();

  v26 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v27 = *v26 == v25 && v26[1] == v20;
  if (v27 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v26 = v25;
    v26[1] = v20;
  }

  swift_endAccess();
  sub_1C1072A10();
  PhotosObservablePerson.item.getter(v13);
  v62 = v22;
  v28 = *(v22 + 16);
  v61 = (*(v28 + 24))(v4, v28);
  v30 = v29;
  v31 = v64;
  v32 = v64(v13, v4);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v33;
  swift_getKeyPath();
  sub_1C1071FC8();

  v74 = v2;
  MEMORY[0x1EEE9AC00](v34);
  v35 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v35;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v61, v30);
  swift_endAccess();
  v36 = v31;

  sub_1C1072A10();
  v37 = v60;
  PhotosObservablePerson.item.getter(v60);
  v38 = *(v28 + 40);
  v61 = v28;
  v39 = v38(v4, v28) & 1;
  v40 = v36(v37, v4);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v41;
  swift_getKeyPath();
  sub_1C1071FC8();

  v74 = v2;
  MEMORY[0x1EEE9AC00](v42);
  v43 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v43;
  swift_getKeyPath();
  sub_1C1261F50();

  v44 = *(*v2 + 144);
  if (v39 != *(v2 + v44))
  {
    *(v2 + v44) = v39;
  }

  sub_1C1072A10();
  v45 = v63;
  PhotosObservablePerson.item.getter(v63);
  v46 = (*(*(*(v62 + 8) + 8) + 8))(v4) & 1;
  v47 = v36(v45, v4);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v48;
  swift_getKeyPath();
  sub_1C1071FC8();

  v74 = v2;
  MEMORY[0x1EEE9AC00](v49);
  v50 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v50;
  swift_getKeyPath();
  sub_1C1261F50();

  v51 = *(*v2 + 152);
  if (v46 != *(v2 + v51))
  {
    *(v2 + v51) = v46;
  }

  sub_1C1072A10();
  v52 = v65;
  PhotosObservablePerson.item.getter(v65);
  v53 = (*(v61 + 32))(v4) & 1;
  v54 = v36(v52, v4);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v55;
  swift_getKeyPath();
  sub_1C1071FC8();

  v74 = v2;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v68;
  *(&v60 - 2) = v69;
  *(&v60 - 1) = v57;
  swift_getKeyPath();
  sub_1C1261F50();

  v58 = *(*v2 + 160);
  if (v53 != *(v2 + v58))
  {
    *(v2 + v58) = v53;
  }

  return sub_1C1072A10();
}

uint64_t PhotosObservablePerson.item.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_16_4();
  v7 = *(v3 + 80);
  swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 112);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a1, v1 + v5);
}

uint64_t sub_1C1071D58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_1C1071434(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*sub_1C1071E40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1071EB0;
}

uint64_t sub_1C1071EB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1071434(result);
  }

  return result;
}

uint64_t sub_1C1071F08(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return PhotosObservablePerson.item.setter(v3);
}

uint64_t sub_1C1071FC8()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C1072050(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1071D58(v3);
}

uint64_t sub_1C1072138()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

void (*PhotosObservablePerson.item.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C1071E40(v3);
  return sub_1C1072378;
}

void sub_1C1072378(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C1072A10();

  free(v1);
}

uint64_t PhotosObservablePerson.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t PhotosObservablePerson.name.getter()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_17_12();
  v1 = *KeyPath;

  return v1;
}

uint64_t PhotosObservablePerson.selectionIdentifier.getter()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_17_12();
  v1 = *KeyPath;

  return v1;
}

uint64_t sub_1C10725B0@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservablePerson.selectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10725DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1070E98(v1, v2);
}

uint64_t sub_1C107261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t sub_1C107269C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservablePerson.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10726C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1070FD0(v1, v2);
}

uint64_t sub_1C1072708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t PhotosObservablePerson.isPet.getter()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 144));
}

uint64_t sub_1C1072808@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.isPet.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotosObservablePerson.isFavorite.getter()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 152));
}

uint64_t sub_1C10728E0@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotosObservablePerson.canFavorite.getter()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C1071FC8();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 160));
}

uint64_t sub_1C10729B8@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.canFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1072A10()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  sub_1C1261F40();
}

Swift::Void __swiftcall PhotosObservablePerson.setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  isa = undoManager.value.super.isa;
  v4 = _;
  v5 = *v2;
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  PhotosObservablePerson.item.getter(&v12 - v10);
  (*(*(*(v5 + 88) + 8) + 16))(v4, isa, v6);
  (*(v8 + 8))(v11, v6);
}

uint64_t PhotosObservablePerson.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 168);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t PhotosObservablePerson.__deallocating_deinit()
{
  PhotosObservablePerson.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C1072D94(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void (*sub_1C1072DDC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosObservablePerson.item.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C1072E38(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1072EBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C1072F6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1073010()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1C1261F70();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return AssociatedTypeWitness;
}

unint64_t sub_1C1073248()
{
  result = qword_1EDE7B740;
  if (!qword_1EDE7B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B740);
  }

  return result;
}

uint64_t PhotosMockAlbum.__allocating_init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, char a10, char a11, char a12, char a13, unint64_t a14)
{
  v17 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10 & 1, a11, a12, a13, a14);
  return v17;
}

uint64_t PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, char a10, char a11, char a12, char a13, unint64_t a14)
{
  v15 = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v14 + 72) = 1;
  *(v14 + 80) = 0;
  *(v14 + 88) = 1;
  *(v14 + 96) = 0;
  *(v14 + 104) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  sub_1C1261F60();

  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v21 = 0x80000001C126AE30;
  v22 = 0xD000000000000013;
  if (a2)
  {
    v22 = a1;
    v21 = a2;
  }

  *(v14 + 32) = v22;
  *(v14 + 40) = v21;

  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6 & 1;
  *(v14 + 80) = a5;
  *(v14 + 88) = a6 & 1;
  if (a10)
  {
    v23 = a5;
  }

  else
  {
    v23 = a9;
  }

  *(v14 + 96) = v23;
  *(v14 + 104) = a6 & 1 & a10;
  *(v14 + 105) = a7;
  *(v14 + 106) = a8;
  *(v14 + 107) = a11;
  *(v14 + 108) = a12;
  *(v14 + 109) = a13;
  *(v14 + 112) = a14;
  if (a14 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300);
    sub_1C1266B80();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1C1266D60();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300);
  v24 = sub_1C12660A0();

  v25 = PXDisplayAssetFetchResultFromArray();

  *(v15 + 120) = v25;
  sub_1C1073E9C();
  return v15;
}

uint64_t sub_1C10735EC()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9();
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }
}

uint64_t sub_1C10736A0()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_6();
    *(v6 - 16) = v0;
    OUTLINED_FUNCTION_19_9();
  }
}

uint64_t sub_1C1073764()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9();
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }
}

uint64_t sub_1C1073818(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_5();
  if ((*(v2 + 72) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 64) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9();
}

uint64_t sub_1C10738DC(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_5();
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = a1;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9();
}

uint64_t sub_1C10739A0(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_5();
  if ((*(v2 + 104) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 96) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 96) = a1;
    *(v2 + 104) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9();
}

uint64_t sub_1C1073A64(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 105) == v2)
  {
    *(v1 + 105) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9();
  }

  return result;
}

uint64_t sub_1C1073AF4(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 106) == v2)
  {
    *(v1 + 106) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9();
  }

  return result;
}

uint64_t sub_1C1073B84(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 107) == v2)
  {
    *(v1 + 107) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9();
  }

  return result;
}

uint64_t sub_1C1073C14(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 108) == v2)
  {
    *(v1 + 108) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9();
  }

  return result;
}

uint64_t sub_1C1073CA4(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 109) == v2)
  {
    *(v1 + 109) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9();
  }

  return result;
}

uint64_t sub_1C1073D34(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();

  v4 = sub_1C0FEAAF0(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_19_9();
  }
}

uint64_t sub_1C1073DF8(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();
  if (*(v1 + 120) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_19_9();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1073E9C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9();
  }

  else
  {
    *(v1 + 128) = v2;
    *(v1 + 136) = v0;
  }
}

uint64_t sub_1C1073F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1073FD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1073FD8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C107406C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10741A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10741A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C1074238()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1074348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1074348()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C10743DC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10744A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1074510();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1074510()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 64);
}

uint64_t sub_1C107459C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3 & 1;
  return result;
}

void sub_1C10745FC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107470C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1074774();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1074774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 80);
}

uint64_t sub_1C1074800(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 80) = a2;
  *(a1 + 88) = a3 & 1;
  return result;
}

void sub_1C1074860()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074970@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10749D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10749D8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 96);
}

uint64_t sub_1C1074A64(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 96) = a2;
  *(a1 + 104) = a3 & 1;
  return result;
}

void sub_1C1074AC4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107492C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074BD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1074C2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1074C2C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 105);
}

uint64_t sub_1C1074CB4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 105) = a2;
  return result;
}

void sub_1C1074D08()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1074B90();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1074E70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1074E70()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 106);
}

uint64_t sub_1C1074EF8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 106) = a2;
  return result;
}

void sub_1C1074F4C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1074DD4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107505C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10750B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10750B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 107);
}

uint64_t sub_1C107513C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 107) = a2;
  return result;
}

void sub_1C1075190()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075018();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10752A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10752F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10752F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 108);
}

uint64_t sub_1C1075380(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 108) = a2;
  return result;
}

void sub_1C10753D4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107525C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10754E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C107553C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C107553C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 109);
}

uint64_t sub_1C10755C4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 109) = a2;
  return result;
}

void sub_1C1075618()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10754A0();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1075780();
  *a1 = result;
  return result;
}

uint64_t sub_1C1075780()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C107580C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
}

void sub_1C1075874()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10756E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10759DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C10759DC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1075A68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C1075AD0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075940();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1075C6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1075C24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C1075C6C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C1075D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
}

void sub_1C1075D6C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075B9C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075E40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1261990();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id sub_1C1075E88()
{
  v0 = sub_1C1075780();
  if (sub_1C0FF6288(v0))
  {
    sub_1C0FF768C(0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1C68F02D0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }

    v2 = v1;
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1C1075F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C12AD9C0;
  sub_1C0FE0644();
  v1 = sub_1C107623C(8);
  type metadata accessor for PhotosMockAlbum();
  v2 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x657469726F766146, 0xE900000000000073, 25, 0, 1, 0, 0, 1, 0, 0, 0, v1);
  *(v0 + 32) = v2;
  v3 = sub_1C107623C(5);
  v4 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x4E207265646C6F46, 0xEB00000000656D61, 5, 0, 0, 1, 0, 0, 0, 0, 0, v3);
  *(v0 + 40) = v4;
  v5 = sub_1C107623C(8);
  v6 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0xD00000000000002BLL, 0x80000001C126AF30, 123456, 0, 0, 0, 0, 1, 0, 0, 0, v5);
  *(v0 + 48) = v6;
  v7 = sub_1C107623C(2);
  v8 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x6C41206C6C616D53, 0xEB000000006D7562, 2, 0, 0, 0, 0, 1, 0, 0, 0, v7);
  *(v0 + 56) = v8;
  v9 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x6C41207974706D45, 0xEB000000006D7562, 0, 0, 0, 0, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = v9;
  v10 = sub_1C107623C(3);
  v11 = swift_allocObject();
  result = PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x4620746E65726150, 0xED00007265646C6FLL, 3, 0, 0, 1, 3, 0, 0, 0, 0, v10);
  *(v0 + 72) = v11;
  qword_1EBE922F0 = v0;
  return result;
}

uint64_t sub_1C107623C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = MEMORY[0x1E69E7CC0];
    if (v1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      v2 = sub_1C1266A50();
      v3 = 0;
      do
      {
        v4 = v3 + 1;
        MEMORY[0x1EEE9AC00](v2);
        v7[2] = v5;
        v6 = objc_allocWithZone(MEMORY[0x1E69C45E0]);
        sub_1C1076ABC(sub_1C10777C8, v7);
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        v2 = sub_1C1266A30();
        v3 = v4;
      }

      while (v1 != v4);
      return v8;
    }
  }

  return result;
}

uint64_t static PhotosMockAlbum.sample.getter()
{
  if (qword_1EBE8FC50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1076394()
{
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v0, v1);
  return sub_1C1261F20();
}

uint64_t keypath_get_10Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t type metadata accessor for PhotosMockAlbum()
{
  result = qword_1EBE92348;
  if (!qword_1EBE92348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockAlbum.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAlbum___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockAlbum.__deallocating_deinit()
{
  PhotosMockAlbum.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C1076708(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074D08();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C1076768(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074F4C();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C10767C8(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074F4C();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C107684C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1075618();
  v2[4] = v3;
  return sub_1C10768AC;
}

id sub_1C10769B0@<X0>(void *a1@<X8>)
{
  result = sub_1C1075E88();
  *a1 = result;
  return result;
}

void sub_1C1076A28(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:a2 * 0.1 saturation:1.0 brightness:1.0 alpha:1.0];
  [a1 setTintColor_];
}

uint64_t sub_1C1076ABC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1C10777D0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C1130E08;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithConfiguration_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1076BD8(uint64_t a1)
{
  *(a1 + 8) = sub_1C1076D44(&qword_1EBE92310, type metadata accessor for PhotosMockAlbum);
  result = sub_1C1076D44(&qword_1EBE92318, type metadata accessor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076C5C(uint64_t a1)
{
  result = sub_1C1076D44(&qword_1EBE92320, type metadata accessor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1076D8C(uint64_t a1)
{
  result = sub_1C1076D44(&qword_1EBE92328, type metadata accessor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076DEC()
{
  result = sub_1C1261F70();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t PhotosMockSearchResult.__allocating_init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = swift_allocObject();
  PhotosMockSearchResult.init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  return v21;
}

uint64_t PhotosMockSearchResult.init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v38 = a7;
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v46 = a16;
  v47 = a15;
  v44 = a14;
  v45 = a13;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  OUTLINED_FUNCTION_15(v20);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v39 = *a12;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  v24 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__startDate;
  v25 = sub_1C1261DE0();
  __swift_storeEnumTagSinglePayload(v16 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate;
  __swift_storeEnumTagSinglePayload(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate, 1, 1, v25);
  v27 = (v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionKindName);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionKindSymbol);
  *v28 = 0;
  v28[1] = 0;
  sub_1C1261F60();

  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v30 = v35;
  v29 = v36;
  *(v16 + 32) = a3;
  *(v16 + 40) = v30;
  *(v16 + 48) = v29;
  *(v16 + 56) = v37 & 1;
  v31 = v38;
  sub_1C10641B8(v38, v23);
  OUTLINED_FUNCTION_27_6(v16 + v24);
  sub_1C1077B04(v23, v16 + v24);
  v32 = v40;
  sub_1C10641B8(v40, v23);
  OUTLINED_FUNCTION_27_6(v16 + v26);
  sub_1C1077B04(v23, v16 + v26);
  v33 = v42;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isPet) = v41;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isFavorite) = v33;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets) = v43;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType) = v39;
  sub_1C1078204();
  sub_1C107822C();
  OUTLINED_FUNCTION_27_6(v32);
  OUTLINED_FUNCTION_27_6(v31);
  return v16;
}

uint64_t sub_1C1077B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1077B74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  if (sub_1C0FDFDE0(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_12_3();
    *(v6 - 32) = v2;
    *(v6 - 24) = a1;
    *(v6 - 16) = a2;
    OUTLINED_FUNCTION_21_4();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t sub_1C1077C38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  if (sub_1C0FDFDE0(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_12_3();
    *(v6 - 32) = v2;
    *(v6 - 24) = a1;
    *(v6 - 16) = a2;
    OUTLINED_FUNCTION_21_4();
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t sub_1C1077CFC(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_5();
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_3();
  *(v7 - 32) = v2;
  *(v7 - 24) = a1;
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_1C1077E14(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *a2;
  swift_beginAccess();
  sub_1C10641B8(v2 + v9, v8);
  LOBYTE(a2) = sub_1C1079CB0(v8, a1);
  sub_1C0FFC7B0(v8, &qword_1EBE91E68);
  if (a2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_2_7();
    *(v11 - 16) = v2;
    *(v11 - 8) = a1;
    sub_1C1079BE8();
  }

  else
  {
    sub_1C10641B8(a1, v8);
    swift_beginAccess();
    sub_1C1064FA4(v8, v2 + v9);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
}

uint64_t sub_1C1077FDC(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = OUTLINED_FUNCTION_9_5();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v7 - 16) = v2;
    *(v7 - 8) = v3;
    sub_1C1079BE8();
  }

  return result;
}

uint64_t sub_1C1078084(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets;
  OUTLINED_FUNCTION_9_5();

  v5 = sub_1C0FEAAF0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_21_4();
  }
}

uint64_t sub_1C1078154(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  OUTLINED_FUNCTION_9_5();
  result = sub_1C0FEA138(*(v1 + v3), v2);
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = v2;
    OUTLINED_FUNCTION_21_4();
  }

  return result;
}

void sub_1C1078254()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v6 = (v0 + *v5);
  swift_beginAccess();
  if (sub_1C0FDFDE0(*v6, v6[1], v4, v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v8 - 32) = v0;
    *(v8 - 24) = v4;
    *(v8 - 16) = v2;
    sub_1C1079BE8();
  }

  else
  {
    *v6 = v4;
    v6[1] = v2;
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107832C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1078370();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1078370()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C107840C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10784D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1078564();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C107851C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C1078564()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C1078600()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10786CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1078734();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1078734()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 48);
}

uint64_t sub_1C10787C8(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3 & 1;
  return result;
}

void sub_1C1078828()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C1078990()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10788F4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  OUTLINED_FUNCTION_15(v7);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C10641B8(a1, &v12 - v9);
  return a5(v10);
}

uint64_t sub_1C1078B8C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v7 = sub_1C107AC34(v5, v6);
  OUTLINED_FUNCTION_18_11(v7, v8, v9, v10, v11, v12, v13, v14, v17, v2);
  sub_1C1261F30();

  v15 = *a1;
  OUTLINED_FUNCTION_7_4();
  return sub_1C10641B8(v2 + v15, a2);
}

uint64_t sub_1C1078C30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C10641B8(a2, &v12 - v8);
  v10 = *a3;
  swift_beginAccess();
  sub_1C1064FA4(v9, a1 + v10);
  return swift_endAccess();
}

void sub_1C1078CF4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078A5C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1078E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1078E78(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isPet;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1078ED4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078DC0();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078FEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1079044();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1079058(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v6 = sub_1C107AC34(v4, v5);
  OUTLINED_FUNCTION_18_11(v6, v7, v8, v9, v10, v11, v12, v13, v16, v2);
  sub_1C1261F30();

  v14 = *a2;
  OUTLINED_FUNCTION_7_4();
  return *(v2 + v14);
}

uint64_t sub_1C10790E8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1079144()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078FA0();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107925C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10792B4();
  *a1 = result;
  return result;
}

uint64_t sub_1C10792B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C1079350(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C10793C0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079210();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10794D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C107954C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C107954C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v6 = sub_1C107AC34(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  result = OUTLINED_FUNCTION_7_4();
  *a1 = *(v2 + v14);
  return result;
}

uint64_t sub_1C10795EC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1079648()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107948C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1079760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10797A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C10797B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079714();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10798D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1079914();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1079928()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2);
  OUTLINED_FUNCTION_18_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  swift_beginAccess();

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C10799D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void sub_1C1079A44()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079884();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1079B10()
{
  v0 = sub_1C1261E20();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C1261E10();
  v1 = sub_1C1261DF0();
  v2 = OUTLINED_FUNCTION_5_5();
  v3(v2);
  return v1;
}

uint64_t sub_1C1079BE8()
{
  OUTLINED_FUNCTION_0_28();
  sub_1C107AC34(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C1079CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C107AC34(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68);
  v16 = 0;
  return v16 & 1;
}

uint64_t type metadata accessor for PhotosMockSearchResult()
{
  result = qword_1EBE923D0;
  if (!qword_1EBE923D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSearchResult.deinit()
{

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__startDate, &qword_1EBE91E68);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate, &qword_1EBE91E68);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockSearchResult.__deallocating_deinit()
{
  PhotosMockSearchResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C107A384(uint64_t a1)
{
  result = sub_1C107AC34(&qword_1EBE923B8, type metadata accessor for PhotosMockSearchResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C107A464(uint64_t a1)
{
  result = sub_1C107AC34(&qword_1EBE923C8, type metadata accessor for PhotosMockSearchResult);
  *(a1 + 8) = result;
  return result;
}

void sub_1C107A4C4()
{
  sub_1C1065568();
  if (v0 <= 0x3F)
  {
    sub_1C1261F70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C107AC34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C107AC7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeSpec.getter();
  *a1 = result;
  return result;
}

uint64_t OneUpTitleView.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

PhotosSwiftUICore::OneUpTitleView::Configuration __swiftcall OneUpTitleView.Configuration.init(showSubtitle:alignment:)(Swift::Bool showSubtitle, PhotosSwiftUICore::OneUpTitleView::Alignment alignment)
{
  v3 = *alignment;
  *v2 = showSubtitle;
  v2[1] = v3;
  result.showSubtitle = showSubtitle;
  return result;
}

uint64_t OneUpTitleView.init(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v5 = *(type metadata accessor for OneUpTitleView() + 28);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  *(a2 + 1) = v4;
  return result;
}

uint64_t type metadata accessor for OneUpTitleView()
{
  result = qword_1EDE7E2E0;
  if (!qword_1EDE7E2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C1263AA0();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923E0);
  sub_1C107AF2C(v1, a1 + *(v3 + 44));
  v4 = sub_1C107B734();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923E8) + 36)) = v4;
  v5 = sub_1C1265A00();
  v6 = sub_1C107B734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923F0);
  v8 = (a1 + *(result + 36));
  *v8 = v5;
  *(v8 + 1) = v6;
  return result;
}

uint64_t sub_1C107AF2C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92428);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  if (sub_1C107B420() && (v22 = v21, ObjectType = swift_getObjectType(), v56 = (*(v22 + 128))(ObjectType, v22), v25 = v24, swift_unknownObjectRelease(), v25))
  {
    v54 = PXFontWithTextStyleSymbolicTraitsAndWeight();
    v26 = sub_1C107B580();
    v55 = v17;
    v27 = v4;
    v28 = v14;
    v29 = v11;
    v30 = a2;
    v31 = v26;
    sub_1C107B5F4();
    v32 = sub_1C1223804();

    if (a1[1])
    {
      v33 = 1;
    }

    else
    {
      v33 = 4;
    }

    KeyPath = swift_getKeyPath();
    LOBYTE(v61) = 0;
    *&v58 = v56;
    *(&v58 + 1) = v25;
    *&v59 = v54;
    *(&v59 + 1) = v31;
    a2 = v30;
    v11 = v29;
    v14 = v28;
    v4 = v27;
    v17 = v55;
    *v60 = v32;
    *&v60[8] = v33;
    *&v60[16] = KeyPath;
    v60[24] = 0;
    sub_1C1058EB8();
    sub_1C1264DF0();
    v61 = v58;
    v62 = v59;
    v63[0] = *v60;
    *(v63 + 9) = *&v60[9];
    sub_1C107BD50(&v61);
    sub_1C107BDA4(v8, v20);
    v35 = v20;
    v36 = 0;
  }

  else
  {
    v35 = v20;
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v4);
  if (*a1 == 1 && sub_1C107B420() && (v38 = v37, v39 = swift_getObjectType(), v40 = (*(v38 + 136))(v39, v38), v42 = v41, swift_unknownObjectRelease(), v42))
  {
    v55 = PXFontWithTextStyleSymbolicTraitsAndWeight();
    v43 = [objc_opt_self() secondaryLabelColor];
    v56 = v4;
    v44 = v43;
    sub_1C107B5F4();
    v45 = sub_1C1223804();

    if (a1[1])
    {
      v46 = 1;
    }

    else
    {
      v46 = 4;
    }

    v47 = swift_getKeyPath();
    LOBYTE(v61) = 0;
    *&v58 = v40;
    *(&v58 + 1) = v42;
    *&v59 = v55;
    *(&v59 + 1) = v44;
    *v60 = v45;
    *&v60[8] = v46;
    *&v60[16] = v47;
    v60[24] = 0;
    sub_1C1058EB8();
    v48 = v57;
    sub_1C1264DF0();
    v61 = v58;
    v62 = v59;
    v63[0] = *v60;
    *(v63 + 9) = *&v60[9];
    sub_1C107BD50(&v61);
    sub_1C107BDA4(v48, v17);
    v49 = v17;
    v50 = 0;
    v51 = v56;
  }

  else
  {
    v49 = v17;
    v50 = 1;
    v51 = v4;
  }

  __swift_storeEnumTagSinglePayload(v49, v50, 1, v51);
  sub_1C107BC78(v20, v14);
  sub_1C107BC78(v17, v11);
  sub_1C107BC78(v14, a2);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92438);
  sub_1C107BC78(v11, a2 + *(v52 + 48));
  sub_1C107BCE8(v17);
  sub_1C107BCE8(v20);
  sub_1C107BCE8(v11);
  return sub_1C107BCE8(v14);
}

uint64_t sub_1C107B420()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

id sub_1C107B580()
{
  sub_1C107B5F4();
  v0 = sub_1C1225818();

  v1 = objc_opt_self();
  v2 = &selRef_whiteColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_labelColor;
  }

  v3 = [v1 *v2];

  return v3;
}

uint64_t sub_1C107B5F4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1C107B734()
{
  sub_1C107B5F4();
  v0 = sub_1C1225818();

  if ((v0 & 1) == 0)
  {
    return 1.0;
  }

  v2 = 0.0;
  if (sub_1C107B420())
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 296))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      return 1.0;
    }
  }

  return v2;
}

unint64_t sub_1C107B7D0()
{
  result = qword_1EBE923F8;
  if (!qword_1EBE923F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE923F8);
  }

  return result;
}

void sub_1C107B86C()
{
  sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
  if (v0 <= 0x3F)
  {
    sub_1C10387FC();
    if (v1 <= 0x3F)
    {
      sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OneUpTitleView.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for OneUpTitleView.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_1C107BB08()
{
  result = qword_1EBE92400;
  if (!qword_1EBE92400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE923F0);
    sub_1C107BBC0();
    sub_1C0FDB6D4(&qword_1EDE7BC88, &qword_1EBE92420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92400);
  }

  return result;
}

unint64_t sub_1C107BBC0()
{
  result = qword_1EBE92408;
  if (!qword_1EBE92408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE923E8);
    sub_1C0FDB6D4(&qword_1EBE92410, &qword_1EBE92418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92408);
  }

  return result;
}

uint64_t sub_1C107BC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C107BCE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C107BDA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PhotosDetailsNavigationTransitionKind.description.getter()
{
  if (*v0)
  {
    return 0x70556564696C73;
  }

  else
  {
    return 1836019578;
  }
}

uint64_t PhotosDetailsNavigationTransitionKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t EnvironmentValues.photosDetailsNavigationForcedTransitionKind.getter()
{
  sub_1C107BF2C();

  return sub_1C12637F0();
}

unint64_t sub_1C107BF2C()
{
  result = qword_1EDE7EF20;
  if (!qword_1EDE7EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7EF20);
  }

  return result;
}

uint64_t sub_1C107BF80@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosDetailsNavigationForcedTransitionKind.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.photosDetailsNavigationForcedTransitionKind.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C107BF2C();
  sub_1C12637F0();
  return sub_1C107C094;
}

unint64_t sub_1C107C0D0()
{
  result = qword_1EBE92440;
  if (!qword_1EBE92440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationTransitionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C107C21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C107C280();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C107C280()
{
  result = qword_1EBE92448;
  if (!qword_1EBE92448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92450);
    sub_1C107C0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92448);
  }

  return result;
}

uint64_t View.photosCellOverlay(isDisabled:)(char a1, uint64_t a2, uint64_t a3)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(__dst, __src, 0xD1uLL);
  __dst[209] = a1;
  MEMORY[0x1C68EE920](__dst, a2, &type metadata for PhotosCellOverlayModifier, a3);
  memcpy(v9, __dst, 0xD2uLL);
  return sub_1C107C3A8(v9);
}

unint64_t sub_1C107C3D8()
{
  result = qword_1EDE81230[0];
  if (!qword_1EDE81230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81230);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A9CellSpecsV15BackgroundColorO(void *a1)
{
  v1 = a1[3];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C107C460(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 210))
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

uint64_t sub_1C107C4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 210) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 210) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C107C548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92458);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v40 - v5;
  v7 = sub_1C12637E0();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v46);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92460);
  MEMORY[0x1EEE9AC00](v47);
  v12 = v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92468);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v40 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92470);
  MEMORY[0x1EEE9AC00](v44);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92478);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = v40 - v20;
  memcpy(v56, v2, 0xD1uLL);
  if (v2[209] == 1)
  {
    v40[1] = v4;
    v40[2] = a2;
    memcpy(v55, v2, 0xD1uLL);
    if (sub_1C100D688(v55) == 1)
    {
      nullsub_1(v55);
      memcpy(v52, v56, 0xD1uLL);
      v21 = nullsub_1(v52);
      memcpy(v54, v21, sizeof(v54));
      memcpy(v53, v56, 0xD1uLL);
      v22 = nullsub_1(v53);
      sub_1C100D690(v22, &v51);
    }

    else
    {
      nullsub_1(v55);
      memcpy(v52, v56, 0xD1uLL);
      nullsub_1(v52);
      memcpy(v53, v56, 0xD1uLL);
      nullsub_1(v53);

      sub_1C1266420();
      v25 = sub_1C1264410();
      sub_1C1262620();

      v26 = v41;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0F9E21C(v56, &qword_1EBE91C80);
      (*(v42 + 8))(v26, v43);
    }

    v27 = v50;
    memcpy(v53, v54, 0xD0uLL);
    sub_1C100C7D0(v53);
    v28 = v53[0];
    v29 = *(v46 + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1C12639D0();
    (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
    *v10 = v28;
    *(v10 + 1) = v28;
    sub_1C107CD70(v10, v12);
    *&v12[*(v47 + 56)] = 256;
    sub_1C107CDD4(v12, v14, &qword_1EBE92460);
    v14[*(v45 + 36)] = 0;
    sub_1C107CDD4(v14, v16, &qword_1EBE92468);
    *&v16[*(v44 + 36)] = 0x3FE51EB851EB851FLL;
    v32 = sub_1C12659A0();
    v34 = v33;
    v35 = v48;
    v36 = &v48[*(v17 + 36)];
    sub_1C107CDD4(v16, v36, &qword_1EBE92470);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924A0) + 36));
    *v37 = v32;
    v37[1] = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92480);
    (*(*(v38 - 8) + 16))(v35, v27, v38);
    v39 = v49;
    sub_1C107CDD4(v35, v49, &qword_1EBE92478);
    sub_1C107CE3C(v39, v6);
    swift_storeEnumTagMultiPayload();
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480);
    sub_1C1263C20();
    return sub_1C0F9E21C(v39, &qword_1EBE92478);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92480);
    (*(*(v23 - 8) + 16))(v6, v50, v23);
    swift_storeEnumTagMultiPayload();
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480);
    return sub_1C1263C20();
  }
}

unint64_t sub_1C107CC8C()
{
  result = qword_1EBE92488;
  if (!qword_1EBE92488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92478);
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480);
    sub_1C0FDB6D4(&qword_1EBE92498, &qword_1EBE924A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92488);
  }

  return result;
}

uint64_t sub_1C107CD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263320();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C107CDD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C107CE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C107CEAC()
{
  result = qword_1EBE924A8;
  if (!qword_1EBE924A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924B0);
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924A8);
  }

  return result;
}

uint64_t PhotosCollectionSearchResultCellContentPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C107D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C108A638();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosCollectionSearchResultCellStyle.getter()
{
  sub_1C107D0F4();

  return sub_1C12637F0();
}

unint64_t sub_1C107D0F4()
{
  result = qword_1EBE924B8;
  if (!qword_1EBE924B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924B8);
  }

  return result;
}

uint64_t sub_1C107D148@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosCollectionSearchResultCellStyle.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.photosCollectionSearchResultCellStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C107D0F4();
  sub_1C12637F0();
  return sub_1C107D25C;
}

uint64_t sub_1C107D294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 68);
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
    sub_1C0FD1A5C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107D4B0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 72);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C107D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 76), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107D808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 80), &v15 - v10, &qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FDB800(v2 + *(a1 + 84), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C108B850(v11, a2);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C107DBE0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_1C107DD34(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 92);
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

void sub_1C107DE90(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 96);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10 & 1;
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

double sub_1C107E020(uint64_t a1)
{
  v2 = sub_1C1263EB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1C107DA0C(a1, &v23 - v15);
  (*(v3 + 104))(v13, *MEMORY[0x1E697FF38], v2);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_1C0FDB800(v16, v8, &qword_1EBE902F0);
  sub_1C0FDB800(v13, &v8[v17], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE902F0);
    sub_1C0FD1A5C(v16, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v8[v17], 1, v2) == 1)
    {
      sub_1C0FD1A5C(v8, &qword_1EBE902F0);
      return 0.0;
    }

    goto LABEL_6;
  }

  v19 = v24;
  sub_1C0FDB800(v8, v24, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v8[v17], 1, v2) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE902F0);
    sub_1C0FD1A5C(v16, &qword_1EBE902F0);
    (*(v3 + 8))(v19, v2);
LABEL_6:
    sub_1C0FD1A5C(v8, &qword_1EBE902E8);
    return 12.0;
  }

  v20 = v23;
  (*(v3 + 32))(v23, &v8[v17], v2);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v21 = sub_1C1265DE0();
  v22 = *(v3 + 8);
  v22(v20, v2);
  sub_1C0FD1A5C(v13, &qword_1EBE902F0);
  sub_1C0FD1A5C(v16, &qword_1EBE902F0);
  v22(v19, v2);
  sub_1C0FD1A5C(v8, &qword_1EBE902F0);
  result = 12.0;
  if (v21)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C107E448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1C107DA0C(a1, &v29 - v16);
  (*(v4 + 104))(v14, *MEMORY[0x1E697FF40], v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1C0FDB800(v17, v9, &qword_1EBE902F0);
  sub_1C0FDB800(v14, &v9[v18], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE902F0);
    sub_1C0FD1A5C(v17, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v9[v18], 1, v3) == 1)
    {
      sub_1C0FD1A5C(v9, &qword_1EBE902F0);
LABEL_11:
      if (qword_1EDE82B50 != -1)
      {
        swift_once();
      }

      v20 = &qword_1EDE82B58;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v19 = v31;
  sub_1C0FDB800(v9, v31, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v9[v18], 1, v3) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE902F0);
    sub_1C0FD1A5C(v17, &qword_1EBE902F0);
    (*(v4 + 8))(v19, v3);
LABEL_6:
    sub_1C0FD1A5C(v9, &qword_1EBE902E8);
    goto LABEL_7;
  }

  v21 = v30;
  (*(v4 + 32))(v30, &v9[v18], v3);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v22 = sub_1C1265DE0();
  v23 = *(v4 + 8);
  v23(v21, v3);
  sub_1C0FD1A5C(v14, &qword_1EBE902F0);
  sub_1C0FD1A5C(v17, &qword_1EBE902F0);
  v23(v19, v3);
  sub_1C0FD1A5C(v9, &qword_1EBE902F0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v20 = &qword_1EDE82B80;
LABEL_14:
  v24 = v20[3];
  v25 = *(v20 + 1);
  v26 = *v20;
  v27 = v32;
  *v32 = v26;
  *(v27 + 1) = v25;
  v27[3] = v24;
}

uint64_t PhotosCollectionSearchResultCell.init(_:contentPosition:contentPadding:contentTypeVisibility:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v30[0] = a7;
  v30[1] = a8;
  v30[2] = a10;
  v30[3] = a11;
  v19 = type metadata accessor for PhotosCollectionSearchResultCell();
  v20 = v19[17];
  v30[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v30);
  memcpy((a9 + v20), v30, 0xD1uLL);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(KeyPath);
  v22 = v19[19];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_21_5();
  v23 = v19[20];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  OUTLINED_FUNCTION_21_5();
  v24 = v19[21];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  OUTLINED_FUNCTION_21_5();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v27);
  result = (*(*(a7 - 8) + 32))(a9, a1, a7);
  *(a9 + v19[13]) = v16;
  *(a9 + v19[14]) = v17;
  *(a9 + v19[15]) = v18;
  v29 = (a9 + v19[16]);
  *v29 = a5;
  v29[1] = a6;
  return result;
}

uint64_t PhotosCollectionSearchResultCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = *(a1 + 24);
  v78 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  v3 = OUTLINED_FUNCTION_47();
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  v4 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  v77 = sub_1C0FDB6D4(v5, &unk_1EBE92EC0);
  v109[12] = v4;
  v109[13] = v77;
  OUTLINED_FUNCTION_3_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v76 = sub_1C0FDB6D4(v7, &qword_1EBE91C40);
  v109[10] = WitnessTable;
  v109[11] = v76;
  v71 = v4;
  v8 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v74 = sub_1C0FDB6D4(v9, &unk_1EBE92ED0);
  v109[8] = v8;
  v109[9] = v74;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  OUTLINED_FUNCTION_14_13();
  v12 = swift_getWitnessTable();
  v13 = sub_1C1089684();
  v14 = sub_1C1089FD0();
  v109[0] = v78;
  v109[1] = MEMORY[0x1E6981CD8];
  v109[2] = v10;
  v109[3] = v11;
  v109[4] = v12;
  v109[5] = MEMORY[0x1E6981CD0];
  v109[6] = v13;
  v109[7] = v14;
  OUTLINED_FUNCTION_12_10();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_52();
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  v79 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v68 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v65 - v19;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_20_0();
  sub_1C12652C0();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v69 = sub_1C1263190();
  v72 = sub_1C1263190();
  v73 = sub_1C1263190();
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_26_6();
  v21 = swift_getWitnessTable();
  v107 = v20;
  v108 = v21;
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v23 = swift_getWitnessTable();
  v105 = v22;
  v106 = v23;
  v104 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x1E697E5D8];
  v24 = v78;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v27 = sub_1C0FDB6D4(v26, qword_1EBE92178);
  v100 = v25;
  v101 = v27;
  v98 = swift_getWitnessTable();
  v99 = v77;
  v96 = swift_getWitnessTable();
  v97 = v76;
  v94 = swift_getWitnessTable();
  v95 = v74;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_22();
  v76 = v28;
  v77 = sub_1C1263190();
  v29 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v65 - v36;
  v38 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v74 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v65 - v41;
  sub_1C107DE90(v24, v109);
  if (v109[0])
  {
    v43 = v67;
    sub_1C10801C4();
    OUTLINED_FUNCTION_1_11();
    v44 = v79;
    v45 = swift_getWitnessTable();
    v78 = v38;
    v46 = v66;
    sub_1C0FDBA4C(v43, v44, v45);
    v47 = *(v68 + 8);
    v47(v43, v44);
    sub_1C0FDBA4C(v46, v44, v45);
    OUTLINED_FUNCTION_4_3();
    v48 = swift_getWitnessTable();
    v49 = sub_1C100D614();
    v92 = v48;
    v93 = v49;
    OUTLINED_FUNCTION_3_3();
    v90 = swift_getWitnessTable();
    v91 = MEMORY[0x1E697E5C0];
    OUTLINED_FUNCTION_26_6();
    swift_getWitnessTable();
    sub_1C1112E18();
    v47(v43, v44);
    v50 = v46;
    v38 = v78;
    v47(v50, v44);
  }

  else
  {
    sub_1C107F538(v24, v34);
    OUTLINED_FUNCTION_4_3();
    v51 = swift_getWitnessTable();
    v52 = sub_1C100D614();
    v82 = v51;
    v83 = v52;
    OUTLINED_FUNCTION_9_4();
    v80 = swift_getWitnessTable();
    v81 = MEMORY[0x1E697E5C0];
    v53 = swift_getWitnessTable();
    v54 = OUTLINED_FUNCTION_26_6();
    sub_1C0FDBA4C(v54, v55, v53);
    v56 = *(v31 + 8);
    v57 = OUTLINED_FUNCTION_26_6();
    v56(v57);
    sub_1C0FDBA4C(v37, v29, v53);
    OUTLINED_FUNCTION_1_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_26_6();
    sub_1C1112D68();
    v58 = OUTLINED_FUNCTION_26_6();
    v56(v58);
    (v56)(v37, v29);
  }

  v59 = swift_getWitnessTable();
  v60 = sub_1C100D614();
  v88 = v59;
  v89 = v60;
  OUTLINED_FUNCTION_9_4();
  v86 = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E5C0];
  v61 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v62 = swift_getWitnessTable();
  v84 = v61;
  v85 = v62;
  v63 = swift_getWitnessTable();
  sub_1C0FDBA4C(v42, v38, v63);
  return (*(v74 + 8))(v42, v38);
}

uint64_t sub_1C107F538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1C12629F0();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  v70 = a1;
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C1089684();
  v9 = sub_1C1089FD0();
  v101[0] = a1;
  v101[1] = MEMORY[0x1E6981CD8];
  v101[2] = v5;
  v101[3] = v6;
  v101[4] = WitnessTable;
  v101[5] = MEMORY[0x1E6981CD0];
  v101[6] = v8;
  v101[7] = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v68 = sub_1C12655A0();
  v65 = sub_1C1263C30();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263C30();
  v69 = sub_1C12652C0();
  v10 = sub_1C1263190();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  *&v75 = v56 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  v12 = sub_1C1263190();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v63 = v56 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v14 = sub_1C1263190();
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = v56 - v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v99 = v16;
  v100 = v17;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v97 = v18;
  v98 = v19;
  v96 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x1E697E5D8];
  v69 = v10;
  v20 = swift_getWitnessTable();
  v21 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178);
  v56[1] = v20;
  v92 = v20;
  v93 = v21;
  v68 = v12;
  v22 = swift_getWitnessTable();
  v23 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v57 = v22;
  v90 = v22;
  v91 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v88 = v24;
  v89 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v86 = v26;
  v87 = v27;
  v28 = swift_getWitnessTable();
  v65 = v14;
  v56[0] = v28;
  v29 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v58 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v56 - v30;
  v32 = sub_1C1263190();
  v60 = *(v32 - 8);
  v61 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v59 = v56 - v33;
  v34 = v70;
  sub_1C1080640(v70, v75);
  sub_1C107D294(v34, v101);
  LOBYTE(v18) = v104;
  v35 = v71;
  sub_1C107D604(v34, v71);
  v36 = v34;
  v37 = sub_1C107D4B0(v34);
  if (v18 & 1) != 0 || (v37)
  {
    v85[0] = v102;
    v85[1] = v103;
    sub_1C1012620(v102, *(&v102 + 1), v103, *(&v103 + 1));
    sub_1C10C37D8();
    v38 = v39;
    (*(v72 + 8))(v35, v73);
    sub_1C1001C84(*&v85[0], *(&v85[0] + 1), *&v85[1], *(&v85[1] + 1));
  }

  else
  {
    v38 = sub_1C1265170();
    (*(v72 + 8))(v35, v73);
  }

  sub_1C100C7D0(v101);
  *&v85[0] = v38;
  v40 = v69;
  sub_1C100C6E8();
  v41 = v63;
  v42 = v75;
  sub_1C1264960();

  (*(v67 + 8))(v42, v40);
  v43 = v76;
  sub_1C107D294(v36, v85);
  v44 = v62;
  v45 = v68;
  View.cellStyle(for:)(v85, v57, v62);
  memcpy(v84, v85, sizeof(v84));
  sub_1C100C7D0(v84);
  (*(v66 + 8))(v41, v45);
  v83 = 2;
  v82 = 2;
  sub_1C107D294(v36, v85);
  v46 = v85[0];
  v75 = v85[1];
  v47 = *&v85[2];

  sub_1C100C7D0(v85);
  v79 = v46;
  v80 = v75;
  v81 = v47;
  v48 = v65;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v83, 0, 0, v65, v31);

  (*(v64 + 8))(v44, v48);
  *(&v80 + 1) = *(v36 + 16);
  v49 = *(&v80 + 1);
  v81 = *(*(v36 + 32) + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
  (*(*(v49 - 8) + 16))(boxed_opaque_existential_1, v43, v49);
  v51 = swift_getWitnessTable();
  v52 = v59;
  View.selectionStyle(for:)(&v79, v29, v51);
  (*(v58 + 8))(v31, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(&v79);
  sub_1C107DBE0(v36);
  v53 = sub_1C100D614();
  v77 = v51;
  v78 = v53;
  v54 = v61;
  swift_getWitnessTable();
  sub_1C1264F50();
  return (*(v60 + 8))(v52, v54);
}

uint64_t sub_1C10801C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  swift_getWitnessTable();
  sub_1C1089684();
  sub_1C1089FD0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1012734();
  return sub_1C12654B0();
}

uint64_t sub_1C1080640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C1089684();
  v8 = sub_1C1089FD0();
  v43[0] = a1;
  v43[1] = MEMORY[0x1E6981CD8];
  v43[2] = v4;
  v43[3] = v5;
  v43[4] = WitnessTable;
  v43[5] = MEMORY[0x1E6981CD0];
  v43[6] = v7;
  v43[7] = v8;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  v9 = v3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v33[4] = sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v33[5] = sub_1C12655A0();
  v33[2] = sub_1C1263C30();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v33[3] = sub_1C12654C0();
  sub_1C1263C30();
  v10 = sub_1C12652C0();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = sub_1C1263190();
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v19 = a1;
  v20 = a1;
  v21 = v36;
  v22 = sub_1C107DFF0(v20);
  v33[0] = v19;
  v33[1] = v33;
  v23 = 12.0;
  if (v22)
  {
    v23 = 0.0;
  }

  v38 = *(v19 + 16);
  v39 = v9;
  v40 = *(v19 + 32);
  v41 = v21;
  v42 = v23;
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v43[31] = v24;
  v43[32] = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v43[29] = v26;
  v43[30] = v27;
  v28 = swift_getWitnessTable();
  sub_1C12652B0();
  if (*(v21 + *(v33[0] + 56)) == 1)
  {
    sub_1C107D294(v33[0], v43);
    sub_1C100C7D0(v43);
  }

  v43[28] = v28;
  v29 = swift_getWitnessTable();
  sub_1C1264FA0();
  (*(v34 + 8))(v12, v10);
  v43[26] = v29;
  v43[27] = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  sub_1C0FDBA4C(v15, v13, v30);
  v31 = *(v35 + 8);
  v31(v15, v13);
  sub_1C0FDBA4C(v18, v13, v30);
  return (v31)(v18, v13);
}

uint64_t sub_1C1080CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v101 = a5;
  v97 = a6;
  v98 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v88 = a2;
  v85 = a4;
  *&v83 = type metadata accessor for PhotosCollectionSearchResultCell();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C1089684();
  v13 = sub_1C1089FD0();
  v133[0] = v83;
  v133[1] = MEMORY[0x1E6981CD8];
  v133[2] = v9;
  v133[3] = v10;
  v133[4] = WitnessTable;
  v133[5] = MEMORY[0x1E6981CD0];
  v133[6] = v12;
  v133[7] = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v14 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  v86 = v14;
  v87 = sub_1C1263C30();
  v89 = sub_1C12652C0();
  v15 = sub_1C1263190();
  v91 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v90 = v74 - v16;
  v92 = v17;
  v96 = sub_1C1263190();
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = v74 - v20;
  v82 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v75 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  v84 = a3;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v23 = sub_1C1263190();
  v80 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v79 = v74 - v24;
  v25 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v128 = v101;
  v129 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v126 = v26;
  v28 = v98;
  v127 = v27;
  v29 = swift_getWitnessTable();
  v30 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v124 = v29;
  v125 = v30;
  v74[1] = swift_getWitnessTable();
  v31 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v76 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v74 - v32;
  v34 = sub_1C1263190();
  v78 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v77 = v74 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0);
  v81 = sub_1C1263190();
  v99 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v100 = v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v102 = v74 - v38;
  v39 = swift_checkMetadataState();
  v40 = sub_1C1081A3C(v39, v130);
  v41 = v75;
  (*(v28 + *(v39 + 64)))(v40);
  memcpy(v123, v132, sizeof(v123));
  sub_1C100D690(v130, v133);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDE82B08;
  v43 = qword_1EDE82B10;
  v83 = xmmword_1EDE82B18;
  v44 = qword_1EDE82B28;

  *&v122[0] = v42;
  *(&v122[0] + 1) = v43;
  v122[1] = v83;
  *&v122[2] = v44;
  memcpy(&v122[2] + 8, v123, 0xA8uLL);
  v45 = v79;
  v46 = v84;
  View.cellStyle(for:)(v122, v101, v79);
  memcpy(v133, v122, 0xD0uLL);
  sub_1C100C7D0(v133);
  (*(v82 + 8))(v41, v46);
  LOBYTE(v119) = 2;
  LOBYTE(v103) = 2;
  v122[0] = v130[0];
  v122[1] = v130[1];
  *&v122[2] = v131;

  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v119, 0, 0, v23, v33);

  (*(v80 + 8))(v45, v23);
  v47 = *(v85 + 16);
  v48 = v88;
  *(&v122[1] + 1) = v88;
  *&v122[2] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v122);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v98, v48);
  v50 = swift_getWitnessTable();
  v51 = v77;
  View.selectionStyle(for:)(v122, v31, v50);
  (*(v76 + 8))(v33, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v122);
  sub_1C107E448(v39, v122);
  v119 = *&v122[0];
  v120 = *(v122 + 8);
  v121 = *(&v122[1] + 1);
  v52 = sub_1C100D614();
  v117 = v50;
  v118 = v52;
  v53 = swift_getWitnessTable();
  sub_1C100AE3C();
  v54 = v100;
  View.applyShadow<A>(_:shape:)();

  (*(v78 + 8))(v51, v34);
  v55 = sub_1C0FDB6D4(&qword_1EDE7BC58, &qword_1EBE924C0);
  v115 = v53;
  v116 = v55;
  v56 = v81;
  v85 = swift_getWitnessTable();
  sub_1C0FDBA4C(v54, v56, v85);
  v57 = *(v99 + 8);
  v88 = v99 + 8;
  v101 = v57;
  v57(v54, v56);
  v58 = v90;
  sub_1C1081AE4(v39, v90);
  sub_1C12644A0();
  sub_1C107E020(v39);
  v59 = swift_getWitnessTable();
  v60 = sub_1C108B224();
  v113 = v59;
  v114 = v60;
  v112 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x1E697E5D8];
  v110 = v61;
  v111 = MEMORY[0x1E697E5D8];
  v63 = v92;
  v64 = swift_getWitnessTable();
  v65 = v95;
  sub_1C1264FB0();
  (*(v91 + 8))(v58, v63);
  v108 = v64;
  v109 = v62;
  v66 = v96;
  v67 = swift_getWitnessTable();
  v68 = v94;
  sub_1C0FDBA4C(v65, v66, v67);
  v69 = v93;
  v70 = *(v93 + 8);
  v70(v65, v66);
  v71 = v100;
  (*(v99 + 16))(v100, v102, v56);
  *&v122[0] = v71;
  (*(v69 + 16))(v65, v68, v66);
  v106 = 0;
  v107 = 0;
  *(&v122[0] + 1) = v65;
  *&v122[1] = &v106;
  v119 = v56;
  *&v120 = v66;
  *(&v120 + 1) = MEMORY[0x1E6981840];
  v103 = v85;
  v104 = v67;
  v105 = MEMORY[0x1E6981838];
  sub_1C119EE80(v122, 3, &v119);
  sub_1C100C7D0(v130);
  v70(v68, v66);
  v72 = v101;
  v101(v102, v56);
  v70(v65, v66);
  return v72(v71, v56);
}

__n128 sub_1C1081A3C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1C107D294(a1, a2);
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE82B80;
  v6 = *&qword_1EDE82B88;
  v4 = qword_1EDE82B98;

  a2->n128_u64[1] = v3;
  result = v6;
  a2[1] = v6;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t sub_1C1081AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C1089684();
  v7 = sub_1C1089FD0();
  v33[0] = a1;
  v33[1] = MEMORY[0x1E6981CD8];
  v33[2] = v3;
  v33[3] = v4;
  v33[4] = WitnessTable;
  v33[5] = MEMORY[0x1E6981CD0];
  v33[6] = v6;
  v33[7] = v7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  v8 = sub_1C12652C0();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1C1263190();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(a1 + 32);
  v30 = *(a1 + 16);
  v31 = v17;
  v18 = v28;
  v32 = v28;
  v19 = swift_getWitnessTable();
  v20 = sub_1C108B224();
  v33[29] = v19;
  v33[30] = v20;
  v21 = swift_getWitnessTable();
  sub_1C12652B0();
  if ((*(v18 + *(a1 + 56)) & 1) == 0)
  {
    sub_1C107D294(a1, v33);
    sub_1C100C7D0(v33);
  }

  v33[28] = v21;
  v22 = swift_getWitnessTable();
  sub_1C1264FA0();
  (*(v26 + 8))(v10, v8);
  v33[26] = v22;
  v33[27] = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  sub_1C0FDBA4C(v13, v11, v23);
  v24 = *(v27 + 8);
  v24(v13, v11);
  sub_1C0FDBA4C(v16, v11, v23);
  return (v24)(v16, v11);
}

uint64_t sub_1C1081FC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = (*(v1 + 40))(v2, v1);
  if (!v4)
  {
    return (*(v1 + 32))(v2, v1);
  }

  return result;
}

uint64_t sub_1C1082028(uint64_t a1)
{
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1081FC0(a1);
  if (!v6)
  {
    return 1;
  }

  sub_1C107D808(a1, v5);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x1E697E718] || v7 == *MEMORY[0x1E697E6F0] || v7 == *MEMORY[0x1E697E6F8] || v7 == *MEMORY[0x1E697E6E8])
  {
    v11 = sub_1C1265F00();

    return v11 < 15;
  }

  v14 = v7;
  if (v7 == *MEMORY[0x1E697E708])
  {
    v15 = sub_1C1265F00();

    return v15 < 13;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    v16 = sub_1C1265F00();

    return v16 < 11;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    v17 = sub_1C1265F00();

    return v17 < 9;
  }

  if (v7 == *MEMORY[0x1E697E6C0] || v7 == *MEMORY[0x1E697E6C8] || v7 == *MEMORY[0x1E697E6D0] || v7 == *MEMORY[0x1E697E6D8])
  {
  }

  else
  {
    v18 = *MEMORY[0x1E697E6E0];

    if (v14 != v18)
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  return 0;
}