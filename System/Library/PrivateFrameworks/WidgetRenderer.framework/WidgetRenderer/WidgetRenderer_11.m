uint64_t sub_1DAE867C8()
{
  v1 = type metadata accessor for ActivityContentDidChangeEvent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  sub_1DAD7CB5C(qword_1EE0061B0, type metadata accessor for ActivityContentDidChangeEvent);
  sub_1DAED1F4C();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, qword_1EE0117A8);
  sub_1DAE16C40(v7, v4);
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED200C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136446210;
    sub_1DAED0B1C();
    sub_1DAD7CB5C(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
    v14 = sub_1DAED287C();
    v16 = v15;
    sub_1DAE8A814(v4, type metadata accessor for ActivityContentDidChangeEvent);
    v17 = sub_1DAD6482C(v14, v16, v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DAD61000, v10, v11, "Received activity content did change for key: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E127F100](v13, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  else
  {

    sub_1DAE8A814(v4, type metadata accessor for ActivityContentDidChangeEvent);
  }

  sub_1DAE86BF4(v7);
  return sub_1DAE8A814(v7, type metadata accessor for ActivityContentDidChangeEvent);
}

void sub_1DAE86BF4(uint64_t a1)
{
  v66 = a1;
  v2 = sub_1DAED09DC();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1DAED0A3C();
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityContentDidChangeEvent();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = v9;
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DAED0B1C();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  v62 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v62 + 16));
  v14 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v54 = v1;
  v15 = *&v1[v14];
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = sub_1DAED266C() | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v17 = ~v20;
    v16 = v15 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v15 + 64);
    v19 = v15;
  }

  v23 = 0;
  v24 = 0;
  v61 = v17;
  v25 = (v17 + 64) >> 6;
  v63 = (v10 + 8);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v26 = v23;
    v27 = v18;
    v28 = v23;
    if (!v18)
    {
      break;
    }

LABEL_12:
    v29 = (v27 - 1) & v27;
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v19 + 48) + v30);
    v32 = *(*(v19 + 56) + v30);

    if (!v31)
    {
LABEL_18:
      sub_1DAD70B20();
      os_unfair_lock_unlock(*(v62 + 16));
      if (v24)
      {
        v40 = v54;
        v41 = *&v54[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
        v42 = v53;
        sub_1DAE16C40(v66, v53);
        v43 = (*(v51 + 80) + 24) & ~*(v51 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        sub_1DAE16B60(v42, v44 + v43);
        aBlock[4] = sub_1DAE8A5EC;
        aBlock[5] = v44;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DAD751C0;
        aBlock[3] = &block_descriptor_68;
        v45 = _Block_copy(aBlock);
        v46 = v40;
        v47 = v55;
        _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
        v67 = MEMORY[0x1E69E7CC0];
        sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
        sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
        v48 = v57;
        v49 = v60;
        sub_1DAED23CC();
        MEMORY[0x1E127DD70](0, v47, v48, v45);
        _Block_release(v45);
        (*(v59 + 8))(v48, v49);
        (*(v56 + 8))(v47, v58);
      }

      return;
    }

    while (1)
    {

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v38 = v64;
      MEMORY[0x1E127CAC0](v37);
      v39 = sub_1DAED0B0C();

      (*v63)(v38, v65);
      v24 |= v39;
      v23 = v28;
      v18 = v29;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v33 = sub_1DAED270C();
      if (v33)
      {
        v35 = v34;
        v67 = v33;
        type metadata accessor for ActivityRendererSessionKey();
        swift_dynamicCast();
        v36 = aBlock[0];
        v67 = v35;
        type metadata accessor for ActivityRendererSessionSubscriptionRequest();
        swift_dynamicCast();
        v28 = v23;
        v29 = v18;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      goto LABEL_18;
    }

    v27 = *(v16 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DAE872A4(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_1DAECDC1C();
  v9 = v8;

  a4(v7, v9);
  sub_1DAD70BB4(v7, v9);
}

void *sub_1DAE8733C(void *a1)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);

  v6 = sub_1DAD84F7C(a1, v5);

  os_unfair_lock_unlock(*(v4 + 16));
  return v6;
}

void sub_1DAE873BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  if (*(a2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection))
  {
    v4 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A0, &qword_1DAEDD818);
    sub_1DAED0FFC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A8, &qword_1DAEDD820);
  v5 = sub_1DAED11DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DAED6200;
  v10 = (v9 + v8);
  *v10 = 0xD000000000000016;
  v10[1] = 0x80000001DAEDD690;
  (*(v6 + 104))(v10, *MEMORY[0x1E6993EB0], v5);

  sub_1DADBE4FC(v9);
  swift_setDeallocating();
  (*(v6 + 8))(v10, v5);
  swift_deallocClassInstance();
  sub_1DAED135C();
  v11 = *(v3 + 16);

  os_unfair_lock_unlock(v11);
}

uint64_t sub_1DAE87590(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);

  sub_1DAE7DECC(v4);
  v6 = v5;
  os_unfair_lock_unlock(*(v2 + 16));
  return v6;
}

uint64_t sub_1DAE875E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity;
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
    }

    v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);

    v6 = sub_1DAED247C();

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = *(v0 + v2);

  sub_1DAE7DECC(v8);
  v10 = v9;
LABEL_8:
  os_unfair_lock_unlock(*(v1 + 16));
  return v10;
}

uint64_t sub_1DAE87694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A290, &unk_1DAEDD808);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - v4;
  v6 = *v0;
  v10[1] = sub_1DAE7E1B0();
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAED138C();
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAECEF8C();

  sub_1DAD64B94(&unk_1EE005D88, &unk_1ECC0A290, &unk_1DAEDD808);
  v8 = sub_1DAECEF6C();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_1DAE8787C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection);
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

uint64_t sub_1DAE878D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2D8, &qword_1DAEDD838);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - v4;
  v6 = *v0;
  v12[1] = sub_1DAE7E1B0();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DAE8A5B4;
  *(v8 + 24) = v7;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2E0, &qword_1DAEDD840);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAECEF8C();

  sub_1DAD64B94(&unk_1EE005D78, &qword_1ECC0A2D8, &qword_1DAEDD838);
  v10 = sub_1DAECEF6C();
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_1DAE87B60(void *a1)
{
  a1[1] = sub_1DAD7CB5C(&qword_1EE008C88, type metadata accessor for ActivityRendererClient);
  a1[2] = sub_1DAD7CB5C(&qword_1EE008C80, type metadata accessor for ActivityRendererClient);
  result = sub_1DAD7CB5C(&unk_1EE008C90, type metadata accessor for ActivityRendererClient);
  a1[3] = result;
  return result;
}

uint64_t sub_1DAE87C14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DAE7F970(v2, v3, v4);
}

uint64_t sub_1DAE87C84(_BYTE *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8) - 8) + 80);

  return sub_1DAE7FAC0(a1, a2);
}

uint64_t sub_1DAE87D3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DAED294C();
  sub_1DAED1D9C();
  v9 = sub_1DAED297C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DAED289C() & 1) != 0)
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

    sub_1DAE88EE8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DAE87ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1DAED253C();
    v24 = v10;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAD674D4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1DADAAF4C(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1DAED227C();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1DAE880D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
    v2 = sub_1DAED253C();
    v16 = v2;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAECEE3C();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DAE88888(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
        result = sub_1DAED1C5C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DAE8832C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A430, qword_1DAEDD8D0);
    v2 = sub_1DAED253C();
    v16 = v2;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAED21EC();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DADAAF4C(v10 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1DAED227C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DAE8852C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DAED15DC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  result = sub_1DAED252C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750]);
      result = sub_1DAED1C5C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1DAE88888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  result = sub_1DAED252C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1DAECEE3C();
      sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      result = sub_1DAED1C5C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAE88B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  result = sub_1DAED252C();
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
      sub_1DAED294C();
      sub_1DAED1D9C();
      result = sub_1DAED297C();
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

unint64_t sub_1DAE88D7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DAECEE3C();
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
  sub_1DAED1C5C();
  v5 = -1 << *(a2 + 32);
  result = sub_1DAED240C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DAE88E64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DAED227C();
  v5 = -1 << *(a2 + 32);
  result = sub_1DAED240C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DAE88EE8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1DAE88B1C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DAE89404();
      goto LABEL_16;
    }

    sub_1DAE899D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DAED294C();
  sub_1DAED1D9C();
  result = sub_1DAED297C();
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

      result = sub_1DAED289C();
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
  result = sub_1DAED28EC();
  __break(1u);
  return result;
}

void *sub_1DAE89068()
{
  v1 = v0;
  v2 = sub_1DAED15DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  v7 = *v0;
  v8 = sub_1DAED251C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DAE892B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  v2 = *v0;
  v3 = sub_1DAED251C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1DAE89404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  v2 = *v0;
  v3 = sub_1DAED251C();
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

id sub_1DAE89574(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DAED251C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1DAE896B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DAED15DC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  v10 = sub_1DAED252C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750]);
      result = sub_1DAED1C5C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DAE899D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  result = sub_1DAED252C();
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
      sub_1DAED294C();

      sub_1DAED1D9C();
      result = sub_1DAED297C();
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

void sub_1DAE89C08(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1DAED247C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A318, &unk_1DAEDD868);
      v3 = sub_1DAED254C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1DAED247C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E127E1F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1DAED227C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1DAED228C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1DAED227C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1DAED228C();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DAE89EF8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    v5 = sub_1DAE8A564(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E698E5F0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &unk_1EE00A880, 0x1E698E5F0, &qword_1ECC0A318, &unk_1DAEDD868);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DAE8A084()
{
  type metadata accessor for ActivityRendererSessionKey();
  sub_1DAD7CB5C(&qword_1EE008CD8, type metadata accessor for ActivityRendererSessionKey);
  v0 = sub_1DAED1C4C();
  v2 = v1;
  v3 = sub_1DAE82244();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DAECDC0C();
    [v4 unsubscribe_];

    swift_unknownObjectRelease();
  }

  return sub_1DAD70BB4(v0, v2);
}

uint64_t sub_1DAE8A30C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for ActivityRendererSessionKey();
  sub_1DAD7CB5C(&qword_1EE008CD8, type metadata accessor for ActivityRendererSessionKey);
  v5 = sub_1DAED1C4C();
  v7 = v6;
  a4();
  return sub_1DAD70BB4(v5, v7);
}

uint64_t sub_1DAE8A564(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAD674D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAE8A5BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE8A60C()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_currentRemoteSubscriptionTypeDidChangePublisher);
  return sub_1DAECEE6C();
}

uint64_t sub_1DAE8A674(uint64_t (*a1)(void), void *a2)
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(*(v2 + 16) + *a2);
  return sub_1DAECEE6C();
}

uint64_t objectdestroy_82Tm()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DAE8A7B0()
{
  v1 = *(*(sub_1DAECF8EC() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1DAE84600(v2);
}

uint64_t sub_1DAE8A814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAE8A8A0()
{
  result = qword_1EE008CB8;
  if (!qword_1EE008CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CB8);
  }

  return result;
}

uint64_t sub_1DAE8A900()
{
  v1 = *(sub_1DAECE3DC() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v2);
  v7 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return sub_1DAE8A30C(*(v0 + 24), 0xD000000000000011, 0x80000001DAEE5520, sub_1DAE8AA20);
}

uint64_t objectdestroy_52Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1DAE8AAB0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0) - 8) + 80);

  return sub_1DAE81480(a1);
}

void sub_1DAE8AB2C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DAE80508(v2, v3);
}

uint64_t objectdestroy_121Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_1DAE8AC64(void *a1)
{
  v2 = v1;
  v4 = sub_1DAECEDEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v27 = a1;
    sub_1DAE79208(a1);
    sub_1DAE8D164(0x656E6E6F63736964, 0xEA00000000007463);
    v9 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v25 = v5;
    v26 = v4;
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v11)
    {
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E127E1F0](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v11 = sub_1DAED247C();
            goto LABEL_4;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        sub_1DAECEE2C();

        ++v12;
      }

      while (v14 != v11);
    }

    v15 = *(v2 + v9);
    *(v2 + v9) = MEMORY[0x1E69E7CC0];

    v16 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
    *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window) = 0;

    v17 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    v19 = v25;
    v18 = v26;
    (*(v25 + 16))(v8, v2 + v17, v26);
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DAD61000, v20, v21, "Will remove FBSSceneObserver.", v22, 2u);
      MEMORY[0x1E127F100](v22, -1, -1);
    }

    (*(v19 + 8))(v8, v18);
    v23 = [v27 _FBSScene];
    [v23 removeObserver_];

    if (qword_1EE006BE0 != -1)
    {
      swift_once();
    }

    sub_1DAE8F76C();
  }
}

