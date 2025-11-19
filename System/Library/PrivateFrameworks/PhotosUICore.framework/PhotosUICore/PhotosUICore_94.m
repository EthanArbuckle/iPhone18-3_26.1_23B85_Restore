uint64_t *sub_1A4843F98()
{
  if (qword_1EB1DAD70 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBFB0;
}

id sub_1A4843FE8()
{
  if ([v0 people])
  {
    type metadata accessor for SocialGroupCreateGroupAction();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524D244();
  v1 = *sub_1A3CAA3FC();
  sub_1A5246DF4();

  return [v0 completeBackgroundTaskWithSuccess:0 error:0];
}

void sub_1A4844274(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_mutationActionDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);

      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1 & 1, a2, 0, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      a2 = sub_1A5240B74();
    }

    [v10 completeBackgroundTaskWithSuccess:a1 & 1 error:a2];
  }
}

id sub_1A48443F0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = &v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_customTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_keyAssetUUID];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_photoLibrary] = 0;
  v8 = &v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_creationCompletionBlock];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_mutationActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v10 = sub_1A524C3D4();

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithActionType_assetCollectionReference_parameters_, v9, a3, v10);

  return v11;
}

uint64_t sub_1A48446C8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A484583C();
  (*(*(*(v2 + qword_1EB1EBFB8) - 8) + 8))(a1);
  return v5;
}

void sub_1A48447E0()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PhotosSearchCollectionResultsController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  PXCanShowInternalUI();
}

id sub_1A4844BEC(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PhotosSearchCollectionResultsController();
  result = objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a1 & 1);
  v6 = *(v2 + *((*v4 & *v2) + qword_1EB1EBFB8 + 16));
  if (v6)
  {
    v7 = *(*v6 + 352);

    v7(v12, v8);
    LOBYTE(v7) = v12[0];

    if ((v7 & 1) == 0)
    {
      v11 = [v2 navigationItem];
      sub_1A4845064();
    }

    PhotosSearchBarCoordinator<>.barButtonItems.getter(&protocol witness table for PhotosSearchBarPosition.SystemBar);
    sub_1A3C52C70(0, &qword_1EB126B80);
    v9 = sub_1A524CA14();

    [v2 setToolbarItems_];

    v10 = [v2 navigationItem];
    [v10 _setToolbarAvoidsKeyboard_];
  }

  return result;
}

void sub_1A4845010(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4844BEC(a3);
}

uint64_t sub_1A48452B0()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EBFB8 + 24));
  if (*v1)
  {
    return (*v1)();
  }

  return result;
}

void sub_1A4845328(void *a1)
{
  v1 = a1;
  sub_1A48452B0();
}

uint64_t sub_1A48453D0()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = (v0 + *((*v1 & *v0) + qword_1EB1EBFB8 + 24));
  v3 = *v2;
  v4 = v2[1];

  return sub_1A3C784D4(v3, v4);
}

id sub_1A4845490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchCollectionResultsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A484550C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = (a1 + *((*v2 & *a1) + qword_1EB1EBFB8 + 24));
  v4 = *v3;
  v5 = v3[1];

  return sub_1A3C784D4(v4, v5);
}

uint64_t sub_1A48455D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A48456C0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A48456C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A4845C5C();
          sub_1A4845CC4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &unk_1EB12FF68);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A484583C()
{
  v1 = MEMORY[0x1EEE9AC00]((*(*(*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EBFB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + *(v2 + 16)) = v3;
  v6 = (v0 + *((*v4 & *v0) + *(v5 + 4024) + 24));
  *v6 = v7;
  v6[1] = v8;
  (*(v9 + 16))(&v14 - v10, v11, v12, v1);
  return sub_1A5249624();
}

char *sub_1A48459EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1A3C52C70(0, &unk_1EB12FF68);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1A524E2B4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1A524E2B4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1A4845B18(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1A524E2B4();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result);

  return sub_1A48459EC(v6, v5, 1, v3);
}

void sub_1A4845C5C()
{
  if (!qword_1EB1435C8)
  {
    sub_1A3C52C70(255, &unk_1EB12FF68);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1435C8);
    }
  }
}

unint64_t sub_1A4845CC4()
{
  result = qword_1EB1435D0;
  if (!qword_1EB1435D0)
  {
    sub_1A4845C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1435D0);
  }

  return result;
}

uint64_t sub_1A4845D9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1A3E88280;

  return (sub_1A484A9EC)(a1);
}

uint64_t sub_1A4845E60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1A3E91FB8;

  return (sub_1A484A9EC)(a1);
}

uint64_t sub_1A4845F10()
{
  v1 = v0;
  v2 = *v0;
  v76 = *(*v0 + 872);
  v75 = *(v2 + 864);
  v3 = v75;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v57 - v7;
  sub_1A484C758(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - v10;
  v66 = &v57 - v10;
  v63 = sub_1A524CCB4();
  v12 = *(v63 - 8);
  v73 = *(v12 + 56);
  v69 = v12 + 56;
  v73(v11, 1, 1, v63);
  v13 = swift_allocObject();
  swift_weakInit();
  v70 = *(*v1 + 144);
  v14 = v5;
  v15 = *(v5 + 16);
  v62 = v5 + 16;
  v67 = v15;
  v15(v8, &v1[v70], AssociatedTypeWitness);
  v72 = sub_1A524CC54();

  v16 = sub_1A524CC44();
  v17 = *(v14 + 80);
  v71 = v17;
  v18 = (v17 + 48) & ~v17;
  v74 = v18;
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = v19;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v16;
  v20[3] = v21;
  v22 = v76;
  v20[4] = v3;
  v20[5] = v22;
  v23 = *(v14 + 32);
  v68 = v14 + 32;
  v61 = v23;
  v24 = v20 + v18;
  v25 = v8;
  v23(v24, v8, AssociatedTypeWitness);
  *(v20 + v19) = v13;

  v26 = v66;
  v27 = sub_1A3D4D930(0, 0, v66, &unk_1A53693F0, v20);
  sub_1A3EE1368(v27, MEMORY[0x1E69E7CA8] + 8);

  v60 = *(*v1 + 888);
  swift_beginAccess();
  sub_1A484C758(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  v65 = v28;
  v64 = sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  v29 = v63;
  v73(v26, 1, 1, v63);
  v30 = swift_allocObject();
  swift_weakInit();
  v58 = v25;
  v31 = AssociatedTypeWitness;
  v67(v25, &v1[v70], AssociatedTypeWitness);

  v32 = sub_1A524CC44();
  v33 = v59;
  v34 = swift_allocObject();
  *(v34 + 2) = v32;
  v36 = v75;
  v35 = v76;
  *(v34 + 3) = MEMORY[0x1E69E85E0];
  *(v34 + 4) = v36;
  *(v34 + 5) = v35;
  v37 = v25;
  v38 = v31;
  v39 = v31;
  v40 = v61;
  v61(&v34[v74], v37, v38);
  *&v34[v33] = v30;

  v41 = sub_1A3D4D930(0, 0, v26, &unk_1A5369400, v34);
  sub_1A3EE1368(v41, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();

  v73(v26, 1, 1, v29);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v58;
  v67(v58, &v1[v70], v39);

  v44 = sub_1A524CC44();
  v45 = swift_allocObject();
  *(v45 + 2) = v44;
  v47 = v75;
  v46 = v76;
  *(v45 + 3) = MEMORY[0x1E69E85E0];
  *(v45 + 4) = v47;
  *(v45 + 5) = v46;
  v40(&v45[v74], v43, v39);
  *&v45[v33] = v42;

  v48 = v66;
  v49 = sub_1A3D4D930(0, 0, v66, &unk_1A5369410, v45);
  sub_1A3EE1368(v49, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();

  v73(v48, 1, 1, v63);
  v50 = swift_allocObject();
  swift_weakInit();
  v67(v43, &v1[v70], v39);

  v51 = sub_1A524CC44();
  v52 = swift_allocObject();
  *(v52 + 2) = v51;
  v54 = v75;
  v53 = v76;
  *(v52 + 3) = MEMORY[0x1E69E85E0];
  *(v52 + 4) = v54;
  *(v52 + 5) = v53;
  v61(&v52[v74], v43, v39);
  *&v52[v33] = v50;

  v55 = sub_1A3D4D930(0, 0, v66, &unk_1A5369420, v52);
  sub_1A3EE1368(v55, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();
}

uint64_t sub_1A4846730()
{
  v1 = v0;
  sub_1A46EA098();
  sub_1A433C198();
  v2 = *(*v0 + 888);
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A484680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[25] = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v7[26] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1A484C758(0, &qword_1EB143668, type metadata accessor for OneUpSharePlayNavigateMessagePayload, MEMORY[0x1E69E6720]);
  v7[27] = swift_task_alloc();
  v9 = type metadata accessor for OneUpSharePlayNavigateMessagePayload();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  sub_1A484C7BC();
  v7[35] = swift_task_alloc();
  sub_1A484C840();
  v7[36] = v10;
  v7[37] = *(v10 - 8);
  v7[38] = swift_task_alloc();
  sub_1A484C8C4();
  v7[39] = v11;
  v7[40] = *(v11 - 8);
  v7[41] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[42] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v7[43] = v13;
  v7[44] = *(v13 + 64);
  v7[45] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], v8);
  v7[46] = swift_task_alloc();
  v7[47] = sub_1A524CC54();
  v7[48] = sub_1A524CC44();
  v15 = sub_1A524CBC4();
  v7[49] = v15;
  v7[50] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1A4846B84, v15, v14);
}

uint64_t sub_1A4846B84()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v27 = v0[37];
  v25 = v0[38];
  v26 = v0[36];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v3);
  v9 = sub_1A524CC44();
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  *(v11 + 4) = v6;
  *(v11 + 5) = v5;
  (*(v4 + 32))(&v11[v10], v2, v3);
  sub_1A3D4D930(0, 0, v1, &unk_1A5369438, v11);

  sub_1A484CAA4(0, &qword_1EB12D810, sub_1A3E91B00);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = sub_1A3E91B54();
  v18 = sub_1A3E91BD0();
  v16(v14, v14, v17, v18, v3, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v27 + 8))(v25, v26);
  swift_beginAccess();
  v19 = sub_1A524CC44();
  v0[51] = v19;
  v20 = swift_task_alloc();
  v0[52] = v20;
  *v20 = v0;
  v20[1] = sub_1A4846E50;
  v21 = v0[39];
  v22 = v0[35];
  v23 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v22, v19, v23, v21);
}

uint64_t sub_1A4846E50()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1A4846F94, v3, v2);
}

uint64_t sub_1A4846F94()
{
  v1 = v0[35];
  sub_1A484C3D8(0, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00);
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    if (swift_weakLoadStrong())
    {
      v6 = v0[27];
      v7 = sub_1A3E91B00();
      sub_1A3DC0EC0(v4, &type metadata for OneUpSharePlayNavigateMessageSchema, v7, v6);
    }

    (*(v0[40] + 8))(v0[41], v0[39]);

    v8 = sub_1A5241BE4();
    (*(*(v8 - 8) + 8))(v1 + v5, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4847BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1A524CC54();
  v6[10] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[11] = v8;
  v6[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4847C60, v8, v7);
}

uint64_t sub_1A4847C60()
{
  sub_1A524D264();
  v1 = sub_1A486DB9C();
  v0[13] = v1;
  v2 = *v1;
  sub_1A5246DF4();

  PXDisplayCollectionDetailedCountsMake(v3);
  v4 = sub_1A3E91E6C();
  v5 = sub_1A3DC0E14(v4, &type metadata for OneUpSharePlayRequestInitializationMessageSchema, v4);
  v0[14] = v5;
  v0[6] = v5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  v8 = swift_checkMetadataState();
  v15 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[15] = v9;
  sub_1A484CAA4(0, &qword_1EB12D840, sub_1A3E91E6C);
  v11 = v10;
  v12 = sub_1A3E91EC0();
  v13 = sub_1A3E91F3C();
  *v9 = v0;
  v9[1] = sub_1A4847FE0;

  return (v15)(v0 + 6, v11, v12, v13, v8, AssociatedConformanceWitness);
}

uint64_t sub_1A4847FE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A48480FC;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A46EBB5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48480FC()
{

  v1 = v0[16];
  v2 = v0[13];
  v3 = sub_1A524D264();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A4848278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v7[19] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB143640, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload, MEMORY[0x1E69E6720]);
  v7[20] = swift_task_alloc();
  v8 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  sub_1A484C5CC();
  v7[27] = swift_task_alloc();
  sub_1A484C650();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  sub_1A484C6D4();
  v7[31] = v10;
  v7[32] = *(v10 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = sub_1A524CC54();
  v7[35] = sub_1A524CC44();
  v12 = sub_1A524CBC4();
  v7[36] = v12;
  v7[37] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A4848504, v12, v11);
}

uint64_t sub_1A4848504()
{
  v1 = v0[30];
  v16 = v0[29];
  v15 = v0[28];
  sub_1A484CAA4(0, &qword_1EB12D6E0, sub_1A3E90934);
  v3 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A3E90988();
  v8 = sub_1A3E90A04();
  v5(v3, v3, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v16 + 8))(v1, v15);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[38] = v9;
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_1A4848708;
  v11 = v0[31];
  v12 = v0[27];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A4848708()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1A484884C, v3, v2);
}

uint64_t sub_1A484884C()
{
  v1 = v0[27];
  sub_1A484C3D8(0, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934);
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    if (swift_weakLoadStrong())
    {
      v6 = v0[20];
      v7 = sub_1A3E90934();
      sub_1A3DC0EC0(v4, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, v7, v6);
    }

    (*(v0[32] + 8))(v0[33], v0[31]);

    v8 = sub_1A5241BE4();
    (*(*(v8 - 8) + 8))(v1 + v5, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4849074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  sub_1A484C354();
  v7[19] = swift_task_alloc();
  sub_1A484C454();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  sub_1A484C4D8();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = sub_1A524CC54();
  v7[27] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v7[28] = v11;
  v7[29] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A48491F8, v11, v10);
}

uint64_t sub_1A48491F8()
{
  v1 = v0[22];
  v16 = v0[21];
  v15 = v0[20];
  sub_1A484CAA4(0, &qword_1EB12D7B8, sub_1A3E914E8);
  v3 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A3E9153C();
  v8 = sub_1A3E915B8();
  v5(v3, v3, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v16 + 8))(v1, v15);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[30] = v9;
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1A48493FC;
  v11 = v0[23];
  v12 = v0[19];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A48493FC()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1A4849540, v3, v2);
}

uint64_t sub_1A4849540()
{
  v1 = v0[19];
  sub_1A484C3D8(0, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8);
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    if (swift_weakLoadStrong())
    {
      v6 = sub_1A3E914E8();
      sub_1A3DC0EC0(v4, &type metadata for OneUpSharePlayNavigationGestureSchema, v6, (v0 + 32));
    }

    (*(v0[24] + 8))(v0[25], v0[23]);

    v7 = sub_1A5241BE4();
    (*(*(v7 - 8) + 8))(v1 + v5, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4849B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_1A484C07C();
  v7[11] = swift_task_alloc();
  sub_1A484C154();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  sub_1A484C1D8();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = sub_1A524CC54();
  v7[19] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v7[20] = v11;
  v7[21] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4849CB0, v11, v10);
}

uint64_t sub_1A4849CB0()
{
  v1 = v0[14];
  v16 = v0[13];
  v15 = v0[12];
  sub_1A484CAA4(0, &qword_1EB1435F0, sub_1A484C100);
  v3 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A484C25C();
  v8 = sub_1A484C2D8();
  v5(v3, v3, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v16 + 8))(v1, v15);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[22] = v9;
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_1A4849EB4;
  v11 = v0[15];
  v12 = v0[11];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A4849EB4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A4849FF8, v3, v2);
}

uint64_t sub_1A4849FF8()
{
  v1 = *(v0 + 88);
  sub_1A484C3D8(0, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100);
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    *(v0 + 224) = v5;
    Strong = swift_weakLoadStrong();
    *(v0 + 192) = Strong;
    if (Strong)
    {
      v7 = sub_1A484C100();
      sub_1A3DC0EC0(v4, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, v7, v0 + 40);
    }

    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v8 = sub_1A5241BE4();
    (*(*(v8 - 8) + 8))(v1 + v5, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A484A5AC()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  v3 = sub_1A5241BE4();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = sub_1A524CC44();
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1A4849EB4;
  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1A484A6B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3E64928;

  return sub_1A484B860();
}

uint64_t sub_1A484A75C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = *(v2 + 864);
  v5 = *(v2 + 872);
  *v3 = v1;
  v3[1] = sub_1A3E91FC0;

  return (sub_1A484B860)(v4, v5);
}

uint64_t sub_1A484A830()
{
}

uint64_t OneUpSharePlaySessionRecipientCoordinator.deinit()
{
  v0 = OneUpSharePlaySessionCoordinator.deinit();

  return v0;
}

