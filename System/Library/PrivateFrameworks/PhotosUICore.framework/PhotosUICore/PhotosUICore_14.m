uint64_t sub_1A3DD98F8(void *a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = MEMORY[0x1E69E7CA0];
  if (!a2)
  {
    goto LABEL_9;
  }

  v68 = sub_1A524C674();
  v69 = v9;
  sub_1A524E384();
  if (!*(a2 + 16) || (v10 = sub_1A3D5C0BC(v72), (v11 & 1) == 0))
  {
    sub_1A3D5FAFC(v72);
LABEL_9:
    v70 = 0u;
    v71 = 0u;
    goto LABEL_10;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v10, &v70);
  sub_1A3D5FAFC(v72);
  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v72[0];
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1A433B95C() | v12;
    v8 = MEMORY[0x1E69E7CA0];
    goto LABEL_11;
  }

LABEL_10:
  sub_1A3DDB284(&v70, &qword_1EB126130, v8 + 8);
  v13 = sub_1A433B95C();
  if (!a2)
  {
LABEL_21:
    v70 = 0u;
    v71 = 0u;
LABEL_22:
    sub_1A3DDB284(&v70, &qword_1EB126130, v8 + 8);
    if (v13)
    {
    }

    goto LABEL_23;
  }

LABEL_11:
  v68 = sub_1A524C674();
  v69 = v14;
  sub_1A524E384();
  if (!*(a2 + 16) || (v15 = sub_1A3D5C0BC(v72), (v16 & 1) == 0))
  {
    sub_1A3D5FAFC(v72);
    goto LABEL_21;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v15, &v70);
  sub_1A3D5FAFC(v72);
  if (!*(&v71 + 1))
  {
    goto LABEL_22;
  }

  sub_1A3C52C70(0, &qword_1EB12C740);
  v17 = swift_dynamicCast();
  v18 = *&v72[0];
  if (*&v72[0])
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v13)
  {
    if (v19)
    {
      goto LABEL_58;
    }
  }

  if (v19)
  {
LABEL_58:
    v54 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v54))
    {
      v55 = swift_slowAlloc();
      swift_slowAlloc();
      *&v72[0] = swift_slowAlloc();
      *v55 = 136315394;
      sub_1A3C2EF94();
    }

    if (v13)
    {
    }

    else
    {
      v72[0] = v18;
      v72[1] = 0uLL;
      LOBYTE(v73) = 1;
      v60 = v18;
      v6(v72);
    }
  }

LABEL_23:
  v20 = *(v5 + 16);
  v21 = [(SEL *)v20 localIdentifier];
  sub_1A524C674();

  if (!a1)
  {
LABEL_49:
    v52 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v52))
    {
      v53 = swift_slowAlloc();
      *&v72[0] = swift_slowAlloc();
      *v53 = 136315138;
      sub_1A3C2EF94();
    }

    goto LABEL_54;
  }

  v22 = a1;
  v23 = [v22 CGImage];
  if (!v23)
  {
LABEL_48:

    goto LABEL_49;
  }

  v24 = v23;
  swift_beginAccess();
  v25 = *(v5 + 80);
  if (!v25)
  {

    goto LABEL_48;
  }

  v66 = v22;
  swift_beginAccess();
  v26 = *(v5 + 88);
  if (!v26)
  {
    v56 = v24;
    v57 = v25;
    v58 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v58))
    {
      v59 = swift_slowAlloc();
      *&v72[0] = swift_slowAlloc();
      *v59 = 136315138;
      sub_1A3C2EF94();
    }

LABEL_54:
  }

  v27 = v25;
  v28 = v26;
  CGImageGetWidth(v24);
  CGImageGetHeight(v24);
  v29 = [v27 localIdentifier];
  sub_1A524C674();

  v30 = [v28 fetchedObjects];
  if (!v30)
  {
    goto LABEL_75;
  }

  v31 = v30;
  sub_1A3C52C70(0, &unk_1EB120620);
  v32 = sub_1A524CA34();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

  v33 = sub_1A524E2B4();
  if (!v33)
  {
LABEL_74:

LABEL_75:
    v61 = sub_1A524D254();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v61))
    {
      v62 = swift_slowAlloc();
      *&v72[0] = swift_slowAlloc();
      *v62 = 136315394;
      sub_1A3C2EF94();
    }

    sub_1A524D9B4();
  }

LABEL_30:
  v34 = (v32 & 0xC000000000000001);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1A59097F0](0, v32);
    goto LABEL_33;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v32 + 32);
LABEL_33:
    v65 = v35;
    [v35 px_cropRectWithCropFactor_];
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    MinX = CGRectGetMinX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    MinY = CGRectGetMinY(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    MaxX = CGRectGetMaxX(v76);
    v77.origin.x = x;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    MaxY = CGRectGetMaxY(v77);
    if (v33 >= 1)
    {
      v44 = MaxY;
      v45 = 0;
      while (1)
      {
        if (v34)
        {
          v46 = MEMORY[0x1A59097F0](v45, v32);
        }

        else
        {
          v46 = *(v32 + 8 * v45 + 32);
        }

        v47 = v46;
        [v46 px:7.19999981 cropRectWithCropFactor:?];
        v48 = v78.origin.x;
        v49 = v78.origin.y;
        v50 = v78.size.width;
        v51 = v78.size.height;
        if (CGRectGetMinX(v78) < MinX)
        {
          v79.origin.x = v48;
          v79.origin.y = v49;
          v79.size.width = v50;
          v79.size.height = v51;
          MinX = CGRectGetMinX(v79);
        }

        v80.origin.x = v48;
        v80.origin.y = v49;
        v80.size.width = v50;
        v80.size.height = v51;
        if (CGRectGetMinY(v80) < MinY)
        {
          v81.origin.x = v48;
          v81.origin.y = v49;
          v81.size.width = v50;
          v81.size.height = v51;
          MinY = CGRectGetMinY(v81);
        }

        v82.origin.x = v48;
        v82.origin.y = v49;
        v82.size.width = v50;
        v82.size.height = v51;
        if (MaxX < CGRectGetMaxX(v82))
        {
          v83.origin.x = v48;
          v83.origin.y = v49;
          v83.size.width = v50;
          v83.size.height = v51;
          MaxX = CGRectGetMaxX(v83);
        }

        v84.origin.x = v48;
        v84.origin.y = v49;
        v84.size.width = v50;
        v84.size.height = v51;
        if (v44 < CGRectGetMaxY(v84))
        {
          v85.origin.x = v48;
          v85.origin.y = v49;
          v85.size.width = v50;
          v85.size.height = v51;
          v44 = CGRectGetMaxY(v85);
        }

        ++v45;

        if (v33 == v45)
        {

          PXSizeGetAspectRatio();
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  if (os_log_type_enabled(qword_1EB169910, v5))
  {
    v63 = swift_slowAlloc();
    *&v72[0] = swift_slowAlloc();
    *v63 = 136315138;
    v64 = [v34 v20[211]];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  return sub_1A3C58F20(&v67, &unk_1EB12C730, sub_1A3DDB2F4, MEMORY[0x1E69E6720], sub_1A3DD8A70);
}

uint64_t sub_1A3DDB284(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A3DDBD94(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3DDB2F4()
{
  if (!qword_1EB12C738)
  {
    sub_1A3C52C70(255, &qword_1EB126630);
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12C738);
    }
  }
}

uint64_t objectdestroy_29Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3DDB47C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 64);
  swift_beginAccess();
  v3 = sub_1A3CAB9BC(v2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 32);
    *(v1 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A3DD6D34();
    }

    sub_1A3CB1208(v5, v7);
    *(v1 + 32) = v7;
  }

  return swift_endAccess();
}

uint64_t sub_1A3DDB528()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v59 = *(v0 + 72);
  v60 = v5;
  v6 = *(v0 + 120);
  v61 = *(v0 + 104);
  v62 = v6;
  v7 = *(v0 + 56);
  v57 = *(v0 + 40);
  v58 = v7;
  swift_beginAccess();
  if (!*(*(v2 + 16) + 16) || (sub_1A3C5DCA4(v3, v4), (v8 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = swift_endAccess();
  v10 = *(v0 + 40);
  if (v10)
  {
    v11 = *(v0 + 96);
    v53 = *(v0 + 80);
    v54 = v11;
    v55 = *(v0 + 112);
    v12 = *(v0 + 64);
    v51 = *(v0 + 48);
    v13 = *(v0 + 128);
    v50 = v10;
    v56 = v13;
    v52 = v12;
    if ((*(v0 + 184) & 1) == 0 || *(v0 + 168) > *(&v52 + 1) && *(v0 + 176) > *&v53)
    {
      swift_beginAccess();
      if (*(*(v2 + 16) + 16))
      {
        v46 = v59;
        v47 = v60;
        v48 = v61;
        v49 = v62;
        v44 = v57;
        v45 = v58;
        sub_1A3DDB3CC(&v44, &v43);
        sub_1A3C5DCA4(v3, v4);
        if (v14)
        {
          swift_endAccess();
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
        v46 = v59;
        v47 = v60;
        v48 = v61;
        v49 = v62;
        v44 = v57;
        v45 = v58;
        sub_1A3DDB3CC(&v44, &v43);
      }

      swift_endAccess();
      v27 = sub_1A524D264();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v27))
      {
        v28 = *(v1 + 232);
        v29 = swift_slowAlloc();
        *&v44 = swift_slowAlloc();
        *v29 = 136315138;
        v30 = [v28 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      swift_beginAccess();
      v32 = sub_1A3DD60F8(&v43, v3, v4);
      v33 = *v31;
      if (*v31)
      {
        v34 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v34 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_1A3DD6558(0, *(v33 + 2) + 1, 1, v33);
          *v34 = v33;
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_1A3DD6558((v36 > 1), v37 + 1, 1, v33);
          *v34 = v33;
        }

        *(v33 + 2) = v37 + 1;
        v38 = &v33[96 * v37];
        v39 = *(v1 + 152);
        *(v38 + 2) = *(v1 + 136);
        *(v38 + 3) = v39;
        v40 = *(v1 + 168);
        v41 = *(v1 + 184);
        v42 = *(v1 + 216);
        *(v38 + 6) = *(v1 + 200);
        *(v38 + 7) = v42;
        *(v38 + 4) = v40;
        *(v38 + 5) = v41;
        sub_1A3DDB3CC(v1 + 136, &v44);
        (v32)(&v43, 0);
      }

      else
      {
        (v32)(&v43, 0);
      }

      swift_endAccess();
      return sub_1A3DDB284(v1 + 40, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult);
    }
  }

  else
  {
    swift_beginAccess();
    v16 = sub_1A3DD60F8(&v44, v3, v4);
    v17 = *v15;
    if (*v15)
    {
      v18 = v15;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v17;
      if ((v19 & 1) == 0)
      {
        v17 = sub_1A3DD6558(0, *(v17 + 2) + 1, 1, v17);
        *v18 = v17;
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1A3DD6558((v20 > 1), v21 + 1, 1, v17);
        *v18 = v17;
      }

      *(v17 + 2) = v21 + 1;
      v22 = &v17[96 * v21];
      v23 = *(v1 + 152);
      *(v22 + 2) = *(v1 + 136);
      *(v22 + 3) = v23;
      v24 = *(v1 + 168);
      v25 = *(v1 + 184);
      v26 = *(v1 + 216);
      *(v22 + 6) = *(v1 + 200);
      *(v22 + 7) = v26;
      *(v22 + 4) = v24;
      *(v22 + 5) = v25;
      sub_1A3DDB3CC(v1 + 136, &v50);
      (v16)(&v44, 0);
    }

    else
    {
      (v16)(&v44, 0);
    }

    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1A3DDBB6C()
{
  result = qword_1EB125668;
  if (!qword_1EB125668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125668);
  }

  return result;
}

uint64_t sub_1A3DDBBC0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    sub_1A3C5DCA4(v4, v3);
    if (v5)
    {
      swift_endAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return swift_endAccess();
}

uint64_t sub_1A3DDBD50()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

void sub_1A3DDBD94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t testWithAlbumCellStyle(_:action:)(char *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = sub_1A44E6630();
  v5 = *v4;
  v6 = *(**v4 + 160);

  v6(v12, v7);
  v8 = v12[0];
  LOBYTE(v12[0]) = v3;
  (*(*v5 + 168))(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  v12[4] = sub_1A3DDBFC0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3C2E0D0;
  v12[3] = &block_descriptor_19;
  v10 = _Block_copy(v12);

  PXPPTInstallTestCompletionHandler(v10);
  _Block_release(v10);
  a2();
}

uint64_t sub_1A3DDBFC0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return (*(*v1 + 168))(&v3);
}

void sub_1A3DDC070()
{
  sub_1A3DDD634(0, &qword_1EB12C748, MEMORY[0x1E69E6158], off_1E7721240);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB169548);
  __swift_project_value_buffer(v1, qword_1EB169548);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DDC154(unsigned int a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = (a1 >> 8) & 1;
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata sharedInstance];
  [v8 setIsMemoryCreationImageAnimationEnabled_];

  v9 = [ObjCClassFromMetadata sharedInstance];
  [v9 setIsMemoryCreationTextAnimationEnabled_];

  v10 = [ObjCClassFromMetadata sharedInstance];
  [v10 setPromptEntryViewType_];

  v11 = [ObjCClassFromMetadata sharedInstance];
  [v11 setForceShowPlaybackInTests_];
}

uint64_t sub_1A3DDC2A0(void *a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1A3DDC3F0;
  v5.n128_u64[0] = 4.0;

  return v7(v5);
}

uint64_t sub_1A3DDC3F0()
{
  v2 = *v1;
  v2[6] = v0;

  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;
  if (v0)
  {
    v5 = sub_1A3DDC834;
  }

  else
  {
    v5 = sub_1A3DDC550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDC550()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1A3DDC6B4;

  return (v6)(4, 0, &unk_1A52FECD8, v2);
}

uint64_t sub_1A3DDC6B4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDC898;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDC7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC908()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDC2A0(v2);
}

uint64_t sub_1A3DDC99C(uint64_t a1)
{
  v1[2] = a1;
  sub_1A3DE1808(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v1[3] = swift_task_alloc();
  v2 = sub_1A5240E64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1A524CC54();
  v1[7] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDCAD8, v4, v3);
}

uint64_t sub_1A3DDCAD8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1A5240E34();
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1A3DDCC90;
    v10 = v0[6];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A3DDCC90(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1A3DDD2E8, v4, v5);
  }

  else
  {
    v6 = v3[2];
    (*(v3[5] + 8))(v3[6], v3[4]);
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xA0);
    v11 = (*MEMORY[0x1E69E7D40] & *v6) + 160;
    v3[13] = v7;
    v3[14] = v11 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
    v12 = (v7 + *v7);
    v8 = swift_task_alloc();
    v3[15] = v8;
    *v8 = v3;
    v8[1] = sub_1A3DDCEDC;
    v9.n128_u64[0] = 2.0;

    return v12(v9);
  }
}

uint64_t sub_1A3DDCEDC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A3DDD368;
  }

  else
  {
    v5 = sub_1A3DDD018;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDD018()
{
  v1 = *(v0 + 104);
  [*(v0 + 88) dismissViewControllerAnimated:1 completion:0];
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1A3DDD120;
  v3.n128_u64[0] = 2.0;

  return v5(v3);
}

uint64_t sub_1A3DDD120()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A3DDD3F0;
  }

  else
  {
    v5 = sub_1A3DDD25C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDD25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD3F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD498(void *a1)
{
  *&v9 = 0x6F69746172657469;
  *(&v9 + 1) = 0xEA0000000000736ELL;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1A3C35B00(v11);
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &unk_1EB1265F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = [v8 integerValue];

LABEL_9:
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = v1;
  v5(&unk_1A52FEC38, v4);
}

void sub_1A3DDD634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3DDD684(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1A524CC54();
  v2[7] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDD71C, v4, v3);
}

uint64_t sub_1A3DDD71C()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = sub_1A3DE0E84();
  *(v0 + 24) = v2;
  *(v0 + 32) = v3 & 1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1A3DDD894;
  v7 = *(v0 + 48);

  return (v9)(v7, 0, &unk_1A52FECC8, v4);
}

uint64_t sub_1A3DDD894()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDDA50;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 112) = *(v2 + 16);
    *(v2 + 114) = v7;
    *(v2 + 104) = v6;

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDD9C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDD9C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 114);
  v3 = *(v0 + 112);

  sub_1A3DDC154(v3 & 0x1010101, v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3DDDA50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDAC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3DDD684(v2, v3);
}

uint64_t sub_1A3DDDB58()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDDC30;

  return sub_1A3DDFB24(257, 0, 0, 0x724379726F6D654DLL, 0xEE006E6F69746165);
}

uint64_t sub_1A3DDDC30()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDDDF0;
  }

  else
  {
    v4 = sub_1A3DDDD8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3DDDD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDEDC(uint64_t a1)
{
  v1[5] = a1;
  sub_1A524CC54();
  v1[6] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDDF74, v3, v2);
}

uint64_t sub_1A3DDDF74()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = sub_1A3DE0E84();
  *(v0 + 24) = v2;
  *(v0 + 32) = v3 & 1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1A3DDE0EC;

  return (v8)(0, 1, &unk_1A52FECB8, v4);
}

uint64_t sub_1A3DDE0EC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDE2A8;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 106) = v7;
    *(v2 + 96) = v6;

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDE220;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDE220()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 106);
  v3 = *(v0 + 104);

  sub_1A3DDC154(v3 & 0x1010101, v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3DDE2A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDE318()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDDEDC(v2);
}

uint64_t sub_1A3DDE3AC(void *a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1A3DDE4FC;
  v5.n128_u64[0] = 30.0;

  return v7(v5);
}

uint64_t sub_1A3DDE4FC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF060, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE6A4;

    return sub_1A3DDFB24(257, 0, 0, 0x755270756D726157, 0xE90000000000006ELL);
  }
}

uint64_t sub_1A3DDE6A4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF0C4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 72) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE84C;

    return sub_1A3DDFB24(257, 0, 0, 0x5272616C75676552, 0xEA00000000006E75);
  }
}

uint64_t sub_1A3DDE84C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF128, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 88) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE9E8;

    return sub_1A3DDFB24(0, 2, 0, 1230335822, 0xE400000000000000);
  }
}