uint64_t sub_1DAE8AFAC()
{
  v1 = sub_1DAECFC7C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground);
  v65 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  v58 = v6;
  v59 = v5;
  v56 = v8;
  v57 = &v55 - v7;
  v60 = v0;
  if (v4 == 1)
  {
    if (v65 >> 62)
    {
LABEL_35:
      v9 = sub_1DAED247C();
    }

    else
    {
      v9 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    v11 = 0;
    v12 = v65 & 0xC000000000000001;
    v13 = v65 & 0xFFFFFFFFFFFFFF8;
    v14 = &OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    *&v10 = 136446210;
    v61 = v10;
    v63 = v65 & 0xFFFFFFFFFFFFFF8;
    v64 = v9;
    v62 = v65 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x1E127E1F0](v11, v65);
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v15 = *(v65 + 8 * v11 + 32);

        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v17 = *v14;

      v18 = sub_1DAECEDCC();
      v19 = sub_1DAED200C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v66 = v21;
        *v20 = v61;
        v22 = v14;
        v23 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
        v24 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

        v25 = sub_1DAD6482C(v23, v24, &v66);

        *(v20 + 4) = v25;
        v14 = v22;
        _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Enabling RenderBox default update interval because foreground.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v26 = v21;
        v12 = v62;
        v13 = v63;
        MEMORY[0x1E127F100](v26, -1, -1);
        v27 = v20;
        v9 = v64;
        MEMORY[0x1E127F100](v27, -1, -1);
      }

      ++v11;
    }

    while (v16 != v9);
LABEL_28:

    v48 = *(v60 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
    if (v48)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_15:
    if (v65 >> 62)
    {
      v28 = sub_1DAED247C();
    }

    else
    {
      v28 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      v30 = 0;
      v31 = v65 & 0xC000000000000001;
      v32 = v65 & 0xFFFFFFFFFFFFFF8;
      v33 = &OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
      *&v29 = 136446210;
      v61 = v29;
      v63 = v65 & 0xFFFFFFFFFFFFFF8;
      v64 = v28;
      v62 = v65 & 0xC000000000000001;
      do
      {
        if (v31)
        {
          v34 = MEMORY[0x1E127E1F0](v30, v65);
          v35 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v30 >= *(v32 + 16))
          {
            goto LABEL_34;
          }

          v34 = *(v65 + 8 * v30 + 32);

          v35 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v36 = *v33;

        v37 = sub_1DAECEDCC();
        v38 = sub_1DAED200C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v66 = v40;
          *v39 = v61;
          v41 = v33;
          v42 = *(v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
          v43 = *(v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

          v44 = sub_1DAD6482C(v42, v43, &v66);

          *(v39 + 4) = v44;
          v33 = v41;
          _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Disabling RenderBox update interval because background.", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          v45 = v40;
          v31 = v62;
          v32 = v63;
          MEMORY[0x1E127F100](v45, -1, -1);
          v46 = v39;
          v28 = v64;
          MEMORY[0x1E127F100](v46, -1, -1);
        }

        ++v30;
      }

      while (v35 != v28);
    }

    v48 = *(v60 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
    if (v48)
    {
LABEL_31:
      v49 = *&v48[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
      type metadata accessor for SecureHostingController();
      sub_1DAE91FB0(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
      v50 = v48;
      v51 = v49;
      v52 = v57;
      sub_1DAECF9CC();
      sub_1DAECFBDC();
      v54 = v58;
      v53 = v59;
      (*(v58 + 16))(v56, v52, v59);
      sub_1DAECF9DC();

      return (*(v54 + 8))(v52, v53);
    }
  }

  return result;
}

void sub_1DAE8B590(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v6 = *(v139 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v122 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D20, &unk_1DAEDD960);
  v128 = *(v137 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v122 - v10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v132 = *(v143 - 8);
  v11 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v122 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F40, qword_1DAEDC5C0);
  v131 = *(v141 - 8);
  v13 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = (&v122 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v150 = &v122 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v151 = *(v18 - 8);
  v19 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v122 - v20;
  v21 = sub_1DAECEDEC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels;
  v26 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v26 >> 62)
  {
    goto LABEL_98;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v27 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_scene;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v29 = Strong;
      v134 = v18;
      v133 = v27;
      sub_1DAE79778(a1, a2);
      v30 = *(v3 + v130);
      v31 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2E0);

      v33 = v31(v32);

      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = sub_1DAED087C();
      }

      v35 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
      swift_beginAccess();
      (*(v22 + 16))(v25, v3 + v35, v21);
      v36 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
      v37 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
      v38 = *(v3 + v130);
      objc_allocWithZone(type metadata accessor for ActivitySceneContentViewController());

      v144 = v29;
      v126 = v34;
      v39 = sub_1DAE5E9D0(v25, v36, v37, v144, v38, v34);
      v40 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
      *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController) = v39;
      v41 = v39;

      v42 = v41;
      v43 = [v42 view];
      if (!v43)
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        return;
      }

      v44 = v43;
      [v43 setOpaque_];

      v129 = v42;
      v45 = [v42 view];
      if (!v45)
      {
        goto LABEL_116;
      }

      v46 = v45;
      [v45 setBackgroundColor_];

      v47 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
      v48 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
      if (v48)
      {
        [v48 setRootViewController_];
        v49 = *(v3 + v47);
        if (v49)
        {
          v50 = [v49 rootViewController];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 view];

            if (!v52)
            {
              goto LABEL_119;
            }

            v53 = [v144 _FBSScene];
            v54 = [v53 settings];

            [v54 frame];
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v62 = v61;

            [v52 setFrame_];
          }
        }
      }

      v63 = v129;
      v64 = [v129 view];
      if (!v64)
      {
        goto LABEL_117;
      }

      v65 = v64;
      v127 = v6;
      [v64 setNeedsLayout];

      v66 = [v63 view];
      if (!v66)
      {
        goto LABEL_118;
      }

      [v66 layoutIfNeeded];

      [*(v3 + v47) makeKeyAndVisible];
      KeyPath = swift_getKeyPath();
      *(&v122 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
      swift_getKeyPath();
      v68 = sub_1DAECE9EC();

      aBlock = v68;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A550, &unk_1DAEDD9E8);
      sub_1DAD64B94(&qword_1EE005C58, &unk_1ECC0A550, &unk_1DAEDD9E8);
      sub_1DAECF00C();

      v69 = v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables;
      swift_beginAccess();
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A560, &qword_1DAEDD1F0);
      v152 = sub_1DAD64B94(&qword_1EE005690, &qword_1ECC0A560, &qword_1DAEDD1F0);
      sub_1DAECEE1C();
      swift_endAccess();

      v70 = swift_getKeyPath();
      *(&v122 - 2) = MEMORY[0x1EEE9AC00](v70);
      swift_getKeyPath();
      v71 = sub_1DAECE9EC();

      aBlock = v71;
      v72 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v22 = sub_1DAED20EC();
      v161 = v22;
      v73 = sub_1DAED20AC();
      v74 = *(v73 - 8);
      v75 = *(v74 + 56);
      v76 = v150;
      v148 = v73;
      v147 = v75;
      v146 = v74 + 56;
      (v75)(v150, 1, 1);
      v154 = v3;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
      v3 = v154;
      v21 = sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
      v77 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
      v18 = v135;
      v149 = v72;
      v145 = v77;
      sub_1DAECEFBC();
      sub_1DAD64398(v76, &unk_1ECC07D20, &unk_1DAED57D0);

      a2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970);
      v25 = v134;
      sub_1DAECF00C();

      (*(v151 + 8))(v18, v25);
      swift_beginAccess();
      v151 = v69;
      sub_1DAECEE1C();
      swift_endAccess();

      if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) == 1)
      {
        v78 = [objc_allocWithZone(MEMORY[0x1E69DC690]) init];
        v79 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector;
        v80 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
        *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector) = v78;
        a2 = v78;

        v25 = &off_1DAED4000;
        if (a2)
        {
          v81 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v159 = sub_1DAE92074;
          v160 = v81;
          aBlock = MEMORY[0x1E69E9820];
          v156 = 1107296256;
          v157 = sub_1DAE093BC;
          v158 = &block_descriptor_17;
          v82 = _Block_copy(&aBlock);

          [a2 observeUserInterfaceStyleWithBlock_];
          _Block_release(v82);
        }

        v21 = *(v3 + v79);
        if (v21)
        {
          v83 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v159 = sub_1DAE9207C;
          v160 = v83;
          aBlock = MEMORY[0x1E69E9820];
          v156 = 1107296256;
          v157 = sub_1DAE093BC;
          v158 = &block_descriptor_95_0;
          a2 = _Block_copy(&aBlock);
          v21 = v21;

          [v21 observeDisplayConfigurationWithBlock_];
          _Block_release(a2);
        }

        sub_1DAE8D1DC();
        v84 = swift_unknownObjectWeakLoadStrong();
        if (v84)
        {
          v85 = v84;
          v86 = [v84 _FBSScene];

          a2 = [v86 settings];
          v87 = [a2 displayConfiguration];

          if (v87)
          {
            if ([v87 isCarDisplay])
            {
              v88 = 1;
            }

            else
            {
              v88 = [v87 isCarInstrumentsDisplay];
            }

            v123 = v87;
            a1 = [v87 identity];
            a2 = [a1 isContinuityDisplay];

            v21 = *(v3 + v130);
            if (v21 >> 62)
            {
              if (v21 < 0)
              {
                v121 = *(v3 + v130);
              }

              v89 = sub_1DAED247C();
            }

            else
            {
              v89 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v89)
            {
              v3 = 0;
              v22 = v21 & 0xC000000000000001;
              v135 = (v21 & 0xFFFFFFFFFFFFFF8);
              *&v90 = 136446466;
              v124 = v90;
              v133 = v21;
              v125 = v89;
              v134 = v21 & 0xC000000000000001;
              do
              {
                if (v22)
                {
                  v18 = MEMORY[0x1E127E1F0](v3, v21);
                  v6 = (v3 + 1);
                  if (__OFADD__(v3, 1))
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  if (v3 >= *(v135 + 2))
                  {
                    goto LABEL_97;
                  }

                  v18 = *(v21 + 8 * v3 + 32);

                  v6 = (v3 + 1);
                  if (__OFADD__(v3, 1))
                  {
LABEL_41:
                    __break(1u);
                    break;
                  }
                }

                v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay;
                v92 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
                *(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v88;
                BSDispatchQueueAssertMain();
                if (v92 != *(v25 + v18))
                {

                  v93 = sub_1DAECEDCC();
                  v94 = sub_1DAED203C();
                  if (os_log_type_enabled(v93, v94))
                  {
                    v95 = swift_slowAlloc();
                    v96 = a2;
                    v97 = v88;
                    v98 = swift_slowAlloc();
                    aBlock = v98;
                    *v95 = v124;
                    *(v95 + 4) = sub_1DAD6482C(*(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &aBlock);
                    *(v95 + 12) = 1026;
                    *(v95 + 14) = *(v25 + v18);

                    _os_log_impl(&dword_1DAD61000, v93, v94, "[%{public}s] isCarPlayDisplay changed %{BOOL,public}d)", v95, 0x12u);
                    __swift_destroy_boxed_opaque_existential_1Tm(v98);
                    v99 = v98;
                    v88 = v97;
                    a2 = v96;
                    v21 = v133;
                    MEMORY[0x1E127F100](v99, -1, -1);
                    v100 = v95;
                    v89 = v125;
                    MEMORY[0x1E127F100](v100, -1, -1);
                  }

                  else
                  {
                  }

                  sub_1DAE69B6C(10);
                  v22 = v134;
                }

                v91 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
                *(v18 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = a2;
                a1 = v18;
                sub_1DAE63360(v91);

                ++v3;
              }

              while (v6 != v89);
            }

            v3 = v154;
          }
        }
      }

      a1 = *(v3 + v130);
      if (a1 >> 62)
      {
        if (a1 < 0)
        {
          v117 = *(v3 + v130);
        }

        v6 = sub_1DAED247C();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v6)
      {
LABEL_55:

        a2 = *(v154 + v130);
        if (a2 >> 62)
        {
          if (a2 < 0)
          {
            v118 = *(v154 + v130);
          }

          a1 = sub_1DAED247C();
        }

        else
        {
          a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v108 = 0;
          v143 = a2 & 0xC000000000000001;
          v142 = (a2 & 0xFFFFFFFFFFFFFF8);
          v6 = &qword_1DAEDDA68;
          do
          {
            if (v143)
            {
              v109 = MEMORY[0x1E127E1F0](v108, a2);
              v21 = v108 + 1;
              if (__OFADD__(v108, 1))
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v108 >= *(v142 + 2))
              {
                goto LABEL_94;
              }

              v109 = *(a2 + 8 * v108 + 32);

              v21 = v108 + 1;
              if (__OFADD__(v108, 1))
              {
LABEL_66:
                __break(1u);
                break;
              }
            }

            v18 = *(v109 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher);
            aBlock = v18;
            v22 = swift_allocObject();
            swift_unknownObjectWeakInit();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A568, &qword_1DAEDDA68);
            sub_1DAD64B94(&qword_1EE005CD0, &unk_1ECC0A568, &qword_1DAEDDA68);
            v3 = a1;
            sub_1DAECF00C();

            v25 = v151;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            ++v108;
          }

          while (v21 != a1);
        }

        a2 = *(v154 + v130);
        if (a2 >> 62)
        {
          if (a2 < 0)
          {
            v119 = *(v154 + v130);
          }

          a1 = sub_1DAED247C();
        }

        else
        {
          a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v110 = 0;
          v143 = a2 & 0xC000000000000001;
          v142 = (a2 & 0xFFFFFFFFFFFFFF8);
          v6 = &unk_1DAED5850;
          do
          {
            if (v143)
            {
              v111 = MEMORY[0x1E127E1F0](v110, a2);
              v21 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (v110 >= *(v142 + 2))
              {
                goto LABEL_95;
              }

              v111 = *(a2 + 8 * v110 + 32);

              v21 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
LABEL_78:
                __break(1u);
                break;
              }
            }

            aBlock = *(v111 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher);
            v18 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
            sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
            v3 = a1;
            sub_1DAECF00C();

            v25 = v151;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            ++v110;
          }

          while (v21 != a1);
        }

        a1 = *(v154 + v130);
        if (a1 >> 62)
        {
          if (a1 < 0)
          {
            v120 = *(v154 + v130);
          }

          v3 = sub_1DAED247C();
        }

        else
        {
          v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a2 = v127;

        if (v3)
        {
          v112 = 0;
          v143 = a1 & 0xC000000000000001;
          v142 = (a1 & 0xFFFFFFFFFFFFFF8);
          v140 = (a2 + 8);
          v135 = (v128 + 8);
          v141 = a1;
          v18 = v150;
          do
          {
            if (v143)
            {
              v6 = MEMORY[0x1E127E1F0](v112, a1);
              v21 = v112 + 1;
              if (__OFADD__(v112, 1))
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v112 >= *(v142 + 2))
              {
                goto LABEL_96;
              }

              v6 = *(a1 + 8 * v112 + 32);

              v21 = v112 + 1;
              if (__OFADD__(v112, 1))
              {
LABEL_90:
                __break(1u);
                break;
              }
            }

            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
            v113 = v138;
            sub_1DAECEF0C();
            swift_endAccess();
            v114 = sub_1DAED20EC();
            aBlock = v114;
            v147(v18, 1, 1, v148);
            sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70);
            v115 = v136;
            v116 = v139;
            sub_1DAECEFBC();
            sub_1DAD64398(v18, &unk_1ECC07D20, &unk_1DAED57D0);

            (*v140)(v113, v116);
            v25 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1DAD64B94(&unk_1EE00AC20, &qword_1ECC08D20, &unk_1DAEDD960);
            v22 = v137;
            sub_1DAECF00C();

            (*v135)(v115, v22);
            a2 = v151;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            a1 = v141;

            ++v112;
          }

          while (v21 != v3);
        }

        return;
      }

      v101 = 0;
      v135 = (a1 & 0xC000000000000001);
      v134 = a1 & 0xFFFFFFFFFFFFFF8;
      v132 += 8;
      v131 += 8;
      v133 = a1;
      while (v135)
      {
        v3 = MEMORY[0x1E127E1F0](v101, a1);
        a2 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_50:
        aBlock = *(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
        sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20);
        v18 = v142;
        sub_1DAECEFAC();

        v102 = sub_1DAED20EC();
        aBlock = v102;
        v103 = v150;
        v147(v150, 1, 1, v148);
        sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8);
        v25 = v140;
        v104 = v143;
        sub_1DAECEFBC();
        sub_1DAD64398(v103, &unk_1ECC07D20, &unk_1DAED57D0);

        (*v132)(v18, v104);
        v105 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v106 = swift_allocObject();
        v106[2] = v105;
        v106[3] = v22;
        v106[4] = v3;
        sub_1DAD64B94(&qword_1EE005CF0, &qword_1ECC09F40, qword_1DAEDC5C0);

        v107 = v141;
        sub_1DAECF00C();

        (*v131)(v25, v107);
        v21 = v151;
        swift_beginAccess();
        sub_1DAECEE1C();
        swift_endAccess();

        a1 = v133;

        ++v101;
        if (a2 == v6)
        {
          goto LABEL_55;
        }
      }

      if (v101 < *(v134 + 16))
      {
        break;
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      if (!sub_1DAED247C())
      {
        return;
      }
    }

    v3 = *(a1 + 8 * v101 + 32);

    a2 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }
}

