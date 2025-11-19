id sub_26C6CF014()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B30, &qword_26C6DE730);
  v2 = *v0;
  v3 = sub_26C6D8D88();
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

        result = v20;
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

void *sub_26C6CF180()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B58, &unk_26C6DE740);
  v2 = *v0;
  v3 = sub_26C6D8D88();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_26C67ED2C(v22, *(&v22 + 1));
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

id sub_26C6CF304@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_26C6CF350(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_26C689AC8(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_26C6CF014();
      }
    }

    else
    {
      v32 = v51;
      sub_26C6CE910(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_26C689AC8(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_26C6A3D74();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_26C6D8E78();
  __break(1u);
  return result;
}

uint64_t sub_26C6CF5EC(void *a1)
{
  sub_26C68A900(MEMORY[0x277D84F90]);

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v26 - v8;
  (*(v4 + 48))(v3, v4);
  swift_getAssociatedConformanceWitness();
  v10 = sub_26C6CE1BC(AssociatedTypeWitness);
  if (v1)
  {
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    if (qword_2804A85C8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD2B8);
    v16 = v1;
    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_26C66B000, v17, v18, "Failed to generate dictionary from payload: %{public}@.", v19, 0xCu);
      sub_26C6CF918(v20);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v11 = v10;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = *(v13 + 8);
    v23 = sub_26C6CE1BC(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v11;
    sub_26C6CF350(v23, sub_26C6CF304, 0, isUniquelyReferenced_nonNull_native, &v27);

    return v27;
  }
}

uint64_t sub_26C6CF918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9070, &qword_26C6DA3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C6CF980()
{
  result = qword_2804A9228;
  if (!qword_2804A9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9228);
  }

  return result;
}

unint64_t sub_26C6CFA3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 0;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t sub_26C6CFAF4()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD1F8);
  __swift_project_value_buffer(v0, qword_2804AD1F8);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFB70()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD210);
  __swift_project_value_buffer(v0, qword_2804AD210);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFC9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C6D8898();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFD14()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD288);
  __swift_project_value_buffer(v0, qword_2804AD288);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFD94()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD2A0);
  __swift_project_value_buffer(v0, qword_2804AD2A0);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFE14()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD2B8);
  __swift_project_value_buffer(v0, qword_2804AD2B8);
  return sub_26C6D8888();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26C6CFEFC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9280, &unk_26C6DE9A0);
    v2 = sub_26C6D8DA8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v17 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v17);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v6)) | (v17 << 6);
        sub_26C68ADDC(*(v1 + 48) + 40 * v18, v28);
        sub_26C676984(*(v1 + 56) + 32 * v18, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[0] = v28[0];
        v25[1] = v28[1];
        sub_26C68ADDC(v25, v24);
        if (!swift_dynamicCast())
        {
          sub_26C677B60(v25, &qword_2804A8D68, qword_26C6DC4E8);

          goto LABEL_23;
        }

        sub_26C676984(v26 + 8, v24);
        sub_26C677B60(v25, &qword_2804A8D68, qword_26C6DC4E8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_26C689AC8(v23, *(&v23 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v23;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = *v14;
          v16 = v14[1];
          *v14 = v23;
          result = sub_26C678418(v15, v16);
          v9 = v17;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v23;
          *(v2[7] + 16 * result) = v23;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v9 = v17;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v17 = v9;
      }

      sub_26C67EE70(0, 0xF000000000000000);
LABEL_23:

      sub_26C6D85C4(0, 0, 0, 0);
      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_26C6D025C()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D02B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26C6D03B8()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D0410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26C6D0514()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D056C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_26C6D05C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_26C6D0620(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id WFSetupServerAnisetteDataProvider.__allocating_init(companionAuthDevice:transportableAuthKitAccount:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v6 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v7 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  swift_beginAccess();
  *&v5[v6] = a1;
  swift_beginAccess();
  *&v5[v7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id WFSetupServerAnisetteDataProvider.init(companionAuthDevice:transportableAuthKitAccount:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v5 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v6 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  swift_beginAccess();
  *&v2[v6] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

id WFSetupServerAnisetteDataProvider.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26C6D7B44();

  return v4;
}

id WFSetupServerAnisetteDataProvider.init(coder:)(void *a1)
{
  v2 = sub_26C6D7B44();

  return v2;
}

void sub_26C6D08DC(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD1F8);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, &aBlock);
    _os_log_impl(&dword_26C66B000, v7, v8, "%{public}s is invoked. ", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12)
  {
    v37 = a1;
    v38 = a2;
    v13 = v12;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for AnisetteRequest();
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v17[v18] = sub_26C68AC4C(v14);
    v19 = &v17[OBJC_IVAR___WFAnisetteRequest_id];
    *v19 = 0x6F697369766F7270;
    *(v19 + 1) = 0xE90000000000006ELL;
    *&v17[v18] = v15;

    v45.receiver = v17;
    v45.super_class = v16;
    v20 = objc_msgSendSuper2(&v45, sel_init);
    v27 = sub_26C6CB368();
    v29 = v28;

    v30 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v31 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6F697369766F7270;
    v40 = 0xE90000000000006ELL;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_26C67ED2C(v27, v29);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v33 = sub_26C6D89A8();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v34;
    v43 = sub_26C6D7EEC;
    v44 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26C6D1900;
    v42 = &block_descriptor_5;
    v36 = _Block_copy(&aBlock);
    sub_26C676954(v37);

    [v13 sendRequestID:v30 options:v31 request:v33 responseHandler:v36];
    _Block_release(v36);

    sub_26C678418(v27, v29);
  }

  else
  {
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, &aBlock);
      _os_log_impl(&dword_26C66B000, v21, v22, "%{public}s invoked but session is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    if (a1)
    {
      sub_26C6C0B64();
      v25 = swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 5;
      a1(0, v25);
    }
  }
}

void sub_26C6D0F7C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *))
{
  if (a1)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD1F8);
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67240192;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v7, v8, "Provisioning request failed with osstatus code: %{public}d", v9, 8u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    if (a4)
    {
      v10 = a1;
      sub_26C6C0B64();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
      a4(0, v11);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = sub_26C6D84A4(a3, 0);

    if (v28)
    {
      v29 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v29 + 16))
      {
        v30 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];

        v31 = sub_26C689AC8(0x7369766F72507369, 0xED000064656E6F69);
        if (v32)
        {
          sub_26C684E18(*(v29 + 56) + 32 * v31, &v48);

          v50[0] = v48;
          v50[1] = v49;
          if (*(&v49 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v33 = sub_26C6D8898();
              __swift_project_value_buffer(v33, qword_2804AD228);
              v34 = sub_26C6D8878();
              v35 = sub_26C6D8BB8();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                *&v50[0] = v37;
                *v36 = 67109378;
                *(v36 + 4) = v47;
                *(v36 + 8) = 2080;
                *(v36 + 10) = sub_26C67A77C(0x6F697369766F7270, 0xE90000000000006ELL, v50);
                _os_log_impl(&dword_26C66B000, v34, v35, "Received response: isProvisioned %{BOOL}d for service id: %s", v36, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v37);
                MEMORY[0x26D6A7490](v37, -1, -1);
                MEMORY[0x26D6A7490](v36, -1, -1);
              }

              if (a4)
              {
                v38 = qword_2804A8588;

                if (v38 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v39 = sub_26C6D8878();
                v40 = sub_26C6D8BB8();
                if (os_log_type_enabled(v39, v40))
                {
                  v41 = swift_slowAlloc();
                  v42 = swift_slowAlloc();
                  *&v50[0] = v42;
                  *v41 = 136446210;
                  *(v41 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, v50);
                  _os_log_impl(&dword_26C66B000, v39, v40, "Invoking completion block that was passed into: %{public}s", v41, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v42);
                  MEMORY[0x26D6A7490](v42, -1, -1);
                  MEMORY[0x26D6A7490](v41, -1, -1);
                }

                a4(v47, 0);
                sub_26C676904(a4);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v43 = sub_26C6D8878();
                v44 = sub_26C6D8BB8();
                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  v46 = swift_slowAlloc();
                  *&v50[0] = v46;
                  *v45 = 136446210;
                  *(v45 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, v50);
                  _os_log_impl(&dword_26C66B000, v43, v44, "No completion block passed into %{public}s. ", v45, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v46);
                  MEMORY[0x26D6A7490](v46, -1, -1);
                  MEMORY[0x26D6A7490](v45, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v50, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD1F8);
  v17 = v28;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v50[0] = v21;
    *v20 = 136315138;
    *&v48 = v28;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v23 = sub_26C6D8A18();
    v25 = sub_26C67A77C(v23, v24, v50);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v18, v19, "Failed to retrieve value for isProvisioned from anisetteResponse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v26 = swift_allocError();
    *v27 = xmmword_26C6DE7C0;
    *(v27 + 16) = 0;
    a4(0, v26);
  }

  else
  {
  }
}

uint64_t sub_26C6D1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_26C6D89B8();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_26C6D89B8();
  }

LABEL_4:

  v7(a2, v8, v4);
}

void sub_26C6D1A90(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26C6D86E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_26C6D1B00(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD1F8);
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();
  if (os_log_type_enabled(v11, v12))
  {
    v38 = a2;
    v13 = v5;
    v14 = a3;
    v15 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, &aBlock);
    _os_log_impl(&dword_26C66B000, v11, v12, "%{public}s is invoked. ", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6A7490](v17, -1, -1);
    v18 = v16;
    a4 = v15;
    a3 = v14;
    v5 = v13;
    a2 = v38;
    MEMORY[0x26D6A7490](v18, -1, -1);
  }

  v19 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v20 = *(v5 + v19);
  if (v20)
  {
    v21 = v20;
    sub_26C67ED18(a1, a2);
    v22 = sub_26C6CCD28(a1, a2, 0);
    v29 = sub_26C6CB368();
    v31 = v30;

    v39 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v32 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 1668184435;
    v41 = 0xE400000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v29;
    *(inited + 80) = v31;
    sub_26C67ED2C(v29, v31);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v34 = sub_26C6D89A8();

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = a3;
    v36[3] = a4;
    v36[4] = v35;
    v44 = sub_26C6D7F10;
    v45 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_26C6D1900;
    v43 = &block_descriptor_10;
    v37 = _Block_copy(&aBlock);
    sub_26C676954(a3);

    [v21 sendRequestID:v39 options:v32 request:v34 responseHandler:v37];
    _Block_release(v37);

    sub_26C678418(v29, v31);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2804AD228);
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, &aBlock);
      _os_log_impl(&dword_26C66B000, v23, v24, "%{public}s invoked but session is nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    if (a3)
    {
      sub_26C6C0B64();
      v27 = swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 5;
      a3(0, v27);
    }
  }
}