uint64_t sub_1A3DDE9E8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF18C, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDEB9C;

    return sub_1A3DDFB24(1, 2, 0, 0xD000000000000013, 0x80000001A53B7BF0);
  }
}

uint64_t sub_1A3DDEB9C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF1F0, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 120) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDED50;

    return sub_1A3DDFB24(256, 2, 0, 0xD000000000000012, 0x80000001A53B7C10);
  }
}

uint64_t sub_1A3DDED50()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF254, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 136) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDEF04;

    return sub_1A3DDFB24(0, 0, 0, 0xD000000000000013, 0x80000001A53B7C30);
  }
}

uint64_t sub_1A3DDEF04()
{
  *(*v1 + 144) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDF2B8;
  }

  else
  {
    v4 = sub_1A3DE1864;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3DDF060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF35C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = v2;
  v5(a2, v4);
}

uint64_t sub_1A3DDF3F8(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDF490, v3, v2);
}

uint64_t sub_1A3DDF490()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A3DDF5F4;

  return (v6)(0x7FFFFFFFFFFFFFFFLL, 0, &unk_1A52FECA8, v2);
}

uint64_t sub_1A3DDF5F4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DDF710;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DE1868;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDF710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF780()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDF3F8(v2);
}

uint64_t sub_1A3DDF814()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDF8E8;

  return sub_1A3DDFB24(257, 0, 1, 0x6574696E69666E49, 0xEC00000074736554);
}

uint64_t sub_1A3DDF8E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DE1860;
  }

  else
  {
    v4 = sub_1A3DE1868;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

void sub_1A3DDFA64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v8 = a1;
  v7(a4, v6);
}

uint64_t sub_1A3DDFB24(__int16 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 290) = a3;
  *(v6 + 80) = a2;
  *(v6 + 88) = a4;
  *(v6 + 288) = a1;
  sub_1A3DE1808(0, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  *(v6 + 112) = swift_task_alloc();
  sub_1A3DDD634(0, &qword_1EB12C748, MEMORY[0x1E69E6158], off_1E7721240);
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_1A5240E64();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = sub_1A524CC54();
  *(v6 + 176) = sub_1A524CC44();
  v10 = sub_1A524CBC4();
  *(v6 + 184) = v10;
  *(v6 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDFCF0, v10, v9);
}

uint64_t sub_1A3DDFCF0()
{
  v1 = *(v0 + 104);
  sub_1A3DDC154(*(v0 + 288) & 0x101, *(v0 + 80), *(v0 + 290));
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1A3DDFE30;
  v4.n128_u64[0] = 5.0;

  return v6(v4);
}

uint64_t sub_1A3DDFE30()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1A3DE0A7C;
  }

  else
  {
    v5 = sub_1A3DDFF6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A3DDFF6C()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 104)) + 0xA8))(*(v0 + 88), *(v0 + 96));
  if (qword_1EB169540 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = __swift_project_value_buffer(v3, qword_1EB169548);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  sub_1A5246594();
}

uint64_t sub_1A3DE0348(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_1A3DE0B08;
  }

  else
  {
    v7 = *(v3 + 290);
    *(v3 + 232) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v5 = v9;
    *(v3 + 240) = v8;
    *(v3 + 248) = v9;
    if (v7 == 1)
    {
      v10 = sub_1A3DE04C4;
    }

    else
    {
      v10 = sub_1A3DE0710;
    }

    v6 = v10;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A3DE04C4()
{
  v1 = sub_1A3F62788();
  v2 = *v1;
  *(v0 + 256) = *v1;
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_1A3DE056C;

  return sub_1A3DE0F98(v3);
}

uint64_t sub_1A3DE056C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE06AC, v4, v3);
}

uint64_t sub_1A3DE06AC()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE185C, v1, v2);
}

uint64_t sub_1A3DE0710()
{
  v1 = sub_1A4504054();
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_1A3DE07B8;

  return sub_1A3DE0F98(v3);
}

uint64_t sub_1A3DE07B8()
{
  v1 = *v0;
  v2 = *(*v0 + 272);

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE08F8, v4, v3);
}

uint64_t sub_1A3DE08F8()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE095C, v1, v2);
}

uint64_t sub_1A3DE095C()
{
  v1 = v0[6];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];

  [v1 dismissViewControllerAnimated:1 completion:0];

  (*(v3 + 8))(v2, v4);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xB0))(v7, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A3DE0A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DE0B08()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  (*(v2 + 8))(v1, v3);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB0))(v6, v5);

  v7 = v0[1];

  return v7();
}

id sub_1A3DE0C00(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

uint64_t sub_1A3DE0CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPPTTestRunner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DE0D04(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPPTTestRunner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A3DE0D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryPPTTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenerativeStoryPPTTests()
{
  result = qword_1EB169530;
  if (!qword_1EB169530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3DE0E28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3DE1808(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3DE0E84()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 isMemoryCreationImageAnimationEnabled];

  v3 = [ObjCClassFromMetadata sharedInstance];
  v4 = [v3 isMemoryCreationTextAnimationEnabled];

  v5 = [ObjCClassFromMetadata sharedInstance];
  [v5 promptEntryViewType];

  v6 = [ObjCClassFromMetadata sharedInstance];
  [v6 forceShowPlaybackInTests];

  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v2;
}

uint64_t sub_1A3DE0F98(uint64_t a1)
{
  v1[3] = a1;
  sub_1A3DE1808(0, &qword_1EB12C750, MEMORY[0x1E6968160]);
  v1[4] = swift_task_alloc();
  v2 = sub_1A524D694();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1A524CC54();
  v1[9] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DE10D8, v4, v3);
}

uint64_t sub_1A3DE10D8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1A524D6A4();

  sub_1A524D684();
  v0[12] = sub_1A524CC44();
  v2 = sub_1A3DE1560();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1A3DE11E0;
  v4 = v0[4];
  v5 = v0[5];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1A3DE11E0()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A524CBC4();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A3DE14E0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A524CBC4();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A3DE1378;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A3DE1378()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE13DC, v1, v2);
}

uint64_t sub_1A3DE13DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v5 = sub_1A5240564();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    sub_1A3DE0E28(v0[4], &qword_1EB12C750, MEMORY[0x1E6968160]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A3DE14E0()
{
  *(v0 + 16) = *(v0 + 112);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

unint64_t sub_1A3DE1560()
{
  result = qword_1EB12C758;
  if (!qword_1EB12C758)
  {
    sub_1A524D694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C758);
  }

  return result;
}

uint64_t sub_1A3DE15B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A3DDF814();
}

uint64_t sub_1A3DE164C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDE3AC(v2);
}

uint64_t sub_1A3DE16E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A3DDDB58();
}

uint64_t sub_1A3DE1774()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDC99C(v2);
}

void sub_1A3DE1808(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3DE1874()
{
  v1 = v0;
  v2 = [v0 presentationEnvironment];
  if (v2)
  {
    v3 = v2;
    PLIsCloudPhotoLibraryEnabledForCurrentUser();
    sub_1A3C38BD4();
    v4 = sub_1A524C634();

    v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:0];

    sub_1A3C38BD4();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = v1;
    v8 = sub_1A524C634();

    v22 = sub_1A3DE1C48;
    v23 = v6;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1A3D7692C;
    v21 = &block_descriptor_20;
    v9 = _Block_copy(&v18);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:2 handler:v9];
    _Block_release(v9);

    [v5 addAction_];
    sub_1A3C38BD4();
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = v7;
    v14 = sub_1A524C634();

    v22 = sub_1A3DE1C60;
    v23 = v12;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1A3D7692C;
    v21 = &block_descriptor_6_1;
    v15 = _Block_copy(&v18);

    v16 = [v10 actionWithTitle:v14 style:1 handler:v15];
    _Block_release(v15);

    [v5 addAction_];
    [v3 presentViewController:v5 animated:1 completionHandler:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    [v1 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void sub_1A3DE1CC0()
{
  v1 = v0;
  v2 = [v0 socialGroups];
  if (v2)
  {
    v3 = v2;
    if ([v2 count] == 1)
    {
      v4 = [v3 firstObject];
      if (v4)
      {
        v5 = v4;
        type metadata accessor for SocialGroupRejectGroupAction();
        sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1A52F9790;
        *(v6 + 32) = v5;
        v7 = v5;
        v8 = sub_1A3FAB308(v6);
        v9 = [v1 undoManager];
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13[4] = sub_1A3DE1F24;
        v13[5] = v10;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 1107296256;
        v13[2] = sub_1A3D6084C;
        v13[3] = &block_descriptor_12_0;
        v11 = _Block_copy(v13);

        [v8 executeWithUndoManager:v9 completionHandler:v11];
        _Block_release(v11);

        return;
      }
    }
  }

  sub_1A524D244();
  v12 = *sub_1A3CAA3FC();
  sub_1A5246DF4();

  [v0 completeBackgroundTaskWithSuccess:0 error:0];
}

void sub_1A3DE1F24(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      a2 = sub_1A5240B74();
    }

    [v5 completeBackgroundTaskWithSuccess:a1 & 1 error:a2];
  }
}

BOOL sub_1A3DE21E4(void *a1)
{
  if ([objc_opt_self() destructiveActionsEnabled])
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && [a1 socialGroupVerifiedType] != -1;
}

id sub_1A3DE2278(void *a1)
{
  if ([objc_opt_self() destructiveActionsEnabled])
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && ([a1 respondsToSelector_] & 1) != 0)
  {
    result = [a1 socialGroups];
    if (!result)
    {
      return result;
    }

    v4 = result;
    if ([result count] == 1)
    {
      v5 = [v4 firstObject];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 socialGroupVerifiedType];

        return (v7 != -1);
      }
    }
  }

  return 0;
}

uint64_t sub_1A3DE238C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2404()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  return v0[16];
}

id sub_1A3DE2468(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    v5 = *(v1 + 96);

    return [v5 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v3);
  }
}

id (*sub_1A3DE2598(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3DE25EC;
}

uint64_t sub_1A3DE25F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2694()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[17];
}

id sub_1A3DE2714(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
    return [*(v1 + 96) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 744))(v4);
  }
}

id sub_1A3DE2824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 17) = v2;
  return [*(v1 + 96) signalChange_];
}

void (*sub_1A3DE288C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE2598(v4);
  return sub_1A3DE29C8;
}

id (*sub_1A3DE29D4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3DE2A28;
}

id sub_1A3DE2A30(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(*(a1 + 24) + 96);

    return [v7 signalChange_];
  }

  return result;
}

uint64_t sub_1A3DE2A9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2B44()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[18];
}

id sub_1A3DE2BC4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
    return [*(v1 + 96) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 744))(v4);
  }
}

id sub_1A3DE2CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 18) = v2;
  return [*(v1 + 96) signalChange_];
}

void (*sub_1A3DE2D3C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE29D4(v4);
  return sub_1A3DE2E78;
}

uint64_t sub_1A3DE2ED4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2F7C()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[19];
}

uint64_t sub_1A3DE2FFC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[19] == v2)
  {
    v1[19] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 744))(v5);
  }

  return result;
}

uint64_t sub_1A3DE30F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 19) = v2;
  return result;
}

void (*sub_1A3DE314C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE2E84();
  return sub_1A3DE3288;
}

uint64_t sub_1A3DE32E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE338C()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[20];
}

uint64_t sub_1A3DE340C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[20] == v2)
  {
    v1[20] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 744))(v5);
  }

  return result;
}

uint64_t sub_1A3DE3508()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

void (*sub_1A3DE355C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3294();
  return sub_1A3DE3698;
}

uint64_t sub_1A3DE36F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE37B8()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DE3848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 744))(v8);
  }
}

void sub_1A3DE397C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3DE39E4(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A3DE3B20;
}

uint64_t sub_1A3DE3B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE3C40()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DE3CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5] == a1 && v2[6] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 744))(v8);
  }
}

void sub_1A3DE3E04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3DE3E6C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A3DE3FA8;
}

uint64_t sub_1A3DE4004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE40C8()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DE4158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[7] == a1 && v2[8] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[7] = a1;
    v2[8] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 744))(v8);
  }
}

void sub_1A3DE428C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3DE42F4(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4();
  return sub_1A3DE4430;
}

uint64_t sub_1A3DE448C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result;
  return result;
}

void sub_1A3DE453C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[9];
  sub_1A3C52C70(0, &qword_1EB1206D0);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[9];
    v2[9] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 744))(v9);
  }
}

void sub_1A3DE4680()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  v4 = v1;
}

void (*sub_1A3DE46DC(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0);
  sub_1A52415F4();

  v4[7] = sub_1A3DE443C();
  return sub_1A3DE4818;
}

uint64_t sub_1A3DE4824()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3DE4890@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 736))();

  *a2 = v3[5];

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3DE491C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 744))(KeyPath, sub_1A3DE63FC, v7, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3DE49D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 584))(result);
    v2 = [v1 isInitialized];

    if (v2)
    {
      sub_1A3DE4C24();
      sub_1A3DE4D9C();
      sub_1A3DE4F14();
      sub_1A3DE5208();
      sub_1A3DE5374();
      sub_1A3DE4A90();
      sub_1A3DE550C();
      sub_1A3DE56A4();
    }
  }

  return result;
}

uint64_t sub_1A3DE4A90()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 exiting];

  if (v2)
  {
    [v2 isOwned];
    v5 = sub_1A524C634();
    v6 = PXLocalizedSharedLibraryString(v5);

    v7 = sub_1A524C674();
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = sub_1A524C634();
    v6 = PXLocalizedSharedLibraryString(v3);

    v7 = sub_1A524C674();
    v9 = v4;
  }

  v10 = *(*v0 + 448);

  return v10(v7, v9);
}

void sub_1A3DE4C24()
{
  v1 = (*(*v0 + 584))();
  CanSetupSharedLibraryOrPreview = PXSharedLibraryCanSetupSharedLibraryOrPreview(v1);

  if (CanSetupSharedLibraryOrPreview != ((*(*v0 + 344))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = CanSetupSharedLibraryOrPreview;
    v7[4] = sub_1A3DE6334;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_91_0;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE4D9C()
{
  v1 = (*(*v0 + 584))();
  ShouldDisplaySettings = PXSharedLibraryShouldDisplaySettings(v1);

  if (ShouldDisplaySettings != ((*(*v0 + 392))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = ShouldDisplaySettings;
    v7[4] = sub_1A3DE62A4;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_84_1;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE4F14()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 hasSharedLibrary];

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = v2();
  v7 = [v6 exiting];

  if (v7)
  {
    v5 = swift_unknownObjectRelease();
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:
  if (v8 != ((*(*v0 + 200))(v5) & 1))
  {
    v9 = v0[12];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v13[4] = sub_1A3DE6254;
    v13[5] = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1A3DC72D4;
    v13[3] = &block_descriptor_76;
    v12 = _Block_copy(v13);

    [v9 performChanges_];
    _Block_release(v12);
  }
}

uint64_t sub_1A3DE50D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + 16) == (a2 & 1))
    {
      *(result + 16) = a2 & 1;
      [*(result + 96) signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v4 + 744))(v6, sub_1A3DE63E4);
    }
  }

  return result;
}

void sub_1A3DE5208()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 hasPreview];

  if (v2 != ((*(*v0 + 248))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = sub_1A3DE61C4;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_69;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE5374()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 exiting];

  if (v2)
  {
    v3 = swift_unknownObjectRelease();
  }

  if ((v2 != 0) != ((*(*v0 + 296))(v3) & 1))
  {
    v4 = v2 != 0;
    v5 = v0[12];
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v9[4] = sub_1A3DE6134;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3DC72D4;
    v9[3] = &block_descriptor_21;
    v8 = _Block_copy(v9);

    [v5 performChanges_];
    _Block_release(v8);
  }
}

uint64_t sub_1A3DE550C()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 photoLibrary];

  LODWORD(v3) = [v4 isCloudPhotoLibraryEnabled];
  if (v3)
  {
    v5 = v2();
    v6 = [v5 exiting];

    if (v6)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      result = (*(*v0 + 344))();
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  v8 = v2();
  v9 = PXSharedLibrarySettingsDescription(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v13 = *(*v0 + 496);

  return v13(v10, v12);
}

uint64_t sub_1A3DE56A4()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 exiting];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = *(*v0 + 544);

    return v5(0, 0xE000000000000000);
  }

  else
  {
    v7 = v2();
    v8 = [v7 hasSharedLibrary];

    if (!v8)
    {
      v9 = v2();
      [v9 hasPreview];
    }

    v10 = sub_1A3C38BD4();
    v11 = *(*v0 + 544);

    return v11(v10);
  }
}

uint64_t SharedLibraryStatusViewModel.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedLibraryStatusViewModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3DE59D8()
{
  result = qword_1EB12C760;
  if (!qword_1EB12C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C760);
  }

  return result;
}

unint64_t sub_1A3DE5A30()
{
  result = qword_1EB12C768;
  if (!qword_1EB12C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C768);
  }

  return result;
}

unint64_t sub_1A3DE5A88()
{
  result = qword_1EB12C770;
  if (!qword_1EB12C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C770);
  }

  return result;
}

unint64_t sub_1A3DE5AE0()
{
  result = qword_1EB12C778;
  if (!qword_1EB12C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C778);
  }

  return result;
}

unint64_t sub_1A3DE5B38()
{
  result = qword_1EB12C780;
  if (!qword_1EB12C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C780);
  }

  return result;
}

unint64_t sub_1A3DE5B90()
{
  result = qword_1EB126CB0;
  if (!qword_1EB126CB0)
  {
    sub_1A3C52C70(255, &qword_1EB126CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126CB0);
  }

  return result;
}

unint64_t sub_1A3DE5BFC()
{
  result = qword_1EB12C788;
  if (!qword_1EB12C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C788);
  }

  return result;
}

void sub_1A3DE5C50()
{
  type metadata accessor for SharedLibraryStatusViewModel();
  sub_1A3C62EAC(&qword_1EB1298D8);

  sub_1A5245C54();
}

uint64_t sub_1A3DE6134()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 304))(v1);
  }

  return result;
}

uint64_t sub_1A3DE61C4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 256))(v1);
  }

  return result;
}

id sub_1A3DE6260()
{
  v1 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 24);
  return [*(v1 + 96) signalChange_];
}

