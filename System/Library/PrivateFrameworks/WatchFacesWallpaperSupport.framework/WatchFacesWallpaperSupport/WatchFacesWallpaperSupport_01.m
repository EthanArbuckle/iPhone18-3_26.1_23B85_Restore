void *sub_1D96C59EC(void *a1, int64_t a2, char a3)
{
  result = sub_1D96C5BA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PosterOrientationDescription(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PosterOrientationDescription(uint64_t result, int a2, int a3)
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

uint64_t sub_1D96C5AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D96C5B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D96C5B88(void *a1, int64_t a2, char a3)
{
  result = sub_1D96C5CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D96C5BA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F260, &unk_1D96DCF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D96C5CD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F250, &qword_1D96DCEF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F258, &qword_1D96DCF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D96C5E14()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1ECB3F270);
  __swift_project_value_buffer(v0, qword_1ECB3F270);
  return sub_1D96DA5C0();
}

uint64_t static Logger.rotationAnimator.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB3EC48 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F270);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D96C5F3C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1D96C5F78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D96C5FD8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D96C606C;
}

void sub_1D96C606C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D96C6124(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1D96C61E8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1D96C62AC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t PosterRotationAnimator.__allocating_init()()
{
  v0 = swift_allocObject();
  PosterRotationAnimator.init()();
  return v0;
}

void *PosterRotationAnimator.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  type metadata accessor for DisplayLink();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  v3 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel__displayLinkFired];
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;

  *(v1 + 56) = v2;
  type metadata accessor for RendererTokenManager();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  swift_allocObject();
  *(v1 + 80) = RendererTokenManager.init()();
  *(v1 + 88) = 0;
  v5 = *(v1 + 56);
  swift_beginAccess();
  *(v5 + 24) = &protocol witness table for PosterRotationAnimator;
  swift_unknownObjectWeakAssign();
  result = *(*(v1 + 56) + 32);
  if (result)
  {
    [result setPaused_];
    v7 = *(v1 + 56);
    v8 = objc_opt_self();

    v9 = [v8 currentRunLoop];
    result = *(v7 + 32);
    if (result)
    {
      [result addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *PosterRotationAnimator.deinit()
{
  result = *(*(v0 + 56) + 32);
  if (result)
  {
    v2 = v0;
    [result invalidate];
    v3 = *(v0 + 80);

    RendererTokenManager.invalidateAllTokens()();

    sub_1D96C6D84(v2 + 16);
    v4 = *(v2 + 56);

    v5 = *(v2 + 80);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PosterRotationAnimator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + 32);
  if (v4)
  {
    v5 = v3;
    [v4 invalidate];
    v6 = *(v3 + 80);

    RendererTokenManager.invalidateAllTokens()();

    sub_1D96C6D84(v5 + 16);
    v7 = *(v5 + 56);

    v8 = *(v5 + 80);

    v4 = v5;
    a2 = 89;
    a3 = 7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BDC0](v4, a2, a3);
}

void *sub_1D96C6620(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();

  return sub_1D96C6714(a2, v4, a1);
}

void *sub_1D96C66A0(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();

  return sub_1D96C6714(a2, v3, 0);
}

void *sub_1D96C6714(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 32);
  if (v8 == a2)
  {
    return (v8 != a2);
  }

  v9 = 0.0;
  if (a1)
  {
    v10 = [a1 animationSettings];
    if (v10)
    {
      v11 = v10;
      [v10 duration];
      v9 = v12;
      v13 = [v11 timingFunction];
      if (!v13)
      {
        v13 = [objc_opt_self() functionWithName_];
      }

      v14 = *(v4 + 72);
      *(v4 + 72) = v13;
    }
  }

  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v15 = sub_1D96DA5D0();
  __swift_project_value_buffer(v15, qword_1EDB95890);
  v16 = sub_1D96DA5B0();
  v17 = sub_1D96DA890();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315394;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v20 = 0xE800000000000000;
        v21 = 0x7469617274726F50;
        goto LABEL_21;
      }

      if (a2 == 2)
      {
        v20 = 0x80000001D96DE980;
        v21 = 0xD000000000000014;
LABEL_21:
        v22 = sub_1D96BB28C(v21, v20, &v36);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v9;
        _os_log_impl(&dword_1D96B3000, v16, v17, "Poster requested rotation to %s with duration: %f", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x1DA736010](v19, -1, -1);
        MEMORY[0x1DA736010](v18, -1, -1);
        goto LABEL_22;
      }

LABEL_17:
      v21 = 0xD000000000000013;
      v20 = 0x80000001D96DE960;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      v20 = 0xEF74686769522065;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_17;
      }

      v20 = 0xEE007466654C2065;
    }

    v21 = 0x70616373646E614CLL;
    goto LABEL_21;
  }

LABEL_22:

  if (v9 <= 0.00001)
  {
    result = *(*(v4 + 56) + 32);
    if (result)
    {
      [result setPaused_];
      v29 = *(v4 + 80);
      v30 = qword_1ECB3F288;
      v31 = off_1ECB3F290;

      v32._countAndFlagsBits = v30;
      v32._object = v31;
      RendererTokenManager.invalidateToken(for:)(v32);

      *(v4 + 32) = a2;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        (*(v33 + 16))(a2, ObjectType, v33);
        swift_unknownObjectRelease();
      }

      v35 = *(v4 + 72);
      *(v4 + 72) = 0;

      swift_beginAccess();
      *(v4 + 88) = 0;
      return (v8 != a2);
    }
  }

  else
  {
    v23 = v9;
    swift_beginAccess();
    *(v4 + 40) = v23;
    *(v4 + 48) = CACurrentMediaTime();
    result = *(*(v4 + 56) + 32);
    if (result)
    {
      [result setPaused_];
      *(v4 + 64) = a2;
      swift_beginAccess();
      *(v4 + 88) = 1;
      if (a3)
      {
        v25 = *(v4 + 80);
        v26 = qword_1ECB3F288;
        v27 = off_1ECB3F290;
        v28 = a3;

        v37._countAndFlagsBits = v26;
        v37._object = v27;
        RendererTokenManager.requestExtension(from:for:)(v28, v37);
      }

      return (v8 != a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *PosterRotationAnimator.displayLinkFired(displayLink:)(uint64_t a1)
{
  v2 = v1;
  v4 = CACurrentMediaTime() - *(v1 + 48);
  swift_beginAccess();
  if ((v4 / *(v1 + 40)) <= 1.0)
  {
    v6 = v4 / *(v1 + 40);
  }

  else
  {
    v6 = 1.0;
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    *&v5 = v6;
    [v7 _solveForInput_];
    v6 = v8;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    (*(v10 + 8))(*(v1 + 32), *(v1 + 64), ObjectType, v10, v6);
    result = swift_unknownObjectRelease();
  }

  if (*(v1 + 40) <= v4)
  {
    v12 = *(v1 + 64);
    swift_beginAccess();
    *(v2 + 32) = v12;
    *(v2 + 64) = 0;
    result = *(a1 + 32);
    if (result)
    {
      [result setPaused_];
      swift_beginAccess();
      *(v2 + 88) = 0;
      v13 = *(v2 + 80);
      v14 = qword_1ECB3F288;
      v15 = off_1ECB3F290;

      v16._countAndFlagsBits = v14;
      v16._object = v15;
      RendererTokenManager.invalidateToken(for:)(v16);

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v17 = *(v2 + 24);
        v18 = swift_getObjectType();
        (*(v17 + 16))(*(v2 + 32), v18, v17);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D96C7048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t showSensitiveUIAlert(for:)(void *a1)
{
  v2 = sub_1D96DA5E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D96DA610();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D96C7310();
  v12 = sub_1D96DA8D0();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_1D96C7520;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96C7048;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_1D96DA5F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D96C7540();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EFA0, &qword_1D96DC500);
  sub_1D96C7598();
  sub_1D96DA940();
  MEMORY[0x1DA7355F0](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1D96C7310()
{
  result = qword_1EDB95BF0;
  if (!qword_1EDB95BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB95BF0);
  }

  return result;
}

void sub_1D96C735C(void *a1)
{
  v2 = sub_1D96DA690();
  v3 = sub_1D96DA690();
  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  v7 = sub_1D96DA690();
  v10[4] = sub_1D96C75FC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96BFBE4;
  v10[3] = &block_descriptor_6_0;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v6 addAction_];
  [a1 presentViewController:v6 animated:1 completion:0];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D96C7540()
{
  result = qword_1ECB3EF98;
  if (!qword_1ECB3EF98)
  {
    sub_1D96DA5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EF98);
  }

  return result;
}

unint64_t sub_1D96C7598()
{
  result = qword_1ECB3EFA8;
  if (!qword_1ECB3EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB3EFA0, &qword_1D96DC500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EFA8);
  }

  return result;
}

uint64_t DisplayLink.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel__displayLinkFired];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;

  return v0;
}

id DisplayLink.preferredFrameRateRange.setter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result setPreferredFrameRateRange_];
  }

  __break(1u);
  return result;
}

id DisplayLink.isPaused.setter(char a1)
{
  result = *(v1 + 32);
  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DisplayLink.invalidate()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D96C7708(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(v3 + 32);
  if (result)
  {
    return [result *a3];
  }

  __break(1u);
  return result;
}

id DisplayLink.isPaused.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result isPaused];
  }

  __break(1u);
  return result;
}

uint64_t DisplayLink.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t DisplayLink.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DisplayLink.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D96C606C;
}

uint64_t DisplayLink.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel__displayLinkFired];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;

  return v0;
}

SEL *sub_1D96C79B4(SEL *result)
{
  if (*(v1 + 32))
  {
    return [*(v1 + 32) *result];
  }

  __break(1u);
  return result;
}

id (*DisplayLink.isPaused.modify(uint64_t a1))(unsigned __int8 *a1, char a2)
{
  *a1 = v1;
  result = *(v1 + 32);
  if (result)
  {
    *(a1 + 8) = [result isPaused];
    return sub_1D96C7A34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7A34(unsigned __int8 *a1, char a2)
{
  result = *(*a1 + 32);
  if (a2)
  {
    if (result)
    {
      return [result setPaused_];
    }

    __break(1u);
  }

  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFramesPerSecond.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result preferredFramesPerSecond];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFramesPerSecond.setter(uint64_t a1)
{
  result = *(v1 + 32);
  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

id (*DisplayLink.preferredFramesPerSecond.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  result = *(v1 + 32);
  if (result)
  {
    *a1 = [result preferredFramesPerSecond];
    return sub_1D96C7AF4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7AF4(void *a1, char a2)
{
  result = *(a1[1] + 32);
  if (a2)
  {
    if (result)
    {
      return [result setPreferredFramesPerSecond_];
    }

    __break(1u);
  }

  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFrameRateRange.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result preferredFrameRateRange];
  }

  __break(1u);
  return result;
}

id (*DisplayLink.preferredFrameRateRange.modify(uint64_t a1))(_DWORD *a1, char a2, double a3, double a4, double a5)
{
  *a1 = v1;
  result = *(v1 + 32);
  if (result)
  {
    [result preferredFrameRateRange];
    *(a1 + 8) = v4;
    *(a1 + 12) = v5;
    *(a1 + 16) = v6;
    return sub_1D96C7BA8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7BA8(_DWORD *a1, char a2, double a3, double a4, double a5)
{
  result = *(*a1 + 32);
  if (a2)
  {
    if (result)
    {
LABEL_5:
      LODWORD(a4) = a1[3];
      LODWORD(a5) = a1[4];
      LODWORD(a3) = a1[2];
      return [result setPreferredFrameRateRange_];
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t DisplayLink.deinit()
{
  sub_1D96C6D84(v0 + 16);

  return v0;
}

uint64_t DisplayLink.__deallocating_deinit()
{
  sub_1D96C6D84(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

double sub_1D96C7CA8@<D0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2[1];
  v19 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 36);
  v7 = [a1 traitCollection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 userInterfaceStyle];

    v10 = v9 == 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 deviceOrientation];
  swift_unknownObjectRelease();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 40) = v10;
  *(a3 + 41) = 0;
  *(a3 + 48) = v19;
  *(a3 + 64) = v18;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  *(a3 + 88) = v11;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

double sub_1D96C7D94@<D0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2[1];
  v25 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 36);
  swift_getObjectType();
  v7 = [a1 traitCollection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 userInterfaceStyle];

    v10 = v9 == 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 traitCollection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 _backlightLuminance];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 deviceOrientation];
  PRPosterRenderingEnvironment.unlockState.getter(v30);
  v16 = v30[0];
  v17 = v31;
  PRPosterRenderingEnvironment.wakeState.getter(v27);
  v18 = v27[0];
  v19 = v28;
  v20 = v29;
  v21 = [a1 isSnapshot];
  swift_unknownObjectRelease();
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v10;
  *(a3 + 41) = v14;
  *(a3 + 42) = v21;
  *(a3 + 48) = v26;
  *(a3 + 64) = v24;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  *(a3 + 88) = v15;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

uint64_t sub_1D96C7F28(uint64_t a1)
{
  if ((a1 - 70) > 0x2D)
  {
    goto LABEL_6;
  }

  if (((1 << (a1 - 70)) & 0xC03) != 0)
  {
    return 4;
  }

  if (a1 == 115)
  {
    return 8;
  }

LABEL_6:
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000018, 0x80000001D96DEBB0);
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  result = sub_1D96DAA40();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for WallpaperMetalCoordination(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WallpaperMetalCoordination(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D96C8100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2B8, &qword_1D96DD1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D96DD050;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = 0x6F50726F68636E61;
  *(inited + 88) = 0xEB00000000746E69;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 104) = 0x73746E65746E6F63;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = sub_1D96BD610(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2C0, &qword_1D96DD1D8);
  result = swift_arrayDestroy();
  qword_1EDB969D0 = v1;
  return result;
}

uint64_t sub_1D96C8284()
{
  v0 = type metadata accessor for WallpaperMetalCoordination.Resources();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D96C82C4();
  qword_1EDB969E8 = result;
  return result;
}

uint64_t sub_1D96C82C4()
{
  v1 = v0;
  v2 = sub_1D96DA8C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1D96DA8B0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1D96DA610() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = sub_1D96DA5D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MTLCreateSystemDefaultDevice();
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  v17 = [v15 newCommandQueue];
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_5:
    type metadata accessor for WallpaperMetalCoordination.Resources();
    v22 = *(*v0 + 48);
    v23 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device) = v16;
  *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue) = v17;
  v27 = v3;
  v25[1] = v8;
  v18 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D96DA690();
  v26 = v2;
  v20 = v19;
  [v18 setLabel_];

  sub_1D96DA5C0();
  (*(v11 + 32))(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_log, v14, v10);
  sub_1D96C7310();
  sub_1D96DA600();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D96C8E6C(&unk_1EDB95C00, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2C8, &unk_1D96DD1E0);
  sub_1D96C8EB4();
  sub_1D96DA940();
  (*(v27 + 104))(v28, *MEMORY[0x1E69E8090], v26);
  v21 = sub_1D96DA8F0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_snapshotQueue) = v21;
  return v1;
}

uint64_t sub_1D96C86C8()
{
  v1 = OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_log;
  v2 = sub_1D96DA5D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue);
  swift_unknownObjectRelease();

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t type metadata accessor for WallpaperMetalCoordination.Resources()
{
  result = qword_1EDB95E98;
  if (!qword_1EDB95E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96C87E8()
{
  result = sub_1D96DA5D0();
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

uint64_t sub_1D96C8890()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 40);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 16);
  if (v2 >= v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_1D96DAA40();
    __break(1u);
    return result;
  }

  v4 = v1 + 16 * v2;
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  if (v2 + 1 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 + 1;
  }

  *(v0 + 40) = v7;
  swift_unknownObjectRetain();
  v8 = v5;
  return v6;
}

uint64_t sub_1D96C8958()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t getEnumTagSinglePayload for WallpaperMetalCoordination.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WallpaperMetalCoordination.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D96C8B20()
{
  result = qword_1ECB3F298;
  if (!qword_1ECB3F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F298);
  }

  return result;
}

