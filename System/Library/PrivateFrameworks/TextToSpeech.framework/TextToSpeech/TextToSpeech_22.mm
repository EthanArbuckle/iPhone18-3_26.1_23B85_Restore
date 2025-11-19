void *sub_1A9510C28(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A937829C(&qword_1EB388670, qword_1A95989D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386F50, &qword_1A958A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t AXVoiceError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t static AXVoiceLoader.assetType.getter()
{
  swift_beginAccess();
  v0 = qword_1EB388678;

  return v0;
}

uint64_t static AXVoiceLoader.assetType.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EB388678 = a1;
  off_1EB388680 = a2;
}

uint64_t sub_1A9510EE4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB388680;
  *a1 = qword_1EB388678;
  a1[1] = v2;
}

uint64_t sub_1A9510F34(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB388678 = v2;
  off_1EB388680 = v1;
}

uint64_t sub_1A9510F98()
{
  sub_1A957CF08();
  swift_beginAccess();
  v1 = qword_1EB388678;
  v0 = off_1EB388680;

  result = MEMORY[0x1AC585140](0xD000000000000017, 0x80000001A95C4E50);
  qword_1EB38DE38 = v1;
  qword_1EB38DE40 = v0;
  return result;
}

uint64_t *sub_1A9511040()
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  return &qword_1EB38DE38;
}

uint64_t static AXVoiceLoader.reloadNotification.getter()
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB38DE38;

  return v0;
}

uint64_t static AXVoiceLoader.reloadNotification.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38DE38 = a1;
  qword_1EB38DE40 = a2;
}

uint64_t (*static AXVoiceLoader.reloadNotification.modify())()
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A9511228@<X0>(void *a1@<X8>)
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB38DE40;
  *a1 = qword_1EB38DE38;
  a1[1] = v2;
}

uint64_t sub_1A95112A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EB38DE30;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38DE38 = v2;
  qword_1EB38DE40 = v1;
}

uint64_t sub_1A9511338()
{
  sub_1A937829C(&unk_1EB388300, &unk_1A9589B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A95873F0;
  v1 = swift_allocObject();
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB38DE40;
  *(v1 + 16) = qword_1EB38DE38;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  type metadata accessor for AXCatalogUpdater();

  *(v3 + 16) = sub_1A93F0F70();
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t AXVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  v2 = qword_1EB388678;
  v1 = off_1EB388680;

  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(60, &v9);
  v3 = sub_1A9547340();
  v5 = v4;
  v6 = sub_1A9547378();
  MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v2, v1, 2, v3, v5, sub_1A9511664, 0, v6, (v0 + 16), v7, &v9);
  return v0;
}

uint64_t AXVoiceLoader.init()()
{
  swift_beginAccess();
  v2 = qword_1EB388678;
  v1 = off_1EB388680;

  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(60, &v9);
  v3 = sub_1A9547340();
  v5 = v4;
  v6 = sub_1A9547378();
  MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v2, v1, 2, v3, v5, sub_1A9511664, 0, v6, (v0 + 16), v7, &v9);
  return v0;
}

void sub_1A95115E8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 physicalMemory];

  if (v1 <= 0x147D35700)
  {
    v2 = 150000000;
  }

  else
  {
    v2 = 0x7FFFFFFF;
  }

  dword_1EB3A7948 = v2;
}

uint64_t sub_1A9511664(void *a1)
{
  result = [a1 attributes];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_1A957C038();

  sub_1A957CE88();
  if (!*(v3 + 16) || (v4 = sub_1A93B1014(v6), (v5 & 1) == 0))
  {

    sub_1A93B1058(v6);
    return 1;
  }

  sub_1A937BA14(*(v3 + 56) + 32 * v4, v7);
  sub_1A93B1058(v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (qword_1EB38DE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return 0;
}

uint64_t sub_1A95117F8()
{
  v18 = v0;
  if (TTSIsInternalBuild())
  {
    v1 = sub_1A94CF400();
    v2 = *v1;
    v3 = *(**v1 + 400);

    v3(&v16, v4);
    v17 = v16;
    (*(*v2 + 408))(&v17);
  }

  v5 = *(v0 + 456);
  *(v0 + 16) = v5[1];
  v6 = v5[5];
  v8 = v5[2];
  v7 = v5[3];
  *(v0 + 64) = v5[4];
  *(v0 + 80) = v6;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v10 = v5[2];
  v9 = v5[3];
  v11 = v5[5];
  *(v0 + 144) = v5[4];
  *(v0 + 160) = v11;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  *(v0 + 96) = v5[1];
  sub_1A93F1120(v0 + 16, v0 + 176);
  v12 = sub_1A9511EAC();
  v13 = sub_1A9547124();
  *(v0 + 464) = v13;
  v14 = swift_task_alloc();
  *(v0 + 472) = v14;
  *v14 = v0;
  v14[1] = sub_1A9511988;

  return MobileAssetManager.assets(downloadCatalog:returnTypes:filters:)(0, v12, v13);
}

uint64_t sub_1A9511988(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(v4 + 480) = v1;

  v7 = *(v4 + 464);
  if (v1)
  {
    v8 = *(v4 + 96);
    v9 = *(v4 + 112);
    v10 = *(v4 + 128);
    v11 = *(v4 + 160);
    *(v4 + 304) = *(v4 + 144);
    *(v4 + 320) = v11;
    *(v4 + 272) = v9;
    *(v4 + 288) = v10;
    *(v4 + 256) = v8;
    sub_1A93F4788(v4 + 256);

    v12 = sub_1A9514FFC;
  }

  else
  {
    *(v4 + 488) = a1;
    v13 = *(v4 + 96);
    v14 = *(v4 + 112);
    v15 = *(v4 + 128);
    v16 = *(v4 + 160);
    *(v4 + 384) = *(v4 + 144);
    *(v4 + 400) = v16;
    *(v4 + 352) = v14;
    *(v4 + 368) = v15;
    *(v4 + 336) = v13;
    sub_1A93F4788(v4 + 336);

    v12 = sub_1A9515000;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1A9511B5C()
{
  v1 = *(v0 + 456);
  *(v0 + 16) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = v7;
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v1[1];
  sub_1A93F1120(v0 + 16, v0 + 176);
  v8 = sub_1A9547124();
  *(v0 + 464) = v8;
  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  *v9 = v0;
  v9[1] = sub_1A9511C48;

  return MobileAssetManager.assets(downloadCatalog:returnTypes:filters:)(0, 1, v8);
}

uint64_t sub_1A9511C48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(v4 + 480) = v1;

  v7 = *(v4 + 464);
  if (v1)
  {
    v8 = *(v4 + 96);
    v9 = *(v4 + 112);
    v10 = *(v4 + 128);
    v11 = *(v4 + 160);
    *(v4 + 304) = *(v4 + 144);
    *(v4 + 320) = v11;
    *(v4 + 272) = v9;
    *(v4 + 288) = v10;
    *(v4 + 256) = v8;
    sub_1A93F4788(v4 + 256);

    v12 = sub_1A9511E7C;
  }

  else
  {
    *(v4 + 488) = a1;
    v13 = *(v4 + 96);
    v14 = *(v4 + 112);
    v15 = *(v4 + 128);
    v16 = *(v4 + 160);
    *(v4 + 384) = *(v4 + 144);
    *(v4 + 400) = v16;
    *(v4 + 352) = v14;
    *(v4 + 368) = v15;
    *(v4 + 336) = v13;
    sub_1A93F4788(v4 + 336);

    v12 = sub_1A9511DD8;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1A9511DD8()
{
  v1 = v0[61];
  v2 = v0[57];
  v0[55] = type metadata accessor for AXVoiceLoader();
  v0[56] = &protocol witness table for AXVoiceLoader;
  v0[52] = v2;

  v3 = sub_1A93AF238((v0 + 52), v1);

  sub_1A9378138(v0 + 52);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A9511EB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9511F58;

  return sub_1A95133B4(v2, v3, 0);
}

uint64_t sub_1A9511F58(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A951208C, 0, 0);
  }
}

uint64_t sub_1A951208C()
{
  v6 = v0;
  v1 = [*(v0 + 24) state];
  v2 = *(v0 + 24);
  if (v1 != 4)
  {
    sub_1A954A228(v1);
    MAAsset.startDownloadAsync(options:)(&v5);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A9512118(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v1;
  v4[1] = sub_1A95121BC;

  return sub_1A95133B4(v2, v3, 0);
}

uint64_t sub_1A95121BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 160) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9512308, 0, 0);
  }
}

uint64_t sub_1A9512308()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A9512424;
  v2 = swift_continuation_init();
  v0[17] = sub_1A937829C(&qword_1EB388688, &unk_1A9598A00);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A9515004;
  v0[13] = &unk_1F1CED900;
  v0[14] = v2;
  [v1 cancelDownload_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A9512424()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9512504, 0, 0);
}

uint64_t sub_1A9512504()
{
  v1 = *(v0 + 160);
  [v1 refreshState];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A9512578(void *a1)
{
  v2[69] = v1;
  v3 = a1[1];
  v2[70] = *a1;
  v2[71] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A95125A4, 0, 0);
}

uint64_t sub_1A95125A4()
{
  v1 = *(v0 + 552);
  *(v0 + 80) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 128) = v1[4];
  *(v0 + 144) = v2;
  *(v0 + 96) = v4;
  *(v0 + 112) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 208) = v1[4];
  *(v0 + 224) = v7;
  *(v0 + 176) = v6;
  *(v0 + 192) = v5;
  *(v0 + 160) = v1[1];
  sub_1A93F1120(v0 + 80, v0 + 240);
  v8 = swift_task_alloc();
  *(v0 + 576) = v8;
  *v8 = v0;
  v8[1] = sub_1A9512688;
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);

  return MobileAssetManager.assets(voiceId:installedOnly:)(v10, v9, 1);
}

uint64_t sub_1A9512688(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 576);
  v11 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 176);
  v7 = *(v3 + 192);
  v8 = *(v3 + 224);
  if (v1)
  {
    *(v3 + 368) = *(v3 + 208);
    *(v3 + 384) = v8;
    *(v3 + 336) = v6;
    *(v3 + 352) = v7;
    *(v3 + 320) = v5;
    sub_1A93F4788(v3 + 320);
    v9 = sub_1A9512C4C;
  }

  else
  {
    *(v3 + 448) = *(v3 + 208);
    *(v3 + 464) = v8;
    *(v3 + 416) = v6;
    *(v3 + 432) = v7;
    *(v3 + 400) = v5;
    sub_1A93F4788(v3 + 400);
    v9 = sub_1A95127E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A95127E0()
{
  v1 = v0[73];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[73];
    }

    v2 = sub_1A957CE48();
    v0[75] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[75] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[73];
        v0[76] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1AC585DE0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v5 = v4;
        v0[77] = v4;
        v0[2] = v0;
        v0[7] = v0 + 68;
        v0[3] = sub_1A95129AC;
        v6 = swift_continuation_init();
        v0[67] = sub_1A937829C(&qword_1EB388690, &unk_1A9598A10);
        v0[60] = MEMORY[0x1E69E9820];
        v0[61] = 1107296256;
        v0[62] = sub_1A9515004;
        v0[63] = &unk_1F1CFC8F8;
        v0[64] = v6;
        [v5 purge_];
        v2 = (v0 + 2);
      }

      return MEMORY[0x1EEE6DEC8](v2);
    }
  }

  v8 = v0[73];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A95129AC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9512A8C, 0, 0);
}

uint64_t sub_1A9512A8C()
{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[76] + 1;
  [v1 refreshState];

  if (v3 == v2)
  {
    v4 = v0[73];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[76] + 1;
    v0[76] = v7;
    v8 = v0[73];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1AC585DE0]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[77] = v9;
    v0[2] = v0;
    v0[7] = v0 + 68;
    v0[3] = sub_1A95129AC;
    v10 = v9;
    v11 = swift_continuation_init();
    v0[67] = sub_1A937829C(&qword_1EB388690, &unk_1A9598A10);
    v0[60] = MEMORY[0x1E69E9820];
    v0[61] = 1107296256;
    v0[62] = sub_1A9515004;
    v0[63] = &unk_1F1CFC8F8;
    v0[64] = v11;
    [v10 purge_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A9512C64(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1A93780F4((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1A9512CC0(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1A937829C(&qword_1EB388698, &qword_1A9598A20);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v8 = *a2;
  v7 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_1A9512DD4;

  return sub_1A95133B4(v8, v7, 0);
}

uint64_t sub_1A9512DD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9512F28, 0, 0);
  }
}

uint64_t sub_1A9512F28()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  MAAsset.downloadProgressStream.getter(v2);
  sub_1A957C6D8();

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A9513000(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A9513024, 0, 0);
}

uint64_t sub_1A9513024()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [v2 totalWritten];
  *v1 = v3 / [v2 totalExpected];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A95130B8(uint64_t a1, uint64_t *a2)
{
  v3[78] = v2;
  v3[77] = a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  v3[79] = v6;
  *v6 = v3;
  v6[1] = sub_1A9513164;

  return sub_1A95133B4(v4, v5, 0);
}

uint64_t sub_1A9513164(uint64_t a1)
{
  v3 = *(*v2 + 632);
  v4 = *v2;
  *(v4 + 640) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9513298, 0, 0);
  }
}

uint64_t sub_1A9513298()
{
  v1 = v0[80];
  v2 = v0[78];
  v0[75] = type metadata accessor for AXVoiceLoader();
  v0[76] = &protocol witness table for AXVoiceLoader;
  v0[72] = v2;

  sub_1A93AEF6C((v0 + 72), v0 + 37);
  sub_1A9378138(v0 + 72);
  memcpy(v0 + 2, v0 + 37, 0x118uLL);
  v3 = sub_1A932D058((v0 + 2));
  v4 = v0[80];
  if (v3 == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();
  }

  else
  {
    v7 = v0[77];

    memcpy(v7, v0 + 2, 0x118uLL);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A95133B4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 424) = a2;
  *(v4 + 432) = v3;
  *(v4 + 464) = a3;
  *(v4 + 416) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95133DC, 0, 0);
}

uint64_t sub_1A95133DC()
{
  v1 = *(v0 + 432);
  *(v0 + 16) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = v7;
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v1[1];
  sub_1A93F1120(v0 + 16, v0 + 176);
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = sub_1A95134BC;
  v9 = *(v0 + 464);
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);

  return MobileAssetManager.asset(voiceId:installedOnly:)(v11, v10, v9);
}

