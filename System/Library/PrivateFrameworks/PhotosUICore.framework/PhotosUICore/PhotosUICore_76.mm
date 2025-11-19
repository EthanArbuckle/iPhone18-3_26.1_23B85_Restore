uint64_t sub_1A45E24C0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1A524E2B4();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1A59097F0](0, a1);
LABEL_10:
  v6 = v5;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524C664();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1A45E2670()
{
  sub_1A3C56824(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1A3DCC930(0, 0, v3, &unk_1A534F448, v5);
}

uint64_t sub_1A45E2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1A5245004();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1A5246984();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1A3C56824(0, &qword_1EB13E828, MEMORY[0x1E69C1468], MEMORY[0x1E69E6720]);
  v4[19] = swift_task_alloc();
  v6 = sub_1A52452A4();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_1A5244FD4();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = sub_1A5245124();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = sub_1A52469C4();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2A68, 0, 0);
}

uint64_t sub_1A45E2A68()
{
  *(v0 + 264) = sub_1A524CC54();
  *(v0 + 272) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2B00, v2, v1);
}

uint64_t sub_1A45E2B00()
{
  v1 = v0[13];

  v2 = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v0[35] = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = v3[1];
  *v3 = xmmword_1A5301350;
  sub_1A440B338(v4, v5);
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content);
  v0[36] = v6;
  if (v6[3] == 1)
  {
    v6[2] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5301350;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[37] = 0;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2C60, 0, 0);
}

uint64_t sub_1A45E2C60()
{
  sub_1A3C52C70(0, &qword_1EB1268C8);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[38] = v1;
  v2 = MEMORY[0x1E69C1878];
  sub_1A3C56824(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v0[12] = v3;
  sub_1A45E4630(&qword_1EB124A50, MEMORY[0x1E69C1878]);
  sub_1A3C56824(0, &qword_1EB120C98, v2, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  v0[39] = sub_1A52451F4();
  v4 = sub_1A52451B4();
  v0[40] = v4;
  if ([v1 showAssetRichDescription])
  {
    v5 = sub_1A446720C();
    v6 = [v5 uuid];

    if (v6)
    {
      v7 = sub_1A524C674();
      v9 = v8;

      v10 = sub_1A446720C();
      v11 = [v10 photoLibrary];
      v0[41] = v11;

      if (v11)
      {
        [v1 useShadowNamesInARD];
        sub_1A5245114();
        sub_1A3C4D548(0, &qword_1EB12B260);
        v12 = swift_allocObject();
        v0[42] = v12;
        *(v12 + 16) = xmmword_1A52F8E10;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
        sub_1A5244D94();
        v13 = swift_task_alloc();
        v0[43] = v13;
        *v13 = v0;
        v13[1] = sub_1A45E3110;

        return MEMORY[0x1EEE2A0C0](v12, v11);
      }
    }

    v0[49] = sub_1A524CC44();
    v20 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A45E37D8, v20, v19);
  }

  else
  {
    sub_1A5244D24();
    sub_1A3C4D548(0, &qword_1EB126180);
    v14 = swift_allocObject();
    v0[50] = v14;
    *(v14 + 16) = xmmword_1A52F9790;
    *(v14 + 32) = sub_1A446720C();
    v15 = sub_1A52469D4();
    v16 = MEMORY[0x1E69C1888];
    v0[5] = v15;
    v0[6] = v16;
    v0[2] = v4;

    sub_1A4503FF0();
    v17 = swift_task_alloc();
    v0[51] = v17;
    *v17 = v0;
    v17[1] = sub_1A45E3A08;
    v18 = v0[17];

    return MEMORY[0x1EEE2A090](v14, v0 + 2, v18);
  }
}

uint64_t sub_1A45E3110(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {

    v4 = sub_1A45E3FB8;
  }

  else
  {
    v4 = sub_1A45E322C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E322C()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  sub_1A5244CE4();
  swift_allocObject();
  v8 = v2;
  sub_1A5244CD4();
  sub_1A5244FC4();
  (*(v5 + 16))(v4, v3, v6);
  sub_1A5245294();
  v9 = sub_1A5245274();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_1A52469D4();
  v11 = MEMORY[0x1E69C1888];
  v0[10] = v10;
  v0[11] = v11;
  v0[7] = v1;

  sub_1A4503FF0();
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1A45E33E8;
  v13 = v0[44];
  v14 = v0[42];
  v15 = v0[29];
  v17 = v0[18];
  v16 = v0[19];
  v18 = MEMORY[0x1E69E7CD0];

  return MEMORY[0x1EEE2A380](v14, v16, v13, v18, v15, v0 + 7, v17, 0);
}

uint64_t sub_1A45E33E8(uint64_t a1)
{
  v3 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  sub_1A45E46C4(v3[19], &qword_1EB13E828, MEMORY[0x1E69C1468]);

  if (v1)
  {
    v4 = sub_1A45E40D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 7));
    v4 = sub_1A45E3584;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E3584()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v29 = *(v0 + 176);
  v9 = *(v0 + 160);
  if (*(v1 + 16))
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 208);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v28 = *(v0 + 112);
    v24 = *(v0 + 328);
    (*(v11 + 16))(v10, v1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));

    v25 = v4;
    v12 = v2;
    v13 = sub_1A5244FF4();
    v15 = v14;

    (*(v8 + 8))(v29, v9);
    (*(v6 + 8))(v27, v26);
    (*(v3 + 8))(v12, v25);
    (*(v11 + 8))(v10, v28);
    v16 = *(v0 + 384);
    *(v0 + 432) = v13;
    *(v0 + 440) = v15;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      *(v0 + 448) = sub_1A524CC44();
      v18 = sub_1A524CBC4();
      v20 = v19;
      v21 = sub_1A45E3CD8;
      goto LABEL_9;
    }
  }

  else
  {

    (*(v8 + 8))(v29, v9);
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    v16 = *(v0 + 384);
  }

  *(v0 + 456) = v16;
  *(v0 + 464) = sub_1A524CC44();
  v18 = sub_1A524CBC4();
  v20 = v22;
  v21 = sub_1A45E3E70;
LABEL_9:

  return MEMORY[0x1EEE6DFA0](v21, v18, v20);
}

uint64_t sub_1A45E37D8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[13];

  v4 = *(v3 + v1);
  v5 = *(v3 + v1 + 8);
  *(v3 + v1) = xmmword_1A5344DC0;
  sub_1A440B338(v4, v5);
  if (*(v2 + 24) == 3)
  {
    *(v0[36] + 16) = 0;
  }

  else
  {
    v6 = v0[36];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DC0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E391C, 0, 0);
}

uint64_t sub_1A45E391C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45E3A08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_1A45E4230;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 16);
    v4 = sub_1A45E3B34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A45E3B34()
{
  v1 = v0[52];
  v2 = sub_1A446720C();
  v3 = [v2 localIdentifier];

  v4 = sub_1A524C674();
  v6 = v5;

  if (*(v1 + 16))
  {
    sub_1A3C5DCA4(v4, v6);
    v8 = v7;

    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  v0[57] = v0[53];
  v0[58] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E3E70, v10, v9);
}

void sub_1A45E3CD8()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[35];
  v4 = v0[13];

  v5 = (v4 + v3);
  v6 = *(v4 + v3);
  v7 = *(v4 + v3 + 8);
  *v5 = v2;
  v5[1] = v1;
  sub_1A440B338(v6, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45E3D88()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A45E3E70()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[13];

  v4 = *(v3 + v1);
  v5 = *(v3 + v1 + 8);
  *(v3 + v1) = xmmword_1A5344DC0;
  sub_1A440B338(v4, v5);
  if (*(v2 + 24) == 3)
  {
    *(v0[36] + 16) = 0;
  }

  else
  {
    v6 = v0[36];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DC0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E4734, 0, 0);
}

uint64_t sub_1A45E3FB8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A45E40D0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 224);
  v11 = *(v0 + 216);
  v12 = *(v0 + 232);
  v10 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A45E4230()
{
  v1 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_1A45E4328(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content;
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel.Content(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A5241604();
  *&v7[v8] = v9;
  v10 = &v7[OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState];
  *v10 = 0;
  *(v10 + 1) = 0;
  return sub_1A4467460(a1, a2, a3);
}

uint64_t sub_1A45E43C4()
{

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState + 8);

  return sub_1A440B338(v1, v2);
}

uint64_t sub_1A45E4458()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45E2798(v3, v4, v5, v2);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A38DetailsAssetDescriptionWidgetViewModelC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A45E4594()
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

uint64_t sub_1A45E4630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45E4678()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1A45E1510(v1, v3);
  return sub_1A440B338(v4, v5);
}

uint64_t sub_1A45E46C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56824(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OneUpSharePlayActivityActivationResult.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t OneUpSharePlayActivityCoordinator.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A45E49E8();

  swift_beginAccess();
  return sub_1A45EC8B0(v1 + 16, a1, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate);
}

uint64_t OneUpSharePlayActivityCoordinator.delegate.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A45E4AD8();

  return sub_1A45EC970(a1, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
}

uint64_t sub_1A45E4A78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A45ECAEC(v1, v2 + 16);
  return swift_endAccess();
}

uint64_t (*OneUpSharePlayActivityCoordinator.delegate.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1A45E49E8();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A45E4CF0;
}

uint64_t sub_1A45E4CF0()
{
  swift_endAccess();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A45E4DAC()
{
  sub_1A45EBBC4();
}

uint64_t sub_1A45E4DD4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBBC4();
}

uint64_t sub_1A45E4E3C(uint64_t a1)
{
  sub_1A45EBFD4(0, &qword_1EB140920, MEMORY[0x1E695BF10]);
  sub_1A45EC6B0();
  v3 = sub_1A524C594();
  if (v3)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45E4AD8();
  }
}

uint64_t sub_1A45E4FB0()
{
  sub_1A45EBC38();
}

uint64_t sub_1A45E4FD8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBC38();
}

uint64_t sub_1A45E5040(uint64_t a1)
{
  sub_1A45EBFD4(0, &qword_1EB140920, MEMORY[0x1E695BF10]);
  sub_1A45EC6B0();
  v3 = sub_1A524C594();
  if (v3)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45E4AD8();
  }
}

uint64_t OneUpSharePlayActivityCoordinator.activeSessionCoordinator.getter()
{
  sub_1A45EBCAC();
}

uint64_t sub_1A45E51DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EBCAC();
}

uint64_t sub_1A45E5244()
{
  swift_getKeyPath();
  sub_1A45E4AD8();
}

void sub_1A45E530C()
{
  sub_1A45EC31C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45E5334(uint64_t *a1@<X8>)
{
  *a1 = sub_1A45EC31C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45E539C(uint64_t a1)
{
  swift_beginAccess();
  sub_1A45EC9CC(0);
  sub_1A45EC22C(&qword_1EB13E890, sub_1A45EC9CC);
  v3 = sub_1A524C594();
  if (v3)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45E4AD8();
  }
}

uint64_t sub_1A45E5538()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 112);
}

uint64_t sub_1A45E55AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A45E5538();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A45E5604(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + 112) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45E4AD8();
  }

  return result;
}

uint64_t sub_1A45E5748()
{
  v0 = sub_1A45EC3A4();
  sub_1A3C66EE8(v0);
  return v0;
}

uint64_t sub_1A45E577C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A45EC3A4();
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v2;
  a1[1] = v4;

  return sub_1A3C66EE8(v2);
}

uint64_t sub_1A45E57C0(uint64_t *a1)
{
  v1 = *a1;
  sub_1A3C66EE8(*a1);
  return sub_1A45E580C(v1);
}

uint64_t sub_1A45E580C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A45E4AD8();
  sub_1A3C33378(a1);
}

uint64_t OneUpSharePlayActivityCoordinator.isEligibleForGroupSession.getter()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 136);
}

uint64_t sub_1A45E5944@<X0>(_BYTE *a1@<X8>)
{
  result = OneUpSharePlayActivityCoordinator.isEligibleForGroupSession.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A45E599C(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + 136) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45E4AD8();
  }

  return result;
}

uint64_t OneUpSharePlayActivityCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpSharePlayActivityCoordinator.init()();
  return v0;
}

void *OneUpSharePlayActivityCoordinator.init()()
{
  v1 = v0;
  v2 = *v0;
  v31 = v2;
  sub_1A45EBFD4(0, &qword_1EB13E840, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  sub_1A45EC614(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v7 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  sub_1A45EC028();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v13 = *(v2 + 88);
  v14 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_1A5247914();
  v1[10] = sub_1A52478F4();
  v28 = v13;
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  sub_1A5247914();
  v1[11] = sub_1A52478F4();
  sub_1A52418A4();
  v1[12] = sub_1A5241894();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A524E2B4())
  {
    v15 = sub_1A45EBD20(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v1[13] = v15;
  *(v1 + 112) = 0;
  v1[15] = 0;
  v1[16] = 0;
  v26 = qword_1EB1C9950;
  sub_1A5241604();
  *(v1 + 136) = 0;
  sub_1A5241884();
  sub_1A3C52C70(0, &qword_1EB12B180);
  v16 = sub_1A524D474();
  *&v32 = v16;
  v17 = sub_1A524D434();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1A45EC0E8();
  sub_1A45EC164();
  sub_1A5247A44();
  sub_1A45EC7B0(v5, &qword_1EB13E840, MEMORY[0x1E69E8050]);

  (*(v27 + 8))(v9, v7);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v28;
  v19[2] = v14;
  v19[3] = v20;
  v19[4] = v18;
  sub_1A45EC22C(&qword_1EB13E858, sub_1A45EC028);
  v21 = v30;
  sub_1A5247A94();

  v22 = (*(v29 + 8))(v12, v21);
  MEMORY[0x1EEE9AC00](v22);
  *(&v26 - 2) = v14;
  *(&v26 - 1) = v20;
  swift_getKeyPath();
  sub_1A45E49E8();

  *&v32 = v1;
  MEMORY[0x1EEE9AC00](v23);
  *(&v26 - 2) = v14;
  *(&v26 - 1) = v20;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A5247864();
  swift_endAccess();

  v24 = *v1;
  v33 = v1;
  v32 = *(v24 + 80);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return v1;
}

Swift::Void __swiftcall OneUpSharePlayActivityCoordinator.beginListening()()
{
  v1 = *v0;
  sub_1A45EBFD4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if (sub_1A45EBBC4())
  {
    sub_1A524D244();
    v14 = *sub_1A486DB9C();
    sub_1A5246DF4();
    v5 = v14;
  }

  else
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    sub_1A524CC54();

    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = *(v1 + 80);
    v9[5] = *(v1 + 88);
    v9[6] = v7;

    v11 = sub_1A3D4D930(0, 0, v4, &unk_1A534F628, v9);
    v12 = sub_1A3EE1368(v11, MEMORY[0x1E69E7CA8] + 8);

    sub_1A45E4E3C(v12);
  }
}

uint64_t sub_1A45E6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_1A52411C4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4[14] = swift_getAssociatedTypeWitness();
  v4[15] = swift_getAssociatedConformanceWitness();
  v4[16] = swift_getAssociatedTypeWitness();
  v4[17] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4[18] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[19] = AssociatedTypeWitness;
  v4[20] = *(AssociatedTypeWitness - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_checkMetadataState();
  v4[24] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = sub_1A524CC54();
  v4[29] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v4[30] = v9;
  v4[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A45E66FC, v9, v8);
}

uint64_t sub_1A45E66FC()
{
  v1 = v0[17];
  sub_1A524D264();
  v2 = sub_1A486DB9C();
  v0[32] = v2;
  v3 = *v2;
  sub_1A5246DF4();

  swift_checkMetadataState();
  (*(v1 + 32))();
  sub_1A524CE24();
  swift_beginAccess();
  v4 = sub_1A524CC44();
  v0[33] = v4;
  v0[34] = swift_getAssociatedConformanceWitness();
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1A45E68C8;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 8, v4, v6);
}

uint64_t sub_1A45E68C8()
{
  v2 = *v1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1A45E7098;
  }

  else
  {
    v5 = sub_1A45E6A1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A45E6A1C()
{
  v1 = v0[8];
  v0[36] = v1;
  v2 = v0[32];
  if (v1)
  {
    v3 = sub_1A524D264();
    v4 = *v2;
    if (os_log_type_enabled(*v2, v3))
    {
      v5 = v0[15];
      v7 = v0[12];
      v6 = v0[13];
      v19 = v0[11];
      v4;
      swift_unknownObjectRetain();
      v8 = swift_slowAlloc();
      swift_slowAlloc();
      *v8 = 136446210;
      v9 = *(v5 + 120);
      v10 = swift_checkMetadataState();
      v9(v10, v5);
      sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      swift_unknownObjectRelease();
      (*(v7 + 8))(v6, v19);
      sub_1A3C2EF94();
    }

    Strong = swift_weakLoadStrong();
    v0[37] = Strong;
    if (Strong)
    {
      v12 = swift_task_alloc();
      v0[38] = v12;
      *v12 = v0;
      v12[1] = sub_1A45E6E44;

      return sub_1A45E730C(v1);
    }

    else
    {
      swift_unknownObjectRelease();
      v16 = sub_1A524CC44();
      v0[33] = v16;
      v0[34] = swift_getAssociatedConformanceWitness();
      v17 = swift_task_alloc();
      v0[35] = v17;
      *v17 = v0;
      v17[1] = sub_1A45E68C8;
      v18 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 8, v16, v18);
    }
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    sub_1A524D264();
    v14 = *v2;
    sub_1A5246DF4();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1A45E6E44()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A45E6F88, v3, v2);
}

uint64_t sub_1A45E6F88()
{
  swift_unknownObjectRelease();
  v1 = sub_1A524CC44();
  v0[33] = v1;
  v0[34] = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1A45E68C8;
  v3 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 8, v1, v3);
}

