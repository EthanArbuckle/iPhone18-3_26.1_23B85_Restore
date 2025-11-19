unsigned __int8 *sub_25F22F32C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (v7 == 43)
  {
    v8 = a2-- < 1;
    if (v8)
    {
      goto LABEL_15;
    }

    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

LABEL_12:
    v9 = 0;
    return sub_25F22ED3C(result, a2, a3, v9, a4, a5, a6);
  }

  if (v7 != 45)
  {
    goto LABEL_12;
  }

  v8 = a2-- < 1;
  if (!v8)
  {
    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

    v9 = 1;
    return sub_25F22ED3C(result, a2, a3, v9, a4, a5, a6);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25F22F3A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = sub_25F212A04();
  return sub_25F22F32C(a1, a2, v9, MEMORY[0x277D84D38], v10, a3);
}

unsigned __int8 *sub_25F22F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a5 + 40);
  v16 = *(*(*(a5 + 8) + 8) + 8);
  result = sub_25F3050BC();
  v19 = result;
  v20 = v18;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v19 = sub_25F2E14DC();
    v25 = v24;

    v20 = v25;
    if ((v25 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        result = sub_25F30605C();
      }

      v22 = *result;
      if (v22 == 43)
      {
        v23 = v21-- < 1;
        if (v23)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }
      }

      else if (v22 == 45)
      {
        v23 = v21-- < 1;
        if (!v23)
        {
          if (result)
          {
            ++result;
          }

          else
          {
            result = 0;
          }

          goto LABEL_20;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_24;
    }
  }

  else if ((v18 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v21 = HIBYTE(v20) & 0xF;
  v29[0] = v19;
  v29[1] = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v19 != 43)
  {
    if (v19 == 45)
    {
      if (v21)
      {
        --v21;
        result = v29 + 1;
LABEL_20:
        v26 = a7;
        v27 = a2;
        v28 = 1;
LABEL_25:
        sub_25F22ED3C(result, v21, v27, v28, a4, a6, v26);
      }

      goto LABEL_28;
    }

    result = v29;
LABEL_24:
    v26 = a7;
    v27 = a2;
    v28 = 0;
    goto LABEL_25;
  }

  if (v21)
  {
    --v21;
    result = v29 + 1;
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_25F22F628()
{
  result = qword_27FD559B8;
  if (!qword_27FD559B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559B8);
  }

  return result;
}

unint64_t sub_25F22F680()
{
  result = qword_27FD559C8;
  if (!qword_27FD559C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559C8);
  }

  return result;
}

unint64_t sub_25F22F6F8()
{
  result = qword_27FD559D0;
  if (!qword_27FD559D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559D0);
  }

  return result;
}

unint64_t sub_25F22F750()
{
  result = qword_27FD559D8;
  if (!qword_27FD559D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559D8);
  }

  return result;
}

unint64_t sub_25F22F7A8()
{
  result = qword_27FD559E0;
  if (!qword_27FD559E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559E0);
  }

  return result;
}

unint64_t sub_25F22F7FC()
{
  result = qword_27FD559E8;
  if (!qword_27FD559E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559E8);
  }

  return result;
}

uint64_t FutureSerialQueue.Priority.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t _s20PreviewsFoundationOS20DiagnosticsCollectorC09SimulatorD9DeviceSetO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F22F924()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

unint64_t sub_25F22F978(uint64_t *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *v2;
  if (*(v8 + 16) && (v9 = sub_25F2193A0(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_25F2F084C(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_25F2F084C((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[24 * v13];
  *(v14 + 4) = v5;
  *(v14 + 5) = v6;
  *(v14 + 6) = v7;
  v15 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  result = sub_25F210B44(v11, a2, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  return result;
}

void sub_25F22FA9C(void *a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_25F2193A0(0);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6[2])
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_25F2193A0(1u);
  if (v9)
  {
    v6 = *(*(v3 + 56) + 8 * v8);
    if (v6[2])
    {
      v7 = 1;
      goto LABEL_13;
    }
  }

  if (!*(v3 + 16) || (v10 = sub_25F2193A0(2u), (v11 & 1) == 0) || (v6 = *(*(v3 + 56) + 8 * v10), !v6[2]))
  {
LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v7 = 2;
LABEL_13:

  v12 = v6[4];
  v13 = v6[5];
  v14 = v6[6];

  v16 = sub_25F22FC04(v17, v7);
  if (*v15)
  {
    if (!*(*v15 + 16))
    {
      __break(1u);
      return;
    }

    sub_25F1EA444(0, 1);
    (v16)(v17, 0);
  }

  else
  {
    (v16)(v17, 0);
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
}

void (*sub_25F22FC04(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25F230CE0(v4, a2);
  return sub_25F22FC7C;
}

void sub_25F22FC7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25F22FCC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = 0;
  v8 = *result;
  v9 = *(*result + 16);
  v10 = *result + 32;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 24 * v7);
  while (1)
  {
    if (v9 == v7)
    {
      *a3 = v11;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    ++v7;
    v13 = v12 + 3;
    v14 = *v12;
    v12 += 3;
    if (v14 != a2)
    {
      v15 = *(v13 - 1);
      v19 = *(v13 - 2);
      v20 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v4;
      if ((result & 1) == 0)
      {
        result = sub_25F1BD0A8(0, *(v11 + 16) + 1, 1);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_25F1BD0A8((v16 > 1), v17 + 1, 1);
      }

      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 24 * v17);
      v10 = v20;
      v18[4] = v14;
      v18[5] = v19;
      v18[6] = v15;
      v4 = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t FutureSerialQueue.__allocating_init(on:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = *a1;
  v3 = sub_25F1B626C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F8, &qword_25F30E980);
  v4 = swift_allocObject();
  *(v4 + 36) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t FutureSerialQueue.init(on:)(_OWORD *a1)
{
  *(v1 + 24) = *a1;
  v2 = sub_25F1B626C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F8, &qword_25F30E980);
  v3 = swift_allocObject();
  *(v3 + 36) = 0;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t FutureSerialQueue.enqueue<A>(priority:makeFuture:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Future();
  v7 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FutureSerialQueue.swift", 129, 2, 88, 57, "enqueue(priority:makeFuture:)", 29, 2);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = qword_27FD52798;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v13 = *(v12 + 2);
  *(v12 + 2) = v13 + 1;
  os_unfair_lock_unlock(v12 + 6);
  v14 = *(v4 + 16);
  MEMORY[0x28223BE20](v15);
  os_unfair_lock_lock(v14 + 9);
  sub_25F230F88();
  os_unfair_lock_unlock(v14 + 9);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v13;
  v16[4] = sub_25F230F7C;
  v16[5] = v10;

  Future.observeCancelation(_:)(sub_25F230FD8, v16);

  sub_25F2303D8();

  return v7;
}

uint64_t sub_25F230104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = a3();
  v9 = *(v7 + 80);
  sub_25F229A9C(&v13);
  v12 = v13;
  Promise.track(future:on:)(v8, &v12);
  sub_25F2033DC(v12);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  Future.observeFinish(_:)(sub_25F2313C4, v10);
}

void sub_25F2301FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_25F2313A4((v2 + 16));
  os_unfair_lock_unlock((v2 + 36));
}

uint64_t sub_25F230254(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  result = sub_25F30632C();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = result + 64;
  if (v8)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(*(v2 + 48) + v14);
      v22 = *(*(v2 + 56) + 8 * v14);
      result = sub_25F22FCC8(&v22, a2, &v21);
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + v14) = v15;
      *(v4[7] + 8 * v14) = v21;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v4[2] = v18;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        *a1 = v4;
        return result;
      }

      v13 = *(v2 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25F2303D8()
{
  v1 = v0;
  v2 = sub_25F30490C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F30494C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[2];
  os_unfair_lock_lock((v12 + 36));
  if (*(v12 + 32) == 1 && (sub_25F22FA9C(&aBlock), (v13 = v33) != 0))
  {
    v28 = v8;
    v29 = v7;
    v30 = v3;
    v14 = v34;
    v15 = aBlock;
    *(v12 + 24) = aBlock;
    *(v12 + 32) = 0;
    os_unfair_lock_unlock((v12 + 36));
    v17 = v0[3];
    v16 = v0[4];
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = v1;
    aBlock = v17;
    v33 = v16;
    v27 = v16;
    sub_25F2312F8(v15, v13);
    sub_25F2312F8(v15, v13);

    sub_25F2312F8(v15, v13);

    if (ExecutionLane.isCurrentLane.getter())
    {
      v19 = swift_allocObject();
      v19[2] = v1;
      v19[3] = v15;
      v19[4] = v13;
      v19[5] = v14;
      sub_25F2312F8(v15, v13);

      v20 = sub_25F23148C;
LABEL_12:
      v13(v20, v19);

      sub_25F231314(v15, v13);

      sub_25F231314(v15, v13);

      sub_25F231314(v15, v13);
      return;
    }

    if (!v17)
    {
      v19 = swift_allocObject();
      v19[2] = v1;
      v19[3] = v15;
      v19[4] = v13;
      v19[5] = v14;
      sub_25F2312F8(v15, v13);

      v20 = sub_25F231308;
      goto LABEL_12;
    }

    if (v17 == 1)
    {
      sub_25F1F54F4();
      v27 = sub_25F305AAC();
      v36 = sub_25F2312EC;
      v37 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25F1D8C38;
      v35 = &block_descriptor_22;
      v25 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      v24 = sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1F72CC(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F305E5C();
      v21 = v25;
      v22 = v27;
      MEMORY[0x25F8D7C70](0, v11, v6, v25);
      _Block_release(v21);

      (*(v30 + 8))(v6, v2);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = sub_25F2312EC;
      v37 = v18;
      v26 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25F1D8C38;
      v35 = &block_descriptor_6;
      v25 = _Block_copy(&aBlock);

      sub_25F2033CC(v17);
      sub_25F30492C();
      v31 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1F72CC(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F305E5C();
      v23 = v25;
      MEMORY[0x25F8D7C70](0, v11, v6, v25);
      _Block_release(v23);
      sub_25F2033DC(v17);
      (*(v30 + 8))(v6, v2);
      (*(v28 + 8))(v11, v29);
    }

    sub_25F231314(v15, v13);

    sub_25F231314(v15, v13);
    sub_25F231314(v15, v13);
  }

  else
  {

    os_unfair_lock_unlock((v12 + 36));
  }
}

uint64_t FutureSerialQueue.enqueue<A>(priority:makeFuture:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;

  v9 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)(a1, sub_25F230FE4, v8);

  return v9;
}

uint64_t sub_25F230B74(uint64_t a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  a2(sub_25F23148C, v8);
}

uint64_t sub_25F230C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 9);
  sub_25F23133C(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
  return sub_25F2303D8();
}

uint64_t FutureSerialQueue.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_25F2033DC(*(v0 + 24));
  return v0;
}

uint64_t FutureSerialQueue.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_25F2033DC(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void (*sub_25F230CE0(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25F230F48(v6);
  v6[9] = sub_25F230DE4((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_25F230D84;
}

void sub_25F230D84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_25F230DE4(uint64_t a1, unsigned __int8 a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_25F2193A0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25F21E4D8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25F21B70C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_25F2193A0(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_25F30665C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_25F230F00;
}

unint64_t sub_25F230F00(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_25F211908(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_25F1BB540(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_25F230F48(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F230F70;
}

unint64_t sub_25F230F88()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return sub_25F22F978(&v3, v1);
}

void sub_25F230FD8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_25F2301FC(a1, v1[2]);
}

uint64_t sub_25F230FE4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_25F230AEC();
}

unint64_t sub_25F230FF4()
{
  result = qword_27FD55A00;
  if (!qword_27FD55A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55A00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FutureSerialQueue.Priority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FutureSerialQueue.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F23122C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25F231274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2312C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F2312F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25F231308()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_25F230C14(v0[2]);
}

uint64_t sub_25F231314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F23133C(uint64_t result)
{
  if ((*(result + 16) & 1) == 0 && *(result + 8) == *(v1 + 16))
  {
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_25F2313A4(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_25F230254(a1, v1[2]);
}

uint64_t sub_25F2313C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_25F2313EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F231434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall BuildNumber.init(majorRelease:minorRelease:majorBuild:minorBuild:)(PreviewsFoundationOS::BuildNumber *__return_ptr retstr, Swift::Int majorRelease, Swift::String minorRelease, Swift::Int majorBuild, Swift::String_optional minorBuild)
{
  retstr->rawMinorRelease = minorRelease;
  retstr->majorRelease = majorRelease;
  retstr->majorBuild = majorBuild;
  retstr->rawMinorBuild = minorBuild;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BuildNumber.init(_:)(PreviewsFoundationOS::BuildNumber *__return_ptr retstr, Swift::String a2)
{
  v30 = retstr;
  v2 = sub_25F305BCC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v8 = sub_25F304DDC();

  v9 = [v7 initWithString_];

  v10 = v3[13];
  v32 = *MEMORY[0x277CC9E90];
  v31 = v10;
  v10(v6);
  v11 = sub_25F305BDC();
  LOBYTE(v7) = v12;
  v13 = v3[1];
  v13(v6, v2);
  v14 = 0;
  if ((v7 & 1) != 0 || v11 < 1)
  {
    goto LABEL_13;
  }

  v15 = v11;
  v16 = sub_25F305BBC();
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v29 = v16;
  if ((sub_25F304C3C() & 1) == 0)
  {

LABEL_12:
    v14 = 1;
    goto LABEL_13;
  }

  v31(v6, v32, v2);
  v19 = sub_25F305BDC();
  v21 = v20;
  v13(v6, v2);
  if ((v21 & 1) != 0 || v19 < 1)
  {

    v14 = 2;
  }

  else
  {
    v22 = sub_25F305BBC();
    v24 = v23;
    if (v23 && (, v25 = sub_25F304C3C(), , (v25 & 1) == 0))
    {

      v14 = 3;
    }

    else
    {
      if ([v9 isAtEnd])
      {

        v26 = v29;
        v27 = v30;
        v30->majorRelease = v15;
        v27->majorBuild = v19;
        v27->rawMinorRelease._countAndFlagsBits = v26;
        v27->rawMinorRelease._object = v18;
        v27->rawMinorBuild.value._countAndFlagsBits = v22;
        v27->rawMinorBuild.value._object = v24;
        return;
      }

      v14 = 4;
    }
  }

LABEL_13:
  sub_25F23178C();
  swift_allocError();
  *v28 = v14;
  swift_willThrow();
}

unint64_t sub_25F23178C()
{
  result = qword_27FD55AA8;
  if (!qword_27FD55AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AA8);
  }

  return result;
}

void static BuildNumber.createConfidently(_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  BuildNumber.init(_:)(&v20, v6);
  if (v7)
  {
    v14[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/BuildNumber.swift";
    v14[1] = 123;
    v15 = 2;
    v16 = xmmword_25F30EB50;
    v17 = "createConfidently(_:)";
    v18 = 21;
    v19 = 2;
    sub_25F213F98(v14);
    if (qword_27FD527B0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27FD55A88;
    object = unk_27FD55A90;
    v12 = xmmword_27FD55A98;
    v13 = xmmword_27FD55A78;

    rawMinorBuild = v12;
    v10 = v13;
  }

  else
  {
    v10 = *&v20.majorRelease;
    countAndFlagsBits = v20.rawMinorRelease._countAndFlagsBits;
    object = v20.rawMinorRelease._object;
    rawMinorBuild = v20.rawMinorBuild;
  }

  *a3 = v10;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = object;
  *(a3 + 32) = rawMinorBuild;
}

__n128 sub_25F231904@<Q0>(PreviewsFoundationOS::BuildNumber *a1@<X8>)
{
  v2 = UVCurrentSystemBuildNumberString();
  if (v2)
  {
    v3 = v2;
    v4 = sub_25F304E0C();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    BuildNumber.init(_:)(a1, v7);
    v10 = v9;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    sub_25F232A80();
    v10 = swift_allocError();
    swift_willThrow();
  }

  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v11 = sub_25F30479C();
  __swift_project_value_buffer(v11, qword_281561A40);
  v12 = v10;
  v13 = sub_25F30477C();
  v14 = sub_25F305A0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_25F1A2000, v13, v14, "Failed to get current system version, falling back to 1A1: %{public}@", v15, 0xCu);
    sub_25F1D313C(v16);
    MEMORY[0x25F8D9510](v16, -1, -1);
    MEMORY[0x25F8D9510](v15, -1, -1);
  }

  if (qword_27FD527A8 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27FD55A48;
  v20 = qword_27FD55A58;
  v19 = unk_27FD55A60;
  v22 = qword_27FD55A68;
  v21 = unk_27FD55A70;

  result = v23;
  *&a1->majorRelease = v23;
  a1->rawMinorRelease._countAndFlagsBits = v20;
  a1->rawMinorRelease._object = v19;
  a1->rawMinorBuild.value._countAndFlagsBits = v22;
  a1->rawMinorBuild.value._object = v21;
  return result;
}

uint64_t static BuildNumber.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527A0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27FD55A28;
  v2 = unk_27FD55A30;
  v4 = qword_27FD55A38;
  v3 = unk_27FD55A40;
  *a1 = xmmword_27FD55A18;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

int64x2_t sub_25F231BB0()
{
  qword_27FD55A58 = 65;
  unk_27FD55A60 = 0xE100000000000000;
  result = vdupq_n_s64(1uLL);
  xmmword_27FD55A48 = result;
  qword_27FD55A68 = 0;
  unk_27FD55A70 = 0;
  return result;
}

uint64_t static BuildNumber.distantPast.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527A8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27FD55A58;
  v2 = unk_27FD55A60;
  v4 = qword_27FD55A68;
  v3 = unk_27FD55A70;
  *a1 = xmmword_27FD55A48;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

float64x2_t sub_25F231C64()
{
  qword_27FD55A88 = 90;
  unk_27FD55A90 = 0xE100000000000000;
  v0.f64[0] = NAN;
  v0.f64[1] = NAN;
  result = vnegq_f64(v0);
  xmmword_27FD55A78 = result;
  xmmword_27FD55A98 = 0uLL;
  return result;
}

uint64_t static BuildNumber.distantFuture.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27FD55A88;
  v2 = unk_27FD55A90;
  v3 = xmmword_27FD55A98;
  *a1 = xmmword_27FD55A78;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t BuildNumber.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x25F8D88E0](*v0);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v1);
  if (!v5)
  {
    return sub_25F30673C();
  }

  sub_25F304BFC();
  sub_25F30673C();
  sub_25F304F0C();
}

uint64_t BuildNumber.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v12 = *v0;
  v13 = sub_25F3064DC();
  v6 = sub_25F304C0C();
  MEMORY[0x25F8D7130](v6);

  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v7);

  if (v5)
  {
    v8 = sub_25F304BFC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v8, v10);

  return v13;
}

uint64_t BuildNumber.releaseDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v6 = sub_25F3064DC();
  v3 = sub_25F304C0C();
  MEMORY[0x25F8D7130](v3);

  return v6;
}

uint64_t BuildNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (v6)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

uint64_t sub_25F23204C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (v6)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

uint64_t sub_25F232138()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x25F8D88E0](*v0);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v1);
  if (!v5)
  {
    return sub_25F30673C();
  }

  sub_25F304BFC();
  sub_25F30673C();
  sub_25F304F0C();
}

uint64_t sub_25F232210()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (v6)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

BOOL sub_25F2322FC(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return (_s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v7, &v11) & 1) == 0;
}

BOOL sub_25F232358(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return (_s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v11, &v7) & 1) == 0;
}

uint64_t sub_25F2323B4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return _s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v7, &v11) & 1;
}

uint64_t _s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    return v2;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v29 = a1[4];
  v30 = a2[4];
  v31 = a2[5];
  v10 = sub_25F304C0C();
  v12 = v11;
  if (v10 == sub_25F304C0C() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_25F30659C();

    if ((v15 & 1) == 0)
    {
      v16 = sub_25F304C0C();
      v18 = v17;
      if (v16 != sub_25F304C0C() || v18 != v19)
      {
        v27 = sub_25F30659C();

        return v27 & 1;
      }

      goto LABEL_9;
    }
  }

  v2 = v3 < v7;
  if (v3 != v7)
  {
    return v2;
  }

  if (!v6)
  {
    if (v31)
    {
      sub_25F304BFC();
LABEL_24:
      if (v25)
      {

        return 1;
      }
    }

    return 0;
  }

  v20 = sub_25F304BFC();
  v22 = v21;
  if (!v31)
  {
    if (v21)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v23 = v20;
  v24 = sub_25F304BFC();
  if (!v22)
  {
    goto LABEL_24;
  }

  if (!v25)
  {
    goto LABEL_28;
  }

  if (v23 == v24 && v22 == v25)
  {
LABEL_9:

LABEL_28:

    return 0;
  }

  v28 = sub_25F30659C();

  return v28 & 1;
}

uint64_t _s20PreviewsFoundationOS11BuildNumberV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v3 = a1[4];
  v2 = a1[5];
  v5 = a2[4];
  v4 = a2[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[1];
  v9 = a1[1];
  v12 = a1 + 2;
  v10 = a1[2];
  v11 = v12[1];
  v13 = sub_25F304C0C();
  v15 = v14;
  if (v13 == sub_25F304C0C() && v15 == v16)
  {

    if (v9 == v8)
    {
      goto LABEL_10;
    }

LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  v18 = sub_25F30659C();

  v19 = 0;
  if ((v18 & 1) != 0 && v9 == v8)
  {
LABEL_10:
    if (v2)
    {
      v20 = sub_25F304BFC();
      v22 = v21;
      if (!v4)
      {
        if (v21)
        {
LABEL_23:
          v19 = 0;
          goto LABEL_27;
        }

LABEL_24:
        v19 = 1;
        return v19 & 1;
      }

      v23 = v20;
      v25 = sub_25F304BFC();
      v26 = v24;
      if (v22)
      {
        if (v24)
        {
          if (v23 == v25 && v22 == v24)
          {
            v19 = 1;
          }

          else
          {
            v19 = sub_25F30659C();
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      sub_25F304BFC();
      v26 = v27;
    }

    if (v26)
    {
      v19 = 0;
LABEL_27:

      return v19 & 1;
    }

    goto LABEL_24;
  }

  return v19 & 1;
}

unint64_t sub_25F2327E0()
{
  result = qword_27FD55AB0;
  if (!qword_27FD55AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AB0);
  }

  return result;
}

uint64_t sub_25F232834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F23287C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuildNumber.Invalid(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BuildNumber.Invalid(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F232A2C()
{
  result = qword_27FD55AB8;
  if (!qword_27FD55AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AB8);
  }

  return result;
}

unint64_t sub_25F232A80()
{
  result = qword_27FD55AC0[0];
  if (!qword_27FD55AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD55AC0);
  }

  return result;
}

Swift::Bool __swiftcall NSProcessInfo.BOOLeanEnvironmentVariableIsSet(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = [v1 environment];
  v5 = sub_25F304A6C();

  if (*(v5 + 16) && (v6 = sub_25F219234(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];

    v15[0] = v9;
    v15[1] = v10;
    MEMORY[0x28223BE20](v11);
    v14[2] = v15;
    v12 = sub_25F232C34(sub_25F1BF16C, v14, &unk_28715C3D8);
    swift_arrayDestroy();
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25F232C34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25F232CE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 0;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_25F305F9C();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_25F30605C();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if (v17)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t Inhabited.predicated.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v6 = type metadata accessor for Predicated();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t Inhabited.predicated.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v6 = type metadata accessor for Predicated();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t Inhabited.init(predicated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v4 = type metadata accessor for Predicated();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25F2330B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return Inhabited.init(predicated:)(a1, a2);
}

uint64_t static Inhabited<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Inhabited();
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v11, WitnessTable, v10);
  PredicatedWrapper.value.getter(v11, WitnessTable, v8);
  v13 = sub_25F304DCC();
  v14 = *(v4 + 8);
  v14(v8, a3);
  v14(v10, a3);
  return v13 & 1;
}

uint64_t sub_25F233258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 24);
  return static Inhabited<>.== infix(_:_:)(a1, a2, *(a3 + 16));
}

uint64_t Inhabited<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v7);
  sub_25F304BDC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Inhabited<>.hashValue.getter(uint64_t a1)
{
  sub_25F30671C();
  Inhabited<>.hash(into:)(v3, a1);
  return sub_25F30676C();
}

uint64_t sub_25F2333D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  Inhabited<>.hash(into:)(v6, a2);
  return sub_25F30676C();
}

uint64_t sub_25F233488(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return static HasHead.isSatisfied(by:)();
}

uint64_t Inhabited.makeIterator()(uint64_t a1)
{
  v2 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v4);
  v6 = *(a1 + 24);
  return sub_25F3050DC();
}

uint64_t Inhabited.sorted(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v34 = a1;
  v30 = a4;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = AssociatedTypeWitness;
  v32 = v29 - v10;
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v33 = v11;
  v29[1] = WitnessTable;
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v13 = type metadata accessor for Predicated();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v29 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, v22, v21);
  v23 = v36;
  v24 = sub_25F3051AC();
  result = (*(v18 + 8))(v21, v6);
  if (!v23)
  {
    v38 = v24;
    v37 = v24;
    swift_getWitnessTable();
    v26 = v32;
    sub_25F30583C();
    v27 = v31;
    v28 = *(v31 - 8);
    result = (*(v28 + 48))(v26, 1, v31);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      static Predicated.unverified(value:proof:)(&v38, v26, v17);
      (*(v28 + 8))(v26, v27);

      return Inhabited.init(predicated:)(v17, v30);
    }
  }

  return result;
}