void *sub_1D96C8B74(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F2A0, &unk_1D96DD1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D96DD050;
  v7 = *MEMORY[0x1E696CDE0];
  *(inited + 32) = *MEMORY[0x1E696CDE0];
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = a1;
  v9 = *MEMORY[0x1E696CD90];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = a2;
  v10 = *MEMORY[0x1E696CD78];
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  *(inited + 120) = 1;
  v11 = *MEMORY[0x1E696CDA0];
  *(inited + 144) = v8;
  *(inited + 152) = v11;
  *(inited + 184) = MEMORY[0x1E69E7668];
  *(inited + 160) = 1093677112;
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1D96BE020(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF48, &qword_1D96DC4C8);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696CDE8]);
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2B0, &unk_1D96DD1C0);
  sub_1D96C8E6C(&qword_1ECB3EFE0, type metadata accessor for IOSurfacePropertyKey);
  v17 = sub_1D96DA620();

  v18 = [v16 initWithProperties_];

  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 texture2DDescriptorWithPixelFormat:10 width:a1 height:a2 mipmapped:0];
    [v21 setUsage_];
    [v21 setStorageMode_];
    v22 = [a3 newTextureWithDescriptor:v21 iosurface:v20 plane:0];
    if (v22)
    {
      a3 = v22;
    }

    else
    {
      sub_1D96BAB7C();
      swift_allocError();
      *v24 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D96BAB7C();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_1D96C8E6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D96C8EB4()
{
  result = qword_1EDB95C50;
  if (!qword_1EDB95C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB3F2C8, &unk_1D96DD1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95C50);
  }

  return result;
}

unint64_t AnimationCurveDescription.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000001BLL;
  if (*v0 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  *v0;
  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!v1)
  {
    v2 = 0xD00000000000001DLL;
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

unint64_t sub_1D96C9000()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000001BLL;
  if (*v0 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  *v0;
  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!v1)
  {
    v2 = 0xD00000000000001DLL;
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

uint64_t sub_1D96C9130(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D96DA5C0();
}

id PRPosterRenderingEnvironment.unlockState.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 unlockProgress];
  if (v3 < 0.0 || ([v1 unlockProgress], v4 > 1.0))
  {
    [v1 unlockProgress];
    v6 = v5 >= 0.0;
    result = [v1 unlockProgress];
    v9 = v8 < 0.0;
    v10 = 1.0;
    if (v9)
    {
      v10 = 0.0;
    }

    *a1 = v6;
    goto LABEL_6;
  }

  [v1 unlockProgress];
  v12 = v11;
  result = [v1 unlockProgress];
  v14 = v13;
  if (v12 != 0.0)
  {
    result = [v1 unlockProgress];
    if (v14 == 1.0)
    {
      *a1 = 1;
    }

    else
    {
      *a1 = 2;
    }

LABEL_6:
    *(a1 + 8) = v10;
    return result;
  }

  *a1 = 0;
  *(a1 + 8) = v13;
  return result;
}

id PRPosterRenderingEnvironment.wakeState.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 backlightProgress];
  if (v3 >= 0.0)
  {
    [v1 backlightProgress];
    if (v4 <= 1.0)
    {
      [v1 backlightProgress];
      if (v11 == 0.0)
      {
        [v1 linearBacklightProgress];
        v13 = v12;
        result = [v1 backlightProgress];
        v15 = 1;
      }

      else
      {
        [v1 backlightProgress];
        v17 = v16;
        [v1 linearBacklightProgress];
        v13 = v18;
        result = [v1 backlightProgress];
        if (v17 == 1.0)
        {
          *a1 = 0;
          goto LABEL_12;
        }

        v15 = 2;
      }

      *a1 = v15;
LABEL_12:
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      return result;
    }
  }

  [v1 backlightProgress];
  v6 = v5 < 0.0;
  [v1 backlightProgress];
  if (v7 >= 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  result = [v1 linearBacklightProgress];
  *a1 = v6;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  return result;
}

id sub_1D96C93F4(SEL *a1)
{
  v2 = [objc_msgSend(v1 environment)];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PRRenderer.wakeState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 environment];
  PRPosterRenderingEnvironment.wakeState.getter(a1);

  return swift_unknownObjectRelease();
}

uint64_t PRRenderer.unlockState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 environment];
  PRPosterRenderingEnvironment.unlockState.getter(a1);

  return swift_unknownObjectRelease();
}

id PRRenderer.posterContents.getter()
{
  v1 = [objc_msgSend(v0 environment)];
  swift_unknownObjectRelease();
  return v1;
}

double PRRenderer.snapshotBounds.getter()
{
  v1 = [v0 backgroundView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

uint64_t static String.localized(key:tableSuffix:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  if (a4 && sub_1D96DA710() >= 1)
  {
    MEMORY[0x1DA735440](a3, a4);
    sub_1D96DA7A0();
    sub_1D96DA720();
  }

  v7 = sub_1D96DA400();

  return v7;
}

uint64_t static String.localized(key:table:comment:)()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1D96DA400();

  return v1;
}

uint64_t sub_1D96C97EC()
{
  v0 = sub_1D96DA500();
  __swift_allocate_value_buffer(v0, qword_1ECB3F2D0);
  v1 = __swift_project_value_buffer(v0, qword_1ECB3F2D0);
  return sub_1D96C9838(v1);
}

uint64_t sub_1D96C9838@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2E8, &qword_1D96DD260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2F0, &qword_1D96DD268);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2F8, qword_1D96DD270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_1D96DA3E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D96DA510();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_1D96DA560();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  sub_1D96DA3C0();
  sub_1D96DA390();
  sub_1D96DA3A0();
  sub_1D96DA360();
  sub_1D96DA380();
  sub_1D96DA3B0();
  sub_1D96DA550();
  v20(v8, 0, 1, v19);
  sub_1D96DA3D0();
  sub_1D96DA370();
  v21 = sub_1D96DA500();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v4, 1, v21) == 1)
  {
    sub_1D96DA4E0();
    (*(v14 + 8))(v17, v13);
    result = v23(v4, 1, v21);
    if (result != 1)
    {
      return sub_1D96C9E80(v4);
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    return (*(v22 + 32))(v26, v4, v21);
  }

  return result;
}

uint64_t static Date.idealizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA500();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F2D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Date.idealizedDate.setter(uint64_t a1)
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA500();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F2D0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Date.idealizedDate.modify())()
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v0 = sub_1D96DA500();
  __swift_project_value_buffer(v0, qword_1ECB3F2D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D96C9E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2E8, &qword_1D96DD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PosterDataLoader.from(look:)(void *a1)
{
  v2 = *(v1 + 80);
  v3 = [a1 identifier];
  v4 = sub_1D96DA6C0();
  v6 = v5;

  return (*(*(v1 + 88) + 32))(v4, v6, v2);
}

uint64_t static PosterDataLoader.from(renderer:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = *(v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = (&v56 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  v17 = *(v2 + 88);
  v18 = type metadata accessor for PosterDataLoadResult();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v26 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();
  static PosterDataLoader.posterDataResult(from:)(v25);
  swift_unknownObjectRelease();
  v61 = v25;
  v62 = v19;
  (*(v19 + 16))(v23, v25, v18);
  v63 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *(v5 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v60 = *(v5 + 32);
    v28(v16, v23, v4);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D96DA5D0();
    __swift_project_value_buffer(v29, qword_1EDB969B8);
    v30 = *(v5 + 16);
    v31 = v57;
    v30(v57, v16, v4);
    v32 = sub_1D96DA5B0();
    v33 = sub_1D96DA870();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v58 = v16;
      v35 = v34;
      v56 = swift_slowAlloc();
      v65 = v56;
      *v35 = 136315138;
      v30(v59, v31, v4);
      v36 = sub_1D96DA6E0();
      v38 = v37;
      (*(v5 + 8))(v31, v4);
      v39 = sub_1D96BB28C(v36, v38, &v65);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1D96B3000, v32, v33, "renderer posterData — fallbacking to: %s", v35, 0xCu);
      v40 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x1DA736010](v40, -1, -1);
      v41 = v35;
      v16 = v58;
      MEMORY[0x1DA736010](v41, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v31, v4);
    }

    (*(v62 + 8))(v61, v63);
    return v60(v64, v16, v4);
  }

  else
  {
    v42 = v60;
    v28(v60, v23, v4);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v43 = sub_1D96DA5D0();
    __swift_project_value_buffer(v43, qword_1EDB969B8);
    v44 = *(v5 + 16);
    v45 = v58;
    v44(v58, v42, v4);
    v46 = sub_1D96DA5B0();
    v47 = sub_1D96DA870();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v57 = (v5 + 32);
      v49 = v48;
      v56 = swift_slowAlloc();
      v65 = v56;
      *v49 = 136315138;
      v44(v59, v45, v4);
      v50 = sub_1D96DA6E0();
      v52 = v51;
      (*(v5 + 8))(v45, v4);
      v53 = sub_1D96BB28C(v50, v52, &v65);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1D96B3000, v46, v47, "renderer posterData — successfully loaded: %s", v49, 0xCu);
      v54 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x1DA736010](v54, -1, -1);
      MEMORY[0x1DA736010](v49, -1, -1);

      (*(v62 + 8))(v61, v63);
      v42 = v60;
    }

    else
    {

      (*(v5 + 8))(v45, v4);
      (*(v62 + 8))(v61, v63);
    }

    return (v28)(v64, v42, v4);
  }
}

uint64_t static PosterDataLoader.posterDataResult(from:)@<X0>(_BYTE *a1@<X8>)
{
  v42 = a1;
  v2 = *(v1 + 80);
  v3 = sub_1D96DA920();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36[-v7];
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36[-v16];
  swift_getObjectType();
  v18 = *(v1 + 88);
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  PRPosterContents.posterData<A>()(v2, v8);
  if ((*(v9 + 48))(v8, 1, v2) == 1)
  {
    (*(v4 + 8))(v8, v3);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D96DA5D0();
    __swift_project_value_buffer(v21, qword_1EDB969B8);
    v22 = sub_1D96DA5B0();
    v23 = sub_1D96DA870();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D96B3000, v22, v23, "posterDataResult(from posterContents — using fallback", v24, 2u);
      MEMORY[0x1DA736010](v24, -1, -1);
    }

    (*(v18 + 56))(v2, v18);
  }

  else
  {
    v39 = *(v9 + 32);
    v40 = v9 + 32;
    v39(v17, v8, v2);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D96DA5D0();
    __swift_project_value_buffer(v25, qword_1EDB969B8);
    v26 = *(v9 + 16);
    v26(v15, v17, v2);
    v27 = sub_1D96DA5B0();
    v28 = sub_1D96DA870();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v29 = 136315138;
      v37 = v28;
      v26(v41, v15, v2);
      v30 = sub_1D96DA6E0();
      v32 = v31;
      (*(v9 + 8))(v15, v2);
      v33 = sub_1D96BB28C(v30, v32, &v43);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D96B3000, v27, v37, "posterDataResult(from posterContents — successfully loaded: %s", v29, 0xCu);
      v34 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1DA736010](v34, -1, -1);
      MEMORY[0x1DA736010](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v2);
    }

    v39(v42, v17, v2);
  }

  type metadata accessor for PosterDataLoadResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D96CAAB4@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a3;
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v66 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - v17;
  v19 = *(v3 + 88);
  v20 = type metadata accessor for PosterDataLoadResult();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v63 - v26;
  v28 = [a1 *v70];
  static PosterDataLoader.posterDataResult(from:)(v27);
  swift_unknownObjectRelease();
  v68 = v27;
  v69 = v21;
  (*(v21 + 16))(v25, v27, v20);
  v70 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v6;
  v33 = *(v6 + 32);
  v31 = v6 + 32;
  v32 = v33;
  if (EnumCaseMultiPayload == 1)
  {
    v66 = v32;
    (v32)(v18, v25, v5);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D96DA5D0();
    __swift_project_value_buffer(v34, qword_1EDB969B8);
    v35 = v30;
    v36 = *(v30 + 16);
    v37 = v65;
    v36(v65, v18, v5);
    v38 = sub_1D96DA5B0();
    v39 = sub_1D96DA870();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = v31;
      v41 = v40;
      v63 = swift_slowAlloc();
      v72 = v63;
      *v41 = 136315138;
      v36(v67, v37, v5);
      v42 = sub_1D96DA6E0();
      v44 = v43;
      (*(v35 + 8))(v37, v5);
      v45 = sub_1D96BB28C(v42, v44, &v72);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1D96B3000, v38, v39, "renderer posterData — fallbacking to: %s", v41, 0xCu);
      v46 = v63;
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x1DA736010](v46, -1, -1);
      MEMORY[0x1DA736010](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v5);
    }

    (*(v69 + 8))(v68, v70);
    return v66(v71, v18, v5);
  }

  else
  {
    (v32)(v12, v25, v5);
    v47 = v12;
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v48 = sub_1D96DA5D0();
    __swift_project_value_buffer(v48, qword_1EDB969B8);
    v49 = v30;
    v50 = *(v30 + 16);
    v51 = v66;
    v50(v66, v47, v5);
    v52 = sub_1D96DA5B0();
    v53 = sub_1D96DA870();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v64 = v31;
      v55 = v54;
      v63 = swift_slowAlloc();
      v72 = v63;
      *v55 = 136315138;
      v65 = v47;
      v50(v67, v51, v5);
      v56 = sub_1D96DA6E0();
      v58 = v57;
      (*(v49 + 8))(v51, v5);
      v59 = sub_1D96BB28C(v56, v58, &v72);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1D96B3000, v52, v53, "renderer posterData — successfully loaded: %s", v55, 0xCu);
      v60 = v63;
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x1DA736010](v60, -1, -1);
      MEMORY[0x1DA736010](v55, -1, -1);

      (*(v69 + 8))(v68, v70);
      v61 = v65;
    }

    else
    {

      (*(v49 + 8))(v51, v5);
      (*(v69 + 8))(v68, v70);
      v61 = v47;
    }

    return (v32)(v71, v61, v5);
  }
}

