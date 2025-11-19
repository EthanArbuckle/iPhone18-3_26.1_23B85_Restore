void sub_1A48ABDF8(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1A48AD0A8(0, &qword_1EB124C80, 255, MEMORY[0x1E69C1050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78 - v5;
  v103 = sub_1A52448C4();
  v7 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v78 - v10;
  sub_1A48AD0A8(0, &qword_1EB124C30, 255, MEMORY[0x1E69C11D0], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = sub_1A5244C84();
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v82 = sub_1A5246F24();
  __swift_project_value_buffer(v82, qword_1EB15E378);
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1A3C1C000, v23, v24, "runElection(extendedTokens:photoLibrary:) started.", v25, 2u);
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  v109 = MEMORY[0x1E69E7CD0];
  v26 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  v79 = v26;
  if (!v26)
  {
    v101 = MEMORY[0x1E69E7CC0];
    v102 = MEMORY[0x1E69E7CC0];
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1A48A9660(v102);
    }

    v64 = v101;
    v65 = v80;
    v66 = v79;
    v67 = v102[2];
    *&v107 = v102 + 4;
    *(&v107 + 1) = v67;
    sub_1A48A5CFC(&v107);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1A48A9660(v64);
    }

    v68 = v64[2];
    v101 = v64;
    *&v107 = v64 + 4;
    *(&v107 + 1) = v68;
    sub_1A48A5E08(sub_1A48A47BC, 0);
    v98 = v109;
    v97 = *(v109 + 16);
    if (v66)
    {
      v69 = v65 + 32;
      v70 = (v94 + 56);
      v71 = (v94 + 48);
      v103 = (v94 + 32);
      v72 = MEMORY[0x1E69E7CC0];
      v73 = v93;
      v91 = v16;
      v99 = (v94 + 56);
      do
      {
        sub_1A3C341C8(v69, &v107);
        sub_1A3C34460(&v107, &v104);
        sub_1A3C34400(0, &qword_1EB124CA0);
        v74 = swift_dynamicCast();
        (*v70)(v73, v74 ^ 1u, 1, v16);
        if ((*v71)(v73, 1, v16) == 1)
        {
          sub_1A48AD2A0(v73, &qword_1EB124C30, MEMORY[0x1E69C11D0]);
        }

        else
        {
          v75 = *v103;
          (*v103)(v100, v73, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1A48A5508(0, *(v72 + 2) + 1, 1, v72, &qword_1EB1202F8, MEMORY[0x1E69C11D0], MEMORY[0x1E69C11D0]);
          }

          v77 = *(v72 + 2);
          v76 = *(v72 + 3);
          if (v77 >= v76 >> 1)
          {
            v72 = sub_1A48A5508(v76 > 1, v77 + 1, 1, v72, &qword_1EB1202F8, MEMORY[0x1E69C11D0], MEMORY[0x1E69C11D0]);
          }

          *(v72 + 2) = v77 + 1;
          v16 = v91;
          v75(&v72[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v77], v100, v91);
          v73 = v93;
          v70 = v99;
        }

        v69 += 40;
        --v66;
      }

      while (v66);
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    sub_1A48AA474(v72, v81);
  }

  v28 = a1 + 32;
  v98 = (v94 + 56);
  v90 = (v94 + 32);
  v89 = (v94 + 8);
  v95 = (v7 + 56);
  v85 = (v7 + 32);
  v84 = (v7 + 8);
  v83 = (v7 + 16);
  v88 = (v94 + 16);
  v29 = v26;
  v101 = MEMORY[0x1E69E7CC0];
  v102 = MEMORY[0x1E69E7CC0];
  v99 = v6;
  v96 = v15;
  v87 = v22;
  while (1)
  {
    sub_1A3C341C8(v28, &v107);
    __swift_project_boxed_opaque_existential_1(&v107, v108);
    v35 = sub_1A52445F4();
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v27;
    }

    sub_1A45FE200(v36);

    sub_1A3C341C8(&v107, &v104);
    sub_1A3C34400(0, &qword_1EB124CA0);
    v37 = swift_dynamicCast();
    v38 = *v98;
    if (v37)
    {
      v38(v15, 0, 1, v16);
      (*v90)(v22, v15, v16);
      if (sub_1A5244C64())
      {
        v39 = *v88;
        (*v88)(v92, v22, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1A48A53C8(0, v102[2] + 1, 1, v102);
        }

        v41 = v102[2];
        v40 = v102[3];
        if (v41 >= v40 >> 1)
        {
          v102 = sub_1A48A53C8((v40 > 1), v41 + 1, 1, v102);
        }

        v30 = *v89;
        (*v89)(v22, v16);
        v105 = v16;
        v106 = sub_1A48AD4E0(&qword_1EB1444E0, MEMORY[0x1E69C11D0]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
        v32 = v92;
        v39(boxed_opaque_existential_1, v92, v16);
        v33 = v102;
        v102[2] = v41 + 1;
        sub_1A3C34460(&v104, &v33[5 * v41 + 4]);
        v34 = v32;
        v22 = v87;
        v30(v34, v16);
        goto LABEL_8;
      }

      (*v89)(v22, v16);
    }

    else
    {
      v38(v15, 1, 1, v16);
      sub_1A48AD2A0(v15, &qword_1EB124C30, MEMORY[0x1E69C11D0]);
    }

    v42 = v101;
    sub_1A3C341C8(&v107, &v104);
    v43 = swift_dynamicCast();
    v44 = *v95;
    if ((v43 & 1) == 0)
    {
      v44(v6, 1, 1, v103);
      sub_1A48AD2A0(v6, &qword_1EB124C80, MEMORY[0x1E69C1050]);
LABEL_30:
      sub_1A3C341C8(&v107, &v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1A48A53C8(0, v42[2] + 1, 1, v42);
        v110 = v42;
      }

      v56 = v42[2];
      v55 = v42[3];
      if (v56 >= v55 >> 1)
      {
        v101 = sub_1A48A53C8((v55 > 1), v56 + 1, 1, v42);
        v110 = v101;
      }

      else
      {
        v101 = v42;
      }

      v57 = v105;
      v58 = v106;
      v59 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
      v60 = MEMORY[0x1EEE9AC00](v59);
      v62 = &v78 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v62, v60);
      sub_1A48A9674(v56, v62, &v110, v57, v58);
      __swift_destroy_boxed_opaque_existential_0(&v104);
      v6 = v99;
      v15 = v96;
      goto LABEL_9;
    }

    v45 = v103;
    v44(v6, 0, 1, v103);
    (*v85)(v97, v6, v45);
    if ((sub_1A52448B4() & 1) == 0)
    {
      (*v84)(v97, v103);
      v27 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }

    v46 = *v83;
    (*v83)(v86, v97, v103);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1A48A53C8(0, v102[2] + 1, 1, v102);
    }

    v48 = v102[2];
    v47 = v102[3];
    if (v48 >= v47 >> 1)
    {
      v102 = sub_1A48A53C8((v47 > 1), v48 + 1, 1, v102);
    }

    v49 = *v84;
    v50 = v103;
    (*v84)(v97, v103);
    v105 = v50;
    v106 = sub_1A48AD4E0(&qword_1EB1444D8, MEMORY[0x1E69C1050]);
    v51 = __swift_allocate_boxed_opaque_existential_1(&v104);
    v52 = v86;
    v46(v51, v86, v50);
    v53 = v102;
    v102[2] = v48 + 1;
    sub_1A3C34460(&v104, &v53[5 * v48 + 4]);
    v49(v52, v50);
    v15 = v96;
    v22 = v87;
LABEL_8:
    v6 = v99;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(&v107);
    v28 += 40;
    if (!--v29)
    {
      goto LABEL_37;
    }
  }
}

uint64_t sub_1A48AD00C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void sub_1A48AD040()
{
  if (!qword_1EB120308)
  {
    sub_1A3C34400(255, &qword_1EB124CA0);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120308);
    }
  }
}

void sub_1A48AD0A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A48AD10C()
{
  if (!qword_1EB124C28)
  {
    sub_1A5244C84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124C28);
    }
  }
}

void sub_1A48AD174()
{
  if (!qword_1EB120D50)
  {
    sub_1A5244C84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120D50);
    }
  }
}

void sub_1A48AD1DC()
{
  if (!qword_1EB120448)
  {
    sub_1A5244C84();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120448);
    }
  }
}

void sub_1A48AD244()
{
  if (!qword_1EB120460)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120460);
    }
  }
}

uint64_t sub_1A48AD2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A48AD0A8(0, a2, 255, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A48AD318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A48AD380()
{
  if (!qword_1EB120468)
  {
    sub_1A5244C84();
    sub_1A48AD4E0(&qword_1EB124C40, MEMORY[0x1E69C11D0]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120468);
    }
  }
}

void sub_1A48AD41C()
{
  if (!qword_1EB120D48)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120D48);
    }
  }
}

uint64_t sub_1A48AD478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48AD4E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LemonadePhotosChallengeModel()
{
  result = qword_1EB192F50;
  if (!qword_1EB192F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A48AD574(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  sub_1A5241604();
  *(v2 + 16) = -1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_1A48AD5C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415D4();

  swift_beginAccess();
  *a1 = *(v1 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A48AD674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A48AD720()
{
  swift_getKeyPath();
  sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415C4();
}

uint64_t sub_1A48AD7D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*sub_1A48AD864(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore28LemonadePhotosChallengeModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A48AD990;
}

uint64_t sub_1A48AD99C()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadePhotosChallengeModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48ADAAC()
{
  swift_getKeyPath();
  sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415C4();

  return swift_unknownObjectRelease();
}

void (*sub_1A48ADB68(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A48AD864(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A48ADC0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadePhotosChallengeModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A48ADC54@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A48ADC0C(&unk_1EB12ADD0);
  sub_1A52415D4();

  swift_beginAccess();
  result = sub_1A41B798C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A48ADD10()
{
  result = sub_1A5241614();
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

uint64_t LemonadeDetailsViewPerformanceTest.unifiedScrollTestDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240E34();
  v5 = sub_1A5240E64();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() defaultScrollViewAccessibilityIdentifier];
    v8 = sub_1A524C674();
    v10 = v9;

    _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v13);
    v12 = v13;
    return PhotosUnifiedScrollTestDefinition.init(url:scrollViewAccessibilityIdentifier:scrollViewKind:)(v4, v8, v10, &v12, a1);
  }

  return result;
}

uint64_t LemonadeDetailsViewPerformanceTest.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

unint64_t sub_1A48ADF8C()
{
  result = qword_1EB1444E8;
  if (!qword_1EB1444E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444E8);
  }

  return result;
}

uint64_t AlbumEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E695A088];
  sub_1A48B3ED8(0, &qword_1EB1260D8, sub_1A48AE160, &type metadata for AlbumEntity.CollectionType, MEMORY[0x1E695A088]);
  swift_getKeyPath();
  sub_1A3DB3554();
  sub_1A48AEF1C();
  a2[1] = sub_1A523FE14();
  sub_1A48B3ED8(0, &qword_1EB1260C8, sub_1A3DEB710, MEMORY[0x1E69E6158], v4);
  swift_getKeyPath();
  a2[2] = sub_1A523FE34();
  sub_1A48AEFD8();
  swift_getKeyPath();
  result = sub_1A523FE24();
  a2[3] = result;
  *a2 = a1;
  return result;
}

unint64_t sub_1A48AE160()
{
  result = qword_1EB125DD8;
  if (!qword_1EB125DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DD8);
  }

  return result;
}

uint64_t AlbumEntity.id.getter()
{
  v1 = [*v0 uuid];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t AlbumEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_1A5240214();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D654();
  v20 = sub_1A4895DCC();
  v9 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  v19 = *(v6 + 8);
  v10 = *v1;
  v16 = v1[1];
  v17 = v10;
  v19(v8, v5);
  v24 = v17;
  v25 = v16;
  v11 = MEMORY[0x1E695A3C0];
  sub_1A3C7D1F4(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v23 = v12;
  sub_1A3D97600(&qword_1EB1260B8, MEMORY[0x1E695A3C0]);
  sub_1A3C7D1F4(0, &qword_1EB131A08, v11, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  v13 = v21;
  sub_1A524E224();
  sub_1A48AE594(v4, v22);
  (*(v2 + 8))(v4, v13);
  sub_1A524D644();
  v14 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v19)(v8, v18);
}

uint64_t sub_1A48AE594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_1A5240BB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1A3C7D1F4(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  sub_1A3C7D1F4(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v12);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v48 = v45 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v46 = *v3;
  v53 = v6;
  v56 = *(v6 + 56);
  v57 = v45 - v27;
  v56(v26);
  v28 = sub_1A5240244();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v51 = v17;
  v45[2] = v30;
  v45[3] = v28;
  v45[1] = v29 + 56;
  v30(v17, 1, 1);
  sub_1A52401F4();
  sub_1A3D97600(&qword_1EB1260B8, MEMORY[0x1E695A3C0]);
  v49 = a1;
  LOBYTE(v12) = sub_1A524E114();
  v31 = *(v9 + 8);
  v47 = v9 + 8;
  v31(v11, v8);
  if (v12)
  {
    v45[0] = v5;
    v32 = [v46 localizedTitle];
    if (v32)
    {
      v33 = v32;
      sub_1A524C674();
    }

    sub_1A5240B94();
    v34 = MEMORY[0x1E6968E10];
    v35 = v57;
    sub_1A48B48D8(v57, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    v5 = v45[0];
    (v56)(v24, 0, 1, v45[0]);
    sub_1A48B4948(v24, v35, &qword_1EB12B008, v34);
  }

  sub_1A5240204();
  v36 = sub_1A524E114();
  v31(v11, v8);
  v38 = v51;
  v37 = v52;
  if (v36)
  {
    sub_1A4896E90(v46);
  }

  v39 = v57;
  v40 = v48;
  sub_1A48B4858(v57, v48, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v41 = v53;
  v42 = *(v53 + 48);
  if (v42(v40, 1, v5) == 1)
  {
    sub_1A5240B94();
    if (v42(v40, 1, v5) != 1)
    {
      sub_1A48B48D8(v40, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    }
  }

  else
  {
    (*(v41 + 32))(v54, v40, v5);
  }

  (v56)(v50, 1, 1, v5);
  v43 = MEMORY[0x1E695A3E8];
  sub_1A48B4858(v38, v37, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
  sub_1A5240264();
  sub_1A48B48D8(v38, &qword_1EB12B0F0, v43);
  return sub_1A48B48D8(v39, &qword_1EB12B008, MEMORY[0x1E6968E10]);
}

uint64_t AlbumEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = v2[1];
  *(v3 + 56) = *v2;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A48AECD8, 0, 0);
}

uint64_t sub_1A48AECD8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v2 + 8);
  v8(v1, v3);
  sub_1A48AE594(v4, v5);
  sub_1A524D644();
  v9 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t AlbumEntity.name.getter()
{
  v1 = [*v0 localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

id AlbumEntity.albumType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*v1 px_isSharedAlbum];
  *a1 = result;
  return result;
}

id sub_1A48AEEE8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 px_isSharedAlbum];
  *a2 = result;
  return result;
}

unint64_t sub_1A48AEF1C()
{
  result = qword_1EB125DE8;
  if (!qword_1EB125DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DE8);
  }

  return result;
}

void sub_1A48AEF70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1A48AEFD8()
{
  if (!qword_1EB1260E0)
  {
    sub_1A3C7D1F4(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1A413B040();
    v0 = sub_1A523FE84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1260E0);
    }
  }
}

