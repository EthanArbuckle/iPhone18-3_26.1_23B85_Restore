uint64_t sub_1A3FBD97C()
{
  sub_1A3FBE070(&qword_1EB1267F8, type metadata accessor for AttributeName);
  sub_1A3FBE070(&qword_1EB12FA10, type metadata accessor for AttributeName);

  return sub_1A524E7E4();
}

uint64_t sub_1A3FBDA38()
{
  sub_1A3FBE070(&qword_1EB126878, type metadata accessor for TraitKey);
  sub_1A3FBE070(&qword_1EB12FA08, type metadata accessor for TraitKey);

  return sub_1A524E7E4();
}

double sub_1A3FBDAF4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1A3FBDB00()
{
  sub_1A3FBE070(&qword_1EB12F9F0, type metadata accessor for Weight);
  sub_1A3FBE070(&qword_1EB12F9F8, type metadata accessor for Weight);
  sub_1A3FBE730();
  return sub_1A524E7E4();
}

uint64_t sub_1A3FBDBD0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v1);
}

unint64_t sub_1A3FBDC38(uint64_t a1)
{
  sub_1A524C674();
  sub_1A524EC94();
  sub_1A524C794();
  v2 = sub_1A524ECE4();

  return sub_1A3C8C008(a1, v2);
}

uint64_t sub_1A3FBDCC8()
{
  sub_1A3D5F9DC();
  if (sub_1A524E044())
  {

    return 1;
  }

  else
  {
    v1 = sub_1A524E044();

    if (v1)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1A3FBDDDC()
{
  if (!qword_1EB12F9A0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F9A0);
    }
  }
}

unint64_t sub_1A3FBDE9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FBE890(0, &unk_1EB12FA18, MEMORY[0x1E69E6EC8]);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1A3FBDC38(v6);
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

uint64_t sub_1A3FBDF9C(uint64_t a1)
{
  sub_1A3FBDDDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FBDFF8(uint64_t a1)
{
  sub_1A3FBE0B8(0, &qword_1EB1267F0, type metadata accessor for AttributeName);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FBE070(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FBE0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3FBE120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3FBE170(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_1A524E794();
    v9 = a1 + 32;

    while (1)
    {
      sub_1A3FBE824(v9, &v16, a3, a4);
      v10 = v16;
      result = sub_1A3FBDC38(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_1A3C57128(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
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

uint64_t sub_1A3FBE288()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1A52479F4();
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsAssetProvenanceViewModel()
{
  result = qword_1EB18F080;
  if (!qword_1EB18F080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FBE370()
{
  sub_1A3FBBC78(319, &qword_1EB1249D0, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A3FBE64C()
{
  result = qword_1EB19ECA0[0];
  if (!qword_1EB19ECA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19ECA0);
  }

  return result;
}

unint64_t sub_1A3FBE730()
{
  result = qword_1EB12FA00;
  if (!qword_1EB12FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FA00);
  }

  return result;
}

void sub_1A3FBE784()
{
  if (!qword_1EB1263D0)
  {
    type metadata accessor for AttributeName(255);
    sub_1A3FBE070(&qword_1EB1267F8, type metadata accessor for AttributeName);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263D0);
    }
  }
}

uint64_t sub_1A3FBE824(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3FBE0B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A3FBE890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TraitKey(255);
    v7 = v6;
    type metadata accessor for Weight(255);
    v9 = v8;
    v10 = sub_1A3FBE070(&qword_1EB126878, type metadata accessor for TraitKey);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3FBE970(void *a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v54 = a1;
  v4 = sub_1A52443F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5244414();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v48 - v13;
  v60 = *(a2 + 16);
  if (v60)
  {
    v14 = 0;
    v15 = 0;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v64 = 0;
    v65 = v17;
    v18 = *(v16 + 64);
    v58 = a2 + ((v18 + 32) & ~v18);
    v68 = (v5 + 8);
    v69 = v5 + 16;
    v51 = v18;
    v50 = (v18 + 16) & ~v18;
    v49 = (v16 + 16);
    v48 = v74;
    v57 = (v16 - 8);
    v56 = *(v16 + 56);
    v55 = v5;
    v63 = v16;
    v59 = v8;
    while (1)
    {
      v66 = v15;
      v65(v67, v58 + v56 * v15, v8, v12);
      v19 = sub_1A52443D4();
      v20 = *(v19 + 16);
      if (v20)
      {
        break;
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v8 = v59;
      if (*(v23 + 2))
      {
        v41 = sub_1A524CA14();

        v42 = v52;
        v43 = v67;
        (v65)(v52, v67, v8);
        v44 = v50;
        v45 = swift_allocObject();
        (*v49)(v45 + v44, v42, v8);
        sub_1A3C33378(v64);
        v46 = swift_allocObject();
        *(v46 + 16) = sub_1A3FBFA6C;
        *(v46 + 24) = v45;
        v74[2] = sub_1A3D78DD0;
        v74[3] = v46;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v74[0] = sub_1A3FBFB18;
        v74[1] = &block_descriptor_9_2;
        v47 = _Block_copy(aBlock);

        [v54 addChapterWithAssetUUIDs:v41 configuration:v47];
        _Block_release(v47);

        (*v57)(v43, v8);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if (v47)
        {
          __break(1u);
          return;
        }

        v64 = sub_1A3FBFA6C;
        v14 = v45;
      }

      else
      {
        (*v57)(v67, v59);
      }

      v15 = v66 + 1;
      v5 = v55;
      if (v66 + 1 == v60)
      {
        sub_1A3C33378(v64);
        return;
      }
    }

    v61 = v19;
    v62 = v14;
    v21 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    v71 = *(v5 + 16);
    v72 = v22;
    v23 = MEMORY[0x1E69E7CC0];
    v71(v7, v21, v4);
    while (1)
    {
      v24 = sub_1A52443E4();
      v26 = v25;
      v27 = [v70 uuid];
      if (v27)
      {
        v28 = v27;
        v29 = v4;
        v30 = sub_1A524C674();
        v32 = v31;

        if (v24 == v30 && v26 == v32)
        {

          v4 = v29;
LABEL_8:
          (*v68)(v7, v4);
          goto LABEL_9;
        }

        v34 = sub_1A524EAB4();

        v4 = v29;
        if (v34)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v35 = sub_1A52443E4();
      v37 = v36;
      (*v68)(v7, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1A3D3D914(0, *(v23 + 2) + 1, 1, v23);
      }

      v39 = *(v23 + 2);
      v38 = *(v23 + 3);
      if (v39 >= v38 >> 1)
      {
        v23 = sub_1A3D3D914((v38 > 1), v39 + 1, 1, v23);
      }

      *(v23 + 2) = v39 + 1;
      v40 = &v23[16 * v39];
      *(v40 + 4) = v35;
      *(v40 + 5) = v37;
LABEL_9:
      v21 += v72;
      if (!--v20)
      {

        v14 = v62;
        goto LABEL_26;
      }

      v71(v7, v21, v4);
    }
  }
}

id sub_1A3FBF068(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v56 = a3;
  v7 = sub_1A52414C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52443F4();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A5244414();
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PLStoryGetLog();
  if (!result)
  {
    goto LABEL_30;
  }

  v54 = v10;
  v17 = MEMORY[0x1E69E7CD0];
  v70 = MEMORY[0x1E69E7CD0];
  v65 = *(a1 + 16);
  v55 = result;
  if (v65)
  {
    v50 = v8;
    v51 = v7;
    v52 = a2;
    v53 = a4;
    v18 = 0;
    v19 = *(v14 + 16);
    v62 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v63 = v19;
    v20 = *(v14 + 72);
    v21 = v58;
    v64 = v14 + 16;
    v60 = (v14 + 8);
    v61 = v20;
    v22 = v57;
    v19(v57, v62, v58);
    while (1)
    {
      v23 = sub_1A52443D4();
      if (*(v23 + 16))
      {
        v24 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v66 = v23;
        (*(v59 + 16))(v13, v23 + v24, v11);
        v25 = sub_1A52443E4();
        sub_1A3C44714(&v69, v25, v26);
      }

      ++v18;
      (*v60)(v22, v21);
      if (v18 == v65)
      {
        break;
      }

      v63(v22, v62 + v61 * v18, v21);
    }

    v17 = v70;
    v27 = v55;
    a2 = v52;
    a4 = v53;
    v7 = v51;
    v8 = v50;
  }

  else
  {
    v27 = result;
  }

  v70 = v17;
  v28 = v56;
  if (*(v17 + 16))
  {
    if (([a2 count] & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    v29 = v54;
    sub_1A52413F4();
    v30 = sub_1A5241414();
    (*(v8 + 8))(v29, v7);
    v31 = [a2 objectsAtIndexes_];

    sub_1A3D435C4();
    a4 = sub_1A524CA34();

    v67 = MEMORY[0x1E69E7CD0];
    if (a4 >> 62)
    {
      goto LABEL_25;
    }

    v32 = &selRef_trashedState;
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      v68 = MEMORY[0x1E69E7CD0];
      result = [v28 v32[439]];
      if (result)
      {
        v41 = result;
        v42 = sub_1A524C674();
        v44 = v43;

        sub_1A3C57714(v42, v44);

        result = [v28 v32[439]];
        if (result)
        {
          v45 = result;

          v46 = sub_1A524C674();
          v48 = v47;

          sub_1A3C57714(v46, v48);

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    while ((a4 & 0xC000000000000001) == 0)
    {
      if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(a4 + 32);
        swift_unknownObjectRetain();
        goto LABEL_17;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v32 = &selRef_trashedState;
      if (!sub_1A524E2B4())
      {
        goto LABEL_26;
      }
    }

    v33 = MEMORY[0x1A59097F0](0, a4);
LABEL_17:
    result = [v33 uuid];
    if (result)
    {
      v34 = result;
      v35 = sub_1A524C674();
      v37 = v36;

      sub_1A3C44714(&v69, v35, v37);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a4)
  {
    v38 = sub_1A524C634();
    v39 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription(1, 0, v38);

    v40 = v39;
    *a4 = v39;
  }

  return 0;
}

uint64_t _sSo38PXStoryMemoryChapterCollectionProducerC12PhotosUICoreE07chapterD0013forGenerativeB06assets8keyAsset5errorSo0acD0_pSgSo8PHMemoryC_So09PXDisplayM11FetchResult_pSo0pM0_pSAySo7NSErrorCSgGSgtFZ_0(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  sub_1A3C56110();
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showChapterTitles];

  result = 0;
  if (v8)
  {
    v10 = sub_1A524DC54();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1A3FBF068(v11, a2, a3, a4);
    if (v12)
    {
      MEMORY[0x1EEE9AC00](v12);
      v17[2] = v11;
      v17[3] = a3;
      v13 = objc_allocWithZone(PXStoryExplicitChapterCollection);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A3FBFA64;
      *(v14 + 24) = v17;
      aBlock[4] = sub_1A3D7B4F8;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3FBFB18;
      aBlock[3] = &block_descriptor_65;
      v15 = _Block_copy(aBlock);

      v16 = [v13 initWithAssets:a2 configuration:v15];
      _Block_release(v15);

      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
      }

      else
      {
        return v16;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1A3FBFA6C(void *a1)
{
  sub_1A5244414();
  sub_1A5244404();
  v2 = sub_1A524C634();

  [a1 setLocalizedTitle_];
}

uint64_t sub_1A3FBFB1C()
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
  __swift_allocate_value_buffer(v6, qword_1EB1EB9E8);
  __swift_project_value_buffer(v6, qword_1EB1EB9E8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t sub_1A3FBFD08()
{
  sub_1A3FC2E68(0, &qword_1EB12FAE8, sub_1A3FBFF30, &type metadata for HidePeopleIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3FC2E68(0, &qword_1EB12FAF8, sub_1A3FBFF30, &type metadata for HidePeopleIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3FBFF30();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3FBFF84();
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3FC0180();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A3FBFF30()
{
  result = qword_1EB12FAF0;
  if (!qword_1EB12FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FAF0);
  }

  return result;
}

void sub_1A3FBFF84()
{
  if (!qword_1EB12FB00)
  {
    sub_1A3FBFFE4();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FB00);
    }
  }
}

void sub_1A3FBFFE4()
{
  if (!qword_1EB12FB08)
  {
    sub_1A3FC306C(255, &qword_1EB12FB10, &type metadata for PersonEntity, MEMORY[0x1E69E62F8]);
    sub_1A3FC006C();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FB08);
    }
  }
}

unint64_t sub_1A3FC006C()
{
  result = qword_1EB12FB18;
  if (!qword_1EB12FB18)
  {
    sub_1A3FC306C(255, &qword_1EB12FB10, &type metadata for PersonEntity, MEMORY[0x1E69E62F8]);
    sub_1A3FC0108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB18);
  }

  return result;
}

unint64_t sub_1A3FC0108()
{
  result = qword_1EB12FB20;
  if (!qword_1EB12FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB20);
  }

  return result;
}

void sub_1A3FC0180()
{
  if (!qword_1EB12FB28)
  {
    sub_1A3FC2E68(255, &qword_1EB12FB30, sub_1A3FC0218, &type metadata for HidePeopleIntentAction, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FB28);
    }
  }
}

unint64_t sub_1A3FC0218()
{
  result = qword_1EB12FB38;
  if (!qword_1EB12FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB38);
  }

  return result;
}

uint64_t sub_1A3FC026C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3FC0308, v5, v4);
}

uint64_t sub_1A3FC0308()
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
  sub_1A3FBFF30();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A530E900);
}

uint64_t sub_1A3FC0434()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A3FC05B4;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A3FC0550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3FC0550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FC05B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FC0624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3FC06C0, v5, v4);
}

uint64_t sub_1A3FC06C0()
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
  sub_1A3FBFF30();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A3FC1560(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A3FC0824()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A3FC09C8;
  }

  else
  {
    v5 = sub_1A3FC0958;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3FC0958()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FC09C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FC0A2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A3FC0624(a1, v5, v4);
}

uint64_t sub_1A3FC0AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A3FC1560(a1, a2, a3, a4);
}

uint64_t sub_1A3FC0BA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB19EDB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EB9E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3FC0C68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A3FC026C(a1, v5, v4);
}

uint64_t sub_1A3FC0D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3FC1A80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A3FC0D3C(uint64_t a1)
{
  v2 = sub_1A3FBFF30();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3FC0D78()
{
  sub_1A3FC2ED0(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
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

uint64_t sub_1A3FC105C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656469686E75;
  }

  else
  {
    v3 = 1701079400;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656469686E75;
  }

  else
  {
    v5 = 1701079400;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1A3FC10F8()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FC1170()
{
  sub_1A524C794();
}

uint64_t sub_1A3FC11D4()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FC1248@<X0>(char *a1@<X8>)
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

void sub_1A3FC12A8(uint64_t *a1@<X8>)
{
  v2 = 1701079400;
  if (*v1)
  {
    v2 = 0x656469686E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A3FC12E4(uint64_t a1)
{
  v2 = sub_1A3FC1A2C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A3FC1334(uint64_t a1)
{
  v2 = sub_1A3FC2B74();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A3FC1390(char a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A3FC142C(a1 & 1, v2);
}

unint64_t sub_1A3FC142C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656469686E75;
    }

    else
    {
      v6 = 1701079400;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656469686E75 : 1701079400;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
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

uint64_t sub_1A3FC1560(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1A3FC165C, v7, v6);
}

void sub_1A3FC165C()
{
  if (!(sub_1A48999B8(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3FC19D8()
{
  result = qword_1EB12FB48;
  if (!qword_1EB12FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB48);
  }

  return result;
}

unint64_t sub_1A3FC1A2C()
{
  result = qword_1EB12FB50;
  if (!qword_1EB12FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB50);
  }

  return result;
}

uint64_t sub_1A3FC1A80()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3FC2ED0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v31 - v4;
  v38 = sub_1A5240334();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FC2ED0(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v31 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v33 = sub_1A5240BB4();
  v16 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  sub_1A3FBFFE4();
  v34 = v17;
  sub_1A524C5B4();
  sub_1A5241244();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v11 + 104);
  v19(v13, v18, v10);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v19(v13, v18, v10);
  v20 = v35;
  sub_1A5240BC4();
  v21 = *(v16 + 56);
  v22 = v20;
  v23 = v33;
  v21(v20, 0, 1, v33);
  v43 = 0;
  sub_1A5240174();
  v32 = *MEMORY[0x1E695A500];
  v24 = *(v41 + 104);
  v41 += 104;
  v31 = v24;
  v25 = v37;
  v26 = v38;
  v24(v37);
  sub_1A3FC2D54(&qword_1EB12FB40, &qword_1EB12FB10, &type metadata for PersonEntity);
  sub_1A3FC19D8();
  v27 = sub_1A5240034();
  sub_1A3FC2E68(0, &qword_1EB12FB30, sub_1A3FC0218, &type metadata for HidePeopleIntentAction, MEMORY[0x1E695A1A0]);
  v21(v22, 1, 1, v23);
  v42 = 0;
  v28 = sub_1A523FDB4();
  v29 = *(*(v28 - 8) + 56);
  v29(v39, 1, 1, v28);
  v29(v40, 1, 1, v28);
  v31(v25, v32, v26);
  sub_1A3FC1A2C();
  sub_1A523FF74();
  return v27;
}

unint64_t sub_1A3FC20F8(uint64_t a1)
{
  sub_1A3FC2F34();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A3FC2F9C();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A3FC3008(v10, v6);
      v12 = *v6;
      result = sub_1A3FC1390(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5240274();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1A3FC22B8()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3FC2ED0(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A3FC2ED0(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
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
  sub_1A3FC2ED0(0, &qword_1EB12FBD8, sub_1A3FC2F34, MEMORY[0x1E69E6F90]);
  sub_1A3FC2F34();
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
  v23 = sub_1A3FC20F8(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A3FC288C()
{
  result = qword_1EB12FB58;
  if (!qword_1EB12FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB58);
  }

  return result;
}

unint64_t sub_1A3FC28E4()
{
  result = qword_1EB12FB60;
  if (!qword_1EB12FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB60);
  }

  return result;
}

unint64_t sub_1A3FC2958()
{
  result = qword_1EB12FB68;
  if (!qword_1EB12FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB68);
  }

  return result;
}

unint64_t sub_1A3FC29B0()
{
  result = qword_1EB12FB70;
  if (!qword_1EB12FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB70);
  }

  return result;
}

unint64_t sub_1A3FC2A08()
{
  result = qword_1EB12FB78;
  if (!qword_1EB12FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB78);
  }

  return result;
}

unint64_t sub_1A3FC2A60()
{
  result = qword_1EB12FB80;
  if (!qword_1EB12FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB80);
  }

  return result;
}

unint64_t sub_1A3FC2AC4()
{
  result = qword_1EB12FB88;
  if (!qword_1EB12FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB88);
  }

  return result;
}

unint64_t sub_1A3FC2B1C()
{
  result = qword_1EB12FB90;
  if (!qword_1EB12FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB90);
  }

  return result;
}

unint64_t sub_1A3FC2B74()
{
  result = qword_1EB12FB98;
  if (!qword_1EB12FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FB98);
  }

  return result;
}

unint64_t sub_1A3FC2C20()
{
  result = qword_1EB12FBA0;
  if (!qword_1EB12FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FBA0);
  }

  return result;
}

unint64_t sub_1A3FC2C78()
{
  result = qword_1EB12FBA8;
  if (!qword_1EB12FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FBA8);
  }

  return result;
}

unint64_t sub_1A3FC2CD0()
{
  result = qword_1EB12FBB0;
  if (!qword_1EB12FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FBB0);
  }

  return result;
}

uint64_t sub_1A3FC2D54(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3FC306C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3FC2DD8()
{
  result = qword_1EB12FBC8;
  if (!qword_1EB12FBC8)
  {
    sub_1A3FC2E68(255, &qword_1EB12FBD0, sub_1A3FBFF30, &type metadata for HidePeopleIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FBC8);
  }

  return result;
}

void sub_1A3FC2E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3FC2ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3FC2F34()
{
  if (!qword_1EB12FBE0)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12FBE0);
    }
  }
}

void sub_1A3FC2F9C()
{
  if (!qword_1EB12FBE8)
  {
    sub_1A5240274();
    sub_1A3FC2CD0();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FBE8);
    }
  }
}