uint64_t sub_1A95134BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v11 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 112);
  v7 = *(v3 + 128);
  v8 = *(v3 + 160);
  if (v1)
  {
    *(v3 + 304) = *(v3 + 144);
    *(v3 + 320) = v8;
    *(v3 + 272) = v6;
    *(v3 + 288) = v7;
    *(v3 + 256) = v5;
    sub_1A93F4788(v3 + 256);
    v9 = sub_1A95136F4;
  }

  else
  {
    *(v3 + 384) = *(v3 + 144);
    *(v3 + 400) = v8;
    *(v3 + 352) = v6;
    *(v3 + 368) = v7;
    *(v3 + 336) = v5;
    sub_1A93F4788(v3 + 336);
    v9 = sub_1A9513610;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A9513610()
{
  v1 = *(v0 + 448);
  if (v1)
  {
    [*(v0 + 448) refreshState];
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_1A93D7B08();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A951370C(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1A957AFD8();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v8 = *a2;
  v7 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_1A9513814;

  return sub_1A95133B4(v8, v7, 1);
}

uint64_t sub_1A9513814(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9513968, 0, 0);
  }
}

void sub_1A9513968()
{
  v1 = v0[7];
  v2 = [v1 getLocalUrl];

  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_1A957AF98();

    sub_1A957AF78();
    (*(v4 + 8))(v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);

    v7 = v0[1];

    v7();
  }

  else
  {
    __break(1u);
  }
}

void *AXVoiceLoader.deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[10];

  return v0;
}