uint64_t sub_1A3DE62A4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 400))(v1);
  }

  return result;
}

uint64_t sub_1A3DE6334()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 352))(v1);
  }

  return result;
}

void sub_1A3DE6414()
{
  v0 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A3DE714C();
  __swift_allocate_value_buffer(v1, qword_1EB166B60);
  __swift_project_value_buffer(v1, qword_1EB166B60);
  sub_1A5241024();
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DE6508()
{
  v0 = sub_1A3DE6648();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B78 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EB166B80);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  sub_1A5246594();
}

uint64_t sub_1A3DE6648()
{
  result = qword_1EB124A78;
  if (!qword_1EB124A78)
  {
    sub_1A52465C4();
  }

  return result;
}

void sub_1A3DE6698()
{
  v0 = sub_1A3DE6648();
  __swift_allocate_value_buffer(v0, qword_1EB166B80);
  __swift_project_value_buffer(v0, qword_1EB166B80);
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DE673C()
{
  v14 = sub_1A3DE6648();
  v13[1] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v13[0] = v13 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1A5246F24();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v15 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v13[3] = v13 - v4;
  v5 = sub_1A3DE714C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v18);
  v13[2] = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1A52413D4();
  MEMORY[0x1EEE9AC00](v11);
  sub_1A5241394();
  if (qword_1EB166B58 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1EB166B60);
  swift_beginAccess();
  (*(v6 + 16))(v8, v12, v5);
  sub_1A5246594();
}

void sub_1A3DE6DAC()
{
  v0 = sub_1A3DE714C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B98 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EB166BA0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  sub_1A5246594();
}

void sub_1A3DE6EF8(uint64_t a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B98 != -1)
  {
    swift_once();
  }

  v6 = sub_1A3DE714C();
  __swift_project_value_buffer(v6, qword_1EB166BA0);
  (*(v3 + 16))(v5, a1, v2);
  swift_beginAccess();
  sub_1A52465A4();
}

void sub_1A3DE7058()
{
  v0 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A3DE714C();
  __swift_allocate_value_buffer(v1, qword_1EB166BA0);
  __swift_project_value_buffer(v1, qword_1EB166BA0);
  sub_1A5241024();
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

uint64_t sub_1A3DE714C()
{
  result = qword_1EB124A80;
  if (!qword_1EB124A80)
  {
    sub_1A5241144();
    sub_1A52465C4();
  }

  return result;
}

unint64_t sub_1A3DE71B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x1A59097F0](result);
LABEL_5:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    sub_1A5246014();
  }

LABEL_10:
  __break(1u);
  return result;
}

id FullscreenOverlayViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FullscreenOverlayViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FullscreenOverlayViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3DE7458(unint64_t result)
{
  if (result)
  {
    if (result >> 62)
    {
      result = sub_1A524E2B4();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    sub_1A3DE76BC(0, &qword_1EB1298C8, sub_1A3DE7674, sub_1A3DE790C, type metadata accessor for TransparentHostingController);
    MEMORY[0x1EEE9AC00](v1);
    sub_1A3DE7674(0);
    v3 = v2;
    v4 = sub_1A3DE790C();
    v5 = sub_1A3C30368();
    v6 = sub_1A3C5A374();
    sub_1A3D444C0(&v8);
    v7 = sub_1A48F6E88(v3, v4);
    return TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(v5 & 1, v6 & 1, &v8, v7);
  }

  return result;
}

unint64_t sub_1A3DE7610()
{
  result = qword_1EB1206D8;
  if (!qword_1EB1206D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1206D8);
  }

  return result;
}

void sub_1A3DE76BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3DE773C()
{
  if (!qword_1EB1272F8)
  {
    sub_1A3D868AC();
    sub_1A3DE77C8();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1272F8);
    }
  }
}

unint64_t sub_1A3DE77C8()
{
  result = qword_1EB126D30;
  if (!qword_1EB126D30)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D30);
  }

  return result;
}

unint64_t sub_1A3DE7848()
{
  result = qword_1EB127048;
  if (!qword_1EB127048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127048);
  }

  return result;
}

unint64_t sub_1A3DE789C()
{
  result = qword_1EB127300;
  if (!qword_1EB127300)
  {
    sub_1A3DE773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127300);
  }

  return result;
}

unint64_t sub_1A3DE790C()
{
  result = qword_1EB127370;
  if (!qword_1EB127370)
  {
    sub_1A3DE7674(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127370);
  }

  return result;
}

void sub_1A3DE7964(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A524BC74();
  a1[1] = v4;
  if (!(v3 >> 62))
  {
    sub_1A3DE7A88();
    goto LABEL_3;
  }

  v5 = sub_1A524E2B4();
  sub_1A3DE7A88();
  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_3:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v3;
    sub_1A3D868AC();
    sub_1A3DE77C8();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

void sub_1A3DE7A88()
{
  if (!qword_1EB128910)
  {
    sub_1A3DE773C();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128910);
    }
  }
}

void sub_1A3DE7AF8()
{
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__viewportSize;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A3DE7C38()
{
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE7CCC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE7DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3DE7E44(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE7F2C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE8008(uint64_t *a1)
{
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  v8 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A52467B4();
}

void sub_1A3DE8158()
{
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE81EC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE82D4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE83A4(uint64_t *a1)
{
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  v8 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A52467B4();
}

void sub_1A3DE84E4()
{
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE8568(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE862C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1A3DE8738@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  sub_1A3DE7DAC(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v34 - v2;
  v3 = sub_1A5247E04();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DE8C4C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1A3DEB188(0, &unk_1EB127F90, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  sub_1A3C7E8B0();
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = [v19 dynamicHeaderDebugOverlay];

  if (v20 == 3)
  {
    v21 = *(v40 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model);
    v43 = type metadata accessor for DynamicHeaderGeometryModel(0);
    v44 = &off_1F16E1BA0;
    *&v42 = v21;

    PhotosDynamicHeaderLegibilityDebugOverlay.init(geometryModel:)(&v42, &v45);
    sub_1A3DEAD00(&v45, v18);
    swift_storeEnumTagMultiPayload();
    sub_1A3DEAB18();
    sub_1A3DEAB6C();
    sub_1A5249744();
    return sub_1A3DEAD5C(&v45);
  }

  else
  {
    v36 = v10;
    v23 = v40;
    v24 = *(v40 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model);
    v46 = type metadata accessor for DynamicHeaderGeometryModel(0);
    v47 = &off_1F16E1BA0;
    *&v45 = v24;

    PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)(&v45, v8);
    KeyPath = swift_getKeyPath();
    v25 = [objc_opt_self() sharedInstance];
    v26 = [v25 forceDarkDetailsView];

    if (v26)
    {
      v27 = v38;
      v28 = v39;
      (*(v38 + 104))(v5, *MEMORY[0x1E697DBA8], v39);
      v29 = v36;
    }

    else
    {
      v30 = v23 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme;
      v31 = v37;
      sub_1A3DEB2CC(v30, v37, &qword_1EB128A30, MEMORY[0x1E697DCC0]);
      sub_1A3DEA79C(v5);
      sub_1A3DEA9C0(v31);
      v29 = v36;
      v27 = v38;
      v28 = v39;
    }

    v32 = &v12[*(v29 + 36)];
    sub_1A3DE7DAC(0, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    (*(v27 + 32))(v32 + *(v33 + 28), v5, v28);
    *v32 = KeyPath;
    sub_1A3DEAA4C(v8, v12, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
    sub_1A3DEAA4C(v12, v15, sub_1A3DE8C4C);
    sub_1A3DEAAB4(v15, v18);
    swift_storeEnumTagMultiPayload();
    sub_1A3DEAB18();
    sub_1A3DEAB6C();
    sub_1A5249744();
    return sub_1A3DEACA4(v15);
  }
}

void sub_1A3DE8C4C()
{
  if (!qword_1EB128890)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A3DE7DAC(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128890);
    }
  }
}

uint64_t sub_1A3DE8D08(uint64_t a1)
{
  v2 = sub_1A5247E04();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A5248F24();
}

void sub_1A3DE8E08()
{
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v14[1] = *(v1 - 8);
  v14[2] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v14[0] = v14 - v2;
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  MEMORY[0x1EEE9AC00](v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme;
  *(v0 + v5) = swift_getKeyPath();
  sub_1A3DE7DAC(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model;
  type metadata accessor for DynamicHeaderGeometryModel(0);
  v7 = swift_allocObject();
  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v11 = *(MEMORY[0x1E69DDCE0] + 24);
  *(v7 + 16) = *MEMORY[0x1E69DDCE0];
  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 80) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 257;
  v12 = sub_1A43ACA40();
  v13 = *(v12 + 2);
  *(v7 + 136) = *v12;
  *(v7 + 152) = v13;
  sub_1A5241604();
  *(v0 + v6) = v7;
  v14[3] = v7;
  swift_getKeyPath();
  sub_1A3DEADB0(&qword_1EB126710, type metadata accessor for CGSize);

  sub_1A52467D4();
}

__n128 sub_1A3DE938C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = v3[7];
  *a2 = result;
  return result;
}

__n128 sub_1A3DE942C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A3DE94D0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A3DE9574@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 80);
  v5 = *(v3 + 96);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1A3DE9618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1A3DE96B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1A3DE9758()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__viewportSize;
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__mainContentInsets;
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__floatingInsets, v5);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__maximumFloatingAreaInsets, v5);
  v7 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__wantsBlur;
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v9 = v8;
  v10 = *(*(v8 - 8) + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__wantsTitleLegibilityGradient, v9);
  sub_1A3DEA9C0(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme);

  return swift_deallocClassInstance();
}

double sub_1A3DE9978()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 16);
}

void sub_1A3DE99EC(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[1], v5), vceqq_f64(v4[2], v6)))))
  {
    v4[1].f64[0] = a1;
    v4[1].f64[1] = a2;
    v4[2].f64[0] = a3;
    v4[2].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9B04()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 48);
}

void sub_1A3DE9B78(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[3], v5), vceqq_f64(v4[4], v6)))))
  {
    v4[3].f64[0] = a1;
    v4[3].f64[1] = a2;
    v4[4].f64[0] = a3;
    v4[4].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9C90()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 80);
}

void sub_1A3DE9D04(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[5], v5), vceqq_f64(v4[6], v6)))))
  {
    v4[5].f64[0] = a1;
    v4[5].f64[1] = a2;
    v4[6].f64[0] = a3;
    v4[6].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9E1C()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 112);
}

void sub_1A3DE9E8C(double a1, double a2)
{
  if (*(v2 + 112) == a1 && *(v2 + 120) == a2)
  {
    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A3DE9F7C()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 128);
}

uint64_t sub_1A3DE9FEC(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3DEA0CC()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 129);
}

uint64_t sub_1A3DEA13C(uint64_t result)
{
  if (*(v1 + 129) == (result & 1))
  {
    *(v1 + 129) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }

  return result;
}

double sub_1A3DEA21C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = result;
  return result;
}

double sub_1A3DEA29C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a2 = *(v3 + 136);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A3DEA31C()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415C4();
}

uint64_t sub_1A3DEA3D4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_5C50824EE1B9DC3BA10A85442AFF3CEE26DynamicHeaderGeometryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A3DEA470()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 16);
}

double sub_1A3DEA4E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 48);
}

double sub_1A3DEA558()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 80);
}

double sub_1A3DEA5CC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 112);
}

uint64_t sub_1A3DEA63C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 128);
}

uint64_t sub_1A3DEA6AC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 129);
}

double sub_1A3DEA71C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a1 = *(v3 + 136);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3DEA79C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3DE7DAC(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A3DEB2CC(v2, &v15 - v10, &qword_1EB128A70, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
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

uint64_t sub_1A3DEA9C0(uint64_t a1)
{
  sub_1A3DE7DAC(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3DEAA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DEAAB4(uint64_t a1, uint64_t a2)
{
  sub_1A3DE8C4C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3DEAB18()
{
  result = qword_1EB12A980;
  if (!qword_1EB12A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A980);
  }

  return result;
}

unint64_t sub_1A3DEAB6C()
{
  result = qword_1EB128898;
  if (!qword_1EB128898)
  {
    sub_1A3DE8C4C();
    sub_1A3DEADB0(&qword_1EB12A9F0, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
    sub_1A3DEAC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128898);
  }

  return result;
}

unint64_t sub_1A3DEAC1C()
{
  result = qword_1EB127898;
  if (!qword_1EB127898)
  {
    sub_1A3DE7DAC(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127898);
  }

  return result;
}

uint64_t sub_1A3DEACA4(uint64_t a1)
{
  sub_1A3DE8C4C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3DEADB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3DEAE20()
{
  sub_1A3DE7DAC(319, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  if (v0 <= 0x3F)
  {
    sub_1A3DE7DAC(319, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
    if (v1 <= 0x3F)
    {
      sub_1A3C4890C(319, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
      if (v2 <= 0x3F)
      {
        sub_1A3DE7DAC(319, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1A3DEB02C()
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

unint64_t sub_1A3DEB0EC()
{
  result = qword_1EB127EA0;
  if (!qword_1EB127EA0)
  {
    sub_1A3DEB188(255, &qword_1EB127E98, MEMORY[0x1E697F960]);
    sub_1A3DEAB18();
    sub_1A3DEAB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EA0);
  }

  return result;
}

void sub_1A3DEB188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1A3DE8C4C();
    v7 = a3(a1, &type metadata for PhotosDynamicHeaderLegibilityDebugOverlay, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3DEB1F0()
{
  result = qword_1EB182208;
  if (!qword_1EB182208)
  {
    type metadata accessor for DynamicHeaderGeometryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB182208);
  }

  return result;
}

double sub_1A3DEB248()
{
  v1 = *(v0 + 16);
  result = *(v0 + 40);
  *(v1 + 136) = *(v0 + 24);
  *(v1 + 152) = result;
  return result;
}

__n128 sub_1A3DEB280()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 112) = result;
  return result;
}

__n128 sub_1A3DEB290()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 80) = result;
  *(v1 + 96) = v3;
  return result;
}

__n128 sub_1A3DEB2A4()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

__n128 sub_1A3DEB2B8()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1A3DEB2CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3DE7DAC(0, a3, MEMORY[0x1E697DBD0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3DEB34C()
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
  __swift_allocate_value_buffer(v6, qword_1EB1EB860);
  __swift_project_value_buffer(v6, qword_1EB1EB860);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A3DEB538()
{
  result = qword_1EB12C7F8;
  if (!qword_1EB12C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C7F8);
  }

  return result;
}

void sub_1A3DEB58C()
{
  if (!qword_1EB12C808)
  {
    sub_1A3DEB5EC();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C808);
    }
  }
}

void sub_1A3DEB5EC()
{
  if (!qword_1EB12C810)
  {
    sub_1A3C37060(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3DEB674();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C810);
    }
  }
}

unint64_t sub_1A3DEB674()
{
  result = qword_1EB12C818;
  if (!qword_1EB12C818)
  {
    sub_1A3C37060(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3DEB710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C818);
  }

  return result;
}

unint64_t sub_1A3DEB710()
{
  result = qword_1EB120E48;
  if (!qword_1EB120E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E48);
  }

  return result;
}

uint64_t sub_1A3DEB764(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DEB7FC, v4, v3);
}

uint64_t sub_1A3DEB7FC()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A3DEB538();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A52FF550);
}

uint64_t sub_1A3DEB8E8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A3DEBA60;
  }

  else
  {
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DEB9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEBA60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEBAC4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  v2[8] = swift_task_alloc();
  v3 = sub_1A5240164();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1A5240E64();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1A524CC54();
  v2[15] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v2[16] = v6;
  v2[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3DEBC5C, v6, v5);
}

uint64_t sub_1A3DEBC5C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  sub_1A523FF44();
  v0[4] = v6;
  v7 = v0[2];
  v8 = v0[3];
  sub_1A3DEB538();
  sub_1A523FCD4();
  sub_1A5240154();
  (*(v2 + 8))(v3, v4);
  sub_1A3DEC1C4(v7, v8, v5, v1);
  v9 = v0[7];
  sub_1A3DEC858(v0[8], &qword_1EB12C820, MEMORY[0x1E695A340]);

  v0[5] = v9;
  v10 = AppIntent.px_intentName.getter();
  v12 = v11;
  v0[18] = v11;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1A3DEBEA0;
  v14 = v0[14];

  return sub_1A3DED504(v14, v10, v12);
}

uint64_t sub_1A3DEBEA0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A3DEC080;
  }

  else
  {
    v5 = sub_1A3DEBFC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DEBFC4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  sub_1A523FDD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DEC080()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DEC128(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A3DEBAC4(a1, v1);
}

uint64_t sub_1A3DEC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = a4;
  sub_1A3DEDEC0(0, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = sub_1A5240E64();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  sub_1A3DEC7D8(a3, &v44 - v26);
  v28 = sub_1A5240144();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
LABEL_2:
    v30 = *MEMORY[0x1E69C1010];
    v31 = sub_1A5244854();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v7, v30, v31);
    (*(v32 + 56))(v7, 0, 1, v31);
    v33 = v50;
    sub_1A5244F04();
    sub_1A3DEC858(v7, &qword_1EB124C88, MEMORY[0x1E69C1030]);
    if (v33)
    {
      return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
    }

LABEL_3:
    (*(v45 + 32))(v47, v16, v46);
    return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
  }

  sub_1A3DEC7D8(v27, v24);
  v35 = (*(v29 + 88))(v24, v28);
  if (v35 != *MEMORY[0x1E695A310])
  {
    if (v35 == *MEMORY[0x1E695A330])
    {
      v40 = *MEMORY[0x1E69C1020];
      v41 = sub_1A5244854();
      v42 = *(v41 - 8);
      (*(v42 + 104))(v10, v40, v41);
      (*(v42 + 56))(v10, 0, 1, v41);
      v16 = v44;
      v43 = v50;
      sub_1A5244F04();
      sub_1A3DEC858(v10, &qword_1EB124C88, MEMORY[0x1E69C1030]);
      if (v43)
      {
        return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
      }

      goto LABEL_3;
    }

    if (v35 != *MEMORY[0x1E695A328])
    {
      (*(v29 + 8))(v24, v28);
      goto LABEL_2;
    }
  }

  sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
  v36 = *MEMORY[0x1E69C0FF8];
  v37 = sub_1A5244854();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v13, v36, v37);
  (*(v38 + 56))(v13, 0, 1, v37);
  v39 = v50;
  sub_1A5244F04();
  result = sub_1A3DEC858(v13, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  if (!v39)
  {
    return (*(v45 + 32))(v47, v21, v46);
  }

  return result;
}