void sub_1DAE8D164(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DAE799C8(a1, a2);
  v4 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
  if (v4)
  {
    v5 = v4;
    sub_1DAE5F754();
  }

  v6 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector;
  v7 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
  if (v7)
  {
    [v7 removeAllObservers];
    v7 = *(v3 + v6);
  }

  *(v3 + v6) = 0;
}

void sub_1DAE8D1DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = v46 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = v46 - v7;
  v8 = sub_1DAECEDEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong _FBSScene];

      v51 = [v15 settings];
      if (v51)
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = [v16 userInterfaceStyle];

          v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
          swift_beginAccess();
          (*(v9 + 16))(v12, &v0[v18], v8);
          v19 = v0;
          v20 = sub_1DAECEDCC();
          v21 = sub_1DAED203C();

          v22 = os_log_type_enabled(v20, v21);
          v51 = v17;
          if (v22)
          {
            v23 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v56[0] = v50;
            *v23 = 136446466;
            v24 = *&v19[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
            v25 = *&v19[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

            v26 = sub_1DAD6482C(v24, v25, v56);

            *(v23 + 4) = v26;
            *(v23 + 12) = 2082;
            v55 = v17;
            type metadata accessor for UIUserInterfaceStyle(0);
            v27 = sub_1DAED1D4C();
            v29 = sub_1DAD6482C(v27, v28, v56);

            *(v23 + 14) = v29;
            _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] User interface style changed from host: %{public}s", v23, 0x16u);
            v30 = v50;
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v30, -1, -1);
            MEMORY[0x1E127F100](v23, -1, -1);
          }

          (*(v9 + 8))(v12, v8);
          v31 = *&v19[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
          if (v31 >> 62)
          {
LABEL_28:
            v32 = sub_1DAED247C();
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v32)
          {
            v33 = 0;
            v49 = v31 & 0xFFFFFFFFFFFFFF8;
            v50 = v31 & 0xC000000000000001;
            v46[0] = *MEMORY[0x1E697DBB8];
            v46[1] = *MEMORY[0x1E697DBA8];
            v47 = v32;
            v48 = v31;
            do
            {
              if (v50)
              {
                v39 = MEMORY[0x1E127E1F0](v33, v31);
                v40 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
LABEL_21:
                  __break(1u);
                  break;
                }
              }

              else
              {
                if (v33 >= *(v49 + 16))
                {
                  __break(1u);
                  goto LABEL_28;
                }

                v39 = *(v31 + 8 * v33 + 32);

                v40 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_21;
                }
              }

              v41 = sub_1DAECF0AC();
              v42 = *(v41 - 8);
              v43 = *(v42 + 56);
              v34 = 1;
              v44 = v54;
              v43(v54, 1, 1, v41);
              sub_1DAD64398(v44, &qword_1ECC08370, &unk_1DAED6580);
              if (v51 == 2 || v51 == 1)
              {
                (*(v42 + 104))(v54);
                v34 = 0;
              }

              v35 = v54;
              v43(v54, v34, 1, v41);
              v36 = v52;
              sub_1DAD6495C(v35, v52, &qword_1ECC08370, &unk_1DAED6580);
              v37 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
              swift_beginAccess();
              v38 = v53;
              sub_1DAD6495C(v39 + v37, v53, &qword_1ECC08370, &unk_1DAED6580);
              swift_beginAccess();
              sub_1DADE9908(v36, v39 + v37);
              swift_endAccess();
              sub_1DAE62CD8(v38);

              sub_1DAD64398(v38, &qword_1ECC08370, &unk_1DAED6580);
              sub_1DAD64398(v36, &qword_1ECC08370, &unk_1DAED6580);
              sub_1DAD64398(v35, &qword_1ECC08370, &unk_1DAED6580);
              ++v33;
              v31 = v48;
            }

            while (v40 != v47);
          }
        }

        else
        {
          v45 = v51;
        }
      }
    }
  }
}

id sub_1DAE8D838(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v139 = a2;
  v134 = a1;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v135 = v6;
  v136 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v133 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v122 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v122 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v122 - v29;
  v31 = sub_1DAED1B8C();
  v140 = *(v31 - 8);
  v32 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v138 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_59:
    (*(v140 + 56))(v30, 1, 1, v31);
    return sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  if (v34 < 0)
  {
    v121 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  }

  result = sub_1DAED247C();
  if (!result)
  {
    goto LABEL_59;
  }

LABEL_3:
  v132 = a3;
  v137 = v31;
  if ((v34 & 0xC000000000000001) != 0)
  {

    v36 = MEMORY[0x1E127E1F0](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v36 = *(v34 + 32);
  }

  v37 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v36 + v37, v30, &unk_1ECC09E40, &qword_1DAED68E0);

  v38 = v140;
  v39 = v137;
  if ((*(v140 + 48))(v30, 1, v137) == 1)
  {
    return sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  (*(v38 + 32))(v138, v30, v39);
  sub_1DAED1B7C();
  v40 = sub_1DAED1B1C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v129 = (v41 + 48);
  v128 = v42;
  v43 = v42(v19, 1, v40);
  v126 = v24;
  v130 = v40;
  v125 = v41;
  if (v43 == 1)
  {
    v44 = &unk_1ECC0A520;
    v45 = &unk_1DAED6D30;
    v46 = v19;
LABEL_11:
    sub_1DAD64398(v46, v44, v45);
    v49 = 0;
    goto LABEL_13;
  }

  sub_1DAED1ADC();
  (*(v41 + 8))(v19, v40);
  v47 = sub_1DAED175C();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v26, 1, v47) == 1)
  {
    v44 = &qword_1ECC086B0;
    v45 = &unk_1DAED84D0;
    v46 = v26;
    goto LABEL_11;
  }

  v50 = sub_1DAED173C();
  v51 = v26;
  v49 = v50;
  (*(v48 + 8))(v51, v47);
