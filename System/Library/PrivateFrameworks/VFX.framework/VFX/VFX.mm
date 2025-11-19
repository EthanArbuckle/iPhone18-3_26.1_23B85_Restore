uint64_t sub_1AF0D0B50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF0D0B88()
{
  sub_1AF0D1030(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AF0D0CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF0D0DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D0FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D1030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF0D1094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1AF0D113C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene] = 0;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect] = 0;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture] = 0;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_depthTexture] = 0;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor] = 0;
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView] = 0;
  v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_performMetalCaptureDuringSnapshot] = 0;
  v4 = &v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback];
  *v4 = 0;
  v4[1] = 0;
  v5 = CFXGPUDeviceCreate([a1 device]);
  swift_unknownObjectRelease();
  v10 = 1;
  v9 = 1;
  v8 = 1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = 1;
  v20 = 260;
  v21 = 0;
  v22 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer] = sub_1AF70A2F4(v5, a1, &v11, 0);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VFXRendererLegacy();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t CFXGPUDeviceCreateWithOptions(void *a1, char a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (!v3)
    {
      return 0;
    }
  }

  v4 = v3;
  if (qword_1ED73B058[0] != -1)
  {
    sub_1AF0D15D0();
  }

  v5 = sub_1AF0D160C(qword_1ED73B050, 0xA0uLL);
  objc_storeStrong((v5 + 16), v4);
  if (prof_getEnabled())
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 & 0xFE;
  }

  *(v5 + 24) = v6;
  if (v6)
  {
    vfx_counters_get_default_ring_capacity();
    vfx_counters_create();
  }

  v7 = *MEMORY[0x1E695E480];
  if ((v6 & 2) != 0)
  {
    *(v5 + 128) = 0;
    v8 = MEMORY[0x1E695E9C0];
    *(v5 + 136) = CFArrayCreateMutable(v7, 16, MEMORY[0x1E695E9C0]);
    *(v5 + 144) = CFArrayCreateMutable(v7, 16, v8);
    *(v5 + 152) = 0;
    *(v5 + 160) = CFArrayCreateMutable(v7, 16, 0);
    *(v5 + 168) = CFArrayCreateMutable(v7, 16, 0);
  }

  v15 = *&byte_1F24E6EA0[16];
  v16 = *byte_1F24E6EA0;
  valueCallBacks = *byte_1F24E6EA0;
  v9 = *&byte_1F24E6EA0[32];
  *(v5 + 80) = 0;
  *(v5 + 88) = CFDictionaryCreateMutable(v7, 16, 0, &valueCallBacks);
  v10 = objc_opt_new();
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  *&valueCallBacks.version = v16;
  *&valueCallBacks.release = v15;
  valueCallBacks.equal = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = CFDictionaryCreateMutable(v7, 16, 0, &valueCallBacks);
  v12 = objc_opt_new();
  v13 = *(v5 + 120);
  *(v5 + 120) = v12;

  return v5;
}

uint64_t sub_1AF0D15E4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73B050 = result;
  return result;
}

uint64_t sub_1AF0D160C(CFTypeID a1, size_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a2);
  }

  else
  {
    v6 = CFCopyTypeIDDescription(a1);
    CFRelease(v6);
  }

  return v2;
}

uint64_t sub_1AF0D169C(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = a1;
  *(a1 + 72) = a2;
  *(a1 + 88) = sub_1AF115DB8();
  *(a1 + 96) = sub_1AF158F10(a1);
  *(a1 + 104) = sub_1AF1DE718();
  *(a1 + 128) = sub_1AF137698(a1);
  *(a1 + 136) = sub_1AF141028();
  *(a1 + 144) = sub_1AF12DA84();
  *(a1 + 120) = sub_1AF131E6C(a1);
  v4 = sub_1AF14C0EC(a1);
  *(a1 + 160) = v4;
  *(a1 + 152) = sub_1AF12722C(v4);
  if (prof_getEnabled())
  {
    vfx_counters_get_default_ring_capacity();
    vfx_counters_create();
  }

  sub_1AF118FB0(*(a1 + 88), *(a1 + 104));
  v6.__sig = 0;
  *v6.__opaque = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutexattr_setpolicy_np(&v6, 1);
  pthread_mutex_init((a1 + 264), &v6);
  result = pthread_mutexattr_destroy(&v6);
  if ((a2 & 1) == 0)
  {
    result = sub_1AF14E194(a1);
    *(a1 + 168) = result;
  }

  *(a1 + 176) = 0;
  return result;
}

id sub_1AF0D1AD8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED73B7F8 = result;
  return result;
}

void sub_1AF0D1B40()
{
  sub_1AF0D1030(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id VFXScene.LoadOptions.init()()
{
  v0[OBJC_IVAR___VFXSceneLoadOptions_isAuthoringWorld] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_isVFX2] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_isRenderingInRE] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_enableRuntimeScriptCompilation] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_allowLoadingFromFuture] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_setupAsTemplate] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene] = 1;
  v0[OBJC_IVAR___VFXSceneLoadOptions_setupAsyncRuntime] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_asyncRuntimeLock] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_loadBindingsMetadata] = 1;
  v0[OBJC_IVAR___VFXSceneLoadOptions_enableParallelDecoding] = 1;
  v0[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer] = 1;
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_colorPixelFormat] = 0;
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_depthPixelFormat] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_enableDeferredRendering] = 2;
  v0[OBJC_IVAR___VFXSceneLoadOptions_internalPixelFormatDepth] = 1;
  v0[OBJC_IVAR___VFXSceneLoadOptions_useGammaBlending] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_doNotClearRenderOutput] = 0;
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_device] = 0;
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_commandQueue] = 0;
  v1 = &v0[OBJC_IVAR___VFXSceneLoadOptions_clientID];
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR___VFXSceneLoadOptions_metalLibraryURL;
  v3 = sub_1AFDFC128();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions] = 3179529;
  v4 = OBJC_IVAR___VFXSceneLoadOptions_counterStorage;
  *&v0[v4] = vfx_counters_null();
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_peerPid] = -1;
  *&v0[OBJC_IVAR___VFXSceneLoadOptions_peerTaskIdentity] = 0;
  v0[OBJC_IVAR___VFXSceneLoadOptions_loadPrecompiledScripts] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VFXScene.LoadOptions(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

id VFXREDrawCall.init()()
{
  *&v0[OBJC_IVAR___VFXREDrawCall_drawCall] = 0;
  v1 = &v0[OBJC_IVAR___VFXREDrawCall_aabb];
  *v1 = xmmword_1AFE201A0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v0[OBJC_IVAR___VFXREDrawCall__isDepthOnly] = 0;
  v0[OBJC_IVAR___VFXREDrawCall__writesColor] = 0;
  v0[OBJC_IVAR___VFXREDrawCall__writesSeparateDepth] = 0;
  v0[OBJC_IVAR___VFXREDrawCall__needsLinearDepth] = 0;
  v0[OBJC_IVAR___VFXREDrawCall__drawsForBlur] = 0;
  v0[OBJC_IVAR___VFXREDrawCall__isAdditive] = 0;
  *&v0[OBJC_IVAR___VFXREDrawCall__materialType] = 0;
  v2 = OBJC_IVAR___VFXREDrawCall_reProvidedBuffers;
  v3 = sub_1AF0D20CC(&unk_1F25034D8);
  swift_arrayDestroy();
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___VFXREDrawCall_reProvidedTextures;
  v5 = sub_1AF0D20CC(&unk_1F2503518);
  swift_arrayDestroy();
  *&v0[v4] = v5;
  v6 = &v0[OBJC_IVAR___VFXREDrawCall_handler];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR___VFXREDrawCall_renderPassName];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v0[OBJC_IVAR___VFXREDrawCall_renderPassIdentifier] = -1;
  *&v0[OBJC_IVAR___VFXREDrawCall_emitter] = 0xFFFFFFFFLL;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VFXREDrawCall();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1AF0D20CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B27191B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1AF0D2164(&v7, v5, v6);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AF0D2164(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AFDFF288();
  sub_1AFDFD038();
  v8 = sub_1AFDFF2F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1AF0D22B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AF0D22B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1AF70F170();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1AF713914();
LABEL_16:
      v15 = *v4;
      *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v16 = (*(v15 + 48) + 16 * a3);
      *v16 = v7;
      v16[1] = a2;
      ++*(v15 + 16);
      return result;
    }

    sub_1AF715244();
  }

  v10 = *v4;
  sub_1AFDFF288();
  sub_1AFDFD038();
  result = sub_1AFDFF2F8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = ~v11;
  while (1)
  {
    v13 = (*(v10 + 48) + 16 * a3);
    if (*v13 == v7 && v13[1] == a2)
    {
      break;
    }

    result = sub_1AFDFEE28();
    if (result)
    {
      break;
    }

    a3 = (a3 + 1) & v12;
    if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for EntityManager()
{
  result = qword_1ED72C8D0;
  if (!qword_1ED72C8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1AF0D24C0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_1AF0D24E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638C80, sub_1AF447D7C, sub_1AF447E5C);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 - 3);
    v8 = *(v4 - 2);
    v9 = sub_1AF41A9B4(v7);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v7;
    v10 = (v3[7] + 24 * v9);
    *v10 = v8;
    v10[1] = v5;
    v10[2] = v6;
    ++v3[2];
    swift_unknownObjectRetain();
    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF0D2608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447CC8();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = v4[2];
    v15 = *(v4 + 3);
    v8 = v4[5];
    v9 = *(v4 + 48);
    *v16 = *(v4 - 3);
    *&v16[8] = *(v4 - 1);
    *&v16[24] = v5;
    v17 = v6;
    v10 = sub_1AF41A8F8(v16);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = v3[6] + 40 * v10;
    v12 = *&v16[16];
    *v11 = *v16;
    *(v11 + 16) = v12;
    *(v11 + 32) = v17;
    v13 = v3[7] + 40 * v10;
    *v13 = v7;
    *(v13 + 8) = v15;
    *(v13 + 24) = v8;
    *(v13 + 32) = v9;
    ++v3[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v4 += 10;
    --v1;
  }

  while (v1);
  return v3;
}