uint64_t sub_1A3DEC7D8(uint64_t a1, uint64_t a2)
{
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DEC858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3DEDEC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3DEC8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return sub_1A3DED504(a1, a2, a3);
}

uint64_t sub_1A3DEC974()
{
  v0 = sub_1A5240334();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DEDEC0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v22 - v3;
  sub_1A3DEDEC0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v22 - v5;
  sub_1A3DEDEC0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23 = sub_1A5240BB4();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  sub_1A3DEB5EC();
  v24 = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v25;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v23);
  v19 = sub_1A524C5A4();
  v31 = 0;
  v32 = 0;
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  v20 = sub_1A523FDB4();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  return sub_1A5240004();
}

uint64_t sub_1A3DECEC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1982A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EB860);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3DECF88()
{
  sub_1A3DEE0CC(0, &qword_1EB12C7F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3DEE0CC(0, &qword_1EB12C800, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3DEB58C();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3DED144(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x1EEE6DFA0](sub_1A3DED1E4, v7, v6);
}

uint64_t sub_1A3DED1E4()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A52FF748);
}

uint64_t sub_1A3DED2C4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A3DED43C;
  }

  else
  {
    v5 = sub_1A3DED3D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DED3D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DED43C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DED4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3DEC974();
  *a1 = result;
  return result;
}

uint64_t sub_1A3DED4C8(uint64_t a1)
{
  v2 = sub_1A3DEB538();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3DED504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1A524CC54();
  v3[9] = sub_1A524CC44();
  v3[10] = type metadata accessor for PXAppDependencyManager();
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_1A3DED620;

  return sub_1A4896234();
}

uint64_t sub_1A3DED620(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v7 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DEDD6C, v7, v6);
  }

  else
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v5;
    v8[1] = sub_1A3DED7C8;

    return static LemonadeMemoriesCreationAvailabilityManager.canProceedWithMemoryCreation(in:)(a1);
  }
}

uint64_t sub_1A3DED7C8(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A3DEDDD8;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v11 = sub_1A524CBC4();
    v10 = v12;
    *(v4 + 128) = v11;
    *(v4 + 136) = v12;
    v8 = sub_1A3DED95C;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A3DED95C()
{
  if (*(v0 + 160) != 1)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    v7 = sub_1A3CB648C();
    (*(v5 + 16))(v4, v7, v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1A3DEDBB4;
  v2 = *(v0 + 16);

  return static PXAppDependencyManager.navigateToURLDestination(_:)(v2);
}

uint64_t sub_1A3DEDBB4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1A3DEDE4C;
  }

  else
  {
    v5 = sub_1A3DEDCF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DEDCF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEDD6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEDDD8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3DEDE4C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A3DEDEC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A3DEDF18()
{
  result = qword_1EB12C830;
  if (!qword_1EB12C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C830);
  }

  return result;
}

unint64_t sub_1A3DEDF70()
{
  result = qword_1EB12C838;
  if (!qword_1EB12C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C838);
  }

  return result;
}

unint64_t sub_1A3DEDFC8()
{
  result = qword_1EB12C840;
  if (!qword_1EB12C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C840);
  }

  return result;
}

unint64_t sub_1A3DEE058()
{
  result = qword_1EB12C848;
  if (!qword_1EB12C848)
  {
    sub_1A3DEE0CC(255, &qword_1EB12C850, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C848);
  }

  return result;
}

void sub_1A3DEE0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3DEB538();
    v7 = a3(a1, &type metadata for OpenMemoryCreationViewIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3DEE130(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3DEBAC4(a1, v1);
}

unint64_t sub_1A3DEE1CC()
{
  result = qword_1EB12C858;
  if (!qword_1EB12C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C858);
  }

  return result;
}

uint64_t static PeopleMergeActionPerformer.canMerge(people:)(void *a1)
{
  v1 = [a1 fetchedObjects];
  if (v1)
  {
    sub_1A3DEF040();
    v2 = sub_1A524CA34();

    if (v2 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      type metadata accessor for PeopleMergeUtilities();
      LOBYTE(v1) = sub_1A3D76994(v2);
LABEL_7:

      return v1 & 1;
    }

    LOBYTE(v1) = 0;
    goto LABEL_7;
  }

  return v1 & 1;
}

id static PeopleMergeActionPerformer.localizedTitle(for:)(void *a1)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v2 = result;
    v3 = [result px_peoplePetsHomeVisibility];

    v4 = sub_1A524C634();
    v5 = PXLocalizedStringForPersonOrPetAndVisibility(0, v3, v4);

    v6 = sub_1A524C674();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PeopleMergeActionPerformer.performUserInteractionTask()()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5246EF4();
}

id PeopleMergeActionPerformer.__allocating_init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v7 = sub_1A524C3D4();

  v8 = [v5 initWithActionType:v6 assetCollectionReference:a3 parameters:v7];

  return v8;
}

id PeopleMergeActionPerformer.init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v7 = sub_1A524C3D4();

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithActionType_assetCollectionReference_parameters_, v6, a3, v7);

  return v8;
}

id PeopleMergeActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore26PeopleMergeActionPerformerC10canPerform2onSbSo13PHFetchResultCySo8PHPersonCG_tFZ_0(void *a1)
{
  v1 = [a1 fetchedObjects];
  if (v1)
  {
    sub_1A3DEF040();
    v2 = sub_1A524CA34();

    if (v2 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      type metadata accessor for PeopleMergeUtilities();
      LOBYTE(v1) = sub_1A3D76994(v2);
LABEL_7:

      return v1 & 1;
    }

    LOBYTE(v1) = 0;
    goto LABEL_7;
  }

  return v1 & 1;
}

unint64_t sub_1A3DEF040()
{
  result = qword_1EB1265C0;
  if (!qword_1EB1265C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1265C0);
  }

  return result;
}

void sub_1A3DEF08C(char a1)
{
  sub_1A5246F24();
  if ((a1 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t sub_1A3DEF360@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SharedLibraryOwnerImageConfiguration();
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x1E697E7D0];
  v7 = sub_1A5248714();
  result = (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  *&a2[*(v4 + 24)] = 0x3FF0000000000000;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for SharedLibraryOwnerImageConfiguration()
{
  result = qword_1EB1987C0;
  if (!qword_1EB1987C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3DEF448()
{
  v1 = [*v0 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A3DEF4A0(id *a1, id *a2)
{
  v3 = [*a1 localIdentifier];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [*a2 localIdentifier];
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

void sub_1A3DEF568(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1A3DEF638()
{
  v0 = sub_1A5248714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedLibraryOwnerImageConfiguration();
  (*(v1 + 104))(v3, *MEMORY[0x1E697E7D8], v0);
  sub_1A5248704();
  (*(v1 + 8))(v3, v0);
  PXSizeScale();
}

unint64_t sub_1A3DEF8C4()
{
  result = qword_1EB12C888;
  if (!qword_1EB12C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C888);
  }

  return result;
}

unint64_t sub_1A3DEF988()
{
  result = sub_1A3DEFA14();
  if (v1 <= 0x3F)
  {
    result = sub_1A5248714();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3DEFA14()
{
  result = qword_1EB12C900;
  if (!qword_1EB12C900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12C900);
  }

  return result;
}

void sub_1A3DEFA88(void *a1, int a2, id a3)
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
    sub_1A3DEFC54(&qword_1EB143160, MEMORY[0x1E69C1EC0]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C1EB0], v6);
    a3 = 0;
  }

  *&v9 = v5;
  v10 = 1;
  v8 = a3;
  v4(&v9);
}

uint64_t sub_1A3DEFC54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3DEFC9C()
{
  result = qword_1EB126630;
  if (!qword_1EB126630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126630);
  }

  return result;
}

id sub_1A3DEFCE8(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithArrangedSubview:a1 isNotification:a2 & 1];

  return v4;
}

id sub_1A3DEFE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchNavigationBarPalette();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3DEFE6C()
{
  if (PFProcessIsLaunchedToExecuteTests())
  {
    return 1;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1A524C634();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_1A3DEFF08()
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_1A524C634();
    v3 = [v1 BOOLForKey_];

    return v3;
  }

  return result;
}

uint64_t sub_1A3DEFFAC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1987D8);
  v1 = __swift_project_value_buffer(v0, qword_1EB1987D8);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A3DF0038()
{
  if (!qword_1EB12C970)
  {
    sub_1A3C34400(255, &unk_1EB12C978);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C970);
    }
  }
}

uint64_t sub_1A3DF00D8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1A59042D0]();
  *a1 = result;
  return result;
}

uint64_t sub_1A3DF0104@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v7 = a3 + v6[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  swift_unknownObjectRetain();
  sub_1A524BAC4();
  *(a3 + v6[9]) = a1;
  sub_1A3E09888(a2, a3 + v6[10], sub_1A3DF0038);
  sub_1A3E09888(a2, v12, sub_1A3DF0038);
  v8 = a3 + v6[11];
  *(v8 + 40) = 0;
  *(v8 + 24) = 0u;
  *v8 = a1;
  *(v8 + 8) = 0u;
  swift_retain_n();
  sub_1A3DF02DC(v12, v8 + 8);
  sub_1A3C52C70(0, &qword_1EB126910);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 activityEntryFeedDrawDebugBackgrounds];

  *(a3 + v6[13]) = v10;
  sub_1A52434D4();
  sub_1A5247C74();
  swift_unknownObjectRelease();

  return sub_1A3E09958(a2, sub_1A3DF0038);
}

uint64_t sub_1A3DF02DC(uint64_t a1, uint64_t a2)
{
  sub_1A3DF0038();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DF0340()
{
  sub_1A3E09AF8(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1A5243CC4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A52434C4();
}

uint64_t sub_1A3DF043C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v3 = sub_1A52434D4();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v99 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[0] = sub_1A524B9A4();
  v5 = MEMORY[0x1E697E830];
  sub_1A3E055C8(255, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v126[1] = v6;
  v103 = a1;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v95 = *(v7 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  sub_1A5248804();
  v97 = v8;
  v98 = v7;
  type metadata accessor for SharedAlbumsAssetsCollageView();
  sub_1A5249754();
  v9 = sub_1A524B514();
  v10 = sub_1A5248A14();
  WitnessTable = swift_getWitnessTable();
  v125 = MEMORY[0x1E697F568];
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v122 = v11;
  v123 = v12;
  v121 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0]);
  *&v110[0] = v9;
  *(&v110[0] + 1) = v10;
  *&v110[1] = v13;
  *(&v110[1] + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1A5248804();
  v16 = sub_1A5242C04();
  *&v110[0] = v9;
  *(&v110[0] + 1) = v10;
  *&v110[1] = v13;
  *(&v110[1] + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = MEMORY[0x1E697E5D8];
  v119 = OpaqueTypeConformance2;
  v120 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  v20 = sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160]);
  *&v110[0] = v15;
  *(&v110[0] + 1) = v16;
  *&v110[1] = v19;
  *(&v110[1] + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  v126[2] = sub_1A524DF24();
  sub_1A3E055C8(255, &qword_1EB12CA40, sub_1A3DF1B60, MEMORY[0x1E697E5E0], v5);
  v126[3] = v21;
  swift_getTupleTypeMetadata();
  v22 = sub_1A524BE24();
  v23 = swift_getWitnessTable();
  v80 = v22;
  v78 = v23;
  v24 = sub_1A524B894();
  v79 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v72 = v71 - v25;
  v26 = sub_1A5248804();
  v88 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v71 - v27;
  sub_1A3DF1F90();
  v29 = sub_1A5248804();
  v86 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v77 = v71 - v30;
  sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
  v31 = sub_1A5248804();
  v89 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v87 = v71 - v32;
  sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  v33 = sub_1A5248804();
  v93 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v92 = v71 - v34;
  v117 = swift_getWitnessTable();
  v118 = v18;
  v35 = swift_getWitnessTable();
  v36 = sub_1A3DF19A4(&qword_1EB12CAD8, sub_1A3DF1F90);
  v75 = v35;
  v115 = v35;
  v116 = v36;
  v82 = v29;
  v37 = swift_getWitnessTable();
  v38 = sub_1A3DF2108();
  v74 = v37;
  v113 = v37;
  v114 = v38;
  v91 = v31;
  v39 = swift_getWitnessTable();
  v40 = sub_1A3DF2184();
  v76 = v39;
  v111 = v39;
  v112 = v40;
  v41 = swift_getWitnessTable();
  v94 = v33;
  v126[0] = v33;
  v81 = v41;
  v126[1] = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v83 = v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v85 = v71 - v44;
  v45 = v96;
  v46 = *(v96 + *(v103 + 36));
  if (v46)
  {
    v73 = *(*(v46 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v47 = v73;
  }

  else
  {
    v73 = 0;
  }

  v48 = v97;
  v71[1] = sub_1A524BAE4();
  sub_1A524BAA4();
  *&v104 = v126[0];
  (*(v95 + 104))(v110, v48);
  swift_unknownObjectRelease();
  memcpy(v126, v110, 0x108uLL);
  v110[6] = *&v126[27];
  v110[7] = *&v126[29];
  v110[8] = *&v126[31];
  v110[2] = *&v126[19];
  v110[3] = *&v126[21];
  v110[4] = *&v126[23];
  v110[5] = *&v126[25];
  v110[0] = *&v126[15];
  v110[1] = *&v126[17];
  v49 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v49);
  v50 = v98;
  v71[-6] = v48;
  v71[-5] = v50;
  v71[-4] = v110;
  v71[-3] = v45;
  v71[-2] = v126;
  v51 = v72;
  sub_1A524B884();
  sub_1A524B0B4();
  v52 = (*(v79 + 8))(v51, v24);
  MEMORY[0x1EEE9AC00](v52);
  v71[-4] = v48;
  v71[-3] = v50;
  v71[-2] = v45;
  sub_1A524BC74();
  sub_1A3E09208(0, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
  sub_1A3DF2018();
  v53 = v77;
  sub_1A524A8C4();
  (*(v88 + 8))(v28, v26);
  swift_getKeyPath();
  v54 = v103;
  v55 = v87;
  v56 = v82;
  sub_1A524A964();

  (*(v86 + 8))(v53, v56);
  swift_getKeyPath();
  sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v57 = v99;
  sub_1A5247C84();
  v59 = v91;
  v58 = v92;
  sub_1A524A964();

  (*(v100 + 8))(v57, v101);
  (*(v89 + 8))(v55, v59);
  if (!v73)
  {
    v60 = 0;
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    goto LABEL_8;
  }

  v60 = v73;
  sub_1A524BAA4();
  sub_1A3DF7704(v60, v108, v54, &v104);

  swift_unknownObjectRelease();
  if (!v104)
  {
LABEL_8:
    sub_1A3C2C408(&v104, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    v108 = 0u;
    v109 = 0u;
    goto LABEL_9;
  }

  *(&v109 + 1) = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  v61 = swift_allocObject();
  *&v108 = v61;
  v62 = v105;
  *(v61 + 16) = v104;
  *(v61 + 32) = v62;
  *(v61 + 48) = v106;
  *(v61 + 64) = v107;
LABEL_9:
  v63 = v83;
  v64 = v94;
  sub_1A524A534();
  sub_1A3DF76B0(v126);

  (*(v93 + 8))(v58, v64);
  sub_1A3C2C408(&v108, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v66 = v84;
  v65 = v85;
  v67 = *(v84 + 16);
  v68 = OpaqueTypeMetadata2;
  v67(v85, v63, OpaqueTypeMetadata2);
  v69 = *(v66 + 8);
  v69(v63, v68);
  v67(v102, v65, v68);
  return (v69)(v65, v68);
}

void sub_1A3DF11FC()
{
  if (!qword_1EB12C990)
  {
    sub_1A3E09AF8(255, &qword_1EB12C998, sub_1A3DF1290, MEMORY[0x1E6981F40]);
    sub_1A3DF1AA8();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C990);
    }
  }
}

void sub_1A3DF1290()
{
  if (!qword_1EB12C9A0)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView();
    sub_1A3DF1308();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12C9A0);
    }
  }
}

void sub_1A3DF1308()
{
  if (!qword_1EB12C9A8)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9B0, sub_1A3DF139C, MEMORY[0x1E6981F40]);
    sub_1A3DF1A20();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C9A8);
    }
  }
}

void sub_1A3DF139C()
{
  if (!qword_1EB12C9B8)
  {
    sub_1A3DF1428();
    sub_1A3DF15C8(255, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12C9B8);
    }
  }
}

void sub_1A3DF1428()
{
  if (!qword_1EB12C9C0)
  {
    sub_1A3DF14C0();
    sub_1A3E09AF8(255, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C9C0);
    }
  }
}

void sub_1A3DF14C0()
{
  if (!qword_1EB1286C0)
  {
    sub_1A3DF154C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1286C0);
    }
  }
}

void sub_1A3DF154C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E09208(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3DF15C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E04B34(255, &qword_1EB12C9E0, sub_1A3DF1668, sub_1A3DF19EC);
    v7 = v6;
    sub_1A3DF16B0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3DF16B0()
{
  if (!qword_1EB12C9F0)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9F8, sub_1A3DF1744, MEMORY[0x1E6981F40]);
    sub_1A3DF18E8();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C9F0);
    }
  }
}

void sub_1A3DF1778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3DF17F4()
{
  if (!qword_1EB12CA08)
  {
    sub_1A3DF1888();
    sub_1A3DF154C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CA08);
    }
  }
}

void sub_1A3DF1888()
{
  if (!qword_1EB124E50)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124E50);
    }
  }
}

unint64_t sub_1A3DF18E8()
{
  result = qword_1EB12CA18;
  if (!qword_1EB12CA18)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9F8, sub_1A3DF1744, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA18);
  }

  return result;
}

uint64_t sub_1A3DF19A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3DF1A20()
{
  result = qword_1EB12CA30;
  if (!qword_1EB12CA30)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9B0, sub_1A3DF139C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA30);
  }

  return result;
}

