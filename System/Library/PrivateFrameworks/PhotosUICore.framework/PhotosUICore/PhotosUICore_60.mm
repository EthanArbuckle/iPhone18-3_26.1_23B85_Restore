void sub_1A43B7ABC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A407620C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43B7D94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1A3C56708(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1A5240DE4();
    v12 = sub_1A5240E64();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1A5240E64();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (!a3)
  {
    v16 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v14 = a3;
  a3 = sub_1A5240EA4();
  v16 = v15;

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1A524C3E4();
LABEL_9:
  v11(v10, a3, v16, v17);

  sub_1A3DB556C(a3, v16);

  return sub_1A3C2C848(v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C56708);
}

void sub_1A43B7FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1A43BA81C(0, &qword_1EB139240, sub_1A43B9DEC);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = aBlock - v16;
  v18 = *(a2 + *(*a2 + 112));
  (*(v14 + 16))(aBlock - v16, a1, v13, v15);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  aBlock[4] = sub_1A43BA068;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B81C8;
  aBlock[3] = &block_descriptor_39_0;
  v21 = _Block_copy(aBlock);

  [v18 requestLivePhotoForAsset:a3 targetSize:0 contentMode:a4 options:v21 resultHandler:{a5, a6}];
  _Block_release(v21);
}

uint64_t sub_1A43B81C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = sub_1A524C3E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectRetain();
  v3(v5, v4);

  swift_unknownObjectRelease();
}

uint64_t sub_1A43B826C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v18 = a2;
  sub_1A43BA81C(0, &qword_1EB139238, sub_1A43B9E74);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A532F580;
  v25 = sub_1A43B9F0C;
  v26 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1A43B8500;
  v24 = &block_descriptor_27_3;
  v12 = _Block_copy(&aBlock);

  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v25 = sub_1A43B9F6C;
  v26 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1A4086B70;
  v24 = &block_descriptor_33_3;
  v15 = _Block_copy(&aBlock);

  [v18 requestDataForAssetResource:v19 options:v20 dataReceivedHandler:v12 completionHandler:v15];
  _Block_release(v15);
  _Block_release(v12);
}

uint64_t sub_1A43B8500(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1A5240EA4();
  v7 = v6;

  v3(v5, v7);
  sub_1A3C59280(v5, v7);
}

uint64_t sub_1A43B8588(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = *(*v1 + 112);
  v4 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry();
  v5 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v6 = sub_1A524CAB4();
  v7 = sub_1A3C3DFB4(v6, v5, v4, MEMORY[0x1E69E6168]);

  *(v1 + v3) = v7;
  v8 = *(*v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v8, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1A43B86DC(uint64_t a1)
{
  v3 = sub_1A52418E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1A43B8B34(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1A43B8B34(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v7, v3);
  *(v1 + 16) = v8;
  return result;
}

uint64_t sub_1A43B8848()
{
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A43B8914()
{
  sub_1A43B8848();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t OneUpSharePlaySessionHostJournal.deinit()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t OneUpSharePlaySessionHostJournal.__deallocating_deinit()
{
  OneUpSharePlaySessionHostJournal.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A43B8A78()
{
  sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption);
  sub_1A43B9BAC(&qword_1EB1392D8, type metadata accessor for CIImageRepresentationOption);

  return sub_1A524E7E4();
}

size_t sub_1A43B8B34(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C56708(0, &qword_1EB1391E0, MEMORY[0x1E696B228], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A52418E4() - 8);
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
  v15 = *(sub_1A52418E4() - 8);
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

uint64_t sub_1A43B8D30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  KeyPath = swift_getKeyPath();
  v18[1] = v1;
  v18[2] = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v18);

  if (v18[0] > 1)
  {
    if (v18[0] == 2)
    {
      return 35;
    }

    return 0;
  }

  if (v18[0] != 1)
  {
    return 0;
  }

  v4 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v4, &v14);

  v5 = v14;
  v6 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v6, &v14);

  v7 = v14;
  v8 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v8, &v14);

  v9 = 67;
  if (v7)
  {
    v9 = 9;
  }

  if (v5)
  {
    result = 17;
  }

  else
  {
    result = v9;
  }

  if ((v5 & 1) == 0 && (v7 & 1) == 0 && (v14 & 8) == 0)
  {
    v11 = swift_getKeyPath();
    v16 = v1;
    v17 = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(v11, &v14);

    if (v14)
    {
      v12 = 7;
    }

    else
    {
      v12 = 3;
    }

    v13 = swift_getKeyPath();
    v16 = v1;
    v17 = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(v13, &v14);

    if (v15)
    {
      return v12;
    }

    else if (v14 == 2)
    {
      return v12 | 8;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

char *sub_1A43B8EF4()
{
  v1 = v0;
  v2 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = *(v2 + 112);
  v10 = [objc_opt_self() defaultManager];
  v11 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *&v0[v9] = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 56);
  v14 = swift_unknownObjectRetain();
  v13(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = *(v4 + 16);
  v15(&v1[*(*v1 + 96)], v8, AssociatedTypeWitness);
  type metadata accessor for OneUpSharePlaySessionHostJournal.Library();
  v16 = v20;
  v15(v20, v8, AssociatedTypeWitness);
  v17 = swift_allocObject();
  sub_1A43B8588(v16);
  (*(v4 + 8))(v8, AssociatedTypeWitness);
  *&v1[*(*v1 + 104)] = v17;
  return v1;
}

uint64_t sub_1A43B9184()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A43ADAC8(v3, v4, v5, v2);
}

unint64_t sub_1A43B9234()
{
  result = qword_1EB139188;
  if (!qword_1EB139188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139188);
  }

  return result;
}

unint64_t sub_1A43B928C()
{
  result = qword_1EB139190;
  if (!qword_1EB139190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139190);
  }

  return result;
}

unint64_t sub_1A43B92E4()
{
  result = qword_1EB139198;
  if (!qword_1EB139198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139198);
  }

  return result;
}

unint64_t sub_1A43B933C()
{
  result = qword_1EB1391A0;
  if (!qword_1EB1391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1391A0);
  }

  return result;
}

uint64_t sub_1A43B93A0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43B9490()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A43B9564()
{
  sub_1A3C56708(319, &qword_1EB138B38, MEMORY[0x1E696B228], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A43B9644(uint64_t a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      v19 = *(v5 + 48);

      return v19((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
    }

    else
    {
      v18 = *(a1 + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A43B97E4(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((*(v6 + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);

        v17((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((*(v6 + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(v6 + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

void sub_1A43B99E0()
{
  if (!qword_1EB1391A8)
  {
    sub_1A3C56708(255, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1391A8);
    }
  }
}

uint64_t sub_1A43B9AB4(uint64_t a1, uint64_t a2)
{
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43B9B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43B9BAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A43B9BF4(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4)
{
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = v4 + ((*(*(v9 - 8) + 80) + 40) & ~*(*(v9 - 8) + 80));

  sub_1A43B6BA4(a1, a2, a3, a4, v10, v11, v12, v13);
}

uint64_t sub_1A43B9D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A43B9D6C()
{
  if (!qword_1EB1391F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1391F8);
    }
  }
}

void sub_1A43B9DEC()
{
  if (!qword_1EB139200)
  {
    sub_1A3C4B7E8(255, &qword_1EB139208, &qword_1EB139210);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139200);
    }
  }
}

void sub_1A43B9E74()
{
  if (!qword_1EB139218)
  {
    sub_1A3C56708(255, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139218);
    }
  }
}

uint64_t sub_1A43B9F0C()
{
  swift_beginAccess();
  sub_1A5240EC4();
  return swift_endAccess();
}

uint64_t sub_1A43B9F6C(void *a1)
{
  sub_1A43BA81C(0, &qword_1EB139238, sub_1A43B9E74);
  v4 = *(v1 + ((*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_beginAccess();
  sub_1A3D602A8(*(v4 + 16), *(v4 + 24));
  v5 = a1;
  return sub_1A524CBE4();
}

void sub_1A43BA068(uint64_t a1)
{
  sub_1A43BA81C(0, &qword_1EB139240, sub_1A43B9DEC);
  if (!a1 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1A524CBE4();
    return;
  }

  v3 = v2;
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 assetResourcesForLivePhoto_];
  sub_1A3C52C70(0, &qword_1EB139210);
  v6 = sub_1A524CA34();

  if (v6 >> 62)
  {
    v7 = sub_1A524E2B4();
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v6);
    if (v7 != 1)
    {
      MEMORY[0x1A59097F0](1, v6);
    }

    goto LABEL_12;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v6 + 32);
  if (v7 == 1)
  {
LABEL_12:

    sub_1A524CBE4();
    swift_unknownObjectRelease();
    return;
  }

  if (v8 != 1)
  {
    v10 = *(v6 + 40);
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

void sub_1A43BA2A4()
{
  if (!qword_1EB139248)
  {
    sub_1A3C4B7E8(255, &qword_1EB126620, &qword_1EB126630);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139248);
    }
  }
}

unint64_t sub_1A43BA350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A43BA6A8();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A43BA748(v4, &v11, sub_1A43BA7B0);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1A43BA494()
{
  if (!qword_1EB139260)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1A3C4EE18(255, &qword_1EB126038, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139260);
    }
  }
}

uint64_t objectdestroy_35Tm(unint64_t *a1, void (*a2)(uint64_t))
{
  sub_1A43BA81C(0, a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

void sub_1A43BA5D8(uint64_t a1, unint64_t a2)
{
  sub_1A43BA81C(0, &qword_1EB139270, sub_1A43BA494);
  sub_1A3DB506C(a1, a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43BA6A8()
{
  if (!qword_1EB139278)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139278);
    }
  }
}

uint64_t sub_1A43BA748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A43BA7B0()
{
  if (!qword_1EB139280)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139280);
    }
  }
}

void sub_1A43BA81C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CBF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A43BA880(void *a1, uint64_t a2)
{
  sub_1A43BA81C(0, &qword_1EB139288, sub_1A43BA2A4);
  if (!a2)
  {
    goto LABEL_8;
  }

  *&v15 = sub_1A524C674();
  *(&v15 + 1) = v4;
  sub_1A524E384();
  if (!*(a2 + 16) || (v5 = sub_1A3D5C0BC(&v12), (v6 & 1) == 0))
  {
    sub_1A3D5FAFC(&v12);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v5, &v15);
  sub_1A3D5FAFC(&v12);
  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_1A3C2C848(&v15, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v7 = swift_dynamicCast();
  v8 = v12;
  v9 = v13;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
  }

LABEL_10:
  v12 = a1;
  v13 = v8;
  v14 = v9;
  v10 = a1;
  return sub_1A524CBE4();
}

uint64_t sub_1A43BAA30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56708(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A43BAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  *(v7 + v14) = [objc_opt_self() systemWhiteColor];
  sub_1A43BAD80();
  sub_1A4112CF0(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1A43BAD80()
{
  result = qword_1EB126570;
  if (!qword_1EB126570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126570);
  }

  return result;
}

void *sub_1A43BAE80()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A43BAECC(void *a1)
{
  v2 = v1;
  sub_1A42DC564();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  swift_beginAccess();
  v11 = *(v2 + v10);
  *(v2 + v10) = a1;
  v12 = a1;

  sub_1A524DE54();
  v13 = sub_1A524DE34();
  if (!(*(*(v13 - 8) + 48))(v9, 1, v13))
  {
    v14 = *(v2 + v10);
    sub_1A524DD74();
  }

  sub_1A42DC5BC(v9, v6);
  sub_1A524DE64();

  return sub_1A4113CCC(v9);
}

void (*sub_1A43BB034(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1A42DC564();
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  v5[5] = v8;
  v5[6] = v9;
  swift_beginAccess();
  return sub_1A43BB11C;
}

void sub_1A43BB11C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[5];
  if (a2)
  {
    v5 = v3[4];
  }

  else
  {
    sub_1A524DE54();
    v6 = sub_1A524DE34();
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {
      v7 = *(v3[3] + v3[6]);
      sub_1A524DD74();
    }

    v5 = v3[4];
    v4 = v3[5];
    sub_1A42DC5BC(v4, v5);
    sub_1A524DE64();
    sub_1A4113CCC(v4);
  }

  free(v4);
  free(v5);

  free(v3);
}

id sub_1A43BB2E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingAccessoryButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A43BB368(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for LemonadePeopleMergingContentView();
  sub_1A40C61BC();
  v6 = a1;
  v5 = a2;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v5;
  sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadePeopleMergingContentView()
{
  result = qword_1EB1BD180;
  if (!qword_1EB1BD180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43BB4C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A43BCA6C(0, &qword_1EB125C30, sub_1A3DEF040, type metadata accessor for PhotoKitItem);
  v23 = 2;
  v4 = v3;
  sub_1A3C6C180(&v21);
  v19 = v21;
  v20 = v22;
  v5 = sub_1A42011B0();
  sub_1A3C6C18C(&v17);
  v15 = v17;
  v16 = v18;
  v6 = sub_1A3C5A374();
  v7 = sub_1A3C30368();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  v10 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v19, 0, v5, 0, 1, &v15, v6 & 1, &v23, v14, v7, v8 & 1, v9 & 1, v10 & 1, 0);
  sub_1A3DEF040();
  v11 = sub_1A3F6298C();
  PhotoKitItem.__allocating_init(value:options:metadata:)(v4, v14, v11);
  v14[0] = v12;
  sub_1A40C61BC();
  swift_allocObject();
  result = sub_1A5242994();
  *a1 = result;
  return result;
}

void sub_1A43BB648()
{
  if (!qword_1EB1392F0)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    sub_1A43BB904();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1392F0);
    }
  }
}

void sub_1A43BB6DC()
{
  if (!qword_1EB139300)
  {
    sub_1A43BB750();
    sub_1A43BB8E4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB139300);
    }
  }
}

void sub_1A43BB750()
{
  if (!qword_1EB139308)
  {
    sub_1A40C61BC();
    type metadata accessor for PersonFaceView(255);
    sub_1A43BB89C(&qword_1EB1317F0, sub_1A40C61BC);
    sub_1A43BB89C(&qword_1EB1317F8, sub_1A40C61BC);
    sub_1A43BB89C(&qword_1EB131800, sub_1A40C61BC);
    sub_1A43BB89C(&qword_1EB125BC8, type metadata accessor for PersonFaceView);
    v0 = sub_1A52424F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139308);
    }
  }
}

uint64_t sub_1A43BB89C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A43BB904()
{
  result = qword_1EB139318;
  if (!qword_1EB139318)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139318);
  }

  return result;
}