LABEL_13:
  ObjectType = swift_getObjectType();
  v53 = sub_1DAECE93C();
  v131 = ObjectType;
  if (v53)
  {
    v54 = v53;
    if (v49)
    {
      sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
      v55 = v49;
      v56 = sub_1DAED228C();

      if (v56)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  else if (!v49)
  {
LABEL_31:
    sub_1DAED1B7C();
    v82 = v130;
    if (v128(v17, 1, v130) == 1)
    {
      sub_1DAD64398(v17, &unk_1ECC0A520, &unk_1DAED6D30);
      v83 = 0;
      v85 = v136;
      v84 = v137;
    }

    else
    {
      v129 = v4;
      v86 = v49;
      v87 = v126;
      sub_1DAED1B0C();
      (*(v125 + 8))(v17, v82);
      v88 = sub_1DAED175C();
      v89 = *(v88 - 8);
      v90 = (*(v89 + 48))(v87, 1, v88);
      v85 = v136;
      v84 = v137;
      if (v90 == 1)
      {
        sub_1DAD64398(v87, &qword_1ECC086B0, &unk_1DAED84D0);
        v83 = 0;
      }

      else
      {
        v83 = sub_1DAED173C();
        (*(v89 + 8))(v87, v88);
      }

      v49 = v86;
      v4 = v129;
    }

    v91 = sub_1DAECE99C();
    v92 = v135;
    if (v91)
    {
      v93 = v91;
      if (v83)
      {
        sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
        v94 = v83;
        v95 = sub_1DAED228C();

        if (v95)
        {

LABEL_55:
          return (*(v140 + 8))(v138, v84);
        }
      }

      else
      {
      }
    }

    else if (!v83)
    {
      goto LABEL_55;
    }

    v96 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
    swift_beginAccess();
    v97 = &v4[v96];
    v98 = v133;
    (*(v85 + 16))(v133, v97, v92);
    v99 = v85;
    v100 = v83;
    v101 = v4;
    v102 = sub_1DAECEDCC();
    v103 = sub_1DAED203C();

    if (os_log_type_enabled(v102, v103))
    {
      v130 = v49;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v141 = v105;
      *v104 = 136446466;
      v106 = *&v101[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v107 = *&v101[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v108 = sub_1DAD6482C(v106, v107, &v141);

      *(v104 + 4) = v108;
      *(v104 + 12) = 2082;
      if (v83)
      {
        v109 = [v100 description];
        v110 = sub_1DAED1CEC();
        v112 = v111;

        v92 = v135;
      }

      else
      {
        v110 = 7104878;
        v112 = 0xE300000000000000;
      }

      v113 = sub_1DAD6482C(v110, v112, &v141);

      *(v104 + 14) = v113;
      _os_log_impl(&dword_1DAD61000, v102, v103, "[%{public}s] Updating client text color: %{public}s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v105, -1, -1);
      MEMORY[0x1E127F100](v104, -1, -1);

      (*(v136 + 8))(v133, v92);
      v49 = v130;
    }

    else
    {

      (*(v99 + 8))(v98, v92);
    }

    v114 = v100;
    sub_1DAECE9AC();
    v115 = v132;
    v116 = [v132 animationFence];
    if (v116)
    {
      v117 = v116;

      return (*(v140 + 8))(v138, v137);
    }

    result = swift_unknownObjectWeakLoadStrong();
    v84 = v137;
    if (result)
    {
      v118 = result;
      v119 = [result _synchronizedDrawingFence];

      [v115 setAnimationFence_];
      result = [objc_opt_self() settingsWithDuration_];
      if (result)
      {
        v120 = result;
        [v115 setAnimationSettings_];

        goto LABEL_55;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v57 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v58 = v49;
  v59 = v135;
  v60 = v136;
  (*(v136 + 16))(v12, &v4[v57], v135);
  v61 = v58;
  v62 = v4;
  v63 = sub_1DAECEDCC();
  v64 = sub_1DAED203C();
  v127 = v61;

  v65 = v64;
  v66 = os_log_type_enabled(v63, v64);
  v124 = v62;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v142[0] = v123;
    *v67 = 136446466;
    v68 = *&v62[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v69 = *&v62[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v70 = sub_1DAD6482C(v68, v69, v142);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2082;
    v49 = v58;
    if (v58)
    {
      v71 = [v127 description];
      v72 = sub_1DAED1CEC();
      v74 = v73;

      v49 = v58;
    }

    else
    {
      v72 = 7104878;
      v74 = 0xE300000000000000;
    }

    v75 = sub_1DAD6482C(v72, v74, v142);

    *(v67 + 14) = v75;
    _os_log_impl(&dword_1DAD61000, v63, v65, "[%{public}s] Updating client background tint color: %{public}s", v67, 0x16u);
    v76 = v123;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v76, -1, -1);
    MEMORY[0x1E127F100](v67, -1, -1);

    (*(v136 + 8))(v12, v135);
  }

  else
  {

    (*(v60 + 8))(v12, v59);
    v49 = v58;
  }

  v77 = v132;
  v78 = v127;
  sub_1DAECE94C();
  v79 = [v77 animationFence];
  if (v79)
  {
LABEL_30:

    goto LABEL_31;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v80 = result;
  v81 = [result _synchronizedDrawingFence];

  [v77 setAnimationFence_];
  result = [objc_opt_self() settingsWithDuration_];
  if (result)
  {
    v79 = result;
    [v77 setAnimationSettings_];
    goto LABEL_30;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

id sub_1DAE8E634(uint64_t a1, uint64_t a2, void *a3)
{
  v119 = a1;
  v120 = a2;
  v5 = sub_1DAECEDEC();
  v114 = *(v5 - 8);
  v115 = v5;
  v6 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECE73C();
  v121 = *(v8 - 8);
  v122 = v8;
  v9 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A518, &qword_1DAEDD950);
  v11 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v104 - v12;
  v13 = sub_1DAED17AC();
  v116 = *(v13 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v104 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v104 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A530, &qword_1DAEDD958);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v110 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v107 = &v104 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v113 = &v104 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v109 = &v104 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v104 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v123 = &v104 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v104 - v43;
  v45 = sub_1DAED1B8C();
  v124 = *(v45 - 8);
  v125 = v45;
  v46 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v3;
  v49 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (!(v49 >> 62))
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_34:
    (*(v124 + 56))(v44, 1, 1, v125);
    return sub_1DAD64398(v44, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  result = sub_1DAED247C();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_3:
  v105 = a3;
  if ((v49 & 0xC000000000000001) != 0)
  {

    v51 = MEMORY[0x1E127E1F0](0, v49);
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v51 = *(v49 + 32);
  }

  v52 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v51 + v52, v44, &unk_1ECC09E40, &qword_1DAED68E0);

  v54 = v124;
  v53 = v125;
  if ((*(v124 + 48))(v44, 1, v125) != 1)
  {
    (*(v54 + 32))(v48, v44, v53);
    v104 = v48;
    sub_1DAED1B7C();
    v55 = sub_1DAED1B1C();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v19, 1, v55) == 1)
    {
      sub_1DAD64398(v19, &unk_1ECC0A520, &unk_1DAED6D30);
      v57 = 1;
    }

    else
    {
      sub_1DAED1ACC();
      (*(v56 + 8))(v19, v55);
      v57 = 0;
    }

    v59 = v122;
    v58 = v123;
    v61 = v117;
    v60 = v118;
    v62 = v116;
    (*(v116 + 56))(v26, v57, 1, v13);
    sub_1DAD6495C(v26, v24, &qword_1ECC08698, &qword_1DAED84E0);
    if ((*(v62 + 48))(v24, 1, v13) == 1)
    {
      sub_1DAD64398(v26, &qword_1ECC08698, &qword_1DAED84E0);
      v63 = v121;
      (*(v121 + 56))(v58, 1, 1, v59);
    }

    else
    {
      v64 = v108;
      (*(v62 + 32))(v108, v24, v13);
      sub_1DAED179C();
      sub_1DAECE72C();
      (*(v62 + 8))(v64, v13);
      sub_1DAD64398(v26, &qword_1ECC08698, &qword_1DAED84E0);
      v63 = v121;
    }

    ObjectType = swift_getObjectType();
    sub_1DAECE8EC();
    v66 = *(v61 + 48);
    sub_1DAD6495C(v39, v60, &unk_1ECC0A530, &qword_1DAEDD958);
    sub_1DAD6495C(v58, v60 + v66, &unk_1ECC0A530, &qword_1DAEDD958);
    v67 = *(v63 + 48);
    if (v67(v60, 1, v59) == 1)
    {
      sub_1DAD64398(v39, &unk_1ECC0A530, &qword_1DAEDD958);
      if (v67(v60 + v66, 1, v59) == 1)
      {
        sub_1DAD64398(v60, &unk_1ECC0A530, &qword_1DAEDD958);
LABEL_32:
        sub_1DAD64398(v58, &unk_1ECC0A530, &qword_1DAEDD958);
        return (*(v124 + 8))(v104, v125);
      }
    }

    else
    {
      v68 = v109;
      sub_1DAD6495C(v60, v109, &unk_1ECC0A530, &qword_1DAEDD958);
      if (v67(v60 + v66, 1, v59) != 1)
      {
        v118 = ObjectType;
        v89 = v121;
        v90 = v60 + v66;
        v91 = v106;
        (*(v121 + 32))(v106, v90, v59);
        sub_1DAE91FB0(&unk_1EE005EA0, MEMORY[0x1E6989B68]);
        v92 = sub_1DAED1CAC();
        v93 = *(v89 + 8);
        v93(v91, v122);
        sub_1DAD64398(v39, &unk_1ECC0A530, &qword_1DAEDD958);
        v93(v68, v122);
        v58 = v123;
        sub_1DAD64398(v60, &unk_1ECC0A530, &qword_1DAEDD958);
        if (v92)
        {
          goto LABEL_32;
        }

LABEL_19:
        v69 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
        v70 = v111;
        swift_beginAccess();
        v72 = v114;
        v71 = v115;
        v73 = v112;
        (*(v114 + 16))(v112, &v70[v69], v115);
        v74 = v113;
        sub_1DAD6495C(v58, v113, &unk_1ECC0A530, &qword_1DAEDD958);
        v75 = v70;
        v76 = sub_1DAECEDCC();
        v77 = sub_1DAED203C();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v126 = v79;
          *v78 = 136446466;
          v80 = *&v75[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v81 = *&v75[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

          v82 = sub_1DAD6482C(v80, v81, &v126);
          v83 = v122;

          *(v78 + 4) = v82;
          *(v78 + 12) = 2082;
          v84 = v74;
          v85 = v107;
          sub_1DAD6495C(v84, v107, &unk_1ECC0A530, &qword_1DAEDD958);
          if (v67(v85, 1, v83) == 1)
          {
            sub_1DAD64398(v85, &unk_1ECC0A530, &qword_1DAEDD958);
            v86 = 0xE300000000000000;
            v87 = 7104878;
          }

          else
          {
            v94 = sub_1DAECE71C();
            v95 = v83;
            v87 = v94;
            v86 = v96;
            (*(v121 + 8))(v85, v95);
          }

          v97 = v112;
          v88 = v110;
          sub_1DAD64398(v113, &unk_1ECC0A530, &qword_1DAEDD958);
          v98 = sub_1DAD6482C(v87, v86, &v126);

          *(v78 + 14) = v98;
          _os_log_impl(&dword_1DAD61000, v76, v77, "[%{public}s] Updating client supported family: %{public}s", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v79, -1, -1);
          MEMORY[0x1E127F100](v78, -1, -1);

          (*(v114 + 8))(v97, v115);
        }

        else
        {

          sub_1DAD64398(v74, &unk_1ECC0A530, &qword_1DAEDD958);
          (*(v72 + 8))(v73, v71);
          v88 = v110;
        }

        v58 = v123;
        sub_1DAD6495C(v123, v88, &unk_1ECC0A530, &qword_1DAEDD958);
        sub_1DAECE8FC();
        v99 = v105;
        v100 = [v105 animationFence];
        if (v100)
        {

          goto LABEL_32;
        }

        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v101 = result;
          v102 = [result _synchronizedDrawingFence];

          [v99 setAnimationFence_];
          result = [objc_opt_self() settingsWithDuration_];
          if (result)
          {
            v103 = result;
            [v99 setAnimationSettings_];

            goto LABEL_32;
          }

          goto LABEL_40;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      sub_1DAD64398(v39, &unk_1ECC0A530, &qword_1DAEDD958);
      (*(v121 + 8))(v68, v59);
    }

    v118 = ObjectType;
    sub_1DAD64398(v60, &qword_1ECC0A518, &qword_1DAEDD950);
    goto LABEL_19;
  }

  return sub_1DAD64398(v44, &unk_1ECC09E40, &qword_1DAED68E0);
}

void sub_1DAE8F440()
{
  v1 = v0;
  v2 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v4;
    os_unfair_lock_unlock((v2 + 24));

    v5 = v1[2];
    if (v5 < v4)
    {

      v10 = sub_1DAECEDCC();
      v11 = sub_1DAED201C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136446722;
        *(v12 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v18);
        *(v12 + 12) = 2050;
        *(v12 + 14) = v4;
        *(v12 + 22) = 2050;
        *(v12 + 24) = v5;

        _os_log_impl(&dword_1DAD61000, v10, v11, "Count of %{public}s increased to %{public}ld. This exceeds the maximum of %{public}ld", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1E127F100](v13, -1, -1);
        MEMORY[0x1E127F100](v12, -1, -1);
      }

      else
      {
      }

      v14 = v1[6];
      v15 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v14);
      v18 = v4;
      v16 = sub_1DAED287C();
      (*(v15 + 8))(0x7974697669746341, 0xED0000656E656353, 0xD00000000000001ALL, 0x80000001DAEE5660, 0xD00000000000001ALL, 0x80000001DAEE5660, v16, v17, v14, v15);
    }

    else
    {
      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED203C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v18 = v9;
        *v8 = 136446466;
        *(v8 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v18);
        *(v8 + 12) = 2050;
        *(v8 + 14) = v4;
        _os_log_impl(&dword_1DAD61000, v6, v7, "Count of %{public}s increased to %{public}ld", v8, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1E127F100](v9, -1, -1);
        MEMORY[0x1E127F100](v8, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_1DAE8F76C()
{
  v1 = *(v0 + qword_1EE011828);
  v7 = *v0;

  os_unfair_lock_lock((v1 + 24));
  sub_1DAE92EA0((v1 + 16), &v8);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v8;

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v8);
    *(v5 + 12) = 2050;
    *(v5 + 14) = v2;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Count of %{public}s decreased to %{public}ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

uint64_t sub_1DAE8F8FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a1 - 1;
  if (*a1 < 1)
  {
    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED201C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v17);
      _os_log_impl(&dword_1DAD61000, v5, v6, "Attempted decrement of zero %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    v9 = a2[6];
    v10 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v9);
    v11 = sub_1DAED29FC();
    v13 = v12;
    v17 = v2;
    v14 = sub_1DAED287C();
    (*(v10 + 8))(v11, v13, 0xD000000000000018, 0x80000001DAEE4F70, 0xD000000000000018, 0x80000001DAEE4F70, v14, v15, v9, v10);
  }

  else
  {
    *a1 = v3;
    return v3;
  }

  return v2;
}

uint64_t sub_1DAE8FAF0()
{
  v0 = sub_1DAECEDEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE011718);
  (*(v1 + 16))(v4, v5, v0);
  type metadata accessor for BugReporter();
  v6 = swift_allocObject();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A508, &unk_1DAEDD940);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  v11 = sub_1DAE9133C(30, v4, v6, v10);

  qword_1EE006BF0 = v11;
  return result;
}

void sub_1DAE8FD50(double *a1)
{
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
    v14 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
    v15 = &selRef__registerSceneActionsHandlerArray_forKey_;
    if (v14)
    {
      v16 = Strong;
      v17 = [v14 rootViewController];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 view];

        if (!v19)
        {
          __break(1u);
          goto LABEL_19;
        }

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v49.origin.x = v7;
        v49.origin.y = v8;
        v49.size.width = v9;
        v49.size.height = v10;
        v50.origin.x = v21;
        v50.origin.y = v23;
        v50.size.width = v25;
        v50.size.height = v27;
        if (CGRectEqualToRect(v49, v50))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v28 = Strong;
    }

    v29 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v12[v29], v2);
    v30 = v12;
    v31 = sub_1DAECEDCC();
    v32 = sub_1DAED203C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v2;
      v35 = v34;
      v48 = v34;
      *v33 = 136446466;
      v47 = v13;
      v36 = *&v30[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v37 = *&v30[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v38 = sub_1DAD6482C(v36, v37, &v48);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_1DAED224C();
      v41 = sub_1DAD6482C(v39, v40, &v48);
      v15 = &selRef__registerSceneActionsHandlerArray_forKey_;

      *(v33 + 14) = v41;
      v13 = v47;
      _os_log_impl(&dword_1DAD61000, v31, v32, "[%{public}s] Frame did change: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);

      (*(v3 + 8))(v6, v46);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v42 = *&v12[v13];
    v43 = v42;

    if (!v42)
    {
      goto LABEL_16;
    }

    v44 = [v43 v15[76]];

    if (!v44)
    {
      goto LABEL_16;
    }

    v16 = [v44 view];

    if (v16)
    {
      [v16 setFrame_];
LABEL_15:

LABEL_16:
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1DAE90144(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1DAED1CAC() & 1;
}

void sub_1DAE901A0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
        MEMORY[0x1EEE9AC00](v6);
        sub_1DAECE9DC();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1DAE90294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAE8D1DC();
  }
}

void sub_1DAE902E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 _FBSScene];

      v5 = [v4 settings];
      v6 = [v5 displayConfiguration];

      if (v6)
      {
        if ([v6 isCarDisplay])
        {
          v27 = 1;
        }

        else
        {
          v27 = [v6 isCarInstrumentsDisplay];
        }

        v7 = [v6 identity];
        v8 = [v7 isContinuityDisplay];

        v9 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
        v25 = v6;
        v26 = v1;
        if (v9 >> 62)
        {
LABEL_27:
          v10 = sub_1DAED247C();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v27;
        if (v10)
        {
          v12 = 0;
          v29 = v9 & 0xFFFFFFFFFFFFFF8;
          v30 = v9 & 0xC000000000000001;
          v28 = v9;
          do
          {
            if (v30)
            {
              v14 = MEMORY[0x1E127E1F0](v12, v9);
              v15 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
LABEL_22:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v12 >= *(v29 + 16))
              {
                __break(1u);
                goto LABEL_27;
              }

              v14 = *(v9 + 8 * v12 + 32);

              v15 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                goto LABEL_22;
              }
            }

            v16 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay;
            v17 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
            *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v11;
            BSDispatchQueueAssertMain();
            if (v17 != *(v14 + v16))
            {
              v18 = v10;
              v19 = v8;

              v20 = sub_1DAECEDCC();
              v21 = sub_1DAED203C();
              if (os_log_type_enabled(v20, v21))
              {
                v22 = swift_slowAlloc();
                v23 = swift_slowAlloc();
                v31 = v23;
                *v22 = 136446466;
                *(v22 + 4) = sub_1DAD6482C(*(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v31);
                *(v22 + 12) = 1026;
                *(v22 + 14) = *(v14 + v16);

                _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] isCarPlayDisplay changed %{BOOL,public}d)", v22, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v23);
                MEMORY[0x1E127F100](v23, -1, -1);
                v24 = v22;
                v11 = v27;
                MEMORY[0x1E127F100](v24, -1, -1);
              }

              else
              {
              }

              sub_1DAE69B6C(10);
              v8 = v19;
              v10 = v18;
              v9 = v28;
            }

            v13 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
            *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = v8;
            sub_1DAE63360(v13);

            ++v12;
          }

          while (v15 != v10);
        }

        v1 = v26;
      }
    }
  }
}

void sub_1DAE9067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_1DAED1B8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
      v20 = v30;
      swift_beginAccess();
      sub_1DAD6495C(v20 + v19, v7, &unk_1ECC09E40, &qword_1DAED68E0);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_1DAD64398(v7, &unk_1ECC09E40, &qword_1DAED68E0);
      }

      else
      {
        v27 = *(v9 + 32);
        v27(v14, v7, v8);
        v29 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
        (*(v9 + 16))(v12, v14, v8);
        v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
        v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = v9;
        v23 = swift_allocObject();
        *(v23 + 16) = v18;
        v27((v23 + v21), v12, v8);
        *(v23 + v22) = v16;
        *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
        v24 = v18;
        v25 = v16;

        sub_1DAED22FC();

        (*(v28 + 8))(v14, v8);
      }
    }

    else
    {
    }
  }
}