uint64_t AXVoiceLoader.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_1A9513C54()
{
  v2 = *(**v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99E4;

  return v6();
}

uint64_t sub_1A9513D68()
{
  v2 = *(**v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D254C;

  return v6();
}

uint64_t sub_1A9513E7C(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A9513FAC(uint64_t a1)
{
  v4 = *(**v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t sub_1A95140D0(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return v8(a1);
}

uint64_t sub_1A95141F4(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t sub_1A9514318(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A9514448(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

unint64_t sub_1A95145A8()
{
  result = qword_1EB3886A0;
  if (!qword_1EB3886A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886A0);
  }

  return result;
}

uint64_t dispatch thunk of AXVoiceLoader.voices()()
{
  v2 = *(*v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99C8;

  return v6();
}

uint64_t dispatch thunk of AXVoiceLoader.installedVoices()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D7EAC;

  return v6();
}

uint64_t dispatch thunk of AXVoiceLoader.download(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.cancelDownload(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return v8(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.purge(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.downloadProgress(voice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AXVoiceLoader.record(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AXVoiceLoader.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t OnDiskVoiceError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A951507C()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A4A28);
  sub_1A937731C(v0, qword_1EB3A4A28);
  return sub_1A957BC78();
}

uint64_t AXOnDiskVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AXOnDiskVoiceLoader.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1A951515C()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D254C;

  return v6();
}

uint64_t sub_1A951526C()
{
  v1[2] = v0;
  v2 = sub_1A957AFD8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9515338, v0, 0);
}

uint64_t sub_1A9515338()
{
  v29 = v0;
  v1 = v0[2];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
LABEL_3:
    v4 = v0[5];
    v3 = v0[6];

    v5 = v0[1];

    return v5(v2);
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v8 = sub_1A957C0C8();
  v9 = [v7 initWithPath_];

  if (v9)
  {
    v10 = sub_1A957C0C8();
    v11 = [v9 URLForResource:v10 withExtension:0];

    if (v11)
    {
      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[3];
      v15 = v0[4];
      v16 = v0[2];
      sub_1A957AF98();

      (*(v15 + 32))(v12, v13, v14);
      v17 = sub_1A9518F4C(MEMORY[0x1E69E7CC0]);
      v18 = sub_1A951560C();
      v19 = v0[6];
      v20 = v0[3];
      v21 = v0[4];
      v25 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v17;
      sub_1A9519210(v25, sub_1A95184EC, 0, isUniquelyReferenced_nonNull_native, &v28);

      (*(v21 + 8))(v19, v20);
      v2 = v28;
      v27 = *(v1 + 112);
      *(v1 + 112) = v28;

      goto LABEL_3;
    }
  }

  sub_1A95191BC();
  swift_allocError();
  swift_willThrow();
  v23 = v0[5];
  v22 = v0[6];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1A951560C()
{
  v175 = *MEMORY[0x1E69E9840];
  v144 = sub_1A957BC88();
  v0 = *(v144 - 8);
  v1 = *(v0 + 64);
  v3 = MEMORY[0x1EEE9AC00](v144, v2);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v124 - v7;
  v131 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v129 = *(v131 - 8);
  v9 = *(v129 + 64);
  v11 = MEMORY[0x1EEE9AC00](v131, v10);
  v136 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v130 = &v124 - v14;
  v154 = sub_1A957BBD8();
  v15 = *(v154 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v154, v17);
  v153 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A957AFD8();
  v139 = *(v19 - 8);
  v20 = *(v139 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v152 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v147 = &v124 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v157 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v143 = &v124 - v31;
  v128 = objc_opt_self();
  v32 = [v128 defaultManager];
  v33 = sub_1A957AF58();
  *&v172[0] = 0;
  v34 = [v32 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:v172];

  v35 = *&v172[0];
  if (!v34)
  {
    v119 = *&v172[0];
    v120 = sub_1A957AEF8();

    v125 = v120;
    result = swift_willThrow();
    goto LABEL_48;
  }

  v36 = sub_1A957C4C8();
  v37 = v35;

  v140 = sub_1A9518F4C(MEMORY[0x1E69E7CC0]);
  v138 = *(v36 + 16);
  if (!v138)
  {
LABEL_46:

    result = v140;
LABEL_48:
    v121 = *MEMORY[0x1E69E9840];
    return result;
  }

  v39 = 0;
  v132 = v8;
  v124 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v135 = v36 + v124;
  v161 = v139 + 16;
  v151 = (v15 + 8);
  v145 = 0x80000001A95C4EE0;
  v156 = (v139 + 8);
  v148 = (v0 + 8);
  v149 = (v0 + 16);
  *&v38 = 136315138;
  v142 = v38;
  v134 = xmmword_1A95873F0;
  v40 = v144;
  v150 = v5;
  v133 = v19;
  v41 = v147;
  v126 = v36;
  while (1)
  {
    if (v39 >= *(v36 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    v43 = *(v139 + 72);
    v141 = v39;
    v155 = v43;
    v160 = *(v139 + 16);
    v160(v143, v135 + v43 * v39, v19);
    if (sub_1A957AF48() != 0x6E6F6D6D6F63 || v44 != 0xE600000000000000)
    {
      break;
    }

LABEL_5:
    v42 = v141 + 1;
    (*v156)(v143, v19);
    v39 = v42;
    if (v42 == v138)
    {
      goto LABEL_46;
    }
  }

  v45 = sub_1A957D3E8();

  if (v45)
  {
    goto LABEL_5;
  }

  v46 = [v128 defaultManager];
  v47 = sub_1A957AF58();
  *&v172[0] = 0;
  v48 = [v46 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:0 options:0 error:v172];

  v49 = *&v172[0];
  if (!v48)
  {
    v122 = *&v172[0];

    v123 = sub_1A957AEF8();

    v125 = v123;
    swift_willThrow();
    result = (*v156)(v143, v19);
    goto LABEL_48;
  }

  v50 = sub_1A957C4C8();
  v51 = v49;

  v52 = *(v50 + 16);
  if (!v52)
  {
LABEL_45:

    v36 = v126;
    goto LABEL_5;
  }

  v127 = v50;
  v53 = v50 + v124;
  v54 = v157;
  while (1)
  {
    v158 = v53;
    v159 = v52;
    (v160)(v54);
    v56 = v153;
    sub_1A957BBC8();
    sub_1A957AF68();
    (*v151)(v56, v154);
    v57 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    v58 = sub_1A957AF58();
    v59 = [v57 initWithContentsOfURL_];

    if (!v59)
    {
      v173 = 0u;
      v174 = 0u;
      v61 = v152;
LABEL_27:
      sub_1A937B960(&v173, &qword_1EB3869D0, &qword_1A9587A10);
LABEL_28:
      if (qword_1EB3A4A20 != -1)
      {
        swift_once();
      }

      v84 = sub_1A937731C(v40, qword_1EB3A4A28);
      (*v149)(v5, v84, v40);
      v160(v61, v41, v19);
      v85 = sub_1A957BC68();
      v86 = sub_1A957CA78();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&v172[0] = v146;
        *v87 = v142;
        sub_1A93BC760();
        v88 = sub_1A957D3A8();
        v89 = v61;
        v91 = v90;
        v92 = *v156;
        (*v156)(v89, v19);
        v93 = sub_1A937A5C0(v88, v91, v172);

        *(v87 + 4) = v93;
        _os_log_impl(&dword_1A9324000, v85, v86, "Missing mobile asset attributes on %s", v87, 0xCu);
        v94 = v146;
        sub_1A9378138(v146);
        MEMORY[0x1AC587CD0](v94, -1, -1);
        v95 = v87;
        v40 = v144;
        MEMORY[0x1AC587CD0](v95, -1, -1);

        (*v148)(v150, v40);
        v41 = v147;
        v92(v147, v19);
        v54 = v157;
        v92(v157, v19);
        v5 = v150;
      }

      else
      {

        v55 = *v156;
        (*v156)(v61, v19);
        (*v148)(v5, v40);
        v41 = v147;
        v55(v147, v19);
        v54 = v157;
        v55(v157, v19);
      }

      goto LABEL_14;
    }

    *&v172[0] = 0xD000000000000015;
    *(&v172[0] + 1) = v145;
    v60 = [v59 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v60)
    {
      sub_1A957CD58();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v172, 0, 32);
    }

    v61 = v152;
    v173 = v172[0];
    v174 = v172[1];
    if (!*(&v172[1] + 1))
    {
      goto LABEL_27;
    }

    sub_1A937829C(&qword_1EB3886C8, &unk_1A9598DD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v62 = v165;
    v63 = type metadata accessor for AXOnDiskVoiceLoader();
    v169[4] = &protocol witness table for AXOnDiskVoiceLoader;
    v169[3] = v63;
    v169[0] = v137;
    v166 = 0;
    v64 = *(*v137 + 192);

    v66 = v64(v65);
    v68 = v67;
    v69 = v157;
    v70 = sub_1A957AF48();
    CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v66, v68, v70, v71, 0, v167);
    v163[0] = v167[0];
    v163[1] = v167[1];
    v164 = v168;
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v72 = swift_allocObject();
    *(v72 + 16) = v134;
    *(v72 + 32) = *sub_1A9493C9C();
    *(v72 + 40) = *sub_1A9493C3C();
    v162[0] = v72;
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v162[0] = v162[1];
    sub_1A93AF494(v62, v169, &v166, v163, v162, v170);
    memcpy(v171, v170, sizeof(v171));
    memcpy(v172, v170, 0x118uLL);
    if (sub_1A932D058(v172) == 1)
    {
      if (qword_1EB3A4A20 != -1)
      {
        swift_once();
      }

      v73 = v144;
      v74 = sub_1A937731C(v144, qword_1EB3A4A28);
      v75 = v132;
      (*v149)(v132, v74, v73);

      v76 = sub_1A957BC68();
      v77 = sub_1A957CA78();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v170[0] = v146;
        *v78 = v142;
        v79 = sub_1A957C048();
        v81 = v80;

        v82 = sub_1A937A5C0(v79, v81, v170);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_1A9324000, v76, v77, "Voice initialization failed with info dictionary %s", v78, 0xCu);
        v83 = v146;
        sub_1A9378138(v146);
        MEMORY[0x1AC587CD0](v83, -1, -1);
        MEMORY[0x1AC587CD0](v78, -1, -1);

        (*v148)(v132, v73);
      }

      else
      {

        (*v148)(v75, v73);
      }

      v112 = *v156;
      v19 = v133;
      (*v156)(v41, v133);
      v54 = v157;
      v112(v157, v19);
      v40 = v73;
      v5 = v150;
      goto LABEL_14;
    }

    v96 = v19;
    v97 = sub_1A957C1A8();
    v99 = v98;
    v100 = v130;
    v101 = *(v131 + 48);
    memcpy(v130, v172, 0x118uLL);
    v160(&v100[v101], v69, v96);
    sub_1A93A7460(v100, v136, &qword_1EB3886B8, &unk_1A9598C20);
    memcpy(v169, v171, sizeof(v169));
    sub_1A937B3DC(v169, v167);
    v102 = v140;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v167[0] = v102;
    v105 = sub_1A937A490(v97, v99);
    v106 = v102[2];
    v107 = (v104 & 1) == 0;
    v108 = v106 + v107;
    if (__OFADD__(v106, v107))
    {
      goto LABEL_51;
    }

    v109 = v104;
    if (v102[3] >= v108)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A9518904();
      }

      goto LABEL_40;
    }

    sub_1A9518588(v108, isUniquelyReferenced_nonNull_native);
    v110 = sub_1A937A490(v97, v99);
    if ((v109 & 1) != (v111 & 1))
    {
      break;
    }

    v105 = v110;
LABEL_40:
    v54 = v157;
    v140 = *&v167[0];
    if (v109)
    {
      sub_1A951914C(v136, *(*&v167[0] + 56) + *(v129 + 72) * v105);
    }

    else
    {
      *(*&v167[0] + 8 * (v105 >> 6) + 64) |= 1 << v105;
      v113 = (v140[6] + 16 * v105);
      *v113 = v97;
      v113[1] = v99;
      sub_1A93A7460(v136, v140[7] + *(v129 + 72) * v105, &qword_1EB3886B8, &unk_1A9598C20);
      v114 = v140[2];
      v115 = __OFADD__(v114, 1);
      v116 = v114 + 1;
      if (v115)
      {
        goto LABEL_52;
      }

      v140[2] = v116;
    }

    sub_1A937B960(v171, &unk_1EB387BC0, &qword_1A9587E30);
    v117 = *v156;
    v19 = v133;
    (*v156)(v41, v133);
    v117(v54, v19);
    v40 = v144;
LABEL_14:
    v53 = v158 + v155;
    v52 = v159 - 1;
    if (v159 == 1)
    {
      goto LABEL_45;
    }
  }

  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A95165F8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A9516688;

  return sub_1A951526C();
}

uint64_t sub_1A9516688(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 16);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A95167D8, v9, 0);
  }
}

uint64_t sub_1A95167D8()
{
  v1 = v0[4];
  v2 = sub_1A9516858(v0[5]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A9516858(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v48 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v47 = &v42 - v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v42 = v1;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1A9461C94(0, v13, 0);
  v14 = v57;
  v15 = a1 + 64;
  v16 = -1 << *(a1 + 32);
  result = sub_1A957CE18();
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v43 = a1 + 72;
    v44 = v13;
    v18 = *(a1 + 36);
    v19 = 1;
    v45 = a1;
    v46 = a1 + 64;
    while (1)
    {
      v20 = result >> 6;
      v21 = 1 << result;
      if ((*(v15 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        break;
      }

      v52 = v19;
      v53 = v18;
      v22 = *(a1 + 56);
      v23 = *(v50 + 72);
      v54 = result;
      v24 = v47;
      sub_1A9391BAC(v22 + v23 * result, v47, &qword_1EB3886B8, &unk_1A9598C20);
      v25 = v14;
      v26 = v48;
      sub_1A9391BAC(v24, v48, &qword_1EB3886B8, &unk_1A9598C20);
      v27 = *(v51 + 48);
      v28 = v49;
      memcpy(v49, v26, 0x118uLL);
      v29 = sub_1A957AFD8();
      v30 = &v26[v27];
      v14 = v25;
      (*(*(v29 - 8) + 32))(&v28[v27], v30, v29);
      memcpy(v56, v28, 0x118uLL);
      sub_1A937B3DC(v56, &v55);
      sub_1A937B960(v28, &qword_1EB3886B8, &unk_1A9598C20);
      sub_1A937B960(v24, &qword_1EB3886B8, &unk_1A9598C20);
      v57 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1A9461C94((v31 > 1), v32 + 1, 1);
        v14 = v57;
      }

      *(v14 + 16) = v32 + 1;
      memcpy((v14 + 280 * v32 + 32), v56, 0x118uLL);
      a1 = v45;
      v15 = v46;
      v33 = 1 << *(v45 + 32);
      result = v54;
      if (v54 >= v33)
      {
        goto LABEL_26;
      }

      v34 = *(v46 + 8 * v20);
      if ((v34 & v21) == 0)
      {
        goto LABEL_27;
      }

      if (v53 != *(v45 + 36))
      {
        goto LABEL_28;
      }

      v35 = v34 & (-2 << (v54 & 0x3F));
      if (v35)
      {
        result = __clz(__rbit64(v35)) | v54 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v45;
        v37 = v20 << 6;
        v38 = v20 + 1;
        v39 = (v43 + 8 * v20);
        while (v38 < (v33 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_1A932D0A4(v54, v53, 0);
            result = __clz(__rbit64(v40)) + v37;
            goto LABEL_18;
          }
        }

        sub_1A932D0A4(v54, v53, 0);
        result = v33;
LABEL_18:
        a1 = v36;
      }

      if (v52 == v44)
      {
        return v14;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v18 = *(a1 + 36);
        v19 = v52 + 1;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A9516C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  v5 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v4[111] = v5;
  v6 = *(v5 - 8);
  v4[112] = v6;
  v7 = *(v6 + 64) + 15;
  v4[113] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[114] = v8;
  *v8 = v4;
  v8[1] = sub_1A9516D64;

  return sub_1A951526C();
}

uint64_t sub_1A9516D64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 912);
  v5 = *v2;
  *(*v2 + 920) = a1;

  if (v1)
  {
    v6 = *(v3 + 880);

    v7 = sub_1A9517018;
    v8 = v6;
  }

  else
  {
    v8 = *(v3 + 880);
    v7 = sub_1A9516E9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1A9516E9C()
{
  v1 = v0[115];
  v2 = v0[109];
  v3 = v0[108];
  v4 = sub_1A957C1A8();
  v6 = *(v1 + 16);
  v7 = v0[115];
  if (v6)
  {
    v8 = sub_1A937A490(v4, v5);
    v10 = v9;

    if (v10)
    {
      v11 = v0[113];
      v12 = v0[111];
      v13 = v0[107];
      sub_1A9391BAC(*(v0[115] + 56) + *(v0[112] + 72) * v8, v11, &qword_1EB3886B8, &unk_1A9598C20);

      v14 = *(v12 + 48);
      memmove(v0 + 72, v11, 0x118uLL);
      nullsub_23(v0 + 72);
      memcpy(v13, v0 + 72, 0x118uLL);
      v15 = sub_1A957AFD8();
      (*(*(v15 - 8) + 8))(&v11[v14], v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = v0[107];
  sub_1A93847E0((v0 + 37));
  memcpy(v16, v0 + 37, 0x118uLL);
LABEL_6:
  v17 = v0[113];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A9517018()
{
  v1 = v0[107];
  sub_1A93847E0((v0 + 2));
  memcpy(v1, v0 + 2, 0x118uLL);
  v2 = v0[113];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9517094(uint64_t a1, uint64_t *a2)
{
  v3[37] = a1;
  v3[38] = v2;
  v5 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v3[39] = v5;
  v6 = *(v5 - 8);
  v3[40] = v6;
  v7 = *(v6 + 64) + 15;
  v3[41] = swift_task_alloc();
  v8 = sub_1A957AFD8();
  v3[42] = v8;
  v9 = *(v8 - 8);
  v3[43] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  v3[44] = v11;
  v3[45] = v12;
  v3[46] = v13;
  v14 = swift_task_alloc();
  v3[47] = v14;
  *v14 = v3;
  v14[1] = sub_1A95171F4;

  return sub_1A951526C();
}

uint64_t sub_1A95171F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(*v2 + 304);
  v8 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v6 = sub_1A951759C;
  }

  else
  {
    v6 = sub_1A9517320;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9517320()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = sub_1A957C1A8();
  v6 = *(v1 + 16);
  v7 = *(v0 + 384);
  if (!v6)
  {

    goto LABEL_8;
  }

  v8 = sub_1A937A490(v4, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

    (*(*(v0 + 344) + 56))(*(v0 + 296), 1, 1, *(v0 + 336));
    goto LABEL_14;
  }

  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 312);
  sub_1A9391BAC(*(*(v0 + 384) + 56) + *(*(v0 + 320) + 72) * v8, v14, &qword_1EB3886B8, &unk_1A9598C20);

  memcpy((v0 + 16), v14, 0x118uLL);
  (*(v12 + 32))(v11, &v14[*(v15 + 48)], v13);
  if (*(v0 + 136) == 2)
  {
    v16 = *(v0 + 88);
    v17 = vorrq_s8(*(v0 + 104), *(v0 + 120));
    v18 = *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *(v0 + 96);
    if (v16 == 1 && !v18)
    {
      v20 = *(v0 + 344);
      v19 = *(v0 + 352);
      v21 = *(v0 + 336);
      v22 = *(v0 + 296);
LABEL_12:
      sub_1A957AF78();
      sub_1A937B48C(v0 + 16);
      (*(v20 + 8))(v19, v21);
      (*(v20 + 56))(v22, 0, 1, v21);
      goto LABEL_14;
    }

    if (v16 == 5 && !v18)
    {
      v20 = *(v0 + 344);
      v19 = *(v0 + 352);
      v21 = *(v0 + 336);
      v22 = *(v0 + 296);
      goto LABEL_12;
    }
  }

  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 336);
  v26 = *(v0 + 296);
  sub_1A937B48C(v0 + 16);
  (*(v24 + 8))(v23, v25);
  (*(v24 + 56))(v26, 1, 1, v25);
LABEL_14:
  v27 = *(v0 + 352);
  v28 = *(v0 + 328);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1A951759C()
{
  v1 = v0[44];
  v2 = v0[41];

  v3 = v0[1];
  v4 = v0[49];

  return v3();
}

uint64_t AXOnDiskVoiceLoader.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AXOnDiskVoiceLoader.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A9517714(_DWORD *a1@<X8>)
{
  type metadata accessor for AXOnDiskVoiceLoader();

  VoiceLoader.requiredConditions.getter(a1);
}

uint64_t sub_1A95177E8()
{
  type metadata accessor for AXOnDiskVoiceLoader();

  return VoiceLoader.allowDaemonFallback.getter();
}

uint64_t sub_1A9517820()
{
  v2 = *(**v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99E4;

  return v6();
}

uint64_t sub_1A9517934()
{
  v2 = *(**v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99E4;

  return v6();
}

uint64_t sub_1A9517A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.record(forVoice:)();
}

uint64_t sub_1A9517B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.download(voice:)();
}

uint64_t sub_1A9517BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return VoiceLoader.cancelDownload(voice:)();
}

uint64_t sub_1A9517C74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.purge(voice:)();
}

uint64_t sub_1A9517D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.downloadProgress(voice:)();
}

uint64_t sub_1A9517DEC(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

unint64_t sub_1A9517F20()
{
  result = qword_1EB3886C0;
  if (!qword_1EB3886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886C0);
  }

  return result;
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.voices()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D99C8;

  return v6();
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.installedVoices()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93D7EAC;

  return v6();
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.record(forVoiceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A9382328;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9382328;

  return v10(a1, a2);
}

uint64_t sub_1A95184EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_1A937829C(&qword_1EB3886F0, &qword_1A9598E08) + 48);
  v5 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
  v7 = *a1;
  v6 = a1[1];
  sub_1A9391BAC(a1 + v4, a2 + *(v5 + 48), &qword_1EB3886B8, &unk_1A9598C20);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_1A9518588(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v46 = &v42 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
  v45 = a2;
  result = sub_1A957D118();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v2;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_1A93A7460(v32, v46, &qword_1EB3886B8, &unk_1A9598C20);
      }

      else
      {
        sub_1A9391BAC(v32, v46, &qword_1EB3886B8, &unk_1A9598C20);
      }

      v33 = *(v13 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_1A93A7460(v46, *(v13 + 56) + v31 * v21, &qword_1EB3886B8, &unk_1A9598C20);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

void *sub_1A9518904()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v33 = &v31 - v5;
  sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
  v6 = *v0;
  v7 = sub_1A957D108();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v33;
        v28 = *(v34 + 72) * v22;
        sub_1A9391BAC(*(v6 + 56) + v28, v33, &qword_1EB3886B8, &unk_1A9598C20);
        v29 = v35;
        v30 = (*(v35 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_1A93A7460(v27, *(v29 + 56) + v28, &qword_1EB3886B8, &unk_1A9598C20);

        v17 = v36;
      }

      while (v36);
    }

    v20 = v12;
    v8 = v35;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v36 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A9518B68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A937829C(&qword_1EB3886F0, &qword_1A9598E08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v47 = &v46 - v7;
  v8 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = &v46 - v12;
  v14 = sub_1A937829C(&qword_1EB3886F8, &qword_1A9598E10);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = (&v46 - v21);
  v23 = *v1;
  v24 = v1[1];
  v26 = v1[2];
  v25 = v1[3];
  v27 = v1[4];
  v52 = v26;
  if (v27)
  {
    v50 = v4;
    v51 = a1;
    v28 = v3;
    v29 = v25;
LABEL_11:
    v48 = v23;
    v49 = (v27 - 1) & v27;
    v33 = __clz(__rbit64(v27)) | (v29 << 6);
    v34 = (*(v23 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    sub_1A9391BAC(*(v23 + 56) + *(v9 + 72) * v33, v13, &qword_1EB3886B8, &unk_1A9598C20);
    v37 = *(v28 + 48);
    *v22 = v35;
    v22[1] = v36;
    v3 = v28;
    sub_1A93A7460(v13, v22 + v37, &qword_1EB3886B8, &unk_1A9598C20);
    v4 = v50;
    (*(v50 + 56))(v22, 0, 1, v3);

    v32 = v29;
    v39 = v48;
    v38 = v49;
    a1 = v51;
LABEL_12:
    *v1 = v39;
    v1[1] = v24;
    v40 = v53;
    v1[2] = v52;
    v1[3] = v32;
    v1[4] = v38;
    v41 = v1[5];
    v42 = v1[6];
    sub_1A93A7460(v22, v40, &qword_1EB3886F8, &qword_1A9598E10);
    v43 = 1;
    if ((*(v4 + 48))(v40, 1, v3) != 1)
    {
      v44 = v47;
      sub_1A93A7460(v40, v47, &qword_1EB3886F0, &qword_1A9598E08);
      v41(v44);
      sub_1A937B960(v44, &qword_1EB3886F0, &qword_1A9598E08);
      v43 = 0;
    }

    v45 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
    return (*(*(v45 - 8) + 56))(a1, v43, 1, v45);
  }

  else
  {
    v30 = (v26 + 64) >> 6;
    if (v30 <= v25 + 1)
    {
      v31 = v25 + 1;
    }

    else
    {
      v31 = (v26 + 64) >> 6;
    }

    v32 = v31 - 1;
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v29 >= v30)
      {
        v39 = v23;
        (*(v4 + 56))(v22, 1, 1, v3);
        v38 = 0;
        goto LABEL_12;
      }

      v27 = *(v24 + 8 * v29);
      ++v25;
      if (v27)
      {
        v50 = v4;
        v51 = a1;
        v28 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1A9518F4C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
    v9 = sub_1A957D128();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v10;

    while (1)
    {
      sub_1A9391BAC(v11, v7, &qword_1EB3886D8, &unk_1A9598DF0);
      v13 = *v7;
      v12 = v7[1];
      result = sub_1A937A490(*v7, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v9[7];
      v19 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
      result = sub_1A93A7460(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &qword_1EB3886B8, &unk_1A9598C20);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1A951914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A95191BC()
{
  result = qword_1EB3886E0;
  if (!qword_1EB3886E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886E0);
  }

  return result;
}

uint64_t sub_1A9519210(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v44 - v13;
  v15 = sub_1A937829C(&qword_1EB3886E8, &qword_1A9598E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = (v44 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v44[3] = a1;
  v44[4] = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v44[5] = v21;
  v44[6] = 0;
  v44[7] = v24 & v22;
  v44[8] = a2;
  v44[9] = a3;

  v44[1] = a3;

  while (1)
  {
    sub_1A9518B68(v19);
    v25 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
    if ((*(*(v25 - 8) + 48))(v19, 1, v25) == 1)
    {
      sub_1A932D088();
    }

    v27 = *v19;
    v26 = v19[1];
    sub_1A93A7460(v19 + *(v25 + 48), v14, &qword_1EB3886B8, &unk_1A9598C20);
    v28 = *a5;
    v30 = sub_1A937A490(v27, v26);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v29 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1A9518904();
        v38 = *a5;
        if ((v34 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_1A951914C(v14, v38[7] + *(v45 + 72) * v30);
      a4 = 1;
    }

    else
    {
      sub_1A9518588(v33, a4 & 1);
      v35 = *a5;
      v36 = sub_1A937A490(v27, v26);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v30 = v36;
      v38 = *a5;
      if (v34)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v38[6] + 16 * v30);
      *v39 = v27;
      v39[1] = v26;
      sub_1A93A7460(v14, v38[7] + *(v45 + 72) * v30, &qword_1EB3886B8, &unk_1A9598C20);
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v38[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t TTSMarkup.Audio.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v37, 0, v37, &v33);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (!*(v6 + 16) || (v7 = sub_1A937A490(6517363, 0xE300000000000000), (v8 & 1) == 0))
  {

    result = sub_1A951A85C(&v33);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    return result;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];

  *&v34 = v10;
  *(&v34 + 1) = v11;
  v13 = *((*v5 & *a1) + 0x100);
  v14 = v13(v12);
  if (v14 >> 62)
  {
    goto LABEL_24;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
LABEL_25:

    goto LABEL_29;
  }

  while (1)
  {
    v27 = a2;
    v17 = v13(v16);
    v18 = v17;
    if (v17 >> 62)
    {
      break;
    }

    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_27;
    }

LABEL_7:
    v19 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1AC585DE0](v19, v18);
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A93D1250(&v28);

      if (v29)
      {
        sub_1A932D070(&v28, &v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A93ADC90(0, *(v13 + 2) + 1, 1, v13);
        }

        v24 = *(v13 + 2);
        v23 = *(v13 + 3);
        if (v24 >= v23 >> 1)
        {
          v13 = sub_1A93ADC90((v23 > 1), v24 + 1, 1, v13);
        }

        *(v13 + 2) = v24 + 1;
        sub_1A932D070(&v30, v13 + 40 * v24 + 32);
      }

      else
      {
        sub_1A937B960(&v28, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v19;
      if (v22 == a2)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v26 = sub_1A957CE48();

    if (!v26)
    {
      goto LABEL_25;
    }
  }

  a2 = sub_1A957CE48();
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_27:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v31 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v32 = &protocol witness table for <A> [A];

  *&v30 = v13;
  sub_1A93A38D8(&v30, v35);
  a2 = v27;
LABEL_29:
  sub_1A951A88C(&v33, a2);
  return sub_1A951A85C(&v33);
}

uint64_t static TTSMarkup.Audio.tag.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB388700;
  return result;
}

uint64_t static TTSMarkup.Audio.tag.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB388700 = v1;
  return result;
}

uint64_t sub_1A95199BC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB388700;
  return result;
}

uint64_t sub_1A9519A08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB388700 = v1;
  return result;
}

unint64_t TTSMarkup.Audio.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 6517363;
  v2 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = inited;

  v6 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v6;
}

double TTSMarkup.Audio.init(url:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SpeechContext.init<each A>(_:)(v7, 0, v7, a3);
  *(a3 + 56) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

void TTSMarkup.Audio.init(resourceName:bundle:)(void *a1@<X2>, uint64_t a2@<X8>)
{
  SpeechContext.init<each A>(_:)(v9, 0, v9, a2);
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v4 = sub_1A957C0C8();

  v5 = [a1 pathForResource:v4 ofType:0];

  if (v5)
  {
    v6 = sub_1A957C0F8();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
}

uint64_t TTSMarkup.Audio.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))(v3);
}

{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.Audio.AudioError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

unint64_t sub_1A9519E64()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 6517363;
  v2 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = inited;

  v6 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v6;
}

uint64_t sub_1A9519F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Audio.accept<A>(_:)(a1, a2, a3);
}

uint64_t TTSMarkup.Desc.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Desc.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for TTSMarkup.Desc;
  v7[4] = &protocol witness table for TTSMarkup.Desc;
  v7[0] = swift_allocObject();
  sub_1A951A8C4(v3, v7[0] + 16);
  TTSMarkupVisitor.visit(_:)(v7, a2, a3);
  return sub_1A9378138(v7);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951A10C, 0, 0);
}

uint64_t sub_1A951A10C()
{
  v1 = v0[10];
  sub_1A93ADE40(v1 + 8, (v0 + 2));
  v2 = v0[5];
  result = sub_1A937B960((v0 + 2), &qword_1EB3868E8, &unk_1A958F280);
  if (v2)
  {
    if (*(v0[10] + 32))
    {
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1A948CF28;
      v5 = v0[8];
      v6 = v0[9];
      v7 = v0[7];

      return TTSMarkupAsyncVisitor.visit(_:)(v1 + 8, v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t TTSMarkup.Desc.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v38, 0, v38, &v34);
  v37 = 0;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    *(&v36 + 1) = v11;
    v37 = v10;
  }

  else
  {
  }

  v13 = *((*v5 & *a1) + 0x100);
  v14 = v13(v12);
  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
LABEL_26:

    goto LABEL_30;
  }

  while (1)
  {
    v28 = a2;
    v17 = v13(v16);
    v18 = v17;
    if (v17 >> 62)
    {
      break;
    }

    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_9:
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v13 = (v18 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1AC585DE0](v19, v18);
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v21 = *(v18 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A93D1250(&v29);

      if (v30)
      {
        sub_1A932D070(&v29, &v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1A93ADC90(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_1A93ADC90((v24 > 1), v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        sub_1A932D070(&v31, &v20[5 * v25 + 4]);
      }

      else
      {
        sub_1A937B960(&v29, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v19;
      if (v23 == a2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v26 = sub_1A957CE48();

    if (!v26)
    {
      goto LABEL_26;
    }
  }

  a2 = sub_1A957CE48();
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_28:
  v20 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v32 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v33 = &protocol witness table for <A> [A];

  *&v31 = v20;
  sub_1A93A38D8(&v31, v35);
  a2 = v28;
LABEL_30:
  sub_1A951A8C4(&v34, a2);
  return sub_1A951A8FC(&v34);
}

unint64_t TTSMarkup.Desc.attributes.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 0x676E616C3A6C6D78;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v4 = sub_1A9381740(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A9381740(v6);
  }
}

unint64_t sub_1A951A698()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 0x676E616C3A6C6D78;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v4 = sub_1A9381740(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A9381740(v6);
  }
}

uint64_t sub_1A951A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9382328;

  return TTSMarkup.Desc.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A951A930()
{
  result = qword_1EB388708;
  if (!qword_1EB388708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388708);
  }

  return result;
}

uint64_t sub_1A951A9D8()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB389288);
  v1 = sub_1A937731C(v0, qword_1EB389288);
  v2 = sub_1A93773F4();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *VoiceDatabaseXPC.Server.__allocating_init(daemon:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[15] = 0;
  v2[16] = sub_1A95246C0(MEMORY[0x1E69E7CC0]);
  v2[14] = a1;
  return v2;
}

void *VoiceDatabaseXPC.Server.init(daemon:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[15] = 0;
  v1[16] = sub_1A95246C0(MEMORY[0x1E69E7CC0]);
  v1[14] = a1;
  return v1;
}

uint64_t sub_1A951AB4C()
{
  v1 = v0;
  v2 = sub_1A957BD58();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1A957BC88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v11 = sub_1A937731C(v5, qword_1EB389288);
  (*(v6 + 16))(v10, v11, v5);
  v12 = sub_1A957BC68();
  v13 = sub_1A957CA98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A9324000, v12, v13, "*** Starting VoiceDatabaseXPC server ***", v14, 2u);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  v15 = sub_1A9550904();
  v16 = *v15;
  v17 = v15[1];

  sub_1A957BD48();
  v18 = sub_1A957BD88();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1A957BD78();
  return (*(*v1 + 120))(v21);
}

uint64_t sub_1A951ADE4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  sub_1A957B0A8();
  swift_weakInit();
  v7 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
  *(v6 + OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session) = 0;
  swift_beginAccess();
  swift_weakAssign();

  swift_beginAccess();
  *(v6 + v7) = a2;
  return v6;
}

uint64_t sub_1A951AEA8()
{
  v1 = v0;
  v2 = sub_1A957BC88();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v39 - v10);
  if (qword_1EB389280 != -1)
  {
LABEL_22:
    swift_once();
  }

  v12 = sub_1A937731C(v2, qword_1EB389288);
  v13 = v3[2];
  v44 = v3 + 2;
  v45 = v12;
  v41 = v2;
  v43 = v13;
  (v13)(v11);

  v14 = sub_1A957BC68();
  v15 = sub_1A957CA98();
  v16 = os_log_type_enabled(v14, v15);
  v40 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    swift_beginAccess();
    *(v17 + 4) = *(*(v1 + 128) + 16);

    _os_log_impl(&dword_1A9324000, v14, v15, "%ld active voice downloads.", v17, 0xCu);
    v18 = v17;
    v8 = v40;
    MEMORY[0x1AC587CD0](v18, -1, -1);
  }

  else
  {
  }

  v19 = v3[1];
  ++v3;
  v20 = v41;
  v42 = v19;
  v19(v11, v41);
  swift_beginAccess();
  v21 = *(v1 + 128);
  v1 = v21 + 64;
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  v47 = v21;

  v2 = 0;
  *&v26 = 134218242;
  v39 = v26;
  v46 = v3;
  while (v24)
  {
LABEL_15:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = v28 | (v2 << 6);
    v30 = (*(v47 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(*(v47 + 56) + 8 * v29);
    v43(v8, v45, v20);

    v11 = sub_1A957BC68();
    v48 = sub_1A957CA98();
    if (os_log_type_enabled(v11, v48))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = v39;
      if (v33 >> 62)
      {
        v36 = sub_1A957CE48();
      }

      else
      {
        v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v34 + 4) = v36;

      *(v34 + 12) = 2080;
      v37 = sub_1A937A5C0(v32, v31, &v49);

      *(v34 + 14) = v37;
      _os_log_impl(&dword_1A9324000, v11, v48, "%ld observers for voice %s.", v34, 0x16u);
      sub_1A9378138(v35);
      MEMORY[0x1AC587CD0](v35, -1, -1);
      MEMORY[0x1AC587CD0](v34, -1, -1);

      v8 = v40;
      v20 = v41;
    }

    else
    {
    }

    v3 = v46;
    v42(v8, v20);
  }

  while (1)
  {
    v27 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v27 >= v25)
    {
    }

    v24 = *(v1 + 8 * v27);
    ++v2;
    if (v24)
    {
      v2 = v27;
      goto LABEL_15;
    }
  }
}

uint64_t sub_1A951B2F0()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_1A951B328(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;

  return sub_1A951AEA8();
}

uint64_t (*sub_1A951B374(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A951B3C8;
}

uint64_t sub_1A951B3C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1A951AEA8();
  }

  return result;
}

uint64_t sub_1A951B3FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 152))();
  if (!*(v7 + 16) || (v8 = sub_1A937A490(a2, a3), (v9 & 1) == 0))
  {
LABEL_15:
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_19:
  v11 = sub_1A957CE48();
  if (!v11)
  {
  }

LABEL_5:
  v12 = 0;
  v17 = a1 | ((HIDWORD(a1) & 1) << 32);
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1AC585DE0](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    v18 = v14;

    a1 = a2;
    sub_1A9554E9C(v17);
    v15 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
    result = swift_beginAccess();
    if (!*(v13 + v15))
    {
      break;
    }

    sub_1A9524860();

    sub_1A957BD08();

    ++v12;
    if (v18 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A951B660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951B684, v3, 0);
}

uint64_t sub_1A951B684()
{
  v1 = (*(**(v0 + 72) + 152))();
  if (*(v1 + 16) && (v2 = sub_1A937A490(*(v0 + 48), *(v0 + 56)), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    v26 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v6 = 0;
      v24 = v0;
      v25 = *(v0 + 64);
      v0 = v4 & 0xC000000000000001;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v0)
        {
          MEMORY[0x1AC585DE0](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          goto LABEL_11;
        }

        if (v6 >= *(v7 + 16))
        {
          break;
        }

        v9 = *(v4 + 8 * v6 + 32);

        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }

LABEL_11:
        v11 = v4;
        sub_1A957B0B8();
        sub_1A95265D8(&qword_1EB386AB0, 255, MEMORY[0x1E69695A8]);
        if (sub_1A957C098())
        {
        }

        else
        {
          sub_1A957CF78();
          v8 = *(v26 + 16);
          sub_1A957CFB8();
          sub_1A957CFC8();
          sub_1A957CF88();
        }

        v4 = v11;
        ++v6;
        if (v10 == i)
        {
          v12 = v26;
          v0 = v24;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      ;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v13 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);

    v16 = *(*v13 + 168);

    v17 = v16(v0 + 16);
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v19;
    *v19 = 0x8000000000000000;
    sub_1A95240DC(v12, v15, v14, isUniquelyReferenced_nonNull_native);

    *v19 = v27;
    v17(v0 + 16, 0);
  }

  else
  {
LABEL_16:
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A951B974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1A95240DC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1A937A490(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1A9524258();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1A939748C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1A951BA6C()
{
  v1 = v0;
  result = (*(*v0 + 152))();
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v32 = v9;
  v29 = result;
  v30 = v0;
  v28 = result + 64;
  while (1)
  {
    if (!v8)
    {
      do
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_30;
        }

        if (v17 >= v9)
        {
        }

        v8 = *(v5 + 8 * v17);
        ++v4;
      }

      while (!v8);
      v4 = v17;
    }

    v18 = __clz(__rbit64(v8)) | (v4 << 6);
    v19 = (*(v3 + 48) + 16 * v18);
    v20 = v19[1];
    v33 = *v19;
    v21 = *(*(v3 + 56) + 8 * v18);
    v35[0] = MEMORY[0x1E69E7CC0];
    if (v21 >> 62)
    {
      v27 = v20;
      v22 = sub_1A957CE48();
      v20 = v27;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v20;

    if (v22)
    {
      break;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_5:

    v11 = (*(*v1 + 168))(v35);
    v12 = (v8 - 1) & v8;
    v14 = v13;
    v15 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v14;
    *v14 = 0x8000000000000000;
    sub_1A95240DC(v10, v33, v34, isUniquelyReferenced_nonNull_native);

    *v14 = v36;
    v8 = v12;
    result = v11(v35, 0);
    v9 = v32;
  }

  v31 = v8;
  v23 = 0;
  while ((v21 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1AC585DE0](v23, v21);
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

LABEL_20:
    sub_1A957B0B8();
    sub_1A95265D8(&qword_1EB386AB0, 255, MEMORY[0x1E69695A8]);
    if (sub_1A957C098())
    {
    }

    else
    {
      sub_1A957CF78();
      v24 = *(v35[0] + 16);
      sub_1A957CFB8();
      sub_1A957CFC8();
      result = sub_1A957CF88();
    }

    ++v23;
    if (v26 == v22)
    {
      v10 = v35[0];
      v3 = v29;
      v1 = v30;
      v5 = v28;
      v8 = v31;
      goto LABEL_5;
    }
  }

  if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v25 = *(v21 + 8 * v23 + 32);

  v26 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1A951BDC8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1A957BC88();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951BE8C, v2, 0);
}

uint64_t sub_1A951BE8C()
{
  v22 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = sub_1A937731C(v3, qword_1EB389288);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_1A957BC68();
  v7 = sub_1A957CA98();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1A937A5C0(v13, v12, &v21);
    _os_log_impl(&dword_1A9324000, v6, v7, "Canceling dowload for %s.", v14, 0xCu);
    sub_1A9378138(v15);
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  v16 = (*(v10 + 8))(v9, v11);
  v0[12] = (*(**(v0[8] + 112) + 160))(v16);
  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = sub_1A951C0C8;
  v19 = v0[6];
  v18 = v0[7];

  return VoiceDatabase.cancelDownload(voiceId:)(v19, v18);
}

uint64_t sub_1A951C0C8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1A951C314;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 64);

    v5 = sub_1A951C1F0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A951C1F0()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  (*(*v2 + 176))(0x100000001, v4, v3);
  v5 = *(*v2 + 168);

  v6 = v5(v0 + 2);
  sub_1A951B974(0, v4, v3);
  v6(v0 + 2, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A951C314()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1A951C380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = sub_1A957BC88();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951C504, v3, 0);
}

uint64_t sub_1A951C504()
{
  v80 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v5 = sub_1A937731C(v3, qword_1EB389288);
  v6 = *(v2 + 16);
  v6(v1, v5, v3);

  v7 = sub_1A957BC68();
  v8 = sub_1A957CA98();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 224);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  if (v9)
  {
    v74 = *(v0 + 224);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v77 = v5;
    v15 = swift_slowAlloc();
    v75 = v6;
    v16 = swift_slowAlloc();
    v79 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1A937A5C0(v14, v13, &v79);
    _os_log_impl(&dword_1A9324000, v7, v8, "Starting download for %s.", v15, 0xCu);
    sub_1A9378138(v16);
    v17 = v16;
    v6 = v75;
    MEMORY[0x1AC587CD0](v17, -1, -1);
    v18 = v15;
    v5 = v77;
    MEMORY[0x1AC587CD0](v18, -1, -1);

    v19 = *(v11 + 8);
    v20 = v19(v74, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v20 = v19(v10, v12);
  }

  v21 = (*(**(v0 + 144) + 152))(v20);
  if (*(v21 + 16) && (v22 = sub_1A937A490(*(v0 + 120), *(v0 + 128)), (v23 & 1) != 0))
  {
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    v26 = *(v0 + 128);
    v27 = *(*(v21 + 56) + 8 * v22);

    v6(v24, v5, v25);

    v28 = sub_1A957BC68();
    v29 = sub_1A957CA98();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    if (v30)
    {
      v76 = *(v0 + 128);
      v78 = *(v0 + 216);
      v34 = v27;
      v35 = *(v0 + 120);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = v37;
      *v36 = 136315138;
      v38 = v35;
      v27 = v34;
      *(v36 + 4) = sub_1A937A5C0(v38, v76, &v79);
      _os_log_impl(&dword_1A9324000, v28, v29, "Already downloading %s. Attaching observer.", v36, 0xCu);
      sub_1A9378138(v37);
      MEMORY[0x1AC587CD0](v37, -1, -1);
      MEMORY[0x1AC587CD0](v36, -1, -1);

      v39 = v78;
    }

    else
    {

      v39 = v32;
    }

    v19(v39, v33);
    v57 = *(v0 + 136);
    v58 = *(v0 + 144);
    v60 = *(v0 + 120);
    v59 = *(v0 + 128);
    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A95892B0;
    *(inited + 32) = v57;
    v79 = v27;

    sub_1A95243C8(inited);
    v62 = v79;
    v63 = (*(*v58 + 168))(v0 + 88);
    v65 = v64;
    v66 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *v65;
    *v65 = 0x8000000000000000;
    sub_1A95240DC(v62, v60, v59, isUniquelyReferenced_nonNull_native);

    *v65 = v79;
    v63(v0 + 88, 0);
    v69 = *(v0 + 216);
    v68 = *(v0 + 224);
    v71 = *(v0 + 184);
    v70 = *(v0 + 192);
    v72 = *(v0 + 152);

    v73 = *(v0 + 8);

    return v73();
  }

  else
  {
    v41 = *(v0 + 136);
    v40 = *(v0 + 144);
    v43 = *(v0 + 120);
    v42 = *(v0 + 128);

    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1A95892B0;
    *(v44 + 32) = v41;
    v45 = (*v40)[21];

    v46 = v45(v0 + 56);
    v48 = v47;
    v49 = *v47;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *v48;
    *v48 = 0x8000000000000000;
    sub_1A95240DC(v44, v43, v42, v50);

    *v48 = v79;
    v51 = v46(v0 + 56, 0);
    *(v0 + 232) = (*(*v40[14] + 160))(v51);
    v52 = swift_task_alloc();
    *(v0 + 240) = v52;
    *v52 = v0;
    v52[1] = sub_1A951CB2C;
    v53 = *(v0 + 192);
    v54 = *(v0 + 120);
    v55 = *(v0 + 128);

    return VoiceDatabase.download(voiceId:)(v53, v54, v55);
  }
}

uint64_t sub_1A951CB2C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_1A951CE78;
  }

  else
  {
    v6 = *(v2 + 232);
    v7 = *(v2 + 144);

    v5 = sub_1A951CC54;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A951CC54()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v24 = v6;
  v25 = v1;
  v7 = v0[18];
  v22 = v0[15];
  v23 = v0[16];
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v10 = sub_1A95265D8(&qword_1EB388718, v9, type metadata accessor for VoiceDatabaseXPC.Server);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v2, v5);
  *(v13 + v12) = v7;
  v14 = (v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v22;
  v14[1] = v23;
  swift_retain_n();

  sub_1A938A404(0, 0, v24, &unk_1A9599050, v13);

  (*(v4 + 8))(v25, v5);
  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A951CE78()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[19];

  v7 = v0[1];
  v8 = v0[31];

  return v7();
}

uint64_t sub_1A951CF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v9 = sub_1A957BC88();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB3872B8, &qword_1A958C7F8);
  v7[13] = v12;
  v13 = *(v12 - 8);
  v7[14] = v13;
  v14 = *(v13 + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951D050, a5, 0);
}

uint64_t sub_1A951D050()
{
  v1 = v0[15];
  v2 = v0[6];
  sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  sub_1A957C6F8();
  v4 = sub_1A95265D8(&qword_1EB388718, v3, type metadata accessor for VoiceDatabaseXPC.Server);
  v0[16] = v4;
  v5 = v0[7];
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1A951D164;
  v8 = v0[15];
  v9 = v0[13];

  return MEMORY[0x1EEE6D9C8](v0 + 18, v5, v4, v9);
}

uint64_t sub_1A951D164()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A951D274, v2, 0);
}

uint64_t sub_1A951D274()
{
  v36 = v0;
  v1 = *(v0 + 144);
  if (*(v0 + 148))
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(*v4 + 176))(0x100000000, v3, v2);
    v5 = *(*v4 + 168);

    v6 = v5(v0 + 16);
    sub_1A951B974(0, v3, v2);
    v6(v0 + 16, 0);
    if (qword_1EB389280 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = sub_1A937731C(v9, qword_1EB389288);
    (*(v8 + 16))(v7, v10, v9);

    v11 = sub_1A957BC68();
    v12 = sub_1A957CA98();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    if (v13)
    {
      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1A937A5C0(v18, v17, &v34);
      _os_log_impl(&dword_1A9324000, v11, v12, "Finished downloading %s.", v19, 0xCu);
      sub_1A9378138(v20);
      MEMORY[0x1AC587CD0](v20, -1, -1);
      MEMORY[0x1AC587CD0](v19, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    v21 = *(v0 + 120);
    v22 = *(v0 + 96);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v27 = *(**(v0 + 56) + 176);
    v35 = 0;
    v27(v1, v25, v26);
    v28 = *(v0 + 128);
    v29 = *(v0 + 56);
    v30 = *(MEMORY[0x1E69E8678] + 4);
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *v31 = v0;
    v31[1] = sub_1A951D164;
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);

    return MEMORY[0x1EEE6D9C8](v0 + 144, v29, v28, v33);
  }
}

uint64_t sub_1A951D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A9382328;

  return sub_1A951D684(a5);
}