uint64_t sub_1A45E7098()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1A524EA74();
  v7 = v0[21];
  if (v6)
  {
    v8 = v6;
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v9 = v0[19];
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = v0[32];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v12 = sub_1A524D244();
  v13 = *v11;
  if (os_log_type_enabled(v13, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A45E730C(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *v1;
  sub_1A45EBFD4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  v2[29] = swift_task_alloc();
  v2[30] = *(v3 + 88);
  v2[31] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[32] = swift_getAssociatedTypeWitness();
  v2[33] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[34] = AssociatedTypeWitness;
  v2[35] = *(AssociatedTypeWitness - 8);
  v2[36] = swift_task_alloc();
  v5 = swift_getAssociatedTypeWitness();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_1A52411C4();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = sub_1A524CC54();
  v2[46] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v2[47] = v8;
  v2[48] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A45E7628, v8, v7);
}

uint64_t sub_1A45E7628()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 392) = v2;
  v31 = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 328);
    v6 = *(v0 + 264);
    v30 = *(v0 + 320);
    v3;
    swift_unknownObjectRetain();
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136446210;
    v8 = *(v6 + 120);
    v9 = swift_checkMetadataState();
    v8(v9, v6);
    sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v30);
    sub_1A3C2EF94();
  }

  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 296);
  v13 = *(*(v0 + 264) + 72);
  v14 = swift_checkMetadataState();
  *(v0 + 400) = v14;
  v13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 64))(v12, AssociatedConformanceWitness);
  (*(v11 + 8))(v10, v12);
  if (v16)
  {
    v17 = *(v0 + 264);
    *(v0 + 208) = *(v0 + 216);
    sub_1A52478E4();
    v18 = (*(v17 + 136))(v14, v17);
    *(v0 + 481) = v18 & 1;
    *(v0 + 480) = (v18 & 1) == 0;
    v19 = sub_1A45EC3A4();
    v21 = v20;
    *(v0 + 408) = v19;
    *(v0 + 416) = v20;
    sub_1A3C66EE8(v19);
    v22 = swift_task_alloc();
    *(v0 + 424) = v22;
    *v22 = v0;
    v22[1] = sub_1A45E7D54;

    return sub_1A45EAC68(v0 + 16, (v0 + 480), v19, v21);
  }

  else
  {

    v24 = sub_1A524D244();
    v25 = *v31;
    swift_unknownObjectRetain_n();
    if (os_log_type_enabled(v25, v24))
    {
      swift_unknownObjectRetain_n();
      v25;
      v26 = swift_slowAlloc();
      swift_slowAlloc();
      *v26 = 136315906;
      v27 = sub_1A3F67960();
      v28 = *(v27 + 1);
      *(v0 + 448) = *v27;
      *(v0 + 452) = v28;
      sub_1A3DC37B0();
      sub_1A524EA44();
      sub_1A3C2EF94();
    }

    swift_unknownObjectRelease_n();
    (*(*(v0 + 264) + 168))(v14);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1A45E7D54()
{
  v1 = *v0;
  v2 = *(*v0 + 408);

  sub_1A3C33378(v2);
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E7EB0, v4, v3);
}

uint64_t sub_1A45E7EB0()
{
  sub_1A45E580C(0);
  if (sub_1A45EBCAC())
  {
    result = sub_1A45EBCAC();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0 + 392);
    v2 = *(v0 + 400);
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 320);
    v7 = *(v0 + 328);
    v8 = *(v0 + 264);

    swift_unknownObjectRetain();

    (*(v8 + 120))(v2, v8);
    swift_unknownObjectRelease();
    v9 = sub_1A524D244();
    v10 = *v3;
    (*(v7 + 16))(v5, v4, v6);
    if (os_log_type_enabled(v10, v9))
    {
      v12 = *(v0 + 328);
      v11 = *(v0 + 336);
      v13 = *(v0 + 320);
      swift_unknownObjectRetain_n();
      v10;
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136315394;
      sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v12 + 8))(v11, v13);
      sub_1A3C2EF94();
    }

    v17 = *(v0 + 344);
    v18 = *(v0 + 320);
    v19 = *(*(v0 + 328) + 8);
    v19(*(v0 + 336), v18);
    v19(v17, v18);
    v20 = v0 + 16;
    goto LABEL_11;
  }

  if (*(v0 + 481) == 1)
  {
    sub_1A45EC8B0(v0 + 16, v0 + 96, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter);
    if (!*(v0 + 120))
    {
      v25 = *(v0 + 392);
      v24 = *(v0 + 400);
      v26 = *(v0 + 264);

      sub_1A45EC970(v0 + 96, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);
      (*(v26 + 176))(v24, v26);
      sub_1A524D244();
      v27 = *v25;
      sub_1A5246DF4();

      v20 = v0 + 16;
LABEL_11:
      sub_1A45EC970(v20, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

      v21 = *(v0 + 8);

      return v21();
    }

    sub_1A3C34460((v0 + 96), v0 + 56);
    type metadata accessor for OneUpSharePlaySessionHostCoordinator();
    sub_1A3C341C8(v0 + 56, v0 + 136);
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    *(v0 + 432) = v15;
    *v15 = v0;
    v15[1] = sub_1A45E84FC;
    v16 = *(v0 + 216);

    return sub_1A3E881B0(v16, v0 + 136);
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientCoordinator();
    swift_unknownObjectRetain();
    v22 = swift_task_alloc();
    *(v0 + 440) = v22;
    *v22 = v0;
    v22[1] = sub_1A45E88F0;
    v23 = *(v0 + 216);

    return sub_1A4845D9C(v23);
  }
}

uint64_t sub_1A45E84FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 176) = v1;
  *(v3 + 184) = a1;

  v4 = *(v2 + 384);
  v5 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E8620, v5, v4);
}

uint64_t sub_1A45E8620()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v1 = *(v0 + 184);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 224);
  v18 = *(v0 + 232);
  swift_retain_n();
  v17 = *(v0 + 240);
  sub_1A45E5244();
  (*(v6 + 112))(v2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[1] = vextq_s8(v17, v17, 8uLL);
  v9[2].i64[0] = v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_1A5247A94();

  (*(v3 + 8))(v4, v5);
  sub_1A45E5040(v10);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v18, 1, 1, v11);

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v1;
  v13[5] = v7;
  sub_1A3D4D930(0, 0, v18, &unk_1A534F900, v13);

  sub_1A45EC970(v0 + 16, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A45E88F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 192) = v1;
  *(v3 + 200) = a1;

  v4 = *(v2 + 384);
  v5 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1A45E8A14, v5, v4);
}

uint64_t sub_1A45E8A14()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 224);
  v18 = *(v0 + 232);
  swift_retain_n();
  v17 = *(v0 + 240);
  sub_1A45E5244();
  (*(v6 + 112))(v2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[1] = vextq_s8(v17, v17, 8uLL);
  v9[2].i64[0] = v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_1A5247A94();

  (*(v3 + 8))(v4, v5);
  sub_1A45E5040(v10);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v18, 1, 1, v11);

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v1;
  v13[5] = v7;
  sub_1A3D4D930(0, 0, v18, &unk_1A534F900, v13);

  sub_1A45EC970(v0 + 16, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t OneUpSharePlayActivityCoordinator.activateActivity(initialDataSource:initialIndexPath:skipSharePlayPermissionPrompt:activationOneUpAdapterMaker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 104) = v19;
  *(v9 + 112) = v8;
  *(v9 + 88) = a6;
  *(v9 + 96) = a8;
  *(v9 + 328) = a7;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 48) = a1;
  v10 = *v8;
  sub_1A45EBFD4(0, &qword_1EB13E860, MEMORY[0x1E696B368]);
  *(v9 + 120) = swift_task_alloc();
  v11 = sub_1A5241A74();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_1A5241C14();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_1A5241C34();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = *(v10 + 88);
  *(v9 + 216) = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 224) = AssociatedTypeWitness;
  *(v9 + 232) = *(AssociatedTypeWitness - 8);
  *(v9 + 240) = swift_task_alloc();
  sub_1A524CC54();
  *(v9 + 248) = sub_1A524CC44();
  v16 = sub_1A524CBC4();
  *(v9 + 256) = v16;
  *(v9 + 264) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1A45E8FA0, v16, v15);
}

uint64_t sub_1A45E8FA0()
{
  v37 = v0;
  sub_1A524D264();
  v1 = sub_1A486DB9C();
  *(v0 + 272) = v1;
  v2 = *v1;
  sub_1A5246DF4();

  if (sub_1A45E5538())
  {
    v3 = *(v0 + 48);

    sub_1A524D244();
    v4 = *v1;
    sub_1A5246DF4();

    *v3 = 3;

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 224);
  v32 = *(v0 + 88);
  v31 = *(v0 + 80);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  sub_1A45E5604(1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 280) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 144))(v10, v9, v8, v31, v32, v7, AssociatedConformanceWitness);
  v12 = sub_1A45EBCAC();
  *(v0 + 288) = v12;
  if (v12)
  {
    v13 = v12;
    v35 = *(v12 + 24);
    v36 = 0;

    if (static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v35, &v36) && ((*(*v13 + 296))() & 1) != 0)
    {
      v14 = swift_task_alloc();
      *(v0 + 296) = v14;
      *v14 = v0;
      v14[1] = sub_1A45E94E8;
      v15 = *(v0 + 104);
      v16 = *(v0 + 96);
      v17 = *(v0 + 48);

      return sub_1A45EA1E0(v17, v16, v15);
    }
  }

  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 120);
  v34 = AssociatedConformanceWitness;
  v25 = *(v0 + 328);
  sub_1A45EBCAC();
  v26 = MEMORY[0x1E696B360];
  if (!v25)
  {
    v26 = MEMORY[0x1E696B358];
  }

  (*(v23 + 104))(v21, *v26, v22);
  sub_1A5241C24();
  (*(v19 + 16))(v24, v18, v20);
  (*(v19 + 56))(v24, 0, 1, v20);
  v33 = (*(v34 + 160) + **(v34 + 160));
  v27 = swift_task_alloc();
  *(v0 + 304) = v27;
  *v27 = v0;
  v27[1] = sub_1A45E96EC;
  v28 = *(v0 + 224);
  v29 = *(v0 + 152);
  v30 = *(v0 + 120);

  return v33(v29, v30, v28, v34);
}

uint64_t sub_1A45E94E8()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45E9608, v3, v2);
}

uint64_t sub_1A45E9608()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);
  sub_1A45E5604(0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45E96EC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_1A45EC7B0(v2, &qword_1EB13E860, MEMORY[0x1E696B368]);
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45E984C, v4, v3);
}

uint64_t sub_1A45E984C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[19], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x1E696B2A0])
  {
    v5 = v0[34];
    sub_1A524D264();
    v6 = *v5;
    sub_1A5246DF4();

    if (sub_1A45EC3A4())
    {
      v7 = v0[34];
      sub_1A524D244();
      v8 = *v7;
      sub_1A5246DF4();
    }

    v27 = v0[35];
    v9 = v0[12];

    sub_1A45E580C(v9);
    v25 = (*(v27 + 168) + **(v27 + 168));
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_1A45E9C28;
    v11 = v0[35];
    v12 = v0[28];

    return v25(v12, v11);
  }

  else
  {
    if (v4 == *MEMORY[0x1E696B298])
    {
      v14 = 2;
    }

    else
    {
      if (v4 != *MEMORY[0x1E696B2A8])
      {
        return sub_1A524E6E4();
      }

      v14 = 3;
    }

    v28 = v14;
    v15 = v0[29];
    v24 = v0[28];
    v26 = v0[30];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[6];

    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v26, v24);
    *v22 = v28;
    sub_1A45E5604(0);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1A45E9C28(char a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = *(v4 + 256);
    v6 = *(v4 + 264);
    v7 = sub_1A45E9F58;
  }

  else
  {
    *(v4 + 329) = a1 & 1;
    v5 = *(v4 + 256);
    v6 = *(v4 + 264);
    v7 = sub_1A45E9D54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A45E9D54()
{
  v1 = *(v0 + 329);

  if (v1)
  {
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 48);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    *v8 = 0;
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 232);
    v21 = *(v0 + 224);
    v22 = *(v0 + 240);
    v11 = *(v0 + 192);
    v12 = *(v0 + 184);
    v13 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v19 = *(v0 + 200);
    v20 = *(v0 + 48);
    sub_1A524D244();
    v16 = *v9;
    sub_1A5246DF4();

    sub_1A45E580C(0);
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v19, v12);
    (*(v10 + 8))(v22, v21);
    *v20 = 4;
  }

  sub_1A45E5604(0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A45E9F58()
{
  v1 = *(v0 + 272);

  v2 = sub_1A524D244();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = *(v0 + 184);
  v12 = *(v0 + 152);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);

  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  **(v0 + 48) = 4;
  sub_1A45E5604(0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A45EA1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  sub_1A524CC54();
  v4[17] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[18] = v6;
  v4[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A45EA2A4, v6, v5);
}

uint64_t sub_1A45EA2A4()
{
  sub_1A524D264();
  v1 = sub_1A486DB9C();
  *(v0 + 160) = v1;
  v2 = *v1;
  sub_1A5246DF4();

  v3 = sub_1A45EBCAC();
  *(v0 + 168) = v3;
  if (v3)
  {
    v4 = *(v0 + 128);
    *(v0 + 176) = *(v4 + 80);
    *(v0 + 184) = *(v4 + 88);
    type metadata accessor for OneUpSharePlaySessionHostCoordinator();
    v5 = swift_dynamicCastClass();
    *(v0 + 192) = v5;
    if (v5)
    {
      v6 = *(v0 + 104);
      v7 = *(v0 + 112);
      *(v0 + 216) = 0;
      swift_retain_n();
      v8 = swift_task_alloc();
      *(v0 + 200) = v8;
      *v8 = v0;
      v8[1] = sub_1A45EA5E0;

      return sub_1A45EAC68(v0 + 56, (v0 + 216), v6, v7);
    }

    v10 = *(v0 + 96);

    sub_1A524D244();
    v12 = *v1;
    sub_1A5246DF4();

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 176);
    swift_unknownObjectRetain();
    v15 = swift_checkMetadataState();
    v14(v15, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v0 + 96);

    sub_1A524D244();
    v11 = *v1;
    sub_1A5246DF4();
  }

  *v10 = 4;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A45EA5E0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EA700, v3, v2);
}

uint64_t sub_1A45EA700()
{
  if (*(v0 + 80))
  {
    sub_1A3C34460((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_1A45EA96C;

    return OneUpSharePlaySessionHostCoordinator.replacePausedSession(newOneUpAdapter:)(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);

    sub_1A45EC970(v0 + 56, &unk_1EB1407C0, &qword_1EB12D6D0, &protocol descriptor for OneUpSharePlayBrowsingSessionAdapter, sub_1A3C34400);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 176);
    swift_unknownObjectRetain();
    v7 = swift_checkMetadataState();
    v6(v7, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    sub_1A524D244();
    v8 = *v3;
    sub_1A5246DF4();

    *v4 = 4;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A45EA96C(char a1)
{
  v2 = *v1;
  *(*v1 + 217) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EAA94, v4, v3);
}

uint64_t sub_1A45EAA94()
{
  v1 = *(v0 + 217);

  if (v1 == 1)
  {
    v2 = *(v0 + 96);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    *v2 = 1;
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);
    sub_1A524D244();
    v5 = *v3;
    sub_1A5246DF4();

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 176);
    v8 = swift_checkMetadataState();
    v7(v8, AssociatedConformanceWitness);

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    *v4 = 4;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A45EAC68(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  *(v5 + 128) = *v4;
  *(v5 + 168) = *a2;
  sub_1A524CC54();
  *(v5 + 136) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A45EAD34, v7, v6);
}

uint64_t sub_1A45EAD34()
{
  v22 = v0;
  v1 = *(v0 + 168);
  if (*(v0 + 104))
  {
    v20 = *(v0 + 168);
    v21 = 0;

    if (static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v20, &v21))
    {
      v2 = *(v0 + 104);
      sub_1A524D264();
      v3 = *sub_1A486DB9C();
      sub_1A5246DF4();

      v17 = (v2 + *v2);
      v4 = swift_task_alloc();
      *(v0 + 160) = v4;
      *v4 = v0;
      v4[1] = sub_1A45EB0F4;
      v5 = *(v0 + 96);

      return v17(v5);
    }

    v12 = *(v0 + 104);
    v13 = *(v0 + 96);

    sub_1A524D244();
    v14 = *sub_1A486DB9C();
    sub_1A5246DF4();
    sub_1A3C33378(v12);

    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  else
  {

    v18 = v1;
    v19 = 0;
    v7 = static OneUpSharePlaySessionCoordinator.Role.== infix(_:_:)(&v18, &v19);
    sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (v7)
    {
      sub_1A5246DF4();

      OneUpSharePlayActivityCoordinator.delegate.getter(v0 + 16);
      v9 = *(v0 + 96);
      if (*(v0 + 40))
      {
        sub_1A3C341C8(v0 + 16, v0 + 56);
        sub_1A45EC970(v0 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
        v10 = *(v0 + 80);
        v11 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
        (*(v11 + 8))(v10, v11);
        __swift_destroy_boxed_opaque_existential_0(v0 + 56);
      }

      else
      {
        sub_1A45EC970(v0 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
        *v9 = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 32) = 0;
      }
    }

    else
    {
      v15 = *(v0 + 96);
      sub_1A5246DF4();

      *(v15 + 32) = 0;
      *v15 = 0u;
      *(v15 + 16) = 0u;
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A45EB0F4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1A45EB214, v3, v2);
}

uint64_t sub_1A45EB214()
{
  v1 = *(v0 + 104);

  sub_1A3C33378(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A45EB284(void **a1)
{
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1A45EBCAC();
    if (v7 && v6 >= 2)
    {
      v8 = v7;

      sub_1A3F2DC14(v6);
      v9 = sub_1A524D264();
      v10 = *sub_1A486DB9C();
      if (os_log_type_enabled(v10, v9))
      {

        v23 = v10;
        v11 = swift_slowAlloc();
        v20 = v11;
        v22 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v11 = 136446466;
        v19 = *(v8 + 16);
        swift_getAssociatedTypeWitness();
        v21 = v9;
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v18 = *(AssociatedConformanceWitness + 120);
        v13 = swift_checkMetadataState();
        v18(v13, AssociatedConformanceWitness);
        sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8]);
        sub_1A524EA44();

        (*(v3 + 8))(v5, v2);
        sub_1A3C2EF94();
      }

      v14 = sub_1A45EBCAC();
      if (v14)
      {
        v15 = *(*v14 + 624);

        v15(v16);
      }

      sub_1A45E5244();

      sub_1A3F2D9F4(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1A45EB6A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *a4;
  v6 = sub_1A52411C4();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_1A524CC54();

  v5[9] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45EB7C8, v8, v7);
}

uint64_t sub_1A45EB7C8()
{

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[8];
    v10 = v0[6];
    v11 = v0[7];

    v2;
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136446210;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 120);
    v7 = swift_checkMetadataState();
    v6(v7, AssociatedConformanceWitness);

    sub_1A45EC22C(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();

    (*(v11 + 8))(v3, v10);
    sub_1A3C2EF94();
  }

  v0[2] = v0[3];
  sub_1A52478E4();

  v8 = v0[1];

  return v8();
}

uint64_t OneUpSharePlayActivityCoordinator.deinit()
{
  sub_1A45EC970(v0 + 16, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);

  sub_1A3C33378(*(v0 + 120));
  v1 = qword_1EB1C9950;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OneUpSharePlayActivityCoordinator.__deallocating_deinit()
{
  OneUpSharePlayActivityCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A45EBBC4()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 56);
}

uint64_t sub_1A45EBC38()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 64);
}

uint64_t sub_1A45EBCAC()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 72);
}

