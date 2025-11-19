uint64_t sub_1C10CE55C(void *a1, uint64_t a2)
{
  v10[3] = MEMORY[0x1E69E69B8];
  v10[4] = MEMORY[0x1E69E69C8];
  v10[0] = swift_allocObject();
  sub_1C0FF4B88(a2, v10[0] + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  LOBYTE(v4) = sub_1C1262420();
  sub_1C0FFC7B0(v9, &qword_1EBE93540);
  sub_1C0FFC7B0(v10, &qword_1EBE93540);
  return v4 & 1;
}

void sub_1C10CE66C(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  if (a1)
  {
    if (v3)
    {
      sub_1C0FE7B20();
      v4 = v3;
      v5 = a1;
      v6 = sub_1C12666B0();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 invalidate];
}

void sub_1C10CE70C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer) = a1;
  v2 = a1;
  sub_1C10CE66C(v3);
}

uint64_t sub_1C10CE76C()
{
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C10CE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1C0FDB800(a1, &v20 - v13, &qword_1EBE91E68);
  sub_1C0FDB800(a2, &v14[v15], &qword_1EBE91E68);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_1C0FDB800(v14, v10, &qword_1EBE91E68);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C10CFC90(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v14, &qword_1EBE91E68);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v14, &qword_1EBE91EB8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v14, &qword_1EBE91E68);
  v16 = 0;
  return v16 & 1;
}

BOOL sub_1C10CEB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return !static PhotosInlinePlaybackEnvironment.Configuration.== infix(_:_:)(v7, v5);
}

uint64_t sub_1C10CEB74(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB800(a1, v9, &qword_1EBE8FE30);
  sub_1C0FDB800(a2, &v11, &qword_1EBE8FE30);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_1C0FFC7B0(v9, &qword_1EBE8FE30);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1C0FFC7B0(v9, &qword_1EBE908E0);
    v4 = 1;
    return v4 & 1;
  }

  sub_1C0FDB800(v9, v8, &qword_1EBE8FE30);
  if (!*(&v12 + 1))
  {
    sub_1C0FD1A08(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x1C68F0200](v8, v6);
  sub_1C0FD1A08(v6);
  sub_1C0FD1A08(v8);
  sub_1C0FFC7B0(v9, &qword_1EBE8FE30);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_1C10CECAC()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id;
  sub_1C1261E20();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_coordinateSpaceName;
  sub_1C1263D00();
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  swift_weakDestroy();

  sub_1C0FCF004(*(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange));
  v5 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakChildren;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550);
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakPlayerModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548);
  OUTLINED_FUNCTION_4_2();
  (*(v8 + 8))(v0 + v7);
  swift_unknownObjectRelease();
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollGeometry, &qword_1EBE93560);

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate, &qword_1EBE91E68);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID, &qword_1EBE8FE30);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID, &qword_1EBE93538);

  v9 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v10 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_1C10CEEDC()
{
  sub_1C10CECAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosInlinePlaybackContainerModel()
{
  result = qword_1EDE7FD50;
  if (!qword_1EDE7FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C10CEF88()
{
  sub_1C1261E20();
  if (v0 <= 0x3F)
  {
    sub_1C1263D00();
    if (v1 <= 0x3F)
    {
      sub_1C10CF2C8(319, &qword_1EBE93528, type metadata accessor for PhotosInlinePlaybackContainerModel, MEMORY[0x1E69C43F0]);
      if (v2 <= 0x3F)
      {
        sub_1C10CF2C8(319, &qword_1EDE7C0A8, type metadata accessor for PhotosInlinePlayerModel, MEMORY[0x1E69C43F0]);
        if (v3 <= 0x3F)
        {
          sub_1C10CF2C8(319, &qword_1EDE7BFA8, MEMORY[0x1E697E4B8], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C10CF2C8(319, &qword_1EDE82F30, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C1261F70();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C10CF2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C10CF374@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id;
  v5 = sub_1C1261E20();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C10CF414()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C11C0E00(v2);
    sub_1C10CC4F4(v2);
  }

  return result;
}

void sub_1C10CF4D4(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C10CE410();
    }
  }
}

uint64_t sub_1C10CF534(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_1C10CCA58();
  if (v11 != 2 && (v11 & 1) == 0)
  {
    if (a3)
    {
      v12 = sub_1C10CDE2C();
      OUTLINED_FUNCTION_13_16(v12);
      sub_1C10CC19C(v16);
    }

    else
    {
      v13 = sub_1C10CDDEC();
      OUTLINED_FUNCTION_13_16(v13);
      sub_1C10CC170(v16);
    }
  }

  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_1C10CF664(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  v10 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v10);
    v15 = v16;
    if (!sub_1C108D334())
    {
      sub_1C0FE37B4();
      v11 = *(*a1 + 16);
      sub_1C0FE3898();
      v12 = *a1;
      *(v12 + 16) = v11 + 1;
      sub_1C1094E90(v16, v12 + 40 * v11 + 32);
      *a1 = v12;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  MEMORY[0x1EEE9AC00](v10);
  v15 = v16;
  result = sub_1C1106A94(sub_1C10CFE30, &v14);
  if (*(*a1 + 16) >= result)
  {
    sub_1C1106718();
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10CF7DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  __swift_allocate_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 16))();
  if (a2)
  {
    sub_1C10CBAF4(&v32);
    if (v35 == 1)
    {
      sub_1C1094E90(v37, &v32);
      v8 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
      OUTLINED_FUNCTION_7_22();
      swift_beginAccess();
      sub_1C10CFBD4(&v32, a3 + v8, &qword_1EBE93538);
      swift_endAccess();
      v9 = objc_opt_self();
      sub_1C10CBAF4(&v32);
      v10 = v36;
      v11 = swift_allocObject();
      swift_weakInit();
      sub_1C1094E90(v37, v31);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      sub_1C0F9DDE4(v31, v12 + 24);
      v29 = sub_1C10CFB74;
      v30 = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C10CB7AC;
      v28 = &block_descriptor_8;
      v13 = _Block_copy(aBlock);

      v14 = [v9 scheduledTimerWithTimeInterval:0 repeats:v13 block:v10];
      _Block_release(v13);
LABEL_9:
      sub_1C10CE70C(v14);
      return __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }
  }

  v15 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
  swift_beginAccess();
  sub_1C0FDB800(a3 + v15, aBlock, &qword_1EBE93538);
  v16 = v28;
  if (v28)
  {
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(aBlock, v28);
    *(&v33 + 1) = v16;
    v34 = *(v17 + 1);
    __swift_allocate_boxed_opaque_existential_1(&v32);
    OUTLINED_FUNCTION_15_1();
    (*(v18 + 16))();
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  else
  {
    sub_1C0FFC7B0(aBlock, &qword_1EBE93538);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  v19 = v38;
  v20 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v28 = v19;
  v29 = *(v20 + 8);
  __swift_allocate_boxed_opaque_existential_1(aBlock);
  OUTLINED_FUNCTION_15_1();
  (*(v21 + 16))();
  LOBYTE(v19) = sub_1C1262420();
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v22, v23);
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v24, v25);
  if (v19)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    OUTLINED_FUNCTION_7_22();
    swift_beginAccess();
    sub_1C10CFBD4(&v32, a3 + v15, &qword_1EBE93538);
    swift_endAccess();
    v14 = 0;
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_1C10CFBD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_1C10CFC40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 24))(v3, v4);
  return v3;
}

uint64_t sub_1C10CFC90(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1C10CFDE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  v4 = v1[1];
  result = v1[2];
  v5 = *v1;
  *(v2 + 48) = *(v1 + 6);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

unint64_t sub_1C10CFECC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PhotosFolderMultiAssetView.init(_:columns:aspectRatio:cornerRadiusOverlayColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = a2;
  }

  if (a5)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = a4;
  }

  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a7 + 40), __src, 0xD1uLL);
  *(a7 + 256) = swift_getKeyPath();
  *(a7 + 264) = 0;
  v12 = type metadata accessor for PhotosFolderMultiAssetView();
  v13 = *(v12 + 44);
  *(a7 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v14 = a7 + *(v12 + 48);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *a7 = a1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  *(a7 + 24) = a6;

  v16 = sub_1C10D00C8(v15, v10);

  *(a7 + 32) = v16;
  return result;
}

uint64_t type metadata accessor for PhotosFolderMultiAssetView()
{
  result = qword_1EDE80F48;
  if (!qword_1EDE80F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10D00C8(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_28;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v4 = 0;
  }

  while (1)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      goto LABEL_26;
    }

    v5 = 2 * a2;
    if (((2 * a2) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v4 = sub_1C1266BB0();
  }

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = 0;
      if (a1 && v6 < v4)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C68F02D0](v6, a1);
        }

        else
        {
          if (v6 < 0)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v8 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
        }
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE408C();
        v7 = v11;
      }

      v9 = *(v7 + 16);
      if (v9 >= *(v7 + 24) >> 1)
      {
        sub_1C0FE408C();
        v7 = v12;
      }

      swift_unknownObjectRelease();
      *(v7 + 16) = v9 + 1;
      v10 = v7 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      a2 = ++v6;
      if (v5 == v6)
      {
        return v7;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C10D0268()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 256);
  if (*(v0 + 264) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C10D03B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosFolderMultiAssetView();
  sub_1C10D1A1C(v1 + *(v10 + 44), v9, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
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

BOOL sub_1C10D05B8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PhotosFolderMultiAssetView() + 48);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 == 5;
}

uint64_t sub_1C10D071C()
{
  v1 = sub_1C12629F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v9 = *(v0 + 24);
  }

  else
  {
    memcpy(v24, (v0 + 40), 0xD1uLL);
    memcpy(v25, (v0 + 40), 0xD1uLL);
    if (sub_1C100D688(v25) == 1)
    {
      nullsub_1(v25);
      memcpy(v21, v24, 0xD1uLL);
      v10 = nullsub_1(v21);
      memcpy(v23, v10, sizeof(v23));
      memcpy(v22, v24, 0xD1uLL);
      v11 = nullsub_1(v22);
      sub_1C100D690(v11, &v20);
    }

    else
    {
      nullsub_1(v25);
      memcpy(v21, v24, 0xD1uLL);
      v19 = *nullsub_1(v21);
      memcpy(v22, v24, 0xD1uLL);
      nullsub_1(v22);

      sub_1C1266420();
      v12 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v24, &qword_1EBE91C80);
      (*(v6 + 8))(v8, v5);
    }

    memcpy(v22, v23, 0xD0uLL);
    v13 = v22[16];
    v14 = v22[17];
    v15 = v22[18];
    v16 = v22[19];
    sub_1C1012620(v22[16], v22[17], v22[18], v22[19]);
    sub_1C100C7D0(v22);
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v16;
    sub_1C10D03B0(v4);
    sub_1C10D0268();
    sub_1C10C37D8();
    v9 = v17;
    (*(v2 + 8))(v4, v1);
    sub_1C1001C84(v21[0], v21[1], v21[2], v21[3]);
  }

  return v9;
}

uint64_t sub_1C10D0A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PhotosAssetView();
  result = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v2 + 8);
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = a1[1];
  v29 = a2;
  if (v9 == v10 - 1)
  {
LABEL_5:
    swift_unknownObjectRetain();
    v12 = sub_1C10D05B8();
    v13 = sub_1C1200D04();
    [v13 setNetworkAccessAllowed_];
    *(v8 + 19) = swift_getKeyPath();
    v8[160] = 0;
    v14 = v5[12];
    *&v8[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v15 = &v8[v5[13]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = &v8[v5[14]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    *v8 = 0;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    v8[48] = 1;
    v8[8] = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 52) = !v12;
    *(v8 + 60) = 0;
    v8[68] = !v12;
    v8[69] = v12;
    *(v8 + 9) = 0;
    v8[80] = 1;
    *(v8 + 11) = v11;
    *(v8 + 12) = 0;
    *(v8 + 13) = v13;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    v8[144] = 2;
    v17 = sub_1C10D071C();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0);
    v19 = v29;
    v20 = (v29 + *(v18 + 36));
    v21 = *(sub_1C1263E90() + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_1C12639D0();
    (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
    sub_1C1263D30();
    *v20 = v24;
    *(v20 + 1) = v25;
    *(v20 + 2) = v26;
    *(v20 + 3) = v27;
    *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0) + 36)] = v17;
    return sub_1C10D19BC(v8, v19, type metadata accessor for PhotosAssetView);
  }

  if (v10 + 0x4000000000000000 < 0)
  {
    goto LABEL_7;
  }

  if (!__OFSUB__(2 * v10, 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t PhotosFolderMultiAssetView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C12659A0();
  a1[1] = v3;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93578) + 44);
  *v4 = sub_1C1263AA0();
  *(v4 + 1) = 0x4010000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93580);
  return sub_1C10D0E20(v1, &v4[*(v5 + 44)]);
}

uint64_t sub_1C10D0E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  *v15 = sub_1C12638E0();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935B8);
  sub_1C10D1038(a1, &v15[*(v16 + 44)]);
  *v12 = sub_1C12638E0();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  sub_1C10D12D8(a1, &v12[*(v16 + 44)]);
  sub_1C10D1A1C(v15, v9, &qword_1EBE935B0);
  sub_1C10D1A1C(v12, v6, &qword_1EBE935B0);
  sub_1C10D1A1C(v9, a2, &qword_1EBE935B0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C0);
  sub_1C10D1A1C(v6, a2 + *(v17 + 48), &qword_1EBE935B0);
  sub_1C0FD1A5C(v12, &qword_1EBE935B0);
  sub_1C0FD1A5C(v15, &qword_1EBE935B0);
  sub_1C0FD1A5C(v6, &qword_1EBE935B0);
  return sub_1C0FD1A5C(v9, &qword_1EBE935B0);
}