uint64_t sub_1A951D684(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1A957BC88();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = sub_1A957BDC8();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v10 = *(*(sub_1A937829C(&qword_1EB388720, &qword_1A9599068) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for VoiceDatabaseXPC.Message();
  v2[28] = v11;
  v12 = *(v11 - 8);
  v2[29] = v12;
  v13 = *(v12 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951D86C, 0, 0);
}

uint64_t sub_1A951D86C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);
  sub_1A95265D8(&qword_1EB386050, 255, type metadata accessor for VoiceDatabaseXPC.Message);
  sub_1A957BDF8();
  v12 = *(v0 + 248);
  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 144);
  (*(*(v0 + 232) + 56))(v13, 0, 1, *(v0 + 224));
  sub_1A9524E3C(v13, v12, type metadata accessor for VoiceDatabaseXPC.Message);
  v18 = sub_1A9550910();
  v19 = *v18;
  v20 = v18[1];

  sub_1A957BDA8();

  v21 = sub_1A957BDD8();
  v22 = *(v16 + 8);
  v22(v14, v15);
  v23 = *(v0 + 248);
  if (v21)
  {
    v24 = *(v0 + 248);
    sub_1A955091C();
  }

  else
  {
    v34 = *(v0 + 208);
    v35 = *(v0 + 192);
    v36 = *(v0 + 144);
    sub_1A957BDB8();
    v37 = sub_1A957BDD8();
    v22(v34, v35);
    if ((sub_1A955091C() & 1) != 0 && (v37 & 1) == 0)
    {
      v38 = *(v0 + 248);
      v39 = *(v0 + 144);
      *(v0 + 112) = xmmword_1A9599020;
      sub_1A9524D50();
LABEL_38:
      sub_1A957BDE8();
      sub_1A9525A44(v38, type metadata accessor for VoiceDatabaseXPC.Message);
      v5 = *(v0 + 240);
      v4 = *(v0 + 248);
      v7 = *(v0 + 208);
      v6 = *(v0 + 216);
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);

      v10 = *(v0 + 8);

      return v10();
    }
  }

  v25 = *(v0 + 224);
  sub_1A9524CEC(*(v0 + 248), *(v0 + 240));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v27 = *(v0 + 240);
        v28 = *(v0 + 152);
        v29 = *v27;
        if (EnumCaseMultiPayload == 6)
        {
          *(v0 + 328) = *v27;
          v30 = swift_task_alloc();
          *(v0 + 336) = v30;
          *(v30 + 16) = v28;
          *(v30 + 24) = v29;
          v81 = sub_1A9524A04;
          v31 = swift_task_alloc();
          *(v0 + 344) = v31;
          *v31 = v0;
          v31[1] = sub_1A951E51C;
          v32 = *(v0 + 144);
          v33 = &unk_1A95990E8;
        }

        else
        {
          *(v0 + 352) = *v27;
          v78 = swift_task_alloc();
          *(v0 + 360) = v78;
          *(v78 + 16) = v28;
          *(v78 + 24) = v29;
          v81 = sub_1A9524A04;
          v79 = swift_task_alloc();
          *(v0 + 368) = v79;
          *v79 = v0;
          v79[1] = sub_1A951E650;
          v32 = *(v0 + 144);
          v33 = &unk_1A95990D8;
        }

        goto LABEL_33;
      }

      v61 = *(v0 + 184);
      v62 = *(v0 + 152);
      sub_1A9524E3C(*(v0 + 240), v61, type metadata accessor for VoiceQueryCriteria);
      v63 = swift_task_alloc();
      *(v0 + 400) = v63;
      *(v63 + 16) = v62;
      *(v63 + 24) = v61;
      v81 = sub_1A95254D0;
      v64 = swift_task_alloc();
      *(v0 + 408) = v64;
      *v64 = v0;
      v64[1] = sub_1A951EB30;
      v65 = *(v0 + 144);
      v66 = &unk_1A9599098;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v81 = sub_1A9524A04;
        v45 = swift_task_alloc();
        *(v0 + 376) = v45;
        *v45 = v0;
        v45[1] = sub_1A951E840;
        v46 = *(v0 + 152);
        v47 = &unk_1A95990C8;
        v48 = *(v0 + 144);