unint64_t sub_1A45EBD20(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
LABEL_3:
      sub_1A45ECA50(0, &qword_1EB13E898, MEMORY[0x1E69E6A10]);
      result = sub_1A524E3D4();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1A524E2B4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1A59097F0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1A5247894();
    sub_1A45EC22C(&qword_1EB13E888, MEMORY[0x1E695BF10]);
    result = sub_1A524C4A4();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1A45EC22C(&qword_1EB13E878, MEMORY[0x1E695BF10]);
      do
      {
        result = sub_1A524C594();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1A45EBFD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A45EC028()
{
  if (!qword_1EB13E848)
  {
    sub_1A45EC614(255, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    sub_1A3C52C70(255, &qword_1EB12B180);
    sub_1A45EC0E8();
    sub_1A45EC164();
    v0 = sub_1A5247844();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E848);
    }
  }
}

unint64_t sub_1A45EC0E8()
{
  result = qword_1EB13E850;
  if (!qword_1EB13E850)
  {
    sub_1A45EC614(255, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E850);
  }

  return result;
}

unint64_t sub_1A45EC164()
{
  result = qword_1EB12D740;
  if (!qword_1EB12D740)
  {
    sub_1A3C52C70(255, &qword_1EB12B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D740);
  }

  return result;
}

uint64_t sub_1A45EC1CC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A45E599C(v1);
  }

  return result;
}

uint64_t sub_1A45EC22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45EC274()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45E6390(v3, v4, v5, v2);
}

uint64_t sub_1A45EC31C()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t sub_1A45EC3A4()
{
  swift_getKeyPath();
  sub_1A45E49E8();

  return *(v0 + 120);
}

unint64_t sub_1A45EC41C()
{
  result = qword_1EB13E868;
  if (!qword_1EB13E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E868);
  }

  return result;
}

uint64_t sub_1A45EC494()
{
  result = sub_1A5241614();
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

void sub_1A45EC5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45EC614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45EC664()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 120);
  *(v2 + 120) = v1;
  *(v2 + 128) = v3;
  sub_1A3C66EE8(v1);
  return sub_1A3C33378(v4);
}

unint64_t sub_1A45EC6B0()
{
  result = qword_1EB13E870;
  if (!qword_1EB13E870)
  {
    sub_1A45EBFD4(255, &qword_1EB140920, MEMORY[0x1E695BF10]);
    sub_1A45EC22C(&qword_1EB13E878, MEMORY[0x1E695BF10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E870);
  }

  return result;
}

uint64_t sub_1A45EC774()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1A45EC7B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A45EBFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A45EC818()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A45EB6A0(v4, v5, v6, v2, v3);
}

uint64_t sub_1A45EC8B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1A45EC5B8(0, a3, a4, a5, sub_1A3C34400);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A45EC934()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1A45EC970(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A45EC5B8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A45EC9EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 104) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45ECA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5247894();
    v7 = sub_1A45EC22C(&qword_1EB13E888, MEMORY[0x1E695BF10]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A45ECAEC(uint64_t a1, uint64_t a2)
{
  sub_1A45EC5B8(0, &qword_1EB13E830, &unk_1EB13E838, &protocol descriptor for OneUpSharePlayActivityCoordinatorDelegate, sub_1A3C34400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A45ECB7C(uint64_t a1)
{
  v2 = [v1 indexOfObject_];
  if (v2 == sub_1A52403B4())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A45ECBC4()
{
  result = qword_1EB13E8A0;
  if (!qword_1EB13E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E8A0);
  }

  return result;
}

void sub_1A45ECC28()
{
  v1 = v0;
  v2 = [v0 socialGroup];
  if (!v2)
  {
LABEL_10:
    sub_1A524D244();
    v14 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    [v1 completeBackgroundTaskWithSuccess:0 error:0];
    return;
  }

  v3 = v2;
  v4 = [v1 assets];
  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = sub_1A524CA34();

  if (v5 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1A59097F0](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;

    type metadata accessor for SocialGroupMakeKeyPhotoAction();
    v8 = v3;
    v9 = v7;
    v10 = sub_1A46A5AA0(v8, v9);
    v11 = [v1 undoManager];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = sub_1A3DE1F24;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3D6084C;
    v15[3] = &block_descriptor_221;
    v13 = _Block_copy(v15);

    [v10 executeWithUndoManager:v11 completionHandler:v13];
    _Block_release(v13);

    return;
  }

  __break(1u);
}

unint64_t OneUpSharePlayOverridableAsset.init(asset:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A45EE2D4(MEMORY[0x1E69E7CC0]);
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t OneUpSharePlayOverridableAsset.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = sub_1A524E0C4();
  if (*(v10 + 16))
  {
    v12 = sub_1A3CAB9BC(v11);
    if (v13)
    {
      sub_1A3C2F0BC(*(v10 + 56) + 32 * v12, v18);
      sub_1A3C57128(v18, v19);
      sub_1A3C57128(v19, v18);
      v14 = swift_dynamicCast();
      v15 = *(*(v4 - 8) + 56);
      if (v14)
      {
        v16 = *(v4 - 8);
        v15(v8, 0, 1, v4);
        return (*(v16 + 32))(a2, v8, v4);
      }

      v15(v8, 1, 1, v4);
      (*(v6 + 8))(v8, v5);
    }
  }

  *&v19[0] = v9;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t OneUpSharePlayOverridableAsset.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1A45EE3C4(a1, a2);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E77B0] + 8) - 8) + 8);

  return v4(a1);
}

_OWORD *sub_1A45ED4AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1A3C57128(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1A45EDFD0(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1A3C35B00(a1);
    v7 = sub_1A3CAB9BC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1A45EE164();
        v11 = v13;
      }

      sub_1A3C57128((*(v11 + 56) + 32 * v9), v14);
      sub_1A45EDE60(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1A3C35B00(v14);
  }

  return result;
}

void (*OneUpSharePlayOverridableAsset.subscript.modify(void *a1, void *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OneUpSharePlayOverridableAsset.subscript.getter(a2, v11);
  return sub_1A45ED6E4;
}

uint64_t OneUpSharePlayOverridableAsset.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = sub_1A524E0C4();
  if (*(v5 + 16) && (v7 = sub_1A3CAB9BC(v6), (v8 & 1) != 0))
  {
    sub_1A3C2F0BC(*(v5 + 56) + 32 * v7, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_1A3C35B84();
  v9 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v10 = swift_dynamicCast();
  return (*(*(v9 - 8) + 56))(a2, v10 ^ 1u, 1, v9);
}

uint64_t sub_1A45ED850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a3;

  a5(a1, v7);
}

uint64_t OneUpSharePlayOverridableAsset.subscript.setter(uint64_t a1, void *a2)
{
  sub_1A45EE494(a1, a2);

  v3 = sub_1A524DF24();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*OneUpSharePlayOverridableAsset.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1A524DF24();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OneUpSharePlayOverridableAsset.subscript.getter(a2, v11);
  return sub_1A45EDAC4;
}

void sub_1A45EDADC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);

    a3(v5, v9);

    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {

    a3(v6, v9);

    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1A45EDBF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A45EE66C();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1A3C57128(v21, v31);
      }

      else
      {
        sub_1A3C2F0BC(v21, v31);
      }

      result = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1A3C57128(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A45EDE60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_1A524EC84();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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

  return result;
}

_OWORD *sub_1A45EDFD0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3CAB9BC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1A45EE164();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1A45EDBF4(v14, a3 & 1);
    v9 = sub_1A3CAB9BC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1A524EB84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_1A3C57128(a1, v20);
  }

  else
  {

    return sub_1A45EE0FC(v9, a2, a1, v19);
  }
}

_OWORD *sub_1A45EE0FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A3C57128(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1A45EE164()
{
  v1 = v0;
  sub_1A45EE66C();
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
        sub_1A3C2F0BC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1A3C57128(v19, (*(v4 + 56) + 32 * v17));
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

unint64_t sub_1A45EE2D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A45EE66C();
    v3 = sub_1A524E794();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A45EE6D0(i, &v11);
      v5 = v11;
      result = sub_1A3CAB9BC(v11);
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

_OWORD *sub_1A45EE3C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1A524E0C4();
  v9 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  v5 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  return sub_1A45ED4AC(v8, v4);
}

_OWORD *sub_1A45EE494(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = sub_1A524E0C4();
  (*(v5 + 16))(v7, a1, v4);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v3);
  }

  return sub_1A45ED4AC(&v12, v8);
}

void sub_1A45EE66C()
{
  if (!qword_1EB13E8A8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E8A8);
    }
  }
}

uint64_t sub_1A45EE6D0(uint64_t a1, uint64_t a2)
{
  sub_1A45EE734();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A45EE734()
{
  if (!qword_1EB13E8B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E8B0);
    }
  }
}

uint64_t sub_1A45EE798@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a3;
  v62 = a2;
  v72 = a5;
  v65 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697F948];
  sub_1A45F8C38(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v56 - v9;
  sub_1A424B840(0);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB122C78, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A424B840, v7);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v73 = type metadata accessor for LemonadeShelfPlaceholderView();
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524C634();
  v18 = PXLemonadeLocalizedString(v17);

  v68 = sub_1A524C674();
  v20 = v19;

  v21 = sub_1A524C634();
  v22 = PXLemonadeLocalizedString(v21);

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v75[0] = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v74 = 3;
  v27 = v26;
  if (static LemonadePresentationContext.== infix(_:_:)(v75, &v74))
  {
    v71 = v27;
    v28 = sub_1A3C5A374();
    v29 = sub_1A3C5A374();
    v30 = sub_1A3C5A374();
    v31 = sub_1A3C5A374();
    v32 = sub_1A3C5A374();
    v53 = v25;
    v33 = v71;
    sub_1A425463C(v71, v28 & 1, v29 & 1, v30 & 1, v31 & 1, v32 & 1, 0xD000000000000014, 0x80000001A53DF710, v16, v68, v20, v23, v53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A45F94B8(v16, v14, type metadata accessor for LemonadeShelfPlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424B944();
    sub_1A5249744();

    v34 = type metadata accessor for LemonadeShelfPlaceholderView;
    v35 = v16;
  }

  else
  {
    v57 = v23;
    v58 = "LemonadeEmptyAlbumsMessage";
    v56 = v16;
    v59 = v20;
    v60 = v14;
    v36 = sub_1A524C634();
    v37 = PXLemonadeLocalizedString(v36);

    v38 = sub_1A524C674();
    v40 = v39;

    v41 = v27;
    sub_1A3C66EE8(v71);
    if (v62)
    {
      v42 = sub_1A3C5A374();
      v43 = sub_1A3C5A374();
      v44 = sub_1A3C5A374();
      v45 = sub_1A3C5A374();
      v46 = sub_1A3C5A374();
      v54 = v38;
      v47 = v56;
      sub_1A425463C(v41, v42 & 1, v43 & 1, v44 & 1, v45 & 1, v46 & 1, 0xD000000000000014, v58 | 0x8000000000000000, v56, v68, v59, v57, v25, 0, 0, 0, 0, 0, 0, v54, v40, v71, v70, 0, 0);
      sub_1A45F94B8(v47, v64, type metadata accessor for LemonadeShelfPlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
      sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
      v48 = v66;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadeShelfPlaceholderView;
    }

    else
    {
      v50 = sub_1A3C5A374();
      v51 = sub_1A3C5A374();
      v55 = v38;
      v47 = v61;
      sub_1A463DB54(v41, v50 & 1, v51 & 1, 0, 0xD000000000000014, v58 | 0x8000000000000000, v68, v59, v61, v57, v25, 0, 0, 0, 0, v55, v40, v71, v70);
      sub_1A45F94B8(v47, v64, type metadata accessor for LemonadePlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
      sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
      v48 = v66;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadePlaceholderView;
    }

    sub_1A45F9520(v47, v49);
    sub_1A45F94B8(v48, v60, sub_1A424B840);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424B944();
    sub_1A5249744();

    v34 = sub_1A424B840;
    v35 = v48;
  }

  return sub_1A45F9520(v35, v34);
}

uint64_t sub_1A45EEFBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v47 = a2;
  v2 = sub_1A5243834();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5243EC4();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13EBA0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v8;
  sub_1A45F9800(0, &qword_1EB13EBA8, MEMORY[0x1E69C1E58], MEMORY[0x1E697F948]);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  sub_1A45F8804(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1A5242494();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  sub_1A45F9AA0(0);
  v43 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A52426F4())
  {
    v25 = sub_1A5242704();
    if (v41)
    {
      if (!(v25 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      v41 = sub_1A524E6F4();

      sub_1A524B314();
      v26 = *MEMORY[0x1E69C2048];
      v27 = sub_1A52429A4();
      v28 = *(v27 - 8);
      (*(v28 + 104))(v14, v26, v27);
      (*(v28 + 56))(v14, 0, 1, v27);
      sub_1A52424A4();
      goto LABEL_12;
    }

    if (!(v25 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_18:
    sub_1A3D435C4();
    sub_1A524E6F4();

    sub_1A524B304();
    v31 = sub_1A52429A4();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    sub_1A52424A4();
    v21 = v18;
LABEL_12:
    (*(v16 + 16))(v11, v21, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    sub_1A5249744();
    (*(v16 + 8))(v21, v15);
    sub_1A45F94B8(v24, v45, sub_1A45F9AA0);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9BC8();
    sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return sub_1A45F9520(v24, sub_1A45F9AA0);
  }

  v29 = sub_1A5242704();
  if (v29 >> 62)
  {
    v33 = v29;
    v34 = sub_1A524E2B4();
    v29 = v33;
    if (!v34)
    {
      goto LABEL_14;
    }
  }

  else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v30 = *(v29 + 32);
  }

LABEL_14:

  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  v35 = sub_1A52429A4();
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  (*(v38 + 104))(v4, *MEMORY[0x1E69C2678], v39);
  sub_1A5243ED4();
  v36 = v40;
  v37 = v46;
  (*(v40 + 16))(v45, v6, v46);
  swift_storeEnumTagMultiPayload();
  sub_1A45F9BC8();
  sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();
  return (*(v36 + 8))(v6, v37);
}

void sub_1A45EF880()
{
  sub_1A45FE3B8(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52F8E10;
  sub_1A52426D4();
  v1 = *(v3 + 16);

  *(v0 + 56) = sub_1A3C52C70(0, &qword_1EB126CD0);
  *(v0 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB126690);
  v2 = MEMORY[0x1A5908EF0](v0);
  sub_1A52422A4();
}

uint64_t sub_1A45EF99C@<X0>(uint64_t a1@<X8>)
{
  sub_1A45F8804(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    return sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    v10 = sub_1A3C56D60();
    v12 = v11;
    v14 = v13;
    sub_1A3C41FE8(v10, v11, v13, v7);
    sub_1A3C4208C(v10, v12, v14);
    sub_1A5241F74();
    v15 = sub_1A5241F84();
    (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
    return sub_1A3C52D78(v7, 5, v4, a1);
  }
}

uint64_t sub_1A45EFB4C(id *a1)
{
  sub_1A3CA2488(0, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
  v2 = [*a1 px_virtualCollections];
  v3 = [v2 rootAlbumCollectionList];

  v4 = sub_1A46FBDB0(v3, 0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_1A45FE5E0(0, &unk_1EB13EBC0, type metadata accessor for LemonadeCollectionCustomizationView);
  v7 = v6;
  v8 = sub_1A45FE56C();
  v9 = v4;
  sub_1A46562D0(0, sub_1A45FE408, v5, v7, v8);
}

uint64_t sub_1A45EFC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[2] = a2;
  sub_1A45F8C38(0, &qword_1EB122D30, sub_1A45F8AEC, sub_1A45F8DE0, MEMORY[0x1E697F948]);
  v21[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - v4;
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  sub_1A45F8DE0(0);
  v21[0] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;

  if (sub_1A5242684())
  {
    sub_1A3CA2A44();
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);

    sub_1A5243094();
    sub_1A43DC1C8();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    sub_1A43DC1C8();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_1A3CA2A44();
  v15 = v14;
  sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44);
  sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
  v16 = sub_1A4273C5C();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  sub_1A4273C78(&v22, v8, sub_1A45F8E00, v19, v15, v11);
  sub_1A45F94B8(v11, v5, sub_1A45F8DE0);
  swift_storeEnumTagMultiPayload();
  sub_1A45F8AEC();
  sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC);
  sub_1A3C57458(&qword_1EB1259C8, sub_1A45F8DE0);
  sub_1A5249744();
  return sub_1A45F9520(v11, sub_1A45F8DE0);
}

uint64_t sub_1A45F011C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  if (([a1 px_isTopLevelFolder] & 1) != 0 || objc_msgSend(a1, sel_px_isAllAlbumsVirtualCollection))
  {
    v8 = v7();
    v9 = sub_1A3C51EF8();
    v10 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v9);
    *a3 = v8;
    a3[1] = a2;
    a3[2] = v10;
    a3[3] = v11;
    v12 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for LemonadeNavigationDestination();
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }
}

uint64_t sub_1A45F02BC()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A45F0334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A45F03CC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 184))(v5);
  }

  return result;
}

void (*sub_1A45F04B4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 176))();

  v4[5] = OBJC_IVAR____TtCVV12PhotosUICore21LemonadeAlbumsFeature13ShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C57458(&unk_1EB1259A0, type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A45F05F0;
}

void sub_1A45F05F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A45F0684()
{
  v1 = *((*(**(v0 + 24) + 280))() + 16);
  v2 = v1;

  if (v1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 localizedTitle];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1A524C674();

        return v6;
      }
    }
  }

  return 0;
}