void sub_1DAE909B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
  sub_1DAECE9DC();
}

uint64_t sub_1DAE90A48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    sub_1DAED22FC();
  }

  return result;
}

uint64_t sub_1DAE90B04()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    sub_1DAED22FC();
  }

  return result;
}

void sub_1DAE90BC0()
{
  v2 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    sub_1DAECE9DC();
  }

  else
  {
  }
}

void sub_1DAE90C9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_getKeyPath();
      sub_1DAECE9BC();

      if (v5 != 2 && (v5 & 1) != 0)
      {
        v4 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
        MEMORY[0x1EEE9AC00](v4);
        sub_1DAECE9DC();

        return;
      }
    }
  }
}

uint64_t sub_1DAE90DBC()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED200C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DAD61000, v7, v8, "Default implementation, returning an empty root view", v9, 2u);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_1DAED087C();
}

void sub_1DAE91184()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables);

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
}

id sub_1DAE911E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneDelegate()
{
  result = qword_1EE006BC0;
  if (!qword_1EE006BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE9133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = type metadata accessor for BugReporter();
  v20 = &protocol witness table for BugReporter;
  *&v18 = a3;
  v8 = qword_1EE011828;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A510, qword_1DAEDD4F8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(a4 + v8) = v9;
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v17);
    *(v12 + 12) = 2050;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_1DAD61000, v10, v11, "counter created for %{public}s with maximum %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E127F100](v13, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  *(a4 + 16) = a1;
  sub_1DAD657D8(&v18, a4 + 24);
  v14 = qword_1EE011830;
  v15 = sub_1DAECEDEC();
  (*(*(v15 - 8) + 32))(a4 + v14, a2, v15);
  return a4;
}

void sub_1DAE9150C(void *a1)
{
  v2 = v1;
  v4 = sub_1DAECEDEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = [objc_allocWithZone(type metadata accessor for WidgetWindow()) initWithWindowScene_];
  v11 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window) = v10;
  v12 = v10;

  [v12 setBackgroundColor_];
  sub_1DAE7A700(a1);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v13, v4);
    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DAD61000, v14, v15, "Will add FBSSceneObserver.", v16, 2u);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v17 = [a1 _FBSScene];
    [v17 addObserver_];

    if (qword_1EE006BE0 != -1)
    {
      swift_once();
    }

    sub_1DAE8F440();
  }
}

void sub_1DAE917A8(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v64 = sub_1DAECDBFC();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DAECEDEC();
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[1] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAED1F9C();
    a1 = v69[2];
    v14 = v69[3];
    v15 = v69[4];
    v16 = v69[5];
    v17 = v69[6];
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = (a1 + 56);
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = (v20 & *(a1 + 56));

    v16 = 0;
  }

  v58 = v15;
  v21 = (v15 + 64) >> 6;
  v62 = (v11 + 8);
  v63 = (v11 + 16);
  v59 = (v8 + 48);
  v55 = (v8 + 32);
  v53 = (v8 + 16);
  v60 = (v8 + 56);
  v54 = (v8 + 8);
  while ((a1 & 0x8000000000000000) != 0)
  {
    v27 = sub_1DAED24BC();
    if (!v27 || (v68 = v27, sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0), swift_dynamicCast(), v26 = v69[0], v24 = v16, v25 = v17, !v69[0]))
    {
LABEL_42:
      sub_1DAD70B20();
      return;
    }