uint64_t sub_1C10D1038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = type metadata accessor for PhotosFolderMultiAssetView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a1 + 8);
  if (v11 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1C10CFECC(0, v11, *(a1 + 32));
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((v14 & 1) == 0)
  {
LABEL_3:
    sub_1C112F908(v2, v3, v4, v5);
    v16 = v15;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v22[0] = a2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_13;
  }

  if (v18 != (v5 >> 1) - v4)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  v22[1] = v16;
  sub_1C10D1834(a1, v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_1C10D19BC(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PhotosFolderMultiAssetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0);
  sub_1C0FDB6D4(&qword_1EBE935D8, &qword_1EBE935C8);
  sub_1C10D18B0();
  sub_1C10D1968();
  return sub_1C1265690();
}

uint64_t sub_1C10D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = type metadata accessor for PhotosFolderMultiAssetView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a1 + 8);
  if (v11 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (2 * v11 < v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = sub_1C10CFECC(v11, 2 * v11, *(a1 + 32));
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((v14 & 1) == 0)
  {
LABEL_4:
    sub_1C112F908(v2, v3, v4, v5);
    v16 = v15;
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v22[0] = a2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_15;
  }

  if (v18 != (v5 >> 1) - v4)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

LABEL_12:
  v22[1] = v16;
  sub_1C10D1834(a1, v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_1C10D19BC(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PhotosFolderMultiAssetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0);
  sub_1C0FDB6D4(&qword_1EBE935D8, &qword_1EBE935C8);
  sub_1C10D18B0();
  sub_1C10D1968();
  return sub_1C1265690();
}

void sub_1C10D15B8()
{
  sub_1C10D1780();
  if (v0 <= 0x3F)
  {
    sub_1C10D17E4(319, &qword_1EDE76CE0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C10D17E4(319, &unk_1EDE76AE0, &type metadata for PhotosMultiAssetViewItem, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C10D17E4(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C10D17E4(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C1011E54();
            if (v5 <= 0x3F)
            {
              sub_1C10D17E4(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
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

void sub_1C10D1780()
{
  if (!qword_1EDE76AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93590);
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76AA0);
    }
  }
}

void sub_1C10D17E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C10D1834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosFolderMultiAssetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10D18B0()
{
  result = qword_1EBE935E0;
  if (!qword_1EBE935E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE935D0);
    sub_1C0FF746C();
    sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE935E0);
  }

  return result;
}

unint64_t sub_1C10D1968()
{
  result = qword_1EBE935F0;
  if (!qword_1EBE935F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE935F0);
  }

  return result;
}

uint64_t sub_1C10D19BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C10D1A1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for PhotosFolderMultiAssetView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1C1001C10(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152), *(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248));
  sub_1C0FA03F4(*(v2 + 256), *(v2 + 264));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_1C0FA03F4(*(v2 + *(v1 + 48)), *(v2 + *(v1 + 48) + 8));

  return swift_deallocObject();
}

uint64_t sub_1C10D1C28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PhotosFolderMultiAssetView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *sub_1C10D1CEC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  __src[66] = a1 & 1;
  sub_1C10D1D38(a1 & 1, a2, a3, a4 & 1, __src);
  return memcpy(a5, __src, 0x43uLL);
}

void *sub_1C10D1D38@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a4)
  {
    v30 = a2;
    v31 = a3;
    swift_unknownObjectRetain();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(__src, 0, 26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935F8);
    sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8);
    sub_1C1263C20();
    v28 = BYTE9(__dst[1]);
    v27 = 0;
    *__src = __dst[0];
    *&__src[16] = *&__dst[1];
    *&__src[24] = WORD4(__dst[1]);
    __src[65] = 0;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93610);
    sub_1C10D22F4();
    sub_1C0FDB6D4(&qword_1EBE93620, &qword_1EBE93610);
    sub_1C1263C20();
    return memcpy(a5, __dst, 0x42uLL);
  }

  sub_1C1266420();
  v22 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FF9034(a2, a3, 0);
  (*(v11 + 8))(v13, v10);
  if (!v30)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = v31;
  ObjectType = swift_getObjectType();
  (*(v14 + 208))(ObjectType, v14);
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = swift_getObjectType();
  (*(v17 + 8))(__dst, v18, v17);
  swift_unknownObjectRelease();
  v19 = __dst[0];
  v20 = a1 & 1;
  if (LOBYTE(__dst[0]) != 3)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    KeyPath = swift_getKeyPath();
    v27 = 0;
    v28 = 1;
    __src[0] = v20;
    *&__src[8] = nullsub_1;
    *&__src[16] = 0;
    *&__src[24] = sub_1C10D23AC;
    *&__src[32] = v23;
    *&__src[40] = nullsub_1;
    *&__src[48] = 0;
    *&__src[56] = KeyPath;
    *&__src[64] = 256;
    goto LABEL_8;
  }

  swift_getKeyPath();

  *__src = v20;
  *&__src[8] = 0x4044000000000000;
  *&__src[16] = v21;
  *&__src[24] = 256;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935F8);
  sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8);
  sub_1C1263C20();
  v28 = BYTE9(__dst[1]);
  v27 = 0;
  BYTE1(__dst[4]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93610);
  sub_1C10D22F4();
  sub_1C0FDB6D4(&qword_1EBE93620, &qword_1EBE93610);
  sub_1C1263C20();

  memcpy(__dst, __src, 0x42uLL);
  return memcpy(a5, __dst, 0x42uLL);
}

uint64_t sub_1C10D2244@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = a1 != 0;
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = sub_1C1023064;
  *(a2 + 40) = result;
  return result;
}

unint64_t sub_1C10D22F4()
{
  result = qword_1EBE93618;
  if (!qword_1EBE93618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93608);
    sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93618);
  }

  return result;
}

uint64_t EnvironmentValues.oneUpChromeActionsDelegate.getter()
{
  sub_1C10D2430();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

unint64_t sub_1C10D2430()
{
  result = qword_1EDE7C7D8[0];
  if (!qword_1EDE7C7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C7D8);
  }

  return result;
}

uint64_t sub_1C10D2484@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeActionsDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10D24B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return EnvironmentValues.oneUpChromeActionsDelegate.setter(v2, v1);
}

uint64_t EnvironmentValues.oneUpChromeActionsDelegate.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakChromeActionDelegateReference();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  sub_1C0FEB470(v3, a2);
  sub_1C10D2430();
  sub_1C1263800();
  return swift_unknownObjectRelease();
}

void (*EnvironmentValues.oneUpChromeActionsDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_1C10D2430();
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
  return sub_1C10D2650;
}

void sub_1C10D2650(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  type metadata accessor for WeakChromeActionDelegateReference();
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

uint64_t Array<A>.identical(to:)()
{
  sub_1C12661A0();
  swift_getWitnessTable();
  return sub_1C1265FB0() & 1;
}

uint64_t Optional<A>.identical(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = *(v13 + 16);
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = *(v7 + 16);
  v21(v12, v4, a2, v18);
  OUTLINED_FUNCTION_0_38(v12);
  if (v22)
  {
    v9 = v12;
  }

  else
  {
    v31 = v4;
    v30 = *(v34 + 32);
    v30(v20, v12, v14);
    (v21)(v9, a1, a2);
    OUTLINED_FUNCTION_0_38(v9);
    if (!v22)
    {
      v25 = v32;
      v30(v32, v9, v14);
      v26 = (*(v33 + 8))(v25, v14);
      v27 = *(v34 + 8);
      v27(v25, v14);
      v27(v20, v14);
      return v26 & 1;
    }

    (*(v34 + 8))(v20, v14);
    v4 = v31;
  }

  (*(v7 + 8))(v9, a2);
  OUTLINED_FUNCTION_0_38(v4);
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0_38(a1);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = v23 ^ v24;
  return v26 & 1;
}

uint64_t PhotosTripCellSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

__n128 PhotosTripCell.init(_:size:titlePadding:content:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = *a2;
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a9;
  __src[4] = a10;
  v16 = type metadata accessor for PhotosTripCell();
  v17 = a8 + v16[18];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v16[19];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v18), __src, 0xD1uLL);
  v19 = v16[20];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v20 = a8 + v16[21];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  a4();
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  *(a8 + v16[16]) = v15;
  v21 = a8 + v16[17];
  result = *a3;
  v23 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v23;
  *(v21 + 32) = *(a3 + 32);
  return result;
}

void sub_1C10D2D88(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 72);
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

uint64_t sub_1C10D2EE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 76);
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

uint64_t sub_1C10D3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1C10D1A1C(v2 + *(a1 + 80), &v17 - v12, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    return (*(v14 + 32))(a2, v13);
  }

  else
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1C10D32E8(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 84);
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

uint64_t PhotosTripCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_17_17();
  v77 = v2;
  sub_1C1263C30();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v4 = sub_1C1263190();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640);
  v78 = a1;
  v135 = *(a1 + 48);
  v136 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v133 = WitnessTable;
  v134 = v135;
  OUTLINED_FUNCTION_19_0();
  v6 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v131 = v6;
  v132 = sub_1C0FDB6D4(v7, &qword_1EBE91C40);
  v69 = v132;
  v127 = v4;
  v128 = v5;
  v129 = swift_getWitnessTable();
  v130 = sub_1C10D3E38();
  type metadata accessor for PhotosContentTitleCard();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  sub_1C1263190();
  OUTLINED_FUNCTION_7_23();
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x1E697E5D8];
  v8 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v123 = v8;
  v124 = sub_1C0FDB6D4(v9, qword_1EBE92178);
  v10 = swift_getWitnessTable();
  v70 = MEMORY[0x1E6980A18];
  v76 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v121 = v10;
  v122 = v76;
  v119 = swift_getWitnessTable();
  v120 = v132;
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v74 = sub_1C0FDB6D4(v12, &unk_1EBE92ED0);
  v117 = v11;
  v118 = v74;
  v13 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  v71 = sub_1C0FDB6D4(v14, &unk_1EBE91C30);
  v115 = v13;
  v116 = v71;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_6_0();
  v83 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v84 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v68 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v66 - v19;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93668);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93670);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  type metadata accessor for PhotosLegibilityBlurModifier();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  OUTLINED_FUNCTION_17_17();
  v82 = sub_1C1263190();
  v20 = v69;
  v113 = WitnessTable;
  v114 = v69;
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v23 = sub_1C0FDB6D4(v22, &qword_1EBE93668);
  v111 = v21;
  v112 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
  v109 = v24;
  v110 = v25;
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_24();
  v29 = sub_1C10D7E94(v27, v28);
  v107 = v26;
  v108 = v29;
  v105 = swift_getWitnessTable();
  v106 = v76;
  v103 = swift_getWitnessTable();
  v104 = v20;
  v101 = swift_getWitnessTable();
  v102 = v74;
  v99 = swift_getWitnessTable();
  v100 = v71;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  WitnessTable = type metadata accessor for PhotosDetailsPresentationSourceView();
  v30 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v66 - v37;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v76 = v40;
  v77 = v39;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v82 = &v66 - v42;
  if (MEMORY[0x1C68F0CE0](v41))
  {
    sub_1C10D3F1C(v78, v35);
    OUTLINED_FUNCTION_0_22();
    v43 = swift_getWitnessTable();
    v44 = sub_1C100D614();
    v87 = v43;
    v88 = v44;
    OUTLINED_FUNCTION_9_0();
    v45 = swift_getWitnessTable();
    v46 = OUTLINED_FUNCTION_18_18();
    sub_1C0FDBA4C(v46, v47, v45);
    v48 = *(v32 + 8);
    v49 = OUTLINED_FUNCTION_18_18();
    v48(v49);
    sub_1C0FDBA4C(v38, v30, v45);
    v85 = swift_getWitnessTable();
    v86 = v44;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_18_18();
    sub_1C1112D68();
    v50 = OUTLINED_FUNCTION_18_18();
    v48(v50);
    (v48)(v38, v30);
  }

  else
  {
    v51 = v67;
    sub_1C10D4DBC(v78, v67);
    v79 = &unk_1C12AF200;
    v52 = swift_getWitnessTable();
    v53 = sub_1C100D614();
    v97 = v52;
    v98 = v53;
    OUTLINED_FUNCTION_9_0();
    v54 = v84;
    v55 = swift_getWitnessTable();
    v56 = v66;
    sub_1C0FDBA4C(v51, v54, v55);
    v57 = *(v68 + 8);
    v57(v51, v54);
    sub_1C0FDBA4C(v56, v54, v55);
    v95 = swift_getWitnessTable();
    v96 = v53;
    swift_getWitnessTable();
    sub_1C1112E18();
    v57(v51, v54);
    v57(v56, v54);
  }

  OUTLINED_FUNCTION_0_22();
  v58 = swift_getWitnessTable();
  v59 = sub_1C100D614();
  v93 = v58;
  v94 = v59;
  OUTLINED_FUNCTION_9_0();
  v60 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v92 = v59;
  v61 = swift_getWitnessTable();
  v89 = v60;
  v90 = v61;
  OUTLINED_FUNCTION_19_0();
  v62 = v77;
  v63 = swift_getWitnessTable();
  v64 = v82;
  sub_1C0FDBA4C(v82, v62, v63);
  return (*(v76 + 8))(v64, v62);
}

unint64_t sub_1C10D3E38()
{
  result = qword_1EDE774B0;
  if (!qword_1EDE774B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640);
    sub_1C0FDB6D4(&unk_1EDE7A388, &unk_1EBE93650);
    sub_1C0FDB6D4(&qword_1EDE7B988, &qword_1EBE93660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774B0);
  }

  return result;
}

uint64_t sub_1C10D3F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v105 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v105);
  v106 = (&v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v82 = a1;
  v102 = v4;
  *&v123 = sub_1C1263190();
  v108 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v100 = &v81 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  *&v121 = sub_1C1263190();
  v110 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v101 = &v81 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93668);
  v7 = sub_1C1263190();
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v81 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93670);
  v87 = v7;
  v9 = sub_1C1263190();
  v107 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v81 - v10;
  type metadata accessor for PhotosLegibilityBlurModifier();
  v88 = v9;
  v11 = sub_1C1263190();
  v117 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v81 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  v116 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v13 = sub_1C1263190();
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v81 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  v15 = sub_1C1263190();
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v81 - v16;
  v120 = *(a1 + 48);
  v156 = v120;
  v157 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v83 = WitnessTable;
  v18 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v154 = WitnessTable;
  v155 = v18;
  v19 = swift_getWitnessTable();
  v86 = v19;
  v20 = sub_1C0FDB6D4(&qword_1EBE93678, &qword_1EBE93668);
  v152 = v19;
  v153 = v20;
  v21 = swift_getWitnessTable();
  v85 = v21;
  v22 = sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
  v150 = v21;
  v151 = v22;
  v23 = swift_getWitnessTable();
  v84 = v23;
  v24 = sub_1C10D7E94(qword_1EDE79E80, type metadata accessor for PhotosLegibilityBlurModifier);
  v148 = v23;
  v149 = v24;
  v118 = v11;
  v25 = swift_getWitnessTable();
  v26 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v90 = v25;
  v146 = v25;
  v147 = v26;
  v144 = swift_getWitnessTable();
  v145 = v18;
  v27 = swift_getWitnessTable();
  v28 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v142 = v27;
  v143 = v28;
  v114 = v13;
  v29 = swift_getWitnessTable();
  v30 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30);
  v89 = v29;
  v140 = v29;
  v141 = v30;
  v31 = swift_getWitnessTable();
  v116 = v15;
  v91 = v31;
  v32 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v94 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v92 = &v81 - v33;
  v96 = v34;
  v35 = sub_1C1263190();
  v97 = *(v35 - 8);
  v98 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v93 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v95 = &v81 - v38;
  v39 = v82;
  sub_1C10D2EE4(v82, v158);
  sub_1C100C7D0(v158);
  v40 = *v158;
  if (sub_1C10D3454(v39))
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40 * 0.5;
  }

  v42 = v100;
  v43 = v102;
  sub_1C12649E0();
  v44 = *(v105 + 20);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_1C12639D0();
  v47 = v106;
  (*(*(v46 - 8) + 104))(v106 + v44, v45, v46);
  *v47 = v41;
  v47[1] = v41;
  sub_1C10D7E94(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  v48 = v123;
  sub_1C1009334();
  v49 = v101;
  sub_1C1265050();
  sub_1C100867C(v47);
  (*(v108 + 8))(v42, v48);
  sub_1C1265960();
  v50 = *(v39 + 16);
  *&v51 = v50;
  *(&v51 + 1) = v43;
  v123 = *(v39 + 32);
  v124 = v51;
  v125 = v123;
  v52 = v122;
  v126 = v120;
  v127 = v122;
  sub_1C10D7EEC();
  v53 = v104;
  v54 = v121;
  sub_1C1264F60();
  v55 = v52;
  v56 = v99;
  (*(v110 + 8))(v49, v54);
  sub_1C1265190();
  v57 = v103;
  v58 = v87;
  sub_1C1264BD0();

  (*(v109 + 8))(v53, v58);
  v59 = v88;
  View.photosLegibilityBlur(enabled:height:radius:edge:)(1, 0, 1, 0, 1, 3, v88, v84);
  (*(v107 + 8))(v57, v59);
  sub_1C10D2EE4(v39, v136);
  memcpy(v135, v137, sizeof(v135));
  sub_1C100D690(v136, v139);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v60 = qword_1EDE82B08;
  v61 = qword_1EDE82B10;
  v121 = xmmword_1EDE82B18;
  v62 = qword_1EDE82B28;

  sub_1C100C7D0(v136);

  *&v139[0] = v60;
  *(&v139[0] + 1) = v61;
  v139[1] = v121;
  *&v139[2] = v62;
  memcpy(&v139[2] + 8, v135, 0xA8uLL);
  v63 = v111;
  v64 = v118;
  View.cellStyle(for:)(v139, v90, v111);
  memcpy(v138, v139, sizeof(v138));
  sub_1C100C7D0(v138);
  (*(v117 + 8))(v56, v64);
  LOBYTE(v139[0]) = 1;
  sub_1C1061D74();
  v66 = v113;
  v65 = v114;
  sub_1C12649C0();
  (*(v112 + 8))(v63, v65);
  v134 = 2;
  v133 = 2;
  sub_1C10D2EE4(v39, v139);
  v67 = v139[0];
  v121 = v139[1];
  v68 = *&v139[2];

  sub_1C100C7D0(v139);
  v130 = v67;
  v131 = v121;
  v132 = v68;
  v69 = v92;
  v70 = v116;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v134, 0, 0, v116, v92);

  (*(v115 + 8))(v66, v70);
  *(&v131 + 1) = v50;
  v132 = *(&v123 + 1);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v130);
  (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v55, v50);
  v72 = v96;
  v73 = swift_getWitnessTable();
  v74 = v93;
  View.selectionStyle(for:)(&v130, v72, v73);
  (*(v94 + 8))(v69, v72);
  __swift_destroy_boxed_opaque_existential_0Tm(&v130);
  v75 = sub_1C100D614();
  v128 = v73;
  v129 = v75;
  v76 = v98;
  v77 = swift_getWitnessTable();
  v78 = v95;
  sub_1C0FDBA4C(v74, v76, v77);
  v79 = *(v97 + 8);
  v79(v74, v76);
  sub_1C0FDBA4C(v78, v76, v77);
  return (v79)(v78, v76);
}

