uint64_t Optional.descriptionOrNil.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v8, v10, v1);
  (*(v2 + 16))(v5, v8, v1);
  v13 = sub_23030F948();
  (*(v2 + 8))(v8, v1);
  return v13;
}

uint64_t DeferredPromise.init()()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  type metadata accessor for Promise();
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v2 + 24) = 0;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = v0;
  v4 = sub_230046DEC(v2, sub_230047208);

  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *v1 = v4;

  return v6;
}

uint64_t sub_230046DEC(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for Promise();
  swift_allocObject();
  return sub_230046E48(a1, a2);
}

uint64_t sub_230046E48(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for Seal();

  *(v2 + 16) = sub_230047154(v4);
  type metadata accessor for PromiseWeakResolver();
  sub_2300471B8();
  a2();

  return v2;
}

uint64_t sub_230046F20()
{
  type metadata accessor for Seal.Resolution();
  result = sub_2303104C8();
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

uint64_t sub_230046FF0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_230047084(uint64_t a1)
{
  type metadata accessor for Seal.Resolution();
  swift_getFunctionTypeMetadata1();
  *(v1 + 32) = sub_23030F608();
  v3 = *(*v1 + 112);
  v4 = swift_checkMetadataState();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_230047154(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_230047084(a1);
  return v2;
}

uint64_t sub_2300471B8()
{
  v0 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  return v0;
}

uint64_t sub_230047228(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  *(a2 + 24) = a1;
}

id sub_2300472D8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_230047338()
{
  v0 = sub_230310348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2303102F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23030F4C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230047540();
  sub_23030F488();
  v7[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_230310388();
  qword_280C9BA38 = result;
  return result;
}

unint64_t sub_230047540()
{
  result = qword_280C9C2D0;
  if (!qword_280C9C2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C9C2D0);
  }

  return result;
}

unint64_t sub_23004758C()
{
  result = qword_280C9C2D8;
  if (!qword_280C9C2D8)
  {
    sub_2303102F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C2D8);
  }

  return result;
}

unint64_t sub_2300475E4()
{
  result = qword_280C9C2E8;
  if (!qword_280C9C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C2E8);
  }

  return result;
}

uint64_t sub_230047648(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for DeferredPromise();

  v9 = sub_23004792C(v8);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v9;

  swift_retain_n();
  sub_23004796C(a1, 0, 1, sub_230096FA8, v11, sub_230096FBC, v12, sub_230050534, v13);

  result = swift_beginAccess();
  v15 = *(v9 + 16);
  if (v15)
  {

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300477F0()
{

  return swift_deallocObject();
}

uint64_t dispatch thunk of Promise.then<A>(on:closure:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 160))();
}

uint64_t sub_230047854(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v3 = (v1 + 16);
  type metadata accessor for Promise();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = v1;
  v4 = sub_230046DEC(a1, sub_23004720C);

  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *v3 = v4;

  return v6;
}

uint64_t sub_23004792C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_230047854(a1);
  return v2;
}

uint64_t sub_23004796C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *v9;
  v16 = v9[2];
  os_unfair_lock_lock_with_options();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v15 + 80);
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3 & 1;
  *(v17 + 48) = a8;
  *(v17 + 56) = a9;
  *(v17 + 64) = a6;
  *(v17 + 72) = a7;
  *(v17 + 80) = a4;
  *(v17 + 88) = a5;
  v18 = a1;

  v19 = sub_230047AF0(sub_23004F838, v17);

  os_unfair_lock_unlock(*(v16 + 16));
  v19();
}

uint64_t sub_230047AA0()
{

  return swift_deallocObject();
}

uint64_t (*sub_230047AF0(uint64_t a1, uint64_t a2))()
{
  v29 = a1;
  v30 = a2;
  v3 = *(*v2 + 80);
  v4 = type metadata accessor for Seal.Resolution();
  v28 = sub_2303104C8();
  v5 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](v28);
  v8 = &v26 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v15 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v23 = swift_allocObject();
    v24 = v29;
    v25 = v30;
    v23[2] = v3;
    v23[3] = v24;
    v23[4] = v25;
    v31 = sub_23004F878;
    v32 = v23;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_23030FDE8();

    sub_23030FD98();
    swift_endAccess();
    return nullsub_1;
  }

  v27 = v3;
  v16 = *(*v2 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v16, v28);
  result = (*(v9 + 48))(v8, 1, v4);
  if (result != 1)
  {
    v18 = *(v9 + 32);
    v18(v14, v8, v4);
    v18(v12, v14, v4);
    v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v27;
    *(v20 + 3) = v15;
    v21 = v30;
    *(v20 + 4) = v29;
    *(v20 + 5) = v21;
    v18(&v20[v19], v12, v4);

    return sub_230063DD0;
  }

  __break(1u);
  return result;
}

uint64_t sub_230047E3C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Seal.Resolution() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_230047F4C()
{

  return swift_deallocObject();
}

BOOL REMFeatureFlags.isEnabled.getter()
{
  v3 = *v0;
  v2 = 0;
  return REMFeatureFlags.isEnabled(on:)(&v2);
}

void *sub_230047FD4()
{
  result = sub_23004811C(MEMORY[0x277D84F90]);
  off_280C9C358 = result;
  return result;
}

Swift::Bool __swiftcall REMFeatureFlags.isEnabled(on:)(ReminderKitInternal::REMFeatureFlags::Platforms on)
{
  v2 = *on.rawValue;
  v3 = *v1;
  if (qword_280C9C350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_280C9C358;
  if (*(off_280C9C358 + 2) && (v5 = sub_230081CD0(v3), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (v2 > 3)
    {
      return 0;
    }

    else
    {
      v8 = sub_23030F8B8();
      REMFeatureFlags.rawValue.getter();
      v9 = sub_23030F8B8();

      v7 = rem_feature_enabled();
    }
  }

  return v7;
}

unint64_t sub_23004811C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14570);
    v3 = sub_230310BC8();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_230081CD0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t REMFeatureFlags.rawValue.getter()
{
  result = 0x6166654469726973;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x6170655361746164;
    case 3:
      return 0x6F6E6E4177656976;
    case 4:
      v2 = 11;
      goto LABEL_27;
    case 5:
      return 0xD000000000000021;
    case 6:
      return 0xD000000000000023;
    case 7:
      return 0x697463656C6C6F63;
    case 8:
      return 0x656E6F5A656D6974;
    case 9:
      return 0x657461436F747561;
    case 0xA:
    case 0x10:
      return 0xD000000000000016;
    case 0xB:
      return 0x6C41746E65677275;
    case 0xC:
      return 0xD000000000000013;
    case 0xD:
      return 0x726F707075537861;
    case 0xE:
      return 0xD000000000000011;
    case 0xF:
      return 0xD000000000000017;
    case 0x11:
      return 0xD000000000000014;
    case 0x12:
      return 0xD000000000000012;
    case 0x13:
      return 0xD000000000000010;
    case 0x14:
    case 0x17:
      v2 = 10;
      goto LABEL_27;
    case 0x15:
    case 0x18:
      return 0xD00000000000001CLL;
    case 0x16:
      return 0xD000000000000010;
    case 0x19:
      v2 = 5;
      goto LABEL_27;
    case 0x1A:
      v2 = 9;
LABEL_27:
      result = v2 | 0xD000000000000010;
      break;
    case 0x1B:
      result = 0x434174726F706572;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = v13;
  v14[6] = a4;
  v14[7] = a5;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = v15;
  v16[6] = a2;
  v16[7] = a3;

  sub_230048758(a4);

  v17 = sub_23030F208();

  return v17;
}

uint64_t sub_230048758(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_230048768()
{
  MEMORY[0x231914250](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2300487A0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

void *sub_230048808(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void destroy for REMNotifyPublisher(uint64_t a1)
{

  v2 = *(a1 + 16);
}

uint64_t REMNotifyPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = type metadata accessor for REMNotifyPublisher.NotifySubscription();
  (*(v5 + 16))(v7, a1, a2);
  swift_allocObject();

  v12 = sub_230048AFC(v8, v9, v7, v10);
  v15[3] = v11;
  v15[4] = swift_getWitnessTable();
  v15[0] = v12;
  sub_23030F0A8();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_230048A24()
{
  result = sub_2303104C8();
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

char *sub_230048AFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v44 = a4;
  v45 = a1;
  v48 = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v47 = *v4;
  v8 = *(v47 + 80);
  v9 = *(v8 - 8);
  v46 = v9[8];
  MEMORY[0x28223BE20](a1);
  v43 = &v38 - v10;
  v11 = sub_2303104C8();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v4 + 4) = v14;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v4 + 5) = v15;
  *(v4 + 6) = 0;
  *(v4 + 14) = -1;
  v16 = *(*v4 + 136);
  v38 = v9;
  v17 = v9[7];
  v17(&v5[v16], 1, 1, v8);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v42 = a2;
  v39 = v9[2];
  v18 = v48;
  v39(v13, v48, v8);
  v17(v13, 0, 1, v8);
  swift_beginAccess();
  v19 = *(v40 + 40);

  v20 = v8;
  v21 = v38;
  v19(&v5[v16], v13, v41);
  swift_endAccess();
  v22 = v44;
  *&v5[*(*v5 + 144)] = v44;
  out_token = -1;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v43;
  v39(v43, v18, v20);
  v25 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v47;
  *(v26 + 2) = v20;
  *(v26 + 3) = *(v27 + 88);
  *(v26 + 4) = v23;
  v28 = v20;
  (v21[4])(&v26[v25], v24, v20);
  aBlock[4] = sub_23005F950;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23005F1A4;
  aBlock[3] = &block_descriptor_21;
  v29 = _Block_copy(aBlock);
  v30 = v22;

  v31 = sub_23030F968();

  v32 = notify_register_dispatch((v31 + 32), &out_token, v30, v29);

  _Block_release(v29);

  if (v32 || out_token == -1)
  {
    *(v5 + 14) = -1;
    if (qword_280C97118 != -1)
    {
      swift_once();
    }

    v33 = sub_23030EF48();
    __swift_project_value_buffer(v33, qword_280C97120);
    v34 = sub_23030EF38();
    v35 = sub_230310288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = v32;
      _os_log_impl(&dword_230044000, v34, v35, "Unable to register for notification error %u", v36, 8u);
      MEMORY[0x231914180](v36, -1, -1);
    }

    else
    {
    }

    (v21[1])(v48, v28);
  }

  else
  {
    (v21[1])(v48, v28);

    *(v5 + 14) = out_token;
  }

  return v5;
}

uint64_t sub_23004903C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_230049074()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2300492FC(uint64_t a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v1 + 48);
  sub_23030F0D8();
  if (sub_23030F0C8())
  {
    goto LABEL_10;
  }

  sub_23030F0D8();
  v5 = sub_23030F0C8();
  v6 = sub_23030F0D8();
  if (v5)
  {
LABEL_9:
    *(v1 + 48) = v6;
LABEL_10:
    swift_endAccess();
    os_unfair_lock_unlock(v3);
    return;
  }

  if (sub_23030F0C8())
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = sub_23030F0D8();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_230049468()
{
  v0 = sub_230310348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2303102F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23030F4C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230047540();
  sub_23030F4A8();
  v7[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_230310388();
  qword_280C9B000 = result;
  return result;
}

unint64_t sub_230049684()
{
  result = qword_280C993B0;
  if (!qword_280C993B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993B0);
  }

  return result;
}

__n128 sub_2300496D8()
{
  if (qword_280C994A0 != -1)
  {
    swift_once();
  }

  v4 = xmmword_280C994A8;
  v0 = MEMORY[0x277D84F90];
  v1 = sub_230049784(MEMORY[0x277D84F90]);
  v2 = sub_23004996C(v0);
  result = v4;
  xmmword_280C99430 = v4;
  unk_280C99440 = v4;
  xmmword_280C99450 = v4;
  unk_280C99460 = v4;
  xmmword_280C99470 = 0uLL;
  qword_280C99480 = v1;
  unk_280C99488 = v2;
  return result;
}

unint64_t sub_230049784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14468);
    v7 = sub_230310BC8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_230055F74(v9, v5, &qword_27DB14460);
      result = sub_230081B9C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23030EBB8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23004996C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14458);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_230068314(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

double REMAccountsListDataView.Model.init(accounts:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280C99428 != -1)
  {
    swift_once();
  }

  v13 = xmmword_280C99450;
  v14 = unk_280C99460;
  v15 = xmmword_280C99470;
  v16 = *&qword_280C99480;
  v11 = xmmword_280C99430;
  v12 = unk_280C99440;
  sub_230049A64(&v11, &v10);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_230049C5C(MEMORY[0x277D84F90]);
  *a2 = a1;
  *(a2 + 8) = 0;
  v6 = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v6;
  v7 = v16;
  *(a2 + 80) = v15;
  *(a2 + 96) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9;
  *(a2 + 112) = v4;
  *(a2 + 120) = v4;
  *(a2 + 128) = v5;
  *(a2 + 136) = v4;
  return result;
}

uint64_t initializeWithCopy for REMAccountsListDataView.ReminderCounts(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  return a1;
}

uint64_t initializeWithCopy for REMAccountsListDataView.Model(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;
  v8 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;

  v9 = v3;

  return a1;
}