uint64_t AlbumEntity.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C7D1F4(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v15 - v5;
  if (([*v1 px_isSharedAlbum] & 1) != 0 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = [v7 creationDate];
    if (v8)
    {
      v9 = v8;
      sub_1A52410F4();

      v10 = sub_1A5241144();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_1A5241144();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_1A48B4948(v6, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  }

  else
  {
    v11 = sub_1A5241144();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_1A48AF290()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3C7D1F4(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A3C7D1F4(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A3C7D1F4(0, &qword_1EB144540, sub_1A48B4720, MEMORY[0x1E69E6F90]);
  sub_1A48B4720();
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A48B2AD0(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB1DCD88 = v23;
  return result;
}

void static AlbumEntity.CollectionType.caseDisplayRepresentations.getter()
{
  if (qword_1EB1DCD80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t static AlbumEntity.CollectionType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EB1DCD80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB1DCD88 = a1;
}

uint64_t (*static AlbumEntity.CollectionType.caseDisplayRepresentations.modify())()
{
  if (qword_1EB1DCD80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1A48AF9E4(void *a1@<X8>)
{
  if (qword_1EB1DCD80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB1DCD88;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

PhotosUICore::AlbumEntity::CollectionType_optional __swiftcall AlbumEntity.CollectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AlbumEntity.CollectionType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C41646572616873;
  }

  else
  {
    return 0x6D75626C61;
  }
}

uint64_t sub_1A48AFB90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C41646572616873;
  }

  else
  {
    v3 = 0x6D75626C61;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEB000000006D7562;
  }

  if (*a2)
  {
    v5 = 0x6C41646572616873;
  }

  else
  {
    v5 = 0x6D75626C61;
  }

  if (*a2)
  {
    v6 = 0xEB000000006D7562;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A48AFC3C()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A48AFCC4()
{
  sub_1A524C794();
}

uint64_t sub_1A48AFD38()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A48AFDBC@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A48AFE1C(uint64_t *a1@<X8>)
{
  v2 = 0x6D75626C61;
  if (*v1)
  {
    v2 = 0x6C41646572616873;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006D7562;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A48AFE68(uint64_t a1)
{
  v2 = sub_1A48B46CC();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A48AFEB4(uint64_t a1)
{
  v2 = sub_1A3DB3554();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A48AFF04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return AlbumEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A48AFFAC(uint64_t a1)
{
  v2 = sub_1A48B3DF0();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t AlbumEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A48B0120, 0, 0);
}

uint64_t sub_1A48B0120()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[10] = *(v0[2] + 16);
  sub_1A524D654();
  v4 = sub_1A4895DCC();
  v0[11] = v4;
  v5 = *v4;
  sub_1A5246E44();
  sub_1A5246E04();

  v6 = *(v2 + 8);
  v0[12] = v6;
  v0[13] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  type metadata accessor for PXAppDependencyManager();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A48B027C;

  return sub_1A4896234();
}

uint64_t sub_1A48B027C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A48B03D8, 0, 0);
  }
}

void sub_1A48B03D8()
{
  v1 = sub_1A48B2C90(*(v0 + 16), *(v0 + 120));
  if (v1 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      sub_1A3C52C70(0, &qword_1EB1265D0);
      v7 = sub_1A524E6F4();
      v2 = *(v0 + 48);
      v3 = *(v0 + 24);
      v4 = *(v0 + 32);
      v5._rawValue = *(v0 + 16);
      PXAppIntentsDebugDescription(for:)(v7);

      PXAppIntentsDebugDescription(for:)(v5);
      v6 = sub_1A3CB648C();
      (*(v4 + 16))(v2, v6, v3);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = sub_1A3CB648C();
  (*(v9 + 16))(v8, v11, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t AlbumEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A48B09B8;

  return AlbumEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A48B09B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1A413F4AC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1A48B0AE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A48B0AE0()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v14 = v4;
  v13 = v0[2];
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v2 + 8);
  v7(v3, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v13;
  v9 = sub_1A48B0EA4(MEMORY[0x1E69E7CC8], sub_1A48B33DC, v8, v1);

  sub_1A524D644();
  v10 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7(v3, v14);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_1A48B0CB8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1A3C7D1F4(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[1];
  v18[0] = *a2;
  v18[1] = v18[0];
  v18[2] = v12;
  sub_1A48AE594(a3, v11);
  v13 = [*&v18[0] uuid];
  v14 = sub_1A524C674();
  v16 = v15;

  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1A40DA2B0(v7, v14, v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A48B0EA4(uint64_t result, void (*a2)(uint64_t *, _OWORD *), uint64_t a3, uint64_t a4)
{
  v12 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; i += 2)
    {
      v10 = *i;
      v11[1] = i[1];
      v11[0] = v10;
      v8 = v10;

      a2(&v12, v11);
      v9 = *&v11[0];

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v12;
      }
    }
  }

  return result;
}

uint64_t AlbumEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1A5246F24();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A48B1084, 0, 0);
}

uint64_t sub_1A48B1084()
{
  if ((sub_1A3DEFE6C() & 1) == 0)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = sub_1A3CB648C();
    (*(v4 + 16))(v3, v6, v5);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1A48B12F8;

  return sub_1A4896234();
}

uint64_t sub_1A48B12F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A48B1474, 0, 0);
  }
}

void sub_1A48B1474()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = [*(v0 + 144) librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C7D1F4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FC9F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  strcpy((v4 + 32), "localizedTitle");
  *(v4 + 47) = -18;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = v2;
  *(v4 + 80) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48B1F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return AlbumEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A48B1FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return AlbumEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A48B2084(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return AlbumEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A48B2120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A48B3CE0();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1A48B21D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3FBBB04;

  return sub_1A48B3408();
}

uint64_t sub_1A48B2278(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A48B49C8;

  return sub_1A48B3408();
}

uint64_t sub_1A48B231C()
{
  v0 = sub_1A523FEB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1DCD98);
  __swift_project_value_buffer(v5, qword_1EB1DCD98);
  sub_1A523FEC4();
  sub_1A523FEC4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF14();
}

uint64_t sub_1A48B2498()
{
  v0 = sub_1A523FE94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB16FF38);
  __swift_project_value_buffer(v5, qword_1EB16FF38);
  sub_1A523FEA4();
  sub_1A523FEA4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF04();
}

uint64_t sub_1A48B2628(uint64_t a1)
{
  v2 = sub_1A48B4678();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A48B2674(uint64_t a1)
{
  v2 = sub_1A48AEF1C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

void sub_1A48B26C0()
{
  if (qword_1EB1DCD80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48B2738(uint64_t a1)
{
  v2 = sub_1A48B440C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A48B2794(char a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A48B2840(a1 & 1, v2);
}

unint64_t sub_1A48B2840(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C41646572616873;
    }

    else
    {
      v6 = 0x6D75626C61;
    }

    if (a1)
    {
      v7 = 0xEB000000006D7562;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C41646572616873 : 0x6D75626C61;
      v9 = *(*(v2 + 48) + v4) ? 0xEB000000006D7562 : 0xE500000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1A524EAB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1A48B298C(char *a1, int64_t a2, char a3)
{
  result = sub_1A48B29AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A48B29AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D684(0, &qword_1EB1203A0, &type metadata for AlbumEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A48B2AD0(uint64_t a1)
{
  sub_1A48B4720();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A48B4788();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A48B47F4(v10, v6);
      result = sub_1A48B2794(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A48B2C90(uint64_t a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = MEMORY[0x1E69E7CC0];

  return v5;
}

char *sub_1A48B3048(unint64_t a1)
{
  if (a1 >> 62)
  {
    v27 = a1;
    v1 = sub_1A524E2B4();
    a1 = v27;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1A48B298C(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v29;
    v5 = MEMORY[0x1E695A088];
    sub_1A48B3ED8(0, &qword_1EB1260D8, sub_1A48AE160, &type metadata for AlbumEntity.CollectionType, MEMORY[0x1E695A088]);
    sub_1A48B3ED8(0, &qword_1EB1260C8, sub_1A3DEB710, MEMORY[0x1E69E6158], v5);
    sub_1A48AEFD8();
    v6 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      v28 = v1;
      do
      {
        v8 = v6;
        v9 = MEMORY[0x1A59097F0](v7);
        swift_getKeyPath();
        sub_1A3DB3554();
        sub_1A48AEF1C();
        v10 = sub_1A523FE14();
        swift_getKeyPath();
        v11 = sub_1A523FE34();
        swift_getKeyPath();
        v12 = sub_1A523FE24();
        v14 = *(v29 + 16);
        v13 = *(v29 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1A48B298C((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v29 + 16) = v14 + 1;
        v15 = (v29 + 32 * v14);
        v15[4] = v9;
        v15[5] = v10;
        v15[6] = v11;
        v15[7] = v12;
        v6 = v8;
      }

      while (v28 != v7);
    }

    else
    {
      v16 = (v3 + 32);
      do
      {
        v17 = v1;
        v18 = *v16;
        swift_getKeyPath();
        sub_1A3DB3554();
        sub_1A48AEF1C();
        v19 = v18;
        v20 = sub_1A523FE14();
        swift_getKeyPath();
        v21 = sub_1A523FE34();
        swift_getKeyPath();
        v22 = sub_1A523FE24();
        v30 = v2;
        v24 = *(v2 + 16);
        v23 = *(v2 + 24);
        if (v24 >= v23 >> 1)
        {
          v26 = v22;
          sub_1A48B298C((v23 > 1), v24 + 1, 1);
          v22 = v26;
          v2 = v30;
        }

        *(v2 + 16) = v24 + 1;
        v25 = (v2 + 32 * v24);
        v25[4] = v19;
        v25[5] = v20;
        v25[6] = v21;
        v25[7] = v22;
        ++v16;
        v1 = v17 - 1;
      }

      while (v17 != 1);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A48B3408()
{
  v1 = sub_1A5246F24();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  type metadata accessor for PXAppDependencyManager();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1A48B350C;

  return sub_1A4896234();
}

uint64_t sub_1A48B350C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A48B3664, 0, 0);
  }
}

id sub_1A48B3664()
{
  v1 = v0[7];
  v2 = [v1 px_rootAlbumCollectionList];
  v3 = [v1 librarySpecificFetchOptions];
  [v3 setWantsIncrementalChangeDetails_];
  [v3 setFetchLimit_];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C7D1F4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  v5 = MEMORY[0x1E69E76D0];
  *(v4 + 56) = MEMORY[0x1E69E7668];
  *(v4 + 64) = v5;
  *(v4 + 32) = 2;
  v6 = sub_1A524D134();
  [v3 setInternalPredicate_];

  v7 = [objc_opt_self() fetchCollectionsInCollectionList:v2 options:v3];
  if ([v7 count] < 1)
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = v0[2];
    v14 = sub_1A3CB648C();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[3];
    v19 = v0[4];
    v20 = v0[2];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "AlbumEntityDynamicOptionsProvider found no albums", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    (*(v18 + 8))(v19, v20);
    v22 = [v7 fetchedObjects];
    if (v22)
    {
      v23 = v22;
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v24 = sub_1A524CA34();
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v25 = v0[7];
    v26 = sub_1A48B3048(v24);

    v27 = v0[1];

    return v27(v26);
  }

  else
  {
    result = [v7 fetchedObjects];
    if (result)
    {
      v9 = result;
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v10 = sub_1A524CA34();

      if (!(v10 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C52C70(0, &qword_1EB1265D0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1A48B3BD4()
{
  result = qword_1EB125DA8;
  if (!qword_1EB125DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DA8);
  }

  return result;
}

unint64_t sub_1A48B3C30()
{
  result = qword_1EB125D78;
  if (!qword_1EB125D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D78);
  }

  return result;
}

unint64_t sub_1A48B3C88()
{
  result = qword_1EB125D50;
  if (!qword_1EB125D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D50);
  }

  return result;
}

unint64_t sub_1A48B3CE0()
{
  result = qword_1EB125B88;
  if (!qword_1EB125B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B88);
  }

  return result;
}

unint64_t sub_1A48B3D3C()
{
  result = qword_1EB125D70;
  if (!qword_1EB125D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D70);
  }

  return result;
}

unint64_t sub_1A48B3D94()
{
  result = qword_1EB125D68;
  if (!qword_1EB125D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D68);
  }

  return result;
}

unint64_t sub_1A48B3DF0()
{
  result = qword_1EB125D60;
  if (!qword_1EB125D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D60);
  }

  return result;
}

unint64_t sub_1A48B3E48()
{
  result = qword_1EB1444F0;
  if (!qword_1EB1444F0)
  {
    sub_1A48B3ED8(255, &qword_1EB1444F8, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444F0);
  }

  return result;
}

void sub_1A48B3ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A48B3F44()
{
  result = qword_1EB125D58;
  if (!qword_1EB125D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D58);
  }

  return result;
}

unint64_t sub_1A48B3F9C()
{
  result = qword_1EB125B80;
  if (!qword_1EB125B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B80);
  }

  return result;
}

unint64_t sub_1A48B3FF4()
{
  result = qword_1EB125B78;
  if (!qword_1EB125B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B78);
  }

  return result;
}

unint64_t sub_1A48B404C()
{
  result = qword_1EB125B90;
  if (!qword_1EB125B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B90);
  }

  return result;
}

unint64_t sub_1A48B40A4()
{
  result = qword_1EB144500;
  if (!qword_1EB144500)
  {
    sub_1A3C4D684(255, &qword_1EB12C3A0, &type metadata for AlbumEntity, MEMORY[0x1E69E62F8]);
    sub_1A3DB2FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144500);
  }

  return result;
}

unint64_t sub_1A48B4144()
{
  result = qword_1EB144508;
  if (!qword_1EB144508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144508);
  }

  return result;
}

unint64_t sub_1A48B419C()
{
  result = qword_1EB144510;
  if (!qword_1EB144510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144510);
  }

  return result;
}

unint64_t sub_1A48B41F4()
{
  result = qword_1EB144518;
  if (!qword_1EB144518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144518);
  }

  return result;
}

unint64_t sub_1A48B4250()
{
  result = qword_1EB125DE0;
  if (!qword_1EB125DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DE0);
  }

  return result;
}

unint64_t sub_1A48B42A8()
{
  result = qword_1EB125DC0;
  if (!qword_1EB125DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DC0);
  }

  return result;
}

unint64_t sub_1A48B4300()
{
  result = qword_1EB125DA0;
  if (!qword_1EB125DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DA0);
  }

  return result;
}

unint64_t sub_1A48B4358()
{
  result = qword_1EB125DC8;
  if (!qword_1EB125DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DC8);
  }

  return result;
}

unint64_t sub_1A48B43B0()
{
  result = qword_1EB125DF0;
  if (!qword_1EB125DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DF0);
  }

  return result;
}

unint64_t sub_1A48B440C()
{
  result = qword_1EB125DD0;
  if (!qword_1EB125DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DD0);
  }

  return result;
}

unint64_t sub_1A48B44B4()
{
  result = qword_1EB125DB8;
  if (!qword_1EB125DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DB8);
  }

  return result;
}

unint64_t sub_1A48B450C()
{
  result = qword_1EB125D98;
  if (!qword_1EB125D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D98);
  }

  return result;
}

unint64_t sub_1A48B4564()
{
  result = qword_1EB125DB0;
  if (!qword_1EB125DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DB0);
  }

  return result;
}

unint64_t sub_1A48B45BC()
{
  result = qword_1EB144520;
  if (!qword_1EB144520)
  {
    sub_1A3C4D684(255, &qword_1EB144528, &type metadata for AlbumEntity.CollectionType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144520);
  }

  return result;
}

unint64_t sub_1A48B4678()
{
  result = qword_1EB144530;
  if (!qword_1EB144530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144530);
  }

  return result;
}

unint64_t sub_1A48B46CC()
{
  result = qword_1EB144538;
  if (!qword_1EB144538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144538);
  }

  return result;
}

void sub_1A48B4720()
{
  if (!qword_1EB144548)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB144548);
    }
  }
}

void sub_1A48B4788()
{
  if (!qword_1EB144550)
  {
    sub_1A5240274();
    sub_1A48B4564();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144550);
    }
  }
}

uint64_t sub_1A48B47F4(uint64_t a1, uint64_t a2)
{
  sub_1A48B4720();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48B4858(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D1F4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48B48D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7D1F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A48B4948(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D1F4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_1A48B49EC(uint64_t a1)
{
  result = [v1 colorLookupCubeForColorGradeKind_];
  if (result)
  {
    v3 = result;
    sub_1A48B4A50();
    v4 = v3;
    sub_1A48B4A9C(v4);
    v6 = v5;

    return v6;
  }

  return result;
}

unint64_t sub_1A48B4A50()
{
  result = qword_1EB126618;
  if (!qword_1EB126618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126618);
  }

  return result;
}

void sub_1A48B4A9C(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1A524C634();
  v4 = [ObjCClassFromMetadata filterWithName_];

  if (v4)
  {
    v5 = v4;
    v6 = [a1 textureData];
    v7 = sub_1A5240EA4();
    v9 = v8;

    v10 = sub_1A5240E84();
    sub_1A3C59280(v7, v9);
    v11 = sub_1A524C634();
    [v5 setValue:v10 forKey:v11];

    [a1 edgeSize];
    v12 = sub_1A524CFC4();
    v13 = sub_1A524C634();
    [v5 setValue:v12 forKey:v13];

    v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v15 = sub_1A524C634();
    [v5 setValue:v14 forKey:v15];

    v16 = sub_1A524CBB4();
    v17 = sub_1A524C634();
    [v5 setValue:v16 forKey:v17];
  }

  else
  {
    __break(1u);
  }
}

double PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a1;
  *(a9 + 96) = a2;
  result = 0.0;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  return result;
}

uint64_t PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0xE000000000000000;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  *(a7 + 72) = PXDisplayCollectionDetailedCountsMake;
  *(a7 + 80) = 0;
  *(a7 + 88) = result;
  *(a7 + 96) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  return result;
}