LABEL_19:
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      sub_1DAE87D18(v69, v26);

      goto LABEL_9;
    }

    v28 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    v29 = v67;
    swift_beginAccess();
    (*v63)(v65, v29 + v28, v66);
    v30 = sub_1DAECEDCC();
    v31 = sub_1DAED203C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DAD61000, v30, v31, "Will handle Double Tap BSAction.", v32, 2u);
      MEMORY[0x1E127F100](v32, -1, -1);
    }

    (*v62)(v65, v66);
    v33 = *(v67 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v50 = *(v67 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
      }

      v34 = sub_1DAED247C();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {

      goto LABEL_9;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {

      v35 = MEMORY[0x1E127E1F0](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v35 = *(v33 + 32);
    }

    if (sub_1DAED181C())
    {
      goto LABEL_31;
    }

    v36 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
    swift_beginAccess();
    sub_1DAD6495C(v35 + v36, v7, &unk_1ECC09EC0, &qword_1DAED7970);
    if ((*v59)(v7, 1, v64) == 1)
    {
      sub_1DAD64398(v7, &unk_1ECC09EC0, &qword_1DAED7970);
LABEL_31:
      v37 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      if (v37)
      {
        v38 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
        LOBYTE(v69[0]) = 0;
        v39 = *v60;
        v57 = a1;
        v40 = v7;
        v41 = v61;
        v39(v61, 1, 1, v64);

        v37(v69, v41);
        sub_1DAE5DF28(v37);

        v42 = v41;
        v7 = v40;
        a1 = v57;
        sub_1DAD64398(v42, &unk_1ECC09EC0, &qword_1DAED7970);
      }

      else
      {
      }

      goto LABEL_9;
    }

    v43 = v56;
    (*v55)(v56, v7, v64);
    v44 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
    if (v44)
    {
      v57 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
      LOBYTE(v69[0]) = 1;
      v45 = *v53;
      v52 = v7;
      v46 = v61;
      v47 = v43;
      v48 = v64;
      v45(v61, v47, v64);
      (*v60)(v46, 0, 1, v48);

      v44(v69, v46);
      sub_1DAE5DF28(v44);

      v49 = v46;
      v7 = v52;
      sub_1DAD64398(v49, &unk_1ECC09EC0, &qword_1DAED7970);
      (*v54)(v56, v64);
    }

    else
    {

      (*v54)(v43, v64);
    }

LABEL_9:
    v16 = v24;
    v17 = v25;
  }

  v22 = v16;
  v23 = v17;
  v24 = v16;
  if (v17)
  {
LABEL_15:
    v25 = (v23 - 1) & v23;
    v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v24 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_42;
    }

    v23 = v14[v24];
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1DAE91FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_hashTm(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1DAED1C7C();
}

void *sub_1DAE92084(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  sub_1DAE920B4(a1, a2);
  v5 = v3;
  return v3;
}

uint64_t sub_1DAE920B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (v10 >> 62)
  {
    result = sub_1DAED247C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E127E1F0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v13 = v31;
  ObjectType = swift_getObjectType();
  v15 = sub_1DAECE97C();
  if (v15 == 2 || ((v13 ^ v15) & 1) != 0)
  {
    v29 = v13;
    v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
    swift_beginAccess();
    (*(v6 + 16))(v9, &v3[v16], v5);
    v17 = v3;
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED203C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28[1] = ObjectType;
      v21 = v20;
      v22 = swift_slowAlloc();
      v28[2] = a2;
      v23 = v22;
      v30 = v22;
      *v21 = 136446466;
      v24 = &v17[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v28[0] = v6;
      v25 = *&v17[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v26 = *(v24 + 1);

      v27 = sub_1DAD6482C(v25, v26, &v30);

      *(v21 + 4) = v27;
      *(v21 + 12) = 1026;
      *(v21 + 14) = v29;
      _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Updating base content touched down: %{BOOL,public}d", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E127F100](v23, -1, -1);
      MEMORY[0x1E127F100](v21, -1, -1);

      (*(v28[0] + 8))(v9, v5);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    sub_1DAECE98C();
  }
}

void *sub_1DAE92480(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  sub_1DAE8D838(a1, a2, v3);
  v4 = v3;
  return v3;
}

void sub_1DAE924B4()
{
  v1 = *(sub_1DAED1B8C() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DAE909B8();
}

id sub_1DAE92550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAE92588(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  v4 = v3;
  return v3;
}

id sub_1DAE92588(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v89 = a7;
  v90 = a6;
  v96 = a4;
  v97 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v86 - v11;
  v12 = sub_1DAECEDEC();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - v16;
  v18 = sub_1DAED187C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v86 - v24;
  sub_1DAED1B6C();
  sub_1DAED186C();
  v26 = *(v19 + 8);
  v26(v25, v18);
  sub_1DAED1B6C();
  sub_1DAED186C();
  v26(v23, v18);
  sub_1DAED1B6C();
  sub_1DAED185C();
  v26(v25, v18);
  v27 = a1;
  v28 = objc_allocWithZone(sub_1DAECE79C());
  v29 = sub_1DAECE78C();
  ObjectType = swift_getObjectType();
  v30 = sub_1DAECE90C();
  if (v30)
  {
    v31 = v30;
    v32 = v29;
    v33 = sub_1DAED228C();

    if (v33)
    {
      v35 = v93;
      v34 = v94;
      goto LABEL_13;
    }
  }

  else
  {
    v36 = v29;
  }

  v37 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  v38 = v96;
  swift_beginAccess();
  v35 = v93;
  v34 = v94;
  v39 = v17;
  (*(v93 + 16))(v17, &v38[v37], v94);
  v40 = v29;
  v41 = v38;
  v42 = sub_1DAECEDCC();
  v43 = sub_1DAED203C();

  v44 = os_log_type_enabled(v42, v43);
  v88 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v86 = v39;
    v47 = v46;
    v48 = swift_slowAlloc();
    v87 = a2;
    v49 = v48;
    v99 = v48;
    *v45 = 136446466;
    v50 = &v41[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v51 = v29;
    v52 = v27;
    v53 = *v50;
    v54 = v50[1];

    v55 = sub_1DAD6482C(v53, v54, &v99);
    v27 = v52;
    v34 = v94;

    *(v45 + 4) = v55;
    v29 = v51;
    *(v45 + 12) = 2114;
    *(v45 + 14) = v40;
    *v47 = v40;
    v56 = v40;
    _os_log_impl(&dword_1DAD61000, v42, v43, "[%{public}s] Updating client resolved metrics: %{public}@", v45, 0x16u);
    sub_1DAD64398(v47, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v57 = v49;
    a2 = v87;
    MEMORY[0x1E127F100](v57, -1, -1);
    v58 = v45;
    v35 = v93;
    MEMORY[0x1E127F100](v58, -1, -1);

    (*(v35 + 8))(v86, v34);
  }

  else
  {

    (*(v35 + 8))(v39, v34);
  }

  sub_1DAECE91C();
  v59 = [v97 animationFence];
  if (v59)
  {
    v32 = v59;
    goto LABEL_13;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v61 = result;
    v62 = [result _synchronizedDrawingFence];

    [v97 setAnimationFence_];
    result = [objc_opt_self() settingsWithDuration_];
    if (result)
    {
      v32 = result;
      [v97 setAnimationSettings_];
LABEL_13:

      v63 = v97;
      sub_1DAE8E634(v27, a2, v97);
      sub_1DAE8D838(v27, a2, v63);
      if ((sub_1DAECE95C() & 1) == 0)
      {
        v94 = v29;
        v64 = v91;
        sub_1DAE62330(v91);
        v65 = sub_1DAED1BEC();
        v66 = *(v65 - 8);
        if ((*(v66 + 48))(v64, 1, v65) == 1)
        {
          sub_1DAD64398(v64, &qword_1ECC08D70, &unk_1DAED8710);
LABEL_22:
          v72 = v92;
          v29 = v94;
          goto LABEL_23;
        }

        v67 = sub_1DAED1BBC();
        v68 = v64;
        v69 = v67;
        v71 = v70;
        (*(v66 + 8))(v68, v65);
        swift_getKeyPath();
        sub_1DAECE9BC();

        if (!v100)
        {

          goto LABEL_22;
        }

        swift_getKeyPath();
        sub_1DAECE9BC();

        v29 = v94;
        if (v100)
        {
          v72 = v92;
          if (v99 == v69 && v100 == v71)
          {

LABEL_23:
            v73 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
            v74 = v96;
            swift_beginAccess();
            (*(v35 + 16))(v72, &v74[v73], v34);
            v75 = v74;
            v76 = sub_1DAECEDCC();
            v77 = sub_1DAED203C();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v98 = v79;
              *v78 = 136446210;
              v80 = &v75[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
              v81 = *&v75[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
              v82 = *(v80 + 1);

              v83 = sub_1DAD6482C(v81, v82, &v98);

              *(v78 + 4) = v83;
              _os_log_impl(&dword_1DAD61000, v76, v77, "[%{public}s] Notifying client that archive is ready.", v78, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v79);
              v84 = v79;
              v29 = v94;
              MEMORY[0x1E127F100](v84, -1, -1);
              MEMORY[0x1E127F100](v78, -1, -1);

              (*(v35 + 8))(v92, v34);
            }

            else
            {

              (*(v35 + 8))(v72, v34);
            }

            sub_1DAECE96C();
            goto LABEL_27;
          }

          v85 = sub_1DAED289C();

          if (v85)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

LABEL_27:

      return v97;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE92EA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  result = sub_1DAE8F8FC(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

WidgetRenderer::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

void sub_1DAE92F4C()
{
  qword_1ECC0A588 = 0xD00000000000001FLL;
  unk_1ECC0A590 = 0x80000001DAEE2290;
  qword_1ECC0A598 = 0xD00000000000001FLL;
  unk_1ECC0A5A0 = 0x80000001DAEE2290;
}

uint64_t static XPCInterfaceDomain.widgetRenderer.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC07A58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ECC0A590;
  v2 = qword_1ECC0A598;
  v3 = unk_1ECC0A5A0;
  *a1 = qword_1ECC0A588;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t ActivityRendererSessionKey.__allocating_init(contentKey:)(uint64_t a1)
{
  v3 = sub_1DAECDD3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  sub_1DAECDD2C();
  v11 = sub_1DAECDCFC();
  v13 = v12;
  (*(v4 + 8))(v7, v3);
  *(v10 + 16) = v11;
  *(v10 + 24) = v13;
  v14 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v15 - 8) + 32))(v10 + v14, a1, v15);
  return v10;
}

uint64_t static ActivityRendererSessionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v2 && (sub_1DAED289C() & 1) == 0)
  {
    return 0;
  }

  sub_1DAED0B1C();
  sub_1DAED0F0C();
  v3 = MEMORY[0x1E6993CE0];
  sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
  sub_1DAE951C0(&qword_1EE00AB68, v3);
  v4 = MEMORY[0x1E6993E40];
  sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40]);
  sub_1DAE951C0(&qword_1EE00AB48, v4);

  return sub_1DAED0E2C();
}

uint64_t ActivityRendererSessionKey.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ActivityRendererSessionKey.contentKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAE933D4()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v5);
  v6 = sub_1DAED0ACC();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_1DAE934D4()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v5);
  v6 = sub_1DAED0AEC();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_1DAE9364C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DAED0F0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAED0E0C();
  sub_1DAED0ECC();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_1DAE937D0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v11 = a2(v10);
  a3(v11);
  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivityRendererSessionKey.init(contentKey:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDD2C();
  v9 = sub_1DAECDCFC();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *(v2 + 16) = v9;
  *(v2 + 24) = v11;
  v12 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v13 - 8) + 32))(v2 + v12, a1, v13);
  return v2;
}

uint64_t sub_1DAE93A20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  return sub_1DAED1C6C();
}

uint64_t sub_1DAE93AA4()
{
  v1 = sub_1DAED1ABC();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DAED0F0C();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DAED17AC();
  v45 = *(v43 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0B1C();
  v38 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 24);
  v49 = *(v0 + 16);
  v50 = v14;

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  v15 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v16 = v15;
  MEMORY[0x1E127CAC0]();
  v17 = sub_1DAED0AEC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = [v17 description];
  v20 = sub_1DAED1CEC();
  v22 = v21;

  MEMORY[0x1E127DA50](v20, v22);

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  v40 = v16;
  MEMORY[0x1E127CAC0](v39);
  v23 = sub_1DAED0ACC();
  v25 = v24;
  v18(v13, v38);
  MEMORY[0x1E127DA50](v23, v25);

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  sub_1DAED0E0C();
  v26 = v41;
  sub_1DAED0EDC();
  v27 = *(v42 + 8);
  v28 = v44;
  v27(v6, v44);
  sub_1DAE951C0(&qword_1EE00AAF8, MEMORY[0x1E69858D8]);
  v29 = v43;
  v30 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v30);

  (*(v45 + 8))(v26, v29);
  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  sub_1DAED0E0C();
  v31 = v46;
  sub_1DAED0EEC();
  v27(v6, v28);
  v32 = v31;
  v33 = sub_1DAED1AAC();
  v35 = v34;
  (*(v47 + 8))(v32, v48);
  MEMORY[0x1E127DA50](v33, v35);

  return v49;
}

uint64_t sub_1DAE93F40()
{
  v1 = sub_1DAED1ABC();
  v2 = *(v1 - 8);
  v70 = v1;
  v71 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v57 - v8;
  v9 = sub_1DAED0F0C();
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAED17AC();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAECDE5C();
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DAED0B1C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000028, 0x80000001DAEE5680);
  MEMORY[0x1E127DA50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E127DA50](0xD000000000000015, 0x80000001DAEE56B0);
  v26 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0]();
  v28 = sub_1DAED0ACC();
  v30 = v29;
  v31 = *(v22 + 8);
  v58 = v21;
  v31(v25, v21);
  MEMORY[0x1E127DA50](v28, v30);

  MEMORY[0x1E127DA50](0xD000000000000014, 0x80000001DAEE56D0);
  MEMORY[0x1E127CAC0](v27);
  v32 = sub_1DAED0AEC();
  v31(v25, v21);
  v33 = [v32 description];
  v34 = sub_1DAED1CEC();
  v36 = v35;

  MEMORY[0x1E127DA50](v34, v36);

  MEMORY[0x1E127DA50](0xD000000000000011, 0x80000001DAEE56F0);
  MEMORY[0x1E127CAC0](v27);
  v37 = v60;
  sub_1DAED0AFC();
  v31(v25, v58);
  sub_1DAE951C0(&qword_1EE00BCE8, MEMORY[0x1E6959BC8]);
  v38 = v61;
  v39 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v39);

  (*(v62 + 8))(v37, v38);
  MEMORY[0x1E127DA50](0x796C696D6166202CLL, 0xE90000000000003DLL);
  v57 = v26;
  v40 = v59;
  sub_1DAED0E0C();
  v41 = v63;
  sub_1DAED0EDC();
  v42 = *(v73 + 8);
  v73 += 8;
  v43 = v40;
  v44 = v40;
  v45 = v72;
  v42(v43, v72);
  sub_1DAE951C0(&qword_1EE00AAF8, MEMORY[0x1E69858D8]);
  v46 = v64;
  v47 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v47);

  (*(v65 + 8))(v41, v46);
  MEMORY[0x1E127DA50](0x3D74736F68202CLL, 0xE700000000000000);
  sub_1DAED0E0C();
  v48 = v66;
  sub_1DAED0ECC();
  v42(v44, v45);
  v49 = v67;
  v50 = sub_1DAECE32C();
  v52 = v51;
  (*(v68 + 8))(v48, v49);
  MEMORY[0x1E127DA50](v50, v52);

  MEMORY[0x1E127DA50](0x63697274656D202CLL, 0xEA00000000003D73);
  sub_1DAED0E0C();
  v53 = v69;
  sub_1DAED0EEC();
  v42(v44, v72);
  sub_1DAE951C0(&qword_1EE00AAB8, MEMORY[0x1E6985AA8]);
  v54 = v70;
  v55 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v55);

  (*(v71 + 8))(v53, v54);
  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return v74;
}

