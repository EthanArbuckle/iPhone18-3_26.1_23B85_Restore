uint64_t sub_1A4820E5C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A422E4F8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ShareParticipantImageConfiguration(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A48210C8()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore42ShareParticipantImageConfigurationsFetcher___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

size_t sub_1A4821174(size_t a1, int64_t a2, char a3)
{
  result = sub_1A4821194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A4821194(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A48217D8(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL sub_1A4821390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v28 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1A481E58C(v13, v10);
      sub_1A481E58C(v14, v6);
      v16 = v10[1];
      v17 = v6[1];
      if (v16)
      {
        if (!v17 || (*v10 != *v6 || v16 != v17) && (sub_1A524EAB4() & 1) == 0)
        {
LABEL_38:
          sub_1A48220B8(v6, type metadata accessor for ShareParticipantImageConfiguration);
          sub_1A48220B8(v10, type metadata accessor for ShareParticipantImageConfiguration);
          return 0;
        }
      }

      else if (v17)
      {
        goto LABEL_38;
      }

      v18 = v10[3];
      v19 = v6[3];
      if (v18)
      {
        if (!v19 || (v10[2] != v6[2] || v18 != v19) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v19)
      {
        goto LABEL_38;
      }

      v20 = v10[5];
      v21 = v6[5];
      if (v20)
      {
        if (!v21 || (v10[4] != v6[4] || v20 != v21) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v21)
      {
        goto LABEL_38;
      }

      v22 = v10[7];
      v23 = v6[7];
      if (v22)
      {
        if (!v23 || (v10[6] != v6[6] || v22 != v23) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v23)
      {
        goto LABEL_38;
      }

      if ((sub_1A5248704() & 1) == 0)
      {
        goto LABEL_38;
      }

      v24 = *(v4 + 36);
      v25 = *(v10 + v24);
      v26 = *(v6 + v24);
      sub_1A48220B8(v6, type metadata accessor for ShareParticipantImageConfiguration);
      sub_1A48220B8(v10, type metadata accessor for ShareParticipantImageConfiguration);
      result = v25 == v26;
      if (v25 == v26)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

BOOL sub_1A4821660(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (a1[4] != a2[4] || v9 != v10) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (!v12 || (a1[6] != a2[6] || v11 != v12) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = type metadata accessor for ShareParticipantImageConfiguration(0);
  if (sub_1A5248704())
  {
    return *(a1 + *(v13 + 36)) == *(a2 + *(v13 + 36));
  }

  return 0;
}

void sub_1A48217D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4821888()
{
  result = qword_1EB1430D8;
  if (!qword_1EB1430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1430D8);
  }

  return result;
}

void sub_1A482194C()
{
  sub_1A3C39A2C(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5248714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4821A18()
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

void sub_1A4821B14()
{
  if (!qword_1EB143150)
  {
    type metadata accessor for ShareParticipantImageConfiguration(255);
    sub_1A4822070(&qword_1EB143158, type metadata accessor for ShareParticipantImageConfiguration);
    v0 = type metadata accessor for PhotosAsyncImageProviderCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143150);
    }
  }
}

void sub_1A4821BA8(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  v13 = a3;
  v4 = sub_1A5248714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v10[1] = a1[2];
  v10[2] = v8;
  v9 = a1[7];
  v10[3] = a1[6];
  v10[4] = v9;
  type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
  v11 = sub_1A5248704();
  (*(v5 + 8))(v7, v4);
  PXSizeScale();
}

void sub_1A4821E90(void *a1, int a2, id a3)
{
  v4 = *(v3 + 16);
  if (a1)
  {
    [a1 px_pixelSize];
    sub_1A524D9B4();
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = sub_1A5242584();
    sub_1A4822070(&qword_1EB143160, MEMORY[0x1E69C1EC0]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C1EB0], v6);
    a3 = 0;
  }

  *&v9 = v5;
  v10 = 1;
  v8 = a3;
  v4(&v9);
}

uint64_t sub_1A4822070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48220B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id StoryAsyncPlayerDiagnosticsService.__allocating_init(itemProviders:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1A3C52C70(0, &qword_1EB143168);
  v2 = sub_1A524CA14();

  v3 = [v1 initWithItemProviders_];

  return v3;
}

id StoryAsyncPlayerDiagnosticsService.init(itemProviders:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v3 = 0;
    v4 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if (v4)
      {
      }

      else
      {
        v7 = v5;
        if ([v5 itemForIdentifier_])
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {

          v13 = 0u;
          v14 = 0u;
        }

        v15[0] = v13;
        v15[1] = v14;
        if (*(&v14 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB126B10);
          if (swift_dynamicCast())
          {
            v4 = v16;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          sub_1A3C35B00(v15);
          v4 = 0;
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v5 = *(a1 + 8 * v3 + 32);
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v4 = 0;
LABEL_24:
  *&v11[OBJC_IVAR___PXStoryAsyncPlayerDiagnosticsService_viewController] = v4;
  sub_1A3C52C70(0, &qword_1EB143168);
  v8 = sub_1A524CA14();

  v12.receiver = v11;
  v12.super_class = type metadata accessor for StoryAsyncPlayerDiagnosticsService();
  v9 = objc_msgSendSuper2(&v12, sel_initWithItemProviders_, v8);

  return v9;
}

void sub_1A482246C()
{
  v1 = type metadata accessor for DiagnosticsRootView();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + OBJC_IVAR___PXStoryAsyncPlayerDiagnosticsService_viewController);
  if (v2)
  {
    type metadata accessor for StoryAsyncPlayer();
    v3 = v2;
    static StoryAsyncPlayer.alivePlayers.getter();
  }

  v11 = objc_opt_self();
  v20 = sub_1A48228BC;
  v21 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v18 = sub_1A3D35A90;
  v19 = &block_descriptor_281;
  v12 = _Block_copy(&aBlock);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v14 = isEscapingClosureAtFileLocation;
    if (sub_1A524E2B4())
    {
      *v11 = v14;
      v11[1] = 0;
      sub_1A482292C(0);
      v4 = 0;
      sub_1A524B694();
      *(v11 + 1) = aBlock;
      sub_1A3C52C70(0, &unk_1EB120A90);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v5 includeImagesInVisualDiagnosticsForTTR];

      sub_1A524B694();
      v6 = *(&aBlock + 1);
      *(v11 + 32) = aBlock;
      v11[5] = v6;
      v7 = *(v1 + 32);
      *(v11 + v7) = swift_getKeyPath();
      sub_1A4137EE8(0);
      swift_storeEnumTagMultiPayload();
      sub_1A4823E74();
      v9 = objc_allocWithZone(v8);
      v10 = sub_1A5249624();
      [v4 px:v10 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
    }

    else
    {

      v15 = objc_opt_self();
      v20 = sub_1A482284C;
      v21 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v18 = sub_1A3D35A90;
      v19 = &block_descriptor_3_10;
      v16 = _Block_copy(&aBlock);

      _Block_release(v16);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);
      }
    }
  }
}

uint64_t type metadata accessor for DiagnosticsRootView()
{
  result = qword_1EB1D9480;
  if (!qword_1EB1D9480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A482284C(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];
}

void sub_1A48228BC(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];
}

id StoryAsyncPlayerDiagnosticsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryAsyncPlayerDiagnosticsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48229EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[7] = a2;
  sub_1A482437C();
  v8[5] = *(v3 - 8);
  v8[6] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v8[4] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A48241F0();
  v8[3] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(a1 + 16);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  type metadata accessor for StoryAsyncPlayer();
  sub_1A482426C();
  sub_1A48242CC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4822DB4@<D0>(void *a1@<X8>)
{

  StoryAsyncPlayerView.init(player:)(v2, a1);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A482426C();
  v4 = (a1 + *(v3 + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_1A4822E30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  sub_1A4824630();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48245A4();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  sub_1A4824524();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v40 = a1;
  sub_1A4824694(0, &qword_1EB130100, MEMORY[0x1E697D6A0]);
  sub_1A3FF7120();
  sub_1A524BA54();
  v39 = a1;
  sub_1A3FF7760(0);
  sub_1A48246F4(&qword_1EB121040, sub_1A3FF7760);
  sub_1A524BA54();
  v42 = *(a1 + 16);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v22 = v41;
  if (v41)
  {
  }

  v23 = v22 == 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  (*(v35 + 32))(v10, v5, v36);
  v26 = &v10[*(v34 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_1A3E07024;
  v26[2] = v25;
  sub_1A48248BC(v10, v13, sub_1A48245A4);
  v27 = *(v16 + 16);
  v27(v18, v21, v15);
  v28 = v37;
  sub_1A4824854(v13, v37, sub_1A48245A4);
  v29 = v38;
  v27(v38, v18, v15);
  sub_1A48244A8(0, &qword_1EB1431D0, sub_1A4824524, sub_1A48245A4);
  sub_1A4824854(v28, &v29[*(v30 + 48)], sub_1A48245A4);
  sub_1A48247F8(v13);
  v31 = *(v16 + 8);
  v31(v21, v15);
  sub_1A48247F8(v28);
  return (v31)(v18, v15);
}

void sub_1A48232B8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000018;
  *(a1 + 8) = 0x80000001A53ED550;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A48232E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DiagnosticsRootView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  sub_1A4824694(0, &qword_1EB127480, MEMORY[0x1E697D670]);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v36 - v18;
  v36 = a1;
  v37 = 0x80000001A53E0E60;
  sub_1A4824854(a1, v9, type metadata accessor for DiagnosticsRootView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1A48248BC(v9, v20 + v19, type metadata accessor for DiagnosticsRootView);
  sub_1A4824854(a1, v6, type metadata accessor for DiagnosticsRootView);
  v21 = (v19 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1A48248BC(v6, v22 + v19, type metadata accessor for DiagnosticsRootView);
  v23 = (v22 + v21);
  *v23 = sub_1A4824924;
  v23[1] = v20;
  v46 = 0xD000000000000012;
  v47 = v37;

  v24 = v38;
  sub_1A524B704();

  sub_1A4824854(v36, v9, type metadata accessor for DiagnosticsRootView);
  v25 = swift_allocObject();
  sub_1A48248BC(v9, v25 + v19, type metadata accessor for DiagnosticsRootView);
  v26 = (v25 + v21);
  *v26 = sub_1A48237A4;
  v26[1] = 0;
  v44 = 0x64615220656C6946;
  v45 = 0xEA00000000007261;
  v27 = v39;
  sub_1A524B704();
  v29 = v40;
  v28 = v41;
  v30 = *(v40 + 16);
  v30(v41, v24, v11);
  v31 = v42;
  v30(v42, v27, v11);
  v32 = v43;
  v30(v43, v28, v11);
  sub_1A3FF7794();
  v30(&v32[*(v33 + 48)], v31, v11);
  v34 = *(v29 + 8);
  v34(v27, v11);
  v34(v24, v11);
  v34(v31, v11);
  return (v34)(v28, v11);
}

void sub_1A48237A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(PXRadarConfiguration) init];
  [v2 setComponent_];
  [v2 addDiagnosticProvider_];
  PXFileRadarWithConfiguration(v2);
}

uint64_t sub_1A4823828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_1A524BEE4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A524BF64();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiagnosticsRootView();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = sub_1A524BFC4();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = sub_1A5248284();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86EA0(v18);
  sub_1A5248274();
  (*(v16 + 8))(v18, v15);
  aBlock = *(a1 + 16);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  v20 = v48;
  if (v48)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v31 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v32 = *(v9 + 8);
    v32(v11, v42);
    sub_1A4824854(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiagnosticsRootView);
    v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_1A48248BC(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for DiagnosticsRootView);
    v24 = (v23 + v22);
    v25 = v35;
    *v24 = v34;
    v24[1] = v25;
    *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v46 = sub_1A4824B0C;
    v47 = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v44 = sub_1A3C2E0D0;
    v45 = &block_descriptor_23_5;
    v26 = _Block_copy(&aBlock);

    v27 = v36;
    sub_1A524BF14();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1A48246F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A48246F4(&qword_1EB12B1B0, sub_1A3C38394);
    v28 = v38;
    v29 = v41;
    sub_1A524E224();
    v30 = v31;
    MEMORY[0x1A5908790](v14, v27, v28, v26);
    _Block_release(v26);

    (*(v40 + 8))(v28, v29);
    (*(v37 + 8))(v27, v39);
    return (v32)(v14, v42);
  }

  return result;
}

void sub_1A4823E74()
{
  if (!qword_1EB143178)
  {
    type metadata accessor for DiagnosticsRootView();
    sub_1A4823ED8();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143178);
    }
  }
}

unint64_t sub_1A4823ED8()
{
  result = qword_1EB1D9478;
  if (!qword_1EB1D9478)
  {
    type metadata accessor for DiagnosticsRootView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D9478);
  }

  return result;
}

void sub_1A4823F58()
{
  sub_1A4824C5C(319, &qword_1EB143180, type metadata accessor for StoryAsyncPlayer, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126B10);
    if (v1 <= 0x3F)
    {
      sub_1A4824C5C(319, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A3C37510(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A4824C5C(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A4824104(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A482414C();
  sub_1A48229EC(v1, a1 + *(v3 + 44));
}

void sub_1A482414C()
{
  if (!qword_1EB143190)
  {
    sub_1A48241B4(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143190);
    }
  }
}

void sub_1A48241F0()
{
  if (!qword_1EB1431A8)
  {
    type metadata accessor for StoryAsyncPlayer();
    sub_1A482426C();
    sub_1A48242CC();
    v0 = sub_1A5242A04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431A8);
    }
  }
}

void sub_1A482426C()
{
  if (!qword_1EB1431B0)
  {
    type metadata accessor for StoryAsyncPlayerView();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431B0);
    }
  }
}

unint64_t sub_1A48242CC()
{
  result = qword_1EB1431B8;
  if (!qword_1EB1431B8)
  {
    sub_1A482426C();
    sub_1A48246F4(&qword_1EB12A298, type metadata accessor for StoryAsyncPlayerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1431B8);
  }

  return result;
}

void sub_1A482437C()
{
  if (!qword_1EB1431C0)
  {
    sub_1A4824410(255);
    sub_1A48246F4(&qword_1EB1431E8, sub_1A4824410);
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431C0);
    }
  }
}

void sub_1A482444C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A48244A8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A48244A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A4824524()
{
  if (!qword_1EB1431D8)
  {
    sub_1A4824694(255, &qword_1EB130100, MEMORY[0x1E697D6A0]);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431D8);
    }
  }
}