uint64_t sub_1A3FC3008(uint64_t a1, uint64_t a2)
{
  sub_1A3FC2F34();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3FC306C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3FC30C4()
{
  sub_1A52471E4();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1A4379150();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FC3260()
{
  if (!qword_1EB1221C8)
  {
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A3FC3314(&qword_1EB125058, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1221C8);
    }
  }
}

uint64_t sub_1A3FC3314(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FC337C()
{
  if (!qword_1EB120D88)
  {
    v0 = sub_1A524C574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120D88);
    }
  }
}

void *sub_1A3FC33D4(uint64_t a1)
{
  v28 = a1;
  v27 = sub_1A5247204();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56340(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = v16 - v5;
  v24 = sub_1A5244F74();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v22);
  v21 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  MEMORY[0x1EEE9AC00](v20);
  v19 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v18 = v16 - v12;
  result = (*(**v1 + 1184))(v11);
  if (result)
  {
    v14 = (*result + 344);
    v15 = *v14;
    v16[3] = result;
    v16[2] = v15;
    v16[1] = v14;
    v15();
    v17 = *MEMORY[0x1E69C12F8];
    v16[9] = v6 + 104;
    v16[8] = v2 + 56;
    v16[6] = v2 + 16;
    v16[5] = v2 + 8;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3FC3AFC(uint64_t a1)
{
  sub_1A3C56340(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v37 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v30 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  v38 = 0;
  v14 = *v1;
  v15 = *(*v14 + 1208);
  v30[1] = *v14 + 1208;
  v31 = v14;
  v30[0] = v15;
  result = v15(v11);
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    v35 = v6 + 48;
    v20 = MEMORY[0x1E69E7CC0];
    v32 = v18;
    v33 = a1;
    while (v19 < *(v17 + 16))
    {
      v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v22 = *(v6 + 72);
      sub_1A3FC7B9C(v17 + v21 + v22 * v19, v13, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3FC4A1C(v13, a1, &v38, v5);
      sub_1A3FC7B3C(v13, type metadata accessor for GenerativeStoryAmbiguityData);
      if ((*(v6 + 48))(v5, 1, v37) == 1)
      {
        result = sub_1A3FC7CD4(v5, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
      }

      else
      {
        v23 = v34;
        sub_1A3FC7D44(v5, v34, type metadata accessor for GenerativeStoryAmbiguityData);
        sub_1A3FC7D44(v23, v36, type metadata accessor for GenerativeStoryAmbiguityData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1A3F515A0(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_1A3F515A0(v24 > 1, v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        result = sub_1A3FC7D44(v36, v20 + v21 + v25 * v22, type metadata accessor for GenerativeStoryAmbiguityData);
        v18 = v32;
        a1 = v33;
      }

      if (v18 == ++v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v27 = v31;
    v28 = (v30[0])(v26);
    v29 = sub_1A3FC7934(v28, v20);

    if (v29)
    {
    }

    else
    {
      return (*(*v27 + 1216))(v20);
    }
  }

  return result;
}

void sub_1A3FC3EF0(void *a1)
{
  v87 = a1;
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v90 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v89 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = v8;
  v82 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A524BEC4();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A524BFC4();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v67 - v13;
  v14 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v67 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v91 = &v67 - v24;
  v83 = v1;
  v25 = *v1;
  v26 = **v1;
  v92 = *(v26 + 1184);
  v93 = v26 + 1184;
  v27 = v92(v23);
  if (!v27)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v28 = (*(*v27 + 656))(v27);

  if (v28)
  {
    return;
  }

  sub_1A3C52C70(0, &qword_1EB126860);
  v29 = [swift_getObjCClassFromMetadata() sharedInstance];
  v30 = [v29 automaticallyExpandDisambiguationMenu];

  if (!v30)
  {
    return;
  }

  v31 = (v92)();
  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = (*(*v31 + 248))(v31);

  if ((v32 & 1) == 0)
  {
    v34 = (*v25 + 1208);
    v73 = *v34;
    v72 = v34;
    v35 = v73(v33);
    v36 = v35;
    v37 = *(v35 + 16);
    if (v37)
    {
      v69 = v5;
      v70 = v3;
      v71 = v2;
      v38 = 0;
      v39 = *(v15 + 80);
      v67 = ~v39;
      v68 = v39;
      v40 = v35 + ((v39 + 32) & ~v39);
      while (1)
      {
        if (v38 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1A3FC7B9C(v40 + *(v15 + 72) * v38, v19, type metadata accessor for GenerativeStoryAmbiguityData);
        LOBYTE(aBlock[0]) = v19[*(v14 + 36)];
        v95 = 1;
        if (static GenerativeStoryAmbiguityData.MenuAutoPresentationState.== infix(_:_:)(aBlock, &v95) && !*&v19[*(v14 + 32)])
        {
          break;
        }

        ++v38;
        sub_1A3FC7B3C(v19, type metadata accessor for GenerativeStoryAmbiguityData);
        if (v37 == v38)
        {

          return;
        }
      }

      v41 = v74;
      sub_1A3FC7D44(v19, v74, type metadata accessor for GenerativeStoryAmbiguityData);
      v42 = v91;
      v43 = sub_1A3FC7D44(v41, v91, type metadata accessor for GenerativeStoryAmbiguityData);
      v44 = v73(v43);
      MEMORY[0x1EEE9AC00](v44);
      *(&v67 - 2) = v42;
      v45 = sub_1A3FC5364(sub_1A3FC7DAC, (&v67 - 4), v44);

      v46 = (*(*v25 + 1216))(v45);
      v47 = (v92)(v46);
      if (!v47)
      {
        goto LABEL_22;
      }

      (*(*v47 + 256))(1);

      sub_1A3C52C70(0, &qword_1EB12B180);
      v93 = sub_1A524D474();
      v48 = v75;
      sub_1A524BFA4();
      v49 = v76;
      *v76 = 800;
      v50 = v77;
      v51 = v79;
      (*(v77 + 104))(v49, *MEMORY[0x1E69E7F38], v79);
      v52 = v84;
      MEMORY[0x1A5907370](v48, v49);
      (*(v50 + 8))(v49, v51);
      v53 = v86;
      v92 = *(v85 + 8);
      (v92)(v48, v86);
      v54 = v82;
      sub_1A3FC7B9C(v83, v82, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
      v55 = v78;
      sub_1A3FC7B9C(v42, v78, type metadata accessor for GenerativeStoryAmbiguityData);
      v56 = (*(v80 + 80) + 16) & ~*(v80 + 80);
      v57 = (v81 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v68 + v57 + 8) & v67;
      v59 = swift_allocObject();
      sub_1A3FC7D44(v54, v59 + v56, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
      v60 = v87;
      *(v59 + v57) = v87;
      sub_1A3FC7D44(v55, v59 + v58, type metadata accessor for GenerativeStoryAmbiguityData);
      aBlock[4] = sub_1A3FC7E40;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_66;
      v61 = _Block_copy(aBlock);
      v62 = v60;

      v63 = v88;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3FC3314(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C56340(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v64 = v90;
      v65 = v71;
      sub_1A524E224();
      v66 = v93;
      MEMORY[0x1A5908790](v52, v63, v64, v61);
      _Block_release(v61);

      (*(v70 + 8))(v64, v65);
      (*(v89 + 8))(v63, v69);
      (v92)(v52, v53);
      sub_1A3FC7B3C(v91, type metadata accessor for GenerativeStoryAmbiguityData);
    }

    else
    {
    }
  }
}

uint64_t sub_1A3FC4A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v75 = a4;
  v76 = a2;
  v79 = a1;
  sub_1A3FC7C04(0, &qword_1EB124A30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69DBEB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v11 = sub_1A5247204();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v73 = (&v67 - v20);
  v21 = MEMORY[0x1E69DBEC0];
  sub_1A3C56340(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v67 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v69 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  v31 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v71 = v31[5];
  sub_1A3FC7C54(v79 + v71, v30, &unk_1EB128BE8, v21);
  v74 = v12;
  v32 = *(v12 + 48);
  v81 = v11;
  v72 = v32;
  LODWORD(v11) = v32(v30, 1, v11);
  sub_1A3FC7CD4(v30, &unk_1EB128BE8, v21);
  if (v11 == 1)
  {
    sub_1A48B7378();
    v34 = v79;
    v35 = (v79 + v31[7]);
    if (v36 == *v35 && v33 == v35[1])
    {

      v37 = v81;
      v38 = v73;
LABEL_12:
      sub_1A48B71E0(*(v34 + v31[6]), *(v34 + v31[6] + 8));
      v43 = v70;
      if ((*v70 & 1) != 0 || (v84 = *(v34 + v31[9]), v83 = 0, !static GenerativeStoryAmbiguityData.MenuAutoPresentationState.== infix(_:_:)(&v84, &v83)))
      {
        v44 = *(v34 + v31[9]);
      }

      else
      {
        v44 = 1;
        *v43 = 1;
      }

      v46 = v74;
      v45 = v75;
      v47 = v69;
      (*(v74 + 16))(v69, v38, v37);
      (*(v46 + 56))(v47, 0, 1, v37);
      v82 = v44;
      sub_1A47BF4FC(v47, &v82, v45);
    }

    v42 = sub_1A524EAB4();

    v37 = v81;
    v38 = v73;
    if (v42)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  v73 = v31;
  v34 = v79;
  v39 = v81;
  if (!*(v79 + v31[8]))
  {
LABEL_8:
    v31 = v73;
    if (*(v34 + v73[10]) == 1)
    {
      v41 = v67;
      sub_1A3FC7C54(v34 + v71, v67, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
      if (v72(v41, 1, v39) == 1)
      {
        sub_1A3FC7CD4(v41, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
      }

      else
      {
        v56 = v74 + 32;
        (*(v74 + 32))(v78, v41, v39);
        result = sub_1A5247044();
        v57 = result;
        v58 = 0;
        v80 = *(result + 16);
        v74 = v6 + 16;
        v59 = (v56 - 24);
        while (v80 != v58)
        {
          if (v58 >= *(v57 + 16))
          {
            goto LABEL_33;
          }

          v60 = v77;
          (*(v6 + 16))(v77, v57 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v58++, v5);
          sub_1A5246FF4();
          v61 = _s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0();
          v62 = *v59;
          (*v59)(v16, v81);
          result = (*(v6 + 8))(v60, v5);
          if (v61)
          {

            v63 = v78;
            sub_1A5247114();
            (*(*(v73 - 1) + 56))(v75, 1, 1);
            return (v62)(v63, v81);
          }
        }

        (*v59)(v78, v81);
LABEL_29:
        v34 = v79;
        v31 = v73;
      }
    }

LABEL_30:
    v66 = v75;
    sub_1A3FC7B9C(v34, v75, type metadata accessor for GenerativeStoryAmbiguityData);
    return (*(*(v31 - 1) + 56))(v66, 0, 1, v31);
  }

  v40 = v68;
  sub_1A3FC7C54(v79 + v71, v68, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  if (v72(v40, 1, v39) == 1)
  {
    sub_1A3FC7CD4(v40, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
    goto LABEL_8;
  }

  v48 = v74 + 32;
  (*(v74 + 32))(v80, v40, v39);
  result = sub_1A5247104();
  v50 = result;
  v51 = 0;
  v52 = *(result + 16);
  v77 = (v6 + 16);
  v78 = v52;
  v53 = (v48 - 24);
  while (1)
  {
    if (v78 == v51)
    {

      v64 = v80;
      v65 = v73;
      sub_1A52470A4();
      (*(*(v65 - 1) + 56))(v75, 1, 1, v65);
      return (*v53)(v64, v81);
    }

    if (v51 >= *(v50 + 16))
    {
      break;
    }

    (*(v6 + 16))(v10, v50 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v51++, v5);
    sub_1A5246FF4();
    v54 = _s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0();
    v55 = *v53;
    (*v53)(v16, v81);
    result = (*(v6 + 8))(v10, v5);
    if (v54)
    {

      v55(v80, v81);
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1A3FC5364(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1A3FC7F1C(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A3FC7F1C(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1A3FC7D44(v9, v11 + v18 + v15 * v13, type metadata accessor for GenerativeStoryAmbiguityData);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FC550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  result = (*(**a1 + 1184))(v9);
  if (result)
  {
    (*(*result + 256))(0);

    v13 = sub_1A5247154();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0);
    sub_1A3FC7B9C(a3, v11, type metadata accessor for GenerativeStoryAmbiguityData);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D224();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17[1] = swift_slowAlloc();
      *v16 = 67109379;
      *(v16 + 4) = v13 & 1;
      *(v16 + 8) = 2085;
      sub_1A3FC7B9C(v11, v7, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A524C714();
      sub_1A3FC7B3C(v11, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3C2EF94();
    }

    return sub_1A3FC7B3C(v11, type metadata accessor for GenerativeStoryAmbiguityData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3FC57C0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A3FC580C(uint64_t *a1))(id **a1, char a2)
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
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3FC589C;
}

void sub_1A3FC589C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A3FC5918(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  v6 = OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_predictiveSuggestionByTextSuggestion;
  *(v2 + v6) = [objc_opt_self() weakToStrongObjectsMapTable];
  *(v2 + 24) = a1;
  type metadata accessor for GenerativeStoryPromptEntryViewMenuBuilder();

  *(v2 + 32) = sub_1A3F4C748(v7);
  return v2;
}

uint64_t sub_1A3FC59FC(void *a1)
{
  v2 = v1;
  sub_1A3C56340(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  PXDisplayCollectionDetailedCountsMake(v7);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1A524CC54();

  v9 = a1;
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = v9;
  sub_1A3D4D930(0, 0, v6, &unk_1A530ED08, v11);
}

uint64_t sub_1A3FC5B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = MEMORY[0x1E69E6720];
  sub_1A3C56340(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  v5[4] = swift_task_alloc();
  sub_1A3C56340(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, v6);
  v5[5] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  sub_1A3C56340(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], v6);
  v5[9] = swift_task_alloc();
  v8 = sub_1A5247204();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  sub_1A524CC54();
  v5[16] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FC5E04, v11, v10);
}

uint64_t sub_1A3FC5E04()
{
  v1 = v0[2];

  v3 = *(v1 + 24);
  if ((*(*v3 + 448))(v2))
  {
    v4 = (*(*v3 + 1208))();
    v5 = *(v4 + 16);
    if (v5)
    {
      v43 = v3;
      v6 = v0[14];
      v46 = v0[15];
      v7 = v0[11];
      v45 = *(v0[13] + 20);
      v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v44 = *(v6 + 72);
      v9 = (v7 + 48);
      v10 = (v7 + 32);
      v11 = (v7 + 8);
      do
      {
        v12 = v0[15];
        v14 = v0[9];
        v13 = v0[10];
        sub_1A3FC7B9C(v8, v12, type metadata accessor for GenerativeStoryAmbiguityData);
        sub_1A3FC7C54(v46 + v45, v14, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
        sub_1A3FC7B3C(v12, type metadata accessor for GenerativeStoryAmbiguityData);
        if ((*v9)(v14, 1, v13) == 1)
        {
          sub_1A3FC7CD4(v0[9], &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
        }

        else
        {
          v15 = v0[12];
          v16 = v0[10];
          (*v10)(v15, v0[9], v16);
          sub_1A5247114();
          (*v11)(v15, v16);
        }

        v8 += v44;
        --v5;
      }

      while (v5);

      v3 = v43;
    }

    else
    {
    }

    v17 = sub_1A5247034();
    [v17 resignFirstResponder];
  }

  v19 = v0[6];
  v18 = v0[7];
  v20 = v0[5];
  (*(*v3 + 2032))();
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    sub_1A3FC7CD4(v0[5], &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
LABEL_23:
    v32 = v0[4];
    v33 = sub_1A52470D4();
    v35 = v34;
    v36 = sub_1A5244854();
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    (*(*v3 + 1896))(v33, v35, v32);

    sub_1A3FC7CD4(v32, &qword_1EB124C88, MEMORY[0x1E69C1030]);
    goto LABEL_24;
  }

  v21 = v0[8];
  v22 = v0[6];
  v23 = sub_1A3FC7D44(v0[5], v21, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  if (*(v21 + *(v22 + 24)))
  {
    goto LABEL_14;
  }

  v25 = (*(*v3 + 1272))(v23);
  v24 = v0[8];
  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

  v26 = (v24 + *(v0[6] + 20));
  v27 = *v26;
  v28 = v26[1];
  if (v27 == (*(*v3 + 416))() && v28 == v29)
  {
  }

  else
  {
    v31 = sub_1A524EAB4();

    if ((v31 & 1) == 0)
    {
LABEL_14:
      v24 = v0[8];
LABEL_22:
      sub_1A3FC7B3C(v24, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      goto LABEL_23;
    }
  }

  v39 = sub_1A5246F04();
  v40 = sub_1A524D264();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1A3C1C000, v39, v40, "User has pending transition into a short memory, and has not modified the prompt text", v41, 2u);
    MEMORY[0x1A590EEC0](v41, -1, -1);
  }

  v42 = v0[8];

  (*(*v3 + 2072))();
  sub_1A3FC7B3C(v42, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
LABEL_24:

  v37 = v0[1];

  return v37();
}

uint64_t sub_1A3FC63E4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3FC5B60(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3FC64CC(void *a1)
{
  v2 = v1;
  sub_1A3C56340(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A524CC54();

  v8 = a1;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v2;
  v10[5] = v8;
  sub_1A3D4D930(0, 0, v6, &unk_1A530ED18, v10);
}

uint64_t sub_1A3FC662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1A5247204();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v5[12] = swift_task_alloc();
  sub_1A3C56340(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_1A3FC7C04(0, &qword_1EB124A30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69DBEB0]);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_1A524CC54();
  v5[21] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FC6898, v10, v9);
}

void sub_1A3FC6898()
{
  v1 = *(v0 + 48);

  (*(**(v1 + 24) + 416))(v2);
  sub_1A48B7378();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroyTm_17()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3FC6FD0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3FC662C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3FC7068()
{
  MEMORY[0x1A590F020](v0 + 16);

  v1 = OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FC71BC()
{
  v1 = *v0;
  type metadata accessor for GenerativeStoryPromptEntryViewRepresentable.Coordinator(0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_logger;

  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  v6 = OBJC_IVAR____TtCV12PhotosUICore43GenerativeStoryPromptEntryViewRepresentable11Coordinator_predictiveSuggestionByTextSuggestion;
  *(v2 + v6) = [objc_opt_self() weakToStrongObjectsMapTable];
  *(v2 + 24) = v1;
  type metadata accessor for GenerativeStoryPromptEntryViewMenuBuilder();

  *(v2 + 32) = sub_1A3F4C748(v7);
  return v2;
}

uint64_t sub_1A3FC72AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0) + 20);
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  v6 = *(*(v5 - 8) + 16);

  return v6(&a2[v3], v4, v5);
}

void sub_1A3FC7380(void *a1, uint64_t a2)
{
  sub_1A48B7378();
  v6 = v5;
  v7 = (**v2 + 416);
  v8 = *v7;
  if (v10 == (*v7)() && v6 == v9)
  {
  }

  else
  {
    v12 = sub_1A524EAB4();

    if ((v12 & 1) == 0)
    {
      (v8)(v13);
      sub_1A48B73E4();
    }
  }

  sub_1A48B5D14(a1, a2);
  sub_1A3FC33D4(a1);
  sub_1A3FC3AFC(a1);

  sub_1A3FC3EF0(a1);
}

void sub_1A3FC74EC()
{
  sub_1A3FC3314(&qword_1EB125060, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);

  JUMPOUT(0x1A58FF620);
}

void sub_1A3FC7568()
{
  sub_1A3FC3314(&qword_1EB125060, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);

  JUMPOUT(0x1A58FF630);
}

uint64_t sub_1A3FC75EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3FC71BC();
  *a1 = result;
  return result;
}

uint64_t sub_1A3FC7648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3FC3314(&qword_1EB125058, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3FC76DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3FC3314(&qword_1EB125058, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3FC7770()
{
  sub_1A3FC3314(&qword_1EB125058, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A3FC77F0()
{
  result = type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3FC787C()
{
  result = sub_1A5246F24();
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

uint64_t sub_1A3FC7934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A3FC7B9C(v13, v10, type metadata accessor for GenerativeStoryAmbiguityData);
        sub_1A3FC7B9C(v14, v6, type metadata accessor for GenerativeStoryAmbiguityData);
        sub_1A3FC3314(&qword_1EB12FBF0, type metadata accessor for GenerativeStoryAmbiguityData);
        v16 = sub_1A524C594();
        sub_1A3FC7B3C(v6, type metadata accessor for GenerativeStoryAmbiguityData);
        sub_1A3FC7B3C(v10, type metadata accessor for GenerativeStoryAmbiguityData);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A3FC7B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FC7B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3FC7C04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FC7C54(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56340(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3FC7CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56340(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3FC7D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FC7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (static GenerativeStoryAmbiguityData.== infix(_:_:)(a1, *(v2 + 16)))
  {
    v5 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) + 20);
    v7 = 2;
    sub_1A47BF4FC(a1 + v5, &v7, a2);
  }

  return sub_1A3FC7B9C(a1, a2, type metadata accessor for GenerativeStoryAmbiguityData);
}

uint64_t sub_1A3FC7E40()
{
  v1 = *(type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_1A3FC550C(v0 + v2, v5, v6);
}

size_t sub_1A3FC7F1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3FC7F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A3FC7F3C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C56340(0, &unk_1EB12EE68, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
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
  v15 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
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

uint64_t sub_1A3FC8138()
{
  v0 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3FC85B8();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FC8504();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249894();
  sub_1A3FC8628();
  sub_1A3FC86A0();
  sub_1A5247F24();
  v11 = sub_1A3FCAA58(&qword_1EB12FC40, sub_1A3FC85B8);
  sub_1A5248584();
  (*(v3 + 8))(v5, v2);
  v14[0] = v2;
  v14[1] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A5904CD0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

void sub_1A3FC83BC()
{
  if (!qword_1EB12FBF8)
  {
    sub_1A3E86A68();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FBF8);
    }
  }
}

void sub_1A3FC8418()
{
  if (!qword_1EB12FC00)
  {
    sub_1A3FC8504();
    sub_1A3FC85B8();
    sub_1A3FCAA58(&qword_1EB12FC40, sub_1A3FC85B8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12FC00);
    }
  }
}

void sub_1A3FC8504()
{
  if (!qword_1EB12FC08)
  {
    sub_1A3FC85B8();
    sub_1A3FCAA58(&qword_1EB12FC40, sub_1A3FC85B8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12FC08);
    }
  }
}

void sub_1A3FC85B8()
{
  if (!qword_1EB12FC10)
  {
    sub_1A3FC8628();
    sub_1A3FC86A0();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FC10);
    }
  }
}

void sub_1A3FC8628()
{
  if (!qword_1EB12FC18)
  {
    sub_1A3DC8FF0(255, &qword_1EB12FC20);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FC18);
    }
  }
}

unint64_t sub_1A3FC86A0()
{
  result = qword_1EB12FC28;
  if (!qword_1EB12FC28)
  {
    sub_1A3FC8628();
    sub_1A3FC8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FC28);
  }

  return result;
}

unint64_t sub_1A3FC8720()
{
  result = qword_1EB12FC30;
  if (!qword_1EB12FC30)
  {
    sub_1A3DC8FF0(255, &qword_1EB12FC20);
    sub_1A3FC87B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FC30);
  }

  return result;
}

unint64_t sub_1A3FC87B8()
{
  result = qword_1EB12FC38;
  if (!qword_1EB12FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FC38);
  }

  return result;
}

uint64_t sub_1A3FC880C()
{
  sub_1A3FC83BC();
  sub_1A3FC8418();
  sub_1A3FCAA58(&qword_1EB12FC48, sub_1A3FC83BC);
  sub_1A3FC8504();
  sub_1A3FC85B8();
  sub_1A3FCAA58(&qword_1EB12FC40, sub_1A3FC85B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1A524B0E4();
}

uint64_t sub_1A3FC896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A204();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 144))(v6);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    if (result)
    {
      v16 = result;
      v17 = sub_1A524C634();
      v18 = PXMemoryCreationLocalizedString(v17);

      sub_1A524C674();
      sub_1A3FCA7A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6530];
      *(v19 + 16) = xmmword_1A52F8E10;
      v21 = MEMORY[0x1E69E65A8];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      *(v19 + 32) = v16;
      v22 = sub_1A524C6C4();
      v24 = v23;
    }

    else
    {
      v25 = sub_1A524C634();
      v26 = PXMemoryCreationLocalizedString(v25);

      v22 = sub_1A524C674();
      v24 = v27;
    }

    v37[2] = v22;
    v37[3] = v24;
    sub_1A3D5F9DC();
    v28 = sub_1A524A464();
    v30 = v29;
    v32 = v31;
    sub_1A524A0E4();
    (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
    sub_1A524A234();

    (*(v5 + 8))(v8, v4);
    sub_1A524A164();
    sub_1A524A1F4();

    v11 = sub_1A524A3C4();
    v12 = v33;
    v35 = v34;
    v14 = v36;

    sub_1A3E04DF4(v28, v30, v32 & 1);

    v13 = v35 & 1;
    v15 = 257;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1A3FC8CA0()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  return v0[2];
}

uint64_t sub_1A3FC8D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A3FC8D90(uint64_t result, char a2)
{
  v4 = result;
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  v7 = v2;
  v8 = v4;
  v9 = a2 & 1;
  (*(*v2 + 296))(v6);
}

uint64_t sub_1A3FC8F20@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  (*(*v2 + 288))();

  v5 = *a1;
  swift_beginAccess();
  return sub_1A3FCADD8(v2 + v5, a2, &qword_1EB126090, MEMORY[0x1E6968278]);
}

uint64_t sub_1A3FC8FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  (*(*v5 + 288))();

  v6 = *a2;
  swift_beginAccess();
  return sub_1A3FCADD8(v5 + v6, a3, &qword_1EB126090, MEMORY[0x1E6968278]);
}

uint64_t sub_1A3FC90B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = MEMORY[0x1E6968278];
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1A3FCADD8(a1, &v12 - v9, &qword_1EB126090, v7);
  return a5(v10);
}

uint64_t sub_1A3FC91B4(uint64_t a1, uint64_t *a2)
{
  v5 = MEMORY[0x1E6968278];
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  v9 = *a2;
  swift_beginAccess();
  sub_1A3FCADD8(v2 + v9, v8, &qword_1EB126090, v5);
  LOBYTE(a2) = sub_1A3FCAEC8(v8, a1);
  sub_1A3FCAE58(v8, &qword_1EB126090, v5);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v2;
    *&v13[-8] = a1;
    (*(*v2 + 296))(v11);
  }

  else
  {
    sub_1A3FCADD8(a1, v8, &qword_1EB126090, MEMORY[0x1E6968278]);
    swift_beginAccess();
    sub_1A3FCB218(v8, v2 + v9);
    swift_endAccess();
  }

  return sub_1A3FCAE58(a1, &qword_1EB126090, MEMORY[0x1E6968278]);
}

uint64_t sub_1A3FC93D4(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousStartDate;
  v4 = sub_1A5240664();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousEndDate, 1, 1, v4);
  sub_1A5241604();
  type metadata accessor for GenerativeStoryEventAmbiguityAssetFetcher();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel_assetFetcher) = sub_1A4397C1C(a1);
  return v2;
}

uint64_t sub_1A3FC94C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v87 = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1A3FCA7A0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v68[-v7];
  v8 = sub_1A5240664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v10;
  v85 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3FCA804();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68[-v15];
  v17 = MEMORY[0x1E6968278];
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], v5);
  v79 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v68[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68[-v23];
  v80 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v68[-v28];
  v30 = v9[2];
  v83 = a1;
  v77 = v30;
  v78 = v9 + 2;
  (v30)(&v68[-v28], a1, v8, v27);
  v75 = v9[7];
  v76 = v9 + 7;
  v75(v29, 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v32 = *(*v3 + 288);
  v72 = *v3 + 288;
  v71 = v32;
  (v32)(KeyPath);

  v33 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousStartDate;
  swift_beginAccess();
  v73 = v12;
  v34 = *(v12 + 48);
  sub_1A3FCADD8(v29, v16, &qword_1EB126090, v17);
  v86 = v3;
  sub_1A3FCADD8(v3 + v33, &v16[v34], &qword_1EB126090, v17);
  v88 = v9;
  v35 = v9[6];
  if (v35(v16, 1, v8) == 1)
  {
    sub_1A3FCAE58(v29, &qword_1EB126090, MEMORY[0x1E6968278]);
    if (v35(&v16[v34], 1, v8) != 1)
    {
LABEL_14:
      v36 = v87;
      goto LABEL_15;
    }

    sub_1A3FCAE58(v16, &qword_1EB126090, MEMORY[0x1E6968278]);
    v36 = v87;
  }

  else
  {
    sub_1A3FCADD8(v16, v24, &qword_1EB126090, MEMORY[0x1E6968278]);
    if (v35(&v16[v34], 1, v8) == 1)
    {
      sub_1A3FCAE58(v29, &qword_1EB126090, MEMORY[0x1E6968278]);
LABEL_12:
      v36 = v87;
      (v88[1])(v24, v8);
LABEL_15:
      sub_1A3FCA898(v16);
      goto LABEL_16;
    }

    v37 = v88;
    v38 = v85;
    (v88[4])(v85, &v16[v34], v8);
    sub_1A3FCAA58(&qword_1EB12FC58, MEMORY[0x1E6968278]);
    v69 = sub_1A524C594();
    v39 = v37[1];
    v39(v38, v8);
    v40 = MEMORY[0x1E6968278];
    sub_1A3FCAE58(v29, &qword_1EB126090, MEMORY[0x1E6968278]);
    v39(v24, v8);
    sub_1A3FCAE58(v16, &qword_1EB126090, v40);
    v36 = v87;
    if ((v69 & 1) == 0)
    {
LABEL_16:
      v49 = v81;
      v50 = v83;
      v51 = v77;
      v52 = v86;
      v77(v81, v83, v8);
      v75(v49, 0, 1, v8);
      sub_1A3FC8EE4(v49);
      v53 = MEMORY[0x1E6968278];
      sub_1A3FCADD8(v36, v49, &qword_1EB126090, MEMORY[0x1E6968278]);
      sub_1A3FC918C(v49);
      v54 = sub_1A524CCB4();
      v55 = v84;
      (*(*(v54 - 8) + 56))(v84, 1, 1, v54);
      v56 = v36;
      v57 = v85;
      v51(v85, v50, v8);
      sub_1A3FCADD8(v56, v49, &qword_1EB126090, v53);
      sub_1A524CC54();

      v58 = sub_1A524CC44();
      v59 = v88;
      v60 = (*(v88 + 80) + 40) & ~*(v88 + 80);
      v61 = (v82 + *(v79 + 80) + v60) & ~*(v79 + 80);
      v62 = swift_allocObject();
      v63 = MEMORY[0x1E69E85E0];
      *(v62 + 2) = v58;
      *(v62 + 3) = v63;
      *(v62 + 4) = v52;
      (v59[4])(&v62[v60], v57, v8);
      sub_1A3FCA70C(v49, &v62[v61]);
      sub_1A3D4D930(0, 0, v55, &unk_1A530EF88, v62);
    }
  }

  swift_getKeyPath();
  v41 = v86;
  v71();

  v42 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousEndDate;
  swift_beginAccess();
  v43 = *(v73 + 48);
  v44 = MEMORY[0x1E6968278];
  v45 = v36;
  v46 = v74;
  sub_1A3FCADD8(v45, v74, &qword_1EB126090, MEMORY[0x1E6968278]);
  sub_1A3FCADD8(v41 + v42, &v46[v43], &qword_1EB126090, v44);
  if (v35(v46, 1, v8) == 1)
  {
    if (v35(&v46[v43], 1, v8) == 1)
    {
      return sub_1A3FCAE58(v46, &qword_1EB126090, MEMORY[0x1E6968278]);
    }

    v16 = v46;
    goto LABEL_14;
  }

  v48 = v70;
  sub_1A3FCADD8(v46, v70, &qword_1EB126090, MEMORY[0x1E6968278]);
  if (v35(&v46[v43], 1, v8) == 1)
  {
    v24 = v48;
    v16 = v46;
    goto LABEL_12;
  }

  v64 = v88;
  v65 = v85;
  (v88[4])(v85, &v46[v43], v8);
  sub_1A3FCAA58(&qword_1EB12FC58, MEMORY[0x1E6968278]);
  v66 = sub_1A524C594();
  v67 = v64[1];
  v67(v65, v8);
  v67(v48, v8);
  result = sub_1A3FCAE58(v46, &qword_1EB126090, MEMORY[0x1E6968278]);
  v36 = v87;
  if ((v66 & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1A3FC9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3FC9F64, v8, v7);
}

uint64_t sub_1A3FC9F64()
{
  v5 = (*(**(v0[2] + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel_assetFetcher) + 144) + **(**(v0[2] + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel_assetFetcher) + 144));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1A3FCA08C;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_1A3FCA08C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3FCA1B4, v4, v3);
}

uint64_t sub_1A3FCA1B4()
{
  v1 = v0[2];

  v2 = v0[9];
  v3 = v0[2];
  if ((*(v1 + 24) & 1) != 0 || v3[2] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = 0;
    (*(*v3 + 296))(KeyPath, sub_1A3FCB560, v5, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    *(v1 + 24) = 0;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A3FCA2E4()
{
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-v2];
  if (*(v0 + 24) == 1)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v9[-32] = v0;
    *&v9[-24] = 0;
    v9[-16] = 1;
    (*(*v0 + 296))(v5);
  }

  v6 = sub_1A5240664();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  sub_1A3FC8EE4(v3);
  v7(v3, 1, 1, v6);
  return sub_1A3FC918C(v3);
}

uint64_t sub_1A3FCA5F8()
{
  v1 = MEMORY[0x1E6968278];
  sub_1A3FCAE58(v0 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousStartDate, &qword_1EB126090, MEMORY[0x1E6968278]);
  sub_1A3FCAE58(v0 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel__previousEndDate, &qword_1EB126090, v1);

  v2 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryDisambiguationSelectedAssetsCountViewModel___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1A3FCA6F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1A3FCA70C(uint64_t a1, uint64_t a2)
{
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3FCA7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3FCA804()
{
  if (!qword_1EB12FC50)
  {
    sub_1A3FCA7A0(255, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12FC50);
    }
  }
}

uint64_t sub_1A3FCA898(uint64_t a1)
{
  sub_1A3FCA804();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FCA8F4()
{
  v2 = *(sub_1A5240664() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3D60150;

  return sub_1A3FC9EC8(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_1A3FCAA58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel()
{
  result = qword_1EB15BC40;
  if (!qword_1EB15BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FCAB4C()
{
  sub_1A3FCA7A0(319, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1A3FCAC60()
{
  result = qword_1EB12FC68;
  if (!qword_1EB12FC68)
  {
    sub_1A3FCACD8();
    sub_1A3FCAD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FC68);
  }

  return result;
}

void sub_1A3FCACD8()
{
  if (!qword_1EB12FC70)
  {
    sub_1A3DC8FF0(255, &qword_1EB128710);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FC70);
    }
  }
}

unint64_t sub_1A3FCAD48()
{
  result = qword_1EB128718;
  if (!qword_1EB128718)
  {
    sub_1A3DC8FF0(255, &qword_1EB128710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128718);
  }

  return result;
}

uint64_t sub_1A3FCADD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3FCA7A0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3FCAE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3FCA7A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3FCAEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968278];
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A3FCA804();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A3FCADD8(a1, v14, &qword_1EB126090, v8);
  sub_1A3FCADD8(a2, &v14[v16], &qword_1EB126090, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A3FCADD8(v14, v11, &qword_1EB126090, MEMORY[0x1E6968278]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A3FCAA58(&qword_1EB12FC58, MEMORY[0x1E6968278]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A3FCAE58(v14, &qword_1EB126090, MEMORY[0x1E6968278]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A3FCA898(v14);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A3FCAE58(v14, &qword_1EB126090, MEMORY[0x1E6968278]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A3FCB218(uint64_t a1, uint64_t a2)
{
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FCB2CC(uint64_t a1, uint64_t a2)
{
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FCB380(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  sub_1A3FCB2CC(v2, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1A3FCB3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A524A074();
  MEMORY[0x1A590D320]();
  sub_1A5247BC4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1A524A084();
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v13 = objc_opt_self();
    v14 = [v13 currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (!v15)
    {
      v16 = [v13 currentDevice];
      v17 = [v16 orientation];

      UIDeviceOrientationIsPortrait(v17);
    }
  }

  sub_1A5247BC4();
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v20;
  *(a1 + 88) = v21;
  *(a1 + 96) = 0;
}

void PXGLayout.configureSprites(_:)(void (*a1)(void))
{
  swift_getObjectType();
  a1();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FCB864@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  if (*(result + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v7 = *v6++;
      v8 = __OFADD__(v5, v7);
      v5 += v7;
      if (v8)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_9:

    *a2 = v2;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1A3FCB9C4(unint64_t result, void *a2)
{
  if (!result && HIDWORD(result) == v2[3])
  {
    v3 = v2[2];
    v40 = *(v3 + 16);
    if (!v40)
    {
      return result;
    }

    v4 = 0;
    v5 = 0;
    v6 = v2[4];
    v38 = a2[4];
    v39 = v3 + 32;
    __asm { FMOV            V8.2S, #1.0 }

    v36 = a2[2];
    v37 = a2[3];
    while (1)
    {
      sub_1A3C341C8(v39 + 40 * v5, v42);
      v12 = v43;
      v13 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v14 = (*(v13 + 8))(v12, v13);
      v15 = v4 + v14;
      if (__OFADD__(v4, v14))
      {
        goto LABEL_29;
      }

      if (v15 < v4)
      {
        break;
      }

      v41 = v4 + v14;
      if (v4 != v15)
      {
        v16 = v14;
        v17 = 0;
        v18 = v38 + 40 * v4;
        v19 = (v36 + 32 * v4);
        v20 = v37 + 160 * v4;
        while (1)
        {
          if (v16 == v17)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v23 = v43;
          v24 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v25 = (*(v24 + 232))(v23, v24);
          v25(v19, v17, v6);

          v26 = v43;
          v27 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v28 = (*(v27 + 240))(v26, v27);
          v28(v20, v19, v17, v6);

          v29 = v43;
          v30 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v31 = (*(v30 + 248))(v29, v30);
          v31(v18, v17, v6);

          v32 = *(v18 + 8);
          if (*&v32 == 0.0 && *(&v32 + 1) == 0.0)
          {
            break;
          }

LABEL_13:
          ++v17;
          v18 += 40;
          v20 += 160;
          v19 += 4;
          if (v16 == v17)
          {
            goto LABEL_5;
          }
        }

        v33 = v19[3];
        v34 = *(v18 + 1);
        LODWORD(v32) = HIDWORD(*(v18 + 8));
        [v6 displayScale];
        if (v34 <= 5)
        {
          if ((v34 - 1) < 4)
          {
            goto LABEL_11;
          }

          if (v34)
          {
            v22 = _D8;
            if (v34 != 5)
            {
              goto LABEL_26;
            }

            goto LABEL_12;
          }
        }

        else
        {
          if (v34 > 0xC)
          {
            goto LABEL_26;
          }

          if (((1 << v34) & 0x980) != 0)
          {
            goto LABEL_11;
          }

          if (((1 << v34) & 0x1600) == 0)
          {
            if (v34 != 6)
            {
              goto LABEL_26;
            }

LABEL_11:
            v21 = v35;
            v22 = vmul_n_f32(v33, v21);
LABEL_12:
            *(v18 + 8) = v22;
            goto LABEL_13;
          }
        }

        v22 = 0;
        goto LABEL_12;
      }

LABEL_5:
      ++v5;
      result = __swift_destroy_boxed_opaque_existential_0(v42);
      v4 = v41;
      if (v5 == v40)
      {
        return result;
      }
    }

LABEL_30:
    __break(1u);
  }

LABEL_26:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3FCBD80(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v3 = *(a3 + 6);
  v6 = *(a3 + 2);
  v7 = v3;
  return (*(a1 + 32))(a2, &v5);
}

uint64_t sub_1A3FCC000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  SpriteConfiguration.style(_:)(a3, v16, a1, a2, a4);
}

uint64_t SpriteConfiguration.cornerRadius(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  v14 = swift_allocObject();
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  SpriteConfiguration.style(_:)(sub_1A3FD1E8C, v14, a1, a2, a3);
}

uint64_t SpriteConfiguration.cornerRadius(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1A3FCC6A8(a1, a2, a3, a4, &unk_1F16ECB78, sub_1A3FD1E98, SpriteConfiguration.style(_:));
}

{
  return sub_1A3FCC6A8(a1, a2, a3, a4, &unk_1F16ECBC8, sub_1A3FD1EAC, SpriteConfiguration.style(_:));
}

uint64_t SpriteConfiguration.cornerRadius(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  SpriteConfiguration.style(_:)(sub_1A3FD1E9C, v8, a1, a2, a3);
}

uint64_t sub_1A3FCC34C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  a6(a5, v11, a1, a2);
}

uint64_t SpriteConfiguration.mediaVersion(_:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  SpriteConfiguration.info(_:)(sub_1A3FD1F9C, v8, a2, a3, a4);
}

uint64_t sub_1A3FCC5D0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  a7(a6, v13, a1, a2);
}

uint64_t sub_1A3FCC6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  a7(a6, v13, a3, a4);
}

uint64_t Sprite.copy(geometryModifier:styleModifier:infoModifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[3] = &type metadata for Sprite;
  a7[4] = &protocol witness table for Sprite;
  v14 = swift_allocObject();
  *a7 = v14;
  v14[7] = a6;
  v14[8] = 1;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
}

uint64_t Sprite.init(rect:mediaKind:)@<X0>(char a1@<W0>, void (**a2)(float32x2_t *a1)@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  a2[6] = 1;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  *a2 = sub_1A3FD1FF0;
  a2[1] = v12;
  a2[2] = sub_1A3FD365C;
  a2[3] = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  a2[4] = sub_1A3FD36B0;
  a2[5] = result;
  return result;
}

uint64_t sub_1A3FCC990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v8 = *v4;
  v7 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v10;
  v15[5] = v9;
  v15[6] = v12;
  v15[7] = v11;
  v15[8] = v13;
  v15[9] = sub_1A3FD3724;
  v15[10] = v14;
  a3[3] = a1;
  a3[4] = a2;
  v16 = swift_allocObject();
  *a3 = v16;
  v16[7] = v11;
  v16[8] = 1;
  v16[2] = sub_1A3FD3678;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v16[6] = v12;

  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1A3FCCAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = v5[1];
  v19 = *v5;
  v11 = v5[2];
  v10 = v5[3];
  v13 = v5[4];
  v12 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = v19;
  v16[3] = v9;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v13;
  v16[7] = v12;
  v16[8] = v14;
  v16[9] = sub_1A3FD3674;
  v16[10] = v15;
  a5[3] = a3;
  a5[4] = a4;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v12;
  v17[8] = 1;
  v17[2] = sub_1A3FD3678;
  v17[3] = v16;
  v17[4] = v11;
  v17[5] = v10;
  v17[6] = v13;

  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1A3FCCD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v15 = *(v3 + 1);
  *(v12 + 24) = v15;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;
  *(v12 + 72) = sub_1A3FD17B8;
  *(v12 + 80) = 0;
  a3[3] = a1;
  a3[4] = a2;
  v13 = swift_allocObject();
  *a3 = v13;
  v13[7] = v10;
  v13[8] = 1;
  v13[2] = v7;
  v13[3] = v15;
  v13[4] = sub_1A3FD3690;
  v13[5] = v12;
  v13[6] = v9;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCCED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = *v9;
  v17 = v9[3];
  v18 = v9[4];
  v20 = v9[5];
  v19 = v9[6];
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  v25 = *(v9 + 1);
  *(v22 + 24) = v25;
  *(v22 + 40) = v17;
  *(v22 + 48) = v18;
  *(v22 + 56) = v20;
  *(v22 + 64) = v19;
  *(v22 + 72) = a3;
  *(v22 + 80) = v21;
  a5[3] = a1;
  a5[4] = a2;
  v23 = swift_allocObject();
  *a5 = v23;
  v23[7] = v20;
  v23[8] = 1;
  v23[2] = v16;
  v23[3] = v25;
  v23[4] = a4;
  v23[5] = v22;
  v23[6] = v18;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD040@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD364C;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v11;
  v15[8] = 1;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  v14 = *v7;
  v15 = v7[3];
  v16 = v7[4];
  v17 = v7[5];
  v18 = v7[6];
  v19 = swift_allocObject();
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v23 = *(v7 + 1);
  *(v20 + 24) = v23;
  *(v20 + 40) = v15;
  *(v20 + 48) = v16;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 72) = sub_1A3FD367C;
  *(v20 + 80) = v19;
  a3[3] = a1;
  a3[4] = a2;
  v21 = swift_allocObject();
  *a3 = v21;
  v21[7] = v17;
  v21[8] = 1;
  v21[2] = v14;
  v21[3] = v23;
  v21[4] = sub_1A3FD3690;
  v21[5] = v20;
  v21[6] = v16;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD3658;
  *(v14 + 80) = v13;
  a3[3] = a1;
  a3[4] = a2;
  v15 = swift_allocObject();
  *a3 = v15;
  v15[7] = v11;
  v15[8] = 1;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>)
{
  v10 = *v6;
  v12 = v6[3];
  v11 = v6[4];
  v13 = v6[5];
  v14 = v6[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v6 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v12;
  *(v16 + 48) = v11;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = a3;
  *(v16 + 80) = v15;
  a5[3] = a1;
  a5[4] = a2;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v13;
  v17[8] = 1;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = a4;
  v17[5] = v16;
  v17[6] = v11;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = *v5;
  v11 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v5 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = sub_1A3FD3718;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v13;
  v17[8] = 1;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = sub_1A3FD3690;
  v17[5] = v16;
  v17[6] = v12;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v11 = *v7;
  v13 = v7[3];
  v12 = v7[4];
  v14 = v7[5];
  v20 = v7[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v19 = *(v7 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v13;
  *(v16 + 48) = v12;
  *(v16 + 56) = v14;
  *(v16 + 64) = v20;
  *(v16 + 72) = a5;
  *(v16 + 80) = v15;
  a7[3] = a3;
  a7[4] = a4;
  v17 = swift_allocObject();
  *a7 = v17;
  v17[7] = v14;
  v17[8] = 1;
  v17[2] = v11;
  v17[3] = v19;
  v17[4] = a6;
  v17[5] = v16;
  v17[6] = v12;

  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCD91C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  v17 = *(v4 + 3);
  *(v14 + 40) = v17;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD36AC;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v14;
  v15[8] = 1;
  v15[2] = v9;
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = v17;
  v15[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCDA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v13 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  v19 = *(v5 + 3);
  *(v16 + 40) = v19;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = sub_1A3FD36A8;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v16;
  v17[8] = 1;
  v17[2] = v11;
  v17[3] = v10;
  v17[4] = v12;
  v17[5] = v19;
  v17[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCDC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v12 = *v7;
  v11 = v7[1];
  v13 = v7[2];
  v14 = v7[5];
  v20 = v7[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  v19 = *(v7 + 3);
  *(v16 + 40) = v19;
  *(v16 + 56) = v14;
  *(v16 + 64) = v20;
  *(v16 + 72) = a5;
  *(v16 + 80) = v15;
  a7[3] = a3;
  a7[4] = a4;
  v17 = swift_allocObject();
  *a7 = v17;
  v17[7] = v16;
  v17[8] = 1;
  v17[2] = v12;
  v17[3] = v11;
  v17[4] = v13;
  v17[5] = v19;
  v17[6] = a6;

  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCDD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[3] = a7;
  a9[4] = a8;
  v16 = swift_allocObject();
  *a9 = v16;
  v16[7] = a6;
  v16[8] = 1;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
}

uint64_t SpriteGroup.init(spriteCount:mediaKind:rectAtIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[6] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *a5 = sub_1A3FD2030;
  a5[1] = v9;
  a5[2] = sub_1A3FCDF54;
  a5[3] = 0;
  result = swift_allocObject();
  *(result + 16) = a2;
  a5[4] = sub_1A3FD2034;
  a5[5] = result;
  return result;
}

__n128 sub_1A3FCDF54(_OWORD *a1)
{
  v1 = *(off_1E7722048 + 7);
  a1[6] = *(off_1E7722048 + 6);
  a1[7] = v1;
  v2 = *(off_1E7722048 + 9);
  a1[8] = *(off_1E7722048 + 8);
  a1[9] = v2;
  v3 = *(off_1E7722048 + 3);
  a1[2] = *(off_1E7722048 + 2);
  a1[3] = v3;
  v4 = *(off_1E7722048 + 5);
  a1[4] = *(off_1E7722048 + 4);
  a1[5] = v4;
  result = *off_1E7722048;
  v6 = *(off_1E7722048 + 1);
  *a1 = *off_1E7722048;
  a1[1] = v6;
  return result;
}

uint64_t SpriteGroup.copy(geometryModifier:styleModifier:infoModifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = *(v7 + 48);
  a7[3] = &type metadata for SpriteGroup;
  a7[4] = &protocol witness table for SpriteGroup;
  v16 = swift_allocObject();
  *a7 = v16;
  v16[7] = a6;
  v16[8] = v15;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
}

uint64_t sub_1A3FCE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v8 = *v4;
  v7 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v10;
  v15[5] = v9;
  v15[6] = v12;
  v15[7] = v11;
  v15[8] = v13;
  v15[9] = sub_1A3FD3724;
  v15[10] = v14;
  a3[3] = a1;
  a3[4] = a2;
  v16 = swift_allocObject();
  *a3 = v16;
  v16[7] = v11;
  v16[8] = v13;
  v16[2] = sub_1A3FD3678;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v16[6] = v12;

  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1A3FCE15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = v5[1];
  v19 = *v5;
  v11 = v5[2];
  v10 = v5[3];
  v13 = v5[4];
  v12 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = v19;
  v16[3] = v9;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v13;
  v16[7] = v12;
  v16[8] = v14;
  v16[9] = sub_1A3FD3674;
  v16[10] = v15;
  a5[3] = a3;
  a5[4] = a4;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v12;
  v17[8] = v14;
  v17[2] = sub_1A3FD3678;
  v17[3] = v16;
  v17[4] = v11;
  v17[5] = v10;
  v17[6] = v13;

  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1A3FCE3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v15 = *(v3 + 1);
  *(v12 + 24) = v15;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;
  *(v12 + 72) = sub_1A3FD17B8;
  *(v12 + 80) = 0;
  a3[3] = a1;
  a3[4] = a2;
  v13 = swift_allocObject();
  *a3 = v13;
  v13[7] = v10;
  v13[8] = v11;
  v13[2] = v7;
  v13[3] = v15;
  v13[4] = sub_1A3FD3690;
  v13[5] = v12;
  v13[6] = v9;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCE570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = *v9;
  v17 = v9[3];
  v18 = v9[4];
  v20 = v9[5];
  v19 = v9[6];
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  v25 = *(v9 + 1);
  *(v22 + 24) = v25;
  *(v22 + 40) = v17;
  *(v22 + 48) = v18;
  *(v22 + 56) = v20;
  *(v22 + 64) = v19;
  *(v22 + 72) = a3;
  *(v22 + 80) = v21;
  a5[3] = a1;
  a5[4] = a2;
  v23 = swift_allocObject();
  *a5 = v23;
  v23[7] = v20;
  v23[8] = v19;
  v23[2] = v16;
  v23[3] = v25;
  v23[4] = a4;
  v23[5] = v22;
  v23[6] = v18;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCE6DC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD364C;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v11;
  v15[8] = v12;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  v14 = *v7;
  v15 = v7[3];
  v16 = v7[4];
  v17 = v7[5];
  v18 = v7[6];
  v19 = swift_allocObject();
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v23 = *(v7 + 1);
  *(v20 + 24) = v23;
  *(v20 + 40) = v15;
  *(v20 + 48) = v16;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 72) = sub_1A3FD367C;
  *(v20 + 80) = v19;
  a3[3] = a1;
  a3[4] = a2;
  v21 = swift_allocObject();
  *a3 = v21;
  v21[7] = v17;
  v21[8] = v18;
  v21[2] = v14;
  v21[3] = v23;
  v21[4] = sub_1A3FD3690;
  v21[5] = v20;
  v21[6] = v16;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD3658;
  *(v14 + 80) = v13;
  a3[3] = a1;
  a3[4] = a2;
  v15 = swift_allocObject();
  *a3 = v15;
  v15[7] = v11;
  v15[8] = v12;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>)
{
  v10 = *v6;
  v12 = v6[3];
  v11 = v6[4];
  v13 = v6[5];
  v14 = v6[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v6 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v12;
  *(v16 + 48) = v11;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = a3;
  *(v16 + 80) = v15;
  a5[3] = a1;
  a5[4] = a2;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v13;
  v17[8] = v14;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = a4;
  v17[5] = v16;
  v17[6] = v11;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCECCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = *v5;
  v11 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v5 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = sub_1A3FD3718;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v13;
  v17[8] = v14;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = sub_1A3FD3690;
  v17[5] = v16;
  v17[6] = v12;
  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCEE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v11 = *v7;
  v13 = v7[3];
  v12 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v20 = *(v7 + 1);
  *(v17 + 24) = v20;
  *(v17 + 40) = v13;
  *(v17 + 48) = v12;
  *(v17 + 56) = v14;
  *(v17 + 64) = v15;
  *(v17 + 72) = a5;
  *(v17 + 80) = v16;
  a7[3] = a3;
  a7[4] = a4;
  v18 = swift_allocObject();
  *a7 = v18;
  v18[7] = v14;
  v18[8] = v15;
  v18[2] = v11;
  v18[3] = v20;
  v18[4] = a6;
  v18[5] = v17;
  v18[6] = v12;

  swift_retain_n();

  return swift_retain_n();
}

uint64_t sub_1A3FCEF9C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  v17 = *(v4 + 3);
  *(v14 + 40) = v17;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = sub_1A3FD36AC;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v14;
  v15[8] = v12;
  v15[2] = v9;
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = v17;
  v15[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCF110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v13 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  v19 = *(v5 + 3);
  *(v16 + 40) = v19;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 72) = sub_1A3FD36A8;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v16;
  v17[8] = v14;
  v17[2] = v11;
  v17[3] = v10;
  v17[4] = v12;
  v17[5] = v19;
  v17[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v12 = *v7;
  v11 = v7[1];
  v13 = v7[2];
  v15 = v7[5];
  v14 = v7[6];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13;
  v20 = *(v7 + 3);
  *(v17 + 40) = v20;
  *(v17 + 56) = v15;
  *(v17 + 64) = v14;
  *(v17 + 72) = a5;
  *(v17 + 80) = v16;
  a7[3] = a3;
  a7[4] = a4;
  v18 = swift_allocObject();
  *a7 = v18;
  v18[7] = v17;
  v18[8] = v14;
  v18[2] = v12;
  v18[3] = v11;
  v18[4] = v13;
  v18[5] = v20;
  v18[6] = a6;

  swift_retain_n();
  swift_retain_n();
}

uint64_t sub_1A3FCF3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = *(v9 + 48);
  a9[3] = a7;
  a9[4] = a8;
  v18 = swift_allocObject();
  *a9 = v18;
  v18[7] = a6;
  v18[8] = v17;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
}

uint64_t sub_1A3FCF480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t sub_1A3FCF4FC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *a2 = a6;
  a2[1] = v10;
  return result;
}

uint64_t sub_1A3FCF584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t sub_1A3FCF600(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *(a2 + 16) = a6;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1A3FCF688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t sub_1A3FCF704(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *(a2 + 32) = a6;
  *(a2 + 40) = v10;
  return result;
}

uint64_t DisplayAssetSpriteGroup.init(fetchResult:rectAtIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[6] = a1;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a4 = sub_1A3FD3660;
  a4[1] = result;
  a4[2] = sub_1A3FD365C;
  a4[3] = 0;
  a4[4] = sub_1A3FCF80C;
  a4[5] = 0;
  return result;
}

double sub_1A3FCF80C(uint64_t a1)
{
  result = *(off_1E7722040 + 1);
  v2 = *(off_1E7722040 + 4);
  v3 = *(off_1E7722040 + 3);
  v4 = *(off_1E7722040 + 16);
  v5 = *(off_1E7722040 + 34);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 34) = v5;
  *a1 = 512;
  return result;
}

uint64_t DisplayAssetSpriteGroup.copy(geometryModifier:styleModifier:infoModifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = *(v7 + 48);
  a7[3] = &type metadata for DisplayAssetSpriteGroup;
  a7[4] = &protocol witness table for DisplayAssetSpriteGroup;
  v16 = swift_allocObject();
  *a7 = v16;
  v16[7] = a6;
  v16[8] = v15;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  swift_unknownObjectRetain();
}

uint64_t sub_1A3FCF914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v8 = *v4;
  v7 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v10;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v12;
  v15[8] = v13;
  v15[9] = sub_1A3FD3724;
  v15[10] = v14;
  a3[3] = a1;
  a3[4] = a2;
  v16 = swift_allocObject();
  *a3 = v16;
  v16[7] = v12;
  v16[8] = v13;
  v16[2] = sub_1A3FD3678;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v16[6] = v11;

  swift_retain_n();
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FCFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = v5[1];
  v19 = *v5;
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = v19;
  v16[3] = v9;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v12;
  v16[7] = v13;
  v16[8] = v14;
  v16[9] = sub_1A3FD3674;
  v16[10] = v15;
  a5[3] = a3;
  a5[4] = a4;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v13;
  v17[8] = v14;
  v17[2] = sub_1A3FD3024;
  v17[3] = v16;
  v17[4] = v11;
  v17[5] = v10;
  v17[6] = v12;

  swift_retain_n();
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FCFCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[3];
  v9 = v3[4];
  v11 = v3[5];
  v10 = v3[6];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v15 = *(v3 + 1);
  *(v12 + 24) = v15;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  *(v12 + 64) = v10;
  *(v12 + 72) = sub_1A3FD17B8;
  *(v12 + 80) = 0;
  a3[3] = a1;
  a3[4] = a2;
  v13 = swift_allocObject();
  *a3 = v13;
  v13[7] = v11;
  v13[8] = v10;
  v13[2] = v7;
  v13[3] = v15;
  v13[4] = sub_1A3FD3690;
  v13[5] = v12;
  v13[6] = v9;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FCFE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = *v9;
  v17 = v9[3];
  v18 = v9[4];
  v20 = v9[5];
  v19 = v9[6];
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  v25 = *(v9 + 1);
  *(v22 + 24) = v25;
  *(v22 + 40) = v17;
  *(v22 + 48) = v18;
  *(v22 + 56) = v20;
  *(v22 + 64) = v19;
  *(v22 + 72) = a3;
  *(v22 + 80) = v21;
  a5[3] = a1;
  a5[4] = a2;
  v23 = swift_allocObject();
  *a5 = v23;
  v23[7] = v20;
  v23[8] = v19;
  v23[2] = v16;
  v23[3] = v25;
  v23[4] = a4;
  v23[5] = v22;
  v23[6] = v18;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FCFFE4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v12 = v4[5];
  v11 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v12;
  *(v14 + 64) = v11;
  *(v14 + 72) = sub_1A3FD364C;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v12;
  v15[8] = v11;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  v14 = *v7;
  v15 = v7[3];
  v16 = v7[4];
  v18 = v7[5];
  v17 = v7[6];
  v19 = swift_allocObject();
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v23 = *(v7 + 1);
  *(v20 + 24) = v23;
  *(v20 + 40) = v15;
  *(v20 + 48) = v16;
  *(v20 + 56) = v18;
  *(v20 + 64) = v17;
  *(v20 + 72) = sub_1A3FD367C;
  *(v20 + 80) = v19;
  a3[3] = a1;
  a3[4] = a2;
  v21 = swift_allocObject();
  *a3 = v21;
  v21[7] = v18;
  v21[8] = v17;
  v21[2] = v14;
  v21[3] = v23;
  v21[4] = sub_1A3FD3690;
  v21[5] = v20;
  v21[6] = v16;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD02EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v8 = *v4;
  v9 = v4[3];
  v10 = v4[4];
  v12 = v4[5];
  v11 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v17 = *(v4 + 1);
  *(v14 + 24) = v17;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v12;
  *(v14 + 64) = v11;
  *(v14 + 72) = sub_1A3FD3658;
  *(v14 + 80) = v13;
  a3[3] = a1;
  a3[4] = a2;
  v15 = swift_allocObject();
  *a3 = v15;
  v15[7] = v12;
  v15[8] = v11;
  v15[2] = v8;
  v15[3] = v17;
  v15[4] = sub_1A3FD3690;
  v15[5] = v14;
  v15[6] = v10;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD04A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, double a6@<D0>)
{
  v10 = *v6;
  v11 = v6[3];
  v12 = v6[4];
  v14 = v6[5];
  v13 = v6[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v6 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  *(v16 + 56) = v14;
  *(v16 + 64) = v13;
  *(v16 + 72) = a3;
  *(v16 + 80) = v15;
  a5[3] = a1;
  a5[4] = a2;
  v17 = swift_allocObject();
  *a5 = v17;
  v17[7] = v14;
  v17[8] = v13;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = a4;
  v17[5] = v16;
  v17[6] = v12;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = *v5;
  v11 = v5[3];
  v12 = v5[4];
  v14 = v5[5];
  v13 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v19 = *(v5 + 1);
  *(v16 + 24) = v19;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  *(v16 + 56) = v14;
  *(v16 + 64) = v13;
  *(v16 + 72) = sub_1A3FD3704;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v14;
  v17[8] = v13;
  v17[2] = v10;
  v17[3] = v19;
  v17[4] = sub_1A3FD3690;
  v17[5] = v16;
  v17[6] = v12;
  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v11 = *v7;
  v13 = v7[3];
  v12 = v7[4];
  v15 = v7[5];
  v14 = v7[6];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v20 = *(v7 + 1);
  *(v17 + 24) = v20;
  *(v17 + 40) = v13;
  *(v17 + 48) = v12;
  *(v17 + 56) = v15;
  *(v17 + 64) = v14;
  *(v17 + 72) = a5;
  *(v17 + 80) = v16;
  a7[3] = a3;
  a7[4] = a4;
  v18 = swift_allocObject();
  *a7 = v18;
  v18[7] = v15;
  v18[8] = v14;
  v18[2] = v11;
  v18[3] = v20;
  v18[4] = a6;
  v18[5] = v17;
  v18[6] = v12;

  swift_retain_n();

  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD08E8@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v12 = v4[5];
  v11 = v4[6];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  v17 = *(v4 + 3);
  *(v14 + 40) = v17;
  *(v14 + 56) = v12;
  *(v14 + 64) = v11;
  *(v14 + 72) = sub_1A3FD36AC;
  *(v14 + 80) = v13;
  a4[3] = a2;
  a4[4] = a3;
  v15 = swift_allocObject();
  *a4 = v15;
  v15[7] = v14;
  v15[8] = v11;
  v15[2] = v9;
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = v17;
  v15[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();

  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v14 = v5[5];
  v13 = v5[6];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  v19 = *(v5 + 3);
  *(v16 + 40) = v19;
  *(v16 + 56) = v14;
  *(v16 + 64) = v13;
  *(v16 + 72) = sub_1A3FD36A8;
  *(v16 + 80) = v15;
  a3[3] = a1;
  a3[4] = a2;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[7] = v16;
  v17[8] = v13;
  v17[2] = v11;
  v17[3] = v10;
  v17[4] = v12;
  v17[5] = v19;
  v17[6] = sub_1A3FD3670;
  swift_retain_n();
  swift_retain_n();

  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v12 = *v7;
  v11 = v7[1];
  v13 = v7[2];
  v15 = v7[5];
  v14 = v7[6];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13;
  v20 = *(v7 + 3);
  *(v17 + 40) = v20;
  *(v17 + 56) = v15;
  *(v17 + 64) = v14;
  *(v17 + 72) = a5;
  *(v17 + 80) = v16;
  a7[3] = a3;
  a7[4] = a4;
  v18 = swift_allocObject();
  *a7 = v18;
  v18[7] = v17;
  v18[8] = v14;
  v18[2] = v12;
  v18[3] = v11;
  v18[4] = v13;
  v18[5] = v20;
  v18[6] = a6;

  swift_retain_n();
  swift_retain_n();

  return swift_unknownObjectRetain_n();
}

uint64_t sub_1A3FD0D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = *(v9 + 48);
  a9[3] = a7;
  a9[4] = a8;
  v18 = swift_allocObject();
  *a9 = v18;
  v18[7] = a6;
  v18[8] = v17;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  swift_unknownObjectRetain();
}

uint64_t NullSprite.geometryModifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NullSprite.styleModifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NullSprite.infoModifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NullSprite.copy(geometryModifier:styleModifier:infoModifier:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = v1[6];
  a1[3] = &type metadata for NullSprite;
  a1[4] = &protocol witness table for NullSprite;
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = *(v1 + 1);
  *(v6 + 40) = *(v1 + 3);
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
}

void NullSprite.init()(void *a1@<X8>)
{
  a1[5] = 0;
  a1[6] = 1;
  *a1 = sub_1A3FD0F40;
  a1[1] = 0;
  a1[2] = sub_1A3FD0F4C;
  a1[3] = 0;
  a1[4] = sub_1A3FD0F84;
}

double sub_1A3FD0F40(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_1A3FD0F4C(_OWORD *a1)
{
  v1 = *(off_1E7722048 + 7);
  a1[6] = *(off_1E7722048 + 6);
  a1[7] = v1;
  v2 = *(off_1E7722048 + 9);
  a1[8] = *(off_1E7722048 + 8);
  a1[9] = v2;
  v3 = *(off_1E7722048 + 3);
  a1[2] = *(off_1E7722048 + 2);
  a1[3] = v3;
  v4 = *(off_1E7722048 + 5);
  a1[4] = *(off_1E7722048 + 4);
  a1[5] = v4;
  result = *off_1E7722048;
  v6 = *(off_1E7722048 + 1);
  *a1 = *off_1E7722048;
  a1[1] = v6;
  *a1 = 0;
  return result;
}

uint64_t sub_1A3FD0F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[5];
  v7 = v3[6];
  a3[3] = a1;
  a3[4] = a2;
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = *(v3 + 1);
  *(v8 + 40) = *(v3 + 3);
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
}

uint64_t sub_1A3FD1034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[5];
  v7 = v3[6];
  a3[3] = a1;
  a3[4] = a2;
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = *(v3 + 1);
  *(v8 + 40) = *(v3 + 3);
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
}

uint64_t sub_1A3FD10D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[5];
  v7 = v3[6];
  a3[3] = a1;
  a3[4] = a2;
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = *(v3 + 1);
  *(v8 + 40) = *(v3 + 3);
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
}

uint64_t sub_1A3FD1174()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A3FD11A4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A3FD11D4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A3FD1204@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[5];
  v7 = v3[6];
  a3[3] = a1;
  a3[4] = a2;
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = *(v3 + 1);
  *(v8 + 40) = *(v3 + 3);
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
}

void *SpriteConfiguration.nullIf(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (a1())
  {
    a4[3] = &type metadata for NullSprite;
    a4[4] = &protocol witness table for NullSprite;
    result = swift_allocObject();
    *a4 = result;
    result[7] = 0;
    result[8] = 1;
    result[2] = sub_1A3FD0F40;
    result[3] = 0;
    result[4] = sub_1A3FD0F4C;
    result[5] = 0;
    result[6] = sub_1A3FD0F84;
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    v10 = *(*(a2 - 8) + 16);

    return v10(boxed_opaque_existential_1, v4, a2);
  }

  return result;
}

uint64_t SpriteConfiguration.geometry(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v5, v12);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v13, a3);
  v17 = (v16 + v15);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(a4 + 240);

  v19 = v18(a3, a4);
  v21 = v20;
  v22 = (*(a4 + 248))(a3, a4);
  (*(a4 + 256))(sub_1A3FD2110, v16, v19, v21, v22, v23, a3, a4);
}

uint64_t SpriteConfiguration.style(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (*(v13 + 232))(v14, v13, v11);
  v16 = v15;
  (*(v9 + 16))(v12, v5, a3);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v9 + 32))(v19 + v17, v12, a3);
  v20 = (v19 + v18);
  *v20 = v27;
  v20[1] = a2;
  v21 = *(a4 + 248);

  v22 = v21(a3, a4);
  (*(a4 + 256))(v26, v16, sub_1A3FD2200, v19, v22, v23, a3, a4);
}

void sub_1A3FD17B8(uint64_t a1)
{
  PXDisplayCollectionDetailedCountsMake(a1);
  PXDisplayCollectionDetailedCountsMake(v1);
  sub_1A524D9D4();
}

uint64_t sub_1A3FD1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a3);
  if (result)
  {
    PXDisplayCollectionDetailedCountsMake(result);
    PXDisplayCollectionDetailedCountsMake(v5);
    sub_1A524D9D4();
  }

  return result;
}

uint64_t sub_1A3FD18F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  a6(a5, v11, a2, a3);
}

uint64_t SpriteConfiguration.info(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v12 + 232))(v13, v12, v10);
  v15 = v14;
  v26 = (*(a4 + 240))(a3, a4);
  v17 = v16;
  (*(v8 + 16))(v11, v5, a3);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  (*(v8 + 32))(v20 + v18, v11, a3);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v23 = *(a4 + 256);

  v23(v27, v15, v26, v17, sub_1A3FD23C8, v20, a3, a4);
}

double static PXGLayout.convertSpriteZPositionFromLayout(spriteZPosition:layout:)(void *a1, double a2)
{
  v2 = -a2;
  [a1 referenceDepth];
  return v2 / v3;
}

uint64_t static PXGLayout.defaultMediaTargetSizeForMediaKind(_:spriteSize:displayScale:)(uint64_t result)
{
  if (result <= 5u)
  {
    if (result - 1 >= 4 && result)
    {
      if (result == 5)
      {
        __asm { FMOV            V0.2S, #1.0 }

        return result;
      }

      goto LABEL_12;
    }
  }

  else if (result > 0xCu || ((1 << result) & 0x980) == 0 && ((1 << result) & 0x1600) == 0 && result != 6)
  {
LABEL_12:
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t static SpriteBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_1A3FD3410(0, &unk_1EB12FC80, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  sub_1A3C341C8(a1, v2 + 32);
  return v2;
}

char *sub_1A3FD1D1C(char *a1, int64_t a2, char a3)
{
  result = sub_1A3FD24B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_1A3FD1D3C(uint64_t a1, int a2, id a3)
{
  v5 = *(v3 + 16);
  [a3 referenceDepth];
  result = -(v6 * v5);
  *(a1 + 16) = result;
  return result;
}

float sub_1A3FD1D84(float *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

float sub_1A3FD1D94(float *a1, uint64_t a2, uint64_t a3)
{
  result = (*(v3 + 16))(a3);
  *a1 = result;
  return result;
}

float sub_1A3FD1DCC(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 60) = result;
  return result;
}

float sub_1A3FD1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(v3 + 16))(a3);
  *(a1 + 60) = result;
  return result;
}

float64x2_t sub_1A3FD1E14(uint64_t a1)
{
  result = v1[2];
  *(a1 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(v1[1]), result);
  return result;
}

float64x2_t sub_1A3FD1E34(uint64_t a1)
{
  result = v1[2];
  *(a1 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(v1[1]), result);
  return result;
}

uint64_t sub_1A3FD1E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(v3 + 16))(a3);
  *(a1 + 70) = result;
  return result;
}

__n128 sub_1A3FD1E8C(uint64_t a1)
{
  result = v1[1];
  *(a1 + 36) = result;
  return result;
}

float32x4_t sub_1A3FD1E9C(uint64_t a1)
{
  v2 = (v1 + 16);
  result = vld1q_dup_f32(v2);
  *(a1 + 36) = result;
  return result;
}

int32x4_t sub_1A3FD1EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vdupq_lane_s32(COERCE_INT32X2_T((*(v3 + 16))(a3)), 0);
  *(a1 + 36) = result;
  return result;
}

float sub_1A3FD1EE4(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 56) = result;
  return result;
}

float sub_1A3FD1EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(v3 + 16))(a3);
  *(a1 + 56) = result;
  return result;
}

float32x2_t sub_1A3FD1F2C(float32x2_t *a1)
{
  result = vcvt_f32_f64(v1[1]);
  a1[9] = result;
  return result;
}

uint64_t sub_1A3FD1F40(_BYTE *a1, uint64_t a2)
{
  result = (*(v2 + 16))(a2);
  a1[1] = result;
  if (result > 0xCu)
  {
    v5 = 0;
  }

  else
  {
    v5 = algn_1A530F574[result + 2];
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1A3FD1FA8(uint64_t a1, uint64_t a2)
{
  result = (*(v2 + 16))(a2);
  *(a1 + 32) = result;
  return result;
}

float32x2_t sub_1A3FD1FDC(float32x2_t *a1)
{
  result = vcvt_f32_f64(v1[1]);
  a1[1] = result;
  return result;
}

uint64_t sub_1A3FD2034(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(off_1E7722040 + 4);
  v4 = *(off_1E7722040 + 3);
  v5 = *(off_1E7722040 + 16);
  v6 = *(off_1E7722040 + 34);
  *(result + 8) = *(off_1E7722040 + 1);
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = v5;
  *(result + 34) = v6;
  *(result + 1) = v2;
  if (v2 > 0xC)
  {
    *result = 0;
  }

  else
  {
    *result = algn_1A530F574[v2 + 2];
  }

  return result;
}

uint64_t objectdestroy_83Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3FD2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + ((*(*(*(v3 + 16) - 8) + 64) + ((*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = (*(*(v3 + 24) + 232))();
  v8(a1, a2, a3);

  return v7(a1, a2, a3);
}

uint64_t sub_1A3FD2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + ((*(*(*(v4 + 16) - 8) + 64) + ((*(*(*(v4 + 16) - 8) + 80) + 32) & ~*(*(*(v4 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = (*(*(v4 + 24) + 240))();
  v10(a1, a2, a3, a4);

  return v9(a1, a2, a3, a4);
}

_BYTE *sub_1A3FD2304(_BYTE *result)
{
  v2 = *(v1 + 16);
  result[1] = v2;
  if (v2 > 0xC)
  {
    *result = 0;
  }

  else
  {
    *result = algn_1A530F574[v2 + 2];
  }

  return result;
}

uint64_t objectdestroy_111Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3FD23C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + ((*(*(*(v3 + 16) - 8) + 64) + ((*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = (*(*(v3 + 24) + 248))();
  v8(a1, a2, a3);

  return v7(a1, a2, a3);
}

char *sub_1A3FD24B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3FD35E4(0, &qword_1EB1261E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t _s12PhotosUICore13SpriteBuilderV10buildArrayySayAA0C13Configuration_pGSayAFGFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));

  sub_1A3FD3398(v4);
  v2 = *(v1 + 24);
  if (v2 >= 2)
  {
    *(v1 + 16) = v2 >> 1;
  }

  return v1;
}

unint64_t sub_1A3FD285C()
{
  result = qword_1EB138D90;
  if (!qword_1EB138D90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB138D90);
  }

  return result;
}

uint64_t dispatch thunk of SpriteConfiguration.cornerRadius(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 128))();
}

{
  return (*(a2 + 144))();
}

uint64_t dispatch thunk of SpriteConfiguration.cornerRadius(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 136))();
}

{
  return (*(a4 + 152))();
}

uint64_t sub_1A3FD2B74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3FD2BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3FD2C3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3FD2C5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1A3FD2CE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3FD2D04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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

  *(result + 160) = v3;
  return result;
}

__n128 __swift_memcpy32_1(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A3FD2E38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A3FD2E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1A3FD2F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v9 = a2;
  v10 = a1;
  v7 = a4;
  v8 = a3;
  return v5(&v10, &v9, &v8, &v7);
}

uint64_t sub_1A3FD2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t objectdestroy_301Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

float32x2_t sub_1A3FD3080(float32x2_t *a1, uint64_t a2)
{
  v4.f64[0] = (*(v2 + 16))(a2);
  v4.f64[1] = v5;
  result = vcvt_f32_f64(v4);
  a1[1] = result;
  return result;
}

uint64_t sub_1A3FD30BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 72);
  (*(v3 + 48))();
  return v7(a1, a2, a3);
}

float32x2_t sub_1A3FD311C(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v5.f64[0] = (*(v3 + 16))(a3);
  v5.f64[1] = v6;
  result = vcvt_f32_f64(v5);
  a1[9] = result;
  return result;
}

void sub_1A3FD3158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 36) = (*(v3 + 16))(a3);
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;
  *(a1 + 48) = v7;
}

float32x4_t sub_1A3FD3190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.f64[0] = (*(v3 + 16))(a3);
  v7.f64[1] = v6;
  v5.f64[1] = v8;
  result = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v7);
  *(a1 + 4) = result;
  return result;
}

float32x4_t sub_1A3FD31D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.f64[0] = (*(v3 + 16))(a3);
  v7.f64[1] = v6;
  v5.f64[1] = v8;
  result = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v7);
  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1A3FD3218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 72);
  (*(v4 + 32))();
  return v9(a1, a2, a3, a4);
}

double sub_1A3FD3288(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + 16))(a2);
  [a3 referenceDepth];
  result = -(v7 * v6);
  *(a1 + 16) = result;
  return result;
}

uint64_t objectdestroy_538Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A3FD3338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 72);
  (*(v3 + 16))();
  return v7(a1, a2, a3);
}

uint64_t sub_1A3FD3398(uint64_t a1)
{
  sub_1A3FD3410(0, &unk_1EB12FD48, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3FD3410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3FD285C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy24_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A3FD3510(uint64_t a1, int a2)
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

uint64_t sub_1A3FD3530(uint64_t result, int a2, int a3)
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

void sub_1A3FD35E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FD3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3FD3874();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A3FD378C()
{
  sub_1A3FD37CC();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A3FD37CC()
{
  result = qword_1EB15AE60[0];
  if (!qword_1EB15AE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AE60);
  }

  return result;
}

unint64_t sub_1A3FD3874()
{
  result = qword_1EB126D80;
  if (!qword_1EB126D80)
  {
    sub_1A3FD38E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D80);
  }

  return result;
}

void sub_1A3FD38E4()
{
  if (!qword_1EB126D90)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126D90);
    }
  }
}

uint64_t sub_1A3FD39AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1A5244384();
  sub_1A5244374();
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_1A3FD3A10(uint64_t (*a1)(void))
{
  sub_1A5244384();
  sub_1A5244374();
  LOBYTE(a1) = a1();

  return a1 & 1;
}

uint64_t static PXOneUpSpatialPhotoBadgeStateModel.notificationName3DBadgeToggled()()
{
  sub_1A5244384();
  v0 = sub_1A5244344();
  v1 = sub_1A524C674();

  return v1;
}

uint64_t sub_1A3FD3B0C(unsigned int *a1)
{
  v2 = sub_1A5244304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5244384();
  sub_1A5244374();
  (*(v3 + 104))(v5, *a1, v2);
  sub_1A5244364();
}

uint64_t sub_1A3FD3C04(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_1A5244304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5244384();
  sub_1A5244374();
  (*(v5 + 104))(v7, *a3, v4);
  sub_1A5244364();
}

uint64_t static PXOneUpSpatialPhotoBadgeStateModel.forceAnimation()()
{
  sub_1A5244384();
  sub_1A5244374();
  sub_1A5244324();
}

uint64_t static PXOneUpSpatialPhotoBadgeStateModel.toggle()()
{
  v0 = sub_1A5244304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_1A5244384();
  sub_1A5244374();
  sub_1A5244354();

  v12 = *(v1 + 16);
  v12(v8, v11, v0);
  v13 = (*(v1 + 88))(v8, v0);
  v14 = *MEMORY[0x1E69C2E48];
  if (v13 == v14)
  {
    [swift_getObjCClassFromMetadata() checkAvailability];
    return (*(v1 + 8))(v11, v0);
  }

  if (v13 == *MEMORY[0x1E69C2E38] || v13 == *MEMORY[0x1E69C2E50])
  {
    if (qword_1EB19F4F0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246F24();
    __swift_project_value_buffer(v16, qword_1EB19F4F8);
    v12(v3, v11, v0);
    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v19 = 136446210;
      v12(v24, v3, v0);
      sub_1A524C714();
      (*(v1 + 8))(v3, v0);
      sub_1A3C2EF94();
    }

    v21 = *(v1 + 8);
    v21(v3, v0);
    return (v21)(v11, v0);
  }

  else
  {
    if (v13 == *MEMORY[0x1E69C2E40])
    {
      sub_1A5244374();
      (*(v1 + 104))(v24, v14, v0);
      sub_1A5244364();

      return (*(v1 + 8))(v11, v0);
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1A524E404();

    v25 = 0xD000000000000012;
    v26 = 0x80000001A53C0C30;
    v12(v24, v11, v0);
    v22 = sub_1A524C714();
    MEMORY[0x1A5907B60](v22);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A3FD4264()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB19F4F8);
  __swift_project_value_buffer(v0, qword_1EB19F4F8);
  sub_1A5246EF4();
}

PXOneUpSpatialPhotoBadgeStateModel __swiftcall PXOneUpSpatialPhotoBadgeStateModel.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PXOneUpSpatialPhotoBadgeStateModel()
{
  result = qword_1EB157C50[0];
  if (!qword_1EB157C50[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB157C50);
  }

  return result;
}

uint64_t sub_1A3FD4988()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A3FD4A04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FD4A50(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1A3FD4AA4(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 176))();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3FD4B44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*sub_1A3FD4BA8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeWallpaperModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3FD5274(&qword_1EB12A108);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A3FD4CD0;
}

void sub_1A3FD4CD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeWallpaperModel()
{
  result = qword_1EB186830;
  if (!qword_1EB186830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FD4DB0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1A3FD4E00()
{
  (*(*v0 + 120))();
  v1 = sub_1A4103C6C();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A3FD4F80()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeWallpaperModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3FD505C()
{
  result = qword_1EB12A190;
  if (!qword_1EB12A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A190);
  }

  return result;
}

uint64_t sub_1A3FD50C8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 120))();
  *a1 = result;
  return result;
}

void (*sub_1A3FD5138(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 136))();
  return sub_1A3D3D728;
}

uint64_t sub_1A3FD5274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeWallpaperModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3FD52BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A3FD5310()
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

uint64_t sub_1A3FD53DC()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EBA08);
  __swift_project_value_buffer(v1, qword_1EB1EBA08);
  return sub_1A5247734();
}

uint64_t sub_1A3FD5478(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_1A3FD5578()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EBA20);
  __swift_project_value_buffer(v1, qword_1EB1EBA20);
  return sub_1A5247734();
}

uint64_t sub_1A3FD5614@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_1A5240A74();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB7AE0(0, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  sub_1A3CB90A8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB90EC();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB95E4();
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB0A78(&qword_1EB12B038, sub_1A3CB90A8);
  sub_1A5240AB4();
  swift_getKeyPath();
  sub_1A5240A54();

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  sub_1A3CB0A78(&qword_1EB12B068, sub_1A3CB90EC);
  sub_1A5240A54();

  (*(v14 + 8))(v16, v13);
  v39 = 1;
  v21 = MEMORY[0x1E69E6530];
  sub_1A5240AA4();
  v23 = v33;
  v22 = v34;
  v24 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E6968C38], v35);
  sub_1A3CB9680();
  v25 = v36;
  v36[3] = v26;
  v25[4] = sub_1A3CB9884();
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1A3CB0A78(&qword_1EB12B050, sub_1A3CB95E4);
  sub_1A3CB81F4(&qword_1EB12B078, &qword_1EB12B070, v21);
  v27 = v31;
  v28 = v37;
  sub_1A5240A64();
  (*(v22 + 8))(v23, v24);
  (*(v38 + 8))(v6, v28);
  return (*(v32 + 8))(v20, v27);
}