LABEL_34:

        return v81(v48, v47);
      }

      v38 = *(v0 + 248);
      v80 = *(v0 + 144);
      sub_1A9524D50();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      goto LABEL_38;
    }

    v67 = *(v0 + 240);
    v68 = *v67;
    *(v0 + 416) = *v67;
    v69 = v67[1];
    *(v0 + 424) = v69;
    v70 = swift_task_alloc();
    *(v0 + 432) = v70;
    *(v70 + 16) = v68;
    *(v70 + 24) = v69;
    v81 = sub_1A9524A04;
    v71 = swift_task_alloc();
    *(v0 + 440) = v71;
    *v71 = v0;
    v71[1] = sub_1A951EC48;
    v32 = *(v0 + 144);
    v33 = &unk_1A9599080;
LABEL_33:
    v47 = v33;
    v48 = v32;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v49 = *(v0 + 240);
    v50 = *(v0 + 152);
    v51 = *v49;
    v52 = v49[1];
    if (EnumCaseMultiPayload)
    {
      *(v0 + 280) = v52;
      v76 = swift_task_alloc();
      *(v0 + 288) = v76;
      v76[2] = v50;
      v76[3] = v51;
      v76[4] = v52;
      v81 = sub_1A9524A04;
      v77 = swift_task_alloc();
      *(v0 + 296) = v77;
      *v77 = v0;
      v77[1] = sub_1A951E2B4;
      v32 = *(v0 + 144);
      v33 = &unk_1A9599108;
    }

    else
    {
      *(v0 + 304) = v52;
      v53 = swift_task_alloc();
      *(v0 + 312) = v53;
      v53[2] = v50;
      v53[3] = v51;
      v53[4] = v52;
      v81 = sub_1A9524A04;
      v54 = swift_task_alloc();
      *(v0 + 320) = v54;
      *v54 = v0;
      v54[1] = sub_1A951E3E8;
      v32 = *(v0 + 144);
      v33 = &unk_1A95990F8;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v55 = *(v0 + 240);
    v56 = *(v0 + 152);
    v57 = *v55;
    v58 = v55[1];
    *(v0 + 256) = v58;
    v59 = swift_task_alloc();
    *(v0 + 264) = v59;
    v59[2] = v56;
    v59[3] = v57;
    v59[4] = v58;
    v81 = sub_1A9524A04;
    v60 = swift_task_alloc();
    *(v0 + 272) = v60;
    *v60 = v0;
    v60[1] = sub_1A951E180;
    v32 = *(v0 + 144);
    v33 = &unk_1A9599118;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v72 = *(v0 + 184);
    v73 = *(v0 + 152);
    sub_1A9524E3C(*(v0 + 240), v72, type metadata accessor for VoiceQueryCriteria);
    v74 = swift_task_alloc();
    *(v0 + 384) = v74;
    *(v74 + 16) = v73;
    *(v74 + 24) = v72;
    v81 = sub_1A9524F50;
    v75 = swift_task_alloc();
    *(v0 + 392) = v75;
    *v75 = v0;
    v75[1] = sub_1A951E93C;
    v65 = *(v0 + 144);
    v66 = &unk_1A95990B0;
LABEL_30:
    v47 = v66;
    v48 = v65;
    goto LABEL_34;
  }

  v40 = *(v0 + 240);
  v41 = *v40;
  v42 = v40[1];
  v43 = swift_task_alloc();
  *(v0 + 448) = v43;
  *(v43 + 16) = v41;
  *(v43 + 17) = v42;
  v44 = swift_task_alloc();
  *(v0 + 456) = v44;
  *v44 = v0;
  v44[1] = sub_1A951ED9C;

  return sub_1A952344C(v41, v42);
}

uint64_t sub_1A951E180()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E2B4()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E3E8()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E51C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E650()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A951E784, 0, 0);
}

uint64_t sub_1A951E784()
{
  sub_1A9525A44(v0[31], type metadata accessor for VoiceDatabaseXPC.Message);
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A951E840()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E93C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A951EA54, 0, 0);
}