void sub_1A48245A4()
{
  if (!qword_1EB1431E0)
  {
    sub_1A4824630();
    sub_1A3C37510(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431E0);
    }
  }
}

void sub_1A4824630()
{
  if (!qword_1EB121470)
  {
    sub_1A3FF7760(255);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121470);
    }
  }
}

void sub_1A4824694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A48246F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4824744()
{
  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return sub_1A524B854();
}

uint64_t sub_1A48247F8(uint64_t a1)
{
  sub_1A48245A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4824854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48248BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4824924(uint64_t a1)
{
  v3 = *(type metadata accessor for DiagnosticsRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
  v6 = sub_1A524C634();
  [v5 setName_];

  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  [v5 setIsPrivateDataAllowed_];
  [objc_opt_self() showVisualDiagnosticsWithConfiguration:v5 fromViewController:*(v4 + 8) completionHandler:0];
}

uint64_t sub_1A4824A7C()
{
  v1 = *(type metadata accessor for DiagnosticsRootView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1A4823828(v0 + v2, v4, v5);
}

uint64_t sub_1A4824B0C()
{
  v1 = *(type metadata accessor for DiagnosticsRootView() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + v2);
  v4 = *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_1A3C52C70(0, &unk_1EB120A90);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  [v5 setIncludeImagesInVisualDiagnosticsForTTR_];

  return v3(v4);
}

void sub_1A4824C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4824CC0()
{
  if (!qword_1EB1431F8)
  {
    sub_1A48241B4(255);
    sub_1A48246F4(&qword_1EB143200, sub_1A48241B4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1431F8);
    }
  }
}

void type metadata accessor for PHAuthorizationStatus()
{
  if (!qword_1EB143220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB143220);
    }
  }
}

uint64_t sub_1A4824DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v42 = a6;
  v49 = a4;
  v37 = a3;
  v41 = a2;
  v39 = a1;
  v48 = a7;
  v10 = sub_1A524CCB4();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4826598(255, &qword_1EB143208, MEMORY[0x1E697F960]);
  v12 = a5;
  v38 = a5;
  sub_1A5249754();
  sub_1A5249754();
  v13 = sub_1A524B514();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  sub_1A5248394();
  v16 = sub_1A5248804();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v36 - v20;
  v21 = v42;
  v50 = v12;
  v51 = v42;
  v52 = a1;
  v22 = v41;
  v53 = v41;
  v54 = a3;
  v55 = v49;
  v23 = sub_1A4825E10();
  v61 = v21;
  v62 = MEMORY[0x1E6981138];
  WitnessTable = swift_getWitnessTable();
  v59 = v23;
  v60 = WitnessTable;
  v25 = swift_getWitnessTable();
  sub_1A524B504();
  v26 = swift_allocObject();
  v26[2] = v38;
  v26[3] = v21;
  v26[4] = v39;
  v26[5] = v22;
  v27 = v49;
  v26[6] = v37;
  v26[7] = v27;
  v58 = v25;

  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_1A524CC74();
  v30 = v40;
  sub_1A524AF84();

  (*(v46 + 8))(v29, v47);
  (*(v44 + 8))(v15, v13);
  v31 = sub_1A48263E4(&qword_1EB128940, MEMORY[0x1E697C028]);
  v56 = v28;
  v57 = v31;
  swift_getWitnessTable();
  v32 = *(v17 + 16);
  v33 = v43;
  v32(v43, v30, v16);
  v34 = *(v17 + 8);
  v34(v30, v16);
  v32(v48, v33, v16);
  return (v34)(v33, v16);
}

void sub_1A4825290()
{
  if (!qword_1EB143210)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143210);
    }
  }
}

uint64_t sub_1A4825310@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a6;
  v72 = a4;
  v63[1] = a2;
  v64 = a1;
  v79 = a7;
  v9 = sub_1A5249754();
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = v63 - v10;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63[0] = v63 - v16;
  sub_1A4825290();
  v70 = v17;
  v66 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v65 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4826598(0, &qword_1EB143238, MEMORY[0x1E697F948]);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v63 - v21;
  sub_1A4826598(0, &qword_1EB143208, MEMORY[0x1E697F960]);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v69 = v63 - v25;
  sub_1A411848C();
  v68 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v24;
  v77 = v9;
  v76 = sub_1A5249754();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v63 - v30;
  v90 = a3;
  v91 = v72;
  sub_1A48264D8();
  v31 = sub_1A524B6A4();
  if ((v94 - 1) < 2)
  {
    sub_1A5249434();
    v41 = sub_1A524A444();
    v43 = v42;
    v90 = v41;
    v91 = v42;
    v72 = v20;
    v45 = v44 & 1;
    v92 = v44 & 1;
    v93 = v46;
    sub_1A524A024();
    sub_1A524BC74();
    v47 = v65;
    v48 = MEMORY[0x1E6981148];
    v40 = MEMORY[0x1E6981138];
    sub_1A524AE64();
    sub_1A3E04DF4(v41, v43, v45);

    v49 = v66;
    v50 = v70;
    (*(v66 + 16))(v22, v47, v70);
    swift_storeEnumTagMultiPayload();
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C);
    v90 = v48;
    v91 = v40;
    swift_getOpaqueTypeConformance2();
    v51 = v69;
    sub_1A5249744();
    sub_1A4825E10();
    v36 = v78;
    v82 = v78;
    v83 = v40;
    swift_getWitnessTable();
    v39 = v74;
    sub_1A3DF4798(v51, v73);
    sub_1A3D23160(v51);
    (*(v49 + 8))(v47, v50);
  }

  else if ((v94 - 3) >= 2)
  {
    v39 = v74;
    if (v94)
    {
      sub_1A5249434();
      v90 = sub_1A524A444();
      v91 = v55;
      v92 = v56 & 1;
      v93 = v57;
      sub_1A3E75E68(v90, v55, v56 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A5248074();
    v52 = v27;
    v53 = v68;
    (*(v27 + 16))(v22, v29, v68);
    swift_storeEnumTagMultiPayload();
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C);
    v90 = MEMORY[0x1E6981148];
    v40 = MEMORY[0x1E6981138];
    v91 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    v54 = v69;
    sub_1A5249744();
    sub_1A4825E10();
    v36 = v78;
    v80 = v78;
    v81 = v40;
    swift_getWitnessTable();
    sub_1A3DF4798(v54, v73);
    sub_1A3D23160(v54);
    (*(v52 + 8))(v29, v53);
  }

  else
  {
    v64(v31);
    v32 = *(v11 + 16);
    v33 = v63[0];
    v32(v63[0], v14, a5);
    v34 = *(v11 + 8);
    v34(v14, a5);
    v32(v14, v33, a5);
    v35 = v67;
    v36 = v78;
    v37 = MEMORY[0x1E6981138];
    sub_1A3DF4798(v14, a5);
    sub_1A4825E10();
    v84 = v36;
    v85 = v37;
    v38 = v77;
    swift_getWitnessTable();
    v39 = v74;
    sub_1A3DF4890(v35, v73, v38);
    (*(v71 + 8))(v35, v38);
    v34(v14, a5);
    v34(v33, a5);
    v40 = MEMORY[0x1E6981138];
  }

  v58 = sub_1A4825E10();
  v88 = v36;
  v89 = v40;
  WitnessTable = swift_getWitnessTable();
  v86 = v58;
  v87 = WitnessTable;
  v60 = v76;
  swift_getWitnessTable();
  v61 = v75;
  (*(v75 + 16))(v79, v39, v60);
  return (*(v61 + 8))(v39, v60);
}

unint64_t sub_1A4825E10()
{
  result = qword_1EB143218;
  if (!qword_1EB143218)
  {
    sub_1A4826598(255, &qword_1EB143208, MEMORY[0x1E697F960]);
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143218);
  }

  return result;
}

uint64_t sub_1A4825F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  sub_1A524CC54();
  v4[22] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4825FA4, v6, v5);
}

uint64_t sub_1A4825FA4()
{
  v0[10] = v0[20];
  v0[11] = v0[21];
  sub_1A48264D8();
  v0[25] = v1;

  sub_1A524B6A4();
  if (v0[18])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A4826144;
    v5 = swift_continuation_init();
    sub_1A4826530();
    v0[17] = v6;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A482637C;
    v0[13] = &block_descriptor_282;
    v0[14] = v5;
    [v4 requestAuthorizationForAccessLevel:2 handler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A4826144()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1A482624C, v2, v1);
}

uint64_t sub_1A482624C()
{
  v1 = v0[21];
  v2 = v0[20];

  v3 = v0[18];
  v0[10] = v2;
  v0[11] = v1;
  v0[19] = v3;
  sub_1A524B6B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48262E4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4825F0C(v4, v5, v2, v3);
}

uint64_t sub_1A482637C(uint64_t a1, uint64_t a2)
{
  sub_1A3F974E4();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v4 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A48263E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4826484()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A48264D8()
{
  if (!qword_1EB143228)
  {
    type metadata accessor for PHAuthorizationStatus();
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143228);
    }
  }
}

void sub_1A4826530()
{
  if (!qword_1EB143230)
  {
    type metadata accessor for PHAuthorizationStatus();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143230);
    }
  }
}

void sub_1A4826598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A411848C();
    v7 = v6;
    sub_1A4825290();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4826608()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1D96A8);
  __swift_project_value_buffer(v6, qword_1EB1D96A8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static FavoritePeopleIntent.title.modify())()
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1D96A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A48268F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D96A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A48269B8(uint64_t a1)
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D96A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static FavoritePeopleIntent.parameterSummary.getter()
{
  sub_1A4829544(0, &qword_1EB143240, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4829544(0, &qword_1EB143250, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4826CA8();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4826D20();
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4826DA4();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4826CA8()
{
  result = qword_1EB143248;
  if (!qword_1EB143248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143248);
  }

  return result;
}

void sub_1A4826D20()
{
  if (!qword_1EB143258)
  {
    sub_1A3FBFFE4();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143258);
    }
  }
}

void sub_1A4826DA4()
{
  if (!qword_1EB143260)
  {
    sub_1A4829544(255, &qword_1EB143268, sub_1A4826E3C, &type metadata for FavoritePeopleIntentAction, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143260);
    }
  }
}

unint64_t sub_1A4826E3C()
{
  result = qword_1EB143270;
  if (!qword_1EB143270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143270);
  }

  return result;
}

uint64_t FavoritePeopleIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A48295AC(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3FBFFE4();
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12FB40, &qword_1EB12FB10, &type metadata for PersonEntity);
  sub_1A3FC19D8();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A4829544(0, &qword_1EB143268, sub_1A4826E3C, &type metadata for FavoritePeopleIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A48280E4();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t FavoritePeopleIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A48275A8, v4, v3);
}

uint64_t sub_1A48275A8()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A4826CA8();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A53678F0);
}

uint64_t sub_1A4827708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A48277A4, v5, v4);
}

uint64_t sub_1A48277A4()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A4826CA8();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A48281E4(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A4827940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A48281E4(a1, a2, a3, a4);
}

void (*FavoritePeopleIntent.people.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*FavoritePeopleIntent.action.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A4827B64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return FavoritePeopleIntent.perform()(a1);
}

uint64_t sub_1A4827C00(uint64_t a1)
{
  v2 = sub_1A4826CA8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static FavoritePeopleIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::FavoritePeopleIntentAction_optional __swiftcall FavoritePeopleIntentAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t FavoritePeopleIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x69726F7661666E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_1A4827FD4@<X0>(char *a1@<X8>)
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

uint64_t sub_1A4828038(uint64_t a1)
{
  v2 = sub_1A48280E4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A4828088(uint64_t a1)
{
  v2 = sub_1A48292B4();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A48280E4()
{
  result = qword_1EB143278;
  if (!qword_1EB143278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143278);
  }

  return result;
}

uint64_t sub_1A4828138(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4827708(a1, v5, v4);
}

uint64_t sub_1A48281E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A48282E0, v7, v6);
}

void sub_1A48282E0()
{
  if (!(sub_1A48999B8(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4828648()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A48287D0;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A4828764;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4828764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A48287D0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A4828844(uint64_t a1)
{
  sub_1A4829610();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4829678();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A48296E4(v10, v6);
      result = sub_1A40ABF60(*v6);
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

unint64_t _s12PhotosUICore26FavoritePeopleIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A48295AC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
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
  sub_1A48295AC(0, &qword_1EB143300, sub_1A4829610, MEMORY[0x1E69E6F90]);
  sub_1A4829610();
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
  v23 = sub_1A4828844(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A4828FD8()
{
  result = qword_1EB143280;
  if (!qword_1EB143280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143280);
  }

  return result;
}

unint64_t sub_1A4829030()
{
  result = qword_1EB143288;
  if (!qword_1EB143288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143288);
  }

  return result;
}

unint64_t sub_1A48290A4()
{
  result = qword_1EB143290;
  if (!qword_1EB143290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143290);
  }

  return result;
}

unint64_t sub_1A48290FC()
{
  result = qword_1EB143298;
  if (!qword_1EB143298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143298);
  }

  return result;
}

unint64_t sub_1A4829154()
{
  result = qword_1EB1432A0;
  if (!qword_1EB1432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432A0);
  }

  return result;
}

unint64_t sub_1A48291AC()
{
  result = qword_1EB1432A8;
  if (!qword_1EB1432A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432A8);
  }

  return result;
}