uint64_t static PosterDataLoader.from(editor:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v140 = a2;
  v145[1] = *MEMORY[0x1E69E9840];
  v6 = v3[10];
  v5 = v3[11];
  v7 = type metadata accessor for PosterDataLoadResult();
  v139 = *(v7 - 8);
  v8 = *(v139 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v132 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v127 - v11;
  v12 = sub_1D96DA920();
  v130 = *(v12 - 8);
  v13 = *(v130 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v127 - v15;
  v17 = *(v6 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v134 = &v127 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v128 = &v127 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v133 = &v127 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v135 = &v127 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v131 = &v127 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v127 - v32;
  if (qword_1EDB958B0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D96DA5D0();
  v34 = __swift_project_value_buffer(v33, qword_1EDB969B8);
  v35 = a1;
  v143 = v34;
  v36 = sub_1D96DA5B0();
  v37 = sub_1D96DA870();

  v38 = os_log_type_enabled(v36, v37);
  v141 = v6;
  v136 = v7;
  v137 = v3;
  v129 = v21;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v127 = v12;
    v40 = v39;
    v41 = swift_slowAlloc();
    v145[0] = v41;
    *v40 = 136315138;
    v42 = [v35 currentLook];
    v43 = [v42 identifier];

    v44 = sub_1D96DA6C0();
    v45 = v17;
    v47 = v46;

    v48 = sub_1D96BB28C(v44, v47, v145);
    v17 = v45;

    *(v40 + 4) = v48;
    _os_log_impl(&dword_1D96B3000, v36, v37, "loading poster data, from editor with lookIdentifier: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x1DA736010](v41, -1, -1);
    v49 = v40;
    v12 = v127;
    v6 = v141;
    MEMORY[0x1DA736010](v49, -1, -1);
  }

  v50 = [v35 currentLook];
  static PosterDataLoader.from(look:)(v50);

  if ((*(v17 + 6))(v16, 1, v6) != 1)
  {
    v73 = v142;
    v139 = *(v17 + 4);
    (v139)(v142, v16, v6);
    v74 = v17;
    v75 = *(v17 + 2);
    v76 = v131;
    v75(v131, v73, v6);
    v77 = sub_1D96DA5B0();
    v78 = sub_1D96DA870();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v145[0] = v143;
      *v79 = 136315138;
      v75(v135, v76, v6);
      v80 = sub_1D96DA6E0();
      v82 = v81;
      v74[1](v76, v6);
      v83 = sub_1D96BB28C(v80, v82, v145);

      *(v79 + 4) = v83;
      _os_log_impl(&dword_1D96B3000, v77, v78, "currentLookKaleidoscopePosterData: %s", v79, 0xCu);
      v84 = v143;
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
      MEMORY[0x1DA736010](v84, -1, -1);
      MEMORY[0x1DA736010](v79, -1, -1);
    }

    else
    {

      (*(v17 + 1))(v76, v6);
    }

    result = (v139)(v140, v142, v6);
    goto LABEL_29;
  }

  v142 = v17;
  (*(v130 + 8))(v16, v12);
  v51 = v35;
  v52 = sub_1D96DA5B0();
  v53 = sub_1D96DA870();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v145[0] = v55;
    *v54 = 136315138;
    v56 = [objc_msgSend(v51 environment)];
    swift_unknownObjectRelease();
    v144 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB3F300, &qword_1D96DD288);
    v57 = sub_1D96DA6E0();
    v59 = sub_1D96BB28C(v57, v58, v145);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_1D96B3000, v52, v53, "loading poster data from %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x1DA736010](v55, -1, -1);
    MEMORY[0x1DA736010](v54, -1, -1);
  }

  v60 = [objc_msgSend(v51 environment)];
  swift_unknownObjectRelease();
  v145[0] = 0;
  v61 = [v60 loadUserInfoWithError_];
  swift_unknownObjectRelease();
  v62 = v145[0];
  if (v61)
  {
    sub_1D96DA630();
    v63 = v62;

    v64 = sub_1D96DA5B0();
    v65 = sub_1D96DA870();

    if (!os_log_type_enabled(v64, v65))
    {

      goto LABEL_19;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v145[0] = v67;
    *v66 = 136315138;
    v68 = sub_1D96DA640();
    v70 = v69;

    v71 = sub_1D96BB28C(v68, v70, v145);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_1D96B3000, v64, v65, "loaded userInfo: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x1DA736010](v67, -1, -1);
    v72 = v66;
    goto LABEL_17;
  }

  v86 = v145[0];
  v87 = sub_1D96DA410();

  swift_willThrow();
  v64 = sub_1D96DA5B0();
  v88 = sub_1D96DA870();
  if (os_log_type_enabled(v64, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_1D96B3000, v64, v88, "unable to load userInfo", v89, 2u);
    v72 = v89;
LABEL_17:
    MEMORY[0x1DA736010](v72, -1, -1);
  }

LABEL_19:

  v90 = [objc_msgSend(v51 environment)];
  swift_unknownObjectRelease();
  v91 = v138;
  static PosterDataLoader.posterDataResult(from:)(v138);
  swift_unknownObjectRelease();
  v92 = v132;
  v93 = v136;
  (*(v139 + 16))(v132, v91, v136);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v95 = *(v142 + 4);
  v96 = (v142 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v97 = v133;
    v98 = v141;
    (v95)(v133, v92, v141);
    v99 = *v96;
    v100 = v128;
    (*v96)(v128, v97, v98);
    v101 = sub_1D96DA5B0();
    v102 = sub_1D96DA870();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v143 = v95;
      v104 = v103;
      v137 = swift_slowAlloc();
      v145[0] = v137;
      *v104 = 136315138;
      v99(v135, v100, v98);
      v105 = sub_1D96DA6E0();
      v107 = v106;
      (*(v142 + 1))(v100, v98);
      v108 = sub_1D96BB28C(v105, v107, v145);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_1D96B3000, v101, v102, "editor posterData — fallbacking to: %s", v104, 0xCu);
      v109 = v137;
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
      MEMORY[0x1DA736010](v109, -1, -1);
      v110 = v104;
      v95 = v143;
      MEMORY[0x1DA736010](v110, -1, -1);
    }

    else
    {

      (*(v142 + 1))(v100, v98);
    }

    (*(v139 + 8))(v138, v93);
    v124 = v140;
    v125 = v133;
  }

  else
  {
    v111 = v134;
    v98 = v141;
    (v95)(v134, v92, v141);
    v112 = *v96;
    v113 = v129;
    (*v96)(v129, v111, v98);
    v114 = sub_1D96DA5B0();
    v115 = sub_1D96DA870();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v143 = v95;
      v117 = v116;
      v137 = swift_slowAlloc();
      v145[0] = v137;
      *v117 = 136315138;
      v112(v135, v113, v98);
      v118 = sub_1D96DA6E0();
      v120 = v119;
      (*(v142 + 1))(v113, v98);
      v121 = sub_1D96BB28C(v118, v120, v145);

      *(v117 + 4) = v121;
      _os_log_impl(&dword_1D96B3000, v114, v115, "editor posterData — successfully loaded: %s", v117, 0xCu);
      v122 = v137;
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
      MEMORY[0x1DA736010](v122, -1, -1);
      v123 = v117;
      v95 = v143;
      MEMORY[0x1DA736010](v123, -1, -1);
    }

    else
    {

      (*(v142 + 1))(v113, v98);
    }

    (*(v139 + 8))(v138, v93);
    v124 = v140;
    v125 = v134;
  }

  result = (v95)(v124, v125, v98);
LABEL_29:
  v126 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static PosterDataLoader.comparePosterData(from:to:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v6 = *(v3 + 80);
  v7 = sub_1D96DA920();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  [objc_msgSend(a1 environment)];
  v20 = v19;
  swift_unknownObjectRelease();
  swift_getObjectType();
  v54 = v3;
  v21 = *(v3 + 88);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  PRPosterContents.posterData<A>()(v6, v19);
  swift_unknownObjectRelease();
  if (qword_1EDB958B0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D96DA5D0();
  __swift_project_value_buffer(v24, qword_1EDB969B8);
  v25 = v8[2];
  v25(v55, v19, v7);
  v25(v15, a2, v7);
  v26 = sub_1D96DA5B0();
  v27 = sub_1D96DA870();
  v28 = os_log_type_enabled(v26, v27);
  v52 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v51 = a2;
    v30 = v29;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v30 = 136315394;
    v48 = v26;
    v31 = v55;
    v25(v12, v55, v7);
    v45 = sub_1D96DA6E0();
    v50 = v19;
    v33 = v32;
    v34 = v8[1];
    v47 = v27;
    v34(v31, v7);
    v35 = sub_1D96BB28C(v45, v33, &v56);

    v46 = v30;
    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = v52;
    v25(v12, v52, v7);
    v37 = sub_1D96DA6E0();
    v39 = v38;
    v34(v36, v7);
    v40 = sub_1D96BB28C(v37, v39, &v56);
    v20 = v50;

    v41 = v46;
    *(v46 + 14) = v40;
    v42 = v48;
    _os_log_impl(&dword_1D96B3000, v48, v47, "updateResult from renderer data: %s compared to %s", v41, 0x16u);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1DA736010](v43, -1, -1);
    a2 = v51;
    MEMORY[0x1DA736010](v41, -1, -1);
  }

  else
  {

    v34 = v8[1];
    v34(v52, v7);
    v34(v55, v7);
  }

  static PosterDataLoader.compare(newData:with:)(v20, a2, v53);
  return (v34)(v20, v7);
}

{
  v100 = a2;
  v97 = a3;
  v5 = *(v3 + 80);
  v6 = sub_1D96DA920();
  v96 = *(v6 - 8);
  v7 = *(v96 + 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v98 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v95 = v85 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v85 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v85 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v94 = v85 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v85 - v21;
  v23 = *(v5 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v92 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v93 = (v85 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v85 - v29;
  v31 = a1;
  v32 = [a1 currentLook];
  static PosterDataLoader.from(look:)(v32);

  v33 = (*(v23 + 48))(v22, 1, v5);
  v99 = v3;
  if (v33 == 1)
  {
    v34 = v96;
    v93 = *(v96 + 1);
    v94 = v96 + 8;
    v93(v22, v6);
    [objc_msgSend(v31 environment)];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v35 = *(v3 + 88);
    v36 = *(v35 + 8);
    v37 = *(v35 + 16);
    PRPosterContents.posterData<A>()(v5, v14);
    swift_unknownObjectRelease();
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D96DA5D0();
    __swift_project_value_buffer(v38, qword_1EDB969B8);
    v39 = *(v34 + 2);
    v40 = v95;
    v39(v95, v14, v6);
    v41 = v98;
    v39(v98, v100, v6);
    v42 = sub_1D96DA5B0();
    v43 = sub_1D96DA870();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      LODWORD(v91) = v43;
      v45 = v44;
      v46 = swift_slowAlloc();
      v90 = v42;
      v92 = v46;
      v101 = v46;
      *v45 = 136315394;
      v96 = v14;
      v47 = v17;
      v39(v17, v40, v6);
      v48 = sub_1D96DA6E0();
      v49 = v40;
      v51 = v50;
      v52 = v93;
      v93(v49, v6);
      v53 = sub_1D96BB28C(v48, v51, &v101);

      *(v45 + 4) = v53;
      *(v45 + 12) = 2080;
      v39(v47, v41, v6);
      v14 = v96;
      v54 = sub_1D96DA6E0();
      v56 = v55;
      v52(v41, v6);
      v57 = sub_1D96BB28C(v54, v56, &v101);

      *(v45 + 14) = v57;
      v58 = v90;
      _os_log_impl(&dword_1D96B3000, v90, v91, "updateResult from editor source contents: %s compared to %s", v45, 0x16u);
      v59 = v92;
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v59, -1, -1);
      MEMORY[0x1DA736010](v45, -1, -1);
    }

    else
    {

      v52 = v93;
      v93(v41, v6);
      v52(v40, v6);
    }

    static PosterDataLoader.compare(newData:with:)(v14, v100, v97);
    return (v52)(v14, v6);
  }

  else
  {
    v60 = v96;
    v91 = v17;
    v98 = v6;
    (*(v23 + 32))(v30, v22, v5);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v61 = sub_1D96DA5D0();
    __swift_project_value_buffer(v61, qword_1EDB969B8);
    v62 = v93;
    v95 = *(v23 + 16);
    (v95)(v93, v30, v5);
    v63 = v60;
    v64 = *(v60 + 2);
    v65 = v94;
    v66 = v98;
    v88 = v64;
    v64(v94, v100, v98);
    v67 = sub_1D96DA5B0();
    v89 = sub_1D96DA870();
    v90 = v67;
    if (os_log_type_enabled(v67, v89))
    {
      v68 = v65;
      v69 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v101 = v86;
      *v69 = 136315394;
      (v95)(v92, v62, v5);
      v70 = sub_1D96DA6E0();
      v92 = v30;
      v71 = v70;
      v87 = v23 + 16;
      v73 = v72;
      v74 = *(v23 + 8);
      v85[1] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74(v62, v5);
      v75 = sub_1D96BB28C(v71, v73, &v101);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      v76 = v91;
      v88(v91, v68, v98);
      v77 = sub_1D96DA6E0();
      v79 = v78;
      v96 = *(v63 + 1);
      (v96)(v68, v98);
      v80 = v74;
      v81 = sub_1D96BB28C(v77, v79, &v101);
      v30 = v92;

      *(v69 + 14) = v81;
      v82 = v90;
      _os_log_impl(&dword_1D96B3000, v90, v89, "updateResult from editor look identifier: %s compared to %s", v69, 0x16u);
      v83 = v86;
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v83, -1, -1);
      v66 = v98;
      MEMORY[0x1DA736010](v69, -1, -1);
    }

    else
    {

      v96 = *(v63 + 1);
      (v96)(v65, v66);
      v80 = *(v23 + 8);
      v80(v62, v5);
      v76 = v91;
    }

    (v95)(v76, v30, v5);
    (*(v23 + 56))(v76, 0, 1, v5);
    static PosterDataLoader.compare(newData:with:)(v76, v100, v97);
    (v96)(v76, v66);
    return (v80)(v30, v5);
  }
}

uint64_t static PosterDataLoader.compare(newData:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v67 = a3;
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](a1);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v62 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v62 - v15;
  v16 = sub_1D96DA920();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(*(TupleTypeMetadata2 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v21 = &v62 - v20;
  v22 = *(v19 + 56);
  v23 = *(v16 - 8);
  v24 = *(v23 + 16);
  v24(&v62 - v20, a1, v16);
  v25 = a2;
  v26 = v6;
  v24(&v21[v22], v25, v16);
  v27 = v7;
  v28 = v7[6];
  if (v28(v21, 1, v6) == 1)
  {
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D96DA5D0();
    __swift_project_value_buffer(v29, qword_1EDB969B8);
    v30 = sub_1D96DA5B0();
    v31 = sub_1D96DA870();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D96B3000, v30, v31, "compare — newData nil", v32, 2u);
      MEMORY[0x1DA736010](v32, -1, -1);
    }

    (*(*(v66 + 88) + 56))(v26, *(v66 + 88));
    type metadata accessor for PosterDataComparisonResult();
    swift_storeEnumTagMultiPayload();
    return (*(v23 + 8))(&v21[v22], v16);
  }

  else if (v28(&v21[v22], 1, v6) == 1)
  {
    v34 = v7[4];
    v35 = v62;
    v34(v62, v21, v6);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D96DA5D0();
    __swift_project_value_buffer(v36, qword_1EDB969B8);
    v37 = sub_1D96DA5B0();
    v38 = sub_1D96DA870();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D96B3000, v37, v38, "compare — new data not nil; old data nil", v39, 2u);
      MEMORY[0x1DA736010](v39, -1, -1);
    }

    v34(v67, v35, v26);
    v40 = *(v66 + 88);
    type metadata accessor for PosterDataComparisonResult();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v41 = v22;
    v42 = v7[2];
    v43 = v64;
    v42(v64, v21, v6);
    v44 = v63;
    v42(v63, &v21[v41], v6);
    v45 = *(v66 + 88);
    v46 = *(v45 + 24);
    if (sub_1D96DA680())
    {
      if (qword_1EDB958B0 != -1)
      {
        swift_once();
      }

      v47 = sub_1D96DA5D0();
      __swift_project_value_buffer(v47, qword_1EDB969B8);
      v48 = sub_1D96DA5B0();
      v49 = sub_1D96DA870();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1D96B3000, v48, v49, "compare — new and old data are equal", v50, 2u);
        MEMORY[0x1DA736010](v50, -1, -1);
      }

      v51 = v27[1];
      v51(v44, v26);
      v51(v43, v26);
      type metadata accessor for PosterDataComparisonResult();
      swift_storeEnumTagMultiPayload();
      v51(&v21[v41], v26);
      return (v51)(v21, v26);
    }

    else
    {
      v52 = v44;
      v53 = v7[1];
      v53(v52, v6);
      v53(v43, v6);
      v54 = v7[4];
      v54(v65, v21, v6);
      if (qword_1EDB958B0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D96DA5D0();
      __swift_project_value_buffer(v55, qword_1EDB969B8);
      v56 = sub_1D96DA5B0();
      v57 = sub_1D96DA870();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v66 = v45;
        v59 = v41;
        v60 = v58;
        *v58 = 0;
        _os_log_impl(&dword_1D96B3000, v56, v57, "compare — new data different than old data", v58, 2u);
        v61 = v60;
        v41 = v59;
        MEMORY[0x1DA736010](v61, -1, -1);
      }

      v54(v67, v65, v26);
      type metadata accessor for PosterDataComparisonResult();
      swift_storeEnumTagMultiPayload();
      return (v53)(&v21[v41], v26);
    }
  }
}