id sub_1AF0D2748(uint64_t a1, const void *a2, void *a3, uint64_t a4, int a5)
{
  if (a3)
  {
    v5 = a4;
    if (a5 && (*(a1 + 24) & 2) != 0)
    {
      v12 = sub_1AF1D255C();
      v13 = a3 + v12 - 1;
      v14 = -v12;
      v15 = sub_1AF1D2590(v13 & -v12);
      v17 = v15;
      if (a2)
      {
        memcpy(v15, a2, a3);
      }

      v10 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(*(a1 + 16), v16, v17, v13 & v14, 0, &unk_1F24E6E80);
    }

    else
    {
      v9 = *(a1 + 16);
      if (a2)
      {
        v10 = objc_msgSend_newBufferWithBytes_length_options_(v9, a2, a2, a3, a4);
      }

      else
      {
        v10 = objc_msgSend_newBufferWithLength_options_(v9, 0, a3, a4);
      }
    }

    v11 = v10;
    sub_1AF0D2874(a1, v10, a3, v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1AF0D2874(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = *(a1 + 24);
  if ((v8 & 2) != 0)
  {
    os_unfair_lock_lock((a1 + 128));
    CFArrayAppendValue(*(a1 + 136), v7);
    os_unfair_lock_unlock((a1 + 128));
    v8 = *(a1 + 24);
  }

  v9 = (a4 & 0xF0) == 32;
  v10 = 40;
  if ((a4 & 0xF0) == 0x20)
  {
    v10 = 44;
  }

  v11 = *(a1 + v10);
  v12 = 48;
  if (v9)
  {
    v12 = 52;
  }

  v13 = *(a1 + v12);
  if (v8)
  {
    vfx_counters_update(*(a1 + 32), v11, 1.0);
    vfx_counters_update(*(a1 + 32), v13, a3);
  }

  objc_initWeak(&location, a1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF134D2C;
  v14[3] = &unk_1E7A79CD0;
  objc_copyWeak(v15, &location);
  v16 = v11;
  v17 = v13;
  v15[1] = a3;
  v15[2] = v7;
  sub_1AF0D29D4(v7, a1, v14);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void sub_1AF0D29B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AF0D29D4(void *a1, const void *a2, void *a3)
{
  object = a1;
  v5 = a3;
  if (object)
  {
    v6 = objc_getAssociatedObject(object, a2);

    if (!v6)
    {
      v7 = objc_alloc_init(DeallocNotifier);
      objc_msgSend_setOnDealloc_(v7, v8, v5, v9);
      objc_setAssociatedObject(object, a2, v7, 1);
    }
  }
}

void sub_1AF0D2A84(void *a1)
{
  v15 = a1;
  if ((_UIApplicationIsExtension() & 1) != 0 || (objc_msgSend__applicationKeyWindow(MEMORY[0x1E69DD2E8], v1, v2, v3), v4 = objc_claimAutoreleasedReturnValue(), isHostedInAnotherProcess = objc_msgSend__isHostedInAnotherProcess(v4, v5, v6, v7), v4, isHostedInAnotherProcess))
  {
    v9 = v15;
    if (objc_msgSend_getBackgroundGPUPriority(v9, v10, v11, v12) == 3)
    {
      objc_msgSend_setBackgroundGPUPriority_(v9, v13, 2, v14);
    }
  }
}

uint64_t _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(void *a1)
{
  if (qword_1ED731420 != -1)
  {
    swift_once();
  }

  [qword_1ED731428 lock];
  if (qword_1ED731438 != -1)
  {
    swift_once();
  }

  v2 = [a1 registryID];
  if (!*(off_1ED730AC0 + 2) || (sub_1AF449CB8(v2), (v3 & 1) == 0))
  {
    v8 = 0;
    v9 = 1;
    sub_1AF0D2D44(&v8, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720]);
LABEL_10:
    type metadata accessor for ShaderCache();
    swift_allocObject();
    v5 = swift_unknownObjectRetain();
    Strong = sub_1AF0D2F80(v5);
    v6 = [a1 registryID];
    swift_weakInit();
    v9 = 0;
    sub_1AF82499C(&v8, v6);
    goto LABEL_11;
  }

  sub_1AF7472D8();
  v9 = 0;
  Strong = swift_weakLoadStrong();
  sub_1AF0D2D44(&v8, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720]);
  if (!Strong)
  {
    goto LABEL_10;
  }

LABEL_11:
  [qword_1ED731428 unlock];
  return Strong;
}

id sub_1AF0D2CE8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED731428 = result;
  return result;
}

void *sub_1AF0D2D1C()
{
  result = sub_1AF43AE7C(MEMORY[0x1E69E7CC0]);
  off_1ED730AC0 = result;
  return result;
}

uint64_t sub_1AF0D2D44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF0D2DA0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF0D2DA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Entity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for ShaderCache()
{
  result = qword_1ED7313E8;
  if (!qword_1ED7313E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF0D2E5C()
{
  sub_1AF0D0D84(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AF0D2F80(void *a1)
{
  v2 = v1;
  v70 = *MEMORY[0x1E69E9840];
  v65[1] = *v1;
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v65[0] = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v65 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v65 - v14;
  sub_1AF0D0D84(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v65 - v18;
  v20 = MEMORY[0x1E69E7CC0];
  v2[5] = MEMORY[0x1E69E7CC0];
  v2[6] = sub_1AF0D3D98(v20);
  v2[7] = sub_1AF0D3C00(v20);
  v2[8] = sub_1AF0D3F4C(v20);
  v2[9] = sub_1AF0D406C(v20);
  v2[10] = sub_1AF0D4164(v20);
  v2[11] = sub_1AF0D4164(v20);
  *(v2 + 104) = 0;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  v2[20] = 0;
  v2[21] = v20;
  v21 = OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo;
  (*(v5 + 56))(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, 1, 1, v4);
  v22 = (v2 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  *v22 = 0;
  v22[1] = 0;
  v23 = v2 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v24 = swift_slowAlloc();
  *v24 = 0;
  *v23 = "lock ShaderCache";
  *(v23 + 1) = 16;
  v23[16] = 2;
  *(v23 + 3) = v24;
  v25 = (v2 + OBJC_IVAR____TtC3VFX11ShaderCache_reloadCallback);
  *v25 = nullsub_106;
  v25[1] = 0;
  if (qword_1ED730F98 != -1)
  {
    swift_once();
  }

  v67 = v4;
  if (byte_1ED72FA72 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v26 = sub_1AFDFDA28();
    v68 = 1;
    sub_1AF75A4B4(v26, 0xD000000000000027, 0x80000001AFF327E0, &v68);
  }

  v2[2] = a1;
  swift_getObjectType();
  v2[3] = [swift_unknownObjectRetain() newDefaultLibrary];
  v66 = [objc_opt_self() standardUserDefaults];
  v27 = MEMORY[0x1E6968FB0];
  sub_1AF0D4320(v2 + v21, v19, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v28 = (*(v5 + 48))(v19, 1, v67);
  sub_1AF0D438C(v19, &qword_1ED7315E0, v27);
  if (v28 != 1 || (v29 = sub_1AFDFCEC8(), v30 = [v66 BOOLForKey_], v29, v30))
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E6973FE8]) init];
    v68 = 0;
    v32 = [a1 newBinaryArchiveWithDescriptor:v31 error:&v68];
    v33 = v68;
    if (!v32)
    {
      v64 = v33;
      sub_1AFDFBF58();

      swift_willThrow();
      swift_unexpectedError();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1AF0D438C(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
      sub_1AF744EF4(*(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation));

      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v2[20] = v32;
    swift_unknownObjectRelease();
  }

  if (qword_1ED730840 != -1)
  {
    swift_once();
  }

  v34 = byte_1ED72FA71;
  if (byte_1ED72FA71 == 1)
  {
    v35 = sub_1AF71A73C();
    v36 = objc_allocWithZone(type metadata accessor for ShaderArchive());
    v37 = sub_1AF71A860(v35);
  }

  else
  {
    v37 = 0;
  }

  v2[12] = v37;
  sub_1AF0D4478(0, &qword_1ED7307E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_1AFDFCEC8();
  v41 = sub_1AFDFCEC8();
  v42 = [v39 URLForResource:v40 withExtension:v41];

  sub_1AFDFC0B8();
  v43 = v67;
  (*(v5 + 16))(v12, v15, v67);
  v44 = objc_allocWithZone(type metadata accessor for ShaderLibrary());
  swift_unknownObjectRetain();
  v45 = sub_1AF0D45F8(v12, a1, 0, 0x616665642D786676, 0xEB00000000746C75);
  v46 = *(v5 + 8);
  v46(v15, v43);
  v2[4] = v45;
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = (v45 + OBJC_IVAR____TtC3VFX13ShaderLibrary_reloadedNotificationBlock);
  *v48 = sub_1AF7472E8;
  v48[1] = v47;

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1AFDFE218();

  v68 = 0xD000000000000012;
  v69 = 0x80000001AFF32730;
  v49 = MTLGetShaderCachePath();
  v50 = sub_1AFDFCEF8();
  v52 = v51;

  MEMORY[0x1B2718AE0](v50, v52);

  v54 = v68;
  v53 = v69;
  v55 = sub_1AFDFDA28();
  v56 = v66;
  if (qword_1ED731058 != -1)
  {
    v63 = v55;
    swift_once();
    v55 = v63;
  }

  v68 = 0;
  sub_1AF0D4F18(v55, &v68, v54, v53);

  if (v2[20])
  {
    v57 = sub_1AFDFDA28();
    v68 = 0;
    sub_1AF0D4F18(v57, &v68, 0xD00000000000001ELL, 0x80000001AFF327A0);
  }

  if (v34)
  {
    v58 = sub_1AFDFDA28();
    v68 = 0;
    sub_1AF0D4F18(v58, &v68, 0xD000000000000020, 0x80000001AFF32770);
  }

  v59 = sub_1AFDFCEC8();
  v60 = [v56 stringForKey_];

  if (v60)
  {
    sub_1AFDFCEF8();

    v61 = v65[0];
    sub_1AFDFC018();

    sub_1AF728E38();
    swift_unknownObjectRelease();

    v46(v61, v67);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1AF0D3BC8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1AF0D3C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447910();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    v6 = v4[1];
    *v16 = *v4;
    *&v16[16] = v6;
    v7 = v4[3];
    *&v16[32] = v4[2];
    *&v16[48] = v7;
    *&v16[57] = *(v4 + 57);
    v8 = *v16;
    v9 = sub_1AF0D3F10(*v16);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v8;
    v10 = v3[7] + 72 * v9;
    *v10 = *&v16[8];
    v11 = *&v16[24];
    v12 = *&v16[40];
    v13 = *&v16[56];
    *(v10 + 64) = v16[72];
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 16) = v11;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF447AA4(v16, v15, &unk_1EB638C30, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, sub_1AF44799C);
    v4 += 5;
  }

  sub_1AF447AA4(v16, v15, &unk_1EB638C30, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, sub_1AF44799C);
  return v3;
}

void *sub_1AF0D3D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447A18();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    memcpy(__dst, v4, 0x1B9uLL);
    v6 = __dst[0];
    v7 = sub_1AF0D3F10(__dst[0]);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v6;
    memcpy((v3[7] + 440 * v7), &__dst[1], 0x1B1uLL);
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF447AA4(__dst, v9, &unk_1EB638C38, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, sub_1AF44799C);
    v4 += 448;
  }

  sub_1AF447AA4(__dst, v9, &unk_1EB638C38, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, sub_1AF44799C);
  return v3;
}

void *sub_1AF0D3F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447808();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 48;
  do
  {
    v5 = *(v4 - 16);
    v15 = *(v4 - 8);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    v11 = *(v4 + 40);
    v12 = sub_1AF0D3F10(v5);
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v3[6] + 8 * v12) = v5;
    v13 = v3[7] + 56 * v12;
    *v13 = v15;
    *(v13 + 8) = v6;
    *(v13 + 16) = v7;
    *(v13 + 24) = v8;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    *(v13 + 48) = v11;
    ++v3[2];
    sub_1AF447894(v15, v6, v7, v8, v9, v10, v11);
    v4 += 64;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF0D4098(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v7 += 16;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + v10) = v9;
    ++v6[2];
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF0D4164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447748();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v17 = v4[8];
    v18 = v4[9];
    v19 = *(v4 + 40);
    v13 = v4[4];
    v14 = v4[5];
    v15 = v4[6];
    v16 = v4[7];
    v9 = *v4;
    v10 = v4[1];
    v11 = v4[2];
    v12 = v4[3];
    v6 = sub_1AF0D3F10(v5);
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    *(v3[6] + 8 * v6) = v5;
    v7 = v3[7] + 164 * v6;
    *v7 = v9;
    *(v7 + 16) = v10;
    *(v7 + 64) = v13;
    *(v7 + 80) = v14;
    *(v7 + 32) = v11;
    *(v7 + 48) = v12;
    *(v7 + 160) = v19;
    *(v7 + 128) = v17;
    *(v7 + 144) = v18;
    *(v7 + 96) = v15;
    *(v7 + 112) = v16;
    ++v3[2];
    v4 += 11;
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1AF0D4290()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1AFDFCEC8();
  v2 = [v0 BOOLForKey_];

  byte_1ED72FA72 = v2;
}

uint64_t sub_1AF0D4320(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AF0D0D84(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF0D438C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF0D0D84(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF0D43E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1AFDFCEC8();
  v2 = [v0 BOOLForKey_];

  byte_1ED72FA71 = v2;
}

uint64_t sub_1AF0D4478(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ShaderLibrary()
{
  result = qword_1ED7310F8;
  if (!qword_1ED7310F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF0D450C()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    result = sub_1AFDFC298();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void (*sub_1AF0D45F8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t, uint64_t)
{
  v6 = v5;
  v45 = a4;
  v50 = a3;
  v53[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  sub_1AF0D4AA4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AFDFC298();
  v47 = *(v13 - 8);
  v48 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v42 = &v41 - v18;
  v19 = &v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_reloadedNotificationBlock];
  *v19 = nullsub_106;
  v19[1] = 0;
  v44 = OBJC_IVAR____TtC3VFX13ShaderLibrary_device;
  *&v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_device] = a2;
  v20 = OBJC_IVAR____TtC3VFX13ShaderLibrary_libraryURL;
  v21 = sub_1AFDFC128();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v49 = v20;
  v23(&v6[v20], a1, v21);
  swift_unknownObjectRetain();
  v24 = sub_1AFDFC048();
  v53[0] = 0;
  v25 = [a2 newLibraryWithURL:v24 error:v53];

  v26 = v53[0];
  if (v25)
  {
    v49 = a1;
    v44 = v21;
    v41 = a2;
    v28 = v50;
    v27 = ObjectType;
    *&v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_library] = v25;
    v29 = &v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_label];
    *v29 = v45;
    *(v29 + 1) = a5;
    v30 = v26;
    swift_unknownObjectRetain();
    if (a5)
    {

      v31 = sub_1AFDFCEC8();
    }

    else
    {
      v31 = 0;
    }

    v34 = v46;
    [v25 setLabel_];
    swift_unknownObjectRelease();

    sub_1AF0D4AFC(v34);
    v35 = v47;
    v36 = v48;
    if ((*(v47 + 48))(v34, 1, v48) == 1)
    {
      sub_1AF747ED0(v34);
      v37 = v43;
      sub_1AFDFC248();
      (*(v35 + 32))(&v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_lastModificationDate], v37, v36);
    }

    else
    {
      v38 = *(v35 + 32);
      v39 = v42;
      v38(v42, v34, v36);
      v38(&v6[OBJC_IVAR____TtC3VFX13ShaderLibrary_lastModificationDate], v39, v36);
    }

    v52.receiver = v6;
    v52.super_class = v27;
    v33 = objc_msgSendSuper2(&v52, sel_init);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v49, v44);
  }

  else
  {
    v32 = v53[0];

    sub_1AFDFBF58();

    swift_willThrow();
    swift_unknownObjectRelease();

    v33 = *(v22 + 8);
    v33(a1, v21);
    swift_unknownObjectRelease();
    v33(&v6[v49], v21);

    swift_deallocPartialClassInstance();
  }

  return v33;
}

void sub_1AF0D4AA4()
{
  if (!qword_1ED730AD8)
  {
    sub_1AFDFC298();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED730AD8);
    }
  }
}

uint64_t sub_1AF0D4AFC@<X0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  sub_1AFDFC0D8();
  v3 = sub_1AFDFCEC8();

  v16 = 0;
  v4 = [v2 attributesOfItemAtPath:v3 error:&v16];

  v5 = v16;
  if (v4)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1AF0D4D9C(&unk_1ED730820, type metadata accessor for FileAttributeKey);
    v6 = sub_1AFDFCC08();
    v7 = v5;

    if (*(v6 + 16))
    {
      v8 = sub_1AF0D5878(*MEMORY[0x1E696A350]);
      if (v9)
      {
        sub_1AF0D5A54(*(v6 + 56) + 32 * v8, v17);

        v10 = sub_1AFDFC298();
        v11 = swift_dynamicCast();
        return (*(*(v10 - 8) + 56))(a1, v11 ^ 1u, 1, v10);
      }
    }
  }

  else
  {
    v13 = v16;
    v14 = sub_1AFDFBF58();

    swift_willThrow();
  }

  v15 = sub_1AFDFC298();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

void sub_1AF0D4D50(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1AF0D4D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF0D4E2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF0D4E74()
{
  if (!qword_1ED7315D0)
  {
    sub_1AFDFC298();
    type metadata accessor for OSLogType(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED7315D0);
    }
  }
}

uint64_t sub_1AF0D4F18(int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  sub_1AF0D4E74();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1AFDFC298();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  if (qword_1ED730E98 != -1)
  {
    swift_once();
  }

  sub_1AF0D5C8C(0, &qword_1ED730B50, 255, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1AF0D544C();
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;

  v17 = v24;
  sub_1AFDFC4C8();

  sub_1AFDFC288();
  v18 = v8[12];
  v19 = v8[16];
  v20 = &v11[v8[20]];
  (*(v12 + 32))(v11, v15, v23);
  v11[v18] = v17;
  *&v11[v19] = v22;
  *v20 = a3;
  *(v20 + 1) = a4;

  sub_1AFDFC608();

  return sub_1AF0D54A0(v11);
}

uint64_t sub_1AF0D5194()
{
  if (qword_1ED73B018 != -1)
  {
    sub_1AF0D5C2C();
  }

  return qword_1ED73B020;
}

void sub_1AF0D51CC()
{
  qword_1ED73B020 = os_log_create("com.apple.vfx", "VFX");
  if (sub_1AF0D5C40(15))
  {
    v0 = qword_1ED73B020;
    if (os_log_type_enabled(qword_1ED73B020, OS_LOG_TYPE_DEBUG))
    {
      sub_1AFDF275C(v0);
    }
  }
}

uint64_t sub_1AF0D5244()
{
  v0 = CFPreferencesCopyAppValue(@"internalSettings", @"com.apple.vfx");
  v3 = objc_msgSend_objectForKeyedSubscript_(v0, v1, @"showsStatistics", v2);
  qword_1ED73B160[0] = objc_msgSend_BOOLValue(v3, v4, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v0, v7, @"cameraControlEnabled", v8);
  qword_1ED73B168 = objc_msgSend_BOOLValue(v9, v10, v11, v12);
  v15 = objc_msgSend_valueForKey_(v0, v13, @"batchMaxCount", v14);
  qword_1ED73B170 = objc_msgSend_intValue(v15, v16, v17, v18);
  unk_1ED73B178 = 0;
  v21 = objc_msgSend_objectForKeyedSubscript_(v0, v19, @"disableLinearSpaceRendering", v20);
  qword_1ED73B180 = objc_msgSend_BOOLValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectForKeyedSubscript_(v0, v25, @"disableWideGamut", v26);
  qword_1ED73B188 = objc_msgSend_BOOLValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v0, v31, @"enableWideGamut", v32);
  qword_1ED73B190 = objc_msgSend_BOOLValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectForKeyedSubscript_(v0, v37, @"enablePostMorphUnifyNormals", v38);
  qword_1ED73B198 = objc_msgSend_BOOLValue(v39, v40, v41, v42);
  v45 = objc_msgSend_objectForKeyedSubscript_(v0, v43, @"enableStandardShadersWithFunctionConstants", v44);
  qword_1ED73B1A8 = objc_msgSend_BOOLValue(v45, v46, v47, v48);
  v51 = objc_msgSend_objectForKeyedSubscript_(v0, v49, @"forceNMOSBehavior", v50);
  qword_1ED73B1B0 = objc_msgSend_BOOLValue(v51, v52, v53, v54);
  v57 = objc_msgSend_objectForKeyedSubscript_(v0, v55, @"com.apple.vfx.forceOS2019Behavior", v56);
  qword_1ED73B1B8 = objc_msgSend_BOOLValue(v57, v58, v59, v60);
  v63 = objc_msgSend_objectForKeyedSubscript_(v0, v61, @"com.apple.vfx.forceOS2018Behavior", v62);
  qword_1ED73B1C0 = objc_msgSend_BOOLValue(v63, v64, v65, v66);
  v69 = objc_msgSend_objectForKeyedSubscript_(v0, v67, @"com.apple.vfx.forceOS2017Behavior", v68);
  qword_1ED73B1C8 = objc_msgSend_BOOLValue(v69, v70, v71, v72);
  v75 = objc_msgSend_objectForKeyedSubscript_(v0, v73, @"com.apple.vfx.forceOS2016Behavior", v74);
  qword_1ED73B1D0 = objc_msgSend_BOOLValue(v75, v76, v77, v78);
  unk_1ED73B1D8 = 0;
  if (objc_msgSend_objectForKeyedSubscript_(v0, v79, @"com.apple.vfx.useOneCommandQueuePerDevice", v80))
  {
    v83 = objc_msgSend_objectForKeyedSubscript_(v0, v81, @"com.apple.vfx.useOneCommandQueuePerDevice", v82);
    v87 = objc_msgSend_BOOLValue(v83, v84, v85, v86);
  }

  else
  {
    v87 = 1;
  }

  qword_1ED73B1E0 = v87;

  v91 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v88, v89, v90);
  result = objc_msgSend_BOOLForKey_(v91, v92, @"com.apple.vfx.isolateCacheMissShader", v93);
  qword_1ED73B1A0 = result;
  return result;
}