unint64_t sub_1A4829204()
{
  result = qword_1EB1432B0;
  if (!qword_1EB1432B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432B0);
  }

  return result;
}

unint64_t sub_1A482925C()
{
  result = qword_1EB1432B8;
  if (!qword_1EB1432B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432B8);
  }

  return result;
}

unint64_t sub_1A48292B4()
{
  result = qword_1EB1432C0;
  if (!qword_1EB1432C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432C0);
  }

  return result;
}

unint64_t sub_1A4829360()
{
  result = qword_1EB1432C8;
  if (!qword_1EB1432C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432C8);
  }

  return result;
}

unint64_t sub_1A48293B8()
{
  result = qword_1EB1432D0;
  if (!qword_1EB1432D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432D0);
  }

  return result;
}

unint64_t sub_1A4829410()
{
  result = qword_1EB1432D8;
  if (!qword_1EB1432D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432D8);
  }

  return result;
}

unint64_t sub_1A48294B4()
{
  result = qword_1EB1432F0;
  if (!qword_1EB1432F0)
  {
    sub_1A4829544(255, &qword_1EB1432F8, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432F0);
  }

  return result;
}

void sub_1A4829544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A48295AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4829610()
{
  if (!qword_1EB143308)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143308);
    }
  }
}

void sub_1A4829678()
{
  if (!qword_1EB143310)
  {
    sub_1A5240274();
    sub_1A4829410();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143310);
    }
  }
}

uint64_t sub_1A48296E4(uint64_t a1, uint64_t a2)
{
  sub_1A4829610();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4829750()
{
  v0 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v0, qword_1EB1D9E68);
  __swift_project_value_buffer(v0, qword_1EB1D9E68);
  return sub_1A5240B94();
}

uint64_t static RevealAlbumsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D9E68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RevealAlbumsIntent.title.setter(uint64_t a1)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D9E68);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RevealAlbumsIntent.title.modify())()
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1D9E68);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A48299FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D9E68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A4829ABC(uint64_t a1)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D9E68);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t RevealAlbumsIntent.init()@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = sub_1A5240334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  sub_1A3DB2E98();
  v14 = sub_1A5240BB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v18[1] = 0;
  v15 = sub_1A523FDB4();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A500], v1);
  sub_1A3DB3554();
  result = sub_1A523FF94();
  *v18[0] = result;
  return result;
}

void sub_1A4829E28()
{
  if (!qword_1EB12C3A0)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C3A0);
    }
  }
}

uint64_t sub_1A4829E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  sub_1A3DB2E98();
  v15 = sub_1A5240BB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v24 = 0;
  v16 = sub_1A523FDB4();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v17(v8, 1, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A3DB3554();
  v18 = sub_1A523FF94();
  v19 = v23;
  *v22 = v18;
  v24 = v19;
  return sub_1A523FF54();
}

uint64_t RevealAlbumsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A482A1C0, v5, v4);
}

uint64_t sub_1A482A1C0()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A4392DB4();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A5367D08);
}

uint64_t sub_1A482A2AC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_1A524CC54();
  v2[10] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A482A344, v4, v3);
}

uint64_t sub_1A482A344()
{
  sub_1A523FF44();
  v1 = *(*(v0 + 48) + 16);

  if (v1 == 1)
  {
    sub_1A523FF44();
    v2 = *(v0 + 56);
    if (*(v2 + 16))
    {
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      v5 = *(v2 + 56);
      v6 = *(v2 + 32);

      *(v0 + 16) = v6;
      *(v0 + 24) = v3;
      *(v0 + 32) = v4;
      *(v0 + 40) = v5;
      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_1A482A4E0;

      return sub_1A3DB64C8((v0 + 16));
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1A482A6D4;

    return sub_1A494D63C(5);
  }

  return result;
}

uint64_t sub_1A482A4E0()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1A482A810;
  }

  else
  {
    v5 = sub_1A482A664;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A482A664()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A6D4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1A482A874;
  }

  else
  {
    v5 = sub_1A482ACE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A482A810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A8D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A482A2AC(a1, v1);
}

unint64_t sub_1A482A978()
{
  result = qword_1EB143318;
  if (!qword_1EB143318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143318);
  }

  return result;
}

unint64_t sub_1A482A9D0()
{
  result = qword_1EB143320;
  if (!qword_1EB143320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143320);
  }

  return result;
}

uint64_t sub_1A482AA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A482AB14, v7, v6);
}

uint64_t sub_1A482AB14()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A5367E38);
}

uint64_t sub_1A482ABF8(uint64_t a1)
{
  v2 = sub_1A4392DB4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A482AC44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A482A2AC(a1, v1);
}

id sub_1A482ACE4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A482EFF4();

  return v4;
}

void sub_1A482AD5C()
{
  sub_1A482C470();

  sub_1A482CFF4();
}

void sub_1A482ADD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();
    v3 = [v2 navigationController];

    if (!v3)
    {
      v3 = swift_unknownObjectUnownedLoadStrong();
    }

    sub_1A3C52C70(0, &qword_1EB12B160);
    v4 = sub_1A524DBF4();

    if (v4)
    {

      sub_1A482D220();
    }
  }
}

uint64_t sub_1A482AF48()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482AFF8(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectUnownedLoadStrong();
      v10 = [v9 navigationController];

      if (!v10)
      {
        v10 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160);
      v11 = sub_1A524DBF4();

      if (v11)
      {
        sub_1A482CAA0();
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_unknownObjectUnownedLoadStrong();
      v15 = [v14 navigationController];

      if (!v15)
      {
        v15 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160);
      v16 = sub_1A524DBF4();

      if (v16)
      {
        sub_1A482D220();
      }
    }
  }
}

void sub_1A482B18C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectUnownedLoadStrong();
      v8 = [v7 navigationController];

      if (!v8)
      {
        v8 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160);
      v9 = sub_1A524DBF4();

      if (v9)
      {
        sub_1A482CAA0();
      }
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = [v12 navigationController];

      if (!v13)
      {
        v13 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160);
      v14 = sub_1A524DBF4();

      if (v14)
      {
        sub_1A482D220();
      }
    }
  }
}

void (*sub_1A482B318(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B3AC;
}

void sub_1A482B3AC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1A482B18C(v5);

  free(v1);
}

uint64_t sub_1A482B43C()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A482B4D4(char a1)
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A482B5CC()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A482B664(char a1)
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1A482B6B4(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B748;
}

void sub_1A482B748(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32)) = *(v1 + 40);
  free(v1);
}

uint64_t sub_1A482B7A4()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482B83C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectUnownedLoadStrong();
      v9 = [v8 navigationController];

      if (!v9)
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160);
      v10 = sub_1A524DBF4();

      if (v10)
      {
        sub_1A482D220();
      }
    }
  }
}

void (*sub_1A482B944(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B9D8;
}

void sub_1A482B9D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }
  }

  v8 = Strong;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 navigationController];

  if (!v10)
  {
    v10 = swift_unknownObjectUnownedLoadStrong();
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  v11 = sub_1A524DBF4();

  if (v11)
  {
    sub_1A482D220();
  }

LABEL_11:

  free(v2);
}

uint64_t sub_1A482BB74(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A482BBE0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

id sub_1A482BC80()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy;
  v2 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy);
  }

  else
  {
    v4 = type metadata accessor for Proxy();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectUnownedInit();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1A482BD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E9420];
  sub_1A3C56AB0(0, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___logger;
  swift_beginAccess();
  sub_1A4830078(v1 + v10, v9, &qword_1EB128BF8, v3);
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1A482F4B4(v9, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  sub_1A5246F14();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1A42D3CC0(v6, v1 + v10);
  return swift_endAccess();
}

id sub_1A482BF58()
{
  v1 = v0;
  sub_1A3C56AB0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber];
  if (v5)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1A524CC54();
    v7 = v5;
    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1A3D4D930(0, 0, v4, &unk_1A5367E48, v9);
  }

  v11 = type metadata accessor for ViewControllerDismissalInteractionController();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_1A482C0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A482C15C, v6, v5);
}

uint64_t sub_1A482C15C()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_1A4830108;
  v0[7] = v3;
  v4 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_140_0;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_1A4830104;
  v0[7] = v7;
  v0[2] = v4;
  v0[3] = 1107296256;
  v0[4] = sub_1A3E01E70;
  v0[5] = &block_descriptor_147_2;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;

  [v2 animateWithDuration:v5 animations:v8 completion:0.2];
  _Block_release(v8);
  _Block_release(v5);
  v10 = v0[1];

  return v10();
}

void sub_1A482C470()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v4 navigationController];

  if (!v5)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = swift_unknownObjectUnownedLoadStrong();
    v36 = [v7 navigationController];

    v8 = v36;
    if (!v36)
    {
      v8 = swift_unknownObjectUnownedLoadStrong();
    }

    v37 = v8;
    swift_unknownObjectWeakAssign();
    v9 = [v37 view];
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x1E69DCD28]);
    v12 = v1;
    v13 = [v11 initWithTarget:v12 action:sel_handleSwipeUp_];
    v14 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer;
    v15 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer);
    *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer) = v13;
    v16 = v13;

    [v16 setAllowedScrollTypesMask_];
    v17 = *(v12 + v14);
    if (v17)
    {
      v18 = v17;
      v19 = sub_1A482BC80();
      [v18 setDelegate_];

      if (*(v12 + v14))
      {
        [v10 addGestureRecognizer_];
        v20 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
        v21 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer;
        v22 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
        *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer) = v20;
        v23 = v20;

        v24 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy;
        [v23 setDelegate_];

        if (*(v12 + v21))
        {
          v25 = [v10 addGestureRecognizer_];
          if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x140))(v25))
          {
            v26 = [objc_allocWithZone(MEMORY[0x1E69DCEB8]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
            if ([v10 px_hasRightToLeftLayoutDirection])
            {
              v27 = 8;
            }

            else
            {
              v27 = 2;
            }

            [v26 setEdges_];
            [v26 setDelegate_];
            [v10 addGestureRecognizer_];
            v28 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer);
            *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer) = v26;
          }

          v29 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
          v30 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer);
          *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer) = v29;
          v31 = v29;

          [v31 setDelegate_];
          v32 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v12 action:sel_handleTapOnGrabAffordance_];

          v33 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
          *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer) = v32;
          v34 = v32;

          [v34 setDelegate_];
          sub_1A482CAA0();
          sub_1A482D220();
          if ([v37 transitioningDelegate])
          {

            swift_unknownObjectRelease();
          }

          else
          {
            v35 = *(v12 + v24);
            [v37 setTransitioningDelegate_];
          }

          return;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A482C970(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1A3C52C70(0, &qword_1EB126B10);
  sub_1A482F510();
  if (swift_dynamicCast())
  {
    sub_1A3C34460(&v4, a1);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    v2 = swift_unknownObjectUnownedLoadStrong();
    v3 = [v2 parentViewController];

    if (!v3 || (swift_dynamicCast() & 1) == 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    if (*(&v5 + 1))
    {
      sub_1A482F4B4(&v4, &qword_1EB129500, sub_1A482F510);
    }
  }
}

void sub_1A482CAA0()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = Strong;
  v7 = [Strong view];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 superview];
  if (!v8 || (v9 = v8, v33 = [v8 superview], v9, !v33))
  {

LABEL_11:
    sub_1A482BD1C(v4);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D254();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v14, v15, "failed to install grabber", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return;
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  v11 = OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber;
  v12 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
  if (v10)
  {
    if (v12)
    {

      v13 = v33;

      return;
    }

    v24 = [objc_allocWithZone(type metadata accessor for GrabAffordanceView()) init];
    v25 = *(v0 + v11);
    *(v0 + v11) = v24;
    v26 = v24;

    [v26 setAlpha_];
    [v33 addSubview_];
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v38 = sub_1A467BF38;
    v39 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3C2E0D0;
    v37 = &block_descriptor_167_1;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    [v27 animateWithDuration:v29 animations:0.3];
    _Block_release(v29);
    if (*(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer))
    {
      [v30 addGestureRecognizer_];
      if (*(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer))
      {
        [v30 addGestureRecognizer_];

        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v12)
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    v38 = sub_1A4830108;
    v39 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3C2E0D0;
    v37 = &block_descriptor_154_3;
    v19 = _Block_copy(&aBlock);
    v20 = v12;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v38 = sub_1A4830104;
    v39 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3E01E70;
    v37 = &block_descriptor_161_0;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    [v17 animateWithDuration:v19 animations:v22 completion:0.0];

    _Block_release(v22);
    _Block_release(v19);
  }

  else
  {
  }

  v31 = *(v0 + v11);
  *(v0 + v11) = 0;
}

void sub_1A482CFF4()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 superview];
    if (v7)
    {
      v16 = v7;
      [v7 frame];
      MidX = CGRectGetMidX(v18);
      [v16 frame];
      MinY = CGRectGetMinY(v19);
      [v16 safeAreaInsets];
      [v6 setCenter_];
      sub_1A482D220();

      v11 = v16;
    }

    else
    {
      sub_1A482BD1C(v4);
      v12 = sub_1A5246F04();
      v13 = sub_1A524D254();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1A3C1C000, v12, v13, "couldn't layout grabber", v14, 2u);
        MEMORY[0x1A590EEC0](v14, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v4, v1);
    }
  }
}