uint64_t sub_1C10D4DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  *&v64 = a1;
  v3 = *(a1 + 24);
  sub_1C1263190();
  v62 = v3;
  sub_1C1263C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v4 = sub_1C1263190();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640);
  v92 = *(a1 + 48);
  v93 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v61 = v92;
  v91 = v92;
  v6 = swift_getWitnessTable();
  v60 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v88 = v6;
  v89 = v60;
  v94[0] = v4;
  v94[1] = v5;
  v94[2] = swift_getWitnessTable();
  v94[3] = sub_1C10D3E38();
  type metadata accessor for PhotosContentTitleCard();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  sub_1C1263190();
  v86 = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E5D8];
  v84 = swift_getWitnessTable();
  v85 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178);
  v82 = swift_getWitnessTable();
  v83 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v80 = swift_getWitnessTable();
  v81 = v60;
  v78 = swift_getWitnessTable();
  v79 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v76 = swift_getWitnessTable();
  v77 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30);
  v51[0] = swift_getWitnessTable();
  v7 = sub_1C12655C0();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v51 - v8;
  v10 = swift_getWitnessTable();
  v55 = v7;
  v51[1] = v10;
  v11 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = v51 - v12;
  v59 = v13;
  v52 = sub_1C1263190();
  v60 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v56 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = v51 - v16;
  v17 = sub_1C12629F0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  v24 = v64;
  sub_1C10D2EE4(v64, v94);
  sub_1C100C7D0(v94);
  sub_1C10D3454(v24);
  sub_1C10D3100(v24, v23);
  (*(v18 + 104))(v20, *MEMORY[0x1E697DBB8], v17);
  LOBYTE(v7) = sub_1C12629D0();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v23, v17);
  if (v7)
  {
    if (qword_1EDE7B858 != -1)
    {
      swift_once();
    }

    v26 = &qword_1EDE7B860;
  }

  else
  {
    if (qword_1EDE7B878 != -1)
    {
      swift_once();
    }

    v26 = &qword_1EDE7B880;
  }

  v27 = *v26;

  v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v30 = v64;
  v31 = *(v64 + 16);
  v32 = v62;
  v51[-8] = v31;
  v51[-7] = v32;
  v33 = *(v30 + 32);
  v62 = *(v30 + 40);
  v34 = v62;
  v51[-6] = v33;
  v51[-5] = v34;
  v35 = v65;
  v51[-4] = v61;
  v51[-3] = v35;
  v51[-2] = v29;
  v51[-1] = v27;
  sub_1C1009330();
  sub_1C12655B0();
  v72 = 2;
  v71 = 1;
  sub_1C10D2EE4(v30, v73);
  v36 = v73[0];
  v37 = v73[1];
  v64 = v74;
  v38 = v75;

  sub_1C100C7D0(v73);
  v68[0] = v36;
  v68[1] = v37;
  v69 = v64;
  v70 = v38;

  v39 = v53;
  v40 = v55;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v72, v27, 0, v55, v53);

  (*(v54 + 8))(v9, v40);
  *(&v69 + 1) = v31;
  v70 = v62;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v35, v31);
  v42 = v59;
  v43 = swift_getWitnessTable();
  v44 = v56;
  View.selectionStyle(for:)(v68, v42, v43);

  (*(v57 + 8))(v39, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  v45 = sub_1C100D614();
  v66 = v43;
  v67 = v45;
  v46 = v52;
  v47 = swift_getWitnessTable();
  v48 = v58;
  sub_1C0FDBA4C(v44, v46, v47);
  v49 = *(v60 + 8);
  v49(v44, v46);
  sub_1C0FDBA4C(v48, v46, v47);
  return (v49)(v48, v46);
}

void *sub_1C10D57CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 + 8);
  v23 = (*(v14 + 40))(a2, v14);
  v16 = v15;
  v17 = (*(v14 + 48))(a2, v14);
  v19 = v18;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  LOBYTE(a6) = *(a1 + *(type metadata accessor for PhotosTripCell() + 64));
  KeyPath = swift_getKeyPath();
  v26 = 0;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(&v25[7], __src, 0xD1uLL);
  v21 = v26;
  *a7 = v23;
  *(a7 + 8) = v16;
  *(a7 + 16) = v17;
  *(a7 + 24) = v19;
  *(a7 + 32) = 0;
  *(a7 + 33) = a6;
  *(a7 + 34) = 1;
  *(a7 + 40) = KeyPath;
  *(a7 + 48) = v21;
  return memcpy((a7 + 49), v25, 0xD8uLL);
}

uint64_t sub_1C10D5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = (*(v5 + 40))(a2, v5);
  v8 = v7;
  result = (*(v5 + 56))(a2, v5);
  if (v8)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C10D599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v64 = a6;
  v65 = a3;
  v68 = a5;
  *&v74 = a2;
  v66 = a1;
  v82 = a8;
  sub_1C1263190();
  sub_1C1263C30();
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v12 = sub_1C1263190();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640);
  v99 = a7;
  v100 = MEMORY[0x1E697F568];
  v67 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v98 = a7;
  v95 = swift_getWitnessTable();
  v81 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v96 = v81;
  v61 = v12;
  v59 = swift_getWitnessTable();
  v58 = sub_1C10D3E38();
  v104[0] = v12;
  v104[1] = v60;
  v104[2] = v59;
  v104[3] = v58;
  v13 = type metadata accessor for PhotosContentTitleCard();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = sub_1C1263190();
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  v18 = sub_1C1263190();
  v71 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v56 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  v73 = v18;
  v70 = sub_1C1263190();
  v20 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v72 = v20;
  v21 = sub_1C1263190();
  v78 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v56 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  v79 = v21;
  v69 = sub_1C1263190();
  v80 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v56 - v25;
  v90[2] = v65;
  v90[3] = a4;
  v26 = a4;
  v27 = v68;
  v90[4] = v68;
  v90[5] = v64;
  v28 = a7;
  v90[6] = a7;
  v90[7] = v66;
  *&v90[8] = a9;
  v84 = v65;
  v85 = a4;
  v29 = v65;
  v86 = v68;
  v87 = v64;
  v30 = v64;
  v88 = v28;
  v89 = v66;
  v31 = v28;
  PhotosContentTitleCard.init(content:titleStack:)(sub_1C10D7F58, v90, sub_1C10D7F6C);
  v104[0] = v29;
  v104[1] = v26;
  v104[2] = v27;
  v104[3] = v30;
  v104[4] = v31;
  v32 = type metadata accessor for PhotosTripCell();
  sub_1C10D2EE4(v32, v101);
  sub_1C100C7D0(v101);
  v33 = swift_getWitnessTable();
  v34 = v57;
  sub_1C1264FA0();
  (*(v62 + 8))(v15, v13);
  v104[0] = v74;
  v93 = v33;
  v94 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  sub_1C100C6E8();
  sub_1C1264960();
  (*(v63 + 8))(v34, v16);
  sub_1C10D2EE4(v32, v102);
  memcpy(v92, v103, sizeof(v92));
  sub_1C100D690(v102, v104);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDE82B08;
  v37 = qword_1EDE82B10;
  v74 = xmmword_1EDE82B18;
  v38 = qword_1EDE82B28;

  sub_1C100C7D0(v102);

  *&v91[0] = v36;
  *(&v91[0] + 1) = v37;
  v91[1] = v74;
  *&v91[2] = v38;
  memcpy(&v91[2] + 8, v92, 0xA8uLL);
  v39 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178);
  v90[18] = v35;
  v90[19] = v39;
  v40 = v73;
  v41 = swift_getWitnessTable();
  v42 = v75;
  v43 = v83;
  View.cellStyle(for:)(v91, v41, v75);
  memcpy(v104, v91, 0xD0uLL);
  sub_1C100C7D0(v104);
  (*(v71 + 8))(v43, v40);
  LOBYTE(v91[0]) = 1;
  v44 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v90[16] = v41;
  v90[17] = v44;
  v90[14] = swift_getWitnessTable();
  v90[15] = v81;
  v45 = swift_getWitnessTable();
  v46 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v90[12] = v45;
  v90[13] = v46;
  v47 = v79;
  v48 = swift_getWitnessTable();
  sub_1C1061D74();
  v49 = v76;
  sub_1C12649C0();
  (*(v78 + 8))(v42, v47);
  v50 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30);
  v90[10] = v48;
  v90[11] = v50;
  v51 = v69;
  v52 = swift_getWitnessTable();
  v53 = v77;
  sub_1C0FDBA4C(v49, v51, v52);
  v54 = *(v80 + 8);
  v54(v49, v51);
  sub_1C0FDBA4C(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1C10D6354@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v47 = a6;
  v43 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v43);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1C1263190();
  v15 = sub_1C1263C30();
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v38 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v40 = sub_1C1263190();
  v46 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v38 - v19;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v20 = type metadata accessor for PhotosTripCell();
  sub_1C10D32E8(v20);
  v22 = v21;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v23 = a5;
  v53 = a5;
  v58 = a5;
  v59 = MEMORY[0x1E697F568];
  v41 = MEMORY[0x1E697E858];
  v24 = v39;
  WitnessTable = swift_getWitnessTable();
  v26 = v38;
  View.onStaticCondition<A>(_:transform:)(v22 & 1, sub_1C10D8178, v48, a2, v24, v23, WitnessTable, v38);
  v27 = *(v43 + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1C12639D0();
  (*(*(v29 - 8) + 104))(v14 + v27, v28, v29);
  *v14 = a7;
  v14[1] = a7;
  v56 = WitnessTable;
  v57 = v23;
  v30 = swift_getWitnessTable();
  sub_1C10D7E94(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  sub_1C1009334();
  v31 = v42;
  sub_1C1265050();
  sub_1C100867C(v14);
  (*(v45 + 8))(v26, v15);
  v32 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v54 = v30;
  v55 = v32;
  v33 = v40;
  v34 = swift_getWitnessTable();
  v35 = v44;
  sub_1C0FDBA4C(v31, v33, v34);
  v36 = *(v46 + 8);
  v36(v31, v33);
  sub_1C0FDBA4C(v35, v33, v34);
  return (v36)(v35, v33);
}

void *sub_1C10D6818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936B0);
  sub_1C10D7F7C();
  sub_1C10D80EC();
  v13 = sub_1C10DFCA0();
  v21[28] = 0x4000000000000000;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(&v21[29], __src, 0xD1uLL);
  LOBYTE(v21[0]) = 1;
  sub_1C10D6BF0(a1, a2, a3, a4, a5, a6, &v21[1]);
  sub_1C10D6EC0(a1, a2, a3, a4, a5, a6, &v21[10]);
  v14 = sub_1C10D6BF0(a1, a2, a3, a4, a5, a6, &v21[19]);
  v15 = v13(v14);
  nullsub_1(v15);

  BYTE1(v21[27]) = 0;
  memcpy(__dst, v21, 0x1B9uLL);
  KeyPath = swift_getKeyPath();
  sub_1C10D6A6C(a1, v20);
  v24[0] = KeyPath;
  memcpy(&v24[1], v20, 0xD0uLL);
  memcpy(&__dst[448], v24, 0xD8uLL);
  v25 = KeyPath;
  memcpy(v26, v20, sizeof(v26));
  sub_1C10D1A1C(v24, v19, &qword_1EBE93660);
  sub_1C0FD1A5C(&v25, &qword_1EBE93660);
  return memcpy(a7, __dst, 0x298uLL);
}

void *sub_1C10D6A6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PhotosTripCell();
  v5 = (a1 + *(v4 + 68));
  if (v5[2])
  {
    sub_1C10D2EE4(v4, __src);
  }

  else
  {
    v17 = *v5;
    v18 = v5[1];
    if (qword_1EDE82B50 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDE82B58;
    v7 = qword_1EDE82B60;
    v8 = unk_1EDE82B68;
    v9 = qword_1EDE82B70;
    v10 = qword_1EDE82B78;

    if (v10 != -1)
    {
      swift_once();
    }

    __src[0] = 0x402E000000000000;
    __src[1] = v6;
    __src[2] = v7;
    __src[3] = v8;
    __src[4] = v9;
    *&__src[5] = v17;
    *&__src[7] = v18;
    __asm { FMOV            V1.2D, #10.0 }

    *&__src[9] = _Q1;
    *&__src[11] = _Q1;
    __src[13] = 0x4052000000000000;
    memset(&__src[14], 0, 40);
    __src[21] = 0;
    __src[22] = qword_1EDE82B80;
    *&__src[23] = *&qword_1EDE82B88;
    __src[25] = qword_1EDE82B98;
    __src[19] = 0x8000000000000000;
    LOWORD(__src[20]) = 1;
  }

  return memcpy(a2, __src, 0xD0uLL);
}

void *sub_1C10D6BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1C10D5910(a1, a2, a3, a4);

  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  v13 = type metadata accessor for PhotosTripCell();
  sub_1C10D6CC0(v13, __src);

  return memcpy(a7, __src, 0x41uLL);
}

uint64_t sub_1C10D6CC0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1C1264680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C10D7258(a1);
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  sub_1C12646C0();

  (*(v5 + 8))(v7, v4);
  v8 = sub_1C1264870();
  v10 = v9;
  LOBYTE(v4) = v11;

  sub_1C1264620();
  v12 = sub_1C12647B0();
  v14 = v13;
  LOBYTE(v5) = v15;
  v17 = v16;
  sub_1C0FDB8E8(v8, v10, v4 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = result;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return result;
}

void *sub_1C10D6EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1C10D5910(a1, a2, a3, a4);
  v14 = v13;

  if (v14)
  {
    __src[0] = a2;
    __src[1] = a3;
    __src[2] = a4;
    __src[3] = a5;
    __src[4] = a6;
    v15 = type metadata accessor for PhotosTripCell();
    sub_1C10D6FE4(v15, __src);

    memcpy(v17, __src, sizeof(v17));
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v19 = 1;
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8);
  sub_1C10D7F7C();
  sub_1C1263C20();
  return memcpy(a7, __src, 0x42uLL);
}

