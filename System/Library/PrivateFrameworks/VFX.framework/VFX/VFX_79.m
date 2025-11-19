uint64_t sub_1AF7326B0()
{
  v1[1455] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1323, sub_1AF736498, v1 + 1504);
  }

  else
  {
    v1[1461] = v1[1335];
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 1323, sub_1AF7327BC, v1 + 486);
  }
}

uint64_t sub_1AF7327BC()
{
  v1[1467] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF736B70, 0, 0);
  }

  else
  {
    v1[1473] = v1[1323];
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 1311, sub_1AF7328B8, v1 + 1462);
  }
}

uint64_t sub_1AF7328B8()
{
  v1[1479] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF7372E8, 0, 0);
  }

  else
  {
    v1[1485] = v1[1311];
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 1317, sub_1AF7329B4, v1 + 1408);
  }
}

uint64_t sub_1AF7329B4()
{
  *(v1 + 11928) = v0;
  if (v0)
  {
    v2 = sub_1AF737A6C;
  }

  else
  {
    v2 = sub_1AF732A58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF732A58()
{
  v1 = v0[1485];
  v2 = v0[1473];
  v3 = v0[1461];
  v4 = v0[1377];
  v5 = v0[1317];

  v0[1497] = sub_1AF72F9BC(v4, v3, v2, v1, v5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 1323, sub_1AF732B64, v0 + 606);
}

uint64_t sub_1AF732B64()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF732BF0, 0, 0);
}

uint64_t sub_1AF732BF0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 10680, sub_1AF732C88, v0 + 12224);
}

uint64_t sub_1AF732C88()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF732D14, 0, 0);
}

uint64_t sub_1AF732D14()
{
  v66 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 11976);
  v2 = *(v0 + 11928);
  v3 = *(v0 + 11592);
  v4 = *(v0 + 11544);
  *(v0 + 12344) = 0;
  *(v0 + 12336) = v1;
  *(v0 + 12320) = 0u;
  *(v0 + 12312) = v3;
  *(v0 + 12304) = &unk_1AFE74D98;
  *(v0 + 12296) = v4;
  *(v0 + 12288) = &unk_1AFE74D80;
  *(v0 + 12280) = v2;
  v5 = *(v0 + 11160);
  v6 = *(v0 + 3882);
  v7 = *(v0 + 10968);
  if (*(v0 + 3882))
  {
    v8 = "asyncMakeRenderPipelineRefl";
  }

  else
  {
    v8 = "asyncMakeRenderPipeline";
  }

  if (*(v0 + 3882))
  {
    v9 = 27;
  }

  else
  {
    v9 = 23;
  }

  v10 = sub_1AF899C78();
  sub_1AF744BC0(v8, v9, 2u, v10, v11, v5, v0 + 10136);
  v12 = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  *(v0 + 12352) = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v13 = *(v7 + v12 + 24);
  os_unfair_lock_lock(v13);
  v14 = *(v7 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v14)
  {
    if (v14 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 11016);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1AFDFE218();
      *(v0 + 10472) = 0;
      *(v0 + 10480) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      memcpy((v0 + 7928), v15, 0x1A0uLL);
      sub_1AFDFE458();
      v16 = *(v0 + 10472);
      v17 = *(v0 + 10480);
      v18 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v52 = v18;
        swift_once();
        v18 = v52;
      }

      v63 = 0;
      sub_1AF0D4F18(v18, &v63, v16, v17);
    }

    else
    {
      v19 = *(v0 + 11016);
      *(v0 + 10288) = &type metadata for RenderPipelineDescriptor;
      v20 = swift_allocObject();
      *(v0 + 10264) = v20;
      memcpy((v20 + 16), v19, 0x1A0uLL);
      sub_1AF745F28(v19, v0 + 5848);
      sub_1AF744EE0(v14);
      v14(v0 + 10264);
      sub_1AF744EF4(v14);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 10264);
    }
  }

  v21 = *(v0 + 11064);
  os_unfair_lock_unlock(v13);
  if (!v21)
  {
    if (qword_1ED7247D8 != -1)
    {
      swift_once();
    }

    if (byte_1EB633470 == 1)
    {
      v22 = *(*(v0 + 10968) + 168);
      if (v22 >> 62)
      {
        if (!sub_1AFDFE108())
        {
          goto LABEL_33;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      if (v1)
      {
        v55 = *(v0 + 11304);
        v23 = *(v0 + 11256);
        v24 = *(v0 + 11208);
        v25 = 4;
        if (v6)
        {
          v25 = 7;
        }

        v57 = v25;
        v60 = *(*(v0 + 10968) + 16);
        *(v0 + 3216) = v0;
        *(v0 + 3256) = v0 + 10424;
        *(v0 + 3224) = sub_1AF734A34;
        swift_continuation_init();
        *(v0 + 10064) = v24;
        v26 = sub_1AF585714((v0 + 10040));
        sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
        sub_1AF5C5358(0, &qword_1ED7268D0);
        v27 = v1;
        sub_1AFDFD5C8();
        (*(v23 + 32))(v26, v55, v24);
        *(v0 + 10008) = MEMORY[0x1E69E9820];
        *(v0 + 10016) = 1107296256;
        *(v0 + 10024) = sub_1AF73B984;
        *(v0 + 10032) = &unk_1F2539410;
        [v60 newRenderPipelineStateWithMeshDescriptor:v27 options:v57 completionHandler:?];
        (*(v23 + 8))(v26, v24);
        v28 = v0 + 3216;
        goto LABEL_44;
      }

      if (*(v0 + 11448))
      {
        v29 = *(v0 + 11496);
        swift_unknownObjectRetain();
      }

      else
      {
        v29 = 0;
      }

      sub_1AF74554C();
      v30 = swift_allocError();
      *v31 = 0xD000000000000015;
      *(v31 + 8) = 0x80000001AFF32440;
      *(v31 + 16) = v29;
      *(v31 + 24) = 0;
      swift_willThrow();
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v63 = 542986843;
      v64 = 0xE400000000000000;
      swift_getErrorValue();
      v32 = sub_1AFDFF1D8();
      MEMORY[0x1B2718AE0](v32);

      v34 = v63;
      v33 = v64;
      v35 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v53 = v35;
        swift_once();
        v35 = v53;
      }

      v63 = 0;
      sub_1AF0D4F18(v35, &v63, v34, v33);

      v2 = 0;
    }
  }

LABEL_33:
  *(v0 + 12376) = 0;
  *(v0 + 12368) = v2;
  v36 = *(v0 + 12336);
  if (v36)
  {
    v56 = v0 + 3280;
    v37 = *(v0 + 11304);
    v38 = *(v0 + 11256);
    v39 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v40 = 3;
    }

    else
    {
      v40 = 0;
    }

    v58 = *(*(v0 + 10968) + 16);
    v61 = v40;
    *(v0 + 3280) = v0;
    *(v0 + 3320) = v0 + 10440;
    *(v0 + 3288) = sub_1AF7354EC;
    swift_continuation_init();
    *(v0 + 10128) = v39;
    v41 = sub_1AF585714((v0 + 10104));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v42 = v36;
    sub_1AFDFD5C8();
    (*(v38 + 32))(v41, v37, v39);
    *(v0 + 10072) = MEMORY[0x1E69E9820];
    *(v0 + 10080) = 1107296256;
    *(v0 + 10088) = sub_1AF73B984;
    *(v0 + 10096) = &unk_1F25393E8;
    [v58 newRenderPipelineStateWithMeshDescriptor:v42 options:v61 completionHandler:?];
LABEL_43:
    (*(v38 + 8))(v41, v39);
    v28 = v56;
LABEL_44:

    return MEMORY[0x1EEE6DEC8](v28);
  }

  v43 = *(v0 + 12344);
  if (v43)
  {
    v56 = v0 + 3344;
    v44 = *(v0 + 11304);
    v38 = *(v0 + 11256);
    v39 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v45 = 3;
    }

    else
    {
      v45 = 0;
    }

    v59 = *(*(v0 + 10968) + 16);
    v62 = v45;
    *(v0 + 3344) = v0;
    *(v0 + 3384) = v0 + 10456;
    *(v0 + 3352) = sub_1AF735628;
    swift_continuation_init();
    *(v0 + 10256) = v39;
    v41 = sub_1AF585714((v0 + 10232));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v46 = v43;
    sub_1AFDFD5C8();
    (*(v38 + 32))(v41, v44, v39);
    *(v0 + 10200) = MEMORY[0x1E69E9820];
    *(v0 + 10208) = 1107296256;
    *(v0 + 10216) = sub_1AF73B984;
    *(v0 + 10224) = &unk_1F25393C0;
    [v59 newRenderPipelineStateWithDescriptor:v46 options:v62 completionHandler:?];
    goto LABEL_43;
  }

  if (*(v0 + 11448))
  {
    v47 = *(v0 + 11496);
    swift_unknownObjectRetain();
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v0 + 10968);
  v49 = v48 + *(v0 + 12352);
  sub_1AF74554C();
  *(v0 + 12408) = swift_allocError();
  *v50 = 0xD000000000000015;
  *(v50 + 8) = 0x80000001AFF32440;
  *(v50 + 16) = v47;
  *(v50 + 24) = 0;
  swift_willThrow();
  v51 = *(v49 + 24);
  os_unfair_lock_lock(v51);
  sub_1AF73FAD8(v48 + 112);
  os_unfair_lock_unlock(v51);
  sub_1AF744F08(v0 + 10136);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF735D5C, v0 + 5808);
}

uint64_t sub_1AF733880()
{
  v1[1509] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 242, v1 + 1329, sub_1AF738204, v1 + 1456);
  }

  else
  {
    v1[1515] = v1[1329];
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 1311, sub_1AF733988, v1 + 1366);
  }
}

uint64_t sub_1AF733988()
{
  v1[1521] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF7387A4, 0, 0);
  }

  else
  {
    v1[1527] = v1[1311];
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 1317, sub_1AF733A84, v1 + 1318);
  }
}

uint64_t sub_1AF733A84()
{
  *(v1 + 12264) = v0;
  if (v0)
  {
    v2 = sub_1AF738DE4;
  }

  else
  {
    v2 = sub_1AF733B28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF733B28()
{
  v1 = v0[1527];
  v2 = v0[1515];
  v3 = v0[1377];
  v4 = v0[1317];

  v0[1534] = sub_1AF72F088(v3, v2, v1, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 242, v0 + 1329, sub_1AF733C1C, v0 + 546);
}

uint64_t sub_1AF733C1C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF733CA8, 0, 0);
}

uint64_t sub_1AF733CA8()
{
  v95 = v0;
  v94 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12272);
  v2 = *(v0 + 12264);
  v3 = *(v0 + 12024);
  *(v0 + 12344) = v1;
  *(v0 + 12336) = 0;
  *(v0 + 12328) = v3;
  *(v0 + 12320) = &unk_1AFE74D68;
  *(v0 + 12288) = 0u;
  *(v0 + 12304) = 0u;
  *(v0 + 12280) = v2;
  v4 = *(v0 + 11160);
  v5 = *(v0 + 3882);
  v6 = *(v0 + 10968);
  if (*(v0 + 3882))
  {
    v7 = "asyncMakeRenderPipelineRefl";
  }

  else
  {
    v7 = "asyncMakeRenderPipeline";
  }

  if (*(v0 + 3882))
  {
    v8 = 27;
  }

  else
  {
    v8 = 23;
  }

  v9 = sub_1AF899C78();
  sub_1AF744BC0(v7, v8, 2u, v9, v10, v4, v0 + 10136);
  v11 = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  *(v0 + 12352) = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v12 = *(v6 + v11 + 24);
  os_unfair_lock_lock(v12);
  v13 = *(v6 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v13)
  {
    if (v13 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 11016);
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1AFDFE218();
      *(v0 + 10472) = 0;
      *(v0 + 10480) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      memcpy((v0 + 7928), v14, 0x1A0uLL);
      sub_1AFDFE458();
      v15 = *(v0 + 10472);
      v16 = *(v0 + 10480);
      v17 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v64 = v17;
        swift_once();
        v17 = v64;
      }

      v92 = 0;
      sub_1AF0D4F18(v17, &v92, v15, v16);
    }

    else
    {
      v18 = *(v0 + 11016);
      *(v0 + 10288) = &type metadata for RenderPipelineDescriptor;
      v19 = swift_allocObject();
      *(v0 + 10264) = v19;
      memcpy((v19 + 16), v18, 0x1A0uLL);
      sub_1AF745F28(v18, v0 + 5848);
      sub_1AF744EE0(v13);
      v13(v0 + 10264);
      sub_1AF744EF4(v13);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 10264);
    }
  }

  v20 = *(v0 + 11064);
  os_unfair_lock_unlock(v12);
  if (v20)
  {
    goto LABEL_55;
  }

  if (qword_1ED7247D8 != -1)
  {
    swift_once();
  }

  if (byte_1EB633470 != 1)
  {
    goto LABEL_55;
  }

  v21 = *(*(v0 + 10968) + 168);
  if (v21 >> 62)
  {
    if (sub_1AFDFE108())
    {
      goto LABEL_21;
    }

LABEL_55:
    v27 = 0;
    goto LABEL_56;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

LABEL_21:
  if (v1)
  {
    v22 = *(*(v0 + 10968) + 16);
    if (v5)
    {
      v23 = 7;
    }

    else
    {
      v23 = 4;
    }

    *(v0 + 10776) = 0;
    *(v0 + 10728) = 0;
    v24 = v1;
    v25 = [v22 newRenderPipelineStateWithDescriptor:v24 options:v23 reflection:v0 + 10776 error:v0 + 10728];
    v26 = *(v0 + 10728);
    v27 = *(v0 + 10776);
    if (v25)
    {
      v28 = *(v0 + 3881);
      v29 = v26;
      v30 = v27;
      sub_1AF73BC10(v24, v28, 0, &OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines, sub_1AF70D78C, &selRef_addRenderPipelineFunctionsWithDescriptor_error_);

      if (!v2)
      {
        goto LABEL_38;
      }

      v31 = v2;
    }

    else
    {
      v33 = v26;
      v34 = v27;
      v31 = sub_1AFDFBF58();

      swift_willThrow();
    }
  }

  else
  {
    if (*(v0 + 11448))
    {
      v32 = *(v0 + 11496);
      swift_unknownObjectRetain();
    }

    else
    {
      v32 = 0;
    }

    sub_1AF74554C();
    v31 = swift_allocError();
    *v35 = 0xD000000000000015;
    *(v35 + 8) = 0x80000001AFF32440;
    *(v35 + 16) = v32;
    *(v35 + 24) = 0;
    swift_willThrow();
    v25 = 0;
    v27 = 0;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v92 = 542986843;
  v93 = 0xE400000000000000;
  swift_getErrorValue();
  v36 = sub_1AFDFF1D8();
  MEMORY[0x1B2718AE0](v36);

  v38 = v92;
  v37 = v93;
  v39 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v81 = v39;
    swift_once();
    v39 = v81;
  }

  v92 = 0;
  sub_1AF0D4F18(v39, &v92, v38, v37);

  if (v25)
  {
LABEL_38:
    swift_unknownObjectRetain();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v89 = v25;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1AFDFE218();

    v92 = 0x6E756F46205D525BLL;
    v93 = 0xEA00000000002064;
    v40 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v40);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v42 = v92;
    v41 = v93;
    v43 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v82 = v43;
      swift_once();
      v43 = v82;
    }

    v92 = 0;
    sub_1AF0D4F18(v43, &v92, v42, v41);

    v44 = *(v0 + 10968);
    lock = *(v44 + *(v0 + 12352) + 24);
    os_unfair_lock_lock(lock);
    v45 = 0;
    v46 = *(v44 + 48);
    v47 = -1;
    v48 = -1 << *(v46 + 32);
    if (-v48 < 64)
    {
      v47 = ~(-1 << -v48);
    }

    v49 = v47 & *(v46 + 64);
    v50 = (63 - v48) >> 6;
    while (v49)
    {
LABEL_50:
      memmove((v0 + 4408), (*(v46 + 56) + 440 * (__clz(__rbit64(v49)) | (v45 << 6))), 0x1B1uLL);
      if (sub_1AF745F90(v0 + 4408) == 1)
      {
        nullsub_106();
      }

      v49 &= v49 - 1;
    }

    while (1)
    {
      v51 = v45 + 1;
      if (v45 + 1 >= v50)
      {
        break;
      }

      v49 = *(v46 + 72 + 8 * v45++);
      if (v49)
      {
        v45 = v51;
        goto LABEL_50;
      }
    }

    v85 = *(v0 + 12344);
    v52 = *(v0 + 12336);
    v53 = *(v0 + 11160);
    v54 = *(v0 + 11016);
    v55 = *(v0 + 10968);
    v56 = v55 + *(v0 + 12352);
    memcpy((v0 + 4896), (v0 + 8760), 0x1A0uLL);
    *(v0 + 4888) = v89;
    *(v0 + 5312) = v27;
    sub_1AF745F98(v0 + 4888);
    memcpy((v0 + 3928), (v0 + 4888), 0x1B1uLL);
    sub_1AF745F28(v54, v0 + 9176);
    v57 = v27;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v44 + 48);
    *(v44 + 48) = 0x8000000000000000;
    sub_1AF854898((v0 + 3928), v53, isUniquelyReferenced_nonNull_native);
    *(v44 + 48) = v92;
    os_unfair_lock_unlock(lock);
    swift_unknownObjectRelease_n();

    v59 = *(v56 + 24);
    os_unfair_lock_lock(v59);
    sub_1AF73FAD8(v55 + 112);
    os_unfair_lock_unlock(v59);

    sub_1AF744F08(v0 + 10136);
    v60 = sub_1AF7361DC;
    v61 = v0 + 16;
    v62 = v0 + 10536;
    v63 = v0 + 3408;
    goto LABEL_73;
  }

  v2 = 0;
