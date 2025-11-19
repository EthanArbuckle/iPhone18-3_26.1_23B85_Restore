id REMGroceryDataView.SecondaryGroceryLocaleInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2302C9E7C()
{
  result = qword_27DB195B8;
  if (!qword_27DB195B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB195B8);
  }

  return result;
}

uint64_t sub_2302C9F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030ED38();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(uint64_t a1)
{
  v2 = sub_23030ED38();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithCopy for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *initializeWithTake for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithTake for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void sub_2302CA7F4()
{
  sub_2302CA888();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_2302CA888()
{
  if (!qword_27DB195D8)
  {
    sub_23030ED38();
    v0 = sub_2303104C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB195D8);
    }
  }
}

unint64_t sub_2302CA904()
{
  result = qword_27DB195E0;
  if (!qword_27DB195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB195E0);
  }

  return result;
}

unint64_t sub_2302CA95C()
{
  result = qword_27DB195E8;
  if (!qword_27DB195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB195E8);
  }

  return result;
}

unint64_t sub_2302CA9B4()
{
  result = qword_27DB195F0;
  if (!qword_27DB195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB195F0);
  }

  return result;
}

unint64_t sub_2302CAA0C()
{
  result = qword_27DB195F8;
  if (!qword_27DB195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB195F8);
  }

  return result;
}

unint64_t sub_2302CAA64()
{
  result = qword_27DB19600;
  if (!qword_27DB19600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19600);
  }

  return result;
}

unint64_t sub_2302CAABC()
{
  result = qword_27DB19608;
  if (!qword_27DB19608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19608);
  }

  return result;
}

uint64_t sub_2302CAB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1, result);
  }

  return result;
}

uint64_t sub_2302CAB88(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void, void), uint64_t a9, uint64_t (*a10)(void), uint64_t a11)
{
  if (!a2)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a1;

    sub_2300761F8(a1, 0);
    sub_23004F8A0(a3, a4, a5 & 1, sub_2302D2430, v19);
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_2300761F8(a1, 1u);

    sub_230126528(a3, 0, 1, a8, a9, a1);
    sub_230073398(a1, 1u);
LABEL_5:
  }

  return sub_23004F8A0(a3, 0, 1, a10, a11);
}

uint64_t sub_2302CACDC(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void, void), uint64_t a9, uint64_t (*a10)(void), uint64_t a11)
{
  if (!a2)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a1;

    sub_2300761F8(a1, 0);
    sub_23004F8A0(a3, a4, a5 & 1, sub_2302D2430, v19);
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_2300761F8(a1, 1u);

    sub_230126528(a3, 0, 1, a8, a9, a1);
    sub_230073398(a1, 1u);
LABEL_5:
  }

  return sub_23004F8A0(a3, 0, 1, a10, a11);
}

uint64_t sub_2302CAE30(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void (*a9)(void, void), uint64_t a10, uint64_t (*a11)(void), uint64_t a12)
{
  if (!a3)
  {
    v21 = swift_allocObject();
    v21[2] = a7;
    v21[3] = a8;
    v21[4] = a1;
    v21[5] = a2;

    sub_2302D2648(a1, a2, 0);
    sub_23004F8A0(a4, a5, a6 & 1, sub_2302D26AC, v21);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_2302D2648(a1, a2, 1);

    sub_230126528(a4, 0, 1, a9, a10, a1);
    sub_2301CFAA0(a1, a2, 1);
LABEL_5:
  }

  return sub_23004F8A0(a4, 0, 1, a11, a12);
}

uint64_t sub_2302CAF90(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, uint64_t (*a12)(void), uint64_t a13)
{
  if (!a4)
  {
    v23 = swift_allocObject();
    v23[2] = a8;
    v23[3] = a9;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = a3;

    sub_2302D24E8(a1, a2, a3, 0);
    sub_23004F8A0(a5, a6, a7 & 1, sub_2302D2590, v23);
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    sub_2302D24E8(a1, a2, a3, 1);

    sub_230126528(a5, 0, 1, a10, a11, a1);
    sub_2301CF8FC(a1, a2, a3, 1);
LABEL_5:
  }

  return sub_23004F8A0(a5, 0, 1, a12, a13);
}

uint64_t (*sub_2302CB110(uint64_t a1, uint64_t a2))()
{
  v5 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v5 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    swift_beginAccess();
    v12 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23007FDD8(0, v12[2] + 1, 1, v12);
      *(v2 + 32) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_23007FDD8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_2302D27C8;
    v16[5] = v11;
    *(v2 + 32) = v12;
    swift_endAccess();
    return nullsub_1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 48);
  if (v7 != 255)
  {
    v8 = *(v2 + 40);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 40) = v8;
    *(v9 + 48) = v7;

    sub_2300761E4(v8, v7);

    return sub_230065274;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2302CB2C0(uint64_t a1, uint64_t a2))()
{
  v5 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v5 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    swift_beginAccess();
    v12 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23007FDEC(0, v12[2] + 1, 1, v12);
      *(v2 + 32) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_23007FDEC((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_2302D242C;
    v16[5] = v11;
    *(v2 + 32) = v12;
    swift_endAccess();
    return nullsub_1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 48);
  if (v7 != 255)
  {
    v8 = *(v2 + 40);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 40) = v8;
    *(v9 + 48) = v7;

    sub_2300761E4(v8, v7);

    return sub_2300652D0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2302CB470(uint64_t a1, uint64_t a2))()
{
  v5 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v5 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    swift_beginAccess();
    v13 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_23007FE00(0, v13[2] + 1, 1, v13);
      *(v2 + 32) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_23007FE00((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_2302D2668;
    v17[5] = v12;
    *(v2 + 32) = v13;
    swift_endAccess();
    return nullsub_1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 56);
  if (v7 != 255)
  {
    v9 = *(v2 + 40);
    v8 = *(v2 + 48);
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = a1;
    *(v10 + 32) = a2;
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
    *(v10 + 56) = v7;

    sub_2302D2634(v9, v8, v7);

    return sub_2302D25D8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2302CB630(uint64_t a1, uint64_t a2))()
{
  v5 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v5 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    swift_beginAccess();
    v14 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_23007FE14(0, v14[2] + 1, 1, v14);
      *(v2 + 32) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_23007FE14((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = sub_2302D2544;
    v18[5] = v13;
    *(v2 + 32) = v14;
    swift_endAccess();
    return nullsub_1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 64);
  if (v7 != 255)
  {
    v9 = *(v2 + 48);
    v8 = *(v2 + 56);
    v10 = *(v2 + 40);
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = a1;
    *(v11 + 32) = a2;
    *(v11 + 40) = v10;
    *(v11 + 48) = v9;
    *(v11 + 56) = v8;
    *(v11 + 64) = v7;

    sub_2302D24D4(v10, v9, v8, v7);

    return sub_2302D2470;
  }

  __break(1u);
  return result;
}

uint64_t REMAsyncOperationManager.__allocating_init(queue:backgroundQueue:syncPerformOperationFunc:operationDidFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 80);
  *(v13 + 32) = *(v6 + 96);
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;
  v14 = swift_allocObject();
  v15 = a1;

  REMAsyncOperationManager.init(queue:performOperation:syncPerformOperationFunc:operationDidFinish:)(v15, sub_2302CC934, v13, a3, a4, a5, a6);
  return v14;
}

uint64_t REMAsyncOperationManager.operationStateStartingIfNeeded(for:)(uint64_t a1)
{
  v3 = sub_23030F508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_23030F528();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v12[1] = *(v1 + 72);
    MEMORY[0x28223BE20](result);
    v12[-2] = v1;
    v12[-1] = a1;
    v10 = type metadata accessor for UnfairLock();
    v11 = type metadata accessor for REMAsyncOperationState();

    Lock.sync<A>(_:)(sub_2302CD184, &v12[-4], v10, v11, &protocol witness table for UnfairLock);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t REMAsyncOperationState.asPromise()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v2 + 32))(v5, v7, v1);
    type metadata accessor for Promise();
    v10 = sub_2300951C0(v5);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  else
  {
    v12 = *v7;
    type metadata accessor for Promise();
    return Promise.__allocating_init(error:)(v12);
  }
}

uint64_t REMAsyncOperationManager.syncResult(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v42 = *v3;
  v5 = v42;
  v6 = sub_23030F458();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23030F4C8();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v40 = v9;
  v10 = sub_230311408();
  v11 = *(v10 - 8);
  v38 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = v36 - v13;
  v14 = *(v5 + 80);
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = v36 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = v36 - v18;
  aBlock[0] = v3[9];
  v52 = v3;
  v53 = a1;
  v41 = a1;
  v20 = type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)(sub_2302CFB04, v51, v20, TupleTypeMetadata2, &protocol witness table for UnfairLock);

  v21 = *(TupleTypeMetadata2 + 48);
  v22 = v50;
  LODWORD(a1) = v19[v21];
  v23 = *(v11 + 32);
  result = v23(v50, v19, v10);
  if (a1 == 1)
  {
    if (v3[5])
    {
      v36[1] = v3[2];
      v36[0] = swift_allocObject();
      swift_weakInit();
      v25 = v37;
      (*(v37 + 16))(v49, v41, v14);
      v26 = v39;
      (*(v11 + 16))(v39, v22, v10);
      v27 = (*(v25 + 80) + 48) & ~*(v25 + 80);
      v28 = (v15 + *(v11 + 80) + v27) & ~*(v11 + 80);
      v29 = swift_allocObject();
      v30 = v40;
      *(v29 + 2) = v14;
      *(v29 + 3) = v30;
      v31 = v36[0];
      *(v29 + 4) = *(v42 + 96);
      *(v29 + 5) = v31;
      (*(v25 + 32))(&v29[v27], v49, v14);
      v23(&v29[v28], v26, v10);
      aBlock[4] = sub_2302CFB0C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2300F5280;
      aBlock[3] = &block_descriptor_20;
      v32 = _Block_copy(aBlock);

      v33 = v43;
      sub_23030F488();
      v54 = MEMORY[0x277D84F90];
      sub_2300ED808();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
      sub_2300ED860();
      v34 = v45;
      v35 = v48;
      sub_230310648();
      MEMORY[0x2319120F0](0, v33, v34, v32);
      _Block_release(v32);
      (*(v47 + 8))(v34, v35);
      (*(v44 + 8))(v33, v46);
    }
  }

  return result;
}

uint64_t REMAsyncOperationState.result.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 - 8);
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_2302CC420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_230311408();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  type metadata accessor for REMAsyncOperationState();

  return swift_storeEnumTagMultiPayload();
}

uint64_t REMAsyncOperationManager.__allocating_init(queue:performOperation:syncPerformOperationFunc:operationDidFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  REMAsyncOperationManager.init(queue:performOperation:syncPerformOperationFunc:operationDidFinish:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *REMAsyncOperationManager.init(queue:performOperation:syncPerformOperationFunc:operationDidFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  *(v12 + 24) = 0;
  v7[9] = v12;
  swift_getAssociatedTypeWitness();
  type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  swift_getAssociatedConformanceWitness();
  v7[10] = sub_23030F5F8();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a6;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a7;
  return v7;
}

uint64_t sub_2302CC6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a4;
  v26 = a8;
  v27 = a3;
  v24 = a1;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = sub_23030F508();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = a2;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = a2;
  LOBYTE(a2) = sub_23030F528();
  result = (*(v15 + 8))(v17, v14);
  if (a2)
  {
    (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24, a6);
    v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = a6;
    *(v21 + 3) = a7;
    v22 = v25;
    *(v21 + 4) = v26;
    *(v21 + 5) = v22;
    *(v21 + 6) = a5;
    (*(v12 + 32))(&v21[v20], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6);

    v23 = firstly<A>(on:closure:)(v27, sub_2302D2770, v21, a7);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2302CC948@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v16 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v7 = sub_230311408();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  a1(a2);
  (*(v8 + 16))(v11, v13, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_willThrow();
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    return (*(*(a3 - 8) + 32))(v16, v11, a3);
  }
}

uint64_t sub_2302CCB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a2;
  v52 = a3;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v7;
  v8 = sub_2303104C8();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v45 = v4;
  v51 = type metadata accessor for REMAsyncOperationState();
  v42 = *(v51 - 8);
  v18 = MEMORY[0x28223BE20](v51);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - v20;
  v21 = *(v5 + 24);
  v21(v3, v5);
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_23030F728();
  v22 = *(v55 + 48);
  v50 = v6;
  if (v22(v12, 1, v6))
  {
    (*(v48 + 8))(v12, v49);
    swift_endAccess();
    (*(v47 + 8))(v17, AssociatedTypeWitness);
    v49 = AssociatedTypeWitness;
    v23 = sub_2302CD510(v54);
    v25 = v24;
    v21(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
    v26 = sub_230311408();
    sub_2303104C8();
    type metadata accessor for Promise();
    type metadata accessor for PromiseDisposableToken();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v28 = *(TupleTypeMetadata3 + 48);
    v29 = *(TupleTypeMetadata3 + 64);
    v30 = v46;
    (*(*(v26 - 8) + 56))(v46, 1, 1, v26);
    *&v30[v28] = v23;
    *&v30[v29] = v25;
    v31 = v50;
    swift_storeEnumTagMultiPayload();
    (*(v55 + 56))(v30, 0, 1, v31);
    swift_beginAccess();
    sub_23030F6F8();

    sub_23030F738();
    swift_endAccess();

    *v52 = v23;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v33 = v55;
    v34 = v43;
    v35 = v50;
    (*(v55 + 16))(v43, v12, v50);
    (*(v48 + 8))(v12, v49);
    swift_endAccess();
    (*(v47 + 8))(v17, AssociatedTypeWitness);
    v36 = v41;
    sub_2302CD1A4(v35, v41);
    (*(v33 + 8))(v34, v35);
    v37 = *(v42 + 32);
    v38 = v40;
    v39 = v51;
    v37(v40, v36, v51);
    return v37(v52, v38, v39);
  }
}

uint64_t sub_2302CD1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v6 = sub_230311408();
  v7 = sub_2303104C8();
  v26 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = *(v6 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v19, v6);
    v21 = v27;
  }

  else
  {
    v22 = v27;
    type metadata accessor for Promise();
    type metadata accessor for PromiseDisposableToken();
    v23 = *&v19[*(swift_getTupleTypeMetadata3() + 48)];

    (*(v26 + 32))(v10, v19, v7);
    if ((*(v11 + 48))(v10, 1, v6) == 1)
    {
      (*(v26 + 8))(v10, v7);
      *v22 = v23;
      type metadata accessor for REMAsyncOperationState();
      return swift_storeEnumTagMultiPayload();
    }

    v25 = *(v11 + 32);
    v25(v17, v10, v6);
    v25(v14, v17, v6);
    v21 = v22;
  }

  return sub_2302CC420(v14, v5, v21);
}