uint64_t sub_1C10D6FE4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1C1264680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C10D7258(a1);
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  sub_1C12646C0();

  (*(v5 + 8))(v7, v4);
  v8 = sub_1C1264870();
  v10 = v9;
  LOBYTE(v5) = v11;

  sub_1C1264620();
  v12 = sub_1C12647B0();
  v14 = v13;
  v16 = v15;
  sub_1C0FDB8E8(v8, v10, v5 & 1);

  if (qword_1EDE76CF0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C1264840();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1C0FDB8E8(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = result;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_1C10D7258(uint64_t a1)
{
  sub_1C10D2D88(a1, &v4);
  if (v4 == 2)
  {
LABEL_7:

    return sub_1C12646F0();
  }

  if (v4 == 5)
  {
    if (*(v1 + *(a1 + 64)))
    {

      return sub_1C1264660();
    }

    goto LABEL_7;
  }

  return sub_1C1264510();
}

uint64_t PhotosTripCell<>.init(_:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v14;
  (*(v10 + 16))(v13, a1, v11);
  v25 = v15;
  memset(v26, 0, sizeof(v26));
  v27 = 1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v16 = type metadata accessor for PhotosAssetView();
  v17 = sub_1C10D7E94(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
  v18 = PhotosTripCell.init(_:size:titlePadding:content:)(v13, &v25, v26, sub_1C10D75E0, a2, v16, a3, a5, a4, v17);
  return (*(v10 + 8))(a1, a2, v18);
}

double sub_1C10D748C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 72))(&v11, a1);
  v4 = v11;
  v5 = sub_1C1200D04();
  [v5 setNetworkAccessAllowed_];
  *(a3 + 152) = swift_getKeyPath();
  *(a3 + 160) = 0;
  v6 = type metadata accessor for PhotosAssetView();
  v7 = v6[12];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[13];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *a3 = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 68) = 256;
  *(a3 + 52) = 0;
  *(a3 + 60) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 88) = v4;
  *(a3 + 96) = 0;
  *(a3 + 104) = v5;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 2;
  return result;
}

unint64_t sub_1C10D75F0()
{
  result = qword_1EBE93680;
  if (!qword_1EBE93680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosTripCellSizeClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C10D776C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C10B8F34(319, &qword_1EDE776C8, MEMORY[0x1E697DA60], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C10B8F34(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C10B8F34(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C1011E54();
            if (v5 <= 0x3F)
            {
              sub_1C10A6EE0();
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

uint64_t sub_1C10D78E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v33 = *(a3 + 24);
  v34 = *(a3 + 16);
  v5 = *(v34 - 8);
  v6 = *(v5 + 84);
  v7 = *(v33 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1C12629F0();
  v13 = *(v11 - 8);
  result = v11 - 8;
  v14 = v13;
  v15 = *(v13 + 64);
  if (v15 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v5 + 64) + v17;
  if (v10 >= a2)
  {
LABEL_35:
    if (v6 == v10)
    {
      v28 = a1;
      v29 = v6;
      v30 = v34;
    }

    else
    {
      v28 = (a1 + v19) & ~v17;
      if (v8 != v10)
      {
        v31 = *(v28 + v18);
        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }

      v29 = v8;
      v30 = v33;
    }

    return __swift_getEnumTagSinglePayload(v28, v29, v30);
  }

  else
  {
    v20 = *(v14 + 80) & 0xF8 | 7;
    v21 = ((v16 + ((v20 + (((v19 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 273) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
    if (v21 <= 3)
    {
      v22 = ((a2 - v10 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    switch(v24)
    {
      case 1:
        v25 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 2:
        v25 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v25 = *(a1 + v21);
        if (!v25)
        {
          goto LABEL_35;
        }

LABEL_28:
        v26 = v21 > 3;
        if (v21 <= 3)
        {
          v27 = (v25 - 1) << (8 * v21);
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *a1;
        }

        result = v10 + (v32 | v27) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C10D7B94(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 16);
  v6 = *(v29 - 8);
  v7 = *(v6 + 84);
  v28 = *(a4 + 24);
  v8 = *(v28 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1C12629F0() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = *(v8 + 64);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = ((v13 + ((v17 + (((v15 & ~v14) + v16) & 0xFFFFFFFFFFFFFFF8) + 273) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v11 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v11 + 0xFFFF) >> 16) + 1;
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

  if (v11 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v7 == v11)
        {
          v24 = a1;
          v25 = a2;
          v26 = v7;
          v27 = v29;
        }

        else
        {
          v24 = (a1 + v15) & ~v14;
          if (v9 != v11)
          {
            *(v24 + v16) = a2 + 1;
            return;
          }

          v25 = a2;
          v26 = v9;
          v27 = v28;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
        break;
    }
  }

  else
  {
    v22 = ~v11 + a2;
    bzero(a1, v18);
    if (v18 <= 3)
    {
      v23 = HIWORD(v22) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C10D7E94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C10D7EEC()
{
  result = qword_1EBE936A0;
  if (!qword_1EBE936A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936A0);
  }

  return result;
}

unint64_t sub_1C10D7F7C()
{
  result = qword_1EDE7BDB8;
  if (!qword_1EDE7BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936A8);
    sub_1C10D8034();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDB8);
  }

  return result;
}

unint64_t sub_1C10D8034()
{
  result = qword_1EDE7BEA0;
  if (!qword_1EDE7BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B8);
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEA0);
  }

  return result;
}

unint64_t sub_1C10D80EC()
{
  result = qword_1EDE76EA0;
  if (!qword_1EDE76EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B0);
    sub_1C10D7F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EA0);
  }

  return result;
}

uint64_t OneUpDebugBar.Kind.description.getter()
{
  v1 = 0x6E416C6175736956;
  if (*v0 != 1)
  {
    v1 = 0x7465737341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5391432;
  }
}

uint64_t sub_1C10D8210@<X0>(uint64_t a1@<X8>)
{
  v35[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93700);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v35 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93708);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93710);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93718);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  if (!*v1)
  {
    *v13 = sub_1C1263AA0();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93740);
    sub_1C10D87BC(&v13[*(v17 + 44)]);
    sub_1C10D1A1C(v13, v7, &qword_1EBE93718);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_31();
    sub_1C0FDB6D4(v18, &qword_1EBE93718);
    sub_1C1263C20();
    sub_1C10D1A1C(v10, v4, &qword_1EBE93710);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
    sub_1C10D99DC();
    sub_1C1089CAC();
    OUTLINED_FUNCTION_3_29();
    sub_1C1263C20();
    sub_1C0FD1A5C(v10, &qword_1EBE93710);
    v19 = v13;
    v20 = &qword_1EBE93718;
    return sub_1C0FD1A5C(v19, v20);
  }

  if (*v1 == 1)
  {
    sub_1C113526C(&v36);
    v14 = v36;
    if (v36)
    {
      if (v36 == 1)
      {
        v15 = 0xAC000000A680E267;
        v16 = 0x6E697A796C616E41;
      }

      else
      {
        v32 = sub_1C1135BF0(v36);
        *&v40 = 0x64657A796C616E41;
        *(&v40 + 1) = 0xE800000000000000;
        MEMORY[0x1C68EF850](v32);

        sub_1C10D9A94(v14);
        v15 = *(&v40 + 1);
        v16 = v40;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      v16 = 1701602377;
    }

    *v7 = v16;
    *(v7 + 1) = v15;
    v7[16] = 0;
    *(v7 + 3) = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_31();
    sub_1C0FDB6D4(v33, v34);

    sub_1C1263C20();
    sub_1C10D1A1C(v10, v4, &qword_1EBE93710);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
    sub_1C10D99DC();
    sub_1C1089CAC();
    sub_1C1263C20();

    v19 = v10;
    v20 = &qword_1EBE93710;
    return sub_1C0FD1A5C(v19, v20);
  }

  v21 = sub_1C1135518();
  if (v21)
  {
    *&v40 = v21;
    swift_unknownObjectRetain();
    sub_1C1265ED0();
    sub_1C12646A0();
    sub_1C1264500();

    v22 = sub_1C1264870();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    *&v36 = v22;
    *(&v36 + 1) = v24;
    v37 = v26 & 1;
    v38 = v28;
    v39 = 0;
    sub_1C0FDB850(v22, v24, v26 & 1);

    OUTLINED_FUNCTION_4_31();
    swift_unknownObjectRelease();
    sub_1C0FDB8E8(v22, v24, v26 & 1);
  }

  else
  {
    v36 = xmmword_1C12B4500;
    v37 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 1;
    OUTLINED_FUNCTION_4_31();
  }

  v29 = v41;
  v30 = v42;
  *v4 = v40;
  *(v4 + 1) = v29;
  v4[32] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
  sub_1C10D99DC();
  sub_1C1089CAC();
  OUTLINED_FUNCTION_3_29();
  return sub_1C1263C20();
}

uint64_t sub_1C10D87BC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93748);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93750);
  sub_1C10D8A4C(&v6[*(v7 + 44)]);
  v33 = sub_1C12638E0();
  sub_1C10D9178(&v36);
  v29 = v37;
  v30 = v36;
  v8 = v38;
  v31 = v39;
  v32 = v40;
  v9 = v41;
  v44 = 1;
  v43 = v38;
  v42 = v41;
  v28 = sub_1C12638E0();
  sub_1C10D92AC(&v36);
  v10 = v36;
  v11 = v37;
  v12 = v38;
  v26 = v39;
  v27 = v40;
  v13 = v41;
  LOBYTE(v36) = 1;
  v46 = v38;
  v45 = v41;
  v34 = v3;
  sub_1C10D1A1C(v6, v3, &qword_1EBE93748);
  v14 = v3;
  v15 = v35;
  sub_1C10D1A1C(v14, v35, &qword_1EBE93748);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93758);
  v17 = v15 + *(v16 + 48);
  v18 = v32;
  *v17 = v33;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v19 = v29;
  v20 = v30;
  *(v17 + 24) = v30;
  *(v17 + 32) = v19;
  *(v17 + 40) = v8;
  *(v17 + 48) = v31;
  *(v17 + 56) = v18;
  *(v17 + 64) = v9;
  v21 = v15 + *(v16 + 64);
  *v21 = v28;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v21 + 24) = v10;
  *(v21 + 32) = v11;
  *(v21 + 40) = v12;
  v22 = v27;
  *(v21 + 48) = v26;
  *(v21 + 56) = v22;
  *(v21 + 64) = v13;
  v23 = v20;
  v24 = v19;
  sub_1C0FDB850(v20, v19, v8);

  sub_1C0FDB850(v10, v11, v12);

  sub_1C0FD1A5C(v6, &qword_1EBE93748);
  sub_1C0FDB8E8(v10, v11, v12);

  sub_1C0FDB8E8(v23, v24, v8);

  return sub_1C0FD1A5C(v34, &qword_1EBE93748);
}

uint64_t sub_1C10D8A4C@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93760);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - v3;
  v5 = sub_1C1261C40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93768);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = sub_1C1135518();
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    goto LABEL_6;
  }

  v46 = v6;
  v56 = &unk_1F40B5A68;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v47 = 0;
    v25 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v19 = v18;
  if ([v18 respondsToSelector_])
  {
    v20 = [v19 hdrGain];
    v45 = v20;
    swift_unknownObjectRelease();
    v54 = 0x203A6E696147;
    v55 = 0xE600000000000000;
    [v20 doubleValue];
    v51 = v21;
    sub_1C1261E30();
    sub_1C10D9AFC();
    sub_1C1261BF0();
    sub_1C1261C30();
    MEMORY[0x1C68EB540](v8, v10);
    (*(v46 + 8))(v8, v5);
    v22 = *(v47 + 8);
    v22(v12, v10);
    sub_1C0FDB6D4(&unk_1EBE93780, &qword_1EBE93768);
    sub_1C1265CA0();
    v22(v15, v10);
    MEMORY[0x1C68EF850](v52, v53);

    v23 = MEMORY[0x1E69E7CC0];
    v47 = sub_1C1265EB0();
    v25 = v24;
  }

  else
  {
    swift_unknownObjectRelease();
    v47 = 0;
    v25 = 0;
    v23 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v46 = 0x80000001C126B990;
  sub_1C1263A50();
  v54 = v17;
  v26 = type metadata accessor for OneUpBarButton();
  sub_1C10D9AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
  sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920);
  sub_1C1266870();
  *(v4 + 7) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v27 = &v4[v26[16]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v26[17];
  *&v4[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v29 = &v4[v26[18]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v4[v26[19]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v4[v26[20]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v4[v26[21]];
  *v32 = swift_getKeyPath();
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = &v4[v26[22]];
  *v33 = swift_getKeyPath();
  *(v33 + 4) = 0;
  v34 = &v4[v26[23]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v4 + 88) = xmmword_1C12B4510;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v4[16] = -31;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v4 + 8) = 0;
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  v35 = &v4[v26[13]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v4[v26[14]];
  *v36 = 0xD00000000000001ALL;
  *(v36 + 1) = v46;
  v37 = &v4[v26[15]];
  *v37 = 0;
  v37[8] = 1;
  KeyPath = swift_getKeyPath();
  v39 = &v4[*(v48 + 36)];
  *v39 = KeyPath;
  v39[8] = 1;
  v40 = v50;
  sub_1C10D1A1C(v4, v50, &qword_1EBE93760);
  v41 = v49;
  v42 = v47;
  *v49 = v47;
  v41[1] = v25;
  v41[2] = 0;
  v41[3] = v23;
  v41[4] = 0;
  *(v41 + 40) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93770);
  sub_1C10D1A1C(v40, v41 + *(v43 + 64), &qword_1EBE93760);
  sub_1C0FDB860(v42, v25, 0, v23);
  sub_1C0FDB8A4(v42, v25, 0, v23);
  sub_1C0FD1A5C(v4, &qword_1EBE93760);
  sub_1C0FD1A5C(v40, &qword_1EBE93760);
  return sub_1C0FDB8A4(v42, v25, 0, v23);
}

uint64_t sub_1C10D9178@<X0>(uint64_t a1@<X8>)
{
  sub_1C1266940();

  v9 = 0xD000000000000015;
  v10 = 0x80000001C126B970;
  sub_1C1135794(&v8);
  v2 = 5391443;
  if (v8 != 1)
  {
    v2 = 5391432;
  }

  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (v8)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  MEMORY[0x1C68EF850](v3, v4);

  v5 = v9;
  v6 = v10;
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(v5, v6, 0);

  sub_1C0FDB8E8(v5, v6, 0);
}

uint64_t sub_1C10D92AC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() px_mainScreen];
  [v2 potentialEDRHeadroom];

  v3 = sub_1C1266260();
  MEMORY[0x1C68EF850](v3);

  *a1 = 0x3A5244452078614DLL;
  *(a1 + 8) = 0xE900000000000020;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(0x3A5244452078614DLL, 0xE900000000000020, 0);

  sub_1C0FDB8E8(0x3A5244452078614DLL, 0xE900000000000020, 0);
}

PhotosSwiftUICore::OneUpDebugBar::Kind_optional __swiftcall OneUpDebugBar.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C10D9404@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpDebugBar.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t OneUpDebugBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v13 = *(v1 + 1);
  v12 = *(v1 + 2);
  if (v1[24] == 1)
  {
    swift_unknownObjectRetain();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v16, 1, v3);
  }

  sub_1C1266420();
  v19 = sub_1C1264410();
  v26 = v6;
  v20 = v3;
  v21 = a1;
  v22 = v11;
  v23 = v19;
  sub_1C1262620();

  v11 = v22;
  a1 = v21;
  v3 = v20;
  v6 = v26;
  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FF9034(v13, v12, 0);
  (*(v8 + 8))(v10, v7);
  v12 = v28;
  if (!v27)
  {
    goto LABEL_6;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v15 = (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v16 = 1;
  if (v15)
  {
    v6[*(v3 + 36)] = 0;
    LOBYTE(v27) = v11;
    sub_1C10D8210(v6);
    v17 = sub_1C1264460();

    v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C8) + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_1C10D96D4(v6, a1);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v16, 1, v3);
}

uint64_t sub_1C10D96D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10D9748()
{
  result = qword_1EBE936D0;
  if (!qword_1EBE936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936D0);
  }

  return result;
}

uint64_t sub_1C10D9800(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

_BYTE *storeEnumTagSinglePayload for OneUpDebugBar.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10D992C()
{
  result = qword_1EBE936E8;
  if (!qword_1EBE936E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936F0);
    sub_1C0FDB6D4(&qword_1EBE936F8, &qword_1EBE936C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936E8);
  }

  return result;
}

unint64_t sub_1C10D99DC()
{
  result = qword_1EBE93728;
  if (!qword_1EBE93728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93710);
    sub_1C0FDB6D4(&unk_1EBE93730, &qword_1EBE93718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93728);
  }

  return result;
}

unint64_t sub_1C10D9A94(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1C10D9AA4()
{
  result = qword_1EDE7BC70;
  if (!qword_1EDE7BC70)
  {
    sub_1C1263A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC70);
  }

  return result;
}

unint64_t sub_1C10D9AFC()
{
  result = qword_1EDE7B758;
  if (!qword_1EDE7B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B758);
  }

  return result;
}