LABEL_56:
  *(v0 + 12376) = v27;
  *(v0 + 12368) = v2;
  v65 = *(v0 + 12336);
  if (v65)
  {
    v84 = v0 + 3280;
    v66 = *(v0 + 11304);
    v67 = *(v0 + 11256);
    v68 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v69 = 3;
    }

    else
    {
      v69 = 0;
    }

    locka = *(*(v0 + 10968) + 16);
    v90 = v69;
    *(v0 + 3280) = v0;
    *(v0 + 3320) = v0 + 10440;
    *(v0 + 3288) = sub_1AF7354EC;
    swift_continuation_init();
    *(v0 + 10128) = v68;
    v70 = sub_1AF585714((v0 + 10104));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v71 = v65;
    sub_1AFDFD5C8();
    (*(v67 + 32))(v70, v66, v68);
    *(v0 + 10072) = MEMORY[0x1E69E9820];
    *(v0 + 10080) = 1107296256;
    *(v0 + 10088) = sub_1AF73B984;
    *(v0 + 10096) = &unk_1F25393E8;
    [(os_unfair_lock_s *)locka newRenderPipelineStateWithMeshDescriptor:v71 options:v90 completionHandler:?];
  }

  else
  {
    v72 = *(v0 + 12344);
    if (!v72)
    {
      if (*(v0 + 11448))
      {
        v76 = *(v0 + 11496);
        swift_unknownObjectRetain();
      }

      else
      {
        v76 = 0;
      }

      v77 = *(v0 + 10968);
      v78 = v77 + *(v0 + 12352);
      sub_1AF74554C();
      *(v0 + 12408) = swift_allocError();
      *v79 = 0xD000000000000015;
      *(v79 + 8) = 0x80000001AFF32440;
      *(v79 + 16) = v76;
      *(v79 + 24) = 0;
      swift_willThrow();

      v80 = *(v78 + 24);
      os_unfair_lock_lock(v80);
      sub_1AF73FAD8(v77 + 112);
      os_unfair_lock_unlock(v80);
      sub_1AF744F08(v0 + 10136);
      v60 = sub_1AF735D5C;
      v61 = v0 + 16;
      v62 = v0 + 10536;
      v63 = v0 + 5808;
LABEL_73:

      return MEMORY[0x1EEE6DEB0](v61, v62, v60, v63);
    }

    v84 = v0 + 3344;
    v73 = *(v0 + 11304);
    v67 = *(v0 + 11256);
    v68 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v74 = 3;
    }

    else
    {
      v74 = 0;
    }

    lockb = *(*(v0 + 10968) + 16);
    v91 = v74;
    *(v0 + 3344) = v0;
    *(v0 + 3384) = v0 + 10456;
    *(v0 + 3352) = sub_1AF735628;
    swift_continuation_init();
    *(v0 + 10256) = v68;
    v70 = sub_1AF585714((v0 + 10232));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v75 = v72;
    sub_1AFDFD5C8();
    (*(v67 + 32))(v70, v73, v68);
    *(v0 + 10200) = MEMORY[0x1E69E9820];
    *(v0 + 10208) = 1107296256;
    *(v0 + 10216) = sub_1AF73B984;
    *(v0 + 10224) = &unk_1F25393C0;
    [(os_unfair_lock_s *)lockb newRenderPipelineStateWithDescriptor:v75 options:v91 completionHandler:?];
  }

  (*(v67 + 8))(v70, v68);

  return MEMORY[0x1EEE6DEC8](v84);
}

uint64_t sub_1AF734A34()
{
  v1 = *(*v0 + 3248);
  *(*v0 + 12360) = v1;
  if (v1)
  {
    v2 = sub_1AF739430;
  }

  else
  {
    v2 = sub_1AF734B70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF734B70()
{
  v60 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12280);
  v2 = *(v0 + 10424);
  v54 = *(v0 + 10432);
  sub_1AF73BC10(*(v0 + 12336), *(v0 + 3881), 0, &OBJC_IVAR____TtC3VFX13ShaderArchive_meshRenderPipelines, sub_1AF70E15C, &selRef_addMeshRenderPipelineFunctionsWithDescriptor_error_);

  if (!v1)
  {
    goto LABEL_7;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v58 = 0xE400000000000000;
  swift_getErrorValue();
  v3 = sub_1AFDFF1D8();
  MEMORY[0x1B2718AE0](v3);

  v4 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v46 = v4;
    swift_once();
    v4 = v46;
  }

  v57 = 0;
  sub_1AF0D4F18(v4, &v57, 542986843, 0xE400000000000000);

  if (v2)
  {
LABEL_7:
    swift_unknownObjectRetain();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v51 = v2;
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1AFDFE218();

    v57 = 0x6E756F46205D525BLL;
    v58 = 0xEA00000000002064;
    v5 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v7 = v57;
    v6 = v58;
    v8 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v45 = v8;
      swift_once();
      v8 = v45;
    }

    v57 = 0;
    sub_1AF0D4F18(v8, &v57, v7, v6);

    v9 = *(v0 + 10968);
    lock = *(v9 + *(v0 + 12352) + 24);
    os_unfair_lock_lock(lock);
    v10 = 0;
    v11 = *(v9 + 48);
    v12 = -1;
    v13 = -1 << *(v11 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v11 + 64);
    v15 = (63 - v13) >> 6;
    while (v14)
    {
LABEL_19:
      memmove((v0 + 4408), (*(v11 + 56) + 440 * (__clz(__rbit64(v14)) | (v10 << 6))), 0x1B1uLL);
      if (sub_1AF745F90(v0 + 4408) == 1)
      {
        nullsub_106();
      }

      v14 &= v14 - 1;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (v10 + 1 >= v15)
      {
        break;
      }

      v14 = *(v11 + 72 + 8 * v10++);
      if (v14)
      {
        v10 = v16;
        goto LABEL_19;
      }
    }

    v48 = *(v0 + 12344);
    v17 = *(v0 + 12336);
    v18 = *(v0 + 11160);
    v19 = *(v0 + 11016);
    v20 = *(v0 + 10968);
    v21 = v20 + *(v0 + 12352);
    memcpy((v0 + 4896), (v0 + 8760), 0x1A0uLL);
    *(v0 + 4888) = v51;
    *(v0 + 5312) = v54;
    sub_1AF745F98(v0 + 4888);
    memcpy((v0 + 3928), (v0 + 4888), 0x1B1uLL);
    sub_1AF745F28(v19, v0 + 9176);
    v22 = v54;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v9 + 48);
    *(v9 + 48) = 0x8000000000000000;
    sub_1AF854898((v0 + 3928), v18, isUniquelyReferenced_nonNull_native);
    *(v9 + 48) = v57;
    os_unfair_lock_unlock(lock);
    swift_unknownObjectRelease_n();

    v24 = *(v21 + 24);
    os_unfair_lock_lock(v24);
    sub_1AF73FAD8(v20 + 112);
    os_unfair_lock_unlock(v24);

    sub_1AF744F08(v0 + 10136);
    v25 = sub_1AF7361DC;
    v26 = v0 + 16;
    v27 = v0 + 10536;
    v28 = v0 + 3408;
    goto LABEL_22;
  }

  *(v0 + 12376) = v54;
  *(v0 + 12368) = 0;
  v29 = *(v0 + 12336);
  if (v29)
  {
    v49 = v0 + 3280;
    v30 = *(v0 + 11304);
    v31 = *(v0 + 11256);
    v32 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v33 = 3;
    }

    else
    {
      v33 = 0;
    }

    v52 = *(*(v0 + 10968) + 16);
    v55 = v33;
    *(v0 + 3280) = v0;
    *(v0 + 3320) = v0 + 10440;
    *(v0 + 3288) = sub_1AF7354EC;
    swift_continuation_init();
    *(v0 + 10128) = v32;
    v34 = sub_1AF585714((v0 + 10104));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v35 = v29;
    sub_1AFDFD5C8();
    (*(v31 + 32))(v34, v30, v32);
    *(v0 + 10072) = MEMORY[0x1E69E9820];
    *(v0 + 10080) = 1107296256;
    *(v0 + 10088) = sub_1AF73B984;
    *(v0 + 10096) = &unk_1F25393E8;
    [v52 newRenderPipelineStateWithMeshDescriptor:v35 options:v55 completionHandler:?];
  }

  else
  {
    v36 = *(v0 + 12344);
    if (!v36)
    {
      if (*(v0 + 11448))
      {
        v40 = *(v0 + 11496);
        swift_unknownObjectRetain();
      }

      else
      {
        v40 = 0;
      }

      v41 = *(v0 + 10968);
      v42 = v41 + *(v0 + 12352);
      sub_1AF74554C();
      *(v0 + 12408) = swift_allocError();
      *v43 = 0xD000000000000015;
      *(v43 + 8) = 0x80000001AFF32440;
      *(v43 + 16) = v40;
      *(v43 + 24) = 0;
      swift_willThrow();

      v44 = *(v42 + 24);
      os_unfair_lock_lock(v44);
      sub_1AF73FAD8(v41 + 112);
      os_unfair_lock_unlock(v44);
      sub_1AF744F08(v0 + 10136);
      v25 = sub_1AF735D5C;
      v26 = v0 + 16;
      v27 = v0 + 10536;
      v28 = v0 + 5808;
LABEL_22:

      return MEMORY[0x1EEE6DEB0](v26, v27, v25, v28);
    }

    v49 = v0 + 3344;
    v37 = *(v0 + 11304);
    v31 = *(v0 + 11256);
    v32 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v38 = 3;
    }

    else
    {
      v38 = 0;
    }

    v53 = *(*(v0 + 10968) + 16);
    v56 = v38;
    *(v0 + 3344) = v0;
    *(v0 + 3384) = v0 + 10456;
    *(v0 + 3352) = sub_1AF735628;
    swift_continuation_init();
    *(v0 + 10256) = v32;
    v34 = sub_1AF585714((v0 + 10232));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v39 = v36;
    sub_1AFDFD5C8();
    (*(v31 + 32))(v34, v37, v32);
    *(v0 + 10200) = MEMORY[0x1E69E9820];
    *(v0 + 10208) = 1107296256;
    *(v0 + 10216) = sub_1AF73B984;
    *(v0 + 10224) = &unk_1F25393C0;
    [v53 newRenderPipelineStateWithDescriptor:v39 options:v56 completionHandler:?];
  }

  (*(v31 + 8))(v34, v32);

  return MEMORY[0x1EEE6DEC8](v49);
}