uint64_t sub_1DAE94714()
{
  if (*v0)
  {
    result = 0x4B746E65746E6F63;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1DAE94754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B746E65746E6F63 && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DAED289C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAE94834(uint64_t a1)
{
  v2 = sub_1DAE94B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE94870(uint64_t a1)
{
  v2 = sub_1DAE94B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererSessionKey.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ActivityRendererSessionKey.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE949D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5A8, &qword_1DAEDDBC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE94B7C();
  sub_1DAED29BC();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v14[15] = 0;
  sub_1DAED281C();
  if (!v2)
  {
    v14[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    sub_1DAE95128(&qword_1EE0057B8);
    sub_1DAED284C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DAE94B7C()
{
  result = qword_1EE00BB30[0];
  if (!qword_1EE00BB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00BB30);
  }

  return result;
}

uint64_t sub_1DAE94BD0()
{
  sub_1DAED294C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

uint64_t ActivityRendererSessionKey.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ActivityRendererSessionKey.init(from:)(a1);
  return v5;
}

void *ActivityRendererSessionKey.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5B0, &qword_1DAEDDBC8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE94B7C();
  sub_1DAED29AC();
  if (v1)
  {
    v12 = v22;
    type metadata accessor for ActivityRendererSessionKey();
    v16 = *(*v12 + 48);
    v17 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v7;
    v24 = 0;
    v14 = sub_1DAED27DC();
    v12 = v22;
    v22[2] = v14;
    v12[3] = v15;
    v23 = 1;
    sub_1DAE95128(&qword_1EE0057A8);
    sub_1DAED280C();
    (*(v13 + 8))(v10, v21);
    (*(v20 + 32))(v12 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_1DAE94FB0()
{
  v1 = *v0;
  sub_1DAED294C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

uint64_t sub_1DAE95054()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  return sub_1DAED1C6C();
}

uint64_t type metadata accessor for ActivityRendererSessionKey()
{
  result = qword_1EE00BB08;
  if (!qword_1EE00BB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE95128(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAE951C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE95208()
{
  sub_1DAED294C();
  v1 = *v0;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

void *sub_1DAE952A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ActivityRendererSessionKey();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ActivityRendererSessionKey.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1DAE9534C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (!v2 && (sub_1DAED289C() & 1) == 0)
  {
    return 0;
  }

  sub_1DAED0B1C();
  sub_1DAED0F0C();
  v3 = MEMORY[0x1E6993CE0];
  sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
  sub_1DAE951C0(&qword_1EE00AB68, v3);
  v4 = MEMORY[0x1E6993E40];
  sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40]);
  sub_1DAE951C0(&qword_1EE00AB48, v4);

  return sub_1DAED0E2C();
}

void sub_1DAE954EC()
{
  sub_1DAE9577C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAE9577C()
{
  if (!qword_1EE00AB50)
  {
    sub_1DAED0B1C();
    sub_1DAED0F0C();
    v0 = MEMORY[0x1E6993CE0];
    sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
    sub_1DAE951C0(&qword_1EE00AB68, v0);
    v1 = MEMORY[0x1E6993E40];
    sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40]);
    sub_1DAE951C0(&qword_1EE00AB48, v1);
    v2 = sub_1DAED0E7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE00AB50);
    }
  }
}

unint64_t sub_1DAE958E8()
{
  result = qword_1ECC0A5B8;
  if (!qword_1ECC0A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A5B8);
  }

  return result;
}

unint64_t sub_1DAE95940()
{
  result = qword_1EE00BB20;
  if (!qword_1EE00BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BB20);
  }

  return result;
}

unint64_t sub_1DAE95998()
{
  result = qword_1EE00BB28;
  if (!qword_1EE00BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BB28);
  }

  return result;
}

uint64_t sub_1DAE959EC(void **a1)
{
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [v7 widget];
    v11 = [v7 metrics];
    sub_1DAED0DAC();
    v12 = *(v9 + 56);
    sub_1DAD85CEC(v6);
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1DAE95B38(void **a1)
{
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [v7 widget];
    v11 = [v7 metrics];
    sub_1DAED0DAC();
    v12 = *(v9 + 64);
    sub_1DAD85CEC(v6);
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1DAE95C84()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[38];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[38];
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD8878C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    result = sub_1DAED1F9C();
    v6 = v27;
    v5 = v28;
    v7 = v29;
    v8 = v30;
    v9 = v31;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_1DAD70B20();

      v19 = v1[38];
      v1[38] = MEMORY[0x1E69E7CD0];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
      v20 = v1[7];

      v21 = v1[8];

      v22 = v1[9];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 15);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 25);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
      v23 = v1[36];

      v24 = v1[37];

      v25 = v1[38];

      return v1;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE95F24()
{
  sub_1DAE95C84();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE95F58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
LABEL_5:
    v4 = v2[9];
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      v4 = v2[7];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v4 = v2[8];
LABEL_7:
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DAED0DEC();
  v7 = sub_1DAECDBFC();
  (*(*(v7 - 8) + 56))(a2, 0, 1, v7);

  return swift_unknownObjectRelease();
}

void (*sub_1DAE960BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E127E1F0](a2, a3);
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
    *v3 = v4;
    return sub_1DAD8DE40;
  }

  __break(1u);
  return result;
}

uint64_t DisplayGamut.description.getter()
{
  v1 = v0;
  v2 = sub_1DAECF0FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E697DE20])
  {
    return 1111970419;
  }

  if (v8 == *MEMORY[0x1E697DE28])
  {
    return 0x5079616C70736964;
  }

  (*(v3 + 8))(v7, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DAE962D0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E697DE20])
  {
    return 1111970419;
  }

  if (v6 == *MEMORY[0x1E697DE28])
  {
    return 0x5079616C70736964;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E55;
}

uint64_t WidgetEntrySourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

WidgetRenderer::LiveWidgetViewChangeReason_optional __swiftcall LiveWidgetViewChangeReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DAED28BC();

  v5 = 0;
  v6 = 11;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
LABEL_24:
      v6 = v5;
      break;
    case 11:
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    default:
      v6 = 29;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAE9664C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LiveWidgetViewChangeReason.rawValue.getter();
  v4 = v3;
  if (v2 == LiveWidgetViewChangeReason.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DAED289C();
  }

  return v7 & 1;
}

uint64_t sub_1DAE966E8()
{
  v1 = *v0;
  sub_1DAED294C();
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE96750()
{
  v2 = *v0;
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();
}

uint64_t sub_1DAE967B4()
{
  v1 = *v0;
  sub_1DAED294C();
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

unint64_t sub_1DAE96824@<X0>(unint64_t *a1@<X8>)
{
  result = LiveWidgetViewChangeReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void (*sub_1DAE96874(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE96918(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE96AC4(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE96C5C(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE96D00(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE96EAC(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97044(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAE970E8;
}

uint64_t sub_1DAE970EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE97298(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97458(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE974FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE976A8(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97840(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE978E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE97A90(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE97C3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEA8574;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1DADCA8EC(v3);

  return sub_1DAECEF4C();
}

uint64_t (*sub_1DAE97D48())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA31EC;
}

uint64_t sub_1DAE97E00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return sub_1DAECEF4C();
}

void (*sub_1DAE97EB4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = swift_getKeyPath();
  v3[7] = swift_getKeyPath();
  v3[8] = sub_1DAECEF2C();
  v3[9] = v4;
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1DAEA8574;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v3[4] = v8;
  v3[5] = v7;
  sub_1DADCA8EC(v5);
  return sub_1DAE97FAC;
}

void sub_1DAE97FAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = v2[5];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_1DAEA8598;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v11 = v2[8];
    v10 = v2[9];
    v13 = v2[6];
    v12 = v2[7];
    v14 = *v10;
    v15 = v10[1];
    *v10 = v6;
    v10[1] = v5;
    sub_1DADCA8EC(v3);
    sub_1DAD660D8(v14);
    v16 = v2[5];
    sub_1DAD660D8(v2[4]);
    v11(v2, 0);
  }

  else
  {
    if (v3)
    {
      v7 = v2[5];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v9 = sub_1DAEA8598;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v18 = v2[8];
    v17 = v2[9];
    v20 = v2[6];
    v19 = v2[7];
    v22 = *v17;
    v21 = v17[1];
    *v17 = v9;
    v17[1] = v8;
    sub_1DAD660D8(v22);
    v18(v2, 0);
  }

  free(v2);
}

uint64_t sub_1DAE9810C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DAE982AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE983E4(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE98594(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEA8570;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1DADCA8EC(v3);

  return sub_1DAECEF4C();
}

uint64_t (*sub_1DAE986A0())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA323C;
}

uint64_t sub_1DAE98758(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A630, &unk_1DAEDE7C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE98948(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE989EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

void (*sub_1DAE98B98(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

double sub_1DAE98D1C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1DAE98D98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE98DC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEA8580;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1DADCA8EC(v3);
  sub_1DADCA8EC(v6);

  sub_1DAECEF4C();
  sub_1DAE98EF4();
  return sub_1DAD660D8(v6);
}

void sub_1DAE98EF4()
{
  v1 = v0;
  BSDispatchQueueAssertMain();

  oslog = sub_1DAECEDCC();
  v2 = sub_1DAED200C();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v6);
    _os_log_impl(&dword_1DAD61000, oslog, v2, "[%{public}s] backgroundViewBuilder changed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E127F100](v4, -1, -1);
    MEMORY[0x1E127F100](v3, -1, -1);
  }
}

uint64_t (*sub_1DAE99010())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA3274;
}

uint64_t sub_1DAE990C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1DAEA32AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13[0] = v7;
  v13[1] = v6;
  sub_1DADCA8EC(a1);

  sub_1DAECEF4C();
  BSDispatchQueueAssertMain();

  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(*(v3 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v3 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v13);
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] backgroundViewBuilder changed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  return sub_1DAD660D8(a1);
}

void (*sub_1DAE9927C(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v6 = v5[2];
  if (v6)
  {
    v7 = v5[3];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1DAEA8580;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *v5 = v9;
  v5[1] = v8;
  return sub_1DAE99380;
}

void sub_1DAE99380(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v7 = sub_1DAEA857C;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v10 = v3[4];
    v3[2] = v7;
    v3[3] = v6;
    sub_1DADCA8EC(v5);

    sub_1DADCA8EC(v5);
    sub_1DAECEF4C();
    BSDispatchQueueAssertMain();

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED200C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v3[4];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DAD6482C(*(v13 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v13 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v24);
      _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] backgroundViewBuilder changed", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    sub_1DAD660D8(v5);
    v16 = *v3;
    v17 = v3[1];
  }

  else
  {
    if (v5)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v4;
      v9 = sub_1DAEA857C;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v18 = v3[4];
    v3[2] = v9;
    v3[3] = v8;
    sub_1DADCA8EC(v5);

    sub_1DAECEF4C();
    BSDispatchQueueAssertMain();

    v19 = sub_1DAECEDCC();
    v20 = sub_1DAED200C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v3[4];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1DAD6482C(*(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v24);
      _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] backgroundViewBuilder changed", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E127F100](v23, -1, -1);
      MEMORY[0x1E127F100](v22, -1, -1);
    }

    v16 = v5;
  }

  sub_1DAD660D8(v16);

  free(v3);
}

uint64_t sub_1DAE996BC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DAE9985C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE99994(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAE99B04;
}

uint64_t sub_1DAE99B08()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DAE99B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAE99C10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE99C94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE99D0C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void (*sub_1DAE99D90(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE99E34(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DAE99FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE9A10C(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE9A29C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1DAD6495C(a1, &v15 - v6, &unk_1ECC07D30, &unk_1DAED57E0);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD901C4(v7, v8 + v9, &unk_1ECC07D30, &unk_1DAED57E0);
  swift_endAccess();
  sub_1DAD64398(v7, &unk_1ECC07D30, &unk_1DAED57E0);
  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  v12 = *(v8 + v10);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v8 + v10) = v14;
  }

  return result;
}

uint64_t sub_1DAE9A3D8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9A41C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE9A4CC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v40 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v20, v19, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1DAD64398(v19, &unk_1ECC07D30, &unk_1DAED57E0);
      v28 = sub_1DAED165C();
      return (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
    }

    v22 = v41;
    sub_1DADB62CC(v19, v41, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v22, v7, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v43;
      sub_1DADB62CC(v7, v43, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v24 = v23 + *(v42 + 20);
      sub_1DAED194C();
      sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return sub_1DADB6334(v22, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    v29 = *v7;

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v31 = *(v30 + 64);
    v32 = v43;
    sub_1DADB62CC(v7 + *(v30 + 48), v43, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v33 = v32 + *(v42 + 20);
    sub_1DAED194C();
    sub_1DADB6334(v32, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DADB6334(v22, type metadata accessor for DefaultWidgetLiveViewEntry);
    v34 = v7 + v31;
  }

  else
  {
    sub_1DADB62CC(v19, v15, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v15, v12, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v43;
      sub_1DADB62CC(v12, v43, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v27 = v26 + *(v42 + 20);
      sub_1DAED194C();
      sub_1DADB6334(v26, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return sub_1DADB6334(v15, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    v35 = *v12;

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v37 = *(v36 + 64);
    v38 = v43;
    sub_1DADB62CC(v12 + *(v36 + 48), v43, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v39 = v38 + *(v42 + 20);
    sub_1DAED194C();
    sub_1DADB6334(v38, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DADB6334(v15, type metadata accessor for DefaultWidgetLiveViewEntry);
    v34 = v12 + v37;
  }

  return sub_1DAD64398(v34, &qword_1ECC088D8, &qword_1DAED72D0);
}

uint64_t sub_1DAE9AA00()
{
  v1 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v9, v8, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1DAD64398(v8, &unk_1ECC07D30, &unk_1DAED57E0);
    v10 = 0;
  }

  else
  {
    sub_1DADB62CC(v8, v4, type metadata accessor for DefaultWidgetLiveViewEntry);
    v10 = DefaultWidgetLiveViewEntry.containsInteractiveControls.getter();
    sub_1DADB6334(v4, type metadata accessor for DefaultWidgetLiveViewEntry);
  }

  return v10 & 1;
}

uint64_t sub_1DAE9ABA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE9AC20()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void (*sub_1DAE9AC8C(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE9AD30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE9ADAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DAE9AF4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE9AFD0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v11 - v8, a1, v4, v7);
  v9 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*sub_1DAE9B108(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
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

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE9B2A8(uint64_t (*a1)(void))
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v14);
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = (*(v9 + 16))(v8, v9);
  sub_1DAED0C3C();

  v11 = a1();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t sub_1DAE9B3E8()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  sub_1DAED0B9C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1DAE9B48C()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  sub_1DAED0C5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1DAE9B530(uint64_t (*a1)(void))
{
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a1();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_1DAE9B5DC()
{
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  return sub_1DAECEF6C();
}

uint64_t sub_1DAE9B670(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    v7 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAECEEEC();
  }

  return result;
}

uint64_t sub_1DAE9B740()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9B784(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAECEEEC();
  }

  return result;
}

void (*sub_1DAE9B854(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9B8E8;
}

void sub_1DAE9B8E8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = *(v1[3] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAECEEEC();
  }

  free(v1);
}

uint64_t sub_1DAE9B9B8(uint64_t a1)
{
  v2 = v1;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v6 = (*(v5 + 16))(v4, v5);
  sub_1DAD6495C(a1, &v8, &unk_1ECC08880, &unk_1DAED6F50);
  sub_1DAED0C6C();

  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 1;
  return result;
}

id sub_1DAE9BA7C()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1EE009F18 = result;
  return result;
}

BOOL sub_1DAE9BAB0(uint64_t a1)
{
  v2 = v1;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v4 = sub_1DAECE05C();

  if (v4)
  {
    return 1;
  }

  if (CHSWidgetFamilyIsAccessory())
  {
    if (qword_1EE009F10 != -1)
    {
      swift_once();
    }

    if (byte_1EE009F18 == 1)
    {
      return ((a1 - 9) & 0xFFFFFFFFFFFFFFFDLL) != 0;
    }
  }

  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (v9)
  {
    v10 = v9;
    if ([v10 preferredBackgroundStyle] == 2)
    {

      return 1;
    }

    else
    {
      v15 = [v10 supportsVibrantContent];

      return v15;
    }
  }

  else
  {

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED201C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v16);
      _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] defaulting requiresCARendering to false due to nil descriptor.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DAE9BD08()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9BD4C(int a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 == 2)
  {
    if (a1 == 2)
    {
      return;
    }

LABEL_6:
    v5 = 26;
    sub_1DAD8EC1C(&v5);
    return;
  }

  if (a1 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }
}

void (*sub_1DAE9BDDC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9BE70;
}

void sub_1DAE9BE70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if ((a2 & 1) == 0)
  {
    if (v6 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_15;
      }
    }

    else if (v3 != 2 && ((v6 ^ v3) & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = v2[3];
    v11 = 26;
    v8 = &v11;
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v3 == 2 || ((v6 ^ v3) & 1) != 0)
  {
LABEL_10:
    v7 = v2[3];
    v10 = 26;
    v8 = &v10;
LABEL_14:
    sub_1DAD8EC1C(v8);
  }

LABEL_15:

  free(v2);
}

uint64_t sub_1DAE9BF30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  v5 = sub_1DAECF0AC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAE9BFBC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1DAE9C0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  v4 = sub_1DAECF0AC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1DAE9C178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1DAD6495C(v4 + v8, a4, a2, a3);
}

void (*sub_1DAE9C214(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08370, &unk_1DAED6580);
  return sub_1DAE9C344;
}

uint64_t sub_1DAE9C36C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9C3B0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    if (v4)
    {
      v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      v6 = *(v1 + v5);
    }

    else
    {
      v6 = 0;
    }

    sub_1DAE9C79C(v6);
  }
}

void (*sub_1DAE9C444(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1DAE9C4D8;
}

void sub_1DAE9C4D8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 88);
  BSDispatchQueueAssertMain();
  v7 = v6 ^ *(v5 + v4);
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (((v6 ^ *(v5 + v4)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_7:
  v8 = v3[9];
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v10 = *(v8 + v9);
LABEL_9:
  v11 = v3[9];
  sub_1DAE9C79C(v10);
LABEL_10:

  free(v3);
}

uint64_t sub_1DAE9C58C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9C5D0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v1 + v5) & v4 & 1);
  }
}

void (*sub_1DAE9C660(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1DAE9C6F4;
}

void sub_1DAE9C6F4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 88);
  BSDispatchQueueAssertMain();
  if (v4 != *(v3 + v2))
  {
    v5 = v1[9];
    v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v5 + v6) & v4 & 1);
  }

  free(v1);
}

void sub_1DAE9C79C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v2 + v4) == 1)
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6 == (a1 & 1))
    {
      return;
    }
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    LOBYTE(v6) = 0;
  }

  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED200C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v13);
    *(v9 + 12) = 1026;
    v12 = 0;
    if (*(v2 + v4) == 1)
    {
      v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      if (*(v2 + v11))
      {
        v12 = 1;
      }
    }

    *(v9 + 14) = v12;

    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] content paused changed %{BOOL,public}d)", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((v6 & 1) == 0)
    {
LABEL_14:
      LOBYTE(v13) = 7;
      sub_1DAD8EC1C(&v13);
    }
  }
}

uint64_t sub_1DAE9C98C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1DAE9CA00()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9CA64(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9CAF8;
}

void sub_1DAE9CB10()
{
  v1 = v0;
  v2 = sub_1DAECE21C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v6, v0 + v7, v2);
  sub_1DAD900EC(&qword_1EE00BCD8, MEMORY[0x1E6994050]);
  v9 = sub_1DAED1CAC();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v17);
      *(v12 + 12) = 2082;
      v8(v6, v1 + v7, v2);
      v14 = sub_1DAED1D4C();
      v16 = sub_1DAD6482C(v14, v15, &v17);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] keybagLockPolicy changed %{public}s)", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    LOBYTE(v17) = 9;
    sub_1DAD8EC1C(&v17);
  }
}