uint64_t OneUpSharePlaySessionRecipientCoordinator.__deallocating_deinit()
{
  OneUpSharePlaySessionRecipientCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A484A9EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = sub_1A52411C4();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  v2[7] = swift_task_alloc();
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(v3 + 872);
  v2[13] = *(v3 + 864);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v2[15] = *(AssociatedTypeWitness - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_1A52419E4();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1A524CC54();
  v2[25] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v2[26] = v9;
  v2[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A484AD64, v9, v8);
}

void sub_1A484AD64()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v32 = v0[23];
  v34 = v0[17];
  v35 = v0[15];
  v36 = v0[14];
  log = v0[16];
  v7 = v0[3];
  *(v7 + *(*v7 + 888)) = MEMORY[0x1E69E7CC0];
  (*(v4 + 104))(v5, *MEMORY[0x1E696B268], v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  v10 = swift_unknownObjectRetain();
  v9(v10, v5, v2, AssociatedConformanceWitness);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal();
  (*(v3 + 16))(v32, v1, v2);
  v11 = swift_unknownObjectRetain();
  v12 = sub_1A433BE0C(v11, v32);
  *(v7 + *(*v7 + 880)) = v12;
  *(v7 + *(*v7 + 896)) = *&v12[*(*v12 + 104)];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v0[28] = v13;
  v14 = *(v13 + 72);

  v0[29] = swift_checkMetadataState();
  v14();
  LOBYTE(v3) = sub_1A524D264();
  v15 = sub_1A486DB9C();
  v0[30] = v15;
  v16 = *v15;
  (*(v35 + 16))(log, v34, v36);
  v17 = os_log_type_enabled(v16, v3);
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  if (v17)
  {
    v16;
    v21 = swift_slowAlloc();
    swift_slowAlloc();
    *v21 = 136446210;
    v22 = swift_getAssociatedConformanceWitness();
    (*(v22 + 96))(v20, v22);
    (*(v19 + 8))(v18, v20);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v19 + 8))(v0[16], v0[14]);
  v23 = v0[14];
  v31 = v0[9];
  v33 = v0[8];
  v30 = v0[7];
  v24 = v0[3];
  v25 = swift_getAssociatedConformanceWitness();
  v29 = (*(v25 + 72))(v23, v25);
  sub_1A484C758(0, &qword_1EB12D700, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A52F8E10;
  v27 = *(v25 + 96);
  v27(v23, v25);
  v28 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  (*(*(v28 - 8) + 56))(v30, 1, 1, v28);
  OneUpSharePlayDataSourceMessagePayload.init(dataSourceIdentifier:assetsMetadata:changes:)(v29, v26, v30, v31);
  sub_1A44B67FC(v31, v33, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  sub_1A484B9D0();
  swift_allocObject();
  *(v24 + *(*v24 + 904)) = sub_1A5247954();
  v27(v23, v25);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A484B438(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1A484B560, v4, v3);
}

uint64_t sub_1A484B560()
{
  v1 = v0[30];

  sub_1A4845F10();
  v2 = sub_1A524D264();
  v3 = *v1;
  if (os_log_type_enabled(*v1, v2))
  {
    v4 = v0[28];
    v19 = v0[29];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    swift_unknownObjectRetain();
    v3;
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136446210;
    (*(v4 + 120))(v19, v4);
    sub_1A484BA98(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v7);
    sub_1A3C2EF94();
  }

  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[9];
  (*(v0[28] + 160))(v0[29]);

  sub_1A484BA38(v15, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);

  v16 = v0[1];
  v17 = v0[32];

  return v16(v17);
}

uint64_t sub_1A484B860()
{
  sub_1A524CC54();
  sub_1A524CC44();
  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A484B8F0, v1, v0);
}

void sub_1A484B9D0()
{
  if (!qword_1EB143840)
  {
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload(255);
    v0 = sub_1A5247944();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143840);
    }
  }
}

uint64_t sub_1A484BA38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A484BA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A484BAE0()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A484680C(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A484BC0C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4848278(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A484BD38()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4849074(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t objectdestroy_8Tm_3()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A484BF50()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4849B2C(v7, v8, v9, v0 + v5, v6, v3, v2);
}

void sub_1A484C07C()
{
  if (!qword_1EB1435E0)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1435E0);
    }
  }
}

unint64_t sub_1A484C100()
{
  result = qword_1EB1435F8;
  if (!qword_1EB1435F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1435F8);
  }

  return result;
}

void sub_1A484C154()
{
  if (!qword_1EB143600)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100);
    v0 = sub_1A524CD54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143600);
    }
  }
}

void sub_1A484C1D8()
{
  if (!qword_1EB143608)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100);
    v0 = sub_1A524CD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143608);
    }
  }
}

unint64_t sub_1A484C25C()
{
  result = qword_1EB143610;
  if (!qword_1EB143610)
  {
    sub_1A484CAA4(255, &qword_1EB1435F0, sub_1A484C100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143610);
  }

  return result;
}

unint64_t sub_1A484C2D8()
{
  result = qword_1EB143618;
  if (!qword_1EB143618)
  {
    sub_1A484CAA4(255, &qword_1EB1435F0, sub_1A484C100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143618);
  }

  return result;
}

void sub_1A484C354()
{
  if (!qword_1EB143620)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143620);
    }
  }
}

void sub_1A484C3D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    sub_1A484CAA4(255, a3, a4);
    sub_1A5241BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A484C454()
{
  if (!qword_1EB143630)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8);
    v0 = sub_1A524CD54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143630);
    }
  }
}

void sub_1A484C4D8()
{
  if (!qword_1EB143638)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8);
    v0 = sub_1A524CD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143638);
    }
  }
}

uint64_t sub_1A484C55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A484C758(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A484C5CC()
{
  if (!qword_1EB143648)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143648);
    }
  }
}

void sub_1A484C650()
{
  if (!qword_1EB143658)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934);
    v0 = sub_1A524CD54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143658);
    }
  }
}

void sub_1A484C6D4()
{
  if (!qword_1EB143660)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934);
    v0 = sub_1A524CD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143660);
    }
  }
}

void sub_1A484C758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A484C7BC()
{
  if (!qword_1EB143670)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143670);
    }
  }
}

void sub_1A484C840()
{
  if (!qword_1EB143680)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00);
    v0 = sub_1A524CD54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143680);
    }
  }
}

void sub_1A484C8C4()
{
  if (!qword_1EB143688)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00);
    v0 = sub_1A524CD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143688);
    }
  }
}

uint64_t sub_1A484C948()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4847BC4(v6, v7, v8, v0 + v5, v2, v3);
}

uint64_t sub_1A484CA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A484CAA4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for OneUpSharePlayMessage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A484CB04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for LemonadePeopleHomeSortMenu();
  type metadata accessor for LemonadePeopleSortModel();
  v3 = a1;
  return sub_1A5247C74();
}

uint64_t sub_1A484CB98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeopleSortModel();
  result = sub_1A423E718(v3);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LemonadePeopleHomeSortMenu()
{
  result = qword_1EB1DAF00;
  if (!qword_1EB1DAF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A484CC28()
{
  if (!qword_1EB143690)
  {
    sub_1A484DAEC(255, &qword_1EB143698, sub_1A484CCF8, MEMORY[0x1E6981F40]);
    sub_1A484CF90(&qword_1EB1436D8, &qword_1EB143698, sub_1A484CCF8);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143690);
    }
  }
}

void sub_1A484CCF8()
{
  if (!qword_1EB1436A0)
  {
    sub_1A484CD94();
    sub_1A484CF3C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1436A0);
    }
  }
}

void sub_1A484CD94()
{
  if (!qword_1EB1436A8)
  {
    sub_1A484DAEC(255, &qword_1EB1436B0, sub_1A484CE48, MEMORY[0x1E6981F40]);
    sub_1A484CF90(&qword_1EB1436D0, &qword_1EB1436B0, sub_1A484CE48);
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1436A8);
    }
  }
}

void sub_1A484CE48()
{
  if (!qword_1EB1436B8)
  {
    sub_1A484CEB0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1436B8);
    }
  }
}

void sub_1A484CEB0()
{
  if (!qword_1EB1436C0)
  {
    sub_1A484CF3C(255, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1436C0);
    }
  }
}

void sub_1A484CF3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A484CF90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A484DAEC(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A484CFF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  sub_1A484CF3C(0, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v44 - v6;
  v7 = type metadata accessor for LemonadePeopleHomeSortMenu();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44[2] = v9;
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A484CD94();
  v46 = v11;
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v44 - v14;
  sub_1A484DA88(a1, v10);
  v44[1] = sub_1A524CC54();
  v15 = sub_1A524CC44();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  v19 = v18;
  sub_1A484DB50(v10, v17 + v16);
  sub_1A484DA88(a1, v10);
  v20 = sub_1A524CC44();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  sub_1A484DB50(v10, v21 + v16);
  sub_1A524B944();
  v54 = a1;
  v22 = a1;
  sub_1A484DAEC(0, &qword_1EB1436B0, sub_1A484CE48, MEMORY[0x1E6981F40]);
  sub_1A484CF90(&qword_1EB1436D0, &qword_1EB1436B0, sub_1A484CE48);
  v23 = v51;
  sub_1A524B854();
  sub_1A484DA88(v22, v10);
  v24 = sub_1A524CC44();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 24) = MEMORY[0x1E69E85E0];
  sub_1A484DB50(v10, v25 + v16);
  sub_1A484DA88(v22, v10);
  v27 = sub_1A524CC44();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  sub_1A484DB50(v10, v28 + v16);
  sub_1A524B944();
  v29 = v52;
  sub_1A524B854();
  v30 = *(v53 + 16);
  v31 = v45;
  v32 = v23;
  v33 = v46;
  v30(v45, v32, v46);
  v34 = v47;
  v35 = v48;
  v36 = *(v48 + 16);
  v37 = v29;
  v38 = v49;
  v36(v47, v37, v49);
  v39 = v50;
  v30(v50, v31, v33);
  sub_1A484CCF8();
  v36(&v39[*(v40 + 48)], v34, v38);
  v41 = *(v35 + 8);
  v41(v52, v38);
  v42 = *(v53 + 8);
  v42(v51, v33);
  v41(v34, v38);
  return (v42)(v31, v33);
}

uint64_t sub_1A484D5B0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A484D620@<X0>(PHPhotoLibrary *a1@<X0>, uint64_t a2@<X8>)
{
  v3._object = 0x80000001A53EE5D0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  LemonadeLocalizedPeopleAndPetsTitle(for:key:)(a1->super.isa, v3);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1A484D69C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A484D700()
{
  v1 = sub_1A5243064();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A484CC28();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  v12 = v0;
  sub_1A484DAEC(0, &qword_1EB143698, sub_1A484CCF8, MEMORY[0x1E6981F40]);
  sub_1A484CF90(&qword_1EB1436D8, &qword_1EB143698, sub_1A484CCF8);
  sub_1A524A2E4();
  sub_1A5247D64();
  sub_1A484D69C(&qword_1EB1436E0, sub_1A484CC28);
  sub_1A484D69C(&qword_1EB124DE0, MEMORY[0x1E69C2380]);
  sub_1A524A944();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

void sub_1A484D9D4()
{
  sub_1A3C4B4AC();
  if (v0 <= 0x3F)
  {
    sub_1A484DAEC(319, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A484DA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleHomeSortMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A484DAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A484DB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleHomeSortMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A484DBB4@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeSortMenu();
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  if (v5 == v4)
  {
    v3 = 1;
  }

  else
  {
    sub_1A5247C84();
    sub_1A423E0E8();

    sub_1A524C9C4();
    result = sub_1A524C9C4();
    v3 = v5 == v4;
  }

  *a1 = v3;
  return result;
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = (type metadata accessor for LemonadePeopleHomeSortMenu() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  sub_1A484DAEC(0, &qword_1EB1436F0, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A484DAEC(0, &qword_1EB127260, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A484DEAC()
{
  v1 = type metadata accessor for LemonadePeopleHomeSortMenu();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v8 == v7)
  {
    sub_1A5247C84();
    v3 = sub_1A423E304();

    if ((v3 & 1) == 0)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A5247C84();
    v5 = sub_1A423E304();

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v4 = 2;
LABEL_6:
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC7C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    type metadata accessor for PeopleUtilities();
    return sub_1A3D78590(v4, *v2);
  }

  return result;
}

uint64_t sub_1A484E088@<X0>(uint64_t a1@<X8>)
{
  v17 = sub_1A3C38BD4();
  v18 = v2;
  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for LemonadePeopleHomeSortMenu();
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v10 = sub_1A423E0E8();

  switch(v10)
  {
    case 2:
      sub_1A524B544();

      v11 = MEMORY[0x1E6981E70];
      v12 = MEMORY[0x1E6981748];
      sub_1A5249744();
      sub_1A484CF3C(0, &qword_1EB1436C8, v11, v12, MEMORY[0x1E697F960]);
      sub_1A484E650();
      sub_1A5249744();

      goto LABEL_8;
    case 1:
      sub_1A524B544();
      sub_1A484CF3C(0, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
      sub_1A484E650();
LABEL_7:
      sub_1A5249744();
LABEL_8:
      *a1 = v3;
      *(a1 + 8) = v5;
      v15 = v7 & 1;
      *(a1 + 16) = v15;
      *(a1 + 24) = v9;
      *(a1 + 32) = v17;
      *(a1 + 40) = v18;
      sub_1A3E75E68(v3, v5, v15);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0:
      v13 = MEMORY[0x1E6981E70];
      v14 = MEMORY[0x1E6981748];
      sub_1A5249744();
      sub_1A484CF3C(0, &qword_1EB1436C8, v13, v14, MEMORY[0x1E697F960]);
      sub_1A484E650();
      goto LABEL_7;
  }

  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A484E434@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeSortMenu();
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  *a1 = v4 == v3;
  return result;
}

uint64_t sub_1A484E548()
{
  v1 = *(type metadata accessor for LemonadePeopleHomeSortMenu() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC7C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    type metadata accessor for PeopleUtilities();
    return sub_1A3D78590(0, *v2);
  }

  return result;
}

unint64_t sub_1A484E650()
{
  result = qword_1EB1436F8;
  if (!qword_1EB1436F8)
  {
    sub_1A484CF3C(255, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1436F8);
  }

  return result;
}

uint64_t sub_1A484E6F4(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1A484E704(a1, a2 & 1);
  }
}

uint64_t sub_1A484E704(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A484E710(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1A484E720(a1, a2 & 1);
  }
}

uint64_t sub_1A484E720(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL sub_1A484E890()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = (*(**(v3 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content) + 120))();
      v6 = v5;
      v7 = sub_1A45E0F98(v4, v5);
      sub_1A440B338(v4, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

id sub_1A484E970(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_4:
    type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
    v8 = *((*v4 & *v2) + 0x108);
    v9 = a1;
    v10 = v8();
    v11 = (*((*v4 & *v2) + 0xA8))();
    v12 = sub_1A45E4328(v9, v10, v11);
    v13 = *((*v4 & *v2) + 0xE0);
    v7 = v12;
    v13(v12);
  }

  sub_1A484EB10();
  v14 = v7;
  v18[0] = sub_1A49A2C14();
  v18[1] = v15;
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v18);

  return v16;
}

void sub_1A484EB10()
{
  if (!qword_1EB143700)
  {
    sub_1A484EB6C();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143700);
    }
  }
}

unint64_t sub_1A484EB6C()
{
  result = qword_1EB143708;
  if (!qword_1EB143708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143708);
  }

  return result;
}

id sub_1A484EC24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAssetDescriptionWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static LemonadeSharedWithYouGridConfiguration.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

uint64_t LemonadeSharedWithYouGridConfiguration.hash(into:)()
{
  v1 = [*v0 uuid];
  sub_1A524C674();

  sub_1A524C794();
}

uint64_t LemonadeSharedWithYouGridConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A484EE20()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A484EEA8()
{
  v1 = [*v0 uuid];
  sub_1A524C674();

  sub_1A524C794();
}

uint64_t sub_1A484EF20()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A484EFA4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

id sub_1A484F06C(void **a1)
{
  v1 = PXContentSyndicationPhotosViewConfigurationForAssetCollection(*a1);
  v2 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

  return v2;
}

unint64_t sub_1A484F0C8()
{
  result = qword_1EB143710;
  if (!qword_1EB143710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143710);
  }

  return result;
}

unint64_t sub_1A484F120()
{
  result = qword_1EB129308;
  if (!qword_1EB129308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129308);
  }

  return result;
}

id sub_1A484F174()
{
  v0 = swift_unknownObjectRetain();
  v1 = PXContentSyndicationPhotosViewConfigurationForAssetCollection(v0);
  v2 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1A484F1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A484F2FC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A484F248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A484F2FC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A484F2AC()
{
  sub_1A484F2FC();
  sub_1A5249ED4();
  __break(1u);
}

unint64_t sub_1A484F2FC()
{
  result = qword_1EB143720;
  if (!qword_1EB143720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143720);
  }

  return result;
}

void sub_1A484F358(void *a1)
{
  if ([a1 assetCollectionActionManager])
  {
    sub_1A3C52C70(0, &qword_1EB120708);
    sub_1A3C3A220(&qword_1EB120738, &qword_1EB126850);
    swift_unknownObjectRetain();
    sub_1A524D8F4();
  }

  v1 = sub_1A48D52A4();
  swift_beginAccess();
  v2 = *v1;
  sub_1A484F8E8();
}

void sub_1A484F8E8()
{
  if (qword_1EB158B10 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A484FA90(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 2) != 0)
    {
      sub_1A484F8E8();
    }
  }
}

void sub_1A484FC0C(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x2000800000000024) != 0)
  {
    sub_1A4851578();
  }

  if ((a1 & 0x800000000000) != 0)
  {
    sub_1A4852260();
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    [v1 showPlayer];
    if ((a1 & 0x800000000000) == 0)
    {
      return;
    }
  }

  else if ((a1 & 0x800000000000) == 0)
  {
    return;
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v12 = sub_1A524D474();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_1A4854834;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_287;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_1A524BF14();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1A4855E00(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v11, v6, v14);
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1A485046C(void *a1)
{
  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 detailsViewHeaderImplementation];

  if (v5 == 1)
  {
    v6 = [v2 viewModel];
    v7 = sub_1A47A5E88();

    (*(*v7 + 192))();
    if ((v8 & 1) == 0)
    {
      (*(*v7 + 240))();
      if ((v9 & 1) == 0)
      {
        [a1 contentInset];
        [a1 visibleOrigin];
        [a1 contentInset];
        sub_1A484F8E8();
      }
    }
  }

  else
  {
    if (!v5)
    {
      v11 = [v2 viewModel];
      sub_1A524D584();
    }

    type metadata accessor for PXDetailsViewHeaderImplementation(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4851158()
{
  v1 = [v0 viewModel];
  [v1 chromePlayButtonFloatingFraction];
  v3 = v2;

  if (v3 > 0.5)
  {
    v4 = [v0 viewModel];
    v5 = [v4 isInSelectMode];

    if ((v5 & 1) == 0)
    {
      v6 = [v0 viewModel];
      v7 = [v6 allowsPreviewHeader];

      if (v7)
      {
        sub_1A3C52C70(0, &qword_1EB126A10);
        v8 = [swift_getObjCClassFromMetadata() sharedInstance];
        v9 = [v8 enableSolariumDetailsView];

        if (v9)
        {
          sub_1A4851018();
        }
      }
    }
  }

  return 0;
}

void sub_1A4851278()
{
  v1 = v0;
  v2 = [v0 viewModel];
  v3 = PXPhotosViewModel.storyConfigurationProvider.getter();

  if (v3)
  {
    v4 = v3();
    sub_1A3C33378(v3);
    [v4 setAllowsVerticalGestures_];
    sub_1A3C52C70(0, &qword_1EB126B38);
    static PXStoryUIFactory.viewController(configuration:)(v4);
    v6 = v5;
    swift_unknownObjectRelease();
    v7 = objc_opt_self();
    v8 = sub_1A5242A64();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A4855604;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A4075CF4;
    aBlock[3] = &block_descriptor_51_2;
    v10 = _Block_copy(aBlock);

    v11 = [v7 _zoomWithOptions_sourceItemProvider_];
    _Block_release(v10);

    [v6 setPreferredTransition_];
    [v1 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v12 = sub_1A5246F24();
    __swift_project_value_buffer(v12, qword_1EB15B790);
    oslog = sub_1A5246F04();
    v13 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v13, "can't present memory player because storyConfigurationProvider hasn't been configured", v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }
  }
}

void sub_1A4851578()
{
  v1 = v0;
  v2 = [v0 barsController];
  v3 = [v0 viewModel];
  v4 = PXPhotosViewModel.additionalLeadingNavigationBarButtonItemsAfterExisting.getter();

  sub_1A4851A5C(v4);
  v6 = v5;

  if (v6)
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    v7 = sub_1A524CA14();
  }

  else
  {
    v7 = 0;
  }

  [v2 setAdditionalLeftBarButtonItemsAfterExisting_];

  v8 = [v1 barsController];
  v9 = [v1 viewModel];
  v10 = PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsBeforeExisting.getter();

  sub_1A4851A5C(v10);
  v12 = v11;

  if (v12)
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    v13 = sub_1A524CA14();
  }

  else
  {
    v13 = 0;
  }

  [v8 setAdditionalRightBarButtonItemsBeforeExisting_];

  v14 = [v1 barsController];
  v15 = [v1 viewModel];
  v16 = PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsAfterExisting.getter();

  sub_1A4851A5C(v16);

  v17 = sub_1A4851158();
  if (v17)
  {
    v18 = v17;
    v19 = [v1 viewModel];
    v20 = [v19 specManager];

    v21 = [v20 spec];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4851A5C(uint64_t a1)
{
  v3 = [v1 viewModel];
  v4 = [v3 allowedChromeItems];

  v5 = [v1 barsController];
  v6 = [v5 barButtonItemsController];

  if (a1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = a1 + 32 + 104 * v8;
        v10 = v8;
        while (1)
        {
          if (v10 >= v7)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return;
          }

          v11 = *v9;
          v12 = *(v9 + 32);
          v28[1] = *(v9 + 16);
          v28[2] = v12;
          v28[0] = v11;
          v13 = *(v9 + 48);
          v14 = *(v9 + 64);
          v15 = *(v9 + 80);
          v32 = *(v9 + 96);
          v30 = v14;
          v31 = v15;
          v29 = v13;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_17;
          }

          if (v4 & 0x800) != 0 || (v29)
          {
            break;
          }

          ++v10;
          v9 += 104;
          if (v8 == v7)
          {
            goto LABEL_14;
          }
        }

        v16 = *(v9 + 80);
        v25 = *(v9 + 64);
        v26 = v16;
        v27 = *(v9 + 96);
        v17 = *(v9 + 16);
        v21 = *v9;
        v22 = v17;
        v18 = *(v9 + 48);
        v23 = *(v9 + 32);
        v24 = v18;
        sub_1A42E6274(v28, v20);
        sub_1A42729C0(v6);
        v19 = sub_1A42E62D0(v28);
        MEMORY[0x1A5907D70](v19);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
      }

      while (v8 != v7);
    }

LABEL_14:
  }

  else
  {
  }
}