uint64_t sub_1A951EA54()
{
  v1 = v0[23];
  sub_1A9525A44(v0[31], type metadata accessor for VoiceDatabaseXPC.Message);
  sub_1A9525A44(v1, type metadata accessor for VoiceQueryCriteria);
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A951EB30()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9526630, 0, 0);
}

uint64_t sub_1A951EC48()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 416);
  v6 = *v0;

  sub_1A9450A78(v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951ED9C()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1A951EF9C;
  }

  else
  {
    v3 = sub_1A951EEB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A951EEB0()
{
  v1 = v0[18];
  sub_1A9524D50();
  v0[11] = 0;
  v0[10] = 0;
  sub_1A957BDE8();
  v2 = v0[56];
  v3 = v0[31];

  sub_1A9525A44(v3, type metadata accessor for VoiceDatabaseXPC.Message);
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v8 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A951EF9C()
{
  v41 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[58];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[58];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v40);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[20];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[58];
  v25 = v0[18];
  swift_getErrorValue();
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[4];
  v0[12] = sub_1A957D478();
  v0[13] = v29;
  sub_1A9524D50();
  sub_1A957BDE8();

  v30 = v0[56];
  v31 = v0[31];

  sub_1A9525A44(v31, type metadata accessor for VoiceDatabaseXPC.Message);
  v33 = v0[30];
  v32 = v0[31];
  v35 = v0[26];
  v34 = v0[27];
  v37 = v0[22];
  v36 = v0[23];

  v38 = v0[1];

  return v38();
}

uint64_t sub_1A951F270(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v36 = &v32 - v5;
  v6 = sub_1A957BD98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A957BC88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v18 = sub_1A937731C(v12, qword_1EB389288);
  (*(v13 + 16))(v17, v18, v12);
  v19 = *(v7 + 16);
  v19(v11, a1, v6);
  v20 = sub_1A957BC68();
  v21 = sub_1A957CA98();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = v13;
    v23 = v22;
    v33 = swift_slowAlloc();
    *v23 = 138412290;
    sub_1A95265D8(&qword_1EB385FD8, 255, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v35 = v12;
    v19(v24, v11, v6);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    (*(v7 + 8))(v11, v6);
    v26 = v23;
    v27 = v33;
    v13 = v34;
    *(v26 + 1) = v25;
    *v27 = v25;
    v12 = v35;
    _os_log_impl(&dword_1A9324000, v20, v21, "Invalidated connection with error %@", v26, 0xCu);
    sub_1A937B960(v27, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v27, -1, -1);
    MEMORY[0x1AC587CD0](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  (*(v13 + 8))(v17, v12);
  v28 = sub_1A957C688();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v37;

  sub_1A93C4B70(0, 0, v29, &unk_1A9599128, v30);
}

uint64_t sub_1A951F6C0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = (*Strong + 192) & 0xFFFFFFFFFFFFLL | 0x3549000000000000;
    v0[7] = *(*Strong + 192);
    v0[8] = v5;
    Strong = sub_1A951F770;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](Strong, v3, v4);
}

uint64_t sub_1A951F770()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 56))(*(v0 + 40));
  *(v0 + 72) = 0;
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A951F830()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1A951F894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951F8B8, 0, 0);
}

uint64_t sub_1A951F8B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A9526620;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599130, v4);
}

uint64_t sub_1A951F9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951F9C8, 0, 0);
}

uint64_t sub_1A951F9C8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A951FAB4;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599138, v4);
}

uint64_t sub_1A951FAB4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A951FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951FBE8, 0, 0);
}

uint64_t sub_1A951FBE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A9526620;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599140, v4);
}

uint64_t sub_1A951FCD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A951FCF8, 0, 0);
}

uint64_t sub_1A951FCF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1A9526624;
  v5 = v0[2];

  return sub_1A9524A04(v5, &unk_1A9599148);
}

uint64_t sub_1A951FDD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A951FDFC, 0, 0);
}

uint64_t sub_1A951FDFC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1A951FEDC;
  v5 = v0[2];

  return sub_1A9524A04(v5, &unk_1A9599150);
}

uint64_t sub_1A951FEDC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A951FFEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A952000C, 0, 0);
}

uint64_t sub_1A952000C()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A95200C8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1A9524A04(v3, &unk_1A9599158);
}

uint64_t sub_1A95200C8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A95201BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95201E0, 0, 0);
}

uint64_t sub_1A95201E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A9526624;
  v3 = *(v0 + 16);

  return sub_1A9524F50(v3, &unk_1A9599160);
}

uint64_t sub_1A95202BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95202E0, 0, 0);
}

uint64_t sub_1A95202E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A9526624;
  v3 = *(v0 + 16);

  return sub_1A95254D0(v3, &unk_1A9599168);
}

uint64_t sub_1A95203BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A95203DC, 0, 0);
}

uint64_t sub_1A95203DC()
{
  v8 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *sub_1A94CF400();
  v7[0] = v1;
  v7[1] = v2;
  v4 = *(*v3 + 408);

  sub_1A93F48E0(v1, v2);
  v4(v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A95204B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95204D8, 0, 0);
}

uint64_t sub_1A95204D8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A94CB3D4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1A9524A04(v4, v2);
}

uint64_t sub_1A9520584(uint64_t a1, char a2, char a3)
{
  *(v3 + 169) = a3;
  *(v3 + 168) = a2;
  *(v3 + 112) = a1;
  v4 = sub_1A957BC88();
  *(v3 + 120) = v4;
  v5 = *(v4 - 8);
  *(v3 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A952064C, 0, 0);
}

uint64_t sub_1A952064C()
{
  v1 = *(v0 + 169);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *(v3 + 16) = v2;
  *(v3 + 17) = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_1A9520700;
  v5 = *(v0 + 169);
  v6 = *(v0 + 168);

  return sub_1A952344C(v6, v5);
}

uint64_t sub_1A9520700()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A95208A0;
  }

  else
  {
    v3 = sub_1A9520814;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9520814()
{
  v1 = v0[14];
  sub_1A9524D50();
  v0[9] = 0;
  v0[8] = 0;
  sub_1A957BDE8();
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A95208A0()
{
  v35 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v34);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[20];
  v25 = v0[14];
  swift_getErrorValue();
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[4];
  v0[10] = sub_1A957D478();
  v0[11] = v29;
  sub_1A9524D50();
  sub_1A957BDE8();

  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1A9520B24(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v8 = sub_1A957BC88();
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v10 = *(v9 + 64) + 15;
  v5[17] = swift_task_alloc();
  v11 = *(a4 - 8);
  v5[18] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[19] = v13;
  v17 = (a2 + *a2);
  v14 = a2[1];
  v15 = swift_task_alloc();
  v5[20] = v15;
  *v15 = v5;
  v15[1] = sub_1A9520CDC;

  return v17(v13);
}

uint64_t sub_1A9520CDC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A9520E94;
  }

  else
  {
    v3 = sub_1A9520DF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9520DF0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  sub_1A957BDE8();
  (*(v2 + 8))(v1, v4);
  v6 = v0[19];
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A9520E94()
{
  v35 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[21];
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v34);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[21];
  v25 = v0[12];
  swift_getErrorValue();
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[4];
  v0[8] = sub_1A957D478();
  v0[9] = v29;
  sub_1A9524D50();
  sub_1A957BDE8();

  v30 = v0[19];
  v31 = v0[17];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1A952111C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9521140, 0, 0);
}

uint64_t sub_1A9521140()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 112);

    v0[8] = (*(*v3 + 160))(v4);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A9521258;
    v7 = v0[6];
    v6 = v0[7];

    return VoiceDatabase.purge(voiceId:)(v7, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521258()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9521394, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A9521394()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1A95213F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A952141C, 0, 0);
}

uint64_t sub_1A952141C()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[8] = result;
  if (result)
  {
    v3 = *(*result + 200);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A9521258;
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];

    return v9(v7, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A952159C, 0, 0);
}

uint64_t sub_1A952159C()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[8] = result;
  if (result)
  {
    v3 = *(*result + 208);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A95216F8;
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];

    return v9(v7, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A95216F8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9526634, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A9521834(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9521854, 0, 0);
}

uint64_t sub_1A9521854()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 112);

    v5 = (*(*v3 + 160))(v4);
    v0[7] = v5;

    v9 = (*v5 + 488);
    v10 = (*v9 + **v9);
    v6 = (*v9)[1];
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_1A9521A08;
    v8 = v0[6];

    return v10(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521A08()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9521B44, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A9521B44()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1A9521BA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9521BC8, 0, 0);
}

uint64_t sub_1A9521BC8()
{
  v1 = v0[5];
  v0[7] = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_server;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 112);

    v5 = (*(*v3 + 160))(v4);
    v0[8] = v5;

    v9 = (*v5 + 496);
    v10 = (*v9 + **v9);
    v6 = (*v9)[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1A9521D80;
    v8 = v0[6];

    return v10(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521D80()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1A952219C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1A9521E9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9521E9C()
{
  if (v0[6])
  {
    goto LABEL_2;
  }

  v3 = v0[7];
  v4 = v0[5];
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = *(result + 112);

  v7 = (*(*v5 + 184))(v6);
  v0[11] = v7;

  if (!v7)
  {
LABEL_2:
    v1 = v0[1];

    return v1();
  }

  else
  {
    v8 = *(*v7 + 136);
    v11 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1A9522060;

    return v11();
  }
}

uint64_t sub_1A9522060()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9522200, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A952219C()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9522200()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9522284()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 112);

    v5 = (*(*v3 + 184))(v4);
    v0[6] = v5;

    if (v5)
    {
      v6 = *(*v5 + 136);
      v10 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_1A9522454;

      return v10();
    }

    else
    {
      v9 = v0[1];

      return v9();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9522454()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A938BC8C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A9522590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[186] = a3;
  v3[185] = a2;
  v3[184] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95225B8, 0, 0);
}

uint64_t sub_1A95225B8()
{
  v1 = v0[185];
  v0[187] = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_server;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[188] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = *Strong + 152;
    v0[189] = *v5;
    v0[190] = v5 & 0xFFFFFFFFFFFFLL | 0x8991000000000000;
    Strong = sub_1A9522670;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](Strong, v3, v4);
}

uint64_t sub_1A9522670()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1504);
  *(v0 + 1528) = (*(v0 + 1512))();

  return MEMORY[0x1EEE6DFA0](sub_1A95226EC, 0, 0);
}