uint64_t sub_1AF7354EC()
{
  v1 = *(*v0 + 3312);
  *(*v0 + 12384) = v1;
  if (v1)
  {
    v2 = sub_1AF739A48;
  }

  else
  {
    v2 = sub_1AF735764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF735628()
{
  v1 = *(*v0 + 3376);
  *(*v0 + 12392) = v1;
  if (v1)
  {
    v2 = sub_1AF739FD4;
  }

  else
  {
    v2 = sub_1AF7359F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF735764()
{
  v1 = *(v0 + 12376);

  v2 = *(v0 + 10440);
  v22 = *(v0 + 10448);

  v3 = *(v0 + 10968);
  v23 = *(v3 + *(v0 + 12352) + 24);
  os_unfair_lock_lock(v23);
  v4 = 0;
  v5 = *(v3 + 48);
  v6 = -1;
  v7 = -1 << *(v5 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v5 + 64);
  v9 = (63 - v7) >> 6;
  while (v8)
  {
LABEL_8:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    memmove((v0 + 4408), (*(v5 + 56) + 440 * (v11 | (v4 << 6))), 0x1B1uLL);
    if (sub_1AF745F90(v0 + 4408) == 1)
    {
      nullsub_106();
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (v4 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v4++);
    if (v8)
    {
      v4 = v10;
      goto LABEL_8;
    }
  }

  v21 = *(v0 + 12344);
  v12 = *(v0 + 12336);
  v13 = *(v0 + 11160);
  v14 = *(v0 + 11016);
  v15 = *(v0 + 10968);
  v16 = v15 + *(v0 + 12352);
  memcpy((v0 + 4896), (v0 + 8760), 0x1A0uLL);
  *(v0 + 4888) = v2;
  *(v0 + 5312) = v22;
  sub_1AF745F98(v0 + 4888);
  memcpy((v0 + 3928), (v0 + 4888), 0x1B1uLL);
  sub_1AF745F28(v14, v0 + 9176);
  v17 = v22;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3928), v13, isUniquelyReferenced_nonNull_native);
  *(v3 + 48) = v24;
  os_unfair_lock_unlock(v23);
  swift_unknownObjectRelease();

  v19 = *(v16 + 24);
  os_unfair_lock_lock(v19);
  sub_1AF73FAD8(v15 + 112);
  os_unfair_lock_unlock(v19);

  sub_1AF744F08(v0 + 10136);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF7361DC, v0 + 3408);
}

uint64_t sub_1AF7359F4()
{
  v1 = *(v0 + 12368);
  v2 = *(v0 + 12344);
  v3 = *(v0 + 11064);
  v4 = *(v0 + 3881);
  v5 = *(v0 + 10456);
  v6 = *(v0 + 10464);

  sub_1AF73BC10(v2, v4, v3, &OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines, sub_1AF70D78C, &selRef_addRenderPipelineFunctionsWithDescriptor_error_);
  *(v0 + 12400) = v1;
  if (v1)
  {
    v7 = *(v0 + 12352);
    v8 = *(v0 + 12344);
    v9 = *(v0 + 10968);
    swift_unknownObjectRelease();

    v10 = *(v9 + v7 + 24);
    os_unfair_lock_lock(v10);
    sub_1AF73FAD8(v9 + 112);
    os_unfair_lock_unlock(v10);

    sub_1AF744F08(v0 + 10136);
    v11 = sub_1AF73A558;
    v12 = v0 + 16;
    v13 = v0 + 10536;
    v14 = v0 + 10688;
  }

  else
  {

    v15 = *(v0 + 10968);
    v33 = *(v15 + *(v0 + 12352) + 24);
    os_unfair_lock_lock(v33);
    v16 = 0;
    v17 = *(v15 + 48);
    v18 = -1;
    v19 = -1 << *(v17 + 32);
    if (-v19 < 64)
    {
      v18 = ~(-1 << -v19);
    }

    v20 = v18 & *(v17 + 64);
    v21 = (63 - v19) >> 6;
    while (v20)
    {
LABEL_11:
      memmove((v0 + 4408), (*(v17 + 56) + 440 * (__clz(__rbit64(v20)) | (v16 << 6))), 0x1B1uLL);
      if (sub_1AF745F90(v0 + 4408) == 1)
      {
        nullsub_106();
      }

      v20 &= v20 - 1;
    }

    while (1)
    {
      v22 = v16 + 1;
      if (v16 + 1 >= v21)
      {
        break;
      }

      v20 = *(v17 + 72 + 8 * v16++);
      if (v20)
      {
        v16 = v22;
        goto LABEL_11;
      }
    }

    v32 = *(v0 + 12344);
    v23 = *(v0 + 12336);
    v24 = *(v0 + 11160);
    v25 = *(v0 + 11016);
    v26 = *(v0 + 10968);
    v27 = v26 + *(v0 + 12352);
    memcpy((v0 + 4896), (v0 + 8760), 0x1A0uLL);
    *(v0 + 4888) = v5;
    *(v0 + 5312) = v6;
    sub_1AF745F98(v0 + 4888);
    memcpy((v0 + 3928), (v0 + 4888), 0x1B1uLL);
    sub_1AF745F28(v25, v0 + 9176);
    v28 = v6;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v15 + 48);
    *(v15 + 48) = 0x8000000000000000;
    sub_1AF854898((v0 + 3928), v24, isUniquelyReferenced_nonNull_native);
    *(v15 + 48) = v34;
    os_unfair_lock_unlock(v33);
    swift_unknownObjectRelease();

    v30 = *(v27 + 24);
    os_unfair_lock_lock(v30);
    sub_1AF73FAD8(v26 + 112);
    os_unfair_lock_unlock(v30);

    sub_1AF744F08(v0 + 10136);
    v11 = sub_1AF7361DC;
    v12 = v0 + 16;
    v13 = v0 + 10536;
    v14 = v0 + 3408;
  }

  return MEMORY[0x1EEE6DEB0](v12, v13, v11, v14);
}

uint64_t sub_1AF735D5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF735DE8, 0, 0);
}

uint64_t sub_1AF735DE8()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF735E80, v0 + 10320);
}

uint64_t sub_1AF735E80()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF735F0C, 0, 0);
}

uint64_t sub_1AF735F0C()
{
  v15 = v0;
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12408);
  v13 = *(v0 + 12320);
  v12 = *(v0 + 12304);
  v2 = *(v0 + 12288);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v3 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 11160);
  v5 = *(v0 + 10968);
  v14[0] = 0;
  sub_1AF0D4F18(v3, v14, 0, 0xE000000000000000);

  v6 = *(v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v6);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v4, isUniquelyReferenced_nonNull_native);
  *(v5 + 48) = v14[0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 72);
  *(v5 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v4, v9);
  *(v5 + 72) = v14[0];

  os_unfair_lock_unlock(v6);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(v2);
  sub_1AF0FB8EC(v12);
  sub_1AF0FB8EC(v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1AF7361DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736268, 0, 0);
}

uint64_t sub_1AF736268()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF736300, v0 + 10976);
}

uint64_t sub_1AF736300()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73638C, 0, 0);
}

uint64_t sub_1AF73638C()
{
  v1 = *(v0 + 12320);
  v2 = *(v0 + 12304);
  v3 = *(v0 + 12288);
  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(v3);
  sub_1AF0FB8EC(v2);
  sub_1AF0FB8EC(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AF736498()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736524, 0, 0);
}

uint64_t sub_1AF736524()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 10680, sub_1AF7365BC, v0 + 12080);
}

uint64_t sub_1AF7365BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736648, 0, 0);
}

uint64_t sub_1AF736648()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF7366E0, v0 + 12128);
}

uint64_t sub_1AF7366E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73676C, 0, 0);
}

uint64_t sub_1AF73676C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF736804, v0 + 12176);
}

uint64_t sub_1AF736804()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736890, 0, 0);
}

uint64_t sub_1AF736890()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 11640);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(&unk_1AFE74D80);
  sub_1AF0FB8EC(&unk_1AFE74D98);
  sub_1AF0FB8EC(0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF736B70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 10584, sub_1AF736C10, v0 + 11936);
}

uint64_t sub_1AF736C10()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736C9C, 0, 0);
}

uint64_t sub_1AF736C9C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 10680, sub_1AF736D34, v0 + 11888);
}

uint64_t sub_1AF736D34()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736DC0, 0, 0);
}

uint64_t sub_1AF736DC0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF736E58, v0 + 11840);
}

uint64_t sub_1AF736E58()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF736EE4, 0, 0);
}

uint64_t sub_1AF736EE4()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF736F7C, v0 + 11792);
}

uint64_t sub_1AF736F7C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737008, 0, 0);
}

uint64_t sub_1AF737008()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 11736);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(&unk_1AFE74D80);
  sub_1AF0FB8EC(&unk_1AFE74D98);
  sub_1AF0FB8EC(0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF7372E8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 10584, sub_1AF737394, v0 + 11456);
}

uint64_t sub_1AF737394()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737420, 0, 0);
}

uint64_t sub_1AF737420()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 10680, sub_1AF7374B8, v0 + 11408);
}

uint64_t sub_1AF7374B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737544, 0, 0);
}

uint64_t sub_1AF737544()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF7375DC, v0 + 11360);
}

uint64_t sub_1AF7375DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737668, 0, 0);
}

uint64_t sub_1AF737668()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF737700, v0 + 11312);
}

uint64_t sub_1AF737700()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73778C, 0, 0);
}

uint64_t sub_1AF73778C()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 11832);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(&unk_1AFE74D80);
  sub_1AF0FB8EC(&unk_1AFE74D98);
  sub_1AF0FB8EC(0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF737A6C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 10584, sub_1AF737B2C, v0 + 11120);
}

uint64_t sub_1AF737B2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737BB8, 0, 0);
}

uint64_t sub_1AF737BB8()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 10680, sub_1AF737C50, v0 + 11072);
}

uint64_t sub_1AF737C50()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737CDC, 0, 0);
}

uint64_t sub_1AF737CDC()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF737D74, v0 + 11024);
}

uint64_t sub_1AF737D74()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737E00, 0, 0);
}

uint64_t sub_1AF737E00()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF737E98, v0 + 10384);
}

uint64_t sub_1AF737E98()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF737F24, 0, 0);
}

uint64_t sub_1AF737F24()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 11928);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(&unk_1AFE74D80);
  sub_1AF0FB8EC(&unk_1AFE74D98);
  sub_1AF0FB8EC(0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF738204()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF738290, 0, 0);
}

uint64_t sub_1AF738290()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF738328, v0 + 11552);
}

uint64_t sub_1AF738328()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF7383B4, 0, 0);
}

uint64_t sub_1AF7383B4()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF73844C, v0 + 11504);
}

uint64_t sub_1AF73844C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF7384D8, 0, 0);
}

uint64_t sub_1AF7384D8()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12072);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(&unk_1AFE74D68);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF7387A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 1936, v0 + 10632, sub_1AF738844, v0 + 10880);
}

uint64_t sub_1AF738844()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF7388D0, 0, 0);
}

uint64_t sub_1AF7388D0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF738968, v0 + 10832);
}

uint64_t sub_1AF738968()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF7389F4, 0, 0);
}

uint64_t sub_1AF7389F4()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF738A8C, v0 + 10784);
}

uint64_t sub_1AF738A8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF738B18, 0, 0);
}

uint64_t sub_1AF738B18()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12168);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(&unk_1AFE74D68);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF738DE4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 1936, v0 + 10632, sub_1AF738E90, v0 + 10496);
}

uint64_t sub_1AF738E90()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF738F1C, 0, 0);
}

uint64_t sub_1AF738F1C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF738FB4, v0 + 5328);
}

uint64_t sub_1AF738FB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF739040, 0, 0);
}

uint64_t sub_1AF739040()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF7390D8, v0 + 11600);
}

uint64_t sub_1AF7390D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF739164, 0, 0);
}

uint64_t sub_1AF739164()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12264);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 11160);
  v4 = *(v0 + 10968);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 48) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(0);
  sub_1AF0FB8EC(&unk_1AFE74D68);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF739430()
{
  v29 = v0;
  v28[3] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12336);
  swift_willThrow();

  v2 = *(v0 + 12360);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v28[1] = 0xE400000000000000;
  swift_getErrorValue();
  v3 = sub_1AFDFF1D8();
  MEMORY[0x1B2718AE0](v3);

  v4 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v21 = v4;
    swift_once();
    v4 = v21;
  }

  v28[0] = 0;
  sub_1AF0D4F18(v4, v28, 542986843, 0xE400000000000000);

  *(v0 + 12368) = 0u;
  v5 = *(v0 + 12336);
  if (v5)
  {
    v23 = v0 + 3280;
    v6 = *(v0 + 11304);
    v7 = *(v0 + 11256);
    v8 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    v24 = *(*(v0 + 10968) + 16);
    v26 = v9;
    *(v0 + 3280) = v0;
    *(v0 + 3320) = v0 + 10440;
    *(v0 + 3288) = sub_1AF7354EC;
    swift_continuation_init();
    *(v0 + 10128) = v8;
    v10 = sub_1AF585714((v0 + 10104));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v11 = v5;
    sub_1AFDFD5C8();
    (*(v7 + 32))(v10, v6, v8);
    *(v0 + 10072) = MEMORY[0x1E69E9820];
    *(v0 + 10080) = 1107296256;
    *(v0 + 10088) = sub_1AF73B984;
    *(v0 + 10096) = &unk_1F25393E8;
    [v24 newRenderPipelineStateWithMeshDescriptor:v11 options:v26 completionHandler:?];
LABEL_15:
    (*(v7 + 8))(v10, v8);

    return MEMORY[0x1EEE6DEC8](v23);
  }

  v12 = *(v0 + 12344);
  if (v12)
  {
    v23 = v0 + 3344;
    v13 = *(v0 + 11304);
    v7 = *(v0 + 11256);
    v8 = *(v0 + 11208);
    if (*(v0 + 3882))
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    v25 = *(*(v0 + 10968) + 16);
    v27 = v14;
    *(v0 + 3344) = v0;
    *(v0 + 3384) = v0 + 10456;
    *(v0 + 3352) = sub_1AF735628;
    swift_continuation_init();
    *(v0 + 10256) = v8;
    v10 = sub_1AF585714((v0 + 10232));
    sub_1AF7461A8(0, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    v15 = v12;
    sub_1AFDFD5C8();
    (*(v7 + 32))(v10, v13, v8);
    *(v0 + 10200) = MEMORY[0x1E69E9820];
    *(v0 + 10208) = 1107296256;
    *(v0 + 10216) = sub_1AF73B984;
    *(v0 + 10224) = &unk_1F25393C0;
    [v25 newRenderPipelineStateWithDescriptor:v15 options:v27 completionHandler:?];
    goto LABEL_15;
  }

  if (*(v0 + 11448))
  {
    v16 = *(v0 + 11496);
    swift_unknownObjectRetain();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 10968);
  v18 = v17 + *(v0 + 12352);
  sub_1AF74554C();
  *(v0 + 12408) = swift_allocError();
  *v19 = 0xD000000000000015;
  *(v19 + 8) = 0x80000001AFF32440;
  *(v19 + 16) = v16;
  *(v19 + 24) = 0;
  swift_willThrow();
  v20 = *(v18 + 24);
  os_unfair_lock_lock(v20);
  sub_1AF73FAD8(v17 + 112);
  os_unfair_lock_unlock(v20);
  sub_1AF744F08(v0 + 10136);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 10536, sub_1AF735D5C, v0 + 5808);
}

uint64_t sub_1AF739A48()
{
  v1 = v0[1547];
  v2 = v0[1543];
  v3 = v0[1542];
  v4 = v0[1371];
  v5 = v4 + v0[1544];
  swift_willThrow();

  v6 = *(v5 + 24);
  os_unfair_lock_lock(v6);
  sub_1AF73FAD8(v4 + 112);
  os_unfair_lock_unlock(v6);

  sub_1AF744F08((v0 + 1267));

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 1317, sub_1AF739B54, v0 + 1396);
}

uint64_t sub_1AF739B54()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF739BE0, 0, 0);
}

uint64_t sub_1AF739BE0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF739C78, v0 + 11216);
}

uint64_t sub_1AF739C78()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF739D04, 0, 0);
}

uint64_t sub_1AF739D04()
{
  v15 = v0;
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12384);
  v13 = *(v0 + 12320);
  v12 = *(v0 + 12304);
  v2 = *(v0 + 12288);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v3 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 11160);
  v5 = *(v0 + 10968);
  v14[0] = 0;
  sub_1AF0D4F18(v3, v14, 0, 0xE000000000000000);

  v6 = *(v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v6);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v4, isUniquelyReferenced_nonNull_native);
  *(v5 + 48) = v14[0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 72);
  *(v5 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v4, v9);
  *(v5 + 72) = v14[0];

  os_unfair_lock_unlock(v6);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(v2);
  sub_1AF0FB8EC(v12);
  sub_1AF0FB8EC(v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1AF739FD4()
{
  v1 = v0[1547];
  v2 = v0[1543];
  v3 = v0[1371];
  v4 = v3 + v0[1544];
  swift_willThrow();

  v5 = *(v4 + 24);
  os_unfair_lock_lock(v5);
  sub_1AF73FAD8(v3 + 112);
  os_unfair_lock_unlock(v5);

  sub_1AF744F08((v0 + 1267));

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 1317, sub_1AF73A0D8, v0 + 1324);
}

uint64_t sub_1AF73A0D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73A164, 0, 0);
}