void sub_26C6D21AC(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *))
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67240192;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v7, v8, "Syncing anisette with sim data anisette request failed with error status code: %{public}d", v9, 8u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    if (a4)
    {
      v10 = a1;
      sub_26C6C0B64();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
      a4(0, v11);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = sub_26C6D84A4(a3, 1);

    if (v28)
    {
      v29 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v29 + 16))
      {
        v30 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];

        v31 = sub_26C689AC8(0x6465636E79537369, 0xE800000000000000);
        if (v32)
        {
          sub_26C684E18(*(v29 + 56) + 32 * v31, &v48);

          v50[0] = v48;
          v50[1] = v49;
          if (*(&v49 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v33 = sub_26C6D8898();
              __swift_project_value_buffer(v33, qword_2804AD228);
              v34 = sub_26C6D8878();
              v35 = sub_26C6D8BB8();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                *&v50[0] = v37;
                *v36 = 67109378;
                *(v36 + 4) = v47;
                *(v36 + 8) = 2082;
                *(v36 + 10) = sub_26C67A77C(1668184435, 0xE400000000000000, v50);
                _os_log_impl(&dword_26C66B000, v34, v35, "Received response: isSynced %{BOOL}d for service id: %{public}s", v36, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v37);
                MEMORY[0x26D6A7490](v37, -1, -1);
                MEMORY[0x26D6A7490](v36, -1, -1);
              }

              if (a4)
              {
                v38 = qword_2804A8588;

                if (v38 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v39 = sub_26C6D8878();
                v40 = sub_26C6D8BB8();
                if (os_log_type_enabled(v39, v40))
                {
                  v41 = swift_slowAlloc();
                  v42 = swift_slowAlloc();
                  *&v50[0] = v42;
                  *v41 = 136446210;
                  *(v41 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, v50);
                  _os_log_impl(&dword_26C66B000, v39, v40, "Invoking completion block that was passed into: %{public}s", v41, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v42);
                  MEMORY[0x26D6A7490](v42, -1, -1);
                  MEMORY[0x26D6A7490](v41, -1, -1);
                }

                a4(v47, 0);
                sub_26C676904(a4);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v43 = sub_26C6D8878();
                v44 = sub_26C6D8BB8();
                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  v46 = swift_slowAlloc();
                  *&v50[0] = v46;
                  *v45 = 136446210;
                  *(v45 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, v50);
                  _os_log_impl(&dword_26C66B000, v43, v44, "No completion block passed into %{public}s. ", v45, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v46);
                  MEMORY[0x26D6A7490](v46, -1, -1);
                  MEMORY[0x26D6A7490](v45, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v50, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD1F8);
  v17 = v28;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v50[0] = v21;
    *v20 = 136315138;
    *&v48 = v28;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v23 = sub_26C6D8A18();
    v25 = sub_26C67A77C(v23, v24, v50);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v18, v19, "Failed to retrieve value for isSynced from anisetteResponse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v26 = swift_allocError();
    *v27 = xmmword_26C6DE7E0;
    *(v27 + 16) = 0;
    a4(0, v26);
  }

  else
  {
  }
}

void sub_26C6D2BA4(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD1F8);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, &aBlock);
    _os_log_impl(&dword_26C66B000, v7, v8, "%{public}s is invoked. ", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12)
  {
    v37 = a1;
    v38 = a2;
    v13 = v12;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for AnisetteRequest();
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v17[v18] = sub_26C68AC4C(v14);
    v19 = &v17[OBJC_IVAR___WFAnisetteRequest_id];
    *v19 = 0x6573617265;
    *(v19 + 1) = 0xE500000000000000;
    *&v17[v18] = v15;

    v45.receiver = v17;
    v45.super_class = v16;
    v20 = objc_msgSendSuper2(&v45, sel_init);
    v27 = sub_26C6CB368();
    v29 = v28;

    v30 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v31 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6573617265;
    v40 = 0xE500000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_26C67ED2C(v27, v29);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v33 = sub_26C6D89A8();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v34;
    v43 = sub_26C6D7F20;
    v44 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26C6D1900;
    v42 = &block_descriptor_17;
    v36 = _Block_copy(&aBlock);
    sub_26C676954(v37);

    [v13 sendRequestID:v30 options:v31 request:v33 responseHandler:v36];
    _Block_release(v36);

    sub_26C678418(v27, v29);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_2804AD228);
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, &aBlock);
      _os_log_impl(&dword_26C66B000, v21, v22, "%{public}s invoked but session is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    if (a1)
    {
      sub_26C6C0B64();
      v25 = swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 5;
      a1(0, v25);
    }
  }
}