unint64_t sub_230049C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14450);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23008213C(v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_230049D6C()
{
  v10[0] = sub_230310348();
  v0 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2303102F8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23030F468();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23030F4C8();
  MEMORY[0x28223BE20](v8 - 8);
  sub_230047540();
  (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
  sub_23030F4B8();
  v10[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v10[0]);
  result = sub_230310388();
  qword_280C9B720 = result;
  return result;
}

uint64_t sub_23004A03C()
{
  v0 = sub_230310348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2303102F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23030F4C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230047540();
  sub_23030F498();
  v7[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_230310388();
  qword_280C9B018 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for REMAccountsListDataView.Model(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMAccountsListDataView.Model(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t destroy for REMAccountsListDataView.Model(uint64_t a1)
{
}

uint64_t sub_23004A35C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB193C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_230310A58();
  __swift_allocate_value_buffer(v3, qword_280C9C460);
  v4 = __swift_project_value_buffer(v3, qword_280C9C460);
  sub_230310A48();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 sub_23004A528@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v4 = v3;
  v72 = a3;
  v106 = a2;
  v107 = WORD2(a2);
  v5 = sub_230310A58();
  v80 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v8 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v75 = v12 + 3;
  v74 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v16 = v80 + 16;
  v17 = *(v80 + 16);
  v73 = v15;
  v17(v7);
  *(&v93 + 1) = v11;
  *&v92 = v14;
  v78 = v14;

  v18 = sub_23030E7C8();
  sub_23004BC18(&v92, v7);
  v18(&v81, 0);
  sub_23004B324();
  v79 = v8;
  v19 = v77;
  v20 = sub_23030E7B8();
  if (v19)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v22 = sub_23030EF48();
    __swift_project_value_buffer(v22, qword_27DB17288);
    v23 = v19;
    v24 = sub_23030EF38();
    v25 = sub_230310288();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v92 = v27;
      *v26 = 136315394;
      swift_getErrorValue();
      v28 = Error.rem_errorDescription.getter(v104[5]);
      v30 = sub_23004E30C(v28, v29, &v92);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v81 = type metadata accessor for REMAccountsListDataView.Invocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E88);
      v31 = sub_23030F948();
      v33 = sub_23004E30C(v31, v32, &v92);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_230044000, v24, v25, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v27, -1, -1);
      MEMORY[0x231914180](v26, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v35 = v21;
    v68 = v17;
    v69 = v11;
    v80 = v16;
    v70 = v7;
    v71 = v5;
    v36 = v20;
    v37 = v75;
    swift_beginAccess();
    v38 = *v37;
    v39 = objc_allocWithZone(MEMORY[0x277D44860]);

    v104[0] = [v39 init];
    v67 = type metadata accessor for REMAccountsListDataView.Invocation();
    *&v92 = v67;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E88);
    v41 = sub_23030F948();
    v43 = v42;
    v75 = &v67;
    MEMORY[0x28223BE20](v41);
    *(&v67 - 6) = v104;
    *(&v67 - 5) = &v105;
    *(&v67 - 4) = v76;
    *(&v67 - 3) = v36;
    v77 = v36;
    *(&v67 - 2) = v35;
    *(&v67 - 1) = v38;
    v44 = sub_230310268();
    sub_2300535B4(v44, v41, v43, v44, sub_230052C20, (&v67 - 8));
    v45 = v35;
    v76 = v40;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v46 = v104[0];
    v47 = [v104[0] resultStorages];
    v48 = sub_23030F658();

    *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v92 = v48;
    sub_23004D5CC(&v92, &v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v75 = v45;
      v49 = v103;
      __swift_destroy_boxed_opaque_existential_1(&v92);
      v50 = v69;
      v51 = swift_allocObject();
      v52 = v74;
      v51[2] = v74;
      v51[3] = v49;
      v53 = v52;
      v51[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v54 = v70;
      v68(v70, v73, v71);
      *(&v93 + 1) = v50;
      *&v92 = v51;

      v55 = sub_23030E788();
      sub_23004BC18(&v92, v54);
      v55(&v81, 0);
      v56 = [v46 resultData];
      v57 = sub_23030EA18();
      v59 = v58;

      sub_230054800();
      sub_23030E778();
      sub_23005FE3C(v57, v59);
      v89 = v100;
      v90 = v101;
      v91 = v102;
      v85 = v96;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v81 = v92;
      v82 = v93;
      v83 = v94;
      v84 = v95;
      v60 = [v46 latestFetchResultToken];

      sub_23005FE3C(v77, v75);

      v61 = v90;
      v62 = v72;
      *(v72 + 128) = v89;
      *(v62 + 144) = v61;
      v63 = v91;
      v64 = v86;
      *(v62 + 64) = v85;
      *(v62 + 80) = v64;
      v65 = v88;
      *(v62 + 96) = v87;
      *(v62 + 112) = v65;
      v66 = v82;
      *v62 = v81;
      *(v62 + 16) = v66;
      result = v84;
      *(v62 + 32) = v83;
      *(v62 + 48) = result;
      *(v62 + 160) = v63;
      *(v62 + 168) = v60;
    }

    else
    {
      sub_23004D5CC(&v92, &v81);
      sub_2301FEB10(&v81, 0, 0);
      sub_2300DA5F0(&v81);
      swift_willThrow();
      sub_23005FE3C(v77, v45);

      __swift_destroy_boxed_opaque_existential_1(&v92);
    }
  }

  return result;
}

uint64_t sub_23004AF74(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14698);
  v39 = a2;
  result = sub_230310BA8();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_23004B314((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_23004D5CC(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_23030F768();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_23004B314(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_23004B314(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23004B324()
{
  result = qword_280C99400;
  if (!qword_280C99400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99400);
  }

  return result;
}

uint64_t REMAccountsListDataView.FetchOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19778);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[1];
  v14 = v1[2];
  v15 = v7;
  v8 = v1[3];
  v12[2] = v1[4];
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23004B690();
  sub_230311448();
  v24 = 0;
  v9 = v16;
  sub_230310DB8();
  if (!v9)
  {
    v10 = v13;
    v23 = v15;
    v22 = 1;
    sub_23004B6E4();
    sub_230310DF8();
    v21 = 2;
    sub_230310DB8();
    v20 = v10;
    v19 = 3;
    sub_230310DF8();
    v18 = 4;
    sub_230310DB8();
    v17 = 5;
    sub_230310DB8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23004B5E4()
{
  result = qword_280C99408;
  if (!qword_280C99408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99408);
  }

  return result;
}

unint64_t sub_23004B63C()
{
  result = qword_280C99410;
  if (!qword_280C99410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99410);
  }

  return result;
}

unint64_t sub_23004B690()
{
  result = qword_280C99418;
  if (!qword_280C99418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99418);
  }

  return result;
}

unint64_t sub_23004B6E4()
{
  result = qword_280C993A0;
  if (!qword_280C993A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993A0);
  }

  return result;
}

unint64_t sub_23004B788()
{
  result = qword_280C99398;
  if (!qword_280C99398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99398);
  }

  return result;
}

uint64_t Result.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  (*(v8 + 16))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_23004B988(a1, v6, a2);
  return (*(*(*(a1 + 16) - 8) + 56))(a2, 0, 1);
}

uint64_t sub_23004B988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

__n128 static REMAccountsListDataView.fetchModel(store:diffingAgainst:options:)@<Q0>(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = [objc_allocWithZone(type metadata accessor for REMAccountsListDataView.Invocation()) initWithFetchResultTokenToDiffAgainst_];
  v11 = v10;
  v12 = 0x10000000000;
  if (!v9)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13 | v12 | (v7 << 24);
  v15 = 0x10000;
  if (!v6)
  {
    v15 = 0;
  }

  v16 = v39;
  sub_23004A528(v10, v14 | v15 | (v5 << 8) | v4, v36);

  if (!v16)
  {
    v33 = v36[8];
    v34 = v37;
    v35 = v38;
    v29 = v36[4];
    v30 = v36[5];
    v31 = v36[6];
    v32 = v36[7];
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v28 = v36[3];
    v18 = v37;
    v19 = v38;
    sub_230054718(&v25, v24);
    v20 = *(&v19 + 1);

    sub_23005E734(&v25);
    v21 = v32;
    *(a3 + 96) = v31;
    *(a3 + 112) = v21;
    *(a3 + 128) = v33;
    v22 = v28;
    *(a3 + 32) = v27;
    *(a3 + 48) = v22;
    v23 = v30;
    *(a3 + 64) = v29;
    *(a3 + 80) = v23;
    result = v26;
    *a3 = v25;
    *(a3 + 16) = result;
    *(a3 + 144) = v18;
    *(a3 + 160) = v19;
  }

  return result;
}

uint64_t sub_23004BC18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23004B314(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_23004BDE8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_230310A58();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_230061918(a1, &qword_27DB172F0);
    sub_2300A128C(a2, v9);
    v7 = sub_230310A58();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_230061918(v9, &qword_27DB172F0);
  }

  return result;
}

void sub_23004BD34(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_23004B314(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_230061BCC(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_230061918(a1, &qword_27DB14810);
    sub_2300A1424(a2, v6);

    sub_230061918(v6, &qword_27DB14810);
  }
}

_OWORD *sub_23004BDE8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_230310A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23004BFC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2300894B0();
      goto LABEL_7;
    }

    sub_23004AF74(v17, a3 & 1);
    v23 = sub_23004BFC0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23004C1BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2303112A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_23004B314(a1, v21);
}

unint64_t sub_23004BFC0(uint64_t a1)
{
  sub_230310A58();
  v2 = sub_23030F768();

  return sub_23004C024(a1, v2);
}

unint64_t sub_23004C024(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_230310A58();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_23030F818();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

_OWORD *sub_23004C1BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_230310A58();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23004B314(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_23004C2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14470);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v11, &qword_27DB146A0);
      v5 = v11;
      result = sub_230059108(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23004B314(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23004C450()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v4 = 0xD000000000000017;
    if (v1 == 4)
    {
      v4 = 0xD000000000000030;
    }

    if (v1 == 3)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 1)
    {
      v2 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0x6363416863746566;
    }
  }
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributeOutput.Pipeline(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributeOutput.Pipeline(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Lock.sync<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

uint64_t sub_23004C814(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v6 = sub_23030EF48();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  v7 = [objc_opt_self() *a4];
  return sub_23030EF58();
}

void *sub_23004C888(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_23004C8FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_230052AEC(a1, a2);
  sub_23004C948(&unk_2844E8490);
  return v3;
}

uint64_t sub_23004C948(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23009DC34(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_23004CA34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23030E9F8();
  if (a4)
  {
    sub_23004CB58();
    sub_23004CD24();
    a4 = sub_23030F638();
  }

  v13[0] = 0;
  v9 = [v5 resultFromPerformingSwiftInvocation:a1 parametersData:v8 storages:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v9;
}

unint64_t sub_23004CB58()
{
  result = qword_280C9C478;
  if (!qword_280C9C478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C9C478);
  }

  return result;
}

uint64_t sub_23004CBA4(uint64_t a1, unint64_t *a2)
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

uint64_t UnfairLock.init(options:)(int *a1)
{
  v2 = *a1;
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *v3 = 0;
  *(v1 + 24) = (v2 & 1) << 16;
  return v1;
}

uint64_t sub_23004CC5C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C9B440);
  v1 = __swift_project_value_buffer(v0, qword_280C9B440);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_23004CD24()
{
  result = qword_280C9B988;
  if (!qword_280C9B988)
  {
    sub_23004CBA4(255, &qword_280C9C478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B988);
  }

  return result;
}

uint64_t sub_23004CDAC()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        AssociatedTypeWitness = sub_2303104C8();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

ReminderKitInternal::REMAccountsListDataView::CachablePropertyFetchStyle_optional __swiftcall REMAccountsListDataView.CachablePropertyFetchStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t storeEnumTagSinglePayload for REMAccountsListDataView.ReminderCounts(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Publisher.combiningDebounce<A>(for:scheduler:options:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = v8;
  v37 = a7;
  v38 = a4;
  v39 = a5;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v36 = a8;
  swift_getAssociatedTypeWitness();
  v11 = sub_2303104C8();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v30 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v9;
  v28 = v27;
  (*(v25 + 16))(v24, v26);
  (*(v19 + 16))(v22, v33, AssociatedTypeWitness);
  (*(v15 + 16))(v17, v34, a6);
  (*(v31 + 16))(v14, v35, v32);
  Publishers.CombiningDebounce.init(upstream:dueTime:scheduler:options:transform:)(v24, v22, v17, v14, v38, v39, v28, a6, v36);
}

uint64_t Publishers.CombiningDebounce.init(upstream:dueTime:scheduler:options:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v14 = type metadata accessor for Publishers.CombiningDebounce();
  v15 = v14[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v15, a2, AssociatedTypeWitness);
  (*(*(a8 - 8) + 32))(a9 + v14[14], a3, a8);
  v17 = v14[15];
  swift_getAssociatedTypeWitness();
  v18 = sub_2303104C8();
  result = (*(*(v18 - 8) + 32))(a9 + v17, a4, v18);
  v20 = (a9 + v14[16]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t getEnumTagSinglePayload for REMAccountsListDataView.ReminderCounts(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23004D5CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23004D628(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 8;
  v10 = (v5 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v11 = *(v6 - 8);
  v12 = v11 + 8;
  v13 = (v10 + *(v9 + 56) + *(v11 + 80)) & ~*(v11 + 80);
  (*(v11 + 8))(v13, v6);
  v14 = *(v12 + 56);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = (v13 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  if (!(*(v16 + 48))(v17, 1, v15))
  {
    (*(v16 + 8))(v17, v15);
  }
}

uint64_t Publishers.CombiningDebounce.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v81 = a4;
  v84 = a1;
  v5 = *(a2 + 40);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v78 = &v55 - v7;
  v8 = *(a2 + 16);
  v59 = *(a2 + 32);
  v74 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_2303104C8();
  v83 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v88 = &v55 - v11;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v86 = v9;
  v65 = sub_23030EFF8();
  v76 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v89 = &v55 - v14;
  WitnessTable = swift_getWitnessTable();
  v72 = sub_23030F008();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = &v55 - v15;
  v73 = swift_getWitnessTable();
  v16 = sub_23030EFC8();
  v67 = v16;
  v75 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v64 = &v55 - v17;
  v68 = swift_getWitnessTable();
  v92 = v16;
  v93 = v6;
  v94 = v68;
  v95 = v5;
  v18 = v5;
  v56 = v5;
  v69 = sub_23030F078();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v55 - v19;
  v61 = a2;
  v60 = *(a2 + 56);
  v87 = *(a2 + 52);
  v20 = (v90 + *(a2 + 64));
  v22 = *v20;
  v21 = v20[1];
  v58 = v22;
  v57 = v21;
  v23 = v90;
  (*(v12 + 16))(&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v90 + v60, v6);
  v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v8;
  *(v25 + 3) = v6;
  v26 = v6;
  v85 = v6;
  v27 = v91;
  v28 = v59;
  *(v25 + 4) = v91;
  *(v25 + 5) = v28;
  v29 = v81;
  *(v25 + 6) = v18;
  *(v25 + 7) = v29;
  (*(v12 + 32))(&v25[v24], &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v55 = v8;
  v30 = v28;
  sub_23030F1D8();

  (*(*(TupleTypeMetadata2 - 8) + 56))(v88, 1, 1);
  v32 = v78;
  v31 = v79;
  v33 = AssociatedTypeWitness;
  (*(v79 + 16))(v78, v23 + v87, AssociatedTypeWitness);
  v34 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v35 = (v80 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v85;
  *(v36 + 2) = v8;
  *(v36 + 3) = v37;
  *(v36 + 4) = v27;
  *(v36 + 5) = v30;
  v38 = v30;
  v39 = v56;
  *(v36 + 6) = v56;
  *(v36 + 7) = v29;
  (*(v31 + 32))(&v36[v34], v32, v33);
  v40 = &v36[v35];
  v41 = v57;
  *v40 = v58;
  *(v40 + 1) = v41;

  v42 = v62;
  v44 = v88;
  v43 = v89;
  v45 = v65;
  v46 = v86;
  sub_23030F1F8();

  (*(v83 + 8))(v44, v46);
  (*(v76 + 8))(v43, v45);
  v47 = swift_allocObject();
  v48 = v85;
  v47[2] = v55;
  v47[3] = v48;
  v47[4] = v91;
  v47[5] = v38;
  v47[6] = v39;
  v47[7] = v29;
  v49 = v64;
  v50 = v72;
  sub_23030F1A8();

  (*(v77 + 8))(v42, v50);
  v51 = v63;
  v52 = v67;
  sub_23030F278();
  (*(v75 + 8))(v49, v52);
  v53 = v69;
  sub_23030F068();
  return (*(v71 + 8))(v51, v53);
}

uint64_t sub_23004E170()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 64) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_23004E1F0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

unint64_t sub_23004E30C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23004E568(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23004D5CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *InitiallyEmptyCurrentValueSubject.init()()
{
  v1 = *(*v0 + 80);
  v2 = sub_2303104C8();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_23030F138();
  (*(*(v1 - 8) + 56))(v4, 1, 1, v1);
  v0[2] = sub_23030F148();
  return v0;
}

unint64_t sub_23004E568(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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

LABEL_8:
    result = sub_23004C8FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_230310958();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = a3;
  v4[6] = a4;
  v4[7] = 0;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2301D01B4;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_2301D01D4;
  v9[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169A0);
  v10 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = a3;
  v13 = a4;
  v14 = v12;
  v15 = v13;

  v16 = swift_slowAlloc();
  *(v11 + 16) = v16;
  *v16 = 0;

  *(v11 + 24) = 0;
  v17 = MEMORY[0x277D84F98];
  v10[9] = v11;
  v10[10] = v17;
  v10[2] = v14;
  v10[3] = sub_2301D01B8;
  v10[4] = v9;
  v10[5] = 0;
  v10[7] = sub_2301D01D4;
  v10[8] = v8;
  v10[6] = 0;
  v4[7] = v10;

  return v4;
}

uint64_t sub_23004E828()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23004E860()
{

  return swift_deallocObject();
}

unint64_t sub_23004E954()
{
  result = qword_280C99BB0;
  if (!qword_280C99BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99BB0);
  }

  return result;
}

unint64_t sub_23004E9AC()
{
  result = qword_280C99BA8;
  if (!qword_280C99BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99BA8);
  }

  return result;
}

uint64_t InitiallyEmptyCurrentValueSubject.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DeferredPromise.resolve(_:)(uint64_t a1)
{
  if (*(v1 + 24))
  {

    sub_23004EAB4(a1);
  }

  *(v1 + 24) = 0;
}

uint64_t sub_23004EAB4(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_23004EB2C(a1);
  }

  return result;
}

uint64_t sub_23004EB2C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Seal.Resolution();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v9 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    (*(*(v3 - 8) + 16))(v7, a1, v3);
    swift_storeEnumTagMultiPayload();
    v9 = sub_23004ECC0(v7);
    (*(v5 + 8))(v7, v4);
  }

  os_unfair_lock_unlock(*(v8 + 16));
  v9();
}

uint64_t (*sub_23004ECC0(uint64_t a1))()
{
  v18 = a1;
  v21 = *(*v1 + 80);
  v3 = type metadata accessor for Seal.Resolution();
  v4 = *(v3 - 8);
  v20 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v19 = &v18 - v5;
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = *(v1 + 2);
  os_unfair_lock_assert_owner(*(v10 + 16));
  v11 = *(v4 + 16);
  v11(v9, a1, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  v12 = *(*v1 + 112);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v9, v6);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v1 + 4);
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_23030FDE8();

  sub_23030FDD8();
  swift_endAccess();
  v14 = v19;
  v11(v19, v18, v3);
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v21;
  *(v16 + 3) = v10;
  *(v16 + 4) = v13;
  (*(v4 + 32))(&v16[v15], v14, v3);

  return sub_23004F320;
}

uint64_t sub_23004EFB4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Seal.Resolution() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

void *sub_23004F0C4(void *a1, unsigned __int8 *a2, uint64_t a3)
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
  if (v4 >= 2)
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
  }

LABEL_18:
  if (v4 == 1)
  {
    v11 = *a2;
    v13 = *a2;
    result = a1;
    *a1 = v11;
    *(a1 + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(a1, a2, v3 + 1);
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))();
    result = a1;
    *(a1 + v3) = 0;
  }

  return result;
}