uint64_t sub_1A3FD5BA4()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB050);
  __swift_project_value_buffer(v1, qword_1EB1EB050);
  return sub_1A5247734();
}

uint64_t sub_1A3FD5C44()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FD5C9C()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FD5D68()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EBA38);
  __swift_project_value_buffer(v1, qword_1EB1EBA38);
  return sub_1A5247734();
}

uint64_t sub_1A3FD5E04()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FD5E5C()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

void sub_1A3FD5ED4()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB192350[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EB6D8);
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB174228 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EB068);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FD61D8()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB167398 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EAE98);
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB1673A0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EAEB0);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FD65E8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1A3FD6694(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1A3FD67B8(uint64_t (*a1)(__n128))
{
  v3 = v1;
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241534();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1(v10);
  (*(*v1 + 136))();
  v14 = sub_1A5241514();
  (*(v9 + 8))(v12, v8);
  [v13 setTimeZone_];

  (*(*v3 + 112))();
  v15 = sub_1A5241074();
  (*(v5 + 8))(v7, v4);
  v16 = [v13 stringFromDate_];

  v17 = sub_1A524C674();
  return v17;
}

id sub_1A3FD6A14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v5 setFormattingContext_];
    [v5 setDateStyle_];
    [v5 setTimeStyle_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v5;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1A3FD6AC4()
{
  v1 = sub_1A5241534();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v3);
  v6 = sub_1A3FD724C(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_1A3FD6C14()
{
  v1 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3C7CEE4(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore22PhotosDetailsAssetDate____lazy_storage___dateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore22PhotosDetailsAssetDate____lazy_storage___ax_dateFormatter) = 0;
  v3 = sub_1A5241074();
  sub_1A52410F4();

  sub_1A5246744();
}

uint64_t sub_1A3FD6E7C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22PhotosDetailsAssetDate_date;
  v2 = sub_1A5241144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore22PhotosDetailsAssetDate_timeZone;
  v4 = sub_1A5241534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FD6F78()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CEE4(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  sub_1A5241244();
  v7 = sub_1A5241284();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_1A52414F4();
  v10 = v9;
  sub_1A3FD7708(v6);
  if (!v10)
  {
    sub_1A5241134();
    v11 = sub_1A5241504();
    (*(v1 + 8))(v3, v0);
    v12 = ceil(v11 / 3600.0);
    v13 = ceil((fabs(v11) - v12 * 3600.0) / 60.0);
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    sub_1A524C674();
    sub_1A3C7CEE4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    v17 = MEMORY[0x1E69E63B0];
    v18 = MEMORY[0x1E69E6438];
    *(v16 + 56) = MEMORY[0x1E69E63B0];
    *(v16 + 64) = v18;
    *(v16 + 32) = v12;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v13;
    v8 = sub_1A524C6C4();
  }

  return v8;
}

id sub_1A3FD724C(uint64_t a1)
{
  v2 = sub_1A5241534();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedALCityManager];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A5241514();
    v9 = [v7 defaultCityForTimeZone_];

    if (v9)
    {
      result = [v9 name];
      if (result)
      {
        v11 = result;
        v12 = sub_1A524C674();

        return v12;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v15 = sub_1A524D234();
      v16 = sub_1A475874C();
      swift_beginAccess();
      v17 = *v16;
      (*(v3 + 16))(v5, a1, v2);
      if (os_log_type_enabled(v17, v15))
      {
        v20[1] = v17;
        v18 = swift_slowAlloc();
        v20[2] = swift_slowAlloc();
        *v18 = 136446210;
        sub_1A3FD76B0();
        sub_1A524EA44();
        (*(v3 + 8))(v5, v2);
        sub_1A3C2EF94();
      }

      (*(v3 + 8))(v5, v2);
      v19 = sub_1A3FD6F78();

      return v19;
    }
  }

  else
  {
    sub_1A524D234();
    v13 = sub_1A475874C();
    swift_beginAccess();
    v14 = *v13;
    sub_1A5246DF4();

    return sub_1A3FD6F78();
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsAssetDate()
{
  result = qword_1EB191590;
  if (!qword_1EB191590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FD75D8()
{
  result = sub_1A5241144();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241534();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A3FD76B0()
{
  result = qword_1EB12FD90;
  if (!qword_1EB12FD90)
  {
    sub_1A5241534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FD90);
  }

  return result;
}

uint64_t sub_1A3FD7708(uint64_t a1)
{
  sub_1A3C7CEE4(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FD7794()
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
  __swift_allocate_value_buffer(v6, qword_1EB1EBA50);
  __swift_project_value_buffer(v6, qword_1EB1EBA50);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A3FD7980()
{
  result = qword_1EB12FDA0;
  if (!qword_1EB12FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDA0);
  }

  return result;
}

void sub_1A3FD79D4()
{
  if (!qword_1EB12FDB0)
  {
    sub_1A3FD8F04(255, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FDB0);
    }
  }
}

uint64_t sub_1A3FD7A6C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3FD7B04, v4, v3);
}

uint64_t sub_1A3FD7B04()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A3FD7980();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A530FB50);
}

uint64_t sub_1A3FD7BF0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1A5240E64();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_1A524CC54();
  v2[10] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3FD7CE4, v5, v4);
}