void *sub_1A4851FB0(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  type metadata accessor for LemonadeDetailsViewScrollDetentsProvider();
  v9 = v3;
  result = sub_1A4024230(&v9, a2);
  if (!result)
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v5 = sub_1A5246F24();
    __swift_project_value_buffer(v5, qword_1EB15B790);
    v6 = sub_1A5246F04();
    v7 = sub_1A524D244();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      swift_slowAlloc();
      *v8 = 136315138;
      LemonadeDetailsViewScrollDetentsProvider.DetentIdentifier.rawValue.getter();
      sub_1A3C2EF94();
    }

    return 0;
  }

  return result;
}

void sub_1A4852260()
{
  *(swift_allocObject() + 16) = 0;
  *(swift_allocObject() + 16) = 0;
  sub_1A484F8E8();
}

uint64_t sub_1A4852828()
{
  sub_1A3C2A534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3EA52F4(0, 0, v2, &unk_1A53697C8, v7);
}

uint64_t sub_1A48529C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4852A60, v6, v5);
}

uint64_t sub_1A4852A60()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A4852260();
  }

  **(v0 + 40) = 1;
  v1 = *(v0 + 8);

  return v1();
}

id sub_1A4852AFC()
{
  v1 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFractionAnimator;
  *&v0[v1] = [objc_allocWithZone(off_1E77217D0) initWithValue_];
  v2 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFractionAnimatorObservation];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_currentClosePermission] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_navigationDestination] = 0;
  v3 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_temporaryOneUpPresentationSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_playBarButtonItem] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFraction] = 0;
  v4 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_titleModel];
  v5 = _s14AssociatedDataCMa_11();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1A4852BF4()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_11();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4852FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v6[18] = sub_1A524CC54();
  v6[19] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[20] = v8;
  v6[21] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4853060, v8, v7);
}

void sub_1A4853060()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1A4853120;

    ;
  }
}

uint64_t sub_1A4853120(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A4853248, v4, v3);
}

uint64_t sub_1A4853248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  return MEMORY[0x1EEE6DFA0](sub_1A48532DC, 0, 0);
}

uint64_t sub_1A48532DC()
{
  *(v0 + 192) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4853368, v2, v1);
}

uint64_t sub_1A4853368()
{
  v1 = v0[23];

  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_1A5245DE4();
    }

    v3 = Strong;
    v0[6] = sub_1A4855840;
    v0[7] = v1;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_70_2;
    v4 = _Block_copy(v0 + 2);
    swift_retain_n();

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }

  MEMORY[0x1A590F020](v0 + 14);
  v5 = v0[20];
  v6 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1A48534B8, v5, v6);
}

uint64_t sub_1A48534B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_1A4853C04()
{
  if (qword_1EB1DB010 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBFC8;
}

void sub_1A4853DDC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB15B790);
    v4 = a2;
    oslog = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      swift_slowAlloc();
      *v6 = 136315138;
      v7 = a2;
      sub_1A421A438();
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }
}

id sub_1A4853F94()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeSearchOverlayView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = (&v37 - v7);
  v9 = [v0 viewModel];
  v10 = [v9 currentDataSource];

  v11 = [v10 container];
  if (!v11)
  {
    return 0;
  }

  swift_getObjectType();
  sub_1A3C52C70(0, &qword_1EB1265D0);
  v12 = dynamic_cast_existential_1_superclass_conditional(v11);
  if (!v12 || (v14 = v12, v15 = v13, ObjectType = swift_getObjectType(), (v17 = [v14 photoLibrary]) == 0))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v18 = v17;
  v19 = [v1 viewModel];
  v20 = PXPhotosViewModel.searchQueryFetcher.getter();

  v38 = v18;
  if (!v20)
  {
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
    v21 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
    v41 = ObjectType;
    v42 = v15;
    v40[0] = v14;
    swift_unknownObjectRetain();
    LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v21, v40);
  }

  v22 = MEMORY[0x1A590D320]();
  v23 = v20[4];
  if (v22)
  {
    v24 = v23;
    v25 = [v1 traitCollection];
    v26 = [v25 userInterfaceIdiom];

    sub_1A4405284();
    v39 = v26 == 0;
    v41 = ObjectType;
    v42 = v15;
    v40[0] = v14;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v28 = PhotosSearchHomeCoordinator<>.init(searchQueryManager:suggestedQueryFetcher:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(v24, v20, &v39, v40, 0, 0, sub_1A4855574, v27, 0, 0);
    v29 = (*(*v28 + 184))([v1 setSearchHomeCoordinator_]);

    swift_unknownObjectRelease();

    return v29;
  }

  else
  {
    v41 = ObjectType;
    v42 = v15;
    v40[0] = v14;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:container:onCancellation:)(v23, v20, v40, sub_1A48554D8, v31, v8);
    sub_1A4855C80(v8, v4, type metadata accessor for LemonadeSearchOverlayView);
    sub_1A48554E0();
    v33 = objc_allocWithZone(v32);
    v34 = sub_1A5249624();
    result = [v34 view];
    if (result)
    {
      v35 = result;
      v36 = [objc_opt_self() clearColor];
      [v35 setBackgroundColor_];
      swift_unknownObjectRelease();

      sub_1A4855930(v8, type metadata accessor for LemonadeSearchOverlayView);
      return v34;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A4854460()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBFC8 = result;
  return result;
}

uint64_t sub_1A48544CC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B790);
  __swift_project_value_buffer(v0, qword_1EB15B790);
  if (qword_1EB1DB010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EBFC8;
  return sub_1A5246F34();
}

unint64_t *sub_1A4854558(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1A48549BC(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_1A4854834()
{
  v1 = [*(v0 + 16) viewModel];
  [v1 allowsPreviewHeader];

  sub_1A4851C4C();
}

id sub_1A4854934(void *a1)
{
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v2 = 1.0;
  }

  return [a1 setValue_];
}

void sub_1A4854954()
{
  if (!qword_1EB120E68)
  {
    sub_1A3C34400(255, &qword_1EB120E70);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120E68);
    }
  }
}

void sub_1A48549BC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = [a4 customRegionOfInterestForAssetReference_];

    if (v17)
    {
    }

    else
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1A41E2424(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A4854B28(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24 = &v24;
    MEMORY[0x1EEE9AC00](v9);
    v27 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v28 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v3 = (v12 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      v7 = [v10 customRegionOfInterestForAssetReference_];

      if (v7)
      {
      }

      else
      {
        *&v27[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = sub_1A41E2424(v27, v25, v28, a1);

          return v20;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_1A4854558(v22, v7, a1, v23);

  MEMORY[0x1A590EEC0](v22, -1, -1);

  return v20;
}

uint64_t sub_1A4854DB0(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1A4854B28(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1A524E274();
  if (sub_1A524E304())
  {
    sub_1A3C52C70(0, &qword_1EB126B50);
    do
    {
      swift_dynamicCast();
      v4 = [v3 customRegionOfInterestForAssetReference_];
      if (v4)
      {
      }

      else
      {
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A41E1F64();
        }

        v2 = v16;
        result = sub_1A524DBE4();
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }
    }

    while (sub_1A524E304());
  }

  return v2;
}

uint64_t _sSo24PXPhotosUIViewControllerC12PhotosUICoreE29interactiveDismissShouldBegin2at2in8velocity4axis08proposedI5StateSbSo7CGPointV_So17UICoordinateSpace_pSo8CGVectorVSo6PXAxisVSbtF_0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1A3C2A534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  if ([v7 px_containsViewControllerModalInPresentation])
  {
    return 0;
  }

  if (a6 == 2)
  {
    v16 = [v7 viewModel];
    sub_1A524D5C4();
  }

  if (a6 == 1)
  {
    if (a4 >= 0.0)
    {
      v12 = [v7 contentController];
      v13 = [v12 gridView];

      if (!v13 || (v14 = [v13 scrollViewController], v13, v15 = objc_msgSend(v14, sel_isDecelerating), v14, (v15 & 1) == 0))
      {
        sub_1A4852D2C();
      }
    }

    return 0;
  }

  if (a6)
  {
    type metadata accessor for PXAxis(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v17 = sub_1A5246F24();
    __swift_project_value_buffer(v17, qword_1EB15B790);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "undefined interactive dismiss axis", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_1A48554E0()
{
  if (!qword_1EB143760)
  {
    type metadata accessor for LemonadeSearchOverlayView(255);
    sub_1A4855E00(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView);
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143760);
    }
  }
}

void sub_1A485557C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

uint64_t sub_1A4855604()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewModel];
    [v2 chromePlayButtonFloatingFraction];
    v4 = v3;

    if (v4 < 0.5)
    {
      v5 = [v1 viewModel];
      v6 = [v5 allowsPreviewHeader];

      if (v6)
      {
        v7 = [v1 viewModel];
        sub_1A524D504();
      }
    }

    sub_1A4851018();
  }

  return 0;
}

void sub_1A4855734()
{
  if (!qword_1EB143780)
  {
    sub_1A3C34400(255, &qword_1EB143788);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143780);
    }
  }
}

uint64_t sub_1A485579C()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4852FC0(v4, v5, v6, v0 + 32, v2, v3);
}

void sub_1A4855844()
{
  if (!qword_1EB120A80)
  {
    sub_1A3C52C70(255, &qword_1EB126B80);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120A80);
    }
  }
}

id sub_1A48558AC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  [a1 setHeaderTitle_];
  swift_beginAccess();
  return [a1 setHeaderSubtitle_];
}

uint64_t sub_1A4855930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4855990()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1A5242D54();
  v4 = v3;
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v7 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A4855E00(&unk_1EB1208B0, type metadata accessor for Key);
    v8 = sub_1A524C3D4();
    v9 = [v6 initWithString:v7 attributes:v8];

    v10 = *v1;
    *v1 = v9;
  }

  if (v4)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A4855E00(&unk_1EB1208B0, type metadata accessor for Key);
    v13 = sub_1A524C3D4();
    v14 = [v11 initWithString:v12 attributes:v13];

    v15 = *v2;
    *v2 = v14;
  }
}

uint64_t (*sub_1A4855B7C())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A4855BD8;
}

uint64_t sub_1A4855BE0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A48529C8(a1, v5, v6, v4);
}

uint64_t sub_1A4855C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4855CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1A4855DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4855E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4855E80@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v71 = sub_1A5244084();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5243624();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonFaceView(0);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A48564A4(0, &qword_1EB143790, sub_1A4856454);
  v68 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = sub_1A524B9A4();
  v74 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v62 - v23;
  sub_1A524B994();
  sub_1A52424B4();
  v24 = *(v76 + 16);

  v25 = type metadata accessor for FaceContentView();
  (*(v4 + 16))(v6, v1 + *(v25 + 28), v62);
  v26 = sub_1A3C5A374();
  sub_1A4308C80(v6, 0, v26 & 1, v10);
  sub_1A3F75AC0(v3);
  sub_1A485658C();
  v27 = v64;
  sub_1A524A784();
  (*(v69 + 8))(v3, v71);
  (*(v65 + 8))(v10, v27);
  sub_1A5243614();
  v29 = v28;
  sub_1A485647C(0);
  v31 = &v15[*(v30 + 36)];
  *v31 = v29;
  *(v31 + 4) = 0;
  v32 = sub_1A524A0C4();
  sub_1A5247BC4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1A4856454(0);
  v42 = &v15[*(v41 + 36)];
  *v42 = v32;
  *(v42 + 1) = v34;
  *(v42 + 2) = v36;
  *(v42 + 3) = v38;
  *(v42 + 4) = v40;
  v42[40] = 0;
  v43 = sub_1A524A054();
  sub_1A5247BC4();
  v44 = &v15[*(v68 + 44)];
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = v73;
  sub_1A524B994();
  v75 = 1;
  v50 = *(v74 + 16);
  v51 = v66;
  v52 = v63;
  v50(v66, v63, v16);
  v53 = v70;
  sub_1A3D23F48(v15, v70);
  v54 = v67;
  v50(v67, v49, v16);
  v55 = v75;
  v56 = v72;
  *v72 = 0;
  *(v56 + 8) = v55;
  v57 = v56;
  sub_1A485672C();
  v59 = v58;
  v50(&v57[*(v58 + 48)], v51, v16);
  sub_1A3D23F48(v53, &v57[*(v59 + 64)]);
  v50(&v57[*(v59 + 80)], v54, v16);
  v60 = *(v74 + 8);
  v60(v73, v16);
  sub_1A3D23FD0(v15);
  v60(v52, v16);
  v60(v54, v16);
  sub_1A3D23FD0(v53);
  return (v60)(v51, v16);
}

void sub_1A48564A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4856508()
{
  if (!qword_1EB1437A8)
  {
    type metadata accessor for PersonFaceView(255);
    sub_1A485658C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1437A8);
    }
  }
}

unint64_t sub_1A485658C()
{
  result = qword_1EB125BC8;
  if (!qword_1EB125BC8)
  {
    type metadata accessor for PersonFaceView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BC8);
  }

  return result;
}

uint64_t type metadata accessor for FaceContentView()
{
  result = qword_1EB16E200;
  if (!qword_1EB16E200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4856630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_1A53697F0;
  v3 = type metadata accessor for FaceContentView();
  v4 = *(v3 + 28);
  v5 = *MEMORY[0x1E69C2530];
  v6 = sub_1A5243624();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 32);
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B86C(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A485672C()
{
  if (!qword_1EB1437B0)
  {
    sub_1A524B9A4();
    sub_1A48564A4(255, &qword_1EB143790, sub_1A4856454);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1437B0);
    }
  }
}