void *sub_1C10D9B7C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v48 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v45 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v46 = v19;
  v47 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  MEMORY[0x1EEE9AC00](v26);
  if ((a1 & 1) == 0)
  {
    v44 = &v43 - v27;
    if (a3)
    {
      v55 = a2;
    }

    else
    {

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v14 + 8))(v17, v45);
    }

    v34 = v46;
    v33 = v47;
    sub_1C1226AE4();

    if (__swift_getEnumTagSinglePayload(v12, 1, v33) == 1)
    {
      sub_1C10CB224(v12);
      sub_1C10DA608(v54);
    }

    else
    {
      v38 = v44;
      (*(v34 + 32))(v44, v12, v33);
      (*(v34 + 16))(v25, v38, v33);
      v39 = (*(v34 + 88))(v25, v33);
      if (v39 == *MEMORY[0x1E697FF38])
      {
        v54[0] = 0;
        LOBYTE(v54[1]) = 1;
        sub_1C1059C14(v54);
        OUTLINED_FUNCTION_5_22();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8);
        sub_1C10DA7D0();
        OUTLINED_FUNCTION_4_32();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_0_39();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0);
        sub_1C10DA744();
        OUTLINED_FUNCTION_2_33();
        (*(v34 + 8))(v38, v33);
      }

      else
      {
        if (v39 != *MEMORY[0x1E697FF40])
        {
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_1C1266940();
          MEMORY[0x1C68EF850](0xD000000000000020, 0x80000001C126BA30);
          sub_1C1266B10();
          goto LABEL_27;
        }

        sub_1C12659A0();
        OUTLINED_FUNCTION_1_32();
        sub_1C1263390();
        v51 = 1;
        memcpy(&v49[7], v56, 0x70uLL);
        v41 = OUTLINED_FUNCTION_6_20();
        memcpy(v41, v49, 0x77uLL);
        sub_1C1059A10(v54);
        OUTLINED_FUNCTION_5_22();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8);
        sub_1C10DA7D0();
        OUTLINED_FUNCTION_4_32();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_0_39();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0);
        sub_1C10DA744();
        OUTLINED_FUNCTION_2_33();
        (*(v34 + 8))(v44, v33);
      }

      memcpy(__dst, v52, 0x82uLL);
      memcpy(v53, __dst, 0x82uLL);
      nullsub_1(v53);
      memcpy(v54, v53, 0x82uLL);
    }

    memcpy(v53, v54, 0x82uLL);
    sub_1C10DA85C(v53);
    goto LABEL_24;
  }

  v29 = v28;
  if (a3)
  {
    v55 = a2;
  }

  else
  {

    sub_1C1266420();
    v30 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v45);
  }

  v31 = v47;
  sub_1C12265E0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    sub_1C10CB224(v9);
    sub_1C10DA608(v54);
LABEL_19:
    memcpy(v53, v54, 0x82uLL);
    sub_1C10DA628(v53);
LABEL_24:
    memcpy(v52, v53, sizeof(v52));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93790);
    sub_1C10DA634();
    sub_1C1263C20();
    return memcpy(v48, __dst, 0x83uLL);
  }

  v35 = v9;
  v36 = v46;
  (*(v46 + 32))(v29, v35, v31);
  (*(v36 + 16))(v21, v29, v31);
  v37 = (*(v36 + 88))(v21, v31);
  if (v37 == *MEMORY[0x1E697FF38])
  {
    v54[0] = 0;
    LOBYTE(v54[1]) = 1;
    sub_1C1059C14(v54);
    OUTLINED_FUNCTION_5_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8);
    sub_1C10DA7D0();
    OUTLINED_FUNCTION_4_32();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_0_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0);
    sub_1C10DA744();
    OUTLINED_FUNCTION_2_33();
    (*(v36 + 8))(v29, v31);
LABEL_18:
    memcpy(__dst, v52, 0x82uLL);
    memcpy(v53, __dst, 0x82uLL);
    nullsub_1(v53);
    memcpy(v54, v53, 0x82uLL);
    goto LABEL_19;
  }

  if (v37 == *MEMORY[0x1E697FF40])
  {
    sub_1C12659A0();
    OUTLINED_FUNCTION_1_32();
    sub_1C1263390();
    v51 = 1;
    memcpy(&v50[7], v56, 0x70uLL);
    v40 = OUTLINED_FUNCTION_6_20();
    memcpy(v40, v50, 0x77uLL);
    sub_1C1059A10(v54);
    OUTLINED_FUNCTION_5_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8);
    sub_1C10DA7D0();
    OUTLINED_FUNCTION_4_32();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_0_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0);
    sub_1C10DA744();
    OUTLINED_FUNCTION_2_33();
    (*(v36 + 8))(v29, v31);
    goto LABEL_18;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C1266940();
  MEMORY[0x1C68EF850](0xD00000000000001ELL, 0x80000001C126B9E0);
  sub_1C1266B10();
LABEL_27:
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

double sub_1C10DA608(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -256;
  return result;
}

unint64_t sub_1C10DA634()
{
  result = qword_1EDE7BBC8;
  if (!qword_1EDE7BBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93790);
    sub_1C10DA6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBC8);
  }

  return result;
}

unint64_t sub_1C10DA6B8()
{
  result = qword_1EDE7BBD0;
  if (!qword_1EDE7BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93798);
    sub_1C10DA744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBD0);
  }

  return result;
}

unint64_t sub_1C10DA744()
{
  result = qword_1EDE7BBF8;
  if (!qword_1EDE7BBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937A0);
    sub_1C10DA7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBF8);
  }

  return result;
}

unint64_t sub_1C10DA7D0()
{
  result = qword_1EDE7BE10;
  if (!qword_1EDE7BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE10);
  }

  return result;
}

unint64_t sub_1C10DA864()
{
  result = qword_1EDE7BBB8;
  if (!qword_1EDE7BBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937B0);
    sub_1C10DA634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBB8);
  }

  return result;
}

uint64_t PhotosSelectableItem.objectIdentifier.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1C12622C0();
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double PhotosSelectionLayoutItem.init(item:globalFrame:scrollFrame:cornerRadius:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  sub_1C0F9DDE4(a1, a2);
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = a7;
  *(a2 + 80) = a8;
  result = a10;
  *(a2 + 88) = a9;
  *(a2 + 96) = a10;
  *(a2 + 104) = a11;
  return result;
}

uint64_t static PhotosSelectionLayoutItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*(a1 + 40), *(a2 + 40)) && CGRectEqualToRect(*(a1 + 72), *(a2 + 72)) && *(a1 + 104) == *(a2 + 104))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v9);
    if (v6 == (*(v10 + 16))(v9, v10) && v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1C1266D50();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C10DABE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C10DAC28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10DACBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  LOBYTE(v14) = 0;
  sub_1C1265410();
  v10 = *(&v15 + 1);
  *(a2 + 40) = v15;
  *(a2 + 48) = v10;
  v14 = 0;
  sub_1C1265410();
  *(a2 + 56) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939E8);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C0FDB800(v9, v6, &qword_1EBE939E0);
  sub_1C1265410();
  result = sub_1C0FD1A5C(v9, &qword_1EBE939E0);
  *a2 = a1;
  return result;
}

uint64_t sub_1C10DAE68()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1041AD8();
  *v0 = result;
  return result;
}

PhotosSwiftUICore::PhotosInlinePlaybackDebugVisualization __swiftcall PhotosInlinePlaybackDebugVisualization.init(count:debugVisualization:)(PhotosSwiftUICore::PhotosInlinePlaybackDebugVisualization count, Swift::Bool debugVisualization)
{
  if ((count.items._rawValue & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = count.items._rawValue;
    v5 = v2;
    v6 = MEMORY[0x1E69E7CC0];
    if (count.items._rawValue)
    {
      v10 = MEMORY[0x1E69E7CC0];
      count.items._rawValue = sub_1C11023B0(0, count.items._rawValue, 0);
      v7 = 0;
      v6 = v10;
      v8 = *(v10 + 16);
      do
      {
        v11 = v6;
        v9 = *(v6 + 24);
        if (v8 >= v9 >> 1)
        {
          count.items._rawValue = sub_1C11023B0((v9 > 1), v8 + 1, 1);
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 8 * v8++ + 32) = v7++;
      }

      while (rawValue != v7);
    }

    *v5 = v6;
    *(v5 + 8) = debugVisualization;
  }

  count.debugVisualization = debugVisualization;
  return count;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosInlinePlaybackDebugVisualization.Player.init()();
  return v0;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C10DB008(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C10DB720();
  }

  return result;
}

uint64_t sub_1C10DB10C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10DB180(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C10DB180@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v3, v4);
  sub_1C1261F30();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

void (*sub_1C10DB22C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_40();
  v6 = sub_1C10DE824(v4, v5);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C10DB0BC();
  return sub_1C10DB314;
}

uint64_t sub_1C10DB370@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C10DB470();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C0FE7B00;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C10DB3E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC480;
  }

  else
  {
    v4 = 0;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C10DB528(v4);
}

uint64_t sub_1C10DB470()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v1, v2);
  sub_1C1261F30();

  swift_beginAccess();
  v3 = *(v0 + 24);
  sub_1C0FCF1B4(v3);
  return v3;
}

uint64_t sub_1C10DB528(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C10DB720();
  sub_1C0FCF004(a1);
}

uint64_t sub_1C10DB5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_1C0FCF1B4(a2);
  return sub_1C0FCF004(v6);
}

void (*sub_1C10DB62C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_40();
  v6 = sub_1C10DE824(v4, v5);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C10DB320();
  return sub_1C10DB714;
}

uint64_t sub_1C10DB720()
{
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v0, v1);
  return sub_1C1261F20();
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.deinit()
{
  sub_1C0FCF004(*(v0 + 24));
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.__deallocating_deinit()
{
  sub_1C0FCF004(v0[3]);
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C10DB8F4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10DB22C(v2);
  return sub_1C1077800;
}

void (*sub_1C10DB958(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10DB62C(v2);
  return sub_1C10768AC;
}

double PhotosInlinePlaybackDebugVisualization.PlayerView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1C10DB180(v42);
    switch(v42[0])
    {
      case 1:
        (*(v5 + 104))(v9, *MEMORY[0x1E69814D8], v3);
        v26 = sub_1C1265250();
        v27 = sub_1C12659A0();
        v33 = 0;
        v31[0] = 0;
        *v42 = v26;
        *&v42[8] = xmmword_1C12B4AA0;
        v42[24] = 0;
        *&v42[25] = v32[0];
        *&v42[28] = *(v32 + 3);
        *v43 = MEMORY[0x1E69E7CC0];
        *&v43[8] = v27;
        *&v43[16] = v28;
        v43[24] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93850);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0);
        sub_1C10DDDA4();
        sub_1C10DDA98();
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_5_23();
        v34 = 1;
        v43[25] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_2_34();
        v36 = 0;
        v43[26] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8);
        sub_1C10DD980();
        sub_1C1263C20();
        goto LABEL_10;
      case 2:
        v16 = sub_1C1265130();
        v17 = sub_1C12659A0();
        v19 = v18;
        v20 = sub_1C12652F0();
        *(v41 + 8) = xmmword_1C12B4AB0;
        *&v41[0] = v16;
        *(&v41[1] + 1) = v20;
        *&v41[2] = v17;
        *(&v41[2] + 1) = v19;
        LOBYTE(v41[3]) = 1;
        goto LABEL_7;
      case 3:
        v21 = sub_1C1265180();
        v22 = sub_1C12659A0();
        v24 = v23;
        v25 = sub_1C12652F0();
        *&v41[0] = v21;
        *(&v41[0] + 1) = v25;
        *&v41[1] = v22;
        *(&v41[1] + 1) = v24;
        memset(&v41[2], 0, 17);
LABEL_7:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93810);
        sub_1C10DDA98();
        sub_1C10DDB50();
        sub_1C1263C20();
        LOBYTE(v32[0]) = v43[16];
        v36 = 0;
        v43[25] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_2_34();
        v35 = 0;
        goto LABEL_8;
      default:
        v10 = sub_1C12651B0();
        v11 = sub_1C12659A0();
        v13 = v12;
        v14 = sub_1C12652F0();
        v34 = 1;
        *v42 = v10;
        *&v42[8] = v14;
        *&v42[16] = v11;
        *&v42[24] = v13;
        v43[24] = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93850);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0);
        sub_1C10DDDA4();
        sub_1C10DDA98();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_5_23();
        v36 = 1;
        v43[25] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_2_34();
        LOBYTE(v32[0]) = 0;
LABEL_8:
        v43[26] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8);
        sub_1C10DD980();
        sub_1C1263C20();

LABEL_10:

        *v42 = v41[0];
        *&v42[16] = v41[1];
        *v43 = v41[2];
        *&v43[11] = *(&v41[2] + 11);
        break;
    }
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E69814D8], v3, v7);
    v15 = sub_1C1265250();
    v35 = 1;
    *&v41[0] = v15;
    *(v41 + 8) = v37;
    *(&v41[1] + 8) = v38;
    *(&v41[2] + 8) = v39;
    WORD4(v41[3]) = v40;
    BYTE10(v41[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8);
    sub_1C10DD980();
    sub_1C1263C20();
  }

  v29 = *&v42[16];
  *a1 = *v42;
  a1[1] = v29;
  a1[2] = *v43;
  result = *&v43[11];
  *(a1 + 43) = *&v43[11];
  return result;
}

void *PhotosInlinePlaybackDebugVisualization.Cell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C12659A0();
  v19 = v5;
  v20 = v4;
  sub_1C10DC1E8(v3, __dst);
  v18 = __dst[0];
  v15 = BYTE8(__dst[1]);
  v16 = *&__dst[2];
  v17 = *&__dst[1];
  v6 = sub_1C12659A0();
  v13 = v7;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v21[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93868);
  sub_1C1265410();
  v9 = __dst[0];
  *&__src[0] = v3;
  *(__src + 8) = xmmword_1C12B4AC0;
  *(&__src[1] + 1) = sub_1C10DC374;
  *&__src[2] = 0;
  *(&__src[2] + 1) = sub_1C10DC3B0;
  memset(&__src[3], 0, 25);
  *&__src[5] = KeyPath;
  BYTE8(__src[5]) = 0;
  *&__src[6] = v12;
  BYTE8(__src[6]) = 0;
  __src[7] = __dst[0];
  *&__src[8] = v14;
  *(&__src[8] + 1) = v13;
  v22 = v15;
  memcpy(__dst, __src, sizeof(__dst));
  v25 = xmmword_1C12B4AC0;
  v24 = v3;
  v26 = sub_1C10DC374;
  v27 = 0;
  v28 = sub_1C10DC3B0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = KeyPath;
  v34 = 0;
  v35 = v12;
  v36 = 0;
  v37 = v9;
  v38 = v14;
  v39 = v13;
  sub_1C0FDB800(__src, v21, &qword_1EBE93870);
  sub_1C0FD1A5C(&v24, &qword_1EBE93870);
  v10 = v22;
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v10;
  *(a1 + 48) = v16;
  return memcpy((a1 + 56), __dst, 0x90uLL);
}