uint64_t sub_2302CD510(uint64_t a1)
{
  v3 = sub_23030F508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_23030F528();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    type metadata accessor for PromiseDisposableToken();
    v10 = swift_allocObject();
    v11 = type metadata accessor for Promise();
    MEMORY[0x28223BE20](v11);
    *(&v12 - 4) = v1;
    *(&v12 - 3) = a1;
    *(&v12 - 2) = v10;
    return Promise.__allocating_init(resolver:)(sub_2302D209C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2302CD6DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v47 = a2;
  v3 = *a1;
  v4 = *(*a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v5 = sub_230311408();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v35 - v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v42 = v4;
  v9 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v10 = sub_2303104C8();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  v38 = *(v8 + 24);
  v38(v7, v8);
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_23030F728();
  swift_endAccess();
  (*(v16 + 8))(v20, AssociatedTypeWitness);
  v21 = *(v9 - 8);
  result = (*(v21 + 48))(v14, 1, v9);
  if (result == 1)
  {
    goto LABEL_5;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = sub_2303104C8();
    type metadata accessor for Promise();
    type metadata accessor for PromiseDisposableToken();
    swift_getTupleTypeMetadata3();

    result = (*(*(v34 - 8) + 8))(v14, v34);
LABEL_5:
    v32 = 0;
    goto LABEL_6;
  }

  v23 = v45;
  (*(v44 + 32))(v43, v14, v45);
  v36 = sub_2302CD510(v47);
  v37 = v24;
  v38(v7, v8);
  v25 = v23;
  sub_2303104C8();
  type metadata accessor for Promise();
  type metadata accessor for PromiseDisposableToken();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v27 = *(TupleTypeMetadata3 + 48);
  v28 = *(TupleTypeMetadata3 + 64);
  v29 = v44;
  v30 = v40;
  (*(v44 + 16))(v40, v43, v25);
  v31 = *(v29 + 56);
  v32 = 1;
  v31(v30, 0, 1, v25);
  v33 = v37;
  *&v30[v27] = v36;
  *&v30[v28] = v33;
  swift_storeEnumTagMultiPayload();
  (*(v21 + 56))(v30, 0, 1, v9);
  swift_beginAccess();
  sub_23030F6F8();

  sub_23030F738();
  swift_endAccess();

  result = (*(v44 + 8))(v43, v45);
LABEL_6:
  *v46 = v32;
  return result;
}

uint64_t sub_2302CDCAC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v5 = sub_23030F508();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_23030F528();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = *(*(v2 + 72) + 16);
    os_unfair_lock_lock_with_options();
    a2(&v14, v2, a1);
    os_unfair_lock_unlock(v12);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2302CDDFC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v26 = a2;
  v2 = *a1;
  v3 = *(*a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v24 = sub_230311408();
  v25 = sub_2303104C8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = v21 - v4;
  v5 = *(v2 + 80);
  v6 = *(v2 + 96);
  v21[1] = v3;
  v7 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v8 = sub_2303104C8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v21 - v13;
  (*(v6 + 24))(v5, v6);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_23030F728();
  swift_endAccess();
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v15 = *(v7 - 8);
  result = (*(v15 + 48))(v10, 1, v7);
  if (result == 1)
  {
    v17 = 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = (*(v15 + 8))(v10, v7);
    v17 = 0;
  }

  else
  {
    type metadata accessor for Promise();
    type metadata accessor for PromiseDisposableToken();
    v18 = v25;
    swift_getTupleTypeMetadata3();

    v20 = v22;
    v19 = v23;
    (*(v23 + 32))(v22, v10, v18);
    v17 = (*(*(v24 - 8) + 48))(v20, 1) != 1;
    result = (*(v19 + 8))(v20, v18);
  }

  *v26 = v17;
  return result;
}

uint64_t sub_2302CE21C@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 12);
  v26 = *(*a1 + 11);
  v7 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v8 = sub_2303104C8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v24 - v13;
  v15 = *(v6 + 24);
  v24 = a2;
  v15(v5, v6);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_23030F728();
  swift_endAccess();
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  if ((*(*(v7 - 8) + 48))(v10, 1, v7) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
    sub_230311408();
    v16 = *(swift_getTupleTypeMetadata2() + 48);
    v17 = v25;
    result = sub_2302CE640(a1, v24, v25);
LABEL_5:
    *(v17 + v16) = 0;
    return result;
  }

  v19 = v24;
  v17 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v21 = sub_230311408();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(swift_getTupleTypeMetadata2() + 48);
    result = (*(*(v21 - 8) + 32))(v17, v10, v21);
    goto LABEL_5;
  }

  v22 = sub_2303104C8();
  type metadata accessor for Promise();
  type metadata accessor for PromiseDisposableToken();
  swift_getTupleTypeMetadata3();

  v23 = *(swift_getTupleTypeMetadata2() + 48);
  sub_2302CE640(a1, v19, v17);
  *(v17 + v23) = 1;
  return (*(*(v22 - 8) + 8))(v10, v22);
}

uint64_t sub_2302CE640@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v16 = *(*a1 + 11);
  v8 = v6[12];
  v9 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v10 = sub_2303104C8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  a1[7](a2);
  (*(v8 + 24))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v14 = sub_230311408();
  (*(*(v14 - 8) + 16))(v12, a3, v14);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v12, 0, 1, v9);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_23030F6F8();
  sub_23030F738();
  return swift_endAccess();
}

uint64_t sub_2302CE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 40);
    sub_230048758(v6);

    if (v6)
    {
      v6(a2, a3);
      return sub_2300528E4(v6);
    }
  }

  return result;
}

uint64_t sub_2302CE970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v48 = a3;
  v49 = a4;
  v44 = a1;
  v45 = a2;
  v9 = *a7;
  v46 = a7;
  v47 = v9;
  v39 = *a5;
  v10 = *(v39 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v35 - v13;
  v16 = *(v15 + 24);
  v43 = v17;
  v41 = v16(v17);
  v50 = a5[2];
  v18 = swift_allocObject();
  swift_weakInit();
  v42 = *(v11 + 16);
  v42(v14, a6, v10);
  v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v38 = v19;
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = v20;
  v21 = swift_allocObject();
  v22 = v39;
  *(v21 + 2) = v10;
  v40 = *(v22 + 88);
  *(v21 + 3) = v40;
  v39 = *(v22 + 96);
  *(v21 + 4) = v39;
  *(v21 + 5) = v18;
  v37 = *(v11 + 32);
  v37(&v21[v19], v14, v10);
  v23 = &v21[v20];
  v24 = v45;
  *v23 = v44;
  *(v23 + 1) = v24;

  v25 = v46;
  sub_23008F318(v50, v46, sub_2302D20A8, v21, MEMORY[0x277D84F78] + 8, v47);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v14;
  v42(v14, v43, v10);
  v28 = v36;
  v29 = swift_allocObject();
  v30 = v39;
  v31 = v40;
  *(v29 + 2) = v10;
  *(v29 + 3) = v31;
  *(v29 + 4) = v30;
  *(v29 + 5) = v26;
  v37(&v29[v38], v27, v10);
  v32 = &v29[v28];
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;

  sub_2302D229C(v50, v25, sub_2302D220C, v29);
}

uint64_t sub_2302CEC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v12 = sub_230311408();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(*(a8 - 8) + 16))(v15, a1, a8);
    swift_storeEnumTagMultiPayload();
    sub_2302CEE3C(a4, v15);

    (*(v13 + 8))(v15, v12);
  }

  return a5(a1);
}

void sub_2302CEE3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_23030F508();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[2];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_23030F528();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2[9] + 16);
    os_unfair_lock_lock_with_options();
    sub_2302CF11C(v2, a1, a2, &v14);
    os_unfair_lock_unlock(v11);
    if (v14 == 1)
    {
      v12 = v2[5];
      if (v12)
      {
        v12(a1, a2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2302CEFB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v8 = sub_230311408();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - v10);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v12 = a1;
    sub_2302CEE3C(a4, v11);

    (*(v9 + 8))(v11, v8);
  }

  return a5(a1);
}

uint64_t sub_2302CF11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v35 = a3;
  v37 = a4;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 96);
  v38 = *(*a1 + 88);
  v36 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v7 = sub_2303104C8();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - v16;
  v30 = *(v6 + 24);
  v30(v5, v6);
  swift_beginAccess();
  v31 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v36;
  v33 = AssociatedConformanceWitness;
  sub_23030F728();
  swift_endAccess();
  v20 = v17;
  v21 = AssociatedTypeWitness;
  v22 = v19;
  (*(v13 + 8))(v20, v21);
  v23 = v37;
  v24 = *(v19 - 8);
  if ((*(v24 + 48))(v11, 1, v22) != 1)
  {
    v29[1] = a2;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v23 = 0;
      return (*(v24 + 8))(v11, v22);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
    sub_230311408();
    v26 = sub_2303104C8();
    type metadata accessor for Promise();
    type metadata accessor for PromiseDisposableToken();
    swift_getTupleTypeMetadata3();

    (*(*(v26 - 8) + 8))(v11, v26);
  }

  v30(v31, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v27 = sub_230311408();
  v28 = v32;
  (*(*(v27 - 8) + 16))(v32, v35, v27);
  swift_storeEnumTagMultiPayload();
  (*(v24 + 56))(v28, 0, 1, v22);
  swift_beginAccess();
  sub_23030F6F8();
  sub_23030F738();
  result = swift_endAccess();
  *v23 = 1;
  return result;
}

uint64_t REMAsyncOperationManager.deinit()
{

  sub_2300528E4(*(v0 + 40));

  return v0;
}

uint64_t REMAsyncOperationManager.__deallocating_deinit()
{
  REMAsyncOperationManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t REMAsyncOperationManager.unitTest_operationState(for:)(uint64_t a1)
{
  v5[5] = *(v1 + 72);
  v5[3] = a1;
  v2 = type metadata accessor for UnfairLock();
  type metadata accessor for REMAsyncOperationState();
  v3 = sub_2303104C8();

  Lock.sync<A>(_:)(sub_2302CFC2C, v5, v2, v3, &protocol witness table for UnfairLock);
}

uint64_t sub_2302CF740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 96);
  v23 = *(*a1 + 88);
  v4 = type metadata accessor for REMAsyncOperationManager.InternalOperationState();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v19 - v5;
  v21 = sub_2303104C8();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v19 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - v11;
  (*(v3 + 24))(v2, v3);
  swift_beginAccess();
  v13 = v20;
  swift_getAssociatedConformanceWitness();
  sub_23030F728();
  if ((*(v13 + 48))(v8, 1, v4))
  {
    (*(v6 + 8))(v8, v21);
    swift_endAccess();
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    v14 = 1;
    v15 = v22;
  }

  else
  {
    v16 = v19;
    (*(v13 + 16))(v19, v8, v4);
    (*(v6 + 8))(v8, v21);
    swift_endAccess();
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    v15 = v22;
    sub_2302CD1A4(v4, v22);
    (*(v13 + 8))(v16, v4);
    v14 = 0;
  }

  v17 = type metadata accessor for REMAsyncOperationState();
  return (*(*(v17 - 8) + 56))(v15, v14, 1, v17);
}

uint64_t sub_2302CFB0C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v1 + *(*(*(v0 + 16) - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v3 = *(sub_230311408() - 8);
  v4 = *(v0 + 40);
  v5 = v0 + ((v2 + *(v3 + 80)) & ~*(v3 + 80));

  return sub_2302CE8D0(v4, v0 + v1, v5);
}

uint64_t sub_2302CFC34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_2302CFCD8(char *a1, unsigned __int8 *a2, uint64_t a3)
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
LABEL_29:

    return v3;
  }

  v9 = a2[v5];
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

    v13 = (v12 | (v10 << (8 * v5))) + 3;
    v9 = v12 + 3;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 2;
    return v3;
  }

  if (v9 != 1)
  {
    *a1 = *a2;
    a1[v5] = 0;
    goto LABEL_29;
  }

  (*(v4 + 16))(a1);
  v3[v5] = 1;
  return v3;
}

void sub_2302CFE64(unsigned __int8 *a1, uint64_t a2)
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
  if (v3 == 2)
  {
  }

  else if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }
}

void *sub_2302CFF5C(void *a1, unsigned __int8 *a2, uint64_t a3)
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
      *a1 = *a2;
      *(a1 + v4) = 0;

      return a1;
    }

    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_2302D00A8(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
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
  if (v8 == 2)
  {
  }

  else if (v8 == 1)
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
    goto LABEL_38;
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

LABEL_36:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_38;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_36;
  }

LABEL_38:
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
      *a1 = *a2;
      a1[v7] = 0;

      return a1;
    }

    (*(v6 + 16))(a1, a2, v5);
    v18 = 1;
  }

  a1[v7] = v18;
  return a1;
}

void *sub_2302D02C8(void *result, unsigned __int8 *a2, uint64_t a3)
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

unsigned __int8 *sub_2302D03FC(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
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
  if (v8 == 2)
  {
  }

  else if (v8 == 1)
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

LABEL_36:
      v17 = (v16 | (v14 << (8 * v7))) + 3;
      v13 = v16 + 3;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_38;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_36;
    }
  }

LABEL_38:
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

uint64_t sub_2302D0610(unsigned __int8 *a1, uint64_t a2)
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