void sub_1A4856820()
{
  sub_1A3D7A9C4();
  if (v0 <= 0x3F)
  {
    sub_1A5243624();
    if (v1 <= 0x3F)
    {
      sub_1A3C6B86C(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A48568FC()
{
  result = qword_1EB1437B8;
  if (!qword_1EB1437B8)
  {
    sub_1A3C6B86C(255, &unk_1EB1437C0, sub_1A485672C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1437B8);
  }

  return result;
}

id sub_1A4856994(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_hostIdentifier] = a1;
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets] = a2;
  v6 = objc_allocWithZone(off_1E77214E0);
  swift_unknownObjectRetain();
  v7 = [v6 init];
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_transientAssetCollection] = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id OneUpSharePlayDataSource.asset(atItemIndexPath:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];

  return v1;
}

id OneUpSharePlayDataSource.object(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A52403B4() == a3)
  {
    if (sub_1A52403B4() == a2)
    {
LABEL_13:
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000030, 0x80000001A53EE930);
      v8 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v8);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v9 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v9);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v10 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v10);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v11 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v11);

      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    if (!a2)
    {

      return swift_unknownObjectRetain();
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [*(v3 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];

  return v7;
}

id OneUpSharePlayDataSource.assetReference(atItemIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [*(v4 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v10 = [objc_allocWithZone(off_1E7721490) initWithSectionObject:0 itemObject:v9 subitemObject:0 indexPath:v12];
  swift_unknownObjectRelease();
  return v10;
}

uint64_t OneUpSharePlayDataSource.indexPath(for:hintIndexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets);
  if (([v5 respondsToSelector_] & 1) != 0 && (v6 = objc_msgSend(v5, sel_indexOfObject_, a1), v6 != sub_1A52403B4()))
  {
    MEMORY[0x1A58FC8D0](v6, 0);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1A5241574();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

void *OneUpSharePlayDataSource.indexPath(for:)(void *a1)
{
  sub_1A4859428(0, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_1A5241574();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v23 - v12;
  [a1 indexPath];
  v14 = v24;
  if (v14 == [v1 identifier])
  {
    [a1 indexPath];
    return v24;
  }

  else
  {
    [a1 indexPath];
    v16 = v26;
    [a1 indexPath];
    MEMORY[0x1A58FC8D0](v16, v25);
    v17 = [a1 asset];
    v18 = *&v1[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets];
    if (([v18 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v18, sel_indexOfObject_, v17), v19 != sub_1A52403B4()))
    {
      MEMORY[0x1A58FC8D0](v19, 0);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    (*(v7 + 56))(v5, v20, 1, v6);
    swift_unknownObjectRelease();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      [v1 identifier];
      sub_1A5241544();
      PXSimpleIndexPathFromIndexPath();
    }

    sub_1A48593CC(v5, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
    v21 = *(off_1E7722228 + 1);
    v23[0] = *off_1E7722228;
    v23[1] = v21;
    (*(v7 + 8))(v13, v6);
    return *&v23[0];
  }
}

void static OneUpSharePlayDataSource.indexPathForSharePlayAsset(withUUID:in:)(uint64_t a1, uint64_t a2, id a3)
{
  [a3 numberOfItemsInSection_];
  v6 = swift_allocObject();
  v7 = *(off_1E7722228 + 1);
  *(v6 + 16) = *off_1E7722228;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48579F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v28[0] = a1;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
  v15 = [objc_msgSend(v11 assetAtItemIndexPath_];
  if (v15)
  {
    v26 = a3;
    v27 = a4;
    v16 = a5;
    v17 = v15;
    v18 = sub_1A524C674();
    v20 = v19;

    if (v18 == v12 && v20 == v13)
    {

      v24 = v26;
      v23 = v27;
    }

    else
    {
      v22 = sub_1A524EAB4();

      v24 = v26;
      v23 = v27;
      if ((v22 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v24;
    v14[5] = v23;
    *v16 = 1;
  }

  return swift_unknownObjectRelease();
}

id OneUpSharePlayDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpSharePlayDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4857C60()
{
  v1 = [v0 dataSource];
  type metadata accessor for OneUpSharePlayDataSource();
  v2 = swift_dynamicCastClass();

  if (v2)
  {
    v3 = [v0 dataSource];

    swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

void *OneUpSharePlayDataSourceManager.init(sessionCoordinator:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  sub_1A4859428(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_1EB143800] = 0;
  v1[qword_1EB143808] = 0;
  *&v1[qword_1EB1437F0] = a1;
  v10 = type metadata accessor for OneUpSharePlayDataSourceManager();
  v21.receiver = v1;
  v21.super_class = v10;

  v11 = objc_msgSendSuper2(&v21, sel_init);
  OneUpSharePlaySessionRecipientCoordinator.currentDataSourceMessage.getter();
  v12 = (*((*v3 & *v11) + 0xB8))(v9);
  [v11 setDataSource:v12 changeDetails:0];

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v15 = sub_1A524CC44();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = v14;

  v18 = sub_1A3D4D930(0, 0, v6, &unk_1A53698A8, v16);
  v19 = sub_1A3EE1368(v18, MEMORY[0x1E69E7CA8] + 8);

  sub_1A4858C70(v9, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  *(v11 + qword_1EB143800) = v19;

  return v11;
}

uint64_t sub_1A4858088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1A4859428(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_1A4859428(0, &qword_1EB143828, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  v5[14] = swift_task_alloc();
  sub_1A4859530(0, &qword_1EB143830, MEMORY[0x1E695BF40]);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_1A485947C();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_1A4859510(0);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = sub_1A524CC54();
  v5[25] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[26] = v11;
  v5[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4858340, v11, v10);
}

uint64_t sub_1A4858340()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  OneUpSharePlaySessionRecipientCoordinator.dataSourceUpdateMessages.getter(v0 + 5);
  v0[6] = v0[5];
  sub_1A484B9D0();
  sub_1A48595CC(&qword_1EB1435D8, sub_1A484B9D0);
  sub_1A5247A74();

  v7 = sub_1A48595CC(&qword_1EB143850, sub_1A485947C);
  MEMORY[0x1A5902E10](v4, v7);
  (*(v1 + 8))(v2, v4);
  sub_1A52478B4();
  (*(v6 + 8))(v3, v5);
  swift_beginAccess();
  v0[28] = sub_1A524CC44();
  v8 = sub_1A48595CC(&qword_1EB143860, sub_1A4859510);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_1A4858570;
  v10 = v0[21];
  v11 = v0[14];

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

uint64_t sub_1A4858570()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A524CBC4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A4858B58;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A524CBC4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A4858708;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1A4858708()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1A485876C, v1, v2);
}

uint64_t sub_1A485876C()
{
  v1 = v0[14];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

LABEL_8:

    v14 = v0[1];

    return v14();
  }

  sub_1A42BF46C(v1, v0[13]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = v0[13];

    sub_1A4858C70(v13, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
    (*(v11 + 8))(v10, v12);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8))(v0[13]);
  if (*(v3 + qword_1EB143808))
  {
    v5 = v0[10];
    sub_1A4859360(v0[13] + *(v0[11] + 24), v5, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    v8 = v0[10];
    if (v7 == 1)
    {
      sub_1A48593CC(v0[10], &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
      v9 = 0;
    }

    else
    {
      v16 = [v3 dataSource];
      v17 = [v16 identifier];

      v18 = [v4 identifier];
      OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.convertToChangeDetails(remoteFromDataSourceIdentifier:remoteToDataSourceIdentifier:)(v19, v17, v18);
      v9 = v20;
      sub_1A4858C70(v8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = v0[13];
  *(v3 + qword_1EB143808) = 1;
  [v3 setDataSource:v4 changeDetails:v9];

  sub_1A4858C70(v21, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  v0[28] = sub_1A524CC44();
  v22 = sub_1A48595CC(&qword_1EB143860, sub_1A4859510);
  v23 = swift_task_alloc();
  v0[29] = v23;
  *v23 = v0;
  v23[1] = sub_1A4858570;
  v24 = v0[21];
  v25 = v0[14];

  return MEMORY[0x1EEE6D8C8](v25, v24, v22);
}

uint64_t sub_1A4858B58()
{
  *(v0 + 56) = *(v0 + 240);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1A4858BD8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4858088(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4858C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4858CD0(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v14 = a1;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    sub_1A4858F24();
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1A4858F70(v12, v8);
      sub_1A4858F70(v8, v5);
      sub_1A435ED78(v5);
      sub_1A4858C70(v8, type metadata accessor for OneUpSharePlayAssetMetadata);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v15;
  }

  if (!(v11 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4858F24()
{
  result = qword_1EB143810;
  if (!qword_1EB143810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB143810);
  }

  return result;
}

uint64_t sub_1A4858F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4858FD4()
{
  sub_1A3D435C4();
  sub_1A524CA14();
  PXDisplayAssetFetchResultFromArray();
}

id OneUpSharePlayDataSourceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpSharePlayDataSourceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48591A8()
{
}

uint64_t sub_1A4859360(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A4859428(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48593CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A4859428(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4859428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A485947C()
{
  if (!qword_1EB143838)
  {
    sub_1A484B9D0();
    sub_1A48595CC(&qword_1EB1435D8, sub_1A484B9D0);
    v0 = sub_1A5247804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143838);
    }
  }
}

void sub_1A4859530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A485947C();
    v7 = v6;
    v8 = sub_1A48595CC(&qword_1EB143850, sub_1A485947C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A48595CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LemonadeMemoriesEntryCardPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t LemonadeMemoriesEntryCardPositionManager.position.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v2 = sub_1A3C6A068();
  os_unfair_lock_lock((v2 + 20));
  *a1 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
}

uint64_t sub_1A4859778@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v2 = sub_1A3C6A068();
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  *a1 = v3;
  return result;
}

uint64_t sub_1A4859844()
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415C4();
}

uint64_t LemonadeMemoriesEntryCardPositionManager.position.setter()
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415C4();
}

uint64_t sub_1A48599E0(uint64_t a1, char a2)
{
  v3 = sub_1A3C6A068();
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a2 & 1;
  os_unfair_lock_unlock((v3 + 20));
}

void (*LemonadeMemoriesEntryCardPositionManager.position.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v5 = sub_1A3C6A068();
  os_unfair_lock_lock((v5 + 20));
  *(v4 + 32) = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));

  return sub_1A4859B84;
}

void sub_1A4859B84(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_1A52415C4();

  free(v1);
}

uint64_t sub_1A4859C54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  return sub_1A3C7CD54(v5 + v3, a1);
}

uint64_t sub_1A4859D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  return sub_1A3C7CD54(v3 + v4, a2);
}

uint64_t sub_1A4859DE4(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CD54(a1, v4);
  return sub_1A4859E70(v4);
}

uint64_t sub_1A4859E70(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  sub_1A3C7CD54(v1 + v6, v5);
  v7 = sub_1A485A468(v5, a1);
  sub_1A3C42ED0(v5, sub_1A3C41108);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
    sub_1A52415C4();
  }

  else
  {
    swift_beginAccess();
    sub_1A4280C7C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1A3C42ED0(a1, sub_1A3C41108);
}

uint64_t LemonadeMemoriesEntryCardPositionManager.__allocating_init(timeSlotProvider:impressionsCountProvider:lastUsedDateProvider:reloadTimeoutAfterAppWentToBackground:shouldDisableForIPad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7)
{
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v18 = sub_1A485A910(v17, a2, a3, a4, a5, a6, a7, v7, v15, v16);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t LemonadeMemoriesEntryCardPositionManager.init(timeSlotProvider:impressionsCountProvider:lastUsedDateProvider:reloadTimeoutAfterAppWentToBackground:shouldDisableForIPad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = sub_1A485A754(v21, a2, a3, a4, a5, a6, v8, v16, a7, v17);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v23;
}

uint64_t sub_1A485A26C()
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A5241134();
    v4 = sub_1A5241144();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
    sub_1A4859E70(v2);
  }

  return result;
}

uint64_t LemonadeMemoriesEntryCardPositionManager.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider);

  sub_1A3C42ED0(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate, sub_1A3C41108);
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A485A468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E99834();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_1A3C7CD54(a1, v14);
  sub_1A3C7CD54(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1A3C7CD54(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1A3C6A020(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A3C42ED0(v14, sub_1A3C41108);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A3C42ED0(v14, sub_1A3E99834);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A3C42ED0(v14, sub_1A3C41108);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A485A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v28[3] = a8;
  v28[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  *(a7 + 16) = 0;
  v20 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_logger;
  v21 = sub_1A3C4A780();
  v22 = sub_1A5246F24();
  (*(*(v22 - 8) + 16))(a7 + v20, v21, v22);
  v23 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  v24 = sub_1A5241144();
  (*(*(v24 - 8) + 56))(a7 + v23, 1, 1, v24);
  sub_1A5241604();
  sub_1A3C341C8(v28, a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider);
  v25 = (a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_impressionsCountProvider);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_lastUsedDateProvider);
  *v26 = a4;
  v26[1] = a5;
  *(a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_reloadTimeoutAfterAppWentToBackground) = a9;
  *(a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_isDisabledForIPad) = a6;

  sub_1A3C507D4();
  __swift_destroy_boxed_opaque_existential_0(v28);
  return a7;
}

uint64_t sub_1A485A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v17 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a1, a9);
  return sub_1A485A754(v19, a2, a3, a4, a5, v23, v20, a9, a7, a10);
}

unint64_t sub_1A485AA50()
{
  result = qword_1EB143868;
  if (!qword_1EB143868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143868);
  }

  return result;
}

uint64_t sub_1A485AB04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  sub_1A4280C7C(v1, v2 + v3);
  return swift_endAccess();
}

void *sub_1A485AB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    result = sub_1A45DF914();
    v4 = *result;
    v5 = result[1];
    v6 = *(result + 16);
    *(a2 + 24) = &type metadata for PhotosCollectionStaticColorGradeModel;
    *(a2 + 32) = &off_1F1718A50;
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v7;
    *(a2 + 24) = type metadata accessor for PHMemoryColorGradeModel();
    *(a2 + 32) = &off_1F17293C8;
    if (qword_1EB17E4A0 != -1)
    {
      swift_once();
    }

    result = [qword_1EB17E4A8 objectForKey_];
    if (result)
    {
      *a2 = result;
    }

    else
    {
      v9 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1A485AEF0(v8);
      result = [qword_1EB17E4A8 setObject:v9 forKey:v8];
      *a2 = v9;
    }
  }

  return result;
}

uint64_t type metadata accessor for PHMemoryColorGradeModel()
{
  result = qword_1EB185608;
  if (!qword_1EB185608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A485AD1C()
{
  if (*(v0 + 8) || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    v1 = sub_1A45DF914();
    v2 = *v1;
    v3 = v1[1];
    v4 = &type metadata for PhotosCollectionStaticColorGradeModel;
    v5 = &off_1F1718A50;
    v6 = *(v1 + 16);
    v15 = &type metadata for PhotosCollectionStaticColorGradeModel;
    v16 = &off_1F1718A50;
    LOBYTE(v13[0]) = v2;
    v13[1] = v3;
    v14 = v6;
  }

  else
  {
    v8 = v7;
    v4 = type metadata accessor for PHMemoryColorGradeModel();
    v15 = v4;
    v16 = &off_1F17293C8;
    if (qword_1EB17E4A0 != -1)
    {
      swift_once();
    }

    v9 = [qword_1EB17E4A8 objectForKey_];
    if (v9)
    {
      v13[0] = v9;
    }

    else
    {
      v10 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1A485AEF0(v8);
      [qword_1EB17E4A8 setObject:v10 forKey:v8];
      v13[0] = v10;
    }

    v5 = &off_1F17293C8;
  }

  __swift_project_boxed_opaque_existential_1(v13, v4);
  v11 = (v5[2])();
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v11;
}

id sub_1A485AEB4()
{
  result = [objc_opt_self() weakToWeakObjectsMapTable];
  qword_1EB17E4A8 = result;
  return result;
}

id sub_1A485AEF0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  sub_1A5241604();
  *(v2 + 40) = a1;
  v4 = a1;
  v5 = [v4 storyColorGradeKind];
  if ((*(v2 + 32) & 1) != 0 || *(v2 + 24) != v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[0] = v2;
    sub_1A485B674();
    sub_1A52415C4();
  }

  else
  {
    *(v2 + 32) = 0;
  }

  result = [v4 photoLibrary];
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_weakInit();

    PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A485B6E0, v9, v10);

    swift_beginAccess();
    sub_1A3C6F55C(v10, v2 + 48);
    swift_endAccess();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A485B0E8(uint64_t result, char a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = result;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A485B674();
  sub_1A52415C4();
}

uint64_t sub_1A485B1EC()
{
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A485B260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  v5 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  return result;
}

void sub_1A485B314()
{
  v1 = v0;
  sub_1A4805AE8();
  v2 = sub_1A524DC34();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectAfterChanges];

    if (v4)
    {
      v5 = [v4 storyColorGradeKind];
      swift_getKeyPath();
      sub_1A485B674();
      sub_1A52415D4();

      if ((*(v1 + 32) & 1) != 0 || v5 != *(v1 + 24))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1A52415C4();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1A485B490()
{
  sub_1A416523C(v0 + 48);
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_2060C365CACF8C7B1973E4BB84E1891323PHMemoryColorGradeModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A485B544()
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

uint64_t sub_1A485B600()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  return *(v1 + 24);
}

unint64_t sub_1A485B674()
{
  result = qword_1EB185628;
  if (!qword_1EB185628)
  {
    type metadata accessor for PHMemoryColorGradeModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB185628);
  }

  return result;
}

void sub_1A485B6CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

uint64_t sub_1A485B6E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A485B314();
  }

  return result;
}

Swift::Void __swiftcall LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(CGSize _, UIEdgeInsets newSafeAreaInsets)
{
  v5 = v3;
  v6 = v2;
  right = newSafeAreaInsets.right;
  bottom = newSafeAreaInsets.bottom;
  left = newSafeAreaInsets.left;
  top = newSafeAreaInsets.top;
  height = _.height;
  width = _.width;
  v14 = (*(v3 + 24))() == _.width && v13 == height;
  if (!v14 || ((*(v5 + 48))(v6, v5) == top ? (v18 = v15 == left) : (v18 = 0), v18 ? (v19 = v16 == bottom) : (v19 = 0), v19 ? (v20 = v17 == right) : (v20 = 0), !v20))
  {
    (*(v5 + 32))(v6, v5, width, height);
    (*(v5 + 56))(v6, v5, top, left, bottom, right);
    v34 = v4;
    v21 = *(v5 + 16);
    v22 = *(v21 + 8);
    v23 = v22(v6, v21);
    v33 = v4;
    v24 = *(v21 + 16);
    v24(v6, v21);
    v26 = v23 - v25;
    v34 = v4;
    v24(v6, v21);
    sub_1A4187540(&v34, v26 - v27);
    v28 = v34;
    (*(v5 + 72))(&v33, v6, v5);
    sub_1A3F17D14();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v28;
      (*(v5 + 80))(&v34, v6, v5);
    }

    sub_1A3C649C4(&v34);
    v29 = v34;
    (*(v5 + 96))(&v33, v6, v5);
    sub_1A4188350();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v29;
      (*(v5 + 104))(&v34, v6, v5);
    }

    v34 = v4;
    v30 = v22(v6, v21);
    sub_1A4187A08(&v33, v30, v31);
    v32 = v33;
    LOBYTE(v34) = v33;
    (*(v5 + 120))(&v33, v6, v5);
    sub_1A41883A8();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v32;
      (*(v5 + 128))(&v34, v6, v5);
    }
  }
}

uint64_t LemonadeSpecsProviderView.init(model:presentationContext:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  *a5 = swift_getKeyPath();
  v10 = MEMORY[0x1E697DCB8];
  sub_1A485C108(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for LemonadeSpecsProviderView();
  v12 = v11[13];
  *(a5 + v12) = swift_getKeyPath();
  sub_1A485C108(0, &qword_1EB128A50, MEMORY[0x1E697E730], v10);
  swift_storeEnumTagMultiPayload();
  v13 = *(a4 - 8);
  v14 = (*(v13 + 16))(a5 + v11[14], a1, a4);
  *(a5 + v11[16]) = v9;
  a3(v14);
  return (*(v13 + 8))(a1, a4);
}

uint64_t sub_1A485BCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  sub_1A485C108(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A48607B0(v2, &v15 - v10, &qword_1EB128AA0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A485BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697E730];
  sub_1A485C108(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1A48607B0(v2 + *(a1 + 52), &v16 - v11, &qword_1EB128A50, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A52486A4();
    return (*(*(v13 - 8) + 32))(a2, v12, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1A485C108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LemonadeSpecsProviderView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v170 = a2;
  v4 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = (v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[3];
  sub_1A3EBB1B4();
  v171 = v6;
  v7 = sub_1A5248804();
  v133 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v132 = v126 - v8;
  v9 = MEMORY[0x1E6980A08];
  sub_1A48606A8(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  v134 = v7;
  v10 = sub_1A5248804();
  v136 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v135 = v126 - v11;
  v137 = v12;
  v13 = sub_1A5248804();
  v139 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v138 = v126 - v14;
  sub_1A48606A8(255, &qword_1EB127988, &type metadata for LemonadeCellSpec, v9);
  v140 = v13;
  v15 = sub_1A5248804();
  v142 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v141 = v126 - v16;
  v17 = MEMORY[0x1E6980A08];
  sub_1A485C108(255, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E6980A08]);
  v143 = v15;
  v18 = sub_1A5248804();
  v146 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v145 = v126 - v19;
  sub_1A48606A8(255, &qword_1EB127978, &type metadata for LemonadeStackSpecs, v9);
  v147 = v18;
  v20 = sub_1A5248804();
  v149 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v148 = v126 - v21;
  sub_1A48606A8(255, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass, v9);
  v150 = v20;
  v22 = sub_1A5248804();
  v152 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v151 = v126 - v23;
  sub_1A48606A8(255, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass, v9);
  v153 = v22;
  v24 = sub_1A5248804();
  v155 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v154 = v126 - v25;
  sub_1A48606A8(255, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation, v9);
  v156 = v24;
  v26 = sub_1A5248804();
  v158 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v157 = v126 - v27;
  sub_1A485C108(255, &qword_1EB127728, type metadata accessor for CGSize, v17);
  v159 = v26;
  v28 = sub_1A5248804();
  v161 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v160 = v126 - v29;
  sub_1A485C108(255, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets, v17);
  v162 = v28;
  v30 = sub_1A5248804();
  v166 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v163 = v126 - v31;
  sub_1A48606A8(255, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel, v9);
  v167 = v30;
  v169 = sub_1A5248804();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v165 = v126 - v34;
  v35 = sub_1A5246E54();
  v131 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485C108(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = v126 - v43;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1, WitnessTable);
  v46 = sub_1A5246E94();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v44, 1, v46);
  v172 = v2;
  if (v48 == 1)
  {
    v49 = a1;
    sub_1A48606F8(v44, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
  }

  else
  {
    v129 = v35;
    (*(v38 + 16))(v41, v2, a1);
    sub_1A5246E44();
    v50 = sub_1A5246E84();
    v128 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v51 = swift_slowAlloc();
      v126[1] = v51;
      *&v127 = COERCE_DOUBLE(swift_slowAlloc());
      v197 = *&v127;
      *v51 = 136446210;
      sub_1A524A694();
      v52 = *(v38 + 8);
      v126[0] = v37;
      v52(v41, a1);
      sub_1A3C2EF94();
    }

    (*(v131 + 8))(v37, v129);
    v49 = a1;
    (*(v38 + 8))(v41, a1);
    (*(v47 + 8))(v44, v46);
  }

  swift_getKeyPath();
  *&v197 = 2;
  LOBYTE(v198) = 0;
  v53 = v49[5];
  v54 = v132;
  sub_1A524A964();

  swift_getKeyPath();
  sub_1A485E980(v49);
  v56 = v55;
  v57 = v49[4];
  v131 = *(v57 + 24);
  v58 = v49[2];
  v130 = v49;
  v197 = (v131)(v58, v57);
  v198 = v56;
  v199 = v197;
  v200 = v56;
  v59 = sub_1A4860768(&qword_1EB1277A0, sub_1A3EBB1B4);
  v195 = v53;
  v196 = v59;
  v129 = MEMORY[0x1E697E858];
  v60 = v134;
  v61 = swift_getWitnessTable();
  v62 = v135;
  sub_1A524A964();

  (*(v133 + 8))(v54, v60);
  swift_getKeyPath();
  v63 = v172;
  v171 = v58;
  v134 = v57;
  v197 = (v131)(v58, v57);
  v198 = 0x4038000000000000;
  v199 = v197;
  v200 = 0x4038000000000000;
  v64 = sub_1A485D9D8(&qword_1EB1278A8, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  v193 = v61;
  v194 = v64;
  v65 = v137;
  v66 = swift_getWitnessTable();
  v67 = v138;
  sub_1A524A964();

  v68 = v62;
  v69 = v63;
  (*(v136 + 8))(v68, v65);
  swift_getKeyPath();
  v70 = v130;
  v197 = COERCE_DOUBLE(sub_1A485DA3C(v130));
  v191 = v66;
  v192 = v64;
  v71 = v140;
  v72 = swift_getWitnessTable();
  v73 = v141;
  sub_1A524A964();

  (*(v139 + 8))(v67, v71);
  swift_getKeyPath();
  v74 = v144;
  sub_1A485E758(v70, v144);
  v75 = sub_1A485D9D8(&qword_1EB127990, &qword_1EB127988, &type metadata for LemonadeCellSpec);
  v189 = v72;
  v190 = v75;
  v76 = v143;
  v77 = swift_getWitnessTable();
  v78 = v145;
  sub_1A524A964();

  sub_1A43A35CC(v74);
  (*(v142 + 8))(v73, v76);
  swift_getKeyPath();
  LOBYTE(v197) = *(v69 + *(v70 + 64));
  v201 = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v197, &v201))
  {
    sub_1A52416C4();
    sub_1A52416C4();
  }

  else
  {
    sub_1A52416C4();
    sub_1A3C7E8B0();
    v79 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v79 shelfSpacing];
  }

  sub_1A43F25C8();
  sub_1A43F25D0();
  v197 = PXDisplayCollectionDetailedCountsMake(v80);
  v198 = v81;
  v199 = v82;
  v200 = v83;
  v84 = sub_1A485E7E8(&qword_1EB127960, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec);
  v187 = v77;
  v188 = v84;
  v85 = v147;
  v86 = swift_getWitnessTable();
  v87 = v148;
  sub_1A524A964();

  (*(v146 + 8))(v78, v85);
  swift_getKeyPath();
  v88 = v134;
  v89 = v171;
  (*(v134 + 32))(&v197, v171, v134);
  v90 = sub_1A485D9D8(&qword_1EB127980, &qword_1EB127978, &type metadata for LemonadeStackSpecs);
  v185 = v86;
  v186 = v90;
  v91 = v150;
  v92 = swift_getWitnessTable();
  v93 = v151;
  sub_1A524A964();

  (*(v149 + 8))(v87, v91);
  swift_getKeyPath();
  (*(v88 + 40))(&v197, v89, v88);
  v94 = sub_1A485D9D8(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v183 = v92;
  v184 = v94;
  v95 = v153;
  v96 = swift_getWitnessTable();
  v97 = v154;
  sub_1A524A964();

  (*(v152 + 8))(v93, v95);
  swift_getKeyPath();
  (*(v88 + 48))(&v197, v171, v88);
  v201 = LOBYTE(v197);
  v98 = sub_1A485D9D8(&qword_1EB127940, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass);
  v181 = v96;
  v182 = v98;
  v99 = v156;
  v100 = swift_getWitnessTable();
  v101 = v157;
  sub_1A524A964();

  (*(v155 + 8))(v97, v99);
  swift_getKeyPath();
  v102 = v171;
  v197 = (*(v88 + 8))(v171, v88);
  v198 = v103;
  v104 = sub_1A485D9D8(&qword_1EB127918, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation);
  v179 = v100;
  v180 = v104;
  v105 = v159;
  v106 = swift_getWitnessTable();
  v107 = v160;
  sub_1A524A964();

  (*(v158 + 8))(v101, v105);
  swift_getKeyPath();
  v197 = (*(v88 + 16))(v102, v88);
  v198 = v108;
  v199 = v109;
  v200 = v110;
  v111 = sub_1A485E7E8(&qword_1EB127730, &qword_1EB127728, type metadata accessor for CGSize);
  v177 = v106;
  v178 = v111;
  v112 = v162;
  v113 = swift_getWitnessTable();
  v114 = v163;
  sub_1A524A964();

  (*(v161 + 8))(v107, v112);
  swift_getKeyPath();
  (*(v88 + 56))(&v197, v102, v88);
  v115 = sub_1A485E7E8(&unk_1EB1220B8, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets);
  v175 = v113;
  v176 = v115;
  v116 = v167;
  v117 = swift_getWitnessTable();
  v118 = v164;
  sub_1A524A964();

  (*(v166 + 8))(v114, v116);
  v119 = sub_1A485D9D8(&qword_1EB127970, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel);
  v173 = v117;
  v174 = v119;
  v120 = v169;
  swift_getWitnessTable();
  v121 = v168;
  v122 = *(v168 + 16);
  v123 = v165;
  v122(v165, v118, v120);
  v124 = *(v121 + 8);
  v124(v118, v120);
  v122(v170, v123, v120);
  return (v124)(v123, v120);
}

uint64_t sub_1A485D9D8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A48606A8(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A485DA3C(uint64_t a1)
{
  v78 = sub_1A52486A4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v77 - v5;
  v6 = sub_1A5243F74();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v84 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485C108(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v77 - v11;
  v13 = sub_1A5244084();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v77 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v77 - v35;
  v37 = *(a1 + 32);
  v38 = *(v37 + 64);
  v39 = *(a1 + 16);
  v82 = *(a1 + 56);
  v81 = v39;
  v83 = v37;
  v38(v34);
  v40 = *(v14 + 48);
  v41 = v40(v12, 1, v13);
  v97 = v1;
  if (v41 == 1)
  {
    sub_1A485F124(a1, v36);
    if (v40(v12, 1, v13) != 1)
    {
      sub_1A48606F8(v12, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
    }
  }

  else
  {
    (*(v14 + 32))(v36, v12, v13);
  }

  v42 = sub_1A40B1BF4();
  v43 = PXDisplayCollectionDetailedCountsMake(v42);
  v103 = v44;
  v45 = *(v14 + 16);
  v98 = v36;
  v45(v32, v36, v13, v43);
  sub_1A40B1FC8(v32, 0);
  v46 = v89;
  sub_1A485F124(a1, v89);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5243F14();
  }

  v87 = v14;
  (v45)(v32, v46, v13);
  sub_1A40B1FC8(v32, 1);
  v47 = v46;
  v48 = MEMORY[0x1E69C2210];
  if (sub_1A485E84C(a1, MEMORY[0x1E69C2210]))
  {
    v49 = v98;
  }

  else
  {
    v49 = v47;
  }

  v50 = v90;
  (v45)(v90, v49, v13);
  v51 = sub_1A485E84C(a1, v48);
  v52 = v92;
  if ((v51 & 1) == 0)
  {
    sub_1A5243F14();
    sub_1A5244064();
  }

  (v45)(v32, v50, v13);
  sub_1A40B1FC8(v32, 2);
  v53 = v50;
  v54 = v91;
  (v45)(v91, v53, v13);
  v55 = sub_1A485E84C(a1, MEMORY[0x1E69C2200]);
  v56 = v88;
  if (v55)
  {
    (*(v83 + 48))(&v101, v81);
    v100 = v101;
    v99 = 0;
    if (static LemonadeRootViewOrientation.== infix(_:_:)(&v100, &v99))
    {
      sub_1A5243F14();
      sub_1A5244064();
    }
  }

  (v45)(v32, v54, v13);
  sub_1A40B1FC8(v32, 3);
  v57 = v98;
  (v45)(v52, v98, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5243F14();
    sub_1A5241F54();
    sub_1A5244024();
  }

  (v45)(v32, v52, v13);
  sub_1A40B1FC8(v32, 9);
  v58 = v96;
  (v45)(v96, v57, v13);
  sub_1A5244004();
  sub_1A5243F14();
  sub_1A5241F54();
  sub_1A5244024();
  v59 = v97;
  v60 = sub_1A485E84C(a1, MEMORY[0x1E69C2210]);
  v61 = v87;
  if (v60)
  {
    sub_1A5243F34();
    sub_1A5244064();
    v62 = sub_1A524B2A4();
    v64 = v84;
    v63 = v85;
    *v84 = v62;
    (*(v63 + 104))(v64, *MEMORY[0x1E69C2938], v86);
    sub_1A5243F84();
    v105[0] = *(v59 + *(a1 + 64));
    v104 = 3;
    static LemonadePresentationContext.== infix(_:_:)(v105, &v104);
    sub_1A5243FD4();
  }

  else
  {
    (*(v83 + 32))(&v102, v81);
    v65 = v102;
    if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) != 0 || (v65 & 0xFE) != 2)
    {
      v58 = v96;
      sub_1A5243FB4();
    }

    else
    {
      sub_1A485BEE0(a1, v79);
      v66 = v77;
      v67 = v78;
      (*(v77 + 104))(v80, *MEMORY[0x1E697E6C8], v78);
      sub_1A4860768(&qword_1EB1288D0, MEMORY[0x1E697E730]);
      sub_1A524C534();
      v68 = *(v66 + 8);
      v68(v80, v67);
      v68(v79, v67);
      v58 = v96;
      sub_1A5243FB4();
    }

    v56 = v88;
    sub_1A5243F34();
    sub_1A5244064();
    v69 = sub_1A52442D4();
    v71 = v84;
    v70 = v85;
    *v84 = v69;
    (*(v70 + 104))(v71, *MEMORY[0x1E69C2938], v86);
    sub_1A5243F84();
  }

  sub_1A5243FE4();
  (v45)(v32, v58, v13);
  sub_1A40B1FC8(v32, 4);
  v72 = v93;
  sub_1A485F124(a1, v93);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244064();
    sub_1A5243F14();
    sub_1A5244004();
    sub_1A5243F34();
  }

  (v45)(v32, v72, v13);
  sub_1A40B1FC8(v32, 5);
  v73 = v94;
  (v45)(v94, v98, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244064();
    sub_1A5247B94();
    sub_1A5243FA4();
    sub_1A5243F14();
    sub_1A5244004();
    sub_1A5243F34();
  }

  (v45)(v32, v73, v13);
  sub_1A40B1FC8(v32, 6);
  (v45)(v56, v98, v13);
  if ((sub_1A485E84C(a1, MEMORY[0x1E69C2210]) & 1) == 0)
  {
    sub_1A5244004();
    sub_1A5244064();
    sub_1A5243F34();
    sub_1A5243F14();
    sub_1A5241F54();
    sub_1A5244024();
    sub_1A5243FE4();
    sub_1A5241F74();
    sub_1A5243F54();
  }

  (v45)(v32, v56, v13);
  sub_1A40B1FC8(v32, 7);
  v74 = v98;
  (v45)(v32, v98, v13);
  sub_1A40B1FC8(v32, 8);
  v75 = *(v61 + 8);
  v75(v56, v13);
  v75(v94, v13);
  v75(v93, v13);
  v75(v96, v13);
  v75(v92, v13);
  v75(v91, v13);
  v75(v90, v13);
  v75(v89, v13);
  v75(v74, v13);
  return v103;
}

uint64_t sub_1A485E758@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485BCA4(v6);
  sub_1A485EDD8(a1);
  return sub_1A43A1F98(v6, a2, v7, v8);
}

uint64_t sub_1A485E7E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A485C108(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A485E84C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1A485BCA4(&v12 - v8);
  (*(v4 + 104))(v6, *a2, v3);
  LOBYTE(a2) = sub_1A5242D04();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v9, v3);
  return a2 & 1;
}

void sub_1A485E980(uint64_t a1)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  LOBYTE(v20[0]) = *(v1 + *(a1 + 64));
  v21 = 4;
  if (static LemonadePresentationContext.== infix(_:_:)(v20, &v21))
  {
    sub_1A485BCA4(v12);
    (*(v4 + 104))(v9, *MEMORY[0x1E69C2200], v3);
    v13 = sub_1A5242D04();
    v14 = *(v4 + 8);
    v14(v9, v3);
    v14(v12, v3);
    if (v13)
    {
      (*(*(a1 + 32) + 48))(v20, *(a1 + 16));
      v21 = v20[0];
      v19 = 1;
      static LemonadeRootViewOrientation.== infix(_:_:)(&v21, &v19);
    }
  }

  else
  {
    sub_1A485BCA4(v6);
    v15 = (*(v4 + 88))(v6, v3);
    if (v15 == *MEMORY[0x1E69C2200] || (v15 != *MEMORY[0x1E69C21F8] ? (v16 = v15 == *MEMORY[0x1E69C21F0]) : (v16 = 1), v16))
    {
      (*(*(a1 + 32) + 32))(v20, *(a1 + 16));
      return;
    }

    if (v15 == *MEMORY[0x1E69C21E8] || v15 == *MEMORY[0x1E69C2208])
    {
      goto LABEL_19;
    }

    if (v15 == *MEMORY[0x1E69C2210])
    {
      return;
    }

    if (v15 == *MEMORY[0x1E69C21E0])
    {
LABEL_19:
      (*(*(a1 + 32) + 8))(*(a1 + 16));
    }

    else
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0x206E776F6E6B6E55, 0xEE00206D6F696469);
      sub_1A485BCA4(v12);
      sub_1A524E624();
      (*(v4 + 8))(v12, v3);
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

void sub_1A485EDD8(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485BCA4(v5);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69C2200] || v6 == *MEMORY[0x1E69C21F8])
  {
    if (shouldUseNewCollectionsLayout()())
    {
      sub_1A485E980(a1);
      (*(*(a1 + 32) + 32))(&v15, *(a1 + 16));
    }

    else
    {
      (*(*(a1 + 32) + 32))(&v15 + 1, *(a1 + 16));
    }
  }

  else if (v6 == *MEMORY[0x1E69C21F0])
  {
    if (shouldUseNewCollectionsLayout()())
    {
      sub_1A485E980(a1);
    }

    else
    {
      sub_1A485E980(a1);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      v10 = *(a1 + 16);
      v9(v10, v8);
      sub_1A485E980(a1);
      v9(v10, v8);
    }
  }

  else if (v6 != *MEMORY[0x1E69C21E8] && v6 != *MEMORY[0x1E69C2210])
  {
    sub_1A485E980(a1);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v13 = *(a1 + 16);
    v12(v13, v11);
    sub_1A485E980(a1);
    v12(v13, v11);
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A485F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A5244084();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BYTE2(v15) = *(v2 + *(a1 + 64));
  BYTE1(v15) = 3;
  static LemonadePresentationContext.== infix(_:_:)(&v15 + 2, &v15 + 1);
  sub_1A5243EF4();
  sub_1A485BCA4(v8);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69C2210])
  {
    (*(*(a1 + 32) + 32))(&v15, *(a1 + 16));
    if ((v15 & 0xFE) == 2)
    {
      sub_1A5243EF4();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      return (*(v10 + 32))(a2, v12, v9);
    }
  }

  else
  {
    (*(v10 + 32))(a2, v12, v9);
    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1A485F39C(void (*a1)(void))
{
  a1();
  sub_1A5249244();
  return v2;
}

double sub_1A485F408@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1A5249244();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void (*EnvironmentValues.lemonadeHomeViewLayoutMargins.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1A485FAE8();
  sub_1A5249244();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1A485F5D8;
}

uint64_t sub_1A485F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A45C5D20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.lemonadeCollectionPickerLayoutMargins.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1A485FA94();
  sub_1A5249244();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1A485F6E0;
}

void sub_1A485F6EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_1A5249254();

  free(v1);
}

uint64_t EnvironmentValues.lemonadeSheetSizeOverride.getter()
{
  sub_1A485FB3C();
  sub_1A5249244();
  return v1;
}

void (*EnvironmentValues.lemonadeSheetSizeOverride.modify(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1A485FB3C();
  sub_1A5249244();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_1A485F860;
}

void sub_1A485F860(_OWORD **a1)
{
  v2 = *(*a1 + 16);
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[40] = v2;
  sub_1A5249254();

  free(v1);
}

uint64_t sub_1A485F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3EBA740();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.lemonadeSheetIsSwiftUI.getter()
{
  sub_1A485FB90();
  sub_1A5249244();
  return v1;
}

uint64_t (*EnvironmentValues.lemonadeSheetIsSwiftUI.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1A485FB90();
  sub_1A5249244();
  return sub_1A485F9F8;
}

uint64_t sub_1A485FA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4365A30();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A485FA94()
{
  result = qword_1EB178300[0];
  if (!qword_1EB178300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB178300);
  }

  return result;
}

unint64_t sub_1A485FAE8()
{
  result = qword_1EB17C018[0];
  if (!qword_1EB17C018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17C018);
  }

  return result;
}