uint64_t sub_1A3FD7CE4()
{
  v1 = v0[9];
  sub_1A523FF44();
  v2 = v0[2];

  sub_1A3FD80BC(v2, v1);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1A3FD7DB8;
  v4 = v0[9];

  return sub_1A489B910(v4);
}

uint64_t sub_1A3FD7DB8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1A3FD7F90;
  }

  else
  {
    v5 = sub_1A3FD7EF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3FD7EF4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  sub_1A523FDD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3FD7F90()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3FD8020(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A3FD7BF0(a1, v1);
}

uint64_t sub_1A3FD80BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1A524E404();

  v7 = [a1 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  MEMORY[0x1A5907B60](v8, v10);

  sub_1A5240E34();

  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FD8264()
{
  v0 = sub_1A5240334();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22[0] = sub_1A5240BB4();
  v14 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  sub_1A3FD8F04(0, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity, MEMORY[0x1E695A1A0]);
  v22[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v22[0]);
  v19 = sub_1A523FDB4();
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A500], v28);
  sub_1A3FC19D8();
  return sub_1A523FFB4();
}

void (*sub_1A3FD87E4(uint64_t *a1))(void *)
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

uint64_t sub_1A3FD8858@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB19F530 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EBA50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3FD8918()
{
  sub_1A3FD8F04(0, &qword_1EB12FD98, sub_1A3FD7980, &type metadata for OpenPersonIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3FD8F04(0, &qword_1EB12FDA8, sub_1A3FD7980, &type metadata for OpenPersonIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3FD79D4();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3FD8B00(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x1EEE6DFA0](sub_1A3FD8BA0, v7, v6);
}

uint64_t sub_1A3FD8BA0()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A530FCF8);
}