uint64_t Inhabited.map<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v60 = a1;
  v58 = a5;
  v59 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v56 = swift_getWitnessTable();
  v8 = type metadata accessor for Predicated();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v45 - v10;
  v48 = sub_25F305C1C();
  v47 = *(v48 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v48);
  v54 = &v45 - v13;
  v53 = *(a4 - 1);
  v14 = *(v53 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v49 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  v24 = swift_getWitnessTable();
  v50 = v5;
  PredicatedWrapper.value.getter(a3, v24, v23);
  v64 = v17;
  v65 = a4;
  v66 = *(a3 + 24);
  v25 = v66;
  v67 = v60;
  v68 = v61;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v27 = v62;
  v28 = sub_25F2E3888(sub_25F233E98, v63, v17, a4, v26, v25, MEMORY[0x277D84950], v69);
  v29 = v23;
  v30 = *(v18 + 8);
  result = v30(v29, v17);
  if (!v27)
  {
    v46 = v30;
    v60 = v25;
    v61 = v24;
    v62 = v18 + 8;
    v32 = v28;
    v69[0] = v28;
    swift_getWitnessTable();
    v33 = v54;
    sub_25F30583C();
    v34 = v53;
    if ((*(v53 + 48))(v33, 1, a4) == 1)
    {
      (*(v47 + 8))(v33, v48);
      v69[0] = 0;
      v69[1] = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F319080);
      v37 = v49;
      v38 = v61;
      PredicatedWrapper.value.getter(a3, v61, v49);
      v39 = v17;
      swift_getDynamicType();
      v40 = v17;
      v41 = v46;
      v46(v37, v40);
      v42 = sub_25F30685C();
      MEMORY[0x25F8D7130](v42);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(a3, v38, v37);
      v43 = sub_25F3050EC();
      v41(v37, v39);
      v69[4] = v43;
      v44 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v44);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v35 = v51;
      (*(v34 + 32))(v51, v33, a4);
      v69[0] = v32;
      v36 = v55;
      static Predicated.unverified(value:proof:)(v69, v35, v55);
      (*(v34 + 8))(v35, a4);

      return Inhabited.init(predicated:)(v36, v58);
    }
  }

  return result;
}

uint64_t sub_25F233E98(uint64_t a1, void *a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t Inhabited.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v42 = swift_getWitnessTable();
  v43 = HasHead;
  v8 = type metadata accessor for Predicated();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v33 - v10;
  v11 = sub_25F305C1C();
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v33 - v19;
  v36 = *(v4 - 8);
  v21 = *(v36 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getWitnessTable();
  v37 = a1;
  v38 = v2;
  v25 = a1;
  v26 = v24;
  PredicatedWrapper.value.getter(v25, v24, v23);
  v39 = v5;
  v40 = v4;
  v27 = sub_25F3051CC();
  v47[0] = v27;
  swift_getWitnessTable();
  sub_25F304C5C();
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v15, v35);
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0xD00000000000002ELL, 0x800000025F3190D0);
    PredicatedWrapper.value.getter(v37, v26, v23);
    v30 = v40;
    v31 = sub_25F3050EC();
    (*(v36 + 8))(v23, v30);
    v46 = v31;
    v32 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v32);

    MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F319100);
    result = sub_25F30627C();
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v47[0] = v27;
    v28 = v41;
    static Predicated.unverified(value:proof:)(v47, v20, v41);
    (*(v16 + 8))(v20, AssociatedTypeWitness);

    return Inhabited.init(predicated:)(v28, v45);
  }

  return result;
}

uint64_t Inhabited.mapWithPrevious<A>(using:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a2;
  v63 = a1;
  v59 = a5;
  v61 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v56 = swift_getWitnessTable();
  v8 = type metadata accessor for Predicated();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v55 = &v49 - v11;
  v12 = *(a4 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  v66 = *(v16 - 1);
  v17 = *(v66 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - v20;
  v62 = sub_25F305C1C();
  v22 = *(v62 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v62);
  v60 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  v54 = v12;
  (*(v12 + 56))(&v49 - v26, 1, 1, a4);
  v28 = swift_getWitnessTable();
  v52 = v5;
  PredicatedWrapper.value.getter(a3, v28, v21);
  v68 = v16;
  v69 = a4;
  v50 = a3;
  v29 = *(a3 + 24);
  v70 = v29;
  v71 = v63;
  v72 = v65;
  v73 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v65 = v16;
  v31 = v64;
  v32 = sub_25F2E3888(sub_25F234C10, v67, v16, a4, v30, v29, MEMORY[0x277D84950], v74);
  if (v31)
  {
    (*(v66 + 8))(v21, v65);
    return (*(v22 + 8))(v27, v62);
  }

  else
  {
    v34 = v32;
    v63 = v29;
    v64 = v28;
    v35 = v62;
    v36 = *(v66 + 8);
    v66 += 8;
    v49 = v36;
    v36(v21, v65);
    v74[0] = v34;
    swift_getWitnessTable();
    v37 = v60;
    sub_25F30583C();
    v38 = v54;
    if ((*(v54 + 48))(v37, 1, a4) == 1)
    {
      (*(v22 + 8))(v60, v35);
      v74[0] = 0;
      v74[1] = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F319080);
      v41 = v51;
      v42 = v50;
      v43 = v64;
      PredicatedWrapper.value.getter(v50, v64, v51);
      v44 = v65;
      swift_getDynamicType();
      v45 = v49;
      v49(v41, v44);
      v46 = sub_25F30685C();
      MEMORY[0x25F8D7130](v46);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(v42, v43, v41);
      v47 = sub_25F3050EC();
      v45(v41, v44);
      v74[4] = v47;
      v48 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v48);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v39 = v53;
      (*(v38 + 32))(v53, v60, a4);
      v74[0] = v34;
      v40 = v55;
      static Predicated.unverified(value:proof:)(v74, v39, v55);
      (*(v38 + 8))(v39, a4);

      Inhabited.init(predicated:)(v40, v59);
      return (*(v22 + 8))(v27, v35);
    }
  }

  return result;
}

uint64_t sub_25F234A30@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X3>, uint64_t a4@<X5>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v21 = a5;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  (*(v12 + 16))(&v20 - v14, a3, v11);
  v20 = a6;
  v16 = v22;
  a2(v15, a1);
  if (v16)
  {
    result = (*(v12 + 8))(v15, v11);
    *v21 = v16;
  }

  else
  {
    v18 = *(v12 + 8);
    v18(v15, v11);
    v18(a3, v11);
    v19 = *(a4 - 8);
    (*(v19 + 16))(a3, v20, a4);
    return (*(v19 + 56))(a3, 0, 1, a4);
  }

  return result;
}

uint64_t sub_25F234C10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  return sub_25F234A30(a1, *(v3 + 40), *(v3 + 56), *(v3 + 24), a2, a3);
}

uint64_t Inhabited.enumerated()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = *(a1 + 16);
  v39 = *(a1 + 24);
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v44 = TupleTypeMetadata2;
  v45 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v35 - v9;
  v41 = *(AssociatedTypeWitness - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - v12;
  v13 = sub_25F3062EC();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v37 = swift_getWitnessTable();
  v14 = type metadata accessor for Predicated();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v36 = &v35 - v17;
  v18 = v4;
  v19 = *(v4 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v13 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v35 - v26;
  v28 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v28, v23);
  MEMORY[0x25F8D72E0](v18, v39);
  (*(v19 + 8))(v23, v18);
  v29 = v40;
  Inhabited.first.getter(a1, v40);
  v30 = AssociatedTypeWitness;
  v31 = v44;
  v32 = *(v44 + 48);
  *v10 = 0;
  (*(v41 + 32))(&v10[v32], v29, v30);
  v33 = v36;
  static Predicated.unverified(value:proof:)(v27, v10, v36);
  (*(v45 + 8))(v10, v31);
  (*(v24 + 8))(v27, v13);
  return Inhabited.init(predicated:)(v33, v46);
}

uint64_t Inhabited.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v6 = *(type metadata accessor for Predicated() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v6, AssociatedTypeWitness);
}