uint64_t sub_1A43BB98C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  sub_1A43BB8E4(0);
  v79 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = (v65 - v6);
  v7 = type metadata accessor for LemonadePeopleMergingContentView();
  v8 = *(v7 - 8);
  v77 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v9;
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43BCA6C(0, &qword_1EB124D70, MEMORY[0x1E69C2540], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v65 - v12;
  sub_1A43BB750();
  v82 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v81 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v78 = v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v85 = v65 - v21;
  sub_1A43BCA6C(0, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
  v76 = v22;
  v67 = a1;
  sub_1A5247C84();
  v65[1] = v88;
  v74 = *MEMORY[0x1E69C2538];
  v23 = v74;
  v24 = sub_1A5243624();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v73 = v25 + 104;
  v75 = v26;
  v26(v13, v23, v24);
  v72 = *(v25 + 56);
  v65[0] = v13;
  v72(v13, 0, 1, v24);
  v71 = type metadata accessor for LemonadePeopleMergingContentView;
  v66 = v10;
  sub_1A43BCD94(a1, v10, type metadata accessor for LemonadePeopleMergingContentView);
  v27 = *(v8 + 80);
  v28 = (v27 + 16) & ~v27;
  v68 = v28;
  v69 = v27;
  v29 = swift_allocObject();
  sub_1A43BCAD0(v10, v29 + v28);
  sub_1A40C61BC();
  v65[7] = v30;
  v65[6] = type metadata accessor for PersonFaceView(0);
  v65[5] = sub_1A43BB89C(&qword_1EB1317F0, sub_1A40C61BC);
  v65[4] = sub_1A43BB89C(&qword_1EB1317F8, sub_1A40C61BC);
  v65[3] = sub_1A43BB89C(&qword_1EB131800, sub_1A40C61BC);
  v65[2] = sub_1A43BB89C(&qword_1EB125BC8, type metadata accessor for PersonFaceView);
  sub_1A5242504();
  v31 = sub_1A524B544();
  v32 = sub_1A524A264();
  KeyPath = swift_getKeyPath();
  sub_1A428F4F4();
  v35 = v86;
  v36 = (v86 + *(v34 + 36));
  sub_1A43BCA6C(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x1E69816C0];
  v40 = sub_1A524B5B4();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  *v35 = v31;
  v35[1] = KeyPath;
  v35[2] = v32;
  LOBYTE(v32) = sub_1A524A054();
  sub_1A5247BC4();
  v41 = v35 + *(v79 + 44);
  *v41 = v32;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = v67;
  sub_1A5247C84();
  v47 = v65[0];
  v75(v65[0], v74, v24);
  v72(v47, 0, 1, v24);
  v48 = v66;
  sub_1A43BCD94(v46, v66, v71);
  v49 = v68;
  v50 = swift_allocObject();
  sub_1A43BCAD0(v48, v50 + v49);
  v51 = v78;
  sub_1A5242504();
  v52 = v80;
  v53 = *(v80 + 16);
  v54 = v87;
  v55 = v82;
  v53(v87, v85, v82);
  v56 = v35;
  v57 = v83;
  sub_1A43BCD94(v56, v83, sub_1A43BB8E4);
  v58 = v81;
  v59 = v55;
  v53(v81, v51, v55);
  v60 = v84;
  v53(v84, v54, v59);
  sub_1A43BB6DC();
  v62 = v61;
  sub_1A43BCD94(v57, &v60[*(v61 + 48)], sub_1A43BB8E4);
  v53(&v60[*(v62 + 64)], v58, v59);
  v63 = *(v52 + 8);
  v63(v51, v59);
  sub_1A43BCDFC(v86, sub_1A43BB8E4);
  v63(v85, v59);
  v63(v58, v59);
  sub_1A43BCDFC(v57, sub_1A43BB8E4);
  return (v63)(v87, v59);
}

void sub_1A43BC294()
{
  if (!qword_1EB139320)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139320);
    }
  }
}

void sub_1A43BC34C()
{
  if (!qword_1EB139338)
  {
    sub_1A43BB648();
    sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139338);
    }
  }
}

void sub_1A43BC400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A43BC478@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  (*(v9 + 104))(v7, *MEMORY[0x1E69C2538], v5);
  v10 = v8;
  v11 = sub_1A3C5A374();
  return sub_1A4308C80(v7, 0, v11 & 1, a2);
}

uint64_t sub_1A43BC568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  (*(v9 + 104))(v7, *MEMORY[0x1E69C2538], v5);
  v10 = v8;
  v11 = sub_1A3C5A374();
  return sub_1A4308C80(v7, 0, v11 & 1, a2);
}

void sub_1A43BC658(uint64_t a1@<X8>)
{
  sub_1A43BB648();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A43BC294();
  sub_1A43BB98C(v1, &v5[*(v6 + 44)]);
  sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648);
  sub_1A524A674();
  sub_1A43BCDFC(v5, sub_1A43BB648);
  v7 = sub_1A524A0C4();
  sub_1A5247BC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A43BC32C(0);
  v17 = a1 + *(v16 + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  v18 = sub_1A524A054();
  sub_1A5247BC4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A43BC400(0, &qword_1EB139340, sub_1A43BC32C);
  v28 = a1 + *(v27 + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
}

void sub_1A43BC83C()
{
  sub_1A3DEF040();
  if (v0 <= 0x3F)
  {
    sub_1A43BCA6C(319, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A43BC8F0()
{
  result = qword_1EB139350;
  if (!qword_1EB139350)
  {
    sub_1A43BC400(255, &qword_1EB139340, sub_1A43BC32C);
    sub_1A43BC98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139350);
  }

  return result;
}

unint64_t sub_1A43BC98C()
{
  result = qword_1EB139358;
  if (!qword_1EB139358)
  {
    sub_1A43BC32C(255);
    sub_1A43BB648();
    sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139358);
  }

  return result;
}

void sub_1A43BCA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43BCAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleMergingContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = (type metadata accessor for LemonadePeopleMergingContentView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[8];
  sub_1A43BCA6C(0, &qword_1EB139360, sub_1A40C61BC, MEMORY[0x1E6981E90]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v3, v4);
  sub_1A43BCA6C(0, &qword_1EB139368, sub_1A40C61BC, MEMORY[0x1E6981E98]);

  v6(v2 + v1[9], v5);

  return swift_deallocObject();
}

uint64_t sub_1A43BCD10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleMergingContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A43BCD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43BCDFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeICloudLinkGridConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A43BCEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A43BCF70()
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable();
  swift_unknownObjectRetain();
  sub_1A40740A4(v3);
  v4 = type metadata accessor for LemonadeDetailsContext();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  v6 = sub_1A40730A4;
  if (v5 == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = &v3[*(v4 + 20)];
    v7 = *v9;
    v8 = v9[1];
    sub_1A3C66EE8(*v9);
    v6 = type metadata accessor for LemonadeDetailsContext;
  }

  sub_1A43BD9E4(v3, v6);
  v10 = sub_1A43BD118(&v13, v7, v8);
  sub_1A3C33378(v7);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable()
{
  result = qword_1EB15C1B0;
  if (!qword_1EB15C1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A43BD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A43BD44C();
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3D8EF18;
    v10[3] = &block_descriptor_168;
    v6 = _Block_copy(v10);
  }

  else
  {
    v6 = 0;
  }

  [v5 setCustomAssetSelectionHandler_];
  _Block_release(v6);
  v7 = type metadata accessor for CMMViewControllerContainerViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator] = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController] = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmContext] = v5;
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1A43BD234@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = *(type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable() + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A43BCEE8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A43BD2D0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A43BD308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43BDC28(&unk_1EB139420);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A43BD388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43BDC28(&unk_1EB139420);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A43BD408()
{
  sub_1A43BDC28(&unk_1EB139420);
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A43BD44C()
{
  v1 = [v0 shareType];
  if (v1)
  {
    if (v1 != 1)
    {
      type metadata accessor for PXDisplayMomentShareType();
      result = sub_1A524EB44();
      __break(1u);
      return result;
    }

    [v0 acceptWithCompletionHandler_];
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [v0 contextForActivityType_];

  return v3;
}

id sub_1A43BD594(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v3 = sub_1A43BD118(&v6, a2, a3);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v4;
}

void sub_1A43BD668()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CMMViewControllerContainerViewController();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = [objc_allocWithZone(PXCMMWorkflowCoordinator) init];
  [v1 setDelegate_];
  v2 = [v1 workflowViewControllerWithContext_];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 px:1 setOneUpPresentationStyle:?];
  v4 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator] = v1;
  v5 = v1;

  v6 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController] = v3;
  v7 = v3;

  [v0 addChildViewController_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v9 addSubview_];

  v12 = [v7 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setBounds_];
  v24 = [v7 view];
  if (v24)
  {
    v25 = v24;
    [v24 setAutoresizingMask_];

    [v7 didMoveToParentViewController_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1A43BD954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CMMViewControllerContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43BD9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for PXDisplayMomentShareType()
{
  if (!qword_1EB139418)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB139418);
    }
  }
}

unint64_t sub_1A43BDA98()
{
  result = qword_1EB139388;
  if (!qword_1EB139388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139388);
  }

  return result;
}

void sub_1A43BDB58()
{
  sub_1A43BCEE8(319, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A43BDC28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43BDC6C(uint64_t a1, uint64_t a2)
{
  sub_1A40730A4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A43BDCD4()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD00000000000001CLL;
  }

  v1 = *v0;
  v2 = 0x6E756F4620746F4ELL;
  v3 = 0x2064696C61766E49;
  if (*v0 != 2)
  {
    v3 = 0xD00000000000003FLL;
  }

  if (!v1)
  {
    v2 = 0xD000000000000034;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A43BDD90(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6E756F4620746F4ELL;
    v3 = 0x2064696C61766E49;
    if (a1 != 2)
    {
      v3 = 0xD00000000000002DLL;
    }

    if (!a1)
    {
      v2 = 0xD000000000000078;
    }

    if (a1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = sub_1A524C634();
    v6 = PXLocalizedSharedCollectionsString(v5);

    v7 = sub_1A524C674();
    return v7;
  }
}

unint64_t sub_1A43BDEA0()
{
  result = qword_1EB139430;
  if (!qword_1EB139430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139430);
  }

  return result;
}

void *sub_1A43BDF1C(void *a1)
{
  v2 = swift_allocObject();
  v2[3] = 0x7465737341;
  v2[4] = 0xE500000000000000;
  [a1 fetchPropertySetsIfNeeded];
  v2[2] = a1;
  return v2;
}

id sub_1A43BDF84()
{
  sub_1A3C7D12C(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v95 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v95 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v95 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v95[2] = v95 - v20;
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = v95 - v23;
  v25 = *(v0 + 16);
  [v25 playbackVariation];
  v26 = PHAssetPlaybackVariationDebugDescription();
  v95[9] = v6;
  v95[8] = v3;
  v95[6] = v9;
  v95[5] = v18;
  v95[3] = v24;
  if (v26)
  {
    v27 = v26;
    *&v99 = sub_1A524C674();
    *(&v99 + 1) = v28;
  }

  else
  {
    *&v99 = 6369134;
    *(&v99 + 1) = 0xE300000000000000;
  }

  v29 = [v25 photosInfoPanelExtendedProperties];
  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v30 = *(type metadata accessor for DebugSection(0) - 8);
  v31 = *(v30 + 72);
  v95[11] = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v97 = swift_allocObject();
  v96 = xmmword_1A52FC9F0;
  *(v97 + 16) = xmmword_1A52FC9F0;
  sub_1A43BF70C();
  v33 = v32;
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v35 = *(v34 - 8);
  v103 = *(v35 + 72);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v95[13] = *(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A5336350;
  v95[12] = v37;
  v38 = v37 + v36;
  v39 = [v25 cloudIdentifier];
  v95[14] = v36;
  v95[7] = v12;
  v95[4] = v15;
  if (v39)
  {
    v40 = v39;
    v41 = sub_1A524C674();
    v43 = v42;

    v44 = MEMORY[0x1E69E6158];
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v44 = 0;
    v106 = 0;
  }

  *&v105 = v41;
  *(&v105 + 1) = v43;
  v107 = v44;
  v45 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4710, &v105, 0, 0, 0, v45 & 1, v38);
  v46 = [v25 localIdentifier];
  v47 = sub_1A524C674();
  v49 = v48;

  v107 = MEMORY[0x1E69E6158];
  *&v105 = v47;
  *(&v105 + 1) = v49;
  v50 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4730, &v105, 0, 0, 0, v50 & 1, v38 + v103);
  v51 = [v25 uuid];
  v102 = v25;
  if (v51)
  {
    v52 = v51;
    v53 = sub_1A524C674();
    v55 = v54;

    v56 = MEMORY[0x1E69E6158];
  }

  else
  {
    v53 = 0;
    v55 = 0;
    v56 = 0;
    v106 = 0;
  }

  *&v105 = v53;
  *(&v105 + 1) = v55;
  v57 = v103;
  v58 = 2 * v103;
  v107 = v56;
  v59 = sub_1A3C5A374();
  sub_1A492BBDC(1145656661, 0xE400000000000000, &v105, 0, 0, 0, v59 & 1, v38 + v58);
  v60 = [v102 title];
  v95[10] = v58;
  if (v60)
  {
    v61 = v60;
    v62 = sub_1A524C674();
    v64 = v63;

    v107 = MEMORY[0x1E69E6158];
    if (v64)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v107 = MEMORY[0x1E69E6158];
  }

  v64 = 0xE100000000000000;
  v62 = 45;
LABEL_15:
  *&v105 = v62;
  *(&v105 + 1) = v64;
  v65 = sub_1A3C5A374();
  sub_1A492BBDC(0x656C746954, 0xE500000000000000, &v105, 0, 0, 0, v65 & 1, v38 + 3 * v57);
  v66 = [v102 filename];
  v100 = v29;
  v101 = v38;
  v98 = v31;
  v95[15] = v33;
  if (v66)
  {
    v67 = v66;
    v68 = sub_1A524C674();
    v70 = v69;

    v107 = MEMORY[0x1E69E6158];
    if (!v70)
    {
      v70 = 0xE100000000000000;
      v68 = 45;
    }

    v71 = MEMORY[0x1E69E6158];
  }

  else
  {
    v71 = MEMORY[0x1E69E6158];
    v107 = MEMORY[0x1E69E6158];
    v70 = 0xE100000000000000;
    v68 = 45;
  }

  *&v105 = v68;
  *(&v105 + 1) = v70;
  v72 = sub_1A3C5A374();
  v73 = v101;
  sub_1A492BBDC(0x6D614E20656C6946, 0xE900000000000065, &v105, 0, 0, 0, v72 & 1, v101 + 4 * v57);
  v74 = v102;
  v104 = [v102 pixelWidth];
  *&v105 = sub_1A524EA44();
  *(&v105 + 1) = v75;
  MEMORY[0x1A5907B60](546816800, 0xA400000000000000);
  v104 = [v74 pixelHeight];
  v76 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v76);

  v107 = v71;
  v77 = sub_1A3C5A374();
  sub_1A492BBDC(0x6953206C65786950, 0xEA0000000000657ALL, &v105, 0, 0, 0, v77 & 1, v73 + 5 * v57);
  LODWORD(v105) = [v74 exifOrientation];
  v78 = sub_1A524EA44();
  v107 = v71;
  *&v105 = v78;
  *(&v105 + 1) = v79;
  v80 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4750, &v105, 0, 0, 0, v80 & 1, v73 + 6 * v57);
  v95[1] = v73 - v57;
  *&v105 = [v74 imageOrientation];
  v81 = sub_1A524EA44();
  v107 = v71;
  *&v105 = v81;
  *(&v105 + 1) = v82;
  v83 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000011, 0x80000001A53D4770, &v105, 0, 0, 0, v83 & 1, v73 - v57 + 8 * v57);
  [v74 mediaType];
  result = PHAssetMediaTypeDebugDescription();
  if (result)
  {
    v85 = result;
    v86 = sub_1A524C674();
    v88 = v87;

    v107 = v71;
    *&v105 = v86;
    *(&v105 + 1) = v88;
    v89 = sub_1A3C5A374();
    sub_1A492BBDC(0x795420616964654DLL, 0xEA00000000006570, &v105, 0, 0, 0, v89 & 1, v73 + 8 * v57);
    [v74 mediaSubtypes];
    result = PHAssetMediaSubtypesDebugDescription();
    if (result)
    {
      v90 = result;
      v91 = sub_1A524C674();
      v93 = v92;

      v107 = v71;
      *&v105 = v91;
      *(&v105 + 1) = v93;
      v94 = sub_1A3C5A374();
      sub_1A492BBDC(0x755320616964654DLL, 0xEE00736570797462, &v105, 0, 0, 0, v94 & 1, v73 + 9 * v57);
      v105 = v99;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1A43BF70C()
{
  if (!qword_1EB139440)
  {
    sub_1A43C2848(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139440);
    }
  }
}

uint64_t sub_1A43BF78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void *sub_1A43BF800(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = 0xEF73656372756F73;
  result[2] = a1;
  result[3] = 0x6552207465737341;
  return result;
}

uint64_t sub_1A43BF858(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 16) = a1;
  strcpy((result + 24), "Asset Curation");
  return result;
}