void sub_26C6D327C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *))
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v7, v8, "Erase anisette request failed with error: %d", v9, 8u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    if (a4)
    {
      v10 = a1;
      sub_26C6C0B64();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
      a4(0, v11);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = sub_26C6D84A4(a3, 2);

    if (v28)
    {
      v29 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v29 + 16))
      {
        v30 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];

        v31 = sub_26C689AC8(0x6465736172457369, 0xE800000000000000);
        if (v32)
        {
          sub_26C684E18(*(v29 + 56) + 32 * v31, &v47);

          v49[0] = v47;
          v49[1] = v48;
          if (*(&v48 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8588 != -1)
              {
                swift_once();
              }

              v33 = sub_26C6D8898();
              __swift_project_value_buffer(v33, qword_2804AD1F8);
              v34 = sub_26C6D8878();
              v35 = sub_26C6D8BB8();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                *&v49[0] = v37;
                *v36 = 67109378;
                *(v36 + 4) = v46;
                *(v36 + 8) = 2080;
                *(v36 + 10) = sub_26C67A77C(0x6573617265, 0xE500000000000000, v49);
                _os_log_impl(&dword_26C66B000, v34, v35, "Received response: isErased %{BOOL}d for service id: %s", v36, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v37);
                MEMORY[0x26D6A7490](v37, -1, -1);
                MEMORY[0x26D6A7490](v36, -1, -1);
              }

              if (a4)
              {

                v38 = sub_26C6D8878();
                v39 = sub_26C6D8BB8();
                if (os_log_type_enabled(v38, v39))
                {
                  v40 = swift_slowAlloc();
                  v41 = swift_slowAlloc();
                  *&v49[0] = v41;
                  *v40 = 136446210;
                  *(v40 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, v49);
                  _os_log_impl(&dword_26C66B000, v38, v39, "Invoking completion block that was passed into: %{public}s", v40, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v41);
                  MEMORY[0x26D6A7490](v41, -1, -1);
                  MEMORY[0x26D6A7490](v40, -1, -1);
                }

                a4(v46, 0);
                sub_26C676904(a4);
              }

              else
              {
                v42 = sub_26C6D8878();
                v43 = sub_26C6D8BB8();
                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  *&v49[0] = v45;
                  *v44 = 136446210;
                  *(v44 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, v49);
                  _os_log_impl(&dword_26C66B000, v42, v43, "No completion block passed into %{public}s. ", v44, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v45);
                  MEMORY[0x26D6A7490](v45, -1, -1);
                  MEMORY[0x26D6A7490](v44, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v49, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD1F8);
  v17 = v28;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v49[0] = v21;
    *v20 = 136315138;
    *&v47 = v28;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v23 = sub_26C6D8A18();
    v25 = sub_26C67A77C(v23, v24, v49);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v18, v19, "Failed to retrieve value for isErased from anisetteResponse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v26 = swift_allocError();
    *v27 = xmmword_26C6DE800;
    *(v27 + 16) = 0;
    a4(0, v26);
  }

  else
  {
  }
}

