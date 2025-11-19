uint64_t sub_1AF624368(size_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (1)
    {
      v6 = *v5;
      v5 += 3;
      if (v6 == a1)
      {
        return sub_1AF620E88(v4);
      }

      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    vfx_allocate_memory_entry(a1, 0x40uLL, *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity), &v8);
    return v8;
  }
}

uint64_t sub_1AF62440C(uint64_t result)
{
  v2 = *(v1[13] + 40 * result + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1;

    v5 = 32;
    do
    {
      v6 = *(v4[18] + 8 * *(v2 + v5) + 32);
      os_unfair_lock_lock(*(v6 + 376));
      os_unfair_lock_lock(*(v6 + 344));
      v7 = *(v6 + 256);
      v8 = *(v6 + 232);
      if (v8 == v7)
      {
        v9 = *(v6 + 240);
      }

      else
      {
        sub_1AF6497A0(v7, v8);
        v7 = *(v6 + 232);
        v9 = *(v6 + 240);
        if (v9 == v7)
        {
          v9 = 0;
          v7 = 0;
          *(v6 + 232) = 0;
          *(v6 + 240) = 0;
        }
      }

      *(v6 + 248) = v9;
      *(v6 + 256) = v7;
      os_unfair_lock_unlock(*(v6 + 344));
      os_unfair_lock_unlock(*(v6 + 376));
      v10 = *(v6 + 188);
      v11 = *(v6 + 120);
      v12 = v4[13];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[13] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4[13] = sub_1AFC0D9B8(v12);
      }

      sub_1AF621324(v10, v11);
      v14 = v4[18];
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v4[18] = v14;
      if ((v15 & 1) == 0)
      {
        v14 = sub_1AF6247B0(v14);
      }

      *&v14[8 * v10 + 32] = 0;
      v4[18] = v14;
      v16 = v4[19];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v4[19] = v16;
      if ((v17 & 1) == 0)
      {
        sub_1AFC05EDC(0, *(v16 + 16) + 1, 1);
        v16 = v4[19];
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AFC05EDC(v18 > 1, v19 + 1, 1);
        v16 = v4[19];
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + 4 * v19 + 32) = v10;
      v4[19] = v16;
      sub_1AF38C670(v6);
      sub_1AF38C680(v6);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1AF624654()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AF624788(v1);
    }

    v3 = *(v1 + 2) - 1;
    v4 = *&v1[4 * v3 + 32];
    *(v1 + 2) = v3;
    *v0 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

uint64_t sub_1AF6246D8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    result = sub_1AFDFE108();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v2 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v1 = sub_1AFC28858(v1);
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) - 1;
  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
  *v0 = v1;
  return result;
}

void sub_1AF6248A8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v13 = (a4 + 136);
  os_unfair_lock_lock(*(a4 + 136));
  v14 = *(a4 + 104);
  v15 = *(v14 + 40 * v12 + 32);
  v16 = *(v15 + 16);
  v17 = (v15 + 32);
  while (v16)
  {
    v18 = *v17++;
    v19 = *(*(a4 + 144) + 8 * v18 + 32);
    --v16;
    if (*(v19 + 240) != *(v19 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v14 = *(a4 + 104);
LABEL_8:
  v20 = v14 + 40 * v12;
  v21 = 36;
  if (a3)
  {
    v21 = 32;
  }

  v22 = *(v20 + v21 + 32);
  if (v22 == -1)
  {
    goto LABEL_21;
  }

  v23 = *(*(a4 + 144) + 8 * v22 + 32);
  if ((*(v23 + 32) & 1) == 0)
  {
    if ((a2 & 0x100000000) == 0 && *(v23 + 28) == a2)
    {
      goto LABEL_16;
    }

LABEL_21:
    v45 = a5;
    os_unfair_lock_unlock(*(a4 + 136));
    v24 = sub_1AF624654();
    if ((v24 & 0x100000000) != 0)
    {
      v25 = *(*(a4 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v27 = sub_1AF64BF6C(v31, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v25);

      _swift_stdlib_immortalize();

      v28 = *(a4 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v28 + 2) + 1, 1);
        v28 = *(a4 + 144);
      }

      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_1AFC05EFC(v33 > 1, v34 + 1, 1);
        v28 = *(a4 + 144);
      }

      *(v28 + 2) = v34 + 1;
      v30 = &v28[8 * v34];
    }

    else
    {
      v25 = v24;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v27 = sub_1AF64BF6C(v26, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v25);

      _swift_stdlib_immortalize();

      v28 = *(a4 + 144);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_1AF6247B0(v28);
      }

      v30 = &v28[8 * v25];
    }

    *(v30 + 4) = v27;
    *(a4 + 144) = v28;
    v35 = *(a4 + 104);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 104) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AFC0D9B8(v35);
      *(a4 + 104) = v35;
    }

    v37 = &v35[40 * v12];
    if (a3)
    {
      v38 = *(v37 + 4);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 4) = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_1AF420E8C(0, *(v38 + 2) + 1, 1, v38);
        *(v37 + 4) = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1AF420E8C(v40 > 1, v41 + 1, 1, v38);
        *(v37 + 4) = v38;
      }

      *(v38 + 2) = v41 + 1;
      *&v38[4 * v41 + 32] = v25;
      *(v37 + 16) = v25;
    }

    else
    {
      v42 = *(v37 + 5);
      sub_1AF64B7B0(v42, v42, v25);
      *(v37 + 5) = v42 + 1;
      *(v37 + 17) = v25;
    }

    v37[56] = 1;
    v43 = *(*(a4 + 144) + 8 * v25 + 32);
    if (os_unfair_lock_trylock(*(v43 + 376)))
    {
      v13 = (v43 + 344);
      os_unfair_lock_lock(*(v43 + 344));
      os_unfair_lock_unlock(*(v43 + 376));
      if ((*(v43 + 121) & 1) != 0 || *(v43 + 240) < *(v43 + 88))
      {
        sub_1AF621C88(v43, v45, a6);
        goto LABEL_43;
      }

      os_unfair_lock_unlock(*v13);
    }

    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if ((a2 & 0x100000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (!os_unfair_lock_trylock(*(v23 + 376)))
  {
    goto LABEL_21;
  }

  os_unfair_lock_lock(*(v23 + 344));
  os_unfair_lock_unlock(*(v23 + 376));
  if ((*(v23 + 121) & 1) == 0 && *(v23 + 240) >= *(v23 + 88))
  {
    os_unfair_lock_unlock(*(v23 + 344));
    goto LABEL_21;
  }

  sub_1AF621C88(v23, a5, a6);
  os_unfair_lock_unlock(*(v23 + 344));
LABEL_43:
  v44 = *v13;

  os_unfair_lock_unlock(v44);
}

uint64_t sub_1AF624D60(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AF5C5358(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1AF624DB0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t *a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, char a12)
{
  v19 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v20 = *(a4 + 136);

  os_unfair_lock_lock(v20);
  v21 = *(a4 + 104);
  v22 = *(v21 + 40 * v19 + 32);
  v23 = *(v22 + 16);
  v24 = (v22 + 32);
  while (v23)
  {
    v25 = *v24++;
    v26 = *(*(a4 + 144) + 8 * v25 + 32);
    --v23;
    if (*(v26 + 240) != *(v26 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v21 = *(a4 + 104);
LABEL_8:
  v27 = v21 + 40 * v19;
  v28 = 36;
  if (a3)
  {
    v28 = 32;
  }

  v29 = *(v27 + v28 + 32);
  if (v29 != -1)
  {
    v30 = *(*(a4 + 144) + 8 * v29 + 32);
    if (*(v30 + 32))
    {
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else if ((a2 & 0x100000000) != 0 || *(v30 + 28) != a2)
    {
      goto LABEL_28;
    }

    if (os_unfair_lock_trylock(*(v30 + 376)))
    {
      os_unfair_lock_lock(*(v30 + 344));
      os_unfair_lock_unlock(*(v30 + 376));
      if ((*(v30 + 121) & 1) != 0 || *(v30 + 240) < *(v30 + 88))
      {
        *a5 = sub_1AF622B60(a6);
        a5[1] = v31;
        v32 = *(v30 + 188);
        *a7 = v32;
        v33 = *a5;
        if ((*(a8 + 208) & 1) == 0)
        {
          v34 = *(*(a9 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a6;
          *v34 = v32;
          *(v34 + 4) = v33;
          *(v34 + 6) = a10;
        }

        if ((a12 & 1) != 0 && *(a8 + 212) == 1)
        {
          v35 = *(v30 + 192);
          if (v35)
          {
            v36 = *(v30 + 208);
            *(v35 + 8 * (v33 >> 6)) |= 1 << v33;
            *(v36 + 8 * (v33 >> 6)) &= ~(1 << v33);
          }

          sub_1AF705804(v33);
        }

        os_unfair_lock_unlock(*(v30 + 344));
        os_unfair_lock_unlock(*(a4 + 136));
        goto LABEL_57;
      }

      os_unfair_lock_unlock(*(v30 + 344));
    }
  }

LABEL_28:
  v65 = a6;
  os_unfair_lock_unlock(*(a4 + 136));
  v37 = sub_1AF624654();
  if ((v37 & 0x100000000) != 0)
  {
    v38 = *(*(a4 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v40 = sub_1AF64BF6C(v44, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v38);

    _swift_stdlib_immortalize();

    v41 = *(a4 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 144) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v41 + 2) + 1, 1);
      v41 = *(a4 + 144);
    }

    v47 = *(v41 + 2);
    v46 = *(v41 + 3);
    if (v47 >= v46 >> 1)
    {
      sub_1AFC05EFC(v46 > 1, v47 + 1, 1);
      v41 = *(a4 + 144);
    }

    *(v41 + 2) = v47 + 1;
    v43 = &v41[8 * v47];
  }

  else
  {
    v38 = v37;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v40 = sub_1AF64BF6C(v39, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v38);

    _swift_stdlib_immortalize();

    v41 = *(a4 + 144);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 144) = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_1AF6247B0(v41);
    }

    v43 = &v41[8 * v38];
  }

  *(v43 + 4) = v40;
  *(a4 + 144) = v41;
  v48 = *(a4 + 104);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 104) = v48;
  if ((v49 & 1) == 0)
  {
    v48 = sub_1AFC0D9B8(v48);
    *(a4 + 104) = v48;
  }

  v50 = &v48[40 * v19];
  if (a3)
  {
    v51 = *(v50 + 4);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 4) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1AF420E8C(0, *(v51 + 2) + 1, 1, v51);
      *(v50 + 4) = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      v51 = sub_1AF420E8C(v53 > 1, v54 + 1, 1, v51);
      *(v50 + 4) = v51;
    }

    *(v51 + 2) = v54 + 1;
    *&v51[4 * v54 + 32] = v38;
    *(v50 + 16) = v38;
  }

  else
  {
    v55 = *(v50 + 5);
    sub_1AF64B7B0(v55, v55, v38);
    *(v50 + 5) = v55 + 1;
    *(v50 + 17) = v38;
  }

  v50[56] = 1;
  v56 = *(*(a4 + 144) + 8 * v38 + 32);
  v57 = *(v56 + 376);

  if (!os_unfair_lock_trylock(v57))
  {
    goto LABEL_61;
  }

  os_unfair_lock_lock(*(v56 + 344));
  os_unfair_lock_unlock(*(v56 + 376));
  if ((*(v56 + 121) & 1) == 0 && *(v56 + 240) >= *(v56 + 88))
  {
    os_unfair_lock_unlock(*(v56 + 344));
LABEL_61:

    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  *a5 = sub_1AF622B60(v65);
  a5[1] = v58;
  v59 = *(v56 + 188);
  *a7 = v59;
  v60 = *a5;
  if ((*(a8 + 208) & 1) == 0)
  {
    v61 = *(*(a9 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v65;
    *v61 = v59;
    *(v61 + 4) = v60;
    *(v61 + 6) = a10;
  }

  if ((a12 & 1) != 0 && *(a8 + 212) == 1)
  {
    v62 = *(v56 + 192);
    if (v62)
    {
      v63 = *(v56 + 208);
      *(v62 + 8 * (v60 >> 6)) |= 1 << v60;
      *(v63 + 8 * (v60 >> 6)) &= ~(1 << v60);
    }

    sub_1AF705804(v60);
  }

  os_unfair_lock_unlock(*(v56 + 344));

LABEL_57:
}

uint64_t sub_1AF6253B8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, __int16 a11, void *a12)
{
  v102 = a5;
  v103 = a6;
  v100 = a12;
  v17 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v18 = *(a4 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v18);
  v19 = *(a4 + 104);
  v20 = *(v19 + 40 * v17 + 32);
  v21 = *(v20 + 16);
  v22 = (v20 + 32);
  while (v21)
  {
    v23 = *v22++;
    v24 = *(*(a4 + 144) + 8 * v23 + 32);
    --v21;
    if (*(v24 + 240) != *(v24 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v19 = *(a4 + 104);
LABEL_8:
  v25 = v19 + 40 * v17;
  v26 = 36;
  if (a3)
  {
    v26 = 32;
  }

  v27 = *(v25 + v26 + 32);
  if (v27 == -1)
  {
    goto LABEL_43;
  }

  v28 = *(*(a4 + 144) + 8 * v27 + 32);
  if ((*(v28 + 32) & 1) == 0)
  {
    if ((a2 & 0x100000000) == 0 && *(v28 + 28) == a2)
    {
      goto LABEL_16;
    }

LABEL_43:
    v99 = v17;
    LODWORD(v101) = a3;
    os_unfair_lock_unlock(*(a4 + 136));
    v51 = sub_1AF624654();
    v52 = HIDWORD(a2) & 1;
    if ((v51 & 0x100000000) != 0)
    {
      v53 = *(*(a4 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v61 = sub_1AF64BF6C(v60, a2 | (v52 << 32), a1, v101 & 1, v53);

      _swift_stdlib_immortalize();

      v58 = *(a4 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v58 + 2) + 1, 1);
        v58 = *(a4 + 144);
      }

      v64 = *(v58 + 2);
      v63 = *(v58 + 3);
      if (v64 >= v63 >> 1)
      {
        sub_1AFC05EFC(v63 > 1, v64 + 1, 1);
        v58 = *(a4 + 144);
      }

      *(v58 + 2) = v64 + 1;
      *&v58[8 * v64 + 32] = v61;
      v56 = v101;
    }

    else
    {
      v53 = v51;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v55 = a2 | (v52 << 32);
      v56 = v101;
      v57 = sub_1AF64BF6C(v54, v55, a1, v101 & 1, v53);

      _swift_stdlib_immortalize();

      v58 = *(a4 + 144);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v58;
      if ((v59 & 1) == 0)
      {
        v58 = sub_1AF6247B0(v58);
      }

      *&v58[8 * v53 + 32] = v57;
    }

    *(a4 + 144) = v58;
    v65 = *(a4 + 104);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 104) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AFC0D9B8(v65);
      *(a4 + 104) = v65;
    }

    v67 = &v65[40 * v99];
    if (v56)
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
      *&v68[4 * v71 + 32] = v53;
      *(v67 + 16) = v53;
    }

    else
    {
      v72 = *(v67 + 5);
      sub_1AF64B7B0(v72, v72, v53);
      *(v67 + 5) = v72 + 1;
      *(v67 + 17) = v53;
    }

    v67[56] = 1;
    v73 = *(*(a4 + 144) + 8 * v53 + 32);
    v74 = *(v73 + 376);
    swift_retain_n();
    if (os_unfair_lock_trylock(v74))
    {
      v101 = &v97;
      os_unfair_lock_lock(*(v73 + 344));
      os_unfair_lock_unlock(*(v73 + 376));
      if ((*(v73 + 121) & 1) != 0 || *(v73 + 240) < *(v73 + 88))
      {
        v75 = v102;
        v76 = *v102;
        v77 = v102[1];
        v78 = v102[2];

        v79 = sub_1AF622470(v76, v77, v78);
        v81 = v80;
        v82 = v75[1];
        v83 = v80 - v79;
        v84 = v82 - *v75;
        if (v80 - v79 < 1)
        {
          if (v84 <= 0 && v83 < v84)
          {
            goto LABEL_71;
          }
        }

        else if ((v84 & 0x8000000000000000) == 0 && v84 < v83)
        {
          goto LABEL_71;
        }

        v82 = v83 + *v75;
LABEL_71:
        *v102 = v82;
        v85 = *(v103 + 208);

        if (v81 != v79 && !v85)
        {
          v86 = *a9;
          v87 = v79;
          do
          {
            v88 = *(v73 + 188);
            v89 = *(*(a10 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a7 + 4 * v86);
            *(v89 + 4) = v87;
            *v89 = v88;
            *(v89 + 6) = a11;
            v86 = *a9 + 1;
            *a9 = v86;
            ++v87;
          }

          while (v81 != v87);
        }

        if (*(v103 + 212) == 1)
        {
          v90 = *(v73 + 192);
          if (v90 && v81 != v79)
          {
            v91 = *(v73 + 208);
            v92 = v79;
            do
            {
              *(v90 + 8 * (v92 >> 6)) |= 1 << v92;
              ++v92;
            }

            while (v81 != v92);
            v93 = v79;
            do
            {
              *(v91 + 8 * (v93 >> 6)) &= (-1 << v93) - 1;
              ++v93;
            }

            while (v81 != v93);
          }

          sub_1AF705690(v79, v81);
        }

        v94 = v100;
        v95 = v100[2];
        v96 = (*v100 + 24 * v95);
        *v96 = v73;
        v96[1] = v79;
        v96[2] = v81;

        v94[2] = v95 + 1;

        os_unfair_lock_unlock(*(v73 + 344));
      }

      os_unfair_lock_unlock(*(v73 + 344));
    }

    v98 = 0;
    v97 = 243;
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if ((a2 & 0x100000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_16:
  if (!os_unfair_lock_trylock(*(v28 + 376)))
  {
    goto LABEL_43;
  }

  os_unfair_lock_lock(*(v28 + 344));
  os_unfair_lock_unlock(*(v28 + 376));
  if ((*(v28 + 121) & 1) == 0 && *(v28 + 240) >= *(v28 + 88))
  {
    os_unfair_lock_unlock(*(v28 + 344));
    goto LABEL_43;
  }

  v29 = v102[1];
  v101 = *v102;
  v30 = v102[2];

  v31 = sub_1AF622470(v101, v29, v30);
  v33 = v32;
  v34 = v102[1];
  v35 = v32 - v31;
  v36 = v34 - *v102;
  if (v32 - v31 < 1)
  {
    if (v36 > 0 || v35 >= v36)
    {
      goto LABEL_25;
    }
  }

  else if (v36 < 0 || v36 >= v35)
  {
LABEL_25:
    v34 = v35 + *v102;
  }

  *v102 = v34;
  v37 = *(v103 + 208);

  if (v33 != v31 && v37 == 0)
  {
    v39 = *a9;
    v40 = v31;
    do
    {
      v41 = *(v28 + 188);
      v42 = *(*(a10 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a7 + 4 * v39);
      *(v42 + 4) = v40;
      *v42 = v41;
      *(v42 + 6) = a11;
      v39 = *a9 + 1;
      *a9 = v39;
      ++v40;
    }

    while (v33 != v40);
  }

  if (*(v103 + 212) == 1)
  {
    v43 = *(v28 + 192);
    if (v43 && v33 != v31)
    {
      v44 = *(v28 + 208);
      v45 = v31;
      do
      {
        *(v43 + 8 * (v45 >> 6)) |= 1 << v45;
        ++v45;
      }

      while (v33 != v45);
      v46 = v31;
      do
      {
        *(v44 + 8 * (v46 >> 6)) &= (-1 << v46) - 1;
        ++v46;
      }

      while (v33 != v46);
    }

    sub_1AF705690(v31, v33);
  }

  v47 = v100;
  v48 = v100[2];
  v49 = (*v100 + 24 * v48);
  *v49 = v28;
  v49[1] = v31;
  v49[2] = v33;

  v47[2] = v48 + 1;

  os_unfair_lock_unlock(*(v28 + 344));
  os_unfair_lock_unlock(*(a4 + 136));
}

void sub_1AF625BF8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v13 = (a4 + 136);
  os_unfair_lock_lock(*(a4 + 136));
  v14 = *(a4 + 104);
  v15 = *(v14 + 40 * v12 + 32);
  v16 = *(v15 + 16);
  v17 = (v15 + 32);
  while (v16)
  {
    v18 = *v17++;
    v19 = *(*(a4 + 144) + 8 * v18 + 32);
    --v16;
    if (*(v19 + 240) != *(v19 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v14 = *(a4 + 104);
LABEL_8:
  v20 = v14 + 40 * v12;
  v21 = 36;
  if (a3)
  {
    v21 = 32;
  }

  v22 = *(v20 + v21 + 32);
  if (v22 == -1)
  {
    goto LABEL_21;
  }

  v23 = *(*(a4 + 144) + 8 * v22 + 32);
  if ((*(v23 + 32) & 1) == 0)
  {
    if ((a2 & 0x100000000) == 0 && *(v23 + 28) == a2)
    {
      goto LABEL_16;
    }

LABEL_21:
    v45 = a5;
    os_unfair_lock_unlock(*(a4 + 136));
    v24 = sub_1AF624654();
    if ((v24 & 0x100000000) != 0)
    {
      v25 = *(*(a4 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v27 = sub_1AF64BF6C(v31, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v25);

      _swift_stdlib_immortalize();

      v28 = *(a4 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v28 + 2) + 1, 1);
        v28 = *(a4 + 144);
      }

      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_1AFC05EFC(v33 > 1, v34 + 1, 1);
        v28 = *(a4 + 144);
      }

      *(v28 + 2) = v34 + 1;
      v30 = &v28[8 * v34];
    }

    else
    {
      v25 = v24;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v27 = sub_1AF64BF6C(v26, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v25);

      _swift_stdlib_immortalize();

      v28 = *(a4 + 144);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_1AF6247B0(v28);
      }

      v30 = &v28[8 * v25];
    }

    *(v30 + 4) = v27;
    *(a4 + 144) = v28;
    v35 = *(a4 + 104);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 104) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AFC0D9B8(v35);
      *(a4 + 104) = v35;
    }

    v37 = &v35[40 * v12];
    if (a3)
    {
      v38 = *(v37 + 4);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 4) = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_1AF420E8C(0, *(v38 + 2) + 1, 1, v38);
        *(v37 + 4) = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1AF420E8C(v40 > 1, v41 + 1, 1, v38);
        *(v37 + 4) = v38;
      }

      *(v38 + 2) = v41 + 1;
      *&v38[4 * v41 + 32] = v25;
      *(v37 + 16) = v25;
    }

    else
    {
      v42 = *(v37 + 5);
      sub_1AF64B7B0(v42, v42, v25);
      *(v37 + 5) = v42 + 1;
      *(v37 + 17) = v25;
    }

    v37[56] = 1;
    v43 = *(*(a4 + 144) + 8 * v25 + 32);
    if (os_unfair_lock_trylock(*(v43 + 376)))
    {
      v13 = (v43 + 344);
      os_unfair_lock_lock(*(v43 + 344));
      os_unfair_lock_unlock(*(v43 + 376));
      if ((*(v43 + 121) & 1) != 0 || *(v43 + 240) < *(v43 + 88))
      {
        sub_1AF621D30(v43, v45, a6);
        goto LABEL_43;
      }

      os_unfair_lock_unlock(*v13);
    }

    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if ((a2 & 0x100000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (!os_unfair_lock_trylock(*(v23 + 376)))
  {
    goto LABEL_21;
  }

  os_unfair_lock_lock(*(v23 + 344));
  os_unfair_lock_unlock(*(v23 + 376));
  if ((*(v23 + 121) & 1) == 0 && *(v23 + 240) >= *(v23 + 88))
  {
    os_unfair_lock_unlock(*(v23 + 344));
    goto LABEL_21;
  }

  sub_1AF621D30(v23, a5, a6);
  os_unfair_lock_unlock(*(v23 + 344));
LABEL_43:
  v44 = *v13;

  os_unfair_lock_unlock(v44);
}

void sub_1AF6260B0()
{
  if (!qword_1ED726CB0)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726CB0);
    }
  }
}

unint64_t sub_1AF626100()
{
  result = qword_1ED726CA8;
  if (!qword_1ED726CA8)
  {
    sub_1AF6260B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726CA8);
  }

  return result;
}

uint64_t sub_1AF626158(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, uint64_t a14, void *a15, int a16, int a17, unsigned __int8 a18, uint64_t a19)
{
  v22 = a4;
  v173 = a19;
  v177 = a15;
  v181 = a13;
  v184 = a11;
  v26 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v176 = a18;
  v175 = a17;
  v180 = a14;
  v174 = a9;
  v27 = *(a4 + 136);
  swift_retain_n();
  swift_retain_n();
  os_unfair_lock_lock(v27);
  v28 = *(v22 + 104);
  v29 = *(v28 + 40 * v26 + 32);
  v30 = *(v29 + 16);
  v31 = (v29 + 32);
  while (v30)
  {
    v32 = *v31++;
    v33 = *(*(v22 + 144) + 8 * v32 + 32);
    --v30;
    if (*(v33 + 240) != *(v33 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v28 = *(v22 + 104);
LABEL_8:
  v34 = v28 + 40 * v26;
  v35 = 36;
  if (a3)
  {
    v35 = 32;
  }

  v36 = *(v34 + v35 + 32);
  v183 = a7;
  if (v36 != -1)
  {
    v37 = *(*(v22 + 144) + 8 * v36 + 32);
    if (*(v37 + 32))
    {
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_16:
      if (!os_unfair_lock_trylock(*(v37 + 376)))
      {
        goto LABEL_43;
      }

      os_unfair_lock_lock(*(v37 + 344));
      os_unfair_lock_unlock(*(v37 + 376));
      if ((*(v37 + 121) & 1) == 0 && *(v37 + 240) >= *(v37 + 88))
      {
        os_unfair_lock_unlock(*(v37 + 344));
        goto LABEL_43;
      }

      v38 = a5[1];
      v187 = *a5;
      v188 = v38;
      v39 = a5[3];
      v189 = a5[2];
      v190 = v39;

      v40 = sub_1AF621DC4(&v187);
      a3 = v40;
      v42 = v41;
      v43 = *(a5 + 1);
      v44 = v41 - v40;
      v45 = v43 - *a5;
      if (v41 - v40 < 1)
      {
        v46 = v181;
        if (v45 > 0 || v44 >= v45)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v46 = v181;
        if (v45 < 0 || v45 >= v44)
        {
LABEL_25:
          v43 = v44 + *a5;
        }
      }

      v182 = v41 - v40;
      *a5 = v43;
      v179 = *(v37 + 128);

      if (v42 == a3)
      {
LABEL_134:

        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v22 + 136));

        goto LABEL_110;
      }

      v47 = *(*(a7 + 40) + 24);
      v48 = v47[2];
      if (v48)
      {
        v178 = a3;
        v49 = v47 + 4;
        v171 = v47;
        v172 = a8;
        v50 = *(a8 + 24);
        v51 = *(v50 + 16);
        v52 = (v50 + 56);

        v53 = 0;
        v54 = v184;
        do
        {
          if (v51)
          {
            v55 = &v49[5 * v53];
            v56 = *v55;
            v58 = v55[2];
            v57 = v55[3];
            v59 = *(v55 + 32);
            v60 = v51;
            v61 = v52;
            while (*(v61 - 3) != v56)
            {
              v61 += 5;
              if (!--v60)
              {
                goto LABEL_29;
              }
            }

            if (!v54 || v56 != v54)
            {
              v62 = *v61;
              v63 = v180 + *&v46->_os_unfair_lock_opaque * v58;
              v64 = v58 * v178;
              v65 = v179 + v62;
              v66 = v58 * v182;
              if (v59)
              {
                memmove((v65 + v64), (v63 + v57), v58 * v182);
              }

              else
              {
                sub_1AF641780(v63 + v57, v65 + v64, v182);
                v46 = v181;
              }

              v54 = v184;
              v67 = *(v183 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
              if (*v67)
              {
                vfx_counters.add(_:_:)(*(v67 + 64), v66);
                v54 = v184;
              }
            }
          }

LABEL_29:
          ++v53;
        }

        while (v53 != v48);

        a8 = v172;
        a7 = v183;
        a3 = v178;
      }

      v26 = v177;
      v115 = v184;
      if (!v184)
      {
LABEL_122:
        v151 = v175;
        if ((*(a7 + 184) & 1) == 0)
        {
          v152 = *(a7 + 168);
          v153 = *(a7 + 16);
          v154 = a3;
          do
          {
            v155 = *(v37 + 188);
            v156 = *(v153 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(v152 + 4 * *&v46->_os_unfair_lock_opaque);
            *(v156 + 4) = v154;
            *v156 = v155;
            *(v156 + 6) = v151;
            v152 += 4;
            v154 = (v154 + 1);
          }

          while (v42 != v154);
        }

        v157 = v182;
        *v26 += v182;
        v158 = v46;
        v159 = *&v46->_os_unfair_lock_opaque;
        v160 = v159 + v157;
        *&v158->_os_unfair_lock_opaque = v159 + v157;
        if (v176)
        {
          v161 = *(v37 + 192);
          if (v161)
          {
            v162 = *(v37 + 208);
            v163 = a3;
            do
            {
              *(v161 + 8 * (v163 >> 6)) |= 1 << v163;
              ++v163;
            }

            while (v42 != v163);
            v164 = a3;
            do
            {
              *(v162 + 8 * (v164 >> 6)) &= (-1 << v164) - 1;
              ++v164;
            }

            while (v42 != v164);
          }

          sub_1AF705690(a3, v42);
        }

        else if (*(a8 + 212))
        {
          v165 = *(a7 + 208);
          v167 = *(v37 + 208);
          v166 = *(v37 + 216);
          sub_1AF64B74C(v159, v159 + v157, *(v37 + 192), *(v37 + 200), a3, *(a7 + 192));
          sub_1AF64B74C(v159, v160, v167, v166, a3, v165);
        }

        goto LABEL_134;
      }

      v142 = *(a8 + 24);
      v143 = *(v142 + 16);
      v144 = v182;
      if (v143)
      {
        v145 = (v142 + 64);
        while (*(v145 - 4) != v184)
        {
          v145 += 40;
          if (!--v143)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_119;
      }

      goto LABEL_117;
    }

    if ((a2 & 0x100000000) == 0 && *(v37 + 28) == a2)
    {
      goto LABEL_16;
    }
  }

LABEL_43:
  os_unfair_lock_unlock(*(v22 + 136));
  v68 = sub_1AF624654();
  v69 = HIDWORD(a2) & 1;
  if ((v68 & 0x100000000) != 0)
  {
    v37 = *(*(v22 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v71 = sub_1AF64BF6C(v75, a2 | (v69 << 32), a1, a3 & 1, v37);

    _swift_stdlib_immortalize();

    v72 = *(v22 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 144) = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v72 + 2) + 1, 1);
      v72 = *(v22 + 144);
    }

    v78 = *(v72 + 2);
    v77 = *(v72 + 3);
    if (v78 >= v77 >> 1)
    {
      sub_1AFC05EFC(v77 > 1, v78 + 1, 1);
      v72 = *(v22 + 144);
    }

    *(v72 + 2) = v78 + 1;
    v74 = &v72[8 * v78];
  }

  else
  {
    v37 = v68;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v71 = sub_1AF64BF6C(v70, a2 | (v69 << 32), a1, a3 & 1, v37);

    _swift_stdlib_immortalize();

    v72 = *(v22 + 144);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 144) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_1AF6247B0(v72);
    }

    v74 = &v72[8 * v37];
  }

  *(v74 + 4) = v71;
  *(v22 + 144) = v72;
  v79 = *(v22 + 104);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 104) = v79;
  if ((v80 & 1) == 0)
  {
    v79 = sub_1AFC0D9B8(v79);
    *(v22 + 104) = v79;
  }

  v81 = &v79[40 * v26];
  if (a3)
  {
    v82 = *(v81 + 4);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *(v81 + 4) = v82;
    if ((v83 & 1) == 0)
    {
      v82 = sub_1AF420E8C(0, *(v82 + 2) + 1, 1, v82);
      *(v81 + 4) = v82;
    }

    v26 = *(v82 + 2);
    v84 = *(v82 + 3);
    if (v26 >= v84 >> 1)
    {
      v82 = sub_1AF420E8C(v84 > 1, v26 + 1, 1, v82);
      *(v81 + 4) = v82;
    }

    *(v82 + 2) = v26 + 1;
    *&v82[4 * v26 + 32] = v37;
    *(v81 + 16) = v37;
  }

  else
  {
    v85 = *(v81 + 5);
    sub_1AF64B7B0(v85, v85, v37);
    *(v81 + 5) = v85 + 1;
    *(v81 + 17) = v37;
  }

  v42 = &v168;
  v81[56] = 1;
  v22 = *(*(v22 + 144) + 8 * v37 + 32);
  v46 = *(v22 + 376);
  a7 = v183;
  swift_retain_n();
  swift_retain_n();
  if (!os_unfair_lock_trylock(v46))
  {
    goto LABEL_136;
  }

  os_unfair_lock_lock(*(v22 + 344));
  os_unfair_lock_unlock(*(v22 + 376));
  if ((*(v22 + 121) & 1) == 0 && *(v22 + 240) >= *(v22 + 88))
  {
    os_unfair_lock_unlock(*(v22 + 344));
LABEL_136:

    v169 = 0;
    v168 = 243;
    goto LABEL_118;
  }

  v86 = a5[1];
  v187 = *a5;
  v188 = v86;
  v87 = a5[3];
  v189 = a5[2];
  v190 = v87;

  v88 = sub_1AF621DC4(&v187);
  v37 = v88;
  a3 = v89;
  v90 = *(a5 + 1);
  v91 = v89 - v88;
  v92 = v90 - *a5;
  if (v89 - v88 < 1)
  {
    v93 = v181;
    if (v92 > 0 || v91 >= v92)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v93 = v181;
    if (v92 < 0 || v92 >= v91)
    {
LABEL_70:
      v90 = v91 + *a5;
    }
  }

  v182 = v89 - v88;
  *a5 = v90;
  v179 = *(v22 + 128);

  if (a3 != v37)
  {
    v94 = *(*(a7 + 40) + 24);
    v95 = *(v94 + 16);
    if (v95)
    {
      v178 = v37;
      v171 = &v168;
      v172 = a8;
      v96 = v94 + 32;
      v97 = *(a8 + 24);
      v98 = *(v97 + 16);
      v99 = (v97 + 56);
      v170 = v94;

      v100 = 0;
      v101 = v184;
      do
      {
        if (v98)
        {
          v102 = (v96 + 40 * v100);
          v103 = *v102;
          v105 = v102[2];
          v104 = v102[3];
          v106 = *(v102 + 32);
          v107 = v98;
          v108 = v99;
          while (*(v108 - 3) != v103)
          {
            v108 += 5;
            if (!--v107)
            {
              goto LABEL_74;
            }
          }

          if (!v101 || v103 != v101)
          {
            v109 = *v108;
            v110 = v180 + *&v93->_os_unfair_lock_opaque * v105;
            v111 = v105 * v178;
            v112 = v179 + v109;
            v113 = v105 * v182;
            if (v106)
            {
              memmove((v112 + v111), (v110 + v104), v105 * v182);
            }

            else
            {
              sub_1AF641780(v110 + v104, v112 + v111, v182);
              v93 = v181;
            }

            v101 = v184;
            v114 = *(v183 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
            if (*v114)
            {
              vfx_counters.add(_:_:)(*(v114 + 64), v113);
              v101 = v184;
            }
          }
        }

LABEL_74:
        ++v100;
      }

      while (v100 != v95);

      v42 = v171;
      a8 = v172;
      v37 = v178;
    }

    v116 = v183;
    v115 = v184;
    v117 = v177;
    if (!v184)
    {
      goto LABEL_97;
    }

    v118 = *(a8 + 24);
    v119 = *(v118 + 16);
    if (v119)
    {
      v120 = (v118 + 64);
      while (*(v120 - 4) != v184)
      {
        v120 += 40;
        if (!--v119)
        {
          goto LABEL_117;
        }
      }

      v121 = *(v120 - 2);
      v122 = v121 * v37;
      v123 = v179 + *(v120 - 1);
      if (*v120 == 1)
      {
        memmove((v123 + v122), (v174 + *v177 * v121), v121 * v182);
      }

      else
      {
        sub_1AF641780(v174 + *v177 * v121, v123 + v122, v182);
        v93 = v181;
      }

LABEL_97:
      v124 = v175;
      if ((*(v116 + 184) & 1) == 0)
      {
        v125 = *(v116 + 168);
        v126 = *(v116 + 16);
        v127 = v37;
        do
        {
          v128 = *(v22 + 188);
          v129 = *(v126 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(v125 + 4 * *&v93->_os_unfair_lock_opaque);
          *(v129 + 4) = v127;
          *v129 = v128;
          *(v129 + 6) = v124;
          v125 += 4;
          ++v127;
        }

        while (a3 != v127);
      }

      v130 = v182;
      *v117 += v182;
      v131 = v93;
      v132 = *&v93->_os_unfair_lock_opaque;
      v133 = v132 + v130;
      *&v131->_os_unfair_lock_opaque = v132 + v130;
      if (v176)
      {
        v134 = *(v22 + 192);
        if (v134)
        {
          v135 = *(v22 + 208);
          v136 = v37;
          do
          {
            *(v134 + 8 * (v136 >> 6)) |= 1 << v136;
            ++v136;
          }

          while (a3 != v136);
          v137 = v37;
          do
          {
            *(v135 + 8 * (v137 >> 6)) &= (-1 << v137) - 1;
            ++v137;
          }

          while (a3 != v137);
        }

        sub_1AF705690(v37, a3);
      }

      else if (*(a8 + 212))
      {
        v138 = *(v183 + 208);
        v139 = *(v22 + 208);
        v140 = *(v22 + 216);
        sub_1AF64B74C(v132, v132 + v130, *(v22 + 192), *(v22 + 200), v37, *(v116 + 192));
        sub_1AF64B74C(v132, v133, v139, v140, v37, v138);
      }

      goto LABEL_109;
    }

LABEL_117:
    v186[0] = 0;
    v186[1] = 0xE000000000000000;
    a7 = v115;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF2D4D0);
    v146 = sub_1AFDFF4B8();
    v26 = v147;
    MEMORY[0x1B2718AE0](v146);

    v46 = v186;
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF2D500);
    v185 = a8;
    type metadata accessor for EntityClass();
    sub_1AFDFE458();
    v169 = 0;
    v168 = 1224;
LABEL_118:
    sub_1AFDFE518();
    __break(1u);
LABEL_119:
    v148 = *(v145 - 2);
    v149 = v148 * a3;
    v150 = v179 + *(v145 - 1);
    if (*v145 == 1)
    {
      memmove((v150 + v149), (v174 + *v26 * v148), v148 * v144);
    }

    else
    {
      sub_1AF641780(v174 + *v26 * v148, v150 + v149, v144);
      v46 = v181;
    }

    goto LABEL_122;
  }

LABEL_109:

  os_unfair_lock_unlock(*(v22 + 344));

LABEL_110:
}

uint64_t sub_1AF626F50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  v7 = *v3;
  v8 = *(*v3 + 16) + a1 - a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v7 + 24) >> 1)
  {
    sub_1AFDFE378();
  }

  a3(a1, a2, 0);

  return sub_1AFDFE348();
}

uint64_t sub_1AF627028(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  v8 = *v4;
  v9 = *(*v4 + 16) + a1 - a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v8 + 24) >> 1)
  {
    a3();
  }

  return a4(a1, a2, 0);
}