uint64_t sub_1AF73A164()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF73A1FC, v0 + 10640);
}

uint64_t sub_1AF73A1FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73A288, 0, 0);
}

uint64_t sub_1AF73A288()
{
  v15 = v0;
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12392);
  v13 = *(v0 + 12320);
  v12 = *(v0 + 12304);
  v2 = *(v0 + 12288);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v3 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 11160);
  v5 = *(v0 + 10968);
  v14[0] = 0;
  sub_1AF0D4F18(v3, v14, 0, 0xE000000000000000);

  v6 = *(v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v6);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v4, isUniquelyReferenced_nonNull_native);
  *(v5 + 48) = v14[0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 72);
  *(v5 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v4, v9);
  *(v5 + 72) = v14[0];

  os_unfair_lock_unlock(v6);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(v2);
  sub_1AF0FB8EC(v12);
  sub_1AF0FB8EC(v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1AF73A558()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73A5E4, 0, 0);
}

uint64_t sub_1AF73A5E4()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 10488, sub_1AF73A67C, v0 + 10736);
}

uint64_t sub_1AF73A67C()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73A708, 0, 0);
}

uint64_t sub_1AF73A708()
{
  v15 = v0;
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12400);
  v13 = *(v0 + 12320);
  v12 = *(v0 + 12304);
  v2 = *(v0 + 12288);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v3 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 11160);
  v5 = *(v0 + 10968);
  v14[0] = 0;
  sub_1AF0D4F18(v3, v14, 0, 0xE000000000000000);

  v6 = *(v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v6);
  *(v0 + 5368) = v1;
  sub_1AF745F84(v0 + 5368);
  memcpy((v0 + 3448), (v0 + 5368), 0x1B1uLL);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1AF854898((v0 + 3448), v4, isUniquelyReferenced_nonNull_native);
  *(v5 + 48) = v14[0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v5 + 72);
  *(v5 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v4, v9);
  *(v5 + 72) = v14[0];

  os_unfair_lock_unlock(v6);

  dispatch_group_leave(*(v0 + 10920));

  sub_1AF0FB8EC(v2);
  sub_1AF0FB8EC(v12);
  sub_1AF0FB8EC(v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1AF73A9D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 136) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF73AA00, 0, 0);
}

uint64_t sub_1AF73AA00()
{
  v1 = *(v0 + 64);
  v2 = v1[6];
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1[9];
    *(v0 + 88) = v3;
    v4 = v1[8];
    *(v0 + 96) = v4;
    v5 = v1[7];
    *(v0 + 104) = v5;
    *(v0 + 16) = v1[5];
    *(v0 + 24) = v2;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1AF73AB38;
    v7 = *(v0 + 72);
    v8 = *(v0 + 136);

    return sub_1AF72BA88(v0 + 16, v8, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1AF73AB38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1AF747830;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1AF7477F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AF73AC60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AF74783C;

  return v5();
}

uint64_t sub_1AF73AD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AF73AD74, 0, 0);
}

uint64_t sub_1AF73AD74()
{
  v1 = *(v0 + 24);
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  *(v0 + 56) = v2;
  if (v3)
  {
    v4 = *(v0 + 40);
    if (*(v4 + 8))
    {
      v5 = *(v4 + 32);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 64) = v5;
    v8 = *(v0 + 48);
    v9 = *(v0 + 96);
    v10 = *(v0 + 32);
    sub_1AF7469C4();
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *(v13 + 16) = v3;
    *(v13 + 24) = v10;
    *(v13 + 32) = v2;
    *(v13 + 40) = v5;
    *(v13 + 48) = v9;
    *(v13 + 56) = v8;
    sub_1AF746664();
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1AF73AF24;

    return MEMORY[0x1EEE6DD58](v0 + 16, v12, v15, 0, 0, &unk_1AFE74DA8, v13, v12);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_1AF73AF24()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AF73B0B0;
  }

  else
  {

    v2 = sub_1AF73B048;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF73B048()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AF73B0B0()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF73B128(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AF73B214;

  return v5();
}

uint64_t sub_1AF73B214(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1AF73B324(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 136) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF73B34C, 0, 0);
}

uint64_t sub_1AF73B34C()
{
  v1 = *(v0 + 64);
  v2 = v1[11];
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1[14];
    *(v0 + 88) = v3;
    v4 = v1[13];
    *(v0 + 96) = v4;
    v5 = v1[12];
    *(v0 + 104) = v5;
    *(v0 + 16) = v1[10];
    *(v0 + 24) = v2;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1AF73B484;
    v7 = *(v0 + 72);
    v8 = *(v0 + 136);

    return sub_1AF72BA88(v0 + 16, v8, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1AF73B484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1AF73B63C;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1AF73B5AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AF73B5AC()
{
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AF73B63C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF73B6C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 136) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF73B6EC, 0, 0);
}

uint64_t sub_1AF73B6EC()
{
  v1 = *(v0 + 64);
  v2 = v1[16];
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1[19];
    *(v0 + 88) = v3;
    v4 = v1[18];
    *(v0 + 96) = v4;
    v5 = v1[17];
    *(v0 + 104) = v5;
    *(v0 + 16) = v1[15];
    *(v0 + 24) = v2;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1AF73AB38;
    v7 = *(v0 + 72);
    v8 = *(v0 + 136);

    return sub_1AF72BA88(v0 + 16, v8, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1AF73B824(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 136) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF73B84C, 0, 0);
}

uint64_t sub_1AF73B84C()
{
  v1 = *(v0 + 64);
  v2 = v1[1];
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1[4];
    *(v0 + 88) = v3;
    v4 = v1[3];
    *(v0 + 96) = v4;
    v5 = v1[2];
    *(v0 + 104) = v5;
    *(v0 + 16) = *v1;
    *(v0 + 24) = v2;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1AF73AB38;
    v7 = *(v0 + 72);
    v8 = *(v0 + 136);

    return sub_1AF72BA88(v0 + 16, v8, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

unint64_t sub_1AF73B99C(uint64_t a1)
{
  v1 = sub_1AF730058(a1, 0);
  v4 = v1;
  if (v3)
  {
    if (v3 != 1)
    {
      if (v1 | v2)
      {
        sub_1AF74554C();
        swift_allocError();
        *v7 = xmmword_1AFE74A00;
      }

      else
      {
        v4 = 0x80000001AFF32850;
        sub_1AF74554C();
        swift_allocError();
        *v7 = 0xD000000000000016;
        *(v7 + 8) = 0x80000001AFF32850;
      }

      *(v7 + 16) = 0;
      *(v7 + 24) = 1;
    }

    swift_willThrow();
  }

  else
  {
    v5 = v2;
    v6 = swift_unknownObjectRetain();
    sub_1AF6022A8(v6, v5, 0);
  }

  return v4;
}

id sub_1AF73BA94(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6974030]) init];
  [v3 setComputeFunction_];
  v4 = [a1 name];
  if (!v4)
  {
    sub_1AFDFCEF8();
    v4 = sub_1AFDFCEC8();
  }

  [v3 setLabel_];

  v5 = *(v1 + 168);
  if (!(v5 >> 62))
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_1AFDFE108())
  {
LABEL_5:
    sub_1AF447DFC(0, &qword_1EB63BD20);

    v6 = sub_1AFDFD3F8();

    [v3 setBinaryArchives_];
  }

LABEL_6:
  v7 = [a1 name];
  if (!v7)
  {
    sub_1AFDFCEF8();
    v7 = sub_1AFDFCEC8();
  }

  [v3 setLabel_];

  return v3;
}