uint64_t sub_1A95226EC()
{
  v1 = v0[187];
  v2 = v0[185];
  v0[192] = sub_1A93E90A0(v0[191]);
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 112);

    v6 = (*(*v4 + 160))(v5);
    v0[193] = v6;

    v10 = (*v6 + 392);
    v11 = (*v10 + **v10);
    v7 = (*v10)[1];
    v8 = swift_task_alloc();
    v0[194] = v8;
    *v8 = v0;
    v8[1] = sub_1A9522894;
    v9 = v0[186];

    return v11(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9522894(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1552);
  v8 = *v2;
  v3[195] = a1;
  v3[196] = v1;

  if (v1)
  {
    v5 = sub_1A9522CE4;
  }

  else
  {
    v6 = v3[193];

    v5 = sub_1A95229B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void *sub_1A95229B4()
{
  v30 = v0;
  v1 = *(v0 + 1560);
  v2 = *(v1 + 16);
  v3 = *(v0 + 1536);
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1A9461C94(0, v2, 0);
    if (*(v1 + 16))
    {
      v5 = 0;
      v25 = (v0 + 1440);
      v6 = v28;
      v26 = v1;
      v27 = v1 + 32;
      v7 = v3 + 56;
      v8 = 1;
      while (1)
      {
        v9 = (v27 + 280 * v5);
        v5 = v8;
        memcpy((v0 + 16), v9, 0x118uLL);
        if (!*(v3 + 16))
        {
          break;
        }

        v11 = *(v0 + 16);
        v10 = *(v0 + 24);
        v12 = *(v3 + 40);
        sub_1A957D4F8();
        sub_1A937B3DC(v0 + 16, v0 + 576);
        sub_1A957C228();
        v13 = sub_1A957D548();
        v14 = -1 << *(v3 + 32);
        v15 = v13 & ~v14;
        if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_15;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = (*(v3 + 48) + 16 * v15);
          v18 = *v17 == v11 && v17[1] == v10;
          if (v18 || (sub_1A957D3E8() & 1) != 0)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        memcpy((v0 + 296), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 16, v0 + 856);
        *v25 = *sub_1A9493D44();
        *(v0 + 1456) = *(v0 + 360);
        sub_1A9387410();
        sub_1A957CD98();
        sub_1A93B1F40();
        if ((sub_1A957C098() & 1) == 0)
        {
          *(v0 + 1464) = *v25;
          sub_1A957CDD8();
        }

        sub_1A937B48C(v0 + 16);
        *(v0 + 489) = 3;
LABEL_19:
        memcpy(__dst, (v0 + 296), sizeof(__dst));
        v20 = *(v28 + 16);
        v19 = *(v28 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1A9461C94((v19 > 1), v20 + 1, 1);
        }

        *(v28 + 16) = v20 + 1;
        result = memcpy((v28 + 280 * v20 + 32), __dst, 0x118uLL);
        if (v5 == v2)
        {
          v21 = *(v0 + 1560);
          v22 = *(v0 + 1536);

          goto LABEL_26;
        }

        v8 = v5 + 1;
        if (v5 >= *(v26 + 16))
        {
          goto LABEL_29;
        }
      }

      sub_1A937B3DC(v0 + 16, v0 + 1136);
LABEL_15:
      memcpy((v0 + 296), (v0 + 16), 0x118uLL);
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
  }

  else
  {
    v23 = *(v0 + 1560);

    v6 = MEMORY[0x1E69E7CC0];
LABEL_26:
    **(v0 + 1472) = v6;
    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1A9522CE4()
{
  v1 = v0[193];
  v2 = v0[192];

  v3 = v0[1];
  v4 = v0[196];

  return v3();
}

uint64_t sub_1A9522D54(uint64_t a1)
{
  v38 = sub_1A957B308();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v7, 0);
    v41 = v42;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1A957CE18();
    v11 = result;
    v12 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v3;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v11, v38);
      v40 = sub_1A957B1A8();
      v18 = v17;
      result = (*(v3 + 8))(v15, v16);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1A93ABB68((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v34;
      v23 = *(v34 + 8 * v14);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        v3 = v33;
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1A932D0A4(v11, v39, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1A932D0A4(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v32)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A952305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9523080, 0, 0);
}

uint64_t sub_1A9523080()
{
  v1 = v0[6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 112);

    v5 = (*(*v3 + 160))(v4);
    v0[8] = v5;

    v9 = (*v5 + 400);
    v10 = (*v9 + **v9);
    v6 = (*v9)[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1A9523234;
    v8 = v0[7];

    return v10(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9523234(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_1A9526634;
  }

  else
  {
    v10 = v6[8];

    v6[11] = a2;
    v6[12] = a1;
    v9 = sub_1A9523370;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A9523370()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[5];
  v4 = sub_1A9522D54(v0[12]);
  v5 = sub_1A93AD200(v4);

  v6 = sub_1A9522D54(v1);

  sub_1A93AD200(v6);

  *v3 = nullsub_23(v5);
  v3[1] = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1A952344C(char a1, char a2)
{
  *(v2 + 49) = a2;
  *(v2 + 48) = a1;
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v2 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A95234EC, 0, 0);
}

uint64_t sub_1A95234EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  v4 = sub_1A957C688();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  v6 = sub_1A93C4B70(0, 0, v1, &unk_1A9599260, v5);
  *(v0 + 24) = v6;
  if (v2 == 1)
  {
    v7 = *(MEMORY[0x1E69E86A8] + 4);
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 32) = v9;
    v10 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v9 = v0;
    v9[1] = sub_1A95236A0;
    v11 = MEMORY[0x1E69E7288];
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v10, v8, v12, v10, v11);
  }

  else
  {

    v13 = *(v0 + 16);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1A95236A0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1A9523820;
  }

  else
  {
    v3 = sub_1A95237B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A95237B4()
{
  v1 = v0[3];

  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9523820()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

uint64_t sub_1A952388C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 16) = type metadata accessor for AXCatalogUpdater();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1A9523930;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A9523930()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);
LABEL_8:

    return v5();
  }

  if (*(v2 + 40) != 1)
  {
    v5 = *(v4 + 8);
    goto LABEL_8;
  }

  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_1A95200C8;
  v7 = *(v2 + 16);

  return static AXCatalogUpdater.downloadSampleAsset()();
}

uint64_t sub_1A9523AC4()
{
  v1 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_id;
  v2 = sub_1A957B0B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  v3 = *(v0 + OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_1A9523B80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A957BE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v19 - v12;
  v14 = *v2;
  sub_1A957C668();
  v15 = sub_1A957C688();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  (*(v6 + 32))(&v17[v16], &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1A938A404(0, 0, v13, &unk_1A9599250, v17);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void *VoiceDatabaseXPC.Server.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabaseXPC.Server.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A9523E34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
  v38 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A95240DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9523E34(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A9524258();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_1A9524258()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_1A95243C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1A957CE48();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1A93B6054(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A95244B8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A95244B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
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
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A952649C();
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB388728, &qword_1A9599268);
            v9 = sub_1A9524638(v13, i, a3);
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
        _s6ServerC14RequestHandlerCMa();
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

uint64_t (*sub_1A9524638(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1AC585DE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1A95246B8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A95246C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1A95247C4()
{
  _s6ServerC14RequestHandlerCMa();
  sub_1A95265D8(&qword_1EB386058, 255, _s6ServerC14RequestHandlerCMa);
  return sub_1A957BD68();
}

unint64_t sub_1A9524860()
{
  result = qword_1EB388710;
  if (!qword_1EB388710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388710);
  }

  return result;
}

uint64_t sub_1A95248D8()
{
  v2 = *(sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A93836DC;

  return sub_1A951CF20(v9, v10, v11, v0 + v3, v5, v7, v8);
}

uint64_t sub_1A9524A04(uint64_t a1, int *a2)
{
  v2[14] = a1;
  v4 = sub_1A957BC88();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v2[18] = v8;
  *v8 = v2;
  v8[1] = sub_1A9524B54;

  return v10();
}

uint64_t sub_1A9524B54()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A952662C;
  }

  else
  {
    v3 = sub_1A9524C68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9524C68()
{
  v1 = v0[14];
  sub_1A9524D50();
  v0[9] = 0;
  v0[8] = 0;
  sub_1A957BDE8();
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9524CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceDatabaseXPC.Message();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A9524D50()
{
  result = qword_1EB386048;
  if (!qword_1EB386048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386048);
  }

  return result;
}

uint64_t sub_1A9524DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A95203BC(v2, v3);
}

uint64_t sub_1A9524E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9524EA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A952305C(a1, v5, v4);
}

uint64_t sub_1A9524F50(uint64_t a1, int *a2)
{
  v2[13] = a1;
  v4 = sub_1A957BC88();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1A95250A8;

  return v10(v2 + 10);
}

uint64_t sub_1A95250A8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A9525254;
  }

  else
  {
    v3 = sub_1A95251BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A95251BC()
{
  v1 = v0[13];
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A9526330();
  sub_1A957BDE8();
  v2 = v0[10];

  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A9525254()
{
  v34 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[18];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v33);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[18];
  v25 = v0[13];
  swift_getErrorValue();
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[4];
  v0[8] = sub_1A957D478();
  v0[9] = v29;
  sub_1A9524D50();
  sub_1A957BDE8();

  v30 = v0[16];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1A95254D0(uint64_t a1, int *a2)
{
  v2[14] = a1;
  v4 = sub_1A957BC88();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v2[18] = v8;
  *v8 = v2;
  v8[1] = sub_1A9525628;

  return v10(v2 + 8);
}

uint64_t sub_1A9525628()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A95257C8;
  }

  else
  {
    v3 = sub_1A952573C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A952573C()
{
  v1 = v0[14];
  sub_1A95263B4();
  sub_1A957BDE8();
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A95257C8()
{
  v34 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_1A957D478();
    v20 = sub_1A937A5C0(v18, v19, &v33);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[19];
  v25 = v0[14];
  swift_getErrorValue();
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[4];
  v0[10] = sub_1A957D478();
  v0[11] = v29;
  sub_1A9524D50();
  sub_1A957BDE8();

  v30 = v0[17];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1A9525A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A9525AA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A9522590(a1, v5, v4);
}

uint64_t sub_1A9525B50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A9522264(v0);
}

uint64_t sub_1A9525BE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9521BA8(v2, v3);
}

uint64_t sub_1A9525C78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9521834(v2, v3);
}

uint64_t sub_1A9525D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9521578(v2, v3, v4);
}

uint64_t sub_1A9525DB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A95213F8(v2, v3, v4);
}

uint64_t sub_1A9525E60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A952111C(v2, v3, v4);
}

uint64_t sub_1A9525F08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A951F6A0(v3, v4, v5, v2);
}

uint64_t sub_1A9525F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A95213F8(v2, v3, v4);
}

uint64_t _s6ServerC14RequestHandlerCMa()
{
  result = qword_1EB389BF0;
  if (!qword_1EB389BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A95260E8()
{
  result = sub_1A957B0B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A952618C()
{
  v1 = sub_1A957BE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A9526258()
{
  v2 = *(sub_1A957BE08() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A951D5E8(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_1A9526330()
{
  result = qword_1EB385F98;
  if (!qword_1EB385F98)
  {
    sub_1A93A7B68(&qword_1EB386958, &qword_1A9587790);
    sub_1A948C450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F98);
  }

  return result;
}

unint64_t sub_1A95263B4()
{
  result = qword_1EB386060;
  if (!qword_1EB386060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386060);
  }

  return result;
}

uint64_t sub_1A9526408()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A952388C(v3, v4, v5, v2);
}

unint64_t sub_1A952649C()
{
  result = qword_1EB388730;
  if (!qword_1EB388730)
  {
    sub_1A93A7B68(&qword_1EB388728, &qword_1A9599268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388730);
  }

  return result;
}

uint64_t sub_1A9526500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s6ServerC14RequestHandlerCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_1A957B0A8();
  swift_weakInit();
  v8 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
  *(v7 + OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session) = 0;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  v9 = *(v7 + v8);
  *(v7 + v8) = a1;

  *a2 = v7;
  return result;
}

uint64_t sub_1A95265D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1A9526684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A95266E0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1A9526738()
{
  v1 = v0;
  v2 = sub_1A957BC88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A9391C54();
  (*(v3 + 16))(v7, v8, v2);

  v9 = sub_1A957BC68();
  v10 = sub_1A957CA68();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v19 = *(v1 + 32);
    v13 = sub_1A957C198();
    v15 = sub_1A937A5C0(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1A9324000, v9, v10, "State => %s", v11, 0xCu);
    sub_1A9378138(v12);
    MEMORY[0x1AC587CD0](v12, -1, -1);
    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v16 = *(v1 + 24);
  swift_beginAccess();
  v19 = *(v1 + 32);
  return sub_1A957BE68();
}

uint64_t sub_1A9526954@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1A9526998(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 32) = v2;
  return sub_1A9526738();
}

uint64_t (*sub_1A95269DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9526A30;
}

uint64_t sub_1A9526A30(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1A9526738();
  }

  return result;
}

uint64_t sub_1A9526A64()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v59 - v5;
  v7 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A957BC88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A9391C54();
  (*(v14 + 16))(v18, v19, v13);

  v20 = sub_1A957BC68();
  v21 = sub_1A957CA68();

  v22 = os_log_type_enabled(v20, v21);
  v65 = v6;
  v66 = v1;
  if (v22)
  {
    v63 = v21;
    v64 = v20;
    v23 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v69 = v61;
    v62 = v23;
    *v23 = 136315138;
    swift_beginAccess();
    v24 = *(v1 + 40);
    v25 = *(v24 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v59 = v13;
      v68 = MEMORY[0x1E69E7CC0];

      sub_1A940FCE4(0, v25, 0);
      v26 = v68;
      v27 = v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v60 = v8;
      v28 = *(v8 + 72);
      do
      {
        sub_1A9530850(v27, v12);
        v67 = *v12;
        swift_unknownObjectRetain();
        sub_1A95308B4(v12);
        v68 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1A940FCE4((v29 > 1), v30 + 1, 1);
          v26 = v68;
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + 16 * v30 + 32) = v67;
        v27 += v28;
        --v25;
      }

      while (v25);

      v6 = v65;
      v1 = v66;
      v13 = v59;
      v8 = v60;
    }

    v31 = sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    v32 = MEMORY[0x1AC585390](v26, v31);
    v34 = v33;

    v35 = sub_1A937A5C0(v32, v34, &v69);

    v36 = v62;
    *(v62 + 1) = v35;
    v20 = v64;
    _os_log_impl(&dword_1A9324000, v64, v63, "WorkItems => %s", v36, 0xCu);
    v37 = v61;
    sub_1A9378138(v61);
    MEMORY[0x1AC587CD0](v37, -1, -1);
    MEMORY[0x1AC587CD0](v36, -1, -1);
  }

  (*(v14 + 8))(v18, v13);
  swift_beginAccess();
  v38 = *(v1 + 40);
  v39 = *(v38 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v68 = MEMORY[0x1E69E7CC0];

    sub_1A940FCE4(0, v39, 0);
    v40 = v68;
    v41 = *(v8 + 80);
    *&v67 = v38;
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v8 + 72);
    do
    {
      sub_1A9530850(v42, v12);
      v44 = *v12;
      v45 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      v47 = *(v45 + 80);
      v48 = swift_unknownObjectRetain();
      v49 = v47(v48, ObjectType, v45);
      sub_1A95308B4(v12);
      v68 = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1A940FCE4((v50 > 1), v51 + 1, 1);
        v40 = v68;
      }

      *(v40 + 16) = v51 + 1;
      v52 = v40 + 16 * v51;
      *(v52 + 32) = v49;
      *(v52 + 40) = v45;
      v42 += v43;
      --v39;
    }

    while (v39);

    v6 = v65;
    v1 = v66;
  }

  v53 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v54 = sub_1A957C688();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v6, v1 + v53, v54);
  (*(v55 + 56))(v6, 0, 1, v54);
  v56 = sub_1A9534BD8(&qword_1EB388758);
  v57 = swift_allocObject();
  v57[2] = v1;
  v57[3] = v56;
  v57[4] = v1;
  v57[5] = v40;
  swift_retain_n();
  sub_1A938A404(0, 0, v6, &unk_1A9599760, v57);
}

uint64_t sub_1A9527050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v7 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A95270F8, v7, v6);
}

uint64_t sub_1A95270F8()
{
  sub_1A957C638();
  *(v0 + 32) = sub_1A957C628();
  v2 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952718C, v2, v1);
}

uint64_t sub_1A952718C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(*v3 + 280);

  v4(v5);
  v6 = v0[1];

  return v6();
}

uint64_t TTSSpeechQueue.taskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v4 = sub_1A957C688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A95272C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9527318(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 280);

  return v3(v4);
}

uint64_t sub_1A9527374()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A957BEC8();

  return v1;
}

uint64_t sub_1A95273E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A957BED8();
}

void (*sub_1A9527458(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A957BEB8();
  return sub_1A95274FC;
}

void sub_1A95274FC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1A95275B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 304))(v8);
}

uint64_t sub_1A95276B8()
{
  swift_beginAccess();
  sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BE98();
  return swift_endAccess();
}

uint64_t sub_1A952772C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BEA8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1A9527864(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BE98();
  swift_endAccess();
  return sub_1A95279D4;
}

void sub_1A95279D4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1A957BEA8();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1A957BEA8();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_1A9527B3C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v5 = sub_1A957C5A8();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A9527BE4, v5, v4);
}

uint64_t sub_1A9527BE4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v4 = sub_1A9527E64(v2, (v0 + 16));
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1A9527D00;
  v7 = *(v0 + 32);

  return sub_1A952C024(&unk_1A95992E8, v5);
}

uint64_t sub_1A9527D00()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A93D632C, v5, v4);
}

void *sub_1A9527E64(uint64_t a1, size_t *a2)
{
  v74 = a2;
  v67 = sub_1A937829C(&qword_1EB3887C0, &unk_1A95997F8);
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v67, v5);
  v66 = &v53 - v6;
  v72 = sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0);
  v7 = *(v72 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72, v9);
  v71 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v70 = &v53 - v13;
  v14 = sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v69 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v53 - v20;
  v22 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v65 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v55 = &v53 - v29;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v31 = (a1 + 32);
  v54 = v28;
  v62 = *(v28 + 56);
  v61 = *MEMORY[0x1E69E8790];
  v59 = (v7 + 16);
  v60 = (v3 + 104);
  v57 = v7 + 32;
  v58 = v7 + 8;
  v63 = v28 + 56;
  v56 = (v28 + 48);
  v68 = MEMORY[0x1E69E7CC0];
  v64 = v22;
  do
  {
    v32 = v21;
    v73 = *v31;
    v33 = v69;
    v34 = v62(v69, 1, 1, v22);
    MEMORY[0x1EEE9AC00](v34, v35);
    *(&v53 - 4) = v33;
    *(&v53 - 3) = v73;
    (*v60)(v66, v61, v67);
    swift_unknownObjectRetain();
    v36 = v70;
    sub_1A957C878();
    (*v59)(v71, v36, v72);
    v37 = v74;
    v38 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v37 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1A9530C24(0, v38[2] + 1, 1, v38);
      *v74 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v50 = sub_1A9530C24(v40 > 1, v41 + 1, 1, v38);
      *v74 = v50;
    }

    v42 = v72;
    (*(v7 + 8))(v70, v72);
    v43 = *v74;
    *(v43 + 16) = v41 + 1;
    (*(v7 + 32))(v43 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v41, v71, v42);
    v44 = v69;
    v21 = v32;
    sub_1A9391BAC(v69, v32, &qword_1EB388760, &qword_1A9599360);
    sub_1A937B960(v44, &qword_1EB388760, &qword_1A9599360);
    swift_unknownObjectRelease();
    v22 = v64;
    if ((*v56)(v32, 1, v64) == 1)
    {
      sub_1A937B960(v32, &qword_1EB388760, &qword_1A9599360);
    }

    else
    {
      v45 = v55;
      sub_1A9530910(v32, v55);
      sub_1A9530910(v45, v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1A9530A4C(0, v68[2] + 1, 1, v68);
      }

      v47 = v68[2];
      v46 = v68[3];
      v48 = v54;
      if (v47 >= v46 >> 1)
      {
        v51 = sub_1A9530A4C(v46 > 1, v47 + 1, 1, v68);
        v48 = v54;
        v68 = v51;
      }

      v49 = v68;
      v68[2] = v47 + 1;
      sub_1A9530910(v65, v49 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47);
    }

    ++v31;
    --v30;
  }

  while (v30);
  return v68;
}