uint64_t PosterData.init(lookIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v34 = a5;
  v33 = sub_1D96DA920();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v32 = a1;
  v21 = sub_1D96CDA70(a1, a2);
  (*(a4 + 40))(v21);
  v22 = *(v17 + 48);
  if (v22(v16, 1, a3) != 1)
  {

LABEL_6:
    v28 = v34;
    v29 = *(v17 + 32);
    v29(v20, v16, a3);
    v29(v28, v20, a3);
    v27 = 0;
    return (*(v17 + 56))(v28, v27, 1, a3);
  }

  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v25 = v16;
  v26 = v33;
  v31 = v23;
  v24(v25, v33);
  (*(a4 + 48))(v32, a2, a3, a4);
  if (v22(v13, 1, a3) != 1)
  {
    v16 = v13;
    goto LABEL_6;
  }

  v24(v13, v26);
  v27 = 1;
  v28 = v34;
  return (*(v17 + 56))(v28, v27, 1, a3);
}

uint64_t PosterData.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D96DA920();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = sub_1D96DA2B0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1D96DA2A0();
  v17 = *(a4 + 8);
  sub_1D96DA290();
  sub_1D96CDF80(a1, a2);

  v18 = *(a3 - 8);
  v19 = *(v18 + 56);
  v19(v13, 0, 1, a3);
  (*(v18 + 32))(a5, v13, a3);
  return (v19)(a5, 0, 1, a3);
}

uint64_t PosterData.init(string:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  v4 = *(*(a1 - 8) + 56);

  return v4(a2, 1, 1, a1);
}

id PosterData.editingLook.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))();
  (*(a2 + 72))(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x1E69C5288]);
  v5 = sub_1D96DA690();

  v6 = sub_1D96DA690();

  v7 = [v4 initWithIdentifier:v5 displayName:v6];

  return v7;
}