unint64_t sub_1A485FB3C()
{
  result = qword_1EB17F150[0];
  if (!qword_1EB17F150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17F150);
  }

  return result;
}

unint64_t sub_1A485FB90()
{
  result = qword_1EB1DB0D8[0];
  if (!qword_1EB1DB0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DB0D8);
  }

  return result;
}

void sub_1A485FDF4()
{
  sub_1A485C108(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A485C108(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A485FF18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5242D14() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A52486A4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(a3 + 24);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  v22 = v9 + v16 + 1;
  v23 = *(*(*(a3 + 16) - 8) + 64) + v17;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = *(*(v10 - 8) + 64) + ((v23 + ((v22 + (v21 & ~v20)) & ~v16)) & ~v17) + 1;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v19 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 < 2)
    {
LABEL_37:
      if (v18 > 0xFE)
      {
        v33 = (v22 + ((a1 + v21) & ~v20)) & ~v16;
        if (v12 == v19)
        {
          v34 = *(v11 + 48);

          return v34(v33);
        }

        else
        {
          v35 = *(v13 + 48);
          v36 = (v23 + v33) & ~v17;

          return v35(v36, v14, v10);
        }
      }

      else
      {
        v32 = *(a1 + v7);
        if (v32 >= 2)
        {
          return (v32 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_37;
  }

LABEL_24:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v19 + (v31 | v29) + 1;
}

void sub_1A4860244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5242D14() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A52486A4() - 8);
  v11 = *(*(a4 + 16) - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v11 + 84);
  v15 = *(a4 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v10 + 80);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v14 <= v17)
  {
    v22 = *(v16 + 84);
  }

  else
  {
    v22 = *(v11 + 84);
  }

  if (v22 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v22;
  }

  v24 = v9 + 1;
  v25 = v18 & 0xF8 | 7;
  v26 = v9 + 1 + v25;
  v27 = v12 + v19 + 1;
  v28 = *(v16 + 64) + ((v20 + v21 + ((v27 + (v26 & ~v25)) & ~v19)) & ~v21) + 1;
  if (a3 <= v23)
  {
    v29 = 0;
  }

  else if (v28 <= 3)
  {
    v32 = ((a3 - v23 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v32))
    {
      v29 = 4;
    }

    else
    {
      if (v32 < 0x100)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      if (v32 >= 2)
      {
        v29 = v33;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 1;
  }

  if (v23 < a2)
  {
    v30 = ~v23 + a2;
    if (v28 < 4)
    {
      v31 = (v30 >> (8 * v28)) + 1;
      if (*(v16 + 64) + ((v20 + v21 + ((v27 + (v26 & ~v25)) & ~v19)) & ~v21) != -1)
      {
        v34 = v30 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v29 > 1)
            {
LABEL_68:
              if (v29 == 2)
              {
                *&a1[v28] = v31;
              }

              else
              {
                *&a1[v28] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v29 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v29)
    {
      a1[v28] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v28] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v29)
  {
    goto LABEL_39;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v22 > 0xFE)
  {
    v35 = (v27 + (&a1[v26] & ~v25)) & ~v19;
    if (v14 == v23)
    {
      v36 = *(v13 + 56);

      v36(v35, a2);
    }

    else
    {
      v40 = *(v16 + 56);
      v41 = (v20 + v21 + v35) & ~v21;

      v40(v41, a2, v17, v15);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v24 <= 3)
    {
      v37 = ~(-1 << (8 * v24));
    }

    else
    {
      v37 = -1;
    }

    if (v9 != -1)
    {
      v38 = v37 & (a2 - 255);
      if (v24 <= 3)
      {
        v39 = v9 + 1;
      }

      else
      {
        v39 = 4;
      }

      bzero(a1, v24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          *a1 = v38;
          a1[2] = BYTE2(v38);
        }

        else
        {
          *a1 = v38;
        }
      }

      else if (v39 == 1)
      {
        *a1 = v38;
      }

      else
      {
        *a1 = v38;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_1A48606A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A48606F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A485C108(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4860768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48607B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A485C108(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4860888@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DBFC0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(v1 + *(v10 + 24), v9, sub_1A45DBFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249FB4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A4860A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(v1 + *(v10 + 28), v9, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  sub_1A4860834(0);
  sub_1A524B694();
  *(a6 + 8) = v27;
  v12 = type metadata accessor for LemonadePeopleNamingView(0);
  v13 = v12[6];
  *(a6 + v13) = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *(a6 + v14) = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v12[8];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a6 + v12[9];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = a6 + v12[11];
  sub_1A524B694();
  *v17 = v27;
  *(v17 + 8) = *(&v27 + 1);
  v18 = (a6 + v12[12]);
  sub_1A4434588(0);
  sub_1A524B694();
  *v18 = v27;
  v19 = a6 + v12[13];
  *v19 = sub_1A5247C34() & 1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  *(a6 + v12[15]) = 0x4049000000000000;
  *a6 = a1;
  v22 = a6 + v12[10];
  v23 = a1;
  sub_1A524B694();
  *v22 = v27;
  *(v22 + 16) = v28;
  v24 = (a6 + v12[14]);
  type metadata accessor for PeopleNamingItem();
  v25 = a2;
  sub_1A524B694();

  *v24 = v27;
  *(a6 + v12[16]) = a3;
  v26 = (a6 + v12[17]);
  *v26 = a4;
  v26[1] = a5;
}

void LemonadePeopleNamingView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadePeopleNamingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v14 = v1;
  sub_1A48612EC();
  sub_1A48613C0();
  v7 = v6;
  sub_1A4862BE4();
  v15 = v7;
  v16 = v8;
  v17 = sub_1A4863094();
  v18 = sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4);
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A486B468(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadePeopleNamingView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1A486AD2C(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4864C8C(0, &qword_1EB143B30, sub_1A4864CF0);
  v12 = (a1 + *(v11 + 36));
  *v12 = sub_1A4864C88;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t sub_1A4861130(uint64_t a1)
{
  sub_1A48613C0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A486A8D8(0, &qword_1EB143BE0, sub_1A48614E8);
  sub_1A4863144(a1, &v5[*(v6 + 44)]);
  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  v8 = sub_1A524B284();
  v9 = sub_1A524A064();
  v10 = &v5[*(v3 + 36)];
  *v10 = v8;
  v10[8] = v9;
  v13 = a1;
  sub_1A4862BE4();
  sub_1A4863094();
  sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4);
  sub_1A524B0E4();
  return sub_1A486A720(v5, sub_1A48613C0);
}

void sub_1A48612EC()
{
  if (!qword_1EB143880)
  {
    sub_1A48613C0();
    sub_1A4862BE4();
    sub_1A4863094();
    sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143880);
    }
  }
}

void sub_1A48613C0()
{
  if (!qword_1EB143888)
  {
    sub_1A4861454();
    sub_1A486B210(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143888);
    }
  }
}

void sub_1A4861454()
{
  if (!qword_1EB143890)
  {
    sub_1A48614E8();
    sub_1A486B694(&unk_1EB143AA8, sub_1A48614E8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143890);
    }
  }
}

void sub_1A48614E8()
{
  if (!qword_1EB143898)
  {
    sub_1A486AF7C(255, &qword_1EB1438A0, sub_1A4861570, sub_1A486234C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143898);
    }
  }
}

void sub_1A4861570()
{
  if (!qword_1EB1438A8)
  {
    sub_1A486162C();
    sub_1A48616B0(255);
    sub_1A486229C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1438A8);
    }
  }
}

void sub_1A486162C()
{
  if (!qword_1EB1438B0)
  {
    sub_1A48616B0(255);
    sub_1A486229C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1438B0);
    }
  }
}

void sub_1A48616D8()
{
  if (!qword_1EB1438C0)
  {
    sub_1A4861788();
    sub_1A486B694(&qword_1EB1439C0, sub_1A4861788);
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438C0);
    }
  }
}