uint64_t sub_25F235108(uint64_t a1)
{
  Inhabited.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_25F23519C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v10);
  a3(v6, a2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t Inhabited<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v11);
  v13 = sub_25F3058FC();
  v15 = v14;
  v16 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v15, AssociatedTypeWitness);
  v13(v19, 0);
  return (*(v8 + 8))(v11, v7);
}

{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v11);
  RandomAccessCollection.subscript.getter(a3, a4);
  return (*(v8 + 8))(v11, v7);
}

{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v11);
  v13 = *(a3 + 8);
  v14 = sub_25F3058FC();
  v16 = v15;
  v17 = *(v13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v16, AssociatedTypeWitness);
  v14(v20, 0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t Inhabited<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_25F235E78(a1, a2, a3, MEMORY[0x277D83CE8]);
}

{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v9);
  v11 = *(a3 + 8);
  sub_25F3058EC();
  return (*(v6 + 8))(v9, v5);
}

void (*sub_25F235480(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_25F235510(v8, a2, a3, *(a4 - 8));
  return sub_25F1CC82C;
}

void (*sub_25F235510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  a1[1] = v11;
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  Inhabited<>.subscript.getter(a2, a3, a4, v12);
  return sub_25F1DC510;
}

uint64_t sub_25F23560C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 1, 1, v6);
}

uint64_t sub_25F2356A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness);
  Inhabited<>.index(after:)(v11, a2, v5);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t Inhabited.orderedKeyedMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a2;
  v80 = a6;
  v81 = a1;
  v78 = a7;
  v79 = type metadata accessor for OrderedDictionary();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v74 = swift_getWitnessTable();
  v11 = type metadata accessor for Predicated();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v61 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_25F305C1C();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v61 - v18;
  v73 = TupleTypeMetadata2;
  v72 = *(TupleTypeMetadata2 - 8);
  v19 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v61 - v23;
  v24 = *(a3 + 16);
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  v32 = swift_getWitnessTable();
  v68 = v7;
  PredicatedWrapper.value.getter(a3, v32, v31);
  v67 = a3;
  v33 = *(a3 + 24);
  v34 = a4;
  v35 = a4;
  v36 = a5;
  v37 = a5;
  v38 = v33;
  v39 = v83;
  Sequence.orderedKeyedMap<A, B>(_:)(v81, v82, v24, v35, v37, v33, v80, &v84);
  v41 = *(v25 + 8);
  v40 = v25 + 8;
  v42 = v31;
  v43 = v41;
  result = (v41)(v42, v24);
  if (!v39)
  {
    v62 = v43;
    v63 = v38;
    v64 = v32;
    v45 = v69;
    v80 = v29;
    v81 = v40;
    v82 = v24;
    v83 = v36;
    v46 = v84;
    swift_getWitnessTable();
    v47 = v71;
    sub_25F30583C();
    v49 = v72;
    v48 = v73;
    if ((*(v72 + 48))(v47, 1, v73) == 1)
    {
      (*(v65 + 8))(v47, v66);
      *&v84 = 0;
      *(&v84 + 1) = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD000000000000028, 0x800000025F319130);
      v53 = v80;
      v54 = v67;
      v55 = v64;
      PredicatedWrapper.value.getter(v67, v64, v80);
      v56 = v82;
      swift_getDynamicType();
      v57 = v62;
      v62(v53, v56);
      v58 = sub_25F30685C();
      MEMORY[0x25F8D7130](v58);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(v54, v55, v53);
      v59 = sub_25F3050EC();
      v57(v53, v56);
      v85 = v59;
      v60 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v60);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v50 = v70;
      (*(v49 + 32))(v70, v47, v48);
      v84 = v46;
      v51 = *(v48 + 48);
      (*(*(v34 - 8) + 32))(v45, v50, v34);
      (*(*(v83 - 8) + 32))(v45 + v51, &v50[v51]);
      v52 = v75;
      static Predicated.unverified(value:proof:)(&v84, v45, v75);
      (*(v49 + 8))(v45, v48);

      return Inhabited.init(predicated:)(v52, v78);
    }
  }

  return result;
}

uint64_t sub_25F235E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v12);
  a4(a1, v8, a3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25F235FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 8);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v9 + 32))(&v14 - v11, a1, AssociatedTypeWitness);
  Inhabited<>.index(before:)(v12, a2, v5);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t Inhabited<>.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a3;
  v6 = *(*(a2 + 8) + 8);
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F305C1C();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v17);
  sub_25F304C5C();
  (*(v14 + 8))(v17, v7);
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (v20(v13, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v19 + 32))(v24, v13, AssociatedTypeWitness);
  }

  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v21 = type metadata accessor for Predicated();
  (*(v19 + 16))(v24, v4 + *(v21 + 36), AssociatedTypeWitness);
  result = (v20)(v13, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v23 + 8))(v13, v9);
  }

  return result;
}

uint64_t Inhabited<>.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v4 = *(a2 + 8);
  v28 = a2;
  v5 = *(v4 + 8);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v8 = *(v32 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v27 - v10;
  v11 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30630C();
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v18 = type metadata accessor for Predicated();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v27 - v20;
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v22, v13);
  v23 = v6;
  v24 = v28;
  MEMORY[0x25F8D6E50](v23, v28);
  v25 = v31;
  Inhabited<>.last.getter(a1, v24, v31);
  static Predicated.unverified(value:proof:)(v17, v25, v21);
  (*(v32 + 8))(v25, v33);
  (*(v30 + 8))(v17, v14);
  return Inhabited.init(predicated:)(v21, v34);
}

uint64_t Inhabited<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v8);
  sub_25F30572C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Inhabited<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v8);
  v10 = sub_25F30573C();
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t Inhabited<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F23C948(a1, a2, a3, a4);
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v11 = *(v8 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1, v12);
}

{
  sub_25F23CC98(a1, a2, a3, a4);
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = sub_25F3059CC();
  (*(*(v10 - 8) + 8))(a2, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 8);

  return v12(a1, AssociatedTypeWitness);
}

uint64_t sub_25F236C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24[1] = a1;
  v25 = a3;
  v26 = a5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v24 - v10;
  v12 = *(v6 + 8);
  v13 = type metadata accessor for Inhabited();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v18 = *(v14 + 16);
  v24[0] = a2;
  v18(v24 - v16, a2, v13);
  Inhabited<>.startIndex.getter(v13, v6);
  (*(v14 + 8))(v17, v13);
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v17) = sub_25F304DCC();
  v20 = v11;
  v21 = v25;
  (*(v8 + 8))(v20, AssociatedTypeWitness);
  if ((v17 & 1) == 0)
  {
    type metadata accessor for HasHead();
    swift_getWitnessTable();
    v21 = v24[0] + *(type metadata accessor for Predicated() + 36);
  }

  v22 = swift_getAssociatedTypeWitness();
  return (*(*(v22 - 8) + 16))(v26, v21, v22);
}

void (*Inhabited<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(*(a4 + 8) + 8);
  v13 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v11[4] = v15;
  v16 = *(v15 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v11[6] = v17;
  v19 = swift_getAssociatedTypeWitness();
  v11[7] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v11[8] = v20;
  if (v9)
  {
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v22 = malloc(*(v20 + 64));
  }

  v11[9] = v22;
  (*(v21 + 16))();
  Inhabited<>.subscript.getter(a2, a3, a4, v18);
  return sub_25F237120;
}

{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = *(a4 + 8);
  v12 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v10[4] = v14;
  v15 = *(v14 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v10[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_25F3059CC();
  v10[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v10[8] = v18;
  if (v8)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v10[9] = v20;
  (*(v19 + 16))();
  Inhabited<>.subscript.getter(a2, a3, a4);
  return sub_25F237964;
}

uint64_t sub_25F23736C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a1;
  v35 = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v28 - v12;
  v32 = *(v8 + 8);
  v14 = type metadata accessor for Inhabited();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = v15[2];
  v34 = a2;
  v29 = v19;
  v19(v18, a2, v14);
  Inhabited<>.startIndex.getter(v14, v8);
  v28 = v15[1];
  v28(v18, v14);
  v33 = a4;
  swift_getAssociatedConformanceWitness();
  sub_25F3059CC();
  LOBYTE(a2) = sub_25F3059BC();
  v20 = *(v10 + 8);
  v31 = v10 + 8;
  v20(v13, AssociatedTypeWitness);
  if (a2)
  {
    v29(v18, v34, v14);
    Inhabited<>.startIndex.getter(v14, v8);
    v28(v18, v14);
    v21 = sub_25F3058FC();
    v23 = v22;
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 16))(v35, v23, v24);
    v21(v36, 0);
    return (v20)(v13, AssociatedTypeWitness);
  }

  else
  {
    type metadata accessor for HasHead();
    swift_getWitnessTable();
    v26 = *(type metadata accessor for Predicated() + 36);
    v27 = swift_getAssociatedTypeWitness();
    return (*(*(v27 - 8) + 16))(v35, v34 + v26, v27);
  }
}

void sub_25F23797C(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v3 = *a1;
  v5 = (*a1)[8];
  v4 = (*a1)[9];
  v6 = (*a1)[6];
  v15 = (*a1)[7];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))(v7, v6, v10);
    a3(v7, v4, v12, v11);
    (*(v5 + 8))(v4, v15);
    v13 = *(v8 + 8);
    v13(v7, v10);
    v13(v6, v10);
  }

  else
  {
    a3(v6, v4, *v3, v3[1]);
    (*(v5 + 8))(v4, v15);
    (*(v8 + 8))(v6, v10);
  }

  free(v4);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t Inhabited<>.withFirst(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v19[1] = a2;
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v19 - v10;
  v12 = *(v5 + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v19 - v16;
  Inhabited.first.getter(a3, v19 - v16);
  v20(v17);
  Inhabited<>.startIndex.getter(a3, v5);
  sub_25F23C948(v17, v11, a3, v21);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_25F237CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  sub_25F23C948(a1, a2, a3, v7);
  v8 = *(v7 + 8);
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v11 = *(v8 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1, v12);
}

void (*sub_25F237DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Inhabited<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_25F23DA14;
}

void (*sub_25F237E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Inhabited<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_25F237EEC;
}

uint64_t Inhabited<>.init(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = a2;
  v23 = a5;
  v22[3] = *(*(a4 + 8) + 8);
  v22[2] = type metadata accessor for HasHead();
  v22[1] = swift_getWitnessTable();
  v7 = type metadata accessor for Predicated();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v22 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3059AC();
  (*(v12 + 16))(v16, a1, AssociatedTypeWitness);
  sub_25F30593C();
  v24 = v22[0];
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30592C();
  static Predicated.unverified(value:proof:)(v20, a1, v10);
  (*(v12 + 8))(a1, AssociatedTypeWitness);
  (*(v17 + 8))(v20, a3);
  return Inhabited.init(predicated:)(v10, v23);
}

uint64_t Inhabited<>.init<A>(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a2;
  v39 = a6;
  v33 = a4;
  v40 = a7;
  v35 = *(*(a5 + 8) + 8);
  HasHead = type metadata accessor for HasHead();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v34 = &v31 - v13;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v31 - v21;
  v23 = *(a3 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3059AC();
  (*(v18 + 16))(v22, a1, AssociatedTypeWitness);
  sub_25F30593C();
  v27 = v33;
  v28 = v38;
  (*(v14 + 16))(v32, v38, v33);
  sub_25F30592C();
  (*(v14 + 8))(v28, v27);
  v29 = v34;
  static Predicated.unverified(value:proof:)(v26, a1, v34);
  (*(v18 + 8))(a1, v31);
  (*(v23 + 8))(v26, a3);
  return Inhabited.init(predicated:)(v29, v40);
}

uint64_t Inhabited<>.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  v6 = *(a2 + 16);
  v7 = *(*(a3 + 8) + 8);
  HasHead = type metadata accessor for HasHead();
  WitnessTable = swift_getWitnessTable();
  v26 = type metadata accessor for Predicated();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v25 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v22, v21);
  (*(v13 + 16))(v17, v29, AssociatedTypeWitness);
  sub_25F30593C();
  v23 = v26;
  static Predicated.unverified(value:proof:)(v21, v4 + *(v26 + 36), v11);
  (*(v18 + 8))(v21, v6);
  return (*(v8 + 40))(v4, v11, v23);
}

uint64_t Inhabited<>.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a4;
  v31 = a5;
  v28[0] = a3;
  v29 = a1;
  v9 = *(a2 + 16);
  v10 = *(*(a4 + 8) + 8);
  v28[2] = type metadata accessor for HasHead();
  v28[1] = swift_getWitnessTable();
  v11 = type metadata accessor for Predicated();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v28 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v25);
  (*(v17 + 16))(v21, v29, v28[0]);
  sub_25F30592C();
  static Predicated.unverified(value:proof:)(v25, v6 + *(v11 + 36), v16);
  (*(v22 + 8))(v25, v9);
  return (*(v12 + 40))(v6, v16, v11);
}

uint64_t Inhabited<>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  v29 = a4;
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v26 - v9;
  v30 = *(v5 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v33 = *(v6 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v19);
  v21 = *(v12 + 16);
  v21(v16, v27, v11);
  sub_25F30595C();
  sub_25F3057AC();
  v22 = sub_25F3058FC();
  (v21)(v16);
  v22(v34, 0);
  (*(v31 + 8))(v10, v32);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v23 = type metadata accessor for Predicated();
  v24 = v26;
  (*(*(v23 - 8) + 8))(v26, v23);
  static Predicated.unverified(value:proof:)(v19, v16, v24);
  (*(v12 + 8))(v16, v11);
  return (*(v33 + 8))(v19, v6);
}

uint64_t Inhabited<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v36 = a2;
  v37 = a5;
  v33 = a1;
  v42 = *(*(a5 + 8) + 8);
  v10 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v33 - v12;
  v35 = swift_getAssociatedTypeWitness();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v35);
  v17 = &v33 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v10 - 8);
  v23 = *(v40 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v25);
  (*(v18 + 16))(v22, v33, a4);
  sub_25F30594C();
  sub_25F3057AC();
  v27 = sub_25F3058FC();
  v28 = v38;
  v29 = v34;
  v30 = AssociatedTypeWitness;
  (*(v38 + 16))(v34);
  v27(v43, 0);
  (*(v13 + 8))(v17, v35);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v31 = type metadata accessor for Predicated();
  (*(*(v31 - 8) + 8))(v7, v31);
  static Predicated.unverified(value:proof:)(v25, v29, v7);
  (*(v28 + 8))(v29, v30);
  return (*(v40 + 8))(v25, v10);
}

uint64_t Inhabited.init<A>(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v23 = a4;
  sub_25F3056FC();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  v20 = swift_getWitnessTable();
  v6 = type metadata accessor for Predicated();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v25 = sub_25F304A3C();
  (*(v11 + 16))(v15, a1, a3);
  sub_25F30568C();
  v18 = *(v11 + 8);
  v18(v17, a3);
  v24 = v21;
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F3056DC();
  v24 = v25;
  static Predicated.unverified(value:proof:)(&v24, a1, v10);
  v18(a1, a3);

  return Inhabited.init(predicated:)(v10, v23);
}

{
  v20 = a2;
  v22 = a4;
  v6 = type metadata accessor for IdentifiedSet();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v7 = type metadata accessor for Predicated();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  IdentifiedSet.init()(a3, &v24);
  IdentifiedSet.insert(_:)(a1, v6);
  (*(v12 + 8))(v15, v11);
  v23 = v20;
  v16 = sub_25F30539C();
  v17 = swift_getWitnessTable();
  IdentifiedSet.merge<A>(_:)(&v23, v6, v16, v17);

  v23 = v24;
  static Predicated.unverified(value:proof:)(&v23, a1, v10);
  (*(*(a3 - 8) + 8))(a1, a3);

  return Inhabited.init(predicated:)(v10, v22);
}

{
  v19 = a2;
  v21 = a4;
  v6 = type metadata accessor for OrderedIdentifiedSet();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v7 = type metadata accessor for Predicated();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  OrderedIdentifiedSet.init()(a3, &v23);
  OrderedIdentifiedSet.insert(_:)(a1, v6, v15);
  (*(v12 + 8))(v15, v11);
  *&v22 = v19;
  v16 = sub_25F30539C();
  swift_getWitnessTable();
  OrderedIdentifiedSet.append<A>(contentsOf:)(&v22, v6, v16);

  v22 = v23;
  static Predicated.unverified(value:proof:)(&v22, a1, v10);
  (*(*(a3 - 8) + 8))(a1, a3);

  return Inhabited.init(predicated:)(v10, v21);
}