uint64_t sub_1D96CDA70(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F388, &qword_1D96DD370);
  if (swift_dynamicCast())
  {
    sub_1D96BE49C(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1D96DA3F0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D96CE664(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D96DA9D0();
  }

  sub_1D96CE6CC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D96CEE70(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1D96CE794(sub_1D96CEF10);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D96DA470();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D96CECEC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D96DA740();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D96DA770();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D96DA9D0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D96CECEC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D96DA750();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1D96DA480();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1D96DA480();
    sub_1D96CEFCC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D96CEFCC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D96CEF78(*&__src[0], *(&__src[0] + 1));

  sub_1D96CDF80(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1D96CDF80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D96CE060(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1D96CE16C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
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
LABEL_37:
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
            goto LABEL_37;
          }
        }

LABEL_34:
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
      goto LABEL_37;
    }

    goto LABEL_34;
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

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D96CE330(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D96CE394(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1D96CE4A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
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
        goto LABEL_37;
      }

      goto LABEL_34;
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
LABEL_37:
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
            goto LABEL_37;
          }
        }

LABEL_34:
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
      goto LABEL_37;
    }

    goto LABEL_34;
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

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D96CE664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F390, &qword_1D96DD378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D96CE6CC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D96CEDB8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1D96DA350();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1D96DA300();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D96DA460();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1D96CE794(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D96CDF80(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D96CDF80(v6, v5);
    *v3 = xmmword_1D96DD2C0;
    sub_1D96CDF80(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D96DA310() && __OFSUB__(v6, sub_1D96DA340()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1D96DA350();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1D96DA2F0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1D96CEC38(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1D96CDF80(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1D96DD2C0;
    sub_1D96CDF80(0, 0xC000000000000000);
    sub_1D96DA450();
    result = sub_1D96CEC38(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1D96CEB38@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D96CEDB8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D96CEFE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D96CF05C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D96CEBCC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D96CEC38(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D96DA310();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D96DA340();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D96DA330();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1D96CECEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D96DA780();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA735470](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D96CED68@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1D96DA9B0();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D96CEDB8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D96CEE70(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1D96DA350();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1D96DA320();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D96DA460();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D96CEF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D96CEBCC(sub_1D96CF0E0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D96CEF78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D96CEFCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D96CDF80(a1, a2);
  }

  return a1;
}

uint64_t sub_1D96CEFE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D96DA350();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D96DA300();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D96DA460();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D96CF05C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D96DA350();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D96DA300();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PRPosterContents.posterData<A>()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - v14;
  v50[0] = 0;
  v16 = [v13 loadUserInfoWithError_];
  v17 = v50[0];
  if (v16)
  {
    v18 = v16;
    v19 = sub_1D96DA630();
    v20 = v17;

    v21 = sub_1D96DA2B0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1D96DA2A0();
    v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F398, &qword_1D96DD380);
    v50[0] = v19;
    sub_1D96CF850(a1, v50);
    v49 = a2;

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D96DA5D0();
    __swift_project_value_buffer(v36, qword_1EDB969B8);
    v37 = *(v5 + 16);
    v37(v12, v15, a1);
    v38 = sub_1D96DA5B0();
    v39 = sub_1D96DA890();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      *v40 = 136315138;
      v37(v9, v12, a1);
      v41 = sub_1D96DA6E0();
      v43 = v42;
      (*(v5 + 8))(v12, a1);
      v44 = sub_1D96BB28C(v41, v43, v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1D96B3000, v38, v39, "Decoded object from userInfo: %s", v40, 0xCu);
      v45 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1DA736010](v45, -1, -1);
      MEMORY[0x1DA736010](v40, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v12, a1);
    }

    a2 = v49;
    (*(v5 + 32))(v49, v15, a1);
    v35 = 0;
  }

  else
  {
    v24 = v50[0];
    v25 = sub_1D96DA410();

    swift_willThrow();
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D96DA5D0();
    __swift_project_value_buffer(v26, qword_1EDB969B8);
    v27 = v25;
    v28 = sub_1D96DA5B0();
    v29 = sub_1D96DA880();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = sub_1D96DAB20();
      v34 = sub_1D96BB28C(v32, v33, v50);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1D96B3000, v28, v29, "Could not load userInfo from poster contents: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x1DA736010](v31, -1, -1);
      MEMORY[0x1DA736010](v30, -1, -1);
    }

    else
    {
    }

    v35 = 1;
  }

  result = (*(v5 + 56))(a2, v35, 1, a1);
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D96CF850(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12[0] = 0;
  v4 = [v3 dataWithJSONObject:sub_1D96DAAD0() options:0 error:v12];
  swift_unknownObjectRelease();
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1D96DA4A0();
    v8 = v7;

    sub_1D96DA290();
    result = sub_1D96CDF80(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_1D96DA410();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::OpaquePointer_optional __swiftcall Encodable.userInfo()()
{
  v0 = sub_1D96DA2E0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D96DA2D0();
  sub_1D96CFA90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F398, &qword_1D96DD380);
  if (swift_dynamicCast())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D96CFA90()
{
  v11[1] = *MEMORY[0x1E69E9840];
  result = sub_1D96DA2C0();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = objc_opt_self();
    v6 = sub_1D96DA490();
    v11[0] = 0;
    v7 = [v5 JSONObjectWithData:v6 options:4 error:v11];

    v8 = v11[0];
    if (v7)
    {
      sub_1D96DA930();
      sub_1D96CDF80(v3, v4);
      result = swift_unknownObjectRelease();
    }

    else
    {
      v9 = v8;
      sub_1D96DA410();

      swift_willThrow();
      result = sub_1D96CDF80(v3, v4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FloatingPoint.reverse.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v6 + 16) + 8);
  v8 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  v11 = *(v7 + 8);
  sub_1D96DAA50();
  return (*(v2 + 8))(v5, a1);
}

uint64_t FloatingPoint.smoothstep.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = *(*(*(a2 + 16) + 8) + 16);
  v31 = *(*(a2 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v31 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v31 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v33 = &v31 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v34 = &v31 - v24;
  v32 = v3;
  sub_1D96DA850();
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  v25 = v31;
  sub_1D96DA850();
  v26 = *(v11 + 8);
  v26(v15, a1);
  v27 = *(v25 + 8);
  v28 = v33;
  sub_1D96DAA50();
  v26(v18, a1);
  v26(v21, a1);
  v29 = v34;
  sub_1D96DA850();
  v26(v28, a1);
  return (v26)(v29, a1);
}

uint64_t FloatingPoint.toRadians.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v21 = *(*(a2 + 16) + 8);
  v4 = *(v21 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v20 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - v16;
  sub_1D96DA670();
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DA660();
  v18 = *(v8 + 8);
  v18(v12, a1);
  v18(v15, a1);
  sub_1D96DA850();
  return (v18)(v17, a1);
}

uint64_t FloatingPoint.toDegrees.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v4 = *(*(*(a2 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DA670();
  sub_1D96DA660();
  v18 = *(v8 + 8);
  v18(v12, a1);
  v18(v15, a1);
  sub_1D96DA850();
  return (v18)(v17, a1);
}

Swift::Double __swiftcall Double.truncate(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return floor(v3 * v2) / v3;
}

Swift::Float __swiftcall Float.truncate(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10f(to);
  return floorf(v3 * v2) / v3;
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.renderingType.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1D96D059C(uint64_t a1, uint64_t *a2)
{
  sub_1D96BE658(a1, v5, &qword_1ECB3EC68, &unk_1D96DC150);
  v3 = *a2;
  swift_beginAccess();
  sub_1D96D4F70(v5, v3 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
  return swift_endAccess();
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3A0, &qword_1D96DD3D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = qword_1EDB960B0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1EDB960C0);

  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1D96BB28C(v7, v6, &v23);
    _os_log_impl(&dword_1D96B3000, v10, v11, "ContinuousRenderingToken “%{public}s” deinit", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1DA736010](v13, -1, -1);
    MEMORY[0x1DA736010](v12, -1, -1);
  }

  if ((*(v1 + 24) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
  }

  else
  {
    v15 = Strong;
    v16 = sub_1D96DA830();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_1D96DA810();

    v17 = sub_1D96DA800();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = v7;
    v18[6] = v6;
    sub_1D96D09C8(0, 0, v5, &unk_1D96DD3E8, v18);
  }

  swift_weakDestroy();
  v20 = *(v1 + 40);

  return v1;
}

uint64_t sub_1D96D08B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D96DA810();
  v6[5] = sub_1D96DA800();
  v8 = sub_1D96DA7F0();

  return MEMORY[0x1EEE6DFA0](sub_1D96D0950, v8, v7);
}

uint64_t sub_1D96D0950()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D96D4B68(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D96D09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3A0, &qword_1D96DD3D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D96BE658(a3, v27 - v11, &qword_1ECB3F3A0, &qword_1D96DD3D8);
  v13 = sub_1D96DA830();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D96BE544(v12, &qword_1ECB3F3A0, &qword_1D96DD3D8);
  }

  else
  {
    sub_1D96DA820();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D96DA7F0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D96DA6F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D96BE544(a3, &qword_1ECB3F3A0, &qword_1D96DD3D8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D96BE544(a3, &qword_1ECB3F3A0, &qword_1D96DD3D8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.__deallocating_deinit()
{
  WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1D96D0CFC()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB960C0);
  __swift_project_value_buffer(v0, qword_1EDB960C0);
  return sub_1D96DA5C0();
}

uint64_t sub_1D96D0D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D96D0E40;

  return sub_1D96D08B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D96D0E40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.__allocating_init(identifier:rendering:environment:lookIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  WallpaperMetalCoordination.RenderingCoordinator.init(identifier:rendering:environment:lookIdentifier:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t *WallpaperMetalCoordination.RenderingCoordinator.init(identifier:rendering:environment:lookIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v93 = a7;
  v94 = a5;
  v91 = a6;
  v122 = a3;
  v92 = *v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v90 - v15;
  *(v7 + 2) = 0u;
  v17 = (v7 + 4);
  v9[8] = 0;
  *(v9 + 3) = 0u;
  v9[16] = 0;
  v9[17] = 0;
  sub_1D96D4F20(&v113);
  v18 = v120;
  *(v9 + 15) = v119;
  *(v9 + 16) = v18;
  *(v9 + 272) = v121;
  v19 = v116;
  *(v9 + 11) = v115;
  *(v9 + 12) = v19;
  v20 = v118;
  *(v9 + 13) = v117;
  *(v9 + 14) = v20;
  v21 = v114;
  *(v9 + 9) = v113;
  *(v9 + 10) = v21;
  v9[37] = 0;
  v9[38] = 0;
  v9[39] = MEMORY[0x1E69E7CD0];
  if (qword_1EDB95EA8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB969E8;
  if (qword_1EDB969E8)
  {
    v90[2] = v8;
    v9[9] = a1;
    v9[10] = a2;
    v23 = v122;
    v9[2] = v122;
    v9[3] = a4;
    v24 = a4;
    v25 = *(v22 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device);
    v9[11] = v25;
    v9[12] = *(v22 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue);
    v26 = *(a4 + 8);
    v27 = v22;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v90[1] = v27;

    v28 = v26(v23, v24);
    v29 = (*(v24 + 16))(v23, v24);
    v30 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
    v31 = sub_1D96BEB0C(v25, v28, v29);
    v9[13] = v31;
    v32 = qword_1EDB960B0;
    v33 = v31;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_1D96DA5D0();
    v35 = __swift_project_value_buffer(v34, qword_1EDB960C0);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v16, v35, v34);
    (*(v36 + 56))(v16, 0, 1, v34);
    v37 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96D4F70(v16, &v33[v37], &unk_1ECB3F188, &qword_1D96DC850);
    swift_endAccess();

    *(v9[13] + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 0;
    v38 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v9[14] = v38;
    v39 = qword_1EDB95BE0;
    v40 = v38;
    if (v39 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
    v41 = sub_1D96DA620();
    v42 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
    [v40 setActions_];

    [v9[14] setPosition_];
    [v9[14] setAnchorPoint_];
    v43 = v9[14];
    v44 = sub_1D96DA690();
    [v43 setName_];

    (*(v24 + 32))(v106);
    if (LOBYTE(v106[0]) == 2)
    {
      v45 = 0;
      v46 = v93;
      v47 = v91;
    }

    else
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v45 setAnchorPoint_];
      v56 = [v9[14] actions];
      if (v56)
      {
        v57 = v56;
        sub_1D96DA630();

        v58 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
        v59 = sub_1D96DA620();
        v42 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
      }

      else
      {
        v58 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
        v59 = 0;
      }

      [v45 v42[83]];

      [v45 setHidden_];
      v60 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v60 v58[82]];
      v61 = [v9[14] actions];
      if (v61)
      {
        v62 = v61;
        sub_1D96DA630();

        v63 = sub_1D96DA620();
      }

      else
      {
        v63 = 0;
      }

      v46 = v93;
      v47 = v91;
      [v60 setActions_];

      [v45 setMask_];
    }

    v9[15] = v45;
    v9[35] = v47;
    v9[36] = v46;

    v64 = v94;
    if ([v94 isSnapshot])
    {

      swift_unknownObjectRelease();

      v65 = *(v9 + 16);
      v110 = *(v9 + 15);
      v111 = v65;
      v112 = *(v9 + 272);
      v66 = *(v9 + 12);
      v106[2] = *(v9 + 11);
      v107 = v66;
      v67 = *(v9 + 14);
      v108 = *(v9 + 13);
      v109 = v67;
      v68 = *(v9 + 10);
      v106[0] = *(v9 + 9);
      v106[1] = v68;
      v69 = v118;
      *(v9 + 13) = v117;
      *(v9 + 14) = v69;
      v70 = v120;
      *(v9 + 15) = v119;
      *(v9 + 16) = v70;
      *(v9 + 272) = v121;
      v71 = v116;
      *(v9 + 11) = v115;
      *(v9 + 12) = v71;
      v72 = v114;
      v73 = v113;
    }

    else
    {
      *&v106[0] = v47;
      *(&v106[0] + 1) = v46;
      memset(&v106[1], 0, 21);
      sub_1D96C7D94(v64, v106, v95);

      v103 = v95[6];
      v104 = v95[7];
      v105 = v96;
      v99 = v95[2];
      v100 = v95[3];
      v101 = v95[4];
      v102 = v95[5];
      v97 = v95[0];
      v98 = v95[1];
      nullsub_2(&v97);
      v74 = *(v9 + 16);
      v110 = *(v9 + 15);
      v111 = v74;
      v112 = *(v9 + 272);
      v75 = *(v9 + 12);
      v106[2] = *(v9 + 11);
      v107 = v75;
      v76 = *(v9 + 14);
      v108 = *(v9 + 13);
      v109 = v76;
      v77 = *(v9 + 10);
      v106[0] = *(v9 + 9);
      v106[1] = v77;
      v78 = v102;
      *(v9 + 13) = v101;
      *(v9 + 14) = v78;
      v79 = v104;
      *(v9 + 15) = v103;
      *(v9 + 16) = v79;
      *(v9 + 272) = v105;
      v80 = v100;
      *(v9 + 11) = v99;
      *(v9 + 12) = v80;
      v73 = v97;
      v72 = v98;
    }

    *(v9 + 9) = v73;
    *(v9 + 10) = v72;
    sub_1D96BE544(v106, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    v81 = v9[13];
    v82 = swift_allocObject();
    swift_weakInit();
    v83 = swift_allocObject();
    v84 = v92;
    *(v83 + 16) = v82;
    *(v83 + 24) = v84;
    v85 = &v81[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v86 = *&v81[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v87 = *&v81[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];
    *v85 = sub_1D96D4F68;
    v85[1] = v83;
    v88 = v81;

    sub_1D96BEAFC(v86);
  }

  else
  {

    sub_1D96BAB7C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D96BE544(v17, &qword_1ECB3EC68, &unk_1D96DC150);
    v49 = v9[16];

    v50 = v9[17];
    swift_unknownObjectRelease();
    v51 = *(v9 + 16);
    v110 = *(v9 + 15);
    v111 = v51;
    v112 = *(v9 + 272);
    v52 = *(v9 + 12);
    v106[2] = *(v9 + 11);
    v107 = v52;
    v53 = *(v9 + 14);
    v108 = *(v9 + 13);
    v109 = v53;
    v54 = *(v9 + 10);
    v106[0] = *(v9 + 9);
    v106[1] = v54;
    sub_1D96BE544(v106, &qword_1ECB3F3A8, &unk_1D96DD3F8);

    v55 = v9[39];

    type metadata accessor for WallpaperMetalCoordination.RenderingCoordinator();
    swift_deallocPartialClassInstance();
  }

  return v9;
}

void sub_1D96D1928(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 224);
    v4 = *(Strong + 256);
    v26 = *(Strong + 240);
    v27 = v4;
    v5 = *(Strong + 160);
    v6 = *(Strong + 192);
    v22 = *(Strong + 176);
    v23 = v6;
    v7 = *(Strong + 192);
    v8 = *(Strong + 224);
    v24 = *(Strong + 208);
    v25 = v8;
    v9 = *(Strong + 160);
    v20 = *(Strong + 144);
    v21 = v9;
    v10 = *(Strong + 256);
    v35 = v26;
    v36 = v10;
    v31 = v22;
    v32 = v7;
    v33 = v24;
    v34 = v3;
    v28 = *(Strong + 272);
    v37 = *(Strong + 272);
    v29 = v20;
    v30 = v5;
    if (sub_1D96D4FD8(&v29) == 1)
    {
      if (qword_1EDB960B0 != -1)
      {
        swift_once();
      }

      v11 = sub_1D96DA5D0();
      __swift_project_value_buffer(v11, qword_1EDB960C0);
      v12 = sub_1D96DA5B0();
      v13 = sub_1D96DA880();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D96B3000, v12, v13, "got a request to render, but have no non-snapshot state", v14, 2u);
        MEMORY[0x1DA736010](v14, -1, -1);
      }
    }

    else
    {
      v16[6] = v35;
      v16[7] = v36;
      v17 = v37;
      v16[2] = v31;
      v16[3] = v32;
      v16[4] = v33;
      v16[5] = v34;
      v16[0] = v29;
      v16[1] = v30;
      v18[6] = v26;
      v18[7] = v27;
      v19 = v28;
      v18[2] = v22;
      v18[3] = v23;
      v18[4] = v24;
      v18[5] = v25;
      v18[0] = v20;
      v18[1] = v21;
      sub_1D96BDAB0(v18, v15);
      sub_1D96D3B30(v16, 0, a1);

      sub_1D96BE544(&v20, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    }
  }
}

uint64_t *sub_1D96D1CB8(void *a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_1D96BE658(v2 + 32, &v107, &qword_1ECB3EC68, &unk_1D96DC150);
  v5 = *(&v108 + 1);
  sub_1D96BE544(&v107, &qword_1ECB3EC68, &unk_1D96DC150);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (qword_1EDB960B0 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v6 = sub_1D96DA5D0();
    __swift_project_value_buffer(v6, qword_1EDB960C0);
    v7 = sub_1D96DA5B0();
    v8 = sub_1D96DA880();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D96B3000, v7, v8, "renderer should be nil at this point — attaching multiple times?", v9, 2u);
      MEMORY[0x1DA736010](v9, -1, -1);
    }

LABEL_6:
    [a1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [a1 window];
    if (!v18 || (v19 = v18, v20 = [v18 screen], v19, !v20))
    {
      v20 = [objc_opt_self() mainScreen];
    }

    [v20 nativeScale];
    v22 = v21;

    v117.origin.x = v11;
    v117.origin.y = v13;
    v117.size.width = v15;
    v117.size.height = v17;
    v23 = ceil(v22 * CGRectGetWidth(v117));
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v23 <= -9.22337204e18)
    {
      goto LABEL_52;
    }

    if (v23 >= 9.22337204e18)
    {
      goto LABEL_53;
    }

    v118.origin.x = v11;
    v118.origin.y = v13;
    v118.size.width = v15;
    v118.size.height = v17;
    v24 = ceil(v22 * CGRectGetHeight(v118));
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v24 < 9.22337204e18)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v105 = v24;
  v106 = v23;
  v25 = *(v3 + 104);
  v26 = v23;
  v27 = v24;
  v28 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize_];

  [v25 setBounds_];
  v29 = *(v3 + 112);
  [v29 setBounds_];
  [a1 addSubview_];
  v30 = [a1 layer];
  [v30 addSublayer_];

  v32 = *(v3 + 16);
  v31 = *(v3 + 24);
  (*(v31 + 32))(&v107, v32, v31);
  v33 = v107;
  v102 = v25;
  if (v107 == 2)
  {
    v34 = *(v3 + 128);
    *(v3 + 128) = 0;
    goto LABEL_36;
  }

  v35 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor_];

  v36 = *(v3 + 88);
  swift_unknownObjectRetain();
  v101 = [v25 layer];
  type metadata accessor for WallpaperMetalCoordination.FloatingLayerManager();
  v37 = swift_allocObject();
  *(v37 + 16) = [objc_allocWithZone(MEMORY[0x1E6979408]) init];
  *(v37 + 24) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v37 + 40) = 0;
  *(v37 + 48) = v33 & 1;
  if (v33)
  {
    v38 = 0;
    goto LABEL_19;
  }

  v99 = v3;
  v100 = v31;
  v39 = v32;
  v40 = [objc_opt_self() texture2DDescriptorWithPixelFormat:10 width:v106 height:v105 mipmapped:0];
  [v40 setUsage_];
  v41 = v40;
  [v40 setStorageMode_];
  *&v107 = MEMORY[0x1E69E7CC0];
  sub_1D96C5B88(0, 3, 0);
  v38 = v107;
  v42 = v116;
  v43 = sub_1D96C8B74(v106, v105, v36);
  v45 = v36;
  v116 = v42;
  if (v42)
  {
    goto LABEL_26;
  }

  v46 = v43;
  v47 = v44;
  v49 = *(v38 + 16);
  v48 = *(v38 + 24);
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    sub_1D96C5B88((v48 > 1), v49 + 1, 1);
    v50 = v49 + 1;
    v38 = v107;
  }

  *(v38 + 16) = v50;
  v51 = v38 + 16 * v49;
  *(v51 + 32) = v46;
  *(v51 + 40) = v47;
  v52 = sub_1D96C8B74(v106, v105, v45);
  v116 = 0;
  *&v107 = v38;
  v55 = *(v38 + 16);
  v54 = *(v38 + 24);
  if (v55 >= v54 >> 1)
  {
    v97 = v52;
    v95 = v53;
    sub_1D96C5B88((v54 > 1), v55 + 1, 1);
    v53 = v95;
    v52 = v97;
    v38 = v107;
  }

  *(v38 + 16) = v55 + 1;
  v56 = v38 + 16 * v55;
  *(v56 + 32) = v52;
  *(v56 + 40) = v53;
  v57 = v116;
  v58 = sub_1D96C8B74(v106, v105, v45);
  v116 = v57;
  if (v57)
  {
LABEL_26:

    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v60 = sub_1D96DA5D0();
    __swift_project_value_buffer(v60, qword_1EDB960C0);
    v61 = v116;
    v62 = v116;
    v63 = sub_1D96DA5B0();
    v64 = sub_1D96DA880();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138543362;
      v67 = v116;
      v68 = v116;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v69;
      *v66 = v69;
      _os_log_impl(&dword_1D96B3000, v63, v64, "couldn’t set up floating layer: %{public}@", v65, 0xCu);
      sub_1D96BE544(v66, &unk_1ECB3EF10, &qword_1D96DC4A0);
      MEMORY[0x1DA736010](v66, -1, -1);
      MEMORY[0x1DA736010](v65, -1, -1);
    }

    else
    {
    }

    v37 = 0;
    v116 = 0;
    v32 = v39;
    v3 = v99;
    v31 = v100;
  }

  else
  {
    *&v107 = v38;
    v93 = *(v38 + 16);
    v92 = *(v38 + 24);
    if (v93 >= v92 >> 1)
    {
      v98 = v58;
      v96 = v59;
      sub_1D96C5B88((v92 > 1), v93 + 1, 1);
      v59 = v96;
      v58 = v98;
      v38 = v107;
    }

    *(v38 + 16) = v93 + 1;
    v94 = v38 + 16 * v93;
    *(v94 + 32) = v58;
    *(v94 + 40) = v59;

    v32 = v39;
    v3 = v99;
    v31 = v100;
LABEL_19:
    *(v37 + 32) = v38;
    [*(v37 + 16) setSourceLayer_];
    [*(v37 + 16) setPosition_];
    [*(v37 + 16) setBounds_];
    [*(v37 + 16) setAnchorPoint_];
    [*(v37 + 24) setPosition_];
    [*(v37 + 24) setBounds_];
    [*(v37 + 16) setMask_];
    swift_unknownObjectRelease();
  }

  v70 = *(v3 + 128);
  *(v3 + 128) = v37;

  if (v37)
  {
    v71 = [a2 layer];
    [v71 addSublayer_];
  }

  v72 = *(v3 + 120);
  if (v72)
  {
    v73 = v72;
    [v73 setBounds_];
    v74 = [v73 mask];
    [v74 setBounds_];

    v75 = [a2 &selRef_newArgumentEncoderWithBufferBinding_];
    [v75 addSublayer_];
  }

LABEL_36:

  if (((*(v31 + 24))(v32, v31) & 1) == 0)
  {
    v78 = v31;
    v104 = v32;
    v77 = 0;
    goto LABEL_40;
  }

  v76 = [*(v3 + 96) commandBuffer];
  if (v76)
  {
    v77 = v76;
    v78 = v31;
    v104 = v32;
    v79 = sub_1D96DA690();
    [v77 setLabel_];

    swift_unknownObjectRetain();
LABEL_40:
    v80 = v3;
    v81 = *(v3 + 88);
    v82 = *(v80 + 72);
    v83 = *(v80 + 80);
    v84 = *(v78 + 40);
    *(&v108 + 1) = v104;
    *&v109 = v78;
    __swift_allocate_boxed_opaque_existential_1(&v107);
    swift_unknownObjectRetain();

    v85 = v116;
    v84(v81, v82, v83, v106, v105, v77, v104, v78);
    if (v85)
    {
      swift_unknownObjectRelease();
      return __swift_deallocate_boxed_opaque_existential_1(&v107);
    }

    else
    {
      swift_beginAccess();
      sub_1D96D4F70(&v107, v80 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
      swift_endAccess();
      if (v77)
      {
        [v77 commit];
      }

      v87 = *(v80 + 256);
      v113 = *(v80 + 240);
      v114 = v87;
      v115 = *(v80 + 272);
      v88 = *(v80 + 192);
      v109 = *(v80 + 176);
      v110 = v88;
      v89 = *(v80 + 224);
      v111 = *(v80 + 208);
      v112 = v89;
      v90 = *(v80 + 160);
      v107 = *(v80 + 144);
      v108 = v90;
      if (sub_1D96D4FD8(&v107) != 1)
      {
        v102[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 1;
        [v102 setNeedsDisplay];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D96BAB7C();
    swift_allocError();
    *v91 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1D96D28B8(void *a1, void *a2)
{
  v4 = v2;
  v6 = a1;
  v7 = [a1 contents];
  v8 = sub_1D96DA690();
  v9 = [v7 objectForUserInfoKey_];

  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1D96DA930();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v175[0] = v168;
  v175[1] = v169;
  v148 = v3;
  v149 = v6;
  if (*(&v169 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v155;
      if (v155 == *(v4 + 280) || (sub_1D96DAAE0() & 1) != 0)
      {
      }

      else
      {
        if (qword_1EDB960B0 != -1)
        {
          swift_once();
        }

        v110 = sub_1D96DA5D0();
        __swift_project_value_buffer(v110, qword_1EDB960C0);

        v111 = sub_1D96DA5B0();
        v112 = sub_1D96DA870();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = v111;
          v115 = swift_slowAlloc();
          *&v175[0] = v115;
          *v113 = 136446210;
          *(v113 + 4) = sub_1D96BB28C(v10, *(&v10 + 1), v175);
          _os_log_impl(&dword_1D96B3000, v114, v112, "renderer got an update with a new look identifier %{public}s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v115);
          MEMORY[0x1DA736010](v115, -1, -1);
          MEMORY[0x1DA736010](v113, -1, -1);
        }

        else
        {
        }

        v6 = v149;
        v117 = *(v4 + 288);
        *(v4 + 280) = v10;
      }
    }
  }

  else
  {
    sub_1D96BE544(v175, &unk_1ECB3F3B0, &qword_1D96DD408);
  }

  v11 = *(v4 + 288);
  *&v175[0] = *(v4 + 280);
  *(&v175[0] + 1) = v11;
  memset(&v175[1], 0, 21);
  swift_unknownObjectRetain();

  sub_1D96C7D94(v6, v175, &v182);
  if (!a2)
  {
LABEL_15:
    v40 = *(v4 + 256);
    *&v173[16] = *(v4 + 240);
    *&v173[32] = v40;
    v41 = *(v4 + 160);
    v42 = *(v4 + 192);
    v170 = *(v4 + 176);
    v171 = v42;
    v43 = *(v4 + 224);
    v44 = *(v4 + 192);
    v172 = *(v4 + 208);
    *v173 = v43;
    v45 = *(v4 + 160);
    v168 = *(v4 + 144);
    v169 = v45;
    v46 = *(v4 + 192);
    v164 = *(v4 + 176);
    v165 = v46;
    v166 = *(v4 + 208);
    v47 = *(v4 + 160);
    v162 = *(v4 + 144);
    v163 = v47;
    v175[0] = v162;
    v175[1] = v41;
    v176 = v44;
    v177 = v172;
    v174 = *(v4 + 272);
    v167 = *(v4 + 224);
    v48 = *(&v43 + 1);
    v49 = *&v173[16];
    v50 = *&v173[24];
    v51 = *&v173[32];
    v52 = *&v173[40];
    v53 = v174;
    v54 = *(v4 + 224);
    v175[2] = v170;
    *&v178 = v54;
    *(&v178 + 1) = *(&v43 + 1);
    v179 = *&v173[16];
    v180 = *&v173[32];
    v181 = v174;
    if (sub_1D96D4FD8(v175) == 1)
    {
      v157 = v164;
      v158 = v165;
      v159 = v166;
      v155 = v162;
      v156 = v163;
      *v160 = v167;
      *&v160[8] = v48;
      *&v160[16] = *&v173[16];
      *&v160[24] = *&v173[24];
      *&v160[32] = *&v173[32];
      *&v160[40] = *&v173[40];
      v161 = v174;
      sub_1D96BE658(&v168, v154, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      sub_1D96BE544(&v155, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    }

    else
    {
      v157 = v164;
      v158 = v165;
      v159 = v166;
      v155 = v162;
      v156 = v163;
      *v160 = v167;
      *&v160[8] = v48;
      *&v160[16] = *&v173[16];
      *&v160[24] = *&v173[24];
      *&v160[32] = *&v173[32];
      *&v160[40] = *&v173[40];
      v161 = v174;
      sub_1D96BE658(&v168, v154, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      v139 = v50;
      sub_1D96BDB84(v48, v49, v50, *&v51, *&v52, v53 & 1);
      sub_1D96BE544(&v155, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      if (v53)
      {
        v55 = v148;
        if (CFAbsoluteTimeGetCurrent() <= v51 + v52)
        {
          v147 = v49;
          v153 = v48;
          v60 = 0;
          v144 = 1;
          v59 = v139;
          goto LABEL_28;
        }

        sub_1D96BDB78(v48, v49, v139, *&v51, *&v52, 1);
LABEL_27:
        v153 = 0;
        v147 = 0;
        v59 = 0;
        v51 = 0.0;
        v52 = 0.0;
        v144 = -1;
        v60 = 1;
        goto LABEL_28;
      }
    }

    v55 = v148;
    goto LABEL_27;
  }

  v12 = a2;
  [v12 duration];
  if (v13 <= 0.0)
  {

    goto LABEL_15;
  }

  v146 = v12;
  v14 = *(v4 + 224);
  v15 = *(v4 + 256);
  *&v173[16] = *(v4 + 240);
  *&v173[32] = v15;
  v16 = *(v4 + 160);
  v17 = *(v4 + 192);
  v170 = *(v4 + 176);
  v171 = v17;
  v18 = *(v4 + 192);
  v19 = *(v4 + 224);
  v172 = *(v4 + 208);
  *v173 = v19;
  v20 = *(v4 + 160);
  v168 = *(v4 + 144);
  v169 = v20;
  v21 = *(v4 + 256);
  v179 = *&v173[16];
  v180 = v21;
  v175[2] = v170;
  v176 = v18;
  v177 = v172;
  v178 = v14;
  v174 = *(v4 + 272);
  v181 = *(v4 + 272);
  v175[0] = v168;
  v175[1] = v16;
  if (sub_1D96D4FD8(v175) == 1)
  {
    *&v160[16] = v188;
    *&v160[32] = v189;
    v159 = v186;
    *v160 = v187;
    v161 = v190;
    v157 = v184;
    v158 = v185;
    v155 = v182;
    v156 = v183;
    v152 = *&v160[24];
    v143 = *&v160[8];
    v138 = *(&v189 + 1);
    v134 = v190;
    v132 = v185;
    v133 = v186;
    v135 = v187;
    v22 = BYTE4(v187);
    v23 = BYTE10(v184);
    v24 = BYTE9(v184);
    v25 = BYTE8(v184);
    v26 = v183;
    v27 = *(&v183 + 1);
    v28 = v184;
    v29 = v182;
    v30 = *(&v182 + 1);
    sub_1D96BDAB0(&v155, v154);
    v31 = v23;
    v32 = v138;
    v33 = v26;
    v34 = v134;
    v36 = v132;
    v35 = v133;
    v37 = v135;
    v38 = v143;
    v39 = v152;
  }

  else
  {
    v29 = v168;
    v30 = *(&v168 + 1);
    v33 = v169;
    v27 = *(&v169 + 1);
    v28 = v170;
    v36 = v171;
    v35 = v172;
    v37 = *v173;
    v39 = *&v173[24];
    v38 = *&v173[8];
    v32 = *&v173[40];
    v34 = v174;
    v22 = v173[4];
    v31 = BYTE10(v170);
    v24 = BYTE9(v170);
    v25 = BYTE8(v170);
  }

  LOBYTE(v155) = v29;
  *(&v155 + 1) = v30;
  LOBYTE(v156) = v33;
  *(&v156 + 1) = v27;
  *&v157 = v28;
  BYTE8(v157) = v25 & 1;
  BYTE9(v157) = v24 & 1;
  BYTE10(v157) = v31 & 1;
  v158 = v36;
  v159 = v35;
  *v160 = v37;
  v160[4] = v22 & 1;
  *&v160[8] = v38;
  *&v160[24] = v39;
  *&v160[40] = v32;
  v161 = v34 & 1;
  v57 = *(&v38 + 1);
  v56 = v38;
  v58 = v39;
  sub_1D96BDB84(v38, *(&v38 + 1), v39, *(&v39 + 1), v32, v34 & 1);
  sub_1D96BE658(&v168, v154, &qword_1ECB3F3A8, &unk_1D96DD3F8);
  sub_1D96BDB0C(&v155);
  if (v34)
  {
    sub_1D96BDB78(v56, v57, v58, *(&v58 + 1), v32, 1);
    v55 = v148;
  }

  else
  {
    v55 = v148;
    v57 = v56;
  }

  if ([v149 deviceOrientation] == v57)
  {

    goto LABEL_27;
  }

  v153 = v57;
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v103 = sub_1D96DA5D0();
  __swift_project_value_buffer(v103, qword_1EDB960C0);
  swift_unknownObjectRetain();
  v104 = sub_1D96DA5B0();
  v105 = sub_1D96DA870();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v154[0] = v107;
    *v106 = 136315394;
    v145 = v107;
    if (v153 > 2)
    {
      if (v153 != 3)
      {
        if (v153 == 4)
        {
          v109 = 0x70616373646E614CLL;
          v108 = 0xEE007466654C2065;
          goto LABEL_74;
        }

        goto LABEL_71;
      }

      v109 = 0x70616373646E614CLL;
      v108 = 0xEF74686769522065;
    }

    else
    {
      if (v153 != 1)
      {
        if (v153 == 2)
        {
          v108 = 0x80000001D96DE980;
          v109 = 0xD000000000000014;
          goto LABEL_74;
        }

LABEL_71:
        v109 = 0xD000000000000013;
        v108 = 0x80000001D96DE960;
        goto LABEL_74;
      }

      v108 = 0xE800000000000000;
      v109 = 0x7469617274726F50;
    }

LABEL_74:
    v118 = sub_1D96BB28C(v109, v108, v154);

    *(v106 + 4) = v118;
    *(v106 + 12) = 2080;
    v119 = [v149 deviceOrientation];
    if (v119 > 2)
    {
      if (v119 == 3)
      {
        v121 = 0x70616373646E614CLL;
        v120 = 0xEF74686769522065;
        goto LABEL_84;
      }

      if (v119 == 4)
      {
        v121 = 0x70616373646E614CLL;
        v120 = 0xEE007466654C2065;
        goto LABEL_84;
      }
    }

    else
    {
      if (v119 == 1)
      {
        v120 = 0xE800000000000000;
        v121 = 0x7469617274726F50;
        goto LABEL_84;
      }

      if (v119 == 2)
      {
        v120 = 0x80000001D96DE980;
        v121 = 0xD000000000000014;
LABEL_84:
        v122 = sub_1D96BB28C(v121, v120, v154);

        *(v106 + 14) = v122;
        _os_log_impl(&dword_1D96B3000, v104, v105, "🔄 renderer starting orientation transition %s → %s", v106, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v145, -1, -1);
        MEMORY[0x1DA736010](v106, -1, -1);

        v116 = v146;
        v55 = v148;
        goto LABEL_85;
      }
    }

    v121 = 0xD000000000000013;
    v120 = 0x80000001D96DE960;
    goto LABEL_84;
  }

  v116 = v146;
LABEL_85:
  v147 = [v149 deviceOrientation];
  v59 = [v116 timingFunction];
  if (!v59)
  {
    v59 = [objc_opt_self() functionWithName_];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v116 delay];
  v125 = Current + v124;
  [v116 duration];
  v126 = v125;
  v127 = *(v4 + 104);
  v52 = v128;
  [v116 delay];
  v130 = v129;
  [v116 duration];
  sub_1D96BF0F8(v130 + v131);
  v51 = v126;

  v60 = 0;
  v144 = 1;
LABEL_28:
  v61 = [v149 isSnapshot];
  v62 = *(v4 + 104);
  v63 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically;
  if (!v61)
  {
    v151 = *(v4 + 104);
    if ((v62[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] & 1) == 0)
    {
      v136 = v52;
      v141 = v51;
      if (qword_1EDB960B0 != -1)
      {
        swift_once();
      }

      v81 = sub_1D96DA5D0();
      __swift_project_value_buffer(v81, qword_1EDB960C0);
      v82 = sub_1D96DA5B0();
      v83 = sub_1D96DA870();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = v59;
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1D96B3000, v82, v83, "▶️ reenabling automatic drawing", v85, 2u);
        v86 = v85;
        v59 = v84;
        MEMORY[0x1DA736010](v86, -1, -1);
      }

      v52 = v136;
      v51 = v141;
      v62 = v151;
    }

    v62[v63] = 1;
    if ((v60 & 1) == 0)
    {
      v87 = *(&v187 + 1);
      v137 = *(&v188 + 1);
      v142 = v188;
      v88 = v189;
      v89 = v190;
      sub_1D96BDB84(v153, v147, v59, *&v51, *&v52, 1);
      sub_1D96BDB78(v87, v142, v137, v88, *(&v88 + 1), v89);
      *(&v187 + 1) = v153;
      *&v188 = v147;
      *(&v188 + 1) = v59;
      *&v189 = v51;
      *(&v189 + 1) = v52;
      v190 = 1;
    }

    *&v160[16] = v188;
    *&v160[32] = v189;
    v157 = v184;
    v158 = v185;
    v159 = v186;
    *v160 = v187;
    v155 = v182;
    v156 = v183;
    *&v173[16] = v188;
    *&v173[32] = v189;
    v170 = v184;
    v171 = v185;
    v172 = v186;
    *v173 = v187;
    v161 = v190;
    v174 = v190;
    v168 = v182;
    v169 = v183;
    nullsub_2(&v168);
    v90 = *(v4 + 256);
    v179 = *(v4 + 240);
    v180 = v90;
    v181 = *(v4 + 272);
    v91 = *(v4 + 192);
    v175[2] = *(v4 + 176);
    v176 = v91;
    v92 = *(v4 + 224);
    v177 = *(v4 + 208);
    v178 = v92;
    v93 = *(v4 + 160);
    v175[0] = *(v4 + 144);
    v175[1] = v93;
    v94 = *v173;
    *(v4 + 208) = v172;
    *(v4 + 224) = v94;
    v95 = *&v173[32];
    *(v4 + 240) = *&v173[16];
    *(v4 + 256) = v95;
    *(v4 + 272) = v174;
    v96 = v171;
    *(v4 + 176) = v170;
    *(v4 + 192) = v96;
    v97 = v169;
    *(v4 + 144) = v168;
    *(v4 + 160) = v97;
    sub_1D96BDAB0(&v155, v154);
    sub_1D96BE544(v175, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    [v151 setNeedsDisplay];
    v98 = v153;
    v99 = v147;
    v100 = v59;
    v101 = *&v51;
    goto LABEL_50;
  }

  v140 = *&v51;
  v64 = v153;
  if (v62[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically])
  {
    v150 = *(v4 + 104);
    v65 = v52;
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v66 = sub_1D96DA5D0();
    __swift_project_value_buffer(v66, qword_1EDB960C0);
    v67 = sub_1D96DA5B0();
    v68 = sub_1D96DA870();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v59;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1D96B3000, v67, v68, "⏸️ disabling automatic drawing", v70, 2u);
      v71 = v70;
      v59 = v69;
      MEMORY[0x1DA736010](v71, -1, -1);
    }

    v52 = v65;
    v62 = v150;
    v64 = v153;
  }

  v62[v63] = 0;
  v179 = v188;
  v180 = v189;
  v181 = v190;
  v175[2] = v184;
  v176 = v185;
  v177 = v186;
  v178 = v187;
  v175[0] = v182;
  v175[1] = v183;
  sub_1D96BDAB0(v175, &v168);
  sub_1D96D3B30(&v182, 1, 0);
  if (!v55)
  {
    *&v173[16] = v188;
    *&v173[32] = v189;
    v174 = v190;
    v170 = v184;
    v171 = v185;
    v172 = v186;
    *v173 = v187;
    v168 = v182;
    v169 = v183;
    sub_1D96BDB0C(&v168);
    v98 = v64;
    v99 = v147;
    v100 = v59;
    v101 = v140;
LABEL_50:
    sub_1D96BDB60(v98, v99, v100, v101, *&v52, v144);
    goto LABEL_51;
  }

  *&v173[16] = v188;
  *&v173[32] = v189;
  v174 = v190;
  v170 = v184;
  v171 = v185;
  v172 = v186;
  *v173 = v187;
  v168 = v182;
  v169 = v183;
  sub_1D96BDB0C(&v168);
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D96DA5D0();
  __swift_project_value_buffer(v72, qword_1EDB960C0);
  v73 = v55;
  v74 = sub_1D96DA5B0();
  v75 = sub_1D96DA880();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *&v52;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    v79 = v55;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 4) = v80;
    *v78 = v80;
    _os_log_impl(&dword_1D96B3000, v74, v75, "failed to render for snapshot: %@", v77, 0xCu);
    sub_1D96BE544(v78, &unk_1ECB3EF10, &qword_1D96DC4A0);
    MEMORY[0x1DA736010](v78, -1, -1);
    MEMORY[0x1DA736010](v77, -1, -1);
    sub_1D96BDB60(v64, v147, v59, v140, v76, v144);
  }

  else
  {
    sub_1D96BDB60(v64, v147, v59, v140, *&v52, v144);
  }

LABEL_51:
  v179 = v188;
  v180 = v189;
  v181 = v190;
  v175[2] = v184;
  v176 = v185;
  v177 = v186;
  v178 = v187;
  v175[0] = v182;
  v175[1] = v183;
  return sub_1D96BDB0C(v175);
}

uint64_t sub_1D96D3A50(uint64_t a1, unint64_t a2)
{
  type metadata accessor for WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken();
  swift_allocObject();

  v6 = sub_1D96D5FD0(v5, a1, a2);

  swift_beginAccess();

  sub_1D96D5CDC(&v8, a1, a2);
  swift_endAccess();

  *(*(v2 + 104) + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 1;
  sub_1D96BFC4C();
  return v6;
}

void sub_1D96D3B30(uint64_t a1, char a2, void *a3)
{
  v5 = v3;
  v8 = *(a1 + 112);
  v148 = *(a1 + 96);
  v149 = v8;
  v150 = *(a1 + 128);
  v9 = *(a1 + 48);
  v144 = *(a1 + 32);
  v145 = v9;
  v10 = *(a1 + 80);
  v146 = *(a1 + 64);
  v147 = v10;
  v11 = *(a1 + 16);
  v142 = *a1;
  v143 = v11;
  swift_beginAccess();
  sub_1D96BE658(v3 + 32, &v130, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v131 + 1))
  {
    sub_1D96BE49C(&v130, v139);
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D96DA5D0();
    __swift_project_value_buffer(v12, qword_1EDB960C0);
    sub_1D96BDAB0(&v142, &v130);
    v13 = sub_1D96DA5B0();
    v14 = sub_1D96DA870();
    sub_1D96BDB0C(&v142);
    v15 = os_log_type_enabled(v13, v14);
    v127 = v3;
    v151 = v4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v128 = v124;
      *v16 = 136447234;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3D8, &qword_1D96DD530);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D96DD3C0;
      v18 = *(&v142 + 1);
      *(v17 + 56) = MEMORY[0x1E69E7DE0];
      v19 = a3;
      v20 = sub_1D96D6314();
      *(v17 + 64) = v20;
      *(v17 + 32) = v18;
      v21 = sub_1D96DA6D0();
      v23 = sub_1D96BB28C(v21, v22, &v128);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      if (BYTE8(v144))
      {
        v24 = 5457241;
      }

      else
      {
        v24 = 20302;
      }

      if (BYTE8(v144))
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE200000000000000;
      }

      v26 = sub_1D96BB28C(v24, v25, &v128);

      *(v16 + 14) = v26;
      *(v16 + 22) = 2082;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D96DD3C0;
      v28 = *(&v143 + 1);
      *(v27 + 56) = MEMORY[0x1E69E7DE0];
      *(v27 + 64) = v20;
      *(v27 + 32) = v28;
      v29 = sub_1D96DA6D0();
      v31 = sub_1D96BB28C(v29, v30, &v128);

      *(v16 + 24) = v31;
      a3 = v19;
      *(v16 + 32) = 2080;
      v5 = v3;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D96DD3C0;
      v136 = v148;
      v137 = v149;
      v138 = v150;
      v132 = v144;
      v133 = v145;
      v134 = v146;
      v135 = v147;
      v130 = v142;
      v131 = v143;
      v33 = WallpaperMetalCoordination.WallpaperState.rotationLandscapeAmount.getter();
      v34 = MEMORY[0x1E69E64A8];
      *(v32 + 56) = MEMORY[0x1E69E6448];
      *(v32 + 64) = v34;
      *(v32 + 32) = v33;
      v35 = sub_1D96DA6D0();
      v37 = sub_1D96BB28C(v35, v36, &v128);

      *(v16 + 34) = v37;
      *(v16 + 42) = 2082;
      if (a2)
      {
        v38 = 5457241;
      }

      else
      {
        v38 = 20302;
      }

      if (a2)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_1D96BB28C(v38, v39, &v128);

      *(v16 + 44) = v40;
      _os_log_impl(&dword_1D96B3000, v13, v14, "rendering state [unlock %{public}s, dark %s, dim %{public}s, land %s], is snapshot %{public}s", v16, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v124, -1, -1);
      MEMORY[0x1DA736010](v16, -1, -1);
    }

    if ((a2 & 1) == 0)
    {
      if (!a3)
      {
        v88 = sub_1D96DA5B0();
        v89 = sub_1D96DA880();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_1D96B3000, v88, v89, "no drawable available", v90, 2u);
          MEMORY[0x1DA736010](v90, -1, -1);
        }

        goto LABEL_87;
      }

      v41 = [swift_unknownObjectRetain() texture];
LABEL_30:
      v50 = [*(v5 + 96) commandBuffer];
      if (!v50)
      {
        sub_1D96BAB7C();
        swift_allocError();
        *v55 = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_64:
        swift_unknownObjectRelease();
        goto LABEL_87;
      }

      v51 = *(v5 + 128);
      v125 = v50;
      v126 = a3;
      v123 = v41;
      if (v51)
      {
        if ((*(v51 + 48) & 1) == 0)
        {
          v54 = sub_1D96C8890();
          v122 = v91;
          v92 = 0;
LABEL_62:
          v99 = v140;
          v100 = v141;
          __swift_project_boxed_opaque_existential_1(v139, v140);
          v136 = v148;
          v137 = v149;
          v138 = v150;
          v132 = v144;
          v133 = v145;
          v134 = v146;
          v135 = v147;
          v130 = v142;
          v131 = v143;
          v128 = v54;
          v129 = v92;
          v101 = *(v100 + 48);
          sub_1D96D6274(v54, v92);
          v102 = v151;
          v101(&v130, v123, &v128, v125, v99, v100);
          if (!v102)
          {
            sub_1D96D6298(v128, v129);
            [v125 commit];
            v151 = 0;
            if (a2)
            {
              [v125 waitUntilCompleted];
              v104 = *(v127 + 112);
              v105 = *(v127 + 136);
              if (v105)
              {
                v106 = [v105 iosurface];
                v107 = v122;
                if (v106)
                {
                  *&v130 = v106;
                  type metadata accessor for IOSurfaceRef(0);
                  v108 = sub_1D96DAAD0();
                }

                else
                {
                  v108 = 0;
                }
              }

              else
              {
                v108 = 0;
                v107 = v122;
              }

              [v104 setContents_];
              swift_unknownObjectRelease();
              [v104 setHidden_];
              v117 = *(v127 + 120);
              if (v117)
              {
                v118 = v117;
                if ([v104 contents])
                {
                  sub_1D96DA930();
                  swift_unknownObjectRelease();
                  __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
                  v119 = sub_1D96DAAD0();
                  __swift_destroy_boxed_opaque_existential_0Tm(&v130);
                }

                else
                {
                  v119 = 0;
                }

                [v118 setContents_];
                swift_unknownObjectRelease();
                [v118 setHidden_];
                v120 = [v118 mask];
                [v120 setContents_];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_1D96D6298(v54, v92);

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                sub_1D96D6298(v54, v92);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }
            }

            else
            {
              [v125 waitUntilScheduled];
              if (v126)
              {
                [v126 present];
              }

              if (v122)
              {
                v109 = *(v127 + 128);
                if (v109)
                {
                  [*(v109 + 24) setContents_];
                }
              }

              if (*(v127 + 136))
              {
                v110 = sub_1D96DA5B0();
                v111 = sub_1D96DA870();
                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  *v112 = 0;
                  _os_log_impl(&dword_1D96B3000, v110, v111, "discarding snapshot resources", v112, 2u);
                  MEMORY[0x1DA736010](v112, -1, -1);
                }
              }

              v113 = *(v127 + 136);
              *(v127 + 136) = 0;
              swift_unknownObjectRelease();
              v114 = *(v127 + 112);
              [v114 setContents_];
              [v114 setHidden_];
              v115 = *(v127 + 120);
              [v115 setContents_];
              v116 = [v115 mask];
              [v116 setContents_];

              [v115 setHidden_];
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1D96D6298(v54, v92);
              swift_unknownObjectRelease();
            }

            goto LABEL_87;
          }

          sub_1D96D6298(v128, v129);
          [v125 commit];
          sub_1D96BAB7C();
          swift_allocError();
          *v103 = 2;
          swift_willThrow();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_1D96D6298(v54, v92);

          goto LABEL_64;
        }

        if ((a2 & 1) == 0)
        {
          v54 = *(v51 + 24);
          v94 = v54;
          goto LABEL_55;
        }

        v52 = *(v5 + 120);
        if (v52)
        {

          v53 = [v52 mask];
          if (v53)
          {
            v54 = v53;

LABEL_55:
            v122 = 0;
            v92 = 1;
            goto LABEL_62;
          }
        }

        else
        {
        }

        v96 = sub_1D96DA5B0();
        v97 = sub_1D96DA880();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_1D96B3000, v96, v97, "🚨 couldn’t find mask layer when creating snapshot! time occlusion may be wrong", v98, 2u);
          MEMORY[0x1DA736010](v98, -1, -1);
        }
      }

      v122 = 0;
      v54 = 0;
      v92 = -1;
      goto LABEL_62;
    }

    v41 = *(v5 + 136);
    if (v41)
    {
      v42 = *(v5 + 136);
      swift_unknownObjectRetain();
      v43 = sub_1D96DA5B0();
      v44 = sub_1D96DA870();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1D96B3000, v43, v44, "reusing existing snapshot texture", v45, 2u);
        MEMORY[0x1DA736010](v45, -1, -1);
      }

      a3 = 0;
      goto LABEL_30;
    }

    v121 = a2;
    v56 = sub_1D96DA5B0();
    v57 = sub_1D96DA870();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D96B3000, v56, v57, "making new snapshot texture", v58, 2u);
      MEMORY[0x1DA736010](v58, -1, -1);
    }

    v59 = *(v5 + 104);
    v60 = [v59 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() drawableSize];
    v62 = v61;
    v63 = v61;

    if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v62 > -9.22337204e18)
    {
      if (v62 < 9.22337204e18)
      {
        v64 = [v59 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() drawableSize];
        v66 = v65;
        v67 = v65;

        if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v66 > -9.22337204e18)
          {
            if (v66 < 9.22337204e18)
            {
              v68 = *(v5 + 88);
              v69 = *(v5 + 16);
              v70 = (*(*(v5 + 24) + 8))();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3D0, &unk_1D96DD520);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1D96DD050;
              v72 = *MEMORY[0x1E696D130];
              *(inited + 32) = *MEMORY[0x1E696D130];
              v73 = MEMORY[0x1E69E6530];
              *(inited + 40) = v62;
              v74 = *MEMORY[0x1E696CF58];
              *(inited + 64) = v73;
              *(inited + 72) = v74;
              *(inited + 80) = v66;
              v75 = *MEMORY[0x1E696CE50];
              *(inited + 104) = v73;
              *(inited + 112) = v75;
              *(inited + 120) = 4;
              v76 = *MEMORY[0x1E696CFC0];
              *(inited + 144) = v73;
              *(inited + 152) = v76;
              *(inited + 184) = MEMORY[0x1E69E7668];
              *(inited + 160) = 1111970369;
              v77 = v72;
              v78 = v74;
              v79 = v75;
              v80 = v76;
              sub_1D96BE148(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3EF30, &qword_1D96DC4B8);
              swift_arrayDestroy();
              type metadata accessor for CFString(0);
              sub_1D96D62BC();
              v81 = sub_1D96DA620();

              v82 = IOSurfaceCreate(v81);

              if (v82)
              {
                v83 = objc_opt_self();
                v84 = v82;
                v85 = [v83 texture2DDescriptorWithPixelFormat:v70 width:v62 height:v66 mipmapped:0];
                [v85 setUsage_];
                v86 = [v68 newTextureWithDescriptor:v85 iosurface:v84 plane:0];
                if (v86)
                {
                  v41 = v86;

                  v5 = v127;
                  v87 = *(v127 + 136);
                  *(v127 + 136) = v41;
                  swift_unknownObjectRetain();
                  swift_unknownObjectRelease();
                  a3 = 0;
                  a2 = v121;
                  goto LABEL_30;
                }

                sub_1D96BAB7C();
                swift_allocError();
                *v95 = 3;
                swift_willThrow();
              }

              else
              {
                sub_1D96BAB7C();
                swift_allocError();
                *v93 = 3;
                swift_willThrow();
              }

LABEL_87:
              __swift_destroy_boxed_opaque_existential_0Tm(v139);
              return;
            }

            goto LABEL_93;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_90;
  }

  sub_1D96BE544(&v130, &qword_1ECB3EC68, &unk_1D96DC150);
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v46 = sub_1D96DA5D0();
  __swift_project_value_buffer(v46, qword_1EDB960C0);
  v47 = sub_1D96DA5B0();
  v48 = sub_1D96DA880();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D96B3000, v47, v48, "got a rendering environment update before our renderer is set up", v49, 2u);
    MEMORY[0x1DA736010](v49, -1, -1);
  }
}