uint64_t sub_1A3FD8C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3FD8264();
  *a1 = result;
  return result;
}

uint64_t sub_1A3FD8CA8(uint64_t a1)
{
  v2 = sub_1A3FD7980();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A3FD8CE8()
{
  result = qword_1EB12FDC0;
  if (!qword_1EB12FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDC0);
  }

  return result;
}

unint64_t sub_1A3FD8D40()
{
  result = qword_1EB12FDC8;
  if (!qword_1EB12FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDC8);
  }

  return result;
}

unint64_t sub_1A3FD8D9C()
{
  result = qword_1EB12FDD0;
  if (!qword_1EB12FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDD0);
  }

  return result;
}

unint64_t sub_1A3FD8DF4()
{
  result = qword_1EB12FDD8;
  if (!qword_1EB12FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDD8);
  }

  return result;
}

unint64_t sub_1A3FD8E74()
{
  result = qword_1EB12FDE0;
  if (!qword_1EB12FDE0)
  {
    sub_1A3FD8F04(255, &qword_1EB12FDE8, sub_1A3FD7980, &type metadata for OpenPersonIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FDE0);
  }

  return result;
}

void sub_1A3FD8F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A3FD8F6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3FD7BF0(a1, v1);
}

void PHPhotoLibrary.registerObserver(_:block:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = type metadata accessor for ConcretePhotoLibraryObservation();
  v12 = objc_allocWithZone(v11);
  v13 = v5;
  sub_1A3C66EE8(a1);

  swift_unknownObjectWeakInit();
  if (a1)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = &v12[OBJC_IVAR____TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation_prepareBlock];
  *v15 = a1;
  v15[1] = v14;
  v16 = &v12[OBJC_IVAR____TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation_block];
  *v16 = a3;
  *(v16 + 1) = a4;
  sub_1A3C66EE8(a1);
  v18.receiver = v12;
  v18.super_class = v11;

  v17 = objc_msgSendSuper2(&v18, sel_init);
  [v13 px:v17 registerChangeObserver:{v18.receiver, v18.super_class}];

  sub_1A3C33378(a1);

  a5[3] = v11;
  a5[4] = &off_1F16EF928;
  *a5 = v17;
}