void sub_1A43BF8B0()
{
  v1 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v1);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1A43C2848(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  v4 = *(v0 + 16);
  *(v3 + 32) = v4;
  v5 = v4;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660);
  v8 = sub_1A524CA14();

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v6;
  aBlock[4] = sub_1A43C1E70;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_169;
  v10 = _Block_copy(aBlock);

  v11 = v6;

  [v7 px:v8 generateResourceFilesForAssets:v10 completionHandler:?];
  _Block_release(v10);

  sub_1A524D3D4();
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12 && *(v12 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A43BFC78()
{
  sub_1A3C7D12C(0, &qword_1EB139458, type metadata accessor for DebugSection, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v25 = type metadata accessor for DebugSection(0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v22 = &v21 - v7;
  result = [*(v0 + 16) pl_managedAsset];
  if (result)
  {
    v9 = result;
    v10 = [result resourcesSortedByQualityWithOptions_];

    sub_1A43C1EEC();
    v11 = sub_1A524CA34();

    if (v11 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      v13 = 0;
      v14 = (v23 + 48);
      v15 = MEMORY[0x1E69E7CC0];
      v21 = i;
      while ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1A59097F0](v13, v11);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v26 = v16;
        sub_1A43BFFEC(&v26, v3);
        swift_unknownObjectRelease();
        if ((*v14)(v3, 1, v25) == 1)
        {
          sub_1A3C42CC0(v3, &qword_1EB139458, type metadata accessor for DebugSection);
        }

        else
        {
          v18 = v22;
          sub_1A43C1F50(v3, v22);
          sub_1A43C1F50(v18, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1A43C1FB4(0, v15[2] + 1, 1, v15);
          }

          v20 = v15[2];
          v19 = v15[3];
          if (v20 >= v19 >> 1)
          {
            v15 = sub_1A43C1FB4(v19 > 1, v20 + 1, 1, v15);
          }

          v15[2] = v20 + 1;
          sub_1A43C1F50(v24, v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20);
          i = v21;
        }

        ++v13;
        if (v17 == i)
        {
          goto LABEL_22;
        }
      }

      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v16 = *(v11 + 8 * v13 + 32);
      swift_unknownObjectRetain();
      v17 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A43BFFEC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50[-v9];
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v50[-v13];
  v15 = *a1;
  result = [v15 uniformTypeIdentifier];
  if (result)
  {
    v17 = result;
    v18 = [result identifier];

    if (!v18)
    {
      sub_1A524C674();
      v18 = sub_1A524C634();
    }

    v19 = [objc_opt_self() typeWithIdentifier_];

    if (v19)
    {
      v62 = a2;
      sub_1A5246C44();

      v58 = *(v5 + 32);
      v59 = v5 + 32;
      v58(v14, v10, v4);
      sub_1A5246CD4();
      v57 = sub_1A5246CF4();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_1A5246CC4();
      v56 = sub_1A5246CF4();
      v60 = v20;
      v61 = v5 + 8;
      v20(v7, v4);
      *&v63 = [v15 orientedWidth];
      *&v65 = sub_1A524EA44();
      *(&v65 + 1) = v21;
      MEMORY[0x1A5907B60](546816800, 0xA400000000000000);
      *&v63 = [v15 orientedHeight];
      v22 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v22);

      v54 = *(&v65 + 1);
      v55 = v65;
      sub_1A3C7D12C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A52F8E10;
      if ([v15 orientedHeight] < 1)
      {
        *(v23 + 32) = 0x3FF0000000000000;
        v25 = MEMORY[0x1E69E6438];
        v26 = MEMORY[0x1E69E63B0];
      }

      else
      {
        v24 = [v15 orientedWidth];
        *(v23 + 32) = v24 / [v15 orientedHeight];
        v25 = MEMORY[0x1E69E64A8];
        v26 = MEMORY[0x1E69E6448];
      }

      *(v23 + 56) = v26;
      *(v23 + 64) = v25;
      v29 = sub_1A524C6C4();
      v52 = v30;
      v53 = v29;
      v31 = [v15 localAvailability];
      v33 = v31 != -1 && v31 != -32768;
      v51 = v33;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = sub_1A524C634();
        v37 = [v35 valueForKey_];

        if (v37)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        v65 = v63;
        v66 = v64;
        if (*(&v64 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB139550);
          if (swift_dynamicCast())
          {
            v38 = v63;
          }

          else
          {
            v38 = 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      sub_1A43C2468(&v65, &qword_1EB126130, MEMORY[0x1E69E6720]);
      v38 = 0;
LABEL_27:
      (*(v5 + 16))(v7, v14, v4);
      v39 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v40 = v39 + v6;
      v41 = (v39 + v6 + 9) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v15;
      v58((v42 + v39), v7, v4);
      v43 = (v42 + v40);
      *v43 = v57 & 1;
      v43[1] = v56 & 1;
      v44 = (v42 + v41);
      v45 = v54;
      *v44 = v55;
      v44[1] = v45;
      v46 = v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
      v47 = v52;
      *v46 = v53;
      *(v46 + 8) = v47;
      *(v46 + 16) = v51;
      swift_unknownObjectRetain();
      v48 = v62;
      sub_1A492BB6C(0, 0xE000000000000000, 0, sub_1A43C2750, v42, v62);

      v60(v14, v4);
      v49 = type metadata accessor for DebugSection(0);
      return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    }

    v27 = type metadata accessor for DebugSection(0);
    v28 = *(*(v27 - 8) + 56);

    return v28(a2, 1, 1, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A43C067C(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v77 = a7;
  v78 = a8;
  v79 = a6;
  v85 = a5;
  v81 = a2;
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v77 - v21;
  v23 = 0xE000000000000000;
  v87 = 0;
  v88 = 0xE000000000000000;
  v24 = a3;
  [a3 resourceType];
  v25 = PLResourceTypeName();
  v80 = v18;
  if (v25)
  {
    v26 = v25;
    v27 = sub_1A524C674();
    v23 = v28;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x1A5907B60](v27, v23);

  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  v29 = sub_1A5246BF4();
  MEMORY[0x1A5907B60](v29);

  v30 = MEMORY[0x1E69E6158];
  v90 = MEMORY[0x1E69E6158];
  v31 = sub_1A3C5A374();
  sub_1A492BBDC(0x656372756F736552, 0xED00006570795420, &v87, 0, 0, 0, v31 & 1, v22);
  a1(v22);
  sub_1A43C2468(v22, &unk_1EB139448, type metadata accessor for DebugRow);
  v32 = [objc_msgSend(v24 dataStore)];
  swift_unknownObjectRelease();
  v33 = sub_1A524C674();
  v35 = v34;

  v90 = v30;
  v87 = v33;
  v88 = v35;
  v36 = sub_1A3C5A374();
  v37 = v80;
  sub_1A492BBDC(0x6F74532061746144, 0xEA00000000006572, &v87, 0, 0, 0, v36 & 1, v80);
  a1(v37);
  sub_1A43C2468(v37, &unk_1EB139448, type metadata accessor for DebugRow);
  v38 = v37;
  v86 = [v24 dataStoreSubtype];
  v87 = sub_1A524EA44();
  v88 = v39;
  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  v40 = [objc_msgSend(v24 dataStore)];
  swift_unknownObjectRelease();
  v41 = sub_1A524C674();
  v43 = v42;

  MEMORY[0x1A5907B60](v41, v43);

  v90 = MEMORY[0x1E69E6158];
  v44 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000012, 0x80000001A53D4930, &v87, 0, 0, 0, v44 & 1, v38);
  a1(v38);
  sub_1A43C2468(v38, &unk_1EB139448, type metadata accessor for DebugRow);
  [v24 localAvailability];
  v45 = PLResourceLocalAvailabilityName();
  if (v45)
  {
    v46 = v45;
    v47 = sub_1A524C674();
    v49 = v48;

    v50 = MEMORY[0x1E69E6158];
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v50 = 0;
    v89 = 0;
  }

  v87 = v47;
  v88 = v49;
  v90 = v50;
  v51 = sub_1A3C5A374();
  v52 = v82;
  sub_1A492BBDC(0xD000000000000012, 0x80000001A53D4950, &v87, 0, 0, 0, v51 & 1, v82);
  a1(v52);
  sub_1A43C2468(v52, &unk_1EB139448, type metadata accessor for DebugRow);
  [v24 localAvailabilityTarget];
  v53 = PLResourceLocalAvailabilityTargetName();
  v54 = MEMORY[0x1E69E6158];
  if (v53)
  {
    v55 = v53;
    v56 = sub_1A524C674();
    v58 = v57;

    v59 = MEMORY[0x1E69E6158];
  }

  else
  {
    v56 = 0;
    v58 = 0;
    v59 = 0;
    v89 = 0;
  }

  v87 = v56;
  v88 = v58;
  v90 = v59;
  v60 = sub_1A3C5A374();
  v61 = v83;
  sub_1A492BBDC(0xD000000000000019, 0x80000001A53D4970, &v87, 0, 0, 0, v60 & 1, v83);
  a1(v61);
  sub_1A43C2468(v61, &unk_1EB139448, type metadata accessor for DebugRow);
  [v24 remoteAvailability];
  v62 = PLResourceRemoteAvailabilityName();
  if (v62)
  {
    v63 = v62;
    v64 = sub_1A524C674();
    v66 = v65;

    v67 = MEMORY[0x1E69E6158];
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v67 = 0;
    v89 = 0;
  }

  v87 = v64;
  v88 = v66;
  v90 = v67;
  v68 = sub_1A3C5A374();
  v69 = v84;
  sub_1A492BBDC(0xD000000000000013, 0x80000001A53D4990, &v87, 0, 0, 0, v68 & 1, v84);
  a1(v69);
  sub_1A43C2468(v69, &unk_1EB139448, type metadata accessor for DebugRow);
  result = [objc_opt_self() recipeFromID_];
  if (result)
  {
    v71 = result;
    v72 = [v71 description];
    v73 = sub_1A524C674();
    v75 = v74;

    v90 = v54;
    v87 = v73;
    v88 = v75;
    v76 = sub_1A3C5A374();
    sub_1A492BBDC(0x657069636552, 0xE600000000000000, &v87, 0, 0, 0, v76 & 1, v38);
    a1(v38);

    result = sub_1A43C2468(v38, &unk_1EB139448, type metadata accessor for DebugRow);
  }

  if (v85 & 1) != 0 || (v79)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1A524E404();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A43C10BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1A43C1110()
{
  v1 = v0;
  v2 = type metadata accessor for DebugSection(0);
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v34 - v5;
  v36 = sub_1A5240C64();
  v35 = *(v36 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v36).n128_u64[0];
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v1 + 16) px_curationDebugValues];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v48)
  {
    v42 = 0;
    v39 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = &unk_1EB1394C8;
    v12 = off_1E771DA98;
    v13 = MEMORY[0x1E69E7CC0];
    v40 = v8;
    do
    {
      sub_1A3C57128(&v47, v46);
      sub_1A3C2F0BC(v46, v45);
      sub_1A3C52C70(0, v11);
      if (swift_dynamicCast())
      {
        v16 = v12;
        v17 = v11;
        v18 = v13;
        v19 = v44;
        v20 = [v44 label];
        v21 = sub_1A524C674();
        v23 = v22;

        v24 = [v19 string];
        v25 = sub_1A524C674();
        v27 = v26;

        v45[3] = MEMORY[0x1E69E6158];
        v45[0] = v25;
        v45[1] = v27;
        v28 = MEMORY[0x1E69E7CA0];
        v29 = sub_1A3C5A374();
        sub_1A492BBDC(v21, v23, v45, 0, 0, 0, v29 & 1, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A43C21B0(0, v10[2] + 1, 1, v10);
        }

        v31 = v10[2];
        v30 = v10[3];
        v13 = v18;
        if (v31 >= v30 >> 1)
        {
          v10 = sub_1A43C21B0(v30 > 1, v31 + 1, 1, v10);
        }

        v11 = v17;

        __swift_destroy_boxed_opaque_existential_0(v46);
        v10[2] = v31 + 1;
        sub_1A43BF78C(v43, v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v31, &unk_1EB139448, v28 + 8, type metadata accessor for DebugRow, sub_1A43C2848);
        v12 = v16;
        v8 = v40;
      }

      else
      {
        sub_1A3C2F0BC(v46, v45);
        sub_1A3C52C70(0, &qword_1EB1394D0);
        if (swift_dynamicCast())
        {
          v32 = v44;
          if (v42)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v14 = [v44 label];
          v39 = sub_1A524C674();
          v42 = v15;
        }

        __swift_destroy_boxed_opaque_existential_0(v46);
      }

      sub_1A5240C54();
    }

    while (v48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v35 + 8))(v8, v36);

  return v13;
}

uint64_t PXDebugValueList.makeIterator()()
{
  swift_unknownObjectRetain();

  return sub_1A5240C74();
}

uint64_t sub_1A43C16F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A43C17CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1A43C1820()
{
  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v0 = *(type metadata accessor for DebugSection(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  sub_1A43BF70C();
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 16) = xmmword_1A52F8E10;
  v10 = v6;
  strcpy(v9, "Sample Value");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  v7 = sub_1A3C5A374();
  sub_1A492BBDC(0x5220656C706D6153, 0xEA0000000000776FLL, v9, 0, 0, 0, v7 & 1, v5 + v4);
  sub_1A492BB6C(0x5320656C706D6153, 0xEE006E6F69746365, v5, 0, 0, v2 + v1);
  return v2;
}

uint64_t sub_1A43C1A58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A43C1A90()
{
  result = swift_allocObject();
  *(result + 16) = 0x77656976657250;
  *(result + 24) = 0xE700000000000000;
  return result;
}

void *sub_1A43C1B14()
{
  type metadata accessor for DebugInfoPanelPHAssetProvider();
  v1 = swift_allocObject();
  v1[3] = 0x7465737341;
  v1[4] = 0xE500000000000000;
  [v0 fetchPropertySetsIfNeeded];
  v1[2] = v0;
  v2 = v0;
  return v1;
}

uint64_t sub_1A43C1B90()
{
  v1 = *v0;
  v2 = sub_1A43C24D4();

  return v2;
}

uint64_t sub_1A43C1BE8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_1A5240C64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A5240C74();
  if (!a2)
  {
    (*(v7 + 32))(a1, v9, v6);
    return 0;
  }

  if (!a3)
  {
LABEL_10:
    (*(v7 + 32))(a1, v9, v6);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = 1;
    sub_1A43C23EC();
    while (1)
    {
      sub_1A524DF64();
      if (!v14)
      {
        break;
      }

      sub_1A3C57128(&v13, v15);
      sub_1A3C57128(v15, a2);
      if (a3 == v11)
      {
        goto LABEL_10;
      }

      a2 += 2;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1A43C2468(&v13, &qword_1EB126130, MEMORY[0x1E69E6720]);
    (*(v7 + 32))(a1, v9, v6);
    return v11 - 1;
  }

  __break(1u);
  return result;
}

void sub_1A43C1E70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A5240E64();
  sub_1A524CA24();
  swift_beginAccess();
  *(v2 + 16) = 0;

  dispatch_group_leave(v1);
}

unint64_t sub_1A43C1EEC()
{
  result = qword_1EB1394C0;
  if (!qword_1EB1394C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1394C0);
  }

  return result;
}

uint64_t sub_1A43C1F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1A43C1FB4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for DebugSection(0) - 8);
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
  v15 = *(type metadata accessor for DebugSection(0) - 8);
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

size_t sub_1A43C21B0(size_t result, int64_t a2, char a3, void *a4)
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

  v10 = MEMORY[0x1E69E7CA0];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A43BF70C();
  sub_1A43C2848(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1A43C2848(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t sub_1A43C23EC()
{
  result = qword_1EB1394D8;
  if (!qword_1EB1394D8)
  {
    sub_1A5240C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1394D8);
  }

  return result;
}

uint64_t sub_1A43C2468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  sub_1A43C2848(0, a2, MEMORY[0x1E69E7CA0] + 8, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A43C24D4()
{
  v0 = sub_1A5240C64();
  v23 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A43C23EC();
  sub_1A524DF64();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if (v25)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      result = sub_1A3C57128(&v24, v26);
      if (!v4)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1A43C2848(0, &unk_1EB126170, v6 + 8, MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 1;
        }

        v14 = v13 >> 5;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 5);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          v17 = v3 + 4;
          if (v11 != v3 || v15 >= v17 + 32 * v16)
          {
            memmove(v11 + 4, v17, 32 * v16);
          }

          v3[2] = 0;
        }

        v5 = (v15 + 32 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      sub_1A3C57128(v26, v5);
      v5 += 2;
      sub_1A524DF64();
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  (*(v23 + 8))(v2, v0);
  result = sub_1A43C2468(&v24, &qword_1EB126130, MEMORY[0x1E69E6720]);
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v4);
  v21 = v20 - v4;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1A43C2750(void (*a1)(char *), uint64_t a2)
{
  v5 = *(sub_1A5246D14() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_1A43C067C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 1), *(v2 + ((v7 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 9) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1A43C2848(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A43C28A4()
{
  if (!qword_1EB12C468)
  {
    sub_1A43C79BC(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C468);
    }
  }
}

void sub_1A43C2920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43C2984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = sub_1A5247D34();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3600(0);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1A5242D14();
  v7 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v95 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v13;
  v108 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C36BC();
  v100 = v14;
  v99 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C45DC(0);
  v97 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3778(0, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v86 - v19;
  sub_1A43C4618();
  v103 = *(v20 - 8);
  v104 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A5249234();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 40);
  v27 = *(v2 + 48);

  v107 = v25;
  if ((v27 & 1) == 0)
  {
    sub_1A524D254();
    v28 = a1;
    v29 = v7;
    v30 = v2;
    v31 = v12;
    v32 = v9;
    v33 = v23;
    v34 = v22;
    v35 = sub_1A524A014();
    sub_1A5246DF4();

    v22 = v34;
    v23 = v33;
    v9 = v32;
    v12 = v31;
    v2 = v30;
    v7 = v29;
    a1 = v28;
    v36 = v107;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v26, 0);
    (*(v23 + 8))(v36, v22);
    v26 = v113;
  }

  if (v26)
  {
    v86 = v23;
    v87 = v22;
    v89 = a1;
    v37 = v108;
    sub_1A43C794C(v2, v108, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
    v38 = *(v93 + 80);
    v39 = (v38 + 16) & ~v38;
    v88 = v39 + v94;
    v40 = (v39 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = v38;
    v41 = swift_allocObject();
    v94 = v39;
    sub_1A43C4BD8(v37, v41 + v39);
    *(v41 + v40) = v26;

    LOBYTE(v39) = sub_1A524A084();
    sub_1A43C632C();
    sub_1A5247BC4();
    v121 = 0;
    v113 = sub_1A43C4C3C;
    v114 = v41;
    LOBYTE(v115) = v39;
    v116 = v42;
    v117 = v43;
    v118 = v44;
    v119 = v45;
    v120 = 0;
    v46 = sub_1A524A074();
    sub_1A43C3778(0, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v48 = v47;
    v49 = sub_1A43C44F4();
    MEMORY[0x1A5906200](1, v46, v48, v49);

    sub_1A3D61808(v12);
    v50 = v96;
    (*(v7 + 104))(v9, *MEMORY[0x1E69C2200], v96);
    LOBYTE(v40) = sub_1A5242D04();
    v51 = *(v7 + 8);
    v51(v9, v50);
    v51(v12, v50);
    if (v40)
    {
      v52 = *(v2 + 56);
      v53 = v101;
      if (*(v2 + 64) == 1)
      {
        LOBYTE(v113) = v52 & 1;
      }

      else
      {

        sub_1A524D254();
        v58 = sub_1A524A014();
        sub_1A5246DF4();

        v59 = v107;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v52, 0);
        (*(v86 + 8))(v59, v87);
        LOBYTE(v52) = v113;
      }

      v57 = v105;
      v112 = v52 & 1;
      v111 = 1;
      if (static LemonadeRootViewOrientation.== infix(_:_:)(&v112, &v111))
      {
        v56 = sub_1A5248874();
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
      v57 = v105;
      v53 = v101;
    }

    v60 = sub_1A524A074();
    v61 = v98;
    (*(v99 + 32))(v98, v109, v100);
    v62 = &v61[*(v97 + 36)];
    *v62 = v56;
    v62[8] = v60;
    v63 = sub_1A5248884();
    v64 = sub_1A524A064();
    v65 = v61;
    v66 = v110;
    v67 = sub_1A43C78E4(v65, v110, sub_1A43C45DC);
    v68 = v66 + *(v53 + 36);
    *v68 = v63;
    *(v68 + 8) = v64;
    if ((*(**v2 + 584))(v67))
    {
      v69 = v90;
      sub_1A5247D24();
      v70 = v108;
      sub_1A43C794C(v2, v108, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
      v71 = swift_allocObject();
      sub_1A43C4BD8(v70, v71 + v94);
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1A43C70AC;
      *(v72 + 24) = v71;
      v73 = v92;
      sub_1A524B9E4();

      (*(v91 + 8))(v69, v73);
      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    sub_1A43C3634(0);
    (*(*(v75 - 8) + 56))(v57, v74, 1, v75);
    sub_1A5247E64();
    v76 = sub_1A43C46F4();
    v77 = sub_1A43C4894();
    v78 = v102;
    v79 = v106;
    v80 = v110;
    sub_1A524AD64();
    sub_1A43C7754(v57, sub_1A43C3600);
    sub_1A3CF8538(v80);
    sub_1A43C2920(0, &qword_1EB126218, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
    sub_1A5248AB4();
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1A52F8E10;
    sub_1A5248A94();
    v113 = v53;
    v114 = v79;
    v115 = v76;
    v116 = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v83 = v89;
    v84 = v104;
    MEMORY[0x1A5905FC0](2, v81, v104, OpaqueTypeConformance2);

    (*(v103 + 8))(v78, v84);
    sub_1A43C493C();
    return (*(*(v85 - 8) + 56))(v83, 0, 1, v85);
  }

  else
  {
    sub_1A43C493C();
    return (*(*(v54 - 8) + 56))(a1, 1, 1, v54);
  }
}

uint64_t type metadata accessor for GenerativeStoryCreatedMemoriesFeedView()
{
  result = qword_1EB15EF30;
  if (!qword_1EB15EF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43C36BC()
{
  if (!qword_1EB1395D0)
  {
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C44F4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1395D0);
    }
  }
}

void sub_1A43C3778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A43C37E4()
{
  if (!qword_1EB1395E0)
  {
    sub_1A43C3778(255, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A43C440C();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1395E0);
    }
  }
}

void sub_1A43C3880()
{
  if (!qword_1EB1395F0)
  {
    sub_1A43C3A54();
    sub_1A43C3C10();
    sub_1A43C3D94();
    sub_1A43C3EE8();
    sub_1A43C4004();
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1395F0);
    }
  }
}

void sub_1A43C3A54()
{
  if (!qword_1EB1395F8)
  {
    sub_1A43C3C10();
    sub_1A43C3D94();
    sub_1A43C3EE8();
    sub_1A43C4004();
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1395F8);
    }
  }
}

void sub_1A43C3C10()
{
  if (!qword_1EB139600)
  {
    sub_1A43C3D94();
    sub_1A43C3EE8();
    sub_1A43C4004();
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139600);
    }
  }
}

void sub_1A43C3D94()
{
  if (!qword_1EB139608)
  {
    sub_1A43C3EE8();
    sub_1A43C4004();
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139608);
    }
  }
}

void sub_1A43C3EE8()
{
  if (!qword_1EB139610)
  {
    sub_1A43C4004();
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139610);
    }
  }
}