uint64_t destroy for ClassComponentStorage()
{
}

uint64_t initializeWithCopy for ClassComponentStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for ClassComponentStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v4;
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for ClassComponentStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for ClassComponentStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassComponentStorage(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1AF6273C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC06FC8(0, v3, 0);
    v5 = v51[0];
    v6 = v2 + 32;
    v7 = v3;
    do
    {
      sub_1AF441194(v6, &v55);
      sub_1AF441150(&v55, v57);
      DynamicType = swift_getDynamicType();
      v9 = v58;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);
      v51[0] = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC06FC8(v10 > 1, v11 + 1, 1);
        v5 = v51[0];
      }

      v12 = *(v9 + 8);
      *(v5 + 16) = v11 + 1;
      v13 = v5 + 16 * v11;
      *(v13 + 32) = DynamicType;
      *(v13 + 40) = v12;
      v6 += 40;
      --v7;
    }

    while (v7);
    v2 = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF64F3CC(v5, 0, 256, 0, &v55);
  v14 = v55;
  v64 = v56;
  v15 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v60;

  v16 = swift_slowAlloc();
  v17 = v16;
  v48 = v15;
  if (v3)
  {
    v50 = v16;
    v54 = v4;
    sub_1AFC074E4(0, v3, 0);
    v18 = v2 + 32;
    do
    {
      sub_1AF441194(v18, v51);
      sub_1AF441150(v51, v52);
      v19 = swift_getDynamicType();
      v20 = v52;
      v21 = v53;
      sub_1AF441150(v51, v52);
      v22 = (*(v21 + 16))(v20, v21);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
      v54 = v4;
      v24 = *(v4 + 16);
      v23 = *(v4 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AFC074E4(v23 > 1, v24 + 1, 1);
        v4 = v54;
      }

      *(v4 + 16) = v24 + 1;
      v25 = v4 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v22;
      v18 += 40;
      --v3;
    }

    while (v3);
    v15 = v48;
    v17 = v50;
    goto LABEL_15;
  }

  if (*(v4 + 16))
  {
LABEL_15:
    sub_1AF43A424();
    v26 = sub_1AFDFE5C8();
    goto LABEL_16;
  }

  v26 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v51[0] = v26;

  sub_1AF627A4C(v27, 1, v51);
  v28 = v17 + v15;

  v29 = v51[0];
  v30 = *(v14 + 16);
  if (v30)
  {
    v46 = v51[0];
    v31 = 0;
    do
    {
      v32 = *(v14 + v31 + 32);
      v33 = *(v14 + v31 + 56);
      v34 = v2 + v31;
      v35 = *(v2 + v31 + 56);
      v36 = *(v2 + v31 + 64);
      v37 = v28;
      v38 = v14;
      v39 = v17;
      v40 = sub_1AF441150((v34 + 32), v35);
      v52 = v35;
      v41 = *(v36 + 8);
      v2 = a1;
      v53 = v41;
      v42 = sub_1AF585714(v51);
      v43 = v40;
      v17 = v39;
      v14 = v38;
      v28 = v37;
      (*(*(v35 - 8) + 16))(v42, v43, v35);
      sub_1AF640ABC(v51, v17, v37, v33, v32);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
      v31 += 40;
      --v30;
    }

    while (v30);

    v15 = v48;
    v29 = v46;
  }

  else
  {
  }

  *a2 = v17;
  *(a2 + 8) = v28;
  *(a2 + 16) = v14;
  *(a2 + 24) = v64;
  *(a2 + 40) = v15;
  result = *&v61;
  v45 = v62;
  *(a2 + 48) = v61;
  *(a2 + 64) = v45;
  *(a2 + 80) = v63;
  *(a2 + 88) = v29;
  return result;
}