void sub_26C6D3BA4(char a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD1F8);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, &aBlock);
    _os_log_impl(&dword_26C66B000, v9, v10, "%{public}s is invoked. ", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    *(inited + 32) = 0x7250646C756F6873;
    *(inited + 40) = 0xEF6E6F697369766FLL;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = a1 & 1;
    v16 = v14;
    v17 = sub_26C68AC4C(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &unk_2804A91C0, &unk_26C6DB3E0);
    v18 = type metadata accessor for AnisetteRequest();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v19[v20] = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v21 = &v19[OBJC_IVAR___WFAnisetteRequest_id];
    *v21 = 0x6863746566;
    *(v21 + 1) = 0xE500000000000000;
    *&v19[v20] = v17;

    v46.receiver = v19;
    v46.super_class = v18;
    v22 = objc_msgSendSuper2(&v46, sel_init);
    v29 = sub_26C6CB368();
    v31 = v30;

    v39 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v38 = v16;
    v32 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6863746566;
    v41 = 0xE500000000000000;
    sub_26C6D8CD8();
    *(v33 + 96) = MEMORY[0x277CC9318];
    *(v33 + 72) = v29;
    *(v33 + 80) = v31;
    sub_26C67ED2C(v29, v31);
    sub_26C689E88(v33);
    swift_setDeallocating();
    sub_26C677B60(v33 + 32, &qword_2804A86B8, &qword_26C6DA550);
    v34 = sub_26C6D89A8();

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = a2;
    v36[3] = a3;
    v36[4] = v35;
    v44 = sub_26C6D7F2C;
    v45 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_26C6D1900;
    v43 = &block_descriptor_24;
    v37 = _Block_copy(&aBlock);
    sub_26C676954(a2);

    [v38 sendRequestID:v39 options:v32 request:v34 responseHandler:v37];
    _Block_release(v37);

    sub_26C678418(v29, v31);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_2804AD228);
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, &aBlock);
      _os_log_impl(&dword_26C66B000, v23, v24, "%{public}s invoked but session is nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    if (a2)
    {
      sub_26C6C0B64();
      v27 = swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 5;
      a2(0, v27);
    }
  }
}