void sub_1A4861788()
{
  if (!qword_1EB1438C8)
  {
    sub_1A486181C();
    sub_1A486B694(&qword_1EB1439B8, sub_1A486181C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438C8);
    }
  }
}

void sub_1A486181C()
{
  if (!qword_1EB1438D0)
  {
    sub_1A48619C0(255, &qword_1EB1438D8, sub_1A48618A4, sub_1A486214C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438D0);
    }
  }
}

void sub_1A48618A4()
{
  if (!qword_1EB1438E0)
  {
    sub_1A4861938();
    sub_1A486B694(&qword_1EB143990, sub_1A4861938);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438E0);
    }
  }
}

void sub_1A4861938()
{
  if (!qword_1EB1438E8)
  {
    sub_1A48619C0(255, &qword_1EB1438F0, sub_1A4861A44, sub_1A4861BE4);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438E8);
    }
  }
}

void sub_1A48619C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4861A44()
{
  if (!qword_1EB1438F8)
  {
    sub_1A4861AD8();
    sub_1A486B694(&qword_1EB143930, sub_1A4861AD8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1438F8);
    }
  }
}

void sub_1A4861AD8()
{
  if (!qword_1EB143900)
  {
    sub_1A486AF7C(255, &qword_1EB143908, sub_1A4861B60, sub_1A4861B94);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143900);
    }
  }
}

void sub_1A4861BE4()
{
  if (!qword_1EB143938)
  {
    sub_1A4861CB4();
    sub_1A4861D4C();
    sub_1A4861F38();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143938);
    }
  }
}

void sub_1A4861CB4()
{
  if (!qword_1EB143940)
  {
    sub_1A4861D4C();
    sub_1A4861F38();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143940);
    }
  }
}

void sub_1A4861D4C()
{
  if (!qword_1EB143948)
  {
    sub_1A4864C8C(255, &qword_1EB143950, sub_1A4861E04);
    sub_1A4861EBC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143948);
    }
  }
}

void sub_1A4861E04()
{
  if (!qword_1EB143958)
  {
    sub_1A486B210(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A486A580(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143958);
    }
  }
}

void sub_1A4861EBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A486A580(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4861F38()
{
  result = qword_1EB143970;
  if (!qword_1EB143970)
  {
    sub_1A4861D4C();
    sub_1A4861FD8();
    sub_1A4869D30(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143970);
  }

  return result;
}

unint64_t sub_1A4861FD8()
{
  result = qword_1EB143978;
  if (!qword_1EB143978)
  {
    sub_1A4864C8C(255, &qword_1EB143950, sub_1A4861E04);
    sub_1A48620C0(&unk_1EB143980, sub_1A4861E04, sub_1A437B870, sub_1A3FF8FF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143978);
  }

  return result;
}

uint64_t sub_1A48620C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486219C()
{
  if (!qword_1EB1439A8)
  {
    sub_1A486B210(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A52439C4();
    sub_1A425618C();
    sub_1A486B694(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1439A8);
    }
  }
}

unint64_t sub_1A486229C()
{
  result = qword_1EB1439C8;
  if (!qword_1EB1439C8)
  {
    sub_1A48616B0(255);
    sub_1A486B694(&qword_1EB1439D0, sub_1A48616D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1439C8);
  }

  return result;
}

void sub_1A4862374()
{
  if (!qword_1EB1439E0)
  {
    sub_1A4862408();
    sub_1A486B694(&qword_1EB143AA0, sub_1A4862408);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1439E0);
    }
  }
}

void sub_1A4862408()
{
  if (!qword_1EB1439E8)
  {
    sub_1A486AF7C(255, &qword_1EB1439F0, sub_1A4862490, sub_1A4862A58);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1439E8);
    }
  }
}

void sub_1A4862490()
{
  if (!qword_1EB1439F8)
  {
    sub_1A4862D0C(255, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1439F8);
    }
  }
}

void sub_1A4862520()
{
  if (!qword_1EB143A08)
  {
    sub_1A48625A0();
    sub_1A4862824();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143A08);
    }
  }
}

void sub_1A48625A0()
{
  if (!qword_1EB143A10)
  {
    sub_1A486B210(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A486263C();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143A10);
    }
  }
}

void sub_1A486263C()
{
  if (!qword_1EB143A20)
  {
    sub_1A4434588(255);
    sub_1A4862704();
    sub_1A486B694(&qword_1EB143A38, sub_1A4434588);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143A20);
    }
  }
}

void sub_1A4862704()
{
  if (!qword_1EB143A28)
  {
    sub_1A4869B1C(255, &qword_1EB143A30, sub_1A48627D0, &type metadata for LemonadePeopleNamingRow, MEMORY[0x1E697D670]);
    sub_1A4861EBC(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143A28);
    }
  }
}

unint64_t sub_1A48627D0()
{
  result = qword_1EB1DB180;
  if (!qword_1EB1DB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DB180);
  }

  return result;
}

unint64_t sub_1A4862824()
{
  result = qword_1EB143A40;
  if (!qword_1EB143A40)
  {
    sub_1A48625A0();
    sub_1A4234634();
    sub_1A48628B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A40);
  }

  return result;
}

unint64_t sub_1A48628B0()
{
  result = qword_1EB143A50;
  if (!qword_1EB143A50)
  {
    sub_1A486263C();
    sub_1A4862928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A50);
  }

  return result;
}

unint64_t sub_1A4862928()
{
  result = qword_1EB143A58;
  if (!qword_1EB143A58)
  {
    sub_1A4862704();
    sub_1A48629C8();
    sub_1A4869D30(&qword_1EB127870, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A58);
  }

  return result;
}

unint64_t sub_1A48629C8()
{
  result = qword_1EB143A60;
  if (!qword_1EB143A60)
  {
    sub_1A4869B1C(255, &qword_1EB143A30, sub_1A48627D0, &type metadata for LemonadePeopleNamingRow, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143A60);
  }

  return result;
}

void sub_1A4862A58()
{
  if (!qword_1EB143A70)
  {
    sub_1A4862AEC(255);
    sub_1A486B694(&qword_1EB143A98, sub_1A4862AEC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143A70);
    }
  }
}