void sub_2302D06B0(_BYTE *a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_2302D07C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v0 = sub_230311408();
  v2 = v1;
  result = sub_2303104C8();
  if (v4 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v5[4] = v5;
    if (v2 > 0x3F)
    {
      return v0;
    }

    else
    {
      v5[5] = *(v0 - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_2302D08F0(char *__dst, unsigned __int16 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (v5 + 1 > (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || v7 + 1 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = &v10[((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8];
    goto LABEL_45;
  }

  v11 = *(a2 + v7);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v7 <= 3)
    {
      v13 = v7;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
        if (v7 < 4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a2 | (*(a2 + 2) << 16);
          if (v7 < 4)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v14 = *a2;
        if (v7 < 4)
        {
LABEL_28:
          v11 = (v14 | (v12 << (8 * v7))) + 2;
          goto LABEL_29;
        }
      }

LABEL_26:
      v11 = v14 + 2;
      goto LABEL_29;
    }

    if (v13)
    {
      v14 = *a2;
      if (v7 < 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_29:
  v15 = *(a2 + v5);
  if (v11 == 1)
  {
    if (v15 < 2)
    {
      goto LABEL_51;
    }

    if (v5 <= 3)
    {
      v16 = v5;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_51;
      }

      v17 = *a2;
      if (v5 < 4)
      {
LABEL_54:
        if ((v17 | ((v15 - 2) << (8 * v5))) != 0xFFFFFFFF)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }
    }

    else if (v16 == 2)
    {
      v17 = *a2;
      if (v5 < 4)
      {
        goto LABEL_54;
      }
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
      if (v5 < 4)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v17 = *a2;
      if (v5 < 4)
      {
        goto LABEL_54;
      }
    }

    v15 = v17 + 2;
LABEL_51:
    if (v15 != 1)
    {
LABEL_55:
      (*(v4 + 16))(__dst);
      v25 = 0;
      goto LABEL_56;
    }

LABEL_52:
    v23 = *a2;
    v24 = *a2;
    *v3 = v23;
    v25 = 1;
LABEL_56:
    v3[v5] = v25;
    v3[v7] = 1;
    return v3;
  }

  if (v15 > 1)
  {
    v20 = a2;
    memcpy(__dst, a2, v5 + 1);
  }

  else
  {
    v20 = a2;
    if (v15 == 1)
    {
      v18 = *a2;
      v19 = *a2;
      *v3 = v18;
      v3[v5] = 1;
    }

    else
    {
      (*(v4 + 16))(__dst);
      v3[v5] = 0;
    }
  }

  v21 = (&v3[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v3[v7] = 0;

LABEL_45:

  return v3;
}

void sub_2302D0BDC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = *(v2 + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 + 1 > v4)
  {
    v4 = v3 + 1;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
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
        goto LABEL_19;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  v10 = a1[v3];
  if (v5 == 1)
  {
    if (v10 >= 2)
    {
      if (v3 <= 3)
      {
        v11 = v3;
      }

      else
      {
        v11 = 4;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = *a1;
        }

        else if (v11 == 3)
        {
          v12 = *a1 | (a1[2] << 16);
        }

        else
        {
          v12 = *a1;
        }

LABEL_39:
        v10 = (v12 | ((v10 - 2) << (8 * v3))) + 2;
        v13 = v12 + 2;
        if (v3 >= 4)
        {
          v10 = v13;
        }

        goto LABEL_41;
      }

      if (v11)
      {
        v12 = *a1;
        goto LABEL_39;
      }
    }

LABEL_41:
    if (v10 == 1)
    {
      v14 = *a1;
    }

    else
    {
      v15 = *(v2 + 8);

      v15();
    }

    return;
  }

  if (v10 <= 1)
  {
    if (v10 == 1)
    {
    }

    else
    {
      (*(v2 + 8))();
    }
  }
}

_BYTE *sub_2302D0E10(_BYTE *__dst, id *__src, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= 8uLL)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(*(*(a3 + 24) - 8) + 64);
  }

  v7 = v6 + 1;
  if (v6 + 1 > (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = *(__src + v8);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *__src;
    }

    else if (v11 == 2)
    {
      v12 = *__src;
    }

    else if (v11 == 3)
    {
      v12 = *__src | (*(__src + 2) << 16);
    }

    else
    {
      v12 = *__src;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  v14 = *(__src + v6);
  if (v9 == 1)
  {
    if (v14 >= 2)
    {
      if (v6 <= 3)
      {
        v15 = v6;
      }

      else
      {
        v15 = 4;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = *__src;
        }

        else if (v15 == 3)
        {
          v16 = *__src | (*(__src + 2) << 16);
        }

        else
        {
          v16 = *__src;
        }

LABEL_40:
        v14 = (v16 | ((v14 - 2) << (8 * v6))) + 2;
        v21 = v16 + 2;
        if (v6 >= 4)
        {
          v14 = v21;
        }

        goto LABEL_42;
      }

      if (v15)
      {
        v16 = *__src;
        goto LABEL_40;
      }
    }

LABEL_42:
    if (v14 == 1)
    {
      v22 = *__src;
      v23 = *__src;
      *__dst = v22;
      v24 = 1;
    }

    else
    {
      (*(v5 + 16))(__dst, __src);
      v24 = 0;
    }

    __dst[v6] = v24;
    __dst[v8] = 1;
    return __dst;
  }

  if (v14 > 1)
  {
    memcpy(__dst, __src, v6 + 1);
  }

  else if (v14 == 1)
  {
    v17 = *__src;
    v18 = *__src;
    *__dst = v17;
    __dst[v6] = 1;
  }

  else
  {
    (*(v5 + 16))(__dst, __src);
    __dst[v6] = 0;
  }

  v19 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
  v20 = ((__src + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  __dst[v8] = 0;

  return __dst;
}

unsigned __int16 *sub_2302D1090(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = v7 + 1;
  if (v7 + 1 > (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v10 = *(a1 + v9);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (*(a1 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v10 = v13 + 2;
          goto LABEL_24;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_24;
    }

    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v14 = *(a1 + v7);
  if (v10 == 1)
  {
    if (v14 < 2)
    {
      goto LABEL_44;
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
        goto LABEL_44;
      }

      v16 = *a1;
      if (v7 < 4)
      {
LABEL_47:
        if ((v16 | ((v14 - 2) << (8 * v7))) != 0xFFFFFFFF)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a1;
      if (v7 < 4)
      {
        goto LABEL_47;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a1 | (*(a1 + 2) << 16);
      if (v7 < 4)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v16 = *a1;
      if (v7 < 4)
      {
        goto LABEL_47;
      }
    }

    v14 = v16 + 2;
LABEL_44:
    if (v14 != 1)
    {
LABEL_48:
      (*(v6 + 8))(a1, v5);
      goto LABEL_49;
    }

LABEL_45:

    goto LABEL_49;
  }

  if (v14 <= 1)
  {
    if (v14 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }
  }

LABEL_49:
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
        if (v9 < 4)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v19 == 3)
        {
          v20 = *a2 | (*(a2 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        v20 = *a2;
        if (v9 < 4)
        {
LABEL_64:
          v17 = (v20 | (v18 << (8 * v9))) + 2;
          goto LABEL_65;
        }
      }

LABEL_62:
      v17 = v20 + 2;
      goto LABEL_65;
    }

    if (v19)
    {
      v20 = *a2;
      if (v9 < 4)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

LABEL_65:
  v21 = *(a2 + v7);
  if (v17 == 1)
  {
    if (v21 < 2)
    {
      goto LABEL_86;
    }

    if (v7 <= 3)
    {
      v22 = v7;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_86;
      }

      v23 = *a2;
      if (v7 < 4)
      {
LABEL_89:
        if ((v23 | ((v21 - 2) << (8 * v7))) != 0xFFFFFFFF)
        {
          goto LABEL_90;
        }

        goto LABEL_87;
      }
    }

    else if (v22 == 2)
    {
      v23 = *a2;
      if (v7 < 4)
      {
        goto LABEL_89;
      }
    }

    else if (v22 == 3)
    {
      v23 = *a2 | (*(a2 + 2) << 16);
      if (v7 < 4)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v23 = *a2;
      if (v7 < 4)
      {
        goto LABEL_89;
      }
    }

    v21 = v23 + 2;
LABEL_86:
    if (v21 != 1)
    {
LABEL_90:
      (*(v6 + 16))(a1, a2, v5);
      v30 = 0;
      goto LABEL_91;
    }

LABEL_87:
    v28 = *a2;
    v29 = v28;
    *a1 = v28;
    v30 = 1;
LABEL_91:
    *(a1 + v7) = v30;
    *(a1 + v9) = 1;
    return a1;
  }

  if (v21 > 1)
  {
    memcpy(a1, a2, v7 + 1);
  }

  else if (v21 == 1)
  {
    v24 = *a2;
    v25 = *a2;
    *a1 = v24;
    *(a1 + v7) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    *(a1 + v7) = 0;
  }

  v26 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(a1 + v9) = 0;

  return a1;
}

void *sub_2302D150C(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = v4 + 1;
  if (v4 + 1 > (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_21:
  v12 = a2[v4];
  if (v7 == 1)
  {
    if (v12 >= 2)
    {
      if (v4 <= 3)
      {
        v13 = v4;
      }

      else
      {
        v13 = 4;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v14 = *a2;
        }

        else if (v13 == 3)
        {
          v14 = *a2 | (a2[2] << 16);
        }

        else
        {
          v14 = *a2;
        }

LABEL_40:
        v12 = (v14 | ((v12 - 2) << (8 * v4))) + 2;
        v22 = v14 + 2;
        if (v4 >= 4)
        {
          v12 = v22;
        }

        goto LABEL_42;
      }

      if (v13)
      {
        v14 = *a2;
        goto LABEL_40;
      }
    }

LABEL_42:
    if (v12 == 1)
    {
      *result = *a2;
      v23 = 1;
    }

    else
    {
      v24 = result;
      (*(v3 + 32))();
      result = v24;
      v23 = 0;
    }

    *(result + v4) = v23;
    v19 = 1;
    goto LABEL_46;
  }

  if (v12 > 1)
  {
    v15 = result;
    v16 = a2;
    memcpy(result, a2, v4 + 1);
    a2 = v16;
    result = v15;
  }

  else if (v12 == 1)
  {
    *result = *a2;
    *(result + v4) = 1;
  }

  else
  {
    v17 = result;
    v18 = a2;
    (*(v3 + 32))();
    a2 = v18;
    result = v17;
    *(v17 + v4) = 0;
  }

  v19 = 0;
  v20 = ((result + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = (&a2[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_46:
  *(result + v6) = v19;
  return result;
}

unsigned __int8 *sub_2302D1774(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 24);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = v7 + 1;
    if (v7 + 1 > (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v10 = a1[v9];
    v11 = v10 - 2;
    if (v10 < 2)
    {
LABEL_24:
      v14 = a1[v7];
      if (v10 != 1)
      {
        if (v14 <= 1)
        {
          if (v14 == 1)
          {
          }

          else
          {
            (*(v6 + 8))(a1, v5);
          }
        }

LABEL_49:
        v17 = a2[v9];
        v18 = v17 - 2;
        if (v17 < 2)
        {
          goto LABEL_65;
        }

        if (v9 <= 3)
        {
          v19 = v9;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v20 = *a2;
            if (v9 >= 4)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v19 == 3)
            {
              v20 = *a2 | (a2[2] << 16);
              if (v9 < 4)
              {
                goto LABEL_64;
              }

LABEL_62:
              v17 = v20 + 2;
              goto LABEL_65;
            }

            v20 = *a2;
            if (v9 >= 4)
            {
              goto LABEL_62;
            }
          }

LABEL_64:
          v17 = (v20 | (v18 << (8 * v9))) + 2;
LABEL_65:
          v21 = a2[v7];
          if (v17 != 1)
          {
            if (v21 > 1)
            {
              memcpy(a1, a2, v7 + 1);
            }

            else if (v21 == 1)
            {
              *a1 = *a2;
              a1[v7] = 1;
            }

            else
            {
              (*(v6 + 32))(a1, a2, v5);
              a1[v7] = 0;
            }

            v24 = 0;
            v25 = (&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
            v26 = (&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v25 = *v26;
            *((v25 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
            goto LABEL_92;
          }

          if (v21 >= 2)
          {
            if (v7 <= 3)
            {
              v22 = v7;
            }

            else
            {
              v22 = 4;
            }

            if (v22 <= 1)
            {
              if (!v22)
              {
                goto LABEL_86;
              }

              v23 = *a2;
              if (v7 < 4)
              {
LABEL_89:
                if ((v23 | ((v21 - 2) << (8 * v7))) != 0xFFFFFFFF)
                {
                  goto LABEL_90;
                }

                goto LABEL_87;
              }
            }

            else if (v22 == 2)
            {
              v23 = *a2;
              if (v7 < 4)
              {
                goto LABEL_89;
              }
            }

            else if (v22 == 3)
            {
              v23 = *a2 | (a2[2] << 16);
              if (v7 < 4)
              {
                goto LABEL_89;
              }
            }

            else
            {
              v23 = *a2;
              if (v7 < 4)
              {
                goto LABEL_89;
              }
            }

            v21 = v23 + 2;
          }

LABEL_86:
          if (v21 != 1)
          {
LABEL_90:
            (*(v6 + 32))(a1, a2, v5);
            v27 = 0;
            goto LABEL_91;
          }

LABEL_87:
          *a1 = *a2;
          v27 = 1;
LABEL_91:
          a1[v7] = v27;
          v24 = 1;
LABEL_92:
          a1[v9] = v24;
          return a1;
        }

        if (!v19)
        {
          goto LABEL_65;
        }

        v20 = *a2;
        if (v9 < 4)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      if (v14 >= 2)
      {
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
            goto LABEL_44;
          }

          v16 = *a1;
          if (v7 < 4)
          {
LABEL_47:
            if ((v16 | ((v14 - 2) << (8 * v7))) != 0xFFFFFFFF)
            {
              goto LABEL_48;
            }

            goto LABEL_45;
          }
        }

        else if (v15 == 2)
        {
          v16 = *a1;
          if (v7 < 4)
          {
            goto LABEL_47;
          }
        }

        else if (v15 == 3)
        {
          v16 = *a1 | (a1[2] << 16);
          if (v7 < 4)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v16 = *a1;
          if (v7 < 4)
          {
            goto LABEL_47;
          }
        }

        v14 = v16 + 2;
      }

LABEL_44:
      if (v14 != 1)
      {
LABEL_48:
        (*(v6 + 8))(a1, v5);
        goto LABEL_49;
      }

LABEL_45:

      goto LABEL_49;
    }

    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (a1[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v10 = v13 + 2;
          goto LABEL_24;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_24;
    }

    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return a1;
}

uint64_t sub_2302D1BD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
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
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v9 < 2)
    {
LABEL_28:
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
    goto LABEL_28;
  }

LABEL_17:
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

void sub_2302D1D08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_2302D1EDC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  if (v2 + 1 > (((v2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (((v2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = a1[v3];
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

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
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

void sub_2302D1F98(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (a2 <= 1)
  {
    a1[v6] = a2;
    return;
  }

  v7 = a2 - 2;
  if (v6 < 4)
  {
    a1[v6] = (v7 >> (8 * v6)) + 2;
    if (!v6)
    {
      return;
    }

    v7 &= ~(-1 << (8 * v6));
  }

  else
  {
    a1[v6] = 2;
  }

  if (v6 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v6;
  }

  bzero(a1, v6);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *a1 = v7;
      a1[2] = BYTE2(v7);
    }

    else
    {
      *a1 = v7;
    }
  }

  else if (v8 == 1)
  {
    *a1 = v7;
  }

  else
  {
    *a1 = v7;
  }
}

uint64_t sub_2302D20A8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 48) & ~*(*(v2[2] - 8) + 80);
  v4 = v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2302CEC98(a1, a2, v2[5], v2 + v3, *v4, *(v4 + 1), v2[2], v2[3]);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2302D229C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;

  os_unfair_lock_lock_with_options();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;
  *(v12 + 40) = nullsub_1;
  *(v12 + 48) = 0;
  *(v12 + 56) = sub_2302D2420;
  *(v12 + 64) = v11;
  *(v12 + 72) = nullsub_1;
  *(v12 + 80) = 0;
  v13 = a1;

  v14 = sub_230064FA4(sub_2300654EC, v12);

  os_unfair_lock_unlock(*(*(v9 + 16) + 16));
  v14();

  return v5;
}

uint64_t sub_2302D2430()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_2302D2470()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = v3;
  v8 = v4;
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  return v2(&v6);
}

id sub_2302D24D4(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_2302D24E8(result, a2, a3, a4);
  }

  return result;
}

id sub_2302D24E8(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return result;
  }

  else if (!a4)
  {
    v5 = result;
  }

  return result;
}

uint64_t sub_2302D2544(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return v2(&v6);
}

uint64_t sub_2302D2590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t sub_2302D25D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v3;
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  return v2(&v5);
}

id sub_2302D2634(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2302D2648(result, a2, a3);
  }

  return result;
}

id sub_2302D2648(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2302D2668(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_2302D26AC()
{
  v1 = v0[2];
  v2 = v0[5];
  v4[0] = v0[4];
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_2302D26EC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t objectdestroy_40Tm()
{

  return swift_deallocObject();
}

void *REMGroceryLanguage.__allocating_init(uiLocale:baseLocales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for REMGroceryLanguage();
  swift_allocObject();
  v6 = sub_2302D3348(a1, a2, a3);

  return v6;
}

uint64_t sub_2302D2858()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19610);
  v1 = __swift_project_value_buffer(v0, qword_27DB19610);
  if (qword_27DB13B70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F590);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_2302D2920()
{
  type metadata accessor for REMGroceryLanguage();
  swift_allocObject();
  result = sub_2302D3348(0, 0, MEMORY[0x277D84F90]);
  qword_27DB19628 = result;
  return result;
}

uint64_t static REMGroceryLanguage.None.getter()
{
  if (qword_27DB13D20 != -1)
  {
    swift_once();
  }
}

uint64_t REMGroceryLanguage.uiLocale.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2302D29F8()
{
  v1 = sub_23030ED38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v5 = *(v0 + 16);

    sub_23030EC88();
    v6 = sub_23030EC38();
    (*(v2 + 8))(v4, v1);
    v7 = sub_23030F8B8();
    v8 = [v6 localizedStringForLanguage:v7 context:3];

    if (v8)
    {
      v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    }
  }

  else
  {
    v9 = _REMGetLocalizedString();
    v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  }

  return v5;
}

uint64_t sub_2302D2B78()
{
  v1 = sub_23030ED38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);

  sub_23030EBF8();
  v6 = sub_2300A5D1C(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t static REMGroceryLanguage.groceryLanguage(fromModelBaseLocaleID:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_23030ED38();
  v28 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = v25 - v7;
  v32 = a2;
  if (!a2)
  {
LABEL_23:
    if (qword_27DB13D20 != -1)
    {
      swift_once();
    }
  }

  v8 = _s19ReminderKitInternal18REMGroceryLanguageC12allLanguagesSayACGyFZ_0();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = sub_2303106D8();
  if (!v10)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_4:
  v11 = 0;
  v29 = v9;
  v30 = v9 & 0xC000000000000001;
  v25[1] = v9 + 32;
  v26 = v9 & 0xFFFFFFFFFFFFFF8;
  v35 = v28 + 16;
  v36 = (v28 + 8);
  v27 = v10;
  while (1)
  {
    if (v30)
    {
      v12 = MEMORY[0x231912650](v11, v9);
      v13 = __OFADD__(v11, 1);
      v14 = v11 + 1;
      if (v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 >= *(v26 + 16))
      {
        goto LABEL_20;
      }

      v13 = __OFADD__(v11, 1);
      v14 = v11 + 1;
      if (v13)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v33 = v14;
    v34 = v12;
    v15 = *(v12 + 32);

    sub_23030EBF8();
    if (*(v15 + 16))
    {
      sub_2302D3698(&qword_27DB14990, 255, MEMORY[0x277CC9788]);
      v16 = sub_23030F768();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_5:
    (*v36)(v37, v3);

    v11 = v33;
    v9 = v29;
    if (v33 == v27)
    {
      goto LABEL_22;
    }
  }

  v19 = ~v17;
  v20 = *(v28 + 72);
  v21 = *(v28 + 16);
  while (1)
  {
    v21(v6, *(v15 + 48) + v20 * v18, v3);
    sub_2302D3698(&qword_27DB14998, 255, MEMORY[0x277CC9788]);
    v22 = sub_23030F818();
    v23 = *v36;
    (*v36)(v6, v3);
    if (v22)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v23(v37, v3);
  return v34;
}

uint64_t REMGroceryLanguage.deinit()
{

  return v0;
}

uint64_t REMGroceryLanguage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static REMGroceryLanguage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(a1 + 16) == *(a2 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_230311048();
    }
  }

  return result;
}

uint64_t REMGroceryLanguage.hash(into:)()
{

  sub_23030F9C8();
}

uint64_t REMGroceryLanguage.hashValue.getter()
{
  sub_230311358();

  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302D31A8()
{
  sub_230311358();

  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302D321C()
{

  sub_23030F9C8();
}

uint64_t sub_2302D328C()
{
  sub_230311358();

  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302D32FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_230311048();
    }
  }

  return result;
}

void *sub_2302D3348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23030ED38();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v4[2] = a1;
  v4[3] = a2;
  v15 = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84FA0];
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (v12 + 8);
    v18 = a3 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_23030EBF8();
      sub_2300A994C(v14, v11);

      (*v17)(v14, v8);
      v18 += 16;
      --v16;
    }

    while (v16);
    v15 = v21;
  }

  v4[4] = v15;
  return v4;
}

uint64_t sub_2302D3698(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2302D3758@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(result + 16);
  if (v6 != a2 * a3)
  {

    sub_2302D6140();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  if (v6 >> 60)
  {
    goto LABEL_9;
  }

  v9 = swift_slowAlloc();
  v10 = v9;
  if (*(v5 + 16))
  {
    memcpy(v9, (v5 + 32), 8 * v6);
  }

  type metadata accessor for REMLinearAlgebraDataRef();
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v6;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = result;
  return result;
}

void sub_2302D385C(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v7 != a4 * a5)
  {
    swift_unknownObjectRelease();
    sub_2302D6140();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    return;
  }

  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_11;
  }

  v12 = swift_slowAlloc();
  v13 = v6 == a2;
  v14 = v12;
  if (!v13)
  {
    memcpy(v12, (a1 + 8 * a2), 8 * v7);
  }

  swift_unknownObjectRelease();
  type metadata accessor for REMLinearAlgebraDataRef();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v7;
  *a6 = a4;
  a6[1] = a5;
  a6[2] = v15;
}

uint64_t sub_2302D39A0()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19638);
  v1 = __swift_project_value_buffer(v0, qword_27DB19638);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 REMPCASolver.__allocating_init(componentOption:projectionMatrix:explainedVariance:explainedVarianceRatio:singularValues:sampleCount:featureCount:)(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *(a1 + 8);
  v16 = a2[1].n128_u64[0];
  v17 = *a3;
  v18 = a3[1];
  v19 = *a4;
  v20 = a4[1];
  v21 = *a5;
  v22 = a5[1];
  *(v14 + 16) = *a1;
  *(v14 + 24) = v15;
  result = *a2;
  *(v14 + 32) = *a2;
  *(v14 + 48) = v16;
  *(v14 + 56) = v17;
  *(v14 + 64) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;
  *(v14 + 88) = v21;
  *(v14 + 96) = v22;
  *(v14 + 104) = a6;
  *(v14 + 112) = 0;
  *(v14 + 120) = a7;
  *(v14 + 128) = 0;
  return result;
}

uint64_t static REMPCASolver.fitWithoutCenterizing(matrix:componentOption:)(uint64_t *a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = *(a2 + 8);
  v68 = *a1;
  v69 = v3;
  v70 = v5;
  result = REMMatrix.svd()(&__C, &v63, &v60);
  if (v2)
  {
    return result;
  }

  v9 = v64;
  v10 = v60;
  v11 = v61;
  v12 = v62;
  __C = v63;
  v66 = v64;
  REMVector.pow(_:)(&v60, COERCE__INT64(2.0));
  v68 = v60;
  v69 = v61;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v58 = v11;
  static REMVector./ infix(_:_:)(&v68, &__C, COERCE__INT64((v3 - 1)));

  v13 = __C;
  v14 = v66;
  __C = 0;
  result = *(v66 + 16);
  if (!result)
  {
    __break(1u);
    return result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v57 = v4;
  vDSP_sveD(result, 1, &__C, v13);
  v60 = v13;
  v61 = v14;
  static REMVector./ infix(_:_:)(&v60, &__C, __C);
  v15 = v66;
  v68 = v6;
  LOBYTE(v69) = v7;
  v60 = v13;
  v61 = v14;
  v16 = sub_2302D5374(&v68, &__C, &v60, v3);
  v17 = v10;
  v18 = v3;
  v19 = v7;
  v20 = v6;
  v21 = v16;
  v60 = v17;
  v61 = v58;
  v62 = v12;
  REMMatrix.topkRows(k:)(v16, &__C);
  v56 = v19;
  v59 = v20;
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
  }

  v54 = v66;
  v55 = __C;
  v53 = v67;
  if (v21)
  {
    v52 = v18;
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = *(*(v14 + 16) + 8 * v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_23007EB60(0, *(v23 + 2) + 1, 1, v23);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v28 = sub_23007EB60((v25 > 1), v27, 1, v23);
        v27 = v26 + 1;
        v23 = v28;
      }

      v22 = (v22 + 1);
      *(v23 + 2) = v27;
      *&v23[8 * v26 + 32] = v24;
    }

    while (v21 != v22);
    sub_230100234(v23, v27, &__C);
    v29 = 0;
    v30 = __C;
    v51 = v66;
    v31 = MEMORY[0x277D84F90];
    do
    {
      v32 = *(*(v15 + 16) + 8 * v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007EB60(0, *(v31 + 2) + 1, 1, v31);
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v36 = sub_23007EB60((v33 > 1), v35, 1, v31);
        v35 = v34 + 1;
        v31 = v36;
      }

      v29 = (v29 + 1);
      *(v31 + 2) = v35;
      *&v31[8 * v34 + 32] = v32;
    }

    while (v21 != v29);
    sub_230100234(v31, v35, &__C);
    v37 = 0;
    v38 = __C;
    v50 = v66;
    v39 = MEMORY[0x277D84F90];
    do
    {
      v40 = *(*(v9 + 16) + 8 * v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_23007EB60(0, *(v39 + 2) + 1, 1, v39);
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v44 = sub_23007EB60((v41 > 1), v43, 1, v39);
        v43 = v42 + 1;
        v39 = v44;
      }

      v37 = (v37 + 1);
      *(v39 + 2) = v43;
      *&v39[8 * v42 + 32] = v40;
    }

    while (v21 != v37);
    v45 = v38;
    v46 = v51;
    v18 = v52;
    v47 = v50;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
    sub_230100234(MEMORY[0x277D84F90], *(MEMORY[0x277D84F90] + 16), &__C);
    v30 = __C;
    v46 = v66;
    sub_230100234(v39, *(v39 + 2), &__C);
    v45 = __C;
    v47 = v66;
    v43 = *(v39 + 2);
  }

  sub_230100234(v39, v43, &__C);

  v48 = __C;
  v49 = v66;
  type metadata accessor for REMPCASolver();
  result = swift_allocObject();
  *(result + 16) = v59;
  *(result + 24) = v56;
  *(result + 32) = v55;
  *(result + 40) = v54;
  *(result + 48) = v53;
  *(result + 56) = v30;
  *(result + 64) = v46;
  *(result + 72) = v45;
  *(result + 80) = v47;
  *(result + 88) = v48;
  *(result + 96) = v49;
  *(result + 104) = v18;
  *(result + 112) = 0;
  *(result + 120) = v57;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_2302D3FA4(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {
    v5 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_16;
      }

      v8 = *(a4 + 16);
      v7 = *(a4 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
LABEL_11:
        if ((v6 + 7) >= 0xF)
        {
          if (v6 >= 0)
          {
            v10 = v6;
          }

          else
          {
            v10 = v6 + 7;
          }

          v11 = result;
          v12 = a3;
          v13 = sub_23009D900(v10 >> 3, 0);
          memcpy(v13 + 4, v11, v10 & 0xFFFFFFFFFFFFFFF8);
          a3 = v12;
          goto LABEL_17;
        }

LABEL_16:
        v13 = MEMORY[0x277D84F90];
LABEL_17:
        *a3 = v13;
      }

      __break(1u);
    }

    else if (!v5)
    {
      v6 = BYTE6(a5);
      goto LABEL_11;
    }

    LODWORD(v6) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
      return result;
    }

    v6 = v6;
    goto LABEL_11;
  }

  return result;
}

double REMPCASolver.__allocating_init(component:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 8);
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 1;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return result;
}

uint64_t REMPCASolver.init(componentOption:projectionMatrix:explainedVariance:explainedVarianceRatio:singularValues:sampleCount:featureCount:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a2 + 16);
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = a4[1];
  v17 = *a5;
  v18 = a5[1];
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  *(v7 + 32) = *a2;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  *(v7 + 64) = v14;

  *(v7 + 72) = v15;
  *(v7 + 80) = v16;

  *(v7 + 88) = v17;
  *(v7 + 96) = v18;

  *(v7 + 104) = a6;
  *(v7 + 112) = 0;
  *(v7 + 120) = a7;
  *(v7 + 128) = 0;
  return v7;
}

uint64_t REMPCASolver.init(component:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 1;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_2302D41DC()
{
  v1 = sub_23030E9B8();
  isa = v1[-1].isa;
  MEMORY[0x28223BE20](v1);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[6];
  if (!v5)
  {
    if (qword_27DB13D28 != -1)
    {
      swift_once();
    }

    v31 = sub_23030EF48();
    __swift_project_value_buffer(v31, qword_27DB19638);
    v32 = sub_23030EF38();
    v33 = sub_230310288();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_230044000, v32, v33, "REMPCASolver: No projection matrix to save", v34, 2u);
      MEMORY[0x231914180](v34, -1, -1);
    }

    return 0;
  }

  v7 = v0[4];
  v6 = v0[5];

  v38 = v4;
  result = sub_23030E908();
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v4 = MEMORY[0x277D84F90];
      v37 = isa;
      if (v10)
      {
        v40 = MEMORY[0x277D84F90];
        sub_23009EC54(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 1)
        {
          goto LABEL_26;
        }

        v36 = v1;
        v4 = v40;
        v11 = v40[2];
        v12 = v7 * v6;
        do
        {
          v13 = *v9;
          v40 = v4;
          v14 = v4[3];
          if (v11 >= v14 >> 1)
          {
            sub_23009EC54((v14 > 1), v11 + 1, 1);
            v4 = v40;
          }

          v4[2] = v11 + 1;
          v4[v11 + 4] = v13;
          ++v9;
          ++v11;
          --v12;
        }

        while (v12);
        v1 = v36;
        isa = v37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2303167B0;
      *(inited + 32) = v7;
      *(inited + 40) = v6;
      v40 = inited;
      sub_23009CE4C(v4);
      if (!__OFADD__(v10, 2))
      {
        if ((v10 - 0xFFFFFFFFFFFFFFELL) >> 61 == 7)
        {
          v16 = sub_2302D5BA8(v40 + 32, 8 * (v10 + 2));
          v18 = v17;

          v19 = v38;
          sub_23030EA28();
          (*(isa + 1))(v19, v1);
          sub_23005FE3C(v16, v18);

          return 1;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_27DB19638);
    v21 = v4;
    v22 = sub_23030EF38();
    v23 = sub_230310288();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v22;
      v26 = v25;
      v40 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter(v39);
      v29 = sub_23004E30C(v27, v28, &v40);

      *(v24 + 4) = v29;
      v30 = v36;
      _os_log_impl(&dword_230044000, v36, v23, "REMPCASolver: failed to save pca matrix with error %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v24, -1, -1);
      sub_23005FE3C(v7, v6);

      (*(v37 + 1))(v38, v1);
    }

    else
    {
      sub_23005FE3C(v7, v6);

      (*(isa + 1))(v10, v1);
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t *sub_2302D46DC@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v2 + 48);
  if (v5)
  {
    v13 = *(v2 + 32);
    v14 = v5;
    v12[0] = v4;
    v12[1] = v3;
    return static REMMatrix.mul(_:_:)(&v13, v12, a2);
  }

  else
  {
    if (qword_27DB13D28 != -1)
    {
      swift_once();
    }

    v8 = sub_23030EF48();
    __swift_project_value_buffer(v8, qword_27DB19638);
    v9 = sub_23030EF38();
    v10 = sub_230310288();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_230044000, v9, v10, "REMPCASolver project vector: missing PCA projection", v11, 2u);
      MEMORY[0x231914180](v11, -1, -1);
    }

    *a2 = v4;
    a2[1] = v3;
  }
}

uint64_t sub_2302D4810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(v2 + 48);
  if (v6)
  {
    v14 = *(v2 + 32);
    v15 = v6;
    v13[0] = v4;
    v13[1] = v3;
    v13[2] = v5;
    return static REMMatrix.mul(_:_:)(&v14, v13, a2);
  }

  else
  {
    if (qword_27DB13D28 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_27DB19638);
    v10 = sub_23030EF38();
    v11 = sub_230310288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_230044000, v10, v11, "REMPCASolver project matrix: missing PCA projection", v12, 2u);
      MEMORY[0x231914180](v12, -1, -1);
    }

    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
  }
}

uint64_t REMPCASolver.deinit()
{

  return v0;
}

uint64_t REMPCASolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2302D49D8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  __src[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(__src, 0, 14);
      v25 = __src;
      v24 = __src;
LABEL_26:
      sub_2302D3FA4(v25, v24, a3, a4, a5);
      return sub_23005FE3C(v6, v5);
    }

    v10 = a3;
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = sub_23030E598();
    if (v13)
    {
      v14 = sub_23030E5B8();
      if (__OFSUB__(v12, v14))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v13 += v12 - v14;
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (!v15)
    {
      v17 = sub_23030E5A8();
      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

LABEL_21:
      v23 = (v18 + v13);
      if (v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v13;
      a3 = v10;
      a4 = v6;
      a5 = v5;
      goto LABEL_26;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7)
  {
    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a3;
      v13 = sub_23030E598();
      if (!v13)
      {
        goto LABEL_18;
      }

      v21 = sub_23030E5B8();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_18:
        v22 = sub_23030E5A8();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_41;
  }

  __src[0] = a1;
  LOWORD(__src[1]) = a2;
  BYTE2(__src[1]) = BYTE2(a2);
  BYTE3(__src[1]) = BYTE3(a2);
  BYTE4(__src[1]) = BYTE4(a2);
  v8 = a5 >> 62;
  BYTE5(__src[1]) = BYTE5(a2);
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_33;
    }

LABEL_31:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      v9 = v9;
      goto LABEL_33;
    }

LABEL_44:
    __break(1u);
  }

  if (v8 != 2)
  {
    goto LABEL_38;
  }

  v28 = *(a4 + 16);
  v27 = *(a4 + 24);
  v15 = __OFSUB__(v27, v28);
  v9 = v27 - v28;
  if (v15)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_33:
  if ((v9 + 7) >= 0xF)
  {
    if (v9 >= 0)
    {
      v29 = v9;
    }

    else
    {
      v29 = v9 + 7;
    }

    v30 = a3;
    v31 = sub_23009D900(v29 >> 3, 0);
    memcpy(v31 + 4, __src, v29 & 0xFFFFFFFFFFFFFFF8);
    a3 = v30;
    goto LABEL_39;
  }

LABEL_38:
  v31 = MEMORY[0x277D84F90];
LABEL_39:
  *a3 = v31;

  return sub_23005FE3C(v6, v5);
}

uint64_t sub_2302D4C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  if (__OFSUB__(a2, 1))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v3 = *(result + 8);
  if (*(*(v3 + 16) + 8 * (a2 - 1)) < 1.0e-15)
  {
    return result;
  }

  v4 = a2;
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v5 < 1)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = *result;
  v8 = a2 * -0.693147181;
  if (a2)
  {
    v9 = *&v7 + 0x8000000000000000;
    v10 = 1;
    v11 = a2;
    while (1)
    {
      if (__OFSUB__(*&v7, v10))
      {
        goto LABEL_68;
      }

      if (!v9)
      {
        break;
      }

      v12 = *&v7 - v10 + 1;
      v13 = v12;
      _sSd19ReminderKitInternalE7lngammayS2dFZ_0(vcvtd_n_f64_s64(v12, 1uLL));
      v8 = v8 + v14 + v13 * -1.14472989 * 0.5;
      --v9;
      ++v10;
      if (!--v11)
      {
        goto LABEL_10;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_10:
  if (v4 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v15 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v18 = *(*(v3 + 16) + 8 * v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_23007EB60(0, *(v17 + 2) + 1, 1, v17);
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_23007EB60((v19 > 1), v21, 1, v17);
        v21 = v20 + 1;
        v17 = v22;
      }

      ++v16;
      *(v17 + 2) = v21;
      *&v17[8 * v20 + 32] = v18;
    }

    while (v4 != v16);
  }

  else
  {
    v21 = *(MEMORY[0x277D84F90] + 16);
    v17 = MEMORY[0x277D84F90];
  }

  sub_230100234(v17, v21, &__C);
  REMVector.natrualLog()(&v83);

  __C = 0.0;
  result = *(v84 + 16);
  if (!result)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  if ((v83 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  vDSP_sveD(result, 1, &__C, v83);

  v23 = *&v7 - v4;
  if (*&v7 < v4)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (*&v7 == v4)
  {
    v24 = *(v15 + 2);
  }

  else
  {
    if (*&v7 <= v4)
    {
      goto LABEL_82;
    }

    v15 = MEMORY[0x277D84F90];
    v29 = v4;
    do
    {
      v30 = *(*(v3 + 16) + 8 * v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_23007EB60(0, *(v15 + 2) + 1, 1, v15);
      }

      v32 = *(v15 + 2);
      v31 = *(v15 + 3);
      v24 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v33 = sub_23007EB60((v31 > 1), v24, 1, v15);
        v24 = v32 + 1;
        v15 = v33;
      }

      ++v29;
      *(v15 + 2) = v24;
      *&v15[8 * v32 + 32] = v30;
    }

    while (*&v7 != v29);
  }

  sub_230100234(v15, v24, &v83);
  __C = 0.0;
  result = *(v84 + 16);
  if (!result)
  {
    goto LABEL_84;
  }

  if ((v83 & 0x8000000000000000) != 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  vDSP_sveD(result, 1, &__C, v83);

  if ((a3 * v23) >> 64 != (a3 * v23) >> 63)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v25 = fmax(__C / v23, 1.0e-15);
  log(v25);
  if ((*&v7 * v4) >> 64 != (*&v7 * v4) >> 63)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (__OFSUB__(*&v7 * v4, v4 * v5))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  v26 = a3;
  v27 = *&v7 - 1;
  if (*&v7 >= 1)
  {
    v28 = sub_23030FD48();
    *(v28 + 16) = v7;
    goto LABEL_43;
  }

  if (v7 != 0.0)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_43:
    bzero((v28 + 32), 8 * *&v7);
    sub_230100234(v28, *&v7, &v83);
    v34 = 0;
    v70 = v84;
    do
    {
      v35 = v25;
      if (v34 < v4)
      {
        v35 = *(*(v3 + 16) + 8 * v34);
      }

      *(*(v70 + 16) + 8 * v34++) = v35;
    }

    while (*&v7 != v34);
    goto LABEL_48;
  }

  sub_230100234(MEMORY[0x277D84F90], 0, &v83);
  v70 = v84;
LABEL_48:
  v36 = log(v26);
  v75 = v36;
  if (v4)
  {
    v67 = v3;
    v68 = v4;
    v37 = 0;
    v38 = vdupq_lane_s64(*&v36, 0);
    v39 = 0.0;
    v40 = 24;
    __asm { FMOV            V0.2D, #1.0 }

    v71 = _Q0;
    v72 = v38;
    v69 = v7;
    while (1)
    {
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v46 = v37++;
      if (*&v7 < v37)
      {
        goto LABEL_67;
      }

      if (v37 != *&v7)
      {
        if (v37 >= *&v7)
        {
          goto LABEL_70;
        }

        v47 = v7;
        v48 = *(v67 + 16);
        v38.i64[0] = *(v48 + 8 * v46);
        v49 = *&v47 + ~v46;
        v50 = *(v70 + 16);
        v76 = 1.0 / *(v50 + 8 * v46);
        v77 = v38;
        if (v49 > 3)
        {
          v53 = v27 & 0xFFFFFFFFFFFFFFFCLL;
          v51 = v37 + (v49 & 0xFFFFFFFFFFFFFFFCLL);
          v73 = vdupq_lane_s64(COERCE__INT64(1.0 / *(v50 + 8 * v46)), 0);
          v74 = vdupq_lane_s64(v38.i64[0], 0);
          v54 = (v48 + v40);
          v55 = (v50 + v40);
          do
          {
            __x = vmulq_f64(vsubq_f64(v74, v54[-1]), vsubq_f64(vdivq_f64(v71, v55[-1]), v73));
            v81 = vmulq_f64(vsubq_f64(v74, *v54), vsubq_f64(vdivq_f64(v71, *v55), v73));
            v79 = log(__x.f64[1]);
            v56.f64[0] = log(__x.f64[0]);
            v56.f64[1] = v79;
            v80 = v56;
            __x.f64[0] = log(v81.f64[1]);
            v57.f64[0] = log(v81.f64[0]);
            v57.f64[1] = __x.f64[0];
            v58 = vaddq_f64(v72, v80);
            v59 = vaddq_f64(v72, v57);
            v39 = v39 + v58.f64[0] + v58.f64[1] + v59.f64[0] + v59.f64[1];
            v54 += 2;
            v55 += 2;
            v53 -= 4;
          }

          while (v53);
          _ZF = v49 == (v49 & 0xFFFFFFFFFFFFFFFCLL);
          v4 = v68;
          v52 = v76;
          v38 = v77;
          if (_ZF)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v51 = v37;
          v4 = v68;
          v52 = 1.0 / *(v50 + 8 * v46);
        }

        v60 = *&v69 - v51;
        v61 = (v50 + 8 * v51);
        v62 = (v48 + 8 * v51);
        do
        {
          v63 = *v62++;
          v64 = *v38.i64 - v63;
          v65 = *v61++;
          v66 = log(v64 * (1.0 / v65 - v52));
          v52 = v76;
          v38 = v77;
          v39 = v39 + v75 + v66;
          --v60;
        }

        while (v60);
      }

LABEL_50:
      --v27;
      v40 += 8;
      v7 = v69;
      if (v37 == v4)
      {
      }
    }
  }
}

double *sub_2302D5374(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  result = *a1;
  v6 = *(a1 + 8);
  if (!v6)
  {
    return result;
  }

  if (v6 == 1)
  {
    if ((*a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    v7 = 0;
    v8 = 0.0;
    while (*a2 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = v8 + *(*(a2[1] + 16) + 8 * v7++);
      if (v8 >= *&result)
      {
        return (v7 - 1);
      }
    }

    return *a2;
  }

  v9 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v9)
  {
    *&result = COERCE_DOUBLE(sub_230100234(MEMORY[0x277D84F90], 0, &__C));
    **(v20 + 16) = 0xFFF0000000000000;
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v11 = a3[1];
  v12 = sub_23030FD48();
  *(v12 + 16) = v9;
  bzero((v12 + 32), 8 * v9);
  sub_230100234(v12, v9, &__C);
  v14 = __C;
  v13 = v20;
  result = *(v20 + 16);
  *result = -INFINITY;
  if (v9 != 1)
  {
    for (i = 1; i != v9; ++i)
    {
      __C = v9;
      v20 = v11;
      sub_2302D4C90(&__C, i, a4);
      result = *(v13 + 16);
      result[i] = v16;
    }
  }

  v18 = 0;
  __C = 0;
  if (*&result == 0.0)
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  vDSP_maxviD(result, 1, &__C, &v18, v14);
  v17 = v18;

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
  }

  return v17;
}

uint64_t sub_2302D5548(uint64_t *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = *(a2 + 8);
  v66 = *a1;
  v67 = v5;
  v68 = v6;
  result = REMMatrix.columnMean()(v57);
  if (v2)
  {
    return result;
  }

  v10 = v57[1];
  REMMatrix.init(rowCount:columnCount:)(v4, v5, &v66);
  if (v4 < 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v4)
  {

    v12 = v67;
    v13 = v68;
    goto LABEL_17;
  }

  if (v5 < 0)
  {
    goto LABEL_51;
  }

  v11 = 0;
  v12 = v67;
  v13 = v68;
  do
  {
    if (v5)
    {
      v14 = v11 * v12;
      if ((v11 * v12) >> 64 == (v11 * v12) >> 63)
      {
        v15 = v11 * v5;
        if ((v11 * v5) >> 64 == (v11 * v5) >> 63)
        {
          v16 = 0;
          while (!__OFADD__(v15, v16))
          {
            if (__OFADD__(v14, v16))
            {
              goto LABEL_24;
            }

            *(*(v13 + 16) + 8 * (v14 + v16)) = *(*(v6 + 16) + 8 * (v15 + v16)) - *(*(v10 + 16) + 8 * v16);
            if (v5 == ++v16)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v55 = v13;
          if (v3 < 0)
          {
            goto LABEL_54;
          }

          v51 = v64;
          v52 = __C;
          v50 = v65;
          if (v3)
          {
            v20 = 0;
            v21 = MEMORY[0x277D84F90];
            do
            {
              v22 = *(*(v12 + 16) + 8 * v20);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_23007EB60(0, *(v21 + 2) + 1, 1, v21);
              }

              v24 = *(v21 + 2);
              v23 = *(v21 + 3);
              v25 = v24 + 1;
              if (v24 >= v23 >> 1)
              {
                v26 = sub_23007EB60((v23 > 1), v25, 1, v21);
                v25 = v24 + 1;
                v21 = v26;
              }

              ++v20;
              *(v21 + 2) = v25;
              *&v21[8 * v24 + 32] = v22;
            }

            while (v3 != v20);
            sub_230100234(v21, v25, &__C);
            v27 = 0;
            v48 = v64;
            v49 = __C;
            v28 = MEMORY[0x277D84F90];
            v29 = v55;
            do
            {
              v30 = *(*(v29 + 16) + 8 * v27);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v28 = sub_23007EB60(0, *(v28 + 2) + 1, 1, v28);
              }

              v32 = *(v28 + 2);
              v31 = *(v28 + 3);
              v33 = v32 + 1;
              v29 = v55;
              if (v32 >= v31 >> 1)
              {
                v34 = sub_23007EB60((v31 > 1), v33, 1, v28);
                v33 = v32 + 1;
                v28 = v34;
                v29 = v55;
              }

              ++v27;
              *(v28 + 2) = v33;
              *&v28[8 * v32 + 32] = v30;
            }

            while (v3 != v27);
            sub_230100234(v28, v33, &__C);
            v35 = 0;
            v46 = v64;
            v47 = __C;
            v36 = MEMORY[0x277D84F90];
            do
            {
              v37 = *(*(v56 + 16) + 8 * v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = sub_23007EB60(0, *(v36 + 2) + 1, 1, v36);
              }

              v39 = *(v36 + 2);
              v38 = *(v36 + 3);
              v40 = v39 + 1;
              if (v39 >= v38 >> 1)
              {
                v41 = sub_23007EB60((v38 > 1), v40, 1, v36);
                v40 = v39 + 1;
                v36 = v41;
              }

              ++v35;
              *(v36 + 2) = v40;
              *&v36[8 * v39 + 32] = v37;
            }

            while (v3 != v35);
            v43 = v46;
            v42 = v47;
          }

          else
          {
            v36 = MEMORY[0x277D84F90];
            sub_230100234(MEMORY[0x277D84F90], *(MEMORY[0x277D84F90] + 16), &__C);
            v48 = v64;
            v49 = __C;
            sub_230100234(v36, *(v36 + 2), &__C);
            v42 = __C;
            v43 = v64;
            v40 = *(v36 + 2);
          }

          sub_230100234(v36, v40, &__C);

          v44 = __C;
          v45 = v64;
          type metadata accessor for REMPCASolver();
          result = swift_allocObject();
          *(result + 16) = v7;
          *(result + 24) = v8;
          *(result + 32) = v52;
          *(result + 40) = v51;
          *(result + 48) = v50;
          *(result + 56) = v49;
          *(result + 64) = v48;
          *(result + 72) = v42;
          *(result + 80) = v43;
          *(result + 88) = v44;
          *(result + 96) = v45;
          *(result + 104) = v5;
          *(result + 112) = 0;
          *(result + 120) = v4;
          *(result + 128) = 0;
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_6:
    ++v11;
  }

  while (v11 != v4);

LABEL_17:
  v67 = v12;
  v68 = v13;
  REMMatrix.svd()(&__C, &v61, &v58);

  v17 = v58;
  v18 = v59;
  v53 = v60;
  __C = v61;
  v64 = v62;
  v56 = v62;
  REMVector.pow(_:)(&v58, COERCE__INT64(2.0));
  v66 = v58;
  v67 = v59;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_52;
  }

  static REMVector./ infix(_:_:)(&v66, &__C, COERCE__INT64((v5 - 1)));

  v19 = __C;
  v12 = v64;
  __C = 0;
  result = *(v64 + 16);
  if (result)
  {
    v54 = v18;
    if ((v19 & 0x8000000000000000) == 0)
    {
      vDSP_sveD(result, 1, &__C, v19);
      v58 = v19;
      v59 = v12;
      static REMVector./ infix(_:_:)(&v58, &__C, __C);
      v13 = v64;
      v66 = v7;
      LOBYTE(v67) = v8;
      v58 = v19;
      v59 = v12;
      v3 = sub_2302D5374(&v66, &__C, &v58, v5);
      v58 = v17;
      v59 = v54;
      v60 = v53;
      REMMatrix.topkRows(k:)(v3, &__C);
      goto LABEL_25;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2302D5AF0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2302D5BA8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2302D5AF0(a1, &a1[a2]);
  }

  sub_23030E5C8();
  swift_allocObject();
  sub_23030E588();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23030E9E8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2302D5C58()
{
  v1 = sub_23030E9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E908();
  v5 = sub_23030E9C8();
  if (v0)
  {
    goto LABEL_2;
  }

  v8 = v5;
  v9 = v6;
  v24 = 0;
  sub_23005FAD4(v5, v6);
  result = sub_2302D49D8(v8, v9, &v24, v8, v9);
  if (!v24)
  {
    v16 = objc_opt_self();
    v17 = sub_23030F8B8();
    [v16 internalErrorWithDebugDescription_];

    swift_willThrow();
    sub_23005FE3C(v8, v9);
LABEL_2:
    (*(v2 + 8))(v4, v1);
    return v1;
  }

  v10 = *(v24 + 16);
  if (v10 < 3)
  {
    v18 = objc_opt_self();
    v19 = sub_23030F8B8();
    [v18 internalErrorWithDebugDescription_];

    swift_willThrow();
    sub_23005FE3C(v8, v9);
    (*(v2 + 8))(v4, v1);

    return v1;
  }

  v11 = round(*(v24 + 32));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = round(*(v24 + 40));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v21 = v24 + 32;
  if (v12 < 9.22337204e18)
  {
    v13 = (2 * v10) | 1;
    v14 = v11;
    v15 = v12;

    sub_2302D385C(v21, 2, v13, v14, v15, &v22);
    (*(v2 + 8))(v4, v1);
    sub_23005FE3C(v8, v9);
    v21 = v22;
    v20 = v23;
    type metadata accessor for REMPCASolver();
    v1 = swift_allocObject();
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 1;
    *(v1 + 120) = 0;
    *(v1 + 128) = 1;
    *(v1 + 16) = 0;
    *(v1 + 24) = 2;
    *(v1 + 32) = v21;
    *(v1 + 48) = v20;

    return v1;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2302D6140()
{
  result = qword_27DB19650;
  if (!qword_27DB19650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19650);
  }

  return result;
}

uint64_t REMAccountsListDataView.Result.diff.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 152);
  a1[1] = v2;
}

void *REMAccountsListDataView.Result.latestFetchResultToken.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

ReminderKitInternal::REMAccountsListDataView::ReminderCounts::ComputedCountContainer __swiftcall REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)(Swift::Int incomplete, Swift::Int overdue)
{
  *v2 = incomplete;
  v2[1] = overdue;
  result.overdue = overdue;
  result.incomplete = incomplete;
  return result;
}

uint64_t sub_2302D625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C706D6F636E69 && a2 == 0xEA00000000006574;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575647265766FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2302D6340(uint64_t a1)
{
  v2 = sub_230059610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D637C(uint64_t a1)
{
  v2 = sub_230059610();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 REMAccountsListDataView.ReminderCounts.scheduled.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 REMAccountsListDataView.ReminderCounts.flagged.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 REMAccountsListDataView.ReminderCounts.all.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 REMAccountsListDataView.ReminderCounts.today.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 REMAccountsListDataView.ReminderCounts.init(scheduled:flagged:all:today:siriFoundInAppsRemindersCount:assignedToMeRemindersCount:recentlyDeletedRemindersCountByAccountObjectID:byObjectID:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  *a9 = *a1;
  *(a9 + 16) = v9;
  result = *a3;
  v11 = *a4;
  *(a9 + 32) = *a3;
  *(a9 + 48) = v11;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

ReminderKitInternal::REMAccountsListDataView::ReminderCounts::ComputedCountContainer __swiftcall REMAccountsListDataView.ReminderCounts.counters(for:)(REMObjectID a1)
{
  isa = a1.super.isa;
  v4 = v1;
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 88);
  v10 = type metadata accessor for REMObjectID_Codable();
  v11 = objc_allocWithZone(v10);
  v12 = isa;
  v13 = [(objc_class *)v12 uuid];
  sub_23030EBA8();

  v14 = sub_23030EB88();
  (*(v6 + 8))(v8, v5);
  v15 = [(objc_class *)v12 entityName];
  if (!v15)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v15 = sub_23030F8B8();
  }

  v24.receiver = v11;
  v24.super_class = v10;
  v16 = objc_msgSendSuper2(&v24, sel_initWithUUID_entityName_, v14, v15);

  if (*(v9 + 16) && (v17 = sub_230068314(v16), (v18 & 1) != 0))
  {
    v23 = *(*(v9 + 56) + 16 * v17);

    v21 = v23;
  }

  else
  {

    if (qword_280C994A0 != -1)
    {
      v19 = swift_once();
    }

    v21 = xmmword_280C994A8;
  }

  *v4 = v21;
  result.overdue = v20;
  result.incomplete = v19;
  return result;
}

uint64_t sub_2302D6634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302DC70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302D665C(uint64_t a1)
{
  v2 = sub_230059158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D6698(uint64_t a1)
{
  v2 = sub_230059158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMAccountsListDataView.CachableProperty.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2302D673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E696D6572 && a2 == 0xEE0073746E756F43;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345920 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2302D6828(uint64_t a1)
{
  v2 = sub_2302DA490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D6864(uint64_t a1)
{
  v2 = sub_2302DA490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302D68A0(uint64_t a1)
{
  v2 = sub_2302DA538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D68DC(uint64_t a1)
{
  v2 = sub_2302DA538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302D6918(uint64_t a1)
{
  v2 = sub_2302DA4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D6954(uint64_t a1)
{
  v2 = sub_2302DA4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMAccountsListDataView.CachableProperty.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196B8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196C0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DA490();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2302DA4E4();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2302DA538();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t REMAccountsListDataView.CachableProperty.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMAccountsListDataView.CachableProperty.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196D0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196D8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196E0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DA490();
  v12 = v31;
  sub_230311428();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_230310D08();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2300DB8E4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_230310918();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v22 = &type metadata for REMAccountsListDataView.CachableProperty;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2302DA4E4();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2302DA538();
        sub_230310C28();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

id REMAccountsListDataView.Model.GroupChild.objectID.getter()
{
  v1 = [*v0 & 0x7FFFFFFFFFFFFFFFLL objectID];

  return v1;
}

id REMAccountsListDataView.Model.PinnedList.objectID.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    return [v1 objectID];
  }

  REMSmartList.NonCustom.init(smartListType:)(v1, &v3);
  if (v3 == 8)
  {
    return 0;
  }

  else
  {
    return REMSmartList.NonCustom.remObjectID.getter();
  }
}

void REMAccountsListDataView.Model.Group.unpinnedLists.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v1 + 32 + 8 * v5);
        v7 = (v6 & 0x8000000000000000) != 0 ? (v6 & 0x7FFFFFFFFFFFFFFFLL) : v6;
        v8 = v7;
        if (([v7 isPinned] & 1) == 0)
        {
          break;
        }

        ++v5;

        if (v2 == v5)
        {
          return;
        }
      }

      v11 = v2 - 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23009EFD0(0, *(v4 + 16) + 1, 1);
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_23009EFD0((v9 > 1), v10 + 1, 1);
      }

      v3 = v5 + 1;
      *(v4 + 16) = v10 + 1;
      *(v4 + 8 * v10 + 32) = v6;
    }

    while (v2 - 1 != v5);
  }
}

uint64_t sub_2302D73D0()
{
  if (*v0)
  {
    return 0x737473696CLL;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_2302D7400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737473696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2302D74D8(uint64_t a1)
{
  v2 = sub_2302DA58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D7514(uint64_t a1)
{
  v2 = sub_2302DA58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMAccountsListDataView.Model.Group.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DA58C();
  v9 = v8;
  sub_230311448();
  v13 = v9;
  v12 = 0;
  type metadata accessor for REMList_Codable();
  sub_23005575C(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196F8);
    sub_2302DA5E0();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

void REMAccountsListDataView.Model.Group.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19710);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DA58C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMList_Codable();
    v13 = 0;
    sub_23005575C(&qword_280C9C340, type metadata accessor for REMList_Codable);
    sub_230310CE8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196F8);
    v13 = 1;
    sub_2302DA6B8();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
    v11 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t REMAccountsListDataView.Model.Account.lists.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  result = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
LABEL_2:
  v5 = (v2 + 32 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    ++v1;
    v7 = *v5;
    v5 += 2;
    v6 = v7;
    if (!(v7 >> 62))
    {
      v8 = v6;
      MEMORY[0x231911A30]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      sub_23030FD68();
      result = v9;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_2302D7AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  sub_2301363FC();
  if ((sub_230310448() & 1) == 0)
  {
    return 0;
  }

  return a3(v3, v4);
}

uint64_t sub_2302D7B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2302D7C4C(uint64_t a1)
{
  v2 = sub_230055708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D7C88(uint64_t a1)
{
  v2 = sub_230055708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302D7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  sub_2301363FC();
  if ((sub_230310448() & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

void *REMAccountsListDataView.Model.defaultList.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

__n128 REMAccountsListDataView.Model.reminderCounts.setter(uint64_t a1)
{
  v3 = v1[4];
  v10[2] = v1[3];
  v10[3] = v3;
  v4 = v1[6];
  v10[4] = v1[5];
  v10[5] = v4;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  sub_23005AA80(v10);
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

uint64_t REMAccountsListDataView.Model.smartListHashtagLabels.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t REMAccountsListDataView.Model.orderedPinnedLists.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_2302D7EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302DC9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302D7EEC(uint64_t a1)
{
  v2 = sub_23005534C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D7F28(uint64_t a1)
{
  v2 = sub_23005534C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302D7F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x8000000230346EE0 == a2;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230345A00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2302D8050(uint64_t a1)
{
  v2 = sub_23005B5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D808C(uint64_t a1)
{
  v2 = sub_23005B5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2302D80C8()
{
  *&result = 33620481;
  dword_27DB19658 = 33620481;
  word_27DB1965C = 257;
  return result;
}

ReminderKitInternal::REMAccountsListDataView::FetchOptions __swiftcall REMAccountsListDataView.FetchOptions.init(fetchAccounts:fetchReminderCounts:fetchHashtagLabels:fetchSmartListHashtagLabels:fetchUserDefinedVisibilityOfPredefinedSmartLists:fetchOrderedPinnedLists:)(Swift::Bool fetchAccounts, ReminderKitInternal::REMAccountsListDataView::CachablePropertyFetchStyle fetchReminderCounts, Swift::Bool fetchHashtagLabels, ReminderKitInternal::REMAccountsListDataView::CachablePropertyFetchStyle fetchSmartListHashtagLabels, Swift::Bool fetchUserDefinedVisibilityOfPredefinedSmartLists, Swift::Bool fetchOrderedPinnedLists)
{
  v7 = *fetchReminderCounts;
  v8 = *fetchSmartListHashtagLabels;
  *v6 = fetchAccounts;
  v6[1] = v7;
  v6[2] = fetchHashtagLabels;
  v6[3] = v8;
  v6[4] = fetchUserDefinedVisibilityOfPredefinedSmartLists;
  v6[5] = fetchOrderedPinnedLists;
  result.fetchAccounts = fetchAccounts;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.latestEverything.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D30 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB19658);
  v2 = BYTE2(dword_27DB19658);
  v3 = HIBYTE(dword_27DB19658);
  v4 = word_27DB1965C;
  v5 = HIBYTE(word_27DB1965C);
  *a1 = dword_27DB19658;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

double sub_2302D819C()
{
  *&result = 0x100000001;
  dword_280C97E66 = 1;
  word_280C97E6A = 1;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.accountsOnly.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280C97E58 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_280C97E66);
  v2 = BYTE2(dword_280C97E66);
  v3 = HIBYTE(dword_280C97E66);
  v4 = word_280C97E6A;
  v5 = HIBYTE(word_280C97E6A);
  *a1 = dword_280C97E66;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

double sub_2302D8248()
{
  *&result = 0x20000000200;
  dword_27DB19664 = 512;
  word_27DB19668 = 1;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.latestReminderCountsOnly.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D40 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB19664);
  v2 = BYTE2(dword_27DB19664);
  v3 = HIBYTE(dword_27DB19664);
  v4 = word_27DB19668;
  v5 = HIBYTE(word_27DB19668);
  *a1 = dword_27DB19664;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

double sub_2302D82F4()
{
  *&result = 33619968;
  dword_27DB1966A = 33619968;
  word_27DB1966E = 1;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.latestHashtagLabelsOnly.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D48 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB1966A);
  v2 = BYTE2(dword_27DB1966A);
  v3 = HIBYTE(dword_27DB1966A);
  v4 = word_27DB1966E;
  v5 = HIBYTE(word_27DB1966E);
  *a1 = dword_27DB1966A;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.userDefinedVisibilityOfPredefinedSmartListsOnly.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D50 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB19670);
  v2 = BYTE2(dword_27DB19670);
  v3 = HIBYTE(dword_27DB19670);
  v4 = word_27DB19674;
  v5 = HIBYTE(word_27DB19674);
  *a1 = dword_27DB19670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.orderedPinnedListsOnly.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D58 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB19676);
  v2 = BYTE2(dword_27DB19676);
  v3 = HIBYTE(dword_27DB19676);
  v4 = word_27DB1967A;
  v5 = HIBYTE(word_27DB1967A);
  *a1 = dword_27DB19676;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

uint64_t static REMAccountsListDataView.FetchOptions.none.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DB13D60 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v1 = BYTE1(dword_27DB1967C);
  v2 = BYTE2(dword_27DB1967C);
  v3 = HIBYTE(dword_27DB1967C);
  v4 = word_27DB19680;
  v5 = HIBYTE(word_27DB19680);
  *a1 = dword_27DB1967C;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  return result;
}

uint64_t sub_2302D8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302DCC1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302D85C0(uint64_t a1)
{
  v2 = sub_23004B690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D85FC(uint64_t a1)
{
  v2 = sub_23004B690();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMAccountsListDataView.Invocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

uint64_t static REMAccountsListDataView.ReminderCounts.zero.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_280C99428 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_280C99460;
  v9[2] = xmmword_280C99450;
  v9[3] = unk_280C99460;
  v2 = xmmword_280C99470;
  v3 = *&qword_280C99480;
  v9[4] = xmmword_280C99470;
  v9[5] = *&qword_280C99480;
  v4 = xmmword_280C99430;
  v5 = unk_280C99440;
  v9[0] = xmmword_280C99430;
  v9[1] = unk_280C99440;
  a1[2] = xmmword_280C99450;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_230049A64(v9, &v8);
}

double static REMAccountsListDataView.ReminderCounts.ComputedCountContainer.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_280C994A0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_280C994A8;
  *a1 = xmmword_280C994A8;
  return result;
}

uint64_t sub_2302D87D4(uint64_t a1)
{
  v2 = sub_230057DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D8810(uint64_t a1)
{
  v2 = sub_230057DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static REMAccountsListDataView.Model.GroupChild.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_2301363FC();
  return sub_230310448() & 1;
}

uint64_t sub_2302D88B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_2301363FC();
  return sub_230310448() & 1;
}

uint64_t sub_2302D8950(uint64_t a1)
{
  v2 = sub_2302DAC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D898C(uint64_t a1)
{
  v2 = sub_2302DAC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMAccountsListDataView::Model::GroupChild::ContentType_optional __swiftcall REMAccountsListDataView.Model.GroupChild.ContentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t REMAccountsListDataView.Model.GroupChild.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAC4C();
  sub_230311428();
  if (!v2)
  {
    v13 = 0;
    sub_2302DACA0();
    sub_230310CE8();
    v10 = (v6 + 8);
    if (v12)
    {
      type metadata accessor for REMSmartList_Codable();
      v13 = 1;
      sub_23005575C(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
      sub_230310CE8();
      (*v10)(v8, v5);
      *a2 = v12 | 0x8000000000000000;
    }

    else
    {
      type metadata accessor for REMList_Codable();
      v13 = 1;
      sub_23005575C(&qword_280C9C340, type metadata accessor for REMList_Codable);
      sub_230310CE8();
      (*v10)(v8, v5);
      *a2 = v12;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMAccountsListDataView.Model.GroupChild.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAC4C();
  sub_230311448();
  if (v8 < 0)
  {
    LOBYTE(v13) = 1;
    v14 = 0;
    sub_2302DACF4();
    sub_230310DF8();
    if (!v2)
    {
      v13 = v8 & 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1;
      type metadata accessor for REMSmartList_Codable();
      v9 = qword_280C9AC10;
      v10 = type metadata accessor for REMSmartList_Codable;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    sub_2302DACF4();
    sub_230310DF8();
    if (!v2)
    {
      v13 = v8;
      v14 = 1;
      type metadata accessor for REMList_Codable();
      v9 = &qword_280C9C348;
      v10 = type metadata accessor for REMList_Codable;
LABEL_6:
      sub_23005575C(v9, v10);
      sub_230310DF8();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMAccountsListDataView.Model.PinnedList.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_2302D9058(uint64_t a1)
{
  v2 = sub_23005A890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D9094(uint64_t a1)
{
  v2 = sub_23005A890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSmartListUserDefinedVisibility.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSmartListUserDefinedVisibility.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302D91E0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302D9238(uint64_t a1)
{
  v2 = sub_2302DAD48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D9274(uint64_t a1)
{
  v2 = sub_2302DAD48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSmartListUserDefinedVisibility.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD48();
  sub_230311428();
  if (!v1)
  {
    v7 = sub_230310CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t REMSmartListUserDefinedVisibility.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD48();
  sub_230311448();
  sub_230310DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2302D9534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD48();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_230310CC8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_2302D9694(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD48();
  sub_230311448();
  sub_230310DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMSmartListType.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSmartListType.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302D98C4()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2302D9918()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2302D9974@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302D99CC(uint64_t a1)
{
  v2 = sub_2302DAD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D9A08(uint64_t a1)
{
  v2 = sub_2302DAD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSmartListType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD9C();
  sub_230311448();
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230310DA8();
  (*(v3 + 8))(v5, v2);
}

void *sub_2302D9B9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2302DA02C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t REMAccountsListDataView.Invocation.Result.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_230054718(v15, &v14);
}

uint64_t REMAccountsListDataView.Invocation.Result.diff.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 152);
  a1[1] = v2;
}

uint64_t sub_2302D9CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302DCE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302D9CD8(uint64_t a1)
{
  v2 = sub_230054258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302D9D14(uint64_t a1)
{
  v2 = sub_230054258();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMAccountsListDataView.Invocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMAccountsListDataView.Invocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMAccountsListDataView.Invocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMAccountsListDataView.Invocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s19ReminderKitInternal23REMAccountsListDataViewC5ModelV12AccountChildO2eeoiySbAG_AGtFZ_0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (!v3)
  {
    if (v2 >> 62)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v2 >> 62 != 1)
    {
      return;
    }

LABEL_6:
    sub_2301363FC();
    sub_230310448();
    return;
  }

  if (v2 >> 62 == 2)
  {
    v4 = a2[1];
    v5 = a1[1];
    sub_2301363FC();
    if (sub_230310448())
    {

      sub_2300A7D6C(v5, v4);
    }
  }
}

void _s19ReminderKitInternal23REMAccountsListDataViewC0A6CountsV2eeoiySbAE_AEtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])), vuzp1q_s32(vceqq_s64(a1[2], a2[2]), vceqq_s64(a1[3], a2[3]))))) & 1) != 0 && a1[4].i64[0] == a2[4].i64[0] && a1[4].i64[1] == a2[4].i64[1])
  {
    v2 = a2[5].i64[1];
    v3 = a1[5].i64[1];
    if (sub_23015C2F4(a1[5].i64[0], a2[5].i64[0]))
    {

      sub_23015C754(v3, v2);
    }
  }
}

void *sub_2302DA02C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19908);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DAD9C();
  sub_230311428();
  if (!v1)
  {
    v9 = sub_230310C98();
    v11 = v10;

    v12 = _sSo16REMSmartListTypea19ReminderKitInternalE11stringValueABSgSS_tcfC_0(v9, v11);
    if (v12)
    {
      v7 = v12;
      (*(v4 + 8))(v6, v3);

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v7;
    }

    v13 = objc_opt_self();
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000054, 0x8000000230346FE0);
    MEMORY[0x231911790](v9, v11);

    MEMORY[0x231911790](125, 0xE100000000000000);
    v7 = v16;
    v14 = sub_23030F8B8();

    [v13 internalErrorWithDebugDescription_];

    swift_willThrow();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_2302DA274(uint64_t a1, uint64_t a2)
{
  if (qword_280C97E58 != -1)
  {
    swift_once();
  }

  v5 = dword_280C97E66;
  v6 = BYTE1(dword_280C97E66);
  v7 = BYTE2(dword_280C97E66);
  v8 = HIBYTE(dword_280C97E66);
  v9 = word_280C97E6A;
  v10 = HIBYTE(word_280C97E6A);
  v11 = [objc_allocWithZone(type metadata accessor for REMAccountsListDataView.Invocation()) initWithFetchResultTokenToDiffAgainst_];
  v12 = v11;
  v13 = 0x10000000000;
  if (!v10)
  {
    v13 = 0;
  }

  v14 = 0x100000000;
  if (!v9)
  {
    v14 = 0;
  }

  v15 = v14 | v13 | (v8 << 24);
  v16 = 0x10000;
  if (!v7)
  {
    v16 = 0;
  }

  sub_23004A528(v11, v15 | v16 | (v6 << 8) | v5, v38);

  if (!v2)
  {
    v31 = v38[8];
    v32 = v39;
    v33 = v40;
    v27 = v38[4];
    v28 = v38[5];
    v29 = v38[6];
    v30 = v38[7];
    v23 = v38[0];
    v24 = v38[1];
    v25 = v38[2];
    v26 = v38[3];
    v18 = *(&v39 + 1);
    v17 = v39;
    v19 = v40;
    sub_230054718(&v23, v34);
    v20 = *(&v19 + 1);

    sub_23005E734(&v23);
    v34[6] = v29;
    v34[7] = v30;
    v34[8] = v31;
    v34[2] = v25;
    v34[3] = v26;
    v34[4] = v27;
    v34[5] = v28;
    v34[0] = v23;
    v34[1] = v24;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    sub_230054718(v34, &v22);
    sub_23019E7DC(v34);
    a1 = *&v34[0];

    sub_2300645CC(v34);
  }

  return a1;
}

unint64_t sub_2302DA490()
{
  result = qword_280C993C8;
  if (!qword_280C993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993C8);
  }

  return result;
}

unint64_t sub_2302DA4E4()
{
  result = qword_280C993F8;
  if (!qword_280C993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993F8);
  }

  return result;
}

unint64_t sub_2302DA538()
{
  result = qword_280C993E0;
  if (!qword_280C993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993E0);
  }

  return result;
}

unint64_t sub_2302DA58C()
{
  result = qword_27DB196F0;
  if (!qword_27DB196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB196F0);
  }

  return result;
}

unint64_t sub_2302DA5E0()
{
  result = qword_27DB19700;
  if (!qword_27DB19700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196F8);
    sub_2302DA664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19700);
  }

  return result;
}

unint64_t sub_2302DA664()
{
  result = qword_27DB19708;
  if (!qword_27DB19708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19708);
  }

  return result;
}

unint64_t sub_2302DA6B8()
{
  result = qword_27DB19718;
  if (!qword_27DB19718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196F8);
    sub_2302DA73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19718);
  }

  return result;
}

unint64_t sub_2302DA73C()
{
  result = qword_27DB19720;
  if (!qword_27DB19720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19720);
  }

  return result;
}

unint64_t sub_2302DA790()
{
  result = qword_280C99D38;
  if (!qword_280C99D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19730);
    sub_2302DA814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D38);
  }

  return result;
}

unint64_t sub_2302DA814()
{
  result = qword_280C9A980;
  if (!qword_280C9A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A980);
  }

  return result;
}

unint64_t sub_2302DA868()
{
  result = qword_280C9B428;
  if (!qword_280C9B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19730);
    sub_230056378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B428);
  }

  return result;
}

unint64_t sub_2302DA8EC()
{
  result = qword_280C99D30;
  if (!qword_280C99D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19748);
    sub_2302DA970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D30);
  }

  return result;
}

unint64_t sub_2302DA970()
{
  result = qword_280C9A978;
  if (!qword_280C9A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A978);
  }

  return result;
}

unint64_t sub_2302DA9C4()
{
  result = qword_280C96F60;
  if (!qword_280C96F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19758);
    sub_2302DAA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F60);
  }

  return result;
}