void sub_23004F220(unsigned __int8 *a1, uint64_t a2)
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
  }

  else if (!v3)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

uint64_t sub_23004F320()
{
  v1 = *(type metadata accessor for Seal.Resolution() - 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_23004F398(v2, v3, v4);
}

uint64_t sub_23004F398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  type metadata accessor for Seal.Resolution();
  swift_getFunctionTypeMetadata1();
  result = sub_23030FD78();
  if (result)
  {
    v6 = 0;
    for (i = a2 + 40; ; i += 16)
    {
      v8 = sub_23030FD58();
      result = sub_23030FD08();
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_8;
      }

      v10 = *(i - 8);

      v10(a3);

      result = sub_23030FD78();
      ++v6;
      if (v9 == result)
      {
        return result;
      }
    }

    result = sub_2303108C8();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_23004F4A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11)
{
  v32 = a7;
  v33 = a5;
  v34 = a4;
  v35 = a3;
  v36 = a2;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v17 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  v20 = type metadata accessor for Seal.Resolution();
  MEMORY[0x28223BE20](v20);
  v22 = (&v31 - v21);
  (*(v23 + 16))(&v31 - v21, a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v22;

      v26 = v25;
      sub_230126528(v36, 0, 1, v32, a8, v25);
    }

    else
    {
      sub_23004F8A0(v36, 0, 1, a9, a10);
    }
  }

  else
  {
    v27 = *(v14 + 32);
    v27(v19, v22, a11);
    (*(v14 + 16))(v17, v19, a11);
    v28 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v29 = swift_allocObject();
    v30 = v33;
    *(v29 + 2) = a11;
    *(v29 + 3) = v30;
    *(v29 + 4) = a6;
    v27(&v29[v28], v17, a11);

    sub_23004F8A0(v36, v35, v34 & 1, sub_230050538, v29);

    (*(v14 + 8))(v19, a11);
  }
}