uint64_t sub_1AF6277C4()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 56;
    do
    {
      v4 += 40;
      sub_1AF640BC8();
      --v3;
    }

    while (v3);
  }

  if (v1)
  {

    JUMPOUT(0x1B271DEA0);
  }

  return result;
}

void *sub_1AF627868()
{
  v1 = *(v0[2] + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *v0;
  v3 = v0[1];

  v4 = v16 + 56;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1AF640BD8(v2, v3);
    sub_1AF441194(v20, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1AF420E70(0, v5[2] + 1, 1, v5);
      v21 = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1AF420E70(v7 > 1, v8 + 1, 1, v5);
      v21 = v5;
    }

    v4 += 40;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
    v9 = v18;
    v10 = v19;
    v11 = sub_1AF448018(v17, v18);
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v14 + 16))(v13);
    sub_1AF66E44C(v8, v13, &v21, v9, v10);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    --v1;
  }

  while (v1);

  return v5;
}

void sub_1AF627A4C(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = *a3;
  v10 = sub_1AF449CB8(v7);
  v12 = v11;
  v13 = v9[2] + ((v11 & 1) == 0);
  if (v9[3] < v13)
  {
    sub_1AF82D8C0(v13, a2 & 1);
    v10 = sub_1AF449CB8(v7);
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v18[6] + 8 * v10) = v7;
    *(v18[7] + 8 * v10) = v8;
    ++v18[2];
    v19 = v4 - 1;
    if (v4 == 1)
    {
LABEL_17:

      return;
    }

    v20 = a1 + 7;
    while (1)
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *a3;
      v24 = sub_1AF449CB8(v22);
      v26 = v25;
      if (v23[3] < (v23[2] + ((v25 & 1) == 0)))
      {
        sub_1AF82D8C0(v23[2] + ((v25 & 1) == 0), 1);
        v24 = sub_1AF449CB8(v22);
        if ((v26 & 1) != (v27 & 1))
        {
          break;
        }
      }

      if (v26)
      {
        goto LABEL_8;
      }

      v20 += 2;
      v28 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v28[6] + 8 * v24) = v22;
      *(v28[7] + 8 * v24) = v21;
      ++v28[2];
      if (!--v19)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    sub_1AFDFF1A8();
    __break(1u);
    goto LABEL_17;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v17 = v10;
  sub_1AF8452A4();
  v10 = v17;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = swift_allocError();
  swift_willThrow();
  v16 = v15;
  sub_1AF61FF58();
  if (swift_dynamicCast())
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
  }
}

void sub_1AF627D68(double a1)
{
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 88);
    v3 = *(v1 + 56) + a1;
    v4 = (v3 / v2);
    *(v1 + 72) = v4;
    v5.f64[0] = v2 * v4;
    *(v1 + 56) = v3 - v5.f64[0];
    if (v4 <= 0)
    {
      *(v1 + 72) = 1;
      *(v1 + 64) = 0;
    }

    else
    {
      v6 = v2;
      *(v1 + 64) = v6;
      v5.f64[1] = v2;
      *(v1 + 40) = vaddq_f64(v5, *(v1 + 40));
    }
  }

  else
  {
    v7 = 0.0666666667;
    if (a1 <= 0.0666666667)
    {
      v7 = a1;
    }

    v8 = v7;
    *(v1 + 64) = v8;
    *(v1 + 48) = *(v1 + 48) + a1;
    *(v1 + 72) = 1;
  }

  v9 = *(v1 + 8) + 1;
  v10 = *(v1 + 24) + 1;
  *(v1 + 16) = 0;
  *(v1 + 24) = v10;
  *(v1 + 8) = v9;
}