uint64_t sub_1C10DC1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C12650F0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  v8 = sub_1C1265250();
  v14 = 0x206C6C6543;
  v15 = 0xE500000000000000;
  v13[1] = a1;
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v9);

  v10 = v14;
  v11 = v15;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];

  sub_1C0FDB850(v10, v11, 0);

  sub_1C0FDB8E8(v10, v11, 0);
}

uint64_t sub_1C10DC374()
{
  type metadata accessor for PhotosInlinePlaybackDebugVisualization.Player();
  v0 = swift_allocObject();
  PhotosInlinePlaybackDebugVisualization.Player.init()();
  return v0;
}

double PhotosInlinePlaybackDebugVisualization.body.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93878);
  OUTLINED_FUNCTION_0();
  v26 = v4;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93880);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  *a1 = sub_1C1263AA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v12 = sub_1C1264440();
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v12)
  {
    sub_1C1264430();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93888);
  v23 = *(v13 + 44);
  MEMORY[0x1EEE9AC00](v13);
  *(&v22 - 2) = v10;
  *(&v22 - 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93890);
  v24 = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93898);
  v15 = sub_1C0FDB6D4(&qword_1EBE938A0, &qword_1EBE93898);
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v25;
  sub_1C1262950();
  v17 = &v9[*(v6 + 36)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = swift_getKeyPath();
  v17[24] = 0;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker();
  sub_1C12628D0();
  (*(v26 + 32))(v9, v16, v27);
  sub_1C0FDB71C(v9, a1 + v23, &qword_1EBE93880);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938A8) + 36);
  v19 = v18 + *(type metadata accessor for PhotosInlinePlaybackEnvironment() + 28);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = *(type metadata accessor for PhotosScenePhase(0) + 20);
  *(v19 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  sub_1C12628D0();
  *v18 = 3;
  *&result = 1;
  *(v18 + 8) = xmmword_1C12A8B40;
  *(v18 + 24) = 5;
  *(v18 + 32) = v24;
  *(v18 + 40) = 0x3FE8000000000000;
  *(v18 + 48) = 1;
  *(v18 + 56) = 0x3FE8000000000000;
  *(v18 + 64) = 1;
  return result;
}

uint64_t sub_1C10DC7D4(uint64_t a1, char a2)
{
  v4 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  sub_1C1263AA0();
  v13 = 0;
  sub_1C10DE824(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93918);
  sub_1C10DE8B0(&qword_1EBE93920, &qword_1EBE93918, &unk_1C12B4E90, sub_1C10DE380);
  sub_1C1262910();
  sub_1C0FDB6D4(&qword_1EBE938A0, &qword_1EBE93898);
  sub_1C1264CD0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10DCA2C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93930);
  sub_1C0FDB6D4(&qword_1EBE939B8, &qword_1EBE91448);
  sub_1C10DE380();
  return sub_1C1265680();
}

uint64_t sub_1C10DCB5C()
{
  v0 = sub_1C12638E0();
  sub_1C10DD6D8(&v4);
  v1 = v6;
  v2 = v4;
  v12 = 1;
  v11 = v5;
  v10 = v7;
  v4 = v0;
  v5 = 1;
  v6 = v2;
  v7 = v11;
  v8 = v1;
  v9 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939C0);
  sub_1C0FDB6D4(&qword_1EBE93938, &qword_1EBE93940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948);
  sub_1C10DE488();
  swift_getOpaqueTypeConformance2();
  return sub_1C12656F0();
}

uint64_t sub_1C10DCCC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_1C1264160();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939A0);
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v34 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93960);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v34 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93948);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v34 - v14;
  v15 = sub_1C1264420();
  sub_1C1264430();
  sub_1C1264430();
  v16 = sub_1C1264430();
  if (v16 != v15)
  {
    v16 = sub_1C1264430();
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 4) = a1;
  *(&v34 - 24) = a2 & 1;
  *(&v34 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939C8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE939D0);
  v18 = sub_1C0FDB6D4(&qword_1EBE939D8, &qword_1EBE939D0);
  *&v42 = v17;
  *(&v42 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  sub_1C1262950();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = v35;
  (*(v9 + 16))(v13, v11, v35);
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93990) + 36)];
  *v21 = sub_1C10DE898;
  v21[1] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93980);
  sub_1C10DACBC(1, &v13[*(v22 + 36)]);
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93970) + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = swift_getKeyPath();
  v23[24] = 0;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker();
  sub_1C12628D0();
  (*(v9 + 8))(v11, v20);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = &v13[*(v34 + 36)];
  *v25 = sub_1C10DEA0C;
  v25[1] = v24;
  sub_1C12659A0();
  sub_1C1262C80();
  v26 = v37;
  sub_1C0FDB71C(v13, v37, &qword_1EBE93960);
  v27 = (v26 + *(v36 + 36));
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  v27[2] = v44;
  v29 = v38;
  sub_1C1263D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v31 = sub_1C1264440();
  *(inited + 32) = v31;
  v32 = sub_1C1264420();
  *(inited + 33) = v32;
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v31)
  {
    sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v32)
  {
    sub_1C1264430();
  }

  sub_1C10DE488();
  sub_1C1264C50();
  (*(v40 + 8))(v29, v41);
  return sub_1C0FB7D30(v26);
}

uint64_t sub_1C10DD2BC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939D0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_1C12638E0();
  v16 = 0;
  sub_1C10DE824(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939F0);
  sub_1C10DE8B0(&qword_1EBE939F8, &qword_1EBE939F0, &unk_1C12B4F40, sub_1C10DE92C);
  sub_1C12628B0();
  sub_1C0FDB6D4(&qword_1EBE939D8, &qword_1EBE939D0);
  sub_1C1264CD0();
  return (*(v8 + 8))(v10, v7);
}

char *sub_1C10DD51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1C11023B0(0, v3, 0);
    v7 = 10000 * a3;
    if ((a3 * 10000) >> 64 == (10000 * a3) >> 63)
    {
      v8 = v14;
      v9 = (a1 + 32);
      while (1)
      {
        v10 = *v9++;
        v11 = v10 + v7;
        if (__OFADD__(v10, v7))
        {
          break;
        }

        v15 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1C11023B0((v12 > 1), v13 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v11;
        if (!--v3)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A08);
    sub_1C0FDB6D4(&qword_1EBE939B8, &qword_1EBE91448);
    sub_1C10DE92C();
    return sub_1C1265680();
  }

  return result;
}

void *sub_1C10DD6C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1C10DD6D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v2);

  *a1 = 0x20666C656853;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(0x20666C656853, 0xE600000000000000, 0);

  sub_1C0FDB8E8(0x20666C656853, 0xE600000000000000, 0);
}

uint64_t sub_1C10DD7A0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C11FDFD0();
  *v0 = result;
  return result;
}

uint64_t sub_1C10DD818(uint64_t a1)
{
  sub_1C1262930();
  OUTLINED_FUNCTION_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12634A0();
}

uint64_t sub_1C10DD8D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  swift_allocObject();
  result = sub_1C1163B08();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PhotosInlinePlaybackDebugVisualization.Player()
{
  result = qword_1EBE938B8;
  if (!qword_1EBE938B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C10DD980()
{
  result = qword_1EBE937D0;
  if (!qword_1EBE937D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937C8);
    sub_1C10DDA0C();
    sub_1C10DDD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937D0);
  }

  return result;
}

unint64_t sub_1C10DDA0C()
{
  result = qword_1EBE937D8;
  if (!qword_1EBE937D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937E0);
    sub_1C10DDA98();
    sub_1C10DDB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937D8);
  }

  return result;
}

unint64_t sub_1C10DDA98()
{
  result = qword_1EBE937E8;
  if (!qword_1EBE937E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937F0);
    sub_1C0FDB6D4(&qword_1EBE937F8, &qword_1EBE93800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937E8);
  }

  return result;
}

unint64_t sub_1C10DDB50()
{
  result = qword_1EBE93808;
  if (!qword_1EBE93808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93810);
    sub_1C10DDC08();
    sub_1C0FDB6D4(&qword_1EBE937F8, &qword_1EBE93800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93808);
  }

  return result;
}

unint64_t sub_1C10DDC08()
{
  result = qword_1EBE93818;
  if (!qword_1EBE93818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93820);
    sub_1C10DDC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93818);
  }

  return result;
}

unint64_t sub_1C10DDC94()
{
  result = qword_1EBE93828;
  if (!qword_1EBE93828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93828);
  }

  return result;
}

unint64_t sub_1C10DDD18()
{
  result = qword_1EBE93838;
  if (!qword_1EBE93838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93840);
    sub_1C10DDDA4();
    sub_1C10DDA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93838);
  }

  return result;
}

unint64_t sub_1C10DDDA4()
{
  result = qword_1EBE93848;
  if (!qword_1EBE93848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93850);
    sub_1C0FDB6D4(&qword_1EBE93858, &qword_1EBE93860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93848);
  }

  return result;
}

uint64_t sub_1C10DDEBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1C10DDEFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10DDF54()
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

unint64_t sub_1C10DE11C()
{
  result = qword_1EBE938C8;
  if (!qword_1EBE938C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938D0);
    sub_1C10DD980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE938C8);
  }

  return result;
}

unint64_t sub_1C10DE1A8()
{
  result = qword_1EBE938D8;
  if (!qword_1EBE938D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938E0);
    sub_1C0FDB6D4(&qword_1EBE938E8, &qword_1EBE938F0);
    sub_1C0FDB6D4(&qword_1EBE938F8, &qword_1EBE93870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE938D8);
  }

  return result;
}

unint64_t sub_1C10DE28C()
{
  result = qword_1EBE93900;
  if (!qword_1EBE93900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938A8);
    sub_1C0FDB6D4(&qword_1EBE93908, &qword_1EBE93910);
    sub_1C10DE824(&unk_1EDE80370, type metadata accessor for PhotosInlinePlaybackEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93900);
  }

  return result;
}

unint64_t sub_1C10DE380()
{
  result = qword_1EBE93928;
  if (!qword_1EBE93928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93930);
    sub_1C0FDB6D4(&qword_1EBE93938, &qword_1EBE93940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948);
    sub_1C10DE488();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93928);
  }

  return result;
}

unint64_t sub_1C10DE488()
{
  result = qword_1EBE93950;
  if (!qword_1EBE93950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948);
    sub_1C10DE514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93950);
  }

  return result;
}

unint64_t sub_1C10DE514()
{
  result = qword_1EBE93958;
  if (!qword_1EBE93958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93960);
    sub_1C10DE5CC();
    sub_1C0FDB6D4(&qword_1EDE7B9B8, &qword_1EBE90B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93958);
  }

  return result;
}

unint64_t sub_1C10DE5CC()
{
  result = qword_1EBE93968;
  if (!qword_1EBE93968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93970);
    sub_1C10DE688();
    sub_1C10DE824(qword_1EDE7F168, type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93968);
  }

  return result;
}

unint64_t sub_1C10DE688()
{
  result = qword_1EBE93978;
  if (!qword_1EBE93978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93980);
    sub_1C10DE740();
    sub_1C0FDB6D4(&qword_1EBE939A8, &qword_1EBE939B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93978);
  }

  return result;
}

unint64_t sub_1C10DE740()
{
  result = qword_1EBE93988;
  if (!qword_1EBE93988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93990);
    sub_1C0FDB6D4(&qword_1EBE93998, &qword_1EBE939A0);
    sub_1C0FDB6D4(&qword_1EDE7B9B8, &qword_1EBE90B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93988);
  }

  return result;
}

uint64_t sub_1C10DE824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C10DE8B0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C10DE92C()
{
  result = qword_1EBE93A00;
  if (!qword_1EBE93A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A08);
    sub_1C10DE9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A00);
  }

  return result;
}

unint64_t sub_1C10DE9B8()
{
  result = qword_1EBE93A10;
  if (!qword_1EBE93A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A10);
  }

  return result;
}

uint64_t sub_1C10DEA10@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosActionManager.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosCellBadgeConfiguration.action.getter()
{
  v0 = OUTLINED_FUNCTION_18();
  sub_1C0FCF1B4(v0);
  return OUTLINED_FUNCTION_18();
}

uint64_t PhotosCellBadgeConfiguration.init(symbolNameProvider:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1C10DEACC()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

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

__n128 PhotosCellBadgeView.init(model:font:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = a3[1].n128_u64[0];
  v12 = a3[1].n128_u64[1];
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v13 = type metadata accessor for PhotosCellBadgeView();
  (*(*(a4 - 8) + 32))(a5 + v13[9], a1, a4);
  v14 = a5 + v13[10];
  *v14 = v10;
  *(v14 + 8) = *(a2 + 2);
  v15 = (a5 + v13[11]);
  result = *a3;
  *v15 = *a3;
  v15[1].n128_u64[0] = v11;
  v15[1].n128_u64[1] = v12;
  return result;
}

uint64_t PhotosCellBadgeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v6 = v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v64 = v8;
  v63 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A28);
  OUTLINED_FUNCTION_0();
  v55 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  v54 = v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A30);
  OUTLINED_FUNCTION_0();
  v57 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v56 = v21;
  v22 = v2 + *(a1 + 44);
  v23 = v2;
  v24 = (*v22)(v2 + *(a1 + 36));
  v26 = *(v22 + 16);
  if (v26)
  {
    v27 = *(v22 + 24);
    v28 = *(v13 + 16);
    v49 = v24;
    v50 = v25;
    v29 = v26;
    v28(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, a1);
    v30 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v31 = swift_allocObject();
    v51 = v12;
    v52 = v29;
    v32 = v23;
    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
    *(v31 + 2) = v34;
    *(v31 + 3) = v33;
    *(v31 + 4) = v29;
    *(v31 + 5) = v27;
    v53 = v27;
    v35 = (*(v13 + 32))(&v31[v30], &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    MEMORY[0x1EEE9AC00](v35);
    *(&v49 - 6) = v34;
    *(&v49 - 5) = v33;
    v36 = v49;
    *(&v49 - 4) = v32;
    *(&v49 - 3) = v36;
    *(&v49 - 2) = v50;
    sub_1C0FCF1B4(v29);
    sub_1C10DF44C();

    v37 = v54;
    sub_1C1265480();

    v38 = v51;
    sub_1C12632D0();
    v39 = OUTLINED_FUNCTION_3_28(&qword_1EDE7B7F0, &qword_1EBE93A28);
    v40 = sub_1C10C6888();
    v41 = v56;
    v42 = v60;
    v43 = v63;
    sub_1C12649F0();
    (*(v58 + 8))(v38, v43);
    (*(v55 + 8))(v37, v42);
    v44 = v57;
    v45 = v61;
    (*(v57 + 16))(v64, v41, v61);
    swift_storeEnumTagMultiPayload();
    v66 = v42;
    v67 = v43;
    v68 = v39;
    v69 = v40;
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_18();
    sub_1C1263C20();
    sub_1C0FCF004(v52);
    return (*(v44 + 8))(v41, v45);
  }

  else
  {
    sub_1C10DF374(v6);

    sub_1C0FB7E00(v6, v64);
    swift_storeEnumTagMultiPayload();
    v47 = OUTLINED_FUNCTION_3_28(&qword_1EDE7B7F0, &qword_1EBE93A28);
    v48 = sub_1C10C6888();
    v66 = v60;
    v67 = v63;
    v68 = v47;
    v69 = v48;
    OUTLINED_FUNCTION_0_41();
    sub_1C10DF44C();
    sub_1C1263C20();
    return sub_1C0FB7E64(v6);
  }
}