void sub_1A482D220()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];

    v4 = [v3 verticalSizeClass];
    v5 = MEMORY[0x1E69E7D40];
    if (v4 == 1)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))() ^ 1;
    }

    v7 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
    if (v7)
    {
      v8 = *((*v5 & *v0) + 0x110);
      v12 = v7;
      if (v8() & 1) != 0 || ((*((*v5 & *v0) + 0x128))())
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
        v10 = [v9 px_containsViewControllerModalInPresentation];

        v11 = v10 | v6;
      }

      else
      {
        v11 = 1;
      }

      [v12 setHidden_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A482D3F0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController);
  if (v3)
  {
    v4 = *(*v3 + 104);

    v4(a1);
  }

  else
  {
    sub_1A482C970(&v6);
    if (v7)
    {
      sub_1A3C34460(&v6, v8);
      if ([a1 state] == 1)
      {
        MEMORY[0x1EEE9AC00](1);
        sub_1A482D83C(a1, sub_1A482FF38);
      }

      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      return sub_1A482F4B4(&v6, &qword_1EB129500, sub_1A482F510);
    }
  }
}

void sub_1A482D5B4(id a1)
{
  v3 = *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController];
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE8);
    v9 = v3;
    v4(a1);
LABEL_3:

    return;
  }

  if (!*&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition])
  {
    if ([a1 state] != 1)
    {
      return;
    }

    v8 = v1;
    v9 = a1;
    sub_1A482F5D8(v9, v8, v8, v9);

    goto LABEL_3;
  }

  v5 = *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition + 8];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  swift_unknownObjectRetain();
  v7(a1, ObjectType, v5);

  swift_unknownObjectRelease();
}

void *sub_1A482D83C(void *a1, void (*a2)(void))
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [result transitioningDelegate];

    swift_unknownObjectRetain();
    v13 = sub_1A482BC80();

    if (!v12 || (swift_unknownObjectRelease(), v12 != v13))
    {
      sub_1A482BD1C(v9);
      swift_unknownObjectRetain();
      v14 = sub_1A5246F04();
      v15 = sub_1A524D254();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v23 = v7;
        v17 = v16;
        v22 = swift_slowAlloc();
        v25 = v12;
        v26 = v22;
        *v17 = 136315138;
        sub_1A3C56AB0(0, &qword_1EB143430, sub_1A482F574);
        v24 = a1;
        swift_unknownObjectRetain();
        sub_1A524C714();
        sub_1A3C2EF94();
      }

      (*(v7 + 8))(v9, v6);
    }

    v18 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal;
    *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal) = 1;
    v19 = sub_1A482DB2C(a1);
    v20 = OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind;
    *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind) = v19;
    a2();
    result = swift_unknownObjectRelease();
    *(v3 + v18) = 0;
    *(v3 + v20) = 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A482DB2C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
  if (v4)
  {
    sub_1A3C52C70(0, &qword_1EB126A00);
    v5 = v4;
    v6 = a1;
    v7 = sub_1A524DBF4();

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer);
  if (v8)
  {
    sub_1A3C52C70(0, &qword_1EB126A00);
    v9 = a1;
    v10 = v8;
    v11 = sub_1A524DBF4();

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer);
  if (v13)
  {
    sub_1A3C52C70(0, &qword_1EB126A00);
    v14 = a1;
    v15 = v13;
    v16 = sub_1A524DBF4();

    if (v16)
    {
      return 1;
    }
  }

  v17 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer);
  if (v17 && (sub_1A3C52C70(0, &qword_1EB126A00), v18 = a1, v19 = v17, v20 = sub_1A524DBF4(), v19, v18, (v20 & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

id sub_1A482DCD0(void *a1, void *a2)
{
  v3 = v2;
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
  if (v6 && (sub_1A3C52C70(0, &qword_1EB126A00), v7 = v6, v8 = a1, v9 = sub_1A524DBF4(), v7, v8, (v9 & 1) != 0) || (v10 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v11 = a1, v12 = v10, v13 = sub_1A524DBF4(), v12, v11, (v13 & 1) != 0) || (v14 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v15 = a1, v16 = v14, v17 = sub_1A524DBF4(), v16, v15, (v17 & 1) != 0) || (v18 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v19 = a1, v20 = v18, v21 = sub_1A524DBF4(), v20, v19, (v21 & 1) != 0))
  {
    v26[0] = 0;
    return [a2 px:v26 isPanGestureRecognizerOfScrollView:?];
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
    if (v23)
    {
      sub_1A3C52C70(0, &qword_1EB126A00);
      v24 = a1;
      v25 = v23;
      sub_1A524DBF4();
    }

    return 0;
  }
}

id sub_1A482DEFC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  if (v5() & 1) != 0 || ((*((*v4 & *v1) + 0x128))())
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = [Strong px_containsViewControllerModalInPresentation];

    if ((v7 & 1) == 0)
    {
      v8 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
      if (v8 && (sub_1A3C52C70(0, &qword_1EB126A00), v9 = v8, v10 = a1, v11 = sub_1A524DBF4(), v9, v10, (v11 & 1) != 0) || (v12 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v13 = a1, v14 = v12, v15 = sub_1A524DBF4(), v14, v13, (v15 & 1) != 0) || (v16 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v17 = a1, v18 = v16, v19 = sub_1A524DBF4(), v18, v17, (v19 & 1) != 0) || (v20 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00), v21 = a1, v22 = v20, v23 = sub_1A524DBF4(), v22, v21, (v23 & 1) != 0))
      {
        v24 = sub_1A482DB2C(a1);
        if (v24 != 3)
        {
          v25 = v24;
          result = [a1 view];
          if (!result)
          {
            return result;
          }

          v27 = result;
          sub_1A3C52C70(0, &qword_1EB126C18);
          v28 = [swift_getObjCClassFromMetadata() sharedInstance];
          v29 = v27;
          v30 = [a1 locationInView_];
          v32 = v31;
          v34 = v33;
          if (v25)
          {
            if (v25 == 1)
            {
              if ((*((*v4 & *v2) + 0x128))(v30))
              {
                sub_1A482C970(v65);
                if (v66)
                {
                  sub_1A482F4B4(v65, &qword_1EB129500, sub_1A482F510);
                  if ([v29 px:v32 scrollableAxesAtPoint:v34])
                  {
                    [v28 upGesturesAngularToleranceInDegrees];
                  }

                  else
                  {
                    [v28 uncontestedGesturesAngularToleranceInDegrees];
                  }

LABEL_33:
                  objc_opt_self();
                  [swift_dynamicCastObjCClassUnconditional() velocityInView_];
                  v62 = v61;
                  v64 = v63;

                  MEMORY[0x1A590C810](v64, v62);
                  PXRadiansToDegrees();
                }

                sub_1A482F4B4(v65, &qword_1EB129500, sub_1A482F510);
                return 0;
              }
            }

            else if ((*((*v4 & *v2) + 0x140))(v30))
            {
              [v29 px_hasRightToLeftLayoutDirection];
              [v28 horizontalGesturesAngularToleranceInDegrees];
              goto LABEL_33;
            }
          }

          else if ((v5)(v30))
          {
            [v28 downGesturesAngularToleranceInDegrees];
            goto LABEL_33;
          }
        }
      }

      else
      {
        v35 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
        if (v35)
        {
          sub_1A3C52C70(0, &qword_1EB126A00);
          v36 = a1;
          v37 = v35;
          v38 = sub_1A524DBF4();

          if (v38)
          {
            v39 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
            if (v39)
            {
              v40 = v39;
              if (![v40 isHidden])
              {
                [v40 bounds];
                v42 = v41;
                v44 = v43;
                v46 = v45;
                v48 = v47;
                [v40 _touchInsets];
                v51 = UIEdgeInsetsInsetRect(v42, v44, v46, v48, v49, v50);
                v53 = v52;
                v55 = v54;
                v57 = v56;
                [v36 locationInView_];
                v67.x = v58;
                v67.y = v59;
                v68.origin.x = v51;
                v68.origin.y = v53;
                v68.size.width = v55;
                v68.size.height = v57;
                v60 = CGRectContainsPoint(v68, v67);

                return v60;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1A482EDFC()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GrabAffordanceView();
  v2 = objc_msgSendSuper2(&v3, sel_initWithEffect_, v1);

  [v2 setBounds_];
  sub_1A524D1E4();
}

id sub_1A482EFBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A482EFF4()
{
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed] = 1;
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed] = 1;
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed] = 0;
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible] = 1;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy] = 0;
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal] = 0;
  v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind] = 3;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController] = 0;
  v3 = &v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController] = 0;
  swift_unknownObjectUnownedInit();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ViewControllerDismissalInteractionController();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for ViewControllerDismissalInteractionController()
{
  result = qword_1EB193770;
  if (!qword_1EB193770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A482F1EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A482C0C4(v3, v4, v5, v2);
}

void sub_1A482F288()
{
  sub_1A3C56AB0(319, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A482F3F4()
{
  result = qword_1EB1DA000[0];
  if (!qword_1EB1DA000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DA000);
  }

  return result;
}

void sub_1A482F44C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition);
    *v1 = 0;
    v1[1] = 0;
    v2 = Strong;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A482F4B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C56AB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A482F510()
{
  result = qword_1EB129508;
  if (!qword_1EB129508)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB129508);
  }

  return result;
}

unint64_t sub_1A482F574()
{
  result = qword_1EB143438;
  if (!qword_1EB143438)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB143438);
  }

  return result;
}

void *sub_1A482F5D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [result transitioningDelegate];

    swift_unknownObjectRetain();
    v13 = sub_1A482BC80();

    if (!v12 || (swift_unknownObjectRelease(), v12 != v13))
    {
      v20 = v7;
      sub_1A482BD1C(v9);
      swift_unknownObjectRetain();
      v14 = sub_1A5246F04();
      v15 = sub_1A524D254();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v19[1] = v6;
        v17 = v16;
        v18 = swift_slowAlloc();
        v19[2] = a1;
        v21 = v12;
        aBlock = v18;
        *v17 = 136315138;
        sub_1A3C56AB0(0, &qword_1EB143430, sub_1A482F574);
        swift_unknownObjectRetain();
        sub_1A524C714();
        sub_1A3C2EF94();
      }

      (*(v20 + 8))(v9, v6);
    }

    *(a2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal) = 1;
    *(a2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind) = sub_1A482DB2C(a1);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1A524D384();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_1A482FB40(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1A482FC20;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3E01E70;
  v4[3] = &block_descriptor_101_4;
  v3 = _Block_copy(v4);

  [a1 installCompletionHandler_];
  _Block_release(v3);
}

void sub_1A482FC20(char a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  aBlock[4] = sub_1A482FD30;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_108_3;
  _Block_copy(aBlock);

  px_dispatch_on_main_queue();
}

void sub_1A482FD30()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition);
    *(Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition) = 0;

    v5 = *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController];
    *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController] = 0;

    if (v1)
    {
      v6 = *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber];
      if (v6)
      {
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        v18 = sub_1A4830108;
        v19 = v8;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A3C2E0D0;
        v17 = &block_descriptor_115_0;
        v9 = _Block_copy(&aBlock);
        v10 = v6;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v18 = sub_1A4830104;
        v19 = v11;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A3E01E70;
        v17 = &block_descriptor_122_1;
        v12 = _Block_copy(&aBlock);
        v13 = v10;

        [v7 animateWithDuration:v9 animations:v12 completion:0.2];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

uint64_t sub_1A482FF38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for ViewControllerSwipeUpDismissalController();
  sub_1A3C341C8(v2, v7);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1A48F8774(v7, sub_1A4830018, v4);
  *(v1 + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController) = v5;

  (*(*v5 + 104))(v3);
}

char *sub_1A4830018()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController] = 0;
  }

  return result;
}

uint64_t sub_1A4830078(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C56AB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *PXSwiftUITungstenView.mediaProvider.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t PXSwiftUITungstenView.tungstenView.getter()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0();
  MEMORY[0x1A5906C60](&v3);
  return v3;
}

void sub_1A48301B0()
{
  if (!qword_1EB143440)
  {
    sub_1A4830208();
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143440);
    }
  }
}

void sub_1A4830208()
{
  if (!qword_1EB143448)
  {
    sub_1A3C52C70(255, &qword_1EB143450);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143448);
    }
  }
}

void *sub_1A4830270@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = v3;
  sub_1A48301B0();
  result = MEMORY[0x1A5906C60](&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1A48302C4(void **a1)
{
  v1 = *a1;
  sub_1A48301B0();
  v2 = v1;
  return sub_1A524B904();
}

void (*PXSwiftUITungstenView.tungstenView.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[4];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_1A48301B0();
  v9 = v8;
  v4[11] = v8;

  v10 = v7;
  MEMORY[0x1A5906C60](v9);
  return sub_1A4830430;
}

void sub_1A4830430(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_1A524B904();
  }

  else
  {
    sub_1A524B904();
  }

  free(v2);
}

uint64_t PXSwiftUITungstenView.$tungstenView.getter()
{
  sub_1A48301B0();
  sub_1A524B924();
  return v1;
}