void sub_1A3FD913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a5;
  v20[2] = a4;
  v22 = a2;
  v20[0] = a1;
  v21 = sub_1A524DF24();
  v20[6] = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v20[5] = v20 - v12;
  v13 = sub_1A524DF24();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v20[3] = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocBox();
  (*(v15 + 56))(v18, 1, 1, a6);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v20[4] = a8;
  v19[4] = a8;
  v19[5] = v17;
  v19[6] = v22;
  v19[7] = a3;
  aBlock[4] = sub_1A3FDA15C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_68;
  _Block_copy(aBlock);
  v22 = v17;

  px_dispatch_on_main_queue_sync();
}

uint64_t sub_1A3FD9668(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  a2(v6);
  swift_beginAccess();
  return (*(v5 + 40))(a1, v8, v4);
}

uint64_t sub_1A3FD975C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v38 = a7;
  v39 = a6;
  v35 = a5;
  v36 = a4;
  v42 = a3;
  v34 = sub_1A524DF24();
  v33 = *(v34 - 8);
  v11 = MEMORY[0x1EEE9AC00](v34);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v32[1] = v32 - v15;
  v41 = a10;
  v40 = *(a10 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32[0] = v32 - v19;
  v20 = sub_1A524DF24();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v32 - v23;
  v25 = *(a9 - 8);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v26);
  if ((*(v25 + 48))(v24, 1, a9) == 1)
  {
    return (*(v21 + 8))(v24, v20);
  }

  (*(v25 + 32))(v28, v24, a9);
  if (v42)
  {
    sub_1A5245854();
  }

  v39(v28, v37);
  v31 = v40;
  v30 = v41;
  if ((*(v40 + 48))(v13, 1, v41) == 1)
  {
    (*(v25 + 8))(v28, a9);
    return (*(v33 + 8))(v13, v34);
  }

  else
  {
    (*(v31 + 32))(v18, v13, v30);
    v36(v18);
    (*(v31 + 8))(v18, v30);
    return (*(v25 + 8))(v28, a9);
  }
}