void sub_1A4862B20()
{
  if (!qword_1EB143A80)
  {
    v0 = MEMORY[0x1E697E830];
    sub_1A486B210(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A486B210(255, &qword_1EB143A90, &type metadata for LemonadePeopleNoResultsView, MEMORY[0x1E697E5C8], v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143A80);
    }
  }
}

void sub_1A4862BE4()
{
  if (!qword_1EB143AB8)
  {
    sub_1A486AF7C(255, &qword_1EB143AC0, sub_1A3F1E8D8, sub_1A4862C6C);
    v0 = sub_1A52495C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143AB8);
    }
  }
}

void sub_1A4862C6C()
{
  if (!qword_1EB143AC8)
  {
    sub_1A4862D0C(255, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
    sub_1A4862EA0();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143AC8);
    }
  }
}

void sub_1A4862D0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4862D80()
{
  if (!qword_1EB143AD8)
  {
    sub_1A4862E0C();
    sub_1A486A580(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143AD8);
    }
  }
}

void sub_1A4862E0C()
{
  if (!qword_1EB143AE0)
  {
    sub_1A3D6DF58();
    sub_1A4861EBC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143AE0);
    }
  }
}

unint64_t sub_1A4862EA0()
{
  result = qword_1EB143AF0;
  if (!qword_1EB143AF0)
  {
    sub_1A4862D0C(255, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
    sub_1A48620C0(&qword_1EB143AF8, sub_1A4862D80, sub_1A4862FC4, sub_1A3E72758);
    sub_1A486B694(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143AF0);
  }

  return result;
}

unint64_t sub_1A4862FC4()
{
  result = qword_1EB143B00;
  if (!qword_1EB143B00)
  {
    sub_1A4862E0C();
    sub_1A486B694(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A4869D30(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B00);
  }

  return result;
}

unint64_t sub_1A4863094()
{
  result = qword_1EB143B10;
  if (!qword_1EB143B10)
  {
    sub_1A48613C0();
    sub_1A486B694(&unk_1EB143B18, sub_1A4861454);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B10);
  }

  return result;
}

uint64_t sub_1A4863144@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  sub_1A486234C(0);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v60 - v6);
  sub_1A48616B0(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486162C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861570();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v66 = a1;
  sub_1A4861788();
  sub_1A486B694(&qword_1EB1439C0, sub_1A4861788);
  sub_1A524A2C4();
  *&v11[*(v9 + 36)] = 256;
  sub_1A524A0C4();
  v22 = sub_1A486229C();
  sub_1A524A984();
  sub_1A486A720(v11, sub_1A48616B0);
  *&v69 = v9;
  *(&v69 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  sub_1A524ADD4();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for LemonadePeopleNamingView(0);
  v24 = (a1 + v23[12]);
  v26 = *v24;
  v25 = v24[1];
  *&v69 = v26;
  *(&v69 + 1) = v25;
  sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v67 >> 62)
  {
    v29 = sub_1A524E2B4();

    if (v29)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      goto LABEL_3;
    }
  }

  v30 = a1 + v23[10];
  v31 = *v30;
  v32 = *(v30 + 16);
  v69 = v31;
  v70 = v32;
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v34 = v67;
  v33 = v68;

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = a1 + v23[11];
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v69) = v37;
    *(&v69 + 1) = v38;
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v28 = v67 ^ 1;
    goto LABEL_9;
  }

LABEL_3:
  v28 = 1;
LABEL_9:
  *v7 = sub_1A524BC74();
  v7[1] = v39;
  sub_1A486A8D8(0, &unk_1EB143BE8, sub_1A4862408);
  sub_1A4863D98(a1, v28 & 1, v7 + *(v40 + 44));
  sub_1A5247BA4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_1A524A064();
  v50 = v62;
  v51 = v7 + *(v63 + 36);
  *v51 = v49;
  *(v51 + 1) = v42;
  *(v51 + 2) = v44;
  *(v51 + 3) = v46;
  *(v51 + 4) = v48;
  v51[40] = 0;
  v52 = v60;
  v53 = v61;
  v54 = *(v60 + 16);
  v54(v50, v21, v61);
  v55 = v65;
  sub_1A486B468(v7, v65, sub_1A486234C);
  v56 = v64;
  v54(v64, v50, v53);
  sub_1A486AF7C(0, &qword_1EB1438A0, sub_1A4861570, sub_1A486234C);
  sub_1A486B468(v55, &v56[*(v57 + 48)], sub_1A486234C);
  sub_1A486B4D0(v7, sub_1A486234C);
  v58 = *(v52 + 8);
  v58(v21, v53);
  sub_1A486B4D0(v55, sub_1A486234C);
  return (v58)(v50, v53);
}

uint64_t sub_1A4863784@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadePeopleNamingView(0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A486B210(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  sub_1A4862174(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486214C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  sub_1A48618A4();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  *v27 = sub_1A5249314();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A486A8D8(0, &qword_1EB143C00, sub_1A4861938);
  v29 = &v27[*(v28 + 44)];
  v47 = a1;
  sub_1A4864DF4(a1, v29);
  sub_1A486B468(a1, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  sub_1A486AD2C(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LemonadePeopleNamingView);
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A425618C();
  sub_1A486B694(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
  v32 = v50;
  v33 = v53;
  sub_1A524A944();
  (*(v54 + 8))(v6, v33);
  (*(v51 + 8))(v12, v32);
  LOBYTE(v8) = sub_1A524A0B4();
  sub_1A5247BC4();
  v34 = &v16[*(v14 + 44)];
  *v34 = v8;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if ([*v47 detectionType] == 1)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  sub_1A3D25114(v16, v22);
  *&v22[*(v18 + 44)] = v39;
  v40 = v49;
  sub_1A486A6B8(v27, v49, sub_1A48618A4);
  v41 = v52;
  sub_1A486A6B8(v22, v52, sub_1A486214C);
  v42 = v55;
  sub_1A486A6B8(v40, v55, sub_1A48618A4);
  sub_1A48619C0(0, &qword_1EB1438D8, sub_1A48618A4, sub_1A486214C);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1A486A6B8(v41, v42 + *(v43 + 64), sub_1A486214C);
  sub_1A486A720(v22, sub_1A486214C);
  sub_1A486A720(v27, sub_1A48618A4);
  sub_1A486A720(v41, sub_1A486214C);
  return sub_1A486A720(v40, sub_1A48618A4);
}

uint64_t sub_1A4863D98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a3;
  sub_1A4862D0C(0, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  sub_1A4862490();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v50 = a1;
  sub_1A48625A0();
  sub_1A4862824();
  sub_1A524A2C4();
  v19 = &v8[*(v6 + 44)];
  v20 = *(sub_1A5248A14() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  sub_1A3E42C88();
  *&v19[*(v28 + 36)] = 256;
  sub_1A486A294(v8, v15);
  if (a2)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  *&v15[*(v10 + 44)] = v29;
  if (a2)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = v18;
  sub_1A486AD2C(v15, v18, sub_1A4862490);
  v48 = sub_1A5249574();
  v51 = 1;
  sub_1A524BC74();
  sub_1A52481F4();
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v47 = v60;
  v54 = 1;
  v53 = v56;
  v52 = v58;
  v37 = v51;
  v38 = v18;
  v39 = v12;
  sub_1A486B468(v38, v12, sub_1A4862490);
  v40 = v12;
  v41 = v49;
  sub_1A486B468(v40, v49, sub_1A4862490);
  sub_1A486AF7C(0, &qword_1EB1439F0, sub_1A4862490, sub_1A4862A58);
  v43 = v41 + *(v42 + 48);
  *v43 = v48;
  *(v43 + 8) = 0;
  *(v43 + 16) = v37;
  *(v43 + 24) = 0;
  *(v43 + 32) = 1;
  *(v43 + 40) = v32;
  *(v43 + 48) = v33;
  *(v43 + 56) = v34;
  *(v43 + 64) = v35;
  v44 = v47;
  *(v43 + 72) = v36;
  *(v43 + 80) = v44;
  *(v43 + 88) = v30;
  sub_1A486B4D0(v31, sub_1A4862490);
  return sub_1A486B4D0(v39, sub_1A4862490);
}

uint64_t sub_1A4864128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A486AF7C(0, &qword_1EB143AC0, sub_1A3F1E8D8, sub_1A4862C6C);
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  sub_1A4862C6C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3F1E8D8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249824();
  v19[8] = a1;
  sub_1A3D6DF58();
  sub_1A486B694(&qword_1EB121B60, sub_1A3D6DF58);
  sub_1A5247F24();
  sub_1A5249834();
  v19[4] = a1;
  sub_1A4862D0C(0, &qword_1EB143AD0, sub_1A4862D80, MEMORY[0x1E697CBE8]);
  sub_1A4862EA0();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A4864498(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A486B468(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A486AD2C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadePeopleNamingView);
  return MEMORY[0x1A5906A80](v7, sub_1A4869F3C, v9);
}

uint64_t sub_1A4864614(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B468(a1 + *(v13 + 28), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4864894(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4862D80();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5247B44();
  sub_1A486B468(a1, v6, type metadata accessor for LemonadePeopleNamingView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1A486AD2C(v6, v15 + v14, type metadata accessor for LemonadePeopleNamingView);
  MEMORY[0x1A5906A80](v9, sub_1A4869DAC, v15);
  sub_1A524A0F4();
  sub_1A524A164();
  v16 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A4862E0C();
  v19 = &v13[*(v18 + 36)];
  *v19 = KeyPath;
  v19[1] = v16;
  v20 = a1 + *(v3 + 52);
  v21 = *v20;
  v22 = *(v20 + 8);
  v27[16] = v21;
  v28 = v22;
  sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  LOBYTE(v3) = v27[15];
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v3 & 1) == 0;
  v25 = &v13[*(v11 + 36)];
  *v25 = v23;
  v25[1] = sub_1A3E07024;
  v25[2] = v24;
  sub_1A48620C0(&qword_1EB143AF8, sub_1A4862D80, sub_1A4862FC4, sub_1A3E72758);
  sub_1A524AA94();
  return sub_1A486B4D0(v13, sub_1A4862D80);
}

uint64_t sub_1A4864BEC()
{
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486B210(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

void sub_1A4864C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4864CF0()
{
  if (!qword_1EB143B38)
  {
    sub_1A5248464();
    sub_1A48612EC();
    sub_1A48613C0();
    sub_1A4862BE4();
    sub_1A4863094();
    sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143B38);
    }
  }
}

uint64_t sub_1A4864DF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4861BE4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1A4861A44();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v26 - v16);
  *v17 = sub_1A524BC34();
  v17[1] = v18;
  sub_1A486A8D8(0, &qword_1EB143C08, sub_1A4861AD8);
  sub_1A4865668(a1, v17 + *(v19 + 44));
  sub_1A48650AC(v11);
  sub_1A486B468(v17, v14, sub_1A4861A44);
  v27 = 1;
  v20 = *(v6 + 16);
  v20(v8, v11, v5);
  sub_1A486B468(v14, a2, sub_1A4861A44);
  sub_1A48619C0(0, &qword_1EB1438F0, sub_1A4861A44, sub_1A4861BE4);
  v22 = a2 + *(v21 + 48);
  v23 = v27;
  *v22 = 0;
  *(v22 + 8) = v23;
  v20((a2 + *(v21 + 64)), v8, v5);
  v24 = *(v6 + 8);
  v24(v11, v5);
  sub_1A486B4D0(v17, sub_1A4861A44);
  v24(v8, v5);
  return sub_1A486B4D0(v14, sub_1A4861A44);
}

uint64_t sub_1A48650AC@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v58 = *(v2 - 8);
  v57 = *(v58 + 64);
  v3 = v2 - 8;
  v53 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861D4C();
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861CB4();
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = *v1;
  v52 = v1;
  v13 = sub_1A524C634();
  v14 = [v11 locKeyForPersonOrPet:v12 key:v13];

  sub_1A524C674();
  v15 = sub_1A3C38BD4();
  v17 = v16;

  v18 = (v1 + *(v3 + 48));
  v19 = v18[1];
  v51 = *v18;
  v50 = v18[2];
  v66 = v51;
  v67 = v19;
  v68 = v50;
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v62 = v15;
  v63 = v17;
  sub_1A3D5F9DC();
  sub_1A524BDF4();
  KeyPath = swift_getKeyPath();
  sub_1A4861E04();
  v22 = &v7[*(v21 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  LOBYTE(KeyPath) = sub_1A524A064();
  sub_1A5247BC4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1A4864C8C(0, &qword_1EB143950, sub_1A4861E04);
  v32 = &v7[*(v31 + 36)];
  *v32 = KeyPath;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = sub_1A524B374();
  v34 = swift_getKeyPath();
  v35 = v54;
  v36 = &v7[*(v54 + 36)];
  *v36 = v34;
  v36[1] = v33;
  v62 = v51;
  v63 = v19;
  v64 = v50;
  sub_1A524B6A4();
  v62 = v66;
  v63 = v67;
  v37 = v52;
  v38 = v56;
  sub_1A486B468(v52, v56, type metadata accessor for LemonadePeopleNamingView);
  v39 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v40 = swift_allocObject();
  sub_1A486AD2C(v38, v40 + v39, type metadata accessor for LemonadePeopleNamingView);
  v41 = sub_1A4861F38();
  v42 = MEMORY[0x1E69E6180];
  v43 = v55;
  v44 = MEMORY[0x1E69E6158];
  sub_1A524B144();

  sub_1A486B4D0(v7, sub_1A4861D4C);
  v45 = v37 + *(v53 + 60);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v45) = *(v45 + 16);
  LOBYTE(v62) = v46;
  v63 = v47;
  LOBYTE(v64) = v45;
  sub_1A486B210(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C24();
  v62 = v35;
  v63 = v44;
  v64 = v41;
  v65 = v42;
  swift_getOpaqueTypeConformance2();
  v48 = v59;
  sub_1A524B074();

  return (*(v60 + 8))(v43, v48);
}

uint64_t sub_1A4865668@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_1A5242C64();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861BBC(0);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B94(0);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v74 - v12;
  v75 = sub_1A5243624();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PersonFaceView(0);
  v16 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4BD8();
  v76 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B60(0);
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v74 - v28;
  v29 = type metadata accessor for LemonadePeopleNamingView(0);
  v30 = a1;
  v31 = (a1 + v29[14]);
  v33 = *v31;
  v32 = v31[1];
  *&v91 = v33;
  *(&v91 + 1) = v32;
  sub_1A486B360(0, &unk_1EB143B70, type metadata accessor for PeopleNamingItem, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v34 = v90;
  if (sub_1A463BB64() || sub_1A463BC00())
  {

    (*(v13 + 104))(v15, *MEMORY[0x1E69C2530], v75);
    v35 = *(v30 + v29[16]);
    v36 = v35;
    v37 = sub_1A3C5A374();
    sub_1A4308C80(v15, v35, v37 & 1, v18);
    v38 = *(v30 + v29[15]);
    sub_1A524BC74();
    sub_1A52481F4();
    (*(v16 + 32))(v21, v18, v77);
    v39 = &v21[*(v76 + 36)];
    v40 = v92;
    *v39 = v91;
    *(v39 + 1) = v40;
    *(v39 + 2) = v93;
    v41 = v38 * 0.5;
    v42 = &v26[*(v74 + 36)];
    v43 = *(sub_1A5248A14() + 20);
    v44 = *MEMORY[0x1E697F468];
    v45 = sub_1A52494A4();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = v41;
    v42[1] = v41;
    sub_1A3E42C88();
    *(v42 + *(v46 + 36)) = 256;
    sub_1A486AD2C(v21, v26, sub_1A43D4BD8);
    v47 = v78;
    sub_1A486AD2C(v26, v78, sub_1A4861B60);
    v48 = v82;
    sub_1A5242C54();
    v49 = [*v30 px_localizedName];
    v50 = sub_1A524C674();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = 1.0;
    }

    v55 = v84;
    (*(v85 + 32))(v84, v48, v86);
    *&v55[*(v81 + 36)] = v54;
    v56 = sub_1A524A064();
    sub_1A5247BC4();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v55;
    v66 = v80;
    sub_1A486AD2C(v65, v80, sub_1A4861BBC);
    v67 = v66 + *(v83 + 36);
    *v67 = v56;
    *(v67 + 8) = v58;
    *(v67 + 16) = v60;
    *(v67 + 24) = v62;
    *(v67 + 32) = v64;
    *(v67 + 40) = 0;
    v68 = v87;
    sub_1A486AD2C(v66, v87, sub_1A4861B94);
    v69 = v79;
    sub_1A486B468(v47, v79, sub_1A4861B60);
    v70 = v88;
    sub_1A486B468(v68, v88, sub_1A4861B94);
    v71 = v89;
    sub_1A486B468(v69, v89, sub_1A4861B60);
    sub_1A486AF7C(0, &qword_1EB143908, sub_1A4861B60, sub_1A4861B94);
    sub_1A486B468(v70, v71 + *(v72 + 48), sub_1A4861B94);
    sub_1A486B4D0(v68, sub_1A4861B94);
    sub_1A486B4D0(v47, sub_1A4861B60);
    sub_1A486B4D0(v70, sub_1A4861B94);
    return sub_1A486B4D0(v69, sub_1A4861B60);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4865EA8()
{
  v1 = v0;
  v2 = sub_1A5249FB4();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadePeopleNamingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1A5248284();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  v12 = *v0;
  sub_1A4860A84(v10);
  sub_1A486B468(v0, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1A486AD2C(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadePeopleNamingView);
  v15 = type metadata accessor for LemonadePeopleNamingViewDelegate(0);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person] = v12;
  (*(v8 + 16))(&v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_dismissAction], v10, v7);
  v17 = &v16[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion];
  *v17 = sub_1A486A780;
  v17[1] = v14;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v12;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  (*(v8 + 8))(v10, v7);
  v21 = v1[2];
  v31 = v1[1];
  v20 = v31;
  v32 = v21;
  v30 = v19;
  sub_1A486B360(0, &qword_1EB143B48, sub_1A4860834, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v31 = v20;
  v32 = v21;
  sub_1A524B6A4();
  v22 = v30;
  [v11 setDelegate_];

  v23 = v26;
  sub_1A4860888(v26);
  v29 = v11;
  sub_1A5249FA4();

  return (*(v27 + 8))(v23, v28);
}

uint64_t sub_1A4866258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A486629C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleNamingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 56));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A486B468(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A486AD2C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4434588(0);
  sub_1A4862704();
  sub_1A486B694(&qword_1EB143A38, sub_1A4434588);
  sub_1A4862928();
  return sub_1A524B9B4();
}

void sub_1A48664A8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadePeopleNamingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1A486B468(a2, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadePeopleNamingView);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1A486AD2C(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for LemonadePeopleNamingView);
  v19 = v9;
  sub_1A48627D0();
  v12 = v9;
  sub_1A524B704();
  v13 = sub_1A524B374();
  KeyPath = swift_getKeyPath();
  v20 = v13;
  v15 = sub_1A5248204();
  sub_1A4862704();
  v17 = (a3 + *(v16 + 36));
  *v17 = KeyPath;
  v17[1] = v15;
}

void sub_1A486666C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249FB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_21;
  }

  v12 = sub_1A463BB64();
  if (v12)
  {
    v13 = v12;
    v14 = &selRef_initWithSelectedPerson_;
    goto LABEL_6;
  }

  v15 = sub_1A463BC00();
  if (!v15)
  {
LABEL_21:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v13 = v15;
  v14 = &selRef_initWithContact_;
LABEL_6:
  v36 = [objc_allocWithZone(PXPeopleNameSelection) *v14];

  if ([v36 person])
  {
    v34 = v9;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v32 = v8;
      v33 = v5;
      v18 = [v16 px_localIdentifier];
      v19 = sub_1A524C674();
      v21 = v20;

      v35 = v2;
      v22 = [*v2 localIdentifier];
      v23 = sub_1A524C674();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

LABEL_18:
        sub_1A4860A84(v7);
        sub_1A5248274();
        swift_unknownObjectRelease();

        (*(v33 + 8))(v7, v4);
        return;
      }

      v27 = sub_1A524EAB4();

      if (v27)
      {
        goto LABEL_18;
      }

      v28 = v35;
      v29 = sub_1A4860888(v11);
      MEMORY[0x1EEE9AC00](v29);
      *(&v31 - 4) = v17;
      *(&v31 - 3) = v28;
      v30 = v36;
      sub_1A5249FA4();

      swift_unknownObjectRelease();
      (*(v34 + 8))(v11, v32);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = v36;
  }
}

uint64_t sub_1A4866A70(uint64_t a1)
{
  v3 = sub_1A5248284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadePeopleNamingView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = *(v1 + *(v9 + 76));
  if (!v10)
  {
    v14[1] = v8;
    v14[3] = v3;
    v11 = *v1;
    v12 = [objc_opt_self() contextWithPerson:*v1 type:1];
    [v12 setNameSelection_];
    v14[2] = v11;
    if ([v11 type] == -1)
    {
      [v12 setWantsToBeAddedToPeopleAlbum_];
    }

    sub_1A3D75D6C();
    sub_1A3D75DEC();
    static PeopleLogging.peopleBootstrapCallerInfo(processName:file:function:line:)();
  }

  v10(a1);
  sub_1A3C33378(v10);
  sub_1A4860A84(v6);
  sub_1A5248274();
  return (*(v4 + 8))(v6, v3);
}

id sub_1A4866E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person] = a1;
  v10 = OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_dismissAction;
  v11 = sub_1A5248284();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a2, v11);
  v13 = &v9[OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a2, v11);
  return v14;
}