void sub_1A43C4004()
{
  if (!qword_1EB139618)
  {
    sub_1A43C40F0();
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139618);
    }
  }
}

void sub_1A43C40F0()
{
  if (!qword_1EB139620)
  {
    sub_1A43C41A4();
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139620);
    }
  }
}

void sub_1A43C41A4()
{
  if (!qword_1EB139628)
  {
    type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(255);
    sub_1A43C4260();
    sub_1A43C42C0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);
    sub_1A43C4308();
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139628);
    }
  }
}

void sub_1A43C4260()
{
  if (!qword_1EB139630)
  {
    sub_1A410AB24();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139630);
    }
  }
}

uint64_t sub_1A43C42C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A43C4308()
{
  result = qword_1EB139638;
  if (!qword_1EB139638)
  {
    sub_1A43C4260();
    sub_1A43C43B8();
    sub_1A43C42C0(&unk_1EB127B30, sub_1A410AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139638);
  }

  return result;
}

unint64_t sub_1A43C43B8()
{
  result = qword_1EB164AA8[0];
  if (!qword_1EB164AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB164AA8);
  }

  return result;
}

unint64_t sub_1A43C440C()
{
  result = qword_1EB139648;
  if (!qword_1EB139648)
  {
    sub_1A43C3778(255, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A43C42C0(&qword_1EB139650, sub_1A43C3880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139648);
  }

  return result;
}

unint64_t sub_1A43C44F4()
{
  result = qword_1EB139658;
  if (!qword_1EB139658)
  {
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C42C0(&qword_1EB139660, sub_1A43C37E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139658);
  }

  return result;
}

void sub_1A43C4618()
{
  if (!qword_1EB139678)
  {
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139678);
    }
  }
}

unint64_t sub_1A43C46F4()
{
  result = qword_1EB139680;
  if (!qword_1EB139680)
  {
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C47AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139680);
  }

  return result;
}

unint64_t sub_1A43C47AC()
{
  result = qword_1EB139688;
  if (!qword_1EB139688)
  {
    sub_1A43C45DC(255);
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C44F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139688);
  }

  return result;
}

unint64_t sub_1A43C4894()
{
  result = qword_1EB124560;
  if (!qword_1EB124560)
  {
    sub_1A43C3600(255);
    sub_1A43C42C0(&qword_1EB124578, sub_1A43C3634);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124560);
  }

  return result;
}

void sub_1A43C493C()
{
  if (!qword_1EB139690)
  {
    sub_1A43C4618();
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139690);
    }
  }
}

__n128 sub_1A43C4A50@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A43C3880();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_1A524BC74();
  v10[1] = v11;
  sub_1A43C787C();
  sub_1A43C4CE8(a1, a2, a3, v10 + *(v12 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A43C78E4(v10, a4, sub_1A43C3880);
  sub_1A43C3778(0, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v14 = a4 + *(v13 + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1A43C4BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A43C4C3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1A43C4A50(a1, (v2 + v6), v7, a2).n128_u64[0];
  return result;
}

uint64_t sub_1A43C4CE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v114 = a4;
  v115 = sub_1A52425F4();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1A5249D04();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A52497E4();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A5249E44();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C41A4();
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C40F0();
  v90 = v12;
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C4004();
  v93 = v14;
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3EE8();
  v103 = v16;
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3D94();
  v106 = v18;
  v104 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v102 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3C10();
  v108 = v20;
  v107 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v105 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A5244EE4();
  v122 = *(v22 - 8);
  v123 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v121 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v84 = v80 - v26;
  v120 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v120);
  v28 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v81 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v124 = v80 - v32;
  v33 = sub_1A5242D14();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v80 - v38;
  v117 = a1;
  sub_1A52482B4();
  v41 = v40;
  v42 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v43 = *(v42 + 36);
  v125 = a2;
  v44 = (a2 + v43);
  v45 = *v44;
  v119 = v44[1];
  v127 = v45;
  v128 = v119;
  sub_1A43C79BC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  v118 = v46;
  sub_1A524B6A4();
  v47 = v41 - v126;
  sub_1A52482B4();
  sub_1A43C5E0C(v48, v47);
  v116 = *(v42 + 32);
  sub_1A3D61808(v39);
  v49 = *MEMORY[0x1E69C2210];
  v50 = *(v34 + 104);
  v50(v36, v49, v33);
  v80[3] = sub_1A5242D04();
  v51 = *(v34 + 8);
  v51(v36, v33);
  v51(v39, v33);
  v127 = v45;
  v128 = v119;
  sub_1A524B6A4();
  sub_1A52482B4();
  sub_1A3D61808(v39);
  v50(v36, v49, v33);
  v52 = sub_1A5242D04();
  v51(v36, v33);
  v51(v39, v33);
  if (v52)
  {
    v53 = 0x3FFC71C71C71C71CLL;
  }

  else
  {
    v53 = 6;
  }

  v54 = sub_1A3C47918();
  v56 = v55;
  v57 = sub_1A3C47918();
  v59 = v58;
  v60 = sub_1A3C52D68();
  v62 = v61;
  v64 = v63;
  v65 = sub_1A3C4ED50();
  LOBYTE(v126) = (v52 & 1) == 0;
  *v28 = xmmword_1A5317AF0;
  v28[16] = 0;
  *(v28 + 3) = v53;
  v28[32] = (v52 & 1) == 0;
  *(v28 + 5) = v54;
  *(v28 + 6) = v56;
  *(v28 + 7) = v57;
  *(v28 + 8) = v59;
  v66 = v121;
  *(v28 + 9) = v60;
  *(v28 + 10) = v62;
  v28[88] = v64;
  v67 = v124;
  v68 = v125;
  v28[89] = v65;
  swift_storeEnumTagMultiPayload();
  v69 = sub_1A3DC1AF8();
  sub_1A437C3B8(v28, 3, v69, v70 & 1, v67);
  v71 = *v68;
  v72 = *(*v68 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  (*(v122 + 104))(v66, *MEMORY[0x1E69C12A8], v123);
  v73 = *(*v71 + 1408);
  v74 = v72;
  result = v73();
  if (result)
  {
    v76 = result;
    v77 = v81;
    sub_1A43C794C(v67, v81, type metadata accessor for LemonadeFeedBodyStyle);
    v78 = v84;
    sub_1A3F92A60(v74, v66, v76, v77, v84);
    sub_1A43C794C(v78, v82, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);

    v79 = sub_1A440617C();
    MEMORY[0x1EEE9AC00](v79);
    sub_1A43C4260();
    sub_1A43C42C0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);
    sub_1A43C4308();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

double sub_1A43C5E0C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1A5249234();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  sub_1A3D61808(v14);
  v15 = *(v9 + 104);
  v30 = *MEMORY[0x1E69C2210];
  v15(v11);
  v16 = sub_1A5242D04();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16)
  {
    v18 = 0x3FEE666666666666;
  }

  else
  {
    sub_1A3D61808(v14);
    (v15)(v11, *MEMORY[0x1E69C2200], v8);
    v19 = sub_1A5242D04();
    v17(v11, v8);
    v17(v14, v8);
    if (v19)
    {
      v20 = *(v3 + 56);
      if (*(v3 + 64) == 1)
      {
        v33 = v20 & 1;
      }

      else
      {

        v26 = sub_1A524D254();
        v25 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v20, 0);
        (*(v27 + 8))(v29, v28);
        LOBYTE(v20) = v33;
      }

      v32 = v20 & 1;
      v31 = 0;
      if (static LemonadeRootViewOrientation.== infix(_:_:)(&v32, &v31))
      {
        v21 = 0.9;
        goto LABEL_11;
      }
    }

    v18 = 0x3FE6666666666666;
  }

  v21 = *&v18;
LABEL_11:
  if (a1 < a2)
  {
    a2 = a1;
  }

  sub_1A3D61808(v14);
  (v15)(v11, v30, v8);
  v22 = sub_1A5242D04();
  v17(v11, v8);
  v17(v14, v8);
  v23 = 1.77777778;
  if ((v22 & 1) == 0)
  {
    v23 = 1.0;
  }

  return v21 * (a2 * v23);
}