uint64_t PhotosBarButtonItem.init(id:title:alwaysVisible:accessibilityIdentifier:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0xE000000000000000;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = result;
  *(a9 + 96) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = 0;
  return result;
}

uint64_t PhotosBarButtonItem.init(barButtonItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 accessibilityIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1A524C674();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_1A52411B4();
  v14 = sub_1A5241164();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = PXDisplayCollectionDetailedCountsMake;
  *(a2 + 80) = 0;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  return result;
}

uint64_t sub_1A48B4F68()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1A48B4F98@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = [objc_opt_self() fixedSpaceItemOfWidth_];

  return PhotosBarButtonItem.init(barButtonItem:)(v3, a1);
}

uint64_t sub_1A48B5004(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1A524EAB4();
  }
}

uint64_t _s12PhotosUICore0A13BarButtonItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = *(a1 + 48);
  v6 = *(a1 + 88);
  v24 = *(a1 + 96);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 56);
  v26 = *(a2 + 64);
  v27 = *(a1 + 64);
  v25 = *(a2 + 88);
  v23 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    v20 = v6;
    sub_1A3C52C70(0, &qword_1EB12B170);
    v12 = v7;
    v13 = v2;
    v14 = sub_1A524DBF4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = v6;
    if (v7)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v9 || (v4 != v8 || v3 != v9) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB126B80);
    v15 = v10;
    v16 = v5;
    v17 = sub_1A524DBF4();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v10)
    {
      return result;
    }
  }

  if ((v28 ^ v11))
  {
    return result;
  }

  if (!v27)
  {
    v19 = v20;
    if (!v26)
    {
      goto LABEL_27;
    }

    return 0;
  }

  v19 = v20;
  if (!v26 || (v22 != v21 || v27 != v26) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (v19 == v25 && v24 == v23)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A48B52B0()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48B5344, v2, v1);
}

uint64_t sub_1A48B5344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosViewBannerController.loadData()()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48B59FC, v2, v1);
}

void sub_1A48B54B8(void *a1, uint64_t a2, uint64_t a3)
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
  PhotosViewBannerController.isActive.modify(v6, a2, a3);
}

void PhotosViewBannerController.isActive.modify(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  sub_1A48B5638();
}

void sub_1A48B5638()
{
  if (qword_1EB1DD260 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t dispatch thunk of PhotosViewBannerController.loadData()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return v7(a1, a2);
}

id sub_1A48B5958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssociatedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A48B5A00(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

void sub_1A48B5A4C()
{
  v1 = v0;
  v2 = sub_1A52470C4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69DBEB8], v3);
  sub_1A5247084();
  v6 = sub_1A5247034();
  [v6 setAcceptsEmoji_];

  v7 = sub_1A5247064();
  [v7 setUserInteractionEnabled_];

  sub_1A5247074();
  sub_1A48B5C14();
  v8 = *v1;
  v10[15] = (*(*v8 + 384))();
  v10[14] = 0;
  sub_1A3DB95B8();
  if ((sub_1A524C594() & 1) != 0 && (*(v8 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_launchedIntoGeneration) & 1) == 0)
  {
    v9 = sub_1A5247034();
    [v9 becomeFirstResponder];
  }
}

void sub_1A48B5C14()
{
  v0 = sub_1A52472B4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C52C70(0, &qword_1EB126860);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 intelligenceLightModeInPromptTextField];

  v3 = sub_1A5247014();
  if (v2)
  {
    if (v2 == 1)
    {
      sub_1A5247274();
    }

    else
    {
      sub_1A5247294();
    }
  }

  else
  {
    sub_1A5247284();
  }

  sub_1A52472D4();
}

uint64_t sub_1A48B5D14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((*(**v2 + 384))() != 2)
  {
    goto LABEL_15;
  }

  v6 = sub_1A5247034();
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_1A524C674();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (*(*v5 + 1720))();
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  if (v8 != v11 || v10 != v12)
  {
    v14 = sub_1A524EAB4();

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1A5247024();
    v15 = sub_1A5247094();
    [v15 setEnabled_];
    goto LABEL_18;
  }

LABEL_17:
  sub_1A5247024();
  v15 = sub_1A5247094();
  [v15 setEnabled_];
LABEL_18:

  sub_1A48B5F20(a1, a2);

  return sub_1A48B60B8(a1);
}

uint64_t sub_1A48B5F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = (*(**v2 + 488))();
  if (result)
  {
    v6 = (*(*result + 224))();

    sub_1A3C52C70(0, &qword_1EB126860);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = [v7 autocompleteSuggestionsMode];

    if (v8 == 1)
    {
      MEMORY[0x1EEE9AC00](v9);
      v10[2] = v3;
      v10[3] = a2;
      sub_1A48B6818(sub_1A48B8EC4, v10, v6);

      sub_1A52470F4();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A48B60B8(uint64_t a1)
{
  v61 = a1;
  v2 = type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0);
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = MEMORY[0x1E69E6720];
  sub_1A48B8C9C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = v53 - v6;
  v7 = type metadata accessor for GenerativeStorySuggestion(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - v11;
  sub_1A48B8C9C(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, v4);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v53 - v20;
  v62 = v1;
  v22 = *v1;
  v23 = **v1;
  v59 = *(v23 + 1624);
  v60 = v23 + 1624;
  result = v59(v19);
  if (result)
  {
    (*(*result + 272))(result);

    sub_1A48B8B64(v21, v17, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    if ((*(v8 + 48))(v17, 1, v7) == 1)
    {
      sub_1A48B89B0(v21, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
      return sub_1A48B89B0(v17, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    }

    sub_1A48B8D00(v17, v12, type metadata accessor for GenerativeStorySuggestion);
    if (!sub_1A417DABC() || (v25 = *&v12[*(v7 + 40)]) == 0)
    {
LABEL_14:
      sub_1A48B8950(v12, type metadata accessor for GenerativeStorySuggestion);
      v17 = v21;
      return sub_1A48B89B0(v17, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    }

    v56 = v8;
    v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v25;
    v53[1] = sub_1A417DA38();
    v54 = v27;
    v55 = v26;
    (*(*v22 + 416))([v26 matchRangeOfSearchText]);
    sub_1A524D0F4();
    if (v28)
    {

      v29 = 0;
    }

    else
    {
      v30 = sub_1A524C8E4();
      v53[0] = v31;
      v33 = v32;
      v35 = v34;

      MEMORY[0x1A5907AC0](v30, v53[0], v33, v35);
      v29 = v36;
    }

    v37 = sub_1A524C634();

    if (v29)
    {
      v38 = sub_1A524C634();
    }

    else
    {
      v38 = 0;
    }

    v39 = [objc_opt_self() textSuggestionWithInputText:v37 searchText:v38];

    v54 = v39;
    sub_1A48B6998(v39);
    v40 = sub_1A524CCB4();
    (*(*(v40 - 8) + 56))(v65, 1, 1, v40);
    sub_1A48B8BE4(v62, v57, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A48B8BE4(v12, v64, type metadata accessor for GenerativeStorySuggestion);
    sub_1A524CC54();
    v62 = v55;
    v41 = sub_1A524CC44();
    v42 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v43 = v56;
    v44 = (v3 + *(v56 + 80) + v42) & ~*(v56 + 80);
    v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v46 + 16) = v41;
    *(v46 + 24) = v47;
    sub_1A48B8D00(v57, v46 + v42, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    v48 = v46 + v44;
    v49 = v62;
    sub_1A48B8D00(v64, v48, type metadata accessor for GenerativeStorySuggestion);
    *(v46 + v45) = v49;
    sub_1A3D4D930(0, 0, v65, &unk_1A536DD28, v46);

    result = (v59)(v50);
    if (result)
    {
      v51 = result;
      v52 = v58;
      (*(v43 + 56))(v58, 1, 1, v7);
      (*(*v51 + 280))(v52);

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A48B6818(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v14 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v9 == i)
      {
        return v14;
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

void sub_1A48B6998(void *a1)
{
  v2 = [a1 inputText];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [a1 searchText];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_1A524C674();
  v11 = v10;

  v12 = sub_1A5247034();
  v13 = [v12 selectedTextRange];

  if (!v13)
  {

LABEL_14:
    v24 = sub_1A5247034();
    v36 = sub_1A524C634();

    [v24 insertText_];
LABEL_15:

    return;
  }

  v14 = sub_1A5247034();
  v15 = [v13 end];
  v16 = sub_1A524C7A4();
  if (__OFSUB__(0, v16))
  {
    __break(1u);
    return;
  }

  v35 = v9;
  v17 = [v14 positionFromPosition:v15 offset:-v16];

  if (!v17)
  {
    v18 = sub_1A5247034();
    v17 = [v18 beginningOfDocument];
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  v19 = [v13 end];
  v20 = sub_1A5247034();
  v21 = [v20 endOfDocument];

  LOBYTE(v20) = sub_1A524DBF4();
  if (v20)
  {
    v22 = sub_1A48B7530(v4, v6);
    if (!v23)
    {
      goto LABEL_19;
    }

    if (v22 == 32 && v23 == 0xE100000000000000)
    {

      goto LABEL_20;
    }

    v25 = sub_1A524EAB4();

    if ((v25 & 1) == 0)
    {
LABEL_19:
      MEMORY[0x1A5907B60](32, 0xE100000000000000);
    }
  }

LABEL_20:
  if (!v17)
  {

LABEL_32:

    goto LABEL_33;
  }

  v26 = sub_1A5247034();
  v27 = [v13 end];
  v28 = [v26 textRangeFromPosition:v17 toPosition:v27];

  if (v28)
  {
    v29 = sub_1A5247034();
    v30 = [v29 textInRange_];

    if (v30)
    {
      v31 = sub_1A524C674();
      v33 = v32;

      if (v35 == v31 && v11 == v33)
      {

LABEL_30:
        v24 = sub_1A5247034();
        v36 = sub_1A524C634();

        [v24 replaceRange:v28 withText:v36];

        goto LABEL_15;
      }

      v34 = sub_1A524EAB4();

      if (v34)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    goto LABEL_32;
  }

LABEL_33:
}

uint64_t sub_1A48B6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A48B6EA8, v8, v7);
}

void sub_1A48B6EA8()
{
  sub_1A417DA38();
  *(v0 + 64) = v1;
  type metadata accessor for GenerativeStoryPredictiveSuggestion();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48B7080()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D0BC, v3, v2);
}

void sub_1A48B71E0(uint64_t a1, uint64_t a2)
{
  if (sub_1A52403B4() == a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = sub_1A5247034();
  v6 = sub_1A5247034();
  v7 = [v6 beginningOfDocument];

  v2 = [v5 positionFromPosition:v7 offset:a1];
  if (!v2)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = sub_1A5247034();
  v9 = sub_1A5247034();
  v10 = [v9 beginningOfDocument];

  if (__OFADD__(a1, a2))
  {
    goto LABEL_10;
  }

  v11 = [v8 positionFromPosition:v10 offset:a1 + a2];

  if (!v11)
  {
LABEL_11:
    v11 = v2;
LABEL_13:

    goto LABEL_14;
  }

  v12 = sub_1A5247034();
  v13 = [v12 textRangeFromPosition:v2 toPosition:v11];

  if (!v13)
  {

    goto LABEL_13;
  }

  sub_1A52470E4();
}

void sub_1A48B7378()
{
  v0 = sub_1A5247034();
  v1 = [v0 text];

  if (v1)
  {
    sub_1A524C674();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A48B73E4()
{
  v0 = sub_1A5247034();
  v1 = sub_1A5247034();
  v2 = [v1 beginningOfDocument];

  v3 = sub_1A5247034();
  v4 = [v3 endOfDocument];

  v5 = [v0 textRangeFromPosition:v2 toPosition:v4];
  if (v5)
  {
    v6 = sub_1A5247034();
    v7 = sub_1A524C634();

    [v6 replaceRange:v5 withText:v7];
  }

  else
  {
  }
}

uint64_t sub_1A48B7530(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1A524C7B4();
  return sub_1A524C8C4();
}

uint64_t sub_1A48B75B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v74 = a2;
  sub_1A48B8C4C(0, &qword_1EB124A30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69DBEB0]);
  v4 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v58 - v7;
  v8 = sub_1A52408C4();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v58 - v11;
  v12 = MEMORY[0x1E69E6720];
  sub_1A48B8C9C(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v58 - v14;
  v65 = sub_1A5244DF4();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5244CC4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A52444C4();
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48B8C9C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v12);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v58 - v24;
  v26 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247004();
  v30 = swift_dynamicCast();
  v31 = *(v27 + 56);
  if (v30)
  {
    v31(v25, 0, 1, v26);
    sub_1A48B8D00(v25, v29, type metadata accessor for GenerativeStoryAmbiguityData);
    sub_1A48B8BE4(v29, v19, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A48B8950(v19, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      goto LABEL_12;
    }

    v38 = v66;
    (*(v66 + 32))(v22, v19, v20);
    v39 = sub_1A5244454();
    if (!*(v39 + 16))
    {
      (*(v38 + 8))(v22, v20);

      goto LABEL_12;
    }

    v40 = v60;
    v41 = v59;
    v42 = v62;
    (*(v60 + 16))(v59, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v62);

    v43 = v61;
    sub_1A5244CB4();
    v44 = v64;
    sub_1A52444A4();
    v45 = QueryTokenCategoryType.supportsDisambiguation(withDataSource:)(v44);
    sub_1A48B89B0(v44, &qword_1EB12EE20, MEMORY[0x1E69C14E0]);
    (*(v63 + 8))(v43, v65);
    (*(v40 + 8))(v41, v42);
    (*(v38 + 8))(v22, v20);
    if ((v45 & 1) == 0)
    {
LABEL_12:
      sub_1A48B8C9C(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      v49 = *MEMORY[0x1E69DB750];
      *(inited + 32) = *MEMORY[0x1E69DB750];
      v50 = objc_opt_self();
      v51 = v49;
      v52 = [v50 redColor];
      *(inited + 64) = sub_1A3C52C70(0, &qword_1EB1205C0);
      *(inited + 40) = v52;
      sub_1A3C8BCC0(inited);
      swift_setDeallocating();
      sub_1A48B8950(inited + 32, sub_1A3C8BC40);
      v53 = v68;
      sub_1A52408E4();
      v54 = v70;
      v55 = v71;
      (*(v70 + 16))(v69, v53, v71);
      v47 = v74;
      sub_1A5247134();
      (*(v54 + 8))(v53, v55);
      sub_1A48B8950(v29, type metadata accessor for GenerativeStoryAmbiguityData);
      v46 = 0;
      goto LABEL_13;
    }

    sub_1A48B8950(v29, type metadata accessor for GenerativeStoryAmbiguityData);
  }

  else
  {
    v31(v25, 1, 1, v26);
    sub_1A48B89B0(v25, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
    v33 = v72;
    v32 = v73;
    v34 = *(v73 + 16);
    v34(v72, a1, v4);
    v35 = sub_1A5246F04();
    v36 = sub_1A524D244();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v37 = 136642819;
      v34(v67, v33, v4);
      sub_1A524C714();
      (*(v32 + 8))(v33, v4);
      sub_1A3C2EF94();
    }

    (*(v32 + 8))(v33, v4);
  }

  v46 = 1;
  v47 = v74;
LABEL_13:
  v56 = sub_1A5247144();
  return (*(*(v56 - 8) + 56))(v47, v46, 1, v56);
}

void sub_1A48B8030(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1A48B8C9C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6 = [a2 inputText];
  if (v6)
  {
    v7 = v6;
    sub_1A524C674();

    if ([*(v3 + OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_predictiveSuggestionByTextSuggestion) objectForKey_])
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v8 = a2;
  v13 = sub_1A5246F04();
  v9 = sub_1A524D244();

  if (os_log_type_enabled(v13, v9))
  {
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136642819;
    v11 = [v8 inputText];
    if (v11)
    {
      v12 = v11;
      sub_1A524C674();
    }

    sub_1A3C2EF94();
  }
}

uint64_t sub_1A48B84B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A524CC54();
  v7[6] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A48B8554, v9, v8);
}

uint64_t sub_1A48B8554()
{
  v6 = (*(**(v0[2] + 24) + 2080) + **(**(v0[2] + 24) + 2080));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1A48B8680;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return v6(v4, v2, v3);
}

uint64_t sub_1A48B8680()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A4341028, v3, v2);
}

id sub_1A48B87A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v0 addSubview_];
  v2 = [v0 keyboardLayoutGuide];
  [v2 useLightEffectsBackgroundBelowView_];

  return v0;
}

uint64_t sub_1A48B8860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48B8B10();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A48B88C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48B8B10();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A48B8928()
{
  sub_1A48B8B10();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A48B8950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48B89B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A48B8C9C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A48B8A50()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A48B84B8(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1A48B8B10()
{
  result = qword_1EB125010;
  if (!qword_1EB125010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125010);
  }

  return result;
}

uint64_t sub_1A48B8B64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A48B8C9C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48B8BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A48B8C4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A48B8C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48B8D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48B8D68()
{
  v2 = *(type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A48B6E0C(v8, v9, v10, v0 + v3, v0 + v6, v7);
}

void sub_1A48B8EC4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  (*(***(v2 + 16) + 416))();
  if (v4 & 1) != 0 || (sub_1A524D0F4(), (v5))
  {

    v6 = sub_1A524C634();
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v10 = sub_1A524C8E4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  MEMORY[0x1A5907AC0](v10, v12, v14, v16);
  v18 = v17;

  v6 = sub_1A524C634();
  if (!v18)
  {
    goto LABEL_4;
  }

  v7 = sub_1A524C634();

LABEL_5:
  v8 = [objc_opt_self() textSuggestionWithInputText:v6 searchText:v7];

  if (*(v3 + 72))
  {
    [v8 setImage_];
  }

  sub_1A3FC3260();
  sub_1A5249DA4();
  v9 = *(v20 + OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_predictiveSuggestionByTextSuggestion);

  [v9 setObject:v3 forKey:v8];

  *a2 = v8;
}

uint64_t PXLemonadeOneUpSettings.debugBarKind.getter()
{
  v1 = [v0 debugBarKindRawValue];

  return MEMORY[0x1EEE2BF80](v1);
}

id sub_1A48B98A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 internal_isOneUpRefreshEnabled];
  *a2 = result;
  return result;
}

id sub_1A48B98E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSystemBars];
  *a2 = result;
  return result;
}

id sub_1A48B9930@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableClearMagicPocket];
  *a2 = result;
  return result;
}

id sub_1A48B9978@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 chromeLibraryScrubberEnabled];
  *a2 = result;
  return result;
}

id sub_1A48B99C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 chromeLibraryScrubberHiddenWhileZoomed];
  *a2 = result;
  return result;
}