unint64_t sub_1A3DF1AA8()
{
  result = qword_1EB12CA38;
  if (!qword_1EB12CA38)
  {
    sub_1A3E09AF8(255, &qword_1EB12C998, sub_1A3DF1290, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA38);
  }

  return result;
}

void sub_1A3DF1B60()
{
  if (!qword_1EB12CA48)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA50, sub_1A3DF1BF4, MEMORY[0x1E6981F40]);
    sub_1A3DF1F08();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CA48);
    }
  }
}

void sub_1A3DF1BF4()
{
  if (!qword_1EB12CA58)
  {
    sub_1A3DF1C9C();
    sub_1A3E09AF8(255, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12CA58);
    }
  }
}

void sub_1A3DF1C9C()
{
  if (!qword_1EB12CA60)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA68, sub_1A3DF1D30, MEMORY[0x1E6981F40]);
    sub_1A3DF1DD0();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CA60);
    }
  }
}

void sub_1A3DF1D30()
{
  if (!qword_1EB12CA70)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA78, sub_1A3DF1428, MEMORY[0x1E69E6720]);
    sub_1A3DF1428();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12CA70);
    }
  }
}

unint64_t sub_1A3DF1DD0()
{
  result = qword_1EB12CA80;
  if (!qword_1EB12CA80)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA68, sub_1A3DF1D30, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA80);
  }

  return result;
}

void sub_1A3DF1E8C()
{
  if (!qword_1EB12CA98)
  {
    sub_1A3DF1888();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CA98);
    }
  }
}

unint64_t sub_1A3DF1F08()
{
  result = qword_1EB12CAA0;
  if (!qword_1EB12CAA0)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA50, sub_1A3DF1BF4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAA0);
  }

  return result;
}

void sub_1A3DF1F90()
{
  if (!qword_1EB12CAA8)
  {
    sub_1A3E09208(255, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
    sub_1A3DF2018();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CAA8);
    }
  }
}

unint64_t sub_1A3DF2018()
{
  result = qword_1EB12CAB8;
  if (!qword_1EB12CAB8)
  {
    sub_1A3E09208(255, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
    sub_1A3DF20B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAB8);
  }

  return result;
}

unint64_t sub_1A3DF20B4()
{
  result = qword_1EB1288F0;
  if (!qword_1EB1288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288F0);
  }

  return result;
}

unint64_t sub_1A3DF2108()
{
  result = qword_1EB12CAE0;
  if (!qword_1EB12CAE0)
  {
    sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAE0);
  }

  return result;
}

unint64_t sub_1A3DF2184()
{
  result = qword_1EB1279F8;
  if (!qword_1EB1279F8)
  {
    sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279F8);
  }

  return result;
}

uint64_t sub_1A3DF220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v161 = a3;
  v167 = a2;
  v165 = a6;
  v177 = MEMORY[0x1E697E830];
  sub_1A3E055C8(0, &qword_1EB12CA40, sub_1A3DF1B60, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v162 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v164 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = (&v130 - v12);
  v13 = sub_1A5242C04();
  v150 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1A5241F84();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = a5;
  v154 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  sub_1A5248804();
  type metadata accessor for SharedAlbumsAssetsCollageView();
  v18 = sub_1A5249754();
  v19 = sub_1A524B514();
  v142 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v130 - v20;
  WitnessTable = swift_getWitnessTable();
  v197 = MEMORY[0x1E697F568];
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v194 = v21;
  v195 = v22;
  v140 = v18;
  v132 = swift_getWitnessTable();
  v193 = v132;
  v23 = swift_getWitnessTable();
  v24 = sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0]);
  v189 = v19;
  v190 = v15;
  v191 = v23;
  v192 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v138 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v134 = &v130 - v26;
  v136 = v27;
  v28 = sub_1A5248804();
  v139 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v130 - v29;
  v143 = v19;
  v189 = v19;
  v190 = v15;
  v30 = v166;
  v148 = v15;
  v137 = v23;
  v191 = v23;
  v192 = v24;
  v133 = v24;
  v31 = v167;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v188[4] = OpaqueTypeConformance2;
  v188[5] = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v33 = sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v171 = v28;
  v189 = v28;
  v190 = v13;
  v169 = v13;
  v170 = v32;
  v191 = v32;
  v192 = v33;
  v168 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v153 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v130 - v38;
  v152 = v40;
  v159 = sub_1A524DF24();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v178 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v176 = &v130 - v43;
  sub_1A3E055C8(0, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], v177);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v177 = (&v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v130 - v48;
  v175 = sub_1A524B9A4();
  v157 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v172 = &v130 - v52;
  sub_1A524B994();
  v53 = sub_1A5249314();
  v54 = *(a1 + 32);
  *v49 = v53;
  *(v49 + 1) = v54;
  v151 = v54;
  v49[16] = 0;
  sub_1A3E09258();
  sub_1A3DF3474(v31, a1, a4, v30, &v49[*(v55 + 44)]);
  v160 = a1;
  sub_1A5247BD4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = sub_1A524A064();
  v156 = v45;
  v65 = *(v45 + 36);
  v173 = v49;
  v66 = &v49[v65];
  *v66 = v64;
  *(v66 + 1) = v57;
  *(v66 + 2) = v59;
  *(v66 + 3) = v61;
  *(v66 + 4) = v63;
  v66[40] = 0;
  sub_1A524BAE4();
  sub_1A524BAA4();
  v67 = a4;
  v68 = (*(v154 + 40))(a4);
  swift_unknownObjectRelease();
  v69 = sub_1A524CAF4();
  if (v69 < 1)
  {
    v97 = v31;
    v96 = v30;
    v93 = v67;
    v99 = v153;
    v100 = v152;
    v98 = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v69);
    v130 = a4;
    *(&v130 - 4) = a4;
    *(&v130 - 3) = v30;
    *(&v130 - 2) = v68;
    *(&v130 - 1) = v31;
    v70 = v141;
    sub_1A524B504();
    sub_1A524B404();
    sub_1A524B474();

    v71 = v144;
    sub_1A5241F64();
    v72 = v136;
    AssociatedTypeWitness = v39;
    v73 = *(v148 + 20);
    v74 = *MEMORY[0x1E697F468];
    v75 = sub_1A52494A4();
    v76 = v146;
    (*(*(v75 - 8) + 104))(&v146[v73], v74, v75);
    __asm { FMOV            V0.2D, #24.0 }

    *v76 = _Q0;
    v82 = v134;
    v83 = v143;
    sub_1A524A4E4();
    sub_1A3E09958(v76, MEMORY[0x1E697EAF0]);
    (*(v145 + 8))(v71, v147);
    (*(v142 + 8))(v70, v83);
    v84 = v135;
    sub_1A524B0C4();
    (*(v138 + 8))(v82, v72);
    v85 = v149;
    sub_1A5247DE4();
    v86 = v171;
    v87 = v169;
    sub_1A524A944();
    (*(v150 + 8))(v85, v87);
    (*(v139 + 8))(v84, v86);
    v154 = v68;
    v88 = v153;
    v89 = *(v153 + 16);
    v90 = AssociatedTypeWitness;
    v91 = v152;
    v89(AssociatedTypeWitness, v36, v152);
    v92 = v166;
    v93 = v130;
    v94 = *(v88 + 8);
    v94(v36, v91);
    v89(v36, v90, v91);
    v95 = v90;
    v96 = v92;
    v97 = v167;
    v94(v95, v91);
    (*(v88 + 32))(v178, v36, v91);
    v98 = 0;
    v99 = v88;
    v68 = v154;
    v100 = v91;
  }

  v101 = v178;
  (*(v99 + 56))(v178, v98, 1, v100);
  v102 = v158;
  AssociatedTypeWitness = *(v158 + 16);
  v103 = v176;
  v104 = v159;
  (AssociatedTypeWitness)(v176, v101, v159);
  v158 = *(v102 + 8);
  (v158)(v101, v104);
  v105 = sub_1A52492E4();
  v106 = v163;
  v107 = v151;
  *v163 = v105;
  *(v106 + 8) = v107;
  *(v106 + 16) = 0;
  sub_1A3E092F0();
  sub_1A3DF5340(v160, v97, v161, v68, v93, v96, v106 + *(v108 + 44));

  sub_1A5247BD4();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = sub_1A524A064();
  v118 = v162;
  v119 = v106 + *(v162 + 36);
  *v119 = v117;
  *(v119 + 8) = v110;
  *(v119 + 16) = v112;
  *(v119 + 24) = v114;
  *(v119 + 32) = v116;
  *(v119 + 40) = 0;
  v120 = v157;
  v121 = v174;
  v122 = v175;
  (*(v157 + 16))(v174, v172, v175);
  v189 = v121;
  v123 = v177;
  sub_1A3E09388(v173, v177, &qword_1EB12C988, sub_1A3DF11FC);
  v190 = v123;
  v124 = v178;
  (AssociatedTypeWitness)(v178, v103, v104);
  v191 = v124;
  v125 = v164;
  sub_1A3E09388(v106, v164, &qword_1EB12CA40, sub_1A3DF1B60);
  v192 = v125;
  v188[0] = v122;
  v188[1] = v156;
  v188[2] = v104;
  v188[3] = v118;
  v184 = sub_1A3DF19A4(&qword_1EB1214B8, MEMORY[0x1E697D6D0]);
  v185 = sub_1A3E09414(&qword_1EB12CE10, &qword_1EB12C988, sub_1A3DF11FC, sub_1A3E094B0);
  v180 = v171;
  v181 = v169;
  v182 = v170;
  v183 = v168;
  v179 = swift_getOpaqueTypeConformance2();
  v186 = swift_getWitnessTable();
  v187 = sub_1A3E09414(&qword_1EB12CE20, &qword_1EB12CA40, sub_1A3DF1B60, sub_1A3E094E4);
  sub_1A3DF4988(&v189, 4uLL, v188);
  sub_1A3E09518(v106, &qword_1EB12CA40, sub_1A3DF1B60);
  v126 = v158;
  (v158)(v176, v104);
  sub_1A3E09518(v173, &qword_1EB12C988, sub_1A3DF11FC);
  v127 = *(v120 + 8);
  v128 = v175;
  v127(v172, v175);
  sub_1A3E09518(v125, &qword_1EB12CA40, sub_1A3DF1B60);
  v126(v178, v104);
  sub_1A3E09518(v177, &qword_1EB12C988, sub_1A3DF11FC);
  return (v127)(v174, v128);
}

uint64_t sub_1A3DF3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a5;
  sub_1A3DF1308();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1A524BAE4();
  sub_1A524BAA4();
  v39[33] = v40[0];
  v18 = *(a4 + 16);
  (*(v18 + 104))(v39, a3, v18);
  swift_unknownObjectRelease();
  memcpy(v40, v39, 0x108uLL);
  sub_1A3DF76B0(v40);
  v19 = *v40;
  sub_1A524BAA4();
  v38 = *&v37[0];
  v20 = (*(v18 + 80))(a3, v18);
  swift_unknownObjectRelease();
  sub_1A493BE2C(v37);
  sub_1A493BE50(v20, v37, v17, v19);
  v21 = sub_1A5249584();
  v22 = v34;
  v23 = *(v34 + 40);
  *v12 = v21;
  *(v12 + 1) = v23;
  v12[16] = 0;
  sub_1A3E097F0();
  sub_1A3DF37A0(a1, v22, a3, a4, &v12[*(v24 + 44)]);
  v25 = v33;
  sub_1A3E09888(v17, v33, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  v26 = v35;
  sub_1A3E098F0(v12, v35, sub_1A3DF1308);
  v27 = v36;
  sub_1A3E09888(v25, v36, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  sub_1A3DF1290();
  v29 = v28;
  sub_1A3E098F0(v26, v27 + *(v28 + 48), sub_1A3DF1308);
  v30 = v27 + *(v29 + 64);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_1A3E08CD8(v12, sub_1A3DF1308);
  sub_1A3E09958(v17, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  sub_1A3E08CD8(v26, sub_1A3DF1308);
  return sub_1A3E09958(v25, type metadata accessor for LemonadeSharedAlbumsAvatarView);
}

uint64_t sub_1A3DF37A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v128 = a5;
  v129 = a2;
  v117 = a1;
  v7 = sub_1A5241FC4();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v101 - v11;
  sub_1A3E09AF8(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v101 - v13;
  v118 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v105 = *(v118 - 8);
  v103 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v104 = &v101 - v14;
  sub_1A3DF1668(0);
  v125 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v108 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E04B34(0, &qword_1EB12C9E0, sub_1A3DF1668, sub_1A3DF19EC);
  v127 = v17;
  v110 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v101 - v18;
  sub_1A3DF15C8(0, &unk_1EB12CE48, MEMORY[0x1E697F948]);
  v121 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v101 - v20;
  sub_1A3DF16B0();
  v122 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v126 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v101 - v26;
  v116 = MEMORY[0x1E6980E30];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], v9);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v101 - v28;
  v30 = sub_1A524A274();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1A3DF1428();
  v119 = (v35 - 8);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v120 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v101 - v38;
  v101 = sub_1A524BAE4();
  sub_1A524BAA4();
  v107 = a4;
  v40 = *(*(a4 + 16) + 48);
  v106 = a3;
  v40(a3);
  swift_unknownObjectRelease();
  v41 = sub_1A524A454();
  v43 = v42;
  v45 = v44;
  (*(v31 + 104))(v33, *MEMORY[0x1E6980EF0], v30);
  v46 = sub_1A524A154();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v29, &unk_1EB1276B0, v116);
  (*(v31 + 8))(v33, v30);
  v47 = sub_1A524A3C4();
  v49 = v48;
  LOBYTE(v33) = v50;

  sub_1A3E04DF4(v41, v43, v45 & 1);

  v130 = sub_1A524B4A4();
  v51 = sub_1A524A374();
  v53 = v52;
  v55 = v54;
  v116 = v56;
  sub_1A3E04DF4(v47, v49, v33 & 1);

  v57 = *(v129 + 48);
  LOBYTE(v47) = *(v129 + 56);
  KeyPath = swift_getKeyPath();
  v59 = &v39[*(v119 + 11)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v61 = *(v60 + 28);
  v62 = *MEMORY[0x1E6980FA8];
  v63 = sub_1A524A354();
  (*(*(v63 - 8) + 104))(v59 + v61, v62, v63);
  v64 = swift_getKeyPath();
  *v59 = v64;
  *v39 = v51;
  *(v39 + 1) = v53;
  v39[16] = v55 & 1;
  v65 = v117;
  *(v39 + 3) = v116;
  *(v39 + 4) = KeyPath;
  *(v39 + 5) = v57;
  v119 = v39;
  v39[48] = v47;
  v66 = v118;
  v67 = *(v65 + *(v118 + 36));
  if (v67)
  {
    v116 = &v101;
    v68 = MEMORY[0x1EEE9AC00](v64);
    v69 = v106;
    v70 = v107;
    *(&v101 - 4) = v106;
    *(&v101 - 3) = v70;
    v99 = v71;
    v100 = v129;
    v72 = v105;
    v73 = v104;
    (*(v105 + 16))(v104, v68);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v75 = (v103 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v69;
    *(v76 + 24) = v70;
    (*(v72 + 32))(v76 + v74, v73, v66);
    *(v76 + v75) = v67;
    v77 = sub_1A3DF1970();
    v129 = v77;
    v78 = swift_retain_n();
    v99 = v77;
    v79 = v108;
    sub_1A472916C(v78, sub_1A3E099B8, 0, 0, sub_1A3E09A40, v76, v108);
    v80 = sub_1A5243A44();
    v81 = v111;
    (*(*(v80 - 8) + 56))(v111, 1, 1, v80);
    v82 = sub_1A5243B34();
    v83 = v112;
    (*(*(v82 - 8) + 56))(v112, 1, 1, v82);
    v84 = sub_1A3DF19EC();
    v85 = v113;
    sub_1A5241FB4();
    v86 = v109;
    v87 = v125;
    sub_1A524A6A4();
    (*(v114 + 8))(v85, v115);
    sub_1A3E005C0(v83, &unk_1EB129020, MEMORY[0x1E69C27E0]);
    sub_1A3E005C0(v81, &unk_1EB129030, MEMORY[0x1E69C27A0]);
    sub_1A3E08CD8(v79, sub_1A3DF1668);
    v88 = v110;
    v89 = v127;
    (*(v110 + 16))(v123, v86, v127);
    swift_storeEnumTagMultiPayload();
    v130 = v87;
    v131 = v84;
    swift_getOpaqueTypeConformance2();
    v90 = v124;
    sub_1A5249744();

    (*(v88 + 8))(v86, v89);
  }

  else
  {
    sub_1A524BAA4();
    v91 = v102;
    sub_1A3DF4534(v130, v129, v66, v102);
    swift_unknownObjectRelease();
    sub_1A3E098F0(v91, v123, sub_1A3DF16B0);
    swift_storeEnumTagMultiPayload();
    v92 = sub_1A3DF19EC();
    v130 = v125;
    v131 = v92;
    swift_getOpaqueTypeConformance2();
    sub_1A3DF1970();
    v90 = v124;
    sub_1A5249744();
    sub_1A3E08CD8(v91, sub_1A3DF16B0);
  }

  v94 = v119;
  v93 = v120;
  sub_1A3E09888(v119, v120, sub_1A3DF1428);
  v95 = v126;
  sub_1A3CC2834(v90, v126);
  v96 = v128;
  sub_1A3E09888(v93, v128, sub_1A3DF1428);
  sub_1A3DF139C();
  sub_1A3CC2834(v95, v96 + *(v97 + 48));
  sub_1A3CC28B4(v90);
  sub_1A3E09958(v94, sub_1A3DF1428);
  sub_1A3CC28B4(v95);
  return sub_1A3E09958(v93, sub_1A3DF1428);
}

uint64_t sub_1A3DF4534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1A5249314();
  *(a4 + 8) = 0x4010000000000000;
  *(a4 + 16) = 0;
  sub_1A3E09B5C();
  return sub_1A3DF78D4(a1, a2, *(a3 + 16), *(a3 + 24), a4 + *(v8 + 44));
}