void sub_1D96D4B68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(*(v2 + 312) + 16);
  swift_beginAccess();
  sub_1D96D5100(a1, a2);
  swift_endAccess();

  if (v5)
  {
    if (!*(*(v2 + 312) + 16))
    {
      *(*(v2 + 104) + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
      sub_1D96BFC4C();
    }
  }
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.deinit()
{
  sub_1D96BE544(v0 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);
  swift_unknownObjectRelease();
  v3 = *(v0 + 96);
  swift_unknownObjectRelease();

  v4 = *(v0 + 128);

  v5 = *(v0 + 136);
  swift_unknownObjectRelease();
  v6 = *(v0 + 256);
  v13[6] = *(v0 + 240);
  v13[7] = v6;
  v14 = *(v0 + 272);
  v7 = *(v0 + 192);
  v13[2] = *(v0 + 176);
  v13[3] = v7;
  v8 = *(v0 + 224);
  v13[4] = *(v0 + 208);
  v13[5] = v8;
  v9 = *(v0 + 160);
  v13[0] = *(v0 + 144);
  v13[1] = v9;
  sub_1D96BE544(v13, &qword_1ECB3F3A8, &unk_1D96DD3F8);
  v10 = *(v0 + 288);

  v11 = *(v0 + 312);

  return v0;
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.__deallocating_deinit()
{
  WallpaperMetalCoordination.RenderingCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 320, 7);
}

uint64_t sub_1D96D4D30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D96D4E28;

  return v7(a1);
}