uint64_t sub_1A3FD9DA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  sub_1A524CC54();
  v6 = *(v2 + 32);
  v9[1] = *(v2 + 16);
  v9[2] = v6;
  v10 = v5;
  v11 = a2;
  v7 = *(v2 + 72);
  v12 = *(v2 + 56);
  v13 = v7;
  v14 = a1;
  return sub_1A3C67884(sub_1A3FDA10C, v9);
}

id sub_1A3FDA030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcretePhotoLibraryObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3FDA15C()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1A524DF24();
  v2 = swift_projectBox();
  sub_1A524CC54();
  v6 = v4;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 48);
  return sub_1A3C67884(sub_1A3FDA2C0, v5);
}

void sub_1A3FDA204()
{
  if (!qword_1EB1261A0)
  {
    sub_1A3DAF684();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261A0);
    }
  }
}

void sub_1A3FDA25C()
{
  if (!qword_1EB1263C0)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263C0);
    }
  }
}

PhotosUICore::LemonadeFeatureIdentifier_optional __swiftcall LemonadeFeatureIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A3FDA364()
{
  v0 = LemonadeFeatureIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == LemonadeFeatureIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A524EAB4();
  }

  return v5 & 1;
}

unint64_t sub_1A3FDA404()
{
  result = qword_1EB12FE08;
  if (!qword_1EB12FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FE08);
  }

  return result;
}