id sub_1A48B9A08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insetMode];
  *a2 = result;
  return result;
}

id sub_1A48B9A50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenshotInsetMode];
  *a2 = result;
  return result;
}

id sub_1A48B9A98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 regularSizeClassInsetMode];
  *a2 = result;
  return result;
}

id sub_1A48B9AE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumMarginForInsetContent];
  *a2 = v4;
  return result;
}

id sub_1A48B9B28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insetContentCornerRadius];
  *a2 = v4;
  return result;
}

id sub_1A48B9B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insetContentBorderWidth];
  *a2 = v4;
  return result;
}

id sub_1A48B9BB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insetContentBorderOpacityLightMode];
  *a2 = v4;
  return result;
}

id sub_1A48B9C00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insetContentBorderOpacityDarkMode];
  *a2 = v4;
  return result;
}

id sub_1A48B9C48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 insetAllContent];
  *a2 = result;
  return result;
}

id sub_1A48B9C90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberPaletteShadowOpacity];
  *a2 = v4;
  return result;
}

id sub_1A48B9CD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberPaletteShadowBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A48B9D20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberPaletteShadowOffsetX];
  *a2 = v4;
  return result;
}

id sub_1A48B9D68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberPaletteShadowOffsetY];
  *a2 = v4;
  return result;
}

id sub_1A48B9DB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberTrackShadowOpacity];
  *a2 = v4;
  return result;
}

id sub_1A48B9DF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberTrackShadowBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A48B9E40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberTrackShadowOffsetX];
  *a2 = v4;
  return result;
}

id sub_1A48B9E88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoScrubberTrackShadowOffsetY];
  *a2 = v4;
  return result;
}

id sub_1A48B9ED0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 loopAllVideos];
  *a2 = result;
  return result;
}

id sub_1A48B9F18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumDurationForVideoLooping];
  *a2 = v4;
  return result;
}

id sub_1A48B9F60@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showPlaybackRateButton];
  *a2 = result;
  return result;
}

id sub_1A48B9FA8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showAudioMixButton];
  *a2 = result;
  return result;
}

id sub_1A48B9FF0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSaveVideoFrameAction];
  *a2 = result;
  return result;
}

id sub_1A48BA038@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromeEDRBoostBehavior];
  *a2 = result;
  return result;
}

id sub_1A48BA080@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoControlsEDRBoostBehavior];
  *a2 = result;
  return result;
}

id sub_1A48BA0C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromeButtonsEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A48BA110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromeTitleEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A48BA158@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromeVideoControlsEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A48BA1A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLegibilityBlur];
  *a2 = result;
  return result;
}

id sub_1A48BA1E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legibilityBlurCurve];
  *a2 = result;
  return result;
}

id sub_1A48BA230@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legibilityBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A48BA278@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legibilityBlurDistanceToBaseline];
  *a2 = v4;
  return result;
}

id sub_1A48BA2C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legibilityTintCurve];
  *a2 = result;
  return result;
}

id sub_1A48BA308@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legibilityTintOpacity];
  *a2 = v4;
  return result;
}

id sub_1A48BA350@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 doubleTapFillsScreen];
  *a2 = result;
  return result;
}

id sub_1A48BA398@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dismissalFractionForHidingChrome];
  *a2 = v4;
  return result;
}

id sub_1A48BA3E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSideCommentsInLandscape];
  *a2 = result;
  return result;
}

id sub_1A48BA428@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSharedLibraryStatusInSubtitle];
  *a2 = result;
  return result;
}

id sub_1A48BA470@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showChromeSafeAreaBox];
  *a2 = result;
  return result;
}

id sub_1A48BA4B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showChromeMarginsBox];
  *a2 = result;
  return result;
}

id sub_1A48BA500@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showLegibilityGradientBorders];
  *a2 = result;
  return result;
}

char *sub_1A48BA70C(char *a1, int64_t a2, char a3)
{
  result = sub_1A48BA784(a1, a2, a3, *v3, &qword_1EB144588, type metadata accessor for PXLemonadeOneUpInsetMode);
  *v3 = result;
  return result;
}

char *sub_1A48BA748(char *a1, int64_t a2, char a3)
{
  result = sub_1A48BA784(a1, a2, a3, *v3, &qword_1EB144570, type metadata accessor for PXLemonadeOneUpChromeEDRBoostBehavior);
  *v3 = result;
  return result;
}

char *sub_1A48BA784(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A48BD2E4(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void sub_1A48BACE0()
{
  swift_getKeyPath();
  sub_1A48BD368(qword_1F172B1C0, sub_1A48BA70C);
  sub_1A48BD53C(0, &qword_1EB144578, type metadata accessor for PXLemonadeOneUpInsetMode);
  swift_arrayDestroy();
  sub_1A48BD5A0(&qword_1EB144580, type metadata accessor for PXLemonadeOneUpInsetMode);
  sub_1A3F3E83C(0x6F4D207465736E49, 0xEA00000000006564, &v0);
}

void sub_1A48BB578()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x7974696361704FLL);
}

void sub_1A48BBC9C()
{
  swift_getKeyPath();
  sub_1A48BD368(qword_1F172B2F8, sub_1A48BA748);
  sub_1A48BD53C(0, &qword_1EB144560, type metadata accessor for PXLemonadeOneUpChromeEDRBoostBehavior);
  swift_arrayDestroy();
  sub_1A48BD5A0(&qword_1EB144568, type metadata accessor for PXLemonadeOneUpChromeEDRBoostBehavior);
  sub_1A3F3E83C(0xD000000000000010, 0x80000001A53F01B0, &v0);
}

void sub_1A48BCBBC()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000010);
}

void sub_1A48BD1B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A48BD6E8(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A48BD298()
{
  result = qword_1EB126D20;
  if (!qword_1EB126D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126D20);
  }

  return result;
}

void sub_1A48BD2E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A48BD368(void *a1, void (*a2)(void, uint64_t, void))
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = a1[2];
  sub_1A3F41E2C(v4, 0);
  a2(0, v4, 0);
  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = (v11 + 40);
      do
      {
        v9 = *(v8 - 1) == v6 && *v8 == v5;
        if (v9 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A48BD53C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A48BD5A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A48BD6E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A48BD7CC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a6;
  v51 = a1;
  v52 = a2;
  v44 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v48 = a5;
  v14 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v38 - v17;
  v18 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v49 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = swift_getAssociatedTypeWitness();
  v39 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v28 = &v38 - v27;
  v58 = sub_1A524C374();
  (*(v23 + 16))(v26, v53, v14);
  sub_1A524C914();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v28;
  v48 = AssociatedConformanceWitness;
  sub_1A524DF64();
  v46 = *(v16 + 48);
  v47 = v16 + 48;
  if (v46(v22, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v39 + 8))(v53, v56);
    return v58;
  }

  else
  {
    v31 = *(v16 + 32);
    v30 = v16 + 32;
    v42 = (v30 - 16);
    v43 = (v44 + 2);
    v40 = v44 + 1;
    v41 = (v30 + 24);
    v44 = (v30 - 24);
    v45 = v31;
    v32 = v57;
    while (1)
    {
      v45(v32, v22, AssociatedTypeWitness);
      v51(v32);
      if (v7)
      {
        break;
      }

      v33 = v54;
      (*v43)(v50, v12, v54);
      v34 = v22;
      v35 = v49;
      (*v42)(v49, v57, AssociatedTypeWitness);
      (*v41)(v35, 0, 1, AssociatedTypeWitness);
      sub_1A524C454();
      v22 = v34;
      sub_1A524C494();
      v36 = v33;
      v7 = 0;
      v32 = v57;
      (*v40)(v12, v36);
      (*v44)(v32, AssociatedTypeWitness);
      sub_1A524DF64();
      if (v46(v34, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v44)(v32, AssociatedTypeWitness);
    (*(v39 + 8))(v53, v56);
  }
}

uint64_t sub_1A48BDD4C(uint64_t a1, uint64_t a2)
{
  sub_1A46115F8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48BDDB0(uint64_t a1)
{
  sub_1A46115F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A48BDE0C()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v4 setDatePickerMode_];
  [v4 setPreferredDatePickerStyle_];
  v5 = [objc_opt_self() now];
  sub_1A52410F4();

  v6 = sub_1A5241074();
  (*(v1 + 8))(v3, v0);
  [v4 setMaximumDate_];

  sub_1A48BDFA4();
  sub_1A5249DA4();
  v7 = v10;
  [v4 addTarget:v10 action:sel_dateChanged_ forControlEvents:4096];

  return v4;
}

void sub_1A48BDFA4()
{
  if (!qword_1EB1445A0)
  {
    type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(255);
    sub_1A48BE384(&qword_1EB1445A8);
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1445A0);
    }
  }
}

id sub_1A48BE044(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A48BDD4C(a1, v3 + OBJC_IVAR____TtCV12PhotosUICore50GenerativeStoryOptionalYearDatePickerRepresentable11Coordinator_selectedDate);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A48BDDB0(a1);
  return v4;
}

uint64_t sub_1A48BE0D8(void *a1)
{
  v2 = sub_1A5241144();
  v3 = [a1 date];
  sub_1A52410F4();

  sub_1A46115F8(0);
  return sub_1A524B904();
}

id sub_1A48BE29C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48BE2EC(uint64_t a1, uint64_t a2)
{
  sub_1A46115F8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48BE384(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A48BE3E0(void *a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46115F8(0);
  MEMORY[0x1A5906C60]();
  v6 = sub_1A5241074();
  (*(v3 + 8))(v5, v2);
  [a1 setDate_];
}

uint64_t sub_1A48BE4D8@<X0>(void *a1@<X8>)
{
  sub_1A46115F8(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B924();
  v5 = type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable.Coordinator(0);
  v6 = objc_allocWithZone(v5);
  sub_1A48BDD4C(v4, v6 + OBJC_IVAR____TtCV12PhotosUICore50GenerativeStoryOptionalYearDatePickerRepresentable11Coordinator_selectedDate);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  result = sub_1A48BDDB0(v4);
  *a1 = v7;
  return result;
}

uint64_t sub_1A48BE5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48BE384(&qword_1EB1445A8);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A48BE624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48BE384(&qword_1EB1445A8);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A48BE6A4()
{
  sub_1A48BE384(&qword_1EB1445A8);
  sub_1A52496F4();
  __break(1u);
}

void sub_1A48BE710()
{
  sub_1A46115F8(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A48BE784()
{
  sub_1A46115F8(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A48BE814()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44809C0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleHomeNavigationBar();
  sub_1A48C077C(v0 + *(v11 + 36), v7, sub_1A44809C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A48C0C2C(v7, v10, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A48C0BCC(v10, sub_1A3D63A58);
  return 0;
}

void sub_1A48BEB0C()
{
  if (!qword_1EB1445B8)
  {
    sub_1A48BEBA0(255);
    sub_1A48BEF54(&qword_1EB144608, sub_1A48BEBA0);
    v0 = sub_1A5248A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1445B8);
    }
  }
}

void sub_1A48BEC10()
{
  if (!qword_1EB1445D8)
  {
    sub_1A48BECC0(255);
    sub_1A48BEF54(&qword_1EB144600, sub_1A48BECC0);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1445D8);
    }
  }
}

void sub_1A48BECFC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A48BED58(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A48BED58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A48BEDD4()
{
  if (!qword_1EB1445F0)
  {
    sub_1A48BEE3C();
    sub_1A48BEF04();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1445F0);
    }
  }
}

void sub_1A48BEE3C()
{
  if (!qword_1EB1445F8)
  {
    sub_1A48BEED0(255);
    sub_1A48BEF54(&qword_1EB142668, sub_1A48BEED0);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1445F8);
    }
  }
}

void sub_1A48BEF04()
{
  if (!qword_1EB1276F0)
  {
    v0 = sub_1A5249F94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1276F0);
    }
  }
}

uint64_t sub_1A48BEF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48BEF9C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for LemonadePeopleHomeNavigationBar();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D93850();
  v54 = v7;
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41DD7A4();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v14;
  sub_1A48BEC10();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48BEBDC(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v49 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v24;
  if (*a1)
  {
    (*(v17 + 56))(&v45 - v24, 1, 1, v16, v25);
  }

  else
  {
    v45 = &v45;
    MEMORY[0x1EEE9AC00](v23);
    v47 = v11;
    *(&v45 - 2) = a1;
    sub_1A48BECC0(0);
    v46 = v26;
    sub_1A48BEF54(&qword_1EB144600, sub_1A48BECC0);
    v26 = v46;
    v11 = v47;
    sub_1A524A2E4();
    (*(v17 + 32))(v26, v19, v16);
    (*(v17 + 56))(v26, 0, 1, v16, v27);
  }

  sub_1A48C077C(a1, v6, type metadata accessor for LemonadePeopleHomeNavigationBar);
  v28 = a1;
  v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = swift_allocObject();
  v31 = sub_1A48C0C2C(v6, v30 + v29, type metadata accessor for LemonadePeopleHomeNavigationBar);
  MEMORY[0x1EEE9AC00](v31);
  *(&v45 - 2) = v28;
  v32 = v50;
  sub_1A524B704();
  sub_1A41DD8E4();
  v33 = sub_1A48BEF54(&qword_1EB127490, sub_1A3D93850);
  v34 = sub_1A5243474();
  v35 = sub_1A48BEF54(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v36 = v54;
  v55 = v54;
  v56 = v34;
  v57 = v33;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v53;
  sub_1A524A4C4();
  (*(v52 + 8))(v32, v36);
  v38 = v49;
  sub_1A48C077C(v26, v49, sub_1A48BEBDC);
  v39 = *(v11 + 16);
  v40 = v48;
  v39(v48, v37, v10);
  v41 = v51;
  sub_1A48C077C(v38, v51, sub_1A48BEBDC);
  sub_1A48BED58(0, &qword_1EB1445C8, sub_1A48BEBDC, sub_1A41DD7A4);
  v39((v41 + *(v42 + 48)), v40, v10);
  v43 = *(v11 + 8);
  v43(v37, v10);
  sub_1A48C0BCC(v26, sub_1A48BEBDC);
  v43(v40, v10);
  return sub_1A48C0BCC(v38, sub_1A48BEBDC);
}

uint64_t sub_1A48BF698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1A48BEE3C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = v35 - v6;
  v7 = type metadata accessor for LemonadePeopleHomeNavigationBar();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A48BEDD4();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v37 = type metadata accessor for LemonadePeopleHomeNavigationBar;
  sub_1A48C077C(a1, v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeNavigationBar);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v36 = type metadata accessor for LemonadePeopleHomeNavigationBar;
  sub_1A48C0C2C(v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadePeopleHomeNavigationBar);
  v44 = a1;
  v18 = a1;
  sub_1A48BEED0(0);
  v35[1] = v19;
  sub_1A48BEF54(&qword_1EB142668, sub_1A48BEED0);
  sub_1A524B704();
  v20 = sub_1A3F53F18();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v20 & 1) == 0;
  v23 = &v15[*(v11 + 44)];
  *v23 = KeyPath;
  v23[1] = sub_1A3E07024;
  v23[2] = v22;
  sub_1A48C077C(v18, v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v24 = swift_allocObject();
  sub_1A48C0C2C(v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v16, v36);
  v25 = v39;
  sub_1A524B704();
  v26 = v38;
  sub_1A48C077C(v15, v38, sub_1A48BEDD4);
  v27 = v40;
  v28 = v41;
  v29 = *(v41 + 16);
  v30 = v42;
  v29(v40, v25, v42);
  v31 = v43;
  sub_1A48C077C(v26, v43, sub_1A48BEDD4);
  sub_1A48BED58(0, &qword_1EB1445E8, sub_1A48BEDD4, sub_1A48BEE3C);
  v29((v31 + *(v32 + 48)), v27, v30);
  v33 = *(v28 + 8);
  v33(v25, v30);
  sub_1A48C0BCC(v15, sub_1A48BEDD4);
  v33(v27, v30);
  return sub_1A48C0BCC(v26, sub_1A48BEDD4);
}