unint64_t sub_2302DAA48()
{
  result = qword_280C97E30;
  if (!qword_280C97E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E30);
  }

  return result;
}

unint64_t sub_2302DAA9C()
{
  result = qword_280C9B420;
  if (!qword_280C9B420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19748);
    sub_2300553A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B420);
  }

  return result;
}

unint64_t sub_2302DAB20()
{
  result = qword_280C98868;
  if (!qword_280C98868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19758);
    sub_23005A374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98868);
  }

  return result;
}

unint64_t sub_2302DABA4()
{
  result = qword_27DB19790;
  if (!qword_27DB19790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19790);
  }

  return result;
}

unint64_t sub_2302DABF8()
{
  result = qword_27DB197A0;
  if (!qword_27DB197A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB197A0);
  }

  return result;
}

unint64_t sub_2302DAC4C()
{
  result = qword_27DB197B0;
  if (!qword_27DB197B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB197B0);
  }

  return result;
}

unint64_t sub_2302DACA0()
{
  result = qword_27DB197B8;
  if (!qword_27DB197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB197B8);
  }

  return result;
}

unint64_t sub_2302DACF4()
{
  result = qword_27DB197C8;
  if (!qword_27DB197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB197C8);
  }

  return result;
}

unint64_t sub_2302DAD48()
{
  result = qword_27DB197E8;
  if (!qword_27DB197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB197E8);
  }

  return result;
}