uint64_t sub_1A3DF4598@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1A3E09AF8(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1A524BAE4();
  sub_1A524BAA4();
  (*(*(a3 + 16) + 128))(a1, a2);
  swift_unknownObjectRelease();
  v11 = type metadata accessor for LemonadeNavigationDestination();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v13(v10, 1, v11) != 1)
    {
      sub_1A3E005C0(v10, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  else
  {
    sub_1A3E07240(v10, a4, type metadata accessor for LemonadeNavigationDestination);
  }

  return (*(v12 + 56))(a4, 0, 1, v11);
}

uint64_t sub_1A3DF4798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249734();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1A5249744();
}

uint64_t sub_1A3DF4890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5249734();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1A5249744();
}

uint64_t sub_1A3DF4988(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1A524BE34();
}

uint64_t sub_1A3DF4B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  v51 = a5;
  v8 = type metadata accessor for SharedAlbumsAssetsCollageView();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - v12;
  v42 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  v47 = type metadata accessor for SharedAlbumsAssetView();
  v46 = sub_1A5248804();
  v13 = sub_1A5249754();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v41 - v14;
  if (PXPreferencesIsVideoAutoplayEnabled())
  {
    v15 = a1;
    sub_1A3C52C70(0, &qword_1EB126910);
    v16 = [swift_getObjCClassFromMetadata() sharedInstance];
    v17 = [v16 activityEntryFeedAutoplaysVideosInline];

    if (v17)
    {
      v18 = [objc_opt_self() px_accessibilityIsReduceMotionEnabled] ^ 1;
    }

    else
    {
      v18 = 0;
    }

    a1 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1A524CAF4();
  v20 = MEMORY[0x1E697F568];
  if (v19 == 1 && (v55[0] = a1, sub_1A524CB74(), swift_getWitnessTable(), sub_1A524D074(), (v21 = v54[0]) != 0))
  {
    if ([v54[0] respondsToSelector_])
    {
      [v21 aspectRatio];
    }

    sub_1A524BAE4();
    swift_unknownObjectRetain();
    sub_1A524BAA4();
    v54[3] = a3;
    v54[4] = v42;
    sub_1A3DF5274(v21, v18, v54, v55);
    v22 = v47;
    WitnessTable = swift_getWitnessTable();
    sub_1A524A924();
    (*(*(v22 - 8) + 8))(v55, v22);
    v52 = WitnessTable;
    v53 = MEMORY[0x1E697F568];
    v24 = v46;
    swift_getWitnessTable();
    v25 = *(v24 - 8);
    v26 = *(v25 + 16);
    v26(v55, v54, v24);
    v27 = *(v25 + 8);
    v27(v54, v24);
    v26(v54, v55, v24);
    swift_getWitnessTable();
    v28 = v48;
    sub_1A3DF4798(v54, v24);
    swift_unknownObjectRelease();
    v27(v54, v24);
    v27(v55, v24);
    v20 = MEMORY[0x1E697F568];
  }

  else
  {
    sub_1A524BAE4();
    sub_1A524BAA4();
    KeyPath = swift_getKeyPath();
    LOBYTE(v55[0]) = 0;
    sub_1A524BAC4();
    v10[*(v8 + 36)] = v18;
    v30 = &v10[*(v8 + 40)];
    *v30 = KeyPath;
    v30[48] = v55[0];
    v45 = swift_getWitnessTable();
    v32 = v43;
    v31 = v44;
    v33 = *(v44 + 16);
    v33(v43, v10, v8);
    v34 = *(v31 + 8);
    v34(v10, v8);
    v33(v10, v32, v8);
    v55[29] = swift_getWitnessTable();
    v55[30] = v20;
    v35 = v46;
    swift_getWitnessTable();
    v28 = v48;
    sub_1A3DF4890(v10, v35, v8);
    v34(v10, v8);
    v34(v32, v8);
  }

  v55[27] = swift_getWitnessTable();
  v55[28] = v20;
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v55[25] = v36;
  v55[26] = v37;
  v38 = v50;
  swift_getWitnessTable();
  v39 = v49;
  (*(v49 + 16))(v51, v28, v38);
  return (*(v39 + 8))(v28, v38);
}

__n128 sub_1A3DF5274@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 56) = sub_1A3DFFD50();
  *(a4 + 64) = v8;
  *(a4 + 72) = sub_1A3DFFD8C();
  *(a4 + 80) = v9 & 1;
  *(a4 + 88) = v10;
  sub_1A524B694();
  *(a4 + 96) = v13;
  *(a4 + 104) = v14;
  *(a4 + 112) = swift_getKeyPath();
  *(a4 + 120) = 0;
  *(a4 + 128) = swift_getKeyPath();
  *(a4 + 176) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v12 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v12;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1A3DF5340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v58 = *(v62 - 1);
  v56 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52[-v14];
  sub_1A3DF1E8C();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DF1E58(0);
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v66 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52[-v22];
  sub_1A3DF1C9C();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v52[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52[-v28];
  v30 = sub_1A5249584();
  v31 = *(a1 + 40);
  *v29 = v30;
  *(v29 + 1) = v31;
  v29[16] = 0;
  sub_1A3E0959C();
  v33 = &v29[*(v32 + 44)];
  v57 = a2;
  sub_1A3DF59F8(a2, a1, a3, a5, a6, v33);
  swift_getAssociatedTypeWitness();
  if (sub_1A524CAF4() < 1)
  {
    v47 = 1;
  }

  else
  {
    v60 = a7;
    v55 = a4;
    sub_1A524E614();
    v34 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v35 = sub_1A524CA14();

    v36 = [v34 initWithArray_];

    v37 = [objc_opt_self() toggledValueForAssets_];
    sub_1A3C52C70(0, &qword_1EB12CE38);
    if ([swift_getObjCClassFromMetadata() canPerformOnAllAssets_])
    {
      v38 = [objc_allocWithZone(PXLikeSharedAlbumAssetsAction) initWithAssets:v36 like:v37];
      if (v38)
      {
        v53 = v37;
        v39 = v58;
        v40 = *(v58 + 16);
        v54 = v38;
        v40(v61, v57, v62);
        v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
        v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        *(v43 + 16) = a5;
        *(v43 + 24) = a6;
        v44 = v53;
        *(v43 + 32) = v53;
        *(v43 + 40) = v55;
        v45 = (*(v39 + 32))(v43 + v41, v61, v62);
        v62 = v52;
        *(v43 + v42) = v54;
        MEMORY[0x1EEE9AC00](v45);
        v52[-16] = v44;
        sub_1A3DF1888();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v46 = v63;
    (*(v64 + 56))(v63, 1, 1, v65);
    sub_1A3E09634(v46, v23, sub_1A3DF1E58);
    v47 = 0;
    a7 = v60;
  }

  (*(v67 + 56))(v23, v47, 1, v68);
  sub_1A3E09888(v29, v26, sub_1A3DF1C9C);
  v48 = v66;
  sub_1A3CC2310(v23, v66);
  sub_1A3E09888(v26, a7, sub_1A3DF1C9C);
  sub_1A3DF1BF4();
  v50 = a7 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_1A3CC2310(v48, a7 + *(v49 + 64));
  sub_1A3CC23A4(v23);
  sub_1A3E09958(v29, sub_1A3DF1C9C);
  sub_1A3CC23A4(v48);
  return sub_1A3E09958(v26, sub_1A3DF1C9C);
}

uint64_t sub_1A3DF59F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a3;
  v119 = a2;
  v127 = a6;
  v9 = sub_1A524A204();
  v133 = *(v9 - 8);
  v134 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v132 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = v112 - v13;
  v131 = sub_1A524A274();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428();
  v136 = v15;
  v121 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v126 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v112 - v18;
  sub_1A3E09AF8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v11);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v112 - v21;
  v23 = sub_1A52407E4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v112 - v28;
  sub_1A3E09AF8(0, &qword_1EB12CA78, sub_1A3DF1428, v11);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v124 = v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v135 = v112 - v33;
  v120 = sub_1A524BAE4();
  v122 = a1;
  sub_1A524BAA4();
  v34 = *(a5 + 16);
  v35 = *(v34 + 72);
  v123 = a4;
  v35(a4, v34);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1A3E005C0(v22, &qword_1EB12B0D0, MEMORY[0x1E6968848]);
    swift_unknownObjectRelease();
    v36 = 1;
    v37 = v135;
  }

  else
  {
    v38 = *(v24 + 32);
    v118 = v29;
    v38(v29, v22, v23);
    swift_unknownObjectRelease();
    (*(v24 + 16))(v26, v29, v23);
    v117 = sub_1A524A454();
    v116 = v39;
    v41 = v40;
    v115 = v42;
    v44 = v128;
    v43 = v129;
    v45 = v131;
    (*(v129 + 104))(v128, *MEMORY[0x1E6980EF0], v131);
    v46 = sub_1A524A154();
    v47 = v130;
    (*(*(v46 - 8) + 56))(v130, 1, 1, v46);
    sub_1A524A194();
    sub_1A524A1C4();
    sub_1A3E005C0(v47, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
    (*(v43 + 8))(v44, v45);
    v49 = v132;
    v48 = v133;
    v50 = v134;
    (*(v133 + 104))(v132, *MEMORY[0x1E6980EA8], v134);
    sub_1A524A234();

    (*(v48 + 8))(v49, v50);
    LOBYTE(v48) = v41;
    v51 = v117;
    v52 = v24;
    v53 = v116;
    v114 = v23;
    v54 = sub_1A524A3C4();
    v113 = v55;
    LOBYTE(v49) = v56;
    v112[1] = v57;

    sub_1A3E04DF4(v51, v53, v48 & 1);

    v137 = sub_1A524B4A4();
    v58 = v113;
    v117 = sub_1A524A374();
    v116 = v59;
    LOBYTE(v51) = v60;
    v62 = v61;
    sub_1A3E04DF4(v54, v58, v49 & 1);

    (*(v52 + 8))(v118, v114);
    v63 = *(v119 + 80);
    LOBYTE(v54) = *(v119 + 88);
    KeyPath = swift_getKeyPath();
    v65 = &v19[*(v136 + 36)];
    sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v67 = *(v66 + 28);
    v68 = *MEMORY[0x1E6980FA8];
    v69 = sub_1A524A354();
    (*(*(v69 - 8) + 104))(v65 + v67, v68, v69);
    *v65 = swift_getKeyPath();
    v70 = v116;
    *v19 = v117;
    *(v19 + 1) = v70;
    v19[16] = v51 & 1;
    *(v19 + 3) = v62;
    *(v19 + 4) = KeyPath;
    *(v19 + 5) = v63;
    v19[48] = v54;
    v71 = v135;
    sub_1A3E07240(v19, v135, sub_1A3DF1428);
    v36 = 0;
    v37 = v71;
  }

  (*(v121 + 56))(v37, v36, 1, v136);
  sub_1A524BAA4();
  v139 = v137;
  v72 = (*(v34 + 56))(v123, v34);
  v74 = v73;
  swift_unknownObjectRelease();
  v137 = v72;
  v138 = v74;
  sub_1A3D5F9DC();
  v75 = sub_1A524A464();
  v77 = v76;
  v79 = v78;
  v80 = v128;
  v81 = v129;
  v82 = v131;
  (*(v129 + 104))(v128, *MEMORY[0x1E6980F30], v131);
  v83 = sub_1A524A154();
  v84 = v130;
  (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v84, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
  (*(v81 + 8))(v80, v82);
  v86 = v132;
  v85 = v133;
  v87 = v134;
  (*(v133 + 104))(v132, *MEMORY[0x1E6980EA8], v134);
  sub_1A524A234();

  (*(v85 + 8))(v86, v87);
  v88 = sub_1A524A3C4();
  v90 = v89;
  LOBYTE(v86) = v91;

  sub_1A3E04DF4(v75, v77, v79 & 1);

  v137 = sub_1A524B4A4();
  v92 = sub_1A524A374();
  v94 = v93;
  v96 = v95;
  v134 = v97;
  sub_1A3E04DF4(v88, v90, v86 & 1);

  v98 = *(v125 + 16);
  LOBYTE(v90) = *(v125 + 24);
  v99 = swift_getKeyPath();
  v100 = &v19[*(v136 + 36)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v102 = *(v101 + 28);
  v103 = *MEMORY[0x1E6980FA8];
  v104 = sub_1A524A354();
  (*(*(v104 - 8) + 104))(v100 + v102, v103, v104);
  *v100 = swift_getKeyPath();
  *v19 = v92;
  *(v19 + 1) = v94;
  v19[16] = v96 & 1;
  v105 = v135;
  *(v19 + 3) = v134;
  *(v19 + 4) = v99;
  *(v19 + 5) = v98;
  v19[48] = v90;
  v106 = MEMORY[0x1E69E6720];
  v107 = v124;
  sub_1A3E06D74(v105, v124, &qword_1EB12CA78, sub_1A3DF1428, MEMORY[0x1E69E6720], sub_1A3E09AF8);
  v108 = v126;
  sub_1A3E09888(v19, v126, sub_1A3DF1428);
  v109 = v127;
  sub_1A3E06D74(v107, v127, &qword_1EB12CA78, sub_1A3DF1428, v106, sub_1A3E09AF8);
  sub_1A3DF1D30();
  sub_1A3E09888(v108, v109 + *(v110 + 48), sub_1A3DF1428);
  sub_1A3E09958(v19, sub_1A3DF1428);
  sub_1A3E005C0(v105, &qword_1EB12CA78, sub_1A3DF1428);
  sub_1A3E09958(v108, sub_1A3DF1428);
  return sub_1A3E005C0(v107, &qword_1EB12CA78, sub_1A3DF1428);
}

void sub_1A3DF66E0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a4;
  v52 = a1;
  v10 = sub_1A5249234();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a5;
  v12 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - v17;
  v19 = sub_1A5246F24();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A45318CC();
  v44 = v20;
  (*(v20 + 16))(v22, v23, v19);
  v24 = *(v13 + 16);
  v42 = v18;
  v45 = v24;
  v46 = v13 + 16;
  v24(v18, a3, v12);
  swift_bridgeObjectRetain_n();
  v43 = v22;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D264();
  v27 = os_log_type_enabled(v25, v26);
  v48 = a6;
  v49 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v28 = 136315650;
    v37[1] = v25;
    sub_1A3C2EF94();
  }

  swift_bridgeObjectRelease_n();
  (*(v13 + 8))(v42, v12);
  (*(v44 + 8))(v43, v19);
  v29 = a3 + *(v12 + 56);
  v30 = *v29;
  if (*(v29 + 8) == 1)
  {
    v31 = v30;
  }

  else
  {

    sub_1A524D254();
    v32 = sub_1A524A014();
    sub_1A5246DF4();

    v33 = v39;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v30, 0);
    (*(v40 + 8))(v33, v41);
  }

  v45(v15, a3, v12);
  v34 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v35 = swift_allocObject();
  v36 = v48;
  *(v35 + 16) = v51;
  *(v35 + 24) = v36;
  *(v35 + 32) = v52 & 1;
  *(v35 + 40) = v49;
  (*(v13 + 32))(v35 + v34, v15, v12);
  aBlock[4] = sub_1A3E0975C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_135;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3DF6D84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v19 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17[10] = a2;
    v15 = a1;
    v16 = sub_1A45318CC();
    (*(v13 + 16))(v19, v16, v12);
    (*(v9 + 16))(v11, a4, v8);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A3DF7210(char a1)
{
  v2 = sub_1A5242274();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = 0x80000001A53B87F0;
  v12 = 0xD000000000000012;
  if (a1)
  {
    v12 = 0x7568742E646E6168;
    v11 = 0xED0000707573626DLL;
  }

  *v10 = v12;
  v10[1] = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1D48], v2);
  sub_1A5242B64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A3DF7418@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  result = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  if (*(v3 + *(result + 52)) == 1)
  {
    sub_1A3E09208(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52FC9F0;
    *(v5 + 32) = sub_1A524B3B4();
    *(v5 + 40) = sub_1A524B3C4();
    sub_1A524BE74();
    sub_1A524BE84();
    MEMORY[0x1A5906EC0](v5);
    result = sub_1A5248434();
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t EnvironmentValues.sharedAlbumsAssetViewNavigationEnvironment.getter()
{
  sub_1A3E00014();

  return sub_1A5249244();
}

uint64_t sub_1A3DF75AC(uint64_t a1)
{
  sub_1A3DF00A0(a1, v3);
  sub_1A3DF00A0(v3, &v2);
  sub_1A3E00014();
  sub_1A5249254();
  return sub_1A3E00068(v3);
}

uint64_t EnvironmentValues.sharedAlbumsAssetViewNavigationEnvironment.setter(uint64_t a1)
{
  sub_1A3DF00A0(a1, &v3);
  sub_1A3E00014();
  sub_1A5249254();
  return sub_1A3E00068(a1);
}

double sub_1A3DF7704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3E09AF8(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v14 = a2;
  v10 = (*(*(*(a3 + 24) + 16) + 120))(a1, *(a3 + 16), v9);
  if (v10)
  {
    v11 = [v10 localizedTitle];
    if (v11)
    {
      v12 = v11;
      sub_1A524C674();
    }

    sub_1A5245FB4();
  }

  *(a4 + 48) = 0;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_1A3DF78D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a2;
  v87 = a5;
  v86 = sub_1A5242274();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5242264();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3DF17F4();
  v83 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = v71 - v14;
  v15 = sub_1A524A204();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1E6980E30];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v71 - v19;
  v21 = sub_1A524A274();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428();
  v75 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25 - 8);
  v76 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v71 - v29;
  v90 = a1;
  v88 = (*(*(a4 + 16) + 88))(a3, v28);
  v89 = v31;
  sub_1A3D5F9DC();
  v32 = sub_1A524A464();
  v34 = v33;
  LOBYTE(a4) = v35;
  v71[1] = v36;
  (*(v22 + 104))(v24, *MEMORY[0x1E6980EF0], v21);
  v37 = sub_1A524A154();
  (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v20, &unk_1EB1276B0, v72);
  (*(v22 + 8))(v24, v21);
  v39 = v73;
  v38 = v74;
  (*(v73 + 104))(v17, *MEMORY[0x1E6980EA8], v74);
  sub_1A524A234();

  (*(v39 + 8))(v17, v38);
  v40 = sub_1A524A3C4();
  v42 = v41;
  LOBYTE(v20) = v43;

  sub_1A3E04DF4(v32, v34, a4 & 1);

  v88 = sub_1A524B374();
  v44 = sub_1A524A374();
  v46 = v45;
  LOBYTE(a4) = v47;
  v74 = v48;
  sub_1A3E04DF4(v40, v42, v20 & 1);

  v49 = *(v77 + 64);
  LOBYTE(v32) = *(v77 + 72);
  KeyPath = swift_getKeyPath();
  v51 = &v30[*(v75 + 44)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v53 = *(v52 + 28);
  v54 = *MEMORY[0x1E6980FA8];
  v55 = sub_1A524A354();
  (*(*(v55 - 8) + 104))(v51 + v53, v54, v55);
  *v51 = swift_getKeyPath();
  *v30 = v44;
  *(v30 + 1) = v46;
  v30[16] = a4 & 1;
  *(v30 + 3) = v74;
  *(v30 + 4) = KeyPath;
  *(v30 + 5) = v49;
  v30[48] = v32;
  v57 = v79;
  v56 = v80;
  *v79 = 0x2E6E6F7276656863;
  v57[1] = 0xEF64726177726F66;
  v58 = v81;
  (*(v56 + 104))(v57, *MEMORY[0x1E69C1D38], v81);
  v59 = v84;
  v60 = v82;
  v61 = v86;
  (*(v84 + 104))(v82, *MEMORY[0x1E69C1D50], v86);
  v62 = v78;
  sub_1A5242B64();
  (*(v59 + 8))(v60, v61);
  (*(v56 + 8))(v57, v58);
  v63 = sub_1A524B4A4();
  v64 = swift_getKeyPath();
  v65 = (v62 + *(v83 + 44));
  *v65 = v64;
  v65[1] = v63;
  v66 = v76;
  sub_1A3E09888(v30, v76, sub_1A3DF1428);
  v67 = v85;
  sub_1A3E098F0(v62, v85, sub_1A3DF17F4);
  v68 = v87;
  sub_1A3E09888(v66, v87, sub_1A3DF1428);
  sub_1A3DF1744(0);
  sub_1A3E098F0(v67, v68 + *(v69 + 48), sub_1A3DF17F4);
  sub_1A3E08CD8(v62, sub_1A3DF17F4);
  sub_1A3E09958(v30, sub_1A3DF1428);
  sub_1A3E08CD8(v67, sub_1A3DF17F4);
  return sub_1A3E09958(v66, sub_1A3DF1428);
}

uint64_t sub_1A3DF8124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A3E06D74(v2 + *(a1 + 40), v13, &unk_1EB12CAE8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E697DCB8], sub_1A3E09208);
  if (v14 == 1)
  {
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    a2[2] = v13[2];
  }

  else
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1A3DF82C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_1A524BAE4();
  sub_1A524BAA4();
  (*(*(*(a1 + 24) + 16) + 40))(v3, *(*(a1 + 24) + 16));
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5249754();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B504();

  sub_1A524A064();
  v4 = sub_1A524B514();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E697E610];
  v6 = MEMORY[0x1E697E608];
  sub_1A524A8D4();
  (*(*(v4 - 8) + 8))(v14, v4);
  sub_1A3E0479C(255, &qword_1EB12CB28, v5, v6, MEMORY[0x1E6980460]);
  v7 = sub_1A5248804();
  sub_1A3E004D4();
  swift_getWitnessTable();
  sub_1A524A924();
  (*(*(v7 - 8) + 8))(v15, v7);
  v8 = sub_1A5248804();
  swift_getWitnessTable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v15, v14, v8);
  v11 = *(v9 + 8);
  v11(v14, v8);
  v10(a2, v15, v8);
  return (v11)(v15, v8);
}