uint64_t sub_1A9528474(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 209) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  v5 = *(*(sub_1A937829C(&qword_1EB3887A8, &qword_1A95997D0) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  *(v4 + 96) = v6;
  v7 = *(v6 - 8);
  *(v4 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  *(v4 + 120) = v9;
  v10 = *(v9 - 8);
  *(v4 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v13 = sub_1A957C5A8();
  *(v4 + 152) = v13;
  *(v4 + 160) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1A952862C, v13, v12);
}

void sub_1A952862C()
{
  v110 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    v103 = v1 + 40;
    do
    {
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_75;
        }

        v8 = *(v6 - 1);
        v9 = *v6;
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 40);
        swift_unknownObjectRetain();
        v11(&v108, ObjectType, v9);
        if ((v108 & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v7;
        v6 += 2;
        if (v3 == v2)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A940FCE4(0, v5[2] + 1, 1);
        v5 = v109;
      }

      v4 = v103;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        sub_1A940FCE4((v13 > 1), v14 + 1, 1);
        v5 = v109;
      }

      v5[2] = v14 + 1;
      v15 = &v5[2 * v14];
      v15[4] = v8;
      v15[5] = v9;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v96 = v2;
  v16 = v5[2];
  if (v16)
  {
    v18 = v5[4];
    v17 = v5[5];
    swift_unknownObjectRetain();
    if (v16 != 1)
    {
      v98 = v16;
      v19 = v5 + 5;
      v20 = 1;
      v94 = v16 - 1;
LABEL_19:
      v104 = v18;
      v21 = v20;
      v22 = &v19[2 * v20];
      while (v21 < v5[2])
      {
        v18 = *(v22 - 1);
        v23 = *v22;
        v20 = v21 + 1;
        v24 = swift_getObjectType();
        v25 = *(v23 + 24);
        swift_unknownObjectRetain();
        v26 = v25(v24, v23);
        v27 = swift_getObjectType();
        if (v26 < (*(v17 + 24))(v27, v17))
        {
          swift_unknownObjectRelease();
          v17 = v23;
          v19 = v5 + 5;
          if (v94 != v21)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }

        swift_unknownObjectRelease();
        v22 += 2;
        ++v21;
        if (v98 == v20)
        {
          v18 = v104;
          goto LABEL_27;
        }
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      return;
    }

LABEL_27:
    v23 = v17;
LABEL_28:
    v101 = v23;
  }

  else
  {

    v18 = 0;
    v101 = 0;
  }

  *(v107 + 168) = v18;
  v28 = MEMORY[0x1E69E7CC0];
  if (v96)
  {
    v29 = 0;
    v30 = *(v107 + 64) + 40;
    v99 = v30;
LABEL_31:
    v31 = (v30 + 16 * v29);
    v32 = v29;
    while (v32 < v96)
    {
      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_77;
      }

      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = swift_getObjectType();
      v36 = *(v34 + 48);
      swift_unknownObjectRetain();
      v36(&v108, v35, v34);
      if ((v108 & 1) == 0)
      {
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v28;
        if ((v37 & 1) == 0)
        {
          sub_1A940FCE4(0, v28[2] + 1, 1);
          v28 = v109;
        }

        v39 = v28[2];
        v38 = v28[3];
        if (v39 >= v38 >> 1)
        {
          sub_1A940FCE4((v38 > 1), v39 + 1, 1);
          v28 = v109;
        }

        v28[2] = v39 + 1;
        v40 = &v28[2 * v39];
        v40[4] = v33;
        v40[5] = v34;
        v30 = v99;
        if (v29 != v96)
        {
          goto LABEL_31;
        }

        goto LABEL_42;
      }

      swift_unknownObjectRelease();
      ++v32;
      v31 += 2;
      if (v29 == v96)
      {
        goto LABEL_42;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_42:
  v41 = v28[2];
  if (v41)
  {
    v109 = MEMORY[0x1E69E7CC0];
    sub_1A9530F74(0, v41, 0);
    v42 = v109;
    v43 = v28 + 5;
    v44 = v18;
    do
    {
      v45 = *(v43 - 1);
      v46 = *v43;
      v47 = swift_getObjectType();
      v48 = *(v46 + 24);
      swift_unknownObjectRetain();
      v49 = v48(v47, v46);
      swift_unknownObjectRelease();
      v109 = v42;
      v51 = *(v42 + 16);
      v50 = *(v42 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1A9530F74((v50 > 1), v51 + 1, 1);
        v42 = v109;
      }

      *(v42 + 16) = v51 + 1;
      *(v42 + 8 * v51 + 32) = v49;
      v43 += 2;
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
    v44 = v18;
  }

  v52 = v107;
  *(v107 + 176) = sub_1A9531FE0(v42);

  if (v44)
  {
    swift_unknownObjectRetain();
    v53 = swift_task_alloc();
    *(v107 + 184) = v53;
    *v53 = v107;
    v53[1] = sub_1A9528F60;
    v54 = *(v107 + 72);

    sub_1A9532054(v54, v44, v101);
  }

  else if (*(*(v107 + 176) + 16))
  {

    v55 = swift_task_alloc();
    *(v107 + 192) = v55;
    *v55 = v107;
    v55[1] = sub_1A95294A4;
    v56 = *(v107 + 176);
    v57 = *(v107 + 72);

    sub_1A9532D30(v57, v56);
  }

  else
  {

    v58 = *(v107 + 80);
    v102 = *(v58 + 16);
    if (v102)
    {
      v59 = *(v107 + 144);
      v106 = *(v107 + 136);
      v60 = *(v107 + 128);
      v61 = *(v107 + 104);
      v62 = *(v107 + 72);
      v97 = v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v100 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v95 = *(*(v107 + 120) + 20);
      swift_beginAccess();
      v63 = 0;
      v64 = *(v60 + 72);
      v93 = (v61 + 8);
      v52 = v107;
      do
      {
        v105 = v63;
        sub_1A9530850(v97 + v63 * v64, *(v52 + 144));
        v65 = 0;
        v66 = *(*(v62 + 40) + 16);
        v67 = v100;
        while (v66 != v65)
        {
          v68 = *(v62 + 40);
          if (v65 >= *(v68 + 16))
          {
            __break(1u);
            goto LABEL_74;
          }

          v70 = *(v107 + 136);
          v69 = *(v107 + 144);
          ++v65;
          sub_1A9530850(v68 + v67, v70);
          v71 = *v69;
          v72 = *(v59 + 8);
          v73 = swift_getObjectType();
          v74 = (*(v72 + 24))(v73, v72);
          v75 = *v70;
          v76 = *(v106 + 8);
          v77 = swift_getObjectType();
          v78 = (*(v76 + 24))(v77, v76);
          sub_1A95308B4(v70);
          v67 += v64;
          if (v78 < v74)
          {
            v66 = v65 - 1;
            break;
          }
        }

        v52 = v107;
        v79 = *(v107 + 112);
        v80 = *(v107 + 96);
        *(v107 + 208) = 0;
        sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
        sub_1A957C818();
        (*v93)(v79, v80);
        swift_beginAccess();
        if (*(*(v62 + 40) + 16) < v66)
        {
          goto LABEL_79;
        }

        v81 = *(v107 + 144);
        v82 = *(v107 + 88);
        v63 = v105 + 1;
        v83 = *(v107 + 72);
        sub_1A9530850(v81, v82);
        sub_1A95319C4(v66, v66, v82);
        swift_endAccess();
        sub_1A9526A64();
        sub_1A95308B4(v81);
      }

      while (v105 + 1 != v102);
    }

    if (*(v52 + 209))
    {
      v84 = *(v52 + 72);
      LOBYTE(v109) = 3;
      (*(*v84 + 160))(&v109);
      v85 = swift_task_alloc();
      *(v52 + 200) = v85;
      *v85 = v52;
      v85[1] = sub_1A9529954;
      v86 = *(v52 + 72);

      sub_1A952D6FC();
    }

    else
    {
      v87 = *(v52 + 168);
      v88 = *(v52 + 136);
      v89 = *(v52 + 144);
      v90 = *(v52 + 112);
      v91 = *(v52 + 88);
      swift_unknownObjectRelease();

      v92 = *(v52 + 8);

      v92();
    }
  }
}

uint64_t sub_1A9528F60()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 168);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95290A4, v5, v4);
}

uint64_t sub_1A95290A4()
{
  v48 = v0;
  if (*(*(v0 + 176) + 16))
  {

    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_1A95294A4;
    v2 = *(v0 + 176);
    v3 = *(v0 + 72);

    return sub_1A9532D30(v3, v2);
  }

  v5 = *(v0 + 80);
  v43 = *(v5 + 16);
  if (!v43)
  {
    goto LABEL_14;
  }

  v45 = *(v0 + 136);
  v46 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v41 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v40 = *(*(v0 + 120) + 20);
  swift_beginAccess();
  v9 = 0;
  v10 = *(v6 + 72);
  v39 = (v7 + 8);
  while (2)
  {
    v44 = v9;
    result = sub_1A9530850(v41 + v9 * v10, *(v0 + 144));
    v11 = 0;
    v12 = *(*(v8 + 40) + 16);
    v13 = v42;
    do
    {
      if (v12 == v11)
      {
        goto LABEL_12;
      }

      v14 = *(v8 + 40);
      if (v11 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      ++v11;
      sub_1A9530850(v14 + v13, v16);
      v17 = *v15;
      v18 = *(v46 + 8);
      ObjectType = swift_getObjectType();
      v20 = (*(v18 + 24))(ObjectType, v18);
      v21 = *v16;
      v22 = *(v45 + 8);
      v23 = swift_getObjectType();
      v24 = (*(v22 + 24))(v23, v22);
      result = sub_1A95308B4(v16);
      v13 += v10;
    }

    while (v24 >= v20);
    v12 = v11 - 1;
LABEL_12:
    v25 = *(v0 + 112);
    v26 = *(v0 + 96);
    *(v0 + 208) = 0;
    sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
    sub_1A957C818();
    (*v39)(v25, v26);
    result = swift_beginAccess();
    if (*(*(v8 + 40) + 16) < v12)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v27 = *(v0 + 144);
    v28 = *(v0 + 88);
    v9 = v44 + 1;
    v29 = *(v0 + 72);
    sub_1A9530850(v27, v28);
    sub_1A95319C4(v12, v12, v28);
    swift_endAccess();
    sub_1A9526A64();
    sub_1A95308B4(v27);
    if (v44 + 1 != v43)
    {
      continue;
    }

    break;
  }

LABEL_14:
  if (*(v0 + 209))
  {
    v30 = *(v0 + 72);
    v47 = 3;
    (*(*v30 + 160))(&v47);
    v31 = swift_task_alloc();
    *(v0 + 200) = v31;
    *v31 = v0;
    v31[1] = sub_1A9529954;
    v32 = *(v0 + 72);

    return sub_1A952D6FC();
  }

  else
  {
    v33 = *(v0 + 168);
    v34 = *(v0 + 136);
    v35 = *(v0 + 144);
    v36 = *(v0 + 112);
    v37 = *(v0 + 88);
    swift_unknownObjectRelease();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1A95294A4()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 176);
  v7 = *v0;

  swift_bridgeObjectRelease_n();
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95295EC, v5, v4);
}

uint64_t sub_1A95295EC()
{
  v45 = v0;
  v1 = *(v0 + 80);
  v40 = *(v1 + 16);
  if (v40)
  {
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);
    v2 = *(v0 + 128);
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v38 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v39 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v37 = *(*(v0 + 120) + 20);
    swift_beginAccess();
    v5 = 0;
    v6 = *(v2 + 72);
    v36 = (v3 + 8);
LABEL_3:
    v41 = v5;
    result = sub_1A9530850(v38 + v5 * v6, *(v0 + 144));
    v8 = 0;
    v9 = *(*(v4 + 40) + 16);
    v10 = v39;
    while (1)
    {
      if (v9 == v8)
      {
        goto LABEL_8;
      }

      v11 = *(v4 + 40);
      if (v8 >= *(v11 + 16))
      {
        break;
      }

      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      ++v8;
      sub_1A9530850(v11 + v10, v13);
      v14 = *v12;
      v15 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v17 = (*(v15 + 24))(ObjectType, v15);
      v18 = *v13;
      v19 = *(v42 + 8);
      v20 = swift_getObjectType();
      v21 = (*(v19 + 24))(v20, v19);
      result = sub_1A95308B4(v13);
      v10 += v6;
      if (v21 < v17)
      {
        v9 = v8 - 1;
LABEL_8:
        v22 = *(v0 + 112);
        v23 = *(v0 + 96);
        *(v0 + 208) = 0;
        sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
        sub_1A957C818();
        (*v36)(v22, v23);
        result = swift_beginAccess();
        if (*(*(v4 + 40) + 16) >= v9)
        {
          v24 = *(v0 + 144);
          v25 = *(v0 + 88);
          v5 = v41 + 1;
          v26 = *(v0 + 72);
          sub_1A9530850(v24, v25);
          sub_1A95319C4(v9, v9, v25);
          swift_endAccess();
          sub_1A9526A64();
          sub_1A95308B4(v24);
          if (v41 + 1 != v40)
          {
            goto LABEL_3;
          }

          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (*(v0 + 209))
  {
    v27 = *(v0 + 72);
    v44 = 3;
    (*(*v27 + 160))(&v44);
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_1A9529954;
    v29 = *(v0 + 72);

    return sub_1A952D6FC();
  }

  else
  {
    v30 = *(v0 + 168);
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v33 = *(v0 + 112);
    v34 = *(v0 + 88);
    swift_unknownObjectRelease();

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1A9529954()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A9529A74, v4, v3);
}

uint64_t sub_1A9529A74()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A9529B08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A9528474(v2, v3, v4, v5);
}

uint64_t sub_1A9529BD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A9529C78, v5, v4);
}

uint64_t sub_1A9529C78()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A94054A4;
  v6 = v0[4];

  return sub_1A952C024(&unk_1A9599308, v4);
}