unint64_t sub_2302DAD9C()
{
  result = qword_27DB19800;
  if (!qword_27DB19800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19800);
  }

  return result;
}

unint64_t sub_2302DADF0()
{
  result = qword_280C96ED8;
  if (!qword_280C96ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19810);
    sub_2302DAE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96ED8);
  }

  return result;
}

unint64_t sub_2302DAE74()
{
  result = qword_280C97E50;
  if (!qword_280C97E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E50);
  }

  return result;
}

unint64_t sub_2302DAEC8()
{
  result = qword_280C98840;
  if (!qword_280C98840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19810);
    sub_23005AAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98840);
  }

  return result;
}

unint64_t sub_2302DAF50()
{
  result = qword_27DB19820;
  if (!qword_27DB19820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19820);
  }

  return result;
}

unint64_t sub_2302DAFA8()
{
  result = qword_27DB19828;
  if (!qword_27DB19828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19828);
  }

  return result;
}

unint64_t sub_2302DB000()
{
  result = qword_27DB19830;
  if (!qword_27DB19830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19830);
  }

  return result;
}

unint64_t sub_2302DB058()
{
  result = qword_27DB19838;
  if (!qword_27DB19838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19838);
  }

  return result;
}

unint64_t sub_2302DB0B0()
{
  result = qword_27DB19840;
  if (!qword_27DB19840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19840);
  }

  return result;
}