void sub_1AF627E20(float a1)
{
  v3 = CACurrentMediaTime() - *(v1 + 32);
  if (*(v1 + 84) == 1)
  {
    *(v1 + 81) = 1;
    v4 = (v1 + 81);
    *(v1 + 85) = 1;
    *(v1 + 83) = 0;
    v5 = (v1 + 83);
    v6 = *(v1 + 88);
    *(v1 + 68) = v6;
LABEL_3:
    if (*v5 == 1)
    {
      v7 = (v3 - *(v1 + 40)) * a1;
    }

    else
    {
      v7 = *(v1 + 68);
    }

    goto LABEL_9;
  }

  if (*(v1 + 85) == 1)
  {
    *(v1 + 81) = 0;
    v4 = (v1 + 81);
    *(v1 + 85) = 0;
    v5 = (v1 + 83);
    v7 = 0.0;
    goto LABEL_9;
  }

  v4 = (v1 + 81);
  v5 = (v1 + 83);
  v7 = 0.0;
  if (*(v1 + 81) == 1)
  {
    goto LABEL_3;
  }

LABEL_9:
  sub_1AF627D68(v7);
  v8 = *(v1 + 72);
  if (v8 >= 2)
  {
    v8 = 2;
  }

  *(v1 + 72) = v8;
  if (*(v1 + 80) == 1)
  {
    *(v1 + 64) = *(v1 + 64) * a1;
  }

  else
  {
    *(v1 + 40) = v3;
  }

  v9 = *v4;
  if (v9 == 1)
  {
    *(v1 + 68) = v7;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *v5 = v9;
}

void sub_1AF627F50(uint64_t a1@<X8>)
{
  v2 = CACurrentMediaTime();
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x3C88888900000000;
  *(a1 + 72) = 1;
  *(a1 + 80) = 256;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0x3F91111111111111;
}

uint64_t sub_1AF627FB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1AF628074(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((((v6 + ((v5 + 24) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16));
  }

  else
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v11 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v10;
    (*(v4 + 16))(v11 + 1, v10 + 1);
    v12 = (((((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v10 + v6 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

unint64_t sub_1AF628220(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 16;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 16))(v9, v10);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t sub_1AF628308(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t sub_1AF6283F0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t sub_1AF6284D8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF6285C0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_1AF62872C(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0xFE)
      {
        v18 = *(v5 + 56);
        v19 = ((((result & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else
      {
        *result = a2 + 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t destroy for UpdateContext()
{
}

void *sub_1AF62897C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *sub_1AF6289B4(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *sub_1AF628A14(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MeshRenderSystemState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshRenderSystemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1AF628B24(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v38 = a1;
  v39 = a2;
  v32 = *(a5 - 8);
  v33 = a8;
  MEMORY[0x1EEE9AC00](a1, a2);
  v40 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = swift_getAssociatedTypeWitness();
  v35 = *(v20 - 8);
  v36 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v42 = v8;
  v43 = &v30 - v22;
  v41 = a3;
  v23 = sub_1AFDFD868();
  if (!v23)
  {
    return sub_1AFDFD478();
  }

  v24 = v23;
  v31 = a5;
  v45 = sub_1AFDFE3D8();
  v37 = sub_1AFDFE3E8();
  sub_1AFDFE358();
  sub_1AFDFD848();
  v25 = (v14 + 16);
  v26 = (v14 + 8);
  v27 = AssociatedTypeWitness;
  while (1)
  {
    v28 = sub_1AFDFD958();
    (*v25)(v17);
    v28(v44, 0);
    v38(v17, v40);
    if (v10)
    {
      break;
    }

    v10 = 0;
    (*v26)(v17, v27);
    sub_1AFDFE3C8();
    sub_1AFDFD898();
    if (!--v24)
    {
      (*(v35 + 8))(v43, v36);
      return v45;
    }
  }

  (*v26)(v17, v27);
  (*(v35 + 8))(v43, v36);

  return (*(v32 + 32))(v33, v40, v31);
}

uint64_t (*sub_1AF628FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62903C;
}

uint64_t sub_1AF6290C0()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

uint64_t sub_1AF6291EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AF629254()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

__n128 sub_1AF6292E8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AF629300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AF6293F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  if (v3 == v2[2])
  {
    v4 = *(*(*(a1 + 16) - 8) + 56);
    v5 = a2;
    v6 = 1;
  }

  else
  {
    v9 = *(*(a1 + 16) - 8);
    (*(v9 + 16))(a2, *v2 + *(v9 + 72) * v3, *(a1 + 16));
    v2[3] = v3 + 1;
    v4 = *(v9 + 56);
    v5 = a2;
    v6 = 0;
  }

  return v4(v5, v6, 1);
}

void sub_1AF62953C()
{
  if (!qword_1ED72F950)
  {
    v0 = sub_1AFDFD998();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F950);
    }
  }
}

unint64_t sub_1AF629594()
{
  result = qword_1EB642AD0;
  if (!qword_1EB642AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642AD0);
  }

  return result;
}

uint64_t sub_1AF6296CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF62953C();
    sub_1AF629594();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF62979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnsafeArray();
  swift_getWitnessTable();
  sub_1AFDFD8F8();
  v18 = v21;
  v19 = v22;
  v20 = v23;
  v17[2] = a4;
  v7 = sub_1AFDFF248();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1AF628B24(sub_1AF629AC4, v17, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v21 = 0x3A63287961727241;
  *(&v21 + 1) = 0xE800000000000000;
  *&v18 = a3;
  v11 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](3825964, 0xE300000000000000);
  *&v18 = a2;
  v12 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](23337, 0xE200000000000000);
  *&v18 = v10;
  sub_1AF629AE4();
  sub_1AF488088();
  v13 = sub_1AFDFCD98();
  v15 = v14;

  MEMORY[0x1B2718AE0](v13, v15);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  return v21;
}

uint64_t sub_1AF6299E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_1AFDFCF88();
  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_1AF629AE4()
{
  if (!qword_1ED726C70)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726C70);
    }
  }
}

uint64_t sub_1AF629B34(uint64_t a1)
{
  sub_1AFD60D3C();
  swift_getWitnessTable();
  v2 = sub_1AFDFF248();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t (*sub_1AF629BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62B85C;
}

uint64_t sub_1AF629CE4()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

uint64_t sub_1AF629DC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF50BD18();
  *a1 = result;
  return result;
}

uint64_t (*sub_1AF629DEC(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AF629E78(v6, *a2, a3);
  return sub_1AF629E74;
}

uint64_t (*sub_1AF629E78(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  a1[2] = v7;
  (*(v6 + 16))();
  return sub_1AF629F5C;
}

uint64_t sub_1AF629F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AF629FC8()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

uint64_t sub_1AF62A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_1AFDFE468();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1AF62A0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AF62A118(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1AFD60D38();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1AF62A1E0(uint64_t a1)
{
  type metadata accessor for UnsafeSparseMutableBufferPointer.BufferAndStart();
  v2 = sub_1AFDFE3B8();
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v5 = v4 + (v3 - v4) / 2;
      sub_1AFDFE3F8();
      if (v8 <= a1)
      {
        break;
      }

      v3 = v4 + (v3 - v4) / 2;
      if (v4 >= v5)
      {
        return 0;
      }
    }

    if (v8 + v7 > a1)
    {
      break;
    }

    v4 = v5 + 1;
    if (v5 + 1 >= v3)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1AF62A2B4(uint64_t a1)
{
  sub_1AF62A1E0(a1);
  type metadata accessor for UnsafeSparseMutableBufferPointer.BufferAndStart();
  sub_1AFDFE3F8();
  return v2;
}

uint64_t (*sub_1AF62A318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = *(a5 - 8);
  v9 = v8;
  *a1 = a5;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  a1[2] = v10;
  v12 = sub_1AF62A2B4(a2);
  (*(v9 + 16))(v11, v12 + (a2 - v13) * *(v9 + 72), a5);
  return sub_1AF62B860;
}

void sub_1AF62A410(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void (*sub_1AF62A45C(uint64_t *a1, uint64_t a2))(void *a1)
{
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
  sub_1AF62A2B4(a2);
  *(v5 + 32) = sub_1AFDFDD98();
  return sub_1AF0D9C58;
}

uint64_t sub_1AF62A50C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 16);
  v6 = sub_1AF62A2B4(*a2);
  v8 = *(v5 - 8);
  v9 = *(v8 + 40);
  v10 = v6 + *(v8 + 72) * (v4 - v7);

  return v9(v10, a1, v5);
}

uint64_t (*sub_1AF62A594(uint64_t **a1, uint64_t *a2))()
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
  v4[4] = sub_1AF62A45C(v4, *a2);
  return sub_1AF62B85C;
}

uint64_t (*sub_1AF62A660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62B85C;
}

void sub_1AF62A6F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1AF62A7C4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1AF62A318(v7, *a2, *v3, v8, *(a3 + 16));
  return sub_1AF62B864;
}

void sub_1AF62A850(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1AF62A898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AF62A900()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

uint64_t sub_1AF62A96C()
{
  swift_getWitnessTable();

  return sub_1AFDFD7F8();
}

uint64_t sub_1AF62A9F4()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

uint64_t sub_1AF62AA7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void sub_1AF62AAF4(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t sub_1AF62AB04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AF62AB58()
{
  swift_getWitnessTable();
  v0 = sub_1AFD60D38();

  return v0;
}

uint64_t _s12ChunkFiltersVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s12ChunkFiltersVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1AF62AC68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1AF62AD18(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-25 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v10 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
    v11 = *v10;
    v10 += 15;
    *v9 = v11;
    v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *(v10 & 0xFFFFFFFFFFFFFFF8);
    (*(v4 + 16))(v12 + 1, (v10 & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *sub_1AF62AE5C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

void *sub_1AF62AEF0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

void *sub_1AF62AF84(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

void *sub_1AF62B018(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_1AF62B0AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 1)
      {
        return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      else
      {
        return *a1 == 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1AF62B238(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if (v7 > 1)
  {
    v19 = *(v6 + 56);
    v20 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if (a2 == 1)
  {
    *a1 = 0;
  }

  else
  {
    *a1 = a2 - 2;
  }
}

void *assignWithCopy for Node.Port(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for Node.Port(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t sub_1AF62B8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AFC07314(0, v1, 0);
    v4 = 0;
    v2 = v27;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = (v6 + 63) >> 6;
    v8 = (a1 + 64);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v4 -= 64;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v6 = __clz(__rbit64(v9)) - v4;
LABEL_7:
    for (i = 0; i != v1; ++i)
    {
      v13 = *(a1 + 36);
      v14 = *(*(a1 + 56) + 24 * v6 + 8);
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v26 = v6;
        v23 = *(a1 + 36);
        v25 = *(*(a1 + 56) + 24 * v6 + 8);
        sub_1AFC07314(v15 > 1, v16 + 1, 1);
        v14 = v25;
        v13 = v23;
        v6 = v26;
      }

      *(v27 + 16) = v16 + 1;
      *(v27 + 16 * v16 + 32) = v14;
      v17 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
      {
        v12 = __clz(__rbit64(*(v5 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 1 << *(a1 + 32);
        v18 = v17 << 6;
        v19 = v17 + 1;
        v20 = (a1 + 72 + 8 * v17);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1AF0FBAE8(v6, v13, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v6, v13, 0);
      }

LABEL_9:
      v6 = v12;
    }
  }

  return v2;
}

uint64_t sub_1AF62BA88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  v10 = v7;
  sub_1AF67E3AC(a3, a4, a2, &v37);
  if (v38)
  {
    sub_1AF0FBA54(&v37, &v40);
    sub_1AF441194(&v40, &v35);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    sub_1AF5C5358(0, &unk_1ED7259B0);
    if (swift_dynamicCast())
    {
      sub_1AF0FBA54(v33, &v37);
      v13 = v38;
      v14 = v39;
      sub_1AF441150(&v37, v38);
      v15 = (*(*(v14 + 8) + 48))(a5, v13);
      if (v15)
      {
        v16 = v15;

        *v10 = a2;
        v10[1] = v16;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF2D840);
        *&v33[0] = a5;
        sub_1AF63A798(0, a6, a7, MEMORY[0x1E69E6B88]);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](544108320, 0xE400000000000000);
        v24 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](2109216, 0xE300000000000000);
        v25 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v25);

        v27 = v35;
        v26 = v36;
        v28 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v32 = v28;
          swift_once();
          v28 = v32;
        }

        v35 = 0;
        sub_1AF0D4F18(v28, &v35, v27, v26);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v37);
    }

    else
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      sub_1AF63A7E8(v33, &qword_1EB63D018, &unk_1ED7259B0);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v37 = 0;
      *(&v37 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6E656E6F706D6F63, 0xEA00000000002074);
      sub_1AF441150(&v40, v42);
      sub_1AFDFEDD8();
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2D820);
      v22 = v37;
      v23 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v31 = v23;
        swift_once();
        v23 = v31;
      }

      *&v37 = 0;
      sub_1AF0D4F18(v23, &v37, v22, *(&v22 + 1));
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v40);
  }

  else
  {
    sub_1AF63A7E8(&v37, &qword_1EB634220, &qword_1ED72FFF0);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1AFDFE218();

    v40 = 0x6E656E6F706D6F63;
    v41 = 0xEA00000000002074;
    v17 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v17);

    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF2D800);
    v18 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v18);

    v20 = v40;
    v19 = v41;
    v21 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v30 = v21;
      swift_once();
      v21 = v30;
    }

    v40 = 0;
    sub_1AF0D4F18(v21, &v40, v20, v19);
  }

  return 0;
}

uint64_t sub_1AF62C02C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  v10 = v9 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v11 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v11);

  v12 = sub_1AF66ED9C(a1, a2);
  v14 = v13;

  v15 = *(v9 + 80);
  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = v15 + 32;
  while (*(*(v18 + 8 * v17) + 144) != v12)
  {
    if (v16 == ++v17)
    {
      goto LABEL_7;
    }
  }

  v19 = sub_1AF65D418(v14, v17);
  if ((v19 & 0x100000000) != 0)
  {
LABEL_7:
    LODWORD(v19) = sub_1AF65D480(v12, v14, a1, a2);
  }

  v20 = *(*(v9 + 88) + 8 * v19 + 32);
  v21 = *(v10 + 24);

  os_unfair_lock_unlock(v21);

  v22 = *(a5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v23 = *v22;

  if (v23)
  {
    vfx_counters.add(_:_:)(*(v22 + 40), 1);
  }

  v24 = *(a5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v25 = *v24;

  if (v25)
  {
    vfx_counters.add(_:_:)(*(v24 + 48), 1);
  }

  v26 = *(v20 + 204);
  v27 = a3;
  if (*(v20 + 208))
  {
    v66 = 0;
    v67 = -1;
  }

  else
  {

    v28 = sub_1AF65B2E4();

    v66 = v28 & 0xFFFFFFFF00000000;
    v67 = v28;
  }

  v29 = *(a5 + 16);
  v30 = *(*(*(v29 + 88) + 8 * v26 + 32) + 200);

  if (v30 == 1)
  {
    *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v31 = *(v29 + 136);
  swift_retain_n();
  os_unfair_lock_lock(v31);
  if (!sub_1AF62173C(v26))
  {
    sub_1AF6AFD3C(v26);
  }

  v32 = 36;
  if (a3)
  {
    v32 = 32;
  }

  v33 = *(*(v29 + 104) + 40 * v26 + v32 + 32);
  if (v33 != -1)
  {
    v34 = *(*(v29 + 144) + 8 * v33 + 32);
    if (*(v34 + 32))
    {
      if ((a4 & 0x100000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((a4 & 0x100000000) != 0 || *(v34 + 28) != a4)
    {
      goto LABEL_38;
    }

    if (os_unfair_lock_trylock(*(v34 + 376)))
    {
      os_unfair_lock_lock(*(v34 + 344));
      os_unfair_lock_unlock(*(v34 + 376));
      if ((*(v34 + 121) & 1) != 0 || *(v34 + 240) < *(v34 + 88))
      {
        v35 = v67;
        v36 = sub_1AF622B60(v67);
        if ((*(v20 + 208) & 1) == 0)
        {
          v37 = *(*(a5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v67;
          *v37 = *(v34 + 188);
          *(v37 + 4) = v36;
          *(v37 + 6) = v26;
        }

        if (*(v20 + 212) == 1)
        {
          v38 = *(v34 + 192);
          if (v38)
          {
            v39 = *(v34 + 208);
            *(v38 + 8 * (v36 >> 6)) |= 1 << v36;
            *(v39 + 8 * (v36 >> 6)) &= ~(1 << v36);
          }

          sub_1AF705804(v36);
        }

        os_unfair_lock_unlock(*(v34 + 344));
        os_unfair_lock_unlock(*(v29 + 136));
        goto LABEL_66;
      }

      os_unfair_lock_unlock(*(v34 + 344));
    }
  }

LABEL_38:
  os_unfair_lock_unlock(*(v29 + 136));
  v40 = sub_1AF624654();
  if ((v40 & 0x100000000) != 0)
  {
    v41 = *(*(v29 + 144) + 16);
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v47 = sub_1AF64BF6C(v46, a4 | ((HIDWORD(a4) & 1) << 32), v26, a3 & 1, v41);

    _swift_stdlib_immortalize();

    v44 = *(v29 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 144) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC05EFC(0, *(v44 + 2) + 1, 1);
      v44 = *(v29 + 144);
    }

    v50 = *(v44 + 2);
    v49 = *(v44 + 3);
    if (v50 >= v49 >> 1)
    {
      sub_1AFC05EFC(v49 > 1, v50 + 1, 1);
      v44 = *(v29 + 144);
    }

    *(v44 + 2) = v50 + 1;
    *&v44[8 * v50 + 32] = v47;
    v27 = a3;
  }

  else
  {
    v41 = v40;
    type metadata accessor for ComponentsDataChunk();
    swift_allocObject();

    v43 = sub_1AF64BF6C(v42, a4 | ((HIDWORD(a4) & 1) << 32), v26, a3 & 1, v41);

    _swift_stdlib_immortalize();

    v44 = *(v29 + 144);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 144) = v44;
    if ((v45 & 1) == 0)
    {
      v44 = sub_1AF6247B0(v44);
    }

    *&v44[8 * v41 + 32] = v43;
  }

  *(v29 + 144) = v44;
  v51 = *(v29 + 104);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 104) = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_1AFC0D9B8(v51);
    *(v29 + 104) = v51;
  }

  v53 = &v51[40 * v26];
  if (v27)
  {
    v54 = *(v53 + 4);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 4) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1AF420E8C(0, *(v54 + 2) + 1, 1, v54);
      *(v53 + 4) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1AF420E8C(v56 > 1, v57 + 1, 1, v54);
      *(v53 + 4) = v54;
    }

    *(v54 + 2) = v57 + 1;
    *&v54[4 * v57 + 32] = v41;
    *(v53 + 16) = v41;
  }

  else
  {
    v58 = *(v53 + 5);
    sub_1AF64B7B0(v58, v58, v41);
    *(v53 + 5) = v58 + 1;
    *(v53 + 17) = v41;
  }

  v53[56] = 1;
  v59 = *(*(v29 + 144) + 8 * v41 + 32);
  v60 = *(v59 + 376);

  if (os_unfair_lock_trylock(v60))
  {
    os_unfair_lock_lock(*(v59 + 344));
    os_unfair_lock_unlock(*(v59 + 376));
    v35 = v67;
    if ((*(v59 + 121) & 1) != 0 || *(v59 + 240) < *(v59 + 88))
    {
      v61 = sub_1AF622B60(v67);
      if ((*(v20 + 208) & 1) == 0)
      {
        v62 = *(*(a5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v67;
        *v62 = *(v59 + 188);
        *(v62 + 4) = v61;
        *(v62 + 6) = v26;
      }

      if (*(v20 + 212) == 1)
      {
        v63 = *(v59 + 192);
        if (v63)
        {
          v64 = *(v59 + 208);
          *(v63 + 8 * (v61 >> 6)) |= 1 << v61;
          *(v64 + 8 * (v61 >> 6)) &= ~(1 << v61);
        }

        sub_1AF705804(v61);
      }

      os_unfair_lock_unlock(*(v59 + 344));

LABEL_66:

      return v66 | v35;
    }

    os_unfair_lock_unlock(*(v59 + 344));
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF62C7C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = HIDWORD(a1);
  v7 = a1;
  (*(a4 + 8))(&v7);
  if (v7 == v4 && HIDWORD(v7) == v5)
  {
    return 0;
  }

  else
  {
    return v7 | (HIDWORD(v7) << 32);
  }
}

uint64_t sub_1AF62C830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AF44596C(a1, a4);
  v7 = *(a3 + 16);

  return v7(a4, a2, a3);
}

uint64_t sub_1AF62C894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1AF62C900(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  if (qword_1EB633DD0 != -1)
  {
    swift_once();
  }

  v5 = (qword_1EB6C2AB0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
  v6 = v3 == *(qword_1EB6C2AB0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier) && v4 == *(qword_1EB6C2AB0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1EB633DD8 != -1)
  {
    swift_once();
  }

  v5 = (qword_1EB6C2AB8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
  v7 = v3 == *(qword_1EB6C2AB8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier) && v4 == *(qword_1EB6C2AB8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
  if (v7 || (sub_1AFDFEE28() & 1) != 0)
  {
LABEL_15:
    sub_1AF4459C8(a1);
    a1[1] = 0;
    swift_unknownObjectWeakInit();
    a1[1] = &off_1F256B790;
    swift_unknownObjectWeakAssign();
    v9 = *v5;
    v8 = v5[1];
LABEL_16:
    a1[2] = v9;
    a1[3] = v8;
  }

  if (qword_1EB633DC0 != -1)
  {
    swift_once();
  }

  v11 = (qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
  v12 = v3 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier) && v4 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
  if (v12 || (result = sub_1AFDFEE28(), (result & 1) != 0))
  {
    sub_1AF4459C8(a1);
    a1[1] = 0;
    swift_unknownObjectWeakInit();
    a1[1] = &off_1F256B790;
    swift_unknownObjectWeakAssign();
    v9 = *v11;
    v8 = v11[1];
    goto LABEL_16;
  }

  v13 = *(v1 + 32);
  if (*(v13 + 16))
  {

    v14 = sub_1AF419F60(a1);
    if (v15)
    {
      sub_1AF44596C(*(v13 + 56) + 32 * v14, v16);

      sub_1AF4459C8(a1);
      sub_1AF640200(v16, v17);
      return sub_1AF640200(v17, a1);
    }
  }

  if (*(v1 + 16) == 1)
  {
    sub_1AF4459C8(a1);
    a1[1] = 0;
    swift_unknownObjectWeakInit();
    a1[1] = 0;
    result = swift_unknownObjectWeakAssign();
    a1[2] = 0x3E6C6C756E3CLL;
    a1[3] = 0xE600000000000000;
  }

  return result;
}

uint64_t sub_1AF62CBC4(uint64_t result, uint64_t a2)
{
  v3 = *result == -1 && HIDWORD(*result) == 0;
  if (!v3 && (*(v2 + 24) & ~a2) == 0)
  {
    v12 = *result;
    v4 = *(v2 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v4;
    if ((result & 1) == 0)
    {
      result = sub_1AF4217DC(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
      *(v2 + 32) = result;
    }

    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = v5 + 1;
    v8 = v12;
    if (v5 >= v6 >> 1)
    {
      v11 = v5 + 1;
      v9 = v4;
      v10 = *(v4 + 16);
      result = sub_1AF4217DC(v6 > 1, v5 + 1, 1, v9);
      v8 = v12;
      v5 = v10;
      v7 = v11;
      v4 = result;
    }

    *(v4 + 16) = v7;
    *(v4 + 8 * v5 + 32) = v8;
    *(v2 + 32) = v4;
  }

  return result;
}

uint64_t sub_1AF62CCA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF62CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v46 = a5;
  v47 = a4;
  v48 = a1;
  sub_1AF63B8B8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v44 - v13;
  v15 = sub_1AFDFC318();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v21);
  v25 = &v44 - v24;
  v26 = *(v6 + 32);
  if (*(v26 + 16))
  {

    v27 = sub_1AF419914(a2, a3);
    if (v28)
    {
      v45 = a2;
      v29 = *(*(v26 + 56) + 8 * v27);

      if (*(v29 + 16))
      {
        v30 = sub_1AF419940(v48);
        if (v31)
        {
          (*(v16 + 16))(v25, *(v29 + 56) + *(v16 + 72) * v30, v15);

          return (*(v16 + 32))(a6, v25, v15);
        }
      }

      a2 = v45;
    }
  }

  v47(v22, v23);
  v33 = *(v16 + 16);
  v33(v19, v48, v15);
  v33(v14, a6, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v7 + 32);
  v35 = v49;
  *(v7 + 32) = 0x8000000000000000;
  v36 = sub_1AF419914(a2, a3);
  v38 = v37;
  v39 = *(v35 + 16) + ((v37 & 1) == 0);
  if (*(v35 + 24) >= v39)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF846850();
      v35 = v49;
    }
  }

  else
  {
    sub_1AF82FF08(v39, isUniquelyReferenced_nonNull_native);
    v35 = v49;
    v40 = sub_1AF419914(a2, a3);
    if ((v38 & 1) != (v41 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

    v36 = v40;
  }

  *(v7 + 32) = v35;

  v42 = *(v7 + 32);
  if ((v38 & 1) == 0)
  {
    v43 = sub_1AF43E03C(MEMORY[0x1E69E7CC0]);
    sub_1AF843518(v36, a2, a3, v43, v42);
  }

  return sub_1AF824AFC(v14, v19);
}

uint64_t sub_1AF62D054()
{

  return swift_deallocClassInstance();
}

double sub_1AF62D094(void *a1)
{
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_1AF449D3C(*a1);
    if (v6)
    {
      result = *(*(v2 + 56) + 8 * v4);
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_1AF62D0DC()
{

  return swift_deallocClassInstance();
}

void *sub_1AF62D114(void *result)
{
  if (*(*(v1 + 24) + 16))
  {
    result = sub_1AF449D3C(*result);
    if (v2)
    {
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_1AF62D164(uint64_t result)
{
  if (*(result + 4) == *(v1 + 20))
  {
    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1AF62D180()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF62D218()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

char *sub_1AF62D29C(char *result)
{
  v2 = (v1 + 104);
  if (*(*(v1 + 104) + 16))
  {
    v3 = v1;
    v4 = result;

    sub_1AF62F348(v5, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 104);
    if (isUniquelyReferenced_nonNull_native)
    {
      result = sub_1AF64C2E8(0, *(v7 + 16));
    }

    else
    {
      *v2 = sub_1AFC8593C(0, *(v7 + 24) >> 1);
    }

    if (*(*(v3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
    {
      v8 = *(v4 + 29);
      result = *(v4 + 32);
      if (v8 == result)
      {
        v9 = *(v4 + 30);
      }

      else
      {
        sub_1AF6497A0(result, v8);
        result = *(v4 + 29);
        v9 = *(v4 + 30);
        if (v9 == result)
        {
          v9 = 0;
          result = 0;
          *(v4 + 29) = 0;
          *(v4 + 30) = 0;
        }
      }

      *(v4 + 31) = v9;
      *(v4 + 32) = result;
    }
  }

  return result;
}

uint64_t PrivateCommandQueue.deinit()
{
  ecs_stack_allocator_destroy(*(v0 + 32));

  return v0;
}

uint64_t PrivateCommandQueue.__deallocating_deinit()
{
  ecs_stack_allocator_destroy(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t destroy for PrivateCommandQueue.Operation(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 5)
  {
    v1 = *a1 + 5;
  }

  if ((v1 & 0xFFFFFFFE) == 2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return a1;
}

__n128 initializeWithCopy for PrivateCommandQueue.Operation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 5)
  {
    v2 = *a2 + 5;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 0;
      return result;
    }

    if (v2 == 1)
    {
      result = *a2;
      *a1 = *a2;
      *(a1 + 40) = 1;
      return result;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v4 = *(a2 + 24);
        *(a1 + 24) = v4;
        (**(v4 - 8))();
        *(a1 + 40) = 2;
        return result;
      case 3:
        v6 = *(a2 + 24);
        *(a1 + 24) = v6;
        (**(v6 - 8))();
        *(a1 + 40) = 3;
        return result;
      case 4:
        *a1 = *a2;
        *(a1 + 40) = 4;
        return result;
    }
  }

  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  result = *(a2 + 25);
  *(a1 + 25) = result;
  return result;
}

__n128 assignWithCopy for PrivateCommandQueue.Operation(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 5)
    {
      v2 = *a1 + 5;
    }

    if ((v2 & 0xFFFFFFFE) == 2)
    {
      v3 = a1;
      v4 = a2;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 5)
    {
      v6 = *a2 + 5;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        result = *a2;
        *a1 = *a2;
        *(a1 + 40) = 0;
        return result;
      }

      if (v6 == 1)
      {
        result = *a2;
        *a1 = *a2;
        *(a1 + 40) = 1;
        return result;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          v7 = *(a2 + 24);
          *(a1 + 24) = v7;
          *(a1 + 32) = *(a2 + 32);
          v8 = a1;
          (**(v7 - 8))();
          *(v8 + 40) = 2;
          return result;
        case 3:
          v9 = *(a2 + 24);
          *(a1 + 24) = v9;
          *(a1 + 32) = *(a2 + 32);
          v10 = a1;
          (**(v9 - 8))();
          *(v10 + 40) = 3;
          return result;
        case 4:
          *a1 = *a2;
          *(a1 + 40) = 4;
          return result;
      }
    }

    result = *a2;
    v11 = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
    *a1 = result;
    *(a1 + 16) = v11;
  }

  return result;
}

__n128 _s18CachedBuildResultsV6ResultOwtk(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for PrivateCommandQueue.Operation(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 5)
    {
      v2 = *a1 + 5;
    }

    if ((v2 & 0xFFFFFFFE) == 2)
    {
      v3 = a1;
      v4 = a2;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 5)
    {
      v6 = *a2 + 5;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        result = *a2;
        *a1 = *a2;
        *(a1 + 40) = 0;
        return result;
      }

      if (v6 == 1)
      {
        result = *a2;
        *a1 = *a2;
        *(a1 + 40) = 1;
        return result;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          result = *a2;
          v7 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v7;
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = 2;
          return result;
        case 3:
          result = *a2;
          v8 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v8;
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = 3;
          return result;
        case 4:
          *a1 = *a2;
          *(a1 + 40) = 4;
          return result;
      }
    }

    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCommandQueue.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateCommandQueue.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF62D9B4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 5)
  {
    return (*a1 + 5);
  }

  return result;
}

uint64_t sub_1AF62D9D0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CommandQueue(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CommandQueue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF62DAE0()
{
  result = qword_1EB63CFF0;
  if (!qword_1EB63CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CFF0);
  }

  return result;
}

unint64_t sub_1AF62DB38()
{
  result = qword_1EB63CFF8;
  if (!qword_1EB63CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CFF8);
  }

  return result;
}

unint64_t sub_1AF62DB90()
{
  result = qword_1EB63D000;
  if (!qword_1EB63D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D000);
  }

  return result;
}

unint64_t sub_1AF62DBE8()
{
  result = qword_1EB63D008;
  if (!qword_1EB63D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D008);
  }

  return result;
}

unint64_t sub_1AF62DC40()
{
  result = qword_1EB63D010;
  if (!qword_1EB63D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D010);
  }

  return result;
}

unint64_t sub_1AF62DC98()
{
  result = qword_1ED725CA0;
  if (!qword_1ED725CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725CA0);
  }

  return result;
}

uint64_t sub_1AF62DCEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = a2[2];
  v6 = a2[29];
  v7 = a2[30];

  v245 = v6;
  v241 = v7 - v6;
  if (v7 != v6)
  {
    v9 = *(v2 + 32);
    ecs_stack_allocator_push_snapshot(v9);
    v244 = v9;
    v246 = 8 * v7;
    v10 = ecs_stack_allocator_allocate(v9, 8 * v7, 4);
    v11 = v10;
    if (v7)
    {
      v12 = v7;
      v13 = v10;
      do
      {
        *(v13 + 2) = 256;
        *v13++ = 0;
        --v12;
      }

      while (v12);
    }

    v252 = v3;
    v253 = v2;
    v257 = v5;
    v251 = *(a1 + 16);
    if (v251)
    {
      v14 = 0;
      v247 = 0;
      v248 = v7;
      v249 = v7;
      v250 = (a1 + 32);
      v256 = v10;
      while (1)
      {
        sub_1AF6350F8(&v250[72 * v14], &v271);
        v15 = v277;
        v16 = v279;
        sub_1AF63515C(&v271, v269);
        if (v270 <= 2u)
        {
          break;
        }

        if (v270 == 3)
        {
          v254 = v14;
          sub_1AF0FBA54(v269, &v258);
          v31 = *(v3 + 6);
          if (v15)
          {
            if (!v16)
            {
              goto LABEL_10;
            }

            while (2)
            {
              v34 = *v15++;
              v35 = (v11 + 8 * v34);
              if ((*(v35 + 5) & 1) == 0)
              {
                v36 = *v35 | (*(v35 + 4) << 32);
                if ((v36 & 0x100000000) == 0)
                {
                  v268 = 0;
                  v266 = 0u;
                  v267 = 0u;
                  sub_1AF441194(&v258, &v263);
                  v32 = v36;
LABEL_44:
                  v33 = sub_1AF65A4B4(v32, 0, 0, 0, 0, &v266, &v263);
                  sub_1AF63A7E8(&v263, &qword_1ED72C1C0, &qword_1ED72C1D0);
                  sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
                  *v35 = v33;
                  *(v35 + 2) = 0;
                  v11 = v256;
                }

                if (!--v16)
                {
                  goto LABEL_10;
                }

                continue;
              }

              break;
            }

            v268 = 0;
            v266 = 0u;
            v267 = 0u;
            sub_1AF441194(&v258, &v263);
            v32 = v31;
            goto LABEL_44;
          }

          v49 = v3[29];
          v50 = v3[30];
          v51 = v50 - v49;
          if (v50 == v49)
          {
            goto LABEL_10;
          }

          v52 = v11;
          while (2)
          {
            if ((*(v52 + 5) & 1) == 0)
            {
              v55 = *v52 | (*(v52 + 4) << 32);
              if ((v55 & 0x100000000) == 0)
              {
                v268 = 0;
                v266 = 0u;
                v267 = 0u;
                sub_1AF441194(&v258, &v263);
                v53 = v55;
LABEL_69:
                v54 = sub_1AF65A4B4(v53, 0, 0, 0, 0, &v266, &v263);
                sub_1AF63A7E8(&v263, &qword_1ED72C1C0, &qword_1ED72C1D0);
                sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
                *v52 = v54;
                *(v52 + 2) = 0;
              }

              v52 += 2;
              if (!--v51)
              {
                goto LABEL_10;
              }

              continue;
            }

            break;
          }

          v268 = 0;
          v266 = 0u;
          v267 = 0u;
          sub_1AF441194(&v258, &v263);
          v53 = v31;
          goto LABEL_69;
        }

        if (v270 != 4)
        {
          sub_1AF6350F8(&v271, &v258);
          v22 = v261;
          if (!v261)
          {
            sub_1AF635250(&v258);
            if (v7)
            {
              v59 = v11 + 8 * v248;
              v60 = v7;
              do
              {
                *(v59 + 4) = 1;
                *v59 = 0;
                v59 += 8;
                --v60;
              }

              while (v60);
            }

            sub_1AF6351F0(&v271, sub_1AF43A540);
            v248 += v7;
            goto LABEL_12;
          }

          v23 = v262;
          sub_1AF635250(&v258);
          for (; v23; --v23)
          {
            v24 = *v22++;
            v25 = v11 + 8 * v24;
            *v25 = 0;
            *(v25 + 4) = 1;
          }
        }

        sub_1AF6351F0(&v271, sub_1AF43A540);
LABEL_12:
        if (++v14 == v251)
        {
          goto LABEL_96;
        }
      }

      v254 = v14;
      if (v270)
      {
        if (v270 == 1)
        {
          v17 = v269[0];
          LODWORD(v255) = *(v3 + 6);
          if (v15)
          {
            if (!v16)
            {
              goto LABEL_75;
            }

            while (1)
            {
              v20 = *v15++;
              v21 = (v11 + 8 * v20);
              if (*(v21 + 5))
              {
                v260 = 0;
                v258 = 0u;
                v259 = 0u;
                v268 = 0;
                v266 = 0u;
                v267 = 0u;
                LODWORD(v18) = v255;
              }

              else
              {
                v18 = *v21 | (*(v21 + 4) << 32);
                if ((v18 & 0x100000000) != 0)
                {
                  goto LABEL_21;
                }

                v260 = 0;
                v258 = 0u;
                v259 = 0u;
                v268 = 0;
                v266 = 0u;
                v267 = 0u;
              }

              v19 = sub_1AF65A4B4(v18, 0, 0, v17, *(&v17 + 1), &v258, &v266);
              sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
              sub_1AF63A7E8(&v258, &qword_1ED72C1C0, &qword_1ED72C1D0);
              *v21 = v19;
              *(v21 + 2) = 0;
              v11 = v256;
LABEL_21:
              if (!--v16)
              {
                goto LABEL_75;
              }
            }
          }

          v56 = v3[29];
          v57 = v3[30];
          v58 = v57 - v56;
          if (v57 == v56)
          {
LABEL_75:
            sub_1AF6351F0(&v271, sub_1AF43A540);
            v3 = v252;
            v7 = v249;
            goto LABEL_11;
          }

          v68 = v11;
          while (1)
          {
            if (*(v68 + 5))
            {
              v260 = 0;
              v258 = 0u;
              v259 = 0u;
              v268 = 0;
              v266 = 0u;
              v267 = 0u;
              LODWORD(v69) = v255;
            }

            else
            {
              v69 = *v68 | (*(v68 + 4) << 32);
              if ((v69 & 0x100000000) != 0)
              {
                goto LABEL_91;
              }

              v260 = 0;
              v258 = 0u;
              v259 = 0u;
              v268 = 0;
              v266 = 0u;
              v267 = 0u;
            }

            v70 = sub_1AF65A4B4(v69, 0, 0, v17, *(&v17 + 1), &v258, &v266);
            sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
            sub_1AF63A7E8(&v258, &qword_1ED72C1C0, &qword_1ED72C1D0);
            *v68 = v70;
            *(v68 + 2) = 0;
            v11 = v256;
LABEL_91:
            v68 += 2;
            if (!--v58)
            {
              goto LABEL_75;
            }
          }
        }

        sub_1AF0FBA54(v269, &v258);
        v37 = *(v3 + 6);
        if (v15)
        {
          if (!v16)
          {
LABEL_10:
            sub_1AF6351F0(&v271, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v258);
            v3 = v252;
LABEL_11:
            v14 = v254;
            goto LABEL_12;
          }

          while (1)
          {
            v40 = *v15++;
            v41 = (v11 + 8 * v40);
            if (*(v41 + 5))
            {
              sub_1AF441194(&v258, &v266);
              v265 = 0;
              v263 = 0u;
              v264 = 0u;
              v38 = v37;
            }

            else
            {
              v42 = *v41 | (*(v41 + 4) << 32);
              if ((v42 & 0x100000000) != 0)
              {
                goto LABEL_54;
              }

              sub_1AF441194(&v258, &v266);
              v265 = 0;
              v263 = 0u;
              v264 = 0u;
              v38 = v42;
            }

            v39 = sub_1AF65A4B4(v38, 0, 0, 0, 0, &v266, &v263);
            sub_1AF63A7E8(&v263, &qword_1ED72C1C0, &qword_1ED72C1D0);
            sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
            *v41 = v39;
            *(v41 + 2) = 0;
            v11 = v256;
LABEL_54:
            if (!--v16)
            {
              goto LABEL_10;
            }
          }
        }

        v61 = v3[29];
        v62 = v3[30];
        v63 = v62 - v61;
        if (v62 == v61)
        {
          goto LABEL_10;
        }

        v64 = v11;
        while (1)
        {
          if (*(v64 + 5))
          {
            sub_1AF441194(&v258, &v266);
            v265 = 0;
            v263 = 0u;
            v264 = 0u;
            v65 = v37;
          }

          else
          {
            v67 = *v64 | (*(v64 + 4) << 32);
            if ((v67 & 0x100000000) != 0)
            {
              goto LABEL_84;
            }

            sub_1AF441194(&v258, &v266);
            v265 = 0;
            v263 = 0u;
            v264 = 0u;
            v65 = v67;
          }

          v66 = sub_1AF65A4B4(v65, 0, 0, 0, 0, &v266, &v263);
          sub_1AF63A7E8(&v263, &qword_1ED72C1C0, &qword_1ED72C1D0);
          sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
          *v64 = v66;
          *(v64 + 2) = 0;
LABEL_84:
          v64 += 2;
          if (!--v63)
          {
            goto LABEL_10;
          }
        }
      }

      v26 = v269[0];
      LODWORD(v255) = *(v3 + 6);
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v29 = *v15++;
          v30 = (v11 + 8 * v29);
          if (*(v30 + 5))
          {
            v260 = 0;
            v258 = 0u;
            v259 = 0u;
            v268 = 0;
            v266 = 0u;
            v267 = 0u;
            LODWORD(v27) = v255;
          }

          else
          {
            v27 = *v30 | (*(v30 + 4) << 32);
            if ((v27 & 0x100000000) != 0)
            {
              goto LABEL_36;
            }

            v260 = 0;
            v258 = 0u;
            v259 = 0u;
            v268 = 0;
            v266 = 0u;
            v267 = 0u;
          }

          v28 = sub_1AF65A4B4(v27, v26, *(&v26 + 1), 0, 0, &v258, &v266);
          sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
          sub_1AF63A7E8(&v258, &qword_1ED72C1C0, &qword_1ED72C1D0);
          *v30 = v28;
          *(v30 + 2) = 0;
          v11 = v256;
LABEL_36:
          if (!--v16)
          {
            goto LABEL_75;
          }
        }
      }

      v43 = v3[29];
      v44 = v3[30];
      v45 = v44 - v43;
      if (v44 == v43)
      {
        goto LABEL_75;
      }

      v46 = v11;
      while (1)
      {
        if (*(v46 + 5))
        {
          v260 = 0;
          v258 = 0u;
          v259 = 0u;
          v268 = 0;
          v266 = 0u;
          v267 = 0u;
          LODWORD(v47) = v255;
        }

        else
        {
          v47 = *v46 | (*(v46 + 4) << 32);
          if ((v47 & 0x100000000) != 0)
          {
            goto LABEL_62;
          }

          v260 = 0;
          v258 = 0u;
          v259 = 0u;
          v268 = 0;
          v266 = 0u;
          v267 = 0u;
        }

        v48 = sub_1AF65A4B4(v47, v26, *(&v26 + 1), 0, 0, &v258, &v266);
        sub_1AF63A7E8(&v266, &qword_1ED72C1C0, &qword_1ED72C1D0);
        sub_1AF63A7E8(&v258, &qword_1ED72C1C0, &qword_1ED72C1D0);
        *v46 = v48;
        *(v46 + 2) = 0;
        v11 = v256;
LABEL_62:
        v46 += 2;
        if (!--v45)
        {
          goto LABEL_75;
        }
      }
    }

    v247 = 0;
    v248 = v7;
LABEL_96:
    if (!v248)
    {
      v72 = 0;
      goto LABEL_105;
    }

    if (v248 == 1)
    {
      v71 = 0;
      v72 = 0;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v71 = v248 & 0xFFFFFFFFFFFFFFFELL;
      v75 = (v11 + 13);
      v76 = v248 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v77 = *(v75 - 8);
        v78 = *v75;
        v75 += 16;
        v73 += (v77 & 1) == 0;
        v74 += (v78 & 1) == 0;
        v76 -= 2;
      }

      while (v76);
      v72 = v74 + v73;
      if (v248 == v71)
      {
LABEL_105:
        v82 = ecs_stack_allocator_allocate(v244, 24 * v72, 8);
        v83 = v82;
        v84 = 0;
        v85 = v245;
LABEL_108:
        v87 = (v11 + 8 * v85);
        if (*(v87 + 5))
        {
          goto LABEL_107;
        }

        v88 = *(v87 + 4);
        v89 = *v87;
        v90 = v89 | (v88 << 32);
        if (!v84)
        {
LABEL_106:
          v86 = &v82[3 * v84];
          *v86 = v89;
          *(v86 + 4) = BYTE4(v90) & 1;
          *(v86 + 1) = xmmword_1AFE21110;
          ++v84;
          goto LABEL_107;
        }

        v91 = v82 + 2;
        v92 = v84;
        while (1)
        {
          if (*(v91 - 12))
          {
            if ((v90 & 0x100000000) != 0)
            {
              goto LABEL_116;
            }
          }

          else if ((v90 & 0x100000000) == 0 && *(v91 - 4) == v89)
          {
LABEL_116:
            ++*v91;
LABEL_107:
            v85 = v85 + 1;
            if (v85 != v7)
            {
              goto LABEL_108;
            }

            v93 = v84 - 1;
            if (v84 != 1)
            {
              v94 = v82 + 2;
              do
              {
                v94[2] = *v94 + *(v94 - 1);
                v94 += 3;
                --v93;
              }

              while (v93);
            }

            v95 = 8 * v241;
            v248 = ecs_stack_allocator_allocate(v244, 8 * v241, 8);
            memset(v248, 255, 8 * v241);
            v96 = v245;
            do
            {
              v97 = (v11 + 8 * v96);
              if ((*(v97 + 5) & 1) == 0 && v84)
              {
                v98 = *v97;
                v99 = v98 | (*(v97 + 4) << 32);
                v100 = v83 + 1;
                for (i = v84; i; --i)
                {
                  if (*(v100 - 4))
                  {
                    if ((v99 & 0x100000000) != 0)
                    {
                      goto LABEL_121;
                    }
                  }

                  else if ((v99 & 0x100000000) == 0 && *(v100 - 2) == v98)
                  {
LABEL_121:
                    *(v248 + 8 * (*v100)++) = v96;
                    break;
                  }

                  v100 += 3;
                }
              }

              v96 = v96 + 1;
            }

            while (v96 != v7);
            v102 = ecs_stack_allocator_allocate(v244, v95, 8);
            v103 = v83[2];
            v240 = v83;
            v104 = 0;
            if (v84 != 1)
            {
              v105 = v83 + 5;
              v106 = 1;
              do
              {
                v108 = *v105;
                v105 += 3;
                v107 = v108;
                v109 = v103 <= v108;
                if (v103 < v108)
                {
                  v104 = v106;
                }

                v110 = v106 + 1;
                if (v109)
                {
                  v103 = v107;
                }

                ++v106;
              }

              while (v84 != v110);
            }

            v239 = v84;
            v111 = v3[30] - (v3[29] + v72);
            v112 = v3;
            if (v111 < v103)
            {
              v113 = *(v3 + 6);
              v114 = &v240[3 * v104];
              if (v114[1])
              {
                LODWORD(v115) = -1;
LABEL_145:
                v118 = 0;
                v119 = v245;
                v120 = v246;
                v121 = (v11 + 8 * v245);
                v122 = v121;
                v123 = v257;
                do
                {
                  if ((*(v122 + 5) & 1) != 0 || (v124 = *v122, ((v124 | (*(v122 + 4) << 32)) & 0x100000000) != 0) || v115 != v124)
                  {
                    v102[v118++] = v119;
                  }

                  ++v119;
                  v122 += 2;
                }

                while (v7 != v119);
                v131 = v121 + 5;
                v132 = v245;
                do
                {
                  if (*v131 == 1)
                  {
                    *(v248 + 8 * v72++) = v132;
                  }

                  ++v132;
                  v131 += 8;
                }

                while (v7 != v132);
                *v114 = v113;
                *(v114 + 4) = 0;
                *(v114 + 1) = v72;
                *(v114 + 2) = v111;
                v128 = v252;
                v129 = v239;
                v130 = v240;
LABEL_161:
                v133 = ecs_stack_allocator_allocate(v244, v120, 8);
                if (v7)
                {
                  v134 = v133;
                  bzero(v133, v120);
                  v135 = v134;
                  if (!v129)
                  {
                    goto LABEL_254;
                  }
                }

                else
                {
                  v135 = v133;
                  if (!v129)
                  {
LABEL_254:
                    ecs_stack_allocator_pop_snapshot(v244);
                  }
                }

                v136 = 0;
                v231 = v123 + 44;
                v232 = v123 + 68;
                v229 = (v248 + 16);
                v230 = v123 + 48;
                v137 = v245;
                v238 = &v135[v245];
                v235 = v135;
                while (2)
                {
                  v138 = &v130[3 * v136];
                  v139 = *(v138 + 2);
                  if (v139 >= 1)
                  {
                    v249 = *v138;
                    v250 = v137;
                    LODWORD(v256) = *(v138 + 4);
                    v140 = 8 * v139;
                    v141 = *(v138 + 1);
                    v142 = v139;
                    v143 = ecs_stack_allocator_allocate(v244, 8 * v139, 8);
                    memset(v143, 255, v140);
                    v144 = (v248 + 8 * v141);
                    v255 = v143;
                    if (v250 == v245)
                    {
                      v145 = v142;
                      if (v142 <= 5)
                      {
                        v146 = 0;
                        v143 = v255;
                        goto LABEL_177;
                      }

                      v143 = v255;
                      if (v255 + v140 - (8 * v141 + v248) >= 0x20)
                      {
                        v146 = v142 & 0x7FFFFFFFFFFFFFFCLL;
                        v223 = &v229[8 * v141 - v140];
                        v224 = v255 + 2;
                        v225 = v142 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v226 = *v223;
                          *(v224 - 1) = *(v223 - 1);
                          *v224 = v226;
                          v223 += 32;
                          v224 += 4;
                          v225 -= 4;
                        }

                        while (v225);
                        v149 = v256;
                        if (v142 != v146)
                        {
                          goto LABEL_178;
                        }
                      }

                      else
                      {
                        v146 = 0;
LABEL_177:
                        v149 = v256;
LABEL_178:
                        v151 = v146 - v142;
                        v152 = &v143[v146];
                        do
                        {
                          *v152++ = *&v144[8 * v151];
                          v150 = __CFADD__(v151++, 1);
                        }

                        while (!v150);
                      }
                    }

                    else
                    {
                      v147 = -v142;
                      v148 = v143;
                      v145 = v142;
                      v149 = v256;
                      do
                      {
                        *v148++ = v135[*&v144[8 * v147]];
                        v150 = __CFADD__(v147++, 1);
                      }

                      while (!v150);
                    }

                    v256 = v145;
                    v246 = v136;
                    if (v149)
                    {
                      if (*(v128[5] + 213) == 1)
                      {
                        v153 = v128[6];
                        v154 = (v153 + 32);
                        v155 = *(v153 + 16) + 1;
                        do
                        {
                          if (!--v155)
                          {
                            goto LABEL_187;
                          }

                          v156 = v154 + 5;
                          v157 = *v154;
                          v154 += 5;
                        }

                        while (v157 != &type metadata for PropagateDirtiness);
                        v155 = *(v156 - 2);
LABEL_187:
                        v158 = 0;
                        v254 = v128[16] + v155;
                        while (1)
                        {
LABEL_190:
                          v159 = v143[v158];

                          if (v128[23])
                          {
                            v228 = 0;
                            v227 = 204;
                            result = sub_1AFDFE518();
                            __break(1u);
                            return result;
                          }

                          ++v158;
                          v160 = *(v128[21] + 4 * v159);
                          v161 = (v254 + 8 * v159);
                          v162 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v160 + 8);

                          v163 = *v161;
                          v164 = v161[1];
                          if (v163 == -1 && v164 == 0)
                          {
                            goto LABEL_189;
                          }

                          v166 = *(v253 + 88);
                          sub_1AFDFF288();
                          sub_1AFDFF2C8();
                          sub_1AFDFF2C8();
                          v167 = sub_1AFDFF2F8();
                          v168 = v166 + 56;
                          v169 = -1 << *(v166 + 32);
                          v170 = v167 & ~v169;
                          if ((*(v166 + 56 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170))
                          {
                            break;
                          }

                          v123 = v257;
LABEL_204:
                          v177 = v160;
                          v178 = v253;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v271 = *(v178 + 88);
                          sub_1AF711640(v177 | (v162 << 32), v163 | (v164 << 32), v170, isUniquelyReferenced_nonNull_native);
                          *(v178 + 88) = v271;
                          v145 = v256;
                          v128 = v252;
                          v143 = v255;
                          if (v158 == v256)
                          {
                            goto LABEL_205;
                          }
                        }

                        v171 = ~v169;
                        v172 = *(v166 + 48);
                        v123 = v257;
                        while (1)
                        {
                          v173 = v172 + 16 * v170;
                          v175 = *(v173 + 8);
                          v174 = *(v173 + 12);
                          if (v175 == v163 && v174 == v164)
                          {
                            break;
                          }

                          v170 = (v170 + 1) & v171;
                          if (((*(v168 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
                          {
                            goto LABEL_204;
                          }
                        }

                        v128 = v252;
LABEL_189:
                        v145 = v256;
                        v143 = v255;
                        if (v158 == v256)
                        {
                          goto LABEL_205;
                        }

                        goto LABEL_190;
                      }

LABEL_205:
                      v180 = v143;
                      v181 = v145;
                      v182 = v247;
                      sub_1AF5B5880(v128[5], v180, v145, v145, 1, v128);
                      v247 = v182;
                      if (*(v123 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                      {
                        vfx_counters.add(_:_:)(*(v231 + OBJC_IVAR____TtC3VFX13EntityManager_counters), v181);
                      }

                      v129 = v239;
                      v130 = v240;
                      v135 = v235;
                      v136 = v246;
                      if (*(v123 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                      {
                        vfx_counters.add(_:_:)(*(v230 + OBJC_IVAR____TtC3VFX13EntityManager_counters), -v256);
                      }

                      ++*(v128 + 29);
                    }

                    else
                    {
                      v183 = *(v128 + 120);
                      v184 = *(v128 + 7);
                      v185 = *(v128 + 32);
                      v186 = v128[5];
                      v187 = v186[200];
                      v254 = *(*(v123 + 88) + 8 * v249 + 32);

                      if ((v187 & 1) != 0 || *(v254 + 200) == 1)
                      {
                        *(v123 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                        v186 = v128[5];
                      }

                      v188 = v186[212];
                      v234 = v183;
                      if (v188)
                      {
                        v237 = 0;
                      }

                      else
                      {
                        v237 = *(v254 + 212);
                      }

                      v236 = v186[208];
                      v251 = v128[16];
                      v189 = v128[32];
                      v190 = v247;
                      sub_1AF5B5880(v186, v255, v256, v256, 0, v128);
                      v247 = v190;
                      v242 = v128[32];
                      v243 = v189;
                      v191 = v242 - v189;
                      if (v242 == v189)
                      {
                        v192 = 0;
                      }

                      else
                      {
                        v192 = v189;
                      }

                      v255 = v192;
                      *&v258 = v192;
                      v193 = v128[5];
                      v194 = *(v193 + 24);
                      v195 = *(v194 + 16);
                      if (v195)
                      {
                        v196 = v194 + 32;
                        v233 = *(v193 + 24);

                        for (j = 0; j != v195; ++j)
                        {
                          v198 = v196 + 40 * j;
                          if ((*(v198 + 32) & 1) == 0)
                          {
                            v199 = *(v254 + 24);
                            v200 = *(v199 + 16);
                            if (v200)
                            {
                              v201 = (v199 + 32);
                              while (*v201 != *v198)
                              {
                                v201 += 5;
                                if (!--v200)
                                {
                                  goto LABEL_221;
                                }
                              }
                            }

                            else
                            {
LABEL_221:
                              sub_1AF640BC8();
                            }
                          }
                        }

                        v128 = v252;
                        v135 = v235;
                      }

                      if (*(v123 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                      {
                        vfx_counters.add(_:_:)(*(v232 + OBJC_IVAR____TtC3VFX13EntityManager_counters), v128[9] * v191);
                      }

                      v202 = v128;
                      if (*(v128 + 184))
                      {
                        v203 = 0;
                      }

                      else
                      {
                        v203 = v128[21];
                      }

                      *&v269[0] = 0;

                      MEMORY[0x1EEE9AC00](v204, v205);
                      *(&v229 - 28) = v184;
                      *(&v229 - 108) = v185;
                      v206 = v254;
                      *(&v229 - 13) = v202;
                      *(&v229 - 12) = v206;
                      *(&v229 - 11) = 0u;
                      *(&v229 - 9) = 0u;
                      *(&v229 - 7) = &v258;
                      *(&v229 - 6) = v251;
                      *(&v229 - 5) = v269;
                      *(&v229 - 32) = v236;
                      *(&v229 - 7) = v249;
                      *(&v229 - 24) = v237;
                      v227 = v253;
                      v274 = -1;
                      v275 = v243;
                      v276 = v242;
                      v277 = v243;
                      v278 = v242;
                      v271 = v243;
                      v272 = v242;
                      v273 = v203;
                      if (v191 < 1)
                      {

                        v128 = v252;
                        v130 = v240;
                      }

                      else
                      {
                        v255 = &v229;
                        v207 = v240;
                        v208 = v249;
                        v209 = v234;
                        do
                        {
                          LOBYTE(v266) = v185;
                          sub_1AF6248A8(v208, v184 | (v185 << 32), v209, v123, &v271, sub_1AF5C5E08);
                        }

                        while (v272 - v271 > 0);

                        v128 = v252;
                        v130 = v207;
                      }

                      v210 = v128[24];
                      v129 = v239;
                      v136 = v246;
                      if (v210)
                      {
                        v211 = v128[26];
                        v255 = v128[27];
                        v251 = v211;
                        v212 = v239;
                        v213 = v130;
                        v214 = v242;
                        v215 = v243;
                        sub_1AF75D364(v243, v242, v210);
                        v216 = v215;
                        v130 = v213;
                        v129 = v212;
                        sub_1AF75D364(v216, v214, v251);
                      }
                    }

                    v217 = v256;
                    v218 = -v256;
                    v219 = v250;
                    do
                    {
                      v135[*&v144[8 * v218]] = -1;
                      v150 = __CFADD__(v218++, 1);
                    }

                    while (!v150);
                    v220 = 0;
                    v137 = &v219[v217];
                    v221 = v238;
                    v222 = v241;
                    do
                    {
                      if (*v221 != -1)
                      {
                        *v221 = &v137[v220++];
                      }

                      ++v221;
                      --v222;
                    }

                    while (v222);
                  }

                  if (++v136 == v129)
                  {
                    goto LABEL_254;
                  }

                  continue;
                }
              }

              v115 = *v114;
              v116 = v102;
              v117 = sub_1AF649CEC();
              v102 = v116;
              if (v117)
              {
                sub_1AF649D40(v115);
                v102 = v116;
                goto LABEL_145;
              }
            }

            v125 = 0;
            v126 = v245;
            v127 = (v11 + 8 * v245 + 5);
            v123 = v257;
            v128 = v112;
            v120 = v246;
            v129 = v239;
            v130 = v240;
            do
            {
              if ((*v127 & 1) == 0)
              {
                v102[v125++] = v126;
              }

              ++v126;
              v127 += 8;
            }

            while (v7 != v126);
            goto LABEL_161;
          }

          v91 += 3;
          if (!--v92)
          {
            goto LABEL_106;
          }
        }
      }
    }

    v79 = (v248 - v71);
    v80 = (v11 + 8 * v71 + 5);
    do
    {
      v81 = *v80;
      v80 += 8;
      v72 += (v81 & 1) == 0;
      --v79;
    }

    while (v79);
    goto LABEL_105;
  }
}

void sub_1AF62F27C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF5C3B0C(*(v4 + 40), v4, a1, a2, a3, a4);
  sub_1AF5B5880(*(v4 + 40), a1, a2, a3, 1, v4);
  v8 = *(v4 + 16);
  if (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 44), a3);
  }

  if (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 48), -a3);
  }

  ++*(v4 + 116);
}

uint64_t sub_1AF62F348(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1AF6350F8(a1 + 32, v49);
    v5 = v50;
    v4 = v51;
    v6 = v52;
    sub_1AF63515C(v49, v47);
    if (v48 > 2u)
    {
      if (v48 == 3)
      {
        sub_1AF0FBA54(v47, &v41);
        v21 = *(a2 + 24);

        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_1AF441194(&v41, v36);
        v22 = v21;
        v23 = v2;
        v24 = sub_1AF65A4B4(v22, 0, 0, 0, 0, &v38, v36);

        sub_1AF63A7E8(v36, &qword_1ED72C1C0, &qword_1ED72C1D0);
        sub_1AF63A7E8(&v38, &qword_1ED72C1C0, &qword_1ED72C1D0);
        sub_1AF64A824(v5, v4, v6, v24, v23);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v41);
        result = sub_1AF6351F0(v49, sub_1AF43A540);
        *(v23 + 152) += *(a2 + 240) - *(a2 + 232);
      }

      else if (v48 == 4)
      {
        sub_1AF62F998(LOBYTE(v47[0]), v5, v4, v6);
        return sub_1AF6351F0(v49, sub_1AF43A540);
      }

      else
      {
        sub_1AF6350F8(v49, &v41);
        v29 = v44;
        if (v44)
        {
          v31 = v45;
          v30 = v46;
          sub_1AF635250(&v41);
          v32 = v29;
          v33 = v2;
          sub_1AF62F27C(v32, v31, v30, v2);
          result = sub_1AF6351F0(v49, sub_1AF43A540);
          v34 = *(v2 + 160) + v30;
        }

        else
        {
          sub_1AF635250(&v41);
          v33 = v2;
          sub_1AF648FE4(*(a2 + 232), *(a2 + 240));
          result = sub_1AF6351F0(v49, sub_1AF43A540);
          v34 = *(a2 + 240) - *(a2 + 232) + *(v2 + 160);
        }

        *(v33 + 160) = v34;
      }
    }

    else if (v48)
    {
      if (v48 == 1)
      {
        v7 = v47[0];
        sub_1AF6350F8(v49, &v41);
        v9 = v44;
        v8 = v45;
        v10 = v46;
        sub_1AF635250(&v41);
        v11 = *(v2 + 112);
        v12 = (*(*(*(&v7 + 1) + 8) + 48))(v7) ^ 1 | v11;
        if (v9)
        {
          if ((v12 & 1) == 0)
          {
            sub_1AF5B4D64(v9, v8, v10, v7, *(&v7 + 1), 1);
          }

          v13 = *(a2 + 24);

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v14 = sub_1AF65A4B4(v13, 0, 0, v7, *(&v7 + 1), &v41, &v38);

          sub_1AF63A7E8(&v38, &qword_1ED72C1C0, &qword_1ED72C1D0);
          sub_1AF63A7E8(&v41, &qword_1ED72C1C0, &qword_1ED72C1D0);
          v15 = v9;
        }

        else
        {
          if ((v12 & 1) == 0)
          {
            sub_1AF5B4D64(0, v8, v10, v7, *(&v7 + 1), 1);
          }

          v35 = *(a2 + 24);

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v14 = sub_1AF65A4B4(v35, 0, 0, v7, *(&v7 + 1), &v41, &v38);

          sub_1AF63A7E8(&v38, &qword_1ED72C1C0, &qword_1ED72C1D0);
          sub_1AF63A7E8(&v41, &qword_1ED72C1C0, &qword_1ED72C1D0);
          v15 = 0;
        }

        sub_1AF64A824(v15, v8, v10, v14, v2);
        result = sub_1AF6351F0(v49, sub_1AF43A540);
        *(v2 + 152) += *(a2 + 240) - *(a2 + 232);
      }

      else
      {
        sub_1AF0FBA54(v47, &v41);
        v25 = *(a2 + 24);

        sub_1AF441194(&v41, &v38);
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        v26 = v25;
        v27 = v2;
        v28 = sub_1AF65A4B4(v26, 0, 0, 0, 0, &v38, v36);

        sub_1AF63A7E8(v36, &qword_1ED72C1C0, &qword_1ED72C1D0);
        sub_1AF63A7E8(&v38, &qword_1ED72C1C0, &qword_1ED72C1D0);
        sub_1AF64A824(v5, v4, v6, v28, v27);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v41);
        result = sub_1AF6351F0(v49, sub_1AF43A540);
        *(v27 + 144) += *(a2 + 240) - *(a2 + 232);
      }
    }

    else
    {
      v17 = v47[0];
      sub_1AF6350F8(v49, &v41);
      v18 = v44;
      v19 = v45;
      v20 = v46;
      sub_1AF635250(&v41);
      sub_1AF648EC4(v17, *(&v17 + 1), v18, v19, v20, v2);
      result = sub_1AF6351F0(v49, sub_1AF43A540);
      *(v2 + 144) += *(a2 + 240) - *(a2 + 232);
    }
  }

  else
  {

    return sub_1AF62DCEC(a1, a2);
  }

  return result;
}

uint64_t sub_1AF62F998(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 120) != (result & 1))
  {
    v5 = v4;
    v6 = result;
    if (a2 && *(v4 + 240) - *(v4 + 232) > a4)
    {
      v10 = *(v4 + 28);
      v11 = *(v4 + 24);
      v38 = *(v4 + 32);
      v12 = *(v4 + 16);
      v13 = *(v4 + 40);
      v14 = *(v13 + 200);
      v39 = *(*(v12 + 88) + 8 * v11 + 32);

      if ((v14 & 1) != 0 || *(v39 + 200) == 1)
      {
        *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
        v13 = *(v5 + 40);
      }

      v15 = a3;
      v19 = v38;
      v20 = *(v5 + 256);
      sub_1AF5B5880(v13, a2, v15, a4, 0, v5);
      v37 = *(v5 + 256);
      v21 = v37 - v20;
      if (v37 == v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      v49 = v22;
      v23 = *(*(v5 + 40) + 24);
      v24 = *(v23 + 16);
      if (v24)
      {
        v36 = v20;
        v25 = v23 + 32;

        for (i = 0; i != v24; ++i)
        {
          v27 = v25 + 40 * i;
          if ((*(v27 + 32) & 1) == 0)
          {
            v28 = *(v39 + 24);
            v29 = *(v28 + 16);
            if (v29)
            {
              v30 = (v28 + 32);
              while (*v30 != *v27)
              {
                v30 += 5;
                if (!--v29)
                {
                  goto LABEL_14;
                }
              }
            }

            else
            {
LABEL_14:
              sub_1AF640BC8();
            }
          }
        }

        v20 = v36;
        v19 = v38;
      }

      if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
      {
        vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v21);
      }

      if (*(v5 + 184))
      {
        v31 = 0;
      }

      else
      {
        v31 = *(v5 + 168);
      }

      v48 = 0;

      MEMORY[0x1EEE9AC00](v32, v33);
      v42 = v31;
      v43 = -1;
      v44 = v20;
      v45 = v37;
      v46 = v20;
      v47 = v37;
      v40 = v20;
      v41 = v37;
      if (v21 >= 1)
      {
        do
        {
          sub_1AF6248A8(v11, v10 | (v19 << 32), v6 & 1, v12, &v40, sub_1AF5C44B0);
        }

        while (v41 - v40 > 0);
      }

      v34 = *(v5 + 192);
      if (v34)
      {
        v35 = *(v5 + 208);
        sub_1AF75D364(v20, v37, v34);
        sub_1AF75D364(v20, v37, v35);
      }
    }

    else
    {
      v16 = *(v4 + 188);
      v17 = *(v4 + 24);

      v18 = v6 & 1;
      sub_1AF62320C(v16, v18, v17);

      *(v4 + 120) = v18;
    }
  }

  return result;
}

uint64_t sub_1AF62FD38(uint64_t result, uint64_t a2, char a3)
{
  if (*(v3 + 120) != (result & 1))
  {
    v4 = v3;
    v5 = result;
    if ((a3 & 1) != 0 || (*(v3 + 240) - *(v3 + 232)) < 2)
    {
      v13 = *(v3 + 188);
      v14 = *(v3 + 24);

      v15 = v5 & 1;
      sub_1AF62320C(v13, v15, v14);

      *(v3 + 120) = v15;
    }

    else
    {
      v7 = *(v3 + 28);
      v8 = *(v3 + 24);
      v9 = *(v3 + 32);
      v10 = *(v3 + 16);
      v11 = *(v3 + 40);
      v12 = *(v11 + 200);
      v35 = *(*(v10 + 88) + 8 * v8 + 32);

      if ((v12 & 1) != 0 || *(v35 + 200) == 1)
      {
        *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
        v11 = *(v4 + 40);
      }

      v16 = *(v4 + 256);
      sub_1AF5B69AC(v11, a2, 0, v4);
      v34 = *(v4 + 256);
      v17 = v34 - v16;
      if (v34 == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      v45 = v18;
      v19 = *(*(v4 + 40) + 24);
      v20 = *(v19 + 16);
      if (v20)
      {
        v32 = v9;
        v33 = v7;
        v21 = v19 + 32;

        for (i = 0; i != v20; ++i)
        {
          v23 = v21 + 40 * i;
          if ((*(v23 + 32) & 1) == 0)
          {
            v24 = *(v35 + 24);
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = (v24 + 32);
              while (*v26 != *v23)
              {
                v26 += 5;
                if (!--v25)
                {
                  goto LABEL_14;
                }
              }
            }

            else
            {
LABEL_14:
              sub_1AF640BC8();
            }
          }
        }

        v7 = v33;
        v9 = v32;
      }

      if (*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
      {
        vfx_counters.add(_:_:)(*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v4 + 72) * v17);
      }

      if (*(v4 + 184))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v4 + 168);
      }

      v44 = 0;

      MEMORY[0x1EEE9AC00](v28, v29);
      v38 = v27;
      v39 = -1;
      v40 = v16;
      v41 = v34;
      v42 = v16;
      v43 = v34;
      v36 = v16;
      v37 = v34;
      if (v17 >= 1)
      {
        do
        {
          sub_1AF6248A8(v8, v7 | (v9 << 32), v5 & 1, v10, &v36, sub_1AF5C5E08);
        }

        while (v37 - v36 > 0);
      }

      v30 = *(v4 + 192);
      if (v30)
      {
        v31 = *(v4 + 208);
        sub_1AF75D364(v16, v34, v30);
        sub_1AF75D364(v16, v34, v31);
      }
    }
  }

  return result;
}

uint64_t sub_1AF6300CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (v8 << 9) | (8 * v9);
    v11 = *(v2[6] + v10);
    v12 = *(v2[7] + v10);
    v13 = *(v11 + 376);

    os_unfair_lock_lock(v13);
    os_unfair_lock_lock(*(v11 + 344));
    sub_1AF62F348(v12, v11);

    os_unfair_lock_unlock(*(v11 + 344));
    os_unfair_lock_unlock(*(v11 + 376));
  }

  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = v2[v7++ + 9];
    if (v5)
    {
      v7 = v8;
      goto LABEL_8;
    }
  }

  if (v2[2])
  {
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    sub_1AF63E0F4();
    result = sub_1AFDFE4B8();
    *a1 = v15;
  }

  return result;
}

uint64_t sub_1AF63023C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v15 = v3 + 104;
    return a3(v15);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 96);
  v18 = *(v4 + 96);
  *(v4 + 96) = 0x8000000000000000;
  v9 = sub_1AF41A124(a2);
  v11 = v10;
  v12 = *(v8 + 16) + ((v10 & 1) == 0);
  if (*(v8 + 24) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF8469BC();
      v8 = v18;
    }

    goto LABEL_8;
  }

  sub_1AF830278(v12, isUniquelyReferenced_nonNull_native);
  v8 = v18;
  v13 = sub_1AF41A124(a2);
  if ((v11 & 1) == (v14 & 1))
  {
    v9 = v13;
LABEL_8:
    *(v4 + 96) = v8;

    v16 = *(v4 + 96);
    if ((v11 & 1) == 0)
    {
      sub_1AF843558(v9, a2, MEMORY[0x1E69E7CC0], *(v4 + 96));
    }

    v15 = *(v16 + 56) + 8 * v9;
    return a3(v15);
  }

  type metadata accessor for ComponentsDataChunk();
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