void sub_26C6D430C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *))
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v7, v8, "Fetch Anisette request failed with error: %d", v9, 8u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    if (a4)
    {
      v10 = a1;
      sub_26C6C0B64();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
      a4(0, v11);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = sub_26C6D84A4(a3, 3);

    if (v28)
    {
      v29 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v29 + 16))
      {
        v30 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];

        v31 = sub_26C689AC8(0x6574746573696E61, 0xEC00000061746144);
        if (v32)
        {
          sub_26C684E18(*(v29 + 56) + 32 * v31, &v56);

          v58[0] = v56;
          v58[1] = v57;
          if (*(&v57 + 1))
          {
            sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v33 = sub_26C6D8898();
              __swift_project_value_buffer(v33, qword_2804AD228);
              v34 = v55;
              v35 = sub_26C6D8878();
              v36 = sub_26C6D8BB8();

              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                *&v58[0] = v54;
                *v37 = 136315394;
                v38 = [v34 description];
                v53 = v36;
                v39 = sub_26C6D8A08();
                v41 = v40;

                v42 = sub_26C67A77C(v39, v41, v58);

                *(v37 + 4) = v42;
                *(v37 + 12) = 2080;
                *(v37 + 14) = sub_26C67A77C(0x6863746566, 0xE500000000000000, v58);
                _os_log_impl(&dword_26C66B000, v35, v53, "Received response: anisetteData %s for service id: %s", v37, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6A7490](v54, -1, -1);
                MEMORY[0x26D6A7490](v37, -1, -1);
              }

              if (a4)
              {
                v43 = qword_2804A8588;

                if (v43 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v44 = sub_26C6D8878();
                v45 = sub_26C6D8BB8();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  *&v58[0] = v47;
                  *v46 = 136446210;
                  *(v46 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, v58);
                  _os_log_impl(&dword_26C66B000, v44, v45, "Invoking completion block that was passed into: %{public}s", v46, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v47);
                  MEMORY[0x26D6A7490](v47, -1, -1);
                  MEMORY[0x26D6A7490](v46, -1, -1);
                }

                v48 = v34;
                a4(v34, 0);

                sub_26C676904(a4);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v49 = sub_26C6D8878();
                v50 = sub_26C6D8BB8();
                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  *&v58[0] = v52;
                  *v51 = 136446210;
                  *(v51 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, v58);
                  _os_log_impl(&dword_26C66B000, v49, v50, "No completion block passed into %{public}s. ", v51, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v52);
                  MEMORY[0x26D6A7490](v52, -1, -1);
                  MEMORY[0x26D6A7490](v51, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v58, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD1F8);
  v17 = v28;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v58[0] = v21;
    *v20 = 136315138;
    *&v56 = v28;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v23 = sub_26C6D8A18();
    v25 = sub_26C67A77C(v23, v24, v58);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v18, v19, "Failed to retrieve value for anisetteData from anisetteResponse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v26 = swift_allocError();
    *v27 = xmmword_26C6DE820;
    *(v27 + 16) = 0;
    a4(0, v26);
  }

  else
  {
  }
}

void sub_26C6D4D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26C6D86E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_26C6D4DC8(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD1F8);
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();
  if (os_log_type_enabled(v11, v12))
  {
    v39 = a3;
    v13 = a4;
    v14 = swift_slowAlloc();
    v15 = v5;
    v16 = a1;
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v14 = 136446210;
    *(v14 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, &aBlock);
    _os_log_impl(&dword_26C66B000, v11, v12, "%{public}s is invoked. ", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v18 = v17;
    a1 = v16;
    v5 = v15;
    MEMORY[0x26D6A7490](v18, -1, -1);
    v19 = v14;
    a4 = v13;
    a3 = v39;
    MEMORY[0x26D6A7490](v19, -1, -1);
  }

  v20 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v21 = *(v5 + v20);
  if (v21)
  {

    v22 = v21;
    v23 = sub_26C6CCD28(a1, a2, 2u);
    v30 = sub_26C6CB368();
    v32 = v31;

    v40 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v33 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x79636167656CLL;
    v42 = 0xE600000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v30;
    *(inited + 80) = v32;
    sub_26C67ED2C(v30, v32);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v35 = sub_26C6D89A8();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = a3;
    v37[3] = a4;
    v37[4] = v36;
    v45 = sub_26C6D7F80;
    v46 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_26C6D1900;
    v44 = &block_descriptor_31;
    v38 = _Block_copy(&aBlock);
    sub_26C676954(a3);

    [v22 sendRequestID:v40 options:v33 request:v35 responseHandler:v38];

    _Block_release(v38);
    sub_26C678418(v30, v32);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2804AD228);
    v24 = sub_26C6D8878();
    v25 = sub_26C6D8BA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, &aBlock);
      _os_log_impl(&dword_26C66B000, v24, v25, "%{public}s invoked but session is nil", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6A7490](v27, -1, -1);
      MEMORY[0x26D6A7490](v26, -1, -1);
    }

    if (a3)
    {
      sub_26C6C0B64();
      v28 = swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 16) = 5;
      a3(0, v28);
    }
  }
}