void sub_1A48BFB48()
{
  v0 = type metadata accessor for LemonadePeopleHomeNavigationBar();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A48BE814();
  PXPresentationEnvironmentForSender();
}

void sub_1A48BFDA8(uint64_t a1@<X8>)
{
  v2 = sub_1A524B544();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_1A3E75E68(v3, v5, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48BFE94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A48BFEC8()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A3D93850();
  sub_1A48BEF54(&qword_1EB127490, sub_1A3D93850);
  sub_1A48BEF54(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

void sub_1A48C0034(char a1, void *a2)
{
  if (a2 || (a1 & 1) == 0)
  {
    v4 = sub_1A524D244();
    v5 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v5, v4))
    {
      log = v5;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 67109378;
      *(v6 + 4) = a1 & 1;
      *(v6 + 8) = 2112;
      if (a2)
      {
        v8 = a2;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v10 = v9;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v6 + 10) = v9;
      *v7 = v10;
      _os_log_impl(&dword_1A3C1C000, log, v4, "Error presenting the “Add People” picker with success: %{BOOL}d error: %@", v6, 0x12u);
      sub_1A3CB65E4(v7);
      MEMORY[0x1A590EEC0](v7, -1, -1);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }
  }
}

uint64_t sub_1A48C0180@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  v9 = *(type metadata accessor for LemonadePeopleHomeNavigationBar() + 36);
  *(a8 + v9) = swift_getKeyPath();
  sub_1A44809C0(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LemonadePeopleHomeNavigationBar()
{
  result = qword_1EB1DD6B0;
  if (!qword_1EB1DD6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A48C0258()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A48BEB0C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249834();
  v10 = v0;
  sub_1A48BEBA0(0);
  sub_1A48BEF54(&qword_1EB144608, sub_1A48BEBA0);
  sub_1A5248A74();
  v7 = sub_1A48BEF54(&qword_1EB144610, sub_1A48BEB0C);
  MEMORY[0x1A5904CD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_1A48C0438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A48C04B0()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePeopleProgressStatus();
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A48C0438(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A48C0620@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*v3 == 1)
  {
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [*(v3 + 8) px_peoplePetsHomeVisibility];
    v8 = sub_1A524C634();
    v9 = [v6 locKeyForPersonOrPet:0 withVisibility:v7 key:v8];

    sub_1A524C674();
    sub_1A3C38BD4();
  }

  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1A48C077C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_84()
{
  v1 = (type metadata accessor for LemonadePeopleHomeNavigationBar() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  sub_1A44809C0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A48C09D4(uint64_t a1@<X8>)
{
  v2 = sub_1A3F54490();
  v3 = v2;
  v4 = (v2 >> 8) & 1;
  v5 = objc_opt_self();
  v6 = sub_1A524C634();
  v7 = [v5 locKeyForHasHumans:v3 & 1 hasPets:v4 key:v6];

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  v8 = sub_1A524B544();
  v9 = PXLocalizedString(v7);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v10 = sub_1A524A464();
  v12 = v11;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  v14 = v13 & 1;
  *(a1 + 24) = v13 & 1;
  *(a1 + 32) = v15;

  sub_1A3E75E68(v10, v12, v14);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48C0BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48C0C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A48C0DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A48C0E04(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A4616CE8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  sub_1A48C0FC0(0, &qword_1EB13F168, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A4616D08();
  v18 = sub_1A443F834(a1);
  sub_1A3D607F0(a2);
  sub_1A48C105C(&qword_1EB13F160, sub_1A4616D08);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v17);
  v16 = v17;
  v12 = sub_1A4407D6C(&v18, &v16, a2, a3);
  sub_1A478C8F8(v12, v11);
  sub_1A4616E48();
  sub_1A48C10A4(v11, v8);
  v13 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v8);
  sub_1A48C1108(v11);
  return v13;
}

void sub_1A48C0FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4616D08();
    v7 = v6;
    v8 = sub_1A48C105C(&qword_1EB13F160, sub_1A4616D08);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A48C105C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48C10A4(uint64_t a1, uint64_t a2)
{
  sub_1A4616CE8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48C1108(uint64_t a1)
{
  sub_1A4616CE8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A48C11A8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v8 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  type metadata accessor for PhotosPagingViewModel();
  v3 = type metadata accessor for PhotosPagingLayoutSpec();
  swift_getWitnessTable();
  v7 = v3;
  sub_1A5245734();
}

void sub_1A48C2074()
{
  type metadata accessor for PhotosPagingViewModel();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  swift_getWitnessTable();
  sub_1A5245734();
}

void sub_1A48C22F0()
{
  type metadata accessor for PhotosPagingViewModel();
  sub_1A3C4881C(0, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  swift_getWitnessTable();
  sub_1A43834EC();
  sub_1A5245754();
}

void sub_1A48C23B8()
{
  type metadata accessor for PhotosPagingViewModel();
  swift_getWitnessTable();
  sub_1A5245754();
}

void sub_1A48C243C()
{
  type metadata accessor for PhotosPagingViewModel();
  type metadata accessor for PXPhotosViewChromeItems(0);
  swift_getWitnessTable();
  sub_1A48C7240(&unk_1EB1268B0, type metadata accessor for PXPhotosViewChromeItems);
  sub_1A5245754();
}

void sub_1A48C26A8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1A5245854();
}

void sub_1A48C29BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

void sub_1A48C2C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

uint64_t sub_1A48C2D6C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1A48C2E0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245724();
}

uint64_t sub_1A48C2F14()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90));
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A48C2F8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6);
}

void sub_1A48C3084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

uint64_t sub_1A48C3190@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

void sub_1A48C3220()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245724();
}

void sub_1A48C3314()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

uint64_t sub_1A48C3420@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result & 1;
  return result;
}

void sub_1A48C34B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245724();
}

void sub_1A48C35B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

uint64_t sub_1A48C36C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

void sub_1A48C374C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v1 = v0;
  swift_getWitnessTable();
  sub_1A5245724();
}

uint64_t sub_1A48C3840(uint64_t a1)
{
  v2 = v1;
  v16[7] = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *((*MEMORY[0x1E69E7D40] & v3) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[6] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16[4] = v6;
  v16[5] = v5;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v16[1] = *(v9 - 8);
  v16[2] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v16[8] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v16[3] = v16 - v13;
  (*(v4 + 264))(v12);
  if ((v14 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))();
    sub_1A5246434();
  }

  return 0;
}

uint64_t sub_1A48C3CB8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))(v7, a2, AssociatedTypeWitness);
  (*(v10 + 56))(v7, 0, 1, AssociatedTypeWitness);
  return (*(v8 + 32))(v7, ObjectType, v8);
}

id sub_1A48C3E9C()
{
  v1 = MEMORY[0x1E69E7D40];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PhotosPagingViewModel();
  objc_msgSendSuper2(&v3, sel_didPerformChanges);
  result = *(v0 + *((*v1 & *v0) + 0xC8));
  if (result)
  {
    return [result updateIfNeeded];
  }

  __break(1u);
  return result;
}

void sub_1A48C3F48(void *a1)
{
  v1 = a1;
  sub_1A48C3E9C();
}

void sub_1A48C3FA4(void *a1)
{
  v1 = a1;
  sub_1A48C3F90();
}

void sub_1A48C3FF8()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9[8] = AssociatedConformanceWitness;
  v9[7] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[5] = *(AssociatedTypeWitness - 8);
  v9[6] = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9[4] = v9 - v2;
  v3 = sub_1A524DF24();
  v9[2] = *(v3 - 8);
  v9[3] = v3;
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v9[9] = v9 - v5;
  v6 = swift_checkMetadataState();
  v9[10] = *(v6 - 8);
  v9[11] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9[1] = v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A5245904();
}

void *sub_1A48C45B8(void *result)
{
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8)))
  {
    return [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8)) setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

void sub_1A48C536C()
{
  type metadata accessor for PhotosPagingViewModel.Mutator();
  v1 = v0;
  sub_1A48C5400();
}

void sub_1A48C5400()
{
  swift_allocObject();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel.Mutator();
  swift_getWitnessTable();
  sub_1A52456D4();
}

void sub_1A48C5570()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48C562C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  *(v3 + 32) = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A48C5754()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48C5808()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A48C58C0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  *(v3 + 32) = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A48C59E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48C5A9C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A48C5B54(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  *(v3 + 32) = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A48C5C7C()
{
  type metadata accessor for PhotosPagingViewModel.Mutator();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  swift_getWitnessTable();
  sub_1A52456C4();
}

void sub_1A48C5FCC(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A48C562C(v2);
}

void sub_1A48C6044(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A48C58C0(v2);
}

void sub_1A48C60BC(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A48C5B54(v2);
}

id sub_1A48C6174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48C61E4(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  swift_unknownObjectRelease();
  type metadata accessor for PhotosPagingViewModel();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_1A5245764();
}

uint64_t sub_1A48C6684@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x210))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A48C66E8()
{
  type metadata accessor for PhotosPagingViewModel();
  swift_getWitnessTable();

  sub_1A5245F44();
}

uint64_t sub_1A48C6760@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x218))();
  *a1 = result;
  return result;
}

void sub_1A48C67C4()
{
  type metadata accessor for PhotosPagingViewModel();
  swift_getWitnessTable();

  sub_1A5245C54();
}

void sub_1A48C6868(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (a2)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v4;
        *(v7 + 24) = v6;
        v8 = v4;
        v9 = v6;
        sub_1A524D1B4();
      }
    }

    else
    {
      v6 = v4;
    }
  }
}

void sub_1A48C6A38()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for PhotosPagingViewModel();
  v2 = v0;
  swift_getWitnessTable();
  sub_1A5245714();
}

void sub_1A48C6C9C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  v10[2] = v4;
  v10[3] = v3;
  swift_getKeyPath();
  v10[0] = v4;
  v10[1] = v3;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);
  v11 = v1;
  type metadata accessor for PhotosPagingViewModel();
  v9 = v1;
  swift_getWitnessTable();
  sub_1A5245724();
}

uint64_t sub_1A48C6EC4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A48C3CB8(a1, v4);
}

void sub_1A48C6FC4(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v9 - v7;
  v9[2] = v4;
  v9[3] = v3;
  swift_getKeyPath();
  v9[0] = v4;
  v9[1] = v3;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  sub_1A52456B4();
}

uint64_t sub_1A48C7240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A48C728C()
{
  result = qword_1EB12A9E0;
  if (!qword_1EB12A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9E0);
  }

  return result;
}

unint64_t sub_1A48C72E8()
{
  result = qword_1EB12A9D0;
  if (!qword_1EB12A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9D0);
  }

  return result;
}

unint64_t sub_1A48C7344()
{
  result = qword_1EB12A9D8;
  if (!qword_1EB12A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9D8);
  }

  return result;
}

unint64_t sub_1A48C739C()
{
  result = qword_1EB12A9B8;
  if (!qword_1EB12A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9B8);
  }

  return result;
}

void sub_1A48C73F0()
{
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_1A5245764();
}

void sub_1A48C771C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  swift_getWitnessTable();
  sub_1A52456C4();
}