unint64_t sub_1A45F0758()
{
  v1 = *((*(**(v0 + 24) + 280))() + 16);
  v2 = v1;

  if (!v1)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_5:
    v6 = 0;
    v5 = 1;
    return v6 | (v5 << 32);
  }

  v4 = [v3 customSortKey];

  v5 = 0;
  v6 = v4;
  return v6 | (v5 << 32);
}

uint64_t sub_1A45F08B0()
{

  v1 = OBJC_IVAR____TtCVV12PhotosUICore21LemonadeAlbumsFeature13ShelfProvider24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45F0A80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A45F0AC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v3[1];
    v20 = *v3;
    v21 = v9;
    v22[0] = v3[2];
    *(v22 + 9) = *(v3 + 41);
    v10 = sub_1A3C51EF8();
    v11 = v6;
    v12 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v10);
    *a3 = v8;
    a3[1] = a2;
    a3[2] = v12;
    a3[3] = v13;
    type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = v6;
    if ((MEMORY[0x1A590D320]() & 1) == 0 && [v15 px_isUserCreated])
    {
      v16 = [v15 px_fetchContainer];
      if (v16)
      {
        v17 = v16;
        type metadata accessor for LemonadeAlbumItemListManager();

        v18 = v17;
        sub_1A43FD8F4(a2, v17, 0, 0, 0, 1, 0);
      }
    }

    sub_1A42EAB60(v15, &v20);
    v19 = v21;
    *a3 = v20;
    *(a3 + 1) = v19;
    type metadata accessor for LemonadeNavigationDestination();
    return swift_storeEnumTagMultiPayload();
  }
}

size_t sub_1A45F0C6C(uint64_t a1, char a2, void *a3)
{
  sub_1A3EC2BA0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v46 - v16;
  v17 = v3[1];
  v58 = *v3;
  v59 = v17;
  v60[0] = v3[2];
  *(v60 + 9) = *(v3 + 41);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v18 = [*(a1 + 16) px:1 fetchAncestryIncludingRoot:?];
    sub_1A3C52C70(0, &qword_1EB126CD0);
    v19 = sub_1A524CA34();

    if (v19 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      v21 = 0;
      v53 = v19 & 0xC000000000000001;
      v52 = v19 & 0xFFFFFFFFFFFFFF8;
      v49 = (v10 + 56);
      v46 = v10;
      v48 = (v10 + 48);
      v10 = MEMORY[0x1E69E7CC0];
      v51 = v19;
      v50 = i;
      while (1)
      {
        if (v53)
        {
          v24 = MEMORY[0x1A59097F0](v21, v19);
        }

        else
        {
          if (v21 >= *(v52 + 16))
          {
            goto LABEL_20;
          }

          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v56 = v21 + 1;
        v57 = v10;
        sub_1A3CA2488(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
        v70 = 2;
        v26 = v25;
        sub_1A3C6C180(&v68);
        v66 = v68;
        v67 = v69;
        v27 = a3;
        v28 = sub_1A42011B0();
        sub_1A3C6C18C(&v64);
        v62 = v64;
        v63 = v65;
        v29 = v9;
        v30 = sub_1A3C5A374();
        v31 = sub_1A3C30368();
        v32 = sub_1A3C5A374();
        v33 = sub_1A3C5A374();
        v34 = sub_1A3C5A374();
        v35 = v30 & 1;
        v9 = v29;
        v36 = v28;
        a3 = v27;
        PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v66, 0, v36, 0, 1, &v62, v35, &v70, v61, v31, v32 & 1, v33 & 1, v34 & 1, 0);
        v37 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
        PhotoKitItem.__allocating_init(value:options:metadata:)(v26, v61, v37);
        sub_1A45F0AC4(v38, v27, v29);

        v39 = v29;
        v40 = v55;
        (*v49)(v39, 0, 1, v55);

        if ((*v48)(v9, 1, v40) == 1)
        {
          sub_1A45F9520(v9, sub_1A3EC2BA0);
          v19 = v51;
          v22 = v50;
          v10 = v57;
          v23 = v56;
        }

        else
        {
          v41 = v47;
          sub_1A3CA2760(v9, v47, type metadata accessor for LemonadeNavigationDestination);
          sub_1A3CA2760(v41, v54, type metadata accessor for LemonadeNavigationDestination);
          v10 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1A4249320(0, *(v10 + 16) + 1, 1, v10);
          }

          v23 = v56;
          v43 = *(v10 + 16);
          v42 = *(v10 + 24);
          v22 = v50;
          if (v43 >= v42 >> 1)
          {
            v10 = sub_1A4249320(v42 > 1, v43 + 1, 1, v10);
          }

          *(v10 + 16) = v43 + 1;
          sub_1A3CA2760(v54, v10 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, type metadata accessor for LemonadeNavigationDestination);
          v19 = v51;
        }

        ++v21;
        if (v23 == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_23:
  }

  else
  {
    sub_1A45F0AC4(a1, a3, v12);
    sub_1A45F8804(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
    v44 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    sub_1A3CA2760(v12, v10 + v44, type metadata accessor for LemonadeNavigationDestination);
  }

  return v10;
}

uint64_t sub_1A45F1310@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 8))();
  if (result)
  {
    v4 = result;
    type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel(0);
    swift_allocObject();
    sub_1A45F95A0(v4);
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  return result;
}

uint64_t sub_1A45F13C4(void *a1)
{
  if ([a1 px_isTopLevelFolder])
  {
    return 1;
  }

  else
  {
    return [a1 px_isAllAlbumsVirtualCollection];
  }
}

BOOL sub_1A45F1410(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F94B8(a1, v4, type metadata accessor for LemonadeNavigationDestination);
  v5 = swift_getEnumCaseMultiPayload() == 23;
  sub_1A45F9520(v4, type metadata accessor for LemonadeNavigationDestination);
  return v5;
}

uint64_t sub_1A45F14DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = (*(v4 + 8))();
  v10 = sub_1A42E6C64(a2, a3);
  *a4 = v9;
  a4[1] = a1;
  a4[2] = v10;
  a4[3] = v11;
  v12 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

uint64_t sub_1A45F1628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45FDCD8();

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A45F16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v11[0] = *v2;
  v11[1] = v5;
  v12[0] = v2[2];
  *(v12 + 9) = *(v2 + 41);
  v6 = swift_allocObject();
  v7 = v2[1];
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = v2[2];
  *(v6 + 57) = *(v2 + 41);
  *(v6 + 80) = a1;
  sub_1A3FA1224(v11, &v10);

  sub_1A45EE798(v8, 1, sub_1A45FE6B8, v6, a2);
}

unint64_t sub_1A45F176C(uint64_t a1)
{
  v2 = sub_1A3C51EF8();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45F17A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  *a3 = v5;
  a3[1] = a1;
  a3[2] = v6;
  v7 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) + 28);
  v8 = v6;
  v9 = v5;
  v10 = a1;
  v11 = sub_1A437C480();
  return sub_1A437C488(v11, a3 + v7);
}

uint64_t sub_1A45F1810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v5 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) + 28);
  v6 = sub_1A437C480();
  return sub_1A437C488(v6, a4 + v5);
}

uint64_t sub_1A45F1850(void *a1)
{
  sub_1A524EC94();
  sub_1A524ECB4();
  if (a1)
  {
    v2 = a1;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A45F194C()
{
  v1 = *v0;
  if (*v0)
  {
    sub_1A524ECB4();
    v2 = v1;
    sub_1A524DC04();
  }

  else
  {
    sub_1A524ECB4();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A45F1A28()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C57458(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A45F1B24(void *a1, uint64_t (*a2)(void *))
{
  swift_allocObject();
  v4 = a2(a1);

  return v4;
}

uint64_t sub_1A45F1CF8()
{

  v1 = OBJC_IVAR____TtCV12PhotosUICore21LemonadeAlbumsFeature24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45F1EB4@<X0>(void (*a1)(void)@<X2>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_1A3C57458(a2, a3);
  result = sub_1A524E434();
  *a4 = result;
  return result;
}

uint64_t sub_1A45F1F24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

void sub_1A45F1F68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1C8);
    v22 = v8;
    if (v10() == 2 && ((*((*v9 & *v22) + 0x210))(&v25), v24 = v25, v23 = 1, static PickerMode.== infix(_:_:)(&v24, &v23)))
    {
      v11 = sub_1A437C7D4();
      sub_1A45F94B8(v11, a2, type metadata accessor for LemonadeFeedBodyStyle);
      v12 = v22;
    }

    else
    {

      v13 = sub_1A437C79C();
      sub_1A45F94B8(v13, a2, type metadata accessor for LemonadeFeedBodyStyle);
    }
  }

  else
  {
    if (*(a1 + *(type metadata accessor for LemonadeFeedStyleOptions(0) + 20)) - 4 >= 3)
    {
      sub_1A3C41FE8(0, 0, 2, v7);
      v15 = sub_1A3DC1AF8();
      v17 = v21 & 1;
      v18 = a2;
      v19 = v7;
      v20 = 6;
    }

    else
    {
      v14 = sub_1A43A1BA0();
      sub_1A45F94B8(v14, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v15 = sub_1A3DC1AF8();
      v17 = v16 & 1;
      v18 = a2;
      v19 = v7;
      v20 = 5;
    }

    sub_1A437C3B8(v19, v20, v15, v17, v18);
  }
}

uint64_t sub_1A45F21A0()
{
  v1 = *(**sub_1A44E6630() + 264);

  v1(&v5, v2);

  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    return 1;
  }

  v3 = *(v0 + 8);
  if (!v3)
  {
    return 1;
  }

  else
  {
    return [v3 px_isTopLevelFolder];
  }
}

uint64_t sub_1A45F2240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A424B7F8(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13E8D0, sub_1A45F97CC, sub_1A424B7F8, MEMORY[0x1E697F948]);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  sub_1A45F9800(0, &qword_1EB122CB0, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v62 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v62);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F97CC(0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v68) = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v67) = 3;
  sub_1A424B564();
  if ((sub_1A524C594() & 1) != 0 || (v18 = sub_1A44E6630(), v19 = **v18, v65 = v5, v20 = *(v19 + 264), v64 = a2, v21 = , v20(&v68, v21), , !LemonadeAlbumsContentFilter.isFilterApplied.getter()))
  {
    sub_1A45EE798(a1, 0, 0, 0, v7);
    sub_1A45F94B8(v7, v10, sub_1A424B7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    sub_1A424B894();
    sub_1A5249744();
    v43 = sub_1A424B7F8;
  }

  else
  {
    v22 = *(**v18 + 264);

    v22(&v68, v23);

    v24 = v68;
    v25 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v26 = sub_1A524C634();
    v27 = PXLemonadeLocalizedString(v26);

    v28 = sub_1A524C674();
    v59 = v29;
    v60 = v28;

    v30 = *sub_1A44E7304();
    v67 = v24;
    v68 = v30;
    sub_1A43FED2C();
    if (sub_1A524E114())
    {
      v31 = sub_1A524C634();
      v32 = PXLemonadeLocalizedString(v31);

      v33 = sub_1A524C674();
      v58 = v34;

      v35 = sub_1A524C634();
      v36 = PXLemonadeLocalizedString(v35);

      v37 = sub_1A524C674();
      v39 = v38;

      v40 = v25;
      v41 = sub_1A3C5A374();
      v42 = sub_1A3C5A374();
      sub_1A463DB54(v40, v41 & 1, v42 & 1, 0, 0x662E7265646C6F66, 0xEB000000006C6C69, v33, v58, v15, v37, v39, 0, 0, 0, 0, v60, v59, sub_1A45F29B0, 0);
    }

    else
    {
      v44 = sub_1A524C634();
      v45 = PXLemonadeLocalizedString(v44);

      v46 = sub_1A524C674();
      v57 = v47;
      v58 = v46;

      v48 = sub_1A524C634();
      v49 = PXLemonadeLocalizedString(v48);

      v50 = sub_1A524C674();
      v52 = v51;

      v53 = v25;
      v54 = sub_1A3C5A374();
      v55 = sub_1A3C5A374();
      sub_1A463DB54(v53, v54 & 1, v55 & 1, 0, 0xD000000000000014, 0x80000001A53DF710, v58, v57, v15, v50, v52, 0, 0, 0, 0, v60, v59, sub_1A45F29B0, 0);
    }

    sub_1A45F94B8(v15, v13, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    v7 = v63;
    sub_1A5249744();
    sub_1A45F9520(v15, type metadata accessor for LemonadePlaceholderView);
    sub_1A45F94B8(v7, v10, sub_1A45F97CC);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    sub_1A424B894();
    sub_1A5249744();

    v43 = sub_1A45F97CC;
  }

  return sub_1A45F9520(v7, v43);
}

uint64_t sub_1A45F29B0()
{
  v0 = *sub_1A44E6630();

  v2 = *sub_1A44E6F70();
  (*(*v0 + 272))(&v2);
}

uint64_t sub_1A45F2A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = v43 - v4;
  sub_1A43DC25C();
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A45F8C38(0, &qword_1EB13E8D8, sub_1A45F9958, sub_1A43DC25C, MEMORY[0x1E697F948]);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = v43 - v10;
  sub_1A45F8C38(0, &qword_1EB13E910, sub_1A45F8AEC, sub_1A45F99A0, v8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = v43 - v12;
  sub_1A45F9958(0);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5243284();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1A45F99A0();
  MEMORY[0x1EEE9AC00](v23);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 16);
  if (v28)
  {
    v29 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x540);
    v46 = v24;
    v47 = v15;
    v44 = v27;
    v45 = v25;
    v48 = v28;
    v29();
    v30 = v51;
    v57 = v51;

    sub_1A52426E4();
    v43[1] = v31;
    sub_1A45F94B8(v2, v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v33 = swift_allocObject();
    sub_1A3CA2760(v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    *(v33 + ((v22 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    (*(v17 + 104))(v19, *MEMORY[0x1E69C23E0], v16);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA2A44();
    sub_1A45F8C38(0, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
    sub_1A45F9AD4();
    v34 = v44;
    sub_1A5242AA4();
    v36 = v45;
    v35 = v46;
    (*(v45 + 16))(v50, v34, v46);
    swift_storeEnumTagMultiPayload();
    sub_1A45F8AEC();
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC);
    sub_1A3C57458(&unk_1EB13E920, sub_1A45F99A0);
    v37 = v47;
    sub_1A5249744();
    sub_1A45F94B8(v37, v55, sub_1A45F9958);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C);
    sub_1A5249744();

    sub_1A45F9520(v37, sub_1A45F9958);
    return (*(v36 + 8))(v34, v35);
  }

  else
  {
    v57 = v51;
    sub_1A43DC1C8();
    v40 = v48;
    (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
    sub_1A3CA2A44();
    v42 = v41;
    sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);

    sub_1A48C88E8(&v57, v40, v42, v7);
    sub_1A45F94B8(v7, v55, sub_1A43DC25C);
    swift_storeEnumTagMultiPayload();
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C);
    sub_1A5249744();
    return sub_1A45F9520(v7, sub_1A43DC25C);
  }
}

uint64_t sub_1A45F334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v50 = a3;
  sub_1A424ADF0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F9DF0();
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8C38(0, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  sub_1A45FA79C(a2, &v52);
  v20 = v55;
  if (v55)
  {
    v46 = v14;
    v21 = v56;
    __swift_project_boxed_opaque_existential_1(&v52, v55);
    v22 = (*(v21 + 32))(v20, v21);
    __swift_destroy_boxed_opaque_existential_0(&v52);
    if (v22)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        LOBYTE(v52) = *(v47 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
        v51 = 3;
        sub_1A424B564();
        if ((sub_1A524C594() & 1) == 0)
        {
          v36 = swift_allocObject();
          *(v36 + 16) = v24;
          v52 = v24;
          v53 = sub_1A45FAB10;
          v54 = v36;
          sub_1A45F9EA4();
          v38 = v37;
          v39 = sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4);
          v40 = v22;
          MEMORY[0x1A5904CD0](&v52, v38, v39);
          v52 = v38;
          v53 = v39;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v42 = sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
          v52 = v10;
          v53 = v42;
          v43 = swift_getOpaqueTypeConformance2();
          v44 = v49;
          MEMORY[0x1A5904CE0](v16, v49, v5, OpaqueTypeConformance2, v43);

          (*(v46 + 8))(v16, v44);
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    sub_1A45FA82C(&v52);
  }

  sub_1A45FE270(0, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
  MEMORY[0x1A5904CD0](v12, v10, v26);
  sub_1A45F9EA4();
  v28 = v27;
  v29 = sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4);
  v52 = v28;
  v53 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v52 = v10;
  v53 = v26;
  v31 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A5904CF0](v8, v49, v5, v30, v31);
  (*(v6 + 8))(v8, v5);
  sub_1A45F9520(v12, sub_1A424AE74);
LABEL_8:
  v32 = sub_1A45FA8B4();
  v33 = v50;
  MEMORY[0x1A5904CD0](v19, v48, v32);
  sub_1A3D13094(v19);
  sub_1A45FAA48();
  return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
}

uint64_t sub_1A45F3998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v32 = sub_1A5248644();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FA138();
  v6 = v5;
  Description = v5[-1].Description;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB4EC(0, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
  v10 = v9;
  v35 = v9[-1].Description;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  sub_1A45F9F4C();
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v39 = a1;
  sub_1A45FA270();
  v29 = v17;
  sub_1A5243124();
  v18 = sub_1A5243474();
  v31 = v18;
  v19 = sub_1A424B2FC();
  v30 = sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v41 = &type metadata for LemonadeAlbumNewEntryLabel;
  v42 = v18;
  v43 = v19;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124DC8, MEMORY[0x1E69C23A0]);
  sub_1A524A2E4();
  sub_1A5248634();
  v20 = sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138);
  v21 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
  v22 = v32;
  sub_1A524B204();
  (*(v34 + 8))(v4, v22);
  Description[1](v8, v6);
  sub_1A45FA340();
  v24 = v23;
  v41 = v6;
  v42 = v22;
  v43 = v20;
  v44 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v10;
  v42 = v31;
  v43 = OpaqueTypeConformance2;
  v44 = v30;
  v26 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  v35[1](v12, v10);
  v41 = v10;
  v42 = v24;
  v43 = OpaqueTypeConformance2;
  v44 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v36;
  sub_1A524AA94();
  return (*(v37 + 8))(v16, v27);
}

uint64_t sub_1A45F3EF8(void *a1)
{
  v2 = sub_1A5243474();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 px_isUserCreated];
  if (v7)
  {
    LOBYTE(v7) = [a1 px_isFolder];
  }

  v9[15] = v7;
  sub_1A5247D74();
  sub_1A424B2FC();
  sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A45F4054()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A45FB4EC(0, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
  sub_1A45FA138();
  v5 = v4;
  v6 = sub_1A5248644();
  v7 = sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138);
  v8 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A45F4270@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v9 = [objc_opt_self() fetchCollectionListsContainingCollection:v5 options:0];
    v10 = [v9 firstObject];

    v11 = a2[5];
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1C8);
    v14 = v11;
    if (v13() == 2)
    {
      (*((*v12 & *v14) + 0x210))(v21);
      v20 = v21[0];
      v19 = 1;
      v15 = static PickerMode.== infix(_:_:)(&v20, &v19);

      if (v15)
      {
LABEL_8:
        v16 = 0;
        if (MEMORY[0x1A590D320]())
        {
LABEL_9:
          sub_1A42EAB60(v5, v21);

          v18 = v21[1];
          *a3 = v21[0];
          *(a3 + 16) = v18;
          type metadata accessor for LemonadeNavigationDestination();
          return swift_storeEnumTagMultiPayload();
        }

LABEL_12:
        type metadata accessor for LemonadeAlbumItemListManager();

        v17 = v10;
        sub_1A43FD8F4(a2, v10, v16, 0, 0, 1, 0);
      }
    }

    else
    {
    }

    v16 = 1;
    if (MEMORY[0x1A590D320]())
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v7 = v5;
}