void sub_26C6D5474(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *))
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v7, v8, "Legacy fetch Anisette request failed with error: %d", v9, 8u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    if (a4)
    {
      v10 = a1;
      sub_26C6C0B64();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
      a4(0, v11);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = sub_26C6D84A4(a3, 4);

    if (v28)
    {
      v29 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v29 + 16))
      {
        v30 = *&v28[OBJC_IVAR___WFAnisetteResponse_data];

        v31 = sub_26C689AC8(0x6574746573696E61, 0xEC00000061746144);
        if (v32)
        {
          sub_26C684E18(*(v29 + 56) + 32 * v31, &v56);

          v58[0] = v56;
          v58[1] = v57;
          if (*(&v57 + 1))
          {
            sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v33 = sub_26C6D8898();
              __swift_project_value_buffer(v33, qword_2804AD228);
              v34 = v55;
              v35 = sub_26C6D8878();
              v36 = sub_26C6D8BB8();

              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                *&v58[0] = v54;
                *v37 = 136315394;
                v38 = [v34 description];
                v53 = v36;
                v39 = sub_26C6D8A08();
                v41 = v40;

                v42 = sub_26C67A77C(v39, v41, v58);

                *(v37 + 4) = v42;
                *(v37 + 12) = 2080;
                *(v37 + 14) = sub_26C67A77C(0x6863746566, 0xE500000000000000, v58);
                _os_log_impl(&dword_26C66B000, v35, v53, "Received response: legacyAnisetteData %s for service id: %s", v37, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6A7490](v54, -1, -1);
                MEMORY[0x26D6A7490](v37, -1, -1);
              }

              if (a4)
              {
                v43 = qword_2804A8588;

                if (v43 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v44 = sub_26C6D8878();
                v45 = sub_26C6D8BB8();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  *&v58[0] = v47;
                  *v46 = 136446210;
                  *(v46 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, v58);
                  _os_log_impl(&dword_26C66B000, v44, v45, "Invoking completion block that was passed into: %{public}s", v46, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v47);
                  MEMORY[0x26D6A7490](v47, -1, -1);
                  MEMORY[0x26D6A7490](v46, -1, -1);
                }

                v48 = v34;
                a4(v34, 0);

                sub_26C676904(a4);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v33, qword_2804AD1F8);
                v49 = sub_26C6D8878();
                v50 = sub_26C6D8BB8();
                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  *&v58[0] = v52;
                  *v51 = 136446210;
                  *(v51 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, v58);
                  _os_log_impl(&dword_26C66B000, v49, v50, "No completion block passed into %{public}s. ", v51, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v52);
                  MEMORY[0x26D6A7490](v52, -1, -1);
                  MEMORY[0x26D6A7490](v51, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v58, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD1F8);
  v17 = v28;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v58[0] = v21;
    *v20 = 136315138;
    *&v56 = v28;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v23 = sub_26C6D8A18();
    v25 = sub_26C67A77C(v23, v24, v58);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v18, v19, "Failed to retrieve value for legacy anisetteData from anisetteResponse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v26 = swift_allocError();
    *v27 = xmmword_26C6DE820;
    *(v27 + 16) = 0;
    a4(0, v26);
  }

  else
  {
  }
}