uint64_t sub_23004F77C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23004F8A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v56 = sub_23030F458();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_23030F4C8();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23030F438();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_23030F4F8();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v23 = &v53 - v22;
  if ((a3 & 1) != 0 || (v24 = *&a2, *&a2 <= 0.0))
  {
    if (qword_280C9BA30 != -1)
    {
      swift_once();
    }

    if (qword_280C9BA38 != a1)
    {
      if (qword_280C9B1B8 != -1)
      {
        swift_once();
      }

      if (qword_280C9B1C0 != a1)
      {
        v65 = v58;
        v66 = v59;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_2300F5280;
        v64 = &block_descriptor_22;
        v30 = _Block_copy(&aBlock);

        sub_23030F488();
        v60 = MEMORY[0x277D84F90];
        sub_2300ED808();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
        sub_2300ED860();
        v31 = v56;
        sub_230310648();
        MEMORY[0x2319120F0](0, v11, v9, v30);
        _Block_release(v30);
        (*(v54 + 8))(v9, v31);
        (*(v55 + 8))(v11, v57);
      }

      if (![objc_opt_self() isMainThread])
      {
        sub_230047540();
        v33 = sub_230310358();
        v65 = v58;
        v66 = v59;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_2300F5280;
        v64 = &block_descriptor_25_0;
        v34 = _Block_copy(&aBlock);

        sub_23030F488();
        aBlock = MEMORY[0x277D84F90];
        sub_2300ED808();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
        sub_2300ED860();
        v35 = v56;
        sub_230310648();
        MEMORY[0x2319120F0](0, v11, v9, v34);
        _Block_release(v34);

        (*(v54 + 8))(v9, v35);
        return (*(v55 + 8))(v11, v57);
      }
    }

    return v58();
  }

  if (qword_280C9B1B8 != -1)
  {
    v49 = v20;
    v50 = v21;
    swift_once();
    v21 = v50;
    v20 = v49;
  }

  if (qword_280C9B1C0 == a1)
  {
    v36 = v21;
    v37 = v20;
    sub_230047540();
    v38 = sub_230310358();
    sub_23030F4E8();
    v39 = v24 * 1000000.0;
    if (COERCE_UNSIGNED_INT64(v24 * 1000000.0) >> 52 <= 0x7FE)
    {
      if (v39 > -9.22337204e18)
      {
        v53 = v38;
        if (v39 < 9.22337204e18)
        {
          *v15 = v39;
          (*(v13 + 104))(v15, *MEMORY[0x277D85170], v12);
          MEMORY[0x231911290](v19, v15);
          (*(v13 + 8))(v15, v12);
          v40 = *(v36 + 8);
          v41 = v37;
          v40(v19, v37);
          v65 = v58;
          v66 = v59;
          aBlock = MEMORY[0x277D85DD0];
          v62 = 1107296256;
          v63 = sub_2300F5280;
          v64 = &block_descriptor_31;
          v42 = _Block_copy(&aBlock);

          sub_23030F488();
          aBlock = MEMORY[0x277D84F90];
          sub_2300ED808();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
          sub_2300ED860();
          v43 = v56;
          sub_230310648();
          v44 = v53;
          MEMORY[0x231912080](v23, v11, v9, v42);
          _Block_release(v42);

          (*(v54 + 8))(v9, v43);
          (*(v55 + 8))(v11, v57);
          return (v40)(v23, v41);
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_280C9BA30 != -1)
  {
    v51 = v20;
    v52 = v21;
    swift_once();
    v21 = v52;
    v20 = v51;
  }

  if (qword_280C9BA38 != a1)
  {
    v25 = v21;
    v26 = v20;
    sub_23030F4E8();
    v27 = v24 * 1000000.0;
    if (COERCE_UNSIGNED_INT64(v24 * 1000000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        *v15 = v27;
        (*(v13 + 104))(v15, *MEMORY[0x277D85170], v12);
        MEMORY[0x231911290](v19, v15);
        (*(v13 + 8))(v15, v12);
        v53 = *(v25 + 8);
        v53(v19, v26);
        v65 = v58;
        v66 = v59;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_2300F5280;
        v64 = &block_descriptor_28;
        v28 = _Block_copy(&aBlock);

        sub_23030F488();
        v60 = MEMORY[0x277D84F90];
        sub_2300ED808();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
        sub_2300ED860();
        v29 = v56;
        sub_230310648();
        MEMORY[0x231912080](v23, v11, v9, v28);
        _Block_release(v28);
        (*(v54 + 8))(v9, v29);
        (*(v55 + 8))(v11, v57);
        v53(v23, v26);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_27DB13B08 != -1)
  {
LABEL_38:
    swift_once();
  }

  v45 = sub_23030EF48();
  __swift_project_value_buffer(v45, qword_27DB15850);
  v46 = sub_23030EF38();
  v47 = sub_230310298();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_230044000, v46, v47, "Seal.invoke(on:afterDelay:block:) will not respect positive delay when input queue is zalgo", v48, 2u);
    MEMORY[0x231914180](v48, -1, -1);
  }

  return v58();
}

uint64_t sub_23005039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11[-v7];
  v9(v6);
  DeferredPromise.resolve(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2300505B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2300505F0()
{
  result = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_230050708()
{
  result = sub_23030EBB8();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeWithCopy for REMNavigationSpecifier(uint64_t *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
      goto LABEL_16;
    case 1u:
    case 2u:
      v10 = *a2;
      v11 = *(a2 + 1);
      *a1 = *a2;
      v12 = a2[16];
      v13 = v10;
      sub_2301BA188(v11, v12);
      a1[1] = v11;
      *(a1 + 16) = v12;
      goto LABEL_16;
    case 3u:
      v17 = *a2;
      v18 = *(a2 + 1);
      v19 = a2[16];
      sub_23014FFB8(v17, v18, v19);
      *a1 = v17;
      a1[1] = v18;
      *(a1 + 16) = v19;
      goto LABEL_16;
    case 4u:
      v8 = *a2;
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 10) = a2[10];
      v9 = v8;
      goto LABEL_16;
    case 5u:
    case 6u:
      v14 = *a2;
      *a1 = *a2;
      *(a1 + 8) = a2[8];
      v15 = v14;
      goto LABEL_16;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
      v22 = *a2;
      v23 = a2[8];
      sub_230050BA4(v22, v23);
      *a1 = v22;
      *(a1 + 8) = v23;
      goto LABEL_16;
    case 0xCu:
      v16 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v16;

      goto LABEL_16;
    case 0xFu:
      if (*a2 <= 2uLL)
      {
        *a1 = *a2;
        *(a1 + 16) = a2[16];
      }

      else
      {
        v29 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v29;
        *(a1 + 16) = a2[16];
      }

      goto LABEL_16;
    case 0x11u:
      v24 = sub_23030EBB8();
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      v25 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
      v26 = (a1 + v25);
      v27 = &a2[v25];
      v28 = *(v27 + 1);
      *v26 = *v27;
      v26[1] = v28;

LABEL_16:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v20 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v20);
      break;
  }

  return result;
}

id sub_230050BA4(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_230050C08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for DeferredPromise();

  v9 = sub_23004792C(v8);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v9;

  swift_retain_n();
  sub_23004796C(a1, 0, 1, sub_230096FA8, v11, sub_230096FBC, v12, sub_230062914, v13);

  result = swift_beginAccess();
  v15 = *(v9 + 16);
  if (v15)
  {

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void destroy for REMNavigationSpecifier(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 6u:
      v4 = *a1;

      return;
    case 1u:
    case 2u:

      v5 = *(a1 + 8);
      v6 = *(a1 + 16);

      sub_2301BA1A8(v5, v6);
      return;
    case 3u:
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);

      sub_230052D78(v7, v8, v9);
      return;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
      v2 = *a1;
      v3 = *(a1 + 8);

      sub_230050F40(v2, v3);
      return;
    case 0xCu:
      goto LABEL_18;
    case 0xFu:
      if (*a1 < 3uLL)
      {
        return;
      }

LABEL_18:

      return;
    case 0x11u:
      v10 = sub_23030EBB8();
      (*(*(v10 - 8) + 8))(a1, v10);
      type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
      goto LABEL_18;
    default:
      return;
  }
}

void sub_230050F40(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_230050FA4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_23030E4A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t DeferredPromise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Promise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2300511A8()
{
  sub_230051200();

  return swift_deallocClassInstance();
}

uint64_t sub_230051200()
{

  v1 = *(*v0 + 112);
  type metadata accessor for Seal.Resolution();
  v2 = sub_2303104C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

unint64_t static REM_os_activity.labelUserAction(_:dso:)@<X0>(unint64_t result@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  if (a2)
  {
    a4 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      if ((result & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_25;
      }

      a4 = result >> 16;
      if (result >> 16 <= 0x10)
      {
        if (result <= 0x7F)
        {
          v6 = result + 1;
LABEL_12:
          v12[1] = v4;
          v12[2] = v5;
          v12[0] = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
          if (a3)
          {
            return MEMORY[0x2319135D0](a3, v12);
          }

          return result;
        }

LABEL_18:
        v7 = (result & 0x3F) << 8;
        v8 = (result >> 6) + v7 + 33217;
        v9 = (v7 | (result >> 6) & 0x3F) << 8;
        v10 = (result >> 18) + ((v9 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v11 = (result >> 12) + v9 + 8487393;
        if (a4)
        {
          v6 = v10;
        }

        else
        {
          v6 = v11;
        }

        if (result < 0x800)
        {
          v6 = v8;
        }

        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3)
  {

LABEL_25:
    JUMPOUT(0x2319135D0);
  }

  return result;
}

void sub_2300513F4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    v8 = a3;
    if (a5)
    {
LABEL_3:

      goto LABEL_8;
    }
  }

  else
  {
    v8 = sub_23008D840(MEMORY[0x277D84F90]);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v9 = *(v8 + 16);

  if (!v9 || (sub_23005EE00(0x6E6F697461727564, 0xE800000000000000), (v10 & 1) == 0))
  {
    v11 = sub_23030FEC8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v8;
    sub_23005EA50(v11, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

LABEL_8:
  if (qword_280C9BB50 != -1)
  {
    swift_once();
  }

  v13 = sub_23030EF48();
  __swift_project_value_buffer(v13, qword_280C989B0);

  v14 = sub_23030EF38();
  v15 = sub_2303102A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_23004E30C(a1, a2, &v23);
    *(v16 + 12) = 2082;
    sub_23004CBA4(0, &qword_280C9B980);
    v18 = sub_23030F668();
    v20 = sub_23004E30C(v18, v19, &v23);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_230044000, v14, v15, "Posting analytics {name: %{public}s, payload: %{public}s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v17, -1, -1);
    MEMORY[0x231914180](v16, -1, -1);
  }

  v21 = sub_23030F8B8();
  sub_23004CBA4(0, &qword_280C9B980);
  v22 = sub_23030F638();

  AnalyticsSendEvent();
}

uint64_t sub_2300516F8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C989B0);
  v1 = __swift_project_value_buffer(v0, qword_280C989B0);
  if (qword_280C9BA28 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1750);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t throwingCast<A>(_:as:failureMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v19 = a3;
  v10 = sub_2303104C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  sub_23004D5CC(a1, v20);
  v14 = swift_dynamicCast();
  v15 = *(*(a5 - 8) + 56);
  if (v14)
  {
    v16 = *(a5 - 8);
    v15(v13, 0, 1, a5);
    return (*(v16 + 32))(a6, v13, a5);
  }

  else
  {
    v15(v13, 1, 1, a5);
    (*(v11 + 8))(v13, v10);
    sub_23004D5CC(a1, v20);
    sub_2300B1FDC(v20, a2, v19, v21);
    sub_230061918(v20, &qword_27DB14810);
    return swift_willThrow();
  }
}

{
  sub_230055F74(a1, &v13, &qword_27DB14810);
  if (v14)
  {
    sub_230061914(&v13, v15);
    throwingCast<A>(_:as:failureMessage:)(v15, a2, 0, 0, a5, a6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_230061918(&v13, &qword_27DB14810);
    sub_2300B1FDC(a1, a2, a3, a4);
    return swift_willThrow();
  }
}

uint64_t static CodingUserInfoKey.remStoragesContainer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v2 = sub_230310A58();
  v3 = __swift_project_value_buffer(v2, qword_280C9C460);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_230051A78()
{
  result = qword_280C97E48;
  if (!qword_280C97E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E48);
  }

  return result;
}

uint64_t sub_230051AE0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesAccuracy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_230051BD8(uint64_t a1)
{
  v2 = type metadata accessor for REMAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *REMStoreObjectsContainer.init(store:storages:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t REMAccountsListDataView.FetchOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19780);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23004B690();
  sub_230311428();
  if (!v2)
  {
    v26 = 0;
    v9 = sub_230310CA8();
    v24 = 1;
    sub_230051A78();
    sub_230310CE8();
    v10 = v25;
    v23 = 2;
    v18 = sub_230310CA8();
    v21 = 3;
    sub_230310CE8();
    v11 = v22;
    v20 = 4;
    v12 = sub_230310CA8();
    HIDWORD(v16) = v10;
    v17 = v12;
    v19 = 5;
    v14 = sub_230310CA8();
    v17 &= 1u;
    v18 &= 1u;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = BYTE4(v16);
    v15 = v17;
    a2[2] = v18;
    a2[3] = v11;
    a2[4] = v15;
    a2[5] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t REMAccountType.asInt16.getter(uint64_t a1)
{
  v1 = 0x7FFFLL;
  if (a1 < 0x7FFF)
  {
    v1 = a1;
  }

  if (v1 <= -32768)
  {
    return -32768;
  }

  else
  {
    return v1;
  }
}

uint64_t REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void), uint64_t a11, void (*a12)(void), uint64_t a13, void (*a14)(uint64_t), uint64_t a15, void (*a16)(uint64_t), uint64_t a17, uint64_t a18)
{
  v94 = a8;
  v95 = a6;
  v92 = a7;
  v93 = a5;
  v87 = a2;
  v88 = a4;
  v85 = a1;
  v86 = a3;
  v102 = a17;
  v100 = a15;
  v101 = a16;
  v99 = a14;
  v104 = sub_2303104C8();
  v106 = *(v104 - 8);
  v19 = MEMORY[0x28223BE20](v104);
  v98 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v83 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v91 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v96 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v83 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v83 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v83 = &v83 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v89 = &v83 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v83 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v84 = &v83 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v83 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v83 - v44;
  v46 = *(*(a18 - 8) + 56);
  v47 = a9;
  v46(a9, 1, 1, a18);
  result = [v105 _accountType];
  if (result <= 3)
  {
    if (result <= 1)
    {
      v49 = v104;
      if (!result)
      {
        sub_230208FDC();
        swift_allocError();
        *v60 = 0;
        goto LABEL_21;
      }

      if (result == 1)
      {
        v50 = a10;
        if (a10)
        {
          v51 = v97;
LABEL_11:
          v52 = v103;
          v50();
          v53 = v106;
          if (v52)
          {
            return (*(v106 + 8))(a9, v49);
          }

          (*(v106 + 8))(a9, v49);
          v70 = v51;
          return (*(v53 + 32))(v47, v70, v49);
        }

        v53 = v106;
        (*(v106 + 8))(a9, v104);
        v75 = v97;
LABEL_44:
        v46(v75, 1, 1, a18);
        v70 = v75;
        return (*(v53 + 32))(v47, v70, v49);
      }

LABEL_19:
      sub_230208FDC();
      swift_allocError();
      *v59 = 1;
LABEL_21:
      swift_willThrow();
      return (*(v106 + 8))(a9, v49);
    }

    v49 = v104;
    if (result != 2)
    {
      v54 = v101;
      if (v101)
      {

        v56 = v103;
        v54(v55);
        v57 = v56;
        if (v56)
        {
          (*(v106 + 8))(v47, v49);
LABEL_39:
          v69 = v54;
          return sub_2300528E4(v69);
        }

        v79 = v106;
        (*(v106 + 8))(v47, v49);
        sub_2300528E4(v54);
        result = (*(v79 + 32))(v47, v31, v49);
      }

      else
      {
        v57 = v103;
      }

      v71 = v93;
      v72 = v90;
      if (!v93)
      {
        return result;
      }

      v71(v80);
      if (v57)
      {
        (*(v106 + 8))(v47, v49);
LABEL_61:
        v69 = v71;
        return sub_2300528E4(v69);
      }

      v53 = v106;
      goto LABEL_64;
    }

    v54 = v101;
    if (!v101)
    {
      v58 = v103;
      v53 = v106;
      goto LABEL_36;
    }

    v65 = v103;
    v54(v64);
    v58 = v65;
    v53 = v106;
    if (!v65)
    {
      (*(v106 + 8))(v47, v49);
      sub_2300528E4(v54);
      result = (*(v53 + 32))(v47, v45, v49);
LABEL_36:
      v54 = v99;
      if (v99)
      {

        v54(v73);
        if (v58)
        {
          goto LABEL_38;
        }

        (*(v53 + 8))(v47, v49);
        sub_2300528E4(v54);
        result = (*(v53 + 32))(v47, v43, v49);
      }

      v71 = v85;
      v81 = v84;
      if (!v85)
      {
        return result;
      }

      v72 = v81;
LABEL_59:
      v71(v82);
      if (v58)
      {
        (*(v53 + 8))(v47, v49);
        goto LABEL_61;
      }

LABEL_64:
      (*(v53 + 8))(v47, v49);
      sub_2300528E4(v71);
      v70 = v72;
      return (*(v53 + 32))(v47, v70, v49);
    }

LABEL_38:
    (*(v53 + 8))(v47, v49);
    goto LABEL_39;
  }

  if (result > 5)
  {
    v58 = v103;
    if (result != 6)
    {
      v49 = v104;
      goto LABEL_19;
    }

    v66 = v101;
    if (v101)
    {

      v66(v67);
      v53 = v106;
      v68 = v99;
      if (v58)
      {
        (*(v106 + 8))(a9, v104);
        v69 = v66;
        return sub_2300528E4(v69);
      }

      v76 = v104;
      (*(v106 + 8))(a9, v104);
      sub_2300528E4(v66);
      v77 = v38;
      v49 = v76;
      result = (*(v53 + 32))(a9, v77, v76);
      v74 = v89;
      if (!v68)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v53 = v106;
      v49 = v104;
      v68 = v99;
      v74 = v89;
      if (!v99)
      {
        goto LABEL_57;
      }
    }

    v68(v78);
    if (v58)
    {
      (*(v53 + 8))(a9, v49);
      return sub_2300528E4(v68);
    }

    (*(v53 + 8))(a9, v49);
    sub_2300528E4(v68);
    result = (*(v53 + 32))(a9, v74, v49);
LABEL_57:
    v71 = v86;
    v72 = v83;
    if (!v86)
    {
      return result;
    }

    goto LABEL_58;
  }

  v49 = v104;
  if (result != 4)
  {
    v50 = a12;
    if (a12)
    {
      v51 = v98;
      goto LABEL_11;
    }

    v53 = v106;
    (*(v106 + 8))(a9, v104);
    v75 = v98;
    goto LABEL_44;
  }

  v54 = v101;
  if (v101)
  {

    v62 = v96;
    v63 = v103;
    v54(v61);
    v58 = v63;
    v53 = v106;
    if (v63)
    {
      goto LABEL_38;
    }

    (*(v106 + 8))(v47, v49);
    sub_2300528E4(v54);
    result = (*(v53 + 32))(v47, v62, v49);
  }

  else
  {
    v58 = v103;
    v53 = v106;
  }

  v72 = v91;
  v71 = v92;
  if (v92)
  {
LABEL_58:

    goto LABEL_59;
  }

  return result;
}

uint64_t sub_2300528E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2300528F4(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, void *)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  a2();
  if (v5)
  {
    if (a3(a1, v5))
    {
      (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }
}

uint64_t sub_230052A34()
{
  sub_23030F628();
  sub_23030FFA8();
  result = sub_23030FBC8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_230052AEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23004C888(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_230310958();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23030FA48();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23004C888(v10, 0);
        result = sub_230310808();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_230052C8C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a7(a3, a4, a5, a6);
  if (!v7)
  {
    v10 = *a1;
    *a1 = v9;
  }
}

uint64_t sub_230052D78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_230052DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + a1) & ~v12;
  v14 = (v7 + v12 + a2) & ~v12;
  (*(v10 + 16))(v13, v14, AssociatedTypeWitness);
  v15 = *(v8 - 8);
  v16 = v15 + 16;
  v17 = *(v15 + 80);
  v18 = *(v11 + 48) + v17;
  v19 = (v18 + v13) & ~v17;
  v20 = (v18 + v14) & ~v17;
  (*(v15 + 16))(v19, v20, v8);
  v21 = *(v16 + 48);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = ((v21 + v24 + v19) & ~v24);
  v26 = ((v21 + v24 + v20) & ~v24);
  if ((*(v23 + 48))(v26, 1, v22))
  {
    v27 = *(v23 + 84);
    v28 = *(v23 + 64);
    if (v27)
    {
      v29 = *(v23 + 64);
    }

    else
    {
      v29 = v28 + 1;
    }

    memcpy(v25, v26, v29);
  }

  else
  {
    (*(v23 + 16))(v25, v26, v22);
    v31 = *(v23 + 56);
    v30 = v23 + 56;
    v31(v25, 0, 1, v22);
    v27 = *(v30 + 28);
    v28 = *(v30 + 8);
  }

  if (v27)
  {
    v32 = v28;
  }

  else
  {
    v32 = v28 + 1;
  }

  v33 = v25 + v32 + 7;
  v34 = ((v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v34;
  v35 = v34[1];
  v37 = (v33 & 0xFFFFFFFFFFFFFFF8);
  *v37 = v36;
  v37[1] = v35;

  return a1;
}

uint64_t storeEnumTagSinglePayload for REMHashtagLabelSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMHashtagLabelSpecifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
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

uint64_t REMAccountsListDataView.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 4);
  v39 = *(v1 + 3);
  v40 = v9;
  v10 = *(v1 + 6);
  v41 = *(v1 + 5);
  v42 = v10;
  v11 = *(v1 + 2);
  v37 = *(v1 + 1);
  v38 = v11;
  v12 = v1[15];
  v25 = v1[14];
  v26 = v7;
  v13 = v1[17];
  v23 = v1[16];
  v24 = v12;
  v22 = v13;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_23005534C();

  sub_230311448();
  *&v31 = v8;
  LOBYTE(v29[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19748);
  sub_2302DA8EC();
  v18 = v43;
  sub_230310DF8();
  if (v18)
  {
  }

  else
  {
    v19 = v25;

    *&v31 = v26;
    LOBYTE(v29[0]) = 1;
    type metadata accessor for REMList_Codable();
    sub_23005575C(&qword_280C9C348, type metadata accessor for REMList_Codable);
    sub_230310D98();
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v30 = 2;
    sub_230049A64(&v37, v29);
    sub_2300628C0();
    sub_230310DF8();
    v29[2] = v33;
    v29[3] = v34;
    v29[4] = v35;
    v29[5] = v36;
    v29[0] = v31;
    v29[1] = v32;
    sub_23005AA80(v29);
    v28 = v19;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DC8);
    sub_230059E30(&qword_280C99D28, &qword_280C9A968);
    sub_230310DF8();
    v28 = v24;
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310DF8();
    v28 = v23;
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19750);
    sub_230063768();
    sub_230310DF8();
    v28 = v22;
    v27 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19758);
    sub_2302DA9C4();
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v17);
}

unint64_t sub_2300535B4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v49 = a2;
  v50 = a6;
  v11 = sub_23030F4F8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  if (qword_280C9BB40 != -1)
  {
    swift_once();
  }

  v18 = sub_23030EF48();
  v19 = __swift_project_value_buffer(v18, qword_280C9B440);

  v47 = v19;
  v20 = sub_23030EF38();

  v21 = os_log_type_enabled(v20, a4);
  v48 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v45 = v17;
    v46 = v6;
    v23 = v15;
    v24 = v12;
    v25 = v22;
    v26 = a5;
    v27 = v11;
    v28 = swift_slowAlloc();
    v51 = v28;
    *v25 = 136446210;
    *(v25 + 4) = sub_23004E30C(v49, a3, &v51);
    _os_log_impl(&dword_230044000, v20, a4, "START %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v29 = v28;
    v11 = v27;
    a5 = v26;
    MEMORY[0x231914180](v29, -1, -1);
    v30 = v25;
    v12 = v24;
    v15 = v23;
    v17 = v45;
    v7 = v46;
    MEMORY[0x231914180](v30, -1, -1);
  }

  v31 = sub_23030F4E8();
  a5(v31);
  if (v7)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v50 = v12;
  sub_23030F4E8();
  v33 = sub_23030F4D8();
  if (v33 < sub_23030F4D8())
  {

    v34 = sub_23030EF38();

    v35 = v48;
    if (os_log_type_enabled(v34, v48))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v51 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_23004E30C(v49, a3, &v51);
      _os_log_impl(&dword_230044000, v34, v35, "END %{public}s, {elapsed: UNDEFINED ms}", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x231914180](v37, -1, -1);
      MEMORY[0x231914180](v36, -1, -1);
    }

LABEL_14:

    v43 = *(v50 + 8);
    v43(v15, v11);
    return (v43)(v17, v11);
  }

  v38 = sub_23030F4D8();
  result = sub_23030F4D8();
  if (v38 >= result)
  {
    v39 = (v38 - result) / 1000000.0;

    v34 = sub_23030EF38();

    v40 = v48;
    if (os_log_type_enabled(v34, v48))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_23004E30C(v49, a3, &v51);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v39;
      _os_log_impl(&dword_230044000, v34, v40, "END %{public}s, {elapsed: %f ms}", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x231914180](v42, -1, -1);
      MEMORY[0x231914180](v41, -1, -1);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t measureTimeElapsed<A>(_:level:block:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void (*a4)(void)@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v24 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v23 - v18);
  v20 = v25;
  result = sub_230053C18(&v23 + *(v17 + 48) - v18, a1, a2, a3, a4, v24);
  if (!v20)
  {
    *v19 = v22;
    (*(v13 + 32))(v16, v19, TupleTypeMetadata2);
    return (*(*(a6 - 8) + 32))(v23, &v16[*(TupleTypeMetadata2 + 48)], a6);
  }

  return result;
}

unint64_t sub_230053C18(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void), NSObject *a6)
{
  v7 = v6;
  v54 = a1;
  v55 = a6;
  v53 = a2;
  v11 = sub_23030F4F8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  if (qword_280C9BB40 != -1)
  {
    swift_once();
  }

  v18 = sub_23030EF48();
  v19 = __swift_project_value_buffer(v18, qword_280C9B440);

  v51 = v19;
  v20 = sub_23030EF38();

  v21 = os_log_type_enabled(v20, a4);
  v52 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v49 = v17;
    v50 = v6;
    v23 = v15;
    v24 = v12;
    v25 = v11;
    v26 = v22;
    v27 = a5;
    v28 = swift_slowAlloc();
    v56 = v28;
    *v26 = 136446210;
    *(v26 + 4) = sub_23004E30C(v53, a3, &v56);
    _os_log_impl(&dword_230044000, v20, a4, "START %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v29 = v28;
    a5 = v27;
    MEMORY[0x231914180](v29, -1, -1);
    v30 = v26;
    v11 = v25;
    v12 = v24;
    v15 = v23;
    v17 = v49;
    v7 = v50;
    MEMORY[0x231914180](v30, -1, -1);
  }

  v31 = sub_23030F4E8();
  a5(v31);
  if (v7)
  {
    return (*(v12 + 8))(v17, v11);
  }

  sub_23030F4E8();
  v33 = sub_23030F4D8();
  if (v33 >= sub_23030F4D8())
  {
    v41 = sub_23030F4D8();
    result = sub_23030F4D8();
    if (v41 < result)
    {
      __break(1u);
    }

    else
    {
      v42 = (v41 - result) / 1000000.0;

      v43 = sub_23030EF38();

      v44 = v52;
      if (os_log_type_enabled(v43, v52))
      {
        v45 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v45 = 136446466;
        *(v45 + 4) = sub_23004E30C(v53, a3, &v56);
        *(v45 + 12) = 2048;
        *(v45 + 14) = v42;
        _os_log_impl(&dword_230044000, v43, v44, "END %{public}s, {elapsed: %f ms}", v45, 0x16u);
        v46 = v55;
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x231914180](v46, -1, -1);
        MEMORY[0x231914180](v45, -1, -1);
      }

      v47 = *(v12 + 8);
      v47(v15, v11);
      return (v47)(v17, v11);
    }
  }

  else
  {

    v34 = sub_23030EF38();

    v35 = v52;
    if (os_log_type_enabled(v34, v52))
    {
      v36 = swift_slowAlloc();
      v55 = v34;
      v37 = v36;
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_23004E30C(v53, a3, &v56);
      v39 = v35;
      v40 = v55;
      _os_log_impl(&dword_230044000, v55, v39, "END %{public}s, {elapsed: UNDEFINED ms}", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x231914180](v38, -1, -1);
      MEMORY[0x231914180](v37, -1, -1);
    }

    else
    {
    }

    v48 = *(v12 + 8);
    v48(v15, v11);
    return (v48)(v17, v11);
  }

  return result;
}

unint64_t static REMHashtagLabelSpecifier.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C97D60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280C97D68;
  v3 = unk_280C97D70;
  *a1 = qword_280C97D68;
  *(a1 + 8) = v3;
  *(a1 + 16) = byte_280C97D78;

  return sub_2300542CC(v2);
}

unint64_t sub_2300541AC()
{
  result = qword_280C9BE18;
  if (!qword_280C9BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BE18);
  }

  return result;
}