unint64_t sub_2302DB108()
{
  result = qword_27DB19848;
  if (!qword_27DB19848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19848);
  }

  return result;
}

unint64_t sub_2302DB160()
{
  result = qword_27DB19850;
  if (!qword_27DB19850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19850);
  }

  return result;
}

unint64_t sub_2302DB1B8()
{
  result = qword_27DB19858;
  if (!qword_27DB19858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19858);
  }

  return result;
}

unint64_t sub_2302DB210()
{
  result = qword_27DB19860;
  if (!qword_27DB19860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19860);
  }

  return result;
}

unint64_t sub_2302DB268()
{
  result = qword_27DB19868;
  if (!qword_27DB19868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19868);
  }

  return result;
}

unint64_t sub_2302DB2C0()
{
  result = qword_27DB19870;
  if (!qword_27DB19870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19870);
  }

  return result;
}

unint64_t sub_2302DB318()
{
  result = qword_27DB19878;
  if (!qword_27DB19878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19878);
  }

  return result;
}

unint64_t sub_2302DB370()
{
  result = qword_27DB19880;
  if (!qword_27DB19880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19880);
  }

  return result;
}

unint64_t sub_2302DB3C8()
{
  result = qword_27DB19888;
  if (!qword_27DB19888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19888);
  }

  return result;
}