uint64_t PXSwiftUITungstenView.tapAction.getter()
{
  v1 = *(v0 + 40);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t PXSwiftUITungstenView.init(rootLayout:mediaProvider:tungstenView:tapAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void sub_1A483058C(char a1)
{
  v28.receiver = v1;
  v28.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  objc_msgSendSuper2(&v28, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v3 subviews];

  sub_1A3C52C70(0, &qword_1EB12B170);
  v6 = sub_1A524CA34();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_13;
  }

LABEL_4:

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  v8 = MEMORY[0x1A59097F0](0, v7);
LABEL_7:
  v9 = v8;

  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = v9;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v10 setFrame_];
  [v10 setAutoresizingMask_];

  v22 = [v1 navigationController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 topViewController];

    if (v24)
    {
      v25 = [v10 scrollViewController];
      v26 = [v25 scrollView];

      v27 = v26;
      swift_unknownObjectRelease();
      [v24 setContentScrollView:v27 forEdge:15];
    }
  }
}

id sub_1A4830994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PXSwiftUITungstenView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v18 = *(v0 + 1);
  type metadata accessor for PXSwiftUITungstenView.ViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [objc_allocWithZone(off_1E7721708) init];
  [v4 setRootLayout_];
  [v4 registerAllTextureProvidersWithMediaProvider_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  sub_1A48301B0();
  v8 = v6;
  sub_1A524B904();
  sub_1A4830CA0();
  sub_1A5249FD4();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_handleTapGestureWithGesture_];

  [v8 addGestureRecognizer_];
  v10 = v3;
  result = [v10 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor_];

    result = [v10 view];
    if (result)
    {
      v14 = result;
      [result addSubview_];

      [v8 setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea_];
      v15 = [v8 scrollViewController];
      v16 = [v15 scrollView];

      v17 = v16;
      swift_unknownObjectRelease();
      [v10 setContentScrollView:v17 forEdge:15];

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A4830CA0()
{
  if (!qword_1EB143458)
  {
    sub_1A4830CFC();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143458);
    }
  }
}

unint64_t sub_1A4830CFC()
{
  result = qword_1EB143460;
  if (!qword_1EB143460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143460);
  }

  return result;
}

void PXSwiftUITungstenView.updateUIViewController(_:context:)()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0();
  MEMORY[0x1A5906C60](&v3);
  v2 = v3;
  if (v3)
  {
    [v3 setNeedsDisplay];
  }
}

uint64_t PXSwiftUITungstenView.makeCoordinator()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A48301B0();
  sub_1A524B924();
  type metadata accessor for PXSwiftUITungstenView.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_1A3C66EE8(v1);
  return v3;
}

void *sub_1A4830E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *sub_1A4830F0C()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v1;
  sub_1A48301B0();
  result = MEMORY[0x1A5906C60](&v4);
  if (v4)
  {

    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = v3;
    v4 = 0;
    return sub_1A524B904();
  }

  return result;
}

void sub_1A4830F94()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = v2;
    sub_1A48301B0();
    v4 = v3;

    MEMORY[0x1A5906C60](&v7, v4);
    v5 = v7;
    if (v7)
    {
      objc_opt_self();
      v6 = [swift_dynamicCastObjCClassUnconditional() locationInView_];
      v1(v6);
    }

    sub_1A3C33378(v1);
  }
}

uint64_t PXSwiftUITungstenView.Coordinator.deinit()
{
  v1 = *(v0 + 32);

  sub_1A3C33378(*(v0 + 40));
  return v0;
}

uint64_t PXSwiftUITungstenView.Coordinator.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  sub_1A3C33378(*(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1A4831160()
{
  result = qword_1EB143468;
  if (!qword_1EB143468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143468);
  }

  return result;
}

void sub_1A48311B8()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0();
  MEMORY[0x1A5906C60](&v3);
  v2 = v3;
  if (v3)
  {
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_1A4831260@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A48301B0();
  sub_1A524B924();
  type metadata accessor for PXSwiftUITungstenView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  *a1 = v5;
  return sub_1A3C66EE8(v3);
}

uint64_t sub_1A48312F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4830CFC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4831358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4830CFC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A48313BC()
{
  sub_1A4830CFC();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_So7CGPointVIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4831424(void *a1)
{
  v2 = swift_allocObject();
  sub_1A4831464(a1);
  return v2;
}

id sub_1A4831464(void *a1)
{
  v2 = v1;
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  v7 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  v8 = sub_1A5240E64();
  v9 = *(*(v8 - 8) + 56);
  v10 = 1;
  v9(v2 + v7, 1, 1, v8);
  v11 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable;
  *(v2 + v11) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5241604();
  *(v2 + 56) = a1;
  v12 = a1;
  v13 = PHCollection.title.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *(v2 + 64) = v15;
  *(v2 + 72) = v16;
  v17 = objc_opt_self();
  *(v2 + 80) = [v17 publicURLEnabledForSharedAlbum_];
  v18 = [v17 publicURLForSharedAlbum_];
  if (v18)
  {
    v19 = v18;
    sub_1A5240DE4();

    v10 = 0;
  }

  v9(v6, v10, 1, v8);
  v20 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A4831980(v6, v2 + v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v21 = [v17 notificationsEnabledForSharedAlbum_];
  *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled) = v21;
  v22 = [v17 multipleContributorsEnabledForSharedAlbum_];
  *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]) = v22;
  result = [v12 photoLibrary];
  if (result)
  {
    v24 = result;
    v25 = swift_allocObject();
    swift_weakInit();

    PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A483179C, v25, v27);

    swift_beginAccess();
    sub_1A4831980(v27, v2 + 16, &unk_1EB129F60, sub_1A3C6F5F0);
    swift_endAccess();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A483179C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = (*(*Strong + 216))();
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v3 = sub_1A524DC34();

  if (!v3)
  {
LABEL_8:

    return;
  }

  v4 = [v3 objectAfterChanges];
  if (!v4)
  {

    goto LABEL_8;
  }

  v5 = v4;
  if (*(v1 + 56) != v4)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    aBlock[4] = sub_1A4834244;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3DC72D4;
    aBlock[3] = &block_descriptor_284;
    v9 = _Block_copy(aBlock);
    v5 = v5;

    [v6 performChanges_];
    _Block_release(v9);
  }
}

uint64_t sub_1A4831980(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C4D290(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48319EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

id sub_1A4831A64()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  v1 = v0[7];

  return v1;
}

void sub_1A4831AD8(void *a1)
{
  v2 = v1;
  v4 = v1[7];
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[7];
    v2[7] = a1;
    v10 = a1;

    [*(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 528))(v9);
  }
}

id sub_1A4831C54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  v4 = v1;

  return [*(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

uint64_t sub_1A4831CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4831D44()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4831DB8(uint64_t a1, uint64_t a2)
{
  v5 = v2[8] == a1 && v2[9] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[8] = a1;
    v2[9] = a2;

    v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

    return [v6 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 528))(v9);
  }
}

void sub_1A4831F14()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4831F70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4831FF0()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  return v0[80];
}

id sub_1A4832054(char a1)
{
  if (v1[80] == (a1 & 1))
  {
    v1[80] = a1 & 1;
    v5 = *&v1[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable];

    return [v5 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 528))(v3);
  }
}

uint64_t sub_1A48321D8(uint64_t a1)
{
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A426E444(a1, &v6 - v3);
  return sub_1A4832318(v4);
}

uint64_t sub_1A483227C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 520))();

  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  return sub_1A426E444(v1 + v3, a1);
}

uint64_t sub_1A4832318(uint64_t a1)
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A426E444(v1 + v7, v6);
  v8 = sub_1A48338FC(v6, a1);
  sub_1A3C68A04(v6, &unk_1EB12B250, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 528))(v10);
  }

  else
  {
    sub_1A426E444(a1, v6);
    swift_beginAccess();
    sub_1A4069480(v6, v1 + v7);
    swift_endAccess();
    [*(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
    sub_1A3C68A04(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  return sub_1A3C68A04(a1, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1A4832544(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A426E444(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A4069480(v7, a1 + v8);
  swift_endAccess();
  [*(a1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
  return sub_1A3C68A04(v7, &unk_1EB12B250, v4);
}

uint64_t sub_1A483264C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A483270C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48327A0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 520))();

  return *(v2 + *a2);
}

id sub_1A4832838(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;
    v9 = *(v5 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

    return [v9 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v5 + 528))(v7);
  }
}

id sub_1A4832958()
{
  v1 = v0;
  v2 = (*(*v0 + 216))();
  v3 = PHCollection.title.getter();
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if ((*(*v1 + 264))() == v6 && v8 == v7)
  {

LABEL_14:
  }

  v10 = sub_1A524EAB4();

  if (v10)
  {
    goto LABEL_14;
  }

  return sub_1A4831DB8(v6, v7);
}

uint64_t sub_1A4832A90()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 publicURLEnabledForSharedAlbum_];

  result = (*(*v0 + 312))();
  if (v3 != (result & 1))
  {
    if (v3 == v0[80])
    {
      v0[80] = v3;
      v7 = *&v0[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable];

      return [v7 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v6);
    }
  }

  return result;
}

uint64_t sub_1A4832C50()
{
  v1 = v0;
  v2 = sub_1A5240E64();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406C37C();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = objc_opt_self();
  v22 = (*(*v0 + 216))();
  v23 = [v21 publicURLForSharedAlbum_];

  if (v23)
  {
    sub_1A5240DE4();

    v24 = v37;
    (*(v37 + 56))(v17, 0, 1, v2);
  }

  else
  {
    v24 = v37;
    (*(v37 + 56))(v17, 1, 1, v2);
  }

  v25 = sub_1A408A03C(v17, v20);
  (*(*v1 + 360))(v25);
  v26 = *(v5 + 48);
  sub_1A426E444(v14, v7);
  sub_1A426E444(v20, &v7[v26]);
  v27 = *(v24 + 48);
  if (v27(v7, 1, v2) != 1)
  {
    v28 = v35;
    sub_1A426E444(v7, v35);
    if (v27(&v7[v26], 1, v2) != 1)
    {
      v31 = v34;
      (*(v24 + 32))(v34, &v7[v26], v2);
      sub_1A4833EBC(&qword_1EB126050, MEMORY[0x1E6968FB0]);
      LODWORD(v37) = sub_1A524C594();
      v32 = *(v24 + 8);
      v32(v31, v2);
      v33 = MEMORY[0x1E6968FB0];
      sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v32(v28, v2);
      sub_1A3C68A04(v7, &unk_1EB12B250, v33);
      if (v37)
      {
        return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      }

      goto LABEL_10;
    }

    sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v24 + 8))(v28, v2);
LABEL_9:
    sub_1A43975D8(v7);
LABEL_10:
    v29 = v36;
    sub_1A426E444(v20, v36);
    sub_1A4832318(v29);
    return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if (v27(&v7[v26], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_1A3C68A04(v7, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1A483318C()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 notificationsEnabledForSharedAlbum_];

  result = (*(*v0 + 408))();
  if (v3 != (result & 1))
  {
    if (v3 == *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled))
    {
      *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled) = v3;
      v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

      return [v7 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v6);
    }
  }

  return result;
}

uint64_t sub_1A4833354()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 multipleContributorsEnabledForSharedAlbum_];

  result = (*(*v0 + 456))();
  if (v3 != (result & 1))
  {
    if (v3 == *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]))
    {
      *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]) = v3;
      v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

      return [v7 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v6);
    }
  }

  return result;
}