uint64_t sub_1A45F4584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v3 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1A3CA2488(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    v5 = v7;
    v6 = sub_1A3CA2B54();
  }

  a2[3] = v5;
  a2[4] = v6;
  *a2 = v3;
  return result;
}

id sub_1A45F4648()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  result = *(v0 + 8);
  if (result)
  {
    return [result canPerformEditOperation_];
  }

  return result;
}

uint64_t sub_1A45F4688()
{
  sub_1A3C57458(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);

  return sub_1A3C47918();
}

void sub_1A45F46F4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() arrayWithObject_];
  sub_1A52422A4();
}

uint64_t sub_1A45F477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45F8804(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v13 = a1;

  if (sub_1A5242684())
  {
    sub_1A3CA2A44();
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);

    sub_1A5243094();
    sub_1A43DC1C8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    sub_1A43DC1C8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_1A3CA2A44();
  v10 = v9;
  sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44);
  sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
  return sub_1A48C88E8(&v13, v6, v10, a2);
}

uint64_t sub_1A45F49C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    *a3 = v6;
    a3[1] = a2;
    a3[2] = 0;
    a3[3] = 0xE000000000000000;
    type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    v7 = v5;
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      v11 = *(a2 + 40);
      if (v11)
      {
        v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x2D0))(v5);
      }

      else
      {
        v13 = v5;
        v12 = 0;
      }

      sub_1A47A9538(v10, 0, 0, 0, v14, v12, 0, a3);
      type metadata accessor for LemonadeNavigationDestination();
    }

    else
    {
      type metadata accessor for LemonadeNavigationDestination();
    }

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1A45F4B54()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = [v1 px_localizedTitle];
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {

    return sub_1A3C38BD4();
  }
}

uint64_t sub_1A45F4BE8()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return [v1 px_isTopLevelFolder];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A45F4C58@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel(0);
    swift_allocObject();
    sub_1A45F96B8(v2);
  }

  result = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  return result;
}

void sub_1A45F4DE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16) px_rootAlbumCollectionList];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  sub_1A45EE798(a1, 0, sub_1A45FE6E0, v5, a2);
}

id sub_1A45F4EB0()
{
  result = *(v0 + 8);
  if (result)
  {
    return [result canPerformEditOperation_];
  }

  return result;
}

uint64_t sub_1A45F4EDC()
{
  sub_1A3C57458(&qword_1EB13EA68, type metadata accessor for LemonadeAlbumsFeature.MacFeedProvider);

  return sub_1A3C47918();
}

id sub_1A45F4F48()
{
  v1 = [*(v0 + 16) px_rootAlbumCollectionList];

  return v1;
}