void sub_1AF73BC10(void *a1, uint64_t a2, char *a3, uint64_t a4, void (*a5)(id *, void *), SEL *a6)
{
  v9 = v6;
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = a3;
    goto LABEL_5;
  }

  v12 = *(v6 + 96);
  if (v12)
  {
    v13 = v12;
    a3 = 0;
    v11 = v13;
LABEL_5:
    v14 = &v11[OBJC_IVAR____TtC3VFX13ShaderArchive_lock];
    v15 = *&v11[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24];
    v16 = a3;
    os_unfair_lock_lock(v15);
    a5(v19, a1);

    os_unfair_lock_unlock(v14[3]);
    if (!*(v9 + 160))
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v11 = 0;
  if (!*(v6 + 160))
  {
    goto LABEL_10;
  }

LABEL_6:
  v19[0] = 0;
  if ([swift_unknownObjectRetain() *a6])
  {
    v17 = v19[0];
  }

  else
  {
    v18 = v19[0];
    sub_1AFDFBF58();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
LABEL_10:
}

id sub_1AF73BD84(__int128 *a1, void *a2, int a3, void *a4)
{
  v5 = v4;
  v199 = *MEMORY[0x1E69E9840];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v149 - v16;
  v18 = a1[1];
  v194 = *a1;
  v195 = v18;
  v196 = *(a1 + 4);
  if ((*(&v194 + 1) & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(*(&v194 + 1)) & 0xFLL;
  }

  else
  {
    v19 = v194 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v21 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v122 = v21;
      swift_once();
      v21 = v122;
    }

    *&v197[0] = 0;
    sub_1AF0D4F18(v21, v197, 0xD000000000000030, 0x80000001AFF321A0);
    return 0;
  }

  v20 = swift_unknownObjectRetain();
  sub_1AF882DB8(v20, 0, v189);
  v158 = v17;
  v155 = a4;
  LODWORD(v157) = a3;
  v23 = v5;
  v24 = v189[0];
  v25 = a2;
  v26 = v189[1];
  v27 = v191;
  v28 = v192;
  v153 = v190;
  v193 = v190;
  sub_1AFDFF308();

  sub_1AF744720(&v193, v197);
  swift_unknownObjectRetain();

  v154 = v24;
  v29 = v24;
  v30 = v23;
  sub_1AF88352C(&v184, v29, v26, v27, v28);
  v160 = v26;

  sub_1AF7470C4(&v193, sub_1AF744784);
  *(&v159 + 1) = v28;

  *&v159 = v27;
  swift_unknownObjectRelease();
  v197[2] = v186;
  v197[3] = v187;
  v198 = v188;
  v197[0] = v184;
  v197[1] = v185;
  v31 = sub_1AFDFF2E8();
  swift_unknownObjectRelease();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v31);
  v32 = sub_1AFDFF2F8();
  v33 = v32 ^ v25 & 1;
  v34 = v30 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  os_unfair_lock_lock(*(v30 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24));
  v35 = *(v30 + 104);
  v156 = v25;
  if (v35)
  {
    if ((v25 & 1) == 0)
    {
      v36 = 0uLL;
      v37 = -1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = v158;
LABEL_28:
      v179 = v36;
      v180 = v38;
      v181 = v39;
      v182 = v40;
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v42 = *(v30 + 56);
  if (!*(v42 + 16))
  {
    if (v156)
    {
LABEL_19:
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v183 = -1;
      v41 = v158;
      goto LABEL_30;
    }

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v178 = -1;
    v41 = v158;
LABEL_24:
    if (*(v42 + 16) && (v49 = sub_1AF449CB8(v32 ^ 1), (v50 & 1) != 0))
    {
      v51 = *(v42 + 56) + 72 * v49;
      v184 = *v51;
      v53 = *(v51 + 32);
      v52 = *(v51 + 48);
      v54 = *(v51 + 64);
      v185 = *(v51 + 16);
      v186 = v53;
      LOBYTE(v188) = v54;
      v187 = v52;
      sub_1AF7450E4(&v184, &v169, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      sub_1AF745EB8(&v174, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
      v36 = v184;
      v38 = v185;
      v39 = v186;
      v40 = v187;
      v37 = v188;
    }

    else
    {
      sub_1AF745EB8(&v174, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
      v36 = 0uLL;
      v37 = -1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    goto LABEL_28;
  }

  v43 = sub_1AF449CB8(v33);
  if ((v44 & 1) == 0)
  {
    v41 = v158;
    if (v156)
    {
      v181 = 0uLL;
      v182 = 0uLL;
      v179 = 0uLL;
      v180 = 0uLL;
      v37 = -1;
LABEL_29:
      v183 = v37;
      goto LABEL_30;
    }

    v176 = 0uLL;
    v177 = 0uLL;
    v174 = 0uLL;
    v175 = 0uLL;
    v178 = -1;
    v42 = *(v30 + 56);
    goto LABEL_24;
  }

  v45 = *(v42 + 56) + 72 * v43;
  v169 = *v45;
  v47 = *(v45 + 32);
  v46 = *(v45 + 48);
  v48 = *(v45 + 64);
  v170 = *(v45 + 16);
  v171 = v47;
  v173 = v48;
  v172 = v46;
  v185 = *(v45 + 16);
  v186 = *(v45 + 32);
  v187 = *(v45 + 48);
  LOBYTE(v188) = *(v45 + 64);
  v184 = *v45;
  sub_1AF7450E4(&v169, &v164, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
  v181 = v186;
  v182 = v187;
  v183 = v188;
  v179 = v184;
  v180 = v185;
  v41 = v158;
LABEL_30:
  v55 = *(v30 + 72);
  if (*(v55 + 16) && (v56 = sub_1AF449CB8(v33), (v57 & 1) != 0))
  {
    v58 = *(*(v55 + 56) + v56);
    os_unfair_lock_unlock(*(v34 + 24));
    if (v58 == 1)
    {
      sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);

      sub_1AF7470C4(&v193, sub_1AF744784);

      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v34 + 24));
  }

  if (v183 <= 1u)
  {
    v59 = v179;
    if (!v183)
    {
      if (v157)
      {
        v186 = v181;
        v187 = v182;
        LOBYTE(v188) = v183;
        v184 = v179;
        v185 = v180;
        sub_1AF7450E4(&v184, &v169, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);

        sub_1AF7470C4(&v193, sub_1AF744784);

        swift_unknownObjectRelease();
        sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
        sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
        return 0;
      }

      v186 = v181;
      v187 = v182;
      LOBYTE(v188) = v183;
      v184 = v179;
      v185 = v180;
      sub_1AF7450E4(&v184, &v164, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      CACurrentMediaTime();
      sub_1AFDFDAA8();
      v74 = *(v34 + 24);
      os_unfair_lock_lock(v74);
      v75 = *(v30 + 56);
      if (*(v75 + 16) && (v76 = sub_1AF449CB8(v33), (v77 & 1) != 0))
      {
        v78 = *(v75 + 56) + 72 * v76;
        v162[0] = *v78;
        v80 = *(v78 + 32);
        v79 = *(v78 + 48);
        v81 = *(v78 + 64);
        v162[1] = *(v78 + 16);
        v162[2] = v80;
        v163 = v81;
        v162[3] = v79;
        v165 = *(v78 + 16);
        v166 = *(v78 + 32);
        v167 = *(v78 + 48);
        v168 = *(v78 + 64);
        v164 = *v78;
        sub_1AF7450E4(v162, &v161, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
        v82 = v168;
        v173 = v168;
        v171 = v166;
        v172 = v167;
        v169 = v164;
        v170 = v165;
      }

      else
      {
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v82 = 255;
        v173 = -1;
      }

      os_unfair_lock_unlock(v74);
      sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
      sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);

      sub_1AF7470C4(&v193, sub_1AF744784);

      swift_unknownObjectRelease();
      if (v82 > 1)
      {
        if (v82 != 2)
        {
          return 0;
        }
      }

      else if (v82)
      {
        v59 = v169;
        v85 = *(&v172 + 1);
        swift_unknownObjectRetain();
        v84 = &v169;
        goto LABEL_68;
      }

      sub_1AF745EB8(&v169, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
      return 0;
    }

    v60 = *(&v182 + 1);

    sub_1AF7470C4(&v193, sub_1AF744784);

    swift_unknownObjectRelease();
    if ((v157 & 1) == 0)
    {
      v83 = v60;
      swift_unknownObjectRetain();
      v84 = &v179;
LABEL_68:
      sub_1AF745EB8(v84, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
      return v59;
    }

LABEL_42:
    sub_1AF745EB8(&v179, &unk_1EB633960, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline);
    return 0;
  }

  if (v183 == 2)
  {

    sub_1AF7470C4(&v193, sub_1AF744784);

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  if ((v157 & 1) != 0 && !v155)
  {
    if (qword_1ED730F98 != -1)
    {
      swift_once();
    }

    if ((byte_1ED72FA72 & 1) == 0)
    {
      v86 = dispatch_group_create();
      dispatch_group_enter(v86);
      v87 = *(v34 + 24);
      os_unfair_lock_lock(v87);
      *&v184 = v86;
      LOBYTE(v188) = 0;
      v88 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v169 = *(v30 + 56);
      *(v30 + 56) = 0x8000000000000000;
      sub_1AF853A48(&v184, v33, isUniquelyReferenced_nonNull_native);
      *(v30 + 56) = v169;
      os_unfair_lock_unlock(v87);
      sub_1AFDFD648();
      v90 = sub_1AFDFD668();
      (*(*(v90 - 8) + 56))(v41, 0, 1, v90);
      v91 = swift_allocObject();
      *(v91 + 16) = v88;
      *(v91 + 24) = v30;
      v92 = v153;
      *(v91 + 32) = v154;
      *(v91 + 40) = v160;
      *(v91 + 48) = v92;
      v93 = v33;
      v94 = *(&v159 + 1);
      *(v91 + 56) = v159;
      *(v91 + 64) = v94;
      *(v91 + 72) = v31;
      *(v91 + 80) = 1;
      *(v91 + 88) = 0;
      *(v91 + 96) = v156 & 1;
      *(v91 + 104) = v93;

      sub_1AF744720(&v193, &v169);
      v95 = qword_1ED730EA0;
      swift_unknownObjectRetain();

      v96 = v88;

      if (v95 != -1)
      {
        swift_once();
      }

      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v97 = qword_1ED73B8A0;
      v98 = MEMORY[0x1E69E85F0];
      sub_1AF0D4320(v41, v14, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
      v99 = swift_allocObject();
      v99[2] = 0;
      v99[3] = 0;
      v99[4] = v97;
      v99[5] = &unk_1AFE74C60;
      v99[6] = v91;
      swift_retain_n();

      sub_1AF727C00(0, 0, v14, &unk_1AFE74C70, v99);

      sub_1AF7470C4(&v193, sub_1AF744784);

      swift_unknownObjectRelease();
      sub_1AF0D438C(v41, &qword_1ED726C10, v98);
      return 0;
    }
  }

  sub_1AF744720(&v193, &v184);
  v61 = v159;
  swift_unknownObjectRetain();

  v62 = sub_1AF72A584(v189, 0, v155);

  sub_1AF7470C4(&v193, sub_1AF744784);

  swift_unknownObjectRelease();
  v150 = 0;
  v151 = v31;
  v152 = v62;
  v158 = sub_1AF73BA94(v62);
  v63 = v154;
  sub_1AF8837E8(v154, v160, v61, *(&v159 + 1));
  v64 = v63;
  v66 = v65;
  if (v156)
  {
    v67 = "makeComputePipelineRefl";
  }

  else
  {
    v67 = "makeComputePipeline";
  }

  if (v156)
  {
    v68 = 23;
  }

  else
  {
    v68 = 19;
  }

  if (v156)
  {
    v69 = 3;
  }

  else
  {
    v69 = 0;
  }

  sub_1AF744BC0(v67, v68, 2u, v64, v66, v33, &v169);
  v70 = *(v34 + 24);
  os_unfair_lock_lock(v70);
  v71 = *(v30 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v71)
  {
    if (v71 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v184 = 0;
      *(&v184 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v164 = v184;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      *&v184 = v154;
      *(&v184 + 1) = v160;
      *&v185 = v153;
      *(&v185 + 1) = v61;
      *&v186 = *(&v159 + 1);
      *(&v186 + 1) = v151;
      sub_1AFDFE458();
      v72 = v164;
      v73 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v123 = v73;
        swift_once();
        v73 = v123;
      }

      *&v184 = 0;
      sub_1AF0D4F18(v73, &v184, v72, *(&v72 + 1));
    }

    else
    {
      *(&v185 + 1) = &type metadata for ComputePipelineDescriptor;
      v100 = swift_allocObject();
      *&v184 = v100;
      v101 = v153;
      v103 = *(&v159 + 1);
      v102 = v160;
      v100[2] = v154;
      v100[3] = v102;
      v100[4] = v101;
      v100[5] = v61;
      v104 = v151;
      v100[6] = v103;
      v100[7] = v104;

      sub_1AF744720(&v193, &v164);
      swift_unknownObjectRetain();

      sub_1AF744EE0(v71);
      v71(&v184);
      sub_1AF744EF4(v71);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v184);
    }
  }

  os_unfair_lock_unlock(v70);
  if (v155)
  {
    goto LABEL_99;
  }

  if (qword_1ED7247D8 != -1)
  {
    swift_once();
  }

  if (byte_1EB633470 != 1)
  {
    goto LABEL_99;
  }

  v105 = *(v30 + 168);
  if (v105 >> 62)
  {
    if (sub_1AFDFE108())
    {
      goto LABEL_87;
    }

LABEL_99:
    v117 = 0;
    goto LABEL_100;
  }

  if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_99;
  }

LABEL_87:
  v106 = *(v30 + 16);
  *&v184 = 0;
  *&v164 = 0;
  v107 = [v106 newComputePipelineStateWithDescriptor:v158 options:v69 | 4 reflection:&v184 error:&v164];
  v108 = v184;
  if (v107)
  {
    v109 = qword_1ED730EA0;
    v110 = v107;
    v111 = v164;
    v112 = v108;
    v156 = v110;
    swift_unknownObjectRetain();
    if (v109 != -1)
    {
      swift_once();
    }

    *&v184 = 0;
    *(&v184 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v184 = 0x6E756F46205D435BLL;
    *(&v184 + 1) = 0xEA00000000002064;
    sub_1AF8837E8(v154, v160, v61, *(&v159 + 1));
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v113 = v184;
    v114 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v147 = v114;
      swift_once();
      v114 = v147;
    }

    *&v184 = 0;
    sub_1AF0D4F18(v114, &v184, v113, *(&v113 + 1));

    v115 = v158;
    goto LABEL_102;
  }

  v116 = v164;
  v117 = v108;
  v118 = sub_1AFDFBF58();

  swift_willThrow();
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v184 = 542983003;
  *(&v184 + 1) = 0xE400000000000000;
  swift_getErrorValue();
  v156 = v118;
  v119 = sub_1AFDFF1D8();
  MEMORY[0x1B2718AE0](v119);

  v120 = v184;
  v121 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v148 = v121;
    swift_once();
    v121 = v148;
  }

  *&v184 = 0;
  sub_1AF0D4F18(v121, &v184, v120, *(&v120 + 1));

  v150 = 0;
LABEL_100:
  v124 = *(v30 + 16);
  *&v184 = v117;
  *&v164 = 0;
  v115 = v158;
  v125 = [v124 newComputePipelineStateWithDescriptor:v158 options:v69 reflection:&v184 error:&v164];
  v126 = v164;
  v112 = v184;
  v127 = v126;

  if (!v125)
  {
    v130 = sub_1AFDFBF58();

    v129 = v130;
    swift_willThrow();

    goto LABEL_105;
  }

  v156 = v125;
LABEL_102:
  v128 = v150;
  sub_1AF73BC10(v115, v157 & 1, v155, &OBJC_IVAR____TtC3VFX13ShaderArchive_computePipelines, sub_1AF70D634, &selRef_addComputePipelineFunctionsWithDescriptor_error_);
  if (v128)
  {
    v129 = v128;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_105:
    v131 = *(v34 + 24);
    os_unfair_lock_lock(v131);
    sub_1AF73FAD8(v30 + 128);
    os_unfair_lock_unlock(v131);
    sub_1AF744F08(&v169);
    swift_unknownObjectRelease();

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v184 = 0;
    *(&v184 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002ELL, 0x80000001AFF320F0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v132 = v184;
    v133 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v146 = v133;
      swift_once();
      v133 = v146;
    }

    *&v184 = 0;
    sub_1AF0D4F18(v133, &v184, v132, *(&v132 + 1));

    v134 = *(v34 + 24);
    os_unfair_lock_lock(v134);
    *&v184 = v129;
    LOBYTE(v188) = 2;
    v135 = v129;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v164 = *(v30 + 56);
    *(v30 + 56) = 0x8000000000000000;
    sub_1AF853A48(&v184, v33, v136);
    *(v30 + 56) = v164;
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v164 = *(v30 + 72);
    *(v30 + 72) = 0x8000000000000000;
    sub_1AF85390C(0, v33, v137);
    *(v30 + 72) = v164;

    os_unfair_lock_unlock(v134);

    sub_1AF7470C4(&v193, sub_1AF744784);

    swift_unknownObjectRelease();

    return 0;
  }

  v149[0] = v34;
  v157 = *(v34 + 24);
  v138 = v157;
  v139 = v112;
  v149[1] = v112;
  v140 = v139;
  os_unfair_lock_lock(v138);
  v141 = v156;
  *&v184 = v156;
  *(&v184 + 1) = v154;
  *&v185 = v160;
  *(&v185 + 1) = v153;
  v186 = v159;
  *&v187 = v151;
  *(&v187 + 1) = v112;
  LOBYTE(v188) = 1;

  sub_1AF744720(&v193, &v164);
  swift_unknownObjectRetain();

  v155 = v140;
  v142 = v141;
  swift_unknownObjectRetain();
  v143 = swift_isUniquelyReferenced_nonNull_native();
  *&v164 = *(v30 + 56);
  *(v30 + 56) = 0x8000000000000000;
  sub_1AF853A48(&v184, v33, v143);
  *(v30 + 56) = v164;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  *&v164 = *(v30 + 72);
  *(v30 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v33, v144);
  *(v30 + 72) = v164;

  os_unfair_lock_unlock(v157);

  swift_unknownObjectRelease();
  v145 = *(v149[0] + 24);
  os_unfair_lock_lock(v145);
  sub_1AF73FAD8(v30 + 128);
  os_unfair_lock_unlock(v145);

  sub_1AF7470C4(&v193, sub_1AF744784);

  swift_unknownObjectRelease();
  sub_1AF744F08(&v169);
  swift_unknownObjectRelease();

  return v142;
}

uint64_t sub_1AF73D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 1456) = a8;
  *(v8 + 826) = a7;
  *(v8 + 1448) = a6;
  *(v8 + 825) = a5;
  *(v8 + 1440) = a4;
  *(v8 + 1432) = a3;
  *(v8 + 1424) = a2;
  v9 = *(a4 + 8);
  *(v8 + 1464) = *a4;
  *(v8 + 1472) = v9;
  *(v8 + 1480) = *(a4 + 16);
  v10 = *(a4 + 40);
  *(v8 + 1496) = *(a4 + 32);
  *(v8 + 1504) = v10;
  sub_1AF7452B8();
  *(v8 + 1512) = v11;
  *(v8 + 1520) = *(v11 - 8);
  *(v8 + 1528) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF73D5EC, 0, 0);
}

uint64_t sub_1AF73D5EC()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 825);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1432);
  *(v0 + 1384) = *(v0 + 1480);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v7 = v3[1];
  v6 = v3[2];
  *(v5 + 24) = *v3;
  *(v5 + 40) = v7;
  *(v5 + 56) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v1;
  v8 = swift_allocObject();
  *(v0 + 1536) = v8;
  *(v8 + 16) = &unk_1AFE74CA8;
  *(v8 + 24) = v5;

  sub_1AF744720(v0 + 1384, v0 + 1368);
  v9 = v1;
  swift_unknownObjectRetain();

  sub_1AF447DFC(0, &unk_1ED723170);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1376, sub_1AF73D79C, v0 + 720);
}

uint64_t sub_1AF73D79C()
{
  *(v1 + 1544) = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 1376, sub_1AF73E820, v1 + 832);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF73D884, 0, 0);
  }
}