uint64_t sub_1C10DF2B0(void (*a1)(void))
{
  type metadata accessor for PhotosCellBadgeView();
  sub_1C10DEACC();
  a1();
}

uint64_t sub_1C10DF374@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_1EDE7AF08;

  if (v2 != -1)
  {
    swift_once();
  }

  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1C10DF44C()
{
  result = qword_1EDE7BE78;
  if (!qword_1EDE7BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80);
    sub_1C1062140();
    swift_getOpaqueTypeConformance2();
    sub_1C1025E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE78);
  }

  return result;
}

uint64_t sub_1C10DF514()
{
  type metadata accessor for PhotosCellBadgeView();
  v1 = *(v0 + 32);

  return sub_1C10DF2B0(v1);
}

uint64_t sub_1C10DF5F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A13ActionManagerCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C10DF660()
{
  sub_1C103F710();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for PhotosCellBadgeConfiguration();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1C10DF720(uint64_t result, unsigned int a2, uint64_t a3)
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

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 9) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((v9 + ((v7 + 9) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
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

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10DF888(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 9] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((((v11 + v19) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[2] = 0;
              v20[3] = 0;
              v20[1] = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10DFA8C()
{
  result = qword_1EDE7BC00;
  if (!qword_1EDE7BC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A28);
    sub_1C12632E0();
    sub_1C0FDB6D4(&qword_1EDE7B7F0, &qword_1EBE93A28);
    sub_1C10C6888();
    swift_getOpaqueTypeConformance2();
    sub_1C10DF44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC00);
  }

  return result;
}

uint64_t PhotosMultiAssetViewItem.id.getter()
{
  v1 = 7104878;
  v2 = *(v0 + 8);
  v8 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  if (v2 && (v3 = [v2 uuid]) != 0)
  {
    v4 = v3;
    v1 = sub_1C1265EA0();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1C68EF850](v1, v6);

  return v8;
}

uint64_t sub_1C10DFC68@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosMultiAssetViewItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PhotosTitleAccessoryStack.init(alignment:title:subtitle:combinedTitleAndSubtitle:accessory:useCombinedTitlesIfNeeded:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, void (*a5)(uint64_t)@<X7>, _BYTE *a6@<X8>, uint64_t a7, char a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v15 = *a1;
  __src[0] = a9;
  __src[1] = a10;
  __src[2] = a11;
  __src[3] = a12;
  v16 = type metadata accessor for PhotosTitleAccessoryStack();
  *&a6[v16[27]] = 0x4000000000000000;
  v17 = v16[28];
  *&__src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  v18 = memcpy(&a6[v17], __src, 0xD1uLL);
  *a6 = v15;
  v19 = a2(v18);
  v20 = a3(v19);
  v21 = a2(v20);
  v22 = a4(v21);
  a5(v22);

  a6[v16[25]] = a8;
  return result;
}

uint64_t PhotosContentTitleCard.init(content:titleStack:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a1();
  v4 = type metadata accessor for PhotosContentTitleCard();
  return a3(v4, v5, v6, v7);
}

uint64_t PhotosContentTitleCard.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v6 = sub_1C12655A0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v18[4] = v4;
  v18[5] = v5;
  v19 = *(a1 + 32);
  v20 = v2;
  sub_1C10A7F5C();
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v11, v6, WitnessTable);
  v16 = *(v8 + 8);
  v16(v11, v6);
  sub_1C0FDBA4C(v14, v6, WitnessTable);
  return (v16)(v14, v6);
}

uint64_t sub_1C10E00A0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_1C0FDBA4C(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for PhotosContentTitleCard();
  sub_1C0FDBA4C(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_1C119EE80(&v39, 2, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

uint64_t PhotosTitleStackAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10E03C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 112);
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
    sub_1C10AFFB4(v17);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosTitleAccessoryStack.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = a1[2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_2_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  v53 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v42 = sub_1C12654C0();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v6;
  v7 = a1[3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  v8 = a1[4];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262C50();
  OUTLINED_FUNCTION_22();
  sub_1C1263C30();
  v9 = a1[5];
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v44 = sub_1C12654C0();
  v45 = MEMORY[0x1E69817F8];
  v46 = swift_getWitnessTable();
  v49 = sub_1C12633A0();
  v48 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v51 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - v12;
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v52 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v39 - v18;
  *&v19 = v3;
  *(&v19 + 1) = v7;
  *&v20 = v8;
  *(&v20 + 1) = v9;
  v39 = v20;
  v40 = v19;
  v66 = v19;
  v67 = v20;
  v21 = a1;
  v41 = a1;
  v22 = a1[6];
  v23 = a1[7];
  v68 = v22;
  v69 = v23;
  v25 = v21[9];
  v70 = v21[8];
  v24 = v70;
  v71 = v25;
  v26 = v57;
  v72 = v57;
  sub_1C1012734();
  v27 = v54;
  sub_1C12654B0();
  v59 = v40;
  v60 = v39;
  v61 = v22;
  v62 = v23;
  v63 = v24;
  v64 = v25;
  v65 = v26;
  v28 = v42;
  v29 = swift_getWitnessTable();
  sub_1C10A0734();
  v30 = v43;
  sub_1C1264F60();
  (*(v56 + 8))(v27, v28);
  sub_1C10E03C4(v41, v77);
  sub_1C100C7D0(v77);
  OUTLINED_FUNCTION_5_3();
  v31 = swift_getWitnessTable();
  v75 = v29;
  v76 = v31;
  v32 = v48;
  v33 = swift_getWitnessTable();
  v34 = v47;
  sub_1C1264FA0();
  (*(v51 + 8))(v30, v32);
  v73 = v33;
  v74 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = v50;
  sub_1C0FDBA4C(v34, v13, v35);
  v37 = *(v52 + 8);
  v37(v34, v13);
  sub_1C0FDBA4C(v36, v13, v35);
  return (v37)(v36, v13);
}

uint64_t sub_1C10E0BC0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v28 = a1;
  v29 = a9;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  v14 = sub_1C1263190();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = a10;
  v21 = type metadata accessor for PhotosTitleAccessoryStack();
  sub_1C10E0E68(v21);
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E697E5C0];
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(v17, v14, v22);
  v23 = *(v15 + 8);
  v23(v17, v14);
  (*(v15 + 16))(v17, v20, v14);
  v33 = 0;
  v34 = 1;
  v37 = v17;
  v38 = &v33;
  v32[0] = v14;
  v32[1] = MEMORY[0x1E6981840];
  v30 = v22;
  v31 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v37, 2, v32);
  v23(v20, v14);
  return (v23)(v17, v14);
}

uint64_t sub_1C10E0E68(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v4 = sub_1C12655A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  v10 = v3;
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = v1;
  sub_1C10A7F5C();
  sub_1C1265590();
  swift_getWitnessTable();
  sub_1C1264F50();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C10E1030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v25 = a1;
  v26 = a6;
  v29 = a9;
  v24 = a10;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  sub_1C1263C30();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v14 = sub_1C12654C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v24;
  v38 = v25;
  sub_1C1012734();
  sub_1C12654B0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v17, v14, WitnessTable);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_1C0FDBA4C(v20, v14, WitnessTable);
  return (v22)(v20, v14);
}

unint64_t sub_1C10E13A8()
{
  result = qword_1EBE93A40;
  if (!qword_1EBE93A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A40);
  }

  return result;
}

uint64_t sub_1C10E1448@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v95 = a8;
  v94 = a7;
  v93 = a6;
  v96 = a1;
  v105 = a9;
  v108 = a10;
  v14 = sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  v90 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &WitnessTable - v16;
  v91 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &WitnessTable - v20;
  v104 = v21;
  v103 = sub_1C1266790();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v107 = &WitnessTable - v24;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v25 = sub_1C12655A0();
  v83 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &WitnessTable - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v81 = &WitnessTable - v29;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1C1262C50();
  v80 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &WitnessTable - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v79 = &WitnessTable - v34;
  v100 = sub_1C1263C30();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &WitnessTable - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &WitnessTable - v37;
  v84 = a2;
  v121 = a2;
  v122 = a3;
  v85 = a3;
  v38 = a4;
  v123 = a4;
  v124 = a5;
  v106 = a5;
  v39 = v93;
  v125 = v93;
  v40 = v94;
  v126 = v94;
  v41 = v95;
  v127 = v95;
  v128 = v108;
  v42 = type metadata accessor for PhotosTitleAccessoryStack();
  v43 = v96;
  v44 = v96[*(v42 + 100)] == 1;
  v92 = v30;
  v82 = v42;
  if (v44)
  {
    v45 = sub_1C1264420();
    MEMORY[0x1EEE9AC00](v45);
    v46 = v85;
    *(&WitnessTable - 10) = v84;
    *(&WitnessTable - 9) = v46;
    v47 = v106;
    *(&WitnessTable - 8) = v38;
    *(&WitnessTable - 7) = v47;
    *(&WitnessTable - 6) = v39;
    *(&WitnessTable - 5) = v40;
    *(&WitnessTable - 4) = v41;
    v54 = v108;
    *(&WitnessTable - 3) = v108;
    *(&WitnessTable - 2) = v43;
    sub_1C1262C40();
    v48 = swift_getWitnessTable();
    v49 = v79;
    sub_1C0FDBA4C(v32, v30, v48);
    v50 = *(v80 + 8);
    v50(v32, v30);
    sub_1C0FDBA4C(v49, v30, v48);
    swift_getWitnessTable();
    sub_1C1112D68();
    v50(v32, v30);
    v50(v49, v30);
  }

  else
  {
    sub_1C10E2468();
    v51 = swift_getWitnessTable();
    v52 = v81;
    sub_1C0FDBA4C(v27, v25, v51);
    v53 = *(v83 + 8);
    v53(v27, v25);
    sub_1C0FDBA4C(v52, v25, v51);
    swift_getWitnessTable();
    sub_1C1112E18();
    v53(v27, v25);
    v53(v52, v25);
    v54 = v108;
  }

  v97 = v25;
  v55 = v103;
  v56 = v102;
  v57 = v107;
  v58 = v101;
  if (*v43)
  {
    v59 = v102;
    v60 = 1;
    v61 = v104;
  }

  else
  {
    v62 = v88;
    sub_1C12649E0();
    v112 = v54;
    v113 = MEMORY[0x1E697F568];
    v63 = v91;
    v64 = swift_getWitnessTable();
    v65 = v87;
    sub_1C0FDBA4C(v62, v63, v64);
    v66 = v86;
    v67 = *(v86 + 8);
    v67(v62, v63);
    v110 = 0;
    v111 = 1;
    v121 = &v110;
    (*(v66 + 16))(v62, v65, v63);
    v122 = v62;
    v119 = MEMORY[0x1E6981840];
    v120 = v63;
    v117 = MEMORY[0x1E6981838];
    v118 = v64;
    v68 = v89;
    sub_1C119EE80(&v121, 2, &v119);
    v67(v65, v63);
    v67(v62, v63);
    v57 = v107;
    v61 = v104;
    (*(v90 + 32))(v56, v68, v104);
    v59 = v56;
    v60 = 0;
  }

  __swift_storeEnumTagSinglePayload(v59, v60, 1, v61);
  swift_getWitnessTable();
  sub_1C1170030(v56, v57);
  v69 = *(v58 + 8);
  v69(v56, v55);
  v70 = v99;
  v71 = v98;
  v72 = v100;
  (*(v99 + 16))(v98, v109, v100);
  v121 = v71;
  (*(v58 + 16))(v56, v57, v55);
  v122 = v56;
  v119 = v72;
  v120 = v55;
  v73 = v57;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v115 = v74;
  v116 = v75;
  v117 = swift_getWitnessTable();
  v114 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  sub_1C119EE80(&v121, 2, &v119);
  v69(v73, v55);
  v76 = *(v70 + 8);
  v76(v109, v72);
  v69(v56, v55);
  return (v76)(v71, v72);
}

uint64_t sub_1C10E1FF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a8;
  v47 = a7;
  v46 = a6;
  v45 = a5;
  v48 = a1;
  v52 = a9;
  v43 = a4;
  v51 = *(a4 - 8);
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v41 - v16;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v17 = sub_1C12655A0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v21 = sub_1C1263190();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v41 - v26;
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v63 = a8;
  v64 = v44;
  v27 = type metadata accessor for PhotosTitleAccessoryStack();
  v28 = v48;
  sub_1C10E2468();
  sub_1C1264470();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();
  (*(v18 + 8))(v20, v17);
  v56[2] = WitnessTable;
  v56[3] = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  v31 = v53;
  sub_1C0FDBA4C(v24, v21, v30);
  v32 = *(v22 + 8);
  v32(v24, v21);
  v33 = v28 + *(v27 + 96);
  v34 = v49;
  v35 = v43;
  v36 = v42;
  sub_1C0FDBA4C(v33, v43, v42);
  (*(v22 + 16))(v24, v31, v21);
  v57 = v24;
  v38 = v50;
  v37 = v51;
  (*(v51 + 16))(v50, v34, v35);
  v58 = v38;
  v56[0] = v21;
  v56[1] = v35;
  v54 = v30;
  v55 = v36;
  sub_1C119EE80(&v57, 2, v56);
  v39 = *(v37 + 8);
  v39(v34, v35);
  v32(v53, v21);
  v39(v38, v35);
  return (v32)(v24, v21);
}

uint64_t sub_1C10E2468()
{
  if (*v0)
  {
    v1 = sub_1C1263AA0();
  }

  else
  {
    v1 = sub_1C1263AB0();
  }

  MEMORY[0x1EEE9AC00](v1);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  return sub_1C1265590();
}

uint64_t sub_1C10E257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v41 = a6;
  v40 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v46 = v23;
  v47 = v24;
  v48 = v25;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v53 = v30;
  v31 = type metadata accessor for PhotosTitleAccessoryStack();
  sub_1C0FDBA4C(a1 + *(v31 + 84), a2, a4);
  v32 = a1 + *(v31 + 88);
  v33 = a5;
  sub_1C0FDBA4C(v32, a3, a5);
  (*(v16 + 16))(v19, v22, a2);
  v46 = v19;
  v34 = v40;
  v35 = v42;
  (*(v40 + 16))(v42, v14, a3);
  v47 = v35;
  v45[0] = a2;
  v45[1] = a3;
  v43 = a4;
  v44 = v33;
  sub_1C119EE80(&v46, 2, v45);
  v36 = *(v34 + 8);
  v36(v14, a3);
  v37 = *(v16 + 8);
  v37(v22, a2);
  v36(v42, a3);
  return (v37)(v19, a2);
}

uint64_t sub_1C10E2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v29 = *(type metadata accessor for PhotosTitleAccessoryStack() + 92);
  sub_1C0FDBA4C(a1 + v29, a2, a6);
  sub_1C0FDBA4C(a1 + v29, a2, a6);
  v30 = *(v9 + 16);
  v30(v14, v20, a2);
  v35 = v14;
  v30(v11, v17, a2);
  v36 = v11;
  v34[0] = a2;
  v34[1] = a2;
  v33[0] = a6;
  v33[1] = a6;
  sub_1C119EE80(&v35, 2, v34);
  v31 = *(v9 + 8);
  v31(v17, a2);
  v31(v20, a2);
  v31(v11, a2);
  return (v31)(v14, a2);
}