uint64_t sub_1D96D4E28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_1D96D4F20(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

void sub_1D96D4F68(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D96D1928(a1);
}

uint64_t sub_1D96D4F70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D96D4FD8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96D4FF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1D96DAB70();
  MEMORY[0x1DA735890](a1);
  v5 = sub_1D96DAB90();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D96D523C();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1D96D5970(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1D96D5100(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D96DAB70();
  sub_1D96DA700();
  v7 = sub_1D96DAB90();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D96DAAE0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D96D537C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1D96D5B18(v9);
  *v2 = v20;
  return v13;
}

void *sub_1D96D523C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF08, &qword_1D96DC498);
  v2 = *v0;
  v3 = sub_1D96DA960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1D96D537C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  v2 = *v0;
  v3 = sub_1D96DA960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D96D54D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  result = sub_1D96DA970();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D96DAB70();

      sub_1D96DA700();
      result = sub_1D96DAB90();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D96D5710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  result = sub_1D96DA970();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D96DAB70();
      sub_1D96DA700();
      result = sub_1D96DAB90();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D96D5970(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D96DA950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1D96DAB70();
        MEMORY[0x1DA735890](v12);
        v13 = sub_1D96DAB90() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D96D5B18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D96DA950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1D96DAB70();

        sub_1D96DA700();
        v15 = sub_1D96DAB90();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D96D5CDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D96DAB70();
  sub_1D96DA700();
  v9 = sub_1D96DAB90();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D96DAAE0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D96D5E2C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D96D5E2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D96D5710(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D96D537C();
      goto LABEL_16;
    }

    sub_1D96D54D8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D96DAB70();
  sub_1D96DA700();
  result = sub_1D96DAB90();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D96DAAE0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D96DAB00();
  __break(1u);
  return result;
}

uint64_t sub_1D96D5FD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D96DA5D0();
  __swift_project_value_buffer(v7, qword_1EDB960C0);

  v8 = sub_1D96DA5B0();
  v9 = sub_1D96DA870();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1D96BB28C(a2, a3, &v13);
    _os_log_impl(&dword_1D96B3000, v8, v9, "ContinuousRenderingToken “%{public}s“ init", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1DA736010](v11, -1, -1);
    MEMORY[0x1DA736010](v10, -1, -1);
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  swift_weakAssign();
  *(v4 + 24) = 0;
  return v4;
}