unint64_t sub_230054204()
{
  result = qword_280C9BE20;
  if (!qword_280C9BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BE20);
  }

  return result;
}

unint64_t sub_230054258()
{
  result = qword_280C9BE28[0];
  if (!qword_280C9BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9BE28);
  }

  return result;
}

void sub_2300542AC()
{
  qword_280C97D68 = MEMORY[0x277D84FA0];
  unk_280C97D70 = MEMORY[0x277D84FA0];
  byte_280C97D78 = 1;
}

unint64_t sub_2300542CC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_230054354(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u8[0] = a2[1].n128_u8[0];
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    a1[1].n128_u8[0] = a2[1].n128_u8[0];
  }

  return result;
}

unint64_t destroy for REMHashtagLabelSpecifier(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t REMAccountsListDataView.Invocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = v1[7];
  v47 = v1[6];
  v48 = v7;
  v49 = v1[8];
  v8 = v1[3];
  v43 = v1[2];
  v44 = v8;
  v9 = v1[5];
  v45 = v1[4];
  v46 = v9;
  v10 = v1[1];
  v41 = *v1;
  v42 = v10;
  v11 = *(v1 + 18);
  v17 = *(v1 + 19);
  v18 = v11;
  v16 = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230054718(&v41, &v32);
  sub_230054258();
  sub_230311448();
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v32 = v41;
  v33 = v42;
  v31 = 0;
  sub_230060FF0();
  v12 = v50;
  sub_230310DF8();
  if (v12)
  {
    v29 = v39;
    v30 = v40;
    v24 = v34;
    v25 = v35;
    v27 = v37;
    v28 = v38;
    v26 = v36;
    v22 = v32;
    v23 = v33;
    sub_2300645CC(&v22);
  }

  else
  {
    v13 = v16;
    v14 = v17;
    v29 = v39;
    v30 = v40;
    v24 = v34;
    v25 = v35;
    v27 = v37;
    v28 = v38;
    v26 = v36;
    v22 = v32;
    v23 = v33;
    sub_2300645CC(&v22);
    v19 = v18;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19810);
    sub_2302DADF0();
    sub_230310DF8();
    v19 = v14;
    v20 = v13;
    v21 = 2;
    sub_2300646C8();

    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23005478C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_230054800()
{
  result = qword_280C9B5B0[0];
  if (!qword_280C9B5B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9B5B0);
  }

  return result;
}

uint64_t REMAccountsListDataView.Invocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19818);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230054258();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v57 = 0;
  sub_230054BF0();
  v9 = v21;
  sub_230310CE8();
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v47 = v38;
  v48 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19810);
  LOBYTE(v22[0]) = 1;
  sub_2302DAEC8();
  sub_230310CE8();
  v20 = *&v32[0];
  v56 = 2;
  sub_23005AB24();
  sub_230310CE8();
  (*(v8 + 8))(v7, v9);
  v10 = v36;
  v11 = v37;
  v27 = v53;
  v28 = v54;
  v29 = v55;
  v23 = v49;
  v24 = v50;
  v12 = v52;
  v25 = v51;
  v26 = v52;
  v13 = v48;
  v22[0] = v47;
  v22[1] = v48;
  v14 = v20;
  *&v30 = v20;
  *(&v30 + 1) = v36;
  v31 = v37;
  *(a2 + 160) = v37;
  v15 = v24;
  *(a2 + 64) = v25;
  *(a2 + 80) = v12;
  v16 = v28;
  *(a2 + 96) = v27;
  *(a2 + 112) = v16;
  v17 = v23;
  *a2 = v22[0];
  *(a2 + 16) = v13;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  v18 = v30;
  *(a2 + 128) = v29;
  *(a2 + 144) = v18;
  sub_230066718(v22, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[6] = v53;
  v32[7] = v54;
  v32[8] = v55;
  v32[2] = v49;
  v32[3] = v50;
  v32[4] = v51;
  v32[5] = v52;
  v32[0] = v47;
  v32[1] = v48;
  v33 = v14;
  v34 = v10;
  v35 = v11;
  return sub_2300668B4(v32);
}

unint64_t sub_230054BF0()
{
  result = qword_280C9B588;
  if (!qword_280C9B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B588);
  }

  return result;
}

void REMAccountsListDataView.Model.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19760);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005534C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19748);
    LOBYTE(v28[0]) = 0;
    sub_2302DAA9C();
    sub_230310CE8();
    v9 = v31[0];
    type metadata accessor for REMList_Codable();
    LOBYTE(v28[0]) = 1;
    sub_23005575C(&qword_280C9C340, type metadata accessor for REMList_Codable);
    sub_230310C88();
    v26 = v31[0];
    v56 = 2;
    sub_2300588F8();
    sub_230310CE8();
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v49 = v43;
    v50 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DC8);
    LOBYTE(v28[0]) = 3;
    sub_230059E30(&qword_280C9B418, qword_280C9B4E8);
    sub_230310CE8();
    v25 = v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    LOBYTE(v28[0]) = 4;
    sub_230059F7C(&qword_280C98850);
    sub_230310CE8();
    v24 = v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19750);
    LOBYTE(v28[0]) = 5;
    sub_23005A180();
    sub_230310CE8();
    v23 = v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19758);
    v55 = 6;
    sub_2302DAB20();
    sub_230310CE8();
    (*(v8 + 8))(v7, v27);
    v10 = v42;
    v27 = v9;
    *&v28[0] = v9;
    v12 = v25;
    v11 = v26;
    *(&v28[0] + 1) = v26;
    v13 = v51;
    v14 = v52;
    v28[3] = v51;
    v28[4] = v52;
    v15 = v53;
    v28[5] = v53;
    v28[6] = v54;
    v16 = v49;
    v17 = v50;
    v28[1] = v49;
    v28[2] = v50;
    v18 = v23;
    v19 = v24;
    *&v29 = v25;
    *(&v29 + 1) = v24;
    *&v30 = v23;
    *(&v30 + 1) = v42;
    v20 = v29;
    v21 = v28[0];
    a2[6] = v54;
    a2[7] = v20;
    a2[4] = v14;
    a2[5] = v15;
    a2[2] = v17;
    a2[3] = v13;
    *a2 = v21;
    a2[1] = v16;
    a2[8] = v30;
    sub_230054718(v28, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31[0] = v27;
    v31[1] = v11;
    v34 = v51;
    v35 = v52;
    v36 = v53;
    v37 = v54;
    v32 = v49;
    v33 = v50;
    v38 = v12;
    v39 = v19;
    v40 = v18;
    v41 = v10;
    sub_2300645CC(v31);
  }
}

unint64_t sub_2300552A0()
{
  result = qword_280C9BDE8;
  if (!qword_280C9BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDE8);
  }

  return result;
}

unint64_t sub_2300552F8()
{
  result = qword_280C9BDF0;
  if (!qword_280C9BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDF0);
  }

  return result;
}

unint64_t sub_23005534C()
{
  result = qword_280C9BDF8;
  if (!qword_280C9BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDF8);
  }

  return result;
}

unint64_t sub_2300553A0()
{
  result = qword_280C9B590;
  if (!qword_280C9B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B590);
  }

  return result;
}

void REMAccountsListDataView.Model.Account.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055708();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMAccount_Codable();
    v13 = 0;
    sub_23005575C(&qword_280C9B710, type metadata accessor for REMAccount_Codable);
    sub_230310CE8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19730);
    v13 = 1;
    sub_2302DA868();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
    v11 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_23005565C()
{
  result = qword_280C9BDB0;
  if (!qword_280C9BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDB0);
  }

  return result;
}

unint64_t sub_2300556B4()
{
  result = qword_280C9BDB8;
  if (!qword_280C9BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDB8);
  }

  return result;
}

unint64_t sub_230055708()
{
  result = qword_280C9BDC0;
  if (!qword_280C9BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDC0);
  }

  return result;
}

uint64_t sub_23005575C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2300557A4(void *a1, void *a2, unint64_t *a3, void *a4, uint64_t (*a5)(void))
{
  v37 = a5;
  v38 = a3;
  v39 = a4;
  v42 = a2;
  v7 = sub_23030EBB8();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB193C0);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_230055ED8();
  sub_230311428();
  if (!v5)
  {
    v36 = a1;
    v14 = v41;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    v34 = v12;
    v16 = objc_opt_self();
    v35 = v9;
    v17 = sub_23030EB88();
    v42 = [v16 objectIDWithUUID_];

    a1 = v36;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v18 = sub_230311418();
    v19 = v14;
    if (qword_280C9C458 != -1)
    {
      swift_once();
    }

    v20 = sub_230310A58();
    v21 = __swift_project_value_buffer(v20, qword_280C9C460);
    v13 = v39;
    v22 = v40;
    if (*(v18 + 16) && (v23 = sub_23004BFC0(v21), (v24 & 1) != 0))
    {
      sub_23004D5CC(*(v18 + 56) + 32 * v23, v47);
    }

    else
    {

      memset(v47, 0, 32);
    }

    sub_230055F74(v47, &v44, &qword_27DB14810);
    if (v45)
    {
      sub_230061914(&v44, v46);
      sub_23004D5CC(v46, &v44);
      type metadata accessor for REMStoreObjectsContainer();
      if (swift_dynamicCast())
      {
        v33 = v10;
        v25 = v48;
        __swift_destroy_boxed_opaque_existential_1(v46);
        sub_230061918(v47, &qword_27DB14810);
        v26 = sub_230055FDC(v42, v38);
        v27 = *(v25 + 16);
        v28 = v37();
        v29 = [objc_allocWithZone(v28) initWithStore:v27 storage:v26];
        v39 = v29;

        v30 = objc_allocWithZone(v28);
        v31 = [v29 store];
        v32 = [v29 storage];
        v43.receiver = v30;
        v43.super_class = v28;
        v13 = objc_msgSendSuper2(&v43, sel_initWithStore_storage_, v31, v32);

        (*(v22 + 8))(v35, v7);
        (*(v19 + 8))(v34, v33);
        __swift_destroy_boxed_opaque_existential_1(v36);
        return v13;
      }

      sub_23004D5CC(v46, &v44);
      sub_2301FF8F0(&v44, 0, 0);
      sub_230061918(&v44, &qword_27DB14810);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v46);
      sub_230061918(v47, &qword_27DB14810);
      (*(v22 + 8))(v35, v7);
      (*(v19 + 8))(v34, v10);
      a1 = v36;
    }

    else
    {
      sub_230061918(&v44, &qword_27DB14810);
      sub_2301FF8F0(v47, 0, 0);
      swift_willThrow();

      sub_230061918(v47, &qword_27DB14810);
      (*(v22 + 8))(v35, v7);
      (*(v19 + 8))(v34, v10);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_230055E2C()
{
  result = qword_280C9C310;
  if (!qword_280C9C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C310);
  }

  return result;
}

unint64_t sub_230055E84()
{
  result = qword_280C9C318;
  if (!qword_280C9C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C318);
  }

  return result;
}

unint64_t sub_230055ED8()
{
  result = qword_280C9C320;
  if (!qword_280C9C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C320);
  }

  return result;
}

uint64_t sub_230055F2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_230055F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230055FDC(void *a1, unint64_t *a2)
{
  sub_23004CBA4(0, a2);
  swift_beginAccess();
  v4 = *(v2 + 24);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = sub_230059108(a1);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v8 = objc_opt_self();
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000026, 0x8000000230346960);
    v9 = [a1 description];
    v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = v11;

    MEMORY[0x231911790](v10, v12);

    MEMORY[0x231911790](0xD000000000000010, 0x8000000230346990);
    v13 = sub_230311508();
    MEMORY[0x231911790](v13);

    MEMORY[0x231911790](125, 0xE100000000000000);
    v14 = sub_23030F8B8();

    [v8 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  sub_23004D5CC(*(v4 + 56) + 32 * v5, v24);

  sub_23004D5CC(v24, v23);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v24[5];
  }

  else
  {
    v15 = objc_opt_self();
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000002DLL, 0x80000002303469B0);
    v16 = [a1 description];
    v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v19 = v18;

    MEMORY[0x231911790](v17, v19);

    MEMORY[0x231911790](0xD000000000000010, 0x8000000230346990);
    v20 = sub_230311508();
    MEMORY[0x231911790](v20);

    MEMORY[0x231911790](0x6C6175746361202CLL, 0xEE00203A65707954);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    swift_getDynamicType();
    v21 = sub_230311508();
    MEMORY[0x231911790](v21);

    MEMORY[0x231911790](125, 0xE100000000000000);
    v22 = sub_23030F8B8();

    [v15 internalErrorWithDebugDescription_];

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

unint64_t sub_230056378()
{
  result = qword_280C9B598;
  if (!qword_280C9B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B598);
  }

  return result;
}

uint64_t REMAccountsListDataView.Model.AccountChild.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230057DE8();
  sub_230311428();
  if (!v2)
  {
    v13 = 0;
    sub_230057E3C();
    sub_230310CE8();
    if (LOBYTE(v12[0]))
    {
      if (LOBYTE(v12[0]) == 1)
      {
        type metadata accessor for REMSmartList_Codable();
        v13 = 1;
        sub_23005575C(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        v10 = 0;
        v11 = v12[0] | 0x4000000000000000;
      }

      else
      {
        v13 = 1;
        sub_2302DABA4();
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        v10 = v12[1];
        v11 = v12[0] | 0x8000000000000000;
      }
    }

    else
    {
      type metadata accessor for REMList_Codable();
      v13 = 1;
      sub_23005575C(&qword_280C9C340, type metadata accessor for REMList_Codable);
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      v11 = v12[0];
    }

    *a2 = v11;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t REMAnalyticsEvent.id.getter()
{
  v1 = type metadata accessor for REMAnalyticsEvent();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230056A2C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD00000000000001BLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      v6 = &unk_27DB16F58;
      goto LABEL_9;
    case 2:

      v6 = &unk_27DB16F50;
      goto LABEL_9;
    case 3:
      sub_230051BD8(v3);
      return 0xD00000000000001ELL;
    case 4:
      return result;
    case 5:
      sub_230051BD8(v3);
      goto LABEL_12;
    case 6:
      sub_230051BD8(v3);
      goto LABEL_15;
    case 7:
      sub_230051BD8(v3);
      return 0xD000000000000035;
    case 8:
    case 9:
      sub_230051BD8(v3);
      return 0xD000000000000024;
    case 10:
      return 0xD000000000000029;
    case 11:
      sub_230051BD8(v3);
      return 0xD00000000000002DLL;
    case 12:
LABEL_12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
      sub_230051BD8(v3);
      result = 0xD000000000000020;
      break;
    case 15:
LABEL_15:
      result = 0xD000000000000023;
      break;
    case 16:
      result = 0xD000000000000025;
      break;
    default:

      v6 = &unk_27DB16F60;
LABEL_9:
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6) + 64);

      sub_230061918(&v3[v7], &unk_27DB15AA0);
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_230056A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t REMAnalyticsEvent.isUsed.getter()
{
  REMAnalyticsEvent.id.getter();
  v0 = sub_23030F8B8();

  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

char *initializeWithCopy for REMAnalyticsEvent(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 12) = *(a2 + 12);
        v33 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v33;
        v34 = *(a2 + 7);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v34;
        v35 = *(a2 + 9);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = v35;
        v36 = *(a2 + 10);
        v37 = *(a2 + 11);
        *(a1 + 10) = v36;
        *(a1 + 11) = v37;
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
        }

        else
        {
          v7 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v7;
          a1[16] = a2[16];
          v8 = *(a2 + 4);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = v8;
          v9 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v9;
          v10 = *(a2 + 8);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = v10;
          v11 = *(a2 + 10);
          *(a1 + 9) = *(a2 + 9);
          *(a1 + 10) = v11;
          v12 = *(a2 + 11);
          v13 = *(a2 + 12);
          *(a1 + 11) = v12;
          *(a1 + 12) = v13;
        }
      }

      goto LABEL_34;
    }

    switch(EnumCaseMultiPayload)
    {
      case 9:
        v38 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v38;
        v39 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v39;
        v40 = *(a2 + 4);
        v41 = *(a2 + 5);
        *(a1 + 4) = v40;
        *(a1 + 5) = v41;

        goto LABEL_34;
      case 11:
        *a1 = *a2;
        a1[8] = a2[8];
        *(a1 + 2) = *(a2 + 2);
        a1[24] = a2[24];
        v30 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v30;
        *(a1 + 24) = *(a2 + 24);
        a1[64] = a2[64];
        *(a1 + 7) = *(a2 + 7);
        a1[65] = a2[65];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 6) = *(a2 + 6);

        goto LABEL_34;
      case 14:
        v15 = *a2;
        v16 = *(a2 + 1);
        *a1 = v15;
        *(a1 + 1) = v16;
        v17 = v15;

        goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_29;
      }

      *a1 = *a2;
      v18 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v18;

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v20 = *(v19 + 64);
      v21 = sub_23030EB58();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(&a2[v20], 1, v21))
      {
        goto LABEL_26;
      }
    }

    else
    {
      *a1 = *a2;
      v23 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v23;

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v20 = *(v19 + 64);
      v21 = sub_23030EB58();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(&a2[v20], 1, v21))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_32;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v31 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v31;

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v20 = *(v19 + 64);
      v21 = sub_23030EB58();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(&a2[v20], 1, v21))
      {
LABEL_26:
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v20], &a2[v20], *(*(v32 - 8) + 64));
LABEL_33:
        v44 = *(v19 + 80);
        v45 = &a1[v44];
        v46 = &a2[v44];
        v47 = *(v46 + 1);
        *v45 = *v46;
        *(v45 + 1) = v47;

        goto LABEL_34;
      }