uint64_t sub_26C6D5EDC(uint64_t a1, unint64_t a2)
{
  sub_26C6779D0(0, &qword_2804A8768, 0x277CCAAC8);
  type metadata accessor for AnisetteResponse();
  result = sub_26C6D8BC8();
  if (!result)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v5 = sub_26C6D8898();
    __swift_project_value_buffer(v5, qword_2804AD1F8);
    sub_26C67ED2C(a1, a2);
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BA8();
    sub_26C678418(a1, a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      v10 = sub_26C6D8788();
      v12 = sub_26C67A77C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_26C66B000, v6, v7, "Failed to unarchive anisette data response for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_26C6D623C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26C6D8D48();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_26C676984(i, v6);
    sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26C6D8D28();
    v4 = *(v7 + 16);
    sub_26C6D8D58();
    sub_26C6D8D68();
    sub_26C6D8D38();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id WFSetupServerAnisetteDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSetupServerAnisetteDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall WFSetupServerAnisetteDataProvider.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    *(&v43 + 1) = sub_26C6779D0(0, &unk_2804A9268, 0x277CF0218);
    *&v42 = v4;
    sub_26C684E18(&v42, v40);
    v5 = v41;
    if (v41)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v40, v41);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x28223BE20](v6);
      v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10);
      v11 = v4;
      v12 = sub_26C6D8E38();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    else
    {
      v13 = v4;
      v12 = 0;
    }

    v14 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v14];
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_26C677B60(&v42, &qword_2804A8950, &qword_26C6DAC50);
  v15 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    *(&v43 + 1) = sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
    *&v42 = v16;
    sub_26C684E18(&v42, v40);
    v17 = v41;
    if (v41)
    {
      v18 = __swift_project_boxed_opaque_existential_1(v40, v41);
      v19 = *(v17 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v22 = &v40[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22);
      v23 = v16;
      v24 = sub_26C6D8E38();
      (*(v19 + 8))(v22, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    else
    {
      v25 = v16;
      v24 = 0;
    }

    v26 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v24 forKey:v26];
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_26C677B60(&v42, &qword_2804A8950, &qword_26C6DAC50);
  v27 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28)
  {
    *(&v43 + 1) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
    *&v42 = v28;
    sub_26C684E18(&v42, v40);
    v29 = v41;
    if (v41)
    {
      v30 = __swift_project_boxed_opaque_existential_1(v40, v41);
      v31 = *(v29 - 8);
      v32 = *(v31 + 64);
      MEMORY[0x28223BE20](v30);
      v34 = &v40[-1] - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34);
      v35 = v28;
      v36 = sub_26C6D8E38();
      (*(v31 + 8))(v34, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    else
    {
      v37 = v28;
      v36 = 0;
    }

    v38 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v36 forKey:v38];
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_26C677B60(&v42, &qword_2804A8950, &qword_26C6DAC50);
}

void *sub_26C6D6A04()
{
  if (qword_2804A8588 != -1)
  {
LABEL_75:
    swift_once();
  }

  v0 = sub_26C6D8898();
  __swift_project_value_buffer(v0, qword_2804AD1F8);
  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26C66B000, v1, v2, "Accessing idmsAccountForICloud property", v3, 2u);
    MEMORY[0x26D6A7490](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];
  if (!v5)
  {
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, v10, v11, "Failed to retrieve primary iCloud account", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    return 0;
  }

  v6 = v5;
  v7 = [v5 username];
  if (v7)
  {
    v8 = v7;
    v83 = sub_26C6D8A08();
    v85 = v9;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v13 = [v6 aa_altDSID];
  if (v13)
  {
    v14 = v13;
    v84 = sub_26C6D8A08();
    v16 = v15;
  }

  else
  {
    v84 = 0;
    v16 = 0;
  }

  v17 = sub_26C6D89E8();
  v18 = [v6 accountPropertyForKey_];

  if (v18)
  {
    sub_26C6D8C78();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  if (*(&v89 + 1))
  {
    sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v19 = v87;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_26C677B60(&v90, &qword_2804A8950, &qword_26C6DAC50);
    v19 = 0;
  }

  v20 = [v4 accountTypeWithAccountTypeIdentifier_];
  v21 = [v4 accountsWithAccountType_];
  if (!v21 || (v22 = v21, v23 = sub_26C6D8AA8(), v22, v24 = sub_26C6D623C(v23), , !v24))
  {

    v40 = sub_26C6D8878();
    v41 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v40, v41))
    {
LABEL_82:

      return 0;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to retrieve idms accounts";
LABEL_81:
    _os_log_impl(&dword_26C66B000, v40, v41, v43, v42, 2u);
    MEMORY[0x26D6A7490](v42, -1, -1);
    goto LABEL_82;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
LABEL_77:
    v26 = sub_26C6D8D78();
    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_78:

LABEL_79:
    v40 = sub_26C6D8878();
    v41 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_82;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to find idms account asscociated with primary icloud account";
    goto LABEL_81;
  }

LABEL_26:
  v81 = v19;
  v82 = v25;
  v78 = v20;
  v79 = v6;
  v80 = v4;
  v25 = 0;
  v19 = (v24 & 0xC000000000000001);
  while (1)
  {
    if (v19)
    {
      v27 = MEMORY[0x26D6A6C00](v25, v24);
    }

    else
    {
      if (v25 >= *(v82 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      v27 = *(v24 + 8 * v25 + 32);
    }

    v28 = v27;
    v6 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    v29 = [v27 aa_altDSID];
    if (v29)
    {
      v30 = v29;
      v31 = sub_26C6D8A08();
      v20 = v32;

      if (v16)
      {
        if (v31 == v84 && v16 == v20)
        {
          v31 = v84;
LABEL_62:

          v44 = v28;

          v45 = sub_26C6D8878();
          v46 = sub_26C6D8BB8();

          v47 = v44;

          if (os_log_type_enabled(v45, v46))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v90 = v49;
            *v48 = 136315394;
            v50 = [v47 description];
            v51 = sub_26C6D8A08();
            v53 = v52;

            v54 = sub_26C67A77C(v51, v53, &v90);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2080;
            v55 = sub_26C67A77C(v31, v20, &v90);

            *(v48 + 14) = v55;
            v56 = "Found idms account: %s with matching dsid: %s";
            goto LABEL_67;
          }

LABEL_68:

LABEL_69:

LABEL_70:
          return v47;
        }

        if (sub_26C6D8E48())
        {
          goto LABEL_62;
        }
      }
    }

    v34 = [v28 username];
    if (v34)
    {
      v35 = v34;
      v36 = sub_26C6D8A08();
      v20 = v37;

      if (v85)
      {
        if (v36 == v83 && v85 == v20)
        {
          v36 = v83;
LABEL_65:

          v57 = v28;

          v45 = sub_26C6D8878();
          v46 = sub_26C6D8BB8();

          v47 = v57;

          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_68;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v90 = v49;
          *v48 = 136315394;
          v58 = [v47 description];
          v59 = sub_26C6D8A08();
          v61 = v60;

          v62 = sub_26C67A77C(v59, v61, &v90);

          *(v48 + 4) = v62;
          *(v48 + 12) = 2080;
          v63 = sub_26C67A77C(v36, v20, &v90);

          *(v48 + 14) = v63;
          v56 = "Found idms account: %s with matching username: %s";
LABEL_67:
          _os_log_impl(&dword_26C66B000, v45, v46, v56, v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6A7490](v49, -1, -1);
          MEMORY[0x26D6A7490](v48, -1, -1);
          goto LABEL_69;
        }

        if (sub_26C6D8E48())
        {
          goto LABEL_65;
        }
      }
    }

    v4 = sub_26C6D89E8();
    v38 = [v28 accountPropertyForKey_];

    if (v38)
    {
      sub_26C6D8C78();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    v90 = v88;
    v91 = v89;
    if (*(&v89 + 1))
    {
      break;
    }

    sub_26C677B60(&v90, &qword_2804A8950, &qword_26C6DAC50);
LABEL_28:
    ++v25;
    if (v6 == v26)
    {

      v6 = v79;
      v4 = v80;
      v20 = v78;
      v19 = v81;
      goto LABEL_79;
    }
  }

  sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v20 = v81;
  if (!v81)
  {

    goto LABEL_28;
  }

  v4 = v87;
  v20 = v81;
  v39 = sub_26C6D8C58();

  if ((v39 & 1) == 0)
  {

    goto LABEL_28;
  }

  v65 = v28;
  v66 = v4;
  v67 = sub_26C6D8878();
  v68 = sub_26C6D8BB8();

  v47 = v65;
  if (!os_log_type_enabled(v67, v68))
  {

    goto LABEL_70;
  }

  v69 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  *&v90 = v71;
  *v69 = 136315394;
  v86 = v47;
  v72 = [v47 description];
  v73 = sub_26C6D8A08();
  v75 = v74;

  v76 = sub_26C67A77C(v73, v75, &v90);

  *(v69 + 4) = v76;
  *(v69 + 12) = 2112;
  *(v69 + 14) = v66;
  *v70 = v66;
  v77 = v66;
  _os_log_impl(&dword_26C66B000, v67, v68, "Found idms account: %s with matching dsid: %@", v69, 0x16u);
  sub_26C677B60(v70, &qword_2804A9070, &qword_26C6DA3C0);
  MEMORY[0x26D6A7490](v70, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  MEMORY[0x26D6A7490](v71, -1, -1);
  MEMORY[0x26D6A7490](v69, -1, -1);

  return v86;
}

id sub_26C6D7574()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26C6D6A04();
  if (!v0)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD1F8);
    v14 = sub_26C6D8878();
    v15 = sub_26C6D8BA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26C66B000, v14, v15, "Unable to provide clientDeviceAccount due to failure to retrieve idms account", v16, 2u);
      MEMORY[0x26D6A7490](v16, -1, -1);
    }

    goto LABEL_20;
  }

  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 transportableAuthKitAccount_];

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v31[0] = 0;
  v5 = [v4 credentialForAccount:v3 error:v31];

  if (!v5)
  {
    v17 = v31[0];
    v18 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v19 = sub_26C6D8898();
    __swift_project_value_buffer(v19, qword_2804AD1F8);
    v20 = v18;
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136446210;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v26 = sub_26C6D8A18();
      v28 = sub_26C67A77C(v26, v27, v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve account credentials due to error: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    else
    {
    }

LABEL_20:
    v3 = 0;
    goto LABEL_21;
  }

  v6 = qword_2804A8588;
  v7 = v31[0];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD1F8);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26C66B000, v9, v10, "Successfully retrieved accounts credentials", v11, 2u);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  if (v3)
  {
    v12 = v3;
    [v12 setCredential_];
  }

  else
  {
  }

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
  return v3;
}