char *sub_1A48C799C(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = sub_1A4467460(v8, v9, v10);
  v12 = sub_1A44672B8();
  v14 = v13;

  if (v12)
  {
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(ObjectType, v14);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v11;
}

BOOL sub_1A48C7A6C()
{
  v0 = sub_1A4467CD8();
  v1 = [v0 photosDataSource];

  HasLocationForDataSource = PXPhotosDetailsContextHasLocationForDataSource(v1);
  return HasLocationForDataSource;
}

uint64_t type metadata accessor for PhotosDetailsNoLocationWidgetViewModel()
{
  result = qword_1EB1715E0;
  if (!qword_1EB1715E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48C7B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = type metadata accessor for LemonadePickerShelvesDataSource();
    v4 = v1;
    v5 = v2;
    v6 = sub_1A499F404(v4, v5);

    v7 = sub_1A48C8588(&unk_1EB146DC0, type metadata accessor for LemonadePickerShelvesDataSource);
    v8 = 2;
  }

  else
  {
    v3 = type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource();
    v6 = static LemonadeLibraryDefaultsShelvesDataSource.defaultsShelvesDataSource(for:)(v1);
    v7 = sub_1A48C8588(&qword_1EB1250C8, type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource);
    v8 = 0;
  }

  v10[3] = v3;
  v10[4] = v7;
  v10[0] = v6;
  sub_1A3C341C8(v10, v9);
  type metadata accessor for LemonadeShelvesViewModel(0);
  sub_1A3C5A7B8(v9, 0, v8);
}

uint64_t sub_1A48C8024()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 560))(v3);
  v19 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C531C8(v8, v5);
      sub_1A3C53294(v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = (*(v12 + 56))(v11, v12);
      sub_1A3C53E7C(v5);
      v14 = __swift_destroy_boxed_opaque_existential_0(v16);
      if (v13)
      {
        MEMORY[0x1A5907D70](v14);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v10 = v19;
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

unint64_t sub_1A48C821C()
{
  result = qword_1EB126CD0;
  if (!qword_1EB126CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126CD0);
  }

  return result;
}

unint64_t sub_1A48C8268()
{
  result = qword_1EB144620;
  if (!qword_1EB144620)
  {
    sub_1A48C887C(255, &qword_1EB144618, sub_1A48C821C, MEMORY[0x1E69E62F8]);
    sub_1A48C8588(&qword_1EB144628, sub_1A48C821C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144620);
  }

  return result;
}

id sub_1A48C8340(uint64_t a1)
{
  sub_1A3C707DC(a1 + 128, v9);
  if (!v10)
  {
    sub_1A43FED80(v9);
    goto LABEL_5;
  }

  sub_1A44292E4();
  sub_1A48C887C(0, &qword_1EB144618, sub_1A48C821C, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v1 = v8;
LABEL_6:
  sub_1A43D79B8(v1);

  sub_1A48C887C(0, &qword_1EB12A020, sub_1A48C821C, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
  sub_1A524C674();
  v3 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v4 = sub_1A524CA14();

  v5 = sub_1A524C634();

  v6 = [v3 initWithObjects:v4 photoLibrary:ResultProvider fetchType:v5 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v6;
}

uint64_t sub_1A48C84F4()
{
  sub_1A48C8024();
}

uint64_t (*sub_1A48C8530())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A48C8778;
}

uint64_t sub_1A48C8588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48C85D0()
{
}

uint64_t sub_1A48C8610()
{
  PhotoKitItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LemonadeCollectionsItemListManager()
{
  result = qword_1EB1DD6C8;
  if (!qword_1EB1DD6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48C873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A48C8778()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = sub_1A48C8024();
    sub_1A48C887C(0, &qword_1EB144618, sub_1A48C821C, MEMORY[0x1E69E62F8]);
    v3[3] = v2;
    v3[4] = sub_1A48C8268();
    v3[0] = v1;
    sub_1A43FA078(v3);
  }

  return result;
}

void sub_1A48C887C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48C8940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LemonadeAlbumCell();
  v13 = a6 + v12[17];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v14 = v12[15];
  sub_1A52430A4();
  v15 = sub_1A524DF24();
  result = (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  v17 = (a6 + v12[16]);
  *v17 = a3;
  v17[1] = a4;
  return result;
}

uint64_t sub_1A48C8A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v94 = a1;
  v4 = a1 - 8;
  v89 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v82 = v5;
  v88 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 24);
  sub_1A48CBDD8(255, &unk_1EB127ED0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
  v8 = v7;
  v10 = *(v4 + 32);
  v9 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = sub_1A43DC444();
  v13 = *(v4 + 56);
  v107 = v6;
  v108 = v8;
  v109 = v10;
  v110 = v9;
  v111 = v11;
  v112 = v12;
  v113 = v13;
  v81 = sub_1A5243E94();
  v80 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v92 = &v77 - v14;
  v107 = v6;
  v108 = v8;
  v86 = v8;
  v109 = v10;
  v110 = v9;
  v111 = v11;
  v112 = v12;
  v83 = v12;
  v113 = v13;
  v15 = sub_1A5243EA4();
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v77 - v18;
  sub_1A52430A4();
  v19 = sub_1A524DF24();
  v91 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v77 - v20;
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  v104 = v6;
  v107 = v6;
  v108 = v10;
  v101 = v10;
  v102 = v11;
  v109 = v9;
  v110 = v11;
  v100 = v13;
  v111 = v13;
  v24 = type metadata accessor for LemonadeAlbumGridCell();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v79 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v77 - v28;
  v97 = v15;
  v29 = sub_1A5249754();
  v95 = *(v29 - 8);
  v96 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v93 = &v77 - v30;
  v31 = sub_1A5249234();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3 + *(v4 + 76);
  v36 = *v35;
  LOBYTE(v10) = *(v35 + 8);

  if ((v10 & 1) == 0)
  {
    sub_1A524D254();
    v77 = v31;
    v38 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    v37 = (*(v32 + 8))(v34, v77);
    v36 = v107;
  }

  (*(*v36 + 160))(&v107, v37);

  v39 = v107;
  (*(v90 + 2))(v23, v3, v104);
  if (v39 == 1)
  {
    v40 = v94;
    v41 = v99;
    (*(v91 + 16))(v99, v3 + *(v94 + 60), v19);
    v42 = (v3 + *(v40 + 64));
    v43 = *v42;
    v44 = v42[1];

    v45 = v79;
    sub_1A4273C78(v23, v41, v43, v44, v104, v79);
    swift_getWitnessTable();
    v46 = *(v25 + 16);
    v47 = v78;
    v46(v78, v45, v24);
    v48 = *(v25 + 8);
    v48(v45, v24);
    v46(v45, v47, v24);
    swift_getWitnessTable();
    v49 = v93;
    sub_1A3DF4798(v45, v24);
    v48(v45, v24);
    v48(v47, v24);
  }

  else
  {
    (*(v80 + 104))(v92, *MEMORY[0x1E69C2910], v81);
    v90 = v23;
    v50 = v94;
    (*(v91 + 16))(v99, v3 + *(v94 + 60), v19);
    v51 = v89;
    v81 = *(v89 + 16);
    v52 = v88;
    v81(v88, v3, v50);
    v80 = v3;
    v53 = *(v51 + 80);
    v54 = ((v53 + 56) & ~v53) + v82;
    v79 = (v53 + 56) & ~v53;
    v55 = swift_allocObject();
    v57 = v103;
    v56 = v104;
    v58 = v101;
    v55[2] = v104;
    v55[3] = v58;
    v59 = v102;
    v55[4] = v57;
    v55[5] = v59;
    v55[6] = v100;
    v91 = v24;
    v60 = v56;
    v89 = *(v51 + 32);
    (v89)(v55 + ((v53 + 56) & ~v53), v52, v50);
    v81(v52, v80, v50);
    v61 = swift_allocObject();
    v61[2] = v60;
    v62 = v102;
    v63 = v103;
    v61[3] = v101;
    v61[4] = v63;
    v64 = v100;
    v61[5] = v62;
    v61[6] = v64;
    (v89)(v61 + v79, v52, v50);
    *(v61 + v54) = 0;
    v65 = v85;
    v66 = v91;
    sub_1A5243EB4();
    v67 = v97;
    swift_getWitnessTable();
    v68 = v87;
    v69 = *(v87 + 16);
    v70 = v84;
    v69(v84, v65, v67);
    v71 = *(v68 + 8);
    v71(v65, v67);
    v69(v65, v70, v67);
    swift_getWitnessTable();
    v49 = v93;
    sub_1A3DF4890(v65, v66, v67);
    v71(v65, v67);
    v71(v70, v67);
  }

  WitnessTable = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v105 = WitnessTable;
  v106 = v73;
  v74 = v96;
  swift_getWitnessTable();
  v75 = v95;
  (*(v95 + 16))(v98, v49, v74);
  return (*(v75 + 8))(v49, v74);
}

uint64_t sub_1A48C962C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1A5243834();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5243EC4();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48CBDD8(0, &qword_1EB127FA0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1A48CBE5C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v29 = sub_1A5242494();
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5243D14();
  v15 = sub_1A5241E54();
  if (v14)
  {
    swift_getAssociatedTypeWitness();
    sub_1A3D435C4();
    sub_1A524E614();

    v16 = sub_1A52429A4();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_1A524B414();
    sub_1A52424A4();
    v17 = v29;
    (*(v11 + 16))(v7, v13, v29);
    swift_storeEnumTagMultiPayload();
    sub_1A48CBC3C(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    sub_1A48CBC3C(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v11 + 8))(v13, v17);
  }

  else
  {
    *&v32 = v15;
    swift_getAssociatedTypeWitness();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D074();

    v32 = 0u;
    v33 = 0u;
    v34 = 1;
    v19 = sub_1A52429A4();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    (*(v24 + 104))(v3, *MEMORY[0x1E69C2678], v25);
    v20 = v26;
    sub_1A5243ED4();
    v21 = v27;
    v22 = v30;
    (*(v27 + 16))(v7, v20, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A48CBC3C(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    sub_1A48CBC3C(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v21 + 8))(v20, v22);
  }
}

uint64_t sub_1A48C9C80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24[-1] - v12;
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v19 = *(a1 + *(type metadata accessor for LemonadeAlbumCell() + 64));
  LOBYTE(v24[0]) = a2 & 1;
  v19(v24);
  v20 = *(v8 + 16);
  v20(v13, v10, a3);
  v21 = *(v8 + 8);
  v21(v10, a3);
  v20(a4, v13, a3);
  return (v21)(v13, a3);
}

uint64_t sub_1A48C9DF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A44E7810();
  *a1 = result;
  return result;
}

PhotosUICore::LemonadeAlbumCellStyle_optional __swiftcall LemonadeAlbumCellStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t LemonadeAlbumCellStyle.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A48C9E84()
{
  v1 = *v0;
  sub_1A524EC94();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A590A010](v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A48C9ED4()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1A590A010](v1);
}

uint64_t sub_1A48C9F0C()
{
  v1 = *v0;
  sub_1A524EC94();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A590A010](v2);
  return sub_1A524ECE4();
}

void *sub_1A48C9F58@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1A48C9F78(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1A48C9F90@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LemonadeAlbumCell();

  return sub_1A48C962C(a1);
}

uint64_t sub_1A48CA030@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LemonadeAlbumCell() - 8);
  v5 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));

  return sub_1A48C9C80(v5, v6, v3, a1);
}

uint64_t sub_1A48CA110@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_1A48CBDD8(0, &qword_1EB144630, sub_1A48CA498, sub_1A4005524, MEMORY[0x1E697E830]);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v37 = 0;
  sub_1A524A044();
  sub_1A48CAB70(0, &qword_1EB144650, sub_1A48CA630);
  v32 = v12;
  sub_1A48CAF28();
  sub_1A5247D14();
  KeyPath = swift_getKeyPath();
  sub_1A48CA56C(0);
  v15 = v14;
  v16 = &v11[*(v14 + 36)];
  sub_1A48CBE5C(0, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5243EF4();
  *v16 = KeyPath;
  v17 = swift_getKeyPath();
  type metadata accessor for LemonadeAlbumsViewOptionsModel();
  v38 = 0;
  v18 = sub_1A44E65E0(0, &v38);
  sub_1A48CA498(0);
  v20 = v19;
  v21 = &v11[*(v19 + 36)];
  *v21 = v17;
  v21[1] = v18;
  *&v11[*(v2 + 44)] = xmmword_1A536F570;
  v36 = 1;
  sub_1A524A044();
  sub_1A5247D14();
  v22 = swift_getKeyPath();
  v23 = &v8[*(v15 + 36)];
  sub_1A5243EF4();
  *v23 = v22;
  v24 = swift_getKeyPath();
  v38 = 1;
  v25 = sub_1A44E65E0(0, &v38);
  v26 = &v8[*(v20 + 36)];
  *v26 = v24;
  v26[1] = v25;
  *&v8[*(v2 + 44)] = xmmword_1A536F580;
  v27 = v33;
  sub_1A3D27F18(v11, v33);
  v28 = v34;
  sub_1A3D27F18(v8, v34);
  v29 = v35;
  sub_1A3D27F18(v27, v35);
  sub_1A48CB5C8();
  sub_1A3D27F18(v28, v29 + *(v30 + 48));
  sub_1A3D27FC0(v8);
  sub_1A3D27FC0(v11);
  sub_1A3D27FC0(v28);
  return sub_1A3D27FC0(v27);
}

void sub_1A48CA4D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A48CBE5C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A48CA5A8()
{
  if (!qword_1EB144648)
  {
    sub_1A48CAB70(255, &qword_1EB144650, sub_1A48CA630);
    sub_1A48CAF28();
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144648);
    }
  }
}

void sub_1A48CA630()
{
  if (!qword_1EB144658)
  {
    sub_1A48CA694();
    sub_1A48CADA4();
    v0 = sub_1A5247CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144658);
    }
  }
}

void sub_1A48CA694()
{
  if (!qword_1EB144660)
  {
    sub_1A48CBE5C(255, &qword_1EB144668, MEMORY[0x1E69C29D0], MEMORY[0x1E69E62F8]);
    sub_1A48CA75C();
    sub_1A48CAD1C();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144660);
    }
  }
}

void sub_1A48CA75C()
{
  if (!qword_1EB144670)
  {
    sub_1A48CA8BC();
    sub_1A48CAB70(255, &qword_1EB1446B0, sub_1A48CA8BC);
    sub_1A48CA9B4();
    sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
    sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
    sub_1A48CAA9C();
    swift_getOpaqueTypeConformance2();
    sub_1A48CABD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB144670);
    }
  }
}

void sub_1A48CA8BC()
{
  if (!qword_1EB144678)
  {
    sub_1A48CA9B4();
    sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
    sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
    sub_1A48CAA9C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB144678);
    }
  }
}

void sub_1A48CA9B4()
{
  if (!qword_1EB144680)
  {
    sub_1A5244174();
    v0 = MEMORY[0x1E69C29D0];
    sub_1A48CBC3C(&qword_1EB144688, MEMORY[0x1E69C29D0]);
    sub_1A48CBC3C(&qword_1EB144690, v0);
    v1 = type metadata accessor for LemonadeAlbumCell();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB144680);
    }
  }
}

unint64_t sub_1A48CAA9C()
{
  result = qword_1EB1446A8;
  if (!qword_1EB1446A8)
  {
    sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
    sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1446A8);
  }

  return result;
}

void sub_1A48CAB70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A48CABD4()
{
  result = qword_1EB1446B8;
  if (!qword_1EB1446B8)
  {
    sub_1A48CAB70(255, &qword_1EB1446B0, sub_1A48CA8BC);
    sub_1A48CA9B4();
    sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
    sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
    sub_1A48CAA9C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1446B8);
  }

  return result;
}

unint64_t sub_1A48CAD1C()
{
  result = qword_1EB1446C0;
  if (!qword_1EB1446C0)
  {
    sub_1A48CBE5C(255, &qword_1EB144668, MEMORY[0x1E69C29D0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1446C0);
  }

  return result;
}

unint64_t sub_1A48CADA4()
{
  result = qword_1EB1446C8;
  if (!qword_1EB1446C8)
  {
    sub_1A48CA694();
    sub_1A48CA8BC();
    sub_1A48CAB70(255, &qword_1EB1446B0, sub_1A48CA8BC);
    sub_1A48CA9B4();
    sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
    sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
    sub_1A48CAA9C();
    swift_getOpaqueTypeConformance2();
    sub_1A48CABD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1446C8);
  }

  return result;
}

unint64_t sub_1A48CAF28()
{
  result = qword_1EB1446D0;
  if (!qword_1EB1446D0)
  {
    sub_1A48CAB70(255, &qword_1EB144650, sub_1A48CA630);
    sub_1A48CBC3C(&unk_1EB1446D8, sub_1A48CA630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1446D0);
  }

  return result;
}

double sub_1A48CAFFC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A5249574();
  sub_1A48CBC3C(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  sub_1A524EE64();
  sub_1A48CA694();
  sub_1A48CADA4();
  sub_1A5247CC4();
  v3 = sub_1A524A064();
  sub_1A48CAB70(0, &qword_1EB144650, sub_1A48CA630);
  v5 = a1 + *(v4 + 36);
  *v5 = v3;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_1A48CB188@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a3;
  sub_1A48CA9B4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48CA8BC();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = v6[15];
  sub_1A48CBC84();
  (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
  *v8 = v14;
  v17 = &v8[v6[17]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v8[v6[16]];
  *v18 = PXDisplayCollectionDetailedCountsMake;
  *(v18 + 1) = 0;
  v24[1] = (a2 & 1) == 0;
  sub_1A48CAB70(0, &qword_1EB144698, sub_1A48CA9B4);
  v20 = v19;
  v21 = sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
  v22 = sub_1A48CAA9C();

  sub_1A524A584();
  sub_1A48CBD18(v8);
  sub_1A48CAB70(0, &qword_1EB1446B0, sub_1A48CA8BC);
  v26 = v6;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1A48CABD4();
  sub_1A524A584();
  return (*(v11 + 8))(v13, v10);
}

void sub_1A48CB490(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A48CBD74(a1, a2);
  sub_1A48CAB70(0, &qword_1EB144698, sub_1A48CA9B4);
  v4 = a2 + *(v3 + 36);
  *v4 = 0x3FF8000000000000;
  *(v4 + 8) = 0;
}

double sub_1A48CB4F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A48CA8BC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1A48CAB70(0, &qword_1EB1446B0, sub_1A48CA8BC);
  v6 = (a2 + *(v5 + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void sub_1A48CB5C8()
{
  if (!qword_1EB144700)
  {
    sub_1A48CBDD8(255, &qword_1EB144630, sub_1A48CA498, sub_1A4005524, MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB144700);
    }
  }
}

unint64_t sub_1A48CB6C4()
{
  result = qword_1EB144710;
  if (!qword_1EB144710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144710);
  }

  return result;
}

uint64_t sub_1A48CB738(uint64_t a1)
{
  v2 = sub_1A48CB99C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A48CB784(uint64_t a1)
{
  v2 = sub_1A48CB99C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A48CB7D0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A52430A4();
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A48CBE5C(319, &unk_1EB124760, type metadata accessor for LemonadeAlbumsViewOptionsModel, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A48CB914()
{
  result = qword_1EB144718;
  if (!qword_1EB144718)
  {
    sub_1A48CBE5C(255, &qword_1EB144720, sub_1A48CB5C8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144718);
  }

  return result;
}

unint64_t sub_1A48CB99C()
{
  result = qword_1EB144728;
  if (!qword_1EB144728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144728);
  }

  return result;
}

uint64_t sub_1A48CB9F0()
{
  v1 = *(v0 + 16);
  sub_1A5244174();
  sub_1A5244164();
  *(swift_allocObject() + 16) = v1;
  sub_1A48CBE5C(0, &qword_1EB144668, MEMORY[0x1E69C29D0], MEMORY[0x1E69E62F8]);
  sub_1A48CA75C();
  sub_1A48CAD1C();
  sub_1A48CA8BC();
  sub_1A48CAB70(255, &qword_1EB1446B0, sub_1A48CA8BC);
  sub_1A48CA9B4();
  sub_1A48CAB70(255, &qword_1EB144698, sub_1A48CA9B4);
  sub_1A48CBC3C(&qword_1EB1446A0, sub_1A48CA9B4);
  sub_1A48CAA9C();
  swift_getOpaqueTypeConformance2();
  sub_1A48CABD4();
  swift_getOpaqueTypeConformance2();
  sub_1A48CBC3C(&qword_1EB144738, MEMORY[0x1E69C29D0]);
  return sub_1A524B9C4();
}

uint64_t sub_1A48CBC3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A48CBC84()
{
  if (!qword_1EB144740)
  {
    sub_1A5244174();
    sub_1A48CBC3C(&qword_1EB144690, MEMORY[0x1E69C29D0]);
    v0 = sub_1A52430A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144740);
    }
  }
}

uint64_t sub_1A48CBD18(uint64_t a1)
{
  sub_1A48CA9B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A48CBD74(uint64_t a1, uint64_t a2)
{
  sub_1A48CA9B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A48CBDD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A48CBE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A48CC72C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 internal_isMemoryCreationEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CC774@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseAvailabilityMonitor];
  *a2 = result;
  return result;
}

id sub_1A48CC7BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseProcessingStatusInAvailabilityMonitor];
  *a2 = result;
  return result;
}