unint64_t sub_1AF0D544C()
{
  result = qword_1ED730B90;
  if (!qword_1ED730B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED730B90);
  }

  return result;
}

uint64_t sub_1AF0D54A0(uint64_t a1)
{
  sub_1AF0D4E74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id VFXScene.init(options:)(_BYTE *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_effects] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *&v2[v7] = sub_1AF440CC0(v6);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene__version] = 0;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 0;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 0;
  v8 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  v2[OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager] = 0;
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs] = 0;
  v9 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v10 = sub_1AFDFC128();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat] = 115;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth] = 1;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending] = 0;
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions] = 0;
  if (a1[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer])
  {
    v11 = 0x746E657365727028;
  }

  else
  {
    v11 = 0x296C65646F6D28;
  }

  if (a1[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer])
  {
    v12 = 0xEE00296E6F697461;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  type metadata accessor for EntityManager();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] = sub_1AF66F180(v11, v12, 1, 0);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for VFXScene(0);
  v13 = a1;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  swift_unknownObjectWeakAssign();
  v15 = v14;

  sub_1AFCCF9EC(v16);

  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  return v15;
}

unint64_t sub_1AF0D58C0(uint64_t a1)
{
  sub_1AFDFCEF8();
  sub_1AFDFF288();
  sub_1AFDFD038();
  v2 = sub_1AFDFF2F8();

  return sub_1AF0D5950(a1, v2);
}

unint64_t sub_1AF0D5950(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1AFDFCEF8();
      v8 = v7;
      if (v6 == sub_1AFDFCEF8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1AFDFEE28();

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

uint64_t sub_1AF0D5A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AF0D5AB0(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = swift_allocObject();
  sub_1AF0D5B58();
  swift_allocObject();
  result = sub_1AFDFC618();
  *(v4 + 16) = result;
  *a3 = v4;
  return result;
}

void sub_1AF0D5B58()
{
  if (!qword_1ED730B98[0])
  {
    sub_1AF0D4E74();
    v0 = sub_1AFDFC628();
    if (!v1)
    {
      atomic_store(v0, qword_1ED730B98);
    }
  }
}

id sub_1AF0D5C04()
{
  result = sub_1AF0D5194();
  qword_1ED73B890 = result;
  return result;
}

BOOL sub_1AF0D5C40(int a1)
{
  if (qword_1ED73B1E8[0] != -1)
  {
    sub_1AF0D5230();
  }

  return qword_1ED73B160[a1] != 0;
}

void sub_1AF0D5C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1AF0D5CF0()
{
  result = qword_1ED730B40;
  if (!qword_1ED730B40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED730B40);
  }

  return result;
}

unint64_t sub_1AF0D5DB4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AF0D5E20(void *a1)
{
  if (qword_1ED7313A0 != -1)
  {
    swift_once();
  }

  [qword_1ED7313B0 lock];
  if (qword_1ED7313B8 != -1)
  {
    swift_once();
  }

  v2 = [a1 registryID];
  v3 = off_1ED7309F8;
  if (!*(off_1ED7309F8 + 2) || (v4 = sub_1AF449CB8(v2), (v5 & 1) == 0))
  {
    v10 = 0;
    v11 = 1;
    sub_1AF74EB30(&v10, sub_1AF0D5880);
LABEL_10:
    type metadata accessor for TextureCache();
    swift_allocObject();
    v7 = swift_unknownObjectRetain();
    Strong = sub_1AF0D60CC(v7);
    v8 = [a1 registryID];
    swift_weakInit();
    swift_weakAssign();
    v11 = 0;
    sub_1AF824EDC(&v10, v8);
    goto LABEL_11;
  }

  sub_1AF74FBE4(v3[7] + 8 * v4, &v10, sub_1AF0D54FC);
  v11 = 0;
  Strong = swift_weakLoadStrong();
  sub_1AF74EB30(&v10, sub_1AF0D5880);
  if (!Strong)
  {
    goto LABEL_10;
  }

LABEL_11:
  [qword_1ED7313B0 unlock];
  return Strong;
}

id sub_1AF0D5FEC()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1ED7313B0 = result;
  return result;
}

void *sub_1AF0D6020()
{
  result = sub_1AF43D1DC(MEMORY[0x1E69E7CC0]);
  off_1ED7309F8 = result;
  return result;
}

void sub_1AF0D6048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1AF0D60CC(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v1 + 24) = "lock TextureCache";
  *(v1 + 32) = 17;
  *(v1 + 40) = 2;
  *(v1 + 48) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 processorCount];

  [v4 setMaxConcurrentOperationCount_];
  [v4 setQualityOfService_];
  *(v1 + 56) = v4;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = sub_1AF0D61E8(MEMORY[0x1E69E7CC0]);
  *(v1 + 72) = sub_1AF0D62E8(v7);
  *(v1 + 80) = sub_1AF0D65E4(v7);
  *(v1 + 88) = sub_1AF0D670C(v7);
  *(v1 + 96) = 0;
  *(v1 + 16) = a1;
  return v1;
}

void *sub_1AF0D6214(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];

    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF0D62E8(uint64_t a1)
{
  sub_1AF43CC28(0, qword_1ED7312F8, type metadata accessor for TextureCache.TextureKey);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4465F4();
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v11, v7, qword_1ED7312F8, type metadata accessor for TextureCache.TextureKey, &type metadata for TextureCache.CacheEntry, sub_1AF43CC28);
    v13 = sub_1AF41A700(v7);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v9[6];
    v15 = type metadata accessor for TextureCache.TextureKey();
    sub_1AF445CBC(v7, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TextureCache.TextureKey);
    sub_1AF446690(&v7[v10], v9[7] + 104 * v13);
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

uint64_t type metadata accessor for TextureCache.TextureKey()
{
  result = qword_1ED731360;
  if (!qword_1ED731360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF0D6544()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1AF0D65FC(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    swift_unknownObjectRetain();
    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF0D670C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB630C20, sub_1AF4464AC, sub_1AF446528);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    v6 = v4[2];
    v7 = v4[4];
    v22 = v4[3];
    v23 = v7;
    v24 = *(v4 + 10);
    v8 = v4[1];
    v19 = *v4;
    v20 = v8;
    v21 = v6;
    v9 = *(&v19 + 1);
    v10 = v19;
    v11 = sub_1AF41A680(v19, *(&v19 + 1));
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v12 = v3[6] + 16 * v11;
    *v12 = v10;
    *(v12 + 8) = v9;
    v13 = v3[7] + 72 * v11;
    *v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    *(v13 + 64) = v24;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF449A04(&v19, v18, &unk_1EB638A38, sub_1AF4464AC, &type metadata for NoiseParameters, sub_1AF442A88);
    v4 = (v4 + 88);
  }

  sub_1AF449A04(&v19, v18, &unk_1EB638A38, sub_1AF4464AC, &type metadata for NoiseParameters, sub_1AF442A88);
  return v3;
}

uint64_t sub_1AF0D694C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___VFXSceneLoadOptions_clientID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AF0D69EC()
{
  result = sub_1AFDFC4F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ScriptingConfiguration();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata accessor for ScriptingConfiguration()
{
  result = qword_1ED72FB10;
  if (!qword_1ED72FB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF0D6C3C()
{
  sub_1AF0D0FCC(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AF0D6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF0D6D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF0D6DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF0D6E5C(uint64_t a1, uint64_t a2)
{
  sub_1AF449890(0, qword_1ED731070, type metadata accessor for TextureCache, type metadata accessor for WeakReference);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AF0D6EF0(void *a1@<X0>, void *a2@<X8>)
{
  v27 = sub_1AF0D7228(MEMORY[0x1E69E7CC0]);
  Default = CFXDepthStencilDescMakeDefault();
  v29 = v4;
  sub_1AF0D7334(6, &Default);
  sub_1AF0D7344(1, &Default);
  v5 = Default;
  v6 = v29;
  v7 = sub_1AFDFCEC8();
  DepthStencilWithLabel = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v5, v6, v7);

  sub_1AF0D7334(1, &Default);
  v8 = Default;
  LOBYTE(v7) = v29;
  v9 = sub_1AFDFCEC8();
  v10 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v8, v7, v9);

  sub_1AF0D7344(0, &Default);
  v11 = Default;
  LOBYTE(v9) = v29;
  v12 = sub_1AFDFCEC8();
  v13 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v11, v9, v12);

  sub_1AF0D7334(6, &Default);
  v14 = Default;
  LOBYTE(v9) = v29;
  v15 = sub_1AFDFCEC8();
  v16 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v14, v9, v15);

  sub_1AF0D7334(7, &Default);
  sub_1AF0D7344(0, &Default);
  v17 = Default;
  LOBYTE(v15) = v29;
  v18 = sub_1AFDFCEC8();
  v19 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v17, v15, v18);

  sub_1AF0D7334(7, &Default);
  sub_1AF0D7344(1, &Default);
  v20 = Default;
  LOBYTE(v18) = v29;
  v21 = sub_1AFDFCEC8();
  v22 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v20, v18, v21);

  sub_1AF0D7344(0, &Default);
  sub_1AF0D7334(6, &Default);
  sub_1AF0D765C(4, &Default);
  sub_1AF0D766C(0, &Default);
  sub_1AF0D767C(6, &Default);
  sub_1AF0D765C(4, &Default + 1);
  sub_1AF0D766C(0, &Default + 1);
  sub_1AF0D767C(6, &Default + 1);
  v23 = Default;
  LOBYTE(v18) = v29;
  v24 = sub_1AFDFCEC8();
  v25 = CFXGPUDeviceCreateDepthStencilWithLabel(a1, v23, v18, v24);

  *a2 = DepthStencilWithLabel;
  a2[1] = v16;
  a2[2] = v25;
  a2[3] = v19;
  a2[4] = v22;
  a2[5] = v10;
  a2[6] = v13;
  a2[7] = v27;
}

void *sub_1AF0D7254(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];
    swift_unknownObjectRetain();
    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

uint64_t sub_1AF0D7344(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x80;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = v2 & 0x80 | *(a2 + 8) & 0x7F;
  return result;
}

void *CFXGPUDeviceCreateDepthStencilWithLabel(uint64_t a1, unint64_t a2, unsigned __int8 a3, void *a4)
{
  v16 = a2;
  v17 = a3;
  v7 = a4;
  os_unfair_lock_lock((a1 + 104));
  sub_1AF0D74C4(a2, a3, *(a1 + 120), v7);
  v10 = objc_msgSend_newDepthStencilStateWithDescriptor_(*(a1 + 16), v8, *(a1 + 120), v9);
  v11 = objc_getAssociatedObject(v10, a1);

  if (!v11 && (*(a1 + 24) & 1) != 0)
  {
    vfx_counters_update(*(a1 + 32), *(a1 + 76), 1.0);
  }

  sub_1AF0D75C4(a1 + 104, v10, &v16, 9uLL);
  objc_initWeak(&location, a1);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF135564;
  v13[3] = &unk_1E7A79D40;
  objc_copyWeak(v14, &location);
  v14[1] = v10;
  sub_1AF0D29D4(v10, a1, v13);
  os_unfair_lock_unlock((a1 + 104));
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v10;
}

void sub_1AF0D74A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF0D74C4(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v23 = a3;
  v11 = a4;
  if (v6)
  {
    v12 = objc_msgSend_frontFaceStencil(v23, v8, v9, v10);
    sub_1AF0D768C(v6, v12);

    if (!v7)
    {
LABEL_3:
      objc_msgSend_setBackFaceStencil_(v23, v13, 0, v15);
      goto LABEL_6;
    }
  }

  else
  {
    objc_msgSend_setFrontFaceStencil_(v23, v8, 0, v10);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v18 = objc_msgSend_backFaceStencil(v23, v13, v14, v15);
  sub_1AF0D768C(v7, v18);

LABEL_6:
  objc_msgSend_setDepthCompareFunction_(v23, v16, a2 & 0x7F, v17);
  objc_msgSend_setDepthWriteEnabled_(v23, v19, (a2 >> 7) & 1, v20);
  if (v11)
  {
    objc_msgSend_setLabel_(v23, v21, v11, v22);
  }
}

void sub_1AF0D75C4(uint64_t a1, const void *a2, const void *a3, size_t a4)
{
  if (!CFDictionaryGetValue(*(a1 + 8), a2))
  {
    v8 = malloc_type_malloc(a4, 0xE7E85D3BuLL);
    memcpy(v8, a3, a4);
    v9 = *(a1 + 8);

    CFDictionaryAddValue(v9, a2, v8);
  }
}

void sub_1AF0D768C(unint64_t a1, void *a2)
{
  v15 = a2;
  objc_msgSend_setStencilCompareFunction_(v15, v3, a1 & 0xF, v4);
  objc_msgSend_setStencilFailureOperation_(v15, v5, a1 >> 4, v6);
  objc_msgSend_setDepthFailureOperation_(v15, v7, (a1 >> 8) & 0xF, v8);
  objc_msgSend_setDepthStencilPassOperation_(v15, v9, a1 >> 12, v10);
  objc_msgSend_setReadMask_(v15, v11, BYTE2(a1), v12);
  objc_msgSend_setWriteMask_(v15, v13, BYTE3(a1), v14);
}

uint64_t CFXTextureAllocatorPerFrameCreate(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73B028 != -1)
  {
    sub_1AF0D7794();
  }

  result = sub_1AF0D160C(qword_1ED73B030, 0x20uLL);
  *(result + 32) = a1;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  *(result + 44) = v5;
  return result;
}