LABEL_32:
      (*(v22 + 16))(&a1[v20], &a2[v20], v21);
      (*(v22 + 56))(&a1[v20], 0, 1, v21);
      goto LABEL_33;
    case 3:
      v24 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v24;
      v25 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v25;
      v26 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v26;
      v27 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v27;
      v28 = *(a2 + 8);
      v29 = *(a2 + 9);
      *(a1 + 8) = v28;
      *(a1 + 9) = v29;

      goto LABEL_34;
    case 5:
      v14 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v14;
      *(a1 + 1) = *(a2 + 1);

LABEL_34:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_29:
  v42 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v42);
}

uint64_t destroy for REMAnalyticsEvent(id *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 5)
  {
    if (result <= 1)
    {
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v3 = &qword_27DB16F58;
      }

      else
      {

        v3 = &qword_27DB16F60;
      }
    }

    else
    {
      if (result != 2)
      {
        if (result == 3)
        {
        }

        else if (result != 5)
        {
          return result;
        }

        goto LABEL_28;
      }

      v3 = &qword_27DB16F50;
    }

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v3) + 64);
    v5 = sub_23030EB58();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(a1 + v4, 1, v5))
    {
      (*(v6 + 8))(a1 + v4, v5);
    }
  }

  else
  {
    if (result > 8)
    {
      if (result == 9)
      {

        goto LABEL_28;
      }

      if (result != 11)
      {
        if (result != 14)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (result != 6)
      {
        if (result != 7)
        {
        }

        goto LABEL_28;
      }
    }
  }

LABEL_28:
}

id sub_230057480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, *a5, a3, a4);
}

uint64_t type metadata accessor for REMSearchCriterion()
{
  result = qword_280C9B700;
  if (!qword_280C9B700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2300575AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v28 = a1;
  v11 = sub_2303104C8();
  v29 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v31 = *(a6 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = v32;
  result = a3(a2);
  if (!v23)
  {
    v25 = v29;
    v32 = 0;
    v26 = v31;
    if ((*(v31 + 48))(v14, 1, a6) == 1)
    {
      return (*(v25 + 8))(v14, v11);
    }

    else
    {
      (*(v26 + 32))(v22, v14, a6);
      (*(v26 + 16))(v17, v22, a6);
      sub_23030FFA8();
      sub_23030FF78();
      v27 = *(v26 + 8);
      v27(v20, a6);
      return (v27)(v22, a6);
    }
  }

  return result;
}

uint64_t type metadata accessor for REMAnalyticsEvent()
{
  result = qword_280C99858;
  if (!qword_280C99858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2300578A4()
{
  result = qword_280C9BDD0;
  if (!qword_280C9BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDD0);
  }

  return result;
}

uint64_t sub_2300578F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v8 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

unint64_t sub_230057A5C()
{
  result = qword_280C9BDD8;
  if (!qword_280C9BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDD8);
  }

  return result;
}

uint64_t Optional.tryUnwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v27[2] = a4;
  v28 = a5;
  v27[0] = a7;
  v27[1] = a3;
  v29 = a1;
  v30 = a2;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v8, a6);
  v18 = *(a6 + 16);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    return (*(v19 + 32))(v27[0], v17, v18);
  }

  (*(v15 + 8))(v17, a6);
  sub_23030E8B8();
  v20 = sub_23030E8C8();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  v23 = objc_opt_self();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_230310848();
  MEMORY[0x231911790](0xD000000000000023, 0x8000000230342A80);
  MEMORY[0x231911790](v20, v22);

  MEMORY[0x231911790](58, 0xE100000000000000);
  v33 = v28;
  v24 = sub_230310E58();
  MEMORY[0x231911790](v24);

  MEMORY[0x231911790](0x697263736564202CLL, 0xEF203A6E6F697470);
  MEMORY[0x231911790](v29, v30);
  MEMORY[0x231911790](125, 0xE100000000000000);
  v25 = sub_23030F8B8();

  [v23 internalErrorWithDebugDescription_];

  return swift_willThrow();
}

unint64_t sub_230057DE8()
{
  result = qword_280C9BDE0;
  if (!qword_280C9BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDE0);
  }

  return result;
}

unint64_t sub_230057E3C()
{
  result = qword_280C9B5A0;
  if (!qword_280C9B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B5A0);
  }

  return result;
}

uint64_t Sequence.indexBy<A, B>(key:value:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a1;
  v15 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_230058010(sub_230058764, v10, a3, TupleTypeMetadata2, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v8);
  sub_23030FDE8();
  swift_getWitnessTable();
  return sub_23030F708();
}

uint64_t sub_230058010(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_2303104C8();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_23030FB48();
  v63 = sub_2303109F8();
  v58 = sub_230310A08();
  sub_2303109A8();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_23030FB38();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2303104F8();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_2303109E8();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_2303104F8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_2303109E8();
      sub_2303104F8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t sub_23005878C()
{
  result = qword_280C9BDC8;
  if (!qword_280C9BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDC8);
  }

  return result;
}

uint64_t sub_2300587E0()
{
  swift_getTupleTypeMetadata2();
  swift_getAtKeyPath();
  return swift_getAtKeyPath();
}

unint64_t sub_2300588F8()
{
  result = qword_280C99420;
  if (!qword_280C99420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99420);
  }

  return result;
}

uint64_t REMAccountsListDataView.ReminderCounts.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059158();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40) = 0;
  sub_230059278();
  sub_230310CE8();
  v39 = a2;
  v9 = v46;
  v10 = v47;
  LOBYTE(v40) = 1;
  sub_230310CE8();
  *&v36 = v9;
  *(&v36 + 1) = v10;
  v38 = v46;
  v37 = v47;
  LOBYTE(v40) = 2;
  sub_230310CE8();
  v11 = v46;
  v12 = v47;
  LOBYTE(v40) = 3;
  sub_230310CE8();
  v35 = v12;
  v13 = v11;
  v14 = v46;
  v15 = v47;
  LOBYTE(v46) = 4;
  v34 = sub_230310CC8();
  LOBYTE(v46) = 5;
  v33 = sub_230310CC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196A0);
  LOBYTE(v40) = 6;
  sub_23005966C();
  sub_230310CE8();
  v32 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196A8);
  v58 = 7;
  sub_2300597A4();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v30 = v59;
  v16 = v14;
  v29 = v14;
  v17 = v36;
  v40 = v36;
  v18 = v15;
  v31 = v15;
  v19 = *(&v36 + 1);
  *&v41 = v38;
  *(&v41 + 1) = v37;
  v20 = v35;
  *&v42 = v13;
  *(&v42 + 1) = v35;
  *&v43 = v16;
  *(&v43 + 1) = v18;
  v21 = v34;
  v22 = v33;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  v23 = v32;
  *&v45 = v32;
  *(&v45 + 1) = v59;
  v24 = v43;
  v25 = v39;
  v39[2] = v42;
  v25[3] = v24;
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  v27 = v45;
  v25[4] = v44;
  v25[5] = v27;
  sub_230049A64(&v40, &v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46 = v17;
  v47 = v19;
  v48 = v38;
  v49 = v37;
  v50 = v13;
  v51 = v20;
  v52 = v29;
  v53 = v31;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v30;
  return sub_23005AA80(&v46);
}

id sub_230058EA8(void *a1)
{
  v4 = sub_230055FDC(a1, &qword_280C9C2E0);
  if (!v2)
  {
    v5 = v4;
    v6 = [v4 accountID];
    v7 = sub_230055FDC(v6, &qword_280C9C2C8);
    v9 = v7;
    v10 = *(v1 + 16);
    v11 = [objc_allocWithZone(type metadata accessor for REMAccount_Codable()) initWithStore:v10 storage:v7];

    v3 = [objc_allocWithZone(type metadata accessor for REMList_Codable()) initWithStore:v10 account:v11 storage:v5];
    v12 = [v5 parentListID];
    if (v12)
    {
      v13 = v12;
      v3 = v3;
      v14 = sub_230058EA8(v13);
      [v3 setParentList_];
    }
  }

  return v3;
}

unint64_t sub_230059024()
{
  result = qword_280C994D0;
  if (!qword_280C994D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994D0);
  }

  return result;
}

unint64_t sub_2300590B4()
{
  result = qword_280C994D8;
  if (!qword_280C994D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994D8);
  }

  return result;
}

unint64_t sub_230059158()
{
  result = qword_280C994E0;
  if (!qword_280C994E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994E0);
  }

  return result;
}

unint64_t sub_2300591AC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_23004CBA4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_230310448();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_230059278()
{
  result = qword_280C99490;
  if (!qword_280C99490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99490);
  }

  return result;
}

uint64_t REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19690);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059610();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_230310CC8();
    v13 = 1;
    v10 = sub_230310CC8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id sub_23005947C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v11, *a6, a3, a4, a5);
}

uint64_t REMStoreObjectsContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_230059554()
{
  result = qword_280C994B8;
  if (!qword_280C994B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994B8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_2300595B8()
{
  result = qword_280C994C0;
  if (!qword_280C994C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994C0);
  }

  return result;
}

unint64_t sub_230059610()
{
  result = qword_280C994C8;
  if (!qword_280C994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C994C8);
  }

  return result;
}

uint64_t REMAccountsListDataView.Model.Group.init(list:lists:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23005966C()
{
  result = qword_280C98888;
  if (!qword_280C98888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196A0);
    sub_23005575C(&unk_280C9C5F0, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98888);
  }

  return result;
}

void *sub_23005972C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

unint64_t sub_2300597A4()
{
  result = qword_280C98880;
  if (!qword_280C98880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196A8);
    sub_23005575C(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230059278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98880);
  }

  return result;
}

uint64_t destroy for REMAccountSnapshotSummary(id *a1)
{
}

void *REMObjectID_Codable.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_23030EBB8();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191D0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059CB4();
  v21 = v10;
  v12 = v24;
  sub_230311428();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = a1;
    v26 = 0;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    v13 = v21;
    sub_230310CE8();
    v26 = 1;
    v18[1] = sub_230310C98();
    v15 = sub_23030EB88();
    v19 = v5;
    v16 = v15;
    v17 = sub_23030F8B8();

    v25.receiver = v2;
    v25.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v25, sel_initWithUUID_entityName_, v16, v17);

    (*(v20 + 8))(v7, v19);
    (*(v22 + 8))(v13, v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v11;
}

unint64_t sub_230059BF0()
{
  result = qword_280C9C5D8;
  if (!qword_280C9C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C5D8);
  }

  return result;
}

unint64_t sub_230059C48()
{
  result = qword_280C9C5E0;
  if (!qword_280C9C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C5E0);
  }

  return result;
}

unint64_t sub_230059CB4()
{
  result = qword_280C9C5E8;
  if (!qword_280C9C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C5E8);
  }

  return result;
}

unint64_t sub_230059D2C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000002ELL;
    if (v1 != 6)
    {
      v5 = 0x7463656A624F7962;
    }

    v6 = 0xD00000000000001DLL;
    if (v1 != 4)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C756465686373;
    v3 = 7105633;
    if (v1 != 2)
    {
      v3 = 0x7961646F74;
    }

    if (*v0)
    {
      v2 = 0x64656767616C66;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230059E30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14DC8);
    sub_23005575C(a2, type metadata accessor for REMHashtagLabel_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s9NonCustomOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230059F7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB13DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s9NonCustomOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_23005A08C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23005A138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23005A180()
{
  result = qword_280C98870;
  if (!qword_280C98870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19750);
    sub_23005575C(&unk_280C98828, type metadata accessor for REMSmartListType);
    sub_23005575C(&qword_280C987F0, type metadata accessor for REMSmartListUserDefinedVisibility);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98870);
  }

  return result;
}

uint64_t sub_23005A26C()
{
  if (*v0)
  {
    return 0x6575647265766FLL;
  }

  else
  {
    return 0x656C706D6F636E69;
  }
}

uint64_t storeEnumTagSinglePayload for REMSiriSearchDataView.ListsResult_Codable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23005A374()
{
  result = qword_280C99370;
  if (!qword_280C99370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99370);
  }

  return result;
}

uint64_t REMAccountsListDataView.Model.PinnedList.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005A890();
  sub_230311428();
  if (!v2)
  {
    v25 = 0;
    sub_23005A8E8();
    sub_230310CE8();
    v10 = v23;
    if (v23)
    {
      if (v23 == 1)
      {
        type metadata accessor for REMList_Codable();
        v25 = 1;
        v11 = &qword_280C9C340;
        v12 = type metadata accessor for REMList_Codable;
      }

      else
      {
        type metadata accessor for REMSmartList_Codable();
        v25 = 1;
        v11 = &qword_280C9B750;
        v12 = type metadata accessor for REMSmartList_Codable;
      }

      sub_23005575C(v11, v12);
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v18 = v23;
      goto LABEL_14;
    }

    LOBYTE(v23) = 1;
    v13 = sub_230310C98();
    v15 = v14;
    v16 = v13;

    v22 = v16;
    v17 = _sSo16REMSmartListTypea19ReminderKitInternalE11stringValueABSgSS_tcfC_0(v16, v15);
    if (v17)
    {
      v18 = v17;
      (*(v6 + 8))(v8, v5);

LABEL_14:
      *a2 = v18;
      *(a2 + 8) = v10;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v19 = objc_opt_self();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_230310848();

    v23 = 0xD000000000000019;
    v24 = 0x8000000230346D90;
    MEMORY[0x231911790](v22, v15);

    MEMORY[0x231911790](39, 0xE100000000000000);
    v20 = sub_23030F8B8();

    [v19 internalErrorWithDebugDescription_];

    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_23005A758@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = REMObjectID_Codable.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23005A7AC()
{
  result = qword_280C99380;
  if (!qword_280C99380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99380);
  }

  return result;
}

unint64_t sub_23005A804()
{
  result = qword_280C99388;
  if (!qword_280C99388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99388);
  }

  return result;
}