unint64_t sub_2302DB420()
{
  result = qword_27DB19890;
  if (!qword_27DB19890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19890);
  }

  return result;
}

unint64_t sub_2302DB478()
{
  result = qword_27DB19898;
  if (!qword_27DB19898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19898);
  }

  return result;
}

unint64_t sub_2302DB4D8()
{
  result = qword_27DB198A0;
  if (!qword_27DB198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198A0);
  }

  return result;
}

uint64_t initializeWithCopy for REMAccountsListDataView.Result(uint64_t a1, uint64_t a2)
{
  v12 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v12;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  v8 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v8;
  v13 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v13;

  v9 = v12;

  v10 = v13;
  return a1;
}

void *assignWithCopy for REMAccountsListDataView.Result(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];

  a1[13] = a2[13];

  a1[14] = a2[14];

  a1[15] = a2[15];

  a1[16] = a2[16];

  a1[17] = a2[17];

  a1[18] = a2[18];

  a1[19] = a2[19];

  a1[20] = a2[20];

  v7 = a1[21];
  v8 = a2[21];
  a1[21] = v8;
  v9 = v8;

  return a1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t assignWithTake for REMAccountsListDataView.Result(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  v6 = a2[4];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = v6;
  *(a1 + 80) = a2[5];

  *(a1 + 96) = a2[6];

  *(a1 + 112) = a2[7];

  *(a1 + 128) = a2[8];

  *(a1 + 144) = a2[9];

  v7 = *(a1 + 168);
  *(a1 + 160) = a2[10];

  return a1;
}

