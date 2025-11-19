uint64_t sub_1AF633A88(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v5 = sub_1AF0D3F10(a1);
  v7 = v6;
  v8 = v6 ^ 1;
  v9 = *(v14 + 16) + ((v6 ^ 1) & 1);
  if (*(v14 + 24) < v9)
  {
    sub_1AF82BA00(v9, isUniquelyReferenced_nonNull_native);
    v5 = sub_1AF0D3F10(a1);
    if ((v7 & 1) == (v10 & 1))
    {
      goto LABEL_5;
    }

    v5 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v5;
    sub_1AF843E24();
    v5 = v12;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v11 = v14;
    sub_1AF843078(v5, a1, v14);
    goto LABEL_9;
  }

LABEL_5:
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = v14;
LABEL_9:
  *v2 = v11;
  return v8 & 1;
}

void sub_1AF633BB4(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  v34 = *(a1 + 112);
  v35 = *(a1 + 120);
  v36 = *(a1 + 128);
  v37 = *(a1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  v12 = sub_1AF0D3F10(a2);
  v14 = v13;
  v15 = v42[2] + ((v13 & 1) == 0);
  if (v42[3] < v15)
  {
    sub_1AF82EA24(v15, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AF0D3F10(a2);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_5;
    }

    v12 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = v12;
    sub_1AF845B40();
    v12 = v19;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = v42;
    v38[0] = v8;
    v38[1] = v7;
    v38[2] = v10;
    v38[3] = v9;
    v38[4] = v24;
    v38[5] = v25;
    v38[6] = v26;
    v38[7] = v27;
    v38[8] = v28;
    v38[9] = v29;
    v38[10] = v30;
    v38[11] = v31;
    v38[12] = v32;
    v38[13] = v33;
    v38[14] = v34;
    v38[15] = v35;
    v38[16] = v36;
    v39 = v37;
    sub_1AF843268(v12, a2, v38, v42);
    sub_1AF4481DC(v40);
    v20 = v41[0];
    a3[6] = v40[6];
    a3[7] = v20;
    *(a3 + 121) = *(v41 + 9);
    v21 = v40[3];
    a3[2] = v40[2];
    a3[3] = v21;
    v22 = v40[5];
    a3[4] = v40[4];
    a3[5] = v22;
    v23 = v40[1];
    *a3 = v40[0];
    a3[1] = v23;
    goto LABEL_9;
  }

LABEL_5:
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = v42;
  v18 = (v42[7] + 144 * v12);
  memmove(a3, v18, 0x89uLL);
  *v18 = v8;
  v18[1] = v7;
  v18[2] = v10;
  v18[3] = v9;
  v18[4] = v24;
  v18[5] = v25;
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v18[9] = v29;
  v18[10] = v30;
  v18[11] = v31;
  v18[12] = v32;
  v18[13] = v33;
  v18[14] = v34;
  v18[15] = v35;
  v18[16] = v36;
  *(v18 + 136) = v37;
  nullsub_106();
LABEL_9:
  *v4 = v17;
}

uint64_t sub_1AF633DE0(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v9 = sub_1AF0D3F10(a3);
  v11 = v10;
  v12 = v18[2] + ((v10 ^ 1) & 1);
  if (v18[3] < v12)
  {
    sub_1AF82EDB8(v12, isUniquelyReferenced_nonNull_native);
    v9 = sub_1AF0D3F10(a3);
    if ((v11 & 1) == (v13 & 1))
    {
      goto LABEL_5;
    }

    v9 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v9;
    sub_1AF845D54();
    v9 = v17;
    v14 = v18;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AF8432F8(v9, a3, a1, a2 & 1, v14);
    result = 0;
    goto LABEL_9;
  }

LABEL_5:
  v14 = v18;
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = v14[7] + 12 * v9;
  result = *v15;
  *v15 = a1;
  *(v15 + 8) = a2 & 1;
LABEL_9:
  *v4 = v14;
  return result;
}

uint64_t sub_1AF633F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v9 = sub_1AF0D3F10(a3);
  v11 = v10;
  v12 = v18[2] + ((v10 & 1) == 0);
  if (v18[3] < v12)
  {
    sub_1AF82F63C(v12, isUniquelyReferenced_nonNull_native);
    v9 = sub_1AF0D3F10(a3);
    if ((v11 & 1) == (v13 & 1))
    {
      goto LABEL_5;
    }

    v9 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v9;
    sub_1AF846294();
    v9 = v17;
    v14 = v18;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AF843404(v9, a3, a1, a2, v14);
    result = 0;
    goto LABEL_9;
  }

LABEL_5:
  v14 = v18;
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = (v14[7] + 16 * v9);
  result = *v15;
  *v15 = a1;
  v15[1] = a2;
LABEL_9:
  *v4 = v14;
  return result;
}

uint64_t sub_1AF634024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v7 = sub_1AF449D3C(a2);
  v9 = v8;
  v10 = v16[2] + ((v8 ^ 1) & 1);
  if (v16[3] < v10)
  {
    sub_1AF833F28(v10, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AF449D3C(a2);
    if ((v9 & 1) == (v11 & 1))
    {
      goto LABEL_5;
    }

    v7 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = v7;
    sub_1AF8489C0();
    v7 = v15;
    v12 = v16;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AF843558(v7, a2, a1, v12);
    result = 0;
    goto LABEL_9;
  }

LABEL_5:
  v12 = v16;
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = (v12[7] + 8 * v7);
  result = *v13;
  *v13 = a1;
LABEL_9:
  *v3 = v12;
  return result;
}

uint64_t sub_1AF6341B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void), void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v5;
  v13 = sub_1AF0D3F10(a2);
  v15 = v14;
  v16 = *(v23 + 16) + ((v14 & 1) == 0);
  if (*(v23 + 24) < v16)
  {
    a3(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(a2);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_5;
    }

    v13 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = v13;
    a4();
    v13 = v21;
    v18 = v23;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_8:
    a5(v13, a2, a1, v18);
    v20 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v18 = v23;
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * v13);
  *(v19 + 8 * v13) = a1;
LABEL_9:
  *v9 = v18;
  return v20;
}

uint64_t sub_1AF634324(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void), void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v5;
  v13 = sub_1AF0D3F10(a2);
  v15 = v14;
  v16 = *(v23 + 16) + ((v14 & 1) == 0);
  if (*(v23 + 24) < v16)
  {
    a3(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(a2);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_5;
    }

    v13 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = v13;
    a4();
    v13 = v21;
    v18 = v23;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_8:
    a5(v13, a2, a1, v18);
    v20 = 1;
    goto LABEL_9;
  }

LABEL_5:
  v18 = v23;
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *(v18 + 56);
  v20 = *(v19 + 8 * v13);
  *(v19 + 8 * v13) = a1;
LABEL_9:
  *v9 = v18;
  return v20;
}

void sub_1AF634450(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;
  v9 = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = v23[2] + ((v10 & 1) == 0);
  if (v23[3] < v12)
  {
    sub_1AF83C350(v12, isUniquelyReferenced_nonNull_native);
    v9 = sub_1AF0D3F10(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      goto LABEL_5;
    }

    v9 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = v9;
    sub_1AF84CF84();
    v9 = v22;
    v14 = v23;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AF843C48(v9, a2, a1, v14);
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    goto LABEL_9;
  }

LABEL_5:
  v14 = v23;
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = v14[7] + 120 * v9;
  v16 = *(v15 + 80);
  *(a3 + 64) = *(v15 + 64);
  *(a3 + 80) = v16;
  *(a3 + 96) = *(v15 + 96);
  *(a3 + 112) = *(v15 + 112);
  v17 = *(v15 + 16);
  *a3 = *v15;
  *(a3 + 16) = v17;
  v18 = *(v15 + 48);
  *(a3 + 32) = *(v15 + 32);
  *(a3 + 48) = v18;
  v19 = *(a1 + 48);
  *(v15 + 32) = *(a1 + 32);
  *(v15 + 48) = v19;
  v20 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 16) = v20;
  *(v15 + 112) = *(a1 + 112);
  v21 = *(a1 + 96);
  *(v15 + 80) = *(a1 + 80);
  *(v15 + 96) = v21;
  *(v15 + 64) = *(a1 + 64);
LABEL_9:
  *v4 = v14;
}

uint64_t sub_1AF6345D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v7 = sub_1AF0D3F10(a2);
  v9 = v8;
  v10 = *(v17 + 16) + ((v8 ^ 1) & 1);
  if (*(v17 + 24) < v10)
  {
    sub_1AF83EEF4(v10, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AF0D3F10(a2);
    if ((v9 & 1) == (v11 & 1))
    {
      goto LABEL_5;
    }

    v7 = sub_1AFDFF1A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = v7;
    sub_1AF84E5F8();
    v7 = v15;
    v12 = v17;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AF85B950(v7, a2, a1, v12);
    v14 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v12 = v17;
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = *(v12 + 56);
  v14 = *(v13 + 8 * v7);
  *(v13 + 8 * v7) = a1;
LABEL_9:
  *v3 = v12;
  return v14;
}

uint64_t sub_1AF6346E0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_1AF63515C(a1, v13);
  sub_1AF63515C(a2, &v15);
  if (v14 <= 2u)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        sub_1AF63515C(v13, v12);
        if (v18 != 1)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      sub_1AF63515C(v13, v12);
      if (v18 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_1AF63515C(v13, v12);
    if (!v18)
    {
LABEL_11:
      v3 = *&v12[0] == v15;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (v14 == 3)
  {
    sub_1AF63515C(v13, v12);
    if (v18 != 3)
    {
LABEL_16:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
      goto LABEL_19;
    }

LABEL_13:
    sub_1AF0FBA54(v12, v9);
    sub_1AF0FBA54(&v15, v8);
    v4 = v10;
    v5 = v11;
    sub_1AF441150(v9, v10);
    v3 = sub_1AF640C98(v8, v4, v5);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
    goto LABEL_14;
  }

  if (v14 != 4)
  {
    if (v18 == 5)
    {
      v6 = vorrq_s8(v16, v17);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v15))
      {
        sub_1AF635250(v13);
        v3 = 1;
        return v3 & 1;
      }
    }

    goto LABEL_19;
  }

  sub_1AF63515C(v13, v12);
  if (v18 != 4)
  {
LABEL_19:
    sub_1AF6351F0(v13, sub_1AF635194);
    v3 = 0;
    return v3 & 1;
  }

  v3 = LOBYTE(v12[0]) ^ v15 ^ 1;
LABEL_14:
  sub_1AF635250(v13);
  return v3 & 1;
}