uint64_t sub_1A45F4F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a6;
  v9 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A52498E4();
  sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v29 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A45F8804(255, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v10 = sub_1A5248A84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A5249834();
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v27 = v21;
  v28 = v22;
  sub_1A5248A74();
  WitnessTable = swift_getWitnessTable();
  (*(v11 + 16))(v16, v13, v10);
  v18 = *(v11 + 8);
  v18(v13, v10);
  MEMORY[0x1A5904CD0](v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1A45F5308@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a3;
  v105 = a1;
  v106 = a2;
  v99 = a6;
  v8 = sub_1A5248644();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB5E8();
  v12 = *(v11 - 8);
  v84 = v11;
  v85 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v81 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A45FB5E8;
  sub_1A45FB4EC(0, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  v89 = v14;
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v102 = v74 - v15;
  sub_1A45FB300();
  v94 = v16;
  v98 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB0A8();
  v97 = v18;
  v95 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F8804(0, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  v96 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v93 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = v74 - v23;
  v80 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A52498E4();
  v28 = sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  v133 = a4;
  v134 = v27;
  v135 = a5;
  v136 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = a4;
  v134 = v27;
  v135 = a5;
  v136 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v133 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v133 = a4;
  v134 = v31;
  v135 = a5;
  v136 = v32;
  v74[1] = MEMORY[0x1E69C3020];
  v101 = swift_getOpaqueTypeMetadata2();
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v34 = v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v74 - v37;
  v78 = v74 - v37;
  v106(v36);
  v128 = a4;
  v129 = a5;
  v39 = swift_checkMetadataState();
  sub_1A524A4C4();
  (*(v80 + 1))(v26, a4);
  v133 = a4;
  v134 = v39;
  v135 = a5;
  v136 = v32;
  v79 = swift_getOpaqueTypeConformance2();
  v40 = v103;
  v41 = *(v103 + 16);
  v76 = v103 + 16;
  v77 = v41;
  v75 = v34;
  v42 = v101;
  v41(v38, v34, v101);
  v43 = *(v40 + 8);
  v103 = v40 + 8;
  v80 = v43;
  v43(v34, v42);
  v44 = 3;
  v100 = a4;
  v122 = a4;
  v123 = a5;
  if (!v105)
  {
    v44 = 1;
  }

  v124 = v105;
  v125 = v106;
  v126 = v104;
  v127 = v44;
  v117 = a4;
  v118 = a5;
  v45 = a5;
  v74[0] = a5;
  v119 = v105;
  v120 = v106;
  v121 = v104;
  v46 = v104;
  sub_1A45FB698(0);
  sub_1A3C57458(&qword_1EB13EA20, sub_1A45FB698);
  v47 = v81;
  sub_1A524A2E4();
  v48 = v83;
  sub_1A5248634();
  v49 = sub_1A3C57458(&qword_1EB13EA28, v82);
  v50 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
  v51 = v84;
  v52 = v87;
  sub_1A524B204();
  (v88[1])(v48, v52);
  (*(v85 + 8))(v47, v51);
  v88 = v74;
  v112 = v100;
  v113 = v45;
  v114 = v105;
  v115 = v106;
  v116 = v46;
  sub_1A45FB88C();
  v54 = v53;
  v133 = v51;
  v134 = v52;
  v135 = v49;
  v136 = v50;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_1A5242424();
  v57 = sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  v58 = v89;
  v133 = v89;
  v134 = v56;
  v135 = v55;
  v136 = v57;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v102;
  sub_1A524A4C4();
  (*(v92 + 8))(v61, v58);
  v102 = v74;
  v107 = v100;
  v108 = v74[0];
  v109 = v105;
  v110 = v106;
  v111 = v104;
  sub_1A45FBA44();
  v133 = v58;
  v134 = v54;
  v135 = v55;
  v136 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v94;
  v133 = v94;
  v134 = v56;
  v135 = v62;
  v136 = v57;
  swift_getOpaqueTypeConformance2();
  v64 = v91;
  sub_1A524A4A4();
  (*(v98 + 8))(v60, v63);
  v65 = v95;
  v66 = v90;
  v67 = v97;
  (*(v95 + 32))(v90, v64, v97);
  (*(v65 + 56))(v66, 0, 1, v67);
  v68 = v75;
  v69 = v78;
  v70 = v101;
  v77(v75, v78, v101);
  v133 = v68;
  v71 = v93;
  sub_1A3D1379C(v66, v93);
  v134 = v71;
  v132[0] = v70;
  v132[1] = v96;
  v130 = v79;
  v131 = sub_1A45FDF54();
  sub_1A3DF4988(&v133, 2uLL, v132);
  sub_1A3D13830(v66);
  v72 = v80;
  v80(v69, v70);
  sub_1A3D13830(v71);
  return v72(v68, v70);
}

uint64_t sub_1A45F5E1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1A52498E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  v16 = a1;
  v17 = v5;
  v18 = a2;
  v19 = v9;
  v15[0] = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v15 - v12;
  sub_1A52498D4();
  sub_1A524A934();
  (*(v6 + 8))(v8, v5);
  sub_1A524A194();
  v16 = a1;
  v17 = v5;
  v18 = a2;
  v19 = v9;
  swift_getOpaqueTypeConformance2();
  sub_1A524A8F4();
  return (*(v11 + 8))(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1A45F604C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A45FE270(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v72 - v9;
  sub_1A41C3F80();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v72 - v14;
  sub_1A45FB7E0(0);
  v86 = v15;
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A524B9A4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v88 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v80 = sub_1A5243124();
  v21 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  sub_1A45FB7AC(0);
  v93 = v27;
  v91 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FB778(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v90 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v89 = &v72 - v33;
  v94 = 0;
  v95 = a1;
  if (a1)
  {
    v94 = *sub_1A44E6630();
    swift_retain_n();
  }

  if ((v95 & 2) != 0)
  {
    if (a2)
    {
      v76 = v8;
      v77 = v7;
      v78 = v12;
      v36 = a2;
      sub_1A45FE3B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v74 = xmmword_1A52FF950;
      *(inited + 16) = xmmword_1A52FF950;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v38;
      *(inited + 48) = sub_1A524C674();
      *(inited + 56) = v39;
      *(inited + 64) = sub_1A524C674();
      *(inited + 72) = v40;
      v41 = v36;
      v42 = sub_1A3C4467C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v98 = v42;
      v43 = [v41 px_isUserCreated];
      v79 = a3;
      if (v43)
      {
        v44 = swift_initStackObject();
        *(v44 + 16) = v74;
        *(v44 + 32) = sub_1A524C674();
        *(v44 + 40) = v45;
        *(v44 + 48) = sub_1A524C674();
        *(v44 + 56) = v46;
        *(v44 + 64) = sub_1A524C674();
        *(v44 + 72) = v47;
        sub_1A45FE200(v44);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      v75 = v26;
      sub_1A5243104();
      v73 = v20;
      sub_1A524B994();
      *&v74 = *sub_1A44E6630();
      v49 = v21;
      v50 = *(v21 + 16);
      v51 = v26;
      v52 = v80;
      v50(v23, v51, v80);
      v53 = v81;
      v72 = v41;
      v54 = *(v81 + 16);
      v55 = v20;
      v56 = v82;
      v54(v88, v55, v82);
      v57 = v83;
      v50(v83, v23, v52);
      sub_1A45FB814();
      v59 = v58;
      v60 = v88;
      v54((v57 + *(v58 + 48)), v88, v56);
      v61 = *(v59 + 64);
      v62 = v74;
      swift_retain_n();

      *(v57 + v61) = v62;
      v63 = *(v53 + 8);
      v63(v73, v56);
      v64 = *(v49 + 8);
      v64(v75, v52);

      v63(v60, v56);
      v64(v23, v52);
      v48 = v84;
      sub_1A3CA2760(v57, v84, sub_1A45FB7E0);
      (*(v85 + 56))(v48, 0, 1, v86);
      a3 = v79;
      v12 = v78;
      v7 = v77;
      v8 = v76;
    }

    else
    {
      v48 = v84;
      (*(v85 + 56))(v84, 1, 1, v86, v32);
    }

    v35 = v92;
    v34 = v89;
    sub_1A3CA2760(v48, v89, sub_1A45FB7AC);
    (*(v91 + 56))(v34, 0, 1, v93);
  }

  else
  {
    v34 = v89;
    (*(v91 + 56))(v89, 1, 1, v93, v32);
    v35 = v92;
  }

  if ((v95 & 4) != 0)
  {
    v96 = sub_1A3C38BD4();
    v97 = v66;
    sub_1A3D5F9DC();
    v67 = v87;
    sub_1A524B754();
    (*(v8 + 32))(v35, v67, v7);
    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  (*(v8 + 56))(v35, v65, 1, v7);
  v68 = v90;
  sub_1A45F94B8(v34, v90, sub_1A45FB778);
  sub_1A45F94B8(v35, v12, sub_1A41C3F80);
  *a3 = v94;
  sub_1A45FB6CC();
  v70 = v69;
  sub_1A45F94B8(v68, a3 + *(v69 + 48), sub_1A45FB778);
  sub_1A45F94B8(v12, a3 + *(v70 + 64), sub_1A41C3F80);
  sub_1A45F9520(v35, sub_1A41C3F80);
  sub_1A45F9520(v34, sub_1A45FB778);
  sub_1A45F9520(v12, sub_1A41C3F80);
  sub_1A45F9520(v68, sub_1A45FB778);
}

uint64_t sub_1A45F6AC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5242424();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F6CEC(a2);
  sub_1A45FB4EC(0, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  sub_1A45FB5E8();
  v8 = v7;
  v9 = sub_1A5248644();
  v10 = sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
  v11 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  sub_1A524A944();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A45F6CEC(uint64_t a1)
{
  if (a1 && (v1 = *(**sub_1A44E6630() + 264), v2 = , v1(&v4, v2), , LemonadeAlbumsContentFilter.isFilterApplied.getter()))
  {
    v4 = *sub_1A44E7304();
    sub_1A43FED2C();
    sub_1A524E114();
    v4 = sub_1A524B434();
    sub_1A524B3C4();
    return sub_1A5242404();
  }

  else
  {

    return sub_1A5242414();
  }
}

uint64_t sub_1A45F6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[1] = a1;
  v4 = sub_1A5242424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45F6CEC(a2);
  sub_1A45FB300();
  sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
  v9 = v8;
  sub_1A45FB88C();
  v11 = v10;
  sub_1A45FB5E8();
  v13 = v12;
  v14 = sub_1A5248644();
  v15 = sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
  v16 = sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  v22 = v9;
  v23 = v4;
  v24 = OpaqueTypeConformance2;
  v25 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v22 = v9;
  v23 = v11;
  v24 = OpaqueTypeConformance2;
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1A524A944();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A45F70EC()
{
  v0 = *(**sub_1A44E6630() + 224);

  v0(1);
}

uint64_t sub_1A45F7170@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_1A45F9800(0, &qword_1EB13EB48, sub_1A45FCCFC, MEMORY[0x1E697F948]);
  v22[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  sub_1A45FCCFC();
  v9 = v8;
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1A524CC54();

  v13 = sub_1A524CC44();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a2;
  *(v14 + 40) = v12;

  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = a2;
  *(v17 + 40) = v12;
  sub_1A524B944();
  v18 = sub_1A3C38BD4();
  v22[1] = v22;
  v25[0] = v18;
  v25[1] = v19;
  MEMORY[0x1EEE9AC00](v18);
  v22[-4] = v25;
  if (v12)
  {
    v22[-3] = 0x6F746F6870;
    v22[-2] = 0xE500000000000000;
  }

  else
  {
    v22[-3] = 0x6C75622E7473696CLL;
    v22[-2] = 0xEB0000000074656CLL;
  }

  sub_1A3E429B4();
  sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4);

  sub_1A524B854();

  v20 = v23;
  (*(v23 + 16))(v7, v11, v9);
  swift_storeEnumTagMultiPayload();
  sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC);
  sub_1A5249744();

  return (*(v20 + 8))(v11, v9);
}

uint64_t sub_1A45F7640()
{
  v0 = sub_1A5249934();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FD868();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FD910();
  sub_1A45FCE48(&qword_1EB13EB78, sub_1A45FD910, sub_1A45FCF54);
  sub_1A5248004();
  sub_1A5249924();
  sub_1A3C57458(&qword_1EB13EB80, sub_1A45FD868);
  sub_1A3C57458(&qword_1EB13EB88, MEMORY[0x1E697C778]);
  sub_1A524AC34();
  (*(v1 + 8))(v3, v0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A45F78B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  sub_1A45FC9D4(0);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524B9A4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - v8;
  sub_1A45FE270(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  sub_1A45FCAA4(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v68 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v56 - v20;
  sub_1A45FCAD8();
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  (*(*a1 + 264))(v74, v24);
  v27 = v74[0];
  v72 = a1;
  v73 = v74[0];
  sub_1A44A6464(0);
  sub_1A45FCBD8();
  sub_1A3C57458(&qword_1EB13AD70, sub_1A44A6464);
  sub_1A45FCE48(&qword_1EB13EB10, sub_1A45FCBD8, sub_1A45FCEB8);
  v64 = v26;
  sub_1A524A2E4();
  v74[0] = v27;
  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    v74[0] = sub_1A3C38BD4();
    v74[1] = v28;
    sub_1A3D5F9DC();

    v29 = v16;
    v57 = v16;
    sub_1A524B754();
    v30 = v61;
    sub_1A524B994();
    v31 = v11;
    v32 = *(v11 + 16);
    v33 = v13;
    v34 = v13;
    v56 = v13;
    v35 = v10;
    v32(v34, v29, v10);
    v36 = v58;
    v37 = v59;
    v38 = *(v58 + 16);
    v38(v63, v30, v59);
    v39 = v60;
    v32(v60, v33, v35);
    sub_1A45FCA08();
    v41 = v63;
    v38((v39 + *(v40 + 48)), v63, v37);
    v42 = *(v36 + 8);
    v42(v61, v37);
    v43 = *(v31 + 8);
    v43(v57, v35);
    v42(v41, v37);
    v43(v56, v35);
    v44 = v62;
    sub_1A3CA2760(v39, v62, sub_1A45FC9D4);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v62;
  }

  (*(v69 + 56))(v44, v45, 1, v70);
  v47 = v64;
  v46 = v65;
  v48 = *(v65 + 16);
  v49 = v66;
  v50 = v67;
  v48(v67, v64, v66);
  v51 = v68;
  sub_1A45F94B8(v44, v68, sub_1A45FCAA4);
  v52 = v71;
  v48(v71, v50, v49);
  sub_1A45FD510(0);
  sub_1A45F94B8(v51, &v52[*(v53 + 48)], sub_1A45FCAA4);
  sub_1A45F9520(v44, sub_1A45FCAA4);
  v54 = *(v46 + 8);
  v54(v47, v49);
  sub_1A45F9520(v51, sub_1A45FCAA4);
  return (v54)(v50, v49);
}

uint64_t sub_1A45F7FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_1A45FD620(0, &qword_1EB13EB40, MEMORY[0x1E697F948]);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = v34 - v8;
  sub_1A45F9800(0, &qword_1EB13EB48, sub_1A45FCCFC, MEMORY[0x1E697F948]);
  v34[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  sub_1A45FCCC8(0);
  v34[2] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v36 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FCCFC();
  v15 = v14;
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1A524CC54();
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a2;
  v20[5] = v18;

  v22 = sub_1A524CC44();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = a3;
  v23[5] = v18;
  sub_1A524B944();
  v24 = *sub_1A44E72F8();
  v40 = v18;
  v41 = v24;
  sub_1A43FE604();
  if (sub_1A524C594())
  {
    v25 = sub_1A3C38BD4();
    v34[0] = v34;
    v41 = v25;
    v42 = v26;
    MEMORY[0x1EEE9AC00](v25);
    v34[-4] = &v41;
    v34[-3] = 0x6C676E6174636572;
    v33 = 0xEF6B636174732E65;
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4);

    sub_1A524B854();

LABEL_5:
    v30 = v35;
    (*(v35 + 16))(v11, v17, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC);
    v31 = v36;
    sub_1A5249744();
    sub_1A45F94B8(v31, v38, sub_1A45FCCC8);
    swift_storeEnumTagMultiPayload();
    sub_1A45FCF54();
    sub_1A5249744();

    sub_1A45F9520(v31, sub_1A45FCCC8);
    return (*(v30 + 8))(v17, v15);
  }

  v27 = *sub_1A44E7304();
  v40 = v18;
  v41 = v27;
  if (sub_1A524C594())
  {
    v28 = sub_1A3C38BD4();
    v34[0] = v34;
    v41 = v28;
    v42 = v29;
    MEMORY[0x1EEE9AC00](v28);
    v34[-4] = &v41;
    v34[-3] = 0x7265646C6F66;
    v33 = 0xE600000000000000;
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4);

    sub_1A524B854();

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A45F8678@<D0>(uint64_t a1@<X8>)
{
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A524B544();
  }

  else
  {
    v2 = sub_1A3C38BD4();
    v4 = v3;

    *&v6 = v2;
    *(&v6 + 1) = v4;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  sub_1A5249744();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

id sub_1A45F87D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeAlbumsFolderAccessibilityUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A45F8804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45F8868(void *a1, uint64_t a2)
{
  v3 = [a1 px_rootAlbumCollectionList];
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata sharedInstance];
  v7 = [v6 simulateEmptyShelves];

  if (!v7)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      v13 = MEMORY[0x1E69E7D40];
      v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x1C8);
      v15 = v12;
      if (v14() == 2)
      {
        (*((*v13 & *v15) + 0x210))(v20);
        LOBYTE(v22[0]) = v20[0];
        LOBYTE(v21[0]) = 1;
        v16 = static PickerMode.== infix(_:_:)(v22, v21);

        if (v16)
        {
          v17 = 0;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v17 = 1;
LABEL_9:
    type metadata accessor for LemonadeAlbumItemListManager();

    sub_1A43FD8F4(v18, v3, v17, 0, 20, 0, 0);
  }

  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v8 = *(a2 + 16);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v9 = sub_1A3C52C70(0, &qword_1EB126CD0);
  v10 = v8;
  sub_1A43FD8EC(v20, v9);
  v11 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v10, 0, v22);

  return v11;
}

void sub_1A45F8AEC()
{
  if (!qword_1EB124CE8)
  {
    sub_1A3CA2A44();
    sub_1A45F8C38(255, &qword_1EB127EB8, MEMORY[0x1E69C2288], MEMORY[0x1E69C2568], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
    sub_1A45F8CBC();
    v0 = sub_1A5243EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124CE8);
    }
  }
}

void sub_1A45F8C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A45F8CBC()
{
  result = qword_1EB127EC0;
  if (!qword_1EB127EC0)
  {
    sub_1A45F8C38(255, &qword_1EB127EB8, MEMORY[0x1E69C2288], MEMORY[0x1E69C2568], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129130, MEMORY[0x1E69C2288]);
    sub_1A3C57458(&qword_1EB129070, MEMORY[0x1E69C2568]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EC0);
  }

  return result;
}

uint64_t sub_1A45F8E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v18 = sub_1A524C624();
  v12 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (a5 & 1) != 0 || (a7)
  {
LABEL_3:
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();
    sub_1A524C5E4();
    v19 = a3;
    goto LABEL_4;
  }

  if (a4 < 1)
  {
    if (a6 >= 1)
    {
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();
      sub_1A524C5E4();
      v19 = a6;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1A524C5F4();
  sub_1A524C5E4();
  sub_1A524C5D4();
  sub_1A524C5E4();
  v19 = a4;
  if (a6 >= 1)
  {
    sub_1A524C5C4();
    sub_1A524C5E4();
    v19 = a6;
  }

LABEL_4:
  sub_1A524C5C4();
  sub_1A524C5E4();
  sub_1A524C614();
  v16 = sub_1A524C774();
  (*(v12 + 8))(v14, v18);
  return v16;
}

uint64_t sub_1A45F9160()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    sub_1A52426F4();
    v5 = sub_1A3C38BD4();
  }

  v7 = v5;
  v8 = v6;
  sub_1A3D6FBA4();
  v9 = sub_1A5242724();
  if ((v10 & 1) != 0 || (v11 = v9, (sub_1A52426F4() & 1) == 0))
  {
    if (sub_1A52426F4() & 1) != 0 || (v19 = sub_1A5242724(), (v20))
    {
      sub_1A3C38BD4();
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A52F8E10;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1A3D710E8();
      *(v21 + 32) = v7;
      *(v21 + 40) = v8;
      v22 = sub_1A524C6B4();
    }

    else
    {
      v23 = v19;
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();

      sub_1A524C5E4();
      v24[1] = v23;
      sub_1A524C5C4();
      sub_1A524C5E4();
      sub_1A524C614();
      v22 = sub_1A524C774();
      (*(v1 + 8))(v3, v0);
    }

    return v22;
  }

  else
  {
    v12 = sub_1A5242694();
    v14 = v13;
    v15 = sub_1A52426A4();
    v17 = sub_1A45F8E30(v7, v8, v11, v12, v14 & 1, v15, v16 & 1);

    return v17;
  }
}

uint64_t sub_1A45F94B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45F9520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45F95A0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  sub_1A5241604();
  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  v4 = sub_1A3C52C70(0, &qword_1EB126CD0);
  v5 = a1;
  sub_1A43FD8EC(v6, v4);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v5, 0, v8, v6, v7, 0, 0);
}

void sub_1A45F96B8(void *a1)
{
  sub_1A5241604();
  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  v2 = sub_1A3C52C70(0, &qword_1EB126CD0);
  v3 = a1;
  sub_1A43FD8EC(v4, v2);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v3, 0, v6, v4, v5, 0, 0);
}

void sub_1A45F9800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A45F9868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3CA2A44();
    v7 = v6;
    v8 = sub_1A3C57458(&qword_1EB129230, sub_1A3CA2A44);
    v9 = sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
    v12[0] = v7;
    v12[1] = MEMORY[0x1E6981E70];
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = MEMORY[0x1E6981E60];
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45F99A0()
{
  if (!qword_1EB13E8E8)
  {
    sub_1A3CA2A44();
    sub_1A45F8C38(255, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB129238, sub_1A3CA2A44);
    sub_1A45F9AD4();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E8E8);
    }
  }
}

unint64_t sub_1A45F9AD4()
{
  result = qword_1EB13E900;
  if (!qword_1EB13E900)
  {
    sub_1A45F8C38(255, &qword_1EB13E8F0, sub_1A45F9AA0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A45F9BC8();
    sub_1A3C57458(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E900);
  }

  return result;
}

unint64_t sub_1A45F9BC8()
{
  result = qword_1EB13E908;
  if (!qword_1EB13E908)
  {
    sub_1A45F9AA0(255);
    sub_1A3C57458(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E908);
  }

  return result;
}

unint64_t sub_1A45F9C70()
{
  result = qword_1EB13E918;
  if (!qword_1EB13E918)
  {
    sub_1A45F9958(255);
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC);
    sub_1A3C57458(&unk_1EB13E920, sub_1A45F99A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E918);
  }

  return result;
}

uint64_t sub_1A45F9D50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);

  return sub_1A45EEFBC(v4, a1);
}

void sub_1A45F9DF0()
{
  if (!qword_1EB13E930)
  {
    sub_1A45F9EA4();
    sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E930);
    }
  }
}

void sub_1A45F9EA4()
{
  if (!qword_1EB13E938)
  {
    sub_1A45F8C38(255, &qword_1EB13E940, sub_1A45F9F4C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A45FA4F8();
    v0 = type metadata accessor for LemonadeAlbumToolbarContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E938);
    }
  }
}

void sub_1A45F9F4C()
{
  if (!qword_1EB13E948)
  {
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A45FA340();
    sub_1A45FA138();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A5243474();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E948);
    }
  }
}

void sub_1A45FA138()
{
  if (!qword_1EB13E958)
  {
    sub_1A45FA270();
    sub_1A5243124();
    sub_1A5243474();
    sub_1A424B2FC();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124DC8, MEMORY[0x1E69C23A0]);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E958);
    }
  }
}

void sub_1A45FA270()
{
  if (!qword_1EB13E960)
  {
    sub_1A5243474();
    sub_1A424B2FC();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E960);
    }
  }
}

void sub_1A45FA340()
{
  if (!qword_1EB13E980)
  {
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A5243474();
    sub_1A45FA138();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E980);
    }
  }
}

unint64_t sub_1A45FA4F8()
{
  result = qword_1EB13E988;
  if (!qword_1EB13E988)
  {
    sub_1A45F8C38(255, &qword_1EB13E940, sub_1A45F9F4C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A45FB4EC(255, &qword_1EB13E950, sub_1A45FA138, &qword_1EB13E970, sub_1A45FA138);
    sub_1A45FA340();
    sub_1A45FA138();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13E970, sub_1A45FA138);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A5243474();
    sub_1A3C57458(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E988);
  }

  return result;
}

uint64_t sub_1A45FA79C(uint64_t a1, uint64_t a2)
{
  sub_1A3C6DC44(0, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45FA82C(uint64_t a1)
{
  sub_1A3C6DC44(0, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A45FA8B4()
{
  result = qword_1EB13E9A8;
  if (!qword_1EB13E9A8)
  {
    sub_1A45F8C38(255, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A45F9EA4();
    sub_1A3C57458(&qword_1EB13E998, sub_1A45F9EA4);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74();
    sub_1A45FCE48(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E9A8);
  }

  return result;
}

void sub_1A45FAA48()
{
  if (!qword_1EB13E9B0)
  {
    sub_1A45F8C38(255, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A45FA8B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9B0);
    }
  }
}

uint64_t sub_1A45FAB38(void *a1, uint64_t a2, char a3)
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 simulateEmptyShelves];

  if (!v7)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      v13 = MEMORY[0x1E69E7D40];
      v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x1C8);
      v15 = v12;
      if (v14() == 2)
      {
        (*((*v13 & *v15) + 0x210))(v20);
        LOBYTE(v22[0]) = v20[0];
        LOBYTE(v21[0]) = 1;
        v16 = static PickerMode.== infix(_:_:)(v22, v21);

        v17 = !v16;
        goto LABEL_8;
      }
    }

    v17 = 1;
LABEL_8:
    type metadata accessor for LemonadeAlbumItemListManager();
    v18 = a1;

    sub_1A43FD8F4(v19, a1, v17 & 1, 1, 0, 1, a3 & 1);
  }

  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v8 = *(a2 + 16);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v9 = sub_1A3C52C70(0, &qword_1EB126CD0);
  v10 = v8;
  sub_1A43FD8EC(v20, v9);
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v10, 0, v22);
}

uint64_t sub_1A45FAD80()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_1A3D6FBA4();
  v9 = sub_1A5242724();
  if ((v10 & 1) != 0 || (v11 = v9, (sub_1A52426F4() & 1) == 0))
  {
    if (sub_1A52426F4() & 1) != 0 || (v19 = sub_1A5242724(), (v20))
    {
      sub_1A3C38BD4();
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A52F8E10;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1A3D710E8();
      *(v21 + 32) = v7;
      *(v21 + 40) = v8;
      v22 = sub_1A524C6B4();
    }

    else
    {
      v23 = v19;
      sub_1A524C5F4();
      sub_1A524C5E4();
      sub_1A524C5D4();

      sub_1A524C5E4();
      v24[1] = v23;
      sub_1A524C5C4();
      sub_1A524C5E4();
      sub_1A524C614();
      v22 = sub_1A524C774();
      (*(v1 + 8))(v3, v0);
    }

    return v22;
  }

  else
  {
    v12 = sub_1A5242694();
    v14 = v13;
    v15 = sub_1A52426A4();
    v17 = sub_1A45F8E30(v7, v8, v11, v12, v14 & 1, v15, v16 & 1);

    return v17;
  }
}

void sub_1A45FB0A8()
{
  if (!qword_1EB13E9C8)
  {
    sub_1A45FB300();
    sub_1A45FBA44();
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C();
    sub_1A45FB5E8();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9C8);
    }
  }
}

void sub_1A45FB300()
{
  if (!qword_1EB13E9D0)
  {
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C();
    sub_1A45FB5E8();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E9D0);
    }
  }
}

void sub_1A45FB4EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5248644();
    sub_1A3C57458(a4, a5);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A45FB5E8()
{
  if (!qword_1EB13E9E0)
  {
    sub_1A45FB698(255);
    sub_1A3C57458(&qword_1EB13EA20, sub_1A45FB698);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E9E0);
    }
  }
}

void sub_1A45FB6CC()
{
  if (!qword_1EB13E9F0)
  {
    sub_1A45FE3B8(255, &qword_1EB13E9F8, &type metadata for LemonadeAlbumsCellStylePicker, MEMORY[0x1E69E6720]);
    sub_1A45FB778(255);
    sub_1A41C3F80();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E9F0);
    }
  }
}