id sub_1A48CC804@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldOverrideAvailabilityPollingInterval];
  *a2 = result;
  return result;
}

id sub_1A48CC84C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 availabilityPollingInterval];
  *a2 = v4;
  return result;
}

id sub_1A48CC894@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suggestionToolEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CC8DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfSuggestions];
  *a2 = v4;
  return result;
}

id sub_1A48CC924@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preferInternalEvaluationUI];
  *a2 = result;
  return result;
}

id sub_1A48CC96C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showFreeformMemoryCreationCellInMemoryShelf];
  *a2 = result;
  return result;
}

id sub_1A48CC9B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 memoryCreationCellPositionInMemoryShelf];
  *a2 = result;
  return result;
}

id sub_1A48CC9FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMemoryCreationCellRepositioningEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CCA44@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 internal_isMemoryCreationCardInWatchNextEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CCA8C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 internal_isMemoryCreationButtonInWatchNextEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CCAD4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showFreeformMemoryCreationButtonInMemoryShelf];
  *a2 = result;
  return result;
}

id sub_1A48CCB1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showFreeformMemoryCreationButtonInMemoryFeed];
  *a2 = result;
  return result;
}

id sub_1A48CCB64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fullScreenTransitionType];
  *a2 = result;
  return result;
}

id sub_1A48CCBAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayPromptListButton];
  *a2 = result;
  return result;
}

id sub_1A48CCBF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShowSuggestionSourceBadge];
  *a2 = result;
  return result;
}

id sub_1A48CCC3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 promptSuggestionRefreshOnReload];
  *a2 = result;
  return result;
}

id sub_1A48CCC84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 promptSuggestionMusicLengthLimit];
  *a2 = result;
  return result;
}

id sub_1A48CCCCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateSlowFetchForPromptSuggestion];
  *a2 = result;
  return result;
}

id sub_1A48CCD14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promptSuggestionCacheExpirationInMinutes];
  *a2 = v4;
  return result;
}

id sub_1A48CCD5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promptSuggestionRefetchCooldown];
  *a2 = v4;
  return result;
}

id sub_1A48CCDA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entryPointBackgroundMode];
  *a2 = result;
  return result;
}

id sub_1A48CCDEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fullScreenBackgroundMode];
  *a2 = result;
  return result;
}

id sub_1A48CCE34@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 cellBackgroundShouldLimitVideoDownloadQuality];
  *a2 = result;
  return result;
}

id sub_1A48CCE7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showAllBackgroundAssets];
  *a2 = result;
  return result;
}

id sub_1A48CCEC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldRefreshBackgroundAssetsOnAppRestart];
  *a2 = result;
  return result;
}

id sub_1A48CCF0C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateSlowFetchForBackgroundAssets];
  *a2 = result;
  return result;
}

id sub_1A48CCF54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A48CCF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playbackRateFactor];
  *a2 = v4;
  return result;
}

void sub_1A48CCFE4(void *a1)
{
  v2 = [objc_opt_self() px_systemPhotoLibrary];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for GenerativeStoryBackgroundAssetsManager();
    v4 = sub_1A4A071A0(v3);
    v5 = (*(*v4 + 136))();

    if (!v5)
    {
      v7 = PXDisplayCollectionDetailedCountsMake(v6);
      v5 = sub_1A4A04E58(v3, v7);
    }

    v8 = [objc_opt_self() dataSourceManagerWithAssets_];
    v9 = [objc_opt_self() mediaProviderWithLibrary_];
    v10 = [objc_allocWithZone(off_1E7721830) initWithDataSourceManager:v8 mediaProvider:v9 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

    [v10 setAllowedActions_];
    [v10 setSectionBodyStyle_];
    v11 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

    [a1 pushViewController:v11 animated:1];
  }
}

id sub_1A48CD1C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preferMockSuggestionsData];
  *a2 = result;
  return result;
}

id sub_1A48CD210@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 replaceMemoryCreationWithMockData];
  *a2 = result;
  return result;
}

id sub_1A48CD258@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateCreationError];
  *a2 = result;
  return result;
}

id sub_1A48CD2A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateSlowCreation];
  *a2 = result;
  return result;
}

id sub_1A48CD2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promptEntryViewType];
  *a2 = result;
  return result;
}

id sub_1A48CD330@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 autocompleteSuggestionsMode];
  *a2 = result;
  return result;
}

id sub_1A48CD378@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationAutocompleteSuggestionsMode];
  *a2 = result;
  return result;
}

id sub_1A48CD3C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showIntelligenceLightingInSuggestions];
  *a2 = result;
  return result;
}

id sub_1A48CD408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligenceLightModeInPromptTextField];
  *a2 = result;
  return result;
}

id sub_1A48CD450@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showDebugUIGenerationProgress];
  *a2 = result;
  return result;
}

id sub_1A48CD498@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showDebugErrorUI];
  *a2 = result;
  return result;
}

id sub_1A48CD4E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centralizedFeedbackUI];
  *a2 = result;
  return result;
}

id sub_1A48CD528@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showPerformanceTTRIfGenerationSlowOrHanging];
  *a2 = result;
  return result;
}

id sub_1A48CD570@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldCancelGenerationAfterMaxDuration];
  *a2 = result;
  return result;
}

id sub_1A48CD5B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxDurationForGeneration];
  *a2 = v4;
  return result;
}

id sub_1A48CD600@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ambiguousTokensPauseStoryGeneration];
  *a2 = result;
  return result;
}

id sub_1A48CD648@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ambiguousTokensBlockStoryGeneration];
  *a2 = result;
  return result;
}

id sub_1A48CD690@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyRestartStoryGenerationAfterUserDisambiguation];
  *a2 = result;
  return result;
}

id sub_1A48CD6D8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyExpandDisambiguationMenu];
  *a2 = result;
  return result;
}

id sub_1A48CD720@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showAssetGridForTimeEventDisambiguation];
  *a2 = result;
  return result;
}

id sub_1A48CD768@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLocationDisambiguation];
  *a2 = result;
  return result;
}

id sub_1A48CD7B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unresolvableAmbiguityShowsContinueButton];
  *a2 = result;
  return result;
}

id sub_1A48CD7F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMemoryCreationImageAnimationEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CD840@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMemoryCreationTextAnimationEnabled];
  *a2 = result;
  return result;
}

id sub_1A48CD888@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateSlowPrewarmForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CD8D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUsePlaceholderAssetsForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CD918@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseRetrievedAssetsForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CD960@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseExtendedAssetsForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CD9A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseGlobalTraitsForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CD9F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUsePersonalTraitsForLoadingAnimation];
  *a2 = result;
  return result;
}

id sub_1A48CDA3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 vfxQualityPostProcessingFXHighQuality];
  *a2 = result;
  return result;
}

id sub_1A48CDA84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 vfxQualityResolution];
  *a2 = result;
  return result;
}

id sub_1A48CDACC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 vfxQualityFrameRate];
  *a2 = result;
  return result;
}

id sub_1A48CDB14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 vfxQualityUseBestCrop];
  *a2 = result;
  return result;
}

id sub_1A48CDB5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 saveCurationInFolder];
  *a2 = result;
  return result;
}

id sub_1A48CDBA4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showVisualDiagnosticsOptionInTapToRadar];
  *a2 = result;
  return result;
}

void sub_1A48CDBEC(uint64_t a1)
{
  v2 = [objc_opt_self() px_systemPhotoLibrary];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 librarySpecificFetchOptions];
    [v4 setFetchLimit_];
    v5 = [objc_opt_self() fetchAssetsWithOptions_];
    type metadata accessor for GenerativeStoryVisualDiagnosticsProvider();
    v6 = v5;
    v7 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
    [v7 setIsPrivateDataAllowed_];
    [objc_opt_self() showVisualDiagnosticsWithConfiguration:v7 fromViewController:a1 completionHandler:0];
  }
}

uint64_t sub_1A48CDD74()
{
  v0 = objc_opt_self();
  v3[4] = sub_1A48CE1CC;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D35A90;
  v3[3] = &block_descriptor_296;
  v1 = _Block_copy(v3);

  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_1A48CDE64@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldLoadStoriesFromCache];
  *a2 = result;
  return result;
}

id sub_1A48CDEAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldForceFallbackMemoryGeneration];
  *a2 = result;
  return result;
}

id sub_1A48CDEF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showChapterTitles];
  *a2 = result;
  return result;
}

id sub_1A48CDF3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowRadarRequestAlerts];
  *a2 = result;
  return result;
}

id sub_1A48CDF84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldForceDiagnosticAsSeedOrFCS];
  *a2 = result;
  return result;
}

void sub_1A48CDFCC(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];

  v3 = sub_1A524C634();
  [a1 setMessage_];

  v4 = sub_1A524C634();
  [a1 addActionWithTitle:v4 style:1 action:0];

  v5 = sub_1A524C634();
  v7[4] = sub_1A48CE154;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_26_4;
  v6 = _Block_copy(v7);
  [a1 addActionWithTitle:v5 style:2 action:v6];
  _Block_release(v6);
}

void sub_1A48CE154()
{
  v0 = [objc_opt_self() internal_deleteGenerativeMemories];
  v1 = sub_1A524C674();
  v3 = v2;

  sub_1A48D46C0(v1, v3);
}

char *sub_1A48CE1D0(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  result = [*a1 uuid];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = *(a3 + 16);
  if (v10)
  {
    v6 = 0;
    v11 = (a3 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == v7 && *v11 == v9;
      if (v12 || (sub_1A524EAB4() & 1) != 0)
      {
        break;
      }

      ++v6;
      v11 += 2;
      if (v10 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    __break(1u);
  }

  result = [v4 uuid];
  if (!result)
  {
    goto LABEL_22;
  }

  v13 = result;
  v14 = sub_1A524C674();
  v16 = v15;

  v17 = 0;
  v18 = (a3 + 40);
  while (1)
  {
    v19 = *(v18 - 1) == v14 && *v18 == v16;
    if (v19 || (sub_1A524EAB4() & 1) != 0)
    {
      break;
    }

    ++v17;
    v18 += 2;
    if (v10 == v17)
    {

      __break(1u);
      break;
    }
  }

  return (v6 < v17);
}

char *sub_1A48CE4E4(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB144820, type metadata accessor for PXGenerativeStoryTransitionType);
  *v3 = result;
  return result;
}

char *sub_1A48CE520(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB144828, type metadata accessor for PXGenerativeStoryCardPosition);
  *v3 = result;
  return result;
}

char *sub_1A48CE55C(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &unk_1EB120248, type metadata accessor for PXGenerativeStoryBackgroundMode);
  *v3 = result;
  return result;
}

char *sub_1A48CE598(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB1447C8, type metadata accessor for PXGenerativeStoryFeedbackUserType);
  *v3 = result;
  return result;
}

char *sub_1A48CE5D4(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB1447D0, type metadata accessor for PXGenerativeStoryPromptInputViewLightEffectsMode);
  *v3 = result;
  return result;
}

char *sub_1A48CE610(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB1447D8, type metadata accessor for PXGenerativeStoryLocationAutocompleteMode);
  *v3 = result;
  return result;
}

char *sub_1A48CE64C(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB1447E0, type metadata accessor for PXGenerativeStoryAutocompleteMode);
  *v3 = result;
  return result;
}

char *sub_1A48CE688(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB1447E8, type metadata accessor for PXGenerativeStoryPromptEntryViewType);
  *v3 = result;
  return result;
}

char *sub_1A48CE6C4(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB144768, type metadata accessor for PXGenerativeStoryVFXQualityFrameRate);
  *v3 = result;
  return result;
}

char *sub_1A48CE700(char *a1, int64_t a2, char a3)
{
  result = sub_1A48CE73C(a1, a2, a3, *v3, &qword_1EB144770, type metadata accessor for PXGenerativeStoryVFXQualityResolution);
  *v3 = result;
  return result;
}