void sub_1DAE9CDC4(char a1)
{
  v2 = a1 & 1;
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED200C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v11);
      *(v6 + 12) = 2082;
      if (*(v1 + v3))
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (*(v1 + v3))
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_1DAD6482C(v8, v9, &v11);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] isCarPlayDisplay changed %{public}s)", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    LOBYTE(v11) = 24;
    sub_1DAD8EC1C(&v11);
  }
}

uint64_t sub_1DAE9CF80()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9CFE4(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D078;
}

uint64_t sub_1DAE9D090(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-v9];
  BSDispatchQueueAssertMain();
  v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  result = swift_beginAccess();
  if (*(v1 + v11) != v2)
  {

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED200C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v14;
      v16 = v15;
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v16 = 136446466;
      *(v16 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v27);
      *(v16 + 12) = 2082;
      if (*(v1 + v11))
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (*(v1 + v11))
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      v19 = sub_1DAD6482C(v17, v18, v27);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v13, v25, "[%{public}s] isContinuityDisplay changed %{public}s)", v16, 0x16u);
      v20 = v26;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    if (*(v1 + v11))
    {
      v21 = MEMORY[0x1E6994048];
    }

    else
    {
      v21 = MEMORY[0x1E6994040];
    }

    (*(v4 + 104))(v10, *v21, v3);
    v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
    swift_beginAccess();
    (*(v4 + 16))(v8, v1 + v22, v3);
    swift_beginAccess();
    (*(v4 + 24))(v1 + v22, v10, v3);
    swift_endAccess();
    sub_1DAE9CB10();
    v23 = *(v4 + 8);
    v23(v8, v3);
    return (v23)(v10, v3);
  }

  return result;
}

uint64_t sub_1DAE9D3D0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D434(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D4C8;
}

uint64_t sub_1DAE9D4E0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D544(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D5D8;
}

void sub_1DAE9D5F0(char a1)
{
  v2 = a1 & 1;
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED203C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v9);
      *(v6 + 12) = 1026;
      *(v6 + 14) = *(v1 + v3);

      _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] in AoD changed (%{BOOL,public}d)", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    else
    {
    }

    if (*(v1 + v3) == 1)
    {
      v8 = 16;
    }

    else
    {
      v8 = 17;
    }

    LOBYTE(v9) = v8;
    sub_1DAD8EC1C(&v9);
  }
}

uint64_t sub_1DAE9D784()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D7E8(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D87C;
}

uint64_t sub_1DAE9D894()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D8F8(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D98C;
}

uint64_t sub_1DAE9D9A4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9DA08(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*sub_1DAE9DA64(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9DAF8;
}

void sub_1DAE9DB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7);

  free(v3);
}

void sub_1DAE9DB5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  BSDispatchQueueAssertMain();
  if (v5 != *(v3 + v4))
  {
    sub_1DAEA1F7C();
  }
}

uint64_t sub_1DAE9DBC8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9DC0C(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    sub_1DAEA1F7C();
  }
}

void (*sub_1DAE9DC74(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9DD08;
}

void sub_1DAE9DD08(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 40);
  BSDispatchQueueAssertMain();
  if (v4 != *(v3 + v2))
  {
    v5 = v1[3];
    sub_1DAEA1F7C();
  }

  free(v1);
}

uint64_t sub_1DAE9DDE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, void (*a8)(_BYTE *))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24[-v19];
  sub_1DAD6495C(a1, &v24[-v19], a5, a6);
  v21 = *a2;
  v22 = *a7;
  swift_beginAccess();
  sub_1DAD6495C(v21 + v22, v18, a5, a6);
  swift_beginAccess();
  sub_1DAD901C4(v20, v21 + v22, a5, a6);
  swift_endAccess();
  a8(v18);
  sub_1DAD64398(v18, a5, a6);
  return sub_1DAD64398(v20, a5, a6);
}

uint64_t sub_1DAE9DF48(uint64_t a1)
{
  v3 = sub_1DAECDCEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v49[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49[-v18];
  BSDispatchQueueAssertMain();
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v21 = *(v16 + 56);
  sub_1DAD6495C(a1, v19, &qword_1ECC07CE8, &qword_1DAED6F60);
  v22 = v1;
  v53 = v20;
  v23 = v1 + v20;
  v24 = v3;
  sub_1DAD6495C(v23, &v19[v21], &qword_1ECC07CE8, &qword_1DAED6F60);
  v55 = v4;
  v25 = *(v4 + 48);
  if (v25(v19, 1, v3) == 1)
  {
    if (v25(&v19[v21], 1, v3) == 1)
    {
      return sub_1DAD64398(v19, &qword_1ECC07CE8, &qword_1DAED6F60);
    }
  }

  else
  {
    sub_1DAD6495C(v19, v14, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (v25(&v19[v21], 1, v3) != 1)
    {
      v35 = v55;
      v36 = v51;
      (*(v55 + 32))(v51, &v19[v21], v24);
      sub_1DAD900EC(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
      v50 = sub_1DAED1CAC();
      v37 = *(v35 + 8);
      v37(v36, v24);
      v37(v14, v24);
      result = sub_1DAD64398(v19, &qword_1ECC07CE8, &qword_1DAED6F60);
      v27 = v22;
      if (v50)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v55 + 8))(v14, v3);
  }

  sub_1DAD64398(v19, &qword_1ECC087B0, qword_1DAEDCBF0);
  v27 = v1;
LABEL_7:

  v28 = sub_1DAECEDCC();
  v29 = sub_1DAED203C();
  if (!os_log_type_enabled(v28, v29))
  {

LABEL_18:

    LOBYTE(v56) = 13;
    sub_1DAD8EC1C(&v56);
    v48 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAECEEEC();
  }

  v30 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v56 = v51;
  *v30 = 136446466;
  *(v30 + 4) = sub_1DAD6482C(*(v27 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v27 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v56);
  *(v30 + 12) = 2082;
  v31 = v53;
  v32 = v54;
  sub_1DAD6495C(v27 + v53, v54, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v25(v32, 1, v24) == 1)
  {

    sub_1DAD64398(v32, &qword_1ECC07CE8, &qword_1DAED6F60);
    v33 = 0xE300000000000000;
    v34 = 7104878;
LABEL_17:
    v46 = sub_1DAD6482C(v34, v33, &v56);

    *(v30 + 14) = v46;
    _os_log_impl(&dword_1DAD61000, v28, v29, "[%{public}s] Override date changed (%{public}s)", v30, 0x16u);
    v47 = v51;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v47, -1, -1);
    MEMORY[0x1E127F100](v30, -1, -1);
    goto LABEL_18;
  }

  v50 = v29;
  sub_1DAD64398(v32, &qword_1ECC07CE8, &qword_1DAED6F60);
  v38 = v52;
  sub_1DAD6495C(v27 + v31, v52, &qword_1ECC07CE8, &qword_1DAED6F60);
  v39 = v25(v38, 1, v24);

  if (v39 != 1)
  {
    LOBYTE(v29) = v50;
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE00A708;
    v41 = v52;
    v42 = sub_1DAECDC5C();
    v43 = [v40 stringFromDate_];

    v44 = sub_1DAED1CEC();
    v33 = v45;

    (*(v55 + 8))(v41, v24);
    v34 = v44;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}