uint64_t sub_1AF73D884()
{
  v92 = v0;
  v91 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 826);
  v7 = *(v0 + 1432);
  v8 = swift_unknownObjectRetain();
  v87 = sub_1AF73BA94(v8);
  *(v0 + 1552) = v87;
  swift_unknownObjectRelease();
  sub_1AF8837E8(v4, v3, v2, v1);
  v10 = v9;
  if (v6)
  {
    v11 = "asyncMakeComputePipelineRef";
  }

  else
  {
    v11 = "asyncMakeComputePipeline";
  }

  if (v6)
  {
    v12 = 27;
  }

  else
  {
    v12 = 24;
  }

  if (v6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  sub_1AF744BC0(v11, v12, 2u, v4, v10, v5, v0 + 1048);
  v14 = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  *(v0 + 1560) = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v15 = *(v7 + v14 + 24);
  os_unfair_lock_lock(v15);
  v16 = *(v7 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v16)
  {
    if (v16 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 1440);
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1AFDFE218();
      *(v0 + 1320) = 0;
      *(v0 + 1328) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      v18 = *v17;
      v19 = v17[2];
      *(v0 + 1128) = v17[1];
      *(v0 + 1144) = v19;
      *(v0 + 1112) = v18;
      sub_1AFDFE458();
      v20 = *(v0 + 1320);
      v21 = *(v0 + 1328);
      v22 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v73 = v22;
        swift_once();
        v22 = v73;
      }

      v89 = 0;
      sub_1AF0D4F18(v22, &v89, v20, v21);
    }

    else
    {
      v23 = *(v0 + 1440);
      *(v0 + 1184) = &type metadata for ComputePipelineDescriptor;
      v24 = swift_allocObject();
      *(v0 + 1160) = v24;
      v26 = v23[1];
      v25 = v23[2];
      v24[1] = *v23;
      v24[2] = v26;
      v24[3] = v25;

      sub_1AF744720(v0 + 1384, v0 + 1360);
      swift_unknownObjectRetain();

      sub_1AF744EE0(v16);
      v16(v0 + 1160);
      sub_1AF744EF4(v16);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 1160);
    }
  }

  v27 = *(v0 + 1448);
  os_unfair_lock_unlock(v15);
  v85 = v13;
  if (v27)
  {
    goto LABEL_41;
  }

  if (qword_1ED7247D8 != -1)
  {
    swift_once();
  }

  if ((byte_1EB633470 & 1) == 0)
  {
    goto LABEL_41;
  }

  v28 = *(*(v0 + 1432) + 168);
  v29 = v87;
  if (v28 >> 62)
  {
    v74 = sub_1AFDFE108();
    v29 = v87;
    if (v74)
    {
      goto LABEL_24;
    }

LABEL_41:
    v55 = 0;
    v61 = *(v0 + 1544);
    goto LABEL_42;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_24:
  v30 = *(*(v0 + 1432) + 16);
  *(v0 + 1400) = 0;
  *(v0 + 1408) = 0;
  v31 = [v30 newComputePipelineStateWithDescriptor:v29 options:v13 | 4 reflection:? error:?];
  v32 = *(v0 + 1408);
  v33 = *(v0 + 1400);
  if (v31)
  {
    v34 = v31;
    v35 = qword_1ED730EA0;
    v36 = v32;
    v37 = v33;
    swift_unknownObjectRetain();
    if (v35 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 1496);
    v39 = *(v0 + 1488);
    v40 = *(v0 + 1472);
    v41 = *(v0 + 1464);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1AFDFE218();

    v89 = 0x6E756F46205D435BLL;
    v90 = 0xEA00000000002064;
    sub_1AF8837E8(v41, v40, v39, v38);
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v43 = v89;
    v42 = v90;
    v44 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v79 = v44;
      swift_once();
      v44 = v79;
    }

    v89 = 0;
    sub_1AF0D4F18(v44, &v89, v43, v42);

    v45 = *(v0 + 1544);
    sub_1AF73BC10(*(v0 + 1552), *(v0 + 825), *(v0 + 1448), &OBJC_IVAR____TtC3VFX13ShaderArchive_computePipelines, sub_1AF70D634, &selRef_addComputePipelineFunctionsWithDescriptor_error_);
    *(v0 + 1592) = v45;
    if (v45)
    {
      v46 = *(v0 + 1560);
      v47 = *(v0 + 1552);
      v48 = *(v0 + 1432);

      swift_unknownObjectRelease_n();
      v49 = *(v48 + v46 + 24);
      os_unfair_lock_lock(v49);
      sub_1AF73FAD8(v48 + 128);
      os_unfair_lock_unlock(v49);
      sub_1AF744F08(v0 + 1048);

      v50 = sub_1AF73EEEC;
      v51 = v0 + 16;
      v52 = v0 + 1376;
      v53 = v0 + 1216;
    }

    else
    {
      v62 = *(v0 + 1504);
      v63 = *(v0 + 1496);
      v64 = *(v0 + 1488);
      v65 = *(v0 + 1480);
      v66 = *(v0 + 1472);
      v67 = *(v0 + 1464);
      v68 = *(v0 + 1432);
      v86 = v68 + *(v0 + 1560);
      v88 = *(v0 + 1552);
      v82 = *(v0 + 1456);
      lock = *(v86 + 24);
      os_unfair_lock_lock(lock);
      *(v0 + 760) = v34;
      *(v0 + 768) = v67;
      *(v0 + 776) = v66;
      *(v0 + 784) = v65;
      *(v0 + 792) = v64;
      *(v0 + 800) = v63;
      *(v0 + 808) = v62;
      *(v0 + 816) = v37;
      *(v0 + 824) = 1;

      sub_1AF744720(v0 + 1384, v0 + 1392);
      v69 = v37;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v68 + 56);
      *(v68 + 56) = 0x8000000000000000;
      sub_1AF853A48(v0 + 760, v82, isUniquelyReferenced_nonNull_native);
      *(v68 + 56) = v89;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v68 + 72);
      *(v68 + 72) = 0x8000000000000000;
      sub_1AF85390C(0, v82, v71);
      *(v68 + 72) = v89;

      os_unfair_lock_unlock(lock);
      swift_unknownObjectRelease_n();

      v72 = *(v86 + 24);
      os_unfair_lock_lock(v72);
      sub_1AF73FAD8(v68 + 128);
      os_unfair_lock_unlock(v72);
      sub_1AF744F08(v0 + 1048);

      v50 = sub_1AF73E6E8;
      v51 = v0 + 16;
      v52 = v0 + 1376;
      v53 = v0 + 1280;
    }

    return MEMORY[0x1EEE6DEB0](v51, v52, v50, v53);
  }

  v54 = v32;
  v55 = v33;
  v56 = sub_1AFDFBF58();

  swift_willThrow();
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v89 = 542983003;
  v90 = 0xE400000000000000;
  swift_getErrorValue();
  v57 = sub_1AFDFF1D8();
  MEMORY[0x1B2718AE0](v57);

  v59 = v89;
  v58 = v90;
  v60 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v80 = v60;
    swift_once();
    v60 = v80;
  }

  v89 = 0;
  sub_1AF0D4F18(v60, &v89, v59, v58);

  v61 = 0;
LABEL_42:
  *(v0 + 1576) = v55;
  *(v0 + 1568) = v61;
  v75 = *(v0 + 1528);
  v76 = *(v0 + 1520);
  v77 = *(v0 + 1512);
  locka = *(*(v0 + 1432) + 16);
  *(v0 + 656) = v0;
  *(v0 + 696) = v0 + 1336;
  *(v0 + 664) = sub_1AF73E2D8;
  swift_continuation_init();
  *(v0 + 1040) = v77;
  v78 = sub_1AF585714((v0 + 1016));
  sub_1AF7461A8(0, &qword_1EB630CA8, &qword_1EB630CB0, &protocolRef_MTLComputePipelineState, sub_1AF745364);
  sub_1AF5C5358(0, &qword_1ED7268D0);
  sub_1AFDFD5C8();
  (*(v76 + 32))(v78, v75, v77);
  *(v0 + 984) = MEMORY[0x1E69E9820];
  *(v0 + 992) = 1107296256;
  *(v0 + 1000) = sub_1AF73F3A0;
  *(v0 + 1008) = &unk_1F24E5FB0;
  [(os_unfair_lock_s *)locka newComputePipelineStateWithDescriptor:v87 options:v85 completionHandler:v0 + 984];
  (*(v76 + 8))(v78, v77);

  return MEMORY[0x1EEE6DEC8](v0 + 656);
}

uint64_t sub_1AF73E2D8()
{
  v1 = *(*v0 + 688);
  *(*v0 + 1584) = v1;
  if (v1)
  {
    v2 = sub_1AF73EB10;
  }

  else
  {
    v2 = sub_1AF73E414;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF73E414()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1344);

  v3 = *(v0 + 1568);
  sub_1AF73BC10(*(v0 + 1552), *(v0 + 825), *(v0 + 1448), &OBJC_IVAR____TtC3VFX13ShaderArchive_computePipelines, sub_1AF70D634, &selRef_addComputePipelineFunctionsWithDescriptor_error_);
  *(v0 + 1592) = v3;
  if (v3)
  {
    v4 = *(v0 + 1560);
    v5 = *(v0 + 1552);
    v6 = *(v0 + 1432);
    swift_unknownObjectRelease();

    v7 = *(v6 + v4 + 24);
    os_unfair_lock_lock(v7);
    sub_1AF73FAD8(v6 + 128);
    os_unfair_lock_unlock(v7);
    sub_1AF744F08(v0 + 1048);

    v8 = sub_1AF73EEEC;
    v9 = v0 + 16;
    v10 = v0 + 1376;
    v11 = v0 + 1216;
  }

  else
  {
    v12 = *(v0 + 1504);
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1488);
    v15 = *(v0 + 1480);
    v16 = *(v0 + 1472);
    v17 = *(v0 + 1464);
    v18 = *(v0 + 1432);
    v26 = v18 + *(v0 + 1560);
    v27 = *(v0 + 1552);
    v24 = *(v0 + 1456);
    lock = *(v26 + 24);
    os_unfair_lock_lock(lock);
    *(v0 + 760) = v1;
    *(v0 + 768) = v17;
    *(v0 + 776) = v16;
    *(v0 + 784) = v15;
    *(v0 + 792) = v14;
    *(v0 + 800) = v13;
    *(v0 + 808) = v12;
    *(v0 + 816) = v2;
    *(v0 + 824) = 1;

    sub_1AF744720(v0 + 1384, v0 + 1392);
    v19 = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v18 + 56);
    *(v18 + 56) = 0x8000000000000000;
    sub_1AF853A48(v0 + 760, v24, isUniquelyReferenced_nonNull_native);
    *(v18 + 56) = v28;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v18 + 72);
    *(v18 + 72) = 0x8000000000000000;
    sub_1AF85390C(0, v24, v21);
    *(v18 + 72) = v29;

    os_unfair_lock_unlock(lock);
    swift_unknownObjectRelease();

    v22 = *(v26 + 24);
    os_unfair_lock_lock(v22);
    sub_1AF73FAD8(v18 + 128);
    os_unfair_lock_unlock(v22);
    sub_1AF744F08(v0 + 1048);

    v8 = sub_1AF73E6E8;
    v9 = v0 + 16;
    v10 = v0 + 1376;
    v11 = v0 + 1280;
  }

  return MEMORY[0x1EEE6DEB0](v9, v10, v8, v11);
}

uint64_t sub_1AF73E6E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73E774, 0, 0);
}

uint64_t sub_1AF73E774()
{
  dispatch_group_leave(*(v0 + 1424));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF73E820()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73E8AC, 0, 0);
}

uint64_t sub_1AF73E8AC()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1544);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002ELL, 0x80000001AFF320F0);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 1456);
  v4 = *(v0 + 1432);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 872) = v1;
  *(v0 + 936) = 2;
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_1AF853A48(v0 + 872, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 56) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 1424));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF73EB10()
{
  v1 = v0[197];
  v2 = v0[194];
  v3 = v0[179];
  v4 = v3 + v0[195];
  swift_willThrow();

  v5 = *(v4 + 24);
  os_unfair_lock_lock(v5);
  sub_1AF73FAD8(v3 + 128);
  os_unfair_lock_unlock(v5);
  sub_1AF744F08((v0 + 131));

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 172, sub_1AF73EBFC, v0 + 118);
}

uint64_t sub_1AF73EBFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73EC88, 0, 0);
}

uint64_t sub_1AF73EC88()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1584);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002ELL, 0x80000001AFF320F0);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 1456);
  v4 = *(v0 + 1432);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 872) = v1;
  *(v0 + 936) = 2;
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_1AF853A48(v0 + 872, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 56) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 1424));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF73EEEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AF73EF78, 0, 0);
}

uint64_t sub_1AF73EF78()
{
  v13 = v0;
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1592);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002ELL, 0x80000001AFF320F0);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v2 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *(v0 + 1456);
  v4 = *(v0 + 1432);
  v12[0] = 0;
  sub_1AF0D4F18(v2, v12, 0, 0xE000000000000000);

  v5 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v5);
  *(v0 + 872) = v1;
  *(v0 + 936) = 2;
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_1AF853A48(v0 + 872, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 56) = v12[0];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v4 + 72);
  *(v4 + 72) = 0x8000000000000000;
  sub_1AF85390C(0, v3, v8);
  *(v4 + 72) = v12[0];

  os_unfair_lock_unlock(v5);

  dispatch_group_leave(*(v0 + 1424));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF73F1DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a2 + 32);
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_1AF73F2A0;

  return sub_1AF72BA88(v4 + 16, a3, a4);
}

uint64_t sub_1AF73F2A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1AF73F3B8(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  sub_1AF441150((a1 + 32), *(a1 + 56));
  a5(0);
  if (a4)
  {
    v8 = a4;
    sub_1AFDFD5D8();
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = a3;
    sub_1AFDFD5E8();
  }
}

void sub_1AF73F470()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v1);

  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 64) = MEMORY[0x1E69E7CC8];

  *(v0 + 48) = v2;

  *(v0 + 56) = v2;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1AF73F4F8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = (*(a1 + 56) + 440 * v10);
    memcpy(__dst, v12, 0x1B1uLL);
    memmove(v27, v12, 0x1B1uLL);
    if (!sub_1AF745F90(v27))
    {
      nullsub_106();
      v24 = *v13;
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        sub_1AF7450E4(__dst, v25, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
        sub_1AF7450E4(__dst, v25, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
        sub_1AF839AA8(v14 + 1, 1);
        v2 = v28;
      }

      else
      {
        sub_1AF7450E4(__dst, v25, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
        sub_1AF7450E4(__dst, v25, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      }

      v15 = sub_1AFDFF278();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = v15 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) != 0)
      {
        v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v17) >> 6;
        do
        {
          if (v19 + 1 == v21)
          {
            v19 = 0;
          }

          else
          {
            ++v19;
          }

          v22 = *(v16 + 8 * v19);
        }

        while (v22 == -1);
        v20 = __clz(__rbit64(~v22)) + (v19 << 6);
      }

      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + 8 * v20) = v11;
      *(*(v2 + 56) + 8 * v20) = v24;
      ++*(v2 + 16);
      sub_1AF0D2D44(__dst, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  return v2;
}