uint64_t sub_1A43C61D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1A43C794C(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1A43C4BD8(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v12[8] = 0;
  *a2 = v7;
  *(a2 + 8) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_1A410AEF4;
  *(a2 + 56) = 0;
  *(a2 + 64) = sub_1A43C7B90;
  *(a2 + 72) = v10;
}

double sub_1A43C632C()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v16 = *(v0 + 8);
  v17 = v8;
  v18 = v9;
  sub_1A43C28A4();
  MEMORY[0x1A5906C60](&v14);
  if (v15)
  {
    return 0.0;
  }

  v10 = v14;
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  sub_1A3D61808(v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E69C2210], v1);
  sub_1A43C42C0(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v11 = sub_1A524C594();
  v12 = *(v2 + 8);
  v12(v4, v1);
  v12(v7, v1);
  if (v11)
  {
    return 0.0;
  }

  return v10;
}

uint64_t sub_1A43C6504(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A43C794C(a1, v5, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A43C4BD8(v5, v12 + v11);
  sub_1A3D4D930(0, 0, v8, &unk_1A5336748, v12);
}

uint64_t sub_1A43C66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43C6760, v6, v5);
}

uint64_t sub_1A43C6760()
{
  v1 = *(v0 + 16);

  (*(**v1 + 592))(0);
  v2 = *(v0 + 8);

  return v2();
}

double sub_1A43C67F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  *(a6 + 56) = swift_getKeyPath();
  *(a6 + 64) = 0;
  v7 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v8 = *(v7 + 32);
  *(a6 + v8) = swift_getKeyPath();
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v9 = (a6 + *(v7 + 36));
  sub_1A524B694();
  result = v11;
  *v9 = v11;
  *(v9 + 1) = v12;
  return result;
}

uint64_t sub_1A43C68F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A43C3778(0, &qword_1EB1396A8, sub_1A43C7470, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = sub_1A5249234();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  sub_1A43C7470(0);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *v1;
  v21 = (*(*v20 + 1432))(v17);
  if (v21)
  {
    v22 = v21;
    v38 = a1;
    *v19 = PXDisplayCollectionDetailedCountsMake(v21);
    sub_1A43C74AC();
    v24 = (v19 + *(v23 + 44));

    v37 = v22;
    sub_1A45DCAF4(v37, v14);
    sub_1A43C794C(v14, v11, type metadata accessor for GenerativeStoryFeedbackButtonsView);
    *v24 = v20;
    sub_1A43C758C();
    sub_1A43C794C(v11, v24 + *(v25 + 48), type metadata accessor for GenerativeStoryFeedbackButtonsView);

    sub_1A43C7754(v14, type metadata accessor for GenerativeStoryFeedbackButtonsView);
    sub_1A43C7754(v11, type metadata accessor for GenerativeStoryFeedbackButtonsView);

    v26 = sub_1A524A054();
    v43 = *(v2 + 40);
    v27 = *(v2 + 3);
    v42[0] = *(v2 + 1);
    v42[1] = v27;
    if ((v43 & 1) == 0)
    {

      sub_1A524D254();
      v29 = sub_1A524A014();
      sub_1A5246DF4();

      v30 = v39;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A40F501C(v42);
      (*(v40 + 8))(v30, v41);
    }

    sub_1A5247BC4();
    v31 = v19 + *(v16 + 36);
    *v31 = v26;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_1A43C794C(v19, v6, sub_1A43C7470);
    swift_storeEnumTagMultiPayload();
    sub_1A43C75F4();
    sub_1A5249744();

    return sub_1A43C7754(v19, sub_1A43C7470);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A43C75F4();
    return sub_1A5249744();
  }
}

uint64_t sub_1A43C6D88(uint64_t a1)
{
  sub_1A43C7D38(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*a1 + 416))(v3);
  v8 = v7;
  v9 = *MEMORY[0x1E69C0FE8];
  v10 = sub_1A5244854();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  (*(*a1 + 1896))(v6, v8, v5);

  return sub_1A43C7754(v5, sub_1A43C7D38);
}

uint64_t sub_1A43C6F30()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524B614();
}

uint64_t sub_1A43C6FE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1A3E429B4();
  sub_1A43C42C0(&qword_1EB1274F0, sub_1A3E429B4);

  return sub_1A4A4E6EC(sub_1A43C7D30, v3, sub_1A43C6F30, 0, a1);
}

uint64_t sub_1A43C70AC()
{
  v1 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A43C6504(v2);
}

void sub_1A43C7150()
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A43C28A4();
    if (v1 <= 0x3F)
    {
      sub_1A43C2920(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A43C79BC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A43C2920(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A43C79BC(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
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

unint64_t sub_1A43C72DC()
{
  result = qword_1EB139698;
  if (!qword_1EB139698)
  {
    sub_1A43C2920(255, &qword_1EB1396A0, sub_1A43C493C, MEMORY[0x1E69E6720]);
    sub_1A43C4618();
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139698);
  }

  return result;
}

void sub_1A43C74AC()
{
  if (!qword_1EB1396B8)
  {
    sub_1A406D440();
    sub_1A43C7558(255);
    sub_1A43C42C0(&qword_1EB130F20, sub_1A406D440);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1396B8);
    }
  }
}

void sub_1A43C758C()
{
  if (!qword_1EB1396C8)
  {
    type metadata accessor for GenerativeStoryFeedbackButtonsView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1396C8);
    }
  }
}

unint64_t sub_1A43C75F4()
{
  result = qword_1EB1396D0;
  if (!qword_1EB1396D0)
  {
    sub_1A43C7470(255);
    sub_1A43C7674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396D0);
  }

  return result;
}

unint64_t sub_1A43C7674()
{
  result = qword_1EB1396D8;
  if (!qword_1EB1396D8)
  {
    sub_1A43C74AC();
    sub_1A43C42C0(&qword_1EB1396E0, sub_1A406D440);
    sub_1A43C42C0(&qword_1EB1396E8, sub_1A43C7558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396D8);
  }

  return result;
}

uint64_t sub_1A43C7754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43C77B4()
{
  v2 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A43C66C8(v4, v5, v6, v0 + v3);
}

void sub_1A43C787C()
{
  if (!qword_1EB1396F0)
  {
    sub_1A43C3A54();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1396F0);
    }
  }
}

uint64_t sub_1A43C78E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43C794C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A43C79BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 40), *(v2 + 48));
  sub_1A3C53AEC(*(v2 + 56), *(v2 + 64));
  v3 = *(v1 + 32);
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43C7B90()
{
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  sub_1A43C79BC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A43C7C5C()
{
  result = qword_1EB1396F8;
  if (!qword_1EB1396F8)
  {
    sub_1A43C3778(255, &qword_1EB139700, sub_1A43C7470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A43C75F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396F8);
  }

  return result;
}

void sub_1A43C7D6C()
{
  if (!qword_1EB139710)
  {
    sub_1A3E429B4();
    sub_1A43C42C0(&qword_1EB1274F0, sub_1A3E429B4);
    v0 = type metadata accessor for GenerativeStoryInlineActionButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139710);
    }
  }
}

uint64_t PhotosObservableBasicItem<>.accessoryType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A43C83C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1A43C84C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  sub_1A5241164();
  (*(v7 + 8))(v9, v6);
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_1A5246514();
}

unint64_t sub_1A43C8610()
{
  result = qword_1EB124A90;
  if (!qword_1EB124A90)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A90);
  }

  return result;
}

void sub_1A43C8684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    v7 = v6;
    v8 = sub_1A43C8610();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A43C8710()
{
  result = qword_1EB139720;
  if (!qword_1EB139720)
  {
    sub_1A43C8684(255, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139720);
  }

  return result;
}

void sub_1A43C8784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3F47C30();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A43C87EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v7 = sub_1A3C47918();
  v9 = v8;
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C52D68();
  v15 = v14;
  LOBYTE(a1) = v16;
  v17 = sub_1A3C4ED50();
  v24 = 1;
  *v6 = xmmword_1A5301350;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v7;
  *(v6 + 6) = v9;
  *(v6 + 7) = v10;
  *(v6 + 8) = v12;
  *(v6 + 9) = v13;
  *(v6 + 10) = v15;
  v6[88] = a1;
  v6[89] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = sub_1A3DC1AF8();
  v20 = v19;
  v21 = type metadata accessor for LemonadeSharedWithYouFeedProvider();
  result = sub_1A437C3B8(v6, 1, v18, v20 & 1, a2 + *(v21 + 20));
  *a2 = v23;
  return result;
}

uint64_t type metadata accessor for LemonadeSharedWithYouFeedProvider()
{
  result = qword_1EB17B580;
  if (!qword_1EB17B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43C89C8()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A43C8A5C()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  return sub_1A524C4B4();
}

uint64_t sub_1A43C8AE8()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A43C8B78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for LemonadePhotoLibraryContext();
  return static LemonadePhotoLibraryContext.== infix(_:_:)(v2, v3) & 1;
}

uint64_t sub_1A43C8BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A43C9040();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LemonadeSharedWithYouCell();
  MEMORY[0x1EEE9AC00](v31);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43C98A0(0, &qword_1EB139728, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  if (shouldUseNewCollectionsLayout()())
  {
    v39[0] = a1;
    v12 = type metadata accessor for LemonadeSharedWithYouModel();
    sub_1A43C9550(&qword_1EB139738, type metadata accessor for LemonadeSharedWithYouModel);

    v13 = MEMORY[0x1E6981E70];
    v14 = sub_1A41F7694();
    v15 = sub_1A43C9BB4();
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v19 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v39, 0x6567617373656DLL, 0xE700000000000000, 0, 0, 0, 1, sub_1A3F8B548, &v32, v14, v18, v19, v13, v12);
    v20 = v37;
    *(v11 + 4) = v36;
    *(v11 + 5) = v20;
    v11[96] = v38;
    v21 = v33;
    *v11 = v32;
    *(v11 + 1) = v21;
    v22 = v35;
    *(v11 + 2) = v34;
    *(v11 + 3) = v22;
    swift_storeEnumTagMultiPayload();
    sub_1A43C9098();
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell);
    return sub_1A5249744();
  }

  else
  {
    v24 = *(*a1 + 128);
    v24(&v32);
    v25 = v32;
    v30 = a2;
    v26 = *(&v33 + 1);
    swift_unknownObjectRelease();

    v24(v39);
    v27 = v39[0];
    v28 = v39[3];
    swift_unknownObjectRelease();

    v29 = swift_unknownObjectRelease();
    sub_1A46BF2FC(v29);
    sub_1A46BEE58(*(&v25 + 1), v28, v6, v8);
    sub_1A43C9148(v8, v11, type metadata accessor for LemonadeSharedWithYouCell);
    swift_storeEnumTagMultiPayload();
    sub_1A43C9098();
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell);
    sub_1A5249744();
    return sub_1A43C91B0(v8);
  }
}

void sub_1A43C9040()
{
  if (!qword_1EB124840)
  {
    sub_1A5244084();
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124840);
    }
  }
}

void sub_1A43C9098()
{
  if (!qword_1EB139730)
  {
    type metadata accessor for LemonadeSharedWithYouModel();
    sub_1A43C9550(&qword_1EB139738, type metadata accessor for LemonadeSharedWithYouModel);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139730);
    }
  }
}

uint64_t sub_1A43C9148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43C91B0(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSharedWithYouCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A43C9210()
{
  result = qword_1EB139750;
  if (!qword_1EB139750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139750);
  }

  return result;
}

unint64_t sub_1A43C9378()
{
  result = qword_1EB139758;
  if (!qword_1EB139758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139758);
  }

  return result;
}