void sub_1A4866F28(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadePeopleNamingView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 1) == 0)
  {
    v8 = sub_1A524D244();
    v9 = *sub_1A3CAA3FC();
    sub_1A486B468(a3, v7, type metadata accessor for LemonadePeopleNamingView);
    if (os_log_type_enabled(v9, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      swift_slowAlloc();
      v13[1] = swift_slowAlloc();
      *v11 = 136315394;
      v12 = [*v7 localIdentifier];
      sub_1A524C674();

      sub_1A486B4D0(v7, type metadata accessor for LemonadePeopleNamingView);
      sub_1A3C2EF94();
    }

    sub_1A486B4D0(v7, type metadata accessor for LemonadePeopleNamingView);
  }
}

void sub_1A4867158(void *a1, void *a2, void **a3, void *a4)
{
  v8 = type metadata accessor for LemonadePeopleNamingView(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    v26 = v10;
    sub_1A486A580(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9DE0;
    v12 = *a3;
    *(v11 + 32) = a2;
    *(v11 + 40) = v12;
    v25 = type metadata accessor for PeopleMergeUtilities();
    v13 = a1;
    v14 = a2;
    v15 = v12;
    static PeopleMergeUtilities.bestTargetPerson(for:)(v11);
    v17 = v16;
    v18 = *(a3 + *(v8 + 68)) == 0;
    sub_1A486B468(a3, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleNamingView);
    v19 = (v26[80] + 16) & ~v26[80];
    v20 = swift_allocObject();
    sub_1A486AD2C(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LemonadePeopleNamingView);
    *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v21 = a4;
    sub_1A3D760C0(v11, v17, v18, sub_1A486A5D0, v20);
    v23 = v22;

    [v13 presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    sub_1A524D244();
    v26 = *sub_1A3CAA3FC();
    sub_1A5246DF4();
    v24 = v26;
  }
}

uint64_t sub_1A4867418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for LemonadePeopleNamingView(0) + 68));
  if (v8)
  {

    v8(a2);
    sub_1A3C33378(v8);
  }

  sub_1A4860A84(v7);
  sub_1A5248274();
  return (*(v5 + 8))(v7, v4);
}

void sub_1A486753C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v3;
  sub_1A48612EC();
  sub_1A48613C0();
  v9 = v8;
  sub_1A4862BE4();
  v11 = v10;
  v12 = sub_1A4863094();
  v13 = sub_1A486B694(&qword_1EB143B28, sub_1A4862BE4);
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A486B468(v3, v7, type metadata accessor for LemonadePeopleNamingView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1A486AD2C(v7, v15 + v14, type metadata accessor for LemonadePeopleNamingView);
  sub_1A4864C8C(0, &qword_1EB143B30, sub_1A4864CF0);
  v17 = (a2 + *(v16 + 36));
  *v17 = sub_1A486B6E0;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
}

uint64_t sub_1A4867754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v5 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = sub_1A5243624();
  v6 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PersonFaceView(0);
  v9 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4BD8();
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4861B60(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v50 - v22;
  v23 = sub_1A463BB64();
  v55 = a1;
  if (v23 || sub_1A463BC00())
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69C2530], v51);
    v24 = sub_1A3C5A374();
    sub_1A4308C80(v8, 0, v24 & 1, v11);
    sub_1A524BC74();
    sub_1A52481F4();
    (*(v9 + 32))(v14, v11, v52);
    v25 = &v14[*(v50 + 36)];
    v26 = v63;
    *v25 = v62;
    *(v25 + 1) = v26;
    *(v25 + 2) = v64;
    v27 = a3 * 0.5;
    v28 = &v20[*(v16 + 36)];
    v29 = *(sub_1A5248A14() + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1A52494A4();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = v27;
    v28[1] = v27;
    sub_1A3E42C88();
    *(v28 + *(v32 + 36)) = 256;
    sub_1A486AD2C(v14, v20, sub_1A43D4BD8);
    v33 = v53;
    sub_1A486AD2C(v20, v53, sub_1A4861B60);
    sub_1A3C52C70(0, &qword_1EB126A40);
    sub_1A5240714();
    v34 = sub_1A524D624();
    v52 = v34;
    sub_1A5240714();
    v35 = sub_1A524D624();
    v36 = sub_1A524BC74();
    v38 = v37;
    v39 = *(v55 + OBJC_IVAR___PXPeopleNamingItem_title);
    v40 = *(v55 + OBJC_IVAR___PXPeopleNamingItem_subtitle);
    v41 = v54;
    sub_1A486B468(v33, v54, sub_1A4861B60);
    v42 = v56;
    sub_1A486B468(v41, v56, sub_1A4861B60);
    sub_1A486AF7C(0, &qword_1EB143BA8, sub_1A4861B60, sub_1A4869A84);
    v44 = (v42 + *(v43 + 48));
    *&v57 = v34;
    *(&v57 + 1) = v35;
    *&v58 = 0x4028000000000000;
    *(&v58 + 1) = v39;
    *&v59 = v40;
    *(&v59 + 1) = 0x4028000000000000;
    *&v60 = v36;
    *(&v60 + 1) = v38;
    v45 = v40;
    v46 = v39;
    sub_1A486B468(&v57, v61, sub_1A4869A84);
    sub_1A486B4D0(v33, sub_1A4861B60);
    v47 = v58;
    *v44 = v57;
    v44[1] = v47;
    v48 = v60;
    v44[2] = v59;
    v44[3] = v48;
    v61[0] = v52;
    v61[1] = v35;
    v61[2] = 0x4028000000000000;
    v61[3] = v46;
    v61[4] = v40;
    v61[5] = 0x4028000000000000;
    v61[6] = v36;
    v61[7] = v38;
    sub_1A486B4D0(v61, sub_1A4869A84);
    return sub_1A486B4D0(v41, sub_1A4861B60);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4867DAC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1A5249314();
  sub_1A48682A4(a1, &v40);
  v52 = v44;
  v53[0] = *v45;
  *(v53 + 9) = *&v45[9];
  v48 = v40;
  v49 = v41;
  v51 = v43;
  v50 = v42;
  v54[0] = v40;
  v54[1] = v41;
  v54[2] = v42;
  v54[3] = v43;
  v54[4] = v44;
  v55[0] = *v45;
  *(v55 + 9) = *&v45[9];
  sub_1A486B468(&v48, &v37, sub_1A486B08C);
  sub_1A486B4D0(v54, sub_1A486B08C);
  *&v39[55] = v51;
  *&v39[71] = v52;
  *&v39[87] = v53[0];
  *&v39[96] = *(v53 + 9);
  *&v39[7] = v48;
  *&v39[23] = v49;
  *&v39[39] = v50;
  if (!a2)
  {
    goto LABEL_7;
  }

  v16 = v6;
  v7 = a3;
  v8 = a2;
  v9 = [v8 string];
  v10 = sub_1A524C674();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    a3 = v7;
    v6 = v16;
LABEL_7:
    sub_1A486B44C(&v40);
    goto LABEL_8;
  }

  v14 = sub_1A5249314();
  sub_1A4868490(v8, &v40);
  v25 = v44;
  *v26 = *v45;
  *&v26[9] = *&v45[9];
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  *v34 = *v45;
  *&v34[9] = *&v45[9];
  sub_1A486B468(&v21, &v37, sub_1A486B32C);
  sub_1A486B4D0(&v29, sub_1A486B32C);

  *&v17[55] = v24;
  *&v17[71] = v25;
  *&v17[87] = *v26;
  *&v17[7] = v21;
  *&v17[23] = v22;
  *&v17[39] = v23;
  v37 = v14;
  v38[0] = 1;
  *&v38[33] = *&v17[32];
  *&v38[17] = *&v17[16];
  *&v38[1] = *v17;
  *&v38[97] = *&v26[9];
  *&v38[81] = *&v17[80];
  *&v38[65] = *&v17[64];
  *&v38[49] = *&v17[48];
  PXDisplayCollectionDetailedCountsMake(&v37);
  *&v45[16] = *&v38[80];
  v46 = *&v38[96];
  v47 = v38[112];
  v42 = *&v38[16];
  v43 = *&v38[32];
  *v45 = *&v38[64];
  v44 = *&v38[48];
  v41 = *v38;
  v40 = v37;
  a3 = v7;
  v6 = v16;
LABEL_8:
  *&v34[16] = *&v45[16];
  v35 = v46;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  *v34 = *v45;
  v29 = v40;
  v30 = v41;
  v19[0] = v6;
  v19[1] = 0;
  v20[0] = 1;
  *&v20[97] = *&v39[96];
  *&v20[81] = *&v39[80];
  *&v20[65] = *&v39[64];
  *&v20[49] = *&v39[48];
  *&v20[33] = *&v39[32];
  *&v20[17] = *&v39[16];
  *&v20[1] = *v39;
  __src[2] = *&v20[16];
  __src[3] = *&v20[32];
  __src[0] = v6;
  __src[1] = *v20;
  __src[6] = *&v20[80];
  __src[7] = *&v20[96];
  __src[4] = *&v20[48];
  __src[5] = *&v20[64];
  *&v26[16] = *&v45[16];
  v27 = v46;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  *v26 = *v45;
  v21 = v40;
  v22 = v41;
  *(&__src[13] + 8) = *v45;
  *(&__src[14] + 8) = *&v45[16];
  *(&__src[15] + 8) = v46;
  *(&__src[9] + 8) = v41;
  v36 = v47;
  LOBYTE(__src[8]) = v39[111];
  v28 = v47;
  BYTE8(__src[16]) = v47;
  *(&__src[10] + 8) = v42;
  *(&__src[11] + 8) = v43;
  *(&__src[12] + 8) = v44;
  *(&__src[8] + 8) = v40;
  memcpy(a3, __src, 0x109uLL);
  sub_1A486B468(v19, &v37, sub_1A486AFF8);
  sub_1A486B468(&v21, &v37, sub_1A486B264);
  sub_1A486B4D0(&v29, sub_1A486B264);
  *&v38[49] = *&v39[48];
  *&v38[65] = *&v39[64];
  *&v38[81] = *&v39[80];
  *&v38[97] = *&v39[96];
  *&v38[1] = *v39;
  *&v38[17] = *&v39[16];
  v37 = v6;
  v38[0] = 1;
  *&v38[33] = *&v39[32];
  return sub_1A486B4D0(&v37, sub_1A486AFF8);
}

uint64_t sub_1A48682A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = a1;
  sub_1A5240834();
  v6 = sub_1A524A454();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1A524A054();
  sub_1A5247BC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1A524A0F4();
  sub_1A524A1A4();
  v22 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  *&v30 = v6;
  *(&v30 + 1) = v8;
  LOBYTE(v31) = v10 & 1;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v13;
  *(&v32 + 1) = v15;
  *&v33 = v17;
  *(&v33 + 1) = v19;
  *&v34 = v21;
  BYTE8(v34) = 0;
  *&v35 = KeyPath;
  *(&v35 + 1) = v22;
  v29[96] = 1;
  v24 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v24;
  v25 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v25;
  v26 = v31;
  *a2 = v30;
  *(a2 + 16) = v26;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v36[0] = v6;
  v36[1] = v8;
  v37 = v10 & 1;
  v38 = v12;
  v39 = v13;
  v40 = v15;
  v41 = v17;
  v42 = v19;
  v43 = v21;
  v44 = 0;
  v45 = KeyPath;
  v46 = v22;
  v27 = MEMORY[0x1E6980F50];
  sub_1A486B530(&v30, v29, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
  return sub_1A486B5A4(v36, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, v27);
}

uint64_t sub_1A4868490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = a1;
  sub_1A5240834();
  v6 = sub_1A524A454();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1A524A054();
  sub_1A5247BC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10 & 1;
  v23 = sub_1A524B334();
  KeyPath = swift_getKeyPath();
  *&v31 = v6;
  *(&v31 + 1) = v8;
  LOBYTE(v32) = v22;
  *(&v32 + 1) = v12;
  LOBYTE(v33) = v13;
  *(&v33 + 1) = v15;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  *&v35 = v21;
  BYTE8(v35) = 0;
  *&v36 = KeyPath;
  *(&v36 + 1) = v23;
  v30[96] = 1;
  v25 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v25;
  v26 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v26;
  v27 = v32;
  *a2 = v31;
  *(a2 + 16) = v27;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v37[0] = v6;
  v37[1] = v8;
  v38 = v22;
  v39 = v12;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  v44 = v21;
  v45 = 0;
  v46 = KeyPath;
  v47 = v23;
  v28 = MEMORY[0x1E69815C0];
  sub_1A486B530(&v31, v30, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
  return sub_1A486B5A4(v37, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, v28);
}

void *sub_1A4868660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = sub_1A5249574();
  v11 = 1;
  sub_1A4867DAC(v3, v4, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v13, __src, 0x109uLL);
  sub_1A486B468(__dst, v8, sub_1A486AEF4);
  sub_1A486B4D0(v13, sub_1A486AEF4);
  memcpy(&v10[7], __dst, 0x109uLL);
  v6 = v11;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0x110uLL);
}

uint64_t sub_1A4868758@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A486A8D8(0, &qword_1EB143B98, sub_1A48699FC);
  return sub_1A4867754(v3, a1 + *(v5 + 44), v4);
}

void sub_1A48687E8()
{
  sub_1A5249314();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  v0 = sub_1A524A464();
  v2 = v1;
  v4 = v3;
  sub_1A524B334();
  v5 = sub_1A524A364();
  v7 = v6;
  v9 = v8;

  sub_1A3E04DF4(v0, v2, v4 & 1);

  sub_1A3E75E68(v5, v7, v9 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4868CE4(void *a1)
{
  sub_1A524D224();
  v3 = sub_1A3CAA3FC();
  v4 = *v3;
  sub_1A5246DF4();

  v24 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_person);
  v6 = [v5 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 librarySpecificFetchOptions];

    [v8 setFetchLimit_];
    v9 = objc_opt_self();
    sub_1A486A580(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    v11 = [a1 identifier];
    v12 = sub_1A524C674();
    v13 = a1;
    v15 = v14;

    *(v10 + 32) = v12;
    *(v10 + 40) = v15;
    v16 = sub_1A524CA14();

    v17 = [v9 fetchPersonsForContactIdentifiers:v16 options:v8];

    v25 = [v17 firstObject];
    if (v25)
    {
      v18 = v25;
      v19 = sub_1A524D224();
      v20 = *v3;
      if (os_log_type_enabled(v20, v19))
      {
        log = v20;
        v21 = swift_slowAlloc();
        swift_slowAlloc();
        *v21 = 136315650;
        v22 = [v5 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      (*(v24 + OBJC_IVAR____TtC12PhotosUICore32LemonadePeopleNamingViewDelegate_completion))(v13);
    }

    sub_1A5248274();
  }

  else
  {
    __break(1u);
  }
}