uint64_t sub_1A3DF8B40(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v2;
  v5 = v4;
  v186 = v6;
  v187 = v7;
  v8 = v1;
  v10 = v9;
  v11 = type metadata accessor for SharedAlbumsAssetsCollageView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v171 - v14;
  swift_getAssociatedTypeWitness();
  v16 = sub_1A524CAF4();
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      sub_1A524CB94();
      v74 = v268[0];
      v183 = v268[0];
      sub_1A524CB94();
      v75 = v268[0];
      v182 = v268[0];
      sub_1A524CB94();
      v76 = v268[0];
      v181 = v268[0];
      v77 = sub_1A524CB94();
      v180 = v268[0];
      MEMORY[0x1EEE9AC00](v77);
      v171[-8] = v5;
      v171[-7] = v3;
      v171[-6] = v8;
      v78 = v186;
      v171[-5] = v74;
      v171[-4] = v78;
      v171[-3] = v75;
      v171[-2] = v76;
      v171[-1] = v79;
      sub_1A5249574();
      v80 = type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      v185 = sub_1A524BE24();
      v81 = MEMORY[0x1E6981F48];
      WitnessTable = swift_getWitnessTable();
      v186 = sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v82 = sub_1A524B894();
      v172 = MEMORY[0x1E6981870];
      v174 = swift_getWitnessTable();
      v83 = *(v82 - 8);
      v84 = *(v83 + 16);
      v84(v240, v268, v82);
      v85 = *(v83 + 8);
      v178 = (v83 + 8);
      v179 = v85;
      v85(v268, v82);
      v84(v239, v240, v82);
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      v173 = swift_getWitnessTable();
      v177 = v82;
      sub_1A3DF4798(v239, v82);
      sub_1A524B894();
      sub_1A5249754();
      v184 = v80;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v175 = v81;
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      sub_1A5249754();
      v86 = sub_1A5249754();
      v87 = sub_1A5249754();
      v88 = swift_getWitnessTable();
      v89 = swift_getWitnessTable();
      v222 = v88;
      v223 = v89;
      v90 = swift_getWitnessTable();
      v91 = swift_getWitnessTable();
      v92 = swift_getWitnessTable();
      v220 = v91;
      v221 = v92;
      v93 = swift_getWitnessTable();
      v218 = v90;
      v219 = v93;
      WitnessTable = swift_getWitnessTable();
      v216 = v174;
      v217 = v173;
      v94 = swift_getWitnessTable();
      sub_1A3DF4890(v268, v86, v87);
      (*(*(v87 - 8) + 8))(v268, v87);
      v95 = sub_1A5249754();
      v185 = sub_1A5248804();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      sub_1A5248804();
      sub_1A3E000AC(255);
      v186 = v96;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B8B4();
      sub_1A524DF24();
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A5248414();
      sub_1A5249754();
      v214 = WitnessTable;
      v215 = v94;
      swift_getWitnessTable();
      v212 = swift_getWitnessTable();
      v213 = MEMORY[0x1E6981E60];
      swift_getWitnessTable();
      sub_1A3DF4798(&v236, v95);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(*(v95 - 8) + 8))(&v236, v95);
      v54 = v177;
      v55 = v179;
      v179(v239, v177);
    }

    else
    {
      if (v16 != 5)
      {
        goto LABEL_10;
      }

      sub_1A524CB94();
      v27 = v268[0];
      v183 = v268[0];
      sub_1A524CB94();
      v28 = v268[0];
      v182 = v268[0];
      sub_1A524CB94();
      v29 = v268[0];
      v181 = v268[0];
      sub_1A524CB94();
      v30 = v268[0];
      v180 = v268[0];
      v31 = sub_1A524CB94();
      v178 = v171;
      v179 = v268[0];
      v177 = v8;
      MEMORY[0x1EEE9AC00](v31);
      v171[-10] = v5;
      v171[-9] = v3;
      v171[-8] = v8;
      v32 = v186;
      v171[-7] = v27;
      v171[-6] = v32;
      v171[-5] = v28;
      v171[-4] = v29;
      v171[-3] = v30;
      v171[-2] = v33;
      sub_1A5249574();
      v34 = type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v35 = MEMORY[0x1E6981F48];
      v185 = swift_getWitnessTable();
      v36 = sub_1A524B784();
      v184 = v34;
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v37 = sub_1A524B894();
      v171[6] = MEMORY[0x1E6981870];
      v173 = swift_getWitnessTable();
      v38 = *(v37 - 8);
      v39 = *(v38 + 16);
      v39(v240, v268, v37);
      v40 = *(v38 + 8);
      v177 = v38 + 8;
      v178 = v40;
      (v40)(v268, v37);
      v39(v239, v240, v37);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v41 = sub_1A524B894();
      v172 = swift_getWitnessTable();
      WitnessTable = v37;
      sub_1A3DF4890(v239, v41, v37);
      sub_1A524B894();
      v186 = v36;
      sub_1A5249754();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v174 = v35;
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      sub_1A5249754();
      v42 = sub_1A5249754();
      v43 = sub_1A5249754();
      v44 = swift_getWitnessTable();
      v175 = MEMORY[0x1E69817F8];
      v45 = swift_getWitnessTable();
      v234 = v44;
      v235 = v45;
      v46 = swift_getWitnessTable();
      v47 = swift_getWitnessTable();
      v48 = swift_getWitnessTable();
      v232 = v47;
      v233 = v48;
      v49 = swift_getWitnessTable();
      v230 = v46;
      v231 = v49;
      v50 = swift_getWitnessTable();
      v228 = v172;
      v229 = v173;
      v51 = swift_getWitnessTable();
      sub_1A3DF4890(v268, v42, v43);
      (*(*(v43 - 8) + 8))(v268, v43);
      v52 = sub_1A5249754();
      v185 = sub_1A5248804();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      sub_1A5248804();
      sub_1A3E000AC(255);
      v186 = v53;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B8B4();
      sub_1A524DF24();
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A5248414();
      sub_1A5249754();
      v226 = v50;
      v227 = v51;
      swift_getWitnessTable();
      v224 = swift_getWitnessTable();
      v225 = MEMORY[0x1E6981E60];
      swift_getWitnessTable();
      sub_1A3DF4798(&v236, v52);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(*(v52 - 8) + 8))(&v236, v52);
      v54 = WitnessTable;
      v55 = v178;
      (v178)(v239, WitnessTable);
    }

LABEL_17:
    v55(v240, v54);
    goto LABEL_28;
  }

  if (v16 == 2)
  {
    sub_1A524CB94();
    v70 = v268[0];
    sub_1A524CB94();
    v71 = v268[0];
    if ([v70 respondsToSelector_])
    {
      [v70 aspectRatio];
      v73 = v72 > 1.0;
    }

    else
    {
      v73 = 0;
    }

    v124 = [v71 respondsToSelector_];
    v182 = v71;
    v183 = v70;
    if ((v124 & 1) != 0 && ((v124 = [v71 aspectRatio], v125 > 1.0) ? (v126 = v73) : (v126 = 0), v126))
    {
      MEMORY[0x1EEE9AC00](v124);
      v171[-6] = v5;
      v171[-5] = v3;
      v127 = v186;
      v171[-4] = v70;
      v171[-3] = v127;
      v171[-2] = v71;
      sub_1A5249574();
      v128 = type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v129 = sub_1A524B894();
      swift_getWitnessTable();
      v130 = *(v129 - 8);
      v131 = *(v130 + 16);
      v131(v268, &v236, v129);
      v132 = *(v130 + 8);
      v132(&v236, v129);
      v131(&v236, v268, v129);
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A3DF4798(&v236, v129);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v124);
      v171[-6] = v5;
      v171[-5] = v3;
      v133 = v186;
      v171[-4] = v70;
      v171[-3] = v133;
      v171[-2] = v71;
      sub_1A5249314();
      v128 = type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B774();
      v129 = sub_1A524B784();
      swift_getWitnessTable();
      v134 = *(v129 - 8);
      v135 = *(v134 + 16);
      v135(v268, &v236, v129);
      v132 = *(v134 + 8);
      v132(&v236, v129);
      v135(&v236, v268, v129);
      v136 = sub_1A524B894();
      swift_getWitnessTable();
      sub_1A3DF4890(&v236, v136, v129);
    }

    v132(&v236, v129);
    v132(v268, v129);
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v137 = MEMORY[0x1E6981F48];
    swift_getWitnessTable();
    sub_1A524B894();
    v138 = sub_1A524B784();
    v139 = sub_1A5249754();
    v186 = MEMORY[0x1E6981870];
    v140 = swift_getWitnessTable();
    v179 = MEMORY[0x1E69817F8];
    v141 = swift_getWitnessTable();
    v198 = v140;
    v199 = v141;
    v178 = MEMORY[0x1E697F968];
    v185 = swift_getWitnessTable();
    v181 = *(v139 - 8);
    (*(v181 + 16))(v239, v240, v139);
    v184 = v128;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v142 = v137;
    swift_getWitnessTable();
    sub_1A524B784();
    sub_1A5249754();
    v143 = swift_getWitnessTable();
    v144 = swift_getWitnessTable();
    v196 = v143;
    v197 = v144;
    v145 = swift_getWitnessTable();
    v180 = v139;
    v146 = v185;
    sub_1A3DF4798(v239, v139);
    v147 = sub_1A5249754();
    v177 = v138;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    WitnessTable = v142;
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5249754();
    v194 = v146;
    v195 = v145;
    v148 = swift_getWitnessTable();
    v149 = swift_getWitnessTable();
    v150 = swift_getWitnessTable();
    v192 = v149;
    v193 = v150;
    v151 = swift_getWitnessTable();
    sub_1A3DF4798(v268, v147);
    (*(*(v147 - 8) + 8))(v268, v147);
    v152 = sub_1A5249754();
    v185 = sub_1A5248804();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5248804();
    sub_1A3E000AC(255);
    v186 = v153;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B8B4();
    sub_1A524DF24();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getWitnessTable();
    sub_1A5248414();
    sub_1A5249754();
    v190 = v148;
    v191 = v151;
    swift_getWitnessTable();
    v188 = swift_getWitnessTable();
    v189 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    sub_1A3DF4798(&v236, v152);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(*(v152 - 8) + 8))(&v236, v152);
    v154 = v180;
    v155 = *(v181 + 8);
    v155(v239, v180);
    v155(v240, v154);
    goto LABEL_28;
  }

  if (v16 == 3)
  {
    sub_1A524CB94();
    v17 = v268[0];
    sub_1A524CB94();
    v18 = v268[0];
    sub_1A524CB94();
    v19 = v268[0];
    v20 = [v17 respondsToSelector_];
    v183 = v19;
    v184 = v18;
    v182 = v17;
    if ((v20 & 1) != 0 && (v20 = [v17 aspectRatio], v21 > 1.0))
    {
      v185 = v171;
      MEMORY[0x1EEE9AC00](v20);
      v171[-8] = v5;
      v171[-7] = v3;
      v22 = v186;
      v171[-6] = v17;
      v171[-5] = v22;
      v171[-4] = v8;
      v171[-3] = v18;
      v171[-2] = v19;
      sub_1A5249574();
      type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v23 = sub_1A524B894();
      v186 = swift_getWitnessTable();
      v24 = *(v23 - 8);
      v25 = *(v24 + 16);
      v25(v268, &v236, v23);
      v26 = *(v24 + 8);
      v26(&v236, v23);
      v25(&v236, v268, v23);
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A3DF4798(&v236, v23);
    }

    else
    {
      v185 = v171;
      MEMORY[0x1EEE9AC00](v20);
      v171[-8] = v5;
      v171[-7] = v3;
      v97 = v186;
      v171[-6] = v17;
      v171[-5] = v97;
      v171[-4] = v8;
      v171[-3] = v18;
      v171[-2] = v19;
      sub_1A5249314();
      type metadata accessor for SharedAlbumsAssetView();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B774();
      v23 = sub_1A524B784();
      v186 = swift_getWitnessTable();
      v98 = *(v23 - 8);
      v99 = *(v98 + 16);
      v99(v268, &v236, v23);
      v26 = *(v98 + 8);
      v26(&v236, v23);
      v99(&v236, v268, v23);
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v100 = sub_1A524B894();
      swift_getWitnessTable();
      sub_1A3DF4890(&v236, v100, v23);
    }

    v26(&v236, v23);
    v26(v268, v23);
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v101 = MEMORY[0x1E6981F48];
    swift_getWitnessTable();
    v102 = sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v178 = v101;
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    v103 = sub_1A5249754();
    v186 = MEMORY[0x1E6981870];
    v104 = swift_getWitnessTable();
    v179 = MEMORY[0x1E69817F8];
    v105 = swift_getWitnessTable();
    v210 = v104;
    v211 = v105;
    v177 = MEMORY[0x1E697F968];
    v106 = swift_getWitnessTable();
    v181 = *(v103 - 8);
    (*(v181 + 16))(v239, v240, v103);
    v107 = sub_1A5249754();
    v108 = swift_getWitnessTable();
    v109 = swift_getWitnessTable();
    v208 = v108;
    v209 = v109;
    v110 = swift_getWitnessTable();
    v180 = v103;
    sub_1A3DF4890(v239, v107, v103);
    v111 = sub_1A5249754();
    WitnessTable = v102;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5249754();
    v206 = v110;
    v207 = v106;
    v112 = swift_getWitnessTable();
    v113 = swift_getWitnessTable();
    v114 = swift_getWitnessTable();
    v204 = v113;
    v205 = v114;
    v115 = swift_getWitnessTable();
    v116 = v112;
    sub_1A3DF4798(v268, v111);
    (*(*(v111 - 8) + 8))(v268, v111);
    v117 = sub_1A5249754();
    v185 = sub_1A5248804();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5248804();
    sub_1A3E000AC(255);
    v186 = v118;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B8B4();
    sub_1A524DF24();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getWitnessTable();
    sub_1A5248414();
    sub_1A5249754();
    v202 = v116;
    v203 = v115;
    swift_getWitnessTable();
    v200 = swift_getWitnessTable();
    v201 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    sub_1A3DF4798(&v236, v117);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(*(v117 - 8) + 8))(&v236, v117);
    v54 = v180;
    v55 = *(v181 + 8);
    v55(v239, v180);
    goto LABEL_17;
  }