__n128 sub_1AF630374(void **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a2)
  {
    sub_1AF63515C(a5, v20);
    *&v21 = 0;
    *(&v21 + 1) = a3;
LABEL_9:
    v22 = a4;
    goto LABEL_10;
  }

  if (a4 <= 0)
  {
    return result;
  }

  if (*(a6 + 240) - *(a6 + 232) != a4)
  {
    if (a7)
    {
      v12 = sub_1AF757580(8 * a4, 8);
      memcpy(v12, a2, 8 * a4);
      sub_1AF63515C(a5, v20);
      *&v21 = v12;
      *(&v21 + 1) = a4;
    }

    else
    {
      sub_1AF63515C(a5, v20);
      *&v21 = a2;
      *(&v21 + 1) = a3;
    }

    goto LABEL_9;
  }

  sub_1AF63515C(a5, v20);
  v22 = 0;
  v21 = 0uLL;
LABEL_10:
  v13 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF420EA0(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AF420EA0(v14 > 1, v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  v16 = &v13[9 * v15];
  *(v16 + 2) = v20[0];
  result = v20[1];
  v18 = v20[2];
  v19 = v21;
  v16[12] = v22;
  *(v16 + 4) = v18;
  *(v16 + 5) = v19;
  *(v16 + 3) = result;
  *a1 = v13;
  return result;
}

__n128 sub_1AF6304E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (!v10)
  {
LABEL_30:
    v25 = *(a5 + 240) - *(a5 + 232);
    if (a4)
    {
      v26 = sub_1AF757580(8 * v25, 8);
    }

    else
    {
      v26 = ecs_stack_allocator_allocate(*(a6 + 32), 8 * v25, 8);
    }

    v27 = v26;
    *v26 = a3;
    sub_1AF63515C(a2, v41);
    *v43 = v27;
    *&v43[8] = v25;
    *&v43[16] = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AF420EA0(0, v9[2] + 1, 1, v9);
    }

    v29 = v9[2];
    v28 = v9[3];
    if (v29 >= v28 >> 1)
    {
      v9 = sub_1AF420EA0(v28 > 1, v29 + 1, 1, v9);
    }

    v9[2] = v29 + 1;
    v30 = &v9[9 * v29];
    *(v30 + 2) = v41[0];
    result = v41[1];
    v31 = v42;
    v32 = *v43;
    v30[12] = *&v43[16];
    *(v30 + 4) = v31;
    *(v30 + 5) = v32;
    *(v30 + 3) = result;
    *a1 = v9;
    return result;
  }

  v11 = 0;
  v12 = (v9 + 4);
  while (1)
  {
    sub_1AF6350F8(v12, v46);
    sub_1AF63515C(v46, v41);
    sub_1AF63515C(a2, v43);
    if (BYTE8(v42) <= 2u)
    {
      if (!BYTE8(v42))
      {
        sub_1AF63515C(v41, v40);
        if (v45)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

      if (BYTE8(v42) == 1)
      {
        sub_1AF63515C(v41, v40);
        if (v45 != 1)
        {
          goto LABEL_4;
        }

LABEL_17:
        v15 = *&v40[0];
        v16 = *v43;
        sub_1AF635250(v41);
        sub_1AF6351F0(v46, sub_1AF43A540);
        if (v15 == v16)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }

      sub_1AF63515C(v41, v40);
      if (v45 != 2)
      {
LABEL_3:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
LABEL_4:
        sub_1AF6351F0(v41, sub_1AF635194);
        sub_1AF6351F0(v46, sub_1AF43A540);
        goto LABEL_5;
      }

      goto LABEL_22;
    }

    if (BYTE8(v42) == 3)
    {
      sub_1AF63515C(v41, v40);
      if (v45 != 3)
      {
        goto LABEL_3;
      }

LABEL_22:
      sub_1AF0FBA54(v40, v37);
      sub_1AF0FBA54(v43, v36);
      v17 = v38;
      v18 = v39;
      sub_1AF441150(v37, v38);
      LOBYTE(v17) = sub_1AF640C98(v36, v17, v18);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
      sub_1AF635250(v41);
      sub_1AF6351F0(v46, sub_1AF43A540);
      if (v17)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    if (BYTE8(v42) != 4)
    {
      break;
    }

    sub_1AF63515C(v41, v40);
    if (v45 != 4)
    {
      goto LABEL_4;
    }

    v13 = LOBYTE(v40[0]);
    v14 = v43[0];
    sub_1AF635250(v41);
    sub_1AF6351F0(v46, sub_1AF43A540);
    if (v13 == v14)
    {
      goto LABEL_27;
    }

LABEL_5:
    ++v11;
    v12 += 72;
    if (v10 == v11)
    {
      goto LABEL_30;
    }
  }

  if (v45 != 5)
  {
    goto LABEL_4;
  }

  v19 = vorrq_s8(*&v43[8], v44);
  if (*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v43)
  {
    goto LABEL_4;
  }

  sub_1AF635250(v41);
  sub_1AF6351F0(v46, sub_1AF43A540);
LABEL_27:
  v21 = sub_1AFBFCA08(v41);
  v22 = *(v20 + 48);
  if (v22)
  {
    v23 = *(v20 + 64);
    *(v22 + 8 * v23) = a3;
    *(v20 + 64) = v23 + 1;
  }

  (v21)(v41, 0);
  return result;
}

__n128 sub_1AF630914@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 80);
  v6 = *(*(*(*(a1 + 40) + 16) + 32) + 16) + 1;
  v8 = *(a2 + 64);
  v9 = *(a2 + 48);
  *(a2 + 48) = ecs_stack_allocator_allocate(*(a2 + 32), 48 * v6, 8);
  *(a2 + 56) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  result = v9;
  *a3 = v9;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  return result;
}