uint64_t Inhabited.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v27);
  (*(v6 + 16))(v10, a1, v5);
  sub_25F30568C();
  v14 = *(v6 + 8);
  v14(v12, v5);
  v26 = v27;
  v15 = *(v4 + 24);

  v16 = sub_25F30562C();
  v18 = v17;
  v20 = v19;
  sub_25F30571C();

  sub_25F1AC3CC(v16, v18, v20 & 1);
  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v21 = type metadata accessor for Predicated();
  v22 = v25;
  (*(*(v21 - 8) + 8))(v25, v21);
  static Predicated.unverified(value:proof:)(&v26, v12, v22);
  v14(v12, v5);
}

{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v27);
  IdentifiedSet.insert(_:)(a1, v6);
  (*(v13 + 8))(v16, v12);
  v18 = v27;
  v25[1] = v27;
  v26 = v27;
  swift_bridgeObjectRetain_n();
  v19 = IdentifiedSet.startIndex.getter(v6);
  v21 = v20;
  LOBYTE(v13) = v22;

  v25[0] = v18;
  IdentifiedSet.subscript.getter(v19, v21, v13 & 1, v6);
  sub_25F1AC3CC(v19, v21, v13 & 1);

  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v23 = type metadata accessor for Predicated();
  (*(*(v23 - 8) + 8))(v3, v23);
  static Predicated.unverified(value:proof:)(&v26, v11, v3);
  (*(v8 + 8))(v11, v7);
}

{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v24);
  OrderedIdentifiedSet.insert(_:)(a1, v6, v16);
  (*(v13 + 8))(v16, v12);
  v18 = v24;
  v19 = v25;
  v23[0] = v24;
  v23[1] = v25;

  v22[0] = v18;
  v22[1] = v19;
  OrderedIdentifiedSet.subscript.getter(0, v6, v11);

  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v20 = type metadata accessor for Predicated();
  (*(*(v20 - 8) + 8))(v3, v20);
  static Predicated.unverified(value:proof:)(v23, v11, v3);
  (*(v8 + 8))(v11, v7);
}

uint64_t Inhabited.formUnion<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29[1] = a4;
  v9 = *(a2 + 16);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v13);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v31);
  (*(v17 + 16))(v20, a1, a3);
  sub_25F3056DC();
  v30 = v31;
  v22 = *(v9 + 24);

  v23 = sub_25F30562C();
  v25 = v24;
  LOBYTE(v20) = v26;
  sub_25F30571C();

  sub_25F1AC3CC(v23, v25, v20 & 1);
  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v27 = type metadata accessor for Predicated();
  (*(*(v27 - 8) + 8))(v5, v27);
  static Predicated.unverified(value:proof:)(&v30, v15, v5);
  (*(v11 + 8))(v15, v10);
}

uint64_t Inhabited.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v6);
  LOBYTE(a2) = IdentifiedSet.contains(_:)(a1, *(a2 + 16));

  return a2 & 1;
}

{
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v6);
  LOBYTE(a2) = OrderedIdentifiedSet.contains(_:)(a1, *(a2 + 16));

  return a2 & 1;
}

uint64_t Inhabited.appending<A, B>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a3;
  v19 = a4;
  v7 = *(a2 + 16);
  v20 = *(v7 + 16);
  v21 = a5;
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v12 = type metadata accessor for Predicated();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v23);
  v22 = v23;
  OrderedIdentifiedSet.appending<A>(_:)(a1, v7, v18, v19, &v24);

  v23 = v24;
  OrderedIdentifiedSet.subscript.getter(0, v7, v11);
  static Predicated.unverified(value:proof:)(&v24, v11, v15);
  (*(v8 + 8))(v11, v20);

  return Inhabited.init(predicated:)(v15, v21);
}

{
  v18 = a3;
  v19 = a4;
  v7 = *(a2 + 16);
  v20 = *(v7 + 16);
  v21 = a5;
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v12 = type metadata accessor for Predicated();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v23);
  v22 = v23;
  OrderedSet.appending<A>(contentsOf:)(a1, v7, v18, v19, &v24);

  v23 = v24;
  OrderedSet.subscript.getter(0, v7);
  static Predicated.unverified(value:proof:)(&v24, v11, v15);
  (*(v8 + 8))(v11, v20);

  return Inhabited.init(predicated:)(v15, v21);
}

uint64_t Inhabited.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v19);
  OrderedSet.append(_:)(a1, v6);
  v13 = v19;
  v14 = v20;
  v18[0] = v19;
  v18[1] = v20;

  v17[0] = v13;
  v17[1] = v14;
  OrderedSet.subscript.getter(0, v6);

  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v15 = type metadata accessor for Predicated();
  (*(*(v15 - 8) + 8))(v3, v15);
  static Predicated.unverified(value:proof:)(v18, v11, v3);
  (*(v8 + 8))(v11, v7);
}

uint64_t Inhabited.append<A, B>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v21);
  OrderedSet.append<A>(contentsOf:)(a1, v8, a3);
  v15 = v21;
  v16 = v22;
  v20[0] = v21;
  v20[1] = v22;

  v19[0] = v15;
  v19[1] = v16;
  OrderedSet.subscript.getter(0, v8);

  swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v17 = type metadata accessor for Predicated();
  (*(*(v17 - 8) + 8))(v4, v17);
  static Predicated.unverified(value:proof:)(v20, v13, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t Inhabited.appending<A, B>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v36 = a3;
  v4 = *(a2 + 16);
  v5 = v4[3];
  v30 = v4[2];
  v6 = v30;
  v7 = v5;
  v34 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v27 - v10;
  v33 = *(v7 - 8);
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v6 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  v27 = swift_getWitnessTable();
  v19 = type metadata accessor for Predicated();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v27 - v21;
  v23 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v23, &v39);
  v38[1] = v39;
  PredicatedWrapper.value.getter(a2, v23, v38);
  v37 = v38[0];
  OrderedDictionary.appending(contentsOf:)(&v37, v4, &v40);

  v39 = v40;
  OrderedDictionary.subscript.getter(v18, v15, 0, v4);
  v24 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  (*(v28 + 32))(v11, v18, v30);
  (*(v33 + 32))(&v11[v25], v15, v34);
  static Predicated.unverified(value:proof:)(&v40, v11, v22);
  (*(v35 + 8))(v11, v24);

  return Inhabited.init(predicated:)(v22, v36);
}

uint64_t Inhabited<>.uniqued()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v3 = a1;
  v31 = a3;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v26 - v8;
  v29 = sub_25F3056FC();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  v26[1] = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v26 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v3, v19, v18);
  v20 = Collection<>.uniqued()(v5, v27);
  (*(v15 + 8))(v18, v5);
  v32 = v20;
  v21 = sub_25F30562C();
  v23 = v22;
  LOBYTE(v3) = v24;
  sub_25F30571C();
  sub_25F1AC3CC(v21, v23, v3 & 1);
  static Predicated.unverified(value:proof:)(&v32, v9, v14);
  (*(v30 + 8))(v9, AssociatedTypeWitness);

  return Inhabited.init(predicated:)(v14, v31);
}

uint64_t Inhabited<>.orderedUniqued()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v30 = a4;
  v5 = *(a2 + 8);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v25 - v10;
  v12 = type metadata accessor for OrderedSet();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v13 = type metadata accessor for Predicated();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v22, v21);
  v23 = Collection<>.orderedUniqued()(v6, v26, v25, &v32);
  (*(v18 + 8))(v21, v6, v23);
  v31 = v32;
  OrderedSet.subscript.getter(0, v12);
  static Predicated.unverified(value:proof:)(&v32, v11, v17);
  (*(v29 + 8))(v11, v28);

  return Inhabited.init(predicated:)(v17, v30);
}

uint64_t Inhabited<>.identified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v5 = *(a2 + 8);
  v30 = a3;
  v31 = v5;
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v34 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v29 - v10;
  v12 = type metadata accessor for IdentifiedSet();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v13 = type metadata accessor for Predicated();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v22, v21);
  Sequence<>.identified()(v6, v31, v30, &v38);
  (*(v18 + 8))(v21, v6);
  v23 = v38;
  v37 = v38;
  v24 = IdentifiedSet.startIndex.getter(v12);
  v26 = v25;
  LOBYTE(v18) = v27;
  v36 = v23;
  IdentifiedSet.subscript.getter(v24, v25, v27 & 1, v12);
  sub_25F1AC3CC(v24, v26, v18 & 1);
  static Predicated.unverified(value:proof:)(&v38, v11, v17);
  (*(v34 + 8))(v11, v33);

  return Inhabited.init(predicated:)(v17, v35);
}

uint64_t Inhabited<>.orderedIdentified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v5 = *(a2 + 8);
  v25[0] = a3;
  v25[1] = v5;
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v25 - v10;
  v12 = type metadata accessor for OrderedIdentifiedSet();
  v25[2] = swift_getWitnessTable();
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v13 = type metadata accessor for Predicated();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v25 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v21);
  v23 = Sequence<>.orderedIdentified()(v6, &v30);
  (*(v18 + 8))(v21, v6, v23);
  v29 = v30;
  OrderedIdentifiedSet.subscript.getter(0, v12, v11);
  static Predicated.unverified(value:proof:)(&v30, v11, v17);
  (*(v27 + 8))(v11, v26);

  return Inhabited.init(predicated:)(v17, v28);
}

uint64_t Inhabited.invert<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v73 = *(a1 + 16);
  v4 = *(v73 + 16);
  v5 = v4[2];
  v6 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead();
  v64 = swift_getWitnessTable();
  v8 = type metadata accessor for Predicated();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v62 - v11;
  v71 = *(a1 - 8);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v72 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v5 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v81 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = v62 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  v23 = *(v4 - 1);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v84 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v62 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v62 - v30;
  Inhabited.first.getter(a1, v62 - v30);
  v82 = *(v23 + 16);
  v83 = v23 + 16;
  v82(v29, v31, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v23 + 8))(v31, v4);
    (*(*(v4[3] - 8) + 32))(v67, v29, v4[3]);
    type metadata accessor for Inhabited();
    v32 = v4[4];
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  v78 = v23;
  v62[1] = WitnessTable;
  v79 = v6;
  v33 = v66;
  v34 = v22;
  v76 = *(v66 + 32);
  v77 = v66 + 32;
  v76(v22, v29, v5);
  v35 = sub_25F23C8D4(v5, v5);
  v36 = *(v35 + 52);
  v37 = *(v33 + 72);
  v38 = (*(v33 + 80) + *(v35 + 48)) & ~*(v33 + 80);
  swift_allocObject();
  v39 = sub_25F30527C();
  v74 = *(v33 + 16);
  v75 = v33 + 16;
  v74(v40, v22, v5);
  sub_25F1F7314();
  v69 = v39;
  v88 = v39;
  (*(v71 + 16))(v72, v2, a1);
  v86 = 1;
  v85 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30587C();
  v41 = v87[0];
  v42 = v87[1];
  v44 = v87[2];
  v43 = v87[3];
  swift_unknownObjectRetain();
  v45 = sub_25F305DEC();
  swift_unknownObjectRelease();
  if (v45 == sub_25F305E0C())
  {
LABEL_10:
    (*(v78 + 8))(v31, v4);
    swift_unknownObjectRelease();
    v87[0] = v69;
    v58 = v63;
    static Predicated.unverified(value:proof:)(v87, v34, v63);

    (*(v33 + 8))(v34, v5);
    Inhabited.init(predicated:)(v58, v67);
    type metadata accessor for Inhabited();
    v59 = v4[3];
    v60 = v4[4];
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  v62[0] = v34;
  v73 = v5;
  v71 = v43 >> 1;
  v69 = (v33 + 8);
  v72 = v45;
  v70 = v31;
  v68 = v43;
  while (1)
  {
    result = sub_25F305DFC();
    if (v72 < v44 || v71 <= v45)
    {
      break;
    }

    v47 = v44;
    v48 = v41;
    v49 = v78;
    v50 = (v42 + *(v78 + 72) * v45);
    v51 = v42;
    v52 = v84;
    v82(v84, v50, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_unknownObjectRelease();

      (*v69)(v62[0], v73);
      (*(v49 + 8))(v70, v4);
      (*(*(v4[3] - 8) + 32))(v67, v52, v4[3]);
      type metadata accessor for Inhabited();
      v61 = v4[4];
      sub_25F30678C();
      return swift_storeEnumTagMultiPayload();
    }

    ++v45;
    v53 = v80;
    v54 = v33;
    v55 = v73;
    v76(v80, v52, v73);
    v74(v81, v53, v55);
    sub_25F30533C();
    v56 = v55;
    v33 = v54;
    (*v69)(v53, v56);
    v41 = v48;
    v44 = v47;
    v57 = sub_25F305E0C();
    v31 = v70;
    v42 = v51;
    if (v45 == v57)
    {
      v69 = v88;
      v5 = v73;
      v34 = v62[0];
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Sequence.inhabited()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Inhabited();
  (*(v5 + 16))(v8, v2, a1);
  WitnessTable = swift_getWitnessTable();
  return PredicatedWrapper.init(_:)(v8, v9, WitnessTable, a2);
}

uint64_t sub_25F23C8D4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC8, &qword_25F309FD0);
  }

  else
  {

    return sub_25F3064EC();
  }
}

uint64_t sub_25F23C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = *(*(a4 + 8) + 8);
  v31 = a4;
  v32 = v7;
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &AssociatedTypeWitness - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &AssociatedTypeWitness - v16;
  v30 = *(v8 - 8);
  v18 = *(v30 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &AssociatedTypeWitness - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v20);
  v22 = a2;
  (*(v13 + 16))(v17, a2, v12);
  v24 = AssociatedTypeWitness;
  v23 = v29;
  (*(v33 + 16))(v11, v29, AssociatedTypeWitness);
  v25 = v31;
  sub_25F304D9C();
  sub_25F236C80(v22, v4, v23, v25, v11);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v26 = type metadata accessor for Predicated();
  (*(*(v26 - 8) + 8))(v4, v26);
  static Predicated.unverified(value:proof:)(v20, v11, v4);
  (*(v33 + 8))(v11, v24);
  return (*(v30 + 8))(v20, v8);
}

uint64_t sub_25F23CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a1;
  v34 = a4;
  v35 = *(*(a4 + 8) + 8);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v30 - v11;
  v30 = swift_getAssociatedTypeWitness();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v30);
  v15 = &v30 - v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = sub_25F3059CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  v31 = *(v8 - 8);
  v22 = *(v31 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v24);
  (*(v17 + 16))(v21, a2, v16);
  (*(v12 + 16))(v15, v33, v30);
  v26 = v34;
  sub_25F304D7C();
  v27 = v32;
  sub_25F23736C(a2, v5, v24, v8, v26, v32);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  v28 = type metadata accessor for Predicated();
  (*(*(v28 - 8) + 8))(v5, v28);
  static Predicated.unverified(value:proof:)(v24, v27, v5);
  (*(v36 + 8))(v27, v37);
  return (*(v31 + 8))(v24, v8);
}

uint64_t sub_25F23D100(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_25F23D11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_25F23D140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_25F23D1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_25F23D270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25F23D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_25F23D2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t keypath_getTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 16);
  v8 = *(v6 - 8);
  v9 = *(*(v8 + 8) + 8);
  v10 = type metadata accessor for Inhabited();
  return a4(a2, v10, v8);
}

uint64_t keypath_setTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = *(*(v9 + 8) + 8);
  v11 = type metadata accessor for Inhabited();
  return a5(a1, a3, v11, v9);
}

uint64_t sub_25F23D3EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for HasHead();
  swift_getWitnessTable();
  result = type metadata accessor for Predicated();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F23D48C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_25F23D704(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_25F23DA24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 120))
  {
    v5 = *(v0 + 120);
  }

  else
  {
    v6 = sub_25F30546C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_25F23F67C();
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    v5 = sub_25F1B17E4(0, 0, v4, &unk_25F30F328, v8);
    v9 = *(v0 + 120);
    *(v0 + 120) = v5;
  }

  return v5;
}

uint64_t sub_25F23DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_25F23DB84, a4, 0);
}

uint64_t sub_25F23DB84()
{
  v1 = *(v0[8] + 112);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v0[11] = 0;
    v0[12] = v3;
    sub_25F1BF03C(v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = *(v5 + 8);
    v15 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_25F23DD40;

    return v15(v4, v5);
  }

  else
  {
    v10 = v0[7];
    v11 = sub_25F23F784(MEMORY[0x277D84F90]);
    v13 = v12;

    *v10 = v11;
    v10[1] = v13;
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_25F23DD40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_25F23DE60, v4, 0);
}