LABEL_10:
  if (v16 >= 6)
  {
    sub_1A524CB94();
    v182 = v268[0];
    sub_1A524CB94();
    v183 = v268[0];
    sub_1A524CB94();
    v181 = v268[0];
    sub_1A524CB94();
    v180 = v268[0];
    sub_1A524CB94();
    v179 = v268[0];
    sub_1A524CB94();
    v178 = v268[0];
    (*(v12 + 16))(v15, v186, v11);
    v174 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v186 = (v13 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v185 = ((v186 + 15) & 0xFFFFFFFFFFFFFFF8);
    v184 = (v185 + 15) & 0xFFFFFFFFFFFFFFF8;
    WitnessTable = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
    v175 = (WitnessTable + 15) & 0xFFFFFFFFFFFFFFF8;
    v119 = (v175 + 15) & 0xFFFFFFFFFFFFFFF8;
    v120 = swift_allocObject();
    *(v120 + 2) = v5;
    *(v120 + 3) = v3;
    *(v120 + 4) = v8;
    *(v120 + 5) = v182;
    (*(v12 + 32))(&v120[v174], v15, v11);
    v121 = v179;
    v177 = v120;
    v122 = v185;
    *&v120[v186] = v180;
    *(v122 + v120) = v121;
    *&v120[v184] = v183;
    v123 = v175;
    *&v120[WitnessTable] = v181;
    *&v120[v123] = v10;
    *&v120[v119] = v178;
    type metadata accessor for SharedAlbumsAssetView();
    v185 = sub_1A5248804();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for SharedAlbumsAssetView();
  v185 = sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  v186 = v56;
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v180 = MEMORY[0x1E69817F8];
  swift_getWitnessTable();
  v57 = sub_1A5248414();
  v179 = v57;
  v181 = swift_getWitnessTable();
  sub_1A3DF4890(v181, v57, MEMORY[0x1E6981E70]);
  v183 = v237;
  v184 = v236;
  LODWORD(v182) = v238;
  v240[0] = v236;
  v240[1] = v237;
  v241 = v238;
  sub_1A524B894();
  v175 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  WitnessTable = sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v177 = sub_1A524B784();
  v178 = sub_1A5249754();
  v172 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v173 = sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  v174 = sub_1A5249754();
  v58 = sub_1A5249754();
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v252 = v59;
  v253 = v60;
  v61 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v250 = v62;
  v251 = v63;
  v64 = swift_getWitnessTable();
  v248 = v61;
  v249 = v64;
  v65 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v246 = v66;
  v247 = v67;
  v68 = swift_getWitnessTable();
  v244 = v65;
  v245 = v68;
  v69 = v174;
  swift_getWitnessTable();
  v242 = v181;
  v243 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1A3DF4890(v240, v69, v58);
  sub_1A3E0742C(v184, v183, v182);
LABEL_28:
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  v181 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v182 = sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v183 = sub_1A524B784();
  v184 = sub_1A5249754();
  v177 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v178 = sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v179 = sub_1A524B894();
  v180 = sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  v156 = sub_1A5249754();
  v157 = swift_getWitnessTable();
  v158 = swift_getWitnessTable();
  v266 = v157;
  v267 = v158;
  v159 = swift_getWitnessTable();
  v160 = swift_getWitnessTable();
  v161 = swift_getWitnessTable();
  v264 = v160;
  v265 = v161;
  v162 = swift_getWitnessTable();
  v262 = v159;
  v263 = v162;
  v163 = swift_getWitnessTable();
  v164 = swift_getWitnessTable();
  v165 = swift_getWitnessTable();
  v260 = v164;
  v261 = v165;
  v166 = swift_getWitnessTable();
  v258 = v163;
  v259 = v166;
  v167 = swift_getWitnessTable();
  v256 = swift_getWitnessTable();
  v257 = MEMORY[0x1E6981E60];
  v168 = swift_getWitnessTable();
  v254 = v167;
  v255 = v168;
  swift_getWitnessTable();
  v169 = *(v156 - 8);
  (*(v169 + 16))(v187, v268, v156);
  return (*(v169 + 8))(v268, v156);
}

uint64_t sub_1A3DFC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a7;
  v33 = a8;
  v31 = a6;
  v30 = a5;
  v29 = a4;
  v27 = a3;
  v26 = a1;
  v34 = a9;
  v28 = a11;
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v15 = sub_1A524B784();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v35 = a12;
  v36 = a13;
  v37 = a10;
  v38 = a2;
  v39 = v27;
  v40 = v26;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = v28;
  sub_1A5249314();
  sub_1A524B774();
  swift_getWitnessTable();
  v22 = *(v16 + 16);
  v22(v21, v18, v15);
  v23 = *(v16 + 8);
  v23(v18, v15);
  v22(v34, v21, v15);
  return (v23)(v21, v15);
}

uint64_t sub_1A3DFCB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v51 = a8;
  v52 = a6;
  v49 = a7;
  v39 = a5;
  v42 = a2;
  v53 = a9;
  v50 = a11;
  v41 = a13;
  v40 = a12;
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  v46 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1A524B894();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v44 = &v36 - v21;
  v61 = a12;
  v62 = a13;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v66 = a10;
  v67 = a4;
  v68 = v39;
  sub_1A5249574();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B884();
  sub_1A52482B4();
  sub_1A524BC74();
  v22 = sub_1A524B894();
  v23 = swift_getWitnessTable();
  sub_1A524AFD4();
  (*(*(v22 - 8) + 8))(v74, v22);
  v24 = sub_1A5248804();
  v72[2] = v23;
  v72[3] = MEMORY[0x1E697E040];
  v25 = swift_getWitnessTable();
  v26 = *(v24 - 8);
  v36 = *(v26 + 16);
  v37 = v25;
  v36(v74, v73, v24);
  v27 = *(v26 + 8);
  v38 = v26 + 8;
  v39 = v27;
  v27(v73, v24);
  v54 = v40;
  v55 = v41;
  v56 = v52;
  v57 = v42;
  v58 = v49;
  v59 = v51;
  v60 = v50;
  sub_1A5249574();
  v28 = v43;
  sub_1A524B884();
  v29 = v48;
  v52 = swift_getWitnessTable();
  v30 = v47;
  v31 = *(v47 + 16);
  v32 = v44;
  v31(v44, v28, v29);
  v33 = *(v30 + 8);
  v33(v28, v29);
  v36(v73, v74, v24);
  v72[0] = v73;
  v31(v28, v32, v29);
  v72[1] = v28;
  v71[0] = v24;
  v71[1] = v29;
  v69 = v37;
  v70 = v52;
  sub_1A3DF4988(v72, 2uLL, v71);
  v33(v32, v29);
  v34 = v39;
  v39(v74, v24);
  v33(v28, v29);
  return v34(v73, v24);
}

uint64_t sub_1A3DFD164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a5;
  v68 = a4;
  v69 = a3;
  v67 = a1;
  v72 = a8;
  v65 = *(a7 + 16);
  v11 = v65;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for SharedAlbumsAssetView();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  v57 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A524B8B4();
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &WitnessTable - v16;
  v75 = v17;
  v18 = sub_1A524DF24();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &WitnessTable - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &WitnessTable - v22;
  v61 = a6;
  v59 = a7;
  v23 = *(a2 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  v24 = v67;
  swift_unknownObjectRetain();
  sub_1A524BAE4();
  sub_1A524BAA4();
  v85[3] = a6;
  v85[4] = v11;
  sub_1A3DF5274(v24, v23, v85, v84);
  v67 = swift_getWitnessTable();
  v25 = *(v12 - 8);
  v26 = v25 + 16;
  v27 = *(v25 + 16);
  v27(v85, v84, v12);
  v29 = *(v25 + 8);
  v28 = v25 + 8;
  v29(v84, v12);
  v30 = v69;
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v31 = v61;
  v84[3] = v61;
  v84[4] = v65;
  v32 = sub_1A3DF5274(v30, v23, v84, v83);
  v64 = v27;
  v65 = v26;
  (v27)(v84, v83, v12, v32);
  v63 = v12;
  v69 = v29;
  v29(v83, v12);
  v33 = v68;
  if (sub_1A524CAF4() >= 6)
  {
    v34 = sub_1A524BC34();
    MEMORY[0x1EEE9AC00](v34);
    v36 = v59;
    v35 = v60;
    *(&WitnessTable - 6) = v31;
    *(&WitnessTable - 5) = v36;
    *(&WitnessTable - 4) = v35;
    *(&WitnessTable - 3) = a2;
    *(&WitnessTable - 2) = v33;
    v37 = v58;
    sub_1A524B8A4();
    v38 = v75;
    swift_getWitnessTable();
    v68 = v28;
    v39 = v66;
    v40 = *(v66 + 16);
    v41 = v56;
    v40(v56, v37, v38);
    v42 = *(v39 + 8);
    v42(v37, v38);
    v40(v37, v41, v38);
    v42(v41, v38);
    v43 = v74;
    (*(v39 + 32))(v74, v37, v38);
    (*(v39 + 56))(v43, 0, 1, v38);
  }

  else
  {
    (*(v66 + 56))(v74, 1, 1, v75);
    swift_getWitnessTable();
  }

  v44 = v70;
  v45 = v71;
  v46 = *(v71 + 16);
  v47 = v74;
  v46(v73, v74, v70);
  v71 = *(v45 + 8);
  (v71)(v47, v44);
  v49 = v63;
  v48 = v64;
  v64(v83, v85, v63);
  v82[0] = v83;
  v48(v81, v84, v49);
  v82[1] = v81;
  v50 = v73;
  v46(v47, v73, v44);
  v82[2] = v47;
  v80[0] = v49;
  v80[1] = v49;
  v80[2] = v44;
  v77 = v67;
  v78 = v67;
  v76 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  sub_1A3DF4988(v82, 3uLL, v80);
  v51 = v50;
  v52 = v71;
  (v71)(v51, v44);
  v53 = v69;
  v69(v84, v49);
  v53(v85, v49);
  v52(v47, v44);
  v53(v81, v49);
  return (v53)(v83, v49);
}

uint64_t sub_1A3DFD838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a6;
  v91 = a3;
  v10 = sub_1A52498E4();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedAlbumsAssetsCollageView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  sub_1A3E0036C();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E000E0(0);
  v20 = *(v19 - 8);
  v86 = v19;
  v87 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E000AC(0);
  v88 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v67 - v25;
  v26 = *(a2 + *(v12 + 36));
  swift_unknownObjectRetain();
  v69 = v12;
  sub_1A524BAE4();
  sub_1A524BAA4();
  v71 = a5;
  v27 = *(a5 + 16);
  v97[3] = a4;
  v97[4] = v27;
  v70 = a4;
  swift_getAssociatedTypeWitness();
  v73 = a1;
  sub_1A3DF5274(a1, v26, v97, v96);
  v28 = type metadata accessor for SharedAlbumsAssetView();
  WitnessTable = swift_getWitnessTable();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v81 = v29 + 16;
  v82 = v30;
  v30(v97, v96, v28);
  v85 = *(v29 + 8);
  v80 = v29 + 8;
  v85(v96, v28);
  if (sub_1A524CAF4() < 7)
  {
    v62 = 1;
    v61 = v84;
    v63 = v86;
  }

  else
  {
    v31 = v69;
    (*(v13 + 16))(v16, a2, v69);
    v32 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v70;
    v68 = a2;
    v36 = v71;
    *(v34 + 16) = v70;
    *(v34 + 24) = v36;
    v37 = (*(v13 + 32))(v34 + v32, v16, v31);
    *(v34 + v33) = v73;
    MEMORY[0x1EEE9AC00](v37);
    *(&v67 - 4) = v35;
    *(&v67 - 3) = v36;
    v38 = v91;
    *(&v67 - 2) = v68;
    *(&v67 - 1) = v38;
    sub_1A3E0479C(0, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3E003FC();
    swift_unknownObjectRetain();
    v39 = v72;
    sub_1A524B704();
    v40 = v76;
    sub_1A52498D4();
    sub_1A3DF19A4(&qword_1EB12CB20, sub_1A3E0036C);
    sub_1A3DF19A4(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    v41 = v78;
    v42 = v79;
    v43 = v75;
    sub_1A524A934();
    (*(v77 + 8))(v40, v41);
    (*(v74 + 8))(v39, v43);
    sub_1A3E001C8();
    v45 = &v42[*(v44 + 36)];
    sub_1A524BBE4();
    LOBYTE(v41) = sub_1A524A064();
    sub_1A3E055C8(0, &qword_1EB127B00, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v45[*(v46 + 36)] = v41;
    sub_1A3E0011C();
    v48 = &v42[*(v47 + 36)];
    v49 = *MEMORY[0x1E697F468];
    v50 = sub_1A52494A4();
    (*(*(v50 - 8) + 104))(v48, v49, v50);
    sub_1A3E05634(0, &qword_1EB1245E0, MEMORY[0x1E6981998], sub_1A3E004A0, MEMORY[0x1E697DDA0]);
    *&v48[*(v51 + 36)] = 256;
    v52 = sub_1A524A064();
    v53 = v86;
    v54 = &v42[*(v86 + 36)];
    *v54 = v52;
    *(v54 + 1) = 0;
    *(v54 + 2) = 0;
    __asm { FMOV            V0.2D, #16.0 }

    *(v54 + 24) = _Q0;
    v54[40] = 0;
    v60 = v42;
    v61 = v84;
    sub_1A3E09634(v60, v84, sub_1A3E000E0);
    v62 = 0;
    v63 = v53;
  }

  (*(v87 + 56))(v61, v62, 1, v63);
  v82(v96, v97, v28);
  v95[0] = v96;
  v64 = v89;
  sub_1A3E098F0(v61, v89, sub_1A3E000AC);
  v95[1] = v64;
  v94[0] = v28;
  v94[1] = v88;
  v92 = WitnessTable;
  v93 = sub_1A3E049AC(&qword_1EB12CDD8, sub_1A3E000AC, sub_1A3E0892C);
  sub_1A3DF4988(v95, 2uLL, v94);
  sub_1A3E08CD8(v61, sub_1A3E000AC);
  v65 = v85;
  v85(v97, v28);
  sub_1A3E08CD8(v64, sub_1A3E000AC);
  return v65(v96, v28);
}

uint64_t sub_1A3DFE0F0(uint64_t a1, uint64_t a2)
{
  sub_1A3E09AF8(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5 - 8];
  v7 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A3DF8124(a2, v25);
  v10 = *&v25[0];

  result = sub_1A3E00068(v25);
  if (v10)
  {
    sub_1A3DF8124(a2, v25);
    v12 = *(a2 + 16);
    sub_1A524BAE4();
    sub_1A524BAA4();
    v23 = v12;
    v24 = *(*(a2 + 24) + 16);
    swift_getAssociatedTypeWitness();
    sub_1A3DFE444(a1, v25, v22, v9);
    sub_1A3E00068(v25);
    sub_1A3E09958(v22, sub_1A3E00558);
    v13 = sub_1A52434D4();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = sub_1A3C30368();
    v15 = sub_1A4657324(v9, 0, v14 & 1, 0, 0, v6, 0, 0);
    sub_1A3E005C0(v6, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
    v16 = sub_1A3E78D28(v15);
    sub_1A3E00630(v15);
    if (v16)
    {
      sub_1A3E09958(v9, type metadata accessor for LemonadeNavigationDestination);
    }

    else
    {
      if (qword_1EB1987D0 != -1)
      {
        swift_once();
      }

      v17 = sub_1A5246F24();
      __swift_project_value_buffer(v17, qword_1EB1987D8);
      v18 = sub_1A5246F04();
      v19 = sub_1A524D244();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1A3C1C000, v18, v19, "Did not navigate to 1up for assets overflow button", v20, 2u);
        MEMORY[0x1A590EEC0](v20, -1, -1);
      }

      return sub_1A3E09958(v9, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  return result;
}

uint64_t sub_1A3DFE444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    sub_1A3E09888(a3, &v37, sub_1A3E00558);
    if (!*(&v38 + 1))
    {
      swift_unknownObjectRetain();
      sub_1A3E09958(&v37, sub_1A3E00558);
      sub_1A3E09888(a2 + 8, v40, sub_1A3DF0038);
      v21 = v41;
      if (v41)
      {
        v22 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v21 = (*(v22 + 8))(v21, v22);
        __swift_destroy_boxed_opaque_existential_0(v40);
        if (v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = -1;
        }
      }

      else
      {
        sub_1A3E09958(v40, sub_1A3DF0038);
        v23 = -1;
      }

LABEL_34:
      sub_1A3E09888(a2 + 8, v40, sub_1A3DF0038);
      v26 = v41;
      if (v41)
      {
        v27 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v28 = (*(v27 + 16))(v9, v26, v27);
        __swift_destroy_boxed_opaque_existential_0(v40);
      }

      else
      {
        sub_1A3E09958(v40, sub_1A3DF0038);
        v28 = 0;
      }

      v35 = v21;
      v36 = v23;
      sub_1A3E041E4(v21, v23);
      v29 = sub_1A3C5A374();
      v30 = sub_1A3C5A374();
      sub_1A41DF298(v9, &v35, v29 & 1, 1, v30 & 1, 0, v28, &v37);
      sub_1A3E041F8(v21, v23);
      v31 = v38;
      *a4 = v37;
      *(a4 + 16) = v31;
      *(a4 + 32) = v39;
      type metadata accessor for LemonadeNavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

    v33 = a2;
    v34 = a4;
    sub_1A3C34460(&v37, v40);
    v10 = v41;
    v11 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v12 = *(v11 + 40);
    swift_unknownObjectRetain();
    v12(v10, v11);
    swift_getAssociatedTypeWitness();
    sub_1A3D435C4();
    v13 = sub_1A524E614();

    *&v37 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
LABEL_32:
      v14 = sub_1A524E2B4();
      if (v14)
      {
LABEL_5:
        v15 = 0;
        do
        {
          v16 = v15;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1A59097F0](v16, v13);
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              swift_unknownObjectRetain();
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v16;
            if (v15 == v14)
            {
              goto LABEL_33;
            }
          }

          MEMORY[0x1A5907D70]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
        }

        while (v15 != v14);
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_5;
      }
    }

LABEL_33:

    v24 = objc_opt_self();
    sub_1A3C52C70(0, &qword_1EB126660);
    v25 = sub_1A524CA14();

    v21 = [v24 transientAssetCollectionWithAssets:v25 title:0];

    __swift_destroy_boxed_opaque_existential_0(v40);
    v23 = 0;
    a2 = v33;
    a4 = v34;
    goto LABEL_34;
  }

  if (qword_1EB1987D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246F24();
  __swift_project_value_buffer(v17, qword_1EB1987D8);
  swift_unknownObjectRetain();
  v18 = sub_1A5246F04();
  v19 = sub_1A524D244();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v20 = 136315138;
    *&v37 = a1;
    swift_unknownObjectRetain();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}