id sub_1D96D6274(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D96D628C(result, a2 & 1);
  }

  return result;
}

id sub_1D96D628C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_1D96D6298(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D96D62B0(a1, a2 & 1);
  }
}

void sub_1D96D62B0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1D96D62BC()
{
  result = qword_1EDB95C40;
  if (!qword_1EDB95C40)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95C40);
  }

  return result;
}

unint64_t sub_1D96D6314()
{
  result = qword_1ECB3F3E0;
  if (!qword_1ECB3F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3E0);
  }

  return result;
}

uint64_t sub_1D96D6368(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D96D64D8;

  return sub_1D96D4D30(a1, v5);
}

uint64_t sub_1D96D6420(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D96D0E40;

  return sub_1D96D4D30(a1, v5);
}

uint64_t UnlockState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t UnlockState.isTransitioning.getter()
{
  v1 = *(v0 + 8);
  v2 = v1 > 0.01;
  if (v1 >= 0.99)
  {
    v2 = 0;
  }

  return (*v0 == 2) & v2;
}

uint64_t UnlockState.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D96DA9A0();

  strcpy(v9, "screenState:");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v3 = 0xE800000000000000;
  v4 = 0x64656B636F6C6E75;
  if (v1 != 1)
  {
    v4 = 0x697469736E617274;
    v3 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6CLL;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  MEMORY[0x1DA735440](v5, v6);

  MEMORY[0x1DA735440](0x6572676F7270202CLL, 0xEB000000003A7373);
  v7 = sub_1D96DA840();
  MEMORY[0x1DA735440](v7);

  return v9[0];
}

uint64_t UnlockState.ScreenState.description.getter()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1D96D67C0()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

unint64_t sub_1D96D6828()
{
  result = qword_1ECB3F3F0;
  if (!qword_1ECB3F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState.ScreenState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TransitionDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t StateTransition.init(previous:current:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for StateTransition() + 28);

  return v9(v7, a2, a3);
}

void StateTransition<A>.transitionDirection.getter(char *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = 2 * (v2 >= v3);
  if (v3 < v2)
  {
    v4 = 1;
  }

  *a1 = v4;
}

unint64_t sub_1D96D6C68()
{
  result = qword_1ECB3F3F8;
  if (!qword_1ECB3F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3F8);
  }

  return result;
}

uint64_t sub_1D96D6CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D96D6D44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1D96D6E94(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t WatchFacesWallpaperSupportFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for WatchFacesWallpaperSupportFeatureFlags;
  v4[4] = sub_1D96D7104();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1D96DA570();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_1D96D7104()
{
  result = qword_1EDB95B98;
  if (!qword_1EDB95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95B98);
  }

  return result;
}

uint64_t WatchFacesWallpaperSupportFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

const char *WatchFacesWallpaperSupportFeatureFlags.feature.getter()
{
  v1 = "catskill_poster";
  if (*v0 != 1)
  {
    v1 = "rhizome";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extragalactic_poster";
  }
}

const char *sub_1D96D7250()
{
  v1 = "catskill_poster";
  if (*v0 != 1)
  {
    v1 = "rhizome";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extragalactic_poster";
  }
}

uint64_t PrivateFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for PrivateFeatureFlags;
  v4[4] = sub_1D96D72F0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1D96DA570();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_1D96D72F0()
{
  result = qword_1ECB3F400;
  if (!qword_1ECB3F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F400);
  }

  return result;
}

uint64_t PrivateFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

const char *PrivateFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "rhizome_design_tweaks";
  }

  else
  {
    return "catskill_design_tweaks";
  }
}

unint64_t sub_1D96D7414()
{
  result = qword_1ECB3F408;
  if (!qword_1ECB3F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F408);
  }

  return result;
}

unint64_t sub_1D96D746C()
{
  result = qword_1ECB3F410;
  if (!qword_1ECB3F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F410);
  }

  return result;
}

const char *sub_1D96D74D4()
{
  if (*v0)
  {
    return "rhizome_design_tweaks";
  }

  else
  {
    return "catskill_design_tweaks";
  }
}

__n128 static WakeState.on.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 8) = result;
  return result;
}

uint64_t WakeState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

void static WakeState.off.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t WakeState.ScreenState.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1D96D76D0()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t WakeState.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0x74536E6565726373, 0xEC0000003A657461);
  v4 = 0xE300000000000000;
  v5 = 6710895;
  if (v1 != 1)
  {
    v5 = 0x697469736E617274;
    v4 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 28271;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  MEMORY[0x1DA735440](v6, v7);

  MEMORY[0x1DA735440](0xD000000000000011, 0x80000001D96DF7B0);
  v8 = sub_1D96DA840();
  MEMORY[0x1DA735440](v8);

  MEMORY[0x1DA735440](0xD000000000000014, 0x80000001D96DF7D0);
  v9 = sub_1D96DA840();
  MEMORY[0x1DA735440](v9);

  return 0;
}

unint64_t sub_1D96D7884()
{
  result = qword_1ECB3F418;
  if (!qword_1ECB3F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WakeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WakeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t SnapshotManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() defaultManager];
  *(v0 + 24) = sub_1D96BE270(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t SnapshotManager.init()()
{
  *(v0 + 16) = [objc_opt_self() defaultManager];
  *(v0 + 24) = sub_1D96BE270(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1D96D7A70@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D96DA440();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = [*(v3 + 16) URLsForDirectory:13 inDomains:1];
  v15 = sub_1D96DA7C0();

  if (*(v15 + 16))
  {
    (*(v20 + 16))(v10, v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v7);

    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v21[0] = v11;
    v21[1] = v12;
    v21[2] = v13;
    (*(v17 + 16))(v21, v16, v17);
    sub_1D96DA420();

    (*(v20 + 8))(v10, v7);
    return (*(v20 + 56))(a3, 0, 1, v7);
  }

  else
  {

    v19 = *(v20 + 56);

    return v19(a3, 1, 1, v7);
  }
}

id sub_1D96D7CA0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  *&v5 = *a1;
  *(&v5 + 1) = v2;
  v6 = v3;
  if (v2 < 0)
  {
    return sub_1D96D845C(&v5, a2);
  }

  else
  {
    return sub_1D96D7CEC(&v5, a2);
  }
}

id sub_1D96D7CEC(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v69 - v6;
  v8 = sub_1D96DA440();
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v76 = v15;
  v77 = v14;
  v78 = v16;
  v19 = (*(v18 + 8))(&v76, v17, v18);
  v69 = v15;
  v70 = v14;
  v76 = v15;
  v77 = v14;
  v20 = v16;
  v78 = v16;
  sub_1D96D7A70(&v76, a2, v7);
  v21 = v73;
  if ((*(v73 + 48))(v7, 1, v8) == 1)
  {
    sub_1D96BE544(v7, &qword_1ECB3F420, &unk_1D96DDA98);
    if (qword_1EDB95870 != -1)
    {
      swift_once();
    }

    v22 = sub_1D96DA5D0();
    __swift_project_value_buffer(v22, qword_1EDB969A0);
    sub_1D96D9314(a2, &v76);
    v23 = sub_1D96DA5B0();
    v24 = sub_1D96DA870();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v75 = v26;
      *v25 = 136315138;
      v27 = v19;
      v29 = v79;
      v28 = v80;
      __swift_project_boxed_opaque_existential_1(&v76, v79);
      v74[0] = v69;
      v74[1] = v70;
      v74[2] = v20;
      v30 = (*(v28 + 16))(v74, v29, v28);
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(&v76);
      v33 = sub_1D96BB28C(v30, v32, &v75);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1D96B3000, v23, v24, "_cachedOnDiskSnapshot: Could not generate URL for snapshotFilename: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1DA736010](v26, -1, -1);
      MEMORY[0x1DA736010](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    }

    return 0;
  }

  (*(v21 + 32))(v13, v7, v8);
  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v72 = v19;
  v34 = sub_1D96DA5D0();
  v35 = __swift_project_value_buffer(v34, qword_1EDB969A0);
  v36 = v71;
  (*(v21 + 16))(v71, v13, v8);
  v37 = sub_1D96DA5B0();
  v38 = sub_1D96DA870();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v70 = v35;
    v40 = v39;
    v41 = swift_slowAlloc();
    v76 = v41;
    *v40 = 136315138;
    sub_1D96D9378();
    v42 = sub_1D96DAAB0();
    v43 = v36;
    v45 = v44;
    v46 = v21;
    v47 = v13;
    v48 = *(v46 + 8);
    v48(v43, v8);
    v49 = sub_1D96BB28C(v42, v45, &v76);

    *(v40 + 4) = v49;
    v50 = v38;
    v51 = v48;
    v13 = v47;
    _os_log_impl(&dword_1D96B3000, v37, v50, "_cachedOnDiskSnapshot: Looking for snapshot at URL: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x1DA736010](v41, -1, -1);
    MEMORY[0x1DA736010](v40, -1, -1);
  }

  else
  {

    v51 = *(v21 + 8);
    v51(v36, v8);
  }

  sub_1D96DA430();
  v52 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v53 = sub_1D96DA690();

  v54 = [v52 initWithContentsOfFile_];

  v55 = v72;
  v56 = sub_1D96DA5B0();
  v57 = sub_1D96DA870();

  v58 = os_log_type_enabled(v56, v57);
  if (!v54)
  {
    if (v58)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138543362;
      *(v65 + 4) = v55;
      *v66 = v55;
      v67 = v55;
      _os_log_impl(&dword_1D96B3000, v56, v57, "_cachedOnDiskSnapshot: No snapshot found on disk for key=%{public}@", v65, 0xCu);
      sub_1D96BE544(v66, &unk_1ECB3EF10, &qword_1D96DC4A0);
      MEMORY[0x1DA736010](v66, -1, -1);
      MEMORY[0x1DA736010](v65, -1, -1);
    }

    else
    {
      v67 = v56;
      v56 = v55;
    }

    v51(v13, v8);
    return 0;
  }

  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = v13;
    v61 = v51;
    v62 = swift_slowAlloc();
    *v59 = 138543362;
    *(v59 + 4) = v55;
    *v62 = v55;
    v63 = v55;
    _os_log_impl(&dword_1D96B3000, v56, v57, "_cachedOnDiskSnapshot: Found cached snapshot on disk for key=%{public}@", v59, 0xCu);
    sub_1D96BE544(v62, &unk_1ECB3EF10, &qword_1D96DC4A0);
    v64 = v62;
    v51 = v61;
    v13 = v60;
    MEMORY[0x1DA736010](v64, -1, -1);
    MEMORY[0x1DA736010](v59, -1, -1);
  }

  else
  {
    v63 = v56;
    v56 = v55;
  }

  v51(v13, v8);
  return v54;
}

void *sub_1D96D845C(__int128 *a1, void *a2)
{
  v3 = v2;
  v25 = *a1;
  v4 = *(a1 + 2);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v26 = v25;
  v27 = v4;
  v7 = (*(v6 + 8))(&v26, v5, v6);
  swift_beginAccess();
  v8 = *(v2 + 24);
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 24);

  v10 = sub_1D96BBA60(v7);
  if ((v11 & 1) == 0)
  {

LABEL_8:
    if (qword_1EDB95870 != -1)
    {
      swift_once();
    }

    v21 = sub_1D96DA5D0();
    __swift_project_value_buffer(v21, qword_1EDB969A0);
    v15 = v7;
    v16 = sub_1D96DA5B0();
    v22 = sub_1D96DA870();

    if (os_log_type_enabled(v16, v22))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v23 = v15;
      _os_log_impl(&dword_1D96B3000, v16, v22, "_cachedInMemorySnapshot: No snapshot found in memory for key=%{public}@", v18, 0xCu);
      v12 = 0;
      goto LABEL_12;
    }

    v12 = 0;
LABEL_14:
    v7 = v16;
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v10);
  v13 = v12;

  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v14 = sub_1D96DA5D0();
  __swift_project_value_buffer(v14, qword_1EDB969A0);
  v15 = v7;
  v16 = sub_1D96DA5B0();
  v17 = sub_1D96DA870();

  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_14;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138543362;
  *(v18 + 4) = v15;
  *v19 = v15;
  v20 = v15;
  _os_log_impl(&dword_1D96B3000, v16, v17, "_cachedInMemorySnapshot: Found cached snapshot in memory for key=%{public}@", v18, 0xCu);
LABEL_12:
  sub_1D96BE544(v19, &unk_1ECB3EF10, &qword_1D96DC4A0);
  MEMORY[0x1DA736010](v19, -1, -1);
  MEMORY[0x1DA736010](v18, -1, -1);
  v15 = v16;
LABEL_15:

  return v12;
}