void sub_1A45FB814()
{
  if (!qword_1EB13EA18)
  {
    sub_1A5243124();
    sub_1A524B9A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EA18);
    }
  }
}

void sub_1A45FB88C()
{
  if (!qword_1EB13EA30)
  {
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A5242424();
    sub_1A45FB5E8();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EA30);
    }
  }
}

void sub_1A45FBA44()
{
  if (!qword_1EB13EA40)
  {
    sub_1A45FB300();
    sub_1A5242424();
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C();
    sub_1A45FB5E8();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EA40);
    }
  }
}

uint64_t sub_1A45FBC98(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB1259B0, type metadata accessor for LemonadeAlbumsFeature.ShelfProvider.CollectionContainerModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45FBDD8()
{
  result = qword_1EB13EA48;
  if (!qword_1EB13EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA48);
  }

  return result;
}

uint64_t sub_1A45FBE2C(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB13EA50, type metadata accessor for LemonadeAlbumsFeature.CollectionContainerModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45FBF78()
{
  result = qword_1EB139AB0;
  if (!qword_1EB139AB0)
  {
    sub_1A3CA2488(255, &qword_1EB125470, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139AB0);
  }

  return result;
}

uint64_t sub_1A45FBFFC(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB12A258, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A45FC18C(uint64_t a1)
{
  result = sub_1A3C57458(&qword_1EB13EA70, type metadata accessor for LemonadeAlbumsFeature.MacFeedProvider);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A45FC2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A45FC2F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1A45FC34C()
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

void sub_1A45FC434()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A3CA2488(319, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A45F8804(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LemonadeFeedBodyStyle(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A45FC57C()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A3CA2488(319, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A45FC654()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A45FC6A0()
{
  result = qword_1EB122A88;
  if (!qword_1EB122A88)
  {
    sub_1A45F8C38(255, &qword_1EB122A80, sub_1A45F8AEC, sub_1A45F8DE0, MEMORY[0x1E697F960]);
    sub_1A3C57458(&qword_1EB124CF0, sub_1A45F8AEC);
    sub_1A3C57458(&qword_1EB1259C8, sub_1A45F8DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A88);
  }

  return result;
}

unint64_t sub_1A45FC7C4()
{
  result = qword_1EB13EA78;
  if (!qword_1EB13EA78)
  {
    sub_1A45F8C38(255, &qword_1EB13EA80, sub_1A45F97CC, sub_1A424B7F8, MEMORY[0x1E697F960]);
    sub_1A45A8F98();
    sub_1A424B894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA78);
  }

  return result;
}

unint64_t sub_1A45FC888()
{
  result = qword_1EB13EA88;
  if (!qword_1EB13EA88)
  {
    sub_1A45F8C38(255, &unk_1EB13EA90, sub_1A45F9958, sub_1A43DC25C, MEMORY[0x1E697F960]);
    sub_1A45F9C70();
    sub_1A3C57458(&qword_1EB139A48, sub_1A43DC25C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA88);
  }

  return result;
}

void sub_1A45FCA08()
{
  if (!qword_1EB13EAB0)
  {
    sub_1A45FE270(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A524B9A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13EAB0);
    }
  }
}

void sub_1A45FCAD8()
{
  if (!qword_1EB13EAC0)
  {
    sub_1A44A6464(255);
    sub_1A45FCBD8();
    sub_1A3C57458(&qword_1EB13AD70, sub_1A44A6464);
    sub_1A45FCE48(&qword_1EB13EB10, sub_1A45FCBD8, sub_1A45FCEB8);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EAC0);
    }
  }
}

void sub_1A45FCBD8()
{
  if (!qword_1EB13EAD0)
  {
    sub_1A45FE3B8(255, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter, MEMORY[0x1E69E62F8]);
    sub_1A45FD620(255, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
    sub_1A45FCD90(&qword_1EB13EAF8, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter);
    sub_1A45FCDF4();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EAD0);
    }
  }
}

void sub_1A45FCCFC()
{
  if (!qword_1EB13EAF0)
  {
    sub_1A3E429B4();
    sub_1A3C57458(&qword_1EB1274F0, sub_1A3E429B4);
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EAF0);
    }
  }
}

uint64_t sub_1A45FCD90(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A45FE3B8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45FCDF4()
{
  result = qword_1EB13EB00;
  if (!qword_1EB13EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB00);
  }

  return result;
}

uint64_t sub_1A45FCE48(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45FCEB8()
{
  result = qword_1EB13EB18;
  if (!qword_1EB13EB18)
  {
    sub_1A45FD620(255, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
    sub_1A45FCF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB18);
  }

  return result;
}

unint64_t sub_1A45FCF54()
{
  result = qword_1EB13EB20;
  if (!qword_1EB13EB20)
  {
    sub_1A45FCCC8(255);
    sub_1A3C57458(&qword_1EB13EB28, sub_1A45FCCFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB20);
  }

  return result;
}

uint64_t sub_1A45FCFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(*v1 + 288))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1A45FE3B8(0, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter, MEMORY[0x1E69E62F8]);
  sub_1A45FD620(0, &qword_1EB13EAE0, MEMORY[0x1E697F960]);
  sub_1A45FCD90(&qword_1EB13EAF8, &qword_1EB13EAD8, &type metadata for LemonadeAlbumsContentFilter);
  sub_1A45FCDF4();
  sub_1A45FCEB8();

  return sub_1A524B9B4();
}

uint64_t sub_1A45FD174()
{
  v19 = sub_1A3C38BD4();
  v20 = v1;
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  v4 = v3;
  v6 = v5;
  (*(*v0 + 264))(&v19);
  v7 = v19;
  if (!LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
LABEL_13:
    sub_1A3E75E68(v2, v4, v6 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = v6;
  v8 = (*(*v0 + 288))();
  v9 = 0;
  v10 = *(v8 + 16);
  do
  {
    if (v10 == v9)
    {

      v6 = v18;
      goto LABEL_13;
    }

    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v11 = *(v8 + 8 * v9++ + 32);
    v19 = v11;
    v21 = v7;
    sub_1A43FED2C();
  }

  while ((sub_1A524E114() & 1) == 0);
  v19 = *sub_1A44E72F8();
  v21 = v11;
  sub_1A43FE604();
  if (sub_1A524C594() & 1) != 0 || (v19 = *sub_1A44E7304(), v21 = v11, (sub_1A524C594()))
  {
    v6 = v18;

    v12 = sub_1A3C38BD4();
    if (v13)
    {
      v19 = v12;
      v20 = v13;
      v14 = sub_1A524A464();
      sub_1A3E75E68(v14, v16, v15 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_13;
  }

LABEL_15:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A45FD544(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A45FD620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A45FCCC8(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A45FD688@<X0>(_BYTE *a1@<X8>)
{
  if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    sub_1A43FED2C();
    result = sub_1A524E114();
  }

  else
  {
    result = 0;
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1A45FD6FC(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *a1;
  (*(*v2 + 264))(&v8);
  if (v4 == 1)
  {
    v8 = v3;
  }

  else
  {
    v7 = v3;
    v3 = v8;
    sub_1A43FED2C();
    sub_1A524E124();
    if ((sub_1A524E164() & 1) == 0)
    {
      sub_1A524E174();
      v3 = v8;
    }
  }

  v7 = v3;
  sub_1A43FED2C();
  sub_1A524E214();
  sub_1A43FE604();
  if (sub_1A524C594())
  {
    v5 = *sub_1A44E6F70();
    v8 = v5;
  }

  else
  {
    v5 = v8;
  }

  v7 = v5;
  return (*(*v2 + 272))(&v7);
}

void sub_1A45FD868()
{
  if (!qword_1EB13EB50)
  {
    sub_1A45FD910();
    sub_1A45FCE48(&qword_1EB13EB78, sub_1A45FD910, sub_1A45FCF54);
    v0 = sub_1A5248014();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EB50);
    }
  }
}

void sub_1A45FD910()
{
  if (!qword_1EB13EB58)
  {
    sub_1A45FE3B8(255, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle, MEMORY[0x1E69E62F8]);
    sub_1A45FCCC8(255);
    sub_1A45FCD90(&qword_1EB13EB68, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle);
    sub_1A45FD9E4();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EB58);
    }
  }
}

unint64_t sub_1A45FD9E4()
{
  result = qword_1EB13EB70;
  if (!qword_1EB13EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB70);
  }

  return result;
}

uint64_t sub_1A45FDA38()
{
  (*(*v0 + 184))();
  swift_getKeyPath();
  sub_1A45FE3B8(0, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle, MEMORY[0x1E69E62F8]);
  sub_1A45FCCC8(0);
  sub_1A45FCD90(&qword_1EB13EB68, &qword_1EB13EB60, &type metadata for LemonadeAlbumCellStyle);
  sub_1A45FD9E4();
  sub_1A45FCF54();

  return sub_1A524B9B4();
}

uint64_t sub_1A45FDB68@<X0>(BOOL *a1@<X8>)
{
  (*(**(v1 + 32) + 160))(&v6);
  sub_1A424D8DC();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  *a1 = v5 == v4;
  return result;
}

uint64_t objectdestroy_123Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

_BYTE *sub_1A45FDC6C(_BYTE *result)
{
  if (*result == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    return (*(*v4 + 168))(&v5);
  }

  return result;
}

unint64_t sub_1A45FDCD8()
{
  result = qword_1EB139AD8;
  if (!qword_1EB139AD8)
  {
    sub_1A3CA2488(255, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139AD8);
  }

  return result;
}

uint64_t objectdestroy_4Tm_3()
{

  sub_1A3C53AEC(*(v0 + 48), *(v0 + 56));
  sub_1A3C53AEC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1A45FDDD8@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 32))
  {
    v3 = sub_1A44E6630();
    v4 = *(**v3 + 264);

    v4(&v9, v5);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter())
    {
      v6 = *(**v3 + 264);

      v6(&v9, v7);

      sub_1A44E7304();
      sub_1A43FED2C();
      sub_1A524E114();
    }
  }

  result = sub_1A524B544();
  *a1 = result;
  return result;
}

unint64_t sub_1A45FDF54()
{
  result = qword_1EB13EB90;
  if (!qword_1EB13EB90)
  {
    sub_1A45F8804(255, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
    sub_1A45FB300();
    sub_1A45FBA44();
    sub_1A45FB4EC(255, &qword_1EB13E9D8, sub_1A45FB5E8, &qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A45FB88C();
    sub_1A45FB5E8();
    sub_1A5248644();
    sub_1A3C57458(&qword_1EB13EA28, sub_1A45FB5E8);
    sub_1A3C57458(&qword_1EB13E978, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A5242424();
    sub_1A3C57458(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EB90);
  }

  return result;
}

uint64_t sub_1A45FE200(uint64_t result)
{
  if (*(result + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A45FE270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A45FE2C4()
{
  sub_1A45FE3B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1A524C674();
  *(inited + 56) = v2;
  sub_1A3DD76A0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_unknownObjectRetain();
  return sub_1A5243104();
}

void sub_1A45FE3B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45FE408(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A45FE5E0(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  v8 = v3;
  sub_1A3CA2488(0, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
  sub_1A45FE4E8();
  v4 = v3;
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v7);
  v6 = v7;
  v5 = sub_1A4407D6C(&v8, &v6, 0, 0);
  sub_1A478C8F8(v5, a1);
}

unint64_t sub_1A45FE4E8()
{
  result = qword_1EB137730;
  if (!qword_1EB137730)
  {
    sub_1A3CA2488(255, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137730);
  }

  return result;
}

unint64_t sub_1A45FE56C()
{
  result = qword_1EB13EBD0;
  if (!qword_1EB13EBD0)
  {
    sub_1A45FE5E0(255, &unk_1EB13EBC0, type metadata accessor for LemonadeCollectionCustomizationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EBD0);
  }

  return result;
}

void sub_1A45FE5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3CA2488(255, &qword_1EB13EBB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
    v7 = v6;
    v8 = sub_1A45FE4E8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

PXUIElementFreezer __swiftcall PXUIElementFreezer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A45FEA48(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = qword_1EB1C9FA0;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1C9FA8);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v11 = 136315138;
      v12 = v8;
      v13 = [v12 description];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    v14 = *(v3 + 16);
    *(v3 + 16) = 0;

    if (a1)
    {
      v15 = 0.3;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    v27 = sub_1A3EF7388;
    v28 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1A3C2E0D0;
    v26 = &block_descriptor_222;
    v18 = _Block_copy(&aBlock);
    v19 = v8;

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v27 = sub_1A3EF739C;
    v28 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1A3E01E70;
    v26 = &block_descriptor_12_6;
    v21 = _Block_copy(&aBlock);
    v22 = v19;

    [v16 animateWithDuration:v18 animations:v21 completion:v15];
    _Block_release(v21);
    _Block_release(v18);
  }
}

void sub_1A45FEDB4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C9FA8);
  __swift_project_value_buffer(v0, qword_1EB1C9FA8);
  sub_1A5246EF4();
}

uint64_t sub_1A45FEE18(void *a1)
{
  v46 = sub_1A524BEE4();
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - v15;
  if (!a1)
  {
    goto LABEL_9;
  }

  v45 = v10;
  v47 = v14;
  v17 = a1;
  v18 = [v17 snapshotViewAfterScreenUpdates_];
  if (!v18)
  {

LABEL_9:
    type metadata accessor for FrozenUIElement();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    return v29;
  }

  v19 = v18;
  v40 = v8;
  v43 = v5;
  if (qword_1EB1C9FA0 != -1)
  {
    swift_once();
  }

  v41 = v6;
  v42 = v4;
  v44 = v2;
  v20 = sub_1A5246F24();
  __swift_project_value_buffer(v20, qword_1EB1C9FA8);
  v21 = v17;
  v22 = v19;
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v25 = 136315650;
    v26 = v21;
    v27 = [v26 description];
    sub_1A524C674();
    v36[3] = v24;
    v38 = v16;

    sub_1A3C2EF94();
  }

  v28 = [v22 layer];
  [v28 setZPosition_];

  v39 = v21;
  [v21 addSubview_];
  type metadata accessor for FrozenUIElement();
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  sub_1A3C52C70(0, &qword_1EB12B180);
  v38 = v22;
  v30 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v45 = *(v45 + 8);
  (v45)(v12, v47);
  aBlock[4] = sub_1A45FF4F0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_15_5;
  v31 = _Block_copy(aBlock);

  v32 = v40;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
  v33 = v42;
  v34 = v46;
  sub_1A524E224();
  MEMORY[0x1A5908790](v16, v32, v33, v31);
  _Block_release(v31);

  (*(v44 + 8))(v33, v34);
  (*(v41 + 8))(v32, v43);
  (v45)(v16, v47);
  return v29;
}

uint64_t PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = *(v4 + 24);
  *(a2 + v7) = swift_getKeyPath();
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, v6);
  swift_storeEnumTagMultiPayload();

  return sub_1A3C34460(a1, a2);
}

uint64_t PhotosDynamicHeaderLegibilityOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  sub_1A46003FC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460061C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4600718(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45FFAC8(v17);
  sub_1A52436B4();
  sub_1A46008D4(v17, sub_1A3DC7D88);
  v18 = v1[3];
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v18);
  PhotosDynamicHeaderGeometryModel.mainContentCoveredFraction.getter(v18, v19);
  v21 = v20;
  v23 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v23);
  (*(v22 + 56))(v45, v23, v22);
  v24 = v2[3];
  v25 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v24);
  (*(v25 + 16))(v24, v25);
  v26 = sub_1A45FFCC4();
  v27 = v2[3];
  v28 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v27);
  (*(v28 + 8))(v27, v28);
  v29 = v2[3];
  v30 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v29);
  if ((*(v30 + 48))(v29, v30))
  {
    *v6 = sub_1A524BC74();
    v6[1] = v31;
    sub_1A4600834();
    sub_1A45FFFB4(v2, v6 + *(v32 + 44), v21 * v26);
    v33 = sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC);
    sub_1A524A724();
    sub_1A46008D4(v6, sub_1A46003FC);
    v45[0] = v4;
    v45[1] = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v43;
    sub_1A524A724();
    (*(v42 + 8))(v9, v34);
    v35 = sub_1A5248874();
    v36 = sub_1A524A064();
    v37 = &v14[*(v11 + 36)];
    *v37 = v35;
    v37[8] = v36;
    v38 = v44;
    sub_1A3D13A28(v14, v44);
    v39 = 0;
    v40 = v38;
  }

  else
  {
    v39 = 1;
    v40 = v44;
  }

  return (*(v12 + 56))(v40, v39, 1, v11);
}

uint64_t sub_1A45FFAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  sub_1A46029A0(v1 + *(v10 + 24), v9, &unk_1EB128A40, sub_1A3DC7D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A45CBB08(v9, a1);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_1A45FFCC4()
{
  v17 = sub_1A5249234();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697DBD0];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A5247E04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  sub_1A46029A0(v0 + *(v12 + 20), v7, &qword_1EB128A70, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  result = 0.5;
  if (v14 != *MEMORY[0x1E697DBB8])
  {
    result = 1.0;
    if (v14 != *MEMORY[0x1E697DBA8])
    {
      (*(v9 + 8))(v11, v8, 1.0);
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_1A45FFFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v27[1] = a2;
  sub_1A4602934(0, &qword_1EB122B98, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  sub_1A4600498(0);
  v27[0] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5243D04();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if ((*(v18 + 40))(v19, v18))
  {
    sub_1A5243CF4();
    v20 = [objc_opt_self() blackColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = sub_1A524B284();
    v23 = *(v12 + 16);
    v23(v14, v17, v11);
    v23(v10, v14, v11);
    sub_1A46004CC();
    *&v10[*(v24 + 48)] = v22;
    v25 = *(v12 + 8);

    v25(v14, v11);
    sub_1A4602A20(v10, v7, sub_1A4600498);
    swift_storeEnumTagMultiPayload();
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498);
    sub_1A5249744();

    sub_1A46008D4(v10, sub_1A4600498);
    return (v25)(v17, v11);
  }

  else
  {
    *v7 = sub_1A524B414();
    swift_storeEnumTagMultiPayload();
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498);
    return sub_1A5249744();
  }
}

void sub_1A4600398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46003FC()
{
  if (!qword_1EB1215C8)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    sub_1A4600534();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215C8);
    }
  }
}