uint64_t getEnumTagSinglePayload for REMAccountsListDataView.Result(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for REMAccountsListDataView.Result(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for REMAccountsListDataView.ReminderCounts(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];

  a1[11] = a2[11];

  return a1;
}

_OWORD *assignWithTake for REMAccountsListDataView.ReminderCounts(_OWORD *a1, _OWORD *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

void *assignWithCopy for REMAccountsListDataView.Model(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];

  a1[13] = a2[13];

  a1[14] = a2[14];

  a1[15] = a2[15];

  a1[16] = a2[16];

  a1[17] = a2[17];

  return a1;
}

unint64_t *assignWithCopy for REMAccountsListDataView.Model.AccountChild(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_23006006C(*a2);
  v5 = *a1;
  *a1 = v3;
  a1[1] = v4;
  sub_230060110(v5);
  return a1;
}

unint64_t *assignWithTake for REMAccountsListDataView.Model.AccountChild(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_230060110(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMAccountsListDataView.Model.AccountChild(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for REMAccountsListDataView.Model.AccountChild(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for REMAccountsListDataView.Model.PinnedList(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for REMAccountsListDataView.Model.PinnedList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMAccountsListDataView.FetchOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMAccountsListDataView.FetchOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *assignWithCopy for REMAccountsListDataView.Invocation.Result(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];

  a1[13] = a2[13];

  a1[14] = a2[14];

  a1[15] = a2[15];

  a1[16] = a2[16];

  a1[17] = a2[17];

  a1[18] = a2[18];

  a1[19] = a2[19];

  a1[20] = a2[20];

  return a1;
}

uint64_t assignWithTake for REMAccountsListDataView.Invocation.Result(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

unint64_t sub_2302DC138()
{
  result = qword_27DB198A8;
  if (!qword_27DB198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198A8);
  }

  return result;
}

unint64_t sub_2302DC190()
{
  result = qword_27DB198B0;
  if (!qword_27DB198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198B0);
  }

  return result;
}

unint64_t sub_2302DC1E8()
{
  result = qword_27DB198B8;
  if (!qword_27DB198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198B8);
  }

  return result;
}

unint64_t sub_2302DC240()
{
  result = qword_27DB198C0;
  if (!qword_27DB198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198C0);
  }

  return result;
}

unint64_t sub_2302DC298()
{
  result = qword_27DB198C8;
  if (!qword_27DB198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198C8);
  }

  return result;
}

unint64_t sub_2302DC2F0()
{
  result = qword_27DB198D0;
  if (!qword_27DB198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198D0);
  }

  return result;
}

unint64_t sub_2302DC348()
{
  result = qword_27DB198D8;
  if (!qword_27DB198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198D8);
  }

  return result;
}

unint64_t sub_2302DC3A0()
{
  result = qword_27DB198E0;
  if (!qword_27DB198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198E0);
  }

  return result;
}

unint64_t sub_2302DC3F8()
{
  result = qword_27DB198E8;
  if (!qword_27DB198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198E8);
  }

  return result;
}

unint64_t sub_2302DC450()
{
  result = qword_27DB198F0;
  if (!qword_27DB198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198F0);
  }

  return result;
}

unint64_t sub_2302DC4A8()
{
  result = qword_27DB198F8;
  if (!qword_27DB198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB198F8);
  }

  return result;
}

unint64_t sub_2302DC500()
{
  result = qword_280C993D0;
  if (!qword_280C993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993D0);
  }

  return result;
}

unint64_t sub_2302DC558()
{
  result = qword_280C993D8;
  if (!qword_280C993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993D8);
  }

  return result;
}

unint64_t sub_2302DC5B0()
{
  result = qword_280C993E8;
  if (!qword_280C993E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993E8);
  }

  return result;
}