uint64_t sub_1AF6348DC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v11 = *(a6 + 16);
  v12 = v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v13 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v13);

  v14 = sub_1AF66F020(a1, a2, a3);
  v16 = v15;

  v17 = *(v11 + 80);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v20 = v17 + 32;
  while (*(*(v20 + 8 * v19) + 144) != v14)
  {
    if (v18 == ++v19)
    {
      goto LABEL_7;
    }
  }

  v21 = sub_1AF65D418(v16, v19);
  v22 = v21;
  if ((v21 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v22 = sub_1AF65D480(v14, v16, v23, a3);
  }

  v24 = *(*(v11 + 88) + 8 * v22 + 32);
  v25 = *(v12 + 24);

  os_unfair_lock_unlock(v25);

  v26 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v27 = *v26;

  if (v27)
  {
    vfx_counters.add(_:_:)(*(v26 + 40), 1);
  }

  v28 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v29 = *v28;

  if (v29)
  {
    vfx_counters.add(_:_:)(*(v28 + 48), 1);
  }

  v30 = *(v24 + 204);
  if (*(v24 + 208))
  {
    v77 = 0;
    LODWORD(v31) = -1;
  }

  else
  {

    v31 = sub_1AF65B2E4();

    v77 = v31 & 0xFFFFFFFF00000000;
  }

  v32 = *(v7 + 16);
  v33 = *(*(*(v32 + 88) + 8 * v30 + 32) + 200);

  if (v33 == 1)
  {
    *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v34 = *(v32 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v34);
  if (!sub_1AF62173C(v30))
  {
    sub_1AF6AFD3C(v30);
  }

  v35 = 36;
  if (a4)
  {
    v35 = 32;
  }

  v36 = *(*(v32 + 104) + 40 * v30 + v35 + 32);
  if (v36 != -1)
  {
    v37 = *(*(v32 + 144) + 8 * v36 + 32);
    if (*(v37 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v37 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v37 + 376)))
    {
      os_unfair_lock_lock(*(v37 + 344));
      os_unfair_lock_unlock(*(v37 + 376));
      if ((*(v37 + 121) & 1) != 0 || *(v37 + 240) < *(v37 + 88))
      {
        v38 = sub_1AF622B60(v31);
        v39 = v38;
        v41 = v40;
        v42 = *(v37 + 188);
        if ((*(v24 + 208) & 1) == 0)
        {
          v43 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
          *v43 = v42;
          *(v43 + 4) = v38;
          *(v43 + 6) = v30;
        }

        if (*(v24 + 212) == 1)
        {
          v44 = *(v37 + 192);
          if (v44)
          {
            v45 = *(v37 + 208);
            *(v44 + 8 * (v38 >> 6)) |= 1 << v38;
            *(v45 + 8 * (v38 >> 6)) &= ~(1 << v38);
          }

          sub_1AF705804(v38);
        }

        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v32 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v37 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v32 + 136));
  v46 = sub_1AF624654();
  v75 = v7;
  if ((v46 & 0x100000000) != 0)
  {
    v47 = *(*(v32 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    v55 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v50 + 2) + 1, 1);
      v50 = *(v32 + 144);
    }

    v31 = *(v50 + 2);
    v56 = *(v50 + 3);
    if (v31 >= v56 >> 1)
    {
      sub_1AFC05EFC(v56 > 1, v31 + 1, 1);
      v50 = *(v32 + 144);
    }

    *(v50 + 2) = v31 + 1;
    *&v50[8 * v31 + 32] = v53;
    LODWORD(v31) = v55;
    v7 = v75;
  }

  else
  {
    v47 = v46;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v49 = sub_1AF64BF6C(v48, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1AF6247B0(v50);
    }

    *&v50[8 * v47 + 32] = v49;
  }

  *(v32 + 144) = v50;
  v57 = *(v32 + 104);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 104) = v57;
  if ((v58 & 1) == 0)
  {
    v57 = sub_1AFC0D9B8(v57);
    *(v32 + 104) = v57;
  }

  v59 = &v57[40 * v30];
  if (a4)
  {
    v60 = *(v59 + 4);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 4) = v60;
    v62 = v31;
    if ((v61 & 1) == 0)
    {
      v60 = sub_1AF420E8C(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    v31 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v31 >= v63 >> 1)
    {
      v60 = sub_1AF420E8C(v63 > 1, v31 + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    *(v60 + 2) = v31 + 1;
    *&v60[4 * v31 + 32] = v47;
    *(v59 + 16) = v47;
    LODWORD(v31) = v62;
    v7 = v75;
  }

  else
  {
    v64 = *(v59 + 5);
    sub_1AF64B7B0(v64, v64, v47);
    *(v59 + 5) = v64 + 1;
    *(v59 + 17) = v47;
  }

  v59[56] = 1;
  v65 = *(*(v32 + 144) + 8 * v47 + 32);
  v66 = *(v65 + 376);

  if (os_unfair_lock_trylock(v66))
  {
    os_unfair_lock_lock(*(v65 + 344));
    os_unfair_lock_unlock(*(v65 + 376));
    if ((*(v65 + 121) & 1) != 0 || *(v65 + 240) < *(v65 + 88))
    {
      v67 = sub_1AF622B60(v31);
      v39 = v67;
      v41 = v68;
      v42 = *(v65 + 188);
      if ((*(v24 + 208) & 1) == 0)
      {
        v69 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
        *v69 = v42;
        *(v69 + 4) = v67;
        *(v69 + 6) = v30;
      }

      if (*(v24 + 212) == 1)
      {
        v70 = *(v65 + 192);
        if (v70)
        {
          v71 = *(v65 + 208);
          *(v70 + 8 * (v67 >> 6)) |= 1 << v67;
          *(v71 + 8 * (v67 >> 6)) &= ~(1 << v67);
        }

        sub_1AF705804(v67);
      }

      os_unfair_lock_unlock(*(v65 + 344));

LABEL_66:

      v72 = *(*(*(v7 + 16) + 144) + 8 * v42 + 32);

      v73 = *(v7 + 16);

      v91 = 1;
      v80[0] = v73;
      v80[1] = v72;
      v80[2] = v7;
      v81 = xmmword_1AFE21110;
      v82 = 1;
      v83 = v39;
      v85 = 0;
      v86 = 0;
      v84 = v41;
      v87 = 1;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      swift_unknownObjectRetain();
      sub_1AFD061A8(v80, a7);

      swift_unknownObjectRelease_n();
      return v77 | v31;
    }

    os_unfair_lock_unlock(*(v65 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6350F8(uint64_t a1, uint64_t a2)
{
  sub_1AF43A540(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF635194()
{
  if (!qword_1ED7225C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7225C0);
    }
  }
}

uint64_t sub_1AF6351F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF635250(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 5)
  {
    v1 = *result + 5;
  }

  if ((v1 & 0xFFFFFFFE) == 2)
  {
    v2 = result;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
    return v2;
  }

  return result;
}

uint64_t sub_1AF635354(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, int a10, char a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a6 + 16);
  v19 = v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v20 = *(v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v20);

  v21 = sub_1AF66F020(a1, a2, a3);
  v23 = v22;

  v24 = *(v18 + 80);
  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_7;
  }

  v26 = 0;
  v27 = v24 + 32;
  while (*(*(v27 + 8 * v26) + 144) != v21)
  {
    if (v25 == ++v26)
    {
      goto LABEL_7;
    }
  }

  v28 = sub_1AF65D418(v23, v26);
  v29 = v28;
  if ((v28 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v29 = sub_1AF65D480(v21, v23, v30, a3);
  }

  v31 = *(*(v18 + 88) + 8 * v29 + 32);
  v32 = *(v19 + 24);

  os_unfair_lock_unlock(v32);

  v33 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v34 = *v33;

  if (v34)
  {
    vfx_counters.add(_:_:)(*(v33 + 40), 1);
  }

  v35 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v36 = *v35;

  v37 = a4;
  if (v36)
  {
    vfx_counters.add(_:_:)(*(v35 + 48), 1);
  }

  v38 = *(v31 + 204);
  if (*(v31 + 208))
  {
    v85 = 0;
    v90 = -1;
  }

  else
  {

    v39 = sub_1AF65B2E4();

    v90 = v39;
    v85 = v39 & 0xFFFFFFFF00000000;
  }

  v40 = *(a6 + 16);
  v41 = *(*(*(v40 + 88) + 8 * v38 + 32) + 200);

  if (v41 == 1)
  {
    *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v42 = *(v40 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v42);
  if (!sub_1AF62173C(v38))
  {
    sub_1AF6AFD3C(v38);
  }

  v43 = 36;
  if (a4)
  {
    v43 = 32;
  }

  v44 = *(*(v40 + 104) + 40 * v38 + v43 + 32);
  if (v44 != -1)
  {
    v45 = *(*(v40 + 144) + 8 * v44 + 32);
    if (*(v45 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v45 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v45 + 376)))
    {
      os_unfair_lock_lock(*(v45 + 344));
      os_unfair_lock_unlock(*(v45 + 376));
      if ((*(v45 + 121) & 1) != 0 || *(v45 + 240) < *(v45 + 88))
      {
        v46 = sub_1AF622B60(v90);
        v47 = v46;
        if ((*(v31 + 208) & 1) == 0)
        {
          v48 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v90;
          *v48 = *(v45 + 188);
          *(v48 + 4) = v46;
          *(v48 + 6) = v38;
        }

        if (*(v31 + 212) == 1)
        {
          v49 = *(v45 + 192);
          if (v49)
          {
            v50 = *(v45 + 208);
            *(v49 + 8 * (v46 >> 6)) |= 1 << v46;
            *(v50 + 8 * (v46 >> 6)) &= ~(1 << v46);
          }

          sub_1AF705804(v46);
        }

        os_unfair_lock_unlock(*(v45 + 344));
        os_unfair_lock_unlock(*(v40 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v45 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v40 + 136));
  v51 = sub_1AF624654();
  if ((v51 & 0x100000000) != 0)
  {
    v52 = *(*(v40 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v58 = sub_1AF64BF6C(v57, a5 | ((HIDWORD(a5) & 1) << 32), v38, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v40 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 144) = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v55 + 2) + 1, 1);
      v55 = *(v40 + 144);
    }

    v61 = *(v55 + 2);
    v60 = *(v55 + 3);
    if (v61 >= v60 >> 1)
    {
      sub_1AFC05EFC(v60 > 1, v61 + 1, 1);
      v55 = *(v40 + 144);
    }

    *(v55 + 2) = v61 + 1;
    *&v55[8 * v61 + 32] = v58;
    v37 = a4;
  }

  else
  {
    v52 = v51;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v38, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v40 + 144);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 144) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1AF6247B0(v55);
    }

    *&v55[8 * v52 + 32] = v54;
  }

  *(v40 + 144) = v55;
  v62 = *(v40 + 104);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(v40 + 104) = v62;
  if ((v63 & 1) == 0)
  {
    v62 = sub_1AFC0D9B8(v62);
    *(v40 + 104) = v62;
  }

  v64 = &v62[40 * v38];
  if (v37)
  {
    v65 = *(v64 + 4);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 4) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AF420E8C(0, *(v65 + 2) + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      v65 = sub_1AF420E8C(v67 > 1, v68 + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    *(v65 + 2) = v68 + 1;
    *&v65[4 * v68 + 32] = v52;
    *(v64 + 16) = v52;
  }

  else
  {
    v69 = *(v64 + 5);
    sub_1AF64B7B0(v69, v69, v52);
    *(v64 + 5) = v69 + 1;
    *(v64 + 17) = v52;
  }

  v64[56] = 1;
  v70 = *(*(v40 + 144) + 8 * v52 + 32);
  v71 = *(v70 + 376);

  if (!os_unfair_lock_trylock(v71))
  {
    goto LABEL_74;
  }

  os_unfair_lock_lock(*(v70 + 344));
  os_unfair_lock_unlock(*(v70 + 376));
  if ((*(v70 + 121) & 1) == 0 && *(v70 + 240) >= *(v70 + 88))
  {
    os_unfair_lock_unlock(*(v70 + 344));
LABEL_74:

    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v72 = sub_1AF622B60(v90);
  v47 = v72;
  if ((*(v31 + 208) & 1) == 0)
  {
    v73 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v90;
    *v73 = *(v70 + 188);
    *(v73 + 4) = v72;
    *(v73 + 6) = v38;
  }

  if (*(v31 + 212) == 1)
  {
    v74 = *(v70 + 192);
    if (v74)
    {
      v75 = *(v70 + 208);
      *(v74 + 8 * (v72 >> 6)) |= 1 << v72;
      *(v75 + 8 * (v72 >> 6)) &= ~(1 << v72);
    }

    sub_1AF705804(v72);
  }

  os_unfair_lock_unlock(*(v70 + 344));

LABEL_66:

  v76 = sub_1AF64B03C(&type metadata for Material);
  v78 = v77;

  if (v78)
  {
    v79 = 0;
  }

  else
  {
    v79 = v76 + 104 * v47;
  }

  v80 = sub_1AF64B03C(&type metadata for Name);
  v82 = v81;

  if (v82)
  {
    v83 = 0;
  }

  else
  {
    v83 = (v80 + 16 * v47);
  }

  *v79 = a7;

  *(v79 + 8) = a8;
  *(v79 + 40) = a10;
  *(v79 + 44) = a11 & 1;
  *(v79 + 48) = a9;

  *v83 = a12;
  v83[1] = a13;

  swift_bridgeObjectRelease_n();
  return v85 | v90;
}

uint64_t sub_1AF635C1C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a6 + 16);
  v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v17 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  v84 = a8;

  os_unfair_lock_lock(v17);

  v18 = sub_1AF66F020(a1, a2, a3);
  v20 = v19;

  v21 = *(v15 + 80);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = 0;
  v24 = v21 + 32;
  while (*(*(v24 + 8 * v23) + 144) != v18)
  {
    if (v22 == ++v23)
    {
      goto LABEL_7;
    }
  }

  v25 = sub_1AF65D418(v20, v23);
  v26 = v25;
  if ((v25 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v26 = sub_1AF65D480(v18, v20, v27, a3);
  }

  v28 = *(*(v15 + 88) + 8 * v26 + 32);
  v29 = *(v16 + 24);

  os_unfair_lock_unlock(v29);

  v30 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v31 = *v30;

  if (v31)
  {
    vfx_counters.add(_:_:)(*(v30 + 40), 1);
  }

  v32 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v33 = *v32;

  v34 = a4;
  if (v33)
  {
    vfx_counters.add(_:_:)(*(v32 + 48), 1);
  }

  v35 = *(v28 + 204);
  if (*(v28 + 208))
  {
    v82 = 0;
    LODWORD(v36) = -1;
  }

  else
  {

    v36 = sub_1AF65B2E4();

    v82 = v36 & 0xFFFFFFFF00000000;
  }

  v37 = *(a6 + 16);
  v38 = *(*(*(v37 + 88) + 8 * v35 + 32) + 200);

  if (v38 == 1)
  {
    *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v39 = *(v37 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v39);
  if (!sub_1AF62173C(v35))
  {
    sub_1AF6AFD3C(v35);
  }

  v40 = 36;
  if (a4)
  {
    v40 = 32;
  }

  v41 = *(*(v37 + 104) + 40 * v35 + v40 + 32);
  if (v41 != -1)
  {
    v42 = *(*(v37 + 144) + 8 * v41 + 32);
    if (*(v42 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v42 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v42 + 376)))
    {
      os_unfair_lock_lock(*(v42 + 344));
      os_unfair_lock_unlock(*(v42 + 376));
      if ((*(v42 + 121) & 1) != 0 || *(v42 + 240) < *(v42 + 88))
      {
        v43 = sub_1AF622B60(v36);
        v44 = v43;
        v46 = v45;
        v47 = *(v42 + 188);
        if ((*(v28 + 208) & 1) == 0)
        {
          v48 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36;
          *v48 = v47;
          *(v48 + 4) = v43;
          *(v48 + 6) = v35;
        }

        if (*(v28 + 212) == 1)
        {
          v49 = *(v42 + 192);
          if (v49)
          {
            v50 = *(v42 + 208);
            *(v49 + 8 * (v43 >> 6)) |= 1 << v43;
            *(v50 + 8 * (v43 >> 6)) &= ~(1 << v43);
          }

          sub_1AF705804(v43);
        }

        os_unfair_lock_unlock(*(v42 + 344));
        os_unfair_lock_unlock(*(v37 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v42 + 344));
    }
  }

LABEL_38:
  v80 = v36;
  os_unfair_lock_unlock(*(v37 + 136));
  v51 = sub_1AF624654();
  if ((v51 & 0x100000000) != 0)
  {
    v52 = *(*(v37 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v58 = sub_1AF64BF6C(v57, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v55 + 2) + 1, 1);
      v55 = *(v37 + 144);
    }

    v61 = *(v55 + 2);
    v60 = *(v55 + 3);
    if (v61 >= v60 >> 1)
    {
      sub_1AFC05EFC(v60 > 1, v61 + 1, 1);
      v55 = *(v37 + 144);
    }

    *(v55 + 2) = v61 + 1;
    *&v55[8 * v61 + 32] = v58;
    v34 = a4;
  }

  else
  {
    v52 = v51;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1AF6247B0(v55);
    }

    *&v55[8 * v52 + 32] = v54;
  }

  *(v37 + 144) = v55;
  v62 = *(v37 + 104);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(v37 + 104) = v62;
  if ((v63 & 1) == 0)
  {
    v62 = sub_1AFC0D9B8(v62);
    *(v37 + 104) = v62;
  }

  v64 = &v62[40 * v35];
  if (v34)
  {
    v65 = *(v64 + 4);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 4) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AF420E8C(0, *(v65 + 2) + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      v65 = sub_1AF420E8C(v67 > 1, v68 + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    *(v65 + 2) = v68 + 1;
    *&v65[4 * v68 + 32] = v52;
    *(v64 + 16) = v52;
  }

  else
  {
    v69 = *(v64 + 5);
    sub_1AF64B7B0(v69, v69, v52);
    *(v64 + 5) = v69 + 1;
    *(v64 + 17) = v52;
  }

  v64[56] = 1;
  v70 = *(*(v37 + 144) + 8 * v52 + 32);
  v71 = *(v70 + 376);

  if (os_unfair_lock_trylock(v71))
  {
    os_unfair_lock_lock(*(v70 + 344));
    os_unfair_lock_unlock(*(v70 + 376));
    LODWORD(v36) = v80;
    if ((*(v70 + 121) & 1) != 0 || *(v70 + 240) < *(v70 + 88))
    {
      v72 = sub_1AF622B60(v80);
      v44 = v72;
      v46 = v73;
      v47 = *(v70 + 188);
      if ((*(v28 + 208) & 1) == 0)
      {
        v74 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v80;
        *v74 = v47;
        *(v74 + 4) = v72;
        *(v74 + 6) = v35;
      }

      if (*(v28 + 212) == 1)
      {
        v75 = *(v70 + 192);
        if (v75)
        {
          v76 = *(v70 + 208);
          *(v75 + 8 * (v72 >> 6)) |= 1 << v72;
          *(v76 + 8 * (v72 >> 6)) &= ~(1 << v72);
        }

        sub_1AF705804(v72);
      }

      os_unfair_lock_unlock(*(v70 + 344));

LABEL_66:

      v77 = *(*(*(a6 + 16) + 144) + 8 * v47 + 32);

      v78 = *(a6 + 16);

      v97 = 1;
      v86[0] = v78;
      v86[1] = v77;
      v86[2] = a6;
      v87 = xmmword_1AFE21110;
      v88 = 1;
      v89 = v44;
      v91 = 0;
      v92 = 0;
      v90 = v46;
      v93 = 1;
      v95 = 0;
      v96 = 0;
      v94 = 0;

      sub_1AFD0626C(v86, a7, v84, a9, a10);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return v82 | v36;
    }

    os_unfair_lock_unlock(*(v70 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63663C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t (*a14)(void), uint64_t a15, uint64_t a16, unint64_t *a17)
{
  v21 = *(a6 + 16);
  v22 = v21 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v23 = *(v21 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v23);

  v24 = sub_1AF66F020(a1, a2, a3);
  v26 = v25;

  v27 = *(v21 + 80);
  v28 = *(v27 + 16);
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = 0;
  v30 = v27 + 32;
  while (*(*(v30 + 8 * v29) + 144) != v24)
  {
    if (v28 == ++v29)
    {
      goto LABEL_7;
    }
  }

  v31 = sub_1AF65D418(v26, v29);
  v32 = v31;
  if ((v31 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v32 = sub_1AF65D480(v24, v26, v33, a3);
  }

  v34 = *(*(v21 + 88) + 8 * v32 + 32);
  v35 = *(v22 + 24);

  os_unfair_lock_unlock(v35);

  v36 = a6;
  v37 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v38 = *v37;

  if (v38)
  {
    vfx_counters.add(_:_:)(*(v37 + 40), 1);
  }

  v39 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v40 = *v39;

  if (v40)
  {
    vfx_counters.add(_:_:)(*(v39 + 48), 1);
  }

  v41 = *(v34 + 204);
  if (*(v34 + 208))
  {
    v106 = 0;
    v110 = -1;
  }

  else
  {

    v42 = sub_1AF65B2E4();

    v110 = v42;
    v106 = v42 & 0xFFFFFFFF00000000;
  }

  v43 = *(a6 + 16);
  v44 = *(*(*(v43 + 88) + 8 * v41 + 32) + 200);

  if (v44 == 1)
  {
    *(v43 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v45 = *(v43 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v45);
  if (!sub_1AF62173C(v41))
  {
    sub_1AF6AFD3C(v41);
  }

  v46 = 36;
  if (a4)
  {
    v46 = 32;
  }

  v47 = *(*(v43 + 104) + 40 * v41 + v46 + 32);
  if (v47 != -1)
  {
    v48 = *(*(v43 + 144) + 8 * v47 + 32);
    if (*(v48 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v48 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v48 + 376)))
    {
      os_unfair_lock_lock(*(v48 + 344));
      os_unfair_lock_unlock(*(v48 + 376));
      if ((*(v48 + 121) & 1) != 0 || *(v48 + 240) < *(v48 + 88))
      {
        v49 = sub_1AF622B60(v110);
        v50 = v49;
        if ((*(v34 + 208) & 1) == 0)
        {
          v51 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v110;
          *v51 = *(v48 + 188);
          *(v51 + 4) = v49;
          *(v51 + 6) = v41;
        }

        if (*(v34 + 212) == 1)
        {
          v52 = *(v48 + 192);
          if (v52)
          {
            v53 = *(v48 + 208);
            *(v52 + 8 * (v49 >> 6)) |= 1 << v49;
            *(v53 + 8 * (v49 >> 6)) &= ~(1 << v49);
          }

          sub_1AF705804(v49);
        }

        os_unfair_lock_unlock(*(v48 + 344));
        os_unfair_lock_unlock(*(v43 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v48 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v43 + 136));
  v54 = sub_1AF624654();
  if ((v54 & 0x100000000) != 0)
  {
    v55 = *(*(v43 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v61 = sub_1AF64BF6C(v60, a5 | ((HIDWORD(a5) & 1) << 32), v41, a4 & 1, v55);

    _swift_stdlib_immortalize();

    v58 = *(v43 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 144) = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v58 + 2) + 1, 1);
      v58 = *(v43 + 144);
    }

    v64 = *(v58 + 2);
    v63 = *(v58 + 3);
    if (v64 >= v63 >> 1)
    {
      sub_1AFC05EFC(v63 > 1, v64 + 1, 1);
      v58 = *(v43 + 144);
    }

    *(v58 + 2) = v64 + 1;
    *&v58[8 * v64 + 32] = v61;
    v36 = a6;
  }

  else
  {
    v55 = v54;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v57 = sub_1AF64BF6C(v56, a5 | ((HIDWORD(a5) & 1) << 32), v41, a4 & 1, v55);

    _swift_stdlib_immortalize();

    v58 = *(v43 + 144);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 144) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF6247B0(v58);
    }

    *&v58[8 * v55 + 32] = v57;
  }

  *(v43 + 144) = v58;
  v65 = *(v43 + 104);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + 104) = v65;
  if ((v66 & 1) == 0)
  {
    v65 = sub_1AFC0D9B8(v65);
    *(v43 + 104) = v65;
  }

  v67 = &v65[40 * v41];
  if (a4)
  {
    v68 = *(v67 + 4);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 4) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_1AF420E8C(0, *(v68 + 2) + 1, 1, v68);
      *(v67 + 4) = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      v68 = sub_1AF420E8C(v70 > 1, v71 + 1, 1, v68);
      *(v67 + 4) = v68;
    }

    *(v68 + 2) = v71 + 1;
    *&v68[4 * v71 + 32] = v55;
    *(v67 + 16) = v55;
    v36 = a6;
  }

  else
  {
    v72 = *(v67 + 5);
    sub_1AF64B7B0(v72, v72, v55);
    *(v67 + 5) = v72 + 1;
    *(v67 + 17) = v55;
  }

  v67[56] = 1;
  v73 = *(*(v43 + 144) + 8 * v55 + 32);
  v74 = *(v73 + 376);

  if (!os_unfair_lock_trylock(v74))
  {
    goto LABEL_75;
  }

  os_unfair_lock_lock(*(v73 + 344));
  os_unfair_lock_unlock(*(v73 + 376));
  if ((*(v73 + 121) & 1) == 0 && *(v73 + 240) >= *(v73 + 88))
  {
    os_unfair_lock_unlock(*(v73 + 344));
LABEL_75:

    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v75 = sub_1AF622B60(v110);
  v50 = v75;
  if ((*(v34 + 208) & 1) == 0)
  {
    v76 = *(*(v36 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v110;
    *v76 = *(v73 + 188);
    *(v76 + 4) = v75;
    *(v76 + 6) = v41;
  }

  if (*(v34 + 212) == 1)
  {
    v77 = *(v73 + 192);
    if (v77)
    {
      v78 = *(v73 + 208);
      *(v77 + 8 * (v75 >> 6)) |= 1 << v75;
      *(v78 + 8 * (v75 >> 6)) &= ~(1 << v75);
    }

    sub_1AF705804(v75);
  }

  os_unfair_lock_unlock(*(v73 + 344));

LABEL_66:

  v79 = a14(0);

  v80 = sub_1AF64B03C(v79);
  v82 = v81;

  if (v82)
  {
    v83 = 0;
  }

  else
  {
    v83 = v80 + 152 * v50;
  }

  v84 = sub_1AF64B03C(&type metadata for AnimationTimeSource);

  v85 = v84 + 60 * v50;
  *(v83 + 16) = a7;
  *v85 = a9;
  *(v85 + 21) = 1;
  *(v85 + 40) = a8;
  v86 = *(a10 + 32);
  v87 = *(a10 + 40);
  v88 = *(a10 + 48);
  v89 = *(a10 + 56);

  *(v83 + 24) = v86;
  *(v83 + 32) = v87;
  *(v83 + 40) = v88;
  *(v83 + 48) = v89;
  v90 = *(a10 + 16);
  if (v90 > 1)
  {
    v91 = *(a10 + 64);
    v92 = *(a10 + 72);
    v93 = *(a10 + 80);
    v94 = *(a10 + 88);

    *(v83 + 56) = v91;
    *(v83 + 64) = v92;
    *(v83 + 72) = v93;
    *(v83 + 80) = v94;
    if (v90 != 2)
    {
      v95 = *(a10 + 96);
      v96 = *(a10 + 104);
      v97 = *(a10 + 112);
      v98 = *(a10 + 120);

      *(v83 + 88) = v95;
      *(v83 + 96) = v96;
      *(v83 + 104) = v97;
      *(v83 + 112) = v98;
      if (v90 >= 4)
      {
        v99 = *(a10 + 128);
        v100 = *(a10 + 136);
        v101 = *(a10 + 144);
        v102 = *(a10 + 152);

        *(v83 + 120) = v99;
        *(v83 + 128) = v100;
        *(v83 + 136) = v101;
        *(v83 + 144) = v102;
      }
    }
  }

  sub_1AF62BA88(v103, a12, a15, a16, a13, a17, a15);

  swift_bridgeObjectRelease_n();

  return v106 | v110;
}

uint64_t sub_1AF6370B8(uint64_t a1, unint64_t a2, Swift::Int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a4 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v9 = *v8;

  if (v9)
  {
    vfx_counters.add(_:_:)(*(v8 + 40), a3);
  }

  v10 = *(v4 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v11 = *v10;

  if (v11)
  {
    vfx_counters.add(_:_:)(*(v10 + 48), a3);
  }

  ecs_stack_allocator_push_snapshot(*(v4 + 32));
  v12 = *(a1 + 204);
  v13 = ecs_stack_allocator_allocate(*(v4 + 32), 4 * a3, 4);
  v14 = v13;
  if (*(a1 + 208) == 1)
  {
    v15 = *(v4 + 16);

    v47 = 0;
    v48 = (4 * a3) >> 2;
    v49 = v14;
    v50 = v48;
    if (v48 >= 1)
    {
      do
      {
        sub_1AF621788(v12, a2 | ((HIDWORD(a2) & 1) << 32), 1, v15, &v47);
      }

      while (v48 - v47 > 0);
    }
  }

  else
  {
    v42 = (4 * a3) >> 2;
    v43 = v12;
    v41 = a2;
    if (a3)
    {
      v16 = a3;
      v17 = 0;
      v44 = a3;
      v45 = v4;
      v46 = v13;
      do
      {
        v20 = *(v4 + 16);
        v21 = v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
        v22 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

        os_unfair_lock_lock(v22);
        ++*(v20 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
        v23 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
        LODWORD(v24) = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
        if (v24 == -1)
        {
          v25 = (v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v26 = OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity;
          v27 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v24 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
          v28 = 2 * *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
          *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = v28;
          v29 = swift_slowAlloc();
          *v25 = v29;
          v25[1] = v28;
          if (v29 != v27 || v29 >= &v27[12 * v24])
          {
            memmove(v29, v27, 12 * v24);
          }

          if (v27)
          {
            MEMORY[0x1B271DEA0](v27, -1, -1);
          }

          v31 = *(v20 + v26);
          v32 = *v25;
          v4 = v45;
          if (v31 - 1 != v24)
          {
            v33 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
            v34 = v24 + 1;
            do
            {
              v35 = *(v20 + v33);
              v36 = &v32[12 * v34 - 12];
              *v36 = v34;
              *(v36 + 1) = -1;
              *(v36 + 2) = v35;
              ++v34;
            }

            while (v31 != v34);
          }

          v18 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
          v19 = &v32[12 * v31];
          *(v19 - 12) = -1;
          *(v19 - 1) = v18;
          *(v20 + v23) = v24;
          v16 = v44;
        }

        *(v20 + v23) = *(*(v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v24);
        os_unfair_lock_unlock(*(v21 + 24));

        *(v46 + v17) = v24;
        v14 = v46;
        ++v17;
      }

      while (v17 != v16);
    }

    v51 = 0;
    v37 = *(v4 + 16);

    MEMORY[0x1EEE9AC00](v38, v39);
    v47 = 0;
    v48 = v42;
    v49 = v14;
    v50 = v42;
    if (v42 >= 1)
    {
      do
      {
        sub_1AF625BF8(v43, v41 | ((HIDWORD(v41) & 1) << 32), 1, v37, &v47, sub_1AF63E0C0);
      }

      while (v48 - v47 > 0);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(v4 + 32));
}

uint64_t sub_1AF637470(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v12 = *(a6 + 16);
  v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v14);

  v15 = sub_1AF66F020(a1, a2, a3);
  v17 = v16;

  v18 = *(v12 + 80);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = v18 + 32;
  while (*(*(v21 + 8 * v20) + 144) != v15)
  {
    if (v19 == ++v20)
    {
      goto LABEL_7;
    }
  }

  v22 = sub_1AF65D418(v17, v20);
  v23 = v22;
  if ((v22 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v23 = sub_1AF65D480(v15, v17, v24, a3);
  }

  v25 = *(*(v12 + 88) + 8 * v23 + 32);
  v26 = *(v13 + 24);

  os_unfair_lock_unlock(v26);

  v27 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 40), 1);
  }

  v29 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v30 = *v29;

  if (v30)
  {
    vfx_counters.add(_:_:)(*(v29 + 48), 1);
  }

  v31 = *(v25 + 204);
  if (*(v25 + 208))
  {
    v78 = 0;
    LODWORD(v32) = -1;
  }

  else
  {

    v32 = sub_1AF65B2E4();

    v78 = v32 & 0xFFFFFFFF00000000;
  }

  v33 = *(v8 + 16);
  v34 = *(*(*(v33 + 88) + 8 * v31 + 32) + 200);

  if (v34 == 1)
  {
    *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v35 = *(v33 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v35);
  if (!sub_1AF62173C(v31))
  {
    sub_1AF6AFD3C(v31);
  }

  v36 = 36;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(*(v33 + 104) + 40 * v31 + v36 + 32);
  if (v37 != -1)
  {
    v38 = *(*(v33 + 144) + 8 * v37 + 32);
    if (*(v38 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v38 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v38 + 376)))
    {
      os_unfair_lock_lock(*(v38 + 344));
      os_unfair_lock_unlock(*(v38 + 376));
      if ((*(v38 + 121) & 1) != 0 || *(v38 + 240) < *(v38 + 88))
      {
        v39 = sub_1AF622B60(v32);
        v40 = v39;
        v42 = v41;
        v43 = *(v38 + 188);
        if ((*(v25 + 208) & 1) == 0)
        {
          v44 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
          *v44 = v43;
          *(v44 + 4) = v39;
          *(v44 + 6) = v31;
        }

        if (*(v25 + 212) == 1)
        {
          v45 = *(v38 + 192);
          if (v45)
          {
            v46 = *(v38 + 208);
            *(v45 + 8 * (v39 >> 6)) |= 1 << v39;
            *(v46 + 8 * (v39 >> 6)) &= ~(1 << v39);
          }

          sub_1AF705804(v39);
        }

        os_unfair_lock_unlock(*(v38 + 344));
        os_unfair_lock_unlock(*(v33 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v38 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v33 + 136));
  v47 = sub_1AF624654();
  v76 = v8;
  if ((v47 & 0x100000000) != 0)
  {
    v48 = *(*(v33 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    v56 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v51 + 2) + 1, 1);
      v51 = *(v33 + 144);
    }

    v32 = *(v51 + 2);
    v57 = *(v51 + 3);
    if (v32 >= v57 >> 1)
    {
      sub_1AFC05EFC(v57 > 1, v32 + 1, 1);
      v51 = *(v33 + 144);
    }

    *(v51 + 2) = v32 + 1;
    *&v51[8 * v32 + 32] = v54;
    LODWORD(v32) = v56;
    v8 = v76;
  }

  else
  {
    v48 = v47;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v50 = sub_1AF64BF6C(v49, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1AF6247B0(v51);
    }

    *&v51[8 * v48 + 32] = v50;
  }

  *(v33 + 144) = v51;
  v58 = *(v33 + 104);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 104) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = sub_1AFC0D9B8(v58);
    *(v33 + 104) = v58;
  }

  v60 = &v58[40 * v31];
  if (a4)
  {
    v61 = *(v60 + 4);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + 4) = v61;
    v63 = v32;
    if ((v62 & 1) == 0)
    {
      v61 = sub_1AF420E8C(0, *(v61 + 2) + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    v32 = *(v61 + 2);
    v64 = *(v61 + 3);
    if (v32 >= v64 >> 1)
    {
      v61 = sub_1AF420E8C(v64 > 1, v32 + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    *(v61 + 2) = v32 + 1;
    *&v61[4 * v32 + 32] = v48;
    *(v60 + 16) = v48;
    LODWORD(v32) = v63;
    v8 = v76;
  }

  else
  {
    v65 = *(v60 + 5);
    sub_1AF64B7B0(v65, v65, v48);
    *(v60 + 5) = v65 + 1;
    *(v60 + 17) = v48;
  }

  v60[56] = 1;
  v66 = *(*(v33 + 144) + 8 * v48 + 32);
  v67 = *(v66 + 376);

  if (os_unfair_lock_trylock(v67))
  {
    os_unfair_lock_lock(*(v66 + 344));
    os_unfair_lock_unlock(*(v66 + 376));
    if ((*(v66 + 121) & 1) != 0 || *(v66 + 240) < *(v66 + 88))
    {
      v68 = sub_1AF622B60(v32);
      v40 = v68;
      v42 = v69;
      v43 = *(v66 + 188);
      if ((*(v25 + 208) & 1) == 0)
      {
        v70 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
        *v70 = v43;
        *(v70 + 4) = v68;
        *(v70 + 6) = v31;
      }

      if (*(v25 + 212) == 1)
      {
        v71 = *(v66 + 192);
        if (v71)
        {
          v72 = *(v66 + 208);
          *(v71 + 8 * (v68 >> 6)) |= 1 << v68;
          *(v72 + 8 * (v68 >> 6)) &= ~(1 << v68);
        }

        sub_1AF705804(v68);
      }

      os_unfair_lock_unlock(*(v66 + 344));

LABEL_66:

      v73 = *(*(*(v8 + 16) + 144) + 8 * v43 + 32);

      v74 = *(v8 + 16);

      v93 = 1;
      v82[0] = v74;
      v82[1] = v73;
      v82[2] = v8;
      v83 = xmmword_1AFE21110;
      v84 = 1;
      v85 = v40;
      v87 = 0;
      v88 = 0;
      v86 = v42;
      v89 = 1;
      v91 = 0;
      v92 = 0;
      v90 = 0;

      sub_1AFD06478(v82, a7, a8);

      return v78 | v32;
    }

    os_unfair_lock_unlock(*(v66 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF637C90(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v7 = a6;
  v11 = *(a6 + 16);
  v12 = v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v13 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v13);

  v14 = sub_1AF66F020(a1, a2, a3);
  v16 = v15;

  v17 = *(v11 + 80);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v20 = v17 + 32;
  while (*(*(v20 + 8 * v19) + 144) != v14)
  {
    if (v18 == ++v19)
    {
      goto LABEL_7;
    }
  }

  v21 = sub_1AF65D418(v16, v19);
  v22 = v21;
  if ((v21 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v22 = sub_1AF65D480(v14, v16, v23, a3);
  }

  v24 = *(*(v11 + 88) + 8 * v22 + 32);
  v25 = *(v12 + 24);

  os_unfair_lock_unlock(v25);

  v26 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v27 = *v26;

  if (v27)
  {
    vfx_counters.add(_:_:)(*(v26 + 40), 1);
  }

  v28 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v29 = *v28;

  if (v29)
  {
    vfx_counters.add(_:_:)(*(v28 + 48), 1);
  }

  v30 = *(v24 + 204);
  if (*(v24 + 208))
  {
    v77 = 0;
    LODWORD(v31) = -1;
  }

  else
  {

    v31 = sub_1AF65B2E4();

    v77 = v31 & 0xFFFFFFFF00000000;
  }

  v32 = *(v7 + 16);
  v33 = *(*(*(v32 + 88) + 8 * v30 + 32) + 200);

  if (v33 == 1)
  {
    *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v34 = *(v32 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v34);
  if (!sub_1AF62173C(v30))
  {
    sub_1AF6AFD3C(v30);
  }

  v35 = 36;
  if (a4)
  {
    v35 = 32;
  }

  v36 = *(*(v32 + 104) + 40 * v30 + v35 + 32);
  if (v36 != -1)
  {
    v37 = *(*(v32 + 144) + 8 * v36 + 32);
    if (*(v37 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v37 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v37 + 376)))
    {
      os_unfair_lock_lock(*(v37 + 344));
      os_unfair_lock_unlock(*(v37 + 376));
      if ((*(v37 + 121) & 1) != 0 || *(v37 + 240) < *(v37 + 88))
      {
        v38 = sub_1AF622B60(v31);
        v39 = v38;
        v41 = v40;
        v42 = *(v37 + 188);
        if ((*(v24 + 208) & 1) == 0)
        {
          v43 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
          *v43 = v42;
          *(v43 + 4) = v38;
          *(v43 + 6) = v30;
        }

        if (*(v24 + 212) == 1)
        {
          v44 = *(v37 + 192);
          if (v44)
          {
            v45 = *(v37 + 208);
            *(v44 + 8 * (v38 >> 6)) |= 1 << v38;
            *(v45 + 8 * (v38 >> 6)) &= ~(1 << v38);
          }

          sub_1AF705804(v38);
        }

        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v32 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v37 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v32 + 136));
  v46 = sub_1AF624654();
  v75 = v7;
  if ((v46 & 0x100000000) != 0)
  {
    v47 = *(*(v32 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    v55 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v50 + 2) + 1, 1);
      v50 = *(v32 + 144);
    }

    v31 = *(v50 + 2);
    v56 = *(v50 + 3);
    if (v31 >= v56 >> 1)
    {
      sub_1AFC05EFC(v56 > 1, v31 + 1, 1);
      v50 = *(v32 + 144);
    }

    *(v50 + 2) = v31 + 1;
    *&v50[8 * v31 + 32] = v53;
    LODWORD(v31) = v55;
    v7 = v75;
  }

  else
  {
    v47 = v46;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v49 = sub_1AF64BF6C(v48, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1AF6247B0(v50);
    }

    *&v50[8 * v47 + 32] = v49;
  }

  *(v32 + 144) = v50;
  v57 = *(v32 + 104);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 104) = v57;
  if ((v58 & 1) == 0)
  {
    v57 = sub_1AFC0D9B8(v57);
    *(v32 + 104) = v57;
  }

  v59 = &v57[40 * v30];
  if (a4)
  {
    v60 = *(v59 + 4);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 4) = v60;
    v62 = v31;
    if ((v61 & 1) == 0)
    {
      v60 = sub_1AF420E8C(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    v31 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v31 >= v63 >> 1)
    {
      v60 = sub_1AF420E8C(v63 > 1, v31 + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    *(v60 + 2) = v31 + 1;
    *&v60[4 * v31 + 32] = v47;
    *(v59 + 16) = v47;
    LODWORD(v31) = v62;
    v7 = v75;
  }

  else
  {
    v64 = *(v59 + 5);
    sub_1AF64B7B0(v64, v64, v47);
    *(v59 + 5) = v64 + 1;
    *(v59 + 17) = v47;
  }

  v59[56] = 1;
  v65 = *(*(v32 + 144) + 8 * v47 + 32);
  v66 = *(v65 + 376);

  if (os_unfair_lock_trylock(v66))
  {
    os_unfair_lock_lock(*(v65 + 344));
    os_unfair_lock_unlock(*(v65 + 376));
    if ((*(v65 + 121) & 1) != 0 || *(v65 + 240) < *(v65 + 88))
    {
      v67 = sub_1AF622B60(v31);
      v39 = v67;
      v41 = v68;
      v42 = *(v65 + 188);
      if ((*(v24 + 208) & 1) == 0)
      {
        v69 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
        *v69 = v42;
        *(v69 + 4) = v67;
        *(v69 + 6) = v30;
      }

      if (*(v24 + 212) == 1)
      {
        v70 = *(v65 + 192);
        if (v70)
        {
          v71 = *(v65 + 208);
          *(v70 + 8 * (v67 >> 6)) |= 1 << v67;
          *(v71 + 8 * (v67 >> 6)) &= ~(1 << v67);
        }

        sub_1AF705804(v67);
      }

      os_unfair_lock_unlock(*(v65 + 344));

LABEL_66:

      v72 = *(*(*(v7 + 16) + 144) + 8 * v42 + 32);

      v73 = *(v7 + 16);

      v91 = 1;
      v80[0] = v73;
      v80[1] = v72;
      v80[2] = v7;
      v81 = xmmword_1AFE21110;
      v82 = 1;
      v83 = v39;
      v85 = 0;
      v86 = 0;
      v84 = v41;
      v87 = 1;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      sub_1AF63391C(v80, a7);

      return v77 | v31;
    }

    os_unfair_lock_unlock(*(v65 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6384BC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, void *a7, void (*a8)(void *, id))
{
  v8 = a6;
  v12 = *(a6 + 16);
  v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);
  v80 = a7;

  os_unfair_lock_lock(v14);

  v15 = sub_1AF66F020(a1, a2, a3);
  v17 = v16;

  v18 = *(v12 + 80);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = v18 + 32;
  while (*(*(v21 + 8 * v20) + 144) != v15)
  {
    if (v19 == ++v20)
    {
      goto LABEL_7;
    }
  }

  v22 = sub_1AF65D418(v17, v20);
  v23 = v22;
  if ((v22 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v23 = sub_1AF65D480(v15, v17, v24, a3);
  }

  v25 = *(*(v12 + 88) + 8 * v23 + 32);
  v26 = *(v13 + 24);

  os_unfair_lock_unlock(v26);

  v27 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 40), 1);
  }

  v29 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v30 = *v29;

  if (v30)
  {
    vfx_counters.add(_:_:)(*(v29 + 48), 1);
  }

  v31 = *(v25 + 204);
  if (*(v25 + 208))
  {
    v79 = 0;
    LODWORD(v32) = -1;
  }

  else
  {

    v32 = sub_1AF65B2E4();

    v79 = v32 & 0xFFFFFFFF00000000;
  }

  v33 = *(v8 + 16);
  v34 = *(*(*(v33 + 88) + 8 * v31 + 32) + 200);

  if (v34 == 1)
  {
    *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v35 = *(v33 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v35);
  if (!sub_1AF62173C(v31))
  {
    sub_1AF6AFD3C(v31);
  }

  v36 = 36;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(*(v33 + 104) + 40 * v31 + v36 + 32);
  if (v37 != -1)
  {
    v38 = *(*(v33 + 144) + 8 * v37 + 32);
    if (*(v38 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v38 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v38 + 376)))
    {
      os_unfair_lock_lock(*(v38 + 344));
      os_unfair_lock_unlock(*(v38 + 376));
      if ((*(v38 + 121) & 1) != 0 || *(v38 + 240) < *(v38 + 88))
      {
        v39 = sub_1AF622B60(v32);
        v40 = v39;
        v42 = v41;
        v43 = *(v38 + 188);
        if ((*(v25 + 208) & 1) == 0)
        {
          v44 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
          *v44 = v43;
          *(v44 + 4) = v39;
          *(v44 + 6) = v31;
        }

        if (*(v25 + 212) == 1)
        {
          v45 = *(v38 + 192);
          if (v45)
          {
            v46 = *(v38 + 208);
            *(v45 + 8 * (v39 >> 6)) |= 1 << v39;
            *(v46 + 8 * (v39 >> 6)) &= ~(1 << v39);
          }

          sub_1AF705804(v39);
        }

        os_unfair_lock_unlock(*(v38 + 344));
        os_unfair_lock_unlock(*(v33 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v38 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v33 + 136));
  v47 = sub_1AF624654();
  v77 = v8;
  if ((v47 & 0x100000000) != 0)
  {
    v48 = *(*(v33 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    v56 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v51 + 2) + 1, 1);
      v51 = *(v33 + 144);
    }

    v32 = *(v51 + 2);
    v57 = *(v51 + 3);
    if (v32 >= v57 >> 1)
    {
      sub_1AFC05EFC(v57 > 1, v32 + 1, 1);
      v51 = *(v33 + 144);
    }

    *(v51 + 2) = v32 + 1;
    *&v51[8 * v32 + 32] = v54;
    LODWORD(v32) = v56;
    v8 = v77;
  }

  else
  {
    v48 = v47;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v50 = sub_1AF64BF6C(v49, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1AF6247B0(v51);
    }

    *&v51[8 * v48 + 32] = v50;
  }

  *(v33 + 144) = v51;
  v58 = *(v33 + 104);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 104) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = sub_1AFC0D9B8(v58);
    *(v33 + 104) = v58;
  }

  v60 = &v58[40 * v31];
  if (a4)
  {
    v61 = *(v60 + 4);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + 4) = v61;
    v63 = v32;
    if ((v62 & 1) == 0)
    {
      v61 = sub_1AF420E8C(0, *(v61 + 2) + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    v32 = *(v61 + 2);
    v64 = *(v61 + 3);
    if (v32 >= v64 >> 1)
    {
      v61 = sub_1AF420E8C(v64 > 1, v32 + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    *(v61 + 2) = v32 + 1;
    *&v61[4 * v32 + 32] = v48;
    *(v60 + 16) = v48;
    LODWORD(v32) = v63;
    v8 = v77;
  }

  else
  {
    v65 = *(v60 + 5);
    sub_1AF64B7B0(v65, v65, v48);
    *(v60 + 5) = v65 + 1;
    *(v60 + 17) = v48;
  }

  v60[56] = 1;
  v66 = *(*(v33 + 144) + 8 * v48 + 32);
  v67 = *(v66 + 376);

  if (os_unfair_lock_trylock(v67))
  {
    os_unfair_lock_lock(*(v66 + 344));
    os_unfair_lock_unlock(*(v66 + 376));
    if ((*(v66 + 121) & 1) != 0 || *(v66 + 240) < *(v66 + 88))
    {
      v68 = sub_1AF622B60(v32);
      v40 = v68;
      v42 = v69;
      v43 = *(v66 + 188);
      if ((*(v25 + 208) & 1) == 0)
      {
        v70 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
        *v70 = v43;
        *(v70 + 4) = v68;
        *(v70 + 6) = v31;
      }

      if (*(v25 + 212) == 1)
      {
        v71 = *(v66 + 192);
        if (v71)
        {
          v72 = *(v66 + 208);
          *(v71 + 8 * (v68 >> 6)) |= 1 << v68;
          *(v72 + 8 * (v68 >> 6)) &= ~(1 << v68);
        }

        sub_1AF705804(v68);
      }

      os_unfair_lock_unlock(*(v66 + 344));

LABEL_66:

      v73 = *(*(*(v8 + 16) + 144) + 8 * v43 + 32);

      v74 = *(v8 + 16);

      v94 = 1;
      v83[0] = v74;
      v83[1] = v73;
      v83[2] = v8;
      v84 = xmmword_1AFE21110;
      v85 = 1;
      v86 = v40;
      v88 = 0;
      v89 = 0;
      v87 = v42;
      v90 = 1;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      v75 = v80;
      a8(v83, v75);

      return v79 | v32;
    }

    os_unfair_lock_unlock(*(v66 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF638CD8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = *(a6 + 16);
  v15 = v14 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v16 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  v81 = a7;
  v82 = a8;
  sub_1AF43C9F0(a7, a8);
  os_unfair_lock_lock(v16);

  v17 = sub_1AF66F020(a1, a2, a3);
  v19 = v18;

  v20 = *(v14 + 80);
  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = 0;
  v23 = v20 + 32;
  while (*(*(v23 + 8 * v22) + 144) != v17)
  {
    if (v21 == ++v22)
    {
      goto LABEL_7;
    }
  }

  v24 = sub_1AF65D418(v19, v22);
  v25 = v24;
  if ((v24 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v25 = sub_1AF65D480(v17, v19, v26, a3);
  }

  v27 = *(*(v14 + 88) + 8 * v25 + 32);
  v28 = *(v15 + 24);

  os_unfair_lock_unlock(v28);

  v29 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v30 = *v29;

  if (v30)
  {
    vfx_counters.add(_:_:)(*(v29 + 40), 1);
  }

  v31 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v32 = *v31;

  if (v32)
  {
    vfx_counters.add(_:_:)(*(v31 + 48), 1);
  }

  v33 = *(v27 + 204);
  v34 = a4;
  if (*(v27 + 208))
  {
    v80 = 0;
    v84 = -1;
  }

  else
  {

    v35 = sub_1AF65B2E4();

    v84 = v35;
    v80 = v35 & 0xFFFFFFFF00000000;
  }

  v36 = *(a6 + 16);
  v37 = *(*(*(v36 + 88) + 8 * v33 + 32) + 200);

  if (v37 == 1)
  {
    *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v38 = *(v36 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v38);
  if (!sub_1AF62173C(v33))
  {
    sub_1AF6AFD3C(v33);
  }

  v39 = 36;
  if (a4)
  {
    v39 = 32;
  }

  v40 = *(*(v36 + 104) + 40 * v33 + v39 + 32);
  if (v40 != -1)
  {
    v41 = *(*(v36 + 144) + 8 * v40 + 32);
    if (*(v41 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v41 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v41 + 376)))
    {
      os_unfair_lock_lock(*(v41 + 344));
      os_unfair_lock_unlock(*(v41 + 376));
      if ((*(v41 + 121) & 1) != 0 || *(v41 + 240) < *(v41 + 88))
      {
        v42 = sub_1AF622B60(v84);
        v43 = v42;
        v45 = v44;
        v46 = *(v41 + 188);
        if ((*(v27 + 208) & 1) == 0)
        {
          v47 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v84;
          *v47 = v46;
          *(v47 + 4) = v42;
          *(v47 + 6) = v33;
        }

        if (*(v27 + 212) == 1)
        {
          v48 = *(v41 + 192);
          if (v48)
          {
            v49 = *(v41 + 208);
            *(v48 + 8 * (v42 >> 6)) |= 1 << v42;
            *(v49 + 8 * (v42 >> 6)) &= ~(1 << v42);
          }

          sub_1AF705804(v42);
        }

        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v36 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v41 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v36 + 136));
  v50 = sub_1AF624654();
  if ((v50 & 0x100000000) != 0)
  {
    v51 = *(*(v36 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v57 = sub_1AF64BF6C(v56, a5 | ((HIDWORD(a5) & 1) << 32), v33, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v54 + 2) + 1, 1);
      v54 = *(v36 + 144);
    }

    v60 = *(v54 + 2);
    v59 = *(v54 + 3);
    if (v60 >= v59 >> 1)
    {
      sub_1AFC05EFC(v59 > 1, v60 + 1, 1);
      v54 = *(v36 + 144);
    }

    *(v54 + 2) = v60 + 1;
    *&v54[8 * v60 + 32] = v57;
    v34 = a4;
  }

  else
  {
    v51 = v50;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v33, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1AF6247B0(v54);
    }

    *&v54[8 * v51 + 32] = v53;
  }

  *(v36 + 144) = v54;
  v61 = *(v36 + 104);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + 104) = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1AFC0D9B8(v61);
    *(v36 + 104) = v61;
  }

  v63 = &v61[40 * v33];
  if (v34)
  {
    v64 = *(v63 + 4);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 4) = v64;
    if ((v65 & 1) == 0)
    {
      v64 = sub_1AF420E8C(0, *(v64 + 2) + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    v67 = *(v64 + 2);
    v66 = *(v64 + 3);
    if (v67 >= v66 >> 1)
    {
      v64 = sub_1AF420E8C(v66 > 1, v67 + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    *(v64 + 2) = v67 + 1;
    *&v64[4 * v67 + 32] = v51;
    *(v63 + 16) = v51;
  }

  else
  {
    v68 = *(v63 + 5);
    sub_1AF64B7B0(v68, v68, v51);
    *(v63 + 5) = v68 + 1;
    *(v63 + 17) = v51;
  }

  v63[56] = 1;
  v69 = *(*(v36 + 144) + 8 * v51 + 32);
  v70 = *(v69 + 376);

  if (os_unfair_lock_trylock(v70))
  {
    os_unfair_lock_lock(*(v69 + 344));
    os_unfair_lock_unlock(*(v69 + 376));
    if ((*(v69 + 121) & 1) != 0 || *(v69 + 240) < *(v69 + 88))
    {
      v71 = sub_1AF622B60(v84);
      v43 = v71;
      v45 = v72;
      v46 = *(v69 + 188);
      if ((*(v27 + 208) & 1) == 0)
      {
        v73 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v84;
        *v73 = v46;
        *(v73 + 4) = v71;
        *(v73 + 6) = v33;
      }

      if (*(v27 + 212) == 1)
      {
        v74 = *(v69 + 192);
        if (v74)
        {
          v75 = *(v69 + 208);
          *(v74 + 8 * (v71 >> 6)) |= 1 << v71;
          *(v75 + 8 * (v71 >> 6)) &= ~(1 << v71);
        }

        sub_1AF705804(v71);
      }

      os_unfair_lock_unlock(*(v69 + 344));

LABEL_66:

      v76 = *(*(*(a6 + 16) + 144) + 8 * v46 + 32);

      v77 = *(a6 + 16);

      v96 = 1;
      v85[0] = v77;
      v85[1] = v76;
      v85[2] = a6;
      v86 = xmmword_1AFE21110;
      v87 = 1;
      v88 = v43;
      v90 = 0;
      v91 = 0;
      v89 = v45;
      v92 = 1;
      v94 = 0;
      v95 = 0;
      v93 = 0;
      sub_1AF43C9F0(v81, v82);
      sub_1AFD066C8(v85, v81, v82);
      sub_1AF439ED8(v81, v82);

      sub_1AF439ED8(v81, v82);
      return v80 | v84;
    }

    os_unfair_lock_unlock(*(v69 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF639508(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, int a10, char a11)
{
  v16 = *(a6 + 16);
  v17 = v16 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v18 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v18);

  v19 = sub_1AF66F020(a1, a2, a3);
  v21 = v20;

  v22 = *(v16 + 80);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = 0;
  v25 = v22 + 32;
  while (*(*(v25 + 8 * v24) + 144) != v19)
  {
    if (v23 == ++v24)
    {
      goto LABEL_7;
    }
  }

  v26 = sub_1AF65D418(v21, v24);
  v27 = v26;
  if ((v26 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v27 = sub_1AF65D480(v19, v21, v28, a3);
  }

  v29 = *(*(v16 + 88) + 8 * v27 + 32);
  v30 = *(v17 + 24);

  os_unfair_lock_unlock(v30);

  v31 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v32 = *v31;

  if (v32)
  {
    vfx_counters.add(_:_:)(*(v31 + 40), 1);
  }

  v33 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v34 = *v33;

  if (v34)
  {
    vfx_counters.add(_:_:)(*(v33 + 48), 1);
  }

  v35 = *(v29 + 204);
  v36 = a4;
  if (*(v29 + 208))
  {
    v80 = 0;
    LODWORD(v37) = -1;
  }

  else
  {

    v37 = sub_1AF65B2E4();

    v80 = v37 & 0xFFFFFFFF00000000;
  }

  v38 = *(a6 + 16);
  v39 = *(*(*(v38 + 88) + 8 * v35 + 32) + 200);

  if (v39 == 1)
  {
    *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v40 = *(v38 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v40);
  if (!sub_1AF62173C(v35))
  {
    sub_1AF6AFD3C(v35);
  }

  v41 = 36;
  if (a4)
  {
    v41 = 32;
  }

  v42 = *(*(v38 + 104) + 40 * v35 + v41 + 32);
  if (v42 != -1)
  {
    v43 = *(*(v38 + 144) + 8 * v42 + 32);
    if (*(v43 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v43 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v43 + 376)))
    {
      os_unfair_lock_lock(*(v43 + 344));
      os_unfair_lock_unlock(*(v43 + 376));
      if ((*(v43 + 121) & 1) != 0 || *(v43 + 240) < *(v43 + 88))
      {
        v44 = sub_1AF622B60(v37);
        v45 = v44;
        if ((*(v29 + 208) & 1) == 0)
        {
          v46 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v37;
          *v46 = *(v43 + 188);
          *(v46 + 4) = v44;
          *(v46 + 6) = v35;
        }

        if (*(v29 + 212) == 1)
        {
          v47 = *(v43 + 192);
          if (v47)
          {
            v48 = *(v43 + 208);
            *(v47 + 8 * (v44 >> 6)) |= 1 << v44;
            *(v48 + 8 * (v44 >> 6)) &= ~(1 << v44);
          }

          sub_1AF705804(v44);
        }

        os_unfair_lock_unlock(*(v43 + 344));
        os_unfair_lock_unlock(*(v38 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v43 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v38 + 136));
  v49 = sub_1AF624654();
  v79 = v37;
  if ((v49 & 0x100000000) != 0)
  {
    v50 = *(*(v38 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v56 = sub_1AF64BF6C(v55, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v50);

    _swift_stdlib_immortalize();

    v53 = *(v38 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 144) = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v53 + 2) + 1, 1);
      v53 = *(v38 + 144);
    }

    v59 = *(v53 + 2);
    v58 = *(v53 + 3);
    if (v59 >= v58 >> 1)
    {
      sub_1AFC05EFC(v58 > 1, v59 + 1, 1);
      v53 = *(v38 + 144);
    }

    *(v53 + 2) = v59 + 1;
    *&v53[8 * v59 + 32] = v56;
    v36 = a4;
  }

  else
  {
    v50 = v49;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v52 = sub_1AF64BF6C(v51, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v50);

    _swift_stdlib_immortalize();

    v53 = *(v38 + 144);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 144) = v53;
    if ((v54 & 1) == 0)
    {
      v53 = sub_1AF6247B0(v53);
    }

    *&v53[8 * v50 + 32] = v52;
  }

  *(v38 + 144) = v53;
  v60 = *(v38 + 104);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 104) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1AFC0D9B8(v60);
    *(v38 + 104) = v60;
  }

  v62 = &v60[40 * v35];
  if (v36)
  {
    v63 = *(v62 + 4);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v62 + 4) = v63;
    if ((v64 & 1) == 0)
    {
      v63 = sub_1AF420E8C(0, *(v63 + 2) + 1, 1, v63);
      *(v62 + 4) = v63;
    }

    v66 = *(v63 + 2);
    v65 = *(v63 + 3);
    if (v66 >= v65 >> 1)
    {
      v63 = sub_1AF420E8C(v65 > 1, v66 + 1, 1, v63);
      *(v62 + 4) = v63;
    }

    *(v63 + 2) = v66 + 1;
    *&v63[4 * v66 + 32] = v50;
    *(v62 + 16) = v50;
  }

  else
  {
    v67 = *(v62 + 5);
    sub_1AF64B7B0(v67, v67, v50);
    *(v62 + 5) = v67 + 1;
    *(v62 + 17) = v50;
  }

  v62[56] = 1;
  v68 = *(*(v38 + 144) + 8 * v50 + 32);
  v69 = *(v68 + 376);

  if (!os_unfair_lock_trylock(v69))
  {
    goto LABEL_71;
  }

  os_unfair_lock_lock(*(v68 + 344));
  os_unfair_lock_unlock(*(v68 + 376));
  LODWORD(v37) = v79;
  if ((*(v68 + 121) & 1) == 0 && *(v68 + 240) >= *(v68 + 88))
  {
    os_unfair_lock_unlock(*(v68 + 344));
LABEL_71:

    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v70 = sub_1AF622B60(v79);
  v45 = v70;
  if ((*(v29 + 208) & 1) == 0)
  {
    v71 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v79;
    *v71 = *(v68 + 188);
    *(v71 + 4) = v70;
    *(v71 + 6) = v35;
  }

  if (*(v29 + 212) == 1)
  {
    v72 = *(v68 + 192);
    if (v72)
    {
      v73 = *(v68 + 208);
      *(v72 + 8 * (v70 >> 6)) |= 1 << v70;
      *(v73 + 8 * (v70 >> 6)) &= ~(1 << v70);
    }

    sub_1AF705804(v70);
  }

  os_unfair_lock_unlock(*(v68 + 344));

LABEL_66:

  v74 = sub_1AF64B03C(&type metadata for Material);
  v76 = v75;

  if (v76)
  {
    v77 = 0;
  }

  else
  {
    v77 = v74 + 104 * v45;
  }

  *v77 = a7;

  *(v77 + 8) = a8;
  *(v77 + 40) = a10;
  *(v77 + 44) = a11 & 1;
  *(v77 + 48) = a9;

  return v80 | v37;
}

uint64_t sub_1AF639D38(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, __n128 a7, __n128 a8, float a9)
{
  v14 = *(a6 + 16);
  v15 = v14 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v16 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v16);

  v17 = sub_1AF66F020(a1, a2, a3);
  v19 = v18;

  v20 = *(v14 + 80);
  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = 0;
  v23 = v20 + 32;
  while (*(*(v23 + 8 * v22) + 144) != v17)
  {
    if (v21 == ++v22)
    {
      goto LABEL_7;
    }
  }

  v24 = sub_1AF65D418(v19, v22);
  v25 = v24;
  if ((v24 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v25 = sub_1AF65D480(v17, v19, v26, a3);
  }

  v27 = *(*(v14 + 88) + 8 * v25 + 32);
  v28 = *(v15 + 24);

  os_unfair_lock_unlock(v28);

  v29 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v30 = *v29;

  if (v30)
  {
    vfx_counters.add(_:_:)(*(v29 + 40), 1);
  }

  v31 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v32 = *v31;

  if (v32)
  {
    vfx_counters.add(_:_:)(*(v31 + 48), 1);
  }

  v33 = *(v27 + 204);
  v34 = a4;
  if (*(v27 + 208))
  {
    v79 = 0;
    LODWORD(v35) = -1;
  }

  else
  {

    v35 = sub_1AF65B2E4();

    v79 = v35 & 0xFFFFFFFF00000000;
  }

  v36 = *(a6 + 16);
  v37 = *(*(*(v36 + 88) + 8 * v33 + 32) + 200);

  if (v37 == 1)
  {
    *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v38 = *(v36 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v38);
  if (!sub_1AF62173C(v33))
  {
    sub_1AF6AFD3C(v33);
  }

  v39 = 36;
  if (a4)
  {
    v39 = 32;
  }

  v40 = *(*(v36 + 104) + 40 * v33 + v39 + 32);
  if (v40 != -1)
  {
    v41 = *(*(v36 + 144) + 8 * v40 + 32);
    if (*(v41 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v41 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v41 + 376)))
    {
      os_unfair_lock_lock(*(v41 + 344));
      os_unfair_lock_unlock(*(v41 + 376));
      if ((*(v41 + 121) & 1) != 0 || *(v41 + 240) < *(v41 + 88))
      {
        v42 = sub_1AF622B60(v35);
        v43 = v42;
        v45 = v44;
        v46 = *(v41 + 188);
        if ((*(v27 + 208) & 1) == 0)
        {
          v47 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35;
          *v47 = v46;
          *(v47 + 4) = v42;
          *(v47 + 6) = v33;
        }

        if (*(v27 + 212) == 1)
        {
          v48 = *(v41 + 192);
          if (v48)
          {
            v49 = *(v41 + 208);
            *(v48 + 8 * (v42 >> 6)) |= 1 << v42;
            *(v49 + 8 * (v42 >> 6)) &= ~(1 << v42);
          }

          sub_1AF705804(v42);
        }

        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v36 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v41 + 344));
    }
  }

LABEL_38:
  v82 = v35;
  os_unfair_lock_unlock(*(v36 + 136));
  v50 = sub_1AF624654();
  if ((v50 & 0x100000000) != 0)
  {
    v51 = *(*(v36 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v57 = sub_1AF64BF6C(v56, a5 | ((HIDWORD(a5) & 1) << 32), v33, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v54 + 2) + 1, 1);
      v54 = *(v36 + 144);
    }

    v60 = *(v54 + 2);
    v59 = *(v54 + 3);
    if (v60 >= v59 >> 1)
    {
      sub_1AFC05EFC(v59 > 1, v60 + 1, 1);
      v54 = *(v36 + 144);
    }

    *(v54 + 2) = v60 + 1;
    *&v54[8 * v60 + 32] = v57;
    v34 = a4;
  }

  else
  {
    v51 = v50;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v33, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1AF6247B0(v54);
    }

    *&v54[8 * v51 + 32] = v53;
  }

  *(v36 + 144) = v54;
  v61 = *(v36 + 104);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + 104) = v61;
  LODWORD(v35) = v82;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1AFC0D9B8(v61);
    *(v36 + 104) = v61;
  }

  v63 = &v61[40 * v33];
  if (v34)
  {
    v64 = *(v63 + 4);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 4) = v64;
    if ((v65 & 1) == 0)
    {
      v64 = sub_1AF420E8C(0, *(v64 + 2) + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    v35 = *(v64 + 2);
    v66 = *(v64 + 3);
    if (v35 >= v66 >> 1)
    {
      v64 = sub_1AF420E8C(v66 > 1, v35 + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    *(v64 + 2) = v35 + 1;
    *&v64[4 * v35 + 32] = v51;
    *(v63 + 16) = v51;
    LODWORD(v35) = v82;
  }

  else
  {
    v67 = *(v63 + 5);
    sub_1AF64B7B0(v67, v67, v51);
    *(v63 + 5) = v67 + 1;
    *(v63 + 17) = v51;
  }

  v63[56] = 1;
  v68 = *(*(v36 + 144) + 8 * v51 + 32);
  v69 = *(v68 + 376);

  if (os_unfair_lock_trylock(v69))
  {
    os_unfair_lock_lock(*(v68 + 344));
    os_unfair_lock_unlock(*(v68 + 376));
    if ((*(v68 + 121) & 1) != 0 || *(v68 + 240) < *(v68 + 88))
    {
      v70 = sub_1AF622B60(v35);
      v43 = v70;
      v45 = v71;
      v46 = *(v68 + 188);
      if ((*(v27 + 208) & 1) == 0)
      {
        v72 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35;
        *v72 = v46;
        *(v72 + 4) = v70;
        *(v72 + 6) = v33;
      }

      if (*(v27 + 212) == 1)
      {
        v73 = *(v68 + 192);
        if (v73)
        {
          v74 = *(v68 + 208);
          *(v73 + 8 * (v70 >> 6)) |= 1 << v70;
          *(v74 + 8 * (v70 >> 6)) &= ~(1 << v70);
        }

        sub_1AF705804(v70);
      }

      os_unfair_lock_unlock(*(v68 + 344));

LABEL_66:

      v75 = *(*(*(a6 + 16) + 144) + 8 * v46 + 32);

      v76 = *(a6 + 16);

      v84[0] = v76;
      v84[1] = v75;
      v84[2] = a6;
      v85 = xmmword_1AFE21110;
      v86 = 1;
      v87 = v43;
      v89 = 0;
      v90 = 0;
      v88 = v45;
      v91 = 1;
      v93 = 0;
      v94 = 0;
      v92 = 0;
      sub_1AFD055BC(v84, a7, a8, a9);

      return v79 | v35;
    }

    os_unfair_lock_unlock(*(v68 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF63A530()
{
  if (!qword_1ED72FDB8)
  {
    v0 = MEMORY[0x1E69E7450];
    sub_1AF63A6F0(255, &qword_1ED72F740, MEMORY[0x1E69E7450]);
    sub_1AF63A754(&qword_1ED72F760, &qword_1ED72F740, v0);
    v1 = type metadata accessor for KeyframeAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72FDB8);
    }
  }
}

void sub_1AF63A5E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF5C5358(255, a3);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF63A63C()
{
  if (!qword_1ED72FDB0)
  {
    v0 = MEMORY[0x1E69E74A8];
    sub_1AF63A6F0(255, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
    sub_1AF63A754(&unk_1ED72F720, &qword_1ED72F6E0, v0);
    v1 = type metadata accessor for KeyframeAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72FDB0);
    }
  }
}

void sub_1AF63A6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF63A754(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF63A6F0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF63A798(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF63A7E8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1AF63A5E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF63A870(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, __n128 a10, float32x4_t a11)
{
  v15 = *(a6 + 16);
  v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v17 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v17);

  v18 = sub_1AF66F020(a1, a2, a3);
  v20 = v19;

  v21 = *(v15 + 80);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = 0;
  v24 = v21 + 32;
  while (*(*(v24 + 8 * v23) + 144) != v18)
  {
    if (v22 == ++v23)
    {
      goto LABEL_7;
    }
  }

  v25 = sub_1AF65D418(v20, v23);
  v26 = v25;
  if ((v25 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v26 = sub_1AF65D480(v18, v20, v27, a3);
  }

  v28 = *(*(v15 + 88) + 8 * v26 + 32);
  v29 = *(v16 + 24);

  os_unfair_lock_unlock(v29);

  v30 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v31 = *v30;

  if (v31)
  {
    vfx_counters.add(_:_:)(*(v30 + 40), 1);
  }

  v32 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v33 = *v32;

  if (v33)
  {
    vfx_counters.add(_:_:)(*(v32 + 48), 1);
  }

  v34 = *(v28 + 204);
  v35 = a4;
  if (*(v28 + 208))
  {
    v80 = 0;
    LODWORD(v36) = -1;
  }

  else
  {

    v36 = sub_1AF65B2E4();

    v80 = v36 & 0xFFFFFFFF00000000;
  }

  v37 = *(a6 + 16);
  v38 = *(*(*(v37 + 88) + 8 * v34 + 32) + 200);

  if (v38 == 1)
  {
    *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v39 = *(v37 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v39);
  if (!sub_1AF62173C(v34))
  {
    sub_1AF6AFD3C(v34);
  }

  v40 = 36;
  if (a4)
  {
    v40 = 32;
  }

  v41 = *(*(v37 + 104) + 40 * v34 + v40 + 32);
  if (v41 != -1)
  {
    v42 = *(*(v37 + 144) + 8 * v41 + 32);
    if (*(v42 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v42 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v42 + 376)))
    {
      os_unfair_lock_lock(*(v42 + 344));
      os_unfair_lock_unlock(*(v42 + 376));
      if ((*(v42 + 121) & 1) != 0 || *(v42 + 240) < *(v42 + 88))
      {
        v43 = sub_1AF622B60(v36);
        v44 = v43;
        v46 = v45;
        v47 = *(v42 + 188);
        if ((*(v28 + 208) & 1) == 0)
        {
          v48 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36;
          *v48 = v47;
          *(v48 + 4) = v43;
          *(v48 + 6) = v34;
        }

        if (*(v28 + 212) == 1)
        {
          v49 = *(v42 + 192);
          if (v49)
          {
            v50 = *(v42 + 208);
            *(v49 + 8 * (v43 >> 6)) |= 1 << v43;
            *(v50 + 8 * (v43 >> 6)) &= ~(1 << v43);
          }

          sub_1AF705804(v43);
        }

        os_unfair_lock_unlock(*(v42 + 344));
        os_unfair_lock_unlock(*(v37 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v42 + 344));
    }
  }

LABEL_38:
  v86 = v36;
  os_unfair_lock_unlock(*(v37 + 136));
  v51 = sub_1AF624654();
  if ((v51 & 0x100000000) != 0)
  {
    v52 = *(*(v37 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v58 = sub_1AF64BF6C(v57, a5 | ((HIDWORD(a5) & 1) << 32), v34, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v55 + 2) + 1, 1);
      v55 = *(v37 + 144);
    }

    v61 = *(v55 + 2);
    v60 = *(v55 + 3);
    if (v61 >= v60 >> 1)
    {
      sub_1AFC05EFC(v60 > 1, v61 + 1, 1);
      v55 = *(v37 + 144);
    }

    *(v55 + 2) = v61 + 1;
    *&v55[8 * v61 + 32] = v58;
    v35 = a4;
  }

  else
  {
    v52 = v51;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v34, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1AF6247B0(v55);
    }

    *&v55[8 * v52 + 32] = v54;
  }

  *(v37 + 144) = v55;
  v62 = *(v37 + 104);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(v37 + 104) = v62;
  LODWORD(v36) = v86;
  if ((v63 & 1) == 0)
  {
    v62 = sub_1AFC0D9B8(v62);
    *(v37 + 104) = v62;
  }

  v64 = &v62[40 * v34];
  if (v35)
  {
    v65 = *(v64 + 4);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 4) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AF420E8C(0, *(v65 + 2) + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    v36 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v36 >= v67 >> 1)
    {
      v65 = sub_1AF420E8C(v67 > 1, v36 + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    *(v65 + 2) = v36 + 1;
    *&v65[4 * v36 + 32] = v52;
    *(v64 + 16) = v52;
    LODWORD(v36) = v86;
  }

  else
  {
    v68 = *(v64 + 5);
    sub_1AF64B7B0(v68, v68, v52);
    *(v64 + 5) = v68 + 1;
    *(v64 + 17) = v52;
  }

  v64[56] = 1;
  v69 = *(*(v37 + 144) + 8 * v52 + 32);
  v70 = *(v69 + 376);

  if (os_unfair_lock_trylock(v70))
  {
    os_unfair_lock_lock(*(v69 + 344));
    os_unfair_lock_unlock(*(v69 + 376));
    if ((*(v69 + 121) & 1) != 0 || *(v69 + 240) < *(v69 + 88))
    {
      v71 = sub_1AF622B60(v36);
      v44 = v71;
      v46 = v72;
      v47 = *(v69 + 188);
      if ((*(v28 + 208) & 1) == 0)
      {
        v73 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36;
        *v73 = v47;
        *(v73 + 4) = v71;
        *(v73 + 6) = v34;
      }

      if (*(v28 + 212) == 1)
      {
        v74 = *(v69 + 192);
        if (v74)
        {
          v75 = *(v69 + 208);
          *(v74 + 8 * (v71 >> 6)) |= 1 << v71;
          *(v75 + 8 * (v71 >> 6)) &= ~(1 << v71);
        }

        sub_1AF705804(v71);
      }

      os_unfair_lock_unlock(*(v69 + 344));

LABEL_66:

      v76 = *(*(*(a6 + 16) + 144) + 8 * v47 + 32);

      v77 = *(a6 + 16);

      v99 = 1;
      v88[0] = v77;
      v88[1] = v76;
      v88[2] = a6;
      v89 = xmmword_1AFE21110;
      v90 = 1;
      v91 = v44;
      v93 = 0;
      v94 = 0;
      v92 = v46;
      v95 = 1;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      sub_1AFD05A20(v88, a7, a8, a9, a10, a11);

      return v80 | v36;
    }

    os_unfair_lock_unlock(*(v69 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63B094(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  v11 = v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v12 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v12);

  v13 = sub_1AF66F020(a1, a2, a3);
  v15 = v14;

  v16 = *(v10 + 80);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v19 = v16 + 32;
  while (*(*(v19 + 8 * v18) + 144) != v13)
  {
    if (v17 == ++v18)
    {
      goto LABEL_7;
    }
  }

  v20 = sub_1AF65D418(v15, v18);
  v21 = v20;
  if ((v20 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v21 = sub_1AF65D480(v13, v15, v22, a3);
  }

  v23 = *(*(v10 + 88) + 8 * v21 + 32);
  v24 = *(v11 + 24);

  os_unfair_lock_unlock(v24);

  v25 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v26 = *v25;

  if (v26)
  {
    vfx_counters.add(_:_:)(*(v25 + 40), 1);
  }

  v27 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 48), 1);
  }

  v29 = *(v23 + 204);
  v30 = a4;
  if (*(v23 + 208))
  {
    v31 = 0;
    LODWORD(v32) = -1;
  }

  else
  {

    v32 = sub_1AF65B2E4();

    v31 = v32 & 0xFFFFFFFF00000000;
  }

  v33 = *(a6 + 16);
  v34 = *(*(*(v33 + 88) + 8 * v29 + 32) + 200);

  if (v34 == 1)
  {
    *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v35 = *(v33 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v35);
  if (!sub_1AF62173C(v29))
  {
    sub_1AF6AFD3C(v29);
  }

  v36 = 36;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(*(v33 + 104) + 40 * v29 + v36 + 32);
  if (v37 != -1)
  {
    v38 = *(*(v33 + 144) + 8 * v37 + 32);
    if (*(v38 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v38 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v38 + 376)))
    {
      os_unfair_lock_lock(*(v38 + 344));
      os_unfair_lock_unlock(*(v38 + 376));
      if ((*(v38 + 121) & 1) != 0 || *(v38 + 240) < *(v38 + 88))
      {
        v39 = sub_1AF622B60(v32);
        v40 = v39;
        if ((*(v23 + 208) & 1) == 0)
        {
          v41 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
          *v41 = *(v38 + 188);
          *(v41 + 4) = v39;
          *(v41 + 6) = v29;
        }

        if (*(v23 + 212) == 1)
        {
          v42 = *(v38 + 192);
          if (v42)
          {
            v43 = *(v38 + 208);
            *(v42 + 8 * (v39 >> 6)) |= 1 << v39;
            *(v43 + 8 * (v39 >> 6)) &= ~(1 << v39);
          }

          sub_1AF705804(v39);
        }

        os_unfair_lock_unlock(*(v38 + 344));
        os_unfair_lock_unlock(*(v33 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v38 + 344));
    }
  }

LABEL_38:
  v70 = v31;
  v71 = v32;
  os_unfair_lock_unlock(*(v33 + 136));
  v44 = sub_1AF624654();
  if ((v44 & 0x100000000) != 0)
  {
    v45 = *(*(v33 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v51 = sub_1AF64BF6C(v50, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v45);

    _swift_stdlib_immortalize();

    v48 = *(v33 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v48 + 2) + 1, 1);
      v48 = *(v33 + 144);
    }

    v54 = *(v48 + 2);
    v53 = *(v48 + 3);
    if (v54 >= v53 >> 1)
    {
      sub_1AFC05EFC(v53 > 1, v54 + 1, 1);
      v48 = *(v33 + 144);
    }

    *(v48 + 2) = v54 + 1;
    *&v48[8 * v54 + 32] = v51;
    v30 = a4;
  }

  else
  {
    v45 = v44;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v47 = sub_1AF64BF6C(v46, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v45);

    _swift_stdlib_immortalize();

    v48 = *(v33 + 144);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v48;
    if ((v49 & 1) == 0)
    {
      v48 = sub_1AF6247B0(v48);
    }

    *&v48[8 * v45 + 32] = v47;
  }

  *(v33 + 144) = v48;
  v55 = *(v33 + 104);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 104) = v55;
  if ((v56 & 1) == 0)
  {
    v55 = sub_1AFC0D9B8(v55);
    *(v33 + 104) = v55;
  }

  v57 = &v55[40 * v29];
  if (v30)
  {
    v58 = *(v57 + 4);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 4) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420E8C(0, *(v58 + 2) + 1, 1, v58);
      *(v57 + 4) = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1AF420E8C(v60 > 1, v61 + 1, 1, v58);
      *(v57 + 4) = v58;
    }

    *(v58 + 2) = v61 + 1;
    *&v58[4 * v61 + 32] = v45;
    *(v57 + 16) = v45;
  }

  else
  {
    v62 = *(v57 + 5);
    sub_1AF64B7B0(v62, v62, v45);
    *(v57 + 5) = v62 + 1;
    *(v57 + 17) = v45;
  }

  v57[56] = 1;
  v63 = *(*(v33 + 144) + 8 * v45 + 32);
  v64 = *(v63 + 376);

  if (os_unfair_lock_trylock(v64))
  {
    os_unfair_lock_lock(*(v63 + 344));
    os_unfair_lock_unlock(*(v63 + 376));
    v31 = v70;
    LODWORD(v32) = v71;
    if ((*(v63 + 121) & 1) != 0 || *(v63 + 240) < *(v63 + 88))
    {
      v65 = sub_1AF622B60(v71);
      v40 = v65;
      if ((*(v23 + 208) & 1) == 0)
      {
        v66 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v71;
        *v66 = *(v63 + 188);
        *(v66 + 4) = v65;
        *(v66 + 6) = v29;
      }

      if (*(v23 + 212) == 1)
      {
        v67 = *(v63 + 192);
        if (v67)
        {
          v68 = *(v63 + 208);
          *(v67 + 8 * (v65 >> 6)) |= 1 << v65;
          *(v68 + 8 * (v65 >> 6)) &= ~(1 << v65);
        }

        sub_1AF705804(v65);
      }

      os_unfair_lock_unlock(*(v63 + 344));

LABEL_66:

      swift_retain_n();
      sub_1AFD050F4(v40);

      return v31 | v32;
    }

    os_unfair_lock_unlock(*(v63 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF63B8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF63B91C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  v11 = v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v12 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v12);

  v13 = sub_1AF66F020(a1, a2, a3);
  v15 = v14;

  v16 = *(v10 + 80);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v19 = v16 + 32;
  while (*(*(v19 + 8 * v18) + 144) != v13)
  {
    if (v17 == ++v18)
    {
      goto LABEL_7;
    }
  }

  v20 = sub_1AF65D418(v15, v18);
  v21 = v20;
  if ((v20 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v21 = sub_1AF65D480(v13, v15, v22, a3);
  }

  v23 = *(*(v10 + 88) + 8 * v21 + 32);
  v24 = *(v11 + 24);

  os_unfair_lock_unlock(v24);

  v25 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v26 = *v25;

  if (v26)
  {
    vfx_counters.add(_:_:)(*(v25 + 40), 1);
  }

  v27 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 48), 1);
  }

  v29 = *(v23 + 204);
  if (*(v23 + 208))
  {
    v30 = 0;
    LODWORD(v31) = -1;
  }

  else
  {

    v31 = sub_1AF65B2E4();

    v30 = v31 & 0xFFFFFFFF00000000;
  }

  v32 = *(a6 + 16);
  v33 = *(*(*(v32 + 88) + 8 * v29 + 32) + 200);

  if (v33 == 1)
  {
    *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v34 = *(v32 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v34);
  if (!sub_1AF62173C(v29))
  {
    sub_1AF6AFD3C(v29);
  }

  v35 = 36;
  if (a4)
  {
    v35 = 32;
  }

  v36 = *(*(v32 + 104) + 40 * v29 + v35 + 32);
  if (v36 != -1)
  {
    v37 = *(*(v32 + 144) + 8 * v36 + 32);
    if (*(v37 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v37 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v37 + 376)))
    {
      os_unfair_lock_lock(*(v37 + 344));
      os_unfair_lock_unlock(*(v37 + 376));
      if ((*(v37 + 121) & 1) != 0 || *(v37 + 240) < *(v37 + 88))
      {
        v38 = sub_1AF622B60(v31);
        if ((*(v23 + 208) & 1) == 0)
        {
          v39 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
          *v39 = *(v37 + 188);
          *(v39 + 4) = v38;
          *(v39 + 6) = v29;
        }

        if (*(v23 + 212) == 1)
        {
          v40 = *(v37 + 192);
          if (v40)
          {
            v41 = *(v37 + 208);
            *(v40 + 8 * (v38 >> 6)) |= 1 << v38;
            *(v41 + 8 * (v38 >> 6)) &= ~(1 << v38);
          }

          sub_1AF705804(v38);
        }

        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v32 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v37 + 344));
    }
  }

LABEL_38:
  v68 = v30;
  v69 = v31;
  os_unfair_lock_unlock(*(v32 + 136));
  v42 = sub_1AF624654();
  if ((v42 & 0x100000000) != 0)
  {
    v43 = *(*(v32 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v45 = sub_1AF64BF6C(v49, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v43);

    _swift_stdlib_immortalize();

    v46 = *(v32 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v46 + 2) + 1, 1);
      v46 = *(v32 + 144);
    }

    v52 = *(v46 + 2);
    v51 = *(v46 + 3);
    if (v52 >= v51 >> 1)
    {
      sub_1AFC05EFC(v51 > 1, v52 + 1, 1);
      v46 = *(v32 + 144);
    }

    *(v46 + 2) = v52 + 1;
    v48 = &v46[8 * v52];
  }

  else
  {
    v43 = v42;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v45 = sub_1AF64BF6C(v44, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v43);

    _swift_stdlib_immortalize();

    v46 = *(v32 + 144);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1AF6247B0(v46);
    }

    v48 = &v46[8 * v43];
  }

  *(v48 + 4) = v45;
  *(v32 + 144) = v46;
  v53 = *(v32 + 104);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 104) = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1AFC0D9B8(v53);
    *(v32 + 104) = v53;
  }

  v55 = &v53[40 * v29];
  if (a4)
  {
    v56 = *(v55 + 4);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 4) = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_1AF420E8C(0, *(v56 + 2) + 1, 1, v56);
      *(v55 + 4) = v56;
    }

    v59 = *(v56 + 2);
    v58 = *(v56 + 3);
    if (v59 >= v58 >> 1)
    {
      v56 = sub_1AF420E8C(v58 > 1, v59 + 1, 1, v56);
      *(v55 + 4) = v56;
    }

    *(v56 + 2) = v59 + 1;
    *&v56[4 * v59 + 32] = v43;
    *(v55 + 16) = v43;
  }

  else
  {
    v60 = *(v55 + 5);
    sub_1AF64B7B0(v60, v60, v43);
    *(v55 + 5) = v60 + 1;
    *(v55 + 17) = v43;
  }

  v55[56] = 1;
  v61 = *(*(v32 + 144) + 8 * v43 + 32);
  v62 = *(v61 + 376);

  if (os_unfair_lock_trylock(v62))
  {
    os_unfair_lock_lock(*(v61 + 344));
    os_unfair_lock_unlock(*(v61 + 376));
    v30 = v68;
    LODWORD(v31) = v69;
    if ((*(v61 + 121) & 1) != 0 || *(v61 + 240) < *(v61 + 88))
    {
      v63 = sub_1AF622B60(v69);
      if ((*(v23 + 208) & 1) == 0)
      {
        v64 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v69;
        *v64 = *(v61 + 188);
        *(v64 + 4) = v63;
        *(v64 + 6) = v29;
      }

      if (*(v23 + 212) == 1)
      {
        v65 = *(v61 + 192);
        if (v65)
        {
          v66 = *(v61 + 208);
          *(v65 + 8 * (v63 >> 6)) |= 1 << v63;
          *(v66 + 8 * (v63 >> 6)) &= ~(1 << v63);
        }

        sub_1AF705804(v63);
      }

      os_unfair_lock_unlock(*(v61 + 344));

LABEL_66:

      sub_1AF64B03C(&type metadata for IBLRuntime);

      return v30 | v31;
    }

    os_unfair_lock_unlock(*(v61 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63C0AC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  v11 = v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v12 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v12);

  v13 = sub_1AF66F020(a1, a2, a3);
  v15 = v14;

  v16 = *(v10 + 80);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v19 = v16 + 32;
  while (*(*(v19 + 8 * v18) + 144) != v13)
  {
    if (v17 == ++v18)
    {
      goto LABEL_7;
    }
  }

  v20 = sub_1AF65D418(v15, v18);
  v21 = v20;
  if ((v20 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v21 = sub_1AF65D480(v13, v15, v22, a3);
  }

  v23 = *(*(v10 + 88) + 8 * v21 + 32);
  v24 = *(v11 + 24);

  os_unfair_lock_unlock(v24);

  v25 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v26 = *v25;

  if (v26)
  {
    vfx_counters.add(_:_:)(*(v25 + 40), 1);
  }

  v27 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 48), 1);
  }

  v29 = *(v23 + 204);
  v30 = a4;
  if (*(v23 + 208))
  {
    v31 = 0;
    LODWORD(v32) = -1;
  }

  else
  {

    v32 = sub_1AF65B2E4();

    v31 = v32 & 0xFFFFFFFF00000000;
  }

  v33 = *(a6 + 16);
  v34 = *(*(*(v33 + 88) + 8 * v29 + 32) + 200);

  if (v34 == 1)
  {
    *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v35 = *(v33 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v35);
  if (!sub_1AF62173C(v29))
  {
    sub_1AF6AFD3C(v29);
  }

  v36 = 36;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(*(v33 + 104) + 40 * v29 + v36 + 32);
  if (v37 != -1)
  {
    v38 = *(*(v33 + 144) + 8 * v37 + 32);
    if (*(v38 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v38 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v38 + 376)))
    {
      os_unfair_lock_lock(*(v38 + 344));
      os_unfair_lock_unlock(*(v38 + 376));
      if ((*(v38 + 121) & 1) != 0 || *(v38 + 240) < *(v38 + 88))
      {
        v39 = sub_1AF622B60(v32);
        v40 = v39;
        if ((*(v23 + 208) & 1) == 0)
        {
          v41 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
          *v41 = *(v38 + 188);
          *(v41 + 4) = v39;
          *(v41 + 6) = v29;
        }

        if (*(v23 + 212) == 1)
        {
          v42 = *(v38 + 192);
          if (v42)
          {
            v43 = *(v38 + 208);
            *(v42 + 8 * (v39 >> 6)) |= 1 << v39;
            *(v43 + 8 * (v39 >> 6)) &= ~(1 << v39);
          }

          sub_1AF705804(v39);
        }

        os_unfair_lock_unlock(*(v38 + 344));
        os_unfair_lock_unlock(*(v33 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v38 + 344));
    }
  }

LABEL_38:
  v70 = v31;
  v71 = v32;
  os_unfair_lock_unlock(*(v33 + 136));
  v44 = sub_1AF624654();
  if ((v44 & 0x100000000) != 0)
  {
    v45 = *(*(v33 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v51 = sub_1AF64BF6C(v50, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v45);

    _swift_stdlib_immortalize();

    v48 = *(v33 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v48 + 2) + 1, 1);
      v48 = *(v33 + 144);
    }

    v54 = *(v48 + 2);
    v53 = *(v48 + 3);
    if (v54 >= v53 >> 1)
    {
      sub_1AFC05EFC(v53 > 1, v54 + 1, 1);
      v48 = *(v33 + 144);
    }

    *(v48 + 2) = v54 + 1;
    *&v48[8 * v54 + 32] = v51;
    v30 = a4;
  }

  else
  {
    v45 = v44;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v47 = sub_1AF64BF6C(v46, a5 | ((HIDWORD(a5) & 1) << 32), v29, a4 & 1, v45);

    _swift_stdlib_immortalize();

    v48 = *(v33 + 144);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v48;
    if ((v49 & 1) == 0)
    {
      v48 = sub_1AF6247B0(v48);
    }

    *&v48[8 * v45 + 32] = v47;
  }

  *(v33 + 144) = v48;
  v55 = *(v33 + 104);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 104) = v55;
  if ((v56 & 1) == 0)
  {
    v55 = sub_1AFC0D9B8(v55);
    *(v33 + 104) = v55;
  }

  v57 = &v55[40 * v29];
  if (v30)
  {
    v58 = *(v57 + 4);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 4) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420E8C(0, *(v58 + 2) + 1, 1, v58);
      *(v57 + 4) = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1AF420E8C(v60 > 1, v61 + 1, 1, v58);
      *(v57 + 4) = v58;
    }

    *(v58 + 2) = v61 + 1;
    *&v58[4 * v61 + 32] = v45;
    *(v57 + 16) = v45;
  }

  else
  {
    v62 = *(v57 + 5);
    sub_1AF64B7B0(v62, v62, v45);
    *(v57 + 5) = v62 + 1;
    *(v57 + 17) = v45;
  }

  v57[56] = 1;
  v63 = *(*(v33 + 144) + 8 * v45 + 32);
  v64 = *(v63 + 376);

  if (os_unfair_lock_trylock(v64))
  {
    os_unfair_lock_lock(*(v63 + 344));
    os_unfair_lock_unlock(*(v63 + 376));
    v31 = v70;
    LODWORD(v32) = v71;
    if ((*(v63 + 121) & 1) != 0 || *(v63 + 240) < *(v63 + 88))
    {
      v65 = sub_1AF622B60(v71);
      v40 = v65;
      if ((*(v23 + 208) & 1) == 0)
      {
        v66 = *(*(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v71;
        *v66 = *(v63 + 188);
        *(v66 + 4) = v65;
        *(v66 + 6) = v29;
      }

      if (*(v23 + 212) == 1)
      {
        v67 = *(v63 + 192);
        if (v67)
        {
          v68 = *(v63 + 208);
          *(v67 + 8 * (v65 >> 6)) |= 1 << v65;
          *(v68 + 8 * (v65 >> 6)) &= ~(1 << v65);
        }

        sub_1AF705804(v65);
      }

      os_unfair_lock_unlock(*(v63 + 344));

LABEL_66:

      sub_1AF64B03C(&type metadata for VFXTag);

      sub_1AFD050D0(v40);

      sub_1AF64B03C(&type metadata for WorldTransform);

      return v31 | v32;
    }

    os_unfair_lock_unlock(*(v63 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63C898(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a6;
  v12 = *(a6 + 16);
  v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v14);

  v15 = sub_1AF66F020(a1, a2, a3);
  v17 = v16;

  v18 = *(v12 + 80);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = v18 + 32;
  while (*(*(v21 + 8 * v20) + 144) != v15)
  {
    if (v19 == ++v20)
    {
      goto LABEL_7;
    }
  }

  v22 = sub_1AF65D418(v17, v20);
  v23 = v22;
  if ((v22 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v23 = sub_1AF65D480(v15, v17, v24, a3);
  }

  v25 = *(*(v12 + 88) + 8 * v23 + 32);
  v26 = *(v13 + 24);

  os_unfair_lock_unlock(v26);

  v27 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v28 = *v27;

  if (v28)
  {
    vfx_counters.add(_:_:)(*(v27 + 40), 1);
  }

  v29 = *(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v30 = *v29;

  if (v30)
  {
    vfx_counters.add(_:_:)(*(v29 + 48), 1);
  }

  v31 = *(v25 + 204);
  if (*(v25 + 208))
  {
    v78 = 0;
    LODWORD(v32) = -1;
  }

  else
  {

    v32 = sub_1AF65B2E4();

    v78 = v32 & 0xFFFFFFFF00000000;
  }

  v33 = *(v8 + 16);
  v34 = *(*(*(v33 + 88) + 8 * v31 + 32) + 200);

  if (v34 == 1)
  {
    *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v35 = *(v33 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v35);
  if (!sub_1AF62173C(v31))
  {
    sub_1AF6AFD3C(v31);
  }

  v36 = 36;
  if (a4)
  {
    v36 = 32;
  }

  v37 = *(*(v33 + 104) + 40 * v31 + v36 + 32);
  if (v37 != -1)
  {
    v38 = *(*(v33 + 144) + 8 * v37 + 32);
    if (*(v38 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v38 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v38 + 376)))
    {
      os_unfair_lock_lock(*(v38 + 344));
      os_unfair_lock_unlock(*(v38 + 376));
      if ((*(v38 + 121) & 1) != 0 || *(v38 + 240) < *(v38 + 88))
      {
        v39 = sub_1AF622B60(v32);
        v40 = v39;
        v42 = v41;
        v43 = *(v38 + 188);
        if ((*(v25 + 208) & 1) == 0)
        {
          v44 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
          *v44 = v43;
          *(v44 + 4) = v39;
          *(v44 + 6) = v31;
        }

        if (*(v25 + 212) == 1)
        {
          v45 = *(v38 + 192);
          if (v45)
          {
            v46 = *(v38 + 208);
            *(v45 + 8 * (v39 >> 6)) |= 1 << v39;
            *(v46 + 8 * (v39 >> 6)) &= ~(1 << v39);
          }

          sub_1AF705804(v39);
        }

        os_unfair_lock_unlock(*(v38 + 344));
        os_unfair_lock_unlock(*(v33 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v38 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v33 + 136));
  v47 = sub_1AF624654();
  v76 = v8;
  if ((v47 & 0x100000000) != 0)
  {
    v48 = *(*(v33 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    v56 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v51 + 2) + 1, 1);
      v51 = *(v33 + 144);
    }

    v32 = *(v51 + 2);
    v57 = *(v51 + 3);
    if (v32 >= v57 >> 1)
    {
      sub_1AFC05EFC(v57 > 1, v32 + 1, 1);
      v51 = *(v33 + 144);
    }

    *(v51 + 2) = v32 + 1;
    *&v51[8 * v32 + 32] = v54;
    LODWORD(v32) = v56;
    v8 = v76;
  }

  else
  {
    v48 = v47;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v50 = sub_1AF64BF6C(v49, a5 | ((HIDWORD(a5) & 1) << 32), v31, a4 & 1, v48);

    _swift_stdlib_immortalize();

    v51 = *(v33 + 144);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 144) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1AF6247B0(v51);
    }

    *&v51[8 * v48 + 32] = v50;
  }

  *(v33 + 144) = v51;
  v58 = *(v33 + 104);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 104) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = sub_1AFC0D9B8(v58);
    *(v33 + 104) = v58;
  }

  v60 = &v58[40 * v31];
  if (a4)
  {
    v61 = *(v60 + 4);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + 4) = v61;
    v63 = v32;
    if ((v62 & 1) == 0)
    {
      v61 = sub_1AF420E8C(0, *(v61 + 2) + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    v32 = *(v61 + 2);
    v64 = *(v61 + 3);
    if (v32 >= v64 >> 1)
    {
      v61 = sub_1AF420E8C(v64 > 1, v32 + 1, 1, v61);
      *(v60 + 4) = v61;
    }

    *(v61 + 2) = v32 + 1;
    *&v61[4 * v32 + 32] = v48;
    *(v60 + 16) = v48;
    LODWORD(v32) = v63;
    v8 = v76;
  }

  else
  {
    v65 = *(v60 + 5);
    sub_1AF64B7B0(v65, v65, v48);
    *(v60 + 5) = v65 + 1;
    *(v60 + 17) = v48;
  }

  v60[56] = 1;
  v66 = *(*(v33 + 144) + 8 * v48 + 32);
  v67 = *(v66 + 376);

  if (os_unfair_lock_trylock(v67))
  {
    os_unfair_lock_lock(*(v66 + 344));
    os_unfair_lock_unlock(*(v66 + 376));
    if ((*(v66 + 121) & 1) != 0 || *(v66 + 240) < *(v66 + 88))
    {
      v68 = sub_1AF622B60(v32);
      v40 = v68;
      v42 = v69;
      v43 = *(v66 + 188);
      if ((*(v25 + 208) & 1) == 0)
      {
        v70 = *(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32;
        *v70 = v43;
        *(v70 + 4) = v68;
        *(v70 + 6) = v31;
      }

      if (*(v25 + 212) == 1)
      {
        v71 = *(v66 + 192);
        if (v71)
        {
          v72 = *(v66 + 208);
          *(v71 + 8 * (v68 >> 6)) |= 1 << v68;
          *(v72 + 8 * (v68 >> 6)) &= ~(1 << v68);
        }

        sub_1AF705804(v68);
      }

      os_unfair_lock_unlock(*(v66 + 344));

LABEL_66:

      v73 = *(*(*(v8 + 16) + 144) + 8 * v43 + 32);

      v74 = *(v8 + 16);

      v93 = 1;
      v82[0] = v74;
      v82[1] = v73;
      v82[2] = v8;
      v83 = xmmword_1AFE21110;
      v84 = 1;
      v85 = v40;
      v87 = 0;
      v88 = 0;
      v86 = v42;
      v89 = 1;
      v91 = 0;
      v92 = 0;
      v90 = 0;
      sub_1AFD053A0(v82, a7, a8);

      return v78 | v32;
    }

    os_unfair_lock_unlock(*(v66 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63D0A0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  v11 = a6;
  v15 = *(a6 + 16);
  v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v17 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v17);

  v18 = sub_1AF66F020(a1, a2, a3);
  v20 = v19;

  v21 = *(v15 + 80);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = 0;
  v24 = v21 + 32;
  while (*(*(v24 + 8 * v23) + 144) != v18)
  {
    if (v22 == ++v23)
    {
      goto LABEL_7;
    }
  }

  v25 = sub_1AF65D418(v20, v23);
  v26 = v25;
  if ((v25 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v26 = sub_1AF65D480(v18, v20, v27, a3);
  }

  v28 = *(*(v15 + 88) + 8 * v26 + 32);
  v29 = *(v16 + 24);

  os_unfair_lock_unlock(v29);

  v30 = *(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v31 = *v30;

  if (v31)
  {
    vfx_counters.add(_:_:)(*(v30 + 40), 1);
  }

  v32 = *(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v33 = *v32;

  if (v33)
  {
    vfx_counters.add(_:_:)(*(v32 + 48), 1);
  }

  v34 = *(v28 + 204);
  if (*(v28 + 208))
  {
    v81 = 0;
    LODWORD(v35) = -1;
  }

  else
  {

    v35 = sub_1AF65B2E4();

    v81 = v35 & 0xFFFFFFFF00000000;
  }

  v36 = *(v11 + 16);
  v37 = *(*(*(v36 + 88) + 8 * v34 + 32) + 200);

  if (v37 == 1)
  {
    *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v38 = *(v36 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v38);
  if (!sub_1AF62173C(v34))
  {
    sub_1AF6AFD3C(v34);
  }

  v39 = 36;
  if (a4)
  {
    v39 = 32;
  }

  v40 = *(*(v36 + 104) + 40 * v34 + v39 + 32);
  if (v40 != -1)
  {
    v41 = *(*(v36 + 144) + 8 * v40 + 32);
    if (*(v41 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v41 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v41 + 376)))
    {
      os_unfair_lock_lock(*(v41 + 344));
      os_unfair_lock_unlock(*(v41 + 376));
      if ((*(v41 + 121) & 1) != 0 || *(v41 + 240) < *(v41 + 88))
      {
        v42 = sub_1AF622B60(v35);
        v43 = v42;
        v45 = v44;
        v46 = *(v41 + 188);
        if ((*(v28 + 208) & 1) == 0)
        {
          v47 = *(*(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35;
          *v47 = v46;
          *(v47 + 4) = v42;
          *(v47 + 6) = v34;
        }

        if (*(v28 + 212) == 1)
        {
          v48 = *(v41 + 192);
          if (v48)
          {
            v49 = *(v41 + 208);
            *(v48 + 8 * (v42 >> 6)) |= 1 << v42;
            *(v49 + 8 * (v42 >> 6)) &= ~(1 << v42);
          }

          sub_1AF705804(v42);
        }

        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v36 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v41 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v36 + 136));
  v50 = sub_1AF624654();
  v79 = v11;
  if ((v50 & 0x100000000) != 0)
  {
    v51 = *(*(v36 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v57 = sub_1AF64BF6C(v56, a5 | ((HIDWORD(a5) & 1) << 32), v34, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    v59 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v54 + 2) + 1, 1);
      v54 = *(v36 + 144);
    }

    v35 = *(v54 + 2);
    v60 = *(v54 + 3);
    if (v35 >= v60 >> 1)
    {
      sub_1AFC05EFC(v60 > 1, v35 + 1, 1);
      v54 = *(v36 + 144);
    }

    *(v54 + 2) = v35 + 1;
    *&v54[8 * v35 + 32] = v57;
    LODWORD(v35) = v59;
    v11 = v79;
  }

  else
  {
    v51 = v50;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v34, a4 & 1, v51);

    _swift_stdlib_immortalize();

    v54 = *(v36 + 144);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 144) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1AF6247B0(v54);
    }

    *&v54[8 * v51 + 32] = v53;
  }

  *(v36 + 144) = v54;
  v61 = *(v36 + 104);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + 104) = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1AFC0D9B8(v61);
    *(v36 + 104) = v61;
  }

  v63 = &v61[40 * v34];
  if (a4)
  {
    v64 = *(v63 + 4);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 4) = v64;
    v66 = v35;
    if ((v65 & 1) == 0)
    {
      v64 = sub_1AF420E8C(0, *(v64 + 2) + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    v35 = *(v64 + 2);
    v67 = *(v64 + 3);
    if (v35 >= v67 >> 1)
    {
      v64 = sub_1AF420E8C(v67 > 1, v35 + 1, 1, v64);
      *(v63 + 4) = v64;
    }

    *(v64 + 2) = v35 + 1;
    *&v64[4 * v35 + 32] = v51;
    *(v63 + 16) = v51;
    LODWORD(v35) = v66;
    v11 = v79;
  }

  else
  {
    v68 = *(v63 + 5);
    sub_1AF64B7B0(v68, v68, v51);
    *(v63 + 5) = v68 + 1;
    *(v63 + 17) = v51;
  }

  v63[56] = 1;
  v69 = *(*(v36 + 144) + 8 * v51 + 32);
  v70 = *(v69 + 376);

  if (os_unfair_lock_trylock(v70))
  {
    os_unfair_lock_lock(*(v69 + 344));
    os_unfair_lock_unlock(*(v69 + 376));
    if ((*(v69 + 121) & 1) != 0 || *(v69 + 240) < *(v69 + 88))
    {
      v71 = sub_1AF622B60(v35);
      v43 = v71;
      v45 = v72;
      v46 = *(v69 + 188);
      if ((*(v28 + 208) & 1) == 0)
      {
        v73 = *(*(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35;
        *v73 = v46;
        *(v73 + 4) = v71;
        *(v73 + 6) = v34;
      }

      if (*(v28 + 212) == 1)
      {
        v74 = *(v69 + 192);
        if (v74)
        {
          v75 = *(v69 + 208);
          *(v74 + 8 * (v71 >> 6)) |= 1 << v71;
          *(v75 + 8 * (v71 >> 6)) &= ~(1 << v71);
        }

        sub_1AF705804(v71);
      }

      os_unfair_lock_unlock(*(v69 + 344));

LABEL_66:

      v76 = *(*(*(v11 + 16) + 144) + 8 * v46 + 32);

      v77 = *(v11 + 16);

      v99 = 1;
      v88[0] = v77;
      v88[1] = v76;
      v88[2] = v11;
      v89 = xmmword_1AFE21110;
      v90 = 1;
      v91 = v43;
      v93 = 0;
      v94 = 0;
      v92 = v45;
      v95 = 1;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      sub_1AFD05484(v88, a7, a8, a9, a10, a11);

      return v81 | v35;
    }

    os_unfair_lock_unlock(*(v69 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63D8A8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = a6;
  v16 = *(a6 + 16);
  v17 = v16 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v18 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v18);

  v19 = sub_1AF66F020(a1, a2, a3);
  v21 = v20;

  v22 = *(v16 + 80);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = 0;
  v25 = v22 + 32;
  while (*(*(v25 + 8 * v24) + 144) != v19)
  {
    if (v23 == ++v24)
    {
      goto LABEL_7;
    }
  }

  v26 = sub_1AF65D418(v21, v24);
  v27 = v26;
  if ((v26 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v27 = sub_1AF65D480(v19, v21, v28, a3);
  }

  v29 = *(*(v16 + 88) + 8 * v27 + 32);
  v30 = *(v17 + 24);

  os_unfair_lock_unlock(v30);

  v31 = *(v12 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v32 = *v31;

  if (v32)
  {
    vfx_counters.add(_:_:)(*(v31 + 40), 1);
  }

  v33 = *(v12 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v34 = *v33;

  if (v34)
  {
    vfx_counters.add(_:_:)(*(v33 + 48), 1);
  }

  v35 = *(v29 + 204);
  if (*(v29 + 208))
  {
    v82 = 0;
    LODWORD(v36) = -1;
  }

  else
  {

    v36 = sub_1AF65B2E4();

    v82 = v36 & 0xFFFFFFFF00000000;
  }

  v37 = *(v12 + 16);
  v38 = *(*(*(v37 + 88) + 8 * v35 + 32) + 200);

  if (v38 == 1)
  {
    *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v39 = *(v37 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v39);
  if (!sub_1AF62173C(v35))
  {
    sub_1AF6AFD3C(v35);
  }

  v40 = 36;
  if (a4)
  {
    v40 = 32;
  }

  v41 = *(*(v37 + 104) + 40 * v35 + v40 + 32);
  if (v41 != -1)
  {
    v42 = *(*(v37 + 144) + 8 * v41 + 32);
    if (*(v42 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v42 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v42 + 376)))
    {
      os_unfair_lock_lock(*(v42 + 344));
      os_unfair_lock_unlock(*(v42 + 376));
      if ((*(v42 + 121) & 1) != 0 || *(v42 + 240) < *(v42 + 88))
      {
        v43 = sub_1AF622B60(v36);
        v44 = v43;
        v46 = v45;
        v47 = *(v42 + 188);
        if ((*(v29 + 208) & 1) == 0)
        {
          v48 = *(*(v12 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36;
          *v48 = v47;
          *(v48 + 4) = v43;
          *(v48 + 6) = v35;
        }

        if (*(v29 + 212) == 1)
        {
          v49 = *(v42 + 192);
          if (v49)
          {
            v50 = *(v42 + 208);
            *(v49 + 8 * (v43 >> 6)) |= 1 << v43;
            *(v50 + 8 * (v43 >> 6)) &= ~(1 << v43);
          }

          sub_1AF705804(v43);
        }

        os_unfair_lock_unlock(*(v42 + 344));
        os_unfair_lock_unlock(*(v37 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v42 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v37 + 136));
  v51 = sub_1AF624654();
  v80 = v12;
  if ((v51 & 0x100000000) != 0)
  {
    v52 = *(*(v37 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v58 = sub_1AF64BF6C(v57, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    v60 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v55 + 2) + 1, 1);
      v55 = *(v37 + 144);
    }

    v36 = *(v55 + 2);
    v61 = *(v55 + 3);
    if (v36 >= v61 >> 1)
    {
      sub_1AFC05EFC(v61 > 1, v36 + 1, 1);
      v55 = *(v37 + 144);
    }

    *(v55 + 2) = v36 + 1;
    *&v55[8 * v36 + 32] = v58;
    LODWORD(v36) = v60;
    v12 = v80;
  }

  else
  {
    v52 = v51;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v54 = sub_1AF64BF6C(v53, a5 | ((HIDWORD(a5) & 1) << 32), v35, a4 & 1, v52);

    _swift_stdlib_immortalize();

    v55 = *(v37 + 144);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 144) = v55;
    if ((v56 & 1) == 0)
    {
      v55 = sub_1AF6247B0(v55);
    }

    *&v55[8 * v52 + 32] = v54;
  }

  *(v37 + 144) = v55;
  v62 = *(v37 + 104);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(v37 + 104) = v62;
  if ((v63 & 1) == 0)
  {
    v62 = sub_1AFC0D9B8(v62);
    *(v37 + 104) = v62;
  }

  v64 = &v62[40 * v35];
  if (a4)
  {
    v65 = *(v64 + 4);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 4) = v65;
    v67 = v36;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AF420E8C(0, *(v65 + 2) + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    v36 = *(v65 + 2);
    v68 = *(v65 + 3);
    if (v36 >= v68 >> 1)
    {
      v65 = sub_1AF420E8C(v68 > 1, v36 + 1, 1, v65);
      *(v64 + 4) = v65;
    }

    *(v65 + 2) = v36 + 1;
    *&v65[4 * v36 + 32] = v52;
    *(v64 + 16) = v52;
    LODWORD(v36) = v67;
    v12 = v80;
  }

  else
  {
    v69 = *(v64 + 5);
    sub_1AF64B7B0(v69, v69, v52);
    *(v64 + 5) = v69 + 1;
    *(v64 + 17) = v52;
  }

  v64[56] = 1;
  v70 = *(*(v37 + 144) + 8 * v52 + 32);
  v71 = *(v70 + 376);

  if (os_unfair_lock_trylock(v71))
  {
    os_unfair_lock_lock(*(v70 + 344));
    os_unfair_lock_unlock(*(v70 + 376));
    if ((*(v70 + 121) & 1) != 0 || *(v70 + 240) < *(v70 + 88))
    {
      v72 = sub_1AF622B60(v36);
      v44 = v72;
      v46 = v73;
      v47 = *(v70 + 188);
      if ((*(v29 + 208) & 1) == 0)
      {
        v74 = *(*(v12 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36;
        *v74 = v47;
        *(v74 + 4) = v72;
        *(v74 + 6) = v35;
      }

      if (*(v29 + 212) == 1)
      {
        v75 = *(v70 + 192);
        if (v75)
        {
          v76 = *(v70 + 208);
          *(v75 + 8 * (v72 >> 6)) |= 1 << v72;
          *(v76 + 8 * (v72 >> 6)) &= ~(1 << v72);
        }

        sub_1AF705804(v72);
      }

      os_unfair_lock_unlock(*(v70 + 344));

LABEL_66:

      v77 = *(*(*(v12 + 16) + 144) + 8 * v47 + 32);

      v78 = *(v12 + 16);

      v101 = 1;
      v90[0] = v78;
      v90[1] = v77;
      v90[2] = v12;
      v91 = xmmword_1AFE21110;
      v92 = 1;
      v93 = v44;
      v95 = 0;
      v96 = 0;
      v94 = v46;
      v97 = 1;
      v99 = 0;
      v100 = 0;
      v98 = 0;
      sub_1AFD05898(v90, a7, a8, a9, a10, a11, a12);

      return v82 | v36;
    }

    os_unfair_lock_unlock(*(v70 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF63E0F4()
{
  if (!qword_1EB63D038)
  {
    type metadata accessor for ComponentsDataChunk();
    sub_1AF63B8B8(255, &qword_1EB63D040, sub_1AF43A540, MEMORY[0x1E69E62F8]);
    sub_1AF63E1A0();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D038);
    }
  }
}

unint64_t sub_1AF63E1A0()
{
  result = qword_1EB63D048[0];
  if (!qword_1EB63D048[0])
  {
    type metadata accessor for ComponentsDataChunk();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63D048);
  }

  return result;
}

uint64_t sub_1AF63E224(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v7 = a6;
  v11 = *(a6 + 16);
  v12 = v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v13 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v13);

  v14 = sub_1AF66F020(a1, a2, a3);
  v16 = v15;

  v17 = *(v11 + 80);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v20 = v17 + 32;
  while (*(*(v20 + 8 * v19) + 144) != v14)
  {
    if (v18 == ++v19)
    {
      goto LABEL_7;
    }
  }

  v21 = sub_1AF65D418(v16, v19);
  v22 = v21;
  if ((v21 & 0x100000000) != 0)
  {
LABEL_7:
    sub_1AFC0EF2C(a1, a2);
    v22 = sub_1AF65D480(v14, v16, v23, a3);
  }

  v24 = *(*(v11 + 88) + 8 * v22 + 32);
  v25 = *(v12 + 24);

  os_unfair_lock_unlock(v25);

  v26 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v27 = *v26;

  if (v27)
  {
    vfx_counters.add(_:_:)(*(v26 + 40), 1);
  }

  v28 = *(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v29 = *v28;

  if (v29)
  {
    vfx_counters.add(_:_:)(*(v28 + 48), 1);
  }

  v30 = *(v24 + 204);
  if (*(v24 + 208))
  {
    v77 = 0;
    LODWORD(v31) = -1;
  }

  else
  {

    v31 = sub_1AF65B2E4();

    v77 = v31 & 0xFFFFFFFF00000000;
  }

  v32 = *(v7 + 16);
  v33 = *(*(*(v32 + 88) + 8 * v30 + 32) + 200);

  if (v33 == 1)
  {
    *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v34 = *(v32 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v34);
  if (!sub_1AF62173C(v30))
  {
    sub_1AF6AFD3C(v30);
  }

  v35 = 36;
  if (a4)
  {
    v35 = 32;
  }

  v36 = *(*(v32 + 104) + 40 * v30 + v35 + 32);
  if (v36 != -1)
  {
    v37 = *(*(v32 + 144) + 8 * v36 + 32);
    if (*(v37 + 32))
    {
      if ((a5 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a5 & 0x100000000) != 0 || *(v37 + 28) != a5)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v37 + 376)))
    {
      os_unfair_lock_lock(*(v37 + 344));
      os_unfair_lock_unlock(*(v37 + 376));
      if ((*(v37 + 121) & 1) != 0 || *(v37 + 240) < *(v37 + 88))
      {
        v38 = sub_1AF622B60(v31);
        v39 = v38;
        v41 = v40;
        v42 = *(v37 + 188);
        if ((*(v24 + 208) & 1) == 0)
        {
          v43 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
          *v43 = v42;
          *(v43 + 4) = v38;
          *(v43 + 6) = v30;
        }

        if (*(v24 + 212) == 1)
        {
          v44 = *(v37 + 192);
          if (v44)
          {
            v45 = *(v37 + 208);
            *(v44 + 8 * (v38 >> 6)) |= 1 << v38;
            *(v45 + 8 * (v38 >> 6)) &= ~(1 << v38);
          }

          sub_1AF705804(v38);
        }

        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v32 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v37 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v32 + 136));
  v46 = sub_1AF624654();
  v75 = v7;
  if ((v46 & 0x100000000) != 0)
  {
    v47 = *(*(v32 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v53 = sub_1AF64BF6C(v52, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    v55 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v50 + 2) + 1, 1);
      v50 = *(v32 + 144);
    }

    v31 = *(v50 + 2);
    v56 = *(v50 + 3);
    if (v31 >= v56 >> 1)
    {
      sub_1AFC05EFC(v56 > 1, v31 + 1, 1);
      v50 = *(v32 + 144);
    }

    *(v50 + 2) = v31 + 1;
    *&v50[8 * v31 + 32] = v53;
    LODWORD(v31) = v55;
    v7 = v75;
  }

  else
  {
    v47 = v46;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v49 = sub_1AF64BF6C(v48, a5 | ((HIDWORD(a5) & 1) << 32), v30, a4 & 1, v47);

    _swift_stdlib_immortalize();

    v50 = *(v32 + 144);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 144) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1AF6247B0(v50);
    }

    *&v50[8 * v47 + 32] = v49;
  }

  *(v32 + 144) = v50;
  v57 = *(v32 + 104);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 104) = v57;
  if ((v58 & 1) == 0)
  {
    v57 = sub_1AFC0D9B8(v57);
    *(v32 + 104) = v57;
  }

  v59 = &v57[40 * v30];
  if (a4)
  {
    v60 = *(v59 + 4);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 4) = v60;
    v62 = v31;
    if ((v61 & 1) == 0)
    {
      v60 = sub_1AF420E8C(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    v31 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v31 >= v63 >> 1)
    {
      v60 = sub_1AF420E8C(v63 > 1, v31 + 1, 1, v60);
      *(v59 + 4) = v60;
    }

    *(v60 + 2) = v31 + 1;
    *&v60[4 * v31 + 32] = v47;
    *(v59 + 16) = v47;
    LODWORD(v31) = v62;
    v7 = v75;
  }

  else
  {
    v64 = *(v59 + 5);
    sub_1AF64B7B0(v64, v64, v47);
    *(v59 + 5) = v64 + 1;
    *(v59 + 17) = v47;
  }

  v59[56] = 1;
  v65 = *(*(v32 + 144) + 8 * v47 + 32);
  v66 = *(v65 + 376);

  if (os_unfair_lock_trylock(v66))
  {
    os_unfair_lock_lock(*(v65 + 344));
    os_unfair_lock_unlock(*(v65 + 376));
    if ((*(v65 + 121) & 1) != 0 || *(v65 + 240) < *(v65 + 88))
    {
      v67 = sub_1AF622B60(v31);
      v39 = v67;
      v41 = v68;
      v42 = *(v65 + 188);
      if ((*(v24 + 208) & 1) == 0)
      {
        v69 = *(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31;
        *v69 = v42;
        *(v69 + 4) = v67;
        *(v69 + 6) = v30;
      }

      if (*(v24 + 212) == 1)
      {
        v70 = *(v65 + 192);
        if (v70)
        {
          v71 = *(v65 + 208);
          *(v70 + 8 * (v67 >> 6)) |= 1 << v67;
          *(v71 + 8 * (v67 >> 6)) &= ~(1 << v67);
        }

        sub_1AF705804(v67);
      }

      os_unfair_lock_unlock(*(v65 + 344));

LABEL_66:

      v72 = *(*(*(v7 + 16) + 144) + 8 * v42 + 32);

      v73 = *(v7 + 16);

      v91 = 1;
      v80[0] = v73;
      v80[1] = v72;
      v80[2] = v7;
      v81 = xmmword_1AFE21110;
      v82 = 1;
      v83 = v39;
      v85 = 0;
      v86 = 0;
      v84 = v41;
      v87 = 1;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      a7(v80);

      return v77 | v31;
    }

    os_unfair_lock_unlock(*(v65 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF63EA20(uint64_t result, uint64_t a2, int a3, unint64_t a4, Swift::Int a5, uint64_t a6, char **a7, uint64_t a8, void *a9, void *a10)
{
  v121 = a7;
  v122 = a8;
  v128 = a5;
  if (a5 < 1)
  {
    return result;
  }

  v11 = a6;
  v117 = a4;
  LODWORD(v124) = result;
  v170 = v10;
  v14 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v15 = *v14;

  if (v15)
  {
    vfx_counters.add(_:_:)(*(v14 + 40), v128);
  }

  LODWORD(v118) = a3;

  v16 = *(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v17 = *v16;

  if (v17)
  {
    vfx_counters.add(_:_:)(*(v16 + 48), v128);
  }

  ecs_stack_allocator_push_snapshot(*(v11 + 32));
  v120 = *(a2 + 204);
  v18 = ecs_stack_allocator_allocate(*(v11 + 32), 4 * v128, 4);
  v19 = v18;
  v119 = (4 * v128) >> 2;
  v123 = a2;
  v20 = *(a2 + 208);
  v127 = v11;
  if ((v20 & 1) == 0)
  {
    v31 = 0;
    v125 = v18;
    do
    {
      v34 = v11;
      v36 = *(v11 + 16);
      v35 = v36 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
      v37 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

      os_unfair_lock_lock(v37);
      ++*(v36 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
      v38 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
      LODWORD(v39) = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
      if (v39 == -1)
      {
        v126 = v35;
        v40 = (v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v41 = OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity;
        v42 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v39 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
        v43 = 2 * *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
        *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = v43;
        v44 = swift_slowAlloc();
        *v40 = v44;
        v40[1] = v43;
        if (v44 != v42 || v44 >= &v42[12 * v39])
        {
          memmove(v44, v42, 12 * v39);
        }

        if (v42)
        {
          MEMORY[0x1B271DEA0](v42, -1, -1);
        }

        v46 = *(v36 + v41);
        v47 = *v40;
        if (v46 - 1 != v39)
        {
          v48 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
          v49 = v39 + 1;
          do
          {
            v50 = *(v36 + v48);
            v51 = &v47[12 * v49 - 12];
            *v51 = v49;
            *(v51 + 1) = -1;
            *(v51 + 2) = v50;
            ++v49;
          }

          while (v46 != v49);
        }

        v32 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
        v33 = &v47[12 * v46];
        *(v33 - 12) = -1;
        *(v33 - 1) = v32;
        *(v36 + v38) = v39;
        v35 = v126;
        v34 = v127;
        v19 = v125;
      }

      *(v36 + v38) = *(*(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39);
      os_unfair_lock_unlock(*(v35 + 24));

      *(v19 + 4 * v31++) = v39;
      v11 = v34;
    }

    while (v31 != v128);
  }

  v135 = 0;
  v21 = v123;
  v22 = v120;
  v23 = v128 / *(v123 + 64) + 2 * *(*(*(*(v11 + 16) + 104) + 40 * v120 + 32) + 16) + 1;
  v24 = ecs_stack_allocator_allocate(*(v11 + 32), 24 * v23, 8);
  v133[0] = v24;
  v133[1] = v23;
  v134 = 0;
  v25 = *(v11 + 16);

  v26 = v119;
  v129 = 0;
  v130 = v119;
  v131 = v19;
  v132 = v119;
  if (v119 < 1)
  {

    v30 = 0;
  }

  else
  {
    v128 = &v116;
    v27 = v117;
    v28 = v117;

    v29 = v118;
    do
    {

      sub_1AF6253B8(v22, v28 | ((HIDWORD(v27) & 1) << 32), v29 & 1, v25, &v129, v21, v19, v26, &v135, v11, v22, v133);
    }

    while (v130 - v129 > 0);

    v30 = v134;
    v24 = v133[0];
  }

  v52 = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v30, 8);
  v53 = v52;
  if (v30)
  {
    v54 = 0;
    v55 = v24 + 2;
    v56 = v52;
    v57 = v30;
    do
    {
      v58 = *(v55 - 2);
      v59 = *(v55 - 1);
      v60 = *v55;
      v55 += 3;
      v61 = v54 - v59 + v60;
      *v56 = v59;
      *(v56 + 1) = v60;
      *(v56 + 2) = v54;
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = 0;
      v56[5] = v58;

      v56 += 6;
      v54 = v61;
      --v57;
    }

    while (v57);
  }

  v120 = a10;
  v119 = a9;
  v62 = v127;
  v63 = *(v127 + 16);
  v64 = qword_1ED72D720;

  if (v64 != -1)
  {
    swift_once();
  }

  v164 = qword_1ED73B840;
  v165 = 0;
  v166 = 2;
  v167 = 0;
  v168 = 2;
  v169 = 0;

  sub_1AF6BA460(v63, v62, &v164, v53, v30, v30, &v136);
  if (v124)
  {
    if (v143 > 0)
    {
      v65 = v140;
      if (v140)
      {
        v118 = v143;
        v66 = v142;
        v128 = *(v142 + 32);
        v117 = v141;
        LODWORD(v126) = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v67 = (v139 + 24);
        while (1)
        {
          v69 = *(v67 - 6);
          v68 = *(v67 - 5);
          v70 = *(v67 - 4);
          v71 = *(v67 - 1);
          v72 = v67[1];
          v73 = v67[2];
          v124 = *v67;
          v125 = v65;
          v123 = v72;
          if (v126)
          {
            v74 = *(v73 + 376);

            os_unfair_lock_lock(v74);
            os_unfair_lock_lock(*(v73 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v128);
          v75 = *(v66 + 64);
          v150[0] = *(v66 + 48);
          v150[1] = v75;
          v151 = *(v66 + 80);
          v76 = *(*(*(*(v73 + 40) + 16) + 32) + 16) + 1;
          *(v66 + 48) = ecs_stack_allocator_allocate(*(v66 + 32), 48 * v76, 8);
          *(v66 + 56) = v76;
          *(v66 + 72) = 0;
          *(v66 + 80) = 0;
          *(v66 + 64) = 0;
          LOBYTE(v129) = 1;
          v152[0] = v117;
          v152[1] = v73;
          v152[2] = v66;
          v152[3] = v70;
          v152[4] = (v68 - v69 + v70);
          v152[5] = v118;
          v152[6] = v69;
          v152[7] = v68;
          v152[8] = 0;
          v152[9] = 0;
          v153 = 1;
          v154 = v71;
          v155 = v124;
          v156 = v123;
          v77 = v170;
          sub_1AF6981F0(v152, v121, v122, v119, v120);
          if (v77)
          {
            break;
          }

          v144[0] = v136;
          v144[1] = v137;
          v145 = v138;
          sub_1AF630994(v66, v144, v150);
          v170 = 0;
          v62 = v127;
          if (*(*(v66 + 104) + 16))
          {

            sub_1AF62F348(v78, v73);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = *(v66 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v81 = v80[2];
              v82 = swift_isUniquelyReferenced_nonNull_native();
              *(v66 + 104) = v80;
              if ((v82 & 1) == 0)
              {
                v80 = sub_1AF420EA0(0, v81, 1, v80);
                *(v66 + 104) = v80;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v81)
              {
                v83 = v80[2] - v81;
                memmove(v80 + 4, &v80[9 * v81 + 4], 72 * v83);
                v80[2] = v83;
              }

              *(v66 + 104) = v80;
            }

            else
            {
              v84 = MEMORY[0x1E69E7CC0];
              if (v80[3] >= 2uLL)
              {
                sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                v84 = swift_allocObject();
                v85 = j__malloc_size_0(v84);
                v84[2] = 0;
                v84[3] = 2 * ((v85 - 32) / 72);
              }

              *(v66 + 104) = v84;
            }

            if (*(*(v66 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v86 = *(v73 + 232);
              v87 = *(v73 + 256);
              if (v86 == v87)
              {
                v88 = *(v73 + 240);
              }

              else
              {
                sub_1AF6497A0(v87, v86);
                v87 = *(v73 + 232);
                v88 = *(v73 + 240);
                if (v88 == v87)
                {
                  v88 = 0;
                  v87 = 0;
                  *(v73 + 232) = 0;
                  *(v73 + 240) = 0;
                }
              }

              *(v73 + 248) = v88;
              *(v73 + 256) = v87;
            }
          }

          ecs_stack_allocator_pop_snapshot(v128);
          if (v126)
          {
            os_unfair_lock_unlock(*(v73 + 344));
            os_unfair_lock_unlock(*(v73 + 376));
          }

          v67 += 6;
          v65 = (v125 - 1);
          if (v125 == 1)
          {
            goto LABEL_86;
          }
        }

        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

LABEL_86:
    sub_1AF63B864(&v136);
    return ecs_stack_allocator_pop_snapshot(*(v62 + 32));
  }

  if (v143 <= 0)
  {
    goto LABEL_86;
  }

  v89 = v140;
  if (!v140)
  {
    goto LABEL_86;
  }

  v118 = v143;
  v90 = v142;
  v91 = *(v142 + 32);
  v117 = v141;
  v92 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v93 = (v139 + 24);
  LODWORD(v123) = v92;
  v124 = v91;
  while (1)
  {
    v95 = *(v93 - 6);
    v94 = *(v93 - 5);
    v96 = *(v93 - 4);
    v97 = *v93;
    v128 = *(v93 - 1);
    v125 = v89;
    v126 = v97;
    v99 = v93[1];
    v98 = v93[2];
    if (v92)
    {
      v100 = *(v98 + 376);

      os_unfair_lock_lock(v100);
      os_unfair_lock_lock(*(v98 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v91);
    v101 = *(v90 + 64);
    v157[0] = *(v90 + 48);
    v157[1] = v101;
    v158 = *(v90 + 80);
    v102 = *(*(*(*(v98 + 40) + 16) + 32) + 16) + 1;
    *(v90 + 48) = ecs_stack_allocator_allocate(*(v90 + 32), 48 * v102, 8);
    *(v90 + 56) = v102;
    *(v90 + 72) = 0;
    *(v90 + 80) = 0;
    *(v90 + 64) = 0;
    LOBYTE(v129) = 1;
    v159[0] = v117;
    v159[1] = v98;
    v159[2] = v90;
    v159[3] = v96;
    v159[4] = (v94 - v95 + v96);
    v159[5] = v118;
    v159[6] = v95;
    v159[7] = v94;
    v159[8] = 0;
    v159[9] = 0;
    v160 = 1;
    v161 = v128;
    v162 = v126;
    v163 = v99;
    v103 = v170;
    sub_1AF6981F0(v159, v121, v122, v119, v120);
    if (v103)
    {
      break;
    }

    v146[0] = v136;
    v146[1] = v137;
    v147 = v138;
    sub_1AF630994(v90, v146, v157);
    v170 = 0;
    v62 = v127;
    if (*(*(v90 + 104) + 16))
    {

      sub_1AF62F348(v104, v98);

      v105 = swift_isUniquelyReferenced_nonNull_native();
      v106 = *(v90 + 104);
      if (v105)
      {
        v107 = v106[2];
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *(v90 + 104) = v106;
        if ((v108 & 1) == 0)
        {
          v106 = sub_1AF420EA0(0, v107, 1, v106);
          *(v90 + 104) = v106;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v107)
        {
          v109 = v106[2] - v107;
          memmove(v106 + 4, &v106[9 * v107 + 4], 72 * v109);
          v106[2] = v109;
        }

        *(v90 + 104) = v106;
      }

      else
      {
        v110 = MEMORY[0x1E69E7CC0];
        if (v106[3] >= 2uLL)
        {
          sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
          v110 = swift_allocObject();
          v111 = j__malloc_size_0(v110);
          v110[2] = 0;
          v110[3] = 2 * ((v111 - 32) / 72);
        }

        *(v90 + 104) = v110;
      }

      if (*(*(v90 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v112 = *(v98 + 232);
        v113 = *(v98 + 256);
        if (v112 == v113)
        {
          v114 = *(v98 + 240);
        }

        else
        {
          sub_1AF6497A0(v113, v112);
          v113 = *(v98 + 232);
          v114 = *(v98 + 240);
          if (v114 == v113)
          {
            v114 = 0;
            v113 = 0;
            *(v98 + 232) = 0;
            *(v98 + 240) = 0;
          }
        }

        *(v98 + 248) = v114;
        *(v98 + 256) = v113;
      }
    }

    v91 = v124;
    ecs_stack_allocator_pop_snapshot(v124);
    v92 = v123;
    if (v123)
    {
      os_unfair_lock_unlock(*(v98 + 344));
      os_unfair_lock_unlock(*(v98 + 376));
    }

    v93 += 6;
    v89 = (v125 - 1);
    if (v125 == 1)
    {
      goto LABEL_86;
    }
  }

  v148[0] = v136;
  v148[1] = v137;
  v149 = v138;
  sub_1AF630994(v90, v148, v157);
  sub_1AF62D29C(v98);
  ecs_stack_allocator_pop_snapshot(v124);
  v115 = v127;
  if (v123)
  {
    os_unfair_lock_unlock(*(v98 + 344));
    os_unfair_lock_unlock(*(v98 + 376));
  }

  sub_1AF63B864(&v136);
  return ecs_stack_allocator_pop_snapshot(*(v115 + 32));
}

uint64_t sub_1AF63F65C(uint64_t result, uint64_t a2, int a3, unint64_t a4, Swift::Int a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9)
{
  v135 = a7;
  v133 = a8;
  v134 = a9;
  if (a5 >= 1)
  {
    v10 = a6;
    v123 = a4;
    v128 = result;
    v159 = v9;
    v14 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v15 = *v14;

    if (v15)
    {
      vfx_counters.add(_:_:)(*(v14 + 40), a5);
    }

    v124 = a3;

    v16 = *(v10 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v17 = *v16;

    if (v17)
    {
      vfx_counters.add(_:_:)(*(v16 + 48), a5);
    }

    ecs_stack_allocator_push_snapshot(*(v10 + 32));
    v126 = *(a2 + 204);
    v18 = ecs_stack_allocator_allocate(*(v10 + 32), 4 * a5, 4);
    v19 = v18;
    v125 = (4 * a5) >> 2;
    v127 = a2;
    v20 = *(a2 + 208);
    v131 = v10;
    v21 = a5;
    if ((v20 & 1) == 0)
    {
      v33 = 0;
      v129 = a5;
      v130 = v18;
      do
      {
        v36 = v19;
        v38 = *(v10 + 16);
        v37 = (v38 + OBJC_IVAR____TtC3VFX13EntityManager_lock);
        v39 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

        os_unfair_lock_lock(v39);
        ++*(v38 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
        v40 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
        LODWORD(v19) = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
        if (v19 == -1)
        {
          v132 = v37;
          v41 = (v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v42 = OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity;
          v43 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v19 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
          v44 = 2 * *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
          *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = v44;
          v45 = swift_slowAlloc();
          *v41 = v45;
          v41[1] = v44;
          if (v45 != v43 || v45 >= &v43[12 * v19])
          {
            memmove(v45, v43, 12 * v19);
          }

          if (v43)
          {
            MEMORY[0x1B271DEA0](v43, -1, -1);
          }

          v47 = *(v38 + v42);
          v48 = *v41;
          v21 = v129;
          if (v47 - 1 != v19)
          {
            v49 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
            v50 = v19 + 1;
            do
            {
              v51 = *(v38 + v49);
              v52 = &v48[12 * v50 - 12];
              *v52 = v50;
              *(v52 + 1) = -1;
              *(v52 + 2) = v51;
              ++v50;
            }

            while (v47 != v50);
          }

          v34 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
          v35 = &v48[12 * v47];
          *(v35 - 12) = -1;
          *(v35 - 1) = v34;
          *(v38 + v40) = v19;
          v36 = v130;
          v10 = v131;
          v37 = v132;
        }

        *(v38 + v40) = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v19);
        os_unfair_lock_unlock(v37[3]);

        *(v36 + 4 * v33) = v19;
        v19 = v36;
        ++v33;
      }

      while (v33 != v21);
    }

    v138 = 0;
    v23 = v126;
    v22 = v127;
    v24 = v21 / *(v127 + 64) + 2 * *(*(*(*(v10 + 16) + 104) + 40 * v126 + 32) + 16) + 1;
    v25 = ecs_stack_allocator_allocate(*(v10 + 32), 24 * v24, 8);
    v136[0] = v25;
    v136[1] = v24;
    v137 = 0;
    v26 = *(v10 + 16);

    v27 = v125;
    *&v139 = 0;
    *(&v139 + 1) = v125;
    *&v140 = v19;
    *(&v140 + 1) = v125;
    if (v125 < 1)
    {

      v32 = 0;
    }

    else
    {
      v132 = &v122;
      v28 = v19;
      v29 = v123;
      v30 = v123;

      v31 = v124;
      do
      {

        sub_1AF6253B8(v23, v30 | ((HIDWORD(v29) & 1) << 32), v31 & 1, v26, &v139, v22, v28, v27, &v138, v10, v23, v136);
      }

      while ((*(&v139 + 1) - v139) > 0);

      v32 = v137;
      v25 = v136[0];
    }

    v53 = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v32, 8);
    v54 = v53;
    if (v32)
    {
      v55 = 0;
      v56 = v25 + 2;
      v57 = v53;
      v58 = v32;
      do
      {
        v59 = *(v56 - 2);
        v60 = *(v56 - 1);
        v61 = *v56;
        v56 += 3;
        v62 = v55 - v60 + v61;
        *v57 = v60;
        *(v57 + 1) = v61;
        *(v57 + 2) = v55;
        v57[2] = 0;
        v57[3] = 0;
        v57[4] = 0;
        v57[5] = v59;

        v57 += 6;
        v55 = v62;
        --v58;
      }

      while (v58);
    }

    v63 = v131;
    v64 = *(v131 + 16);
    v65 = qword_1ED72D720;

    if (v65 != -1)
    {
      swift_once();
    }

    v153 = qword_1ED73B840;
    v154 = 0;
    v155 = 2;
    v156 = 0;
    v157 = 2;
    v158 = 0;

    sub_1AF6BA460(v64, v63, &v153, v54, v32, v32, &v139);
    if (v128)
    {
      if (v146 > 0)
      {
        v66 = v143;
        if (v143)
        {
          v67 = v145;
          v68 = *(v145 + 32);
          v69 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v147 = v139;
          v148 = v140;
          v149 = v141;
          v70 = (v142 + 24);
          LODWORD(v129) = v69;
          v130 = v68;
          do
          {
            v132 = v66;
            v71 = *(v70 - 6);
            v72 = *(v70 - 1);
            v73 = *v70;
            v74 = v70[1];
            v75 = v70[2];
            if (v69)
            {
              v76 = *(v75 + 376);

              os_unfair_lock_lock(v76);
              os_unfair_lock_lock(*(v75 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v68);
            v77 = *(v67 + 64);
            v150 = *(v67 + 48);
            v151 = v77;
            v152 = *(v67 + 80);
            v78 = *(*(*(*(v75 + 40) + 16) + 32) + 16) + 1;
            *(v67 + 48) = ecs_stack_allocator_allocate(*(v67 + 32), 48 * v78, 8);
            *(v67 + 56) = v78;
            *(v67 + 72) = 0;
            *(v67 + 80) = 0;
            *(v67 + 64) = 0;
            v79 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v72, v73, v74, v67);
            v80 = (sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v72, v73, v74, v67) + 32 * v71);
            v81 = v134;
            *v80 = v133;
            v80[1] = v81;
            *(v79 + 8 * v71) = v135;

            v82 = v159;
            sub_1AF630994(v67, &v147, &v150);
            v159 = v82;
            if (*(*(v67 + 104) + 16))
            {

              sub_1AF62F348(v83, v75);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v85 = *(v67 + 104);
              if (isUniquelyReferenced_nonNull_native)
              {
                v86 = v85[2];
                v87 = swift_isUniquelyReferenced_nonNull_native();
                *(v67 + 104) = v85;
                if ((v87 & 1) == 0)
                {
                  v85 = sub_1AF420EA0(0, v86, 1, v85);
                  *(v67 + 104) = v85;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v86)
                {
                  v88 = v85[2] - v86;
                  memmove(v85 + 4, &v85[9 * v86 + 4], 72 * v88);
                  v85[2] = v88;
                }

                *(v67 + 104) = v85;
              }

              else
              {
                v89 = MEMORY[0x1E69E7CC0];
                if (v85[3] >= 2uLL)
                {
                  sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                  v89 = swift_allocObject();
                  v90 = j__malloc_size_0(v89);
                  v89[2] = 0;
                  v89[3] = 2 * ((v90 - 32) / 72);
                }

                *(v67 + 104) = v89;
              }

              if (*(*(v67 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v91 = *(v75 + 232);
                v92 = *(v75 + 256);
                if (v91 == v92)
                {
                  v93 = *(v75 + 240);
                }

                else
                {
                  sub_1AF6497A0(v92, v91);
                  v92 = *(v75 + 232);
                  v93 = *(v75 + 240);
                  if (v93 == v92)
                  {
                    v93 = 0;
                    v92 = 0;
                    *(v75 + 232) = 0;
                    *(v75 + 240) = 0;
                  }
                }

                *(v75 + 248) = v93;
                *(v75 + 256) = v92;
              }
            }

            v68 = v130;
            ecs_stack_allocator_pop_snapshot(v130);
            v69 = v129;
            if (v129)
            {
              os_unfair_lock_unlock(*(v75 + 344));
              os_unfair_lock_unlock(*(v75 + 376));
            }

            v70 += 6;
            v66 = (v132 - 1);
          }

          while (v132 != 1);
        }
      }
    }

    else if (v146 > 0)
    {
      v94 = v143;
      if (v143)
      {
        v95 = v145;
        v96 = *(v145 + 32);
        v97 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v147 = v139;
        v148 = v140;
        v149 = v141;
        v98 = (v142 + 24);
        LODWORD(v129) = v97;
        v130 = v96;
        do
        {
          v132 = v94;
          v99 = *(v98 - 6);
          v100 = *(v98 - 1);
          v101 = *v98;
          v102 = v98[1];
          v103 = v98[2];
          if (v97)
          {
            v104 = *(v103 + 376);

            os_unfair_lock_lock(v104);
            os_unfair_lock_lock(*(v103 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v96);
          v105 = *(v95 + 64);
          v150 = *(v95 + 48);
          v151 = v105;
          v152 = *(v95 + 80);
          v106 = *(*(*(*(v103 + 40) + 16) + 32) + 16) + 1;
          *(v95 + 48) = ecs_stack_allocator_allocate(*(v95 + 32), 48 * v106, 8);
          *(v95 + 56) = v106;
          *(v95 + 72) = 0;
          *(v95 + 80) = 0;
          *(v95 + 64) = 0;
          v107 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v100, v101, v102, v95);
          v108 = (sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v100, v101, v102, v95) + 32 * v99);
          v109 = v134;
          *v108 = v133;
          v108[1] = v109;
          *(v107 + 8 * v99) = v135;

          v110 = v159;
          sub_1AF630994(v95, &v147, &v150);
          v159 = v110;
          if (*(*(v95 + 104) + 16))
          {

            sub_1AF62F348(v111, v103);

            v112 = swift_isUniquelyReferenced_nonNull_native();
            v113 = *(v95 + 104);
            if (v112)
            {
              v114 = v113[2];
              v115 = swift_isUniquelyReferenced_nonNull_native();
              *(v95 + 104) = v113;
              if ((v115 & 1) == 0)
              {
                v113 = sub_1AF420EA0(0, v114, 1, v113);
                *(v95 + 104) = v113;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v114)
              {
                v116 = v113[2] - v114;
                memmove(v113 + 4, &v113[9 * v114 + 4], 72 * v116);
                v113[2] = v116;
              }

              *(v95 + 104) = v113;
            }

            else
            {
              v117 = MEMORY[0x1E69E7CC0];
              if (v113[3] >= 2uLL)
              {
                sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                v117 = swift_allocObject();
                v118 = j__malloc_size_0(v117);
                v117[2] = 0;
                v117[3] = 2 * ((v118 - 32) / 72);
              }

              *(v95 + 104) = v117;
            }

            if (*(*(v95 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v119 = *(v103 + 232);
              v120 = *(v103 + 256);
              if (v119 == v120)
              {
                v121 = *(v103 + 240);
              }

              else
              {
                sub_1AF6497A0(v120, v119);
                v120 = *(v103 + 232);
                v121 = *(v103 + 240);
                if (v121 == v120)
                {
                  v121 = 0;
                  v120 = 0;
                  *(v103 + 232) = 0;
                  *(v103 + 240) = 0;
                }
              }

              *(v103 + 248) = v121;
              *(v103 + 256) = v120;
            }
          }

          v96 = v130;
          ecs_stack_allocator_pop_snapshot(v130);
          v97 = v129;
          if (v129)
          {
            os_unfair_lock_unlock(*(v103 + 344));
            os_unfair_lock_unlock(*(v103 + 376));
          }

          v98 += 6;
          v94 = (v132 - 1);
        }

        while (v132 != 1);
      }
    }

    sub_1AF63B864(&v139);
    return ecs_stack_allocator_pop_snapshot(*(v131 + 32));
  }

  return result;
}

uint64_t initializeWithCopy for CommandQueue.IterationContext.ComponentBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t assignWithCopy for CommandQueue.IterationContext.ComponentBuffer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

_OWORD *assignWithTake for CommandQueue.IterationContext.ComponentBuffer(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderCache.Function(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ShaderCache.Function(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1AF6404A8(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))(v2);
  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF64055C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

BOOL sub_1AF6405D0(uint64_t *a1, uint64_t *a2)
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
  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  return v2 != v4 || v3 != v5 || v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13 || v14 != v15 || v16 != v17;
}

uint64_t sub_1AF640664(uint64_t a1)
{
  v3 = *(v1 + 32);

  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF6406F0(uint64_t a1)
{
  v3 = *(v1 + 32);

  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF64077C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6407F0(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF64089C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF640928(uint64_t a1)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v11[0] = v3;
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  sub_1AF5A53B0(v10);
  sub_1AF0D5A54(a1, &v9);
  return swift_dynamicCast();
}

uint64_t sub_1AF6409D8(uint64_t a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF640A48(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF640ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  sub_1AF441194(v10, v13);
  sub_1AF5C5358(0, &qword_1ED7270D0);
  swift_dynamicCast();
  memcpy((a2 + a4), &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9);
  return (*(v8 + 8))(&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a5);
}

uint64_t sub_1AF640BD8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1AFDFDE68();
  sub_1AF5C5358(0, &qword_1ED72C1D0);
  return swift_dynamicCast();
}

BOOL sub_1AF640C98(const void *a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a2;
  v9[3] = a3;
  v6 = sub_1AFDFCE48();
  sub_1AF648DE8(v3, sub_1AF3BC858, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return memcmp(v9[5], a1, *(*(a2 - 8) + 64)) == 0;
}

uint64_t sub_1AF640E68(uint64_t a1)
{
  v2 = sub_1AF6458EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF640EA4(uint64_t a1)
{
  v2 = sub_1AF6458EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF640EE0(void *a1)
{
  sub_1AF645884(0, &qword_1EB63D0F8, sub_1AF6458EC, &type metadata for NullEntityComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6458EC();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF641020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v10;
  if (v10)
  {
    v11 = *(a4 + 24);
    v12 = *(v6 + 16);
    v13 = v16;
    v14 = v17;
    do
    {
      v12(v9, v14, a3, v7);
      v11(a3, a4);
      (*(v6 + 8))(v9, a3);
      ++v14;
      --v13;
    }

    while (v13);
  }

  return sub_1AFDFDD28();
}

uint64_t sub_1AF6411D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AF441194(v6, v11);
  sub_1AF5C5358(0, &qword_1ED7270D0);
  swift_dynamicCast();
  return (*(v5 + 40))(a2, v8, a3);
}

uint64_t sub_1AF6412CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v8 + 8) + 8))(v9, v5);
  sub_1AFDFDD08();
  return (*(v4 + 8))(v7, a3);
}

uint64_t sub_1AF6413C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = *MEMORY[0x1E69E9840];
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v12 + *(v15 + 72) * v16;
  (*(*(v18 + 8) + 8))(v19);
  v24 = a4;
  v25 = a5;
  v26 = v6;
  v27 = v17;
  v28 = a2;
  v29 = a3;
  v30 = v14;
  sub_1AF648DE8(v14, sub_1AF644A08, v23, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
  return (*(v11 + 8))(v14, a4);
}

void sub_1AF64154C(__int128 *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  if (v9 == 16)
  {
    if (v10 == 16)
    {
      v18 = a5 - a4;
      v20 = sub_1AF758940(a7);
      memset_pattern16_nocache(a3, a1, v20 * v18);
      return;
    }
  }

  else if (v9 == 8)
  {
    if (v10 == 8)
    {
      v15 = a5 - a4;
      v17 = sub_1AF758940(a7);
      memset_pattern8_nocache(a3, a1, v17 * v15);
      return;
    }
  }

  else if (v9 == 4 && v10 == 4)
  {
    v12 = a5 - a4;
    v14 = sub_1AF758940(a7);
    memset_pattern4_nocache(a3, a1, v14 * v12);
    return;
  }

  sub_1AFDFDD08();
}

uint64_t sub_1AF641654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v8 + 8) + 8))(v9);
  sub_1AFDFDD08();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_1AF641790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / *(*(a5 - 8) + 72);
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1EEE69C50](a3, a4, a1, v6);
}

uint64_t sub_1AF6417EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 - v11 >= 1)
  {
    v12 = *(v5 + 72);
    v13 = result;
    v14 = v8;
    (*(v5 + 16))(v10, result + v12 * v7 - v12, v8);
    sub_1AFDFDD48();
    return (*(v5 + 40))(v13 + v12 * a2, v10, v14);
  }

  return result;
}

uint64_t sub_1AF641904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1AF758940(a4);
  if (result >= 1)
  {
    return (*(a5 + 96))(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1AF64197C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a1;
  v32 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  v12 = sub_1AFDFE818();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - v15;
  v17 = swift_conformsToProtocol2();
  if (v17 && a3)
  {
    v29 = a5;
    v30 = &v28;
    v19 = MEMORY[0x1EEE9AC00](v17, v18);
    (*(v13 + 16))(v16, v31, v12, v19);
    (*(v8 + 16))(v10, v32, a4);
    v20 = v36;
    result = sub_1AF7585B0(v16, v10, a3, a4);
    if (v20)
    {
      return result;
    }

    sub_1AF5C5358(0, &qword_1ED7270D0);
    if (swift_dynamicCast())
    {
      return sub_1AF0FBA54(v34, v29);
    }

    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1AF645A00(v34, sub_1AF645A60);
    *&v34[0] = 0;
    *(&v34[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v34[0] = 0xD000000000000010;
    *(&v34[0] + 1) = 0x80000001AFF2D920;
    v26 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v26);

    v27 = v34[0];
    sub_1AF4567E0();
    swift_allocError();
    *v24 = v27;
    v25 = 32;
  }

  else
  {
    *&v34[0] = 0;
    *(&v34[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v34[0] = 0xD000000000000010;
    *(&v34[0] + 1) = 0x80000001AFF2D920;
    v22 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v22);

    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2D940);
    v23 = v34[0];
    sub_1AF4567E0();
    swift_allocError();
    *v24 = v23;
    v25 = 64;
  }

  *(v24 + 16) = v25;
  return swift_willThrow();
}

uint64_t sub_1AF641D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_conformsToProtocol2();
  if (!v7 || !a2)
  {
    sub_1AFDFE218();

    strcpy(v15, "can't decode ");
    HIWORD(v15[0]) = -4864;
    v10 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2D940);
    sub_1AF4567E0();
    swift_allocError();
    *v11 = v15[0];
    v12 = 64;
LABEL_8:
    *(v11 + 16) = v12;
    return swift_willThrow();
  }

  MEMORY[0x1EEE9AC00](v7, v8);
  result = sub_1AF75869C(a1);
  if (v3)
  {
    return result;
  }

  sub_1AF5C5358(0, &qword_1ED7270D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1AF645A00(v15, sub_1AF645A60);
    *&v15[0] = 0;
    *(&v15[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v15[0] = 0xD000000000000010;
    *(&v15[0] + 1) = 0x80000001AFF2D920;
    v13 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v13);

    v14 = v15[0];
    sub_1AF4567E0();
    swift_allocError();
    *v11 = v14;
    v12 = 32;
    goto LABEL_8;
  }

  return sub_1AF0FBA54(v15, a3);
}

uint64_t sub_1AF641FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v16[3] = v5;
    v10 = v5;
    v11 = sub_1AF585714(v16);
    (*(v4 + 16))(v11, a1, v10);
    v12 = sub_1AF659524(v16);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
    return v12;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    v14 = a1;
    v15 = v5;
    (*(v4 + 16))(v8, v14, v6);
    sub_1AFDFEDD8();
    (*(v4 + 8))(v8, v15);
    return v16[0];
  }
}

uint64_t sub_1AF642110@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF644FBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF642194(void *a1, uint64_t a2)
{
  v4 = sub_1AF75D128();
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  sub_1AF441150(a1, v7);
  LOBYTE(v7) = *(sub_1AF6950BC(v7, v8) + 88);

  if ((v7 & 1) == 0)
  {
    if (!qword_1ED730448)
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v9 = sub_1AF6DC144(v4, v6, 0, 1);

    if (!v9)
    {
      sub_1AF4567E0();
      swift_allocError();
      *v15 = v4;
      *(v15 + 8) = v6;
      *(v15 + 16) = 0;
      return swift_willThrow();
    }
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  LODWORD(v10) = *(sub_1AF6950BC(v10, v11) + 86);

  if (v10 == 1)
  {

    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    sub_1AF6950BC(v12, v13);
    sub_1AF69694C(a2);

    sub_1AF448018(v16, v17);
    sub_1AFDFEF38();
  }

  else
  {
    sub_1AF448018(v16, v17);
    sub_1AFDFEEE8();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
}

uint64_t sub_1AF6423E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF645478(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF64242C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return v2 == v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF64249C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF644DB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF6424C8(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v6 = v2;
  sub_1AF448018(v4, v5);
  sub_1AF6457DC();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF642570()
{
  sub_1AF645254();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v2);

  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = 0x7274736544202323;
  *(v1 + 40) = 0xEB0000000020796FLL;
  sub_1AFDFF258();

  return v0;
}

uint64_t sub_1AF642650()
{
  sub_1AF642570();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6426BC(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642740(uint64_t a1)
{
  sub_1AF644D60(v1);
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF6427A8(uint64_t a1)
{
  v3 = *(v1 + 16);

  sub_1AF0FB8EC(v3);
  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF642828(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6428E4(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1AF645A00(v4, a4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF6429EC(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642A54(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642AE0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  sub_1AF584F68(v8);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF642B68(uint64_t a1)
{
  v3 = v1[13];
  v12[12] = v1[12];
  v12[13] = v3;
  v12[14] = v1[14];
  v4 = v1[9];
  v12[8] = v1[8];
  v12[9] = v4;
  v5 = v1[11];
  v12[10] = v1[10];
  v12[11] = v5;
  v6 = v1[5];
  v12[4] = v1[4];
  v12[5] = v6;
  v7 = v1[7];
  v12[6] = v1[6];
  v12[7] = v7;
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = v1[3];
  v12[2] = v1[2];
  v12[3] = v9;
  sub_1AF644CB8(v12);
  sub_1AF0D5A54(a1, &v11);
  return swift_dynamicCast();
}

uint64_t sub_1AF642C10(uint64_t a1)
{

  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642C94(uint64_t a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642D20(uint64_t a1)
{
  v3 = *(v1 + 32);

  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF642DAC(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642E8C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF642EF4(uint64_t a1)
{
  sub_1AF587E7C(*v1, *(v1 + 8));
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF642F5C(uint64_t a1)
{
  v3 = v1[5];
  v8[4] = v1[4];
  v8[5] = v3;
  v8[6] = v1[6];
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  sub_1AF5A5834(v8);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF642FE4(uint64_t a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643054(uint64_t a1)
{

  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6430E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*(v4 + 8));
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF6431E4(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF64324C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

BOOL sub_1AF6432BC(uint64_t *a1, uint64_t *a2)
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
  v11 = a2[4];
  v12 = *(a1 + 40);
  v13 = *(a2 + 40);
  return v2 != v4 || v3 != v5 || v6 != v8 || v7 != v9 || v10 != v11 || v12 != v13;
}

uint64_t sub_1AF643350(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6433C0(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643430(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6434B4(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643538(uint64_t a1)
{

  sub_1AF0D5A54(a1, v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF64360C(uint64_t a1)
{
  sub_1AF593EF4(*(v1 + 8));
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF64373C(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF6437BC(uint64_t a1)
{
  sub_1AF645830(v1);
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF643824(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643894(uint64_t a1)
{
  memcpy(__dst, v1, 0x606uLL);
  sub_1AF644D0C(__dst);
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF64390C(uint64_t a1)
{
  swift_unknownObjectRelease();
  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643998(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF643A28(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643AC8(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF643B38(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4)) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AF643B6C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  sub_1AF57A684(v8);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF643BF4(uint64_t a1)
{
  sub_1AF58D38C(v1);
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF643C5C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v9[0] = v3;
  *(v9 + 15) = *(v1 + 95);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  sub_1AF597500(v8);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF643D14(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_1AF598838(v7);
  sub_1AF0D5A54(a1, &v6);
  return swift_dynamicCast();
}

uint64_t sub_1AF643DC0(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF64405C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(v4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF6440E0(uint64_t a1)
{
  sub_1AF5A82E8(v1);
  sub_1AF0D5A54(a1, &v4);
  return swift_dynamicCast();
}

uint64_t sub_1AF644160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(v4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF64422C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(v4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF6442B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(v4);
  sub_1AF0D5A54(a1, &v7);
  return swift_dynamicCast();
}

uint64_t sub_1AF644320(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

uint64_t sub_1AF644394(uint64_t a1)
{
  v3 = *v1;

  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF644418(uint64_t a1)
{
  v3 = *(v1 + 32);

  sub_1AF0D5A54(a1, &v5);
  return swift_dynamicCast();
}

uint64_t sub_1AF6444E8(uint64_t a1)
{

  sub_1AF0D5A54(a1, &v3);
  return swift_dynamicCast();
}

char *sub_1AF644588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 60 * a2);
  result = (a3 + 60 * a4);
  if (result != v5 || result >= &v5[60 * a5])
  {
    return memmove(result, v5, 60 * a5);
  }

  return result;
}

char *sub_1AF6445B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 20 * a2);
  result = (a3 + 20 * a4);
  if (result != v5 || result >= &v5[20 * a5])
  {
    return memmove(result, v5, 20 * a5);
  }

  return result;
}

char *sub_1AF6445E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 176 * a2);
  result = (a3 + 176 * a4);
  if (result != v5 || result >= &v5[176 * a5])
  {
    return memmove(result, v5, 176 * a5);
  }

  return result;
}

char *sub_1AF644608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 32 * a2);
  result = (a3 + 32 * a4);
  if (result != v5 || result >= &v5[32 * a5])
  {
    return memmove(result, v5, 32 * a5);
  }

  return result;
}

char *sub_1AF64462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 224 * a2);
  result = (a3 + 224 * a4);
  if (result != v5 || result >= &v5[224 * a5])
  {
    return memmove(result, v5, 224 * a5);
  }

  return result;
}

unint64_t sub_1AF644658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 848 * a2;
  result = a3 + 848 * a4;
  if (result < v5 || result >= v5 + 848 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1AF6446A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 48 * a2;
  result = a3 + 48 * a4;
  if (result < v5 || result >= v5 + 48 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF6446E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 24 * a2);
  result = (a3 + 24 * a4);
  if (result != v5 || result >= &v5[24 * a5])
  {
    return memmove(result, v5, 24 * a5);
  }

  return result;
}

char *sub_1AF644714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 104 * a2);
  result = (a3 + 104 * a4);
  if (result != v5 || result >= &v5[104 * a5])
  {
    return memmove(result, v5, 104 * a5);
  }

  return result;
}

unint64_t sub_1AF64473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + (a2 << 6);
  result = a3 + (a4 << 6);
  if (result < v5 || result >= v5 + (a5 << 6))
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + (a2 << 7));
  result = (a3 + (a4 << 7));
  if (result != v5 || result >= &v5[128 * a5])
  {
    return memmove(result, v5, a5 << 7);
  }

  return result;
}

unint64_t sub_1AF6447A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 48 * a2;
  result = a3 + 48 * a4;
  if (result < v5 || result >= v5 + 48 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF6447EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 144 * a2);
  result = (a3 + 144 * a4);
  if (result != v5 || result >= &v5[144 * a5])
  {
    return memmove(result, v5, 144 * a5);
  }

  return result;
}

char *sub_1AF644818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 16 * a2);
  result = (a3 + 16 * a4);
  if (result != v5 || result >= &v5[16 * a5])
  {
    return memmove(result, v5, 16 * a5);
  }

  return result;
}

unint64_t sub_1AF64483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 40 * a2;
  result = a3 + 40 * a4;
  if (result < v5 || result >= v5 + 40 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 1552 * a2);
  result = (a3 + 1552 * a4);
  if (result != v5 || result >= &v5[1552 * a5])
  {
    return memmove(result, v5, 1552 * a5);
  }

  return result;
}

char *sub_1AF6448AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 12 * a2);
  result = (a3 + 12 * a4);
  if (result != v5 || result >= &v5[12 * a5])
  {
    return memmove(result, v5, 12 * a5);
  }

  return result;
}

char *sub_1AF6448D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 80 * a2);
  result = (a3 + 80 * a4);
  if (result != v5 || result >= &v5[80 * a5])
  {
    return memmove(result, v5, 80 * a5);
  }

  return result;
}

char *sub_1AF644904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 112 * a2);
  result = (a3 + 112 * a4);
  if (result != v5 || result >= &v5[112 * a5])
  {
    return memmove(result, v5, 112 * a5);
  }

  return result;
}

unint64_t sub_1AF644930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = *(*(a6(0) - 8) + 72);
  v12 = a1 + v11 * a2;
  result = a3 + v11 * a4;
  v14 = v12 + v11 * a5;
  if (result < v12 || result >= v14)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 72 * a2);
  result = (a3 + 72 * a4);
  if (result != v5 || result >= &v5[72 * a5])
  {
    return memmove(result, v5, 72 * a5);
  }

  return result;
}

unint64_t sub_1AF644AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 40 * a2;
  result = a3 + 40 * a4;
  if (result < v5 || result >= v5 + 40 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 40 * a2);
  result = (a3 + 40 * a4);
  if (result != v5 || result >= &v5[40 * a5])
  {
    return memmove(result, v5, 40 * a5);
  }

  return result;
}

unint64_t sub_1AF644B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 32 * a2;
  result = a3 + 32 * a4;
  if (result < v5 || result >= v5 + 32 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1AF644B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 16 * a2;
  result = a3 + 16 * a4;
  if (result < v5 || result >= v5 + 16 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 96 * a2);
  result = (a3 + 96 * a4);
  if (result != v5 || result >= &v5[96 * a5])
  {
    return memmove(result, v5, 96 * a5);
  }

  return result;
}

char *sub_1AF644BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 48 * a2);
  result = (a3 + 48 * a4);
  if (result != v5 || result >= &v5[48 * a5])
  {
    return memmove(result, v5, 48 * a5);
  }

  return result;
}

char *sub_1AF644C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 28 * a2);
  result = (a3 + 28 * a4);
  if (result != v5 || result >= &v5[28 * a5])
  {
    return memmove(result, v5, 28 * a5);
  }

  return result;
}

char *sub_1AF644C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + (a2 << 6));
  result = (a3 + (a4 << 6));
  if (result != v5 || result >= &v5[64 * a5])
  {
    return memmove(result, v5, a5 << 6);
  }

  return result;
}

unint64_t sub_1AF644C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 56 * a2;
  result = a3 + 56 * a4;
  if (result < v5 || result >= v5 + 56 * a5)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (result != v5)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AF644C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 8 * a2);
  result = (a3 + 8 * a4);
  if (result != v5 || result >= &v5[8 * a5])
  {
    return memmove(result, v5, 8 * a5);
  }

  return result;
}

uint64_t sub_1AF644DB4(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    goto LABEL_9;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (!sub_1AF69504C(2034, v4, v5))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF645788();
    sub_1AF974940();
    v3 = v12;
    goto LABEL_12;
  }

  sub_1AF441150(v13, v13[3]);
  v6 = sub_1AFDFEE38();
  if (qword_1ED730448)
  {
    v8 = v6;
    v9 = v7;

    v3 = sub_1AF6DC144(v8, v9, 0, 1);

    if (v3)
    {

LABEL_12:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }

    sub_1AF4567E0();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v9;
    *(v11 + 16) = 0;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
LABEL_9:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v3;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF644FBC(void *a1)
{
  sub_1AF645884(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (!sub_1AF694FF8(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v14 = 0;
      v15 = 1;
      v16 = 0x797469746E65;
      v17 = 0xE600000000000000;
      sub_1AF47FEB4();
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v12 = v18;
      v13 = v19;
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(&v14, v17);
  sub_1AF47FEB4();
  sub_1AFDFEE88();
  v12 = v18;
  v13 = v19;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v14);
LABEL_7:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v12 | (v13 << 32);
}

void sub_1AF645254()
{
  if (!qword_1ED722EE0)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722EE0);
    }
  }
}

unint64_t sub_1AF64531C()
{
  result = qword_1EB63D0D0;
  if (!qword_1EB63D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D0D0);
  }

  return result;
}

unint64_t sub_1AF645374()
{
  result = qword_1EB63D0D8;
  if (!qword_1EB63D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D0D8);
  }

  return result;
}

unint64_t sub_1AF6453CC()
{
  result = qword_1EB63D0E0;
  if (!qword_1EB63D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D0E0);
  }

  return result;
}

unint64_t sub_1AF645424()
{
  result = qword_1EB63D0E8;
  if (!qword_1EB63D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D0E8);
  }

  return result;
}

uint64_t sub_1AF645478(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    goto LABEL_11;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (!sub_1AF69504C(1107, v4, v5))
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    LOBYTE(v6) = *(sub_1AF6950A0(v6, v7) + 86);

    if (v6)
    {
      sub_1AF441150(v25, v26);
      v8 = sub_1AFDFEE98();
      v9 = a1[3];
      v10 = a1[4];
      sub_1AF441150(a1, v9);
      v11 = sub_1AF6950A0(v9, v10);
      if (v8 < 0 || (v12 = *(v11 + 136), *(v12 + 16) <= v8))
      {

        v3 = 1;
      }

      else
      {
        v3 = *(v12 + 8 * v8 + 32);

        if (!v3)
        {
          sub_1AFDFE218();

          v23 = 0xD000000000000015;
          v24 = 0x80000001AFF2D900;
          v27 = v8;
          v13 = sub_1AFDFEA08();
          v3 = &v23;
          MEMORY[0x1B2718AE0](v13);

          v15 = v23;
          v14 = v24;
          goto LABEL_16;
        }
      }

      goto LABEL_18;
    }
  }

  sub_1AF441150(v25, v26);
  v16 = sub_1AFDFEE38();
  if (qword_1ED730448)
  {
    v15 = v16;
    v14 = v17;
    v19 = a1[3];
    v20 = a1[4];
    sub_1AF441150(a1, v19);

    v21 = sub_1AF695174(v19, v20);
    v3 = sub_1AF6DC144(v15, v14, v21, 0);

    if (!v3)
    {
LABEL_16:
      sub_1AF4567E0();
      swift_allocError();
      *v22 = v15;
      *(v22 + 8) = v14;
      *(v22 + 16) = 0;
      swift_willThrow();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
LABEL_11:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }

LABEL_18:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v3;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF645788()
{
  result = qword_1ED726EC0;
  if (!qword_1ED726EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726EC0);
  }

  return result;
}

unint64_t sub_1AF6457DC()
{
  result = qword_1EB63D0F0;
  if (!qword_1EB63D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D0F0);
  }

  return result;
}

void sub_1AF645884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}