char *sub_1A48CE73C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A48D4B40(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_1A48CE850(void **__dst, id *__src, id *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a4;
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_52;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v48 = *v6;
      v47 = *v14;
      v18 = v47;
      v19 = v48;
      v20 = v18;
      v21 = sub_1A48CE1D0(&v48, &v47, a5);
      if (v46)
      {

        v39 = v15 - v14 + 7;
        if (v15 - v14 >= 0)
        {
          v39 = v15 - v14;
        }

        if (v7 < v14 || v7 >= (v14 + (v39 & 0xFFFFFFFFFFFFFFF8)) || v7 != v14)
        {
          v38 = 8 * (v39 >> 3);
          v36 = v7;
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      v22 = v21;

      if (v22)
      {
        break;
      }

      v16 = v14;
      v17 = v7 == v14++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    v23 = a4;
    memmove(a4, __src, 8 * v13);
    a4 = v23;
  }

  v44 = a4;
  v15 = (a4 + 8 * v13);
  if (v11 < 8 || v6 <= v7)
  {
    v14 = a4;
  }

  else
  {
    v24 = -a4;
    v42 = -a4;
    while (2)
    {
      v43 = v6;
      v25 = v6 - 1;
      v26 = v15 + v24;
      --v5;
      v27 = v15;
      while (1)
      {
        v28 = *--v27;
        v48 = v28;
        v6 = v25;
        v47 = *v25;
        v29 = v47;
        v30 = v28;
        v31 = v29;
        v32 = sub_1A48CE1D0(&v48, &v47, a5);
        if (v46)
        {

          if (v26 >= 0)
          {
            v35 = v26;
          }

          else
          {
            v35 = v26 + 7;
          }

          v36 = v43;
          v37 = v44;
          if (v43 < v44 || v43 >= v44 + (v35 & 0xFFFFFFFFFFFFFFF8) || v43 != v44)
          {
            v38 = 8 * (v35 >> 3);
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v33 = v32;

        v34 = (v5 + 1);
        if (v33)
        {
          break;
        }

        v25 = v6;
        if (v34 != v15)
        {
          *v5 = *v27;
        }

        v26 -= 8;
        --v5;
        v15 = v27;
        if (v27 <= v44)
        {
          v15 = v27;
          v6 = v43;
          v14 = v44;
          goto LABEL_52;
        }
      }

      if (v34 != v43)
      {
        *v5 = *v6;
      }

      v14 = v44;
      if (v15 > v44)
      {
        v24 = v42;
        if (v6 > v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_52:
  v40 = v15 - v14 + 7;
  if (v15 - v14 >= 0)
  {
    v40 = v15 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v40 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v38 = 8 * (v40 >> 3);
    v36 = v6;
LABEL_58:
    v37 = v14;
LABEL_59:
    memmove(v36, v37, v38);
  }

LABEL_60:

  return 1;
}

void sub_1A48CFECC(void *a1)
{
  v2 = [objc_opt_self() px_systemPhotoLibrary];
  if (v2)
  {
    v6 = v2;
    v3 = PXSoftLinkedProtoGenerativeStoryStartMosaicDebugUIWorkflowWithPhotoLibrary(v2);
    if (v3)
    {
      v4 = v3;
      [a1 pushViewController:v3 animated:1];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

void sub_1A48CFF7C()
{
  swift_getKeyPath();
  sub_1A48D44EC(qword_1F172BBE8, sub_1A48CE55C);
  sub_1A48D4CAC(0, &qword_1EB1447F0, type metadata accessor for PXGenerativeStoryBackgroundMode);
  swift_arrayDestroy();
  sub_1A3C29E94(&qword_1EB1447F8, type metadata accessor for PXGenerativeStoryBackgroundMode);
  sub_1A3F3E83C(0x6361422064726143, 0xEF646E756F72676BLL, &v0);
}

void sub_1A48D0A70()
{
  swift_getKeyPath();
  sub_1A48D44EC(qword_1F172BCB8, sub_1A48CE688);
  sub_1A48D4CAC(0, &qword_1EB144778, type metadata accessor for PXGenerativeStoryPromptEntryViewType);
  swift_arrayDestroy();
  sub_1A3C29E94(&qword_1EB144780, type metadata accessor for PXGenerativeStoryPromptEntryViewType);
  sub_1A3F3E83C(0xD000000000000016, 0x80000001A53F0B60, &v0);
}

void sub_1A48D2C5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A48D5200(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1A48D2CEC(void *a1)
{
  v2 = sub_1A5244FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52469C4();
  MEMORY[0x1EEE9AC00](v6);
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v8 = result;
    v18 = a1;
    v9 = MEMORY[0x1E69C1878];
    sub_1A48D4B40(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52FC9F0;
    sub_1A52469B4();
    sub_1A52469A4();
    v19[0] = v10;
    sub_1A3C29E94(&qword_1EB124A50, MEMORY[0x1E69C1878]);
    sub_1A48D4B40(0, &qword_1EB120C98, v9, MEMORY[0x1E69E62F8]);
    sub_1A3C9B014(&qword_1EB120C90, &qword_1EB120C98, v9);
    sub_1A524E224();
    sub_1A5245214();
    swift_allocObject();
    sub_1A52451F4();
    PXSharingFilterFromPhotoLibrary(v8);
    sub_1A5244CE4();
    swift_allocObject();
    v11 = v8;
    sub_1A5244CD4();
    sub_1A5244FC4();
    sub_1A5244D94();
    v12 = sub_1A52451B4();
    v19[3] = sub_1A52469D4();
    v19[4] = MEMORY[0x1E69C1888];
    v19[0] = v12;
    v13 = sub_1A5244D84();
    __swift_destroy_boxed_opaque_existential_0(v19);
    v14 = [objc_opt_self() dataSourceManagerWithAssets_];
    v15 = [objc_opt_self() mediaProviderWithLibrary_];
    v16 = [objc_allocWithZone(off_1E7721830) initWithDataSourceManager:v14 mediaProvider:v15 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

    [v16 setAllowedActions_];
    [v16 setSectionBodyStyle_];
    v17 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

    [v18 pushViewController:v17 animated:1];

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1A48D3138(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 >= 1)
  {
    v95 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v13 = v6;
        v14 = *a3;
        v15 = *(*a3 + 8 * v12);
        v102 = *(*a3 + 8 * v11);
        v16 = v102;
        v103[0] = v15;
        v17 = v15;
        v18 = v16;
        v19 = sub_1A48CE1D0(v103, &v102, a5);
        if (v13)
        {
          swift_bridgeObjectRelease_n();

          return;
        }

        v20 = v19;

        v21 = v11;
        v22 = (v11 + 2);
        v98 = v21;
        v23 = 8 * v21;
        v24 = (v14 + 8 * v21 + 16);
        while (v8 != v22)
        {
          v25 = *v24;
          v102 = *(v24 - 1);
          v26 = v102;
          v103[0] = v25;
          v27 = v25;
          v28 = v26;
          v29 = sub_1A48CE1D0(v103, &v102, a5) & 1;

          ++v22;
          ++v24;
          if ((v20 & 1) != v29)
          {
            v8 = (v22 - 1);
            break;
          }
        }

        v6 = 0;
        v11 = v98;
        if (v20)
        {
          if (v8 < v98)
          {
            goto LABEL_108;
          }

          if (v98 < v8)
          {
            v30 = 8 * v8 - 8;
            v31 = v8;
            v32 = v98;
            do
            {
              if (v32 != --v31)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_112;
                }

                v33 = *(v34 + v23);
                *(v34 + v23) = *(v34 + v30);
                *(v34 + v30) = v33;
              }

              ++v32;
              v30 -= 8;
              v23 += 8;
            }

            while (v32 < v31);
          }
        }

        v12 = v8;
      }

      v35 = a3[1];
      if (v12 >= v35)
      {
        goto LABEL_117;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_104;
      }

      if (v12 - v11 >= v95)
      {
        goto LABEL_117;
      }

      v36 = (v11 + v95);
      if (__OFADD__(v11, v95))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_110:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_111:

        __break(1u);
LABEL_112:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_113:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_114:
        swift_bridgeObjectRelease_n();
        __break(1u);
        return;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v11)
      {
        goto LABEL_107;
      }

      if (v12 == v36)
      {
LABEL_117:
        if (v12 < v11)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v80 = *a3;
        v81 = *a3 + 8 * v12 - 8;
        v99 = v11;
        v82 = (v11 - v12);
        v92 = v36;
        while (2)
        {
          v97 = v12;
          v83 = *(v80 + 8 * v12);
          v93 = v82;
          v94 = v81;
          v84 = v81;
          do
          {
            v102 = *v84;
            v85 = v102;
            v103[0] = v83;
            v86 = v83;
            v87 = v85;
            v88 = sub_1A48CE1D0(v103, &v102, a5);
            if (v6)
            {
              swift_bridgeObjectRelease_n();

              return;
            }

            v89 = v88;

            if ((v89 & 1) == 0)
            {
              break;
            }

            if (!v80)
            {
              goto LABEL_110;
            }

            v90 = *v84;
            v83 = *(v84 + 8);
            *v84 = v83;
            *(v84 + 8) = v90;
            v84 -= 8;
          }

          while (!__CFADD__(v82++, 1));
          v12 = v97 + 1;
          v81 = v94 + 8;
          v82 = v93 - 1;
          if (v97 + 1 != v92)
          {
            continue;
          }

          break;
        }

        v12 = v92;
        v11 = v99;
        if (v92 < v99)
        {
          goto LABEL_103;
        }
      }

      v37 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
      }

      v39 = *(v10 + 2);
      v38 = *(v10 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v10 = sub_1A3D8598C((v38 > 1), v39 + 1, 1, v10);
      }

      *(v10 + 2) = v40;
      v41 = &v10[16 * v39];
      *(v41 + 4) = v11;
      *(v41 + 5) = v12;
      if (!*a1)
      {
        goto LABEL_113;
      }

      if (v39)
      {
        break;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v12;
      v6 = v37;
      if (v12 >= v8)
      {
        goto LABEL_83;
      }
    }

    v42 = v39;
    if (v40 >= 4)
    {
      v47 = &v10[16 * v40 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_92;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_93;
      }

      v54 = &v10[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_95;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_98;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v39 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (!v53)
        {
          if (v45 < v79)
          {
            v42 = v39 - 1;
          }

LABEL_69:
          if (v42 - 1 < v40)
          {
            if (*a3)
            {
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            goto LABEL_109;
          }

          __break(1u);
          __break(1u);
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
          __break(1u);
          __break(1u);
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      if (v39 != 2)
      {
        v69 = &v10[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_62:
        if (v64)
        {
          goto LABEL_96;
        }

        v72 = &v10[16 * v39];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_99;
        }

        if (v75 >= v63)
        {
          goto LABEL_69;
        }

        goto LABEL_3;
      }

      v43 = *(v10 + 4);
      v44 = *(v10 + 5);
      v53 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      v46 = v53;
    }

    if (v46)
    {
      goto LABEL_94;
    }

    v59 = &v10[16 * v40];
    v61 = *v59;
    v60 = *(v59 + 1);
    v62 = __OFSUB__(v60, v61);
    v63 = v60 - v61;
    v64 = v62;
    if (v62)
    {
      goto LABEL_97;
    }

    v65 = &v10[16 * v39 + 32];
    v67 = *v65;
    v66 = *(v65 + 1);
    v53 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v53)
    {
      goto LABEL_100;
    }

    if (__OFADD__(v63, v68))
    {
      goto LABEL_101;
    }

    if (v63 + v68 >= v45)
    {
      if (v45 < v68)
      {
        v42 = v39 - 1;
      }

      goto LABEL_69;
    }

    goto LABEL_62;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_83:
  if (!*a1)
  {
    goto LABEL_114;
  }

  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_105:
    v10 = sub_1A3D86884(v10);
  }

  v103[2] = v10;
  if (*(v10 + 2) >= 2uLL)
  {
    if (*a3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_111;
  }

  swift_bridgeObjectRelease_n();
}

void sub_1A48D3884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_1A48CE1D0(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1A48D3974(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1A524EA34();
  if (result < v1)
  {
    if (v1 >= -1)
    {
      if (v1 > 1)
      {
        sub_1A3C52C70(0, &qword_1EB126660);
        *((sub_1A524CAC4() & 0xFFFFFFFFFFFFFF8) + 0x10) = v1 / 2;
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1A48D3AE0(uint64_t *a1)
{
  v2 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A3D35B98(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v6 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A48D3B8C(void *a1)
{
  v44 = a1;
  v1 = sub_1A5246984();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A5245454();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244FD4();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52469C4();
  MEMORY[0x1EEE9AC00](v9);
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v11 = result;
    v45 = v6;
    v46 = v3;
    v47 = v2;
    v12 = MEMORY[0x1E69C1878];
    sub_1A48D4B40(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A52F8E10;
    sub_1A52469B4();
    aBlock[0] = v13;
    sub_1A3C29E94(&qword_1EB124A50, MEMORY[0x1E69C1878]);
    sub_1A48D4B40(0, &qword_1EB120C98, v12, MEMORY[0x1E69E62F8]);
    sub_1A3C9B014(&qword_1EB120C90, &qword_1EB120C98, v12);
    sub_1A524E224();
    sub_1A5245214();
    swift_allocObject();
    v14 = sub_1A52451F4();
    PXSharingFilterFromPhotoLibrary(v11);
    sub_1A5244CE4();
    swift_allocObject();
    v15 = v11;
    sub_1A5244CD4();
    sub_1A5244FC4();
    sub_1A5245444();
    v16 = sub_1A52451B4();
    aBlock[3] = sub_1A52469D4();
    aBlock[4] = MEMORY[0x1E69C1888];
    aBlock[0] = v16;
    sub_1A4503FF0();
    sub_1A5245434();
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v17 = objc_opt_self();
    v18 = sub_1A524CA14();
    v19 = [v15 librarySpecificFetchOptions];
    v20 = [v17 fetchAssetsWithUUIDs:v18 options:v19];

    if (!v20 || (v21 = [v20 fetchedObjects]) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v22 = v21;
    sub_1A3C52C70(0, &qword_1EB126660);
    v23 = sub_1A524CA34();

    sub_1A4440428(v23);

    v43[1] = v14;
    v24 = [v20 fetchType];
    if (v24)
    {
      v25 = v24;
      sub_1A524C674();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v20 fetchPropertySets];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1A524CF44();
    }

    else
    {
      v30 = 0;
    }

    v31 = v15;
    v32 = sub_1A524CA14();

    if (v27)
    {
      v33 = sub_1A524C634();

      v34 = v45;
      if (v30)
      {
LABEL_14:
        v35 = sub_1A524CF34();

LABEL_17:
        v36 = [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithObjects:v32 photoLibrary:v31 fetchType:v33 fetchPropertySets:v35 identifier:0 registerIfNeeded:0];

        v37 = objc_opt_self();
        v38 = v36;
        v39 = [v37 dataSourceManagerWithAssets_];
        v40 = [objc_opt_self() mediaProviderWithLibrary_];
        v41 = [objc_allocWithZone(off_1E7721830) initWithDataSourceManager:v39 mediaProvider:v40 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

        [v41 setAllowedActions_];
        [v41 setSectionBodyStyle_];
        v42 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

        [v44 pushViewController:v42 animated:1];

        (*(v46 + 8))(v5, v47);
        return (*(v48 + 8))(v8, v34);
      }
    }

    else
    {
      v33 = 0;
      v34 = v45;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    v35 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1A48D44EC(void *a1, void (*a2)(void, uint64_t, void))
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = a1[2];
  sub_1A3F41E2C(v4, 0);
  a2(0, v4, 0);
  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = (v11 + 40);
      do
      {
        v9 = *(v8 - 1) == v6 && *v8 == v5;
        if (v9 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A48D46C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524D474();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  aBlock[4] = sub_1A48D49CC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_29_9;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48D49CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A48D4BA4;
  *(v4 + 24) = v3;
  v5[4] = sub_1A3D78DD0;
  v5[5] = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3D35A90;
  v5[3] = &block_descriptor_38_0;
  _Block_copy(v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48D4B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A48D4BA4(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];

  v3 = sub_1A524C634();
  [a1 setMessage_];
}

void sub_1A48D4CAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A48D4DA4(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];

  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000002DLL, 0x80000001A53F0A20);
  sub_1A3DBD9A0();
  sub_1A524E624();
  v3 = sub_1A524C634();

  [a1 setMessage_];

  v4 = sub_1A524C634();
  [a1 addActionWithTitle:v4 style:0 action:0];
}

void sub_1A48D5200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1A48D52B0(uint64_t a1)
{
  swift_beginAccess();
  result = qword_1EB1EB240;
  if (qword_1EB1EB240)
  {
    return [qword_1EB1EB240 isEquivalentToNavigationDestination_];
  }

  return result;
}

id sub_1A48D530C(void *a1)
{
  swift_beginAccess();
  if (qword_1EB1EB240)
  {
    v1 = qword_1EB1769A0;
    v2 = qword_1EB1EB240;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1769A8);
    v4 = v2;
    v5 = a1;
    v6 = sub_1A5246F04();
    v7 = sub_1A524D254();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      swift_slowAlloc();
      *v8 = 136315394;
      v9 = v4;
      v10 = [v9 description];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }

  v11 = qword_1EB1EB240;
  qword_1EB1EB240 = a1;

  return a1;
}

void sub_1A48D5578(void *a1)
{
  swift_beginAccess();
  v2 = qword_1EB1EB240;
  if (!qword_1EB1EB240 || (sub_1A48D5884(), v3 = a1, v4 = v2, v5 = sub_1A524DBF4(), v3, v4, (v5 & 1) == 0))
  {
    if (qword_1EB1769A0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB1769A8);
    v7 = a1;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D254();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136315394;
      v11 = qword_1EB1EB240;
      sub_1A48D582C();
      v12 = v11;
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }

  v13 = qword_1EB1EB240;
  qword_1EB1EB240 = 0;
}

void sub_1A48D57C8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1769A8);
  __swift_project_value_buffer(v0, qword_1EB1769A8);
  sub_1A5246EF4();
}

void sub_1A48D582C()
{
  if (!qword_1EB144870)
  {
    sub_1A48D5884();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144870);
    }
  }
}

unint64_t sub_1A48D5884()
{
  result = qword_1EB126738;
  if (!qword_1EB126738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126738);
  }

  return result;
}

uint64_t sub_1A48D58E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1A4545B88(0, &qword_1EB13C120);
  v31 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  sub_1A4545AE0(0, &qword_1EB13D150, MEMORY[0x1E697F948]);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = sub_1A5243624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545B88(0, &qword_1EB125960);
  v14 = v13;
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - v15);
  sub_1A5242954();
  v17 = *(v35 + 16);

  if ((v17 & 0x8000000000000000) == 0)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E69C2530], v9);
    v18 = sub_1A3C36888();
    v19 = sub_1A3C30368();
    v20 = sub_1A3C5A374();
    sub_1A414D324(v17, v12, v19 & 1, v20 & 1, v16);
    (*(v10 + 8))(v12, v9);
    v21 = v29;
    (*(v29 + 16))(v8, v16, v14);
    swift_storeEnumTagMultiPayload();
    v33 = &type metadata for LemonadePeopleShelfProvider;
    v34 = v18;
    swift_getOpaqueTypeConformance2();
    v33 = &type metadata for LemonadePeopleShelfProvider;
    v34 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    return (*(v21 + 8))(v16, v14);
  }

  v23 = v31;
  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v24 = PhotoKitItem.keyAssets.getter();
    if (!v24)
    {
      v25 = 1;
      goto LABEL_7;
    }
  }

  v25 = 0;
LABEL_7:
  v26 = sub_1A3C36888();
  sub_1A414D6DC(a1, v17 & 0x7FFFFFFFFFFFFFFFLL, v25);
  v27 = v28;
  (*(v28 + 16))(v8, v5, v23);
  swift_storeEnumTagMultiPayload();
  v33 = &type metadata for LemonadePeopleShelfProvider;
  v34 = v26;
  swift_getOpaqueTypeConformance2();
  v33 = &type metadata for LemonadePeopleShelfProvider;
  v34 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();

  return (*(v27 + 8))(v5, v23);
}

uint64_t sub_1A48D5F40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48D5F9C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v2(v3);
}

void sub_1A48D6048(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView);
  v5 = *(v1 + v3);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  }

  else
  {
    v6 = 0;
  }

  [v4 setHostingController_];
}