__n128 sub_1AF630994(void *a1, unsigned __int16 **a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1 + 6;
  v6 = a1[6];
  v35 = a1[8];
  if (!v35)
  {
    v28 = a1[7];
    v29 = a1[4];
    goto LABEL_31;
  }

  v32 = a1 + 6;
  for (i = 0; i != v35; ++i)
  {
    v9 = (v6 + 48 * i);
    v10 = *v9;
    v11 = v9[4];
    v12 = a1[9];
    if (v12)
    {
      v13 = v10 == v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_3;
    }

    v14 = *a2;
    if (!(*a2)[11])
    {
      goto LABEL_3;
    }

    v15 = v9[2];
    v16 = v14 + 41;
    v17 = v14[9];
    if (v17 >= 0x10)
    {
      v18 = &v16[v14[8]];
      v19 = v17 >> 4;
      v20 = v14 + 41;
      while (*v18 != v10)
      {
        ++v20;
        v18 += 16;
        if (!--v19)
        {
          goto LABEL_19;
        }
      }

      v21 = v20[v14[10]];
      v22 = v21 > 5;
      v23 = (1 << v21) & 0x23;
      if (v22 || v23 == 0)
      {
LABEL_3:

        v11(v8);

        continue;
      }
    }

LABEL_19:
    if (swift_conformsToProtocol2() && v15)
    {
      if (sub_1AF5FC8D8(v15))
      {
        goto LABEL_3;
      }

      v25 = v14[9];
      if (v25 < 0x10)
      {
        goto LABEL_3;
      }

      v26 = &v16[v14[8]];
      v27 = 16 * (v25 >> 4);
      while (*v26 != v15)
      {
        v26 += 16;
        v27 -= 16;
        if (!v27)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v28 = a1[7];
  v6 = a1[6];
  v29 = a1[4];
  if (a1[8] >= 1)
  {
    swift_arrayDestroy();
  }

  v3 = a3;
  v5 = v32;
LABEL_31:
  ecs_stack_allocator_deallocate(v29, v6, 48 * v28);
  result = *v3;
  v31 = *(v3 + 16);
  *v5 = *v3;
  *(v5 + 1) = v31;
  v5[4] = *(v3 + 32);
  return result;
}

uint64_t sub_1AF630BA4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v5 = a1;
  v6 = *(a5 + 16);
  v7 = *(a1 + 24);
  v195 = (a1 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v189 = v6 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v178 = (v8 + 63) >> 6;
  v174 = a3;
  v175 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;

  v12 = 0;
  v200 = v6;
  v198 = v5;
  v193 = v11;
  v176 = v7;
  v13 = v178;
  if (v10)
  {
    while (1)
    {
LABEL_7:
      v15 = (*(v7 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v16 = *v15;
      v17 = v15[1];
      v18 = v16 == -1 && v17 == 0;
      if (v18 || v16 < 0 || v11[1] <= v16 || ((v19 = *v11 + 12 * v16, v17 != -1) ? (v20 = *(v19 + 8) == v17) : (v20 = 1), !v20))
      {
        while (1)
        {
LABEL_168:
          sub_1AFDFE518();
          __break(1u);
LABEL_169:
          os_unfair_lock_unlock(*(v7 + 344));
LABEL_170:
        }
      }

      v21 = *(v19 + 6);
      v22 = v16 | (v17 << 32);
      v23 = sub_1AF65AE88(v22);
      v24 = *(*(a2 + 88) + 8 * v21 + 32);
      v186 = v22;
      v183 = v23;
      if ((a4 & 1) == 0)
      {
        break;
      }

      v25 = *(v24 + 212);

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      v184 = sub_1AF679254(v22);
LABEL_23:
      v26 = *(v24 + 144);
      v27 = *(v24 + 112);
      v210 = *(v24 + 128);
      v211 = v26;
      v28 = *(v24 + 144);
      v29 = *(v24 + 176);
      v212 = *(v24 + 160);
      v213 = v29;
      v30 = *(v24 + 112);
      v209[0] = *(v24 + 96);
      v209[1] = v30;
      v205 = v210;
      v206 = v28;
      v31 = *(v24 + 176);
      v207 = v212;
      v208 = v31;
      v203 = v209[0];
      v204 = v27;
      sub_1AF63529C(v209, v214);
      v32 = sub_1AF627868();
      v214[2] = v205;
      v214[3] = v206;
      v214[4] = v207;
      v214[5] = v208;
      v214[0] = v203;
      v214[1] = v204;
      sub_1AF6352F8(v214);
      v33 = v32[2];
      v196 = v24;
      if (v33)
      {
        v202 = MEMORY[0x1E69E7CC0];
        sub_1AFC07050(0, v33, 0);
        v34 = v202;
        v35 = (v32 + 4);
        do
        {
          sub_1AF441194(v35, v201);
          sub_1AF441194(v201, &v203);
          v37 = *(&v204 + 1);
          v36 = v205;
          sub_1AF448018(&v203, *(&v204 + 1));
          (*(*(v36 + 8) + 96))(v198, &off_1F2532090, v37);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v201);
          v202 = v34;
          v39 = *(v34 + 16);
          v38 = *(v34 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1AFC07050(v38 > 1, v39 + 1, 1);
            v34 = v202;
          }

          *(v34 + 16) = v39 + 1;
          sub_1AF0FBA54(&v203, v34 + 40 * v39 + 32);
          v35 += 40;
          --v33;
        }

        while (v33);

        v24 = v196;
      }

      else
      {

        v34 = MEMORY[0x1E69E7CC0];
      }

      v40 = *(*(v24 + 16) + 32);
      v41 = *(v189 + 24);

      os_unfair_lock_lock(v41);
      v42 = sub_1AF66EC18(v40);

      v43 = sub_1AF66ED9C(v42, v34);
      v45 = v44;

      v46 = *(v6 + 80);
      v47 = *(v46 + 16);
      if (!v47)
      {
        goto LABEL_37;
      }

      v48 = 0;
      v49 = v46 + 32;
      while (*(*(v49 + 8 * v48) + 144) != v43)
      {
        if (v47 == ++v48)
        {
          goto LABEL_37;
        }
      }

      v50 = sub_1AF65D418(v45, v48);
      if ((v50 & 0x100000000) != 0)
      {
LABEL_37:
        v51 = sub_1AF65D480(v43, v45, v42, v34);
      }

      else
      {
        v51 = v50;
      }

      v52 = *(*(v6 + 88) + 8 * v51 + 32);
      v53 = *(v189 + 24);

      os_unfair_lock_unlock(v53);
      v54 = **(v6 + v175);
      v55 = *(v54 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
      v56 = *v55;

      if (v56)
      {
        vfx_counters.add(_:_:)(*(v55 + 40), 1);
      }

      v57 = *(v54 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
      v58 = *v57;

      if (v58)
      {
        vfx_counters.add(_:_:)(*(v57 + 48), 1);
      }

      v59 = *(v52 + 204);
      if (*(v52 + 208))
      {
        v181 = 0;
        v182 = -1;
      }

      else
      {

        v60 = sub_1AF65B2E4();

        v181 = v60 & 0xFFFFFFFF00000000;
        v182 = v60;
      }

      v61 = *(v54 + 16);
      v62 = *(*(*(v61 + 88) + 8 * v59 + 32) + 200);

      if (v62 == 1)
      {
        *(v61 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
      }

      v63 = *(v61 + 136);
      swift_retain_n();
      os_unfair_lock_lock(v63);
      if (!sub_1AF62173C(v59))
      {
        sub_1AF6AFD3C(v59);
      }

      v64 = 36;
      if (v183)
      {
        v64 = 32;
      }

      v65 = *(*(v61 + 104) + 40 * v59 + v64 + 32);
      if (v65 == -1)
      {
        goto LABEL_69;
      }

      v66 = *(*(v61 + 144) + 8 * v65 + 32);
      if (*(v66 + 32))
      {
        if ((a3 & 0x100000000) == 0)
        {
          goto LABEL_69;
        }
      }

      else if ((a3 & 0x100000000) != 0 || *(v66 + 28) != a3)
      {
        goto LABEL_69;
      }

      if (!os_unfair_lock_trylock(*(v66 + 376)))
      {
        goto LABEL_69;
      }

      os_unfair_lock_lock(*(v66 + 344));
      os_unfair_lock_unlock(*(v66 + 376));
      if ((*(v66 + 121) & 1) == 0 && *(v66 + 240) >= *(v66 + 88))
      {
        os_unfair_lock_unlock(*(v66 + 344));
LABEL_69:
        os_unfair_lock_unlock(*(v61 + 136));
        v72 = sub_1AF624654();
        v179 = v54;
        if ((v72 & 0x100000000) != 0)
        {
          v73 = *(*(v61 + 144) + 16);
          type metadata accessor for ComponentsDataChunk();
          swift_allocObject();

          v79 = sub_1AF64BF6C(v78, v174 | ((HIDWORD(a3) & 1) << 32), v59, v183 & 1, v73);

          _swift_stdlib_immortalize();

          v76 = *(v61 + 144);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + 144) = v76;
          v173 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC05EFC(0, *(v76 + 2) + 1, 1);
            v76 = *(v61 + 144);
          }

          v59 = *(v76 + 2);
          v81 = *(v76 + 3);
          if (v59 >= v81 >> 1)
          {
            sub_1AFC05EFC(v81 > 1, v59 + 1, 1);
            v76 = *(v61 + 144);
          }

          *(v76 + 2) = v59 + 1;
          *&v76[8 * v59 + 32] = v79;
          LODWORD(v59) = v173;
        }

        else
        {
          v73 = v72;
          type metadata accessor for ComponentsDataChunk();
          swift_allocObject();

          v75 = sub_1AF64BF6C(v74, v174 | ((HIDWORD(a3) & 1) << 32), v59, v183 & 1, v73);

          _swift_stdlib_immortalize();

          v76 = *(v61 + 144);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + 144) = v76;
          if ((v77 & 1) == 0)
          {
            v76 = sub_1AF6247B0(v76);
          }

          *&v76[8 * v73 + 32] = v75;
        }

        *(v61 + 144) = v76;
        v82 = *(v61 + 104);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 104) = v82;
        if ((v83 & 1) == 0)
        {
          v82 = sub_1AFC0D9B8(v82);
          *(v61 + 104) = v82;
        }

        v84 = v59;
        v85 = &v82[40 * v59];
        if (v183)
        {
          v86 = *(v85 + 4);
          v87 = swift_isUniquelyReferenced_nonNull_native();
          *(v85 + 4) = v86;
          if ((v87 & 1) == 0)
          {
            v86 = sub_1AF420E8C(0, *(v86 + 2) + 1, 1, v86);
            *(v85 + 4) = v86;
          }

          v89 = *(v86 + 2);
          v88 = *(v86 + 3);
          if (v89 >= v88 >> 1)
          {
            v86 = sub_1AF420E8C(v88 > 1, v89 + 1, 1, v86);
            *(v85 + 4) = v86;
          }

          *(v86 + 2) = v89 + 1;
          *&v86[4 * v89 + 32] = v73;
          *(v85 + 16) = v73;
          v54 = v179;
        }

        else
        {
          v90 = *(v85 + 5);
          sub_1AF64B7B0(v90, v90, v73);
          *(v85 + 5) = v90 + 1;
          *(v85 + 17) = v73;
        }

        v85[56] = 1;
        v7 = *(*(v61 + 144) + 8 * v73 + 32);
        v91 = *(v7 + 376);

        v92 = os_unfair_lock_trylock(v91);
        v67 = v182;
        if (!v92)
        {
          goto LABEL_170;
        }

        os_unfair_lock_lock(*(v7 + 344));
        os_unfair_lock_unlock(*(v7 + 376));
        if ((*(v7 + 121) & 1) == 0 && *(v7 + 240) >= *(v7 + 88))
        {
          goto LABEL_169;
        }

        v93 = sub_1AF622B60(v182);
        if ((*(v52 + 208) & 1) == 0)
        {
          v94 = *(*(v54 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v182;
          *v94 = *(v7 + 188);
          *(v94 + 4) = v93;
          *(v94 + 6) = v84;
        }

        if ((v184 & 1) != 0 && *(v52 + 212) == 1)
        {
          v95 = *(v7 + 192);
          if (v95)
          {
            v96 = *(v7 + 208);
            *(v95 + 8 * (v93 >> 6)) |= 1 << v93;
            *(v96 + 8 * (v93 >> 6)) &= ~(1 << v93);
          }

          sub_1AF705804(v93);
        }

        os_unfair_lock_unlock(*(v7 + 344));

        goto LABEL_98;
      }

      v67 = v182;
      v68 = sub_1AF622B60(v182);
      if ((*(v52 + 208) & 1) == 0)
      {
        v69 = *(*(v54 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v182;
        *v69 = *(v66 + 188);
        *(v69 + 4) = v68;
        *(v69 + 6) = v59;
      }

      if ((v184 & 1) != 0 && *(v52 + 212) == 1)
      {
        v70 = *(v66 + 192);
        if (v70)
        {
          v71 = *(v66 + 208);
          *(v70 + 8 * (v68 >> 6)) |= 1 << v68;
          *(v71 + 8 * (v68 >> 6)) &= ~(1 << v68);
        }

        sub_1AF705804(v68);
      }

      os_unfair_lock_unlock(*(v66 + 344));
      os_unfair_lock_unlock(*(v61 + 136));
LABEL_98:
      v10 &= v10 - 1;

      sub_1AF634024(v181 | v67, v186);

      v5 = v198;
      v11 = v193;
      v7 = v176;
      v6 = v200;
      v13 = v178;
      if (!v10)
      {
        goto LABEL_4;
      }
    }

LABEL_22:
    v184 = 1;
    goto LABEL_23;
  }

LABEL_4:
  while (1)
  {
    v14 = v12 + 1;
    if (v12 + 1 >= v13)
    {
      break;
    }

    v10 = *(v7 + 8 * v12++ + 72);
    if (v10)
    {
      v12 = v14;
      goto LABEL_7;
    }
  }

  v97 = *v195;
  v98 = 1 << *(*v195 + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v6;
  v101 = v99 & *(*v195 + 64);
  v102 = (v100 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v7 = (v98 + 63) >> 6;

  v103 = 0;
  v185 = v97;
  v187 = v7;
  v190 = v102;
LABEL_104:
  if (v101)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v104 = v103 + 1;
    if (v103 + 1 >= v7)
    {
      break;
    }

    v101 = *(v97 + 8 * v103++ + 72);
    if (v101)
    {
      v103 = v104;
LABEL_108:
      v105 = (v103 << 9) | (8 * __clz(__rbit64(v101)));
      v106 = (*(v97 + 48) + v105);
      v107 = *v106;
      v108 = v106[1];
      v109 = v107 == -1 && v108 == 0;
      if (v109 || v107 < 0 || v11[1] <= v107)
      {
        goto LABEL_168;
      }

      v110 = *v11 + 12 * v107;
      if (v108 != -1 && *(v110 + 8) != v108)
      {
        goto LABEL_168;
      }

      v112 = (*(v97 + 56) + v105);
      v114 = *v112;
      v113 = v112[1];
      if (v114 == -1 && v113 == 0)
      {
        goto LABEL_168;
      }

      if (v114 < 0)
      {
        goto LABEL_168;
      }

      if (v102[1] <= v114)
      {
        goto LABEL_168;
      }

      v7 = *(v110 + 4);
      v116 = (*v102 + 12 * v114);
      if (v113 != -1 && v116[2] != v113)
      {
        goto LABEL_168;
      }

      v117 = *(v116 + 2);
      v118 = *(*(v200 + 144) + 8 * *v116 + 32);

      sub_1AF649128(v7, v117, v118);
      v119 = *(*(*(v118 + 40) + 24) + 16);
      if (v119)
      {
        v120 = *(v118 + 128);
        v121 = v5;
        v122 = ( + 56);
        do
        {
          sub_1AF641904(v120 + *(v122 - 1) * v117 + *v122, v121, &off_1F2532090, *(v122 - 3), *(v122 - 2));
          v122 += 5;
          --v119;
        }

        while (v119);

        v5 = v121;
        v97 = v185;
      }

      v101 &= v101 - 1;

      v11 = v193;
      v7 = v187;
      v102 = v190;
      goto LABEL_104;
    }
  }

  v124 = sub_1AF62B8A4(v123);

  v191 = *(v124 + 16);
  if (v191)
  {
    v125 = 0;
    v188 = v124 + 32;
    v126 = v195;
    do
    {
      v127 = *(v188 + 16 * v125);
      v128 = *(a2 + 216);
      v197 = v127;
      v194 = v125;
      if (*(v128 + 16) && (v129 = sub_1AF449CB8(v127), (v130 & 1) != 0))
      {
        v131 = *(*(v128 + 56) + 24 * v129);

        v132 = *(v131 + 16);
        if (v132)
        {
          goto LABEL_155;
        }
      }

      else
      {
        v131 = MEMORY[0x1E69E7CC0];
        v132 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v132)
        {
LABEL_155:
          v159 = (v131 + 40);
          v133 = MEMORY[0x1E69E7CC0];
          do
          {
            v161 = *v126;
            if (*(*v126 + 16))
            {
              v162 = *v159;
              v163 = sub_1AF449D3C(*(v159 - 1));
              if (v164)
              {
                v165 = *v126;
                if (*(*v126 + 16))
                {
                  v166 = *(*(v161 + 56) + 8 * v163);
                  v167 = sub_1AF449D3C(v162);
                  if (v168)
                  {
                    v169 = *(*(v165 + 56) + 8 * v167);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v133 = sub_1AF4230FC(0, *(v133 + 2) + 1, 1, v133);
                    }

                    v171 = *(v133 + 2);
                    v170 = *(v133 + 3);
                    if (v171 >= v170 >> 1)
                    {
                      v133 = sub_1AF4230FC(v170 > 1, v171 + 1, 1, v133);
                    }

                    *(v133 + 2) = v171 + 1;
                    v160 = &v133[16 * v171];
                    *(v160 + 4) = v166;
                    *(v160 + 5) = v169;
                  }
                }
              }
            }

            v159 += 2;
            --v132;
          }

          while (v132);
          goto LABEL_138;
        }
      }

      v133 = MEMORY[0x1E69E7CC0];
LABEL_138:

      v134 = *(v133 + 2);
      if (v134)
      {
        v135 = (v133 + 32);
        do
        {
          v136 = vceq_s32(*v135, 0xFFFFFFFFLL);
          if ((v136.i32[0] & v136.i32[1] & 1) == 0)
          {
            v199 = *v135->i8;
            v137 = swift_allocObject();
            *(v137 + 16) = v197;
            v138 = swift_allocObject();
            *(v138 + 16) = sub_1AF63534C;
            *(v138 + 24) = v137;
            v139 = swift_isUniquelyReferenced_nonNull_native();
            *&v214[0] = *(v200 + 216);
            v7 = *&v214[0];
            *(v200 + 216) = 0x8000000000000000;
            v140 = sub_1AF449CB8(v197);
            v142 = v141;
            v143 = *(v7 + 16) + ((v141 & 1) == 0);
            if (*(v7 + 24) >= v143)
            {
              if ((v139 & 1) == 0)
              {
                sub_1AF848B00();
                v7 = *&v214[0];
              }
            }

            else
            {
              sub_1AF834194(v143, v139);
              v7 = *&v214[0];
              v144 = sub_1AF449CB8(v197);
              if ((v142 & 1) != (v145 & 1))
              {
                sub_1AFDFF1A8();
                __break(1u);
                goto LABEL_168;
              }

              v140 = v144;
            }

            *(v200 + 216) = v7;

            v147 = *(v200 + 216);
            if ((v142 & 1) == 0)
            {
              v148 = (*(v138 + 16))(v146);
              v147[(v140 >> 6) + 8] |= 1 << v140;
              *(v147[6] + 8 * v140) = v197;
              v149 = (v147[7] + 24 * v140);
              *v149 = v148;
              v149[1] = v150;
              v149[2] = v151;
              ++v147[2];
            }

            v152 = (v147[7] + 24 * v140);
            v153 = *v152;
            v154 = swift_isUniquelyReferenced_nonNull_native();
            *v152 = v153;
            if ((v154 & 1) == 0)
            {
              v153 = sub_1AF4230FC(0, *(v153 + 2) + 1, 1, v153);
              *v152 = v153;
            }

            v156 = *(v153 + 2);
            v155 = *(v153 + 3);
            v157 = v199;
            if (v156 >= v155 >> 1)
            {
              v158 = sub_1AF4230FC(v155 > 1, v156 + 1, 1, v153);
              v157 = v199;
              v153 = v158;
              *v152 = v158;
            }

            *(v153 + 2) = v156 + 1;
            *&v153[16 * v156 + 32] = v157;

            v126 = v195;
          }

          v135 += 2;
          --v134;
        }

        while (v134);
      }

      v125 = v194 + 1;
    }

    while (v194 + 1 != v191);
  }
}

uint64_t sub_1AF631D00(uint64_t result, uint64_t a2, int a3, unint64_t a4, Swift::Int a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v121 = a7;
  v122 = a8;
  v127 = a5;
  if (a5 < 1)
  {
    return result;
  }

  v116 = a4;
  LODWORD(v124) = result;
  v169 = v8;
  v11 = a6;
  v12 = *(a6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v13 = *v12;

  if (v13)
  {
    vfx_counters.add(_:_:)(*(v12 + 40), v127);
  }

  v117 = a3;

  v14 = *(v11 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v15 = *v14;

  if (v15)
  {
    vfx_counters.add(_:_:)(*(v14 + 48), v127);
  }

  ecs_stack_allocator_push_snapshot(*(v11 + 32));
  v120 = *(a2 + 204);
  v16 = ecs_stack_allocator_allocate(*(v11 + 32), 4 * v127, 4);
  v118 = (4 * v127) >> 2;
  v119 = v11;
  v123 = a2;
  v17 = *(a2 + 208);
  v125 = v16;
  if ((v17 & 1) == 0)
  {
    v32 = 0;
    do
    {
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

        v33 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
        v34 = &v47[12 * v46];
        *(v34 - 12) = -1;
        *(v34 - 1) = v33;
        *(v36 + v38) = v39;
        v11 = v119;
        v16 = v125;
        v35 = v126;
      }

      *(v36 + v38) = *(*(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39);
      os_unfair_lock_unlock(*(v35 + 24));

      *(v16 + v32++) = v39;
    }

    while (v32 != v127);
  }

  v134 = 0;
  v18 = v16;
  v19 = v123;
  v20 = v120;
  v21 = v127 / *(v123 + 64) + 2 * *(*(*(*(v11 + 16) + 104) + 40 * v120 + 32) + 16) + 1;
  v22 = ecs_stack_allocator_allocate(*(v11 + 32), 24 * v21, 8);
  v132[0] = v22;
  v132[1] = v21;
  v133 = 0;
  v23 = *(v11 + 16);

  v24 = v118;
  v128 = 0;
  v129 = v118;
  v130 = v18;
  v131 = v118;
  if (v118 < 1)
  {

    v31 = 0;
  }

  else
  {
    v127 = &v115;
    v25 = v116;
    v26 = v116;

    v27 = v26 | ((HIDWORD(v25) & 1) << 32);
    v28 = v117;
    v29 = v125;
    v30 = v119;
    do
    {

      sub_1AF6253B8(v20, v27, v28 & 1, v23, &v128, v19, v29, v24, &v134, v30, v20, v132);
    }

    while (v129 - v128 > 0);

    v31 = v133;
    v22 = v132[0];
  }

  v52 = v119;
  v53 = ecs_stack_allocator_allocate(*(v119 + 32), 48 * v31, 8);
  v54 = v53;
  if (v31)
  {
    v55 = 0;
    v56 = v22 + 2;
    v57 = v53;
    v58 = v31;
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

  v63 = *(v52 + 16);
  v64 = qword_1ED72D720;

  if (v64 != -1)
  {
    swift_once();
  }

  v163 = qword_1ED73B840;
  v164 = 0;
  v165 = 2;
  v166 = 0;
  v167 = 2;
  v168 = 0;

  sub_1AF6BA460(v63, v52, &v163, v54, v31, v31, &v135);
  if (v124)
  {
    if (v142 > 0)
    {
      v65 = v139;
      if (v139)
      {
        v120 = v142;
        v66 = v141;
        v127 = *(v141 + 32);
        v118 = v140;
        LODWORD(v126) = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v67 = (v138 + 24);
        while (1)
        {
          v68 = *(v67 - 6);
          v69 = *(v67 - 5);
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

          ecs_stack_allocator_push_snapshot(v127);
          v75 = *(v66 + 64);
          v149[0] = *(v66 + 48);
          v149[1] = v75;
          v150 = *(v66 + 80);
          v76 = *(*(*(*(v73 + 40) + 16) + 32) + 16) + 1;
          *(v66 + 48) = ecs_stack_allocator_allocate(*(v66 + 32), 48 * v76, 8);
          *(v66 + 56) = v76;
          *(v66 + 72) = 0;
          *(v66 + 80) = 0;
          *(v66 + 64) = 0;
          LOBYTE(v128) = 1;
          v151[0] = v118;
          v151[1] = v73;
          v151[2] = v66;
          v151[3] = v70;
          v151[4] = (v69 - v68 + v70);
          v151[5] = v120;
          v151[6] = v68;
          v151[7] = v69;
          v151[8] = 0;
          v151[9] = 0;
          v152 = 1;
          v153 = v71;
          v154 = v124;
          v155 = v123;
          v77 = v169;
          sub_1AF6C5D04(v151, v121, v122);
          if (v77)
          {
            break;
          }

          v143[0] = v135;
          v143[1] = v136;
          v144 = v137;
          sub_1AF630994(v66, v143, v149);
          v169 = 0;
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

          ecs_stack_allocator_pop_snapshot(v127);
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
    sub_1AF63B864(&v135);
    return ecs_stack_allocator_pop_snapshot(*(v119 + 32));
  }

  if (v142 <= 0)
  {
    goto LABEL_86;
  }

  v89 = v139;
  if (!v139)
  {
    goto LABEL_86;
  }

  v120 = v142;
  v90 = v141;
  v91 = *(v141 + 32);
  v118 = v140;
  v92 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v93 = (v138 + 24);
  LODWORD(v123) = v92;
  v124 = v91;
  while (1)
  {
    v95 = *(v93 - 6);
    v94 = *(v93 - 5);
    v96 = *(v93 - 4);
    v97 = *v93;
    v127 = *(v93 - 1);
    v125 = v89;
    v126 = v97;
    v98 = v93[1];
    v99 = v93[2];
    if (v92)
    {
      v100 = *(v99 + 376);

      os_unfair_lock_lock(v100);
      os_unfair_lock_lock(*(v99 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v91);
    v101 = *(v90 + 64);
    v156[0] = *(v90 + 48);
    v156[1] = v101;
    v157 = *(v90 + 80);
    v102 = *(*(*(*(v99 + 40) + 16) + 32) + 16) + 1;
    *(v90 + 48) = ecs_stack_allocator_allocate(*(v90 + 32), 48 * v102, 8);
    *(v90 + 56) = v102;
    *(v90 + 72) = 0;
    *(v90 + 80) = 0;
    *(v90 + 64) = 0;
    LOBYTE(v128) = 1;
    v158[0] = v118;
    v158[1] = v99;
    v158[2] = v90;
    v158[3] = v96;
    v158[4] = (v94 - v95 + v96);
    v158[5] = v120;
    v158[6] = v95;
    v158[7] = v94;
    v158[8] = 0;
    v158[9] = 0;
    v159 = 1;
    v160 = v127;
    v161 = v126;
    v162 = v98;
    v103 = v169;
    sub_1AF6C5D04(v158, v121, v122);
    if (v103)
    {
      break;
    }

    v145[0] = v135;
    v145[1] = v136;
    v146 = v137;
    sub_1AF630994(v90, v145, v156);
    v169 = 0;
    if (*(*(v90 + 104) + 16))
    {

      sub_1AF62F348(v104, v99);

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
        v112 = *(v99 + 232);
        v113 = *(v99 + 256);
        if (v112 == v113)
        {
          v114 = *(v99 + 240);
        }

        else
        {
          sub_1AF6497A0(v113, v112);
          v113 = *(v99 + 232);
          v114 = *(v99 + 240);
          if (v114 == v113)
          {
            v114 = 0;
            v113 = 0;
            *(v99 + 232) = 0;
            *(v99 + 240) = 0;
          }
        }

        *(v99 + 248) = v114;
        *(v99 + 256) = v113;
      }
    }

    v91 = v124;
    ecs_stack_allocator_pop_snapshot(v124);
    v92 = v123;
    if (v123)
    {
      os_unfair_lock_unlock(*(v99 + 344));
      os_unfair_lock_unlock(*(v99 + 376));
    }

    v93 += 6;
    v89 = (v125 - 1);
    if (v125 == 1)
    {
      goto LABEL_86;
    }
  }

  v147[0] = v135;
  v147[1] = v136;
  v148 = v137;
  sub_1AF630994(v90, v147, v156);
  sub_1AF62D29C(v99);
  ecs_stack_allocator_pop_snapshot(v124);
  if (v123)
  {
    os_unfair_lock_unlock(*(v99 + 344));
    os_unfair_lock_unlock(*(v99 + 376));
  }

  sub_1AF63B864(&v135);
  return ecs_stack_allocator_pop_snapshot(*(v119 + 32));
}

uint64_t sub_1AF63291C(uint64_t result, uint64_t a2, char a3, unint64_t a4, Swift::Int a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (a5 < 1)
  {
    return result;
  }

  v9 = a8;
  v116 = result;
  v171 = v8;
  v11 = *(a8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v12 = *v11;

  if (v12)
  {
    vfx_counters.add(_:_:)(*(v11 + 40), a5);
  }

  v13 = *(v9 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  v14 = *v13;

  v15 = a5;
  if (v14)
  {
    vfx_counters.add(_:_:)(*(v13 + 48), a5);
  }

  ecs_stack_allocator_push_snapshot(*(v9 + 32));
  v106 = *(a2 + 204);
  v125 = v9;
  v126 = ecs_stack_allocator_allocate(*(v9 + 32), 4 * a5, 4);
  v109 = a2;
  if ((*(a2 + 208) & 1) == 0)
  {
    for (i = 0; i != v15; ++i)
    {
      v61 = v9;
      v63 = *(v9 + 16);
      v62 = v63 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
      v64 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

      os_unfair_lock_lock(v64);
      ++*(v63 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
      v65 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
      LODWORD(v66) = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
      if (v66 == -1)
      {
        v123 = v62;
        v67 = (v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v68 = OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity;
        v69 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v66 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
        v70 = 2 * *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
        *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = v70;
        v71 = swift_slowAlloc();
        *v67 = v71;
        v67[1] = v70;
        if (v71 != v69 || v71 >= &v69[12 * v66])
        {
          memmove(v71, v69, 12 * v66);
        }

        if (v69)
        {
          MEMORY[0x1B271DEA0](v69, -1, -1);
        }

        v73 = *(v63 + v68);
        v74 = *v67;
        v15 = a5;
        if (v73 - 1 != v66)
        {
          v75 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
          v76 = v66 + 1;
          do
          {
            v77 = *(v63 + v75);
            v78 = &v74[12 * v76 - 12];
            *v78 = v76;
            *(v78 + 1) = -1;
            *(v78 + 2) = v77;
            ++v76;
          }

          while (v73 != v76);
        }

        v59 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
        v60 = &v74[12 * v73];
        *(v60 - 12) = -1;
        *(v60 - 1) = v59;
        *(v63 + v65) = v66;
        v62 = v123;
        v61 = v125;
      }

      *(v63 + v65) = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66);
      os_unfair_lock_unlock(*(v62 + 24));

      *(v126 + i) = v66;
      v9 = v61;
    }
  }

  v136 = 0;
  v16 = v15 / *(v109 + 64) + 2 * *(*(*(*(v9 + 16) + 104) + 40 * v106 + 32) + 16) + 1;
  v133 = ecs_stack_allocator_allocate(*(v9 + 32), 24 * v16, 8);
  v134 = v16;
  v135 = 0;
  v17 = *(v9 + 16);

  MEMORY[0x1EEE9AC00](v18, v19);
  v129 = 0;
  v130 = (4 * a5) >> 2;
  v131 = v126;
  v132 = v130;
  if (v130 >= 1)
  {
    do
    {
      sub_1AF625BF8(v106, a4 | ((HIDWORD(a4) & 1) << 32), a3 & 1, v17, &v129, sub_1AF63B828);
    }

    while (v130 - v129 > 0);
  }

  v20 = v135;
  v21 = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v135, 8);
  v22 = v21;
  if (v20)
  {
    v23 = 0;
    v24 = v133 + 2;
    v25 = v21;
    v26 = v20;
    do
    {
      v27 = *(v24 - 2);
      v28 = *(v24 - 1);
      v29 = *v24;
      v24 += 3;
      v30 = v23 - v28 + v29;
      *v25 = v28;
      *(v25 + 1) = v29;
      *(v25 + 2) = v23;
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = v27;

      v25 += 6;
      v23 = v30;
      --v26;
    }

    while (v26);
  }

  v31 = v125;
  v32 = *(v125 + 16);
  v33 = qword_1ED72D720;

  if (v33 != -1)
  {
    swift_once();
  }

  v165 = qword_1ED73B840;
  v166 = 0;
  v167 = 2;
  v168 = 0;
  v169 = 2;
  v170 = 0;

  sub_1AF6BA460(v32, v125, &v165, v22, v20, v20, &v137);
  if (v116)
  {
    if (v144 >= 1)
    {
      v34 = v141;
      if (v141)
      {
        v113 = v144;
        v35 = v143;
        v36 = *(v143 + 32);
        v107 = v36;
        v110 = v142;
        v37 = *(v142 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v38 = (v140 + 24);
        v104 = v37;
        while (1)
        {
          v39 = *(v38 - 6);
          v40 = *(v38 - 5);
          v41 = *(v38 - 4);
          v120 = *v38;
          v122 = *(v38 - 1);
          v42 = v38[2];
          v117 = v38[1];
          v127 = v34;
          if (v37)
          {
            v43 = *(v42 + 376);

            os_unfair_lock_lock(v43);
            os_unfair_lock_lock(*(v42 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v36);
          v44 = *(v35 + 64);
          v151[0] = *(v35 + 48);
          v151[1] = v44;
          v152 = *(v35 + 80);
          v45 = *(*(*(*(v42 + 40) + 16) + 32) + 16) + 1;
          *(v35 + 48) = ecs_stack_allocator_allocate(*(v35 + 32), 48 * v45, 8);
          *(v35 + 56) = v45;
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          *(v35 + 64) = 0;
          LOBYTE(v129) = 1;
          v153[0] = v110;
          v153[1] = v42;
          v153[2] = v35;
          v153[3] = v41;
          v153[4] = (v40 - v39 + v41);
          v153[5] = v113;
          v153[6] = v39;
          v153[7] = v40;
          v153[8] = 0;
          v153[9] = 0;
          v154 = 1;
          v155 = v122;
          v156 = v120;
          v157 = v117;
          v46 = v171;
          a6(v153);
          if (v46)
          {
            break;
          }

          v145[0] = v137;
          v145[1] = v138;
          v146 = v139;
          sub_1AF630994(v35, v145, v151);
          v171 = 0;
          v31 = v125;
          v37 = v104;
          if (*(*(v35 + 104) + 16))
          {

            sub_1AF62F348(v47, v42);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = *(v35 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v50 = v49[2];
              v51 = swift_isUniquelyReferenced_nonNull_native();
              *(v35 + 104) = v49;
              if ((v51 & 1) == 0)
              {
                v49 = sub_1AF420EA0(0, v50, 1, v49);
                *(v35 + 104) = v49;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v50)
              {
                v52 = v49[2] - v50;
                memmove(v49 + 4, &v49[9 * v50 + 4], 72 * v52);
                v49[2] = v52;
              }

              *(v35 + 104) = v49;
            }

            else
            {
              v53 = MEMORY[0x1E69E7CC0];
              if (v49[3] >= 2uLL)
              {
                sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                v53 = swift_allocObject();
                v54 = j__malloc_size_0(v53);
                v53[2] = 0;
                v53[3] = 2 * ((v54 - 32) / 72);
              }

              *(v35 + 104) = v53;
            }

            if (*(*(v35 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v55 = *(v42 + 232);
              v56 = *(v42 + 256);
              if (v55 == v56)
              {
                v57 = *(v42 + 240);
              }

              else
              {
                sub_1AF6497A0(v56, v55);
                v56 = *(v42 + 232);
                v57 = *(v42 + 240);
                if (v57 == v56)
                {
                  v57 = 0;
                  v56 = 0;
                  *(v42 + 232) = 0;
                  *(v42 + 240) = 0;
                }
              }

              *(v42 + 248) = v57;
              *(v42 + 256) = v56;
            }
          }

          v36 = v107;
          ecs_stack_allocator_pop_snapshot(v107);
          if (v104)
          {
            os_unfair_lock_unlock(*(v42 + 344));
            os_unfair_lock_unlock(*(v42 + 376));
          }

          v38 += 6;
          v34 = v127 - 1;
          if (v127 == 1)
          {
            goto LABEL_83;
          }
        }

        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

LABEL_83:
    sub_1AF63B864(&v137);
    return ecs_stack_allocator_pop_snapshot(*(v31 + 32));
  }

  if (v144 < 1)
  {
    goto LABEL_83;
  }

  v79 = v141;
  if (!v141)
  {
    goto LABEL_83;
  }

  v114 = v144;
  v80 = v143;
  v81 = *(v143 + 32);
  v108 = v81;
  v111 = v142;
  v82 = *(v142 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v83 = (v140 + 24);
  v105 = v82;
  while (1)
  {
    v85 = *(v83 - 6);
    v84 = *(v83 - 5);
    v86 = *(v83 - 4);
    v128 = *(v83 - 1);
    v124 = *v83;
    v87 = v83[2];
    v118 = v79;
    v121 = v83[1];
    if (v82)
    {
      v88 = *(v87 + 376);

      os_unfair_lock_lock(v88);
      os_unfair_lock_lock(*(v87 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v81);
    v89 = *(v80 + 64);
    v158[0] = *(v80 + 48);
    v158[1] = v89;
    v159 = *(v80 + 80);
    v90 = *(*(*(*(v87 + 40) + 16) + 32) + 16) + 1;
    *(v80 + 48) = ecs_stack_allocator_allocate(*(v80 + 32), 48 * v90, 8);
    *(v80 + 56) = v90;
    *(v80 + 72) = 0;
    *(v80 + 80) = 0;
    *(v80 + 64) = 0;
    LOBYTE(v129) = 1;
    v160[0] = v111;
    v160[1] = v87;
    v160[2] = v80;
    v160[3] = v86;
    v160[4] = (v84 - v85 + v86);
    v160[5] = v114;
    v160[6] = v85;
    v160[7] = v84;
    v160[8] = 0;
    v160[9] = 0;
    v161 = 1;
    v162 = v128;
    v163 = v124;
    v164 = v121;
    v91 = v171;
    a6(v160);
    if (v91)
    {
      break;
    }

    v147[0] = v137;
    v147[1] = v138;
    v148 = v139;
    sub_1AF630994(v80, v147, v158);
    v171 = 0;
    v31 = v125;
    v82 = v105;
    if (*(*(v80 + 104) + 16))
    {

      sub_1AF62F348(v92, v87);

      v93 = swift_isUniquelyReferenced_nonNull_native();
      v94 = *(v80 + 104);
      if (v93)
      {
        v95 = v94[2];
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *(v80 + 104) = v94;
        if ((v96 & 1) == 0)
        {
          v94 = sub_1AF420EA0(0, v95, 1, v94);
          *(v80 + 104) = v94;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v95)
        {
          v97 = v94[2] - v95;
          memmove(v94 + 4, &v94[9 * v95 + 4], 72 * v97);
          v94[2] = v97;
        }

        *(v80 + 104) = v94;
      }

      else
      {
        v98 = MEMORY[0x1E69E7CC0];
        if (v94[3] >= 2uLL)
        {
          sub_1AF63B8B8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
          v98 = swift_allocObject();
          v99 = j__malloc_size_0(v98);
          v98[2] = 0;
          v98[3] = 2 * ((v99 - 32) / 72);
        }

        *(v80 + 104) = v98;
      }

      if (*(*(v80 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v100 = *(v87 + 232);
        v101 = *(v87 + 256);
        if (v100 == v101)
        {
          v102 = *(v87 + 240);
        }

        else
        {
          sub_1AF6497A0(v101, v100);
          v101 = *(v87 + 232);
          v102 = *(v87 + 240);
          if (v102 == v101)
          {
            v102 = 0;
            v101 = 0;
            *(v87 + 232) = 0;
            *(v87 + 240) = 0;
          }
        }

        *(v87 + 248) = v102;
        *(v87 + 256) = v101;
      }
    }

    v81 = v108;
    ecs_stack_allocator_pop_snapshot(v108);
    if (v105)
    {
      os_unfair_lock_unlock(*(v87 + 344));
      os_unfair_lock_unlock(*(v87 + 376));
    }

    v83 += 6;
    v79 = v118 - 1;
    if (v118 == 1)
    {
      goto LABEL_83;
    }
  }

  v149[0] = v137;
  v149[1] = v138;
  v150 = v139;
  sub_1AF630994(v80, v149, v158);
  sub_1AF62D29C(v87);
  ecs_stack_allocator_pop_snapshot(v108);
  if (v105)
  {
    os_unfair_lock_unlock(*(v87 + 344));
    os_unfair_lock_unlock(*(v87 + 376));
  }

  sub_1AF63B864(&v137);
  return ecs_stack_allocator_pop_snapshot(*(v125 + 32));
}

uint64_t sub_1AF633540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, __int16 a9)
{
  v16 = *(a4 + 208);

  if ((v16 & 1) == 0 && a2 != a3)
  {
    v17 = *a7;
    v18 = a2;
    do
    {
      v19 = *(a1 + 188);
      v20 = *(*(a8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a5 + 4 * v17);
      *(v20 + 4) = v18;
      *v20 = v19;
      *(v20 + 6) = a9;
      v17 = *a7 + 1;
      *a7 = v17;
      ++v18;
    }

    while (a3 != v18);
  }

  if (*(a4 + 212) == 1)
  {
    v21 = *(a1 + 192);
    if (v21 && a2 != a3)
    {
      v22 = *(a1 + 208);
      v23 = a2;
      do
      {
        *(v21 + 8 * (v23 >> 6)) |= 1 << v23;
        ++v23;
      }

      while (a3 != v23);
      v24 = a2;
      do
      {
        *(v22 + 8 * (v24 >> 6)) &= (-1 << v24) - 1;
        ++v24;
      }

      while (a3 != v24);
    }

    sub_1AF705690(a2, a3);
  }
}

uint64_t sub_1AF6336A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, __int16 a9, void *a10)
{
  v17 = *(a4 + 208);

  if ((v17 & 1) == 0 && a2 != a3)
  {
    v18 = *a7;
    v19 = a2;
    do
    {
      v20 = *(a1 + 188);
      v21 = *(*(a8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a5 + 4 * v18);
      *(v21 + 4) = v19;
      *v21 = v20;
      *(v21 + 6) = a9;
      v18 = *a7 + 1;
      *a7 = v18;
      ++v19;
    }

    while (a3 != v19);
  }

  if (*(a4 + 212) == 1)
  {
    v22 = *(a1 + 192);
    if (v22 && a2 != a3)
    {
      v23 = *(a1 + 208);
      v24 = a2;
      do
      {
        *(v22 + 8 * (v24 >> 6)) |= 1 << v24;
        ++v24;
      }

      while (a3 != v24);
      v25 = a2;
      do
      {
        *(v23 + 8 * (v25 >> 6)) &= (-1 << v25) - 1;
        ++v25;
      }

      while (a3 != v25);
    }

    sub_1AF705690(a2, a3);
  }

  v26 = a10[2];
  v27 = (*a10 + 24 * v26);
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;

  a10[2] = v26 + 1;
  return result;
}

unint64_t sub_1AF633818(uint64_t a1, uint64_t a2)
{

  v5 = sub_1AF66ED9C(a1, a2);
  v7 = v6;

  v8 = *(v2 + 80);
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = v8 + 32;
  while (*(*(v11 + 8 * v10) + 144) != v5)
  {
    if (v9 == ++v10)
    {
      goto LABEL_7;
    }
  }

  result = sub_1AF65D418(v7, v10);
  if ((result & 0x100000000) != 0)
  {
LABEL_7:

    return sub_1AF65D480(v5, v7, a1, a2);
  }

  return result;
}

uint64_t sub_1AF6338E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_1AF63391C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 48);

  v4 = sub_1AF64B03C(&type metadata for TextureFileAsset);
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 + 48 * v3;
  }

  v8 = sub_1AF64B03C(&type metadata for TextureLoadPolicy);
  v10 = v9;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8 + 4 * v3;
  }

  v12 = sub_1AF64B03C(&type metadata for TextureLoadingOptions);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 + (v3 << 6);
  }

  return a2(v7, v11, v15);
}