uint64_t sub_23005A858()
{
  if (*v0)
  {
    return 0x614E797469746E65;
  }

  else
  {
    return 1684632949;
  }
}

unint64_t sub_23005A890()
{
  result = qword_280C99390;
  if (!qword_280C99390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99390);
  }

  return result;
}

unint64_t sub_23005A8E8()
{
  result = qword_280C97E38;
  if (!qword_280C97E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSiriSearchDataView.ListsResult_Codable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_23005AA2C()
{
  result = qword_280C99378;
  if (!qword_280C99378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99378);
  }

  return result;
}

uint64_t sub_23005AA80(uint64_t a1)
{

  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

unint64_t sub_23005AAD0()
{
  result = qword_280C993A8;
  if (!qword_280C993A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993A8);
  }

  return result;
}

unint64_t sub_23005AB24()
{
  result = qword_280C9B5A8;
  if (!qword_280C9B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B5A8);
  }

  return result;
}

uint64_t destroy for REMAccountsListDataView.ReminderCounts()
{
}

void sub_23005ABB4()
{
  v5 = &unk_2303261F8;
  v6 = &unk_230326210;
  sub_23005AFA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_getTupleTypeLayout();
    v10 = &v9;
    swift_getTupleTypeLayout();
    v11 = &v4;
    v5 = &unk_230326240;
    v6 = &unk_230326210;
    v7 = v2;
    v8 = &unk_230326210;
    swift_getTupleTypeLayout();
    v12 = &v3;
    v13 = &unk_230326258;
    v14 = &unk_230326270;
    v15 = &unk_230326288;
    v16 = &unk_2303262A0;
    v17 = &unk_230326210;
    v18 = &unk_2303262B8;
    v19 = &unk_2303262D0;
    v20 = &unk_2303262E8;
    v21 = &unk_230326300;
    v22 = &unk_230326318;
    v23 = MEMORY[0x277D84F80] + 64;
    v24 = &unk_230326330;
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t REMAccountsListDataView.Diff.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005B5A0();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v14 = 0;
  sub_23005E68C(&qword_280C9C480, &qword_280C9C5D0);
  sub_230310CE8();
  v9 = v15;
  v14 = 1;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_23005AFA0()
{
  if (!qword_280C9B730)
  {
    sub_23030EB58();
    v0 = sub_2303104C8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C9B730);
    }
  }
}

uint64_t static REMAnalyticsManager.shared.getter()
{
  if (qword_280C99688 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23005B0B4()
{
  type metadata accessor for REMAnalyticsManager();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F90];
  qword_280C99690 = result;
  return result;
}

unint64_t sub_23005B0F0()
{
  result = qword_280C9BE00;
  if (!qword_280C9BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BE00);
  }

  return result;
}

void REMAnalyticsManager.post(event:)(uint64_t a1)
{
  v3 = type metadata accessor for REMAnalyticsEvent();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 1)
  {
    sub_230056A2C(a1, v6);
    swift_beginAccess();
    v7 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_23007F9DC(0, v7[2] + 1, 1, v7);
      *(v1 + 24) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_23007F9DC(v9 > 1, v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    sub_2301A8188(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
    *(v1 + 24) = v7;
    swift_endAccess();
  }

  else
  {

    _s19ReminderKitInternal9AnalyticsC9postEventyyAA012REMAnalyticsF0OFZ_0();
  }
}

unint64_t sub_23005B2F0()
{
  result = qword_280C9BE08;
  if (!qword_280C9BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BE08);
  }

  return result;
}

void _s19ReminderKitInternal9AnalyticsC9postEventyyAA012REMAnalyticsF0OFZ_0()
{
  v0 = REMAnalyticsEvent.id.getter();
  v2 = v1;
  REMAnalyticsEvent.payload.getter();
  if (qword_280C9BB50 != -1)
  {
    swift_once();
  }

  v3 = sub_23030EF48();
  __swift_project_value_buffer(v3, qword_280C989B0);

  v4 = sub_23030EF38();
  v5 = sub_2303102A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_23004E30C(v0, v2, &v13);
    *(v6 + 12) = 2082;
    sub_23004CBA4(0, &qword_280C9B980);
    v8 = sub_23030F668();
    v10 = sub_23004E30C(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_230044000, v4, v5, "Posting analytics {name: %{public}s, payload: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v7, -1, -1);
    MEMORY[0x231914180](v6, -1, -1);
  }

  v11 = sub_23030F8B8();

  sub_23004CBA4(0, &qword_280C9B980);
  v12 = sub_23030F638();

  AnalyticsSendEvent();
}

unint64_t sub_23005B5A0()
{
  result = qword_280C9BE10;
  if (!qword_280C9BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BE10);
  }

  return result;
}

id sub_23005B5F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a3);
}

unint64_t REMAnalyticsEvent.payload.getter()
{
  v1 = sub_23030EDE8();
  v283 = *(v1 - 8);
  v284 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v272 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030EE08();
  v285 = *(v4 - 1);
  v286 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v272 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  v287 = v7;
  v288 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v279 = &v272 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v272 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v275 = &v272 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v277 = &v272 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v274 = &v272 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v276 = &v272 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v273 = &v272 - v23;
  MEMORY[0x28223BE20](v22);
  v278 = &v272 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v272 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v281 = &v272 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v272 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v280 = &v272 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v272 - v37;
  MEMORY[0x28223BE20](v36);
  v282 = &v272 - v39;
  v40 = type metadata accessor for REMAnalyticsEvent();
  MEMORY[0x28223BE20](v40);
  v42 = &v272 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = MEMORY[0x277D84F98];
  sub_230056A2C(v0, v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v131 = *v42;
      v132 = *(v42 + 2);
      v278 = *(v42 + 1);
      v281 = v132;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v134 = *(v133 + 64);
      v135 = &v42[*(v133 + 80)];
      v137 = *v135;
      v136 = *(v135 + 1);
      v279 = v137;
      v282 = v136;
      sub_2300E0878(&v42[v134], v280);
      v291 = v131;
      sub_2301EF4D0();
      sub_23030EB48();
      sub_23030EDC8();
      v138 = v283;
      v139 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v140 = sub_23030EDF8();
      v141 = v139;
      v142 = v281;
      (*(v138 + 8))(v3, v141);
      (*(v285 + 8))(v6, v286);
      v143 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v144 = sub_23030F8B8();

      v145 = [v143 initWithString_];

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v145, 0x6F6974617265706FLL, 0xEB0000000064496ELL, isUniquelyReferenced_nonNull_native);
      v295 = v292[0];
      swift_endAccess();
      v147 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      swift_beginAccess();
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v147, 0x6144664F72756F68, 0xE900000000000079, v148);
      v295 = v292[0];
      swift_endAccess();
      if (v142)
      {
        v149 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v150 = sub_23030F8B8();
        v151 = [v149 initWithString_];

        swift_beginAccess();
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v151, 0x496E6F6973736573, 0xE900000000000064, v152);
        v295 = v292[0];
        swift_endAccess();
      }

      sub_2301818F8(v280, v33);
      v153 = v287;
      v154 = v288;
      if ((*(v288 + 48))(v33, 1, v287) == 1)
      {
        sub_230061918(v33, &unk_27DB15AA0);
      }

      else
      {
        v235 = v274;
        (*(v154 + 32))(v274, v33, v153);
        sub_23030EA88();
        v237 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        swift_beginAccess();
        v238 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v237, 0x5464657370616C65, 0xEB00000000656D69, v238);
        v295 = v292[0];
        swift_endAccess();
        (*(v154 + 8))(v235, v153);
      }

      if (v282)
      {
        v239 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v240 = sub_23030F8B8();
        v241 = [v239 initWithString_];

        swift_beginAccess();
        v242 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v241, 0x61636F4C77656976, 0xEC0000006E6F6974, v242);
        v295 = v292[0];
        swift_endAccess();
      }

      (*(v288 + 8))(v276, v287);
      sub_230061918(v280, &unk_27DB15AA0);
      goto LABEL_81;
    case 2u:
      v175 = *(v42 + 2);
      v278 = *(v42 + 1);
      v280 = v175;
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v177 = *(v176 + 64);
      v178 = &v42[*(v176 + 80)];
      v180 = *v178;
      v179 = *(v178 + 1);
      v279 = v180;
      v282 = v179;
      sub_2300E0878(&v42[v177], v281);
      sub_23030EB48();
      sub_23030EDC8();
      v181 = v283;
      v182 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v183 = sub_23030EDF8();
      (*(v181 + 8))(v3, v182);
      (*(v285 + 8))(v6, v286);
      v184 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v185 = sub_23030F8B8();

      v186 = [v184 initWithString_];

      swift_beginAccess();
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v186, 0x6F6974617265706FLL, 0xEB0000000064496ELL, v187);
      v295 = v292[0];
      swift_endAccess();
      v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      swift_beginAccess();
      v189 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v188, 0x6144664F72756F68, 0xE900000000000079, v189);
      v295 = v292[0];
      swift_endAccess();
      if (v280)
      {
        v190 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v191 = sub_23030F8B8();
        v192 = [v190 initWithString_];

        swift_beginAccess();
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v192, 0x496E6F6973736573, 0xE900000000000064, v193);
        v295 = v292[0];
        swift_endAccess();
      }

      sub_2301818F8(v281, v28);
      v194 = v287;
      v195 = v288;
      if ((*(v288 + 48))(v28, 1, v287) == 1)
      {
        sub_230061918(v28, &unk_27DB15AA0);
      }

      else
      {
        v243 = v275;
        (*(v195 + 32))(v275, v28, v194);
        sub_23030EA88();
        v245 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        swift_beginAccess();
        v246 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v245, 0x5464657370616C65, 0xEB00000000656D69, v246);
        v295 = v292[0];
        swift_endAccess();
        (*(v195 + 8))(v243, v194);
      }

      v247 = v194;
      if (v282)
      {
        v248 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v249 = sub_23030F8B8();
        v250 = [v248 initWithString_];

        swift_beginAccess();
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v250, 0x61636F4C77656976, 0xEC0000006E6F6974, v251);
        v295 = v292[0];
        swift_endAccess();
      }

      (*(v288 + 8))(v277, v247);
      sub_230061918(v281, &unk_27DB15AA0);
      goto LABEL_81;
    case 3u:
      v84 = *(v42 + 4);
      v85 = *(v42 + 7);
      v286 = *(v42 + 6);
      v86 = *(v42 + 8);
      v87 = *(v42 + 9);
      v287 = v86;
      v288 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_230316160;
      strcpy((v88 + 32), "appIntentName");
      *(v88 + 46) = -4864;
      v89 = sub_23030F8B8();

      *(v88 + 48) = v89;
      *(v88 + 56) = 0x656372756F73;
      *(v88 + 64) = 0xE600000000000000;
      v90 = sub_23030F8B8();

      *(v88 + 72) = v90;
      *(v88 + 80) = 0xD000000000000011;
      *(v88 + 88) = 0x80000002303440F0;
      v91 = sub_23030F8B8();

      *(v88 + 96) = v91;
      v92 = sub_23008D840(v88);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v295 = v92;
      if (v85)
      {
        v93 = sub_23030F8B8();

        v94 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v93, 0xD000000000000011, 0x8000000230344110, v94);
        v295 = v293;
      }

      if (v87)
      {
        v95 = sub_23030F8B8();

        v96 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        v97 = 0x7463617265746E69;
        v98 = 0xEF65646F4D6E6F69;
        goto LABEL_48;
      }

      goto LABEL_81;
    case 4u:
      LODWORD(v279) = v42[48];
      v278 = *(v42 + 7);
      LODWORD(v288) = v42[64];
      v211 = *(v42 + 10);
      v280 = *(v42 + 9);
      v281 = v211;
      LODWORD(v282) = v42[88];
      v212 = *(v42 + 13);
      v283 = *(v42 + 12);
      v284 = v212;
      LODWORD(v285) = v42[112];
      LODWORD(v286) = v42[113];
      v287 = *(v42 + 15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_230325BF0;
      *(v213 + 32) = 0x756F635F62726576;
      *(v213 + 40) = 0xEA0000000000746ELL;
      *(v213 + 48) = sub_23030FFB8();
      *(v213 + 56) = 0x756F635F6E756F6ELL;
      *(v213 + 64) = 0xEA0000000000746ELL;
      *(v213 + 72) = sub_23030FFB8();
      *(v213 + 80) = 0x6E756F635F6A6461;
      *(v213 + 88) = 0xE900000000000074;
      *(v213 + 96) = sub_23030FFB8();
      *(v213 + 104) = 0x6E756F635F766461;
      *(v213 + 112) = 0xE900000000000074;
      *(v213 + 120) = sub_23030FFB8();
      *(v213 + 128) = 0xD000000000000011;
      *(v213 + 136) = 0x8000000230344070;
      *(v213 + 144) = sub_23030FFB8();
      strcpy((v213 + 152), "creation_time");
      *(v213 + 166) = -4864;
      *(v213 + 168) = sub_23030FFB8();
      *(v213 + 176) = 0x6575645F736168;
      *(v213 + 184) = 0xE700000000000000;
      *(v213 + 192) = sub_23030FE38();
      *(v213 + 200) = 0xD000000000000010;
      *(v213 + 208) = 0x8000000230344090;
      *(v213 + 216) = sub_23030FFB8();
      *(v213 + 224) = 0xD000000000000014;
      *(v213 + 232) = 0x80000002303440B0;
      *(v213 + 240) = sub_23030FFB8();
      strcpy((v213 + 248), "is_recurrent");
      *(v213 + 261) = 0;
      *(v213 + 262) = -5120;
      *(v213 + 264) = sub_23030FE38();
      *(v213 + 272) = 0x64656767616C66;
      *(v213 + 280) = 0xE700000000000000;
      *(v213 + 288) = sub_23030FFB8();
      *(v213 + 296) = 0x797469726F697270;
      *(v213 + 304) = 0xE800000000000000;
      *(v213 + 312) = sub_230310508();
      *(v213 + 320) = 0xD000000000000010;
      *(v213 + 328) = 0x80000002303440D0;
      *(v213 + 336) = sub_23030FE38();
      *(v213 + 344) = 0x67616D695F736168;
      *(v213 + 352) = 0xE900000000000065;
      *(v213 + 360) = sub_23030FE38();
      strcpy((v213 + 368), "title_length");
      *(v213 + 381) = 0;
      *(v213 + 382) = -5120;
      *(v213 + 384) = sub_23030FFB8();
      v214 = sub_23008D840(v213);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v295 = v214;
      if ((v288 & 1) == 0)
      {
        v215 = sub_23030FFB8();
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        v97 = 0x656D69745F657564;
        v210 = v215;
        v98 = 0xE800000000000000;
        goto LABEL_51;
      }

      goto LABEL_81;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_230316160;
      *(v221 + 32) = 0x726F68747561;
      *(v221 + 40) = 0xE600000000000000;
      v222 = sub_23030F8B8();

      *(v221 + 48) = v222;
      *(v221 + 56) = 0x6E756F4365766173;
      *(v221 + 64) = 0xE900000000000074;
      *(v221 + 72) = sub_23030FFB8();
      *(v221 + 80) = 0x756F436863746566;
      *(v221 + 88) = 0xEA0000000000746ELL;
      *(v221 + 96) = sub_23030FFB8();
      v223 = sub_23008D840(v221);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v295 = v223;
      goto LABEL_81;
    case 6u:
      v196 = *(v42 + 1);
      v197 = *(v42 + 2);
      LODWORD(v288) = v42[25];
      v286 = *(v42 + 6);
      v287 = v197;
      v198 = *(v42 + 8);
      v284 = v196;
      v285 = v198;
      v199 = *(v42 + 10);
      v200 = *(v42 + 11);
      v283 = v199;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_23031F3A0;
      *(v201 + 32) = 0xD000000000000010;
      *(v201 + 40) = 0x8000000230343FF0;
      *(v201 + 48) = sub_23030FEC8();
      *(v201 + 56) = 0xD000000000000010;
      *(v201 + 64) = 0x8000000230344010;
      *(v201 + 72) = sub_23030FE38();
      *(v201 + 80) = 0xD000000000000011;
      *(v201 + 88) = 0x8000000230343F90;
      v202 = sub_23030F8B8();

      *(v201 + 96) = v202;
      strcpy((v201 + 104), "loadingReason");
      *(v201 + 118) = -4864;
      v203 = sub_23030F8B8();

      *(v201 + 120) = v203;
      *(v201 + 128) = 0x636F4C6C65646F6DLL;
      *(v201 + 136) = 0xEB00000000656C61;
      v204 = sub_23030F8B8();

      *(v201 + 144) = v204;
      v205 = sub_23008D840(v201);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v295 = v205;
      if (v200)
      {
        v206 = sub_23030F8B8();

        v207 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v206, 0x73654D726F727265, 0xEC00000065676173, v207);
        v295 = v293;
      }

      if (v287)
      {
        v208 = sub_23030F8B8();

        v209 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v208, 0xD000000000000015, 0x8000000230344050, v209);
        v295 = v293;
      }

      if (v288 != 2)
      {
        v112 = "successFromTrial";
        v95 = sub_23030FE38();
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        v97 = 0xD000000000000011;
        goto LABEL_47;
      }

      goto LABEL_81;
    case 7u:
      v228 = *(v42 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230315CE0;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x8000000230343FD0;
      *(inited + 48) = sub_23030FE38();
      v230 = sub_23008D840(inited);
      swift_setDeallocating();
      sub_230061918(inited + 32, &qword_27DB16F70);
      v295 = v230;
      if (v228)
      {
        if (v228[2])
        {
          v293 = v228;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
          sub_2300B0FA8();
          sub_23030F7C8();

          v127 = sub_23030F8B8();

LABEL_79:
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v293 = v295;
          v130 = 0xE900000000000073;
          v129 = 0x65676175676E616CLL;
          goto LABEL_80;
        }

        sub_2301F0980();
      }

      else
      {
        sub_2301F0980();
      }

      v127 = sub_230310468();
      goto LABEL_79;
    case 8u:
      v113 = *(v42 + 4);
      v114 = *(v42 + 6);
      v115 = *(v42 + 9);
      v285 = *(v42 + 5);
      v286 = v115;
      v116 = *(v42 + 10);
      v117 = *(v42 + 12);
      v287 = *(v42 + 11);
      v288 = v117;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v118 = swift_initStackObject();
      *(v118 + 16) = xmmword_2303167B0;
      *(v118 + 32) = 0x656372756F73;
      *(v118 + 40) = 0xE600000000000000;
      v119 = sub_23030F8B8();

      *(v118 + 48) = v119;
      strcpy((v118 + 56), "uncategorized");
      *(v118 + 70) = -4864;
      *(v118 + 72) = sub_23030FE38();
      v120 = sub_23008D840(v118);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      v295 = v120;
      if (v113)
      {
        v121 = sub_23030F8B8();

        v122 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v121, 0x636F4C6C65646F6DLL, 0xEB00000000656C61, v122);
        v295 = v293;
      }

      if (v114)
      {
        v123 = sub_23030F8B8();

        v124 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v123, 0x6552656C61636F6CLL, 0xEC0000006E6F7361, v124);
        v295 = v293;
      }

      if (v116)
      {
        v125 = sub_23030F8B8();

        v126 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v125, 0xD000000000000011, 0x8000000230343FB0, v126);
        v295 = v293;
      }

      if (v288)
      {
        v127 = sub_23030F8B8();

        v128 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        v129 = 0xD000000000000011;
        v130 = 0x8000000230343F90;
LABEL_80:
        sub_23005EA50(v127, v129, v130, v128);
        v295 = v293;
      }

      goto LABEL_81;
    case 9u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v224 = swift_initStackObject();
      *(v224 + 16) = xmmword_230316160;
      *(v224 + 32) = 1836020326;
      *(v224 + 40) = 0xE400000000000000;
      v225 = sub_23030F8B8();

      *(v224 + 48) = v225;
      *(v224 + 56) = 28532;
      *(v224 + 64) = 0xE200000000000000;
      v226 = sub_23030F8B8();

      *(v224 + 72) = v226;
      strcpy((v224 + 80), "groceryLocale");
      *(v224 + 94) = -4864;
      v227 = sub_23030F8B8();

      *(v224 + 96) = v227;
      v83 = sub_23008D840(v224);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      goto LABEL_55;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v81 = swift_initStackObject();
      *(v81 + 32) = 0x546E6F6973736573;
      *(v81 + 16) = xmmword_23031F3A0;
      *(v81 + 40) = 0xEB00000000657079;
      v82 = sub_23030F8B8();

      *(v81 + 48) = v82;
      strcpy((v81 + 56), "inferenceTime");
      *(v81 + 70) = -4864;
      *(v81 + 72) = sub_23030FEC8();
      *(v81 + 80) = 0xD000000000000012;
      *(v81 + 88) = 0x8000000230343F30;
      *(v81 + 96) = sub_23030FFB8();
      *(v81 + 104) = 0xD000000000000012;
      *(v81 + 112) = 0x8000000230343F50;
      *(v81 + 120) = sub_23030FFB8();
      *(v81 + 128) = 0xD00000000000001ALL;
      *(v81 + 136) = 0x8000000230343F70;
      *(v81 + 144) = sub_23030FFB8();
      v83 = sub_23008D840(v81);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