uint64_t sub_1AF0D77A8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73B030 = result;
  return result;
}

void *sub_1AF0D7824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447BF0();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  v5 = v1 - 1;
  v6 = MEMORY[0x1E69E6530];
  while (1)
  {
    v7 = *(v4 + 16);
    *v17 = *v4;
    *&v17[16] = v7;
    v8 = *(v4 + 48);
    *&v17[32] = *(v4 + 32);
    *&v17[48] = v8;
    *&v17[64] = *(v4 + 64);
    v9 = *v17;
    v10 = sub_1AF0D3F10(*v17);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v9;
    v11 = (v3[7] + (v10 << 6));
    v12 = *&v17[56];
    v13 = *&v17[40];
    v14 = *&v17[24];
    *v11 = *&v17[8];
    v11[1] = v14;
    v11[2] = v13;
    v11[3] = v12;
    ++v3[2];
    if (!v5)
    {
      break;
    }

    sub_1AF0D8094(v17, v16, &unk_1EB638C58, v6, &type metadata for TextureCPURuntime, sub_1AF0D8108);
    --v5;
    v4 += 72;
  }

  sub_1AF0D8094(v17, v16, &unk_1EB638C58, MEMORY[0x1E69E6530], &type metadata for TextureCPURuntime, sub_1AF0D8108);
  return v3;
}

uint64_t CFXBufferAllocatorPerFrameCreate(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = a2;
  if (qword_1ED73B038 != -1)
  {
    sub_1AF0D7A94();
  }

  v11 = sub_1AF0D160C(qword_1ED73B040, 0x58uLL);
  *(v11 + 16) = a1;
  *(v11 + 24) = 16 * a3;
  *(v11 + 32) = CFXGPUDeviceGetMinConstantBufferAlignment(a1, v12, v13, v14);
  *(v11 + 40) = a5;
  objc_storeStrong((v11 + 48), a2);
  if (a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = a4;
  }

  sub_1AF0D7C34((v11 + 88), v15);

  return v11;
}

uint64_t sub_1AF0D7AA8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73B040 = result;
  return result;
}

unint64_t CFXGPUDeviceGetMinConstantBufferAlignment(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_minConstantBufferAlignmentBytes(*(a1 + 16), a2, a3, a4);
  if (result <= 0x10)
  {
    return 16;
  }

  return result;
}

void sub_1AF0D7AFC(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(32 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 32 * v7);
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v8 + 1;
    do
    {
      v12 = *(a1 + 1) + v9;
      *(v11 - 3) = 0;
      *(v11 - 4) = 0;
      *(v11 - 1) = v11;
      sub_1AF1217D0(v11 - 4, v12);
      *v11 = *(v12 + 16);
      if (v4 != v5)
      {
        sub_1AF121764((*(a1 + 1) + v9));
      }

      ++v10;
      v11 += 2;
      v9 += 32;
    }

    while (v10 < *a1);
  }

  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

void sub_1AF0D7C34(unsigned int *a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v7 = a1[1];
      v8 = a2 - v7;
      if (a2 > v7)
      {
        sub_1AF0D7AFC(a1, v8, 0);
        v2 = *a1;
      }

      if (v2 < a2)
      {
        v9 = 32 * v2;
        v10 = a2 - v2;
        do
        {
          v11 = (*(a1 + 1) + v9);
          v11[2] = 0;
          v11[3] = 0;
          *v11 = 0;
          v11[1] = v11 + 2;
          *(v11 + 4) = 1;
          v9 += 32;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v5 = 32 * a2;
      v6 = a2;
      do
      {
        sub_1AF121764((*(a1 + 1) + v5));
        ++v6;
        v5 += 32;
      }

      while (v6 < *a1);
    }

    *a1 = a2;
  }
}

void *sub_1AF0D7D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF0D7EAC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    v6 = v4[3];
    v19 = v4[2];
    v20 = v6;
    v7 = v4[5];
    v21 = v4[4];
    v22 = v7;
    v8 = v4[1];
    v17 = *v4;
    v18 = v8;
    v9 = v17;
    v10 = sub_1AF0D7FBC(v17);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + v10) = v9;
    v11 = (v3[7] + 80 * v10);
    *v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v22;
    v11[3] = v21;
    v11[4] = v14;
    v11[1] = v12;
    v11[2] = v13;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF0D8094(&v17, v16, &qword_1ED731500, &type metadata for RenderGraph.RenderTarget, &type metadata for RenderGraph.RenderTargetDesc, sub_1AF0D8108);
    v4 += 6;
  }

  sub_1AF0D8094(&v17, v16, &qword_1ED731500, &type metadata for RenderGraph.RenderTarget, &type metadata for RenderGraph.RenderTargetDesc, sub_1AF0D8108);
  return v3;
}

void sub_1AF0D7EAC()
{
  if (!qword_1ED730B80)
  {
    sub_1AF0D7F10();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED730B80);
    }
  }
}

unint64_t sub_1AF0D7F10()
{
  result = qword_1ED731510[0];
  if (!qword_1ED731510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED731510);
  }

  return result;
}

unint64_t sub_1AF0D7F68()
{
  result = qword_1ED731508;
  if (!qword_1ED731508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED731508);
  }

  return result;
}

unint64_t sub_1AF0D7FBC(unsigned __int8 a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v2 = sub_1AFDFF2F8();
  return sub_1AF0D8024(a1, v2);
}

unint64_t sub_1AF0D8024(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AF0D8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AF0D8108(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF0D8160(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t initializeWithCopy for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void sub_1AF0D8224()
{
  if (!qword_1ED731500)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED731500);
    }
  }
}

uint64_t sub_1AF0D82B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = [objc_allocWithZone(RGCachedComputeCommandEncoder) init];
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 16) = 0;
  swift_unknownObjectRelease();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  swift_unknownObjectRetain();

  v7 = swift_slowAlloc();
  *(v3 + 96) = v7;
  *(v3 + 104) = 1;
  *v7 = 0;
  return v3;
}

void *CFXGPUDeviceCreateSamplerWithLabel(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  os_unfair_lock_lock((a1 + 80));
  sub_1AF0D8570(a2, *(a1 + 96), v5);
  v8 = objc_msgSend_newSamplerStateWithDescriptor_(*(a1 + 16), v6, *(a1 + 96), v7);
  v9 = objc_getAssociatedObject(v8, a1);

  if (!v9 && (*(a1 + 24) & 1) != 0)
  {
    vfx_counters_update(*(a1 + 32), *(a1 + 72), 1.0);
  }

  sub_1AF0D75C4(a1 + 80, v8, &v14, 8uLL);
  objc_initWeak(&location, a1);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF13541C;
  v11[3] = &unk_1E7A79D40;
  objc_copyWeak(v12, &location);
  v12[1] = v8;
  sub_1AF0D29D4(v8, a1, v11);
  os_unfair_lock_unlock((a1 + 80));
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v8;
}

void sub_1AF0D8510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF0D8570(unint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  v6 = sub_1AF0D8688(a1);
  objc_msgSend_setMinFilter_(v33, v7, v6, v8);
  v9 = sub_1AF0D8688(BYTE1(a1));
  objc_msgSend_setMagFilter_(v33, v10, v9, v11);
  v12 = sub_1AF0D86DC(BYTE2(a1));
  objc_msgSend_setMipFilter_(v33, v13, v12, v14);
  v17 = HIBYTE(a1) & 0x7F;
  if ((a1 & 0x7000000000000000) != 0)
  {
    v17 = 16;
  }

  if (v17 <= 1)
  {
    objc_msgSend_setMaxAnisotropy_(v33, v15, 1, v16);
  }

  else
  {
    objc_msgSend_setMaxAnisotropy_(v33, v15, v17, v16);
  }

  v18 = sub_1AF0D8730(BYTE3(a1));
  objc_msgSend_setSAddressMode_(v33, v19, v18, v20);
  v21 = sub_1AF0D8730(BYTE4(a1));
  objc_msgSend_setTAddressMode_(v33, v22, v21, v23);
  v24 = sub_1AF0D8730(BYTE5(a1));
  objc_msgSend_setRAddressMode_(v33, v25, v24, v26);
  objc_msgSend_setCompareFunction_(v33, v27, BYTE6(a1), v28);
  objc_msgSend_setSupportArgumentBuffers_(v33, v29, a1 >> 63, v30);
  if (v5)
  {
    objc_msgSend_setLabel_(v33, v31, v5, v32);
  }
}

uint64_t sub_1AF0D8688(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE220F0[a1];
}

uint64_t sub_1AF0D86DC(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE22108[a1];
}

uint64_t sub_1AF0D8730(unsigned int a1)
{
  if (a1 >= 4)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4B4C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE220D0[a1];
}

void sub_1AF0D879C(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = 0uLL;
  if (*(v3 + 16))
  {
    v5 = sub_1AF0D8ED4(0);
    v4 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v10)
    {
      v11 = (*(v3 + 56) + 80 * v5);
      v21 = *v11;
      v13 = v11[3];
      v12 = v11[4];
      v14 = v11[2];
      v22 = v11[1];
      v23 = v14;
      v24 = v13;
      v25 = v12;
      v18 = v22;
      v19 = v21;
      v16 = v13;
      v17 = v14;
      v15 = v12;
      sub_1AF0D8EDC(&v21, v20);
      v9 = v15;
      v8 = v16;
      v7 = v17;
      v6 = v18;
      v4 = v19;
    }
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
}

uint64_t sub_1AF0D886C()
{
  result = *(v0 + 464);
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = v2 - 1;
      for (i =  + 40; ; i += 96)
      {
        v5 = *(i - 8);
        v6 = *(i + 48);
        *&v50[32] = *(i + 32);
        *&v50[48] = v6;
        *&v50[64] = *(i + 64);
        *&v50[80] = *(i + 80);
        v7 = *(i + 16);
        *v50 = *i;
        *&v50[16] = v7;
        v8 = *(v26 + 520);
        v9 = *(v8 + 56);

        os_unfair_lock_lock(v9);
        *&v51[36] = *&v50[32];
        *&v51[52] = *&v50[48];
        *&v51[68] = *&v50[64];
        *&v51[84] = *&v50[80];
        *&v51[4] = *v50;
        *&v51[20] = *&v50[16];
        v52[0].i32[0] = v5 & 0xE7FF5C45;
        *(v52 + 4) = *v51;
        *(&v52[1] + 4) = *&v51[16];
        v52[5] = *&v51[76];
        *(&v52[3] + 4) = *&v51[48];
        *(&v52[4] + 4) = *&v51[64];
        *(&v52[2] + 4) = *&v51[32];
        v10 = *(v8 + 16);
        if ((sub_1AF0D913C(v52, v10) & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 16) = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = sub_1AF0D91F0(0, *(v10 + 2) + 1, 1, v10);
            *(v8 + 16) = v10;
          }

          v13 = *(v10 + 2);
          v12 = *(v10 + 3);
          if (v13 >= v12 >> 1)
          {
            v10 = sub_1AF0D91F0(v12 > 1, v13 + 1, 1, v10);
          }

          *(v10 + 2) = v13 + 1;
          v14 = &v10[96 * v13];
          v15 = v52[1];
          *(v14 + 2) = v52[0];
          *(v14 + 3) = v15;
          v16 = v52[2];
          v17 = v52[3];
          v18 = v52[5];
          *(v14 + 6) = v52[4];
          *(v14 + 7) = v18;
          *(v14 + 4) = v16;
          *(v14 + 5) = v17;
          *(v8 + 16) = v10;
        }

        os_unfair_lock_unlock(v9);
        v19 = *(v8 + 56);
        os_unfair_lock_lock(v19);
        sub_1AF0D9314(v8);
        os_unfair_lock_unlock(v19);

        if (!v3)
        {
          break;
        }

        --v3;
      }
    }
  }

  else
  {
    if (*(v26 + 392))
    {
      v20 = 0;
    }

    else
    {
      v20 = 0x4000;
    }

    sub_1AF0D8CC8(v30);
    *&v32[4] = v30[0];
    *&v32[20] = v30[1];
    *&v32[36] = v30[2];
    *&v32[52] = v30[3];
    *&v32[68] = v30[4];
    *&v32[84] = v31;
    v52[0].i32[0] = v20;
    *(v52 + 4) = *v32;
    *(&v52[1] + 4) = *&v32[16];
    v52[5] = *&v32[76];
    *(&v52[4] + 4) = *&v32[64];
    *(&v52[3] + 4) = *&v32[48];
    *(&v52[2] + 4) = *&v32[32];

    sub_1AF0D8F8C(v52);

    sub_1AF0D879C(&v33);
    sub_1AF0D879C(&v36);
    v21 = v35;
    v22 = v34;
    sub_1AF0D879C(&v38);
    sub_1AF0D8F38(&v33);
    sub_1AF0D8F38(&v38);
    sub_1AF0D8F38(&v36);
    if (v37 == 260)
    {
      v23 = 260;
    }

    else
    {
      v23 = 0;
    }

    if (v21 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v21;
    }

    *v51 = 0;
    *&v51[8] = v22;
    memset(&v51[16], 0, 24);
    *&v51[40] = v39;
    memset(&v51[48], 0, 24);
    *&v51[72] = v37;
    *&v51[80] = v23;
    v51[88] = v24;

    sub_1AF0D8F8C(v51);

    sub_1AF0D8CC8(v27);
    *&v29[4] = v27[0];
    *&v29[20] = v27[1];
    *&v29[36] = v27[2];
    *&v29[52] = v27[3];
    *&v29[68] = v27[4];
    *&v29[84] = v28;
    *v50 = 0;
    *&v50[4] = *v29;
    *&v50[20] = *&v29[16];
    *&v50[80] = *&v29[76];
    *&v50[68] = *&v29[64];
    *&v50[52] = *&v29[48];
    *&v50[36] = *&v29[32];

    sub_1AF0D8F8C(v50);

    sub_1AF0D879C(&v40);
    sub_1AF0D8F38(&v40);
    if (v41 == 260)
    {
      v25 = 260;
    }

    else
    {
      v25 = 0;
    }

    v42 = 2048;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = v41;
    v48 = v25;
    v49 = 1;

    sub_1AF0D8F8C(&v42);
  }

  return result;
}