uint64_t sub_1AF73F7D4(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(a1 + 56) + 72 * v11;
      if (!*(v12 + 64))
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v49 = v2;
    v54 = *(*(a1 + 48) + 8 * v11);
    v15 = *v12;
    v14 = *(v12 + 8);
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    v18 = *(v12 + 32);
    v19 = *(v12 + 40);
    v20 = *(v12 + 48);
    v21 = *(v12 + 56);
    v22 = *(v4 + 16);
    v51 = *v12;
    v52 = v14;
    v50 = v17;
    v53 = v16;
    v56 = v19;
    v57 = v18;
    v55 = v20;
    v48 = v21;
    if (*(v4 + 24) <= v22)
    {
      v26 = *v12;
      v27 = *(v12 + 8);
      v28 = *(v12 + 16);
      v29 = *(v12 + 24);
      v47 = v22;
      sub_1AF747124(*v12, v14, v28, v16, v18, v19, v20, v21, 0);
      v30 = v28;
      v25 = v48;
      sub_1AF747124(v26, v27, v30, v29, v57, v56, v55, v48, 0);
      sub_1AF839AA8(v47 + 1, 1);
      v4 = v58;
    }

    else
    {
      v23 = *(v12 + 8);
      sub_1AF747124(v15, v14, v17, v16, v18, v19, v20, v21, 0);
      v24 = v15;
      v25 = v48;
      sub_1AF747124(v24, v23, v17, v53, v57, v56, v55, v48, 0);
    }

    v31 = sub_1AFDFF278();
    v32 = v4 + 64;
    v33 = -1 << *(v4 + 32);
    v34 = v31 & ~v33;
    v35 = v34 >> 6;
    v2 = v49;
    if (((-1 << v34) & ~*(v4 + 64 + 8 * (v34 >> 6))) != 0)
    {
      v36 = __clz(__rbit64((-1 << v34) & ~*(v4 + 64 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v37 = v51;
      v38 = v52;
      v39 = v50;
      v40 = v53;
      v42 = v56;
      v41 = v57;
      v43 = v55;
    }

    else
    {
      v44 = (63 - v33) >> 6;
      v37 = v51;
      v38 = v52;
      v39 = v50;
      v40 = v53;
      v42 = v56;
      v41 = v57;
      v43 = v55;
      do
      {
        if (v35 + 1 == v44)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        v45 = *(v32 + 8 * v35);
      }

      while (v45 == -1);
      v36 = __clz(__rbit64(~v45)) + (v35 << 6);
    }

    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    *(*(v4 + 48) + 8 * v36) = v54;
    *(*(v4 + 56) + 8 * v36) = v37;
    ++*(v4 + 16);
    sub_1AF747210(v37, v38, v39, v40, v41, v42, v43, v25, 0);
  }

  while (v7);
LABEL_7:
  while (1)
  {
    v13 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      break;
    }

    v7 = *(a1 + 8 * v9++ + 72);
    if (v7)
    {
      v9 = v13;
      goto LABEL_5;
    }
  }

  return v4;
}

uint64_t sub_1AF73FAD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AFDFC548();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFC4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a1 + CACurrentMediaTime() - *(v2 + 8);
  ++*(a1 + 8);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1AFDFC538();
  sub_1AF477C68(v13, qword_1ED73B608);
  v14 = sub_1AFDFC528();
  sub_1AFDFC558();
  v15 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {
    if (*(v2 + 32))
    {
      v16 = &v23;
    }

    else
    {
      v16 = *(v2 + 16);
    }

    v17 = v22;

    sub_1AFDFC588();

    if ((*(v17 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v7, v4);
      v18 = "";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v14, v15, v20, v16, v18, v19, 2u);
    MEMORY[0x1B271DEA0](v19, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF73FDA8()
{
  sub_1AF746D60(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF73FDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AF73FE0C, 0, 0);
}

uint64_t sub_1AF73FE0C()
{
  if (qword_1ED723F20 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1AF73FF70;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v3, v0 + 16, &unk_1AFE74E00, v1, 0, 0, 0xD000000000000014, 0x80000001AFF321E0);
}

uint64_t sub_1AF73FF70()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF7400E8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AF740100(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AF7401F8;

  return v6(a1);
}

uint64_t sub_1AF7401F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AF7402EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_1AF0D4320(a3, v23 - v11, &qword_1ED726C10, v8);
  v13 = sub_1AFDFD668();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_1AF0D438C(v12, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1AFDFD658();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AFDFD5B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AFDFCFB8();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19 + 32;
      v21 = swift_task_create();
      sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AF7405C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AF7405E4, 0, 0);
}

uint64_t sub_1AF7405E4()
{
  if (qword_1ED723F20 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1AF740748;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v3, v0 + 16, &unk_1AFE74C98, v1, 0, 0, 0xD000000000000014, 0x80000001AFF321E0);
}

void sub_1AF740748()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1AF740888(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AF740980;

  return v6(a1);
}

uint64_t sub_1AF740980()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AF740A78(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AF747834;

  return v6(a1);
}

uint64_t sub_1AF740B70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AF740C3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AF0D5A54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  return v7;
}

void *sub_1AF740C3C(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_7:
    result = sub_1AF740D48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    *a1 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a6 & 0x8000000000000000) == 0)
    {
      return swift_unknownObjectRetain();
    }
  }

  else
  {
    *a1 = sub_1AFDFE308();
    if ((a6 & 0x8000000000000000) == 0)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

void *sub_1AF740D48(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AF740D94(a1, a2);
  sub_1AF740E88(&unk_1F24FDE60);
  return v3;
}

void *sub_1AF740D94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = sub_1AFDFD118();
    if (v11)
    {
      v7 = sub_1AF87B1D8(v11, 0);
      sub_1AFDFE1D8();
      return v7;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AF87B1D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = v6 + 4;
    v8 = v15;
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v13 = sub_1AFDFE308();
      v4 = v14;
      v8 = v13;
    }

    v9 = v7 + 4;
    v10 = v4;
  }

  memcpy(v9, v8, v10);
  return v7;
}

uint64_t sub_1AF740E88(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF740F48(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[*(v4 + 2) + 32], (a1 + 32), v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

char *sub_1AF740F48(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF0D2DA0(0, &qword_1ED726920, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_1AF74103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  v10 = swift_task_alloc();
  *(v6 + 72) = v10;
  *v10 = v6;
  v10[1] = sub_1AF7410F4;

  return sub_1AF7459F0(v6 + 16, a4, a5, a6);
}

uint64_t sub_1AF7410F4()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    v4[1] = *(v2 + 32);
    v4[2] = v6;
    *v4 = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1AF74120C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1AF741300;

  return v5(v2 + 16);
}

uint64_t sub_1AF741300()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AF74144C;
  }

  else
  {
    v2 = sub_1AF741414;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF741414()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v4;
  *(v2 + 40) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1AF741464(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AF741558;

  return v5(v2 + 32);
}

uint64_t sub_1AF741558()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void *destroy for ShaderCache.ShaderCompilationTrigger(void *result)
{
  if (*result >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 sub_1AF7416B4(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

__n128 assignWithCopy for ShaderCache.ShaderCompilationTrigger(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

__n128 assignWithTake for ShaderCache.ShaderCompilationTrigger(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderCache.ShaderCompilationTrigger(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderCache.ShaderCompilationTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1AF741904(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 initializeWithCopy for PipelineStatistics(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 40);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PipelineStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 164))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PipelineStatistics(uint64_t result, int a2, int a3)
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
    *(result + 160) = 0;
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

  *(result + 164) = v3;
  return result;
}

uint64_t destroy for ShaderCache.Function()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *initializeWithCopy for ShaderCache.Function(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for ShaderCache.Function(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[4] = a2[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for ShaderCache.Function(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_1AF741BFC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1AF741C98(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
LABEL_27:

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    *a1 = *a2;
    *(a1 + v5) = 0;
    goto LABEL_27;
  }

  (*(v4 + 16))(a1);
  *(v3 + v5) = 1;
  return v3;
}

uint64_t sub_1AF741DF8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }
}

void *sub_1AF741EE0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    *a1 = *a2;

    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1AF742004(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 1;
        }

        else
        {
          *a1 = *a2;
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

void *sub_1AF7421F0(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  *(result + v3) = v10;
  return result;
}

unsigned __int8 *sub_1AF74230C(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = *(a2 + v7);
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *a1 = *a2;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t sub_1AF7424F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1AF74260C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void destroy for ShaderCache.ComputePipeline(uint64_t a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = *(a1 + 56);
}

void *initializeWithCopy for ShaderCache.ComputePipeline(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v7 = v6;
  return a1;
}

void *assignWithCopy for ShaderCache.ComputePipeline(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[4] = a2[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[5] = a2[5];

  a1[6] = a2[6];
  v4 = a1[7];
  v5 = a2[7];
  a1[7] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for ShaderCache.ComputePipeline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

void destroy for ShaderCache.RenderPipeline(void *a1)
{
  swift_unknownObjectRelease();
  if (a1[2])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[7])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[12])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[17])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  v2 = a1[53];
}

uint64_t initializeWithCopy for ShaderCache.RenderPipeline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 16);
  swift_unknownObjectRetain();
  if (v5)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    v6 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v6;
    *(a1 + 40) = *(a2 + 40);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v7 = *(a2 + 56);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v13;
    *(a1 + 40) = *(a2 + 40);
    v7 = *(a2 + 56);
    if (v7)
    {
LABEL_3:
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;
      v8 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v8;
      *(a1 + 80) = *(a2 + 80);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v9 = *(a2 + 96);
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      v11 = *(a2 + 136);
      if (v11)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v15;
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_10;
    }
  }

  v14 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v14;
  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 96);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_4:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  v10 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v10;
  *(a1 + 120) = *(a2 + 120);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v11 = *(a2 + 136);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v11;
  v12 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v12;
  *(a1 + 160) = *(a2 + 160);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

LABEL_10:
  v16 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v16;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  v17 = *(a2 + 272);
  v18 = *(a2 + 288);
  v19 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v19;
  *(a1 + 272) = v17;
  *(a1 + 288) = v18;
  v20 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v20;
  *(a1 + 352) = *(a2 + 352);
  v21 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v21;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 409) = *(a2 + 409);
  v22 = *(a2 + 416);
  v23 = *(a2 + 424);
  *(a1 + 416) = v22;
  *(a1 + 424) = v23;

  swift_unknownObjectRetain();

  v24 = v23;
  return a1;
}

uint64_t assignWithCopy for ShaderCache.RenderPipeline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 32) = *(a2 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      sub_1AF74345C(a1 + 8);
      v5 = *(a2 + 40);
      v6 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v6;
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
  }

  v9 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v9)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 72) = *(a2 + 72);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      sub_1AF74345C(a1 + 48);
      v10 = *(a2 + 80);
      v11 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v11;
      *(a1 + 80) = v10;
    }
  }

  else if (v9)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v12;
    *(a1 + 64) = v13;
  }

  v14 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v14)
    {
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 112) = *(a2 + 112);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      sub_1AF74345C(a1 + 88);
      v15 = *(a2 + 120);
      v16 = *(a2 + 104);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v16;
      *(a1 + 120) = v15;
    }
  }

  else if (v14)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v18;
    *(a1 + 88) = v17;
  }

  v19 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (v19)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 152) = *(a2 + 152);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 160) = *(a2 + 160);
    }

    else
    {
      sub_1AF74345C(a1 + 128);
      v20 = *(a2 + 160);
      v21 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v21;
      *(a1 + 160) = v20;
    }
  }

  else if (v19)
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v22 = *(a2 + 128);
    v23 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v22;
    *(a1 + 144) = v23;
  }

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 273) = *(a2 + 273);
  *(a1 + 274) = *(a2 + 274);
  *(a1 + 275) = *(a2 + 275);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 277) = *(a2 + 277);
  *(a1 + 278) = *(a2 + 278);
  *(a1 + 279) = *(a2 + 279);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 282) = *(a2 + 282);
  *(a1 + 283) = *(a2 + 283);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  *(a1 + 286) = *(a2 + 286);
  *(a1 + 287) = *(a2 + 287);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 289) = *(a2 + 289);
  *(a1 + 290) = *(a2 + 290);
  *(a1 + 291) = *(a2 + 291);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 293) = *(a2 + 293);
  *(a1 + 294) = *(a2 + 294);
  *(a1 + 295) = *(a2 + 295);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 297) = *(a2 + 297);
  *(a1 + 298) = *(a2 + 298);
  *(a1 + 299) = *(a2 + 299);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 301) = *(a2 + 301);
  *(a1 + 302) = *(a2 + 302);
  *(a1 + 303) = *(a2 + 303);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 305) = *(a2 + 305);
  *(a1 + 306) = *(a2 + 306);
  *(a1 + 307) = *(a2 + 307);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 309) = *(a2 + 309);
  *(a1 + 310) = *(a2 + 310);
  *(a1 + 311) = *(a2 + 311);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 314) = *(a2 + 314);
  *(a1 + 315) = *(a2 + 315);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 317) = *(a2 + 317);
  *(a1 + 318) = *(a2 + 318);
  *(a1 + 319) = *(a2 + 319);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  *(a1 + 322) = *(a2 + 322);
  *(a1 + 323) = *(a2 + 323);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 325) = *(a2 + 325);
  *(a1 + 326) = *(a2 + 326);
  *(a1 + 327) = *(a2 + 327);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 329) = *(a2 + 329);
  *(a1 + 330) = *(a2 + 330);
  *(a1 + 331) = *(a2 + 331);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 333) = *(a2 + 333);
  *(a1 + 334) = *(a2 + 334);
  *(a1 + 335) = *(a2 + 335);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);
  v24 = *(a2 + 360);
  v25 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v25;
  *(a1 + 360) = v24;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 409) = *(a2 + 409);
  *(a1 + 416) = *(a2 + 416);
  v26 = *(a1 + 424);
  v27 = *(a2 + 424);
  *(a1 + 424) = v27;
  v28 = v27;

  return a1;
}

uint64_t assignWithTake for ShaderCache.RenderPipeline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  if (!*(a1 + 16))
  {
LABEL_6:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    if (!*(a1 + 56))
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    sub_1AF74345C(a1 + 8);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);

  if (!*(a1 + 56))
  {
LABEL_11:
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
    *(a1 + 80) = *(a2 + 80);
    if (!*(a1 + 96))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_7:
  v5 = *(a2 + 56);
  if (!v5)
  {
    sub_1AF74345C(a1 + 48);
    goto LABEL_11;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);
  swift_unknownObjectRelease();
  *(a1 + 72) = *(a2 + 72);
  swift_unknownObjectRelease();
  *(a1 + 80) = *(a2 + 80);

  if (!*(a1 + 96))
  {
    goto LABEL_15;
  }

LABEL_12:
  v7 = *(a2 + 96);
  if (v7)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v7;

    *(a1 + 104) = *(a2 + 104);
    swift_unknownObjectRelease();
    *(a1 + 112) = *(a2 + 112);
    swift_unknownObjectRelease();
    *(a1 + 120) = *(a2 + 120);

    goto LABEL_16;
  }

  sub_1AF74345C(a1 + 88);
LABEL_15:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
LABEL_16:
  if (!*(a1 + 136))
  {
LABEL_20:
    v9 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v9;
    *(a1 + 160) = *(a2 + 160);
    goto LABEL_21;
  }

  v8 = *(a2 + 136);
  if (!v8)
  {
    sub_1AF74345C(a1 + 128);
    goto LABEL_20;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);
  swift_unknownObjectRelease();
  *(a1 + 160) = *(a2 + 160);

LABEL_21:
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 273) = *(a2 + 273);
  *(a1 + 277) = *(a2 + 277);
  *(a1 + 278) = *(a2 + 278);
  *(a1 + 279) = *(a2 + 279);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 285) = *(a2 + 285);
  *(a1 + 286) = *(a2 + 286);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 289) = *(a2 + 289);
  *(a1 + 293) = *(a2 + 293);
  *(a1 + 295) = *(a2 + 295);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 297) = *(a2 + 297);
  *(a1 + 301) = *(a2 + 301);
  *(a1 + 302) = *(a2 + 302);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 305) = *(a2 + 305);
  *(a1 + 309) = *(a2 + 309);
  *(a1 + 310) = *(a2 + 310);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 317) = *(a2 + 317);
  *(a1 + 318) = *(a2 + 318);
  *(a1 + 319) = *(a2 + 319);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  *(a1 + 325) = *(a2 + 325);
  *(a1 + 326) = *(a2 + 326);
  *(a1 + 327) = *(a2 + 327);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 329) = *(a2 + 329);
  *(a1 + 333) = *(a2 + 333);
  *(a1 + 334) = *(a2 + 334);
  *(a1 + 335) = *(a2 + 335);
  v10 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v10;

  *(a1 + 352) = *(a2 + 352);
  v11 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v11;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 409) = *(a2 + 409);
  v12 = *(a1 + 424);
  v13 = *(a2 + 424);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = v13;

  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderCache.RenderPipeline(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

uint64_t storeEnumTagSinglePayload for ShaderCache.RenderPipeline(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF743990()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1AF743A34(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = &v8[((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8];

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 3;
      v9 = v12 + 3;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 2;
  }

  else if (v9 == 1)
  {
    (*(v4 + 16))(a1);
    v3[v5] = 1;
  }

  else
  {
    v16 = *a2;
    *a1 = *a2;
    a1[v5] = 0;
    v17 = v16;
  }

  return v3;
}

void sub_1AF743BC4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }
}

void *sub_1AF743CBC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_18:
  if (v5 == 2)
  {
    v11 = *a2;
    v12 = *a2;
    *a1 = v11;
    v10 = 2;
  }

  else
  {
    if (v5 != 1)
    {
      v13 = *a2;
      *a1 = *a2;
      *(a1 + v4) = 0;
      v14 = v13;
      return a1;
    }

    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1AF743E08(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = *(a2 + v7);
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_36;
  }

  if (v7 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_34:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_34;
  }

LABEL_36:
  if (v13 == 2)
  {
    v19 = *a2;
    v20 = v19;
    *a1 = v19;
    v18 = 2;
  }

  else
  {
    if (v13 != 1)
    {
      v21 = *a2;
      *a1 = *a2;
      a1[v7] = 0;
      v22 = v21;
      return a1;
    }

    (*(v6 + 16))(a1, a2, v5);
    v18 = 1;
  }

  a1[v7] = v18;
  return a1;
}

void *sub_1AF744028(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 3;
  if (v4 < 3)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 3;
  v4 = v7 + 3;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 2)
  {
    *result = *a2;
    v10 = 2;
  }

  else if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  *(result + v3) = v10;
  return result;
}