uint64_t sub_1A43C9404(uint64_t a1)
{
  result = sub_1A43C9550(&qword_1EB129640, type metadata accessor for LemonadeSharedWithYouFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43C9550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A43C95CC(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedWithYouItemListManager(0);
  v2 = v1;
  sub_1A45B0AAC();
}

uint64_t sub_1A43C9618@<X0>(void *a1@<X8>)
{
  v2 = swift_unknownObjectRetain();
  sub_1A3D96070(v2, &v4);
  *a1 = v4;
  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43C967C()
{
  sub_1A43C9550(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider);

  return sub_1A3C47918();
}

unint64_t sub_1A43C9720()
{
  result = sub_1A3C4B4AC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadeFeedBodyStyle(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A43C97A4()
{
  result = qword_1EB139770;
  if (!qword_1EB139770)
  {
    sub_1A43C98A0(255, &qword_1EB139778, MEMORY[0x1E697F960]);
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139770);
  }

  return result;
}

void sub_1A43C98A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A43C9098();
    v7 = v6;
    v8 = type metadata accessor for LemonadeSharedWithYouCell();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t PXMapOptionsMapStyle.systemIconName.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C6C69662E70616DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t PXMapOptionsMapStyle.imageName.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x2D6863746977736DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t PXMapOptionsMapStyle.title.getter(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v1 = sub_1A524C634();
    v2 = PXLocalizedString(v1);

    v3 = sub_1A524C674();
    return v3;
  }

  return result;
}

unint64_t PXMapOptionsMapStyle.usesImagery.getter(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = type metadata accessor for LemonadeMaterialTitleCell();
  v22 = a9 + v21[20];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v21[21];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = *(a14 - 8);
  (*(v24 + 16))(a9, a1, a14);
  v25 = (a9 + v21[13]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + v21[14]);
  *v26 = a4;
  v26[1] = a5;
  *(a9 + v21[15]) = a6;
  *(a9 + v21[16]) = a10;
  *(a9 + v21[17]) = a7;
  v27 = swift_unknownObjectRetain();
  a8(v27);
  swift_unknownObjectRelease();

  result = (*(v24 + 8))(a1, a14);
  *(a9 + v21[19]) = a12;
  return result;
}

void sub_1A43C9D98(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 80);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43C9EF4(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void LemonadeMaterialTitleCell.body.getter(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v48 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v52 = v5;
  v50 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[1].i64[0];
  v13 = v11[2];
  v67 = v7;
  v68 = v12;
  v53 = v12;
  v49 = v13;
  v51 = vextq_s8(v13, v13, 8uLL);
  v69 = v51;
  v14 = sub_1A5242A94();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v54 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = v45 - v17;
  v18 = sub_1A5243284();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v45 - v22;
  v24 = sub_1A43C9EF4(a1);
  v61 = v19;
  v62 = v18;
  if (v24)
  {
    v25 = MEMORY[0x1E69C23D0];
  }

  else
  {
    sub_1A43C9D98(a1, &v66);
    v65 = 0;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v67 == v63 && v68 == v64)
    {

      v25 = MEMORY[0x1E69C23E0];
    }

    else
    {
      v26 = sub_1A524EAB4();

      v25 = MEMORY[0x1E69C23D8];
      if (v26)
      {
        v25 = MEMORY[0x1E69C23E0];
      }
    }

    v19 = v61;
    v18 = v62;
  }

  v27 = *(v19 + 104);
  v27(v23, *v25, v18);
  v28 = *(v3 + a1[17]);
  v59 = v23;
  v45[2] = v10;
  if (v28)
  {
    (*(v8 + 16))(v10, v3, v7);
    goto LABEL_11;
  }

  v47 = v8;
  v31 = v60;
  v27(v60, *MEMORY[0x1E69C23D8], v18);
  sub_1A43D3320(&qword_1EB124DB8, MEMORY[0x1E69C23E8]);
  v32 = sub_1A524C594();
  (*(v19 + 8))(v31, v18);
  if ((v32 & 1) != 0 || (v33 = (v3 + a1[14]), (v34 = v33[1]) == 0))
  {
    (*(v47 + 16))(v10, v3, v7);
    v47 = 0;
    v46 = 0;
    v37 = v59;
  }

  else
  {
    v35 = *v33 & 0xFFFFFFFFFFFFLL;
    if ((v34 & 0x2000000000000000) != 0)
    {
      v36 = HIBYTE(v34) & 0xF;
    }

    else
    {
      v36 = v35;
    }

    (*(v47 + 16))(v10, v3, v7);
    v37 = v59;
    if (v36)
    {
LABEL_11:
      v29 = (v3 + a1[13]);
      v30 = v29[1];
      v47 = *v29;
      v46 = v30;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v47 = 0;
    v46 = 0;
  }

  v38 = a1[15];
  v45[1] = *(v3 + a1[14]);
  v45[0] = *(v3 + v38);
  (*(v61 + 16))(v60, v37, v62);
  v39 = v48;
  v40 = v50;
  (*(v48 + 16))(v50, v3, a1);
  v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *&v43 = v53;
  *(&v43 + 1) = v7;
  v44 = v49;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  (*(v39 + 32))(v42 + v41, v40, a1);
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CA7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for LemonadeMaterialTitleCell();
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 72), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void sub_1A43CA8C8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CAA24(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1A43CAB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42905D4(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 72), v11, sub_1A42905D4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5244084();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 76), v11, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void LemonadeFolderMaterialTitleCell.init(_:_:aspectRatio:specs:backgroundColor:placeholderBackgroundColor:title:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v18 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  v19 = v18[9];
  v20 = v18[15];
  *(a9 + v20) = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v18[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v18[17];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v18[18];
  *(a9 + v23) = swift_getKeyPath();
  sub_1A42905D4(0);
  swift_storeEnumTagMultiPayload();
  v24 = v18[19];
  *(a9 + v24) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  (*(*(a8 - 8) + 16))(a9, a1, a8);
  *(a9 + v19) = a2;
  *(a9 + v18[10]) = a4;
  sub_1A43D3538(a5, a9 + v18[11], sub_1A43D0100);
  v25 = (a9 + v18[12]);
  *v25 = a6;
  v25[1] = a7;
  v26 = v18[13];
  v27 = sub_1A5243284();
  (*(*(v27 - 8) + 16))(a9 + v26, a3);
  *(a9 + v18[14]) = a10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CB3F0(uint64_t a1, void *a2)
{
  v3 = 7104878;
  v9 = sub_1A524EA44();
  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  if (a2 && (v4 = [a2 uuid]) != 0)
  {
    v5 = v4;
    v3 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1A5907B60](v3, v7);

  return v9;
}

uint64_t sub_1A43CB4B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A43CB3F0(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A43CB4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v51 = a2;
  v49 = a1;
  v5 = sub_1A5243834();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0100(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249234();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5247E04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1A52429A4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43CAD70(a3, v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E697DBA8], v12);
  LOBYTE(a3) = sub_1A5247DF4();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v23(v18, v12);
  if (a3)
  {
    sub_1A524B3D4();
  }

  else
  {
    sub_1A524B404();
  }

  sub_1A524B474();

  sub_1A5249224();
  sub_1A524B494();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  (*(v43 + 8))(v11, v44);
  *v22 = v25;
  v22[1] = v27;
  v22[2] = v29;
  v22[3] = v31;
  (*(v20 + 104))(v22, *MEMORY[0x1E69C2040], v19);
  v52 = 0u;
  v53 = 0u;
  v54 = 1;
  v32 = v45;
  (*(v20 + 16))(v45, v22, v19);
  (*(v20 + 56))(v32, 0, 1, v19);
  (*(v46 + 104))(v48, *MEMORY[0x1E69C2678], v47);
  swift_unknownObjectRetain();
  v33 = v50;
  sub_1A5243ED4();
  (*(v20 + 8))(v22, v19);
  KeyPath = swift_getKeyPath();
  sub_1A43D050C(0);
  v36 = (v33 + *(v35 + 36));
  sub_1A43D0540(0);
  v38 = *(v37 + 28);
  v39 = sub_1A5241FE4();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v36 + v38, v51, v39);
  result = (*(v40 + 56))(v36 + v38, 0, 1, v39);
  *v36 = KeyPath;
  return result;
}

uint64_t sub_1A43CBA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

uint64_t LemonadeFolderMaterialTitleCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  sub_1A43D01E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0A80(0);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0ABC(0);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0AF8(0);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0D1C(0);
  v77 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0D50(0);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0E8C(0, &qword_1EB139898, sub_1A43D0D50, sub_1A43D0F18);
  v83 = v19;
  v82 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v69 - v20;
  v21 = sub_1A5243284();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A43CAA24(a1);
  v81 = v21;
  v79 = v22;
  if (v25)
  {
    (*(v22 + 104))(v24, *MEMORY[0x1E69C23D0], v21);
    goto LABEL_10;
  }

  sub_1A43CA8C8(a1, v94);
  v93 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v87 == v91 && v88 == v92)
  {
  }

  else
  {
    v26 = sub_1A524EAB4();

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x1E69C23D8];
      goto LABEL_9;
    }
  }

  v27 = MEMORY[0x1E69C23E0];
LABEL_9:
  (*(v22 + 104))(v24, *v27, v21);
LABEL_10:
  *v7 = sub_1A5249574();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1A43D33EC(0, &qword_1EB1398E8, sub_1A43D0278);
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = &v7[*(v28 + 44)];
  v32 = v24;
  v85 = v3;
  v70 = v29;
  sub_1A43CC3C8(v24, v3, v30, v29, v31);
  sub_1A43D3090(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v34 = sub_1A524A074();
  *(inited + 32) = v34;
  v35 = sub_1A524A094();
  *(inited + 33) = v35;
  v36 = sub_1A524A0B4();
  *(inited + 34) = v36;
  v37 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v34)
  {
    v37 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v35)
  {
    v37 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v36)
  {
    v37 = sub_1A524A0A4();
  }

  sub_1A5243214();
  sub_1A5247BC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v74;
  sub_1A43D1258(v7, v74, sub_1A43D01E4);
  v47 = v46 + *(v73 + 36);
  *v47 = v37;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = v76;
  sub_1A43D1258(v46, v76, sub_1A43D0A80);
  v49 = v48 + *(v72 + 36);
  *v49 = 0x3FF0000000000000;
  *(v49 + 8) = 256;
  v50 = sub_1A524BC74();
  v51 = v32;
  v53 = v52;
  v54 = &v14[*(v71 + 36)];
  v55 = v85;
  v56 = v70;
  sub_1A43CDB38(v85, v32, v54);
  sub_1A43D0B2C();
  v58 = (v54 + *(v57 + 36));
  *v58 = v50;
  v58[1] = v53;
  sub_1A43D1258(v48, v14, sub_1A43D0ABC);
  v59 = v14;
  v60 = v75;
  sub_1A43D1258(v59, v75, sub_1A43D0AF8);
  *(v60 + *(v77 + 36)) = 1;
  v61 = v78;
  sub_1A43D1258(v60, v78, sub_1A43D0D1C);
  v62 = v84;
  v63 = v61 + *(v84 + 36);
  *v63 = 0x3FF0000000000000;
  *(v63 + 8) = 0;
  v89 = v30;
  v90 = v56;
  v64 = __swift_allocate_boxed_opaque_existential_1(&v87);
  (*(*(v30 - 8) + 16))(v64, v55, v30);
  v65 = sub_1A43D0F18();
  v66 = v80;
  sub_1A524A554();
  sub_1A43D32C0(v61, sub_1A43D0D50);
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v87 = v62;
  v88 = v65;
  swift_getOpaqueTypeConformance2();
  v67 = v83;
  sub_1A524A564();
  (*(v82 + 8))(v66, v67);
  return (*(v79 + 8))(v51, v81);
}

uint64_t sub_1A43CC3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v50 = a3;
  v48 = sub_1A5247E04();
  v47[18] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47[17] = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47[16] = v47 - v10;
  sub_1A3EE1D04();
  v47[9] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697E830];
  sub_1A43D2FA4(0, &qword_1EB139818, sub_1A43D07B8, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v47[10] = v14;
  MEMORY[0x1EEE9AC00](v14);
  v47[14] = v47 - v15;
  sub_1A43D0700();
  v47[13] = v16;
  MEMORY[0x1EEE9AC00](v16);
  v47[15] = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0674();
  v47[12] = v18;
  MEMORY[0x1EEE9AC00](v18);
  v47[21] = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D2FA4(0, &qword_1EB139800, sub_1A43D0674, MEMORY[0x1E697EC00], v13);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47[19] = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v47[20] = v47 - v25;
  sub_1A43D05E4();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v47 - v30;
  sub_1A43D02B4();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v47 - v36;
  sub_1A5243214();
  v39 = v38;
  *v37 = sub_1A5249574();
  *(v37 + 1) = v39;
  v37[16] = 0;
  sub_1A43D33EC(0, &qword_1EB1398F8, sub_1A43D0348);
  v41 = &v37[*(v40 + 44)];
  v47[11] = a1;
  sub_1A43CCFE8(v51, v41);
  v50 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  v42 = *(v50 + 48);
  v51 = a2;
  v43 = (a2 + v42);
  v44 = v43[1];
  if (v44)
  {
    v47[4] = v22;
    v47[3] = v21;
    v47[5] = v34;
    v47[6] = v31;
    v47[7] = v28;
    v47[8] = a5;
    v52 = *v43;
    v53 = v44;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v22 + 56))(v31, 1, 1, v21);
  sub_1A43D3538(v37, v34, sub_1A43D02B4);
  sub_1A3CF9648(v31, v28);
  sub_1A43D3538(v34, a5, sub_1A43D02B4);
  sub_1A43D12D8(0, &qword_1EB139790, sub_1A43D02B4, sub_1A43D05E4);
  sub_1A3CF9648(v28, a5 + *(v45 + 48));
  sub_1A43D32C0(v31, sub_1A43D05E4);
  sub_1A43D34C0(v37, sub_1A43D02B4);
  sub_1A43D32C0(v28, sub_1A43D05E4);
  return sub_1A43D34C0(v34, sub_1A43D02B4);
}

uint64_t sub_1A43CCFE8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v34[1] = a1;
  v37 = a2;
  sub_1A43D05A8(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v35 = v34 - v9;
  sub_1A43D03E0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  sub_1A5243214();
  v20 = v19;
  *v18 = sub_1A5249314();
  *(v18 + 1) = v20;
  v18[16] = 0;
  sub_1A43D33EC(0, qword_1EB139900, sub_1A43D0474);
  v22 = v21;
  sub_1A43CD3D0(&v18[*(v21 + 44)]);
  sub_1A5243214();
  v24 = v23;
  *v15 = sub_1A5249314();
  *(v15 + 1) = v24;
  v15[16] = 0;
  sub_1A43CD78C(&v15[*(v22 + 44)]);
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A43D3458(v15, v7, sub_1A43D03E0);
  v25 = &v7[*(v3 + 44)];
  v26 = v43;
  *(v25 + 4) = v42;
  *(v25 + 5) = v26;
  *(v25 + 6) = v44;
  v27 = v39;
  *v25 = v38;
  *(v25 + 1) = v27;
  v28 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v28;
  v29 = v35;
  sub_1A43D3458(v7, v35, sub_1A43D05A8);
  sub_1A43D3538(v18, v12, sub_1A43D03E0);
  v30 = v36;
  sub_1A43D3538(v29, v36, sub_1A43D05A8);
  v31 = v37;
  sub_1A43D3538(v12, v37, sub_1A43D03E0);
  sub_1A43D12D8(0, &qword_1EB1397A8, sub_1A43D03E0, sub_1A43D05A8);
  sub_1A43D3538(v30, v31 + *(v32 + 48), sub_1A43D05A8);
  sub_1A43D34C0(v29, sub_1A43D05A8);
  sub_1A43D34C0(v18, sub_1A43D03E0);
  sub_1A43D34C0(v30, sub_1A43D05A8);
  return sub_1A43D34C0(v12, sub_1A43D03E0);
}

uint64_t sub_1A43CD3D0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  sub_1A43D050C(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v27 = &v27 - v9;
  v31 = sub_1A5241FE4();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  sub_1A5243254();
  sub_1A5243214();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  v16 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem();
  sub_1A524CB94();
  sub_1A43CB4DC(v33, v15, v16, v10);
  swift_unknownObjectRelease();
  sub_1A5243264();
  sub_1A5243254();
  sub_1A5243214();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  sub_1A524CB94();
  sub_1A43CB4DC(v33, v12, v16, v7);
  swift_unknownObjectRelease();
  v18 = v27;
  v17 = v28;
  sub_1A43D3538(v27, v28, sub_1A43D050C);
  v19 = v30;
  sub_1A43D3538(v7, v30, sub_1A43D050C);
  v20 = v32;
  sub_1A43D3538(v17, v32, sub_1A43D050C);
  sub_1A43D04A8();
  v22 = v20 + *(v21 + 48);
  v23 = v19;
  sub_1A43D3538(v19, v22, sub_1A43D050C);
  sub_1A43D34C0(v7, sub_1A43D050C);
  v24 = *(v29 + 8);
  v25 = v31;
  v24(v12, v31);
  sub_1A43D34C0(v18, sub_1A43D050C);
  v24(v15, v25);
  sub_1A43D34C0(v23, sub_1A43D050C);
  return sub_1A43D34C0(v17, sub_1A43D050C);
}

uint64_t sub_1A43CD78C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  sub_1A43D050C(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v27 = &v27 - v9;
  v31 = sub_1A5241FE4();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  v16 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem();
  sub_1A524CB94();
  sub_1A43CB4DC(v33, v15, v16, v10);
  swift_unknownObjectRelease();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  sub_1A524CB94();
  sub_1A43CB4DC(v33, v12, v16, v7);
  swift_unknownObjectRelease();
  v18 = v27;
  v17 = v28;
  sub_1A43D3538(v27, v28, sub_1A43D050C);
  v19 = v30;
  sub_1A43D3538(v7, v30, sub_1A43D050C);
  v20 = v32;
  sub_1A43D3538(v17, v32, sub_1A43D050C);
  sub_1A43D04A8();
  v22 = v20 + *(v21 + 48);
  v23 = v19;
  sub_1A43D3538(v19, v22, sub_1A43D050C);
  sub_1A43D34C0(v7, sub_1A43D050C);
  v24 = *(v29 + 8);
  v25 = v31;
  v24(v12, v31);
  sub_1A43D34C0(v18, sub_1A43D050C);
  v24(v15, v25);
  sub_1A43D34C0(v23, sub_1A43D050C);
  return sub_1A43D34C0(v17, sub_1A43D050C);
}

uint64_t sub_1A43CDB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v40 = sub_1A5244084();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524B394();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5247E04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1A43D0C08(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  v37 = a1;
  sub_1A43CAD70(v19, v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697DBB8], v8);
  v20 = sub_1A5247DF4();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  if (v20)
  {
    v22 = sub_1A524B434();
  }

  else
  {
    (*(v33 + 104))(v7, *MEMORY[0x1E69814D8], v34);
    v22 = sub_1A524B4B4();
  }

  v23 = v22;
  sub_1A5243254();
  v25 = v24;
  v26 = &v18[*(v16 + 36)];
  v27 = *(sub_1A5248A14() + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1A52494A4();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  sub_1A3E42C88();
  *&v26[*(v30 + 36)] = 256;
  *v18 = v23;
  *(v18 + 4) = 256;
  v31 = v36;
  sub_1A43CAB78(v19, v36);
  sub_1A43D0C3C();
  sub_1A524A784();
  (*(v38 + 8))(v31, v40);
  return sub_1A43D34C0(v18, sub_1A43D0C08);
}