uint64_t sub_1AF0D8CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 392))
  {
    sub_1AF0D879C(&v13);
    sub_1AF0D8F38(&v13);
    v4 = v14;
    sub_1AF0D879C(&v15);
    sub_1AF0D8F38(&v15);
    v5 = v16;
    sub_1AF0D879C(&v17);
    sub_1AF0D8F38(&v17);
    v6 = v18;
    sub_1AF0D879C(&v19);
    result = sub_1AF0D8F38(&v19);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v21;
    if (v6 == 260)
    {
      v12 = 260;
    }

    else
    {
      v12 = 0;
    }

    if (v21 <= 1u)
    {
      v11 = 1;
    }
  }

  else
  {
    v6 = *(v3 + 448);
    if (v6 == 260)
    {
      v12 = 260;
    }

    else
    {
      v12 = 0;
    }

    sub_1AF0D879C(&v13);
    sub_1AF0D8F38(&v13);
    v10 = v14;
    sub_1AF0D879C(&v15);
    sub_1AF0D8F38(&v15);
    v8 = v16;
    sub_1AF0D879C(&v17);
    sub_1AF0D8F38(&v17);
    v9 = v18;
    sub_1AF0D879C(&v19);
    result = sub_1AF0D8F38(&v19);
    v5 = 0;
    v11 = 1;
    v4 = v20;
  }

  *a1 = v4;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v12;
  *(a1 + 80) = v11;
  return result;
}

uint64_t sub_1AF0D8E28()
{
  v1 = v0;
  sub_1AF0D886C();
  sub_1AF0D946C();
  v2 = *(v0 + 200);
  result = sub_1AF0D9900(*(v1 + 448));
  if (!*(v1 + 464))
  {
    v4 = *(v1 + 441);
    v5 = *(v1 + 456);
    if (v4 == 2)
    {
      v7 = v5 == 0;
      v8 = 552;
    }

    else
    {
      if (v4 == 1)
      {
        v6 = 115;
LABEL_11:
        *(v2 + 48) = v6;
        return sub_1AF0D9E18(v6);
      }

      if (*(v1 + 441))
      {
        result = sub_1AFDFF138();
        __break(1u);
        return result;
      }

      v7 = v5 == 0;
      v8 = 70;
    }

    if (v7)
    {
      v6 = v8 + 1;
    }

    else
    {
      v6 = v8;
    }

    goto LABEL_11;
  }

  return result;
}

BOOL sub_1AF0D8F8C(uint64_t a1)
{
  v3 = *(v1 + 56);
  os_unfair_lock_lock(v3);
  v4 = *a1 & 0xE7FF5C45;
  *&v18[4] = *(a1 + 8);
  *&v18[20] = *(a1 + 24);
  *&v18[36] = *(a1 + 40);
  *&v18[52] = *(a1 + 56);
  *&v18[68] = *(a1 + 72);
  *&v18[84] = *(a1 + 88);
  *v17 = v4;
  *&v17[4] = *v18;
  *&v17[20] = *&v18[16];
  *&v17[80] = *&v18[76];
  *&v17[68] = *&v18[64];
  *&v17[52] = *&v18[48];
  *&v17[36] = *&v18[32];
  v5 = *(v1 + 16);
  v6 = sub_1AF0D913C(v17, v5);
  if ((v6 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1AF0D91F0(0, *(v5 + 2) + 1, 1, v5);
      *(v1 + 16) = v5;
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_1AF0D91F0(v8 > 1, v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v10 = &v5[96 * v9];
    v11 = *&v17[16];
    *(v10 + 2) = *v17;
    *(v10 + 3) = v11;
    v12 = *&v17[32];
    v13 = *&v17[48];
    v14 = *&v17[80];
    *(v10 + 6) = *&v17[64];
    *(v10 + 7) = v14;
    *(v10 + 4) = v12;
    *(v10 + 5) = v13;
    *(v1 + 16) = v5;
  }

  os_unfair_lock_unlock(v3);
  v15 = *(v1 + 56);
  os_unfair_lock_lock(v15);
  sub_1AF0D9314(v1);
  os_unfair_lock_unlock(v15);
  return (v6 & 1) == 0;
}

uint64_t sub_1AF0D913C(int64x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a2 + 120); *(i - 22) != a1->i32[0] || *(i - 10) != a1->i64[1] || (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(i - 72), a1[1]), vceqq_s64(*(i - 56), a1[2])), vuzp1q_s32(vceqq_s64(*(i - 40), a1[3]), vceqq_s64(*(i - 24), a1[4]))))) & 1) == 0 || *(i - 1) != a1[5].i64[0] || *i != a1[5].u8[8]; i += 96)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

char *sub_1AF0D91F0(char a1, int64_t a2, char a3, char *a4)
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
    sub_1AF449B08(0, &unk_1ED730B60, &type metadata for RenderVariantDescriptor, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 96);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[96 * v9])
    {
      memmove(v13, v14, 96 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 96 * v9);
  }

  return v11;
}

uint64_t sub_1AF0D9314(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v2;
  if ((result & 1) == 0)
  {
    result = sub_1AFC0DA1C(v2);
    v2 = result;
  }

  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  v6 = v2 + 32;
  v7 = 0;
  if (v5)
  {
    v8 = v4 + 32;
    v9 = v8;
    v10 = v5;
    do
    {
      if (byte_1F24FF4C0 != 1 || (*(v9 + 1) & 0x50) == 0)
      {
        ++v7;
      }

      v9 += 96;
      --v10;
    }

    while (v10);
    v11 = 0;
    *(v6 + 8 * byte_1F24FF4C0) = v7;
    v12 = v8;
    v13 = v5;
    do
    {
      if (byte_1F24FF4C1 != 1 || (*(v12 + 1) & 0x50) == 0)
      {
        ++v11;
      }

      v12 += 96;
      --v13;
    }

    while (v13);
    v7 = 0;
    *(v6 + 8 * byte_1F24FF4C1) = v11;
    v14 = byte_1F24FF4C2;
    do
    {
      if (byte_1F24FF4C2 != 1 || (*(v8 + 1) & 0x50) == 0)
      {
        ++v7;
      }

      v8 += 96;
      --v5;
    }

    while (v5);
  }

  else
  {
    *(v6 + 8 * byte_1F24FF4C0) = 0;
    *(v6 + 8 * byte_1F24FF4C1) = 0;
    v14 = byte_1F24FF4C2;
  }

  *(v6 + 8 * v14) = v7;
  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1AF0D946C()
{
  sub_1AF0D96E0(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v2 = *(v0 + 393);
  *(v1 + 16) = xmmword_1AFE4C6B0;
  *(v1 + 32) = xmmword_1AFE72990;
  *(v1 + 48) = 0;
  *(v1 + 64) = v2;
  *(v1 + 128) = 13;
  v3 = *(v0 + 456);
  *(v1 + 144) = xmmword_1AFE729A0;
  *(v1 + 160) = 0;
  *(v1 + 176) = v3;
  *(v1 + 240) = 13;
  v4 = *(v0 + 394);
  *(v1 + 256) = xmmword_1AFE729B0;
  *(v1 + 272) = 0;
  *(v1 + 288) = v4;
  *(v1 + 352) = 13;
  *(v1 + 368) = xmmword_1AFE729C0;
  *(v1 + 384) = 0;
  *(v1 + 400) = 1;
  *(v1 + 464) = 13;
  *(v0 + 376) = v1;

  if (*(v0 + 393) == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AFE4C5F0;
    *(v6 + 32) = xmmword_1AFE729D0;
    *(v6 + 48) = 0;
    *(v6 + 64) = 1;
    *(v6 + 128) = 13;
    *(v6 + 144) = xmmword_1AFE729E0;
    *(v6 + 160) = 0;
    *(v6 + 176) = 1;
    *(v6 + 240) = 13;
    *(v6 + 256) = xmmword_1AFE729F0;
    *(v6 + 272) = 0;
    *(v6 + 288) = 1;
    *(v6 + 352) = 13;
    *(v6 + 368) = xmmword_1AFE72A00;
    *(v6 + 384) = 0;
    *(v6 + 400) = 1;
    *(v6 + 464) = 13;
    *(v6 + 480) = xmmword_1AFE72A10;
    *(v6 + 496) = 0;
    *(v6 + 512) = 1;
    *(v6 + 576) = 14;
    *(v6 + 592) = xmmword_1AFE72A20;
    *(v6 + 608) = 0;
    *(v6 + 624) = 1;
    *(v6 + 672) = *&v9[15];
    *(v6 + 641) = v8;
    *(v6 + 657) = *v9;
    *(v6 + 625) = v7;
    *(v6 + 688) = 13;
    *(v6 + 704) = xmmword_1AFE72A30;
    *(v6 + 720) = 0;
    *(v6 + 736) = 1;
    *(v6 + 784) = *&v9[15];
    *(v6 + 753) = v8;
    *(v6 + 769) = *v9;
    *(v6 + 737) = v7;
    *(v6 + 800) = 13;
    *(v6 + 816) = xmmword_1AFE72A40;
    *(v6 + 832) = 0;
    *(v6 + 848) = 1;
    *(v6 + 849) = v7;
    *(v6 + 865) = v8;
    *(v6 + 881) = *v9;
    *(v6 + 896) = *&v9[15];
    *(v6 + 912) = 13;
    return sub_1AF490060(v6);
  }

  return result;
}

void sub_1AF0D96E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t (*sub_1AF0D9730(uint64_t **a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AF0D99DC(v4, a2);
  return sub_1AF0D9AAC;
}

void (*sub_1AF0D97A8(uint64_t *a1, char a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x1F8uLL);
  }

  v10 = v8;
  *a1 = v8;
  *(v8 + 480) = v3;
  *(v8 + 496) = a2;
  v11 = *v3;
  v12 = sub_1AF0D8ED4(v9);
  v14 = v13;
  *(v10 + 497) = v13 & 1;
  v15 = *(v11 + 24);
  v16 = *(v11 + 16) + ((v13 & 1) == 0);
  if (v15 < v16 || (a3 & 1) == 0)
  {
    if (v15 < v16 || (a3 & 1) != 0)
    {
      sub_1AF8346EC(v16, a3 & 1);
      v12 = sub_1AF0D8ED4(v18);
      if ((v14 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v12;
      sub_1AF848E50();
      v12 = v17;
    }
  }

  *(v10 + 488) = v12;
  if (v14)
  {
    memmove((v10 + 160), (*(*v4 + 56) + 80 * v12), 0x50uLL);
  }

  else
  {
    *(v10 + 208) = 0u;
    *(v10 + 224) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 160) = 0u;
  }

  return sub_1AF0D9B10;
}

uint64_t sub_1AF0D9900(uint64_t a1)
{
  v3 = sub_1AF0D9730(v9, 1);
  if (*(v2 + 8))
  {
    *(v2 + 16) = a1;
  }

  (v3)(v9, 0);
  v5 = sub_1AF0D9730(v9, 13);
  if (*(v4 + 8))
  {
    *(v4 + 16) = a1;
  }

  (v5)(v9, 0);
  v7 = sub_1AF0D9730(v9, 5);
  if (*(v6 + 8))
  {
    *(v6 + 16) = a1;
  }

  return (v7)(v9, 0);
}

uint64_t (*sub_1AF0D99DC(uint64_t *a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AF0D9A80(v5);
  v5[9] = sub_1AF0D97A8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AF0D9AA8;
}

uint64_t (*sub_1AF0D9A80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AF0D9E0C;
}

void sub_1AF0D9AB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_1AF0D9B10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  *(v2 + 240) = *(*a1 + 160);
  *(v2 + 256) = v3;
  v4 = *(v2 + 208);
  *(v2 + 272) = *(v2 + 192);
  *(v2 + 288) = v4;
  *(v2 + 304) = *(v2 + 224);
  v5 = *(v2 + 248);
  if (a2)
  {
    if (v5)
    {
      v7 = *(v2 + 480);
      v6 = *(v2 + 488);
      if ((*(v2 + 497) & 1) == 0)
      {
        v8 = *v7;
        v9 = *(v2 + 208);
        *(v2 + 32) = *(v2 + 192);
        *(v2 + 48) = v9;
        *(v2 + 64) = *(v2 + 224);
        v10 = *(v2 + 176);
        *v2 = *(v2 + 160);
        *(v2 + 16) = v10;
        v11 = *(v2 + 496);
        v12 = v2;
LABEL_11:
        sub_1AF8437B4(v6, v11, v12, v8);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v7 = *(v2 + 480);
    v6 = *(v2 + 488);
    if ((*(v2 + 497) & 1) == 0)
    {
      v8 = *v7;
      v13 = *(v2 + 208);
      *(v2 + 112) = *(v2 + 192);
      *(v2 + 128) = v13;
      *(v2 + 144) = *(v2 + 224);
      v14 = *(v2 + 176);
      *(v2 + 80) = *(v2 + 160);
      *(v2 + 96) = v14;
      v11 = *(v2 + 496);
      v12 = v2 + 80;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v7 + 56) + 80 * v6), (v2 + 160), 0x50uLL);
    goto LABEL_12;
  }

  if (*(v2 + 497))
  {
    sub_1AF6B3A2C(*(v2 + 488), **(v2 + 480));
  }

LABEL_12:
  v15 = *(v2 + 208);
  *(v2 + 352) = *(v2 + 192);
  *(v2 + 368) = v15;
  *(v2 + 384) = *(v2 + 224);
  v16 = *(v2 + 176);
  *(v2 + 320) = *(v2 + 160);
  *(v2 + 336) = v16;
  sub_1AF6B724C(v2 + 240, v2 + 400, &qword_1ED730AD0);
  sub_1AF0D9DB0(v2 + 320, &qword_1ED730AD0);

  free(v2);
}

void sub_1AF0D9C58(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1AF0D9CA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF85B840(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t getEnumTagSinglePayload for RenderGraph.RenderTargetDesc(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraph.RenderTargetDesc(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF0D9DB0(uint64_t a1, unint64_t *a2)
{
  sub_1AF6B740C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF0D9E18(uint64_t a1)
{
  v3 = sub_1AF0D9730(v9, 0);
  if (*(v2 + 8))
  {
    *(v2 + 16) = a1;
  }

  (v3)(v9, 0);
  v5 = sub_1AF0D9730(v9, 4);
  if (*(v4 + 8))
  {
    *(v4 + 16) = a1;
  }

  (v5)(v9, 0);
  v7 = sub_1AF0D9730(v9, 6);
  if (*(v6 + 8))
  {
    *(v6 + 16) = a1;
  }

  return (v7)(v9, 0);
}

uint64_t initializeBufferWithCopyOfBuffer for DataValue(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for TextureCPURuntime.Slice(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextureCPURuntime.Slice(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ShaderCache.Stats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderCache.Stats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for Entity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryHeader.Field(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for ShaderArgument.BufferDesc(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderArgument.BufferDesc(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_1AF0DADBC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1AF0DADEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1AF0DAE18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1AF0DAF10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AF0DAFD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFDFCEF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SkinnedMeshBinding(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SkinnedMeshBinding(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1AF0DB068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF0DB088(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
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

  *(result + 112) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleSphereAttractor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticleSphereAttractor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GazeTrackingParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GazeTrackingParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
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

  *(result + 192) = v3;
  return result;
}

uint64_t sub_1AF0DB198(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF0DB1B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0;
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

  *(result + 176) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SpotLight(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpotLight(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _StructContextDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _StructContextDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleSDFAttractor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for RenderVariantDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RenderVariantDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_1AF0DB378(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF0DB398(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
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

  *(result + 256) = v3;
  return result;
}

uint64_t sub_1AF0DB404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF0DB424@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RGResourceIdentifierMake(a1);
  *a2 = result;
  return result;
}

ValueMetadata *sub_1AF0DB64C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for UpdateContext;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1AF0DB684()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_OWORD *sub_1AF0DB6BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AF0DB74C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AF0DB75C()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0DB794()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0DB804()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0DB83C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0DB884()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0DB8D8()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0DB970()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1AF0DB9B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1AF0DBCC4@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 position];
  *a2 = v4;
  return result;
}

id sub_1AF0DBD0C@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 eulerAngles];
  *a2 = v4;
  return result;
}

id sub_1AF0DBD54@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 scale];
  *a2 = v4;
  return result;
}

id sub_1AF0DBDCC@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 worldUp];
  *a2 = v4;
  return result;
}

id sub_1AF0DBE00@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 worldFront];
  *a2 = v4;
  return result;
}

id sub_1AF0DBE34@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 orientation];
  *a2 = v4;
  return result;
}

id sub_1AF0DBE7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

id sub_1AF0DBF18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 physicsWorld];
  *a2 = result;
  return result;
}

id sub_1AF0DBF54@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 gravity];
  *a2 = v4;
  return result;
}

id sub_1AF0DBF9C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 speed];
  *a2 = v4;
  return result;
}

id sub_1AF0DBFE4@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 fogColor_linearExtendedSRGB];
  *a2 = v4;
  return result;
}