uint64_t SharedAlbumObservableModel.deinit()
{
  sub_1A3C68A04(v0 + 16, &unk_1EB129F60, sub_1A3C6F5F0);

  sub_1A3C68A04(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

  v1 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedAlbumObservableModel.__deallocating_deinit()
{
  sub_1A3C68A04(v0 + 16, &unk_1EB129F60, sub_1A3C6F5F0);

  sub_1A3C68A04(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

  v1 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A4833858@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4833870()
{
  type metadata accessor for SharedAlbumObservableModel();
  sub_1A4833EBC(&unk_1EB1434B0, type metadata accessor for SharedAlbumObservableModel);

  sub_1A5245C54();
}

uint64_t sub_1A48338FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1A406C37C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A426E444(a1, v13);
  sub_1A426E444(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A426E444(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1A4833EBC(&qword_1EB126050, MEMORY[0x1E6968FB0]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A3C68A04(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A43975D8(v13);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A3C68A04(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v17 = 0;
  return v17 & 1;
}

uint64_t type metadata accessor for SharedAlbumObservableModel()
{
  result = qword_1EB1DA6E0;
  if (!qword_1EB1DA6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4833CC0()
{
  result = qword_1EB143478;
  if (!qword_1EB143478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143478);
  }

  return result;
}

unint64_t sub_1A4833D18()
{
  result = qword_1EB143480;
  if (!qword_1EB143480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143480);
  }

  return result;
}

unint64_t sub_1A4833D70()
{
  result = qword_1EB143488;
  if (!qword_1EB143488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143488);
  }

  return result;
}

unint64_t sub_1A4833DC8()
{
  result = qword_1EB143490;
  if (!qword_1EB143490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143490);
  }

  return result;
}

unint64_t sub_1A4833E20()
{
  result = qword_1EB143498;
  if (!qword_1EB143498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143498);
  }

  return result;
}

uint64_t sub_1A4833EBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4833F08()
{
  result = qword_1EB1434A8;
  if (!qword_1EB1434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1434A8);
  }

  return result;
}

void sub_1A4833F64()
{
  sub_1A3C4D290(319, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_1A48341A8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + *a1) = *(v2 + 24);
  return [*(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

id sub_1A48341F8()
{
  v1 = *(v0 + 16);
  *(v1 + 80) = *(v0 + 24);
  return [*(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

uint64_t sub_1A4834244()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 56);
    *(result + 56) = v1;
    v5 = v1;

    [*(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
    sub_1A4832958();
    sub_1A4832A90();
    sub_1A4832C50();
    sub_1A483318C();
    sub_1A4833354();
  }

  return result;
}

id sub_1A4834328(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1A483439C()
{
  result = [*(v0 + OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A48344A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpSharePlayVideoPlaybackDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48344E4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524C594() & 1;
}

uint64_t sub_1A4834580(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A3C672D4(v4, a2);
  return sub_1A524ECE4();
}

void sub_1A4834694()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = AssociatedTypeWitness;
  v3 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1A3C50E60(&qword_1EB12A400, v1, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A483498C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = AssociatedTypeWitness;
  v3 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1A3C50E60(&qword_1EB12A400, v1, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4834C84()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = AssociatedTypeWitness;
  v3 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1A3C50E60(&qword_1EB12A400, v1, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4834F7C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = AssociatedTypeWitness;
  v3 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1A3C50E60(&qword_1EB12A400, v1, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4835274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[7] = a2;
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v12[4] = v3;
  v12[5] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[10] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v6);
  v12[9] = v12 - v7;
  v8 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E60(&qword_1EB12A400, v10, type metadata accessor for PlaceholderUIItem);
  v12[11] = AssociatedTypeWitness;
  v12[12] = AssociatedTypeWitness;
  v12[13] = v8;
  v12[14] = v8;
  v12[15] = AssociatedConformanceWitness;
  v12[16] = v11;
  v12[17] = v11;
  sub_1A5245A24();
}

void sub_1A4835688()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = AssociatedTypeWitness;
  v3 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1A3C50E60(&qword_1EB12A400, v1, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4835984(uint64_t a1)
{
  v3 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = AssociatedTypeWitness;
  v5 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E60(&qword_1EB12A400, v2, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

uint64_t sub_1A4835C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 224))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A4835E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v4 = *a1;
  sub_1A44FFE88();
  v6 = v5;
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = v6;
  v11 = sub_1A5249754();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v67 - v12;
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v67 - v17;
  v18 = *(v4 + *MEMORY[0x1E69C2290]);
  v74 = *(v18 + 16);
  v19 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v67 - v24;
  v25 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v67 - v27;
  v73 = v29;
  v80 = sub_1A5249754();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v67 - v30;
  sub_1A5242E04();
  v31 = (*(v25 + 88))(v28, v18);
  if (v31 == *off_1E7720FE8)
  {
    (*(v25 + 96))(v28, v18);
    v32 = v72;
    v33 = v28;
    v34 = v74;
    (*(v19 + 32))(v72, v33, v74);
    swift_getAssociatedTypeWitness();
    (*(v19 + 16))(v22, v32, v34);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    (*(v9 + 104))();
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = v69;
    v37 = *(v69 + 16);
    v38 = v68;
    v37(v68, v15, AssociatedTypeWitness);
    v39 = *(v36 + 8);
    v39(v15, AssociatedTypeWitness);
    v37(v15, v38, AssociatedTypeWitness);
    v91 = MEMORY[0x1E6981910];
    v92 = MEMORY[0x1E6981900];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = v75;
    sub_1A3DF4798(v15, AssociatedTypeWitness);
    v82 = AssociatedConformanceWitness;
    v83 = OpaqueTypeConformance2;
    v42 = v73;
    swift_getWitnessTable();
    v43 = v77;
    sub_1A3DF4798(v41, v42);
    (*(v78 + 8))(v41, v42);
    v39(v15, AssociatedTypeWitness);
    v39(v38, AssociatedTypeWitness);
    (*(v19 + 8))(v72, v74);
    v44 = v43;
    v45 = MEMORY[0x1E6981910];
    v46 = MEMORY[0x1E6981900];
  }

  else
  {
    v74 = AssociatedTypeWitness;
    v72 = v8;
    v46 = MEMORY[0x1E6981900];
    v47 = v73;
    if (v31 != *off_1E7720FF8 && v31 != *off_1E7720FF0)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    (*(v25 + 96))(v28, v18);
    v49 = *v28;
    v50 = *(*v28 + 64);
    sub_1A5242DF4();
    v50(&v91, v90[0]);
    v51 = __swift_project_boxed_opaque_existential_1(&v91, v93);
    v52 = MEMORY[0x1EEE9AC00](v51);
    (*(v54 + 16))(&v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v52);
    v90[5] = sub_1A524B8E4();
    v90[3] = type metadata accessor for PlaceholderUIItem();
    v90[4] = sub_1A3C50E60(&qword_1EB125A78, v55, type metadata accessor for PlaceholderUIItem);
    v90[0] = v49;
    v56 = v70;
    v45 = MEMORY[0x1E6981910];
    sub_1A524A554();

    __swift_destroy_boxed_opaque_existential_0(v90);
    __swift_destroy_boxed_opaque_existential_0(&v91);
    v57 = v74;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v91 = v45;
    v92 = v46;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v75;
    v60 = v57;
    v61 = v76;
    sub_1A3DF4890(v56, v60, v76);
    v88 = AssociatedConformanceWitness;
    v89 = v58;
    swift_getWitnessTable();
    v44 = v77;
    sub_1A3DF4798(v59, v47);
    (*(v78 + 8))(v59, v47);
    (*(v71 + 8))(v56, v61);
  }

  v62 = MEMORY[0x1E6982070];
  v91 = v45;
  v92 = v46;
  v63 = swift_getOpaqueTypeConformance2();
  v86 = AssociatedConformanceWitness;
  v87 = v63;
  WitnessTable = swift_getWitnessTable();
  v85 = v62;
  v64 = v80;
  swift_getWitnessTable();
  v65 = v79;
  (*(v79 + 16))(v81, v44, v64);
  return (*(v65 + 8))(v44, v64);
}

void sub_1A48368B0(uint64_t a1, void *a2)
{
  v11[7] = a1;
  v11[4] = *(*(*a2 + *off_1E77210A0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11[2] = v11 - v2;
  v4 = *(v3 + 16);
  v5 = *(*(v3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v11[0] = v4;
  v11[1] = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1A3C50E60(&qword_1EB12A400, v9, type metadata accessor for PlaceholderUIItem);
  v11[13] = AssociatedTypeWitness;
  v11[14] = v7;
  v11[15] = v7;
  v11[16] = AssociatedConformanceWitness;
  v11[17] = v10;
  v11[18] = v10;
  sub_1A5245A24();
}

void sub_1A4836EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[4] = a2;
  v9[2] = a1;
  v9[3] = a3;
  v9[0] = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v9[0]);
  v9[1] = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1A3C50E60(&qword_1EB12A400, v7, type metadata accessor for PlaceholderUIItem);
  v9[6] = AssociatedTypeWitness;
  v9[7] = v5;
  v9[8] = v5;
  v9[9] = AssociatedConformanceWitness;
  v9[10] = v8;
  v9[11] = v8;
  sub_1A5245A24();
}

void sub_1A4837374(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a3;
  v5 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = AssociatedTypeWitness;
  v8 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1A3C50E60(&qword_1EB12A400, v4, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

uint64_t sub_1A48376E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 168))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  if (v16 == *off_1E7720FF8)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E6570657270;
    }

LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v16 == *off_1E7720FF0)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E65707061;
    }

    goto LABEL_8;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4837AA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 176))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  else
  {
    if (v16 == *off_1E7720FF8 || v16 == *off_1E7720FF0)
    {
      (*(v12 + 96))(v15, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A4837E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1A42E6E80(a1, WitnessTable);
}

uint64_t sub_1A4837EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_allocObject();
  sub_1A4837FB4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v21;
}

uint64_t sub_1A4837FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v30 = a6;
  v31 = a7;
  v28 = a3;
  v29 = a4;
  v19 = sub_1A52411C4();
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a11;
  v22[3] = a12;
  v22[4] = a8;
  v22[5] = a10;
  *(v13 + 64) = sub_1A483854C;
  *(v13 + 72) = v22;
  *(v13 + 56) = a9;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  v23 = v29;
  *(v13 + 40) = v28;
  *(v13 + 48) = v23;
  if (!a5)
  {

    sub_1A52411B4();
    sub_1A5241164();
    (*(v27 + 8))(v21, v19);
    a5 = sub_1A524C634();
  }

  *(v13 + 16) = a5;
  v24 = v31;
  *(v13 + 80) = v30;
  *(v13 + 88) = v24;
  return v13;
}

uint64_t sub_1A4838154()
{

  sub_1A3C33378(*(v0 + 80));

  return swift_deallocClassInstance();
}

void sub_1A48381C0(uint64_t a1, uint64_t a2)
{
  sub_1A3C50E60(&qword_1EB12A400, a2, type metadata accessor for PlaceholderUIItem);

    ;
  }
}

void sub_1A483822C(uint64_t a1, uint64_t a2)
{
  sub_1A3C50E60(&qword_1EB12A400, a2, type metadata accessor for PlaceholderUIItem);

    ;
  }
}

void sub_1A4838298()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E60(&qword_1EB12A400, v0, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

uint64_t sub_1A483854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  *(a2 + 24) = *(v2 + 16);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v4(a1);
}

uint64_t sub_1A4838614(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFE)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1A48387C0(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v9 + 1;
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

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t sub_1A48389D4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = type metadata accessor for LemonadeBookmark(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 48))(a1, a2, v10);
  v13 = v12[16];
  sub_1A3C9ED58(v12, type metadata accessor for LemonadeBookmark);
  v19 = v13;
  v18 = 10;
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v17[3] == v17[1] && v17[4] == v17[2])
  {

    return 1;
  }

  v14 = sub_1A524EAB4();

  if (v14)
  {
    return 1;
  }

  (*(a2 + 96))(a1, a2);
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v8, v5);
  if (v15 == 1)
  {
    return 0;
  }

  result = (*(a2 + 72))(a1, a2);
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

id sub_1A4838C9C(uint64_t a1, uint64_t a2, SEL *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  (*(a2 + 96))(a1, a2, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v13 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    (*(v12 + 8))(v11, AssociatedTypeWitness);
    if (v13)
    {
      v17[1] = &unk_1F198AE70;
      v14 = swift_dynamicCastObjCProtocolConditional();
      if (v14)
      {
        v15 = [v14 *a3];

        return v15;
      }
    }
  }

  return 0;
}

uint64_t sub_1A4838E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A4838EF0(a1, a2, a3);
  return v6;
}

char *sub_1A4838EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A5241604();
  sub_1A3C5921C(a1, &v3[qword_1EB1EBFA8]);
  *(v3 + 2) = a2;
  v8 = *(*v3 + 112);
  v9 = *(v7 + 80);
  v10 = *(v9 - 8);
  (*(v10 + 32))(&v3[v8], a3, v9);
  (*(v10 + 56))(&v3[v8], 0, 1, v9);
  return v3;
}

uint64_t sub_1A4839034()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 32))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A4839208()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 24))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48393D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 40))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48395A4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 48))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48397B0(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v1;
  sub_1A3C38BD4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  v5 = objc_allocWithZone(off_1E7721410);

  v6 = sub_1A524C634();

  v7 = sub_1A524C634();
  v11[4] = sub_1A483FFE0;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_285;
  v8 = _Block_copy(v11);
  v9 = [v5 initWithTitle:v6 systemImageName:v7 role:1 handler:v8];

  _Block_release(v8);

  sub_1A3C69CFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A52F9790;
  *(result + 32) = v9;
  return result;
}

uint64_t sub_1A48399D0()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_1A524CC54();

    v6 = sub_1A524CC44();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v4;
    sub_1A3D4D930(0, 0, v2, &unk_1A5369140, v7);
  }

  return result;
}

uint64_t sub_1A4839B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4839BB4, v6, v5);
}

void sub_1A4839BB4()
{
  v1 = *(v0 + 16);

  v3 = (*(*v1 + 136))(v2);
  sub_1A42E1AB0(v3, v4);
}

uint64_t sub_1A4839C9C()
{

  sub_1A3C9ED58(v0 + qword_1EB1EBFA8, type metadata accessor for LemonadeBookmark);
  v1 = *(*v0 + 112);
  v2 = sub_1A524DF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A4839F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 112);
  v5 = sub_1A524DF24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A483A178@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 136))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A483A1C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A52461D4();
}