uint64_t sub_1A43CDF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0134(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 88), v11, sub_1A43D0134);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A43D3458(v11, a2, type metadata accessor for LemonadeItemsLayoutSpec);
  }

  sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void sub_1A43CE114(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
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

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CE270(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1A43CE3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 100), v11, sub_1A3E71AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t LemonadeFavoritingMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v19 = type metadata accessor for LemonadeFavoritingMaterialTitleCell();
  v20 = v19[22];
  *(a9 + v20) = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v19[23];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v19[24];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v19[25];
  *(a9 + v23) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  result = swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

void LemonadeFavoritingMaterialTitleCell.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = sub_1A5243284();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41170C8();
  v46 = *(v6 - 8);
  v40 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5243B94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v14;
  v15 = *(a1 + 16);
  v64 = *(a1 + 32);
  v65 = v15;
  v16 = sub_1A5243884();
  v56 = v16;
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v38 - v17;
  WitnessTable = swift_getWitnessTable();
  v66 = v16;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v51 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v38 - v20;
  v21 = v2[2];
  v48 = v2[1];
  v43 = v21;
  v22 = v2[4];
  v47 = v2[3];
  v44 = v22;
  v42 = v2[5];
  v23 = v2[8];
  v50 = v2[7];
  v49 = v23;
  sub_1A4244368();
  v24 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F8E10;
  v26 = v25 + v24;
  v27 = v14;
  v28 = v11;
  (*(v12 + 104))(v27, *MEMORY[0x1E69C2800], v11);
  v29 = v45;
  (*(v8 + 16))(v45, v2, a1);
  v30 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v31 = swift_allocObject();
  v46 = *(a1 + 24);
  v32 = v46;
  v33 = v64;
  *(v31 + 16) = v65;
  *(v31 + 24) = v32;
  *(v31 + 32) = v33;
  *(v31 + 40) = *(a1 + 40);
  v41 = *(a1 + 56);
  *(v31 + 56) = v41;
  (*(v8 + 32))(v31 + v30, v29, a1);
  v34 = *(v12 + 32);
  v35 = v52;
  v34(v52, v39, v28);
  v34(v26, v35, v28);
  v36 = (v26 + *(v40 + 56));
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1A43D1354;
  *(v37 + 24) = v31;
  *v36 = sub_1A4244548;
  v36[1] = v37;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A52440F4();
  v13 = sub_1A5248804();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v16 = type metadata accessor for LemonadeFavoritingMaterialTitleCell();
  sub_1A43CEF9C(v16, v15);
  v18[0] = swift_getWitnessTable();
  v18[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  return sub_1A524B8E4();
}

uint64_t sub_1A43CEF9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = sub_1A5242D14();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25[1] = *(a1 + 40);
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52440F4();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = sub_1A5248804();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v27 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = v25 - v14;
  v37 = *v2;
  swift_unknownObjectRetain();
  sub_1A5242A84();
  sub_1A52440E4();
  v15 = v26;
  sub_1A43CDF34(a1, v26);
  sub_1A43CE114(a1, &v37);
  v16 = sub_1A43CE270(a1);
  v17 = v29;
  sub_1A43CE3C4(a1, v29);
  sub_1A43A2BB4(&v37, v16 & 1, v17);
  (*(v32 + 8))(v17, v33);
  sub_1A43D34C0(v15, type metadata accessor for LemonadeItemsLayoutSpec);
  WitnessTable = swift_getWitnessTable();
  v19 = v27;
  sub_1A524B0C4();
  (*(v31 + 8))(v10, v8);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v20 = v30;
  v21 = *(v30 + 16);
  v22 = v28;
  v21(v28, v19, v11);
  v23 = *(v20 + 8);
  v23(v19, v11);
  v21(v34, v22, v11);
  return (v23)(v22, v11);
}

uint64_t sub_1A43CF3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0134(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2, v10, sub_1A43D0134);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A43D3458(v10, a1, type metadata accessor for LemonadeItemsLayoutSpec);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43CF5A0()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LemonadeImmutableFavoritedBadgeView() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A43CF6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeImmutableFavoritedBadgeView();
  sub_1A43D3538(v1 + *(v10 + 28), v9, sub_1A3E71AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
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

uint64_t LemonadeImmutableFavoritedBadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242264();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0x69662E7472616568;
  v14[1] = 0xEA00000000006C6CLL;
  (*(v11 + 104))(v14, *MEMORY[0x1E69C1D38], v10, v12);
  v42 = sub_1A5242B94();
  (*(v11 + 8))(v14, v10);
  v15 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  if (sub_1A43CF5A0())
  {
    v17 = sub_1A524A1D4();
  }

  else
  {
    v17 = sub_1A524A0F4();
  }

  v18 = v17;
  v19 = swift_getKeyPath();
  sub_1A43CF3C4(v43);
  v20 = v1 + *(type metadata accessor for LemonadeImmutableFavoritedBadgeView() + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v45 = *v20;
  }

  else
  {

    sub_1A524D254();
    v22 = sub_1A524A014();
    v37 = v15;
    v23 = v22;
    sub_1A5246DF4();

    v15 = v37;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v38 + 8))(v7, v39);
    LOBYTE(v21) = v45;
  }

  v44 = v21;
  v24 = sub_1A43CF5A0();
  v25 = v40;
  sub_1A43CF6F8(v40);
  v26 = v43;
  sub_1A43A2BB4(&v44, v24 & 1, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v41 + 8))(v25, v3);
  sub_1A43D34C0(v26, type metadata accessor for LemonadeItemsLayoutSpec);
  result = sub_1A524A064();
  *a1 = v42;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v19;
  *(a1 + 32) = v18;
  *(a1 + 40) = result;
  *(a1 + 48) = v28;
  *(a1 + 56) = v30;
  *(a1 + 64) = v32;
  *(a1 + 72) = v34;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1A43CFD18@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LemonadeImmutableFavoritedBadgeView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_1A3E71AC8(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A43CFDE8(uint64_t a1)
{
  sub_1A5243B94();
  sub_1A43D3320(&qword_1EB124D20, MEMORY[0x1E69C2818]);
  v2 = sub_1A524C4A4();
  return sub_1A43CFE7C(a1, v2);
}

unint64_t sub_1A43CFE7C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A43D3320(&qword_1EB1398F0, MEMORY[0x1E69C2818]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1A43D0054@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for LemonadeMaterialTitleCell() - 8);
  v5 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1A43CA7A8(v5, v3, a1);
}

void sub_1A43D0168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A43D01E4()
{
  if (!qword_1EB139780)
  {
    sub_1A43D0278(255);
    sub_1A43D3320(&qword_1EB139848, sub_1A43D0278);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139780);
    }
  }
}

void sub_1A43D02B4()
{
  if (!qword_1EB139798)
  {
    sub_1A43D0348(255);
    sub_1A43D3320(&qword_1EB1397F0, sub_1A43D0348);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139798);
    }
  }
}

void sub_1A43D0384(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43D12D8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A43D03E0()
{
  if (!qword_1EB1397B0)
  {
    sub_1A43D0474(255);
    sub_1A43D3320(&qword_1EB1397E0, sub_1A43D0474);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1397B0);
    }
  }
}

void sub_1A43D04A8()
{
  if (!qword_1EB1397C0)
  {
    sub_1A43D050C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1397C0);
    }
  }
}

void sub_1A43D05E4()
{
  if (!qword_1EB1397F8)
  {
    sub_1A43D2FA4(255, &qword_1EB139800, sub_1A43D0674, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1397F8);
    }
  }
}

void sub_1A43D0674()
{
  if (!qword_1EB139808)
  {
    sub_1A43D0700();
    sub_1A43D3090(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139808);
    }
  }
}

void sub_1A43D0700()
{
  if (!qword_1EB139810)
  {
    sub_1A43D2FA4(255, &qword_1EB139818, sub_1A43D07B8, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43D08F8(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139810);
    }
  }
}

void sub_1A43D07F4()
{
  if (!qword_1EB139828)
  {
    sub_1A43D0D84(255, &qword_1EB139830, sub_1A3DF14C0, sub_1A43D0964);
    sub_1A3EE1D04();
    sub_1A43D09A0();
    sub_1A43D3320(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139828);
    }
  }
}

void sub_1A43D08F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A43D3090(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A43D09A0()
{
  result = qword_1EB139838;
  if (!qword_1EB139838)
  {
    sub_1A43D0D84(255, &qword_1EB139830, sub_1A3DF14C0, sub_1A43D0964);
    sub_1A405D614();
    sub_1A43D3320(&qword_1EB139840, sub_1A43D0964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139838);
  }

  return result;
}

void sub_1A43D0B2C()
{
  if (!qword_1EB139868)
  {
    sub_1A43D0E8C(255, &qword_1EB139870, sub_1A43D0C08, sub_1A43D0C3C);
    sub_1A43D0C08(255);
    sub_1A43D0C3C();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139868);
    }
  }
}

unint64_t sub_1A43D0C3C()
{
  result = qword_1EB139880;
  if (!qword_1EB139880)
  {
    sub_1A43D0C08(255);
    sub_1A43D3320(&qword_1EB1248E8, sub_1A40EAF5C);
    sub_1A43D3320(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139880);
  }

  return result;
}

void sub_1A43D0D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A43D0DF8()
{
  if (!qword_1EB127A68)
  {
    sub_1A5243C74();
    sub_1A43D3320(&qword_1EB129010, MEMORY[0x1E69C2878]);
    v0 = sub_1A5249DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127A68);
    }
  }
}

void sub_1A43D0E8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A43D0F18()
{
  result = qword_1EB1398A0;
  if (!qword_1EB1398A0)
  {
    sub_1A43D0D50(255);
    sub_1A43D0FC8();
    sub_1A43D3320(&qword_1EB1398E0, sub_1A43D0DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398A0);
  }

  return result;
}

unint64_t sub_1A43D0FC8()
{
  result = qword_1EB1398A8;
  if (!qword_1EB1398A8)
  {
    sub_1A43D0D1C(255);
    sub_1A43D1078();
    sub_1A43D3320(&qword_1EB127A80, sub_1A3EC1EB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398A8);
  }

  return result;
}

unint64_t sub_1A43D1078()
{
  result = qword_1EB1398B0;
  if (!qword_1EB1398B0)
  {
    sub_1A43D0AF8(255);
    sub_1A43D1128();
    sub_1A43D3320(&unk_1EB1398D0, sub_1A43D0B2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398B0);
  }

  return result;
}

unint64_t sub_1A43D1128()
{
  result = qword_1EB1398B8;
  if (!qword_1EB1398B8)
  {
    sub_1A43D0ABC(255);
    sub_1A43D11A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398B8);
  }

  return result;
}

unint64_t sub_1A43D11A8()
{
  result = qword_1EB1398C0;
  if (!qword_1EB1398C0)
  {
    sub_1A43D0A80(255);
    sub_1A43D3320(&qword_1EB1398C8, sub_1A43D01E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398C0);
  }

  return result;
}

uint64_t sub_1A43D1258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43D12D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_1A43D1354()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for LemonadeFavoritingMaterialTitleCell() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1A43CEE54(v8, v1, v2, v3, v4, v5, v6);
}