id sub_1AF0DC02C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fogStartDistance];
  *a2 = v4;
  return result;
}

id sub_1AF0DC074@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fogEndDistance];
  *a2 = v4;
  return result;
}

id sub_1AF0DC0BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 wantsScreenSpaceReflection];
  *a2 = result;
  return result;
}

id sub_1AF0DC104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightingEnvironment];
  *a2 = result;
  return result;
}

id sub_1AF0DC148@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 background];
  *a2 = result;
  return result;
}

id sub_1AF0DC18C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 triggerManager];
  *a2 = result;
  return result;
}

id sub_1AF0DC1C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHandTrackingEnabled];
  *a2 = result;
  return result;
}

id sub_1AF0DC210@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 linearExtendedSRGBColor];
  *a2 = v4;
  return result;
}

id sub_1AF0DC258@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 intensity];
  *a2 = v4;
  return result;
}

id sub_1AF0DC2A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minificationFilter];
  *a2 = result;
  return result;
}

id sub_1AF0DC2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 magnificationFilter];
  *a2 = result;
  return result;
}

id sub_1AF0DC330@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mipFilter];
  *a2 = result;
  return result;
}

id sub_1AF0DC378@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wrapS];
  *a2 = result;
  return result;
}

id sub_1AF0DC3C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wrapT];
  *a2 = result;
  return result;
}

id sub_1AF0DC408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mappingChannel];
  *a2 = result;
  return result;
}

id sub_1AF0DC450@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAnisotropy];
  *a2 = result;
  return result;
}

id sub_1AF0DC4B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

id sub_1AF0DC4F8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 radius];
  *a2 = v4;
  return result;
}

id sub_1AF0DC540@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 maskEnabled];
  *a2 = result;
  return result;
}

id sub_1AF0DC588@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maskCenter];
  *a2 = v4;
  return result;
}

id sub_1AF0DC5D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 maskRadius];
  *a2 = v4;
  return result;
}

id sub_1AF0DC618@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 camera];
  *a2 = result;
  return result;
}

id sub_1AF0DC668@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doughnutBokeh];
  *a2 = result;
  return result;
}

id sub_1AF0DC6B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sampleCount];
  *a2 = result;
  return result;
}

id sub_1AF0DC700@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 center];
  *a2 = v4;
  return result;
}

id sub_1AF0DC748@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fromZ];
  *a2 = v4;
  return result;
}

id sub_1AF0DC790@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fromAngle];
  *a2 = v4;
  return result;
}

id sub_1AF0DC7D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fromShift];
  *a2 = v4;
  return result;
}

id sub_1AF0DC820@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 toZ];
  *a2 = v4;
  return result;
}

id sub_1AF0DC868@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 toAngle];
  *a2 = v4;
  return result;
}

id sub_1AF0DC8B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toShift];
  *a2 = v4;
  return result;
}

id sub_1AF0DC8F8@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 color1];
  *a2 = v4;
  return result;
}

id sub_1AF0DC940@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 color2];
  *a2 = v4;
  return result;
}

id sub_1AF0DC988@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 color3];
  *a2 = v4;
  return result;
}

id sub_1AF0DC9D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 unMultBlending];
  *a2 = v4;
  return result;
}

id sub_1AF0DCA18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chromaticTransform];
  *a2 = result;
  return result;
}

id sub_1AF0DCA68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filterQuality];
  *a2 = result;
  return result;
}

id sub_1AF0DCAB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lensBlur];
  *a2 = result;
  return result;
}

id sub_1AF0DCB00@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 scale];
  *a2 = v4;
  return result;
}

id sub_1AF0DCB48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isColored];
  *a2 = result;
  return result;
}

id sub_1AF0DCB90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 grain];
  *a2 = result;
  return result;
}

id sub_1AF0DCBE0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 anamorphic];
  *a2 = v4;
  return result;
}

id sub_1AF0DCC28@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 softness];
  *a2 = v4;
  return result;
}

id sub_1AF0DCC70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 vignetting];
  *a2 = result;
  return result;
}

id sub_1AF0DCCC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 motionBlur];
  *a2 = result;
  return result;
}

id sub_1AF0DCD10@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 strength];
  *a2 = v4;
  return result;
}

id sub_1AF0DCD58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorFringe];
  *a2 = result;
  return result;
}

id sub_1AF0DCDA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mode];
  *a2 = result;
  return result;
}

id sub_1AF0DCDF0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 toeStrength];
  *a2 = v4;
  return result;
}

id sub_1AF0DCE38@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 toeLength];
  *a2 = v4;
  return result;
}

id sub_1AF0DCE80@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 shoulderStrength];
  *a2 = v4;
  return result;
}

id sub_1AF0DCEC8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 shoulderLength];
  *a2 = v4;
  return result;
}

id sub_1AF0DCF10@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 shoulderAngle];
  *a2 = v4;
  return result;
}

id sub_1AF0DCF58@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 gamma];
  *a2 = v4;
  return result;
}

id sub_1AF0DCFA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toneMapping];
  *a2 = result;
  return result;
}

id sub_1AF0DCFF0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 value];
  *a2 = v4;
  return result;
}

id sub_1AF0DD038@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposure];
  *a2 = result;
  return result;
}

id sub_1AF0DD088@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 saturation];
  *a2 = v4;
  return result;
}

id sub_1AF0DD0D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 contrast];
  *a2 = v4;
  return result;
}

id sub_1AF0DD118@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 whiteBalanceTemperature];
  *a2 = v4;
  return result;
}

id sub_1AF0DD160@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 whiteBalanceTint];
  *a2 = v4;
  return result;
}

id sub_1AF0DD1A8@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 liftColor];
  *a2 = v4;
  return result;
}

id sub_1AF0DD1F0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 liftOffset];
  *a2 = v4;
  return result;
}

id sub_1AF0DD238@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 gammaColor];
  *a2 = v4;
  return result;
}

id sub_1AF0DD280@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 gammaOffset];
  *a2 = v4;
  return result;
}

id sub_1AF0DD2C8@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 gainColor];
  *a2 = v4;
  return result;
}

id sub_1AF0DD310@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 gainOffset];
  *a2 = v4;
  return result;
}

id sub_1AF0DD358@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorGrading];
  *a2 = result;
  return result;
}

id sub_1AF0DD3A8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fStop];
  *a2 = v4;
  return result;
}

id sub_1AF0DD3F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 quality];
  *a2 = result;
  return result;
}

id sub_1AF0DD438@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 depthOfField];
  *a2 = result;
  return result;
}

id sub_1AF0DD488@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 threshold];
  *a2 = v4;
  return result;
}

id sub_1AF0DD4D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 thresholdSmoothness];
  *a2 = v4;
  return result;
}

id sub_1AF0DD518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 iterationCount];
  *a2 = result;
  return result;
}

id sub_1AF0DD560@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useHighQuality];
  *a2 = result;
  return result;
}

id sub_1AF0DD5A8@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 colorFilter];
  *a2 = v4;
  return result;
}

id sub_1AF0DD5F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bloom];
  *a2 = result;
  return result;
}

id sub_1AF0DD640@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usesOrthographicProjection];
  *a2 = result;
  return result;
}

id sub_1AF0DD688@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 wantsHDR];
  *a2 = result;
  return result;
}

id sub_1AF0DD6D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 focalLength];
  *a2 = v4;
  return result;
}

id sub_1AF0DD718@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 fieldOfView];
  *a2 = v4;
  return result;
}

id sub_1AF0DD760@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sensorHeight];
  *a2 = v4;
  return result;
}

id sub_1AF0DD7A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fillMode];
  *a2 = result;
  return result;
}

id sub_1AF0DD7F0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 zNear];
  *a2 = v4;
  return result;
}

id sub_1AF0DD838@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 zFar];
  *a2 = v4;
  return result;
}

id sub_1AF0DD880@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 categoryBitMask];
  *a2 = result;
  return result;
}

id sub_1AF0DD8C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filmOffset];
  *a2 = v4;
  return result;
}

id sub_1AF0DD910@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 focusDistance];
  *a2 = v4;
  return result;
}

id sub_1AF0DD970@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 orthographicScale];
  *a2 = v4;
  return result;
}

__n128 sub_1AF0DDA04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1AF0DDA10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shadingModel];
  *a2 = result;
  return result;
}

id sub_1AF0DDA58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 blendMode];
  *a2 = result;
  return result;
}

id sub_1AF0DDAA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transparencyMode];
  *a2 = result;
  return result;
}

id sub_1AF0DDAE8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 alphaCutoff];
  *a2 = v4;
  return result;
}

id sub_1AF0DDB30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorBufferWriteMask];
  *a2 = result;
  return result;
}

id sub_1AF0DDB78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 writesToDepthBuffer];
  *a2 = result;
  return result;
}

id sub_1AF0DDBC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 readsFromDepthBuffer];
  *a2 = result;
  return result;
}

id sub_1AF0DDC08@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 indexOfRefraction];
  *a2 = v4;
  return result;
}

id sub_1AF0DDC50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 diffuse];
  *a2 = result;
  return result;
}

id sub_1AF0DDC8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metalness];
  *a2 = result;
  return result;
}

id sub_1AF0DDCC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 roughness];
  *a2 = result;
  return result;
}

id sub_1AF0DDD04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 specular];
  *a2 = result;
  return result;
}

id sub_1AF0DDD40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 normal];
  *a2 = result;
  return result;
}

id sub_1AF0DDD7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reflective];
  *a2 = result;
  return result;
}

id sub_1AF0DDDB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transparent];
  *a2 = result;
  return result;
}

id sub_1AF0DDDF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ambientOcclusion];
  *a2 = result;
  return result;
}

id sub_1AF0DDE30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selfIllumination];
  *a2 = result;
  return result;
}

id sub_1AF0DDE6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 emission];
  *a2 = result;
  return result;
}

id sub_1AF0DDEA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 multiply];
  *a2 = result;
  return result;
}

id sub_1AF0DDEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clearCoat];
  *a2 = result;
  return result;
}

id sub_1AF0DDF20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clearCoatNormal];
  *a2 = result;
  return result;
}

id sub_1AF0DDF5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clearCoatRoughness];
  *a2 = result;
  return result;
}

id sub_1AF0DDF98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subsurface];
  *a2 = result;
  return result;
}

id sub_1AF0DDFD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subsurfaceRadius];
  *a2 = result;
  return result;
}

id sub_1AF0DE010@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transmission];
  *a2 = result;
  return result;
}

id sub_1AF0DE04C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transmissionColor];
  *a2 = result;
  return result;
}

id sub_1AF0DE088@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displacement];
  *a2 = result;
  return result;
}

id sub_1AF0DE0C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subdivisionLevel];
  *a2 = result;
  return result;
}

void sub_1AF0DE114(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1AFDFCEC8();
  [v2 setSwiftString_];
}

id sub_1AF0DE178@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 extrusionDepth];
  *a2 = v4;
  return result;
}

id sub_1AF0DE1C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

id sub_1AF0DE210@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 flatness];
  *a2 = v4;
  return result;
}

id sub_1AF0DE258@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 chamferRadius];
  *a2 = v4;
  return result;
}

id sub_1AF0DE2A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _wantsSeparateMeshElements];
  *a2 = result;
  return result;
}

id sub_1AF0DE2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerFrame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_1AF0DE338@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isWrapped];
  *a2 = result;
  return result;
}

id sub_1AF0DE380@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parametricType];
  *a2 = result;
  return result;
}

id sub_1AF0DE3C8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 width];
  *a2 = v4;
  return result;
}

id sub_1AF0DE410@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 height];
  *a2 = v4;
  return result;
}

id sub_1AF0DE458@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 length];
  *a2 = v4;
  return result;
}

id sub_1AF0DE4A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 primitiveType];
  *a2 = result;
  return result;
}

id sub_1AF0DE4E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 widthSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE530@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE578@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lengthSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE5C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chamferSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 segmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE650@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 radialSpan];
  *a2 = v4;
  return result;
}

id sub_1AF0DE698@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHemispheric];
  *a2 = result;
  return result;
}

id sub_1AF0DE6E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGeodesic];
  *a2 = result;
  return result;
}

id sub_1AF0DE728@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 innerRadius];
  *a2 = v4;
  return result;
}

id sub_1AF0DE770@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 radialSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE7B8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 pipeRadius];
  *a2 = v4;
  return result;
}

id sub_1AF0DE800@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pipeSegmentCount];
  *a2 = result;
  return result;
}

id sub_1AF0DE848@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 model];
  *a2 = result;
  return result;
}

id sub_1AF0DE8D8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 mass];
  *a2 = v4;
  return result;
}

id sub_1AF0DE920@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 friction];
  *a2 = v4;
  return result;
}

id sub_1AF0DE968@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 restitution];
  *a2 = v4;
  return result;
}

id sub_1AF0DE9B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 damping];
  *a2 = v4;
  return result;
}

id sub_1AF0DE9F8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 angularDamping];
  *a2 = v4;
  return result;
}

id sub_1AF0DEA40@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rollingFriction];
  *a2 = v4;
  return result;
}