LABEL_55:
      swift_arrayDestroy();
      v295 = v83;
      goto LABEL_81;
    case 0xBu:
      v99 = *v42;
      LODWORD(v283) = v42[8];
      v100 = *(v42 + 2);
      v280 = v99;
      v281 = v100;
      LODWORD(v284) = v42[24];
      v101 = *(v42 + 5);
      v282 = *(v42 + 4);
      v285 = v101;
      LODWORD(v286) = v42[48];
      LODWORD(v287) = v42[49];
      LODWORD(v288) = v42[64];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F68);
      v102 = swift_initStackObject();
      *(v102 + 16) = xmmword_23031F3A0;
      *(v102 + 32) = 0x5472657470616461;
      *(v102 + 40) = 0xEB00000000657079;
      v103 = sub_23030F8B8();

      *(v102 + 48) = v103;
      strcpy((v102 + 56), "inferenceTime");
      *(v102 + 70) = -4864;
      *(v102 + 72) = sub_23030FEC8();
      *(v102 + 80) = 0x54746E65746E6F63;
      *(v102 + 88) = 0xEB00000000657079;
      v104 = sub_23030F8B8();

      *(v102 + 96) = v104;
      *(v102 + 104) = 0xD000000000000012;
      *(v102 + 112) = 0x8000000230343E50;
      *(v102 + 120) = sub_23030FFB8();
      *(v102 + 128) = 0xD000000000000014;
      *(v102 + 136) = 0x8000000230343E70;
      *(v102 + 144) = sub_23030FFB8();
      v105 = sub_23008D840(v102);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F70);
      swift_arrayDestroy();
      v295 = v105;
      if (v283)
      {
        if (v284)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v231 = sub_23030FFB8();
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v231, 0xD000000000000010, 0x8000000230343F10, v232);
        v295 = v293;
        if (v284)
        {
LABEL_16:
          if (!v285)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      v233 = sub_23030FFB8();
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      sub_23005EA50(v233, 0xD000000000000018, 0x8000000230343EF0, v234);
      v295 = v293;
      if (v285)
      {
LABEL_17:
        v106 = sub_23030F8B8();

        v107 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v106, 0x4C746E65746E6F63, 0xEF65676175676E61, v107);
        v295 = v293;
      }

LABEL_18:
      if (v286 != 2)
      {
        v108 = sub_23030F8B8();

        v109 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v108, 0xD000000000000014, 0x8000000230343ED0, v109);
        v295 = v293;
      }

      if (v287 != 2)
      {
        v110 = sub_23030FE38();
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        sub_23005EA50(v110, 0xD000000000000016, 0x8000000230343EB0, v111);
        v295 = v293;
      }

      if ((v288 & 1) == 0)
      {
        v112 = "determinedTokenCount";
        v95 = sub_23030FEC8();
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v295;
        v97 = 0xD00000000000001FLL;
LABEL_47:
        v98 = v112 | 0x8000000000000000;
LABEL_48:
        v210 = v95;
LABEL_51:
        sub_23005EA50(v210, v97, v98, v96);
        v295 = v293;
      }

LABEL_81:
      swift_beginAccess();
      return v295;
    case 0xCu:
      sub_23030EB48();
      sub_23030EDC8();
      v217 = v283;
      v216 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v218 = sub_23030EDF8();
      (*(v217 + 8))(v3, v216);
      (*(v285 + 8))(v6, v286);
      v219 = v288;
      v220 = v287;
      v265 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v266 = sub_23030F8B8();

      v267 = [v265 initWithString_];

      v268 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      sub_23005EA50(v267, 0x6F6974617265706FLL, 0xEB0000000064496ELL, v268);
      v295 = v293;
      v269 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v270 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      sub_23005EA50(v269, 0x6144664F72756F68, 0xE900000000000079, v270);
      v295 = v293;
      (*(v219 + 8))(v13, v220);
      goto LABEL_81;
    case 0xDu:
      v68 = v279;
      sub_23030EB48();
      sub_23030EDC8();
      v75 = v283;
      v74 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v76 = sub_23030EDF8();
      (*(v75 + 8))(v3, v74);
      (*(v285 + 8))(v6, v286);
      v77 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v78 = sub_23030F8B8();
      v79 = [v77 initWithString_];

      v80 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      sub_23005EA50(v79, 0x6F6974617265706FLL, 0xEB0000000064496ELL, v80);
      v295 = v293;
      v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      goto LABEL_8;
    case 0xEu:
      v155 = *(v42 + 1);
      v286 = *v42;
      v292[0] = v286;
      v292[1] = v155;
      sub_23030AFCC(&v293);
      v156 = v293;
      v157 = REMAccountSnapshotSummary.nsPayload.getter();
      sub_230108E08(v157);
      v159 = v158;

      v160 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      v295 = 0x8000000000000000;
      sub_2301F057C(v159, sub_2301F00C8, 0, v160, v292);

      v295 = v292[0];
      v161 = sub_2301F0804();
      v162 = v279;
      sub_23030EB48();
      v163 = sub_23030EAA8();
      (*(v288 + 8))(v162, v287);
      v164 = [v161 stringFromDate_];

      v165 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v167 = v166;

      v168 = [v156 stringRepresentation];
      v169 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v171 = v170;

      v293 = v169;
      v294 = v171;

      MEMORY[0x231911790](v165, v167);

      v172 = MEMORY[0x231911850](v293, v294);

      v293 = v172;
      sub_230310E58();
      v173 = sub_23030F8B8();

      v174 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
      sub_23005EA50(v173, 0x48746E756F636361, 0xED00004449687361, v174);

      v295 = v293;

      goto LABEL_81;
    case 0xFu:
      v68 = v279;
      sub_23030EB48();
      sub_23030EDC8();
      v70 = v283;
      v69 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v71 = sub_23030EDF8();
      (*(v70 + 8))(v3, v69);
      (*(v285 + 8))(v6, v286);
      v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v295;
LABEL_8:
      sub_23005EA50(v72, 0x6144664F72756F68, 0xE900000000000079, v73);
      v295 = v293;
      (*(v288 + 8))(v68, v287);
      goto LABEL_81;
    case 0x10u:
      goto LABEL_81;
    default:
      v43 = *v42;
      v44 = v42[1];
      v45 = *(v42 + 2);
      v275 = *(v42 + 1);
      v281 = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v47 = *(v46 + 64);
      v48 = &v42[*(v46 + 80)];
      v50 = *v48;
      v49 = *(v48 + 1);
      v276 = v50;
      v280 = v49;
      sub_2300E0878(&v42[v47], v282);
      LOBYTE(v291) = v43;
      HIBYTE(v291) = v44;
      sub_2301EF0E8();
      v289 = v43;
      v290 = v44;
      v277 = sub_2301EF430();
      v279 = v51;
      sub_23030EB48();
      sub_23030EDC8();
      v53 = v283;
      v52 = v284;
      (*(v283 + 104))(v3, *MEMORY[0x277CC9980], v284);
      v54 = sub_23030EDF8();
      (*(v53 + 8))(v3, v52);
      v55 = v281;
      (*(v285 + 8))(v6, v286);
      v56 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v57 = sub_23030F8B8();

      v58 = [v56 initWithString_];

      swift_beginAccess();
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v58, 0x6F6974617265706FLL, 0xEB0000000064496ELL, v59);
      v295 = v292[0];
      swift_endAccess();
      v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      swift_beginAccess();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = v295;
      sub_23005EA50(v60, 0x6144664F72756F68, 0xE900000000000079, v61);
      v295 = v292[0];
      swift_endAccess();
      if (v55)
      {
        v62 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v63 = sub_23030F8B8();
        v64 = [v62 initWithString_];

        swift_beginAccess();
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v64, 0x496E6F6973736573, 0xE900000000000064, v65);
        v295 = v292[0];
        swift_endAccess();
      }

      sub_2301818F8(v282, v38);
      v66 = v287;
      v67 = v288;
      if ((*(v288 + 48))(v38, 1, v287) == 1)
      {
        sub_230061918(v38, &unk_27DB15AA0);
      }

      else
      {
        v252 = v273;
        (*(v67 + 32))(v273, v38, v66);
        sub_23030EA88();
        v254 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        swift_beginAccess();
        v255 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v254, 0x5464657370616C65, 0xEB00000000656D69, v255);
        v295 = v292[0];
        swift_endAccess();
        (*(v67 + 8))(v252, v66);
      }

      v256 = v279;
      if (v280)
      {
        v257 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v258 = sub_23030F8B8();
        v259 = [v257 initWithString_];

        swift_beginAccess();
        v260 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v259, 0x61636F4C77656976, 0xEC0000006E6F6974, v260);
        v295 = v292[0];
        swift_endAccess();
      }

      if (v256)
      {
        v261 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v262 = sub_23030F8B8();
        v263 = [v261 initWithString_];

        swift_beginAccess();
        v264 = swift_isUniquelyReferenced_nonNull_native();
        v292[0] = v295;
        sub_23005EA50(v263, 0x6F6974617265706FLL, 0xEF6C69617465446ELL, v264);
        v295 = v292[0];
        swift_endAccess();
      }

      (*(v67 + 8))(v278, v66);
      sub_230061918(v282, &unk_27DB15AA0);
      goto LABEL_81;
  }
}

uint64_t sub_23005E554(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_2301094C4(a2, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23005E5F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_230181650(a2, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23005E68C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_23005575C(a2, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23005E734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB164B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23005E7DC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_23005E8E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_23005EE00(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_23005EE00(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_2303112A8();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

id sub_23005EA90(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB193B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005EE78();
  sub_230311428();
  if (!v1)
  {
    sub_23005F150();
    sub_230310CE8();
    v8 = v20;
    v9 = v21;
    sub_23004CBA4(0, &unk_280C99CD8);
    sub_23005FAD4(v8, v9);
    v10 = sub_23005FB38();
    sub_23005FE3C(v8, v9);
    v22 = type metadata accessor for REMFetchResultToken_Codable();
    v12 = objc_allocWithZone(v22);
    v17 = v10;
    v18 = v12;
    v16 = [v10 persistentHistoryTokens];
    sub_23004CBA4(0, &qword_280C987F8);
    sub_23030F658();

    v13 = sub_23030F638();

    v19.receiver = v18;
    v19.super_class = v22;
    v14 = v13;
    v2 = objc_msgSendSuper2(&v19, sel_initWithPersistentHistoryTokens_, v13);

    sub_23005FE3C(v8, v9);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t destroy for Diff()
{
}

id sub_23005EDD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_23005EA90(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23005EE00(uint64_t a1, uint64_t a2)
{
  sub_230311358();
  sub_23030F9C8();
  v4 = sub_2303113A8();

  return sub_23005F03C(a1, a2, v4);
}

unint64_t sub_23005EE78()
{
  result = qword_280C98B88;
  if (!qword_280C98B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B88);
  }

  return result;
}

uint64_t sub_23005EECC()
{
  v1 = sub_23030F508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_23030F528();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A80);
    sub_23005F108(&qword_280C96FC0, &qword_27DB16A80);
    sub_23030F188();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23005F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_230311048())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}