uint64_t sub_1A483A450()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  if (!*(v0 + *(v1 + 128)))
  {
    return 0;
  }

  v13[1] = sub_1A5243164();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {

    (*(v4 + 8))(v6, v3);

    return 0;
  }

  (*(v7 + 32))(v10, v6, AssociatedTypeWitness);

  v12 = sub_1A52431A4();

  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_1A483A734()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + qword_1EB1EB160;
  v5 = type metadata accessor for LemonadeBookmark(0);
  sub_1A3C58EB8(v4 + *(v5 + 24), v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (EnumCaseMultiPayload != 9)
  {
    v9 = (*(*v0 + 168))(v7);
    if (v9)
    {
      v19 = v9;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v11 = *(AssociatedConformanceWitness + 32);
      v12 = swift_checkMetadataState();
      v13 = v11(v12, AssociatedConformanceWitness);
      v15 = v14;
      swift_unknownObjectRelease();
      if (v15)
      {
        return v13;
      }
    }

    v22 = *(v4 + 16);
    v21 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v19 == v18[1] && v20 == v18[2])
    {
    }

    else
    {
      v17 = sub_1A524EAB4();

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    type metadata accessor for LemonadeMapModel();
    return sub_1A3FDB364();
  }

  v8 = *(v4 + 16);
  if (v8 > 5)
  {
    if (*(v4 + 16) > 7u)
    {
      if (v8 == 8 || v8 == 9)
      {
        return sub_1A3C38BD4();
      }
    }

    else if (v8 == 6 || v8 == 7)
    {
      return sub_1A3C38BD4();
    }
  }

  else if (*(v4 + 16) <= 1u || v8 == 2 || v8 == 4)
  {
    return sub_1A3C38BD4();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A483AB58()
{
  if (!(*(*v0 + 168))())
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 48);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A483AC84()
{
  if (!(*(*v0 + 168))())
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 24);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_1A483ADA4()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + qword_1EB1EB160;
  v5 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v6 = sub_1A3CA1BC0(v4 + v5, v3);
  v7 = sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v6)
  {
    v24 = *(v4 + 16);
    v23 = 7;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v21 == v19 && v22 == v20)
    {

      return 0xD00000000000001BLL;
    }

    v8 = sub_1A524EAB4();

    if (v8)
    {
      return 0xD00000000000001BLL;
    }
  }

  v10 = (*(*v0 + 168))(v7);
  if (!v10 || (v21 = v10, swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v12 = *(AssociatedConformanceWitness + 40), v13 = swift_checkMetadataState(), v9 = v12(v13, AssociatedConformanceWitness), v15 = v14, swift_unknownObjectRelease(), !v15))
  {
    v24 = *(v4 + 16);
    v23 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v21 == v19 && v22 == v20)
    {
    }

    else
    {
      v16 = sub_1A524EAB4();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    sub_1A3FDB358();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return v9;
}

uint64_t sub_1A483B124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = *v1;
  v4 = *(*(*(*v1 + 88) + 8) + 8);
  v5 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &AssociatedConformanceWitness - v6;
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &AssociatedConformanceWitness - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(v3 + 168))(v9);
  if (!v12)
  {
    LOBYTE(v45) = *(v1 + qword_1EB1EB160 + 16);
    v47 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v43[0] == v40)
    {
    }

    else
    {
      v19 = sub_1A524EAB4();

      if ((v19 & 1) == 0)
      {
        return sub_1A483CBB8();
      }
    }

    v20 = *(v1 + *(*v1 + 120));
    v21 = *(v20 + 16);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v22 = *(v20 + 24);
    v23 = v21;
    v24 = [v22 viewMode];
    sub_1A3C6C180(&v40);
    v45 = v40;
    v46 = BYTE8(v40);
    v25 = sub_1A412FAA0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = sub_1A3C5A374();
    v33 = sub_1A3C30368();
    LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v23, v43, &v45, v24, 0, 0, 1, v32 & 1, v39, v25, v27, v29, v31, v33 & 1);
    type metadata accessor for LemonadeNavigationDestination();
    return swift_storeEnumTagMultiPayload();
  }

  v38 = v12;
  v13 = v1 + qword_1EB1EB160;
  v14 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = sub_1A3CA1BC0(v13 + v14, v11);
  v15 = sub_1A3C9ED58(v11, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v13)
  {
    (*(*v2 + 240))(v15);
    return swift_unknownObjectRelease();
  }

  sub_1A3CA2A44();
  v17 = v38;
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  if ((sub_1A52426F4() & 1) == 0)
  {
    v18 = swift_unknownObjectRelease();
LABEL_12:
    if ((MEMORY[0x1A590D320](v18) & 1) == 0)
    {
      *&v43[0] = v17;
      v34 = swift_checkMetadataState();
      swift_getAssociatedConformanceWitness();
      if (PhotosModel.photokitObject.getter(v34))
      {
        v41 = type metadata accessor for LemonadeObservableCollectionBookmark();
        WitnessTable = swift_getWitnessTable();
        *&v40 = v2;

        sub_1A45DF484(&v40);
      }
    }

    swift_checkMetadataState();
    sub_1A5242604();
    goto LABEL_17;
  }

  swift_checkMetadataState();
  sub_1A5242604();
  swift_unknownObjectRelease();
LABEL_17:
  (*(v4 + 112))(v7, *(v2 + *(*v2 + 120)), v5, v4);
  swift_unknownObjectRelease();
  return (*(v36 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1A483B910@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + qword_1EB1EB160;
  v7 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1A3CA1BC0(v6 + v7, v5);
  sub_1A3C9ED58(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for LemonadeNavigationDestination();
    return swift_storeEnumTagMultiPayload();
  }

  v9 = *(v6 + 16);
  if (v9 > 5)
  {
    if (*(v6 + 16) > 7u)
    {
      if (v9 == 8)
      {
        v20 = [*(*(v1 + *(*v1 + 120)) + 16) px_virtualCollections];
        v21 = [v20 sharedAlbumsCollectionList];

        PXDisplayCollectionDetailedCountsMake(v21);
        *a1 = v22;
        a1[1] = v23;
        a1[2] = v24;
        a1[3] = v25;
        type metadata accessor for LemonadeNavigationDestination();
        return swift_storeEnumTagMultiPayload();
      }

      if (v9 == 9)
      {
        sub_1A46833FC(*(v1 + *(*v1 + 120)));
      }
    }

    else if (v9 == 6 || v9 == 7)
    {

      PXDisplayCollectionDetailedCountsMake(v16);
      *a1 = v17;
      a1[1] = v18;
      a1[2] = v19;
      type metadata accessor for LemonadeNavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_22:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  if (*(v6 + 16) > 1u)
  {
    if (v9 == 2)
    {
      return sub_1A45A2EA0(*(v1 + *(*v1 + 120)), a1);
    }

    if (v9 == 4)
    {
      v30 = 0;
      sub_1A3C36888();

      sub_1A414D2C8(v26, 0, 0xE000000000000000, &v30, &v31);
      v27 = v32;
      v28 = v33;
      *a1 = v31;
      a1[2] = v27;
      *(a1 + 24) = v28;
      type metadata accessor for LemonadeNavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_22;
  }

  if (!*(v6 + 16))
  {
    v10 = [*(*(v1 + *(*v1 + 120)) + 16) px_rootAlbumCollectionList];

    PXDisplayCollectionDetailedCountsMake(v10);
    *a1 = v11;
    a1[1] = v12;
    a1[2] = v13;
    a1[3] = v14;
    type metadata accessor for LemonadeNavigationDestination();
    return swift_storeEnumTagMultiPayload();
  }

  return sub_1A4331940(*(v1 + *(*v1 + 120)), a1);
}

uint64_t sub_1A483BD24()
{
  v1 = v0;
  v2 = *(*(*(*v0 + 88) + 8) + 8);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_1EB1EB160;
  type metadata accessor for LemonadeBookmark(0);
  swift_storeEnumTagMultiPayload();
  sub_1A4840048(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v11 = sub_1A524C594();
  sub_1A3C9ED58(v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v11)
  {
    goto LABEL_2;
  }

  v24 = *(v10 + 16);
  v23 = 10;
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v21 == v19 && v22 == v20)
  {

    v12 = 1;
    return v12 & 1;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
LABEL_2:
    v12 = 1;
  }

  else if ((*(*v1 + 168))(v14))
  {
    swift_checkMetadataState();
    sub_1A5242604();
    v12 = (*(v2 + 128))(v6, v3, v2);
    swift_unknownObjectRelease();
    (*(v17 + 8))(v6, v18);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1A483C0AC()
{
  v1 = v0;
  v2 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[2] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9[1] = v9 - v4;
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(*(v1 + *(v2 + 120)) + 16);
  v7 = sub_1A3F9EAF8(v6);

  if (!v7)
  {
    v7 = (*(*v1 + 168))();
    if (v7)
    {
      swift_checkMetadataState();
      sub_1A5242604();
      swift_unknownObjectRelease();
      sub_1A5246234();
    }
  }

  return v7;
}

uint64_t sub_1A483C3B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v1;
  sub_1A3C38BD4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  v5 = objc_allocWithZone(off_1E7721410);

  v6 = sub_1A524C634();

  v7 = sub_1A524C634();
  v11[4] = sub_1A4840090;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_20_6;
  v8 = _Block_copy(v11);
  v9 = [v5 initWithTitle:v6 systemImageName:v7 role:1 handler:v8];

  _Block_release(v8);

  sub_1A3C69CFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A52F9790;
  *(result + 32) = v9;
  return result;
}

uint64_t sub_1A483C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;
  sub_1A3DCC930(0, 0, v8, &unk_1A5369128, v11);
}

uint64_t sub_1A483C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A524E5E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A483C7FC, v7, v6);
}

uint64_t sub_1A483C7FC()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1A483C8C8;

  return sub_1A3DCFAB0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A483C8C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_1A483CB4C;
  }

  else
  {
    v5 = sub_1A483CA50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A483CA50()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(*Strong + 176);

    v4 = v2(v3);
    sub_1A42E1AB0(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A483CB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A483CBB8()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + qword_1EB1EB160;
  v5 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v6 = sub_1A3CA1BC0(v4 + v5, v3);
  v7 = sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v6)
  {
    return (*(*v0 + 240))(v7);
  }

  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A483CCD4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - v10;
  v46 = *(v4 + 88);
  v11 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = sub_1A524DF24();
  v49 = *(v50 - 8);
  v13 = MEMORY[0x1EEE9AC00](v50);
  v52 = &v40 - v14;
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v40 - v15;
  swift_getAssociatedTypeWitness();
  v45 = v11;
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v54 = type metadata accessor for LemonadeBookmark(0);
  v43 = *(v54 - 8);
  v20 = *(v43 + 64);
  v21 = MEMORY[0x1EEE9AC00](v54);
  v22 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v44 = &v40 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v42 = &v40 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v58 = &v40 - v27;
  sub_1A3C58EB8(v2 + qword_1EB1EB160, &v40 - v27, type metadata accessor for LemonadeBookmark);
  (*(v17 + 16))(v19, a1, v16);
  sub_1A3C34400(0, &qword_1EB1406E0);
  if (swift_dynamicCast())
  {
    v41 = v2;
    sub_1A3C34460(v59, v61);
    v29 = v62;
    v28 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    if (!(*(v28 + 40))(v29, v28))
    {
      swift_getAssociatedConformanceWitness();
      sub_1A52463B4();
    }

    __swift_destroy_boxed_opaque_existential_0(v61);
    v2 = v41;
  }

  else
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_1A3EA8D18(v59, &qword_1EB1434E0, &qword_1EB1406E0);
  }

  v30 = sub_1A3C4A5F8();
  v32 = v55;
  v31 = v56;
  v33 = v57;
  (*(v55 + 16))(v57, v30, v56);
  v34 = v58;
  sub_1A3C58EB8(v58, v22, type metadata accessor for LemonadeBookmark);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D224();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v37 = 136315138;
    sub_1A4840048(&qword_1EB13E810, type metadata accessor for LemonadeBookmark);
    sub_1A524EA44();
    sub_1A3C9ED58(v22, type metadata accessor for LemonadeBookmark);
    sub_1A3C2EF94();
  }

  sub_1A3C9ED58(v22, type metadata accessor for LemonadeBookmark);
  (*(v32 + 8))(v33, v31);
  v38 = *(v2 + *(*v2 + 144));
  os_unfair_lock_lock((v38 + 20));
  *(v38 + 16) = 0;
  os_unfair_lock_unlock((v38 + 20));
  return sub_1A3C9ED58(v34, type metadata accessor for LemonadeBookmark);
}

void sub_1A483D8B8()
{
  v0 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A484009C();
}

uint64_t sub_1A483DBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A483DC10, 0, 0);
}

uint64_t sub_1A483DC10()
{
  v1 = v0[3];
  v0[4] = *(v0[2] + 16);
  v0[5] = *v1;
  v0[6] = v1[1];
  sub_1A524CC54();
  v0[7] = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A483DCC0, v3, v2);
}

void sub_1A483DCC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  sub_1A42E1AB0(v2, v1);
}

uint64_t *sub_1A483DEC8()
{
  v1 = *v0;

  sub_1A3C9ED58(v0 + qword_1EB1EB160, type metadata accessor for LemonadeBookmark);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  swift_unknownObjectRelease();

  v2 = *(*v0 + 152);
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1A483E194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_1A483E3DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A483E42C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1A483E480@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 128))(v3, v4);
  v6 = result;
  if (result)
  {
    result = sub_1A3C52C70(0, &qword_1EB1265D0);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v6;
  a1[3] = result;
  return result;
}

void sub_1A483E508()
{
  sub_1A3C76188();

    ;
  }
}

void sub_1A483E544()
{
  sub_1A3C76188();

    ;
  }
}

uint64_t sub_1A483E580()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

BOOL sub_1A483E5D4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 128))(v1, v2);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  v5 = v3 != 0;

  return v5;
}

uint64_t sub_1A483E664()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 88))(v1, v2);
}

unint64_t sub_1A483E6B8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_1A4838C9C(v2, v3, &selRef_px_containsPrivateContent) & 1;
}

uint64_t sub_1A483E704(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A483E744(a1);
  return v2;
}

uint64_t *sub_1A483E744(uint64_t a1)
{
  v3 = *v1;
  *(v1 + *(*v1 + 112)) = 0;
  sub_1A5241604();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_1A483E800(char a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  swift_beginAccess();
  result = sub_1A524C594();
  if (result)
  {
    *(v2 + v4) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 256))(v7);
  }

  return result;
}

uint64_t sub_1A483E9C4(uint64_t a1)
{
  v3 = *v1;
  v10 = *(*v1 + 80);
  v6 = v10;
  v11 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  v8 = v1;
  v9 = a1;
  (*(*v1 + 256))(KeyPath, sub_1A484027C, v7, MEMORY[0x1E69E7CA8] + 8);

  return (*(*(v6 - 8) + 8))(a1);
}