id sub_1AF0DEA88@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 charge];
  *a2 = v4;
  return result;
}

id sub_1AF0DEAD0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAffectedByGravity];
  *a2 = result;
  return result;
}

id sub_1AF0DEB18@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 centerOfMassOffset];
  *a2 = v4;
  return result;
}

id sub_1AF0DEB60@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 velocityFactor];
  *a2 = v4;
  return result;
}

id sub_1AF0DEBA8@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 angularVelocityFactor];
  *a2 = v4;
  return result;
}

id sub_1AF0DEBF0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 continuousCollisionDetectionThreshold];
  *a2 = v4;
  return result;
}

id sub_1AF0DEC38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collisionBitMask];
  *a2 = result;
  return result;
}

id sub_1AF0DEC80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactTestBitMask];
  *a2 = result;
  return result;
}

id sub_1AF0DECC8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsResting];
  *a2 = result;
  return result;
}

id sub_1AF0DED10@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 linearRestingThreshold];
  *a2 = v4;
  return result;
}

id sub_1AF0DED58@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 angularRestingThreshold];
  *a2 = v4;
  return result;
}

id sub_1AF0DEE08@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 velocity];
  *a2 = v4;
  return result;
}

id sub_1AF0DEE50@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 angularVelocity];
  *a2 = v4;
  return result;
}

id sub_1AF0DEE98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 physicsBody];
  *a2 = result;
  return result;
}

id sub_1AF0DEEE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fieldType];
  *a2 = result;
  return result;
}

id sub_1AF0DEF30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

id sub_1AF0DEF78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLocal];
  *a2 = result;
  return result;
}

id sub_1AF0DEFC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 falloffExponent];
  *a2 = v4;
  return result;
}

id sub_1AF0DF008@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 offset];
  *a2 = v4;
  return result;
}

id sub_1AF0DF050@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shape];
  *a2 = result;
  return result;
}

id sub_1AF0DF098@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cullMode];
  *a2 = result;
  return result;
}

id sub_1AF0DF0E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 forceField];
  *a2 = result;
  return result;
}

id sub_1AF0DF130@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1AF0DF178@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 extendedLinearSRGBColor];
  *a2 = v4;
  return result;
}

id sub_1AF0DF1C0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 temperature];
  *a2 = v4;
  return result;
}

id sub_1AF0DF208@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 attenuationDistance];
  *a2 = v4;
  return result;
}

id sub_1AF0DF250@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 castsShadow];
  *a2 = result;
  return result;
}

id sub_1AF0DF298@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 spotInnerAngle];
  *a2 = v4;
  return result;
}

id sub_1AF0DF2E0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 spotOuterAngle];
  *a2 = v4;
  return result;
}

id sub_1AF0DF328@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gobo];
  *a2 = result;
  return result;
}

id sub_1AF0DF364@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 areaExtents];
  *a2 = v4;
  return result;
}

id sub_1AF0DF3AC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 drawsArea];
  *a2 = result;
  return result;
}

id sub_1AF0DF3F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 doubleSided];
  *a2 = result;
  return result;
}

id sub_1AF0DF43C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 IESProfile];
  *a2 = result;
  return result;
}

id sub_1AF0DF48C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 probeType];
  *a2 = result;
  return result;
}

id sub_1AF0DF4D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 light];
  *a2 = result;
  return result;
}

uint64_t _s3VFX12ScriptMarkerVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1AF0DF680()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0DF6D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AF0E1274(_OWORD *a1@<X8>)
{
  *&v2 = sub_1AF479968();
  *a1 = xmmword_1AFE201A0;
  a1[1] = v2;
}

uint64_t sub_1AF0E12AC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1AF0E1440()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1AF0E1494(unint64_t result)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

unint64_t sub_1AF0E14A8(unint64_t result)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF0E14BC(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF0E14D4(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF0E14EC(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF0E1504(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *v1 = v2;
  return result;
}

__n128 sub_1AF0E1578@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1AF0E1584(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AF0E15AC()
{
  if (v0[4] == 1)
  {
    return *v0;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF0E1604()
{
  v1 = *v0;
  v2 = 1751607624;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x6D756964654DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 7827276;
  }
}

__n128 sub_1AF0E16C8(__n128 *a1, __n128 *a2)
{
  sub_1AF450FE0(a1, a2);
  v4 = a1[2].n128_u64[0];
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

__n128 sub_1AF0E1710(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 24);
  result = *a1;
  *(a2 + 32) = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AF0E172C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0E187C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1AF0E18C8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  return result;
}

void sub_1AF0E18D4(uint32x4_t *a1, uint64_t a2)
{
  *v3.i64 = sub_1AF579F4C(*a1, xmmword_1AFE552D0);
  *&v4 = sub_1AF579F5C(v3);
  *(a2 + 16) = v4;
}

uint64_t sub_1AF0E191C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 15);
}

uint64_t sub_1AF0E19E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 sub_1AF0E1A1C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1AF0E1A28(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_1AF0E1A4C(float32x4_t *a1, float32x4_t *a2)
{
  v6 = *a1;
  *v3.i64 = sub_1AF57AC1C(*a2, a2[1]);
  *v4.i64 = sub_1AF57ABF4(v6, v3);
  *a2 = v4;
  a2[1] = v5;
}

void sub_1AF0E1AAC(float32x4_t *a1, float32x4_t *a2)
{
  v6 = *a1;
  *v3.i64 = sub_1AF57ABEC(*a2, a2[1]);
  *v4.i64 = sub_1AF57ABF4(v3, v6);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1AF0E1AF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 15);
}

uint64_t sub_1AF0E1B30()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 15);
}

__n128 sub_1AF0E1CA8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1AF0E1CB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1AF0E1CCC(void *result, char *a2)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (*result == 2);
  }

  *a2 = v2;
  return result;
}

float sub_1AF0E1CEC@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = 1.0 / *a1;
  *a2 = result;
  return result;
}

float sub_1AF0E1D00(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= 0.001)
  {
    v2 = 0.001;
  }

  result = 1.0 / v2;
  *a2 = result;
  return result;
}

void sub_1AF0E1D28(unsigned int *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF57F008(*a1);
  *&v3 = nullsub_106();
  *a2 = v3;
}

uint64_t sub_1AF0E1D58(float32x4_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v3.i32[3] = 1.0;
  result = sub_1AF57EFBC(v3);
  *a2 = result;
  return result;
}

float sub_1AF0E1D90@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_1AF0E1D9C(float *a1, float *a2)
{
  v3 = *a1;
  a2[1] = *a1;
  v4 = atanf((a2[3] * 0.5) / v3);
  result = v4 + v4;
  *a2 = result;
  return result;
}

float sub_1AF0E1DE0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

float sub_1AF0E1DEC(float *a1, float *a2)
{
  v3 = *a1;
  a2[3] = *a1;
  v4 = atanf((v3 * 0.5) / a2[1]);
  result = v4 + v4;
  *a2 = result;
  return result;
}

float sub_1AF0E1E30@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12) / *(a1 + 16);
  *a2 = result;
  return result;
}

float sub_1AF0E1E40(float *a1, uint64_t a2)
{
  result = *(a2 + 12) / fmaxf(*a1, 0.01);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AF0E1F00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 20) == 1)
  {
    *a2 = *(result + 16);
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

_BYTE *sub_1AF0E1F64(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E1FA0(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  *a2 = v3;
  return result;
}

id sub_1AF0E1FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF5EA234(*(a1 + 40));
  *a2 = result;
  return result;
}

uint64_t sub_1AF0E2038()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 15);
}

void sub_1AF0E2070(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1AF0E20B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF4ACA14();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1AF0E20E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1AF0E2128()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0E2170()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0E21F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 44) == 1)
  {
    *a2 = *(result + 40);
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

BOOL sub_1AF0E22A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B7240();
  *a1 = result;
  return result;
}

unsigned __int8 *sub_1AF0E2320(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *(a2 + 2) = v3;
  return result;
}

BOOL sub_1AF0E23A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B7390();
  *a1 = result;
  return result;
}

BOOL sub_1AF0E23D4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B7410();
  *a1 = result;
  return result;
}

BOOL sub_1AF0E241C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B7494();
  *a1 = result;
  return result;
}

BOOL sub_1AF0E244C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B7630();
  *a1 = result;
  return result;
}

BOOL sub_1AF0E247C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4B77AC();
  *a1 = result;
  return result;
}

uint64_t sub_1AF0E24EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AF0E2500(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1AFBCC6B4(v1);
}

_BYTE *sub_1AF0E2574(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFE;
  }

  *(a2 + 18) = v3;
  return result;
}

_BYTE *sub_1AF0E25B0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFD;
  }

  *(a2 + 18) = v3;
  return result;
}

_BYTE *sub_1AF0E25EC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFB;
  }

  *(a2 + 18) = v3;
  return result;
}

_BYTE *sub_1AF0E2628(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if ((v2 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFF7;
  }

  *(a2 + 18) = v3;
  return result;
}

_BYTE *sub_1AF0E2664(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if ((v2 & 0x10) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10;
  }

  else
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFEF;
  }

  *(a2 + 18) = v3;
  return result;
}

_BYTE *sub_1AF0E26A0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (*result == 1)
  {
    if ((*(a2 + 18) & 0x400) != 0)
    {
      return result;
    }

    v3 = v2 | 0x400;
  }

  else
  {
    if ((*(a2 + 18) & 0x400) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFBFF;
  }

  *(a2 + 18) = v3;
  return result;
}

uint64_t sub_1AF0E26CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AF0E26D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1AF8E1C20(v1, v2);
}

float sub_1AF0E2748@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

void *sub_1AF0E2758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF8D9EB0(*a1);
  *a2 = result;
  return result;
}

_BYTE *sub_1AF0E27F8(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 0x10) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10;
  }

  else
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFEFLL;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E2838(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E2874(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFF7;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E28B0(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 0x80) != 0)
    {
      return result;
    }

    v3 = v2 | 0x80;
  }

  else
  {
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFF7FLL;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E28EC(_BYTE *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if ((v2 & 0x100) != 0)
    {
      return result;
    }

    v3 = v2 | 0x100;
  }

  else
  {
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFEFFLL;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E294C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 25) = v2;
  return result;
}

uint64_t sub_1AF0E2B14@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 12) == 1)
  {
    *a2 = *(result + 8);
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t sub_1AF0E2B60@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 12))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_1AF0E2B7C(_DWORD *result, uint64_t a2)
{
  *(a2 + 8) = *result;
  *(a2 + 12) = 0;
  return result;
}

uint64_t sub_1AF0E2BC0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(result + 12);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1AF0E2C04@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *result;
  if (*(result + 4))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_1AF0E2C20(_DWORD *result, uint64_t a2)
{
  if ((*(a2 + 4) & 1) == 0)
  {
    *a2 = *result;
    *(a2 + 4) = 0;
  }

  return result;
}

int *sub_1AF0E2C4C@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 4) == 1)
  {
    v2 = *result;
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  *a2 = v2 & 1;
  return result;
}

void *sub_1AF0E2CA8(void *result, uint64_t a2)
{
  if (*result == 2)
  {
    *(a2 + 16) = xmmword_1AFE552A0;
    *(a2 + 32) = 1;
  }

  else if (*result == 1)
  {
    *(a2 + 16) = xmmword_1AFE552B0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 2;
  }

  return result;
}

uint64_t sub_1AF0E2CF8@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 32) != 2 || *(result + 16) != 0;
  *a2 = v3;
  return result;
}

void sub_1AF0E2D4C(uint32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = 0uLL;
  if (!a1[1].i8[0])
  {
    *&v3 = sub_1AF579F4C(xmmword_1AFE552F0, *a1);
  }

  *a2 = v3;
}

void sub_1AF0E2D94(uint32x4_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *&v3 = sub_1AF579F4C(xmmword_1AFE552F0, *a1);
    *a2 = v3;
  }
}

uint64_t sub_1AF0E2DEC@<X0>(uint64_t result@<X0>, int *a2@<X8>)
{
  v2 = *result;
  if (*result <= 1u)
  {
    v2 = 1;
  }

  if (*(result + 16) != 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_1AF0E2E0C(_DWORD *result, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    LODWORD(v2) = *result;
    if (*result <= 1u)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *a2 = v2;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1AF0E2E40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 64);
  if (!*(result + 64))
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v2 = 1;
LABEL_4:
    *a2 = v2;
    return result;
  }

  *a2 = *(result + 48) + 2;
  return result;
}

uint64_t sub_1AF0E2E94@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0uLL;
  if (!*(result + 64))
  {
    v2 = *(result + 48);
  }

  *a2 = v2;
  return result;
}

void *sub_1AF0E2EBC(void *result, uint64_t a2)
{
  if (!*(a2 + 64))
  {
    v2 = result[1];
    *(a2 + 48) = *result;
    *(a2 + 56) = v2;
  }

  return result;
}

uint64_t sub_1AF0E2EE8@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0uLL;
  if (*(result + 64) == 1)
  {
    v2 = *(result + 48);
  }

  *a2 = v2;
  return result;
}

void *sub_1AF0E2F0C(void *result, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    v2 = result[1];
    *(a2 + 48) = *result;
    *(a2 + 56) = v2;
  }

  return result;
}

int8x16_t sub_1AF0E2F38@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  a3.i32[0] = 0;
  a4.i8[0] = a1[6].i8[0];
  result = vandq_s8(a1[5], vdupq_lane_s8(*&vceqq_s8(a4, a3), 0));
  *a2 = result;
  return result;
}

void *sub_1AF0E2F60(void *result, uint64_t a2)
{
  if (!*(a2 + 96))
  {
    v2 = result[1];
    *(a2 + 80) = *result;
    *(a2 + 88) = v2;
  }

  return result;
}

int8x16_t sub_1AF0E2F8C@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  a3.i8[0] = a1[6].i8[0];
  a4.i32[0] = 1;
  result = vandq_s8(a1[5], vdupq_lane_s8(*&vceqq_s8(a3, a4), 0));
  *a2 = result;
  return result;
}

void *sub_1AF0E2FB8(void *result, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v2 = result[1];
    *(a2 + 80) = *result;
    *(a2 + 88) = v2;
  }

  return result;
}

void *sub_1AF0E351C(void *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (*result == 2);
  }

  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_1AF0E3618(unsigned __int8 *a1, uint64_t a2)
{
  result = sub_1AFB9A0D4(*a1);
  *(a2 + 10) = result;
  return result;
}

__n128 sub_1AF0E3750(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AF0E3950@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 128))(*(a1 + a2 - 24));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E3A30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    LOBYTE(v2) = *a2;
  }

  *a2 = v2;
  return sub_1AF56C144(v3);
}

uint64_t sub_1AF0E3A70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;
  return sub_1AF56C674(v3);
}

uint64_t sub_1AF0E3AAC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  *(a2 + 24) = v2;
  return sub_1AF56CB9C(v3);
}