void sub_1A46004CC()
{
  if (!qword_1EB124CF8)
  {
    sub_1A5243D04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124CF8);
    }
  }
}

unint64_t sub_1A4600534()
{
  result = qword_1EB122588;
  if (!qword_1EB122588)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    sub_1A46006D0(&unk_1EB121390, sub_1A4600498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122588);
  }

  return result;
}

void sub_1A460061C()
{
  if (!qword_1EB121FC0)
  {
    sub_1A46003FC();
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FC0);
    }
  }
}

uint64_t sub_1A46006D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4600754()
{
  if (!qword_1EB121FB8)
  {
    sub_1A460061C();
    sub_1A46003FC();
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FB8);
    }
  }
}

void sub_1A4600834()
{
  if (!qword_1EB1243F0)
  {
    sub_1A4602934(255, &qword_1EB122580, sub_1A4600498, MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243F0);
    }
  }
}

uint64_t sub_1A46008D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4600938(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(0);
  sub_1A5247C74();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  PhotosDynamicHeaderPreview.init(titleModel:banner:)(v14, v12, v16);
  v8 = v16[0];
  v9 = v16[1];
  sub_1A4602A20(v7, v4, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview);
  sub_1A4602A20(v4, a1, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview);
  sub_1A4601E08();
  v11 = a1 + *(v10 + 48);
  *v11 = v8;
  *(v11 + 8) = v9;
  *(v11 + 16) = xmmword_1A53503D0;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4600B08(uint64_t a1)
{
  v2 = sub_1A46028E0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4600B54(uint64_t a1)
{
  v2 = sub_1A46028E0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4600BA0@<X0>(char *a1@<X8>)
{
  v76 = a1;
  v75 = sub_1A5243054();
  v83 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v63 - v3;
  v4 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v63 - v8);
  v10 = sub_1A5242434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5242444();
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v78 = &v63 - v19;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1E38], v10, v18);
  sub_1A5242454();
  sub_1A4600398(0, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  v21 = v20;
  sub_1A5247C84();
  v22 = v120;
  swift_getKeyPath();
  v120 = v22;
  sub_1A4602730();
  sub_1A52415D4();

  v23 = *(v22 + 16);

  v9[3] = type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  v9[4] = &protocol witness table for PhotosDynamicHeaderMockGeometryModel;
  *v9 = v23;
  v24 = *(v5 + 28);
  *(v9 + v24) = swift_getKeyPath();
  v77 = v9;
  v25 = MEMORY[0x1E697DCB8];
  sub_1A4600398(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v26 = *(v5 + 32);
  *(v9 + v26) = swift_getKeyPath();
  sub_1A4600398(0, &unk_1EB128A40, sub_1A3DC7D88, v25);
  swift_storeEnumTagMultiPayload();
  sub_1A5247CA4();
  v27 = v120;
  v28 = v121;
  v29 = v122;
  swift_getKeyPath();
  v117 = v27;
  v118 = v28;
  v119 = v29;
  v68 = MEMORY[0x1E6981948];
  sub_1A4600398(0, &qword_1EB13ECB8, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v71 = v116;
  v72 = v115;

  *&v64 = v21;
  sub_1A5247CA4();
  v30 = v120;
  v31 = v121;
  v32 = v122;
  swift_getKeyPath();
  v112 = v30;
  v113 = v31;
  v114 = v32;
  sub_1A524B914();

  v69 = v111;
  v70 = v110;

  sub_1A5247CA4();
  v33 = v120;
  v34 = v121;
  v35 = v122;
  swift_getKeyPath();
  v107 = v33;
  v108 = v34;
  v109 = v35;
  sub_1A524B914();

  v36 = v104;
  v37 = v105;
  v38 = v106;

  swift_getKeyPath();
  v101 = v36;
  v102 = v37;
  v103 = v38;
  sub_1A4600398(0, &qword_1EB13B798, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, v68);
  sub_1A524B914();

  v67 = v98;
  v68 = v97;
  v65 = v100;
  v66 = v99;

  sub_1A5247CA4();
  v39 = v120;
  v40 = v121;
  v41 = v122;
  swift_getKeyPath();
  v94 = v39;
  v95 = v40;
  v96 = v41;
  sub_1A524B914();

  v42 = v91;
  v43 = v92;
  v44 = v93;

  swift_getKeyPath();
  v88 = v42;
  v89 = v43;
  v90 = v44;
  sub_1A524B914();

  v45 = v84;
  v46 = v85;
  v63 = v87;
  v64 = v86;

  v120 = v45;
  v121 = v46;
  v123 = v63;
  v122 = v64;
  v47 = v82;
  sub_1A5243044();
  v48 = v80;
  v49 = *(v81 + 16);
  v50 = v79;
  v49(v79, v78, v80);
  v72 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay;
  v51 = v73;
  sub_1A4602A20(v77, v73, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v71 = *(v83 + 16);
  v52 = v74;
  v53 = v47;
  v54 = v75;
  v71(v74, v53, v75);
  v55 = v76;
  v49(v76, v50, v48);
  sub_1A460251C();
  v57 = v56;
  v58 = v51;
  sub_1A4602A20(v51, &v55[*(v56 + 48)], v72);
  v71(&v55[*(v57 + 64)], v52, v54);
  v59 = *(v83 + 8);
  v59(v82, v54);
  sub_1A46008D4(v77, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v60 = v80;
  v61 = *(v81 + 8);
  v61(v78, v80);
  v59(v52, v54);
  sub_1A46008D4(v58, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  return (v61)(v79, v60);
}

double sub_1A4601420@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1A46014C0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1A4601560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  *a2 = *(v3 + 16);
}

double sub_1A4601608@<D0>(char *a1@<X8>)
{
  *a1 = sub_1A524BC74();
  *(a1 + 1) = v2;
  sub_1A4602480();
  sub_1A4600BA0(&a1[*(v3 + 44)]);
  v4 = sub_1A5248874();
  v5 = sub_1A524A064();
  sub_1A4602934(0, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v7 = &a1[*(v6 + 36)];
  *v7 = v4;
  v7[8] = v5;
  v8 = sub_1A524BC54();
  v10 = v9;
  sub_1A4602638();
  v12 = &a1[*(v11 + 36)];
  result = 1.13817309e243;
  *v12 = xmmword_1A53503E0;
  v12[16] = 0;
  *(v12 + 3) = MEMORY[0x1E69E7CC0];
  *(v12 + 4) = v8;
  *(v12 + 5) = v10;
  return result;
}

uint64_t sub_1A46016EC()
{
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  *(v0 + 16) = PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  *(v0 + 24) = xmmword_1A53503F0;
  sub_1A5241604();
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  v1 = *(v0 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v3.n128_u64[0] = *(v0 + 24);
  (*(*v1 + 304))(v2, v3);

  return v0;
}

uint64_t sub_1A4601814(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }
}

uint64_t sub_1A4601918(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
    swift_getKeyPath();
    sub_1A4602730();
    sub_1A52415D4();

    v2 = *(v1 + 16);
    swift_getKeyPath();

    sub_1A52415D4();

    v4.n128_u64[0] = *(v1 + 24);
    (*(*v2 + 304))(v3, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }
}

void sub_1A4601AC8(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4602730();
    sub_1A52415C4();
  }
}

uint64_t sub_1A4601BB0()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();
}

double sub_1A4601C24()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  return *(v0 + 24);
}

double sub_1A4601C94()
{
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  return *(v0 + 32);
}

uint64_t sub_1A4601D04()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_DEBD531C94B85466E30779BA7F3EBEE548PhotosDynamicHeaderLegibilityOverlayPreviewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4601DA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(0);
  v2 = swift_allocObject();
  result = sub_1A46016EC();
  *a1 = v2;
  return result;
}

void sub_1A4601E08()
{
  if (!qword_1EB13EC50)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreview(255);
    sub_1A4601E78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13EC50);
    }
  }
}

void sub_1A4601E78()
{
  if (!qword_1EB13EC58)
  {
    sub_1A4005524();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EC58);
    }
  }
}

unint64_t sub_1A4601EF8()
{
  result = qword_1EB13EC60;
  if (!qword_1EB13EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EC60);
  }

  return result;
}

void sub_1A4601F90()
{
  sub_1A460208C();
  if (v0 <= 0x3F)
  {
    sub_1A4600398(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4600398(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A460208C()
{
  result = qword_1EB125EA0;
  if (!qword_1EB125EA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125EA0);
  }

  return result;
}

uint64_t sub_1A4602108()
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

unint64_t sub_1A46021B8()
{
  result = qword_1EB123FA8;
  if (!qword_1EB123FA8)
  {
    sub_1A4600398(255, &qword_1EB123FB0, sub_1A4600718, MEMORY[0x1E69E6720]);
    sub_1A4602260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FA8);
  }

  return result;
}

unint64_t sub_1A4602260()
{
  result = qword_1EB123FC0;
  if (!qword_1EB123FC0)
  {
    sub_1A4600718(255);
    sub_1A460061C();
    sub_1A46003FC();
    sub_1A46006D0(&qword_1EB1215D0, sub_1A46003FC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FC0);
  }

  return result;
}

void sub_1A46023C8()
{
  sub_1A4600398(319, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A4602480()
{
  if (!qword_1EB13EC80)
  {
    sub_1A46024E8(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EC80);
    }
  }
}

void sub_1A460251C()
{
  if (!qword_1EB13EC90)
  {
    sub_1A5242444();
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A5243054();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EC90);
    }
  }
}

void sub_1A46025A4()
{
  if (!qword_1EB13ECA0)
  {
    sub_1A46024E8(255);
    sub_1A46006D0(&qword_1EB13ECA8, sub_1A46024E8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ECA0);
    }
  }
}

void sub_1A4602638()
{
  if (!qword_1EB13ECB0)
  {
    sub_1A4602934(255, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A46026D8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ECB0);
    }
  }
}

void sub_1A46026D8()
{
  if (!qword_1EB122EA8)
  {
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122EA8);
    }
  }
}

unint64_t sub_1A4602730()
{
  result = qword_1EB1CA218;
  if (!qword_1EB1CA218)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CA218);
  }

  return result;
}

double sub_1A4602788()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_1A4602798()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A4602730();
  sub_1A52415D4();

  v2 = *(v1 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v4.n128_u64[0] = *(v1 + 24);
  (*(*v2 + 304))(v3, v4);
}

uint64_t sub_1A46028A4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1A46028E0()
{
  result = qword_1EB13ECC0;
  if (!qword_1EB13ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECC0);
  }

  return result;
}

void sub_1A4602934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A46029A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4600398(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4602A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4602A88()
{
  result = qword_1EB13ECC8;
  if (!qword_1EB13ECC8)
  {
    sub_1A4602638();
    sub_1A4602B38();
    sub_1A46006D0(&qword_1EB122EB0, sub_1A46026D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECC8);
  }

  return result;
}

unint64_t sub_1A4602B38()
{
  result = qword_1EB13ECD0;
  if (!qword_1EB13ECD0)
  {
    sub_1A4602934(255, &qword_1EB13EC98, sub_1A46025A4, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A46006D0(&qword_1EB13ECD8, sub_1A46025A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13ECD0);
  }

  return result;
}

uint64_t PXPhotosBarsController.barItemIdentifiersToInvalidateForPhotosViewModelChange(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1A590D320]();
  result = MEMORY[0x1E69E7CC0];
  if ((v3 & 1) == 0 && (a1 & 0x2000000000000000) != 0)
  {
    [v1 shouldUseCompactBarButtons];
    v5 = [v1 viewModel];
    [v5 chromeTitleFloatingFraction];

    sub_1A4603ED8();
  }

  return result;
}

uint64_t PXPhotosBarsController.shouldUseCompactBarButtons.getter()
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    sub_1A4603ED8();
  }

  return 0;
}

Swift::Void __swiftcall PXPhotosBarsController.configureNavigationItem(_:withTitle:)(UINavigationItem _, Swift::String_optional withTitle)
{
  sub_1A46049A4(0, &qword_1EB12B0D0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A5245BA4();
}

void sub_1A4603ED8()
{
  if (qword_1EB1590B0 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A4604044()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 alwaysShowCurationToggleButton];

  if (v1)
  {
    sub_1A46045A8();
  }

  sub_1A4603ED8();
}

id sub_1A46047D4()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_8();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A46048A0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B548);
  __swift_project_value_buffer(v0, qword_1EB15B548);
  sub_1A5246EF4();
}

uint64_t sub_1A4604904(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = v2;
  return (*(*v3 + 160))(&v5);
}

uint64_t sub_1A460495C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A46049A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4604A1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A486B914();
    sub_1A42DC3CC();
    if (sub_1A524E114() & 1) != 0 || (sub_1A486B8E4(), (sub_1A524E114()) || (sub_1A486B8CC(), (sub_1A524E114()))
    {
      sub_1A4604044();
    }
  }
}

uint64_t sub_1A4604AFC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  sub_1A44AE480(v9);
  v4 = v9[3];
  *(v3 + 32) = v9[2];
  *(v3 + 48) = v4;
  *(v3 + 128) = v10;
  v5 = v9[7];
  *(v3 + 96) = v9[6];
  *(v3 + 112) = v5;
  v6 = v9[5];
  *(v3 + 64) = v9[4];
  *(v3 + 80) = v6;
  v7 = v9[1];
  *v3 = v9[0];
  *(v3 + 16) = v7;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum) = 0;
  sub_1A5241604();
  sub_1A3F72460(a1, v2 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item);
  return v2;
}

uint64_t sub_1A4604BCC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415C4();

  return sub_1A46054D8(a1, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604CB0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  return sub_1A4605470(v5 + v3, a1, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  return sub_1A4605470(v3 + v4, a2, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604E68(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4605470(a1, v6, type metadata accessor for InvitationsItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415C4();

  return sub_1A46054D8(v6, type metadata accessor for InvitationsItem);
}

uint64_t sub_1A4604FB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  sub_1A46061E4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t type metadata accessor for LemonadeInvitationModel()
{
  result = qword_1EB1CA470;
  if (!qword_1EB1CA470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A4605090(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A46051D8;
}

void sub_1A46051D8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void *sub_1A46052B8()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__didFetchSharedAlbum) = 1;
    swift_getKeyPath();
    sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
    sub_1A52415D4();

    v2 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 albumGUID];
      if (!v5)
      {
        sub_1A524C674();
        v5 = sub_1A524C634();
      }

      v6 = objc_opt_self();
      v7 = [v4 photoLibrary];
      v8 = [v6 fetchSharedAlbumWithScopeIdentifier:v5 inPhotoLibrary:v7 allowPending:1];

      v9 = *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum);
      *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum) = v8;
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__cachedSharedAlbum);
  v11 = v10;
  return v10;
}

uint64_t sub_1A4605470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46054D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4605550(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v6 = v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v7 = type metadata accessor for InvitationsItem(0);
  v8 = sub_1A4605470(v6 + *(v7 + 28), v5, type metadata accessor for InvitationsItem.InvitationType);
  v9 = a1(v8);
  sub_1A46054D8(v5, type metadata accessor for InvitationsItem.InvitationType);
  return v9;
}

uint64_t sub_1A46056CC@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v2 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v37 = v1;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v5 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 avatarConfiguration];
    v9 = [v8 email];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A524C674();
      v34 = v12;
      v35 = v11;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v15 = [v8 phone];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1A524C674();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = [v8 firstName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1A524C674();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [v8 lastName];
    if (v25)
    {
      v27 = v25;
      v28 = sub_1A524C674();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_1A482211C(v26);
    v31 = sub_1A41F7694();
    v14 = v36;
    sub_1A481E150(v35, v34, v17, v19, v22, v24, v28, v30, v36, v31, v4);

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v14 = v36;
  }

  v32 = type metadata accessor for ShareParticipantImageConfiguration(0);
  return (*(*(v32 - 8) + 56))(v14, v13, 1, v32);
}

uint64_t sub_1A4605984@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    v4 = [swift_unknownObjectRetain() owner];
    sub_1A3DEF360(v4, a1);
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for SharedLibraryOwnerImageConfiguration();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

void *sub_1A4605AC4()
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

uint64_t sub_1A4605BE0()
{
  sub_1A46054D8(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item, type metadata accessor for InvitationsItem);
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 96);
  v8[7] = v1;
  v9 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 128);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 32);
  v8[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs);
  v8[1] = v4;
  sub_1A4605B8C(v8);

  v5 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t sub_1A4605DC0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415C4();

  return sub_1A46054D8(a1, type metadata accessor for InvitationsItem);
}

void (*sub_1A4605EA4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A4605090(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A4605F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4605FA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v12[1] = v6;
  sub_1A4605F5C(&qword_1EB13ED00, type metadata accessor for LemonadeInvitationModel);
  sub_1A52415D4();

  v7 = OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel__item;
  swift_beginAccess();
  sub_1A4605470(v6 + v7, v5, type metadata accessor for InvitationsItem);
  v8 = InvitationsItem.id.getter();
  v10 = v9;
  result = sub_1A46054D8(v5, type metadata accessor for InvitationsItem);
  *a1 = v8;
  a1[1] = v10;
  return result;
}