uint64_t sub_1A483EB60@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  (*(*v1 + 248))();

  v3 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_1A483ECBC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 168))(v4);
}

void (*sub_1A483ED9C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 248))(KeyPath, v6, v7);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v8);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A483EAF4();
  return sub_1A483EF80;
}

void sub_1A483EF8C(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 160))(v3);
  sub_1A5246224();
}

uint64_t sub_1A483F0A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 160))(v5);
  v8 = sub_1A5242554();
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A483F23C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 248))(KeyPath, v2, v3);

  v4 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v4);
}

uint64_t sub_1A483F314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A483F3AC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 248))(KeyPath, v6, v7);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v8);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A483F1D0();
  return sub_1A483F590;
}

void sub_1A483F59C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A483F878()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 120);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A483F954(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void (*sub_1A483FA0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 176))();
  return sub_1A3D3D728;
}

BOOL sub_1A483FB28()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LemonadeBookmark(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 160))(v15, v6);
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v10 + 48))(v9, v10);
  sub_1A3C58EB8(&v8[*(v5 + 32)], v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A3C9ED58(v8, type metadata accessor for LemonadeBookmark);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    PXDisplayCollectionDetailedCountsMake(*v3);
    v12 = v11 == 203;
  }

  else
  {
    sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v12 = 0;
  }

  sub_1A3F9670C(v15);
  return v12;
}

uint64_t sub_1A483FCE8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v10 + 160))(v7);
  v11 = a2(v5, a1);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_1A483FE18(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v7 + 160))(v4);
  v8 = sub_1A5242774();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t objectdestroy_8Tm_2()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4840048(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A484009C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_1A5246234();
}

uint64_t sub_1A484027C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  return swift_endAccess();
}

uint64_t sub_1A4840358(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4840394(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A484043C(uint64_t a1)
{
  result = sub_1A40F265C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4840468()
{
  result = qword_1EB12A368;
  if (!qword_1EB12A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A368);
  }

  return result;
}

uint64_t sub_1A48404C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4840550()
{
  result = type metadata accessor for LemonadeBookmark(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A524DF24();
    if (v2 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A4840680()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4840758()
{
  v2 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A483DBF0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A4840860()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A483C708(v3, v4, v5, v2);
}

uint64_t sub_1A48408F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4839B1C(v3, v4, v5, v2);
}

uint64_t static LemonadeViewFactory.sharedLibraryBannerView(for:delegate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryBannerView();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1A4281BD8(a1, (&v16 - v9));
  v11 = *(v5 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v10[v11] = a2;
  sub_1A4840AB4(v10, v7);
  sub_1A4840B18();
  v13 = objc_allocWithZone(v12);
  v14 = sub_1A52485F4();
  sub_1A4840B7C(v10);
  return v14;
}

uint64_t sub_1A4840AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4840B18()
{
  if (!qword_1EB1434F0)
  {
    type metadata accessor for SharedLibraryBannerView();
    sub_1A4473BBC();
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1434F0);
    }
  }
}

uint64_t sub_1A4840B7C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibraryBannerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id LemonadeViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    sub_1A484210C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    ObjectType = swift_getObjectType();
    *(v10 + 56) = ObjectType;
    *(v10 + 32) = a1;
    sub_1A48417A4();
    swift_unknownObjectRetain_n();
    v12 = MEMORY[0x1A5908EF0](v10);
    v13 = sub_1A4841F60(MEMORY[0x1E69E7CC0]);
    if ((a5 & 1) == 0)
    {
      v24 = *off_1E7721A08;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A52F8E10;
      *(v25 + 56) = ObjectType;
      *(v25 + 32) = a1;
      swift_unknownObjectRetain();
      v16 = v24;
      v17 = MEMORY[0x1A5908EF0](v25);

      v26 = *off_1E77219C8;
      swift_unknownObjectRetain();
      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4841C88(a2, v27, isUniquelyReferenced_nonNull_native);

      v34 = v13;
      v29 = *off_1E77219D0;
      swift_unknownObjectRetain();
      sub_1A4841300(a3, v29);
      if (!a4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    if (a3)
    {
      v14 = *off_1E77219D8;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1A52F8E10;
      *(v15 + 56) = swift_getObjectType();
      *(v15 + 32) = a3;
      swift_unknownObjectRetain_n();
      v16 = v14;
      v17 = MEMORY[0x1A5908EF0](v15);

      v18 = *off_1E77219C0;
      swift_unknownObjectRetain();
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4841C88(a2, v18, v19);
      swift_unknownObjectRelease();

      v34 = v13;
      if (!a4)
      {
LABEL_5:

        swift_unknownObjectRelease();

        return;
      }

LABEL_9:
      sub_1A4841404(v34);
    }

    v30 = sub_1A524D244();
    v31 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      swift_slowAlloc();
      *v33 = 136315138;
      sub_1A3C2EF94();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_1A524D244();
    v21 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      swift_slowAlloc();
      *v23 = 136315138;
      sub_1A3C2EF94();
    }
  }
}

void sub_1A4841300(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A4841C88(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1A3C8BF74(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1A4841DF4();
        v10 = v13;
      }

      swift_unknownObjectRelease();
      sub_1A4841AC0(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A4841404(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4842084(0, &qword_1EB13C858);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id LemonadeDnDUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDnDUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeDnDUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A48417A4()
{
  result = qword_1EB126690;
  if (!qword_1EB126690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126690);
  }

  return result;
}

uint64_t sub_1A48417F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4842084(0, &unk_1EB143560);
  v35 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_1A524C674();
      sub_1A524EC94();
      sub_1A524C794();
      v24 = sub_1A524ECE4();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

void sub_1A4841AC0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1A524C674();
      sub_1A524EC94();
      v10 = v9;
      sub_1A524C794();
      v11 = sub_1A524ECE4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

id sub_1A4841C88(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C8BF74(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A48417F0(v13, a3 & 1);
      v8 = sub_1A3C8BF74(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PXActionParameterKey();
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4841DF4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_1A4841DF4()
{
  v1 = v0;
  sub_1A4842084(0, &unk_1EB143560);
  v2 = *v0;
  v3 = sub_1A524E764();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

unint64_t sub_1A4841F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A4842084(0, &unk_1EB143560);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1A3C8BF74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

void sub_1A4842084(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for PXActionParameterKey();
    sub_1A3C38278(&unk_1EB1356B0);
    v3 = sub_1A524E7A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A484210C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4842180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0) + 24);
  v7 = sub_1A52411C4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1A4842204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1A4842278(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A4842300(a1, v3 + OBJC_IVAR____TtCC12PhotosUICore36PhotosDetailsViewHeaderContainerView8UserData_configuration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A4843ED4(a1, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  return v4;
}

uint64_t sub_1A4842300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A4842384@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0);
  *a1 = v3;

  return v3;
}

uint64_t sub_1A4842580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1A48425F0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A48425F0()
{
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData;
  swift_beginAccess();
  if (*(v0 + v7) && (type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0), (v8 = swift_dynamicCastClass()) != 0))
  {
    sub_1A4842300(v8 + OBJC_IVAR____TtCC12PhotosUICore36PhotosDetailsViewHeaderContainerView8UserData_configuration, v6);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, v9, 1, v10);
  v11 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration;
  swift_beginAccess();
  sub_1A4843E0C(v0 + v11, v3, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  swift_beginAccess();
  sub_1A4843D38(v6, v0 + v11);
  swift_endAccess();
  sub_1A4842B08(v3);
  sub_1A4843E78(v3, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  return sub_1A4843E78(v6, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
}

uint64_t (*sub_1A48427DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4842840;
}

uint64_t sub_1A4842840(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A48425F0();
  }

  return result;
}

double sub_1A48428C0()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A4842978(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

void sub_1A4842B08(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v64 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - v6;
  v7 = sub_1A52411C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4();
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  sub_1A4843DB8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v74 = v1;
  v25 = &v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration];
  swift_beginAccess();
  v28 = *(v3 + 48);
  v27 = v3 + 48;
  v26 = v28;
  if (!v28(v25, 1, v2))
  {
    (*(v8 + 16))(v24, &v25[*(v2 + 24)], v7);
  }

  v70 = v25;
  v29 = v8;
  v30 = *(v8 + 56);
  v75 = v24;
  v30();
  sub_1A4843E0C(v72, v16, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  v31 = v26(v16, 1, v2);
  v68 = v27;
  v69 = v2;
  v66 = v26;
  if (v31 == 1)
  {
    sub_1A4843E78(v16, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    v32 = 1;
  }

  else
  {
    (*(v29 + 16))(v21, &v16[*(v2 + 24)], v7);
    sub_1A4843ED4(v16, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    v32 = 0;
  }

  (v30)(v21, v32, 1, v7);
  v33 = *(v71 + 48);
  v34 = MEMORY[0x1E69695A8];
  v35 = v75;
  v36 = v73;
  sub_1A4843E0C(v75, v73, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  sub_1A4843E0C(v21, v36 + v33, &qword_1EB12AFA0, v34);
  v37 = v29;
  v38 = *(v29 + 48);
  if (v38(v36, 1, v7) == 1)
  {
    v39 = MEMORY[0x1E69695A8];
    sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A4843E78(v35, &qword_1EB12AFA0, v39);
    if (v38(v36 + v33, 1, v7) == 1)
    {
      sub_1A4843E78(v36, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
      return;
    }

    goto LABEL_11;
  }

  v40 = v65;
  sub_1A4843E0C(v36, v65, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  if (v38(v36 + v33, 1, v7) == 1)
  {
    v41 = MEMORY[0x1E69695A8];
    sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A4843E78(v75, &qword_1EB12AFA0, v41);
    (*(v37 + 8))(v40, v7);
LABEL_11:
    sub_1A4843ED4(v36, sub_1A45526E4);
    v42 = v70;
    goto LABEL_12;
  }

  v54 = v40;
  v55 = v37;
  v56 = v62;
  (*(v37 + 32))(v62, v36 + v33, v7);
  sub_1A480D1B4(&unk_1EB12AFB0);
  v57 = sub_1A524C594();
  v58 = *(v55 + 8);
  v58(v56, v7);
  v59 = MEMORY[0x1E69695A8];
  sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  sub_1A4843E78(v75, &qword_1EB12AFA0, v59);
  v58(v54, v7);
  sub_1A4843E78(v36, &qword_1EB12AFA0, v59);
  v42 = v70;
  if ((v57 & 1) == 0)
  {
LABEL_12:
    v43 = v67;
    sub_1A4843E0C(v42, v67, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    if (v66(v43, 1, v69) == 1)
    {
      sub_1A4843E78(v43, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
      v44 = 0;
    }

    else
    {
      v45 = v63;
      sub_1A43F8034(v43, v63);
      v46 = v64;
      sub_1A4842300(v45, v64);
      v47 = type metadata accessor for ContentView();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController] = 0;
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_model] = *v46;
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_photosViewHeaderAccessoryModel] = v46[1];
      v76.receiver = v48;
      v76.super_class = v47;

      v44 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_1A4843ED4(v46, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
      sub_1A4843ED4(v45, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    }

    v49 = v74;
    v50 = *&v74[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView];
    *&v74[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView] = v44;
    v51 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView;
    v52 = *&v49[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView];
    v53 = v44;
    if (v52)
    {
      if (v52 == v50)
      {
        goto LABEL_24;
      }

      if (!v50)
      {
        goto LABEL_23;
      }
    }

    else if (!v50)
    {
      goto LABEL_24;
    }

    [v50 removeFromSuperview];
    v52 = *&v74[v51];
    if (v52)
    {
LABEL_23:
      v60 = v52;
      v61 = v74;
      [v74 addSubview_];
      [v61 setNeedsLayout];
    }

LABEL_24:
  }
}

id sub_1A4843570(void *a1)
{
  *&v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData] = 0;
  v3 = &v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration;
  v5 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PhotosDetailsViewHeaderContainerView(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1A4843690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A4843784()
{
  sub_1A4843DB8(319, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A484386C()
{
  result = type metadata accessor for PhotosDetailsViewHeaderContainerViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhotosViewHeaderAccessoryModel();
    if (v2 <= 0x3F)
    {
      result = sub_1A52411C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4843910()
{
  result = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(319);
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

void sub_1A4843A08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController;
  if (!*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController])
  {
    v3 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_photosViewHeaderAccessoryModel] + 144))();
    if (v3)
    {
      v4 = v3;

      PXDisplayCollectionDetailedCountsMake(v5);
      v17 = v6;
      v18 = v7;
      sub_1A4843C88();
      v9 = objc_allocWithZone(v8);
      v10 = sub_1A5249624();
      [v4 addChildViewController_];
      v11 = [v10 view];
      if (!v11)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v12 = v11;
      [v1 addSubview_];

      [v10 didMoveToParentViewController_];
      v13 = *&v1[v2];
      *&v1[v2] = v10;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  [v1 bounds];
  [v16 setFrame_];
}

void sub_1A4843C88()
{
  if (!qword_1EB122DB0)
  {
    sub_1A4843CE4();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122DB0);
    }
  }
}

unint64_t sub_1A4843CE4()
{
  result = qword_1EB125F58;
  if (!qword_1EB125F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F58);
  }

  return result;
}

uint64_t sub_1A4843D38(uint64_t a1, uint64_t a2)
{
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A4843DB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4843E0C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A4843DB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4843E78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A4843DB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4843ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4843F38()
{
  sub_1A3EBD0AC();
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBFB0 = result;
  return result;
}