uint64_t sub_1AF0E3ADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AF0E3AEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(*(a1 + a2 - 8) + 8) + 24))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_1AF0E3B88(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AF0E3BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E3C74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(*(*(a1 + a2 - 8) + 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF0E3D30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF5087D8(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E3E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AF0E3EDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 80))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AF0E3F78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_1AF4FCD7C(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AF0E3FBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(*(a1 + a2 - 8) + 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E4058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF5088C4(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E40C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 152))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E4160@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 176))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E41F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF508984(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0E4268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 200))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AF0E451C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 12) == 1)
  {
    *a2 = *(result + 8);
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t sub_1AF0E4568@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = *(result + 20);
  if (*(result + 88))
  {
    v2 = 5;
  }

  if (*(result + 96) > 1)
  {
    v2 = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1AF0E4598@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 20);
  if (*(result + 88))
  {
    v2 = 5;
  }

  if (*(result + 96) > 1)
  {
    v2 = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1AF0E46F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  *a2 = v3;
  return sub_1AF459860(v3, v2);
}

void *sub_1AF0E4724(void *result, uint64_t a2)
{
  if (*result == 2)
  {
    if (*(a2 + 8) == 1)
    {
      return result;
    }

    *a2 = 0x3F80000000000000;
    v2 = 1;
    goto LABEL_8;
  }

  if (*result != 1)
  {
    *a2 = 0;
    v2 = 2;
LABEL_8:
    *(a2 + 8) = v2;
    return result;
  }

  if (*(a2 + 8))
  {
    *a2 = 1065353216;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1AF0E477C@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *result;
  if (*(result + 8))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1AF0E4798(unsigned int *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1AF0E47C4@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 4);
  if (*(result + 8) != 1)
  {
    v2 = 0.0;
    v3 = 1.0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_1AF0E47E8(void *result, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1AF0E4840@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 36))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1AF0E485C(unsigned int *result, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    *(a2 + 24) = *result;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E488C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 0;
  if (*(result + 36) == 1)
  {
    *&v2 = *(result + 24);
    HIDWORD(v2) = HIDWORD(*(result + 24));
  }

  *a2 = v2;
  return result;
}

double sub_1AF0E48BC(void *a1, uint64_t a2)
{
  if (*(a2 + 36) == 1)
  {
    result = *a1;
    *(a2 + 24) = COERCE_FLOAT(*a1) | (HIDWORD(*a1) << 32);
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E48F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 0;
  if (*(result + 36) == 2)
  {
    *&v2 = *(result + 24);
    HIDWORD(v2) = HIDWORD(*(result + 24));
  }

  *a2 = v2;
  return result;
}

double sub_1AF0E4928(void *a1, uint64_t a2)
{
  if (*(a2 + 36) == 2)
  {
    result = *a1;
    *(a2 + 24) = COERCE_FLOAT(*a1) | (HIDWORD(*a1) << 32);
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E4964@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 36) != 3)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1AF0E4980(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 36) == 3)
  {
    *(a2 + 24) = *result;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E49B0@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 36) != 4)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1AF0E49CC(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 36) == 4)
  {
    *(a2 + 24) = *result;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E49FC@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 36) != 5)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1AF0E4A18(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 36) == 5)
  {
    *(a2 + 24) = *result;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1AF0E4AB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0E4B08()
{

  sub_1AF5A5B10(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0E4B4C()
{

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0E6098()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 15);
}

void *_s3VFX11LODRendererVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_1AF0E619C(unint64_t *a1, _BYTE *a2)
{
  result = sub_1AF5F04C4(*a1);
  *a2 = result;
  return result;
}

id sub_1AF0E61DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF5EA234(*(a1 + 160));
  *a2 = result;
  return result;
}

_BYTE *sub_1AF0E6254@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = *result == 5;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  *a2 = v3;
  return result;
}

_BYTE *sub_1AF0E626C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = *result == 9;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  *a2 = v3;
  return result;
}

uint64_t sub_1AF0E6368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF0E63D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s3VFX6ShadowVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_1AF0E64DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_1AF0E6514()
{

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t _s3VFX31_BinaryUnkeyedDecodingContainerVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_1AF0E6610()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0E6670(unsigned __int8 a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0x10u)
  {
    v2 = a1 | 0x20;
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v6 = v5;
    v9 = v5;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = v2;
    sub_1AF441150(v8, v6);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v4 = v3;
    v9 = v3;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = 48;
    sub_1AF441150(v8, v4);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    LOBYTE(v8[0]) = a1;
    sub_1AF61AE18(v8, v8 + 1);
  }
}

uint64_t sub_1AF0E68FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0E6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0E69D8()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0E6A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0E6BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0E6C38()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0E6CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0E6D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0E6DB4()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0E6E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

void *_s3VFX4NodeC4PortVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

BOOL sub_1AF0E7080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a1[6];
  v15 = a2[6];
  v16 = *(a1 + 28);
  v17 = *(a2 + 28);
  return v2 != v4 || v3 != v5 || v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13 || v14 != v15 || v16 != v17;
}

BOOL sub_1AF0E7140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a2[4];
  v13 = a2[5];
  return v2 != v4 || v3 != v5 || v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13;
}

BOOL sub_1AF0E727C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a2[4];
  v13 = a2[5];
  v15 = a1[6];
  v14 = a1[7];
  v17 = a2[6];
  v16 = a2[7];
  return v2 != v4 || v3 != v5 || v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13 || v15 != v17 || v14 != v16;
}

char *sub_1AF0E80F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t __len)
{
  v5 = (a1 + a2);
  result = (a3 + a4);
  if ((a3 + a4) != v5 || result >= &v5[__len])
  {
    return memmove(result, v5, __len);
  }

  return result;
}

char *sub_1AF0E8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 8 * a2);
  result = (a3 + 8 * a4);
  if (result != v5 || result >= &v5[8 * a5])
  {
    return memmove(result, v5, 8 * a5);
  }

  return result;
}

char *sub_1AF0E813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 16 * a2);
  result = (a3 + 16 * a4);
  if (result != v5 || result >= &v5[16 * a5])
  {
    return memmove(result, v5, 16 * a5);
  }

  return result;
}

char *sub_1AF0E8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 4 * a2);
  result = (a3 + 4 * a4);
  if (result != v5 || result >= &v5[4 * a5])
  {
    return memmove(result, v5, 4 * a5);
  }

  return result;
}

char *sub_1AF0E8184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 32 * a2);
  result = (a3 + 32 * a4);
  if (result != v5 || result >= &v5[32 * a5])
  {
    return memmove(result, v5, 32 * a5);
  }

  return result;
}

char *sub_1AF0E81A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 12 * a2);
  result = (a3 + 12 * a4);
  if (result != v5 || result >= &v5[12 * a5])
  {
    return memmove(result, v5, 12 * a5);
  }

  return result;
}

char *sub_1AF0E81D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + (a2 << 6));
  result = (a3 + (a4 << 6));
  if (result != v5 || result >= &v5[64 * a5])
  {
    return memmove(result, v5, a5 << 6);
  }

  return result;
}

char *sub_1AF0E81F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 3 * a2);
  result = (a3 + 3 * a4);
  if (result != v5 || result >= &v5[3 * a5])
  {
    return memmove(result, v5, 3 * a5);
  }

  return result;
}

char *sub_1AF0E8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 24 * a2);
  result = (a3 + 24 * a4);
  if (result != v5 || result >= &v5[24 * a5])
  {
    return memmove(result, v5, 24 * a5);
  }

  return result;
}

char *sub_1AF0E8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 36 * a2);
  result = (a3 + 36 * a4);
  if (result != v5 || result >= &v5[36 * a5])
  {
    return memmove(result, v5, 36 * a5);
  }

  return result;
}

char *sub_1AF0E827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 2 * a2);
  result = (a3 + 2 * a4);
  if (result != v5 || result >= &v5[2 * a5])
  {
    return memmove(result, v5, 2 * a5);
  }

  return result;
}

char *sub_1AF0E82A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 48 * a2);
  result = (a3 + 48 * a4);
  if (result != v5 || result >= &v5[48 * a5])
  {
    return memmove(result, v5, 48 * a5);
  }

  return result;
}

char *sub_1AF0E82CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 112 * a2);
  result = (a3 + 112 * a4);
  if (result != v5 || result >= &v5[112 * a5])
  {
    return memmove(result, v5, 112 * a5);
  }

  return result;
}

char *sub_1AF0E82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 40 * a2);
  result = (a3 + 40 * a4);
  if (result != v5 || result >= &v5[40 * a5])
  {
    return memmove(result, v5, 40 * a5);
  }

  return result;
}

char *sub_1AF0E8324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 240 * a2);
  result = (a3 + 240 * a4);
  if (result != v5 || result >= &v5[240 * a5])
  {
    return memmove(result, v5, 240 * a5);
  }

  return result;
}

char *sub_1AF0E8350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 28 * a2);
  result = (a3 + 28 * a4);
  if (result != v5 || result >= &v5[28 * a5])
  {
    return memmove(result, v5, 28 * a5);
  }

  return result;
}

char *sub_1AF0E837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 - a2 + 8 * a2);
  result = (a3 - a4 + 8 * a4);
  if (result != v5 || result >= &v5[8 * a5 - a5])
  {
    return memmove(result, v5, 7 * a5);
  }

  return result;
}

char *sub_1AF0E83B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 44 * a2);
  result = (a3 + 44 * a4);
  if (result != v5 || result >= &v5[44 * a5])
  {
    return memmove(result, v5, 44 * a5);
  }

  return result;
}

char *sub_1AF0E83DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 80 * a2);
  result = (a3 + 80 * a4);
  if (result != v5 || result >= &v5[80 * a5])
  {
    return memmove(result, v5, 80 * a5);
  }

  return result;
}

char *sub_1AF0E8408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 56 * a2);
  result = (a3 + 56 * a4);
  if (result != v5 || result >= &v5[56 * a5])
  {
    return memmove(result, v5, 56 * a5);
  }

  return result;
}

char *sub_1AF0E8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 144 * a2);
  result = (a3 + 144 * a4);
  if (result != v5 || result >= &v5[144 * a5])
  {
    return memmove(result, v5, 144 * a5);
  }

  return result;
}

char *sub_1AF0E8460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 104 * a2);
  result = (a3 + 104 * a4);
  if (result != v5 || result >= &v5[104 * a5])
  {
    return memmove(result, v5, 104 * a5);
  }

  return result;
}

void *_s3VFX12VertexLayoutVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AF0E84D0()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AF0E8514(char a1)
{
  if (!a1)
  {
    return 0x73656D6974;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 0x73746E65676E6174;
}

uint64_t sub_1AF0E8580()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E85B8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s15RelationStorageVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

uint64_t sub_1AF0E87A4(char a1)
{
  if (a1)
  {
    return 0x72656E6E69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void *_s3VFX4NameVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AF0E8D24()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0E8D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0E8DB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0E8DE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E8FB0()
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1AF0E8FF8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AF0E9048()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E9090()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E90C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *_s3VFX8JobQueueVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AF0E916C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0E91AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s3VFX18ManagedBufferSliceVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1AF0E926C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0E92AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0E9324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E935C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0E93A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t *_s3VFX12ScriptStatusOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1AF446C68(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1AF0E9434()
{
  v1 = *(v0 + 104);
  sub_1AF0FBD8C(v1);
  return v1;
}

uint64_t sub_1AF0E9468()
{
  v1 = *(v0 + 120);
  sub_1AF0FBD8C(v1);
  return v1;
}

uint64_t sub_1AF0E94C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0E94FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0E9534()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E956C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E95B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E95F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0E9628()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *_s3VFX13ShaderArchiveC32MTLLinkedFunctionDescriptorCoderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  swift_unknownObjectRetain();
  return a1;
}

void *_s3VFX13ShaderArchiveC32MTLRenderPipelineDescriptorCoderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for TriggerScriptRunnerSystem.CollisionNodePair(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t _s3VFX13ShaderArchiveC32MTLRenderPipelineDescriptorCoderVwca_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TriggerScriptRunnerSystem.CollisionNodePair(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t _s3VFX24ShaderCompilationContextVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_1AF0E9888()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AF0E98F4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AF0E995C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AF0E99D4()
{
  if (v0[3])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[8])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[13])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[18])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 432, 7);
}

uint64_t sub_1AF0E9AAC()
{

  if (*(v0 + 40))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 80))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 120))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 160))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  if (*(v0 + 472))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 512))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 552))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 592))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 896, 7);
}

uint64_t sub_1AF0E9C48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0E9C80()
{
  if (*(v0 + 24))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 64))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 104))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 144))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  if (*(v0 + 448))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 488))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 528))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 568))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 872, 7);
}

uint64_t sub_1AF0E9E10()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AF0E9E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0E9EF4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1AFDFC128();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1AF0E9F98(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1AFDFC128();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AF0EA038()
{
  v1 = (type metadata accessor for TextureCache.TextureKey() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  swift_unownedRelease();
  v5 = v0 + v1[7];
  v6 = sub_1AFDFC128();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AF0EA128()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA160()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EA1A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0EA1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EA22C()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA264()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA29C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA2D4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA314()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EA364()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA3A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EA424()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EA46C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA4A4()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA4E4(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1AF0EA528()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA560()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EA73C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA774()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA7F4()
{
  if (*v0)
  {
    return 0x73746567726174;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1AF0EA874()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1AF0EA8FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EA934()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EA990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AF0EAA5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0EB55C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0EB618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AF0EB6D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AFDFC318();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AF0EB794()
{
  v1 = (type metadata accessor for BundleInfo() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_1AFDFC128();
  v5 = *(v12 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v13 = v2 | v6;
  v8 = (((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = v1[7];
  v10 = sub_1AFDFC318();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  (*(v5 + 8))(v0 + v7, v12);

  return MEMORY[0x1EEE6BDD0](v0, ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_1AF0EB990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF0EB9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AF0EBB48(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_1AF0EBBA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EBBD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EBC18()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EBC54@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1AF0EBCCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EBE78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF0EC404()
{
  if (v0[3])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[8])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[13])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (v0[18])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

void sub_1AF0EC4E4(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = 0xE700000000000000;
  v5 = 0x72656C706D6173;
  if (*v1 != 2)
  {
    v5 = 0x616942656C616373;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x65727574786574;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1AF0EC568()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x72656C706D6173;
  if (*v0 != 2)
  {
    v2 = 0x616942656C616373;
  }

  if (*v0)
  {
    v1 = 0x65727574786574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF0EC5E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1AF0EC624(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void **_s3VFX20AssetManagerInstanceVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_1AF0EC8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AF0EC990(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0ECCE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1AF0ECDFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1AF5A5AE8(*a1, v2, v3);
  return sub_1AF8E4078(v1, v2, v3);
}

uint64_t sub_1AF0ECE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  result = sub_1AF467494(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AF0ECE9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  result = sub_1AF445CA8(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AF0ECEEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  result = sub_1AF445CB0(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AF0ECF3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  result = sub_1AF478AC0(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AF0ECF94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  result = sub_1AF8FE1D8(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AF0ECFE4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0ED01C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0ED05C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0ED0B4()
{

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0ED100()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0ED148()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0ED190()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *_s3VFX18TexturePlaceholderVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1AF0ED21C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_1AF0ED308(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}