uint64_t sub_25F23DE60()
{
  v1 = v0[14];
  result = v0[12];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[12];
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v16 = v4 + v3;
    }

    else
    {
      v16 = v4;
    }

    v7 = sub_25F2F0824(isUniquelyReferenced_nonNull_native, v16, 1, v0[12]);
    if (*(v1 + 16))
    {
LABEL_5:
      v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
      result = sub_25F3044DC();
      v9 = *(result - 8);
      if (v8 >= v3)
      {
        v10 = v0[14];
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = *(v9 + 72);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v13 = *(v7 + 16);
        v14 = __OFADD__(v13, v3);
        v15 = v13 + v3;
        if (!v14)
        {
          *(v7 + 16) = v15;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v17 = v0[14];

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v18 = v0[11] + 1;
  if (v18 == v0[10])
  {
    v19 = v0[7];
    v20 = sub_25F23F784(v7);
    v22 = v21;

    *v19 = v20;
    v19[1] = v22;
    v23 = v0[1];

    return v23();
  }

  else
  {
    v0[11] = v18;
    v0[12] = v7;
    sub_25F1BF03C(v0[9] + 40 * v18 + 32, (v0 + 2));
    v24 = v0[5];
    v25 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v24);
    v26 = *(v25 + 8);
    v29 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[13] = v28;
    *v28 = v0;
    v28[1] = sub_25F23DD40;

    return v29(v24, v25);
  }
}

uint64_t BuiltProductPathResolver.__allocating_init(providers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = 0;
  return v2;
}

uint64_t BuiltProductPathResolver.init(providers:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_25F23E180(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_25F23E1A4, v2, 0);
}

uint64_t sub_25F23E1A4()
{
  v1 = v0[6];
  v2 = sub_25F23DA24();
  v0[7] = v2;
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25F23E258;

  return MEMORY[0x282200460](v0 + 2, v2, &type metadata for BuiltProductPathResolver.Cache);
}

uint64_t sub_25F23E258()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_25F23E384, v3, 0);
}

uint64_t sub_25F23E384()
{
  v1 = sub_25F23E418(v0[4], v0[5], v0[2], v0[3]);
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_25F23E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BC8, &unk_25F30F308);
  v5 = *(*(v81 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v81);
  v86 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v80 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v78 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v82 = &v78 - v16;
  v17 = sub_25F3044DC();
  v18 = *(v17 - 8);
  v83 = v17;
  v84 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v79 = &v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v78 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v78 - v28;
  v30 = sub_25F304DDC();
  v31 = [v30 lastPathComponent];

  v32 = sub_25F304E0C();
  v34 = v33;

  if (!*(a3 + 16) || (v35 = sub_25F219234(v32, v34), (v36 & 1) == 0))
  {
    v41 = v89;
    if (*(v89 + 16))
    {
      v42 = sub_25F219234(v32, v34);
      v44 = v43;

      if (v44)
      {
        sub_25F21FC08(*(v41 + 56) + *(v88 + 72) * v42, v15);
        v45 = v82;
        sub_25F23F614(v15, v82, &qword_27FD52C48, &qword_25F308100);
        v46 = sub_25F304DDC();
        v47 = [v46 pathComponents];

        v48 = sub_25F30525C();
        v49 = sub_25F1BF47C(v48);

        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BD0, &qword_25F30F318) + 36);
        v51 = v81;
        v52 = *(v81 + 48);
        v53 = v86;
        *v86 = 0;
        v54 = v83;
        v55 = v84;
        v56 = *(v84 + 16);
        v85 = v52;
        v87 = v56;
        v88 = v84 + 16;
        v56(v53 + v52, v45 + v50, v83);
        v57 = v78;
        sub_25F21FC08(v45, v78);
        v58 = *v57;

        sub_25F1AF698(v57, &qword_27FD52C48, &qword_25F308100);
        v59 = *(v58 + 16);
        if (v59)
        {
          v89 = v49;
          v60 = 0;
          v61 = *(v55 + 80);
          v78 = v58;
          v62 = v58 + ((v61 + 32) & ~v61);
          v63 = *(v55 + 72);
          v64 = (v55 + 8);
          v65 = (v55 + 40);
          do
          {
            v87(v22, v62, v54);
            sub_25F3044BC();
            v66 = v54;
            v67 = sub_25F304DDC();

            v68 = [v67 pathComponents];

            v69 = sub_25F30525C();
            v70 = sub_25F1BF47C(v69);

            v71 = *(sub_25F23EDC0(v89, v70) + 16);

            if (v60 >= v71)
            {
              (*v64)(v22, v66);
            }

            else
            {
              v73 = v85;
              v72 = v86;
              *v86 = v71;
              (*v65)(&v72[v73], v22, v66);
              v60 = v71;
            }

            v54 = v66;
            v62 += v63;
            --v59;
          }

          while (v59);

          v51 = v81;
          v55 = v84;
        }

        else
        {
        }

        v75 = v80;
        sub_25F23F614(v86, v80, &qword_27FD55BC8, &unk_25F30F308);
        v76 = v75 + *(v51 + 48);
        v77 = v79;
        (*(v55 + 32))(v79, v76, v54);
        v40 = sub_25F3044BC();
        (*(v55 + 8))(v77, v54);
        sub_25F1AF698(v82, &qword_27FD52C48, &qword_25F308100);
        return v40;
      }
    }

    else
    {
    }

    return 0;
  }

  v37 = v35;

  v38 = v83;
  v39 = v84;
  (*(v84 + 16))(v27, *(a3 + 56) + *(v84 + 72) * v37, v83);
  (*(v39 + 32))(v29, v27, v38);
  v40 = sub_25F3044BC();
  (*(v39 + 8))(v29, v38);
  return v40;
}

uint64_t BuiltProductPathResolver.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BuiltProductPathResolver.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of BuiltProductPathResolver.resolve(path:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F23ECAC;

  return v10(a1, a2);
}