id _s10TDGSharing33WFSetupServerAnisetteDataProviderC8isMockedACSb_tcfC_0(char a1)
{
  if (a1)
  {
    v1 = type metadata accessor for WFSetupServerAnisetteDataProvider();
    v2 = objc_allocWithZone(v1);
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
    v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
    v4 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
    swift_beginAccess();
    *&v2[v3] = 0;
    swift_beginAccess();
    *&v2[v4] = 0;
    v13 = v2;
    v5 = &v13;
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = v6;
    if (v6)
    {
      [v6 setLinkType_];
    }

    v8 = sub_26C6D7574();
    v1 = type metadata accessor for WFSetupServerAnisetteDataProvider();
    v9 = objc_allocWithZone(v1);
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
    v10 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
    v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
    swift_beginAccess();
    *&v9[v10] = v7;
    swift_beginAccess();
    *&v9[v11] = v8;
    v14.receiver = v9;
    v5 = &v14;
  }

  v5->super_class = v1;
  return [(objc_super *)v5 init];
}

id sub_26C6D7B44()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v2 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD1F8);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_26C67A77C(0x646F632874696E69, 0xEC000000293A7265, v19);
    _os_log_impl(&dword_26C66B000, v5, v6, "%{public}s is invoked.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C6DA0F0;
  *(v9 + 32) = sub_26C6779D0(0, &unk_2804A9268, 0x277CF0218);
  sub_26C6D8C48();

  if (v20)
  {
    if (swift_dynamicCast())
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_26C677B60(v19, &qword_2804A8950, &qword_26C6DAC50);
    v10 = 0;
  }

  swift_beginAccess();
  v11 = *&v1[v2];
  *&v1[v2] = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26C6DA0F0;
  *(v12 + 32) = sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
  sub_26C6D8C48();

  if (v20)
  {
    if (swift_dynamicCast())
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_26C677B60(v19, &qword_2804A8950, &qword_26C6DAC50);
    v13 = 0;
  }

  swift_beginAccess();
  v14 = *&v1[v3];
  *&v1[v3] = v13;

  v17.receiver = v1;
  v17.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_26C6D7EB4()
{
  MEMORY[0x26D6A7510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26C6D7EEC(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_26C6D0F7C(a1, a2, a3, *(v3 + 16));
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26C6D7F10(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_26C6D21AC(a1, a2, a3, *(v3 + 16));
}

void sub_26C6D7F20(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_26C6D327C(a1, a2, a3, *(v3 + 16));
}

void sub_26C6D7F2C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_26C6D430C(a1, a2, a3, *(v3 + 16));
}

uint64_t objectdestroy_2Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26C6D7F80(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_26C6D5474(a1, a2, a3, *(v3 + 16));
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing33WFSetupServerAnisetteDataProviderC0D6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_26C6D83A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C6D83F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6D8434(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26C6D845C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6D84A4(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v3 = sub_26C6CFEFC(a1);
  v4 = v3;
  if (!v3)
  {
LABEL_8:
    v10 = 5;
    v11 = 1;
LABEL_11:
    sub_26C6C0B64();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v4;
    *(v12 + 16) = v10;
    swift_willThrow();
    return v4;
  }

  if (!*(v3 + 16) || (v5 = sub_26C689AC8(0xD00000000000001CLL, 0x800000026C6E0110), (v6 & 1) == 0))
  {

LABEL_10:
    v11 = *&aProvisiosync[8 * a2];
    v4 = *&aN[8 * a2];
    v10 = 3;
    goto LABEL_11;
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  sub_26C67ED2C(*v7, v9);

  v4 = sub_26C6D5EDC(v8, v9);
  sub_26C678418(v8, v9);
  if (!v4)
  {
    goto LABEL_10;
  }

  return v4;
}

void sub_26C6D85C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_26C678418(a3, a4);
  }
}