uint64_t sub_1A3FDA458()
{
  sub_1A524EC94();
  LemonadeFeatureIdentifier.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FDA4C0()
{
  LemonadeFeatureIdentifier.rawValue.getter();
  sub_1A524C794();
}

uint64_t sub_1A3FDA524()
{
  sub_1A524EC94();
  LemonadeFeatureIdentifier.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A3FDA594@<X0>(unint64_t *a1@<X8>)
{
  result = LemonadeFeatureIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeFeatureIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeFeatureIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PhotosObservableTrip<>.title.getter(uint64_t a1)
{
  v2 = *(*v1 + *MEMORY[0x1E69C1E68]);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1A5242E34();
  v9 = sub_1A5241E34();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (!v11)
  {
    sub_1A5242E34();
    v9 = sub_1A5241E24();
    v12(v5, v2);
  }

  return v9;
}

uint64_t PhotosObservableAlbum.keyAsset.getter()
{
  sub_1A5242704();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();

  return v1;
}

id PhotosObservableListCellModel.keyAsset.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1A5243404();
  sub_1A3FDAC34();
  if (swift_dynamicCast())
  {
    v1 = *(v4 + 16);
    if ([v1 px_isHiddenSmartAlbum])
    {
    }

    else
    {
      if (![v1 px_isRecentlyDeletedSmartAlbum])
      {
        v3 = PhotoKitItem.keyAsset.getter();

        return v3;
      }
    }
  }

  return 0;
}

void sub_1A3FDAC34()
{
  if (!qword_1EB12A800)
  {
    sub_1A3D9D024();
    v0 = type metadata accessor for PhotoKitItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A800);
    }
  }
}

id PhotosObservablePerson<>.keyAsset.getter()
{
  sub_1A5242954();

  v0 = PhotoKitItem.keyAsset.getter();

  return v0;
}

uint64_t PhotosObservablePerson<>.placeholderTitle.getter()
{
  sub_1A5242954();
  v0 = *(v7 + 16);

  if (v0 < 0)
  {

    return sub_1A3C38BD4();
  }

  else
  {
    v1 = objc_opt_self();
    v2 = *(v0 + 16);
    v3 = sub_1A524C634();
    v4 = [v1 locKeyForPersonOrPet:v2 key:v3];

    sub_1A524C674();
    v5 = sub_1A3C38BD4();

    return v5;
  }
}

unint64_t sub_1A3FDB0BC(uint64_t (*a1)(void))
{
  result = a1();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v4 = result;
  v5 = sub_1A524E2B4();
  result = v4;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1A59097F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
LABEL_6:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3FDB184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v6 = result;
  v7 = sub_1A524E2B4();
  result = v6;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 32);
LABEL_6:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FDB3CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB408(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB444(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB480(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB4BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB4F8(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE10, MEMORY[0x1E69C29D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB550(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE20, MEMORY[0x1E69C1E48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB5A8(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE30, MEMORY[0x1E69C1CA0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB600(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE40, MEMORY[0x1E69C1F48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB658(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE50, MEMORY[0x1E69C2108]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB6B0(uint64_t a1)
{
  result = sub_1A3FDB784(&qword_1EB12A510, type metadata accessor for LemonadeMapModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB72C(uint64_t a1)
{
  result = sub_1A3FDB784(&unk_1EB12FE60, MEMORY[0x1E69C28D8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3FDB784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3FDB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_1A3FDB8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 72) = 0;
  *(result + 80) = a8;
  return result;
}

uint64_t sub_1A3FDB924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 72) = a8;
  *(result + 80) = a9;
  return result;
}

BOOL sub_1A3FDB9AC()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A469353C();

  return v3;
}

uint64_t sub_1A3FDB9F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FDBA64()
{
  v1 = sub_1A5246F24();
  v2 = [v0 contentController];
  if (!v2 || (v3 = v2, v4 = [v2 viewModel], v3, !v4))
  {
    sub_1A5246EF4();
  }

  if (([v4 lowMemoryMode] & 1) != 0 || (v5 = objc_msgSend(v4, sel_bannerControllerProvider)) == 0)
  {
    type metadata accessor for PhotosViewCurationModel(0);
    PhotosViewCurationModel.__allocating_init(photosViewModel:)(v4);
  }

  v6 = v5;
  v7 = (*(v5 + 2))(v5, v4);
  _Block_release(v6);
  if (!v7 || (swift_getObjectType(), (result = swift_conformsToProtocol2()) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB1206B0);
    sub_1A3FDD2B4();
    sub_1A5245CB4();
  }

  __break(1u);
  return result;
}

void sub_1A3FDBDFC()
{
  sub_1A3C52C70(0, &qword_1EB1206B0);
  sub_1A3FDD2B4();
  sub_1A5245CB4();
}

void sub_1A3FDBFC4()
{
  v1 = sub_1A5246F24();
  v2 = [v0 contentController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewModel];

    if (v4)
    {
      sub_1A524D584();
    }
  }

  sub_1A5246EF4();
}

uint64_t sub_1A3FDC36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1A524CC54();
  v5[3] = sub_1A524CC44();
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 32) + **(a5 + 32));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1A3FDC4B4;

  return v10(ObjectType, a5);
}

uint64_t sub_1A3FDC4B4()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3FDC610;
  }

  else
  {
    v4 = sub_1A3DDDD8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3FDC610()
{

  v1 = sub_1A524D244();
  sub_1A3C52C70(0, &qword_1EB12B140);
  v2 = sub_1A524DED4();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3C1C000, v2, v1, "Banner controller failed to load data: %@", v5, 0xCu);
    sub_1A3C58F80(v6, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1A3FDC780()
{
  sub_1A3C52C70(0, &qword_1EB1206B0);
  sub_1A3FDD2B4();
  sub_1A5245CB4();
}

id PXPhotosAppGridContentController.AssociatedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPhotosAppGridContentController.AssociatedData.init()()
{
  v1 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo32PXPhotosAppGridContentController14AssociatedData_bannerController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo32PXPhotosAppGridContentController14AssociatedData_bannerLoadTask] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo32PXPhotosAppGridContentController14AssociatedData_curationModel] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PXPhotosAppGridContentController.AssociatedData();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PXPhotosAppGridContentController.AssociatedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotosAppGridContentController.AssociatedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A3FDCAE8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PXPhotosAppGridContentController.AssociatedData()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A3FDCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A3FDCCE0@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 swift_associatedData])
  {
    sub_1A524E0B4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1A3FDCD50(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1A524EA94();
    (*(v5 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = 0;
  }

  [v1 setSwift:v9 associatedData:?];
  return swift_unknownObjectRelease();
}

void (*sub_1A3FDCE84(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A3FDCEF4(v2);
  return sub_1A3D3D728;
}

void (*sub_1A3FDCEF4(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v2;
  if ([v2 swift_associatedData])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5[2] = 0u;
    v5[3] = 0u;
  }

  v6 = v5[3];
  *v5 = v5[2];
  v5[1] = v6;
  return sub_1A3FDCFAC;
}

void sub_1A3FDCFAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3EBECA4(*a1, v2 + 64);
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_1A524EA94();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0(v2 + 64);
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 96) setSwift:v9 associatedData:?];
    swift_unknownObjectRelease();
    sub_1A3C35B00(v2);
  }

  else
  {
    v10 = *(v2 + 24);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_1(*a1, *(v2 + 24));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_1A524EA94();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(v2);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 96) setSwift:v16 associatedData:?];
    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_1A3FDD1FC()
{
  sub_1A3C52C70(0, &qword_1EB1206B0);

  sub_1A5245CB4();
}

unint64_t sub_1A3FDD2B4()
{
  result = qword_1EB1206B8;
  if (!qword_1EB1206B8)
  {
    sub_1A3C52C70(255, &qword_1EB1206B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1206B8);
  }

  return result;
}

void sub_1A3FDD31C()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C52C70(0, &qword_1EB1206B0);
  sub_1A3FDD2B4();
  sub_1A5245CB4();
}

void sub_1A3FDD51C()
{
  sub_1A3C52C70(0, &qword_1EB1206B0);
  sub_1A3FDD2B4();
  sub_1A5245CB4();
}

id sub_1A3FDD6EC(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setLastPreferredScrollDetent_];

  return [a1 setLastTargetPreferredScrollDetent_];
}

uint64_t sub_1A3FDD77C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3FDC36C(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3FDD854()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3FDC36C(v4, v5, v6, v2, v3);
}

unint64_t sub_1A3FDD8EC()
{
  result = qword_1EB15B9E0[0];
  if (!qword_1EB15B9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15B9E0);
  }

  return result;
}