uint64_t sub_25F23ECAC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_25F23EDC0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25F23F014(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_25F23EF84(v12, v6, a2, a1);

    MEMORY[0x25F8D9510](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_25F23EF84(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25F23F014(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25F23F014(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_25F30671C();

      sub_25F304F0C();
      v27 = sub_25F30676C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_25F30659C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25F23F3F0(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_25F30671C();

      sub_25F304F0C();
      v41 = sub_25F30676C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_25F30659C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F23F3F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
  result = sub_25F305F3C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_25F30671C();

    sub_25F304F0C();
    result = sub_25F30676C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25F23F614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25F23F67C()
{
  result = qword_27FD55BD8;
  if (!qword_27FD55BD8)
  {
    type metadata accessor for BuiltProductPathResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55BD8);
  }

  return result;
}

uint64_t sub_25F23F6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F23DB64(a1, v4, v5, v6);
}

uint64_t sub_25F23F784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550B0, &unk_25F30F330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v124 = &v118 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BD0, &qword_25F30F318);
  v5 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v129 = (&v118 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v128 = *(v7 - 8);
  v8 = *(v128 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v123 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v118 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v118 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v118 - v16;
  MEMORY[0x28223BE20](v15);
  v139 = (&v118 - v17);
  v18 = sub_25F3044DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v131 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v126 = &v118 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v136 = &v118 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v122 = &v118 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v132 = &v118 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v118 - v31;
  v33 = MEMORY[0x277D84F90];
  v34 = sub_25F1B637C(MEMORY[0x277D84F90]);
  v147 = sub_25F1B6568(v33);
  v35 = *(a1 + 16);
  if (!v35)
  {
    return v34;
  }

  v37 = *(v19 + 16);
  v36 = v19 + 16;
  v144 = v37;
  v121 = *(v36 + 64);
  v137 = (v121 + 32) & ~v121;
  v38 = a1 + v137;
  v39 = (v36 + 16);
  v140 = (v36 - 8);
  v145 = *(v36 + 56);
  v119 = (v36 + 40);
  v125 = (v36 + 24);
  v118 = xmmword_25F3077D0;
  v141 = v18;
  v138 = v36;
  v40 = v126;
  v142 = v32;
  v120 = (v36 + 16);
  while (1)
  {
    v143 = v35;
    v144(v32, v38, v18);
    v43 = sub_25F30445C();
    v45 = v44;
    v46 = *(v147 + 16);
    v148 = v44;
    v146 = v43;
    if (v46)
    {
      v47 = sub_25F219234(v43, v44);
      v45 = v148;
      if (v48)
      {
        v49 = *(v128 + 72);
        v50 = v127;
        sub_25F21FC08(*(v147 + 56) + v49 * v47, v127);
        v51 = v50;
        v52 = v139;
        sub_25F23F614(v51, v139, &qword_27FD52C48, &qword_25F308100);
        v53 = *v52;
        v144(v136, v32, v18);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_25F2F0824(0, *(v53 + 2) + 1, 1, v53);
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_25F2F0824(v54 > 1, v55 + 1, 1, v53);
        }

        *(v53 + 2) = v55 + 1;
        (*v39)(&v53[v137 + v55 * v145], v136, v18);
        v56 = v129;
        v57 = v139;
        v144(v129 + *(v134 + 36), v139 + *(v134 + 36), v18);
        *v56 = v53;
        sub_25F2403C0(v56, v57, &qword_27FD55BD0, &qword_25F30F318);
        sub_25F21FC08(v57, v135);
        v58 = v147;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v58;
        v60 = v146;
        v61 = sub_25F219234(v146, v148);
        v63 = *(v58 + 16);
        v64 = (v62 & 1) == 0;
        v65 = __OFADD__(v63, v64);
        v66 = v63 + v64;
        if (v65)
        {
          goto LABEL_45;
        }

        v67 = v62;
        if (*(v58 + 24) >= v66)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v111 = v61;
            sub_25F21E8B4();
            v61 = v111;
            v40 = v126;
            v18 = v141;
            if (v67)
            {
              goto LABEL_34;
            }

            goto LABEL_40;
          }
        }

        else
        {
          sub_25F21BD1C(v66, isUniquelyReferenced_nonNull_native);
          v61 = sub_25F219234(v60, v148);
          if ((v67 & 1) != (v68 & 1))
          {
            goto LABEL_48;
          }
        }

        v18 = v141;
        if (v67)
        {
LABEL_34:
          v108 = v61;

          v147 = v149;
          sub_25F2403C0(v135, v149[7] + v108 * v49, &qword_27FD52C48, &qword_25F308100);
          v32 = v142;
          (*v140)(v142, v18);
LABEL_42:
          sub_25F1AF698(v139, &qword_27FD52C48, &qword_25F308100);
          goto LABEL_4;
        }

LABEL_40:
        v112 = v149;
        v149[(v61 >> 6) + 8] |= 1 << v61;
        v113 = (v112[6] + 16 * v61);
        v114 = v148;
        *v113 = v146;
        v113[1] = v114;
        sub_25F23F614(v135, v112[7] + v61 * v49, &qword_27FD52C48, &qword_25F308100);
        v32 = v142;
        (*v140)(v142, v18);
        v115 = v112[2];
        v65 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v65)
        {
          goto LABEL_47;
        }

        v147 = v112;
        v112[2] = v116;
        goto LABEL_42;
      }
    }

    if (v34[2])
    {
      v69 = sub_25F219234(v146, v45);
      v45 = v148;
      if (v70)
      {
        v71 = v122;
        v72 = v39;
        v73 = v144;
        v144(v122, v34[7] + v69 * v145, v18);
        v74 = v132;
        v130 = *v72;
        v130(v132, v71, v18);
        v75 = v133;
        v76 = *(v134 + 36);
        v73(&v133[v76], v74, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BE0, &unk_25F316540);
        v77 = v137;
        v78 = swift_allocObject();
        *(v78 + 16) = v118;
        v73((v78 + v77), v142, v18);
        v73(v131, &v75[v76], v18);
        v79 = sub_25F2F0824(0, 1, 1, MEMORY[0x277D84F90]);
        v81 = *(v79 + 2);
        v80 = *(v79 + 3);
        if (v81 >= v80 >> 1)
        {
          v79 = sub_25F2F0824(v80 > 1, v81 + 1, 1, v79);
        }

        *(v79 + 2) = v81 + 1;
        v82 = v130;
        v18 = v141;
        v39 = v120;
        v130(&v79[v137 + v81 * v145], v131, v141);
        v149 = v79;
        sub_25F1BA4CC(v78);
        v83 = v133;
        *v133 = v149;
        v84 = v123;
        sub_25F23F614(v83, v123, &qword_27FD52C48, &qword_25F308100);
        v85 = v147;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v149 = v85;
        v87 = v146;
        v88 = v148;
        sub_25F210C90(v84, v146, v148, v86);
        v147 = v149;
        v89 = sub_25F219234(v87, v88);
        v40 = v126;
        if (v90)
        {
          v91 = v89;
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v149 = v34;
          v93 = v124;
          v32 = v142;
          if (!v92)
          {
            sub_25F21E634();
            v93 = v124;
            v34 = v149;
          }

          v94 = *(v34[6] + 16 * v91 + 8);

          v82(v93, v34[7] + v91 * v145, v18);
          sub_25F1BB6D4(v91, v34);
          v95 = 0;
        }

        else
        {
          v95 = 1;
          v93 = v124;
          v32 = v142;
        }

        (*v119)(v93, v95, 1, v18);

        sub_25F1AF698(v93, &qword_27FD550B0, &unk_25F30F330);
        v109 = *v140;
        (*v140)(v132, v18);
        v109(v32, v18);
        v42 = v143;
        goto LABEL_5;
      }
    }

    v144(v40, v32, v18);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v34;
    v97 = sub_25F219234(v146, v45);
    v99 = v34[2];
    v100 = (v98 & 1) == 0;
    v65 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (v65)
    {
      break;
    }

    v102 = v98;
    if (v34[3] >= v101)
    {
      if ((v96 & 1) == 0)
      {
        v110 = v97;
        sub_25F21E634();
        v97 = v110;
        v18 = v141;
        if ((v102 & 1) == 0)
        {
LABEL_30:
          v34 = v149;
          v149[(v97 >> 6) + 8] |= 1 << v97;
          v104 = (v34[6] + 16 * v97);
          v105 = v148;
          *v104 = v146;
          v104[1] = v105;
          (*v39)((v34[7] + v97 * v145), v40, v18);
          v32 = v142;
          (*v140)(v142, v18);
          v106 = v34[2];
          v65 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v65)
          {
            goto LABEL_46;
          }

          v34[2] = v107;
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_25F21B99C(v101, v96);
      v97 = sub_25F219234(v146, v148);
      if ((v102 & 1) != (v103 & 1))
      {
        goto LABEL_48;
      }
    }

    v18 = v141;
    if ((v102 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_3:
    v41 = v97;

    v34 = v149;
    (*v125)(v149[7] + v41 * v145, v40, v18);
    v32 = v142;
    (*v140)(v142, v18);
LABEL_4:
    v42 = v143;
LABEL_5:
    v38 += v145;
    v35 = v42 - 1;
    if (!v35)
    {
      return v34;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2403C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t audit_token_t.pid.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v5.val = a1;
  *&v5.val[2] = a2;
  *&v5.val[4] = a3;
  *&v5.val[6] = a4;
  return audit_token_to_pid(&v5);
}

uint64_t static audit_token_t.current.getter()
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  current_process_audit_token = get_current_process_audit_token(v5);
  if (current_process_audit_token)
  {
    v1 = current_process_audit_token;
    sub_25F240554();
    swift_allocError();
    *v2 = v1;
    result = swift_willThrow();
  }

  else
  {
    result = *&v5[0];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_25F240554()
{
  result = qword_27FD55BE8;
  if (!qword_27FD55BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55BE8);
  }

  return result;
}

uint64_t Query.uncachedValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v3, a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t Query.debugDescription.getter()
{
  swift_getDynamicType();

  return sub_25F30685C();
}

uint64_t NSThread.currentExecutionExclusivity.getter()
{
  sub_25F24078C();
  v0 = [objc_opt_self() currentThread];
  v1 = sub_25F305B7C();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F24078C()
{
  result = qword_27FD55BF0;
  if (!qword_27FD55BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD55BF0);
  }

  return result;
}

uint64_t sub_25F2407D8()
{
  v1 = *v0;
  sub_25F24078C();
  v2 = [objc_opt_self() currentThread];
  LOBYTE(v1) = sub_25F305B7C();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t TimingRecord.ID.init()@<X0>(void *a1@<X8>)
{
  v3 = 0;
  result = MEMORY[0x25F8D9530](&v3, 8);
  *a1 = v3;
  return result;
}

void TimingRecord.parent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t TimingRecord.parent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t TimingRecord.range.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimingRecord(0) + 24);

  return sub_25F2409B8(a1, v3);
}

uint64_t sub_25F2409B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TimingRecord.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimingRecord(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 TimingRecord.category.setter(__n128 *a1)
{
  v10 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u8[0];
  v7 = (v1 + *(type metadata accessor for TimingRecord(0) + 28));
  v8 = v7->n128_u64[1];

  result = v10;
  *v7 = v10;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u64[1] = v3;
  v7[2].n128_u8[0] = v4;
  v7[2].n128_u64[1] = v5;
  v7[3].n128_u8[0] = v6;
  return result;
}

uint64_t TimingRecord.tag.getter()
{
  v1 = (v0 + *(type metadata accessor for TimingRecord(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TimingRecord.tag.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TimingRecord(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TimingRecord.details.getter()
{
  v1 = (v0 + *(type metadata accessor for TimingRecord(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TimingRecord.details.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TimingRecord(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double TimingRecord.elapsedTime.getter()
{
  v1 = type metadata accessor for TimingRecord.Point(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = v0 + *(type metadata accessor for TimingRecord(0) + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v8 + *(v9 + 36), v7);
  sub_25F30458C();
  v11 = v10;
  v12 = sub_25F30462C();
  v13 = *(*(v12 - 8) + 8);
  v13(v7, v12);
  sub_25F240E98(v8, v5);
  sub_25F30458C();
  v15 = v14;
  v13(v5, v12);
  return v11 - v15;
}

uint64_t sub_25F240E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimingRecord.Point(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimingRecord.init(id:parent:range:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v25 = a4[3];
  v24 = *(a4 + 32);
  v23 = a4[5];
  v22 = *(a4 + 48);
  v31 = 0;
  MEMORY[0x25F8D9530](&v31, 8);
  *a9 = v31;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  if (v11 == 1)
  {
    v31 = 0;
    MEMORY[0x25F8D9530](&v31, 8);
    v10 = v31;
  }

  v17 = type metadata accessor for TimingRecord(0);
  v18 = a9 + v17[8];
  v19 = (a9 + v17[9]);
  *a9 = v10;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  result = sub_25F23F614(a3, a9 + v17[6], &qword_27FD55BF8, &qword_25F30F450);
  v21 = a9 + v17[7];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = v16;
  *(v21 + 24) = v25;
  *(v21 + 32) = v24;
  *(v21 + 40) = v23;
  *(v21 + 48) = v22;
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t TimingRecord.init(id:parent:start:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v22 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v24 = &v43 - v23;
  v43 = *a1;
  v25 = *a2;
  LODWORD(v23) = *(a2 + 8);
  v49 = *(a1 + 8);
  v50 = v23;
  v26 = *a4;
  v27 = a4[1];
  v28 = a4[2];
  v54 = a4[3];
  v55 = v28;
  v53 = *(a4 + 32);
  v29 = a4[5];
  v51 = v25;
  v52 = v29;
  v30 = *(a4 + 48);
  result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v44 = v30;
    v45 = v27;
    v46 = v26;
    v47 = a8;
    sub_25F240E98(a3, v21);
    sub_25F240E98(a3, &v21[*(v15 + 48)]);
    sub_25F1B7174(v21, v19, &qword_27FD55C00, &qword_25F30F458);
    v32 = *(v15 + 48);
    sub_25F243B54(v19, v24, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v19[v32], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v21, v19, &qword_27FD55C00, &qword_25F30F458);
    sub_25F243B54(&v19[*(v15 + 48)], &v24[*(v48 + 36)], type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(v19, type metadata accessor for TimingRecord.Point);
    v59 = 0;
    MEMORY[0x25F8D9530](&v59, 8);
    *a9 = v59;
    *(a9 + 8) = 0;
    *(a9 + 16) = 1;
    v33 = v24;
    if (v49)
    {
      v59 = 0;
      MEMORY[0x25F8D9530](&v59, 8);
      sub_25F243BBC(a3, type metadata accessor for TimingRecord.Point);
      v34 = v59;
      v35 = v47;
    }

    else
    {
      sub_25F243BBC(a3, type metadata accessor for TimingRecord.Point);
      v35 = v47;
      v34 = v43;
    }

    v36 = type metadata accessor for TimingRecord(0);
    v37 = a9 + v36[8];
    v38 = (a9 + v36[9]);
    v39 = v51;
    *a9 = v34;
    *(a9 + 8) = v39;
    *(a9 + 16) = v50;
    result = sub_25F23F614(v33, a9 + v36[6], &qword_27FD55BF8, &qword_25F30F450);
    v40 = a9 + v36[7];
    v41 = v45;
    *v40 = v46;
    *(v40 + 8) = v41;
    v42 = v54;
    *(v40 + 16) = v55;
    *(v40 + 24) = v42;
    *(v40 + 32) = v53;
    *(v40 + 40) = v52;
    *(v40 + 48) = v44;
    *v37 = v56;
    *(v37 + 8) = v57 & 1;
    *v38 = v58;
    v38[1] = v35;
  }

  return result;
}

uint64_t TimingRecord.updateEndTime(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TimingRecord.Point(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = v1 + *(type metadata accessor for TimingRecord(0) + 24);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  sub_25F240E98(v18, v16);
  sub_25F240E98(v17, v14);
  result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_25F243B54(v14, v9, type metadata accessor for TimingRecord.Point);
    sub_25F243B54(v16, &v9[*(v3 + 48)], type metadata accessor for TimingRecord.Point);
    sub_25F1B7174(v9, v7, &qword_27FD55C00, &qword_25F30F458);
    v20 = *(v3 + 48);
    sub_25F1AF698(v17, &qword_27FD55BF8, &qword_25F30F450);
    sub_25F243B54(v7, v17, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v7[v20], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v9, v7, &qword_27FD55C00, &qword_25F30F458);
    v21 = *(v3 + 48);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    sub_25F243B54(&v7[v21], v17 + *(v22 + 36), type metadata accessor for TimingRecord.Point);
    return sub_25F243BBC(v7, type metadata accessor for TimingRecord.Point);
  }

  return result;
}

uint64_t TimingRecord.hash(into:)()
{
  v1 = v0;
  MEMORY[0x25F8D8900](*v0);
  if (*(v0 + 16) == 1)
  {
    sub_25F30673C();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_25F30673C();
    MEMORY[0x25F8D8900](v2);
  }

  v3 = type metadata accessor for TimingRecord(0);
  v4 = v0 + v3[6];
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);
  sub_25F304BDC();
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450) + 36);
  sub_25F304BDC();
  MEMORY[0x25F8D8900](*(v1 + v3[7] + 40));
  v6 = (v1 + v3[8]);
  if (*(v6 + 8) == 1)
  {
    sub_25F30673C();
  }

  else
  {
    v7 = *v6;
    sub_25F30673C();
    MEMORY[0x25F8D8900](v7);
  }

  v8 = (v1 + v3[9]);
  if (!v8[1])
  {
    return sub_25F30673C();
  }

  v9 = *v8;
  sub_25F30673C();

  return sub_25F304F0C();
}

uint64_t TimingRecord.hashValue.getter()
{
  sub_25F30671C();
  TimingRecord.hash(into:)();
  return sub_25F30676C();
}

uint64_t sub_25F2417FC()
{
  sub_25F30671C();
  TimingRecord.hash(into:)();
  return sub_25F30676C();
}

uint64_t sub_25F241840()
{
  sub_25F30671C();
  TimingRecord.hash(into:)();
  return sub_25F30676C();
}

uint64_t TimingRecord.ID.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t TimingRecord.Point.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30462C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimingRecord.Point.timestamp.setter(uint64_t a1)
{
  v3 = sub_25F30462C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TimingRecord.Point.init(timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TimingRecord.Point.hash(into:)()
{
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);

  return sub_25F304BDC();
}

uint64_t TimingRecord.Point.hashValue.getter()
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F241BC8()
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F241C50()
{
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);

  return sub_25F304BDC();
}

uint64_t sub_25F241CD4()
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t TimingRecord.Point.description.getter()
{
  sub_25F30458C();
  sub_25F30561C();
  return 0;
}

uint64_t sub_25F241E14()
{
  sub_25F30458C();
  sub_25F30561C();
  return 0;
}

uint64_t ClosedRange<>.isEmpty.getter()
{
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450) + 36);

  return _s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0();
}

double ClosedRange<>.elapsedTime.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TimingRecord.Point(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v1 + *(v9 + 36), v8);
  sub_25F30458C();
  v11 = v10;
  v12 = sub_25F30462C();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  sub_25F240E98(v1, v6);
  sub_25F30458C();
  v15 = v14;
  v13(v6, v12);
  return v11 - v15;
}

uint64_t ClosedRange<>.pointAtPercent(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for TimingRecord.Point(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F240E98(v1, v5);
  sub_25F30458C();
  v6 = sub_25F30462C();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v1 + *(v8 + 36), v5);
  sub_25F30458C();
  v7(v5, v6);
  return sub_25F30457C();
}

uint64_t ClosedRange<>.addingSecondsToLowerBound(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v3 = *(*(v34 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - v7;
  v8 = type metadata accessor for TimingRecord.Point(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_25F30462C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F240E98(v2, v17);
  sub_25F30458C();
  v23 = *(v19 + 8);
  v23(v17, v18);
  sub_25F30457C();
  (*(v19 + 16))(v15, v22, v18);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v24 = *(v32 + 36);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v25 = v2 + v24;
  }

  else
  {
    v25 = v15;
  }

  sub_25F240E98(v25, v12);
  v26 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  sub_25F243BBC(v15, type metadata accessor for TimingRecord.Point);
  result = (v23)(v22, v18);
  if (v26)
  {
    __break(1u);
  }

  else
  {
    v28 = v33;
    sub_25F243B54(v12, v33, type metadata accessor for TimingRecord.Point);
    v29 = v34;
    sub_25F240E98(v2 + v24, v28 + *(v34 + 48));
    sub_25F1B7174(v28, v6, &qword_27FD55C00, &qword_25F30F458);
    v30 = *(v29 + 48);
    v31 = v35;
    sub_25F243B54(v6, v35, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v6[v30], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v28, v6, &qword_27FD55C00, &qword_25F30F458);
    sub_25F243B54(&v6[*(v29 + 48)], v31 + *(v32 + 36), type metadata accessor for TimingRecord.Point);
    return sub_25F243BBC(v6, type metadata accessor for TimingRecord.Point);
  }

  return result;
}

uint64_t TimingRecord.ID.description.getter()
{
  v2 = *v0;
  sub_25F243B00();
  return sub_25F30508C();
}

uint64_t sub_25F2424BC()
{
  v2 = *v0;
  sub_25F243B00();
  return sub_25F30508C();
}

uint64_t Collection<>.asTextRowsForDiagnostics.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TimingRecord.Point(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v90 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v84 - v9;
  v10 = type metadata accessor for TimingRecord(0);
  v93 = *(v10 - 1);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v84 - v17;
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v25 = *(v85 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v84 - v26;
  (*(v19 + 16))(v22, v2, a1);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = v27;
  v92 = AssociatedTypeWitness;
  v88 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v29 = *(v93 + 48);
  v93 += 48;
  v87 = v29;
  v30 = v29(v18, 1, v10);
  v31 = MEMORY[0x277D84F90];
  if (v30 != 1)
  {
    v86 = v18;
    do
    {
      sub_25F243B54(v18, v13, type metadata accessor for TimingRecord);
      v94 = *v13;
      sub_25F243B00();
      v34 = sub_25F30508C();
      v36 = v35;
      v37 = sub_25F2EFB20(0, 1, 1, MEMORY[0x277D84F90]);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_25F2EFB20((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[16 * v39];
      *(v40 + 4) = v34;
      *(v40 + 5) = v36;
      v41 = &v13[v10[6]];
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_25F30458C();
      sub_25F30561C();
      v42 = v94;
      v43 = v95;
      v45 = *(v37 + 2);
      v44 = *(v37 + 3);
      if (v45 >= v44 >> 1)
      {
        v37 = sub_25F2EFB20((v44 > 1), v45 + 1, 1, v37);
      }

      *(v37 + 2) = v45 + 1;
      v46 = &v37[16 * v45];
      *(v46 + 4) = v42;
      *(v46 + 5) = v43;
      v94 = 0;
      v95 = 0xE000000000000000;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
      v48 = v89;
      sub_25F240E98(v41 + *(v47 + 36), v89);
      sub_25F30458C();
      v49 = sub_25F30462C();
      v50 = *(*(v49 - 8) + 8);
      v50(v48, v49);
      v51 = v90;
      sub_25F240E98(v41, v90);
      sub_25F30458C();
      v50(v51, v49);
      sub_25F30561C();
      MEMORY[0x25F8D7130](115, 0xE100000000000000);
      v52 = v94;
      v53 = v95;
      v55 = *(v37 + 2);
      v54 = *(v37 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v37 = sub_25F2EFB20((v54 > 1), v55 + 1, 1, v37);
      }

      *(v37 + 2) = v56;
      v57 = &v37[16 * v55];
      *(v57 + 4) = v52;
      *(v57 + 5) = v53;
      if (v13[16])
      {
        v58 = 0;
        v59 = 0xE000000000000000;
      }

      else
      {
        v94 = *(v13 + 1);
        v58 = sub_25F30508C();
        v56 = *(v37 + 2);
      }

      v60 = *(v37 + 3);
      v61 = v56 + 1;
      if (v56 >= v60 >> 1)
      {
        v81 = v58;
        v82 = v59;
        v83 = sub_25F2EFB20((v60 > 1), v56 + 1, 1, v37);
        v59 = v82;
        v37 = v83;
        v58 = v81;
      }

      *(v37 + 2) = v61;
      v62 = &v37[16 * v56];
      *(v62 + 4) = v58;
      *(v62 + 5) = v59;
      v63 = &v13[v10[7]];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = *(v37 + 3);
      v67 = v56 + 2;

      if ((v56 + 2) > (v66 >> 1))
      {
        v37 = sub_25F2EFB20((v66 > 1), v56 + 2, 1, v37);
      }

      *(v37 + 2) = v67;
      v68 = &v37[16 * v61];
      *(v68 + 4) = v65;
      *(v68 + 5) = v64;
      v69 = &v13[v10[9]];
      v70 = *(v69 + 1);
      if (v70)
      {
        v71 = *v69;
      }

      else
      {
        v71 = 0;
      }

      if (v70)
      {
        v72 = *(v69 + 1);
      }

      else
      {
        v72 = 0xE000000000000000;
      }

      v73 = *(v37 + 3);

      if ((v56 + 3) > (v73 >> 1))
      {
        v37 = sub_25F2EFB20((v73 > 1), v56 + 3, 1, v37);
      }

      v18 = v86;
      *(v37 + 2) = v56 + 3;
      v74 = &v37[16 * v67];
      *(v74 + 4) = v71;
      *(v74 + 5) = v72;
      v94 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
      sub_25F1C3498();
      v75 = sub_25F304CAC();
      v77 = v76;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_25F2EFB20(0, *(v31 + 2) + 1, 1, v31);
      }

      v79 = *(v31 + 2);
      v78 = *(v31 + 3);
      if (v79 >= v78 >> 1)
      {
        v31 = sub_25F2EFB20((v78 > 1), v79 + 1, 1, v31);
      }

      sub_25F243BBC(v13, type metadata accessor for TimingRecord);
      *(v31 + 2) = v79 + 1;
      v80 = &v31[16 * v79];
      *(v80 + 4) = v75;
      *(v80 + 5) = v77;
      sub_25F305CDC();
    }

    while (v87(v18, 1, v10) != 1);
  }

  (*(v85 + 8))(v91, v92);
  v94 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v32 = sub_25F304CAC();

  return v32;
}

uint64_t Collection<>.filterWithinRange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v13 = a1;
  v10 = *(a3 + 8);
  return sub_25F30517C();
}

uint64_t sub_25F242DF4(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for TimingRecord(0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v3 = *(v2 + 36);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 36);
    v4 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0() ^ 1;
  }

  return v4 & 1;
}

uint64_t Collection<>.totalRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = *(a2 + 8);
  v5 = sub_25F305FEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD55BF8, &qword_25F30F450);
  v10 = sub_25F30617C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  MEMORY[0x25F8D7310](a1, v4);
  swift_getWitnessTable();
  sub_25F30638C();
  (*(v6 + 8))(v9, v5);
  v19 = v17;
  swift_getWitnessTable();
  Collection<>.totalRange.getter(v10, v18);
  return (*(v11 + 8))(v14, v10);
}

uint64_t Collection<>.totalRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v4 = *(*(v81 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v81);
  v82 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v71 - v8;
  AssociatedConformanceWitness = *(a1 - 8);
  v9 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v71 - v13;
  v75 = *(swift_getAssociatedConformanceWitness() + 8);
  v77 = AssociatedTypeWitness;
  v86 = swift_getAssociatedTypeWitness();
  v79 = *(v86 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v71 - v15;
  v16 = type metadata accessor for TimingRecord.Point(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v85 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v88 = &v71 - v24;
  MEMORY[0x28223BE20](v23);
  v73 = &v71 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C20, &qword_25F30F470);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v71 - v39;
  v74 = a1;
  sub_25F30583C();
  v43 = *(v34 + 48);
  v41 = v34 + 48;
  v42 = v43;
  if (v43(v32, 1, v33) == 1)
  {
    v44 = v33;
    sub_25F1AF698(v32, &qword_27FD55C20, &qword_25F30F470);
    sub_25F30457C();
    v45 = v85;
    sub_25F30457C();
    result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
    if ((result & 1) == 0)
    {
      v47 = v80;
      sub_25F243B54(v22, v80, type metadata accessor for TimingRecord.Point);
      v48 = (v81 + 48);
      sub_25F243B54(v45, v47 + *(v81 + 48), type metadata accessor for TimingRecord.Point);
      v49 = v82;
      sub_25F1B7174(v47, v82, &qword_27FD55C00, &qword_25F30F458);
      v50 = *v48;
      v51 = v83;
      sub_25F243B54(v49, v83, type metadata accessor for TimingRecord.Point);
      sub_25F243BBC(v49 + v50, type metadata accessor for TimingRecord.Point);
      sub_25F23F614(v47, v49, &qword_27FD55C00, &qword_25F30F458);
      v52 = (v44 + 36);
LABEL_7:
      sub_25F243B54(v49 + *v48, v51 + *v52, type metadata accessor for TimingRecord.Point);
      return sub_25F243BBC(v49, type metadata accessor for TimingRecord.Point);
    }

    __break(1u);
  }

  else
  {
    sub_25F23F614(v32, v40, &qword_27FD55BF8, &qword_25F30F450);
    v71 = v42;
    v53 = v73;
    sub_25F240E98(v40, v73);
    v54 = *(v33 + 36);
    v85 = (v33 + 36);
    v72 = v40;
    sub_25F240E98(&v40[v54], v88);
    (*(AssociatedConformanceWitness + 16))(v78, v2, v74);
    sub_25F3058AC();
    sub_25F3050DC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25F305CDC();
    v55 = v71;
    v56 = v53;
    if (v71(v30, 1, v33) != 1)
    {
      v62 = v33;
      v63 = v41;
      v64 = v55;
      do
      {
        v65 = v62;
        sub_25F23F614(v30, v38, &qword_27FD55BF8, &qword_25F30F450);
        if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
        {
          sub_25F243BBC(v56, type metadata accessor for TimingRecord.Point);
          sub_25F240E98(v38, v56);
        }

        v66 = *v85;
        if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
        {
          v67 = v63;
          v68 = v56;
          v69 = v88;
          sub_25F243BBC(v88, type metadata accessor for TimingRecord.Point);
          v70 = v69;
          v56 = v68;
          v63 = v67;
          sub_25F240E98(&v38[v66], v70);
        }

        sub_25F1AF698(v38, &qword_27FD55BF8, &qword_25F30F450);
        sub_25F305CDC();
        v62 = v65;
      }

      while (v64(v30, 1, v65) != 1);
    }

    (*(v79 + 8))(v87, v86);
    v57 = v56;
    v58 = v88;
    v59 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
    result = sub_25F1AF698(v72, &qword_27FD55BF8, &qword_25F30F450);
    if ((v59 & 1) == 0)
    {
      v60 = v80;
      sub_25F243B54(v57, v80, type metadata accessor for TimingRecord.Point);
      v48 = (v81 + 48);
      sub_25F243B54(v58, v60 + *(v81 + 48), type metadata accessor for TimingRecord.Point);
      v49 = v82;
      sub_25F1B7174(v60, v82, &qword_27FD55C00, &qword_25F30F458);
      v61 = *v48;
      v51 = v83;
      sub_25F243B54(v49, v83, type metadata accessor for TimingRecord.Point);
      sub_25F243BBC(v49 + v61, type metadata accessor for TimingRecord.Point);
      sub_25F23F614(v60, v49, &qword_27FD55C00, &qword_25F30F458);
      v52 = v85;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL _s20PreviewsFoundationOS12TimingRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for TimingRecord(0);
  v7 = v6[6];
  if ((_s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450) + 36);
  if ((_s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + v6[7] + 40) != *(a2 + v6[7] + 40))
  {
    return 0;
  }

  v9 = v6[8];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 8);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    return v18 && (*v15 == *v17 && v16 == v18 || (sub_25F30659C() & 1) != 0);
  }

  return !v18;
}

unint64_t sub_25F243B00()
{
  result = qword_27FD55C10;
  if (!qword_27FD55C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C10);
  }

  return result;
}

uint64_t sub_25F243B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F243BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F243C84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F243CD0()
{
  result = qword_27FD55C30;
  if (!qword_27FD55C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C30);
  }

  return result;
}

unint64_t sub_25F243D24()
{
  result = qword_27FD55C38;
  if (!qword_27FD55C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C38);
  }

  return result;
}

void sub_25F243DA0()
{
  sub_25F243F28(319, &qword_27FD55C58);
  if (v0 <= 0x3F)
  {
    sub_25F243E94();
    if (v1 <= 0x3F)
    {
      sub_25F243F28(319, &qword_27FD55C70);
      if (v2 <= 0x3F)
      {
        sub_25F243F28(319, &qword_27FD55C78);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F243E94()
{
  if (!qword_27FD55C60)
  {
    type metadata accessor for TimingRecord.Point(255);
    sub_25F243C84(&qword_27FD55C68, type metadata accessor for TimingRecord.Point);
    v0 = sub_25F304DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD55C60);
    }
  }
}

void sub_25F243F28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25F305C1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25F243FAC()
{
  result = sub_25F30462C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TimingRecordCategory.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimingRecordCategory.init(name:logsDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *a5 = sub_25F305FFC();
  *(a5 + 8) = v7;
  v9 = 0;
  result = MEMORY[0x25F8D9530](&v9, 8);
  *(a5 + 40) = v9;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_25F2440D0()
{
  *&xmmword_27FD55CA0 = "PreviewServiceNeedsUpdate";
  *(&xmmword_27FD55CA0 + 1) = 25;
  byte_27FD55CB0 = 2;
  qword_27FD55C90 = sub_25F305FFC();
  *algn_27FD55C98 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55CB8 = v2;
  byte_27FD55CC0 = 0;
  return result;
}

uint64_t static TimingRecordCategory.previewServiceNeedsUpdateEvent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527B8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55C98;
  v3 = byte_27FD55CB0;
  v4 = qword_27FD55CB8;
  v5 = byte_27FD55CC0;
  *a1 = qword_27FD55C90;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55CA0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2441D4()
{
  *&xmmword_27FD55CD8 = "PreviewUpdateSession";
  *(&xmmword_27FD55CD8 + 1) = 20;
  byte_27FD55CE8 = 2;
  qword_27FD55CC8 = sub_25F305FFC();
  unk_27FD55CD0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55CF0 = v2;
  byte_27FD55CF8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.previewUpdateSession.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55CD0;
  v3 = byte_27FD55CE8;
  v4 = qword_27FD55CF0;
  v5 = byte_27FD55CF8;
  *a1 = qword_27FD55CC8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55CD8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2442DC()
{
  *&xmmword_27FD55D10 = "MakeBuildGraph";
  *(&xmmword_27FD55D10 + 1) = 14;
  byte_27FD55D20 = 2;
  qword_27FD55D00 = sub_25F305FFC();
  *algn_27FD55D08 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D28 = v2;
  byte_27FD55D30 = 1;
  return result;
}

uint64_t static TimingRecordCategory.makeBuildGraph.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55D08;
  v3 = byte_27FD55D20;
  v4 = qword_27FD55D28;
  v5 = byte_27FD55D30;
  *a1 = qword_27FD55D00;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D10;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2443E4()
{
  *&xmmword_27FD55D48 = "WorkspaceBuild";
  *(&xmmword_27FD55D48 + 1) = 14;
  byte_27FD55D58 = 2;
  qword_27FD55D38 = sub_25F305FFC();
  unk_27FD55D40 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D60 = v2;
  byte_27FD55D68 = 1;
  return result;
}

uint64_t static TimingRecordCategory.workspaceBuild.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55D40;
  v3 = byte_27FD55D58;
  v4 = qword_27FD55D60;
  v5 = byte_27FD55D68;
  *a1 = qword_27FD55D38;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D48;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2444EC()
{
  *&xmmword_27FD55D80 = "ThunkBuild";
  *(&xmmword_27FD55D80 + 1) = 10;
  byte_27FD55D90 = 2;
  qword_27FD55D70 = sub_25F305FFC();
  *algn_27FD55D78 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D98 = v2;
  byte_27FD55DA0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkBuild.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527D8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55D78;
  v3 = byte_27FD55D90;
  v4 = qword_27FD55D98;
  v5 = byte_27FD55DA0;
  *a1 = qword_27FD55D70;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D80;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2445F4()
{
  *&xmmword_27FD55DB8 = "ThunkLink";
  *(&xmmword_27FD55DB8 + 1) = 9;
  byte_27FD55DC8 = 2;
  qword_27FD55DA8 = sub_25F305FFC();
  unk_27FD55DB0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55DD0 = v2;
  byte_27FD55DD8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkLink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55DB0;
  v3 = byte_27FD55DC8;
  v4 = qword_27FD55DD0;
  v5 = byte_27FD55DD8;
  *a1 = qword_27FD55DA8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55DB8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2446FC()
{
  *&xmmword_27FD55DF0 = "ThunkCodeSign";
  *(&xmmword_27FD55DF0 + 1) = 13;
  byte_27FD55E00 = 2;
  qword_27FD55DE0 = sub_25F305FFC();
  *algn_27FD55DE8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E08 = v2;
  byte_27FD55E10 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkCodeSign.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55DE8;
  v3 = byte_27FD55E00;
  v4 = qword_27FD55E08;
  v5 = byte_27FD55E10;
  *a1 = qword_27FD55DE0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55DF0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244804()
{
  *&xmmword_27FD55E28 = "ProductTransfer";
  *(&xmmword_27FD55E28 + 1) = 15;
  byte_27FD55E38 = 2;
  qword_27FD55E18 = sub_25F305FFC();
  unk_27FD55E20 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E40 = v2;
  byte_27FD55E48 = 1;
  return result;
}

uint64_t static TimingRecordCategory.productTransfer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55E20;
  v3 = byte_27FD55E38;
  v4 = qword_27FD55E40;
  v5 = byte_27FD55E48;
  *a1 = qword_27FD55E18;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E28;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F24490C()
{
  *&xmmword_27FD55E60 = "SimulatorBoot";
  *(&xmmword_27FD55E60 + 1) = 13;
  byte_27FD55E70 = 2;
  qword_27FD55E50 = sub_25F305FFC();
  *algn_27FD55E58 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E78 = v2;
  byte_27FD55E80 = 1;
  return result;
}

uint64_t static TimingRecordCategory.simBoot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55E58;
  v3 = byte_27FD55E70;
  v4 = qword_27FD55E78;
  v5 = byte_27FD55E80;
  *a1 = qword_27FD55E50;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E60;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244A14()
{
  *&xmmword_27FD55E98 = "AllBuiltTargetDescriptions";
  *(&xmmword_27FD55E98 + 1) = 26;
  byte_27FD55EA8 = 2;
  qword_27FD55E88 = sub_25F305FFC();
  unk_27FD55E90 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55EB0 = v2;
  byte_27FD55EB8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.allBuiltTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52800 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55E90;
  v3 = byte_27FD55EA8;
  v4 = qword_27FD55EB0;
  v5 = byte_27FD55EB8;
  *a1 = qword_27FD55E88;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E98;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244B1C()
{
  *&xmmword_27FD55ED0 = "IDEBuiltTargetDescriptionRequest";
  *(&xmmword_27FD55ED0 + 1) = 32;
  byte_27FD55EE0 = 2;
  qword_27FD55EC0 = sub_25F305FFC();
  *algn_27FD55EC8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55EE8 = v2;
  byte_27FD55EF0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.ideBuiltTargetDescriptionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52808 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55EC8;
  v3 = byte_27FD55EE0;
  v4 = qword_27FD55EE8;
  v5 = byte_27FD55EF0;
  *a1 = qword_27FD55EC0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55ED0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244C24()
{
  *&xmmword_27FD55F08 = "ProcessBuiltTargetDescription";
  *(&xmmword_27FD55F08 + 1) = 29;
  byte_27FD55F18 = 2;
  qword_27FD55EF8 = sub_25F305FFC();
  unk_27FD55F00 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F20 = v2;
  byte_27FD55F28 = 1;
  return result;
}

uint64_t static TimingRecordCategory.processBuiltTargetDescription.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52810 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55F00;
  v3 = byte_27FD55F18;
  v4 = qword_27FD55F20;
  v5 = byte_27FD55F28;
  *a1 = qword_27FD55EF8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F08;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244D2C()
{
  *&xmmword_27FD55F40 = "AgentLaunch";
  *(&xmmword_27FD55F40 + 1) = 11;
  byte_27FD55F50 = 2;
  qword_27FD55F30 = sub_25F305FFC();
  *algn_27FD55F38 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F58 = v2;
  byte_27FD55F60 = 1;
  return result;
}

uint64_t static TimingRecordCategory.agentLaunch.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52818 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55F38;
  v3 = byte_27FD55F50;
  v4 = qword_27FD55F58;
  v5 = byte_27FD55F60;
  *a1 = qword_27FD55F30;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F40;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244E34()
{
  *&xmmword_27FD55F78 = "LoadTargetDescriptions";
  *(&xmmword_27FD55F78 + 1) = 22;
  byte_27FD55F88 = 2;
  qword_27FD55F68 = sub_25F305FFC();
  unk_27FD55F70 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F90 = v2;
  byte_27FD55F98 = 1;
  return result;
}

uint64_t static TimingRecordCategory.loadTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52820 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55F70;
  v3 = byte_27FD55F88;
  v4 = qword_27FD55F90;
  v5 = byte_27FD55F98;
  *a1 = qword_27FD55F68;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F78;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244F3C()
{
  *&xmmword_27FD55FB0 = "UpdateTargetDescriptions";
  *(&xmmword_27FD55FB0 + 1) = 24;
  byte_27FD55FC0 = 2;
  qword_27FD55FA0 = sub_25F305FFC();
  *algn_27FD55FA8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55FC8 = v2;
  byte_27FD55FD0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.updateTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52828 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55FA8;
  v3 = byte_27FD55FC0;
  v4 = qword_27FD55FC8;
  v5 = byte_27FD55FD0;
  *a1 = qword_27FD55FA0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55FB0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F245044()
{
  *&xmmword_27FD55FE8 = "InitialJITLink";
  *(&xmmword_27FD55FE8 + 1) = 14;
  byte_27FD55FF8 = 2;
  qword_27FD55FD8 = sub_25F305FFC();
  unk_27FD55FE0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56000 = v2;
  byte_27FD56008 = 1;
  return result;
}

uint64_t static TimingRecordCategory.initialJITLink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52830 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55FE0;
  v3 = byte_27FD55FF8;
  v4 = qword_27FD56000;
  v5 = byte_27FD56008;
  *a1 = qword_27FD55FD8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55FE8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F24514C()
{
  *&xmmword_27FD56020 = "ApplyPendingUpdates";
  *(&xmmword_27FD56020 + 1) = 19;
  byte_27FD56030 = 2;
  qword_27FD56010 = sub_25F305FFC();
  *algn_27FD56018 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56038 = v2;
  byte_27FD56040 = 1;
  return result;
}

uint64_t static TimingRecordCategory.applyPendingUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52838 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD56018;
  v3 = byte_27FD56030;
  v4 = qword_27FD56038;
  v5 = byte_27FD56040;
  *a1 = qword_27FD56010;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD56020;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F245254()
{
  *&xmmword_27FD56058 = "RunNewInitializers";
  *(&xmmword_27FD56058 + 1) = 18;
  byte_27FD56068 = 2;
  qword_27FD56048 = sub_25F305FFC();
  unk_27FD56050 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56070 = v2;
  byte_27FD56078 = 1;
  return result;
}

uint64_t static TimingRecordCategory.runNewInitializers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52840 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD56050;
  v3 = byte_27FD56068;
  v4 = qword_27FD56070;
  v5 = byte_27FD56078;
  *a1 = qword_27FD56048;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD56058;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t TimingRecordCategory.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2453D0()
{
  v1 = *(v0 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F245444()
{
  v1 = *(v0 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

unint64_t sub_25F24548C()
{
  result = qword_27FD56080;
  if (!qword_27FD56080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56080);
  }

  return result;
}

uint64_t sub_25F245504(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8AE0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_25F30647C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E18, &qword_25F308468);
      v7 = sub_25F3052EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F247B30(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t TimingRecordKeeper.__allocating_init()()
{
  v0 = type metadata accessor for TimingRecordKeeper.State();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  *v4 = sub_25F1B6748(MEMORY[0x277D84F90]);
  v6 = v4 + *(v1 + 28);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F2483CC(v4, v10 + *(*v10 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v5 + 16) = v10;
  return v5;
}

uint64_t TimingRecordKeeper.init()()
{
  v1 = type metadata accessor for TimingRecordKeeper.State();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = sub_25F1B6748(MEMORY[0x277D84F90]);
  v6 = v5 + *(v2 + 28);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F2483CC(v5, v10 + *(*v10 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v0 + 16) = v10;
  return v0;
}

uint64_t type metadata accessor for TimingRecordKeeper.State()
{
  result = qword_27FD56098;
  if (!qword_27FD56098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F245960()
{
  v0 = type metadata accessor for TimingRecordKeeper.State();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TimingRecordKeeper();
  v5 = swift_allocObject();
  *v4 = sub_25F1B6748(MEMORY[0x277D84F90]);
  v6 = v4 + *(v1 + 28);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_25F2483CC(v4, v10 + *(*v10 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v5 + 16) = v10;
  qword_27FD56088 = v5;
  return result;
}

uint64_t static TimingRecordKeeper.shared.getter()
{
  if (qword_27FD52848 != -1)
  {
    swift_once();
  }
}

uint64_t TimingRecordKeeper.log(parent:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v81 = a6;
  v75 = a3;
  v76 = a5;
  v68 = a4;
  v72 = a7;
  v9 = sub_25F30472C();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for TimingRecord.Point(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TimingRecord(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a1;
  v73 = *(a1 + 8);
  v27 = *a2;
  v28 = *(a2 + 8);
  v29 = *(a2 + 16);
  v78 = *(a2 + 24);
  v79 = *(a2 + 32);
  v30 = *(a2 + 40);
  v66 = v27;
  v67 = v30;
  v31 = *(a2 + 48);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v80 = v28;

  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    __break(1u);
  }

  else
  {
    v65 = v9;
    v77 = v31;
    sub_25F248434(v22, v18, type metadata accessor for TimingRecord.Point);
    sub_25F248434(v22, &v18[*(v12 + 48)], type metadata accessor for TimingRecord.Point);
    sub_25F1B7174(v18, v16, &qword_27FD55C00, &qword_25F30F458);
    v28 = v23;
    v32 = *(v12 + 48);
    v33 = &v26[v28[6]];
    v64 = v29;
    sub_25F2483CC(v16, v33, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v16[v32], type metadata accessor for TimingRecord.Point);
    sub_25F2482BC(v18, v16);
    v34 = *(v12 + 48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    v36 = v64;
    sub_25F2483CC(&v16[v34], v33 + *(v35 + 36), type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(v16, type metadata accessor for TimingRecord.Point);
    v82[0] = 0;
    MEMORY[0x25F8D9530](v82, 8);
    *v26 = v82[0];
    *(v26 + 1) = 0;
    v26[16] = 1;
    v37 = &v26[v28[8]];
    v38 = &v26[v28[9]];
    v82[0] = 0;
    MEMORY[0x25F8D9530](v82, 8);
    sub_25F243BBC(v22, type metadata accessor for TimingRecord.Point);
    v39 = v74;
    *v26 = v82[0];
    *(v26 + 1) = v39;
    v26[16] = v73;
    v40 = &v26[v28[7]];
    v9 = v66;
    *v40 = v66;
    v41 = v81;
    *(v40 + 1) = v80;
    *(v40 + 2) = v36;
    *(v40 + 3) = v78;
    v40[32] = v79;
    *(v40 + 5) = v67;
    v40[48] = v77;
    *v37 = v75;
    LOBYTE(v28) = v68;
    v37[8] = v68 & 1;
    *v38 = v76;
    *(v38 + 1) = v41;
    v42 = *(v69 + 16);
    MEMORY[0x28223BE20](v41);
    *(&v63 - 2) = v43;
    *(&v63 - 1) = v26;
    v44 = *(*v42 + *MEMORY[0x277D841D0] + 16);
    v45 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v42 + v45));
    sub_25F24832C((v42 + v44));
    os_unfair_lock_unlock((v42 + v45));
    v16 = *v26;
    sub_25F243BBC(v26, type metadata accessor for TimingRecord);
    if (qword_27FD52928 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v46 = sub_25F30479C();
  __swift_project_value_buffer(v46, qword_27FD571D8);
  v47 = v80;

  v48 = v81;

  v49 = sub_25F30477C();
  v50 = sub_25F3059EC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v82[0] = v52;
    *v51 = 136447234;
    *(v51 + 4) = sub_25F1C53AC(v9, v47, v82);
    *(v51 + 12) = 2050;
    *(v51 + 14) = v16;
    *(v51 + 22) = 2050;
    v53 = v74;
    if (v73)
    {
      v53 = 0;
    }

    *(v51 + 24) = v53;
    *(v51 + 32) = 2050;
    v54 = v75;
    if (v28)
    {
      v54 = 0;
    }

    *(v51 + 34) = v54;
    *(v51 + 42) = 2080;
    v55 = v48 == 0;
    v56 = v48;
    if (v48)
    {
      v57 = v76;
    }

    else
    {
      v57 = 0;
    }

    if (v55)
    {
      v58 = 0xE000000000000000;
    }

    else
    {
      v58 = v56;
    }

    v59 = sub_25F1C53AC(v57, v58, v82);

    *(v51 + 44) = v59;
    _os_log_impl(&dword_25F1A2000, v49, v50, "%{public}s,%{public}llx,start,%{public}llx,%{public}llu,%s", v51, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v52, -1, -1);
    MEMORY[0x25F8D9510](v51, -1, -1);
  }

  v60 = v65;
  if (v77)
  {
    sub_25F305AFC();
  }

  else
  {
    sub_25F305B0C();
  }

  if (qword_27FD528A0 != -1)
  {
    swift_once();
  }

  v61 = v70;
  sub_25F30471C();
  sub_25F30470C();
  result = (*(v71 + 8))(v61, v60);
  *v72 = v16;
  return result;
}

void TimingRecordKeeper.insert(record:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_25F248A60((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
  *a2 = *a1;
}

uint64_t sub_25F2462C8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for TimingRecord(0);
  sub_25F246330(a3 + *(v5 + 24));
  sub_25F2464C8(a3);

  return sub_25F248708(a1);
}

uint64_t sub_25F246330(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingRecord.Point(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F248434(a1, v7, type metadata accessor for TimingRecord.Point);
  sub_25F30458C();
  v9 = v8;
  v10 = v8;
  result = sub_25F243BBC(v7, type metadata accessor for TimingRecord.Point);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = *v2;
  if (*(*v2 + 16) && (v13 = sub_25F21940C(v9 >> 6), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    type metadata accessor for TimingRecordBucket();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = sub_25F1B6850(MEMORY[0x277D84F90]);
    *(v15 + 24) = v16;

    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25F210E00(v15, v9 >> 6, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
  }

  return v15;
}

size_t sub_25F2464C8(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v1 + 16);
  if (!*(v10 + 16) || (v11 = sub_25F21FC78(v9), (v12 & 1) == 0))
  {
    swift_endAccess();
    v16 = *a1;
    swift_beginAccess();
    v17 = *(*(v2 + 24) + 16);
    swift_beginAccess();
    v18 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_25F210F4C(v17, v16, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v25;
    swift_endAccess();
    sub_25F248434(a1, v8, type metadata accessor for TimingRecord);
    swift_beginAccess();
    v20 = *(v2 + 24);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_25F2F096C(0, v20[2] + 1, 1, v20);
      *(v2 + 24) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_25F2F096C(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    sub_25F2483CC(v8, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for TimingRecord);
    *(v2 + 24) = v20;
    return swift_endAccess();
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v14;
  if (result)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_25F1E10C4(v14);
  v14 = result;
  *(v2 + 24) = result;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v13 < v14[2])
  {
    sub_25F2489F8(a1, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
    *(v2 + 24) = v14;
    return swift_endAccess();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t TimingRecordKeeper.markCompleted(id:)(uint64_t *a1)
{
  v3 = sub_25F30472C();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimingRecord.Point(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v79 - v10;
  v11 = type metadata accessor for TimingRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v90 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v79 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v85 = &v79 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = (&v79 - v29);
  v31 = *a1;
  v32 = *(v1 + 16);
  v91 = v1;
  v92 = v31;
  v81 = v31;
  v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  sub_25F248348((v32 + v33), v30);
  v35 = (v32 + v34);
  v36 = v11;
  os_unfair_lock_unlock(v35);
  sub_25F1B7174(v30, v28, &qword_27FD55C18, &unk_25F30F460);
  if ((*(v12 + 48))(v28, 1, v11) == 1)
  {
    sub_25F248364(v30);
    v37 = v28;
  }

  else
  {
    v80 = v30;
    sub_25F2483CC(v28, v23, type metadata accessor for TimingRecord);
    v38 = &v23[*(v11 + 24)];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    v40 = v82;
    sub_25F248434(v38 + *(v39 + 36), v82, type metadata accessor for TimingRecord.Point);
    sub_25F30458C();
    v42 = v41;
    v43 = sub_25F30462C();
    v44 = *(*(v43 - 8) + 8);
    v44(v40, v43);
    v45 = v83;
    sub_25F248434(v38, v83, type metadata accessor for TimingRecord.Point);
    sub_25F30458C();
    v47 = v46;
    v44(v45, v43);
    if (qword_27FD52928 != -1)
    {
      swift_once();
    }

    v48 = sub_25F30479C();
    __swift_project_value_buffer(v48, qword_27FD571D8);
    v49 = v84;
    sub_25F248434(v23, v84, type metadata accessor for TimingRecord);
    v50 = v85;
    sub_25F248434(v23, v85, type metadata accessor for TimingRecord);
    v51 = v86;
    sub_25F248434(v23, v86, type metadata accessor for TimingRecord);
    v52 = v90;
    sub_25F248434(v23, v90, type metadata accessor for TimingRecord);
    v53 = sub_25F30477C();
    v54 = sub_25F3059EC();
    if (os_log_type_enabled(v53, v54))
    {
      v83 = v23;
      v55 = v42 - v47;
      v56 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v93[0] = v82;
      *v56 = 136447490;
      v57 = (v49 + v36[7]);
      v58 = v49;
      v59 = *v57;
      v60 = v57[1];

      sub_25F243BBC(v58, type metadata accessor for TimingRecord);
      v61 = sub_25F1C53AC(v59, v60, v93);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2050;
      *(v56 + 14) = v81;
      *(v56 + 22) = 2050;
      v62 = *(v50 + 8);
      v63 = v51;
      if (*(v50 + 16))
      {
        v64 = 0;
      }

      else
      {
        v64 = *(v50 + 8);
      }

      sub_25F243BBC(v50, type metadata accessor for TimingRecord);
      *(v56 + 24) = v64;
      v65 = v90;
      *(v56 + 32) = 2050;
      v66 = v63 + v36[8];
      if (*(v66 + 8))
      {
        v67 = 0;
      }

      else
      {
        v67 = *v66;
      }

      sub_25F243BBC(v63, type metadata accessor for TimingRecord);
      *(v56 + 34) = v67;
      *(v56 + 42) = 2048;
      *(v56 + 44) = v55;
      *(v56 + 52) = 2080;
      v68 = (v65 + v36[9]);
      if (v68[1])
      {
        v69 = *v68;
        v70 = v68[1];
      }

      else
      {
        v69 = 0;
        v70 = 0xE000000000000000;
      }

      sub_25F243BBC(v65, type metadata accessor for TimingRecord);
      v71 = sub_25F1C53AC(v69, v70, v93);

      *(v56 + 54) = v71;
      _os_log_impl(&dword_25F1A2000, v53, v54, "%{public}s,%{public}llx,end,%{public}llx,%{public}llu,%fs,%s", v56, 0x3Eu);
      v72 = v82;
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v72, -1, -1);
      MEMORY[0x25F8D9510](v56, -1, -1);

      v23 = v83;
    }

    else
    {
      sub_25F243BBC(v51, type metadata accessor for TimingRecord);
      sub_25F243BBC(v50, type metadata accessor for TimingRecord);

      sub_25F243BBC(v52, type metadata accessor for TimingRecord);
      sub_25F243BBC(v49, type metadata accessor for TimingRecord);
    }

    sub_25F305AEC();
    if (qword_27FD528A0 != -1)
    {
      swift_once();
    }

    v73 = &v23[v36[7]];
    v74 = *(v73 + 2);
    v75 = *(v73 + 3);
    v76 = v73[32];
    v77 = v87;
    sub_25F30471C();
    sub_25F30470C();
    (*(v88 + 8))(v77, v89);
    sub_25F243BBC(v23, type metadata accessor for TimingRecord);
    v37 = v80;
  }

  return sub_25F248364(v37);
}

uint64_t sub_25F246F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for TimingRecord.Point(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TimingRecord(0);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v34);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v35 = a1;
  v13 = *a1;
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v19 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
          v31 = 1;
          v30 = v36;
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v19);
        ++v12;
        if (v17)
        {
          v12 = v19;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    v20 = *(*(v13 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v17)))));
    swift_beginAccess();
    v21 = *(v20 + 16);
    if (*(v21 + 16))
    {
      v22 = sub_25F21FC78(a2);
      if (v23)
      {
        break;
      }
    }

    v17 &= v17 - 1;
    result = swift_endAccess();
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = *(v20 + 24);
  v26 = v36;
  if (v24 >= *(v25 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v27 = v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24;
  v28 = v32;
  sub_25F248434(v27, v32, type metadata accessor for TimingRecord);
  sub_25F2483CC(v28, v26, type metadata accessor for TimingRecord);

  v29 = v33;
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  TimingRecord.updateEndTime(_:)(v29);
  sub_25F243BBC(v29, type metadata accessor for TimingRecord.Point);
  sub_25F2464C8(v26);

  v30 = v26;
  v31 = 0;
LABEL_16:
  (*(v8 + 56))(v30, v31, 1, v34);
  return sub_25F248708(v35);
}

void TimingRecordKeeper.record(withID:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_25F247354((v5 + v6), v4, a2);

  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_25F247354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = type metadata accessor for TimingRecord(0);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v31);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *a1;
  v11 = *a1 + 64;
  v12 = 1 << *(*a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(*a1 + 64);
  v15 = (v12 + 63) >> 6;
  while (1)
  {
    if (!v14)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v15)
        {
          v28 = 1;
          v27 = v30;
          return (*(v5 + 56))(v27, v28, 1, v31);
        }

        v14 = *(v11 + 8 * v16);
        ++v9;
        if (v14)
        {
          v9 = v16;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    v17 = *(*(v10 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v14)))));
    swift_beginAccess();
    v18 = *(v17 + 16);
    if (*(v18 + 16))
    {
      v19 = sub_25F21FC78(a2);
      if (v20)
      {
        break;
      }
    }

    v14 &= v14 - 1;
    result = swift_endAccess();
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = *(v17 + 24);
  if (v21 >= *(v22 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v23 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21;
  v24 = v29;
  sub_25F248434(v23, v29, type metadata accessor for TimingRecord);
  v25 = v24;
  v26 = v30;
  sub_25F2483CC(v25, v30, type metadata accessor for TimingRecord);
  v27 = v26;
  v28 = 0;
  return (*(v5 + 56))(v27, v28, 1, v31);
}

uint64_t TimingRecordKeeper.gatherRecords()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v28));
  v29 = v1;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_25F1BAAF0(*(v3 + 16), 0);
  v6 = sub_25F1BED00(&v30, v5 + 4, v4, v3);

  sub_25F1BF034();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v30 = v5;
  sub_25F245504(&v30);
  v7 = v30;
  v8 = v30[2];
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_24:

    os_unfair_lock_unlock((v29 + v28));
    return v11;
  }

  v9 = 0;
  v10 = v30 + 5;
  v11 = MEMORY[0x277D84F90];
  while (v9 < v7[2])
  {
    v12 = *v10;
    swift_beginAccess();
    v13 = *(v12 + 24);
    v14 = *(v13 + 16);
    v15 = v11[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v18 = v11[3] >> 1, v18 >= v16))
    {
      if (*(v13 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v19 = v15 + v14;
      }

      else
      {
        v19 = v15;
      }

      v11 = sub_25F2F096C(isUniquelyReferenced_nonNull_native, v19, 1, v11);
      v18 = v11[3] >> 1;
      if (*(v13 + 16))
      {
LABEL_19:
        v20 = v18 - v11[2];
        v21 = *(type metadata accessor for TimingRecord(0) - 8);
        if (v20 < v14)
        {
          goto LABEL_28;
        }

        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = *(v21 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v24 = v11[2];
          v25 = __OFADD__(v24, v14);
          v26 = v24 + v14;
          if (v25)
          {
            goto LABEL_29;
          }

          v11[2] = v26;
        }

        goto LABEL_8;
      }
    }

    if (v14)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v9;

    v10 += 2;
    if (v8 == v9)
    {
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
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Void __swiftcall TimingRecordKeeper.pruneNow()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_25F24849C((v1 + v2));

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t TimingRecordKeeper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TimingRecordKeeper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F247968()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2479DC()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}