unsigned __int8 *sub_1AF74415C(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = *(a2 + v7);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 3;
      v13 = v16 + 3;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 2)
  {
    *a1 = *a2;
    v18 = 2;
  }

  else if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *a1 = *a2;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t sub_1AF744370(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_1AF744410(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t destroy for ShaderCache.Library()
{
  swift_unknownObjectRelease();
}

void *initializeWithCopy for ShaderCache.Library(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for ShaderCache.Library(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

void *assignWithTake for ShaderCache.Library(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

uint64_t assignWithCopy for ShaderCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for ShaderCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_1AF744720(uint64_t a1, uint64_t a2)
{
  sub_1AF744784();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF744784()
{
  if (!qword_1ED723160)
  {
    sub_1AF447DFC(255, &unk_1ED723170);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723160);
    }
  }
}

void sub_1AF7447EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF0D2DA0(255, a3, a4, type metadata accessor for ShaderCache.Status);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1AF744858(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  v7 = v3 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v8 = *(v3 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v8);
  v9 = v4[5];
  v40 = a1;

  sub_1AF727AD4(sub_1AF746D40, v9, &v41);

  os_unfair_lock_unlock(v8);
  v10 = v41;
  if (!v41)
  {
    v11 = v4[2];
    v12 = sub_1AFDFC048();
    v35 = 0;
    v10 = [v11 newLibraryWithURL:v12 error:&v35];

    if (!v10)
    {
      v10 = v35;
      sub_1AFDFBF58();

      swift_willThrow();
      return v10;
    }

    v33 = a3;
    v13 = *(v7 + 3);
    v14 = v35;
    lock = v13;
    os_unfair_lock_lock(v13);
    v35 = 0x7972617262694CLL;
    v36 = 0xE700000000000000;
    v37 = *(v4[5] + 16);
    v15 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v15);

    v16 = v35;
    v17 = v36;
    v18 = sub_1AFDFCEC8();
    [v10 setLabel_];

    swift_unknownObjectRetain();
    v19 = sub_1AFDFC0D8();
    v31 = v20;
    v32 = v19;
    v21 = v4[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[5] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1AF421B4C(0, *(v21 + 2) + 1, 1, v21);
      v4[5] = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1AF421B4C(v23 > 1, v24 + 1, 1, v21);
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[40 * v24];
    *(v25 + 4) = v10;
    *(v25 + 5) = v32;
    *(v25 + 6) = v31;
    *(v25 + 7) = v16;
    *(v25 + 8) = v17;
    v4[5] = v21;
    if (v33)
    {
      v26 = v33;
    }

    else
    {
      v27 = v4[12];
      if (!v27)
      {

        goto LABEL_14;
      }

      v26 = v27;
    }

    v28 = v33;
    sub_1AFDFC0D8();

    v29 = &v26[OBJC_IVAR____TtC3VFX13ShaderArchive_lock];
    os_unfair_lock_lock(*&v26[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24]);
    sub_1AF70D45C(&v35, v16, v17, 0xD000000000000010, 0x80000001AFF31CF0);

    os_unfair_lock_unlock(v29[3]);

LABEL_14:
    os_unfair_lock_unlock(lock);
    return v10;
  }

  v38 = v42;
  sub_1AF585778(&v38);
  v39 = v43;
  sub_1AF585778(&v39);
  return v10;
}

uint64_t sub_1AF744BC0@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a1;
  v40 = a3;
  v38 = sub_1AFDFC4F8();
  v12 = *(v38 - 8);
  v14 = MEMORY[0x1EEE9AC00](v38, v13);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - v17;
  v19 = CACurrentMediaTime();
  v20 = qword_1ED7270F0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1AFDFC538();
  sub_1AF477C68(v21, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();

  v22 = sub_1AFDFC528();
  v23 = sub_1AFDFDB88();
  if (sub_1AFDFDCE8())
  {
    v36 = a2;
    v35 = v23;
    v24 = a6;
    if (v40)
    {

      v25 = &v41;
    }

    else
    {

      v25 = v39;
    }

    v34 = v25;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 134218242;
    *(v26 + 4) = v24;
    *(v26 + 12) = 2080;
    v28 = sub_1AF740B70(a4, a5, &v41);

    *(v26 + 14) = v28;
    v29 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, v35, v29, v34, "%ld %s", v26, 0x16u);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
    v30 = v27;
    a6 = v24;
    MEMORY[0x1B271DEA0](v30, -1, -1);
    MEMORY[0x1B271DEA0](v26, -1, -1);

    a2 = v36;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v31 = v38;
  (*(v12 + 16))(v37, v18, v38);
  sub_1AFDFC578();
  swift_allocObject();
  v32 = sub_1AFDFC568();
  result = (*(v12 + 8))(v18, v31);
  *a7 = v32;
  *(a7 + 8) = v19;
  *(a7 + 16) = v39;
  *(a7 + 24) = a2;
  *(a7 + 32) = v40;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

unint64_t sub_1AF744EE0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1AF744EF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1AF744F08(uint64_t a1)
{

  return a1;
}

uint64_t sub_1AF744F3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AF747838;

  return sub_1AF73D4C4(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_1AF74501C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF747838;

  return sub_1AF7405C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AF7450E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF0D2DA0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AF745154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF740A78(a1, v4);
}

uint64_t sub_1AF74520C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF740888(a1, v4);
}

void sub_1AF7452B8()
{
  if (!qword_1EB630D60)
  {
    sub_1AF7461A8(255, &qword_1EB630CA8, &qword_1EB630CB0, &protocolRef_MTLComputePipelineState, sub_1AF745364);
    sub_1AF5C5358(255, &qword_1ED7268D0);
    v0 = sub_1AFDFD5F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630D60);
    }
  }
}

void sub_1AF745364()
{
  if (!qword_1EB630C98)
  {
    sub_1AF0D4478(255, &qword_1EB630CA0);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630C98);
    }
  }
}

uint64_t sub_1AF7453CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF747840;

  return sub_1AF73F1DC(v2, v0 + 24, v3, v4);
}

uint64_t sub_1AF74547C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF73AC60(a1, v4);
}

unint64_t sub_1AF74554C()
{
  result = qword_1EB63E170;
  if (!qword_1EB63E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E170);
  }

  return result;
}

uint64_t sub_1AF7455A0(uint64_t a1)
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AF7455FC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AF747838;

  return sub_1AF72CCF4(a1, v1 + 16, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AF7456EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF747838;

  return sub_1AF74103C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AF7457C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1AF7457E0(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1AF7457E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1AF745858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(MEMORY[0x1E6974070]) init];
  v7 = sub_1AFDFCEC8();
  [v6 setName_];

  if (*(a3 + 16))
  {
    v8 = *(v4 + 168);
    if (v8 >> 62)
    {
      v9 = sub_1AFDFE108();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF0D4478(0, &unk_1ED723110);

    v11 = sub_1AF881E8C(v10, v9 != 0);

    [v6 setConstantValues_];
  }

  v12 = *(v4 + 168);
  if (v12 >> 62)
  {
    if (!sub_1AFDFE108())
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_1AF447DFC(0, &qword_1EB63BD20);

    v13 = sub_1AFDFD3F8();

    [v6 setBinaryArchives_];
  }

  return v6;
}

uint64_t sub_1AF7459F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AF745A14, 0, 0);
}

uint64_t sub_1AF745A14()
{
  if (qword_1ED723F20 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = *(v0 + 80);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1AF745B74;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 64, &unk_1AFE74CF8, v1, 0, 0, 0xD000000000000014, 0x80000001AFF321E0);
}

uint64_t sub_1AF745B74()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AF745D10, 0, 0);
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 32);
    v5 = *(v2 + 56);
    v6 = *(v2 + 40);
    *v3 = *(v2 + 16);
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 40) = v5;
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_1AF745D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF74120C(a1, v4);
}

void sub_1AF745DE0()
{
  if (!qword_1ED7231D0)
  {
    sub_1AF447DFC(255, &unk_1ED723170);
    sub_1AF5C5358(255, &qword_1ED7268D0);
    v0 = sub_1AFDFD5F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7231D0);
    }
  }
}

double sub_1AF745E70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 432) = -1;
  return result;
}

uint64_t sub_1AF745EB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF7447EC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF745F14(uint64_t a1)
{
  v1 = *(a1 + 432);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF745FA4()
{
  if (!qword_1ED723180)
  {
    sub_1AF447DFC(255, &qword_1ED723190);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723180);
    }
  }
}

uint64_t sub_1AF746014(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 448);
  v7 = *(v1 + 456);
  v8 = *(v1 + 880);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF7401F8;

  return sub_1AF732098(a1, v4, v5, (v1 + 32), v6, v7, v1 + 464, v8);
}

void sub_1AF7460FC()
{
  if (!qword_1ED7231C8)
  {
    sub_1AF7461A8(255, &qword_1ED723120, &qword_1ED723128, &protocolRef_MTLRenderPipelineState, sub_1AF746228);
    sub_1AF5C5358(255, &qword_1ED7268D0);
    v0 = sub_1AFDFD5F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7231C8);
    }
  }
}

void sub_1AF7461A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1AF447DFC(255, a3);
    a5(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF746228()
{
  if (!qword_1ED723100)
  {
    sub_1AF0D4478(255, &qword_1ED723108);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723100);
    }
  }
}

uint64_t sub_1AF746290()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF747840;

  return sub_1AF73A9D8(v2, v0 + 24, v3, v4);
}

uint64_t sub_1AF746340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF73AC60(a1, v4);
}

uint64_t sub_1AF7463F8()
{
  v2 = *(v0 + 432);
  v3 = *(v0 + 856);
  v4 = *(v0 + 864);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF7464B0;

  return sub_1AF73AD4C(v0 + 16, v2, v0 + 440, v3, v4);
}

uint64_t sub_1AF7464B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1AF7465AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF73B128(a1, v4);
}

void sub_1AF746664()
{
  if (!qword_1ED7231F8)
  {
    sub_1AF447DFC(255, &unk_1ED723170);
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7231F8);
    }
  }
}

uint64_t sub_1AF7466CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF747840;

  return sub_1AF73B824(v2, v0 + 24, v3, v4);
}

uint64_t sub_1AF74677C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF747840;

  return sub_1AF73B324(v2, v0 + 24, v3, v4);
}

uint64_t sub_1AF74682C()
{

  if (*(v0 + 32))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 72))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 112))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 152))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 456, 7);
}

uint64_t sub_1AF746914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AF747840;

  return sub_1AF73B6C4(v2, v0 + 24, v3, v4);
}

void sub_1AF7469C4()
{
  if (!qword_1ED725370[0])
  {
    sub_1AF447DFC(255, &unk_1ED723170);
    v0 = type metadata accessor for UncheckedSendable();
    if (!v1)
    {
      atomic_store(v0, qword_1ED725370);
    }
  }
}

uint64_t sub_1AF746A2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1AF747838;

  return sub_1AF72E2AC(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_1AF746B0C()
{
  if (!qword_1ED7231B8)
  {
    sub_1AF7469C4();
    sub_1AF5C5358(255, &qword_1ED7268D0);
    v0 = sub_1AFDFD6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7231B8);
    }
  }
}

uint64_t sub_1AF746B8C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AF747838;

  return sub_1AF72EB24(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AF746C88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF741464(a1, v4);
}

uint64_t sub_1AF746D60(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF746DCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1AF447894(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1AF746DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AF7401F8;

  return sub_1AF72B7A8(a1, v4, v5, v6);
}

uint64_t sub_1AF746E98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF746EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF747838;

  return sub_1AF73FDE8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AF746FA8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1AF747018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AF747838;

  return sub_1AF740100(a1, v4);
}

uint64_t sub_1AF7470C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1AF747124(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  if (a9 == 2)
  {

    return result;
  }

  if (a9 != 1)
  {
    if (a9)
    {
      return result;
    }

    return result;
  }

  v9 = a8;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
}

void sub_1AF747210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  switch(a9)
  {
    case 2:

      goto LABEL_8;
    case 1:
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      a1 = a8;
LABEL_6:

LABEL_8:

      return;
    case 0:
      goto LABEL_6;
  }
}

uint64_t sub_1AF7473E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    swift_unknownObjectRetain();
  }
}

uint64_t sub_1AF747434(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeWithCopy for ShaderError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF7473E0(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for ShaderError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF7473E0(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_1AF747434(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for ShaderError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1AF747434(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SamplerArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplerArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destroy for Signpost()
{
}

uint64_t initializeWithCopy for Signpost(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for Signpost(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for Signpost(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_1AF747850()
{
  v45 = *MEMORY[0x1E69E9840];
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v41 - v7;
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *(v0 + 160);
  if (v17)
  {
    v41 = &v41 - v16;
    v18 = OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo;
    sub_1AF456C4C(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, v8);
    v19 = *(v10 + 48);
    v20 = v19(v8, 1, v9);
    v21 = v17;
    v22 = v20;
    v42 = v21;
    swift_unknownObjectRetain();
    sub_1AF456B8C(v8);
    if (v22 == 1)
    {
      v23 = [objc_opt_self() defaultManager];
      v24 = [v23 temporaryDirectory];

      sub_1AFDFC0B8();
      v25 = v41;
      sub_1AFDFC088();
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_1AF456C4C(v0 + v18, v4);
      v19(v4, 1, v9);
      v25 = v41;
      (*(v10 + 32))(v41, v4, v9);
    }

    v26 = sub_1AFDFC048();
    v43 = 0;
    v27 = [v42 serializeToURL:v26 error:&v43];

    if (v27)
    {
      v28 = qword_1ED730EA0;
      v29 = v43;
      if (v28 != -1)
      {
        swift_once();
      }

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1AFDFE218();

      v43 = 0xD000000000000021;
      v44 = 0x80000001AFF328C0;
      sub_1AF48F374();
      v30 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v30);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      v32 = v43;
      v31 = v44;
      v33 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v39 = v33;
        swift_once();
        v33 = v39;
      }

      v43 = 0;
      sub_1AF0D4F18(v33, &v43, v32, v31);
      swift_unknownObjectRelease();

      (*(v10 + 8))(v25, v9);
    }

    else
    {
      v34 = v43;
      v35 = sub_1AFDFBF58();

      swift_willThrow();
      (*(v10 + 8))(v25, v9);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF32890);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v37 = v43;
      v36 = v44;
      v38 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v40 = v38;
        swift_once();
        v38 = v40;
      }

      v43 = 0;
      sub_1AF0D4F18(v38, &v43, v37, v36);

      swift_unknownObjectRelease();
    }
  }
}