unint64_t sub_1A43D1410(uint64_t a1)
{
  sub_1A41170C8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A43D320C(0, &qword_1EB120470, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A43D3538(v10, v6, sub_1A41170C8);
      result = sub_1A43CFDE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243B94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
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

uint64_t type metadata accessor for LemonadeImmutableFavoritedBadgeView()
{
  result = qword_1EB160670;
  if (!qword_1EB160670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43D173C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A43D0168(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1A43D320C(319, &qword_1EB120E10, MEMORY[0x1E69E5E28]);
          if (v4 <= 0x3F)
          {
            sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A43D1910(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  if (v5 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 + 9;
  v12 = *(v6 + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((((v12 + ((v11 + ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1, v5, *(a3 + 24));
    }

    v22 = (v11 + (((((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9;
    if (v7 == v10)
    {
      return (*(v6 + 48))(v22);
    }

    v23 = *((v12 + v22) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1A43D1B38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v8 + 64) + 7;
  v14 = ((((v13 + ((v11 + 9 + ((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 >= a3)
  {
    v18 = 0;
    if (v12 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = (a3 - v12 + 255) >> 8;
    if (v14 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v12 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v14] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v14] = 0;
      }

      else if (v18)
      {
        a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v12)
      {
        v21 = *(v6 + 56);

        v21();
      }

      else
      {
        v22 = (v11 + 9 + (((((((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11;
        if (v9 == v12)
        {
          v23 = *(v8 + 56);

          v23(v22);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = a2 - 1;
          }

          *((v13 + v22) & 0xFFFFFFFFFFFFFFF8) = v24;
        }
      }

      return;
    }
  }

  v19 = ~v12 + a2;
  bzero(a1, ((((v13 + ((v11 + 9 + ((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v14 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v14] = v20;
      }

      else
      {
        *&a1[v14] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v14] = v20;
  }
}

void sub_1A43D1E0C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A43D0168(319, &unk_1EB120C50, sub_1A43D2AD0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A43D0100(319);
      if (v2 <= 0x3F)
      {
        sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5243284();
          if (v4 <= 0x3F)
          {
            sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A43D0168(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A43D0168(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem();
                      sub_1A524CB74();
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_1A43D20C0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(a3 + 16);
  v54 = *(v46 - 8);
  v3 = *(v54 + 84);
  v41 = sub_1A52429A4();
  v4 = *(v41 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v51 = v3;
  v44 = v6;
  if (v3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v43 = sub_1A5243284();
  v8 = *(v43 - 8);
  v42 = *(v8 + 84);
  if (v7 <= v42)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  v45 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1A5242D14() - 8);
  v50 = *(v11 + 80);
  v12 = ((v50 + 16) & ~v50) + *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v49 = v12;
  v47 = *(sub_1A5244084() - 8);
  v13 = *(v47 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v48 = v13;
  v14 = *(sub_1A5247E04() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v54 + 64);
  v17 = *(v4 + 80);
  if (v5)
  {
    v18 = *(v4 + 64);
  }

  else
  {
    v18 = *(v4 + 64) + 1;
  }

  v19 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v20 = v17 + 8;
  v21 = v18 + 7;
  v22 = v19 + 16;
  v23 = a1;
  if (v10 < a2)
  {
    v24 = *(v47 + 80) & 0xF8 | 7;
    v25 = *(v14 + 80) & 0xF8 | 7;
    v26 = ((v15 + ((v48 + v25 + ((v24 + ((v49 + ((v50 + ((*(v8 + 64) + ((v22 + ((v21 + ((v20 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v50 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v24) + 1) & ~v25) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = v26 & 0xFFFFFFF8;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = a2 - v10 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v30)
    {
      v31 = *(a1 + v26);
      if (v31)
      {
LABEL_38:
        v32 = v31 - 1;
        if (v27)
        {
          v32 = 0;
          LODWORD(v27) = *a1;
        }

        return v10 + (v27 | v32) + 1;
      }
    }
  }

  if (v51 == v10)
  {
    v34 = v46;
    v35 = *(v54 + 48);
    v36 = v51;
LABEL_47:

    return v35(v23, v36, v34);
  }

  v37 = ((((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v45 & 0x80000000) != 0)
  {
    v39 = (v37 + v20) & ~v17;
    if (v44 != v10)
    {
      v35 = *(v8 + 48);
      v23 = (v22 + ((v21 + v39) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
      v36 = v42;
      v34 = v43;
      goto LABEL_47;
    }

    if (v5 >= 2)
    {
      v40 = (*(v4 + 48))(v39, v5, v41);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = *v37;
  if (v38 >= 0xFFFFFFFF)
  {
    LODWORD(v38) = -1;
  }

  return (v38 + 1);
}

void sub_1A43D2598(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v38 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1A52429A4() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v39 = v5;
  v36 = v8;
  if (v5 <= v8)
  {
    v5 = v8;
  }

  v9 = *(sub_1A5243284() - 8);
  if (v5 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = v5;
  }

  v37 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v43 = v11;
  v12 = *(sub_1A5242D14() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 16) & ~v13) + *(v12 + 64);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  v42 = v14;
  v40 = *(sub_1A5244084() - 8);
  v15 = *(v40 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v41 = v15;
  v16 = sub_1A5247E04();
  v17 = v7;
  v18 = 0;
  v19 = *(v16 - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = *(v4 + 64);
  v22 = *(v6 + 80);
  v23 = *(v6 + 64);
  if (!v17)
  {
    ++v23;
  }

  v24 = v23 + 7;
  v25 = *(v9 + 80);
  v26 = *(v40 + 80) & 0xF8 | 7;
  v27 = *(v19 + 80) & 0xF8 | 7;
  v28 = ((v20 + ((v41 + v27 + ((v26 + ((v42 + ((v13 + ((*(v9 + 64) + ((v25 + 16 + ((v24 + ((v22 + 8 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v13 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v26) + 1) & ~v27) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v43 < a3)
  {
    if (((v20 + ((v41 + v27 + ((v26 + ((v42 + ((v13 + ((*(v9 + 64) + ((v25 + 16 + ((v24 + ((v22 + 8 + ((((v21 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v22)) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) + 8) & (v13 & 0xF8 ^ 0xFFFFFFF8)) + 24) & 0xFFFFFFF8) + 9) & ~v26) + 1) & ~v27) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v43 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v18 = v30;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 > v43)
  {
    if (v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v43;
    }

    if (v28)
    {
      bzero(a1, v28);
      *a1 = ~v43 + a2;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v28) = v31;
      }

      else
      {
        *(a1 + v28) = v31;
      }
    }

    else if (v18)
    {
      *(a1 + v28) = v31;
    }

    return;
  }

  v32 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v28) = 0;
  }

  else if (v18)
  {
    *(a1 + v28) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v39 == v43)
  {
    v33 = *(v38 + 56);
    goto LABEL_52;
  }

  v34 = ((((a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v37 & 0x80000000) != 0)
  {
    v32 = (v34 + v22 + 8) & ~v22;
    if (v36 != v43)
    {
      v33 = *(v9 + 56);
      v32 = (v25 + 16 + ((v24 + v32) & 0xFFFFFFFFFFFFFFF8)) & ~v25;

      goto LABEL_69;
    }

    if (v17 < 2)
    {
      return;
    }

    v33 = *(v6 + 56);
LABEL_52:

LABEL_69:
    v33(v32);
    return;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v35 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v35 = a2 - 1;
  }

  *v34 = v35;
}

void sub_1A43D2B24()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A43D0168(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v3 <= 0x3F)
        {
          sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A43D0168(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
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
}

void sub_1A43D2D90()
{
  sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A43D0168(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A43D2EEC()
{
  result = qword_1EB1232F8;
  if (!qword_1EB1232F8)
  {
    sub_1A43D2FA4(255, &qword_1EB1232F0, sub_1A43D3010, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1232F8);
  }

  return result;
}

void sub_1A43D2FA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A43D3010()
{
  if (!qword_1EB1236A0)
  {
    sub_1A429B9D8();
    sub_1A43D08F8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1236A0);
    }
  }
}

void sub_1A43D3090(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A43D30E0()
{
  result = qword_1EB1236A8;
  if (!qword_1EB1236A8)
  {
    sub_1A43D3010();
    sub_1A3E7440C();
    sub_1A43D3180(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236A8);
  }

  return result;
}

uint64_t sub_1A43D3180(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A43D08F8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43D31D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A43D320C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243B94();
    v7 = sub_1A3D712CC();
    v8 = sub_1A43D3320(&qword_1EB124D20, MEMORY[0x1E69C2818]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A43D32C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D3320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A43D3368(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1A43D2FA4(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1A43D33EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A43D3458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43D34C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D3538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1A43D35A4()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_1A43D3660(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A43D6410();
  sub_1A43D36AC(a1, a2 + *(v4 + 44));
}

void sub_1A43D36AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v4;
  sub_1A3E33808(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v28 - v8;
  v30 = sub_1A5243624();
  v29 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D4BD8();
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4B6C(0, &qword_1EB139938, sub_1A43D4BD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v28 - v16;
  sub_1A43D6494(0, &qword_1EB1399F8, MEMORY[0x1E697F948]);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v28 - v18;
  v19 = sub_1A524B554();
  MEMORY[0x1EEE9AC00](v19);
  sub_1A43D4B6C(0, &unk_1EB139950, sub_1A429B8A0);
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v37 = a1;
  v21 = *a1;
  swift_getKeyPath();
  *&v44 = v21;
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v22 = v21[8];
  if (v22)
  {
    v23 = v31;
    (*(v29 + 104))(v31, *MEMORY[0x1E69C2530], v30);
    v30 = v22;
    v24 = sub_1A3C5A374();
    sub_1A4308C80(v23, 0, v24 & 1, v12);
    sub_1A524BC74();
    sub_1A52481F4();
    v25 = (v12 + *(v32 + 36));
    v26 = v45;
    *v25 = v44;
    v25[1] = v26;
    v25[2] = v46;
    sub_1A43D6550();
    sub_1A524AA94();
    sub_1A43D66D0(v12, sub_1A43D4BD8);
    swift_getKeyPath();
    v47 = v21;
    sub_1A52415D4();

    swift_beginAccess();
    v27 = v21[5];
    v47 = v21[4];
    v48 = v27;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D40BC()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D4180(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = (a2 + 1);
  v18 = sub_1A43F25C8();
  v3 = sub_1A45B40EC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A45B4100();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *&v17 = sub_1A45B4114();
  LemonadeAccountViewSpecs.init(cornerRadius:buttonPadding:toggleButtonPadding:avatarSizeDimension:)(v2, v18, v3, v5, v7, v9, v10, v12, v14, v16, v17);
}

uint64_t sub_1A43D422C()
{
  sub_1A43D4A60();
  sub_1A43D4EA0(&qword_1EB139978, sub_1A43D4A60);
  return sub_1A524BA54();
}

void *sub_1A43D42E4()
{
  type metadata accessor for LemonadeUserInfoViewModel();
  v0 = swift_allocObject();
  result = sub_1A43D506C();
  qword_1EB1EB310 = v0;
  return result;
}

uint64_t sub_1A43D4324()
{
  v0 = swift_allocObject();
  sub_1A43D506C();
  return v0;
}

uint64_t *sub_1A43D435C()
{
  if (qword_1EB1827C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB310;
}

void sub_1A43D43AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43D4484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
    sub_1A52415C4();
  }
}

void sub_1A43D45D8()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D469C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43D47BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
    sub_1A52415C4();
  }
}

id sub_1A43D4910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_1A43D49DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A43D4EE8(v1);
}

uint64_t type metadata accessor for LemonadeUserInfoViewModel()
{
  result = qword_1EB1827B0;
  if (!qword_1EB1827B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43D4A60()
{
  if (!qword_1EB139918)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    sub_1A43D4C38();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139918);
    }
  }
}

void sub_1A43D4AE0()
{
  if (!qword_1EB139930)
  {
    sub_1A43D4B6C(255, &qword_1EB139938, sub_1A43D4BD8);
    sub_1A3E33808(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139930);
    }
  }
}

void sub_1A43D4B6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5249F54();
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A43D4BD8()
{
  if (!qword_1EB139940)
  {
    type metadata accessor for PersonFaceView(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139940);
    }
  }
}

unint64_t sub_1A43D4C38()
{
  result = qword_1EB139960;
  if (!qword_1EB139960)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    sub_1A43D4CD4();
    sub_1A43D4D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139960);
  }

  return result;
}

unint64_t sub_1A43D4CD4()
{
  result = qword_1EB139968;
  if (!qword_1EB139968)
  {
    sub_1A43D60A4(255, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139968);
  }

  return result;
}

unint64_t sub_1A43D4D5C()
{
  result = qword_1EB139970;
  if (!qword_1EB139970)
  {
    sub_1A43D4B6C(255, &unk_1EB139950, sub_1A429B8A0);
    sub_1A43D4E28();
    sub_1A43D4EA0(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139970);
  }

  return result;
}

unint64_t sub_1A43D4E28()
{
  result = qword_1EB1285B8;
  if (!qword_1EB1285B8)
  {
    sub_1A429B8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285B8);
  }

  return result;
}

uint64_t sub_1A43D4EA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A43D4EE8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB120550);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void *sub_1A43D506C()
{
  v1 = sub_1A524BEE4();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000012;
  v0[3] = 0x80000001A53C85C0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0x4062C00000000000;
  sub_1A5241604();
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A43D609C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_170;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A43D4EA0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A43D60A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  return v0;
}

void sub_1A43D5474(uint64_t a1)
{
  v16[1] = a1;
  v49 = *MEMORY[0x1E69E9840];
  v1 = sub_1A524BEE4();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v16[4] = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v16[3] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v16[2] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A524C674();
  v32 = v4;
  v33 = sub_1A524C674();
  v34 = v5;
  v20 = sub_1A524C674();
  v35 = v20;
  v36 = v6;
  v21 = sub_1A524C674();
  v37 = v21;
  v38 = v7;
  v22 = sub_1A524C674();
  v39 = v22;
  v40 = v8;
  v23 = sub_1A524C674();
  v41 = v23;
  v42 = v9;
  v10 = sub_1A524C674();
  v24 = v11;
  v25 = v10;
  v43 = v10;
  v44 = v11;
  v12 = sub_1A524C674();
  v26 = v13;
  v27 = v12;
  v45 = v12;
  v46 = v13;
  v14 = sub_1A524C674();
  v28 = v15;
  v29 = v14;
  v47 = v14;
  v48 = v15;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43D5EB4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeUserInfoViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A43D5F70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D5FD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D6040()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;
}

void sub_1A43D60A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43D613C()
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

unint64_t sub_1A43D61F4()
{
  result = qword_1EB139980;
  if (!qword_1EB139980)
  {
    sub_1A43D62A8();
    sub_1A43D4EA0(&qword_1EB139978, sub_1A43D4A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139980);
  }

  return result;
}

void sub_1A43D62A8()
{
  if (!qword_1EB139988)
  {
    sub_1A43D4A60();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139988);
    }
  }
}

uint64_t sub_1A43D630C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v1;
    sub_1A43D4EE8(v1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A43D6410()
{
  if (!qword_1EB1399F0)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1399F0);
    }
  }
}

void sub_1A43D6494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A43D60A4(255, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
    v7 = v6;
    sub_1A43D4B6C(255, &unk_1EB139950, sub_1A429B8A0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A43D6550()
{
  result = qword_1EB139A00;
  if (!qword_1EB139A00)
  {
    sub_1A43D4BD8();
    sub_1A43D4EA0(&qword_1EB125BC8, type metadata accessor for PersonFaceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A00);
  }

  return result;
}

uint64_t sub_1A43D6600(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A43D4B6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A43D666C(uint64_t a1, uint64_t a2)
{
  sub_1A3E33808(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43D66D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D6730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A43D4B6C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A43D678C(uint64_t a1, uint64_t a2)
{
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43D6820(uint64_t a1)
{
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A43D68B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1A43D6904(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_1A43D6990()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1A43D6AFC();
}

void (*sub_1A43D69E4(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1A43D6A74;
}

void sub_1A43D6A74(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1A43D6AFC();
  }

  free(v3);
}

uint64_t sub_1A43D6AFC()
{
  v1 = v0;
  result = (*(*v0 + 96))();
  if (result)
  {
    v3 = *(result + 200);
    v4 = result;
    type metadata accessor for PeopleUtilities();
    v5 = v3;
    v6 = sub_1A3D78460(v5);
    PeopleSorter.init(sortOrder:)(v6, &v11);
    v7 = v11;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    sub_1A3DEF040();
    sub_1A41216A8(v6, sub_1A43D700C, v8, &v11);
    v13 = v11;
    v14 = v12;
    (*(*v4 + 344))(&v13);
    v9 = [v5 px_localDefaults];
    v10 = swift_allocObject();
    swift_weakInit();

    sub_1A40E91F8(sub_1A43D7040, v10, &v11);

    swift_beginAccess();
    sub_1A42A5660(&v11, v1 + 24);
    return swift_endAccess();
  }

  return result;
}

uint64_t PeopleSorterController.deinit()
{
  swift_weakDestroy();
  sub_1A3C35B00(v0 + 24);
  return v0;
}

uint64_t PeopleSorterController.__deallocating_deinit()
{
  swift_weakDestroy();
  sub_1A3C35B00(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43D6D3C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return v0;
}

unint64_t sub_1A43D6D8C()
{
  result = qword_1EB139A08;
  if (!qword_1EB139A08)
  {
    sub_1A43D6DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A08);
  }

  return result;
}

void sub_1A43D6DE4()
{
  if (!qword_1EB129F78)
  {
    sub_1A3DEF040();
    v0 = type metadata accessor for PhotoKitItemListManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129F78);
    }
  }
}

uint64_t sub_1A43D6E3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

void (*sub_1A43D6ED0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(**v1 + 112))();
  return sub_1A3D3D728;
}

uint64_t sub_1A43D7040(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1A524C674() == a1 && v5 == a2)
    {
    }

    else
    {
      v7 = sub_1A524EAB4();

      if ((v7 & 1) == 0)
      {
      }
    }

    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A43D71A4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_171;
    _Block_copy(aBlock);

    px_dispatch_on_main_queue();
  }

  return result;
}

uint64_t sub_1A43D71A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 96))();
    if (v1)
    {
      v2 = *(v1 + 200);
      v3 = v1;
      type metadata accessor for PeopleUtilities();
      v4 = v2;
      v5 = sub_1A3D78460(v4);
      PeopleSorter.init(sortOrder:)(v5, &v10);
      v6 = v10;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      sub_1A3DEF040();
      sub_1A41216A8(v5, sub_1A43D7310, v7, &v10);

      v8 = v10;
      v9 = v11;
      (*(*v3 + 344))(&v8);
    }
  }

  return result;
}

id sub_1A43D7324()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 24) px_rootAlbumCollectionList];
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1A43D7378@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1A5243834();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5243EC4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DD800(0, &qword_1EB127FA0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  sub_1A3C4C1B4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1A5242494();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A52426F4();
  v17 = sub_1A5242704();
  v18 = v17;
  v19 = v17 >> 62;
  if ((v16 & 1) == 0)
  {
    if (v19)
    {
      result = sub_1A524E2B4();
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v22 = *(v18 + 32);
    }

LABEL_11:

    v32 = 0u;
    v33 = 0u;
    v34 = 1;
    v23 = sub_1A52429A4();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    (*(v26 + 104))(v3, *MEMORY[0x1E69C2678], v27);
    sub_1A5243ED4();
    v24 = v28;
    v25 = v30;
    (*(v28 + 16))(v8, v5, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A43DD600(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    sub_1A43DD600(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v24 + 8))(v5, v25);
  }

  if (!v19)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  sub_1A524E6F4();

  v20 = sub_1A52429A4();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1A524B414();
  sub_1A52424A4();
  (*(v13 + 16))(v8, v15, v12);
  swift_storeEnumTagMultiPayload();
  sub_1A43DD600(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
  sub_1A43DD600(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();
  return (*(v13 + 8))(v15, v12);
}

char *sub_1A43D79B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126CD0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A3D3E490((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126CD0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A3D3E490((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}