uint64_t sub_1C10E2A3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C10E2AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C10E2C90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosTitleStackAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C10E2FF8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        v0 = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          sub_1C107032C();
          v0 = v6;
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C10E3114(uint64_t result, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[3];
  v10 = a3[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v13 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v13;
  }

  v17 = a3[5];
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v16 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v16;
  }

  v21 = *(v7 + 80);
  v22 = *(*(v6 - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(v14 + 80);
  v25 = *(v18 + 80);
  if (v20 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v9 - 8) + 64) + v21;
  v28 = v22 + v24;
  v29 = *(*(v10 - 8) + 64) + v25 + 1;
  if (v26 >= a2)
  {
LABEL_35:
    if (v20 > 0xFE)
    {
      v38 = (result + v21 + 1) & ~v21;
      if (v8 != v26)
      {
        v38 = (v38 + v22 + v23) & ~v23;
        if (v12 == v26)
        {
          v8 = v12;
          v6 = v9;
        }

        else
        {
          v38 = (v28 + ((v27 + v38) & ~v21)) & ~v24;
          if (v15 == v26)
          {
            v8 = v15;
            v6 = v10;
          }

          else
          {
            v38 = (v29 + v38) & ~v25;
            v8 = v19;
            v6 = v17;
          }
        }
      }

      return __swift_getEnumTagSinglePayload(v38, v8, v6);
    }

    else
    {
      v37 = *result;
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = ((((*(*(v17 - 8) + 64) + ((v29 + ((v28 + ((v27 + ((v22 + v23 + ((v21 + 1) & ~v21)) & ~v23)) & ~v21)) & ~v24)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 209;
    v31 = (a2 - v26 + 255) >> 8;
    if (v30 <= 3)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      LODWORD(v33) = 4;
    }

    else
    {
      LODWORD(v33) = 2;
    }

    if (v32 < 0x100)
    {
      LODWORD(v33) = 1;
    }

    if (v32 >= 2)
    {
      v33 = v33;
    }

    else
    {
      v33 = 0;
    }

    switch(v33)
    {
      case 1:
        v34 = *(result + v30);
        if (!*(result + v30))
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 2:
        v34 = *(result + v30);
        if (!*(result + v30))
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v34 = *(result + v30);
        if (!v34)
        {
          goto LABEL_35;
        }

LABEL_31:
        v35 = (v34 - 1) << (8 * (((((*(*(v17 - 8) + 64) + ((v29 + ((v28 + ((v27 + ((v22 + v23 + ((v21 + 1) & ~v21)) & ~v23)) & ~v21)) & ~v24)) & ~v25) + 7) & 0xF8) + 15) & 0xF8) - 47));
        if (v30 <= 3)
        {
          v36 = *result;
        }

        else
        {
          v35 = 0;
          v36 = *result;
        }

        result = v26 + (v36 | v35) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C10E346C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = a4[3];
  v11 = a4[4];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  v18 = a4[5];
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v17 <= v20)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v17;
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v8 + 80);
  v24 = *(*(v7 - 8) + 64);
  v25 = *(v12 + 80);
  v26 = *(*(v10 - 8) + 64) + v23;
  v27 = *(v15 + 80);
  v28 = v24 + v27;
  v29 = *(v19 + 80);
  v30 = *(*(v11 - 8) + 64) + v29 + 1;
  v31 = ((((*(*(v18 - 8) + 64) + ((v30 + ((v24 + v27 + ((v26 + ((v24 + v25 + ((v23 + 1) & ~v23)) & ~v25)) & ~v23)) & ~v27)) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v22 >= a3)
  {
    v35 = 0;
  }

  else
  {
    v32 = (a3 - v22 + 255) >> 8;
    if (v31 <= 3)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  if (v22 >= a2)
  {
    v38 = ~v23;
    v39 = ~v27;
    switch(v35)
    {
      case 1:
        a1[v31] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        break;
      case 2:
        *&a1[v31] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v31] = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (a2)
        {
LABEL_40:
          if (v21 > 0xFE)
          {
            v40 = &a1[v23 + 1] & v38;
            if (v9 != v22)
            {
              v40 = (v40 + v24 + v25) & ~v25;
              if (v13 == v22)
              {
                v9 = v13;
                v7 = v10;
              }

              else
              {
                v40 = (v28 + ((v26 + v40) & v38)) & v39;
                if (v16 == v22)
                {
                  v9 = v16;
                  v7 = v11;
                }

                else
                {
                  v40 = (v30 + v40) & ~v29;
                  v9 = v20;
                  v7 = v18;
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v40, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v36 = ~v22 + a2;
    bzero(a1, v31);
    if (v31 <= 3)
    {
      v37 = (v36 >> 8) + 1;
    }

    else
    {
      v37 = 1;
    }

    if (v31 > 3)
    {
      *a1 = v36;
    }

    else
    {
      *a1 = v36;
    }

    switch(v35)
    {
      case 1:
        a1[v31] = v37;
        break;
      case 2:
        *&a1[v31] = v37;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v31] = v37;
        break;
      default:
        return;
    }
  }
}

double EnvironmentValues.photosLayoutMargins.getter()
{
  sub_1C10E3900();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C10E3900()
{
  result = qword_1EDE81DA8;
  if (!qword_1EDE81DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81DA8);
  }

  return result;
}

void (*EnvironmentValues.photosLayoutMargins.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C10E3900();
  sub_1C12637F0();
  v4 = *(v3 + 3);
  *v3 = *(v3 + 2);
  *(v3 + 1) = v4;
  return sub_1C10E3A18;
}

void sub_1C10E3A18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_1C1263800();

  free(v1);
}

uint64_t View.photosLayoutMargins(_:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

unint64_t sub_1C10E3B04()
{
  result = qword_1EBE93A50;
  if (!qword_1EBE93A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A50);
  }

  return result;
}

uint64_t sub_1C10E3B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10E3BDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C10E3BDC()
{
  result = qword_1EDE7C068;
  if (!qword_1EDE7C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C068);
  }

  return result;
}

uint64_t PhotosBasicAsyncImage<>.init(image:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  *a2 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A58);
  v8 = v7[12];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[13];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a2 + v7[14];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  v11 = a2 + v7[15];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = v7[16];
  type metadata accessor for PhotosBasicAsyncImageState();
  v13 = a1;
  sub_1C12628D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 44) = 1;
  sub_1C12628D0();

  return sub_1C102500C(v6, a2 + v12);
}

uint64_t PhotosConstantAsyncImageProvider.ImageConfiguration.sourceDebugIdentifier.getter()
{
  if (*v0)
  {
    v1 = [*v0 description];
    v2 = sub_1C1265EA0();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68EF850](v2, v4);

  return 0x3A6567616D69;
}

uint64_t static PhotosConstantAsyncImageProvider.ImageConfiguration.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1C0F99BAC();
      v4 = v3;
      v5 = v2;
      v6 = sub_1C12666B0();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void PhotosConstantAsyncImageProvider.ImageConfiguration.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_1C1266EB0();
    v2 = v1;
    sub_1C12666C0();
  }

  else
  {
    sub_1C1266EB0();
  }
}

uint64_t PhotosConstantAsyncImageProvider.ImageConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1)
  {
    v2 = v1;
    sub_1C12666C0();
  }

  return sub_1C1266EE0();
}

uint64_t sub_1C10E400C()
{
  v1 = *v0;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1)
  {
    v2 = v1;
    sub_1C12666C0();
  }

  return sub_1C1266EE0();
}

uint64_t PhotosConstantAsyncImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(id *a1, void (*a2)(void *))
{
  if (*a1)
  {
    v3 = *a1;
    [v3 px_pixelSize];
    v5 = v4;
    v7 = v6;
    sub_1C1266560();
    v14[0] = v3;
    v14[1] = v5;
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v14[5] = v10;
    v14[6] = v11;
    LOBYTE(v14[7]) = 0;
    v14[8] = 0;
    memcpy(__dst, v14, sizeof(__dst));
    v15 = 0;
    v17 = 0;
    a2(__dst);
    sub_1C10E41C8(v14);
  }

  else
  {
    sub_1C10E4174();
    v12 = swift_allocError();
    LOBYTE(v14[0]) = 1;
    __dst[0] = v12;
    v17 = 1;
    a2(__dst);
  }

  return 0;
}

unint64_t sub_1C10E4174()
{
  result = qword_1EBE93A60;
  if (!qword_1EBE93A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A60);
  }

  return result;
}

uint64_t sub_1C10E41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10E423C(uint64_t a1)
{
  result = sub_1C10E4264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C10E4264()
{
  result = qword_1EDE79630;
  if (!qword_1EDE79630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79630);
  }

  return result;
}

unint64_t sub_1C10E42C0()
{
  result = qword_1EDE79628;
  if (!qword_1EDE79628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79628);
  }

  return result;
}

uint64_t sub_1C10E4314()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C10E436C@<X0>(id *a1@<X0>, void (*a2)(void *)@<X1>, void *a3@<X8>)
{
  result = PhotosConstantAsyncImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(a1, a2);
  *a3 = 0;
  return result;
}

unint64_t sub_1C10E4394(uint64_t a1)
{
  result = sub_1C10E43BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C10E43BC()
{
  result = qword_1EDE79620;
  if (!qword_1EDE79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79620);
  }

  return result;
}

_BYTE *sub_1C10E4428(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C10E44D4()
{
  result = qword_1EBE93A68;
  if (!qword_1EBE93A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A68);
  }

  return result;
}

uint64_t PhotosPlatformImageConversion.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t Image.init(platformImage:conversion:)(id a1, _BYTE *a2)
{
  if (*a2 == 1 && [a1 CGImage])
  {
    [a1 scale];
    UIImageOrientation.photosImageOrientation.getter([a1 imageOrientation]);
    v3 = a1;
    sub_1C10E4748(v3);
    if (v4)
    {
      v5 = sub_1C1265370();
    }

    else
    {
      v5 = sub_1C12652E0();
    }

    v7 = v5;

    return v7;
  }

  else
  {

    return sub_1C12652D0();
  }
}

unint64_t UIImageOrientation.photosImageOrientation.getter(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x705030106040200uLL >> (8 * a1);
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C10E4748(void *a1)
{
  v2 = [a1 accessibilityLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C1265EA0();

  return v3;
}

unint64_t sub_1C10E47BC()
{
  result = qword_1EBE93A70;
  if (!qword_1EBE93A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPlatformImageConversion(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosMockPerson.__allocating_init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_11_16();
  v0 = swift_allocObject();
  PhotosMockPerson.init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)();
  return v0;
}

uint64_t PhotosMockPerson.init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_11_16();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 88) = 1;
  sub_1C1261F60();

  *(v1 + 32) = v8;
  *(v1 + 40) = v7;
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  *(v1 + 48) = v4;
  *(v1 + 49) = v3;
  *(v1 + 50) = v2;
  v10 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v10 = v0;
  }

  *(v1 + 56) = v10;

  *(v1 + 64) = xmmword_1C12B56F0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 89) = v9;
  return v1;
}

uint64_t sub_1C10E4A30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_17_18();
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t sub_1C10E4AE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = a2;
    OUTLINED_FUNCTION_17_18();
  }
}

uint64_t sub_1C10E4BA8(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18();
  }

  return result;
}

uint64_t sub_1C10E4C38(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 49) == v2)
  {
    *(v1 + 49) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18();
  }

  return result;
}

uint64_t sub_1C10E4CC8(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 50) == v2)
  {
    *(v1 + 50) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18();
  }

  return result;
}

uint64_t sub_1C10E4D58(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();

  v4 = sub_1C0FEAAF0(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_17_18();
  }
}

uint64_t sub_1C10E4E2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_17_18();
  }

  else
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }
}

uint64_t sub_1C10E4EE0(uint64_t a1, char a2)
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
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_17_18();
}

uint64_t sub_1C10E4FA8(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_17_13();
  if (*(v1 + 89) == v2)
  {
    *(v1 + 89) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18();
  }

  return result;
}

uint64_t sub_1C10E5038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E50A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10E5064(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C10E4AE4(v1, v2);
}

uint64_t sub_1C10E50A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 16);

  return v2;
}

void sub_1C10E5128()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E51E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E5224();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10E5224()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 32);

  return v2;
}

void sub_1C10E52A8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5360@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E53B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E53B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 48);
}

uint64_t sub_1C10E542C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  return result;
}

void sub_1C10E5480()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E557C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E55D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E55D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 49);
}

uint64_t sub_1C10E5648(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 49) = a2;
  return result;
}

void sub_1C10E569C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5538();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E57F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E57F0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 50);
}

uint64_t sub_1C10E5864(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 50) = a2;
  return result;
}

void sub_1C10E58B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5754();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E59B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E5A0C();
  *a1 = result;
  return result;
}

uint64_t sub_1C10E5A0C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v0);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C10E5A84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

void sub_1C10E5AEC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5970();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5BA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E5C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10E5BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C10E5C34()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_1C10E5CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void sub_1C10E5D24()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5DDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10E5E44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10E5E44()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 80);
}

void sub_1C10E5EBC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E6014();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E6014()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 89);
}

uint64_t sub_1C10E6088(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 89) = a2;
  return result;
}

void sub_1C10E60DC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v4 = sub_1C10E6608(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5F78();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E6194()
{
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v0);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockPerson()
{
  result = qword_1EBE93AA0;
  if (!qword_1EBE93AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockPerson.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore16PhotosMockPerson___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockPerson.__deallocating_deinit()
{
  PhotosMockPerson.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C10E63F8(uint64_t a1)
{
  result = sub_1C10E6608(&qword_1EBE93A88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10E656C(uint64_t a1)
{
  result = sub_1C10E6608(&qword_1EBE93A90);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10E6608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockPerson();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C10E667C()
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

uint64_t sub_1C10E6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C10E6FA8(a2, (a3 + 1));
  *a3 = a1;
}

uint64_t View.photosSectionPicker(isEnabled:contextBuilder:)(char a1, void (*a2)(_OWORD *__return_ptr))
{
  if (a1)
  {
    a2(v3);
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1C10E6E10();
  sub_1C12649C0();
  return sub_1C10E6E64(v3);
}

unint64_t sub_1C10E6E10()
{
  result = qword_1EBE93AB0;
  if (!qword_1EBE93AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93AB0);
  }

  return result;
}

uint64_t sub_1C10E6E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosSectionPickerContext.Item.localizedString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 PhotosSectionPickerContext.Item.init(id:localizedString:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t static PhotosSectionPickerContext.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1C68F0200]() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return sub_1C1266D50();
}

uint64_t sub_1C10E6FA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static PhotosSectionPickerContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AC0);
  MEMORY[0x1C68EEF20](v9);
  MEMORY[0x1C68EEF20](v8, v4);
  if (MEMORY[0x1C68F0200](v9, v8) & 1) != 0 && (v9[5] == v8[5] ? (v5 = v9[6] == v8[6]) : (v5 = 0), v5 || (sub_1C1266D50()))
  {
    sub_1C0FF4D1C(v8);
    sub_1C0FF4D1C(v9);
    v6 = sub_1C0FEA9BC(*a1, *a2);
  }

  else
  {
    sub_1C0FF4D1C(v8);
    sub_1C0FF4D1C(v9);
    v6 = 0;
  }

  return v6 & 1;
}

void *static PhotosSectionPickerPreferenceKey.reduce(value:nextValue:)(void *__src, void (*a2)(void *__return_ptr))
{
  if (*__src)
  {
    memcpy(v4, __src, sizeof(v4));
  }

  else
  {
    a2(v4);
  }

  return memcpy(__src, v4, 0x50uLL);
}

uint64_t sub_1C10E715C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0FDB6D4(&qword_1EBE93AD8, &qword_1EBE93AB8);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for PhotosSectionPickerPreferenceKey(_BYTE *result, int a2, int a3)
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

uint64_t PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1();
  (*(v8 + 16))(a4, a1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  OUTLINED_FUNCTION_23_7();
  type metadata accessor for PhotosMemoryCellTextOverlayView();
  type metadata accessor for PhotosMemoryCellTextOverlayModel(0);
  sub_1C12628D0();
  v11 = OUTLINED_FUNCTION_5_5();

  return v12(v11);
}