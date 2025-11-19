uint64_t sub_1AF9DF1F4(uint64_t a1, float *a2, _DWORD *a3, void *a4)
{
  result = sub_1AF64B110(&type metadata for ParticlePivot, &off_1F252D968, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9 && a2[2] == a2[3] && a2[4] == a2[5])
  {
    __asm { FMOV            V0.4S, #1.0 }

    _Q0.f32[0] = *a2;
    _Q0.f32[1] = a2[2];
    _Q0.f32[2] = a2[4];
    v16 = result;
    result = sub_1AF57EFBC(_Q0);
    *a3 = result;
    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = v17 - v18;
    if (v17 != v18)
    {
      v20 = *(a1 + 48);
      if (v19 < 8)
      {
        goto LABEL_9;
      }

      v20 = v18 + (v19 & 0xFFFFFFFFFFFFFFF8);
      v21 = vdupq_n_s32(result);
      v22 = (v16 + 4 * v18 + 16);
      v23 = v19 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v22[-1] = v21;
        *v22 = v21;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      if (v19 != (v19 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_9:
        v24 = v17 - v20;
        v25 = (v16 + 4 * v20);
        do
        {
          *v25++ = result;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = v27 - v26;
    if (v27 != v26)
    {
      v29 = v9 - v10;
      v30 = a2[2];
      v31 = a2[3] - v30;
      v32 = a2[4];
      v33 = a2[5] - v32;
      v34 = (result + 4 * v26);
      __asm { FMOV            V0.4S, #1.0 }

      v50 = HIDWORD(_Q0);
      v51 = *a2;
      do
      {
        v37 = a4[1];
        v36 = a4[2];
        v38 = a4[3] ^ v37;
        v39 = a4[4] ^ v36;
        v40 = v38 ^ v36;
        v41 = v39 ^ v37;
        v42 = v10 + (v29 * vcvts_n_f32_u64((9 * ((((5 * v36) >> 32) >> 25) | (640 * v36))) & 0xFFFFFF, 0x18uLL));
        v43 = v38 ^ (v36 << 17) ^ v41;
        v44 = __ROR8__(v39, 19);
        v45 = v43 ^ v40;
        v46 = v40 ^ v44 ^ v41;
        v47 = v43 ^ (v40 << 17) ^ v46;
        v48 = __ROR8__(v40 ^ v44, 19);
        a4[1] = v45 ^ v48 ^ v46;
        a4[2] = v47 ^ v45;
        a4[3] = v47 ^ (v45 << 17);
        a4[4] = __ROR8__(v45 ^ v48, 19);
        v49.i32[3] = v50;
        v49.f32[0] = v42;
        v49.f32[1] = v30 + (v31 * vcvts_n_f32_u64((9 * ((((5 * v40) >> 32) >> 25) | (640 * v40))) & 0xFFFFFF, 0x18uLL));
        v49.f32[2] = v32 + (v33 * vcvts_n_f32_u64((9 * ((((5 * v45) >> 32) >> 25) | (640 * v45))) & 0xFFFFFF, 0x18uLL));
        result = sub_1AF57EFBC(v49);
        v10 = v51;
        *a3 = result;
        *v34++ = result;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}

uint64_t sub_1AF9DF450(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CC7A8(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = HIDWORD(v6);
  v12 = HIDWORD(v8);
  if (v10)
  {
    v13 = 0.5;
  }

  else
  {
    v13 = *&v8;
  }

  if (v10)
  {
    LODWORD(v12) = 1056964608;
    v14 = 0.5;
  }

  else
  {
    v14 = *&v6;
  }

  if (v10)
  {
    LODWORD(v11) = 1056964608;
    v15 = 0.5;
  }

  else
  {
    v15 = *&v4;
  }

  if (v10)
  {
    v16 = 0.5;
  }

  else
  {
    v16 = *(&v4 + 1);
  }

  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v14;
  LODWORD(v21[3]) = v11;
  v21[4] = v13;
  LODWORD(v21[5]) = v12;
  v20 = -2139062144;
  v17 = a1[4];

  sub_1AF68A8E0(a1, v19);
  sub_1AF689324(v17, v2, v2, a1, v21, &v20);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9DF55C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v36 = *(a1 + 72);
  v37 = v3;
  v4 = *(a1 + 120);
  v38 = *(a1 + 104);
  v39 = v4;
  v5 = *(a1 + 24);
  v32 = v2;
  v33 = v5;
  v6 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v6;
  v8 = *(&v2 + 1);
  v7 = v2;

  v9 = sub_1AF3CC7A8(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    LODWORD(v13) = 1056964608;
    LODWORD(v16) = 1056964608;
    LODWORD(v11) = 1056964608;
    LODWORD(v17) = 1056964608;
    LODWORD(v9) = 1056964608;
    LODWORD(v18) = 1056964608;
  }

  else
  {
    v18 = HIDWORD(v9);
    v17 = HIDWORD(v11);
    v16 = HIDWORD(v13);
  }

  v31[0] = v9;
  v31[1] = v18;
  v31[2] = v11;
  v31[3] = v17;
  v31[4] = v13;
  v31[5] = v16;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_pivot_uniforms(0);
    sub_1AF6F4524(v31, 1, ObjectType, v20, v21, v22, v23, v24);
  }

  v25 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v26 = v34;

  v27 = v25;

  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1AFCBF008(v26, sub_1AF9D17D4);
}

uint64_t sub_1AF9DF7B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF9DFA64(0, &qword_1EB633B00, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DFA10();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF48C324();
  HIBYTE(v15) = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v16;
  HIBYTE(v15) = 1;
  sub_1AFDFE768();
  v12 = v16;
  HIBYTE(v15) = 2;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v16;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

unint64_t sub_1AF9DFA10()
{
  result = qword_1EB634178;
  if (!qword_1EB634178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634178);
  }

  return result;
}

void sub_1AF9DFA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9DFA10();
    v7 = a3(a1, &type metadata for ParticlePivotInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9DFADC()
{
  result = qword_1EB641A40;
  if (!qword_1EB641A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A40);
  }

  return result;
}

unint64_t sub_1AF9DFB34()
{
  result = qword_1EB634168;
  if (!qword_1EB634168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634168);
  }

  return result;
}

unint64_t sub_1AF9DFB8C()
{
  result = qword_1EB634170;
  if (!qword_1EB634170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634170);
  }

  return result;
}

uint64_t sub_1AF9DFBE0(uint64_t a1)
{
  v2 = sub_1AF9E0968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9DFC1C(uint64_t a1)
{
  v2 = sub_1AF9E0968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9DFC58(void *a1)
{
  sub_1AF9E090C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E0968();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

double sub_1AF9DFD84()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleID;
  *(v0 + 40) = &off_1F252DFA8;
  return result;
}

uint64_t sub_1AF9DFDF0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v3;
  v18 = *(a1 + 80);
  sub_1AF829154(&v10);
  sub_1AF688940(a1);
  v4 = v11;
  v5 = v12;
  v6 = v14;
  v7 = v15;
  v8 = v13 | 0x10;
  *(v2 + 16) = v10;
  *(v2 + 24) = v4;
  *(v2 + 28) = v5;
  *(v2 + 32) = v8;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AF9DFEA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  v3 = v2;

  sub_1AFCBF008(v1, sub_1AF9D17D4);
}

uint64_t sub_1AF9E0024(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 64);
  v91[0] = *(a1 + 48);
  v91[1] = v3;
  v92 = *(a1 + 80);

  sub_1AF6B06C0(v4, v91, 0x200000000, &v75);
  if (!v75)
  {
  }

  v61 = a1;
  v62 = v2;
  v5 = 0;
  v6 = v79;
  v7 = v80;
  v8 = v81;
  v9 = v76;
  v83 = v76;
  v84 = v77;
  v10 = -1;
  v74 = -1;
  v59 = v75;
  v60 = v82;
  v69 = v79;
  v70 = v78;
  v11 = 0;
  if (v82 < 1 || !v79)
  {
    goto LABEL_28;
  }

  v12 = 0;
  v58 = v80;
  v13 = *(v80 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v67 = *(v81 + 32);
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v63 = v13;
  do
  {
    v71 = v5;
    v14 = (v70 + 48 * v12);
    v15 = *v14;
    v65 = v14[1];
    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = *(v14 + 4);
    v19 = *(v14 + 5);
    if (v13)
    {
      v20 = *(v19 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v67);
    v21 = *(v8 + 64);
    v95[0] = *(v8 + 48);
    v95[1] = v21;
    v96 = *(v8 + 80);
    v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v22, 8);
    *(v8 + 56) = v22;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 64) = 0;
    v23 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, v17, v16, v18, v8);
    if (v15 == v65)
    {
      v5 = v71;
      v6 = v69;
      v13 = v63;
      goto LABEL_22;
    }

    v24 = v65 - v15;
    v5 = v71;
    v6 = v69;
    v13 = v63;
    if ((v65 - v15) > 7)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFF8) + v15;
      v26 = vdupq_n_s32(v11);
      v27 = vdupq_n_s32(v10);
      v28 = (v23 + 4 * v15 + 16);
      v29 = v24 & 0xFFFFFFFFFFFFFFF8;
      v30 = v26;
      v31 = v27;
      do
      {
        v32 = v28[-1];
        v27 = vminq_u32(v32, v27);
        v31 = vminq_u32(*v28, v31);
        v26 = vmaxq_u32(v32, v26);
        v30 = vmaxq_u32(*v28, v30);
        v28 += 2;
        v29 -= 8;
      }

      while (v29);
      v11 = vmaxvq_u32(vmaxq_u32(v26, v30));
      v10 = vminvq_u32(vminq_u32(v27, v31));
      if (v24 == (v24 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = v15;
    }

    v33 = v65 - v25;
    v34 = (v23 + 4 * v25);
    do
    {
      v36 = *v34++;
      v35 = v36;
      if (v36 < v10)
      {
        v10 = v35;
      }

      if (v35 > v11)
      {
        v11 = v35;
      }

      --v33;
    }

    while (v33);
LABEL_22:
    sub_1AF630994(v8, &v85, v95);
    sub_1AF62D29C(v19);
    ecs_stack_allocator_pop_snapshot(v67);
    if (v13)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    ++v12;
  }

  while (v12 != v6);
  v74 = v10;
  v7 = v58;
LABEL_28:
  thread_worker_index(v9);
  v39 = 12 * v38;

  v40 = sub_1AF757580(v39 + 12, 4);
  v42 = v41;

  if (v40)
  {
    v43 = 12 * ((v42 - v40) / 12) / 8;
  }

  else
  {
    v43 = 0;
  }

  *&v73 = v40;
  *(&v73 + 1) = v43;
  if (v60 >= 1 && v6)
  {
    v44 = v7;
    v45 = 0;
    v68 = *(v8 + 32);
    v46 = *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v88 = v59;
    v89 = v83;
    v90 = v84;
    v64 = v46;
    do
    {
      v72 = v5;
      v47 = (v70 + 48 * v45);
      v48 = *v47;
      v49 = v47[1];
      v50 = *(v47 + 2);
      v51 = *(v47 + 3);
      v52 = *(v47 + 5);
      v66 = *(v47 + 4);
      if (v46)
      {
        v53 = *(v52 + 376);

        os_unfair_lock_lock(v53);
        os_unfair_lock_lock(*(v52 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v68);
      v54 = *(v8 + 64);
      v93[0] = *(v8 + 48);
      v93[1] = v54;
      v94 = *(v8 + 80);
      v55 = *(*(*(*(v52 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v55, 8);
      *(v8 + 56) = v55;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      v56 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, v50, v51, v66, v8);
      if (v48 == v49)
      {
        v5 = v72;
        v46 = v64;
      }

      else
      {
        v57 = *(v52 + 188) << 32;
        v5 = v72;
        v46 = v64;
        do
        {
          *(v40 + 8 * (*(v56 + 4 * v48) - v10)) = v48 | v57 | 0x8000000000000000;
          ++v48;
        }

        while (v49 != v48);
      }

      sub_1AF630994(v8, &v88, v93);
      sub_1AF62D29C(v52);
      ecs_stack_allocator_pop_snapshot(v68);
      if (v46)
      {
        os_unfair_lock_unlock(*(v52 + 344));
        os_unfair_lock_unlock(*(v52 + 376));
      }

      ++v45;
    }

    while (v45 != v69);
  }

  sub_1AF680EC0(*(v61 + 32), v62, &v74, &v73);

  return sub_1AF5D1564(&v75);
}

uint64_t sub_1AF9E05C8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = a1[4];

  v4 = 0;
  v38 = sub_1AF67D524(v3, v2);
  v5 = *(v1 + 104);
  v56[0] = *(v1 + 88);
  v56[1] = v5;
  v57 = *(v1 + 120);
  sub_1AF6B06C0(v2, v56, 0x200000000, &v45);
  if (v45)
  {
    v36 = v1;
    v37 = v52;
    if (v52 >= 1)
    {
      v40 = v49;
      if (v49)
      {
        v6 = 0;
        v39 = v48;
        v7 = v51;
        v44 = *(v51 + 32);
        v43 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = v45;
        v54 = v46;
        v55 = v47;
        do
        {
          v42 = v4;
          v8 = (v39 + 48 * v6);
          v9 = *v8;
          v10 = v8[1];
          v11 = *(v8 + 2);
          v12 = *(v8 + 3);
          v13 = *(v8 + 4);
          v14 = *(v8 + 5);
          v41 = v8[2];
          if (v43)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v44);
          v16 = *(v7 + 64);
          v58[0] = *(v7 + 48);
          v58[1] = v16;
          v59 = *(v7 + 80);
          v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v17, 8);
          *(v7 + 56) = v17;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          v18 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, v11, v12, v13, v7);
          if (v9 == v10)
          {
            v4 = v42;
          }

          else
          {
            v19 = v37 + v9;
            v20 = v10 - v9;
            if ((v10 - v9) > 7)
            {
              v22 = v41;
              v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + v9;
              v23 = vdupq_n_s64(v9);
              v24 = vaddq_s64(v23, xmmword_1AFE21100);
              v25 = vaddq_s64(v23, xmmword_1AFE21110);
              v26 = vdupq_n_s64(v38 - v19 + v41);
              v27 = (v18 + 4 * v9 + 16);
              v28 = v20 & 0xFFFFFFFFFFFFFFF8;
              v29.i64[0] = 0x400000004;
              v29.i64[1] = 0x400000004;
              do
              {
                v30 = vuzp1q_s32(vaddq_s64(v26, v25), vaddq_s64(v26, v24));
                v27[-1] = v30;
                *v27 = vaddq_s32(v30, v29);
                v31 = vdupq_n_s64(8uLL);
                v24 = vaddq_s64(v24, v31);
                v25 = vaddq_s64(v25, v31);
                v27 += 2;
                v28 -= 8;
              }

              while (v28);
              v4 = v42;
              if (v20 == (v20 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v21 = v9;
              v22 = v41;
              v4 = v42;
            }

            v32 = v38 + v21 + v22 - v19;
            v33 = v10 - v21;
            v34 = (v18 + 4 * v21);
            do
            {
              *v34++ = v32++;
              --v33;
            }

            while (v33);
          }

LABEL_18:
          sub_1AF630994(v7, &v53, v58);
          sub_1AF62D29C(v14);
          ecs_stack_allocator_pop_snapshot(v44);
          if (v43)
          {
            os_unfair_lock_unlock(*(v14 + 344));
            os_unfair_lock_unlock(*(v14 + 376));
          }

          ++v6;
        }

        while (v6 != v40);
      }
    }

    sub_1AF5D1564(&v45);
    v1 = v36;
  }

  sub_1AF9E0024(v1);
}

void sub_1AF9E090C()
{
  if (!qword_1EB641A48)
  {
    sub_1AF9E0968();
    v0 = sub_1AFDFE9A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641A48);
    }
  }
}

unint64_t sub_1AF9E0968()
{
  result = qword_1EB641A50;
  if (!qword_1EB641A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A50);
  }

  return result;
}

unint64_t sub_1AF9E09D0()
{
  result = qword_1EB641A58;
  if (!qword_1EB641A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A58);
  }

  return result;
}

unint64_t sub_1AF9E0A28()
{
  result = qword_1EB641A60;
  if (!qword_1EB641A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A60);
  }

  return result;
}

double sub_1AF9E0AD8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = xmmword_1AFE8DF20;
  result = 0.0000000134110482;
  *(a1 + 20) = 0x3E4CCCCD3DCCCCCDLL;
  return result;
}

uint64_t sub_1AF9E0B04()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9E0BAC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF9E0C40()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9E0CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9E1954();
  *a1 = result;
  return result;
}

void sub_1AF9E0D14(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701080941;
  v4 = 0x65676E61527ALL;
  if (*v1 == 2)
  {
    v4 = 0x65676E615279;
  }

  if (*v1)
  {
    v3 = 0x65676E615278;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1AF9E0D78()
{
  v1 = 1701080941;
  v2 = 0x65676E61527ALL;
  if (*v0 == 2)
  {
    v2 = 0x65676E615279;
  }

  if (*v0)
  {
    v1 = 0x65676E615278;
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

uint64_t sub_1AF9E0DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9E1954();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9E0E00(uint64_t a1)
{
  v2 = sub_1AF9E1C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E0E3C(uint64_t a1)
{
  v2 = sub_1AF9E1C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9E0E78(void *a1)
{
  v3 = v1;
  sub_1AF9E1CA4(0, &qword_1EB641A68, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E1C50();
  sub_1AFDFF3F8();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1AF51D998();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = *(v3 + 4);
    v13 = 1;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    v12 = *(v3 + 12);
    v13 = 2;
    sub_1AFDFE918();
    v12 = *(v3 + 20);
    v13 = 3;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF9E10BC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9E19A0(a1, v5);
  if (!v2)
  {
    *a2 = *v5;
    result = *&v5[12];
    *(a2 + 12) = *&v5[12];
  }

  return result;
}

uint64_t sub_1AF9E1118(uint64_t a1, _BYTE *a2, void *a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      result = sub_1AF9C5D58();
      if (v14)
      {
        result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
        v16 = *(a1 + 48);
        v15 = *(a1 + 56);
        LODWORD(v17) = LODWORD(a4);
        if (*&a4 == a5 && a6 == a7)
        {
          v18 = v15 - v16;
          if (v18)
          {
            *(&v17 + 1) = a6;
            *(&v17 + 1) = COERCE_UNSIGNED_INT(1.0);
            v19 = (result + 16 * v16);
            do
            {
              *v19++ = v17;
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          v64 = v15 - v16;
          if (v64)
          {
            v65 = (result + 16 * v16);
            do
            {
              v67 = a3[1];
              v66 = a3[2];
              v68 = a3[3] ^ v67;
              v69 = a3[4] ^ v66;
              v70 = v68 ^ v66;
              v71 = v69 ^ v67;
              v72 = 9 * ((((5 * v66) >> 32) >> 25) | (640 * v66));
              v73 = v68 ^ (v66 << 17) ^ v71;
              v74 = v70 ^ __ROR8__(v69, 19);
              a3[1] = v74 ^ v71;
              a3[2] = v73 ^ v70;
              *&v75 = ((a5 - *&a4) * vcvts_n_f32_u64(*&v72 & 0xFFFFFFLL, 0x18uLL)) + *&a4;
              *(&v75 + 1) = ((a7 - a6) * vcvts_n_f32_u64((9 * ((((5 * v70) >> 32) >> 25) | (640 * v70))) & 0xFFFFFFLL, 0x18uLL)) + a6;
              *(&v75 + 1) = COERCE_UNSIGNED_INT(1.0);
              a3[3] = v73 ^ (v70 << 17);
              a3[4] = __ROR8__(v74, 19);
              *v65++ = v75;
              --v64;
            }

            while (v64);
          }
        }
      }

      else
      {
        v34 = *(a1 + 48);
        v33 = *(a1 + 56);
        LODWORD(v35) = LODWORD(a4);
        if (*&a4 == a5 && a6 == a7)
        {
          v36 = v33 - v34;
          if (v36)
          {
            *(&v35 + 1) = a6;
            v37 = (result + 8 * v34);
            do
            {
              *v37++ = v35;
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          v76 = v33 - v34;
          if (v76)
          {
            v77 = (result + 8 * v34);
            do
            {
              v79 = a3[1];
              v78 = a3[2];
              v80 = a3[3] ^ v79;
              v81 = (((5 * v78) >> 32) >> 25) | (640 * v78);
              v82 = a3[4] ^ v78;
              v83 = v80 ^ v78;
              v84 = v82 ^ v79;
              v85 = v80 ^ (v78 << 17) ^ v84;
              v86 = v83 ^ __ROR8__(v82, 19);
              a3[1] = v86 ^ v84;
              a3[2] = v85 ^ v83;
              a3[3] = v85 ^ (v83 << 17);
              a3[4] = __ROR8__(v86, 19);
              *&v87 = ((a5 - *&a4) * vcvts_n_f32_u64((9 * v81) & 0xFFFFFF, 0x18uLL)) + *&a4;
              *(&v87 + 1) = ((a7 - a6) * vcvts_n_f32_u64((9 * ((((5 * v83) >> 32) >> 25) | (640 * v83))) & 0xFFFFFFLL, 0x18uLL)) + a6;
              *v77++ = v87;
              --v76;
            }

            while (v76);
          }
        }
      }
    }

    else
    {
      result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
      v29 = *(a1 + 48);
      v28 = *(a1 + 56);
      if (*&a4 == a5 && a6 == a7 && a8 == a9)
      {
        v30 = v28 - v29;
        if (v30)
        {
          *&v31 = __PAIR64__(LODWORD(a6), LODWORD(a4));
          *(&v31 + 1) = LODWORD(a8);
          v32 = (result + 16 * v29);
          do
          {
            *v32++ = v31;
            --v30;
          }

          while (v30);
        }
      }

      else
      {
        v47 = v28 - v29;
        if (v47)
        {
          v48 = (result + 16 * v29);
          do
          {
            v50 = a3[1];
            v49 = a3[2];
            v51 = a3[3] ^ v50;
            v52 = a3[4] ^ v49;
            v53 = v51 ^ v49;
            v54 = v52 ^ v50;
            v55 = vcvts_n_f32_u64((9 * ((((5 * v49) >> 32) >> 25) | (640 * v49))) & 0xFFFFFF, 0x18uLL);
            v56 = v51 ^ (v49 << 17) ^ v54;
            v57 = v56 ^ v53;
            v58 = (((5 * (v56 ^ v53)) >> 32) >> 25) | (640 * (v56 ^ v53));
            v59 = __ROR8__(v52, 19);
            v60 = v53 ^ v59 ^ v54;
            v61 = v56 ^ (v53 << 17) ^ v60;
            v62 = v57 ^ __ROR8__(v53 ^ v59, 19);
            a3[1] = v62 ^ v60;
            a3[2] = v61 ^ v57;
            HIDWORD(v63) = 0;
            *&v63 = ((a5 - *&a4) * v55) + *&a4;
            *(&v63 + 1) = ((a7 - a6) * vcvts_n_f32_u64((9 * ((((5 * v53) >> 32) >> 25) | (640 * v53))) & 0xFFFFFF, 0x18uLL)) + a6;
            a3[3] = v61 ^ (v57 << 17);
            a3[4] = __ROR8__(v62, 19);
            *(&v63 + 2) = ((a9 - a8) * vcvts_n_f32_u64((9 * v58) & 0xFFFFFF, 0x18uLL)) + a8;
            *v48++ = v63;
            --v47;
          }

          while (v47);
        }
      }
    }
  }

  else
  {
    result = sub_1AF9C5D44();
    if (v20)
    {
      result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
      v23 = *(a1 + 48);
      v22 = *(a1 + 56);
      if (*&a4 == a5)
      {
        v24 = v22 - v23;
        if (v24)
        {
          v25 = vdupq_lane_s32(*&a4, 0);
          v25.i32[3] = 0;
          v26 = (result + 16 * v23);
          do
          {
            *v26++ = v25;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        v88 = v22 - v23;
        if (v88)
        {
          v89 = (result + 16 * v23);
          do
          {
            v91 = a3[1];
            v90 = a3[2];
            v92 = a3[3] ^ v91;
            v93 = __ROR8__(a3[4] ^ v90, 19);
            a3[1] = a3[4] ^ v90 ^ v91;
            a3[2] = v92 ^ v90;
            *v21.i32 = ((a5 - *&a4) * vcvts_n_f32_u64((9 * ((((5 * v90) >> 32) >> 25) | (640 * v90))) & 0xFFFFFF, 0x18uLL)) + *&a4;
            v21 = vdupq_lane_s32(*v21.i8, 0);
            a3[3] = v92 ^ (v90 << 17);
            a3[4] = v93;
            v21.i32[3] = 0;
            *v89++ = v21;
            --v88;
          }

          while (v88);
        }
      }
    }

    else
    {
      v39 = *(a1 + 48);
      v38 = *(a1 + 56);
      if (*&a4 == a5)
      {
        v40 = v38 - v39;
        if (v38 != v39)
        {
          v41 = *(a1 + 48);
          if (v40 < 8)
          {
            goto LABEL_35;
          }

          v41 = v39 + (v40 & 0xFFFFFFFFFFFFFFF8);
          v42 = vdupq_lane_s32(*&a4, 0);
          v43 = (result + 4 * v39 + 16);
          v44 = v40 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v43[-1] = v42;
            *v43 = v42;
            v43 += 2;
            v44 -= 8;
          }

          while (v44);
          if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_35:
            v45 = v38 - v41;
            v46 = (result + 4 * v41);
            do
            {
              *v46++ = LODWORD(a4);
              --v45;
            }

            while (v45);
          }
        }
      }

      else
      {
        v94 = v38 - v39;
        if (v94)
        {
          v95 = (result + 4 * v39);
          do
          {
            v97 = a3[1];
            v96 = a3[2];
            v98 = a3[3] ^ v97;
            v99 = a3[4] ^ v96;
            a3[1] = v99 ^ v97;
            a3[2] = v98 ^ v96;
            a3[3] = v98 ^ (v96 << 17);
            a3[4] = __ROR8__(v99, 19);
            *v95++ = ((a5 - *&a4) * vcvts_n_f32_u64((9 * ((((5 * v96) >> 32) >> 25) | (640 * v96))) & 0xFFFFFF, 0x18uLL)) + *&a4;
            --v94;
          }

          while (v94);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF9E16E4(uint64_t a1)
{
  v2 = *(a1 + 88);
  v36 = *(a1 + 72);
  v37 = v2;
  v3 = *(a1 + 120);
  v38 = *(a1 + 104);
  v39 = v3;
  v4 = *(a1 + 24);
  v32 = *(a1 + 8);
  v33 = v4;
  v5 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v5;
  v6 = v32;

  sub_1AF3CC8AC(*(&v32 + 1), &v26);

  if (v26 == 3)
  {
    v7 = 0;
    v8 = 1045220557;
    LODWORD(v9) = 1036831949;
    v10 = 1045220557;
    v11 = 1036831949;
    v12 = 1045220557;
    v13 = 1036831949;
  }

  else
  {
    v8 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v9 = HIDWORD(v26);
    v7 = v26;
    v10 = v31;
  }

  v26 = __PAIR64__(v8, v9);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v10;
  v31 = v7;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_size_uniforms(0);
    sub_1AF6F4524(&v26, 1, ObjectType, v15, v16, v17, v18, v19);
  }

  v20 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v21 = v34;

  v22 = v20;

  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1AFCBF008(v21, sub_1AF9D17D4);
}

uint64_t sub_1AF9E1954()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF9E19A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9E1CA4(0, &qword_1ED722FD8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E1C50();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v18 = 0;
  sub_1AF51D944();
  sub_1AFDFE768();
  v16 = v17;
  sub_1AF48C324();
  v18 = 1;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v17;
  v18 = 2;
  sub_1AFDFE768();
  v12 = v17;
  v18 = 3;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v17;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v16;
  *(a2 + 4) = v11;
  *(a2 + 12) = v12;
  *(a2 + 20) = v13;
  return result;
}

unint64_t sub_1AF9E1C50()
{
  result = qword_1ED725510;
  if (!qword_1ED725510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725510);
  }

  return result;
}

void sub_1AF9E1CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E1C50();
    v7 = a3(a1, &type metadata for ParticleSizeInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_1AF9E1D08()
{
  v1 = *v0;
  sub_1AF47BBFC();
  v2 = swift_allocObject();
  *&result = 1;
  v4 = off_1E7A7FF10[v1];
  *(v2 + 16) = xmmword_1AFE431C0;
  v5 = off_1E7A7FF28[v1];
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  return result;
}

void sub_1AF9E1D64(uint64_t a1)
{
  v3 = *a1;

  v4 = *(a1 + 8);

  sub_1AF3CC8AC(v4, &v52);

  v5 = v52;
  if (v52 == 3)
  {
    v5 = 0;
    v6 = 0.2;
    v7 = 1036831949;
    v8 = 0.1;
    v9 = 0.2;
    v10 = 0.1;
    v11 = 0.2;
  }

  else
  {
    v10 = *(&v54 + 1);
    v11 = *&v55;
    v7 = HIDWORD(v52);
    v8 = *(&v53 + 1);
    v6 = *&v53;
    v9 = *&v54;
  }

  v84[0] = v5;
  v85 = v7;
  v86 = v6;
  v87 = v8;
  v88 = v9;
  v89 = v10;
  v90 = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 36);
  if (__PAIR64__(v13, v12) != 0xFFFFFFFF && (v12 & 0x80000000) == 0 && *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v12)
  {
    v14 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v12);
    v15 = *(v14 + 2);
    if (v13 == -1 || v14[2] == v13)
    {
      v16 = *(*(v3 + 144) + 8 * *v14 + 32);
      v17 = *(v16 + 48);
      v18 = (v17 + 32);
      v19 = *(v17 + 16) + 1;
      do
      {
        if (!--v19)
        {
          goto LABEL_26;
        }

        v20 = v18 + 5;
        v21 = *v18;
        v18 += 5;
      }

      while (v21 != &type metadata for EmitterRuntime);
      v22 = *(v20 - 2);
      v23 = *(v16 + 128);
      v24 = *(a1 + 104);
      v80[0] = *(a1 + 88);
      v80[1] = v24;
      v81 = *(a1 + 120);

      sub_1AF68A8E0(a1, &v52);
      sub_1AF6B06C0(v3, v80, 0x200000000, &v66);
      v48 = v66;
      if (v66)
      {
        v25 = v70;
        v26 = v72;
        v74 = v67;
        v75 = v68;
        v45 = v73;
        v46 = v71;
        if (v73 > 0 && v70)
        {
          v42 = a1;
          v27 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v43 = (v23 + v22 + 848 * v15);
          v28 = *(v72 + 32);
          v29 = (v69 + 24);
          v44 = v27;
          do
          {
            v30 = *(v29 - 6);
            v31 = *(v29 - 5);
            v32 = *(v29 - 4);
            v50 = *v29;
            v51 = *(v29 - 1);
            v33 = v29[2];
            v49 = v29[1];
            if (v27)
            {
              v34 = *(v33 + 376);

              os_unfair_lock_lock(v34);
              os_unfair_lock_lock(*(v33 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v28);
            v35 = *(v26 + 64);
            v82[0] = *(v26 + 48);
            v82[1] = v35;
            v83 = *(v26 + 80);
            v36 = *(*(*(*(v33 + 40) + 16) + 32) + 16) + 1;
            *(v26 + 48) = ecs_stack_allocator_allocate(*(v26 + 32), 48 * v36, 8);
            *(v26 + 56) = v36;
            *(v26 + 72) = 0;
            *(v26 + 80) = 0;
            *(v26 + 64) = 0;
            LOBYTE(v79) = 1;
            v52 = v46;
            v53 = v33;
            v54 = v26;
            v55 = v32;
            v56 = (v31 - v30 + v32);
            v57 = v45;
            v58 = v30;
            v59 = v31;
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v51;
            v64 = v50;
            v65 = v49;
            LODWORD(v37) = v7;
            sub_1AF9E1118(&v52, v84, v43, v37, v6, v8, v9, v10, v11);
            v76 = v48;
            v77 = v74;
            v78 = v75;
            sub_1AF630994(v26, &v76, v82);
            sub_1AF62D29C(v33);
            ecs_stack_allocator_pop_snapshot(v28);
            v27 = v44;
            if (v44)
            {
              os_unfair_lock_unlock(*(v33 + 344));
              os_unfair_lock_unlock(*(v33 + 376));
            }

            v29 += 6;
            --v25;
          }

          while (v25);
          sub_1AF5D1564(&v66);
          sub_1AF688940(v42);
          goto LABEL_25;
        }

        sub_1AF5D1564(&v66);
      }

      sub_1AF688940(a1);
LABEL_25:

      return;
    }
  }

LABEL_26:
  v66 = 0;
  *&v67 = 0xE000000000000000;

  sub_1AF68A8E0(a1, &v52);
  sub_1AFDFE218();
  v52 = v66;
  v53 = v67;
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v38 = sub_1AF656F38();
  v40 = v39;
  MEMORY[0x1B2718AE0](v38);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a1);
  sub_1AFDFE518();
  __break(1u);

  v79 = v47;
  v41 = *(v3 + 112);
  *(v3 + 176) = *(v3 + 96);
  *(v3 + 192) = v41;
  sub_1AF630994(&v52, &v79, v82);
  sub_1AF62D29C(a1);
  ecs_stack_allocator_pop_snapshot(v1);
  os_unfair_lock_unlock(*(a1 + 344));
  os_unfair_lock_unlock(*(a1 + 376));
  __break(1u);
}

uint64_t getEnumTagSinglePayload for ParticleSizeInit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[28])
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

uint64_t storeEnumTagSinglePayload for ParticleSizeInit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AF9E238C()
{
  result = qword_1EB641A70;
  if (!qword_1EB641A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A70);
  }

  return result;
}

unint64_t sub_1AF9E23E4()
{
  result = qword_1ED725500;
  if (!qword_1ED725500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725500);
  }

  return result;
}

unint64_t sub_1AF9E243C()
{
  result = qword_1ED725508;
  if (!qword_1ED725508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725508);
  }

  return result;
}

uint64_t sub_1AF9E2490@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF9E28D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF9E24BC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEF18();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF9E2550(uint64_t a1)
{
  v2 = sub_1AF9E2B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E258C(uint64_t a1)
{
  v2 = sub_1AF9E2B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9E25C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1AF9E2BD8(0, &qword_1EB641A80, sub_1AF9E2B84, &type metadata for ParticleClassSpawnID.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E2B84();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v11 = sub_1AFDFE748();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  return result;
}

uint64_t sub_1AF9E2774(void *a1)
{
  sub_1AF9E2BD8(0, &qword_1EB641A90, sub_1AF9E2B84, &type metadata for ParticleClassSpawnID.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E2B84();
  sub_1AFDFF3F8();
  sub_1AFDFE8F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF9E28D8(void *a1)
{
  sub_1AF9E2BD8(0, &qword_1ED726A78, sub_1AF47986C, &type metadata for ValueCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14[-1] - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2000, v9, v10))
  {
    v11 = sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(v14, v14[3]);
      v11 = sub_1AFDFEE68();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
    }
  }

  else
  {
    v11 = sub_1AF441150(a1, a1[3]);
    sub_1AF47986C();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = sub_1AFDFE748();
      (*(v5 + 8))(v8, v4);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v11;
}

unint64_t sub_1AF9E2B30()
{
  result = qword_1EB641A78;
  if (!qword_1EB641A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A78);
  }

  return result;
}

unint64_t sub_1AF9E2B84()
{
  result = qword_1EB641A88;
  if (!qword_1EB641A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A88);
  }

  return result;
}

void sub_1AF9E2BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF9E2C54()
{
  result = qword_1EB641A98;
  if (!qword_1EB641A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A98);
  }

  return result;
}

unint64_t sub_1AF9E2CAC()
{
  result = qword_1EB641AA0;
  if (!qword_1EB641AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AA0);
  }

  return result;
}

unint64_t sub_1AF9E2D04()
{
  result = qword_1EB641AA8;
  if (!qword_1EB641AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AA8);
  }

  return result;
}

void sub_1AF9E2D5C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v65[0] = *(a3 + 88);
  v65[1] = v3;
  v66 = *(a3 + 120);
  sub_1AF6B06C0(a2, v65, 0x200000000, &v54);
  if (v54)
  {
    v44 = v61;
    if (v61 >= 1)
    {
      v43 = v58;
      if (v58)
      {
        v4 = 0;
        v42 = v57;
        v5 = v60;
        v41 = v59;
        v6 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v52 = v60[4];
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v73 = v6;
        v53 = v60;
        do
        {
          v7 = (v42 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 3);
          v46 = *(v7 + 2);
          v13 = *(v7 + 4);
          v12 = *(v7 + 5);
          if (v6)
          {
            v14 = *(v12 + 376);

            os_unfair_lock_lock(v14);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v52);
          v49 = *(v5 + 4);
          v50 = *(v5 + 3);
          v48 = v5[10];
          v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          v5[6] = ecs_stack_allocator_allocate(v5[4], 48 * v15, 8);
          v5[7] = v15;
          v5[9] = 0;
          v5[10] = 0;
          v5[8] = 0;
          v72 = 1;
          v67[0] = v41;
          v67[1] = v12;
          v51 = v12;
          v67[2] = v5;
          v67[3] = v10;
          v67[4] = (v9 - v8 + v10);
          v67[5] = v44;
          v67[6] = v8;
          v67[7] = v9;
          v67[8] = 0;
          v67[9] = 0;
          v68 = 1;
          v69 = v46;
          v70 = v11;
          v71 = v13;
          sub_1AF9E35BC(v67, a1);
          v16 = v5[6];
          v17 = v5[8];
          if (!v17)
          {
            v39 = v5[7];
            v40 = v5[4];
            goto LABEL_39;
          }

          v47 = v4;
          for (i = 0; i != v17; ++i)
          {
            v20 = (v16 + 48 * i);
            v21 = *v20;
            v22 = v20[4];
            v23 = v53[9];
            if (v23)
            {
              v24 = v21 == v23;
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              goto LABEL_11;
            }

            v25 = v62;
            if (!v62[11])
            {
              goto LABEL_11;
            }

            v26 = v20[2];
            v27 = v62 + 41;
            v28 = v62[9];
            if (v28 >= 0x10)
            {
              v29 = &v27[v62[8]];
              v30 = v28 >> 4;
              v31 = v62 + 41;
              while (*v29 != v21)
              {
                ++v31;
                v29 += 16;
                if (!--v30)
                {
                  goto LABEL_27;
                }
              }

              v32 = v31[v62[10]];
              v33 = v32 > 5;
              v34 = (1 << v32) & 0x23;
              if (v33 || v34 == 0)
              {
LABEL_11:

                v22(v19);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v26)
            {
              if (sub_1AF5FC8D8(v26))
              {
                goto LABEL_11;
              }

              v36 = v25[9];
              if (v36 < 0x10)
              {
                goto LABEL_11;
              }

              v37 = &v27[v25[8]];
              v38 = 16 * (v36 >> 4);
              while (*v37 != v26)
              {
                v37 += 16;
                v38 -= 16;
                if (!v38)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v5 = v53;
          v39 = v53[7];
          v16 = v53[6];
          v40 = v53[4];
          if (v53[8] >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v47;
LABEL_39:
          v6 = v73;
          ecs_stack_allocator_deallocate(v40, v16, 48 * v39);
          *(v5 + 3) = v50;
          *(v5 + 4) = v49;
          v5[10] = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v52);
          if (v6)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          ++v4;
        }

        while (v4 != v43);
      }
    }

    sub_1AF5D1564(&v54);
  }
}

uint64_t sub_1AF9E3178(void *a1)
{
  v3 = v1;
  sub_1AF9E3AA4(0, &qword_1EB641AC0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E3A50();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9E336C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CC994(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = HIDWORD(v4);
  v12 = HIDWORD(v8);
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  if (v10)
  {
    LODWORD(v12) = 0;
    v14 = 1065353216;
  }

  else
  {
    v14 = v6;
  }

  if (v10)
  {
    v15 = 1065353216;
  }

  else
  {
    v15 = HIDWORD(v6);
  }

  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v4;
  }

  if (v10)
  {
    LODWORD(v11) = 0;
  }

  v20[0] = v16;
  v20[1] = v11;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v13;
  v20[5] = v12;
  v17 = a1[4];

  sub_1AF68A8E0(a1, v19);
  sub_1AF68952C(v17, v2, v2, a1, v20);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9E346C(uint64_t a1)
{
  v2 = sub_1AF9E3A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E34A8(uint64_t a1)
{
  v2 = sub_1AF9E3A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9E34E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9E37F0(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9E3560()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleTarget;
  *(v0 + 40) = &off_1F252DD28;
  return result;
}

double sub_1AF9E35A8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE20BF0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1AF9E35BC(void *a1, void *a2)
{
  v5 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v5, v6, v7, v8);
  result = sub_1AF64B110(&type metadata for ParticleTarget, &off_1F252DD28, v5, v6, v7, v8);
  v11.i32[0] = *v2;
  v12 = *(v2 + 4);
  if (*v2 == v12 && *(v2 + 8) == *(v2 + 12) && (v13 = *(v2 + 16), v13 == *(v2 + 20)))
  {
    v14 = a1[6];
    v15 = a1[7] - v14;
    if (v15)
    {
      v11.i32[1] = *(v2 + 8);
      v16 = 16 * v14;
      v17 = (result + 16 * v14);
      v18 = (v9 + v16);
      do
      {
        v19 = *v18++;
        *&v20 = vadd_f32(v11, *&v19);
        *(&v20 + 2) = v13 + *(&v19 + 2);
        HIDWORD(v20) = 0;
        *v17++ = v20;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v21 = a1[6];
    v22 = a1[7] - v21;
    if (v22)
    {
      v23 = a2[3];
      v24 = a2[4];
      v25 = a2[1];
      v26 = a2[2];
      v27 = v12 - v11.f32[0];
      v28 = *(v2 + 8);
      v29 = *(v2 + 12) - v28;
      v30 = *(v2 + 16);
      v31 = *(v2 + 20) - v30;
      v32 = 16 * v21;
      v33 = (result + 16 * v21);
      v34 = (v9 + v32);
      do
      {
        v35 = v25 ^ v23;
        v36 = v26 ^ v24;
        v37 = v35 ^ v26;
        v38 = vcvts_n_f32_u64((9 * ((((5 * v26) >> 32) >> 25) | (640 * v26))) & 0xFFFFFF, 0x18uLL);
        v39 = v25 ^ v36;
        v40 = v35 ^ (v26 << 17) ^ v39;
        v41 = __ROR8__(v36, 19);
        v42 = v40 ^ v37;
        v43 = v37 ^ v41 ^ v39;
        v44 = v40 ^ (v37 << 17) ^ v43;
        v45 = __ROR8__(v37 ^ v41, 19);
        v26 = v44 ^ v42;
        v25 = v42 ^ v45 ^ v43;
        v23 = v44 ^ (v42 << 17);
        v46 = *v34++;
        HIDWORD(v47) = 0;
        *&v47 = *&v46 + (v11.f32[0] + (v27 * v38));
        *(&v47 + 1) = *(&v46 + 1) + (v28 + (v29 * vcvts_n_f32_u64((9 * ((((5 * v37) >> 32) >> 25) | (640 * v37))) & 0xFFFFFF, 0x18uLL)));
        v24 = __ROR8__(v42 ^ v45, 19);
        *(&v47 + 2) = *(&v46 + 2) + (v30 + (v31 * vcvts_n_f32_u64((9 * ((((5 * v42) >> 32) >> 25) | (640 * v42))) & 0xFFFFFFLL, 0x18uLL)));
        *v33++ = v47;
        --v22;
      }

      while (v22);
      a2[1] = v25;
      a2[2] = v26;
      a2[3] = v23;
      a2[4] = v24;
    }
  }

  return result;
}

uint64_t sub_1AF9E37F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF9E3AA4(0, &qword_1EB641AB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E3A50();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF48C324();
  HIBYTE(v15) = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v16;
  HIBYTE(v15) = 1;
  sub_1AFDFE768();
  v12 = v16;
  HIBYTE(v15) = 2;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v16;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

unint64_t sub_1AF9E3A50()
{
  result = qword_1EB641AB8;
  if (!qword_1EB641AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AB8);
  }

  return result;
}

void sub_1AF9E3AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E3A50();
    v7 = a3(a1, &type metadata for ParticleTargetFromPositionInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9E3B1C()
{
  result = qword_1EB641AC8;
  if (!qword_1EB641AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AC8);
  }

  return result;
}

unint64_t sub_1AF9E3B74()
{
  result = qword_1EB641AD0;
  if (!qword_1EB641AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AD0);
  }

  return result;
}

unint64_t sub_1AF9E3BCC()
{
  result = qword_1EB641AD8;
  if (!qword_1EB641AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AD8);
  }

  return result;
}

uint64_t sub_1AF9E3C20(void *a1, float a2, float a3)
{
  sub_1AF9E4420(0, &qword_1EB641AE0, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E43CC();
  sub_1AFDFF3F8();
  v14 = a2;
  v15 = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF9E3DAC(uint64_t a1)
{
  v2 = sub_1AF9E43CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E3DE8(uint64_t a1)
{
  v2 = sub_1AF9E43CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF9E3E24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9E41FC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9E3E8C()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleTextureFrame;
  *(v0 + 40) = &off_1F252CC98;
  return result;
}

uint64_t sub_1AF9E3EF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  v4 = sub_1AF3CCA98(v3);
  v6 = v5;

  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *&v4;
  }

  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(&v4 + 1);
  }

  v9 = a1[4];

  sub_1AF68A8E0(a1, v12);
  *&v10 = v7;
  sub_1AF689558(v9, v2, a1, v10, v8);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9E3FC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CCA98(*(&v7 + 1));
  v10 = v9;

  v12 = *(&v8 + 1);
  v11 = *&v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  *v25 = v11;
  *&v25[1] = v12;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_texture_frame_uniforms(0);
    sub_1AF6F4524(v25, 1, ObjectType, v14, v15, v16, v17, v18);
  }

  v19 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v20 = v28;

  v21 = v19;

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1AFCBF008(v20, sub_1AF9D17D4);
}

float sub_1AF9E41FC(void *a1)
{
  sub_1AF9E4420(0, &unk_1EB632848, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E43CC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v11[2];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9E43CC()
{
  result = qword_1EB632CA0;
  if (!qword_1EB632CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CA0);
  }

  return result;
}

void sub_1AF9E4420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E43CC();
    v7 = a3(a1, &type metadata for ParticleTextureFrameInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9E4498()
{
  result = qword_1EB641AE8;
  if (!qword_1EB641AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AE8);
  }

  return result;
}

unint64_t sub_1AF9E44F0()
{
  result = qword_1EB632C90;
  if (!qword_1EB632C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632C90);
  }

  return result;
}

unint64_t sub_1AF9E4548()
{
  result = qword_1EB632C98;
  if (!qword_1EB632C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632C98);
  }

  return result;
}

uint64_t sub_1AF9E459C(void *a1)
{
  v3 = v1;
  sub_1AF9E5B0C(0, &qword_1EB641AF0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E5AB8();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1AF9D68D0();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9E47A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69646165727073;
  v4 = 0xEE0065676E615267;
  if (v2 != 1)
  {
    v3 = 0x7469736F706D6F63;
    v4 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65676E6172;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E69646165727073;
  v8 = 0xEE0065676E615267;
  if (*a2 != 1)
  {
    v7 = 0x7469736F706D6F63;
    v8 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65676E6172;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF9E48D0()
{
  v1 = 0x6E69646165727073;
  if (*v0 != 1)
  {
    v1 = 0x7469736F706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1AF9E493C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9E5690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9E4964(uint64_t a1)
{
  v2 = sub_1AF9E5AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E49A0(uint64_t a1)
{
  v2 = sub_1AF9E5AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9E49DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9E5848(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9E4A58()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for Velocity;
  *(v0 + 40) = &off_1F2530AF8;
  *(v0 + 48) = &type metadata for Orientation;
  *(v0 + 56) = &off_1F252C8A8;
  return result;
}

double sub_1AF9E4AB4@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1065353216;
  return result;
}

void sub_1AF9E4AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a3 + 104);
  v46[0] = *(a3 + 88);
  v46[1] = v6;
  v47 = *(a3 + 120);
  sub_1AF6B06C0(a2, v46, 0x200000000, &v30);
  v24 = v30;
  if (v30)
  {
    v7 = v34;
    v8 = v36;
    v38 = v31;
    v39 = v32;
    v22 = v37;
    v23 = v35;
    if (v37 >= 1 && v34)
    {
      v9 = *(v35 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v10 = *(v36 + 32);
      v11 = (v33 + 24);
      v21 = v9;
      while (1)
      {
        v55 = v5;
        v12 = *(v11 - 6);
        v13 = *(v11 - 5);
        v14 = *(v11 - 4);
        v28 = *v11;
        v29 = *(v11 - 1);
        v15 = v11[2];
        v27 = v11[1];
        if (v9)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);
        v17 = *(v8 + 64);
        v48[0] = *(v8 + 48);
        v48[1] = v17;
        v49 = *(v8 + 80);
        v18 = v10;
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
        *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v19, 8);
        *(v8 + 56) = v19;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;
        LOBYTE(v43) = 1;
        v50[0] = v23;
        v50[1] = v15;
        v50[2] = v8;
        v50[3] = v14;
        v50[4] = (v13 - v12 + v14);
        v50[5] = v22;
        v50[6] = v12;
        v50[7] = v13;
        v50[8] = 0;
        v50[9] = 0;
        v51 = 1;
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v20 = v55;
        sub_1AF9E4D78(v50, a4, a1);
        if (v20)
        {
          break;
        }

        v40 = v24;
        v41 = v38;
        v42 = v39;
        sub_1AF630994(v8, &v40, v48);
        v5 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v18);
        v10 = v18;
        v9 = v21;
        if (v21)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          goto LABEL_12;
        }
      }

      v43 = v24;
      v44 = v38;
      v45 = v39;
      sub_1AF630994(v8, &v43, v48);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v30);
    }
  }
}

void sub_1AF9E4D78(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v6, v7, v8, v9);
  v11 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v6, v7, v8, v9);
  v14 = v11;
  v16 = *(a2 + 8);
  v15.i32[0] = *(a2 + 12);
  v18 = a1[6];
  v17 = a1[7];
  if (v16 != 0.0 || *v15.i32 != 0.0)
  {
    v31 = cosf(fminf(fmaxf(*v15.i32, 0.0), 3.1416));
    v32 = v17 - v18;
    if (!v32)
    {
      return;
    }

    v33 = 1.0 - v31;
    v34 = cosf(fminf(fmaxf(v16, 0.0), 3.1416));
    v36 = *a2;
    v37 = *(a2 + 4);
    v38.i32[0] = *(a2 + 20);
    v39 = (1.0 - v34) - v33;
    v40 = v37 - *a2;
    v41 = vdupq_lane_s32(v38, 0);
    v91 = *v38.i32;
    v92 = v41;
    v42 = (v10 + 16 * v18);
    v43 = (v14 + 16 * v18);
    v95 = *(a2 + 16);
    while (1)
    {
      v101 = v35.i32[3];
      v103 = v41.i32[3];
      v46 = a3[1];
      v47 = a3[2];
      v48 = a3[3] ^ v46;
      v49 = a3[4] ^ v47;
      v50 = v48 ^ v47;
      v51 = v49 ^ v46;
      v52 = v48 ^ (v47 << 17) ^ v51;
      v53 = __ROR8__(v49, 19);
      v54 = v52 ^ v50;
      v55 = v50 ^ v53 ^ v51;
      a3[1] = v55;
      a3[2] = v52 ^ v50;
      v56 = v52 ^ (v50 << 17);
      v57 = __ROR8__(v50 ^ v53, 19);
      a3[3] = v56;
      a3[4] = v57;
      v58 = vcvts_n_f32_u64((9 * ((((5 * v50) >> 32) >> 25) | (640 * v50))) & 0xFFFFFF, 0x18uLL);
      sub_1AF5C5D6C(*v43);
      v98 = v59;
      v63 = __sincosf_stret(v58 * 6.2832);
      v64 = v36;
      if (v36 != v37)
      {
        a3[1] = v57 ^ v54 ^ v55;
        a3[2] = v56 ^ v55 ^ v54;
        a3[3] = v56 ^ v55 ^ (v54 << 17);
        a3[4] = __ROR8__(v57 ^ v54, 19);
        v64 = v36 + (v40 * vcvts_n_f32_u64((9 * ((((5 * v54) >> 32) >> 25) | (640 * v54))) & 0xFFFFFF, 0x18uLL));
      }

      v35 = v98;
      v35.i32[3] = v101;
      v62.i32[0] = 1.0;
      v65 = 1.0 - (v33 + (v39 * vcvts_n_f32_u64((9 * ((((5 * v47) >> 32) >> 25) | (640 * v47))) & 0xFFFFFF, 0x18uLL)));
      v66 = sqrtf(1.0 - (v65 * v65));
      v60.i32[0] = v98.i32[2];
      v67.i64[0] = 0x8000000080000000;
      v67.i64[1] = 0x8000000080000000;
      v67.i32[0] = vbslq_s8(v67, v62, v60).i32[0];
      v61.f32[0] = v98.f32[1] / (fabsf(v98.f32[2]) + 1.0);
      v68 = vmuls_lane_f32(v61.f32[0], *v98.f32, 1);
      v61.f32[0] = -(v98.f32[0] * v61.f32[0]);
      v60.f32[0] = v98.f32[2] + (*v67.i32 * v68);
      v60.f32[1] = *v67.i32 * v61.f32[0];
      v60.f32[2] = -v98.f32[0];
      v61.f32[1] = 1.0 - v68;
      v61.i32[2] = vmuls_lane_f32(-*v67.i32, *v98.f32, 1);
      v69 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v35, v65), v60, v66 * v63.__cosval), v61, v66 * v63.__sinval);
      *v44.f32 = vmul_n_f32(*v69.f32, v64);
      v70 = vmuls_lane_f32(v64, v69, 2);
      v71 = *v42;
      v41 = *v42;
      v41.i32[3] = v103;
      if (v95 > 1)
      {
        if (v95 != 2)
        {
          v44.f32[2] = v70;
          v72 = vmlaq_f32(v71, v92, vsubq_f32(v44, v41));
          v72.i32[3] = v90;
          v44 = v72;
          goto LABEL_19;
        }

        *v44.f32 = vmul_f32(*v71.f32, vmul_f32(*v92.f32, *v44.f32));
        v45 = vmuls_lane_f32(v91 * v70, v71, 2);
      }

      else if (v95)
      {
        *v44.f32 = vadd_f32(*v71.f32, vmul_f32(*v92.f32, *v44.f32));
        v45 = v71.f32[2] + (v91 * v70);
      }

      else
      {
        *v44.f32 = vmul_f32(*v92.f32, *v44.f32);
        v45 = v91 * v70;
      }

      v44.f32[2] = v45;
LABEL_19:
      v44.i32[3] = 0;
      *v42++ = v44;
      ++v43;
      if (!--v32)
      {
        return;
      }
    }
  }

  LODWORD(v12) = *a2;
  v19 = *(a2 + 4);
  v100 = v12;
  if (*a2 != v19)
  {
    v73 = v17 - v18;
    if (!v73)
    {
      return;
    }

    v74 = *(a2 + 16);
    v13.i32[0] = *(a2 + 20);
    v75 = v19 - *&v12;
    v76 = vdupq_lane_s32(v13, 0);
    v96 = *v13.i32;
    v99 = v76;
    v77 = (v10 + 16 * v18);
    for (i = (v11 + 16 * v18); ; ++i)
    {
      v104 = v76.i32[3];
      sub_1AF5C5D6C(*i);
      v82 = a3[1];
      v81 = a3[2];
      v83 = a3[3] ^ v82;
      v84 = a3[4] ^ v81;
      a3[1] = v84 ^ v82;
      a3[2] = v83 ^ v81;
      a3[3] = v83 ^ (v81 << 17);
      a3[4] = __ROR8__(v84, 19);
      v79.i32[3] = HIDWORD(v100);
      v85 = *&v100 + (v75 * vcvts_n_f32_u64((9 * ((((5 * v81) >> 32) >> 25) | (640 * v81))) & 0xFFFFFFLL, 0x18uLL));
      *v79.f32 = vmul_n_f32(*v86.f32, v85);
      v87 = vmuls_lane_f32(v85, v86, 2);
      v88 = *v77;
      v76 = *v77;
      v76.i32[3] = v104;
      if (v74 > 1)
      {
        if (v74 != 2)
        {
          v79.f32[2] = v87;
          v89 = vmlaq_f32(v88, v99, vsubq_f32(v79, v76));
          v89.i32[3] = v93;
          v79 = v89;
          goto LABEL_33;
        }

        *v79.f32 = vmul_f32(*v88.f32, vmul_f32(*v99.f32, *v79.f32));
        v80 = vmuls_lane_f32(v96 * v87, v88, 2);
      }

      else if (v74)
      {
        *v79.f32 = vadd_f32(*v88.f32, vmul_f32(*v99.f32, *v79.f32));
        v80 = v88.f32[2] + (v96 * v87);
      }

      else
      {
        *v79.f32 = vmul_f32(*v99.f32, *v79.f32);
        v80 = v96 * v87;
      }

      v79.f32[2] = v80;
LABEL_33:
      v79.i32[3] = 0;
      *v77++ = v79;
      if (!--v73)
      {
        return;
      }
    }
  }

  v20 = v17 - v18;
  if (v20)
  {
    v21 = *(a2 + 16);
    v15.i32[0] = *(a2 + 20);
    v94 = *v15.i32;
    v22 = vdupq_lane_s32(v15, 0);
    v97 = v22;
    v23 = (v10 + 16 * v18);
    v24 = (v11 + 16 * v18);
    do
    {
      v102 = v22.i32[3];
      sub_1AF5C5D6C(*v24);
      *v25.f32 = vmul_n_f32(*v27.f32, *&v100);
      v28 = vmuls_lane_f32(*&v100, v27, 2);
      v29 = *v23;
      v22 = *v23;
      v22.i32[3] = v102;
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          v25.f32[2] = v28;
          v30 = vmlaq_f32(v29, v97, vsubq_f32(v25, v22));
          v30.i32[3] = v93;
          v25 = v30;
          goto LABEL_8;
        }

        *v25.f32 = vmul_f32(*v29.f32, vmul_f32(*v97.f32, *v25.f32));
        v26 = vmuls_lane_f32(v94 * v28, v29, 2);
      }

      else if (v21)
      {
        *v25.f32 = vadd_f32(*v29.f32, vmul_f32(*v97.f32, *v25.f32));
        v26 = v29.f32[2] + (v94 * v28);
      }

      else
      {
        *v25.f32 = vmul_f32(*v97.f32, *v25.f32);
        v26 = v94 * v28;
      }

      v25.f32[2] = v26;
LABEL_8:
      v25.i32[3] = 0;
      *v23++ = v25;
      ++v24;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1AF9E5344(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CCB6C(v3);
  v6 = v5;
  v8 = v7;

  v9 = HIDWORD(v4);
  v10 = HIDWORD(v6);
  v11 = HIDWORD(v8);
  if (v8 == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  if (v8 == 4)
  {
    LODWORD(v11) = 1065353216;
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  if (v8 == 4)
  {
    LODWORD(v10) = 0;
    v14 = 1065353216;
  }

  else
  {
    v14 = v4;
  }

  if (v8 == 4)
  {
    LODWORD(v9) = 1065353216;
  }

  v18[0] = v14;
  v18[1] = v9;
  v18[2] = v13;
  v18[3] = v10;
  v19 = v12;
  v20 = v11;
  v15 = a1[4];

  sub_1AF68A8E0(a1, v17);
  sub_1AF689580(v15, v2, v2, a1, v18);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9E5444(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v35 = *(a1 + 72);
  v36 = v3;
  v4 = *(a1 + 120);
  v37 = *(a1 + 104);
  v38 = v4;
  v5 = *(a1 + 24);
  v31 = v2;
  v32 = v5;
  v6 = *(a1 + 56);
  v33 = *(a1 + 40);
  v34 = v6;
  v8 = *(&v2 + 1);
  v7 = v2;

  v9 = sub_1AF3CCB6C(v8);
  v11 = v10;
  v13 = v12;

  if (v13 == 4)
  {
    LOBYTE(v13) = 0;
    LODWORD(v11) = 0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 1065353216;
    LODWORD(v9) = 1065353216;
    LODWORD(v16) = 1065353216;
  }

  else
  {
    v16 = HIDWORD(v9);
    v14 = HIDWORD(v11);
    v15 = HIDWORD(v13);
  }

  v29[0] = v9;
  v29[1] = v16;
  v29[2] = v11;
  v29[3] = v14;
  v29[4] = v15;
  v30 = v13;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_velocity_uniforms(0);
    sub_1AF6F4524(v29, 1, ObjectType, v18, v19, v20, v21, v22);
  }

  v23 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v24 = v33;

  v25 = v23;

  MEMORY[0x1EEE9AC00](v26, v27);
  sub_1AFCBF008(v24, sub_1AF9D17D4);
}

uint64_t sub_1AF9E5690(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646165727073 && a2 == 0xEE0065676E615267 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t getEnumTagSinglePayload for ParticleVelocityInit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 24))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleVelocityInit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1AF9E5848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9E5B0C(0, &qword_1EB630A98, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E5AB8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF48C324();
  HIBYTE(v16) = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v17;
  HIBYTE(v16) = 1;
  sub_1AFDFE768();
  v12 = v17;
  HIBYTE(v16) = 2;
  sub_1AF9D6798();
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v17;
  v14 = HIDWORD(v17);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 20) = v14;
  return result;
}

unint64_t sub_1AF9E5AB8()
{
  result = qword_1EB631828;
  if (!qword_1EB631828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631828);
  }

  return result;
}

void sub_1AF9E5B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E5AB8();
    v7 = a3(a1, &type metadata for ParticleVelocityInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9E5B84()
{
  result = qword_1EB641AF8;
  if (!qword_1EB641AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641AF8);
  }

  return result;
}

unint64_t sub_1AF9E5BDC()
{
  result = qword_1EB631818;
  if (!qword_1EB631818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631818);
  }

  return result;
}

unint64_t sub_1AF9E5C34()
{
  result = qword_1EB631820;
  if (!qword_1EB631820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631820);
  }

  return result;
}

__n128 sub_1AF9E5C88@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF8989FC(0xD000000000000013, 0x80000001AFF43530, 0xD000000000000013, 0x80000001AFF43550, MEMORY[0x1E69E7CC0], v7);
  nullsub_106();
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF9E5D28(void *a1)
{
  sub_1AF9E67E0(0, &qword_1EB641B28, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E678C();
  sub_1AFDFF3F8();
  v12 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v11 = 1;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF9E5EEC()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9E5F68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7469736E65746E69;
  }

  else
  {
    v3 = 0x656C616373;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x7469736E65746E69;
  }

  else
  {
    v5 = 0x656C616373;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF9E6010()
{
  if (*v0)
  {
    return 0x7469736E65746E69;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_1AF9E604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF9E612C(uint64_t a1)
{
  v2 = sub_1AF9E678C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E6168(uint64_t a1)
{
  v2 = sub_1AF9E678C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9E61C8()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  *(v0 + 88) = sub_1AF9E5C88;
  *(v0 + 96) = 0;

  return v0;
}

uint64_t sub_1AF9E6228(uint64_t result, uint64_t a2)
{
  *(result + 16) = 4;
  *(a2 + 24) = 14;
  return result;
}

void sub_1AF9E6248(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9E64B0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

uint64_t sub_1AF9E62A0()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

double sub_1AF9E6340@<D0>(void *a1@<X8>)
{
  result = 0.0000305175854;
  *a1 = 0x3F0000003FC00000;
  return result;
}

unint64_t sub_1AF9E6364()
{
  result = qword_1EB641B00;
  if (!qword_1EB641B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B00);
  }

  return result;
}

unint64_t sub_1AF9E63B8(uint64_t a1)
{
  result = sub_1AF9E63E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9E63E0()
{
  result = qword_1EB641B08;
  if (!qword_1EB641B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B08);
  }

  return result;
}

unint64_t sub_1AF9E6434(uint64_t a1)
{
  result = sub_1AF9E645C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9E645C()
{
  result = qword_1EB641B10;
  if (!qword_1EB641B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B10);
  }

  return result;
}

float sub_1AF9E64B0(void *a1)
{
  sub_1AF9E67E0(0, &qword_1EB641B18, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E678C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

void *sub_1AF9E666C(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 0;
  }

  v8 = *(a4 + 8);

  sub_1AF3C9244(v8, v17);

  if (v18)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = *(a5 + 232);
  v14[0] = vbslq_s8(v10, xmmword_1AFE20150, v17[0]);
  v14[1] = vbslq_s8(v10, xmmword_1AFE20160, v17[1]);
  v14[2] = vbslq_s8(v10, xmmword_1AFE20180, v17[2]);
  v14[3] = vbslq_s8(v10, xmmword_1AFE201A0, v17[3]);
  v15 = a1;
  v16 = a2;
  v12 = CFXBufferAllocatorPerFrameAllocateWithBytes(v11, v14, 0x50uLL);

  return v12;
}

unint64_t sub_1AF9E678C()
{
  result = qword_1EB641B20;
  if (!qword_1EB641B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B20);
  }

  return result;
}

void sub_1AF9E67E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E678C();
    v7 = a3(a1, &type metadata for ParticleAOBoxRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9E6858()
{
  result = qword_1EB641B30;
  if (!qword_1EB641B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B30);
  }

  return result;
}

unint64_t sub_1AF9E68B0()
{
  result = qword_1EB641B38;
  if (!qword_1EB641B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B38);
  }

  return result;
}

unint64_t sub_1AF9E6908()
{
  result = qword_1EB641B40;
  if (!qword_1EB641B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B40);
  }

  return result;
}

__n128 sub_1AF9E695C@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF8989FC(0xD000000000000016, 0x80000001AFF43570, 0xD000000000000016, 0x80000001AFF43590, MEMORY[0x1E69E7CC0], v7);
  nullsub_106();
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF9E69FC(void *a1)
{
  sub_1AF9E7010(0, &qword_1EB641B70, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E6FBC();
  sub_1AFDFF3F8();
  v12 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v11 = 1;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF9E6B70(uint64_t a1)
{
  v2 = sub_1AF9E6FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9E6BAC(uint64_t a1)
{
  v2 = sub_1AF9E6FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9E6BE8()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  *(v0 + 88) = sub_1AF9E695C;
  *(v0 + 96) = 0;

  return v0;
}

void sub_1AF9E6C48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9E6E00(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9E6C90@<D0>(void *a1@<X8>)
{
  result = 0.00781250186;
  *a1 = 0x3F80000040000000;
  return result;
}

unint64_t sub_1AF9E6CB4()
{
  result = qword_1EB641B48;
  if (!qword_1EB641B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B48);
  }

  return result;
}

unint64_t sub_1AF9E6D08(uint64_t a1)
{
  result = sub_1AF9E6D30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9E6D30()
{
  result = qword_1EB641B50;
  if (!qword_1EB641B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B50);
  }

  return result;
}

unint64_t sub_1AF9E6D84(uint64_t a1)
{
  result = sub_1AF9E6DAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9E6DAC()
{
  result = qword_1EB641B58;
  if (!qword_1EB641B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B58);
  }

  return result;
}

float sub_1AF9E6E00(void *a1)
{
  sub_1AF9E7010(0, &qword_1EB641B60, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9E6FBC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9E6FBC()
{
  result = qword_1EB641B68;
  if (!qword_1EB641B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B68);
  }

  return result;
}

void sub_1AF9E7010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9E6FBC();
    v7 = a3(a1, &type metadata for ParticleAOSphereRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9E7088()
{
  result = qword_1EB641B78;
  if (!qword_1EB641B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B78);
  }

  return result;
}

unint64_t sub_1AF9E70E0()
{
  result = qword_1EB641B80;
  if (!qword_1EB641B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B80);
  }

  return result;
}

unint64_t sub_1AF9E7138()
{
  result = qword_1EB641B88;
  if (!qword_1EB641B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B88);
  }

  return result;
}

__n128 initializeWithCopy for ParticleBoxRenderer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleBoxRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 29);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleBoxRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 29) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF9E724C@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4800) == 0x4000)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v4 = "particle_box_frag";
  }

  else
  {
    v4 = "particle_box_vert";
  }

  sub_1AF8989FC(0xD000000000000011, 0x80000001AFF435E0, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9E7318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);

  sub_1AF3C9244(v8, v51);

  if (v52)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = vbslq_s8(v10, xmmword_1AFE20150, v51[0]);
  v12 = vbslq_s8(v10, xmmword_1AFE20160, v51[1]);
  v13 = vbslq_s8(v10, xmmword_1AFE20180, v51[2]);
  v14 = vbslq_s8(v10, xmmword_1AFE201A0, v51[3]);
  v15 = *(v4 + 24);
  v16 = -1.0;
  if (v15 - 11 <= 0xF4)
  {
    v16 = 1.0 / v15;
  }

  v17 = *(v4 + 16);
  if (v17 > v16)
  {
    v18 = *(v4 + 16);
  }

  else
  {
    v18 = v16;
  }

  v19 = *(v4 + 32);
  if (v17 < 0.0)
  {
    v20 = v16;
  }

  else
  {
    v20 = v18;
  }

  v48[0] = v11;
  v48[1] = v12;
  v48[2] = v13;
  v48[3] = v14;
  v49 = v20;
  v50 = v19;
  if (!a4)
  {
    return 0;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    return 0;
  }

  v22 = v21[22];
  if (v22 <= 0)
  {
    v22 = v21[25];
    if (v22 < 1)
    {
      return 0;
    }
  }

  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = v11;
  v44 = a3;
  v23 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v23, v22);
  v26 = v24;
  v27 = v25;
  if (v21[21])
  {
    v43 = a1;
    v28 = v21[21];
  }

  else
  {
    v28 = v21[24];
    if (!v28)
    {
      v45[0] = v42;
      v45[1] = v41;
      v45[2] = v40;
      v45[3] = v39;
      v46 = v20;
      v47 = v19;
      sub_1AF9F4684(v45, v24, v25, 0x50uLL);

      return v26;
    }

    v43 = a1;
    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_26;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v30 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_26:
    swift_unknownObjectRetain();
    goto LABEL_27;
  }

  v31 = v30;
  sub_1AF22D744(v30, v28);

LABEL_27:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v22)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v33 = sub_1AFDFDA08();
    *&v45[0] = 1;
    sub_1AF75A4B4(v33, 0xD00000000000002ELL, 0x80000001AFF435B0, v45);
  }

  swift_unknownObjectRetain_n();
  sub_1AF471B58(v26, v27, 0);
  swift_unknownObjectRelease();
  type metadata accessor for particle_box_material_constants(0);
  v35 = v34;
  swift_unknownObjectRetain();
  sub_1AF471D6C(v48, 0, ObjectType, v35);
  swift_unknownObjectRelease();
  v36 = sub_1AF9F0F64(v44, a4);
  sub_1AF471D54(v37, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v36, 201, (v43 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v26;
}

uint64_t sub_1AF9E770C()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v1 = *(v0 + 8);
  if (*(v0 + 12))
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF9E7820(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF9E7908()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  *(v0 + 88) = sub_1AF9E724C;
  *(v0 + 96) = 0;

  return v0;
}

uint64_t sub_1AF9E79A4()
{
  sub_1AFDFF288();
  sub_1AF9E770C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9E79E8()
{
  sub_1AFDFF288();
  sub_1AF9E770C();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF9E7A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AF9EA5A0(v5, v7);
}

double sub_1AF9E7A70@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = -1082130432;
  *(a1 + 20) = 0;
  *(a1 + 24) = 256;
  *&result = 16843008;
  *(a1 + 28) = 16843008;
  return result;
}

unint64_t sub_1AF9E7AB8()
{
  result = qword_1EB641B90;
  if (!qword_1EB641B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B90);
  }

  return result;
}

unint64_t sub_1AF9E7B0C(uint64_t a1)
{
  result = sub_1AF9E7B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9E7B34()
{
  result = qword_1EB641B98;
  if (!qword_1EB641B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641B98);
  }

  return result;
}

unint64_t sub_1AF9E7B88(uint64_t a1)
{
  result = sub_1AF9E7BB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9E7BB0()
{
  result = qword_1EB641BA0;
  if (!qword_1EB641BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BA0);
  }

  return result;
}

unint64_t sub_1AF9E7C04(uint64_t a1)
{
  result = sub_1AF9E7C2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9E7C2C()
{
  result = qword_1EB641DA0;
  if (!qword_1EB641DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641DA0);
  }

  return result;
}

uint64_t sub_1AF9E7C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  sub_1AFDFF3F8();
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AF480018();
  sub_1AFDFE918();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE918();
  sub_1AFDFE8C8();
  sub_1AFDFE8C8();
  sub_1AF51E090();
  sub_1AFDFE918();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AF51D7F0();
  sub_1AFDFE918();
  sub_1AFDFE988();
  sub_1AF51D3CC();
  sub_1AFDFE918();
  return sub_1AFDFE8C8();
}

uint64_t sub_1AF9E7F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  sub_1AFDFF3F8();
  v6 = *(v2 + 28);
  v5 = *(v2 + 32);
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v8 = v7;
  sub_1AF480018();
  sub_1AFDFE918();
  if (v3)
  {
    return (*(*(v8 - 8) + 8))(a2, v8);
  }

  if (v6 == -1 && !v5)
  {
    sub_1AFDFE918();
  }

  sub_1AFDFE8C8();
  sub_1AFDFE8C8();
  sub_1AF51E090();
  sub_1AFDFE918();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AF51D7F0();
  sub_1AFDFE918();
  sub_1AFDFE988();
  sub_1AF51D3CC();
  sub_1AFDFE918();
  return sub_1AFDFE8C8();
}

uint64_t sub_1AF9E8244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  sub_1AFDFF3F8();
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AF480018();
  sub_1AFDFE918();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE918();
  sub_1AFDFE8C8();
  sub_1AFDFE8C8();
  sub_1AF51E090();
  sub_1AFDFE918();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AF51D7F0();
  sub_1AFDFE918();
  sub_1AFDFE988();
  sub_1AF51D3CC();
  sub_1AFDFE918();
  return sub_1AFDFE8C8();
}

uint64_t sub_1AF9E8520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  sub_1AFDFF3F8();
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AF480018();
  sub_1AFDFE918();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE918();
  sub_1AFDFE8C8();
  sub_1AFDFE8C8();
  sub_1AF51E090();
  sub_1AFDFE918();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AF51D7F0();
  sub_1AFDFE918();
  sub_1AFDFE988();
  sub_1AF51D3CC();
  sub_1AFDFE918();
  return sub_1AFDFE8C8();
}

uint64_t sub_1AF9E8834@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  sub_1AFDFF3F8();
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AF480018();
  sub_1AFDFE918();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE918();
  sub_1AFDFE8C8();
  sub_1AFDFE8C8();
  sub_1AF51E090();
  sub_1AFDFE918();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AF51D7F0();
  sub_1AFDFE918();
  sub_1AFDFE988();
  sub_1AF51D3CC();
  sub_1AFDFE918();
  return sub_1AFDFE8C8();
}

uint64_t sub_1AF9E8B10(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (!sub_1AF69504C(2022, v6, v7))
    {
      sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
      sub_1AF47FEB4();
      sub_1AFDFE768();
    }

    sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v9 = v23;
    v8 = v24;
    if (v25)
    {
      v9 = -1;
      v8 = 0;
    }

    *(v3 + 36) = v9;
    *(v3 + 40) = v8;
    LOBYTE(v23) = 1;
    *(v3 + 32) = sub_1AFDFE718() & 1;
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF69504C(1075, v10, v11))
    {
      v12 = 1;
    }

    else
    {
      LOBYTE(v23) = 2;
      v12 = sub_1AFDFE718() & 1;
    }

    *(v3 + 33) = v12;
    sub_1AF51E03C();
    sub_1AFDFE768();
    *v3 = v23;
    *(v3 + 4) = v24;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2047, v13, v14))
    {
      if (v24)
      {
        *(v3 + 8) = -1082130432;
      }

      else
      {
        *(v3 + 8) = v23;
        *v3 = 0;
        *(v3 + 4) = 1;
      }
    }

    else
    {
      LOBYTE(v23) = 4;
      sub_1AFDFE738();
      *(v3 + 8) = v15;
    }

    sub_1AF51D79C();
    sub_1AFDFE6E8();
    if (v23 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v23;
    }

    *(v3 + 12) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF69504C(2023, v17, v18))
    {
      if (((v23 - 3) & 0xFC) != 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0x5060304u >> (8 * (v23 - 3));
      }

      *(v3 + 12) = v19;
    }

    *(v3 + 16) = sub_1AFDFE7D8();
    sub_1AF51D378();
    sub_1AFDFE768();
    *(v3 + 20) = 6;
    v20 = a1[3];
    v21 = a1[4];
    sub_1AF441150(a1, v20);
    if (sub_1AF69504C(1079, v20, v21))
    {
      *(v3 + 21) = 1;
    }

    else
    {
      *(v3 + 21) = sub_1AFDFE718() & 1;
    }

    result = sub_1AFDFE738();
    *(v3 + 24) = v22;
  }

  return result;
}

uint64_t sub_1AF9E8FF4(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  result = sub_1AFDFF3B8();
  if (v2)
  {
    return result;
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  if (sub_1AF69504C(2022, v6, v7))
  {
    *(v3 + 28) = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v8 = 0;
  *(v3 + 28) = v23;
  *(v3 + 32) = v24;
  v9 = -1;
  if (v23 == -1 && !v24)
  {
LABEL_4:
    sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v9 = v23;
    v8 = v24;
    if (v25)
    {
      v9 = -1;
      v8 = 0;
    }
  }

  *(v3 + 36) = v9;
  *(v3 + 40) = v8;
  LOBYTE(v23) = 1;
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  *(v3 + 44) = sub_1AFDFE718() & 1;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(1075, v10, v11))
  {
    v12 = 1;
  }

  else
  {
    LOBYTE(v23) = 2;
    v12 = sub_1AFDFE718() & 1;
  }

  *(v3 + 45) = v12;
  sub_1AF51E03C();
  sub_1AFDFE768();
  *v3 = v23;
  *(v3 + 4) = v24;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (sub_1AF69504C(2047, v13, v14))
  {
    if (v24)
    {
      *(v3 + 8) = -1082130432;
    }

    else
    {
      *(v3 + 8) = v23;
      *v3 = 0;
      *(v3 + 4) = 1;
    }
  }

  else
  {
    LOBYTE(v23) = 4;
    sub_1AFDFE738();
    *(v3 + 8) = v15;
  }

  sub_1AF51D79C();
  sub_1AFDFE6E8();
  if (v23 == 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = v23;
  }

  *(v3 + 24) = v16;
  v17 = a1[3];
  v18 = a1[4];
  sub_1AF441150(a1, v17);
  if (sub_1AF69504C(2023, v17, v18))
  {
    if (((v23 - 3) & 0xFC) != 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0x5060304u >> (8 * (v23 - 3));
    }

    *(v3 + 24) = v19;
  }

  *(v3 + 64) = sub_1AFDFE7D8();
  sub_1AF51D378();
  sub_1AFDFE768();
  *(v3 + 68) = 6;
  v20 = a1[3];
  v21 = a1[4];
  sub_1AF441150(a1, v20);
  if (sub_1AF69504C(1079, v20, v21))
  {
    *(v3 + 69) = 1;
  }

  else
  {
    *(v3 + 69) = sub_1AFDFE718() & 1;
  }

  result = sub_1AFDFE738();
  *(v3 + 72) = v22;
  return result;
}

uint64_t sub_1AF9E952C(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (!sub_1AF69504C(2022, v6, v7))
    {
      sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
      sub_1AF47FEB4();
      sub_1AFDFE768();
    }

    sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v9 = v23;
    v8 = v24;
    if (v25)
    {
      v9 = -1;
      v8 = 0;
    }

    *v3 = v9;
    *(v3 + 4) = v8;
    LOBYTE(v23) = 1;
    *(v3 + 20) = sub_1AFDFE718() & 1;
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF69504C(1075, v10, v11))
    {
      v12 = 1;
    }

    else
    {
      LOBYTE(v23) = 2;
      v12 = sub_1AFDFE718() & 1;
    }

    *(v3 + 21) = v12;
    sub_1AF51E03C();
    sub_1AFDFE768();
    *(v3 + 8) = v23;
    *(v3 + 12) = v24;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2047, v13, v14))
    {
      if (v24)
      {
        *(v3 + 16) = -1082130432;
      }

      else
      {
        *(v3 + 16) = v23;
        *(v3 + 8) = 0;
        *(v3 + 12) = 1;
      }
    }

    else
    {
      LOBYTE(v23) = 4;
      sub_1AFDFE738();
      *(v3 + 16) = v15;
    }

    sub_1AF51D79C();
    sub_1AFDFE6E8();
    if (v23 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v23;
    }

    *(v3 + 22) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF69504C(2023, v17, v18))
    {
      if (((v23 - 3) & 0xFC) != 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0x5060304u >> (8 * (v23 - 3));
      }

      *(v3 + 22) = v19;
    }

    *(v3 + 24) = sub_1AFDFE7D8();
    sub_1AF51D378();
    sub_1AFDFE768();
    *(v3 + 28) = 6;
    v20 = a1[3];
    v21 = a1[4];
    sub_1AF441150(a1, v20);
    if (sub_1AF69504C(1079, v20, v21))
    {
      *(v3 + 29) = 1;
    }

    else
    {
      *(v3 + 29) = sub_1AFDFE718() & 1;
    }

    result = sub_1AFDFE738();
    *(v3 + 32) = v22;
  }

  return result;
}

uint64_t sub_1AF9E9A10(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (!sub_1AF69504C(2022, v6, v7))
    {
      sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
      sub_1AF47FEB4();
      sub_1AFDFE768();
    }

    sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v9 = v23;
    v8 = v24;
    if (v25)
    {
      v9 = -1;
      v8 = 0;
    }

    *v3 = v9;
    *(v3 + 4) = v8;
    LOBYTE(v23) = 1;
    *(v3 + 37) = sub_1AFDFE718() & 1;
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF69504C(1075, v10, v11))
    {
      v12 = 1;
    }

    else
    {
      LOBYTE(v23) = 2;
      v12 = sub_1AFDFE718() & 1;
    }

    *(v3 + 38) = v12;
    sub_1AF51E03C();
    sub_1AFDFE768();
    *(v3 + 8) = v23;
    *(v3 + 12) = v24;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2047, v13, v14))
    {
      if (v24)
      {
        *(v3 + 16) = -1082130432;
      }

      else
      {
        *(v3 + 16) = v23;
        *(v3 + 8) = 0;
        *(v3 + 12) = 1;
      }
    }

    else
    {
      LOBYTE(v23) = 4;
      sub_1AFDFE738();
      *(v3 + 16) = v15;
    }

    sub_1AF51D79C();
    sub_1AFDFE6E8();
    if (v23 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v23;
    }

    *(v3 + 20) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF69504C(2023, v17, v18))
    {
      LOBYTE(v19) = 6;
      if (*(v3 + 96) <= 1 && !*(v3 + 88))
      {
        LOBYTE(v19) = v16;
        if ((v23 - 3) <= 3u)
        {
          v19 = 0x5060304u >> (8 * ((v23 - 3) & 0x1F));
        }
      }

      *(v3 + 20) = v19;
    }

    *(v3 + 24) = sub_1AFDFE7D8();
    sub_1AF51D378();
    sub_1AFDFE768();
    *(v3 + 28) = 6;
    v20 = a1[3];
    v21 = a1[4];
    sub_1AF441150(a1, v20);
    if (sub_1AF69504C(1079, v20, v21))
    {
      *(v3 + 29) = 1;
    }

    else
    {
      *(v3 + 29) = sub_1AFDFE718() & 1;
    }

    result = sub_1AFDFE738();
    *(v3 + 32) = v22;
  }

  return result;
}

uint64_t sub_1AF9E9F60(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EA83C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (!sub_1AF69504C(2022, v6, v7))
    {
      sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
      sub_1AF47FEB4();
      sub_1AFDFE768();
    }

    sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v9 = v23;
    v8 = v24;
    if (v25)
    {
      v9 = -1;
      v8 = 0;
    }

    *v3 = v9;
    *(v3 + 4) = v8;
    LOBYTE(v23) = 1;
    *(v3 + 30) = sub_1AFDFE718() & 1;
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF69504C(1075, v10, v11))
    {
      v12 = 1;
    }

    else
    {
      LOBYTE(v23) = 2;
      v12 = sub_1AFDFE718() & 1;
    }

    *(v3 + 31) = v12;
    sub_1AF51E03C();
    sub_1AFDFE768();
    *(v3 + 8) = v23;
    *(v3 + 12) = v24;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2047, v13, v14))
    {
      if (v24)
      {
        *(v3 + 16) = -1082130432;
      }

      else
      {
        *(v3 + 16) = v23;
        *(v3 + 8) = 0;
        *(v3 + 12) = 1;
      }
    }

    else
    {
      LOBYTE(v23) = 4;
      sub_1AFDFE738();
      *(v3 + 16) = v15;
    }

    sub_1AF51D79C();
    sub_1AFDFE6E8();
    if (v23 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v23;
    }

    *(v3 + 20) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF69504C(2023, v17, v18))
    {
      if (((v23 - 3) & 0xFC) != 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0x5060304u >> (8 * (v23 - 3));
      }

      *(v3 + 20) = v19;
    }

    *(v3 + 24) = sub_1AFDFE7D8();
    sub_1AF51D378();
    sub_1AFDFE768();
    *(v3 + 28) = 6;
    v20 = a1[3];
    v21 = a1[4];
    sub_1AF441150(a1, v20);
    if (sub_1AF69504C(1079, v20, v21))
    {
      *(v3 + 29) = 1;
    }

    else
    {
      *(v3 + 29) = sub_1AFDFE718() & 1;
    }

    result = sub_1AFDFE738();
    *(v3 + 32) = v22;
  }

  return result;
}

double sub_1AF9EA444@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF9EA6D8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF9EA48C(void *a1)
{
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v10;
  v13 = *(v1 + 32);
  result = sub_1AF9E8834(a1, v12 - v8);
  if (!v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

BOOL sub_1AF9EA5A0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 12))
  {
    if (v2 == 0.0)
    {
      if ((*(a2 + 12) & 1) == 0 || v3 != 0.0)
      {
        return 0;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) != 1)
      {
        return 0;
      }
    }

    else if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) <= 1)
    {
      return 0;
    }
  }

  else if ((*(a2 + 12) & 1) != 0 || v3 != v2)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || ((*(a1 + 29) ^ *(a2 + 29)) & 1) != 0 || ((*(a1 + 30) ^ *(a2 + 30)) & 1) != 0 || ((*(a1 + 31) ^ *(a2 + 31)) & 1) != 0)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32);
}

double sub_1AF9EA6D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  *&v14 = 0xFFFFFFFFLL;
  DWORD2(v14) = 0;
  BYTE12(v14) = 1;
  *v15 = -1082130432;
  v15[4] = 0;
  *&v15[8] = 256;
  *&v15[12] = 16843008;
  sub_1AF9E9F60(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (!v2)
  {
    (*(v7 + 8))(v10, v6);
    result = *&v14;
    v12 = *v15;
    *a2 = v14;
    *(a2 + 16) = v12;
    *(a2 + 32) = *&v15[16];
  }

  return result;
}

unint64_t sub_1AF9EA83C()
{
  result = qword_1ED7240F8;
  if (!qword_1ED7240F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7240F8);
  }

  return result;
}

void sub_1AF9EA890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9EA83C();
    v7 = a3(a1, &type metadata for ParticleDefaultRendererableCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 sub_1AF9EA8F4@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF8989FC(0xD000000000000013, 0x80000001AFF43640, 0xD000000000000013, 0x80000001AFF43660, MEMORY[0x1E69E7CC0], v7);
  nullsub_106();
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF9EA994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 168);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a4 + 232);
  ObjectType = swift_getObjectType();
  v15 = v8;
  swift_unknownObjectRetain();

  CFXBufferAllocatorPerFrameAllocateWithLength(v15, [v7 encodedLength]);
  v17 = v16;
  v19 = v18;

  sub_1AF471B58(v17, v19, 0);
  v20 = *(a2 + 8);

  sub_1AF3C9244(v20, v29);

  if (v30)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22 = vdupq_n_s32(v21);
  v28[0] = vbslq_s8(v22, xmmword_1AFE20150, v29[0]);
  v28[1] = vbslq_s8(v22, xmmword_1AFE20160, v29[1]);
  v28[2] = vbslq_s8(v22, xmmword_1AFE20180, v29[2]);
  v28[3] = vbslq_s8(v22, xmmword_1AFE201A0, v29[3]);
  type metadata accessor for particle_decal_material_constants(0);
  sub_1AF471D6C(v28, 0, ObjectType, v23);
  v24 = sub_1AF9F10EC(a3, a4, a5, 1, a6);
  sub_1AF471D54(v25, 200);
  sub_1AF471CC4(v24, 201, (a1 + 136));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_1AF9EAB88(void *a1, uint64_t a2)
{
  sub_1AF9EB1F4(0, &qword_1EB641BD8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EB1A0();
  sub_1AFDFF3F8();
  v11[1] = a2;
  sub_1AF480018();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF9EACF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65727574786574 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF9EAD80(uint64_t a1)
{
  v2 = sub_1AF9EB1A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9EADBC(uint64_t a1)
{
  v2 = sub_1AF9EB1A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9EADF8()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  *(v0 + 88) = sub_1AF9EA8F4;
  *(v0 + 96) = 0;

  return v0;
}

void *sub_1AF9EAE60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF9EB008(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AF9EAEBC()
{
  result = qword_1EB641BB0;
  if (!qword_1EB641BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BB0);
  }

  return result;
}

unint64_t sub_1AF9EAF10(uint64_t a1)
{
  result = sub_1AF9EAF38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9EAF38()
{
  result = qword_1EB641BB8;
  if (!qword_1EB641BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BB8);
  }

  return result;
}

unint64_t sub_1AF9EAF8C(uint64_t a1)
{
  result = sub_1AF9EAFB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9EAFB4()
{
  result = qword_1EB641BC0;
  if (!qword_1EB641BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BC0);
  }

  return result;
}

void *sub_1AF9EB008(void *a1)
{
  sub_1AF9EB1F4(0, &qword_1EB641BC8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF9EB1A0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF9EB1A0()
{
  result = qword_1EB641BD0;
  if (!qword_1EB641BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BD0);
  }

  return result;
}

void sub_1AF9EB1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9EB1A0();
    v7 = a3(a1, &type metadata for ParticleDecalRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9EB26C()
{
  result = qword_1EB641BE0;
  if (!qword_1EB641BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BE0);
  }

  return result;
}

unint64_t sub_1AF9EB2C4()
{
  result = qword_1EB641BE8;
  if (!qword_1EB641BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BE8);
  }

  return result;
}

unint64_t sub_1AF9EB31C()
{
  result = qword_1EB641BF0;
  if (!qword_1EB641BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BF0);
  }

  return result;
}

__n128 sub_1AF9EB370@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AF896E30(&v8);
    v9 = 0u;
    v10 = 0u;
    *&v11 = 0;
    *(&v11 + 1) = 0xD000000000000016;
    v12.n128_u64[0] = 0x80000001AFF436A0;
    v12.n128_u64[1] = 0;
    *&v13 = 0;
    *(&v13 + 1) = v8;
    v14 = 0u;
    v15 = 0u;
    *&v16 = 0;
    *(&v16 + 1) = 0xD000000000000016;
    *&v17 = 0x80000001AFF436C0;
    *(&v17 + 1) = 0;
    *&v18 = 0;
    *(&v18 + 1) = v8;
    *&v19 = &unk_1F2506D70;
    *(&v19 + 1) = 0;
    nullsub_106();
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  else
  {
    sub_1AF8989FC(0xD000000000000016, 0x80000001AFF43680, 0xD000000000000016, 0x80000001AFF436A0, MEMORY[0x1E69E7CC0], &v9);
    nullsub_106();
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  v3 = v29;
  *(a2 + 128) = v28;
  *(a2 + 144) = v3;
  *(a2 + 160) = v30;
  v4 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v4;
  v5 = v27;
  *(a2 + 96) = v26;
  *(a2 + 112) = v5;
  v6 = v21;
  *a2 = v20;
  *(a2 + 16) = v6;
  result = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9EB520(void *a1)
{
  v3 = v1;
  sub_1AF9EC500(0, &qword_1EB641C20, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EC4AC();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12[7] = 0;
  type metadata accessor for MTLCullMode(0);
  sub_1AF9EC564(&unk_1EB639AB8);
  sub_1AFDFE918();
  if (!v2)
  {
    v12[6] = *(v3 + 8);
    v12[5] = 1;
    sub_1AF51D7F0();
    sub_1AFDFE918();
    v12[4] = 2;
    sub_1AFDFE8E8();
    v12[3] = 3;
    sub_1AFDFE8E8();
    v12[2] = 4;
    sub_1AFDFE8E8();
    v12[1] = 5;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9EB794()
{
  v1 = *v0;
  v2 = 0x65646F4D6C6C7563;
  v3 = 0x6168706C61;
  v4 = 0x7265776F70;
  if (v1 != 4)
  {
    v4 = 0x536873654D657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F4D74726F73;
  if (v1 != 1)
  {
    v5 = 0x656C616373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF9EB850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9EBE5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9EB878(uint64_t a1)
{
  v2 = sub_1AF9EC4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9EB8B4(uint64_t a1)
{
  v2 = sub_1AF9EC4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9EB8F8()
{
  v1 = v0;
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v2 = sub_1AF89DCA8(4);
  v3 = swift_allocObject();
  *(v3 + 16) = *v1;
  *(v3 + 25) = *(v1 + 9);
  *(v2 + 88) = sub_1AF9EC4A4;
  *(v2 + 96) = v3;

  return v2;
}

uint64_t sub_1AF9EB984(uint64_t result, void *a2)
{
  v3 = *(v2 + 24);
  *(result + 16) = 4;
  if (v3 == 1)
  {
    a2[2] = 0;
    a2[6] = 1;
  }

  else
  {
    a2[3] = 3;
  }

  return result;
}

double sub_1AF9EB9FC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9EC054(a1, v5);
  if (!v2)
  {
    *a2 = v5[0];
    result = *(v5 + 9);
    *(a2 + 9) = *(v5 + 9);
  }

  return result;
}

uint64_t sub_1AF9EBA58()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](1);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EBAE8()
{
  MEMORY[0x1B271ACB0](1);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF9EBB4C()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](1);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EBBD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return (*a1 != *a2) | (*(a2 + 24) ^ *(a1 + 24)) & 1u;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AF9EBC1C(_OWORD *a1, _OWORD *a2)
{
  v3[0] = *a1;
  *(v3 + 9) = *(a1 + 9);
  v4[0] = *a2;
  *(v4 + 9) = *(a2 + 9);
  return sub_1AF9EBDEC(v3, v4) & 1;
}

double sub_1AF9EBC68@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 4;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 12) = result;
  *(a1 + 20) = 1065353216;
  *(a1 + 24) = 0;
  return result;
}

unint64_t sub_1AF9EBCA0()
{
  result = qword_1EB641BF8;
  if (!qword_1EB641BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641BF8);
  }

  return result;
}

unint64_t sub_1AF9EBCF4(uint64_t a1)
{
  result = sub_1AF9EBD1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9EBD1C()
{
  result = qword_1EB641C00;
  if (!qword_1EB641C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C00);
  }

  return result;
}

unint64_t sub_1AF9EBD70(uint64_t a1)
{
  result = sub_1AF9EBD98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9EBD98()
{
  result = qword_1EB641C08;
  if (!qword_1EB641C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C08);
  }

  return result;
}

uint64_t sub_1AF9EBDEC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
  {
    return (*(a1 + 24) ^ *(a2 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF9EBE5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D6C6C7563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D74726F73 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x536873654D657375 && a2 == 0xED00007265646168)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AF9EC054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EC500(0, &qword_1EB641C10, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EC4AC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  type metadata accessor for MTLCullMode(0);
  v21[7] = 0;
  sub_1AF9EC564(&unk_1ED721FE0);
  sub_1AFDFE768();
  v11 = v22;
  v21[5] = 1;
  sub_1AF51D79C();
  sub_1AFDFE768();
  v12 = v21[6];
  v21[4] = 2;
  sub_1AFDFE738();
  v14 = v13;
  v21[3] = 3;
  sub_1AFDFE738();
  v16 = v15;
  v21[2] = 4;
  sub_1AFDFE738();
  v18 = v17;
  v21[1] = 5;
  v19 = sub_1AFDFE718();
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = v14;
  *(a2 + 16) = v16;
  *(a2 + 20) = v18;
  *(a2 + 24) = v19 & 1;
  return result;
}

void *sub_1AF9EC328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v5 = *(a2 + 8);

  sub_1AF3C9244(v5, v22);

  if (v23)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s32(v6);
  v17 = vbslq_s8(v7, xmmword_1AFE20150, v22[0]);
  v16 = vbslq_s8(v7, xmmword_1AFE20160, v22[1]);
  v15 = vbslq_s8(v7, xmmword_1AFE20180, v22[2]);
  v14 = vbslq_s8(v7, xmmword_1AFE201A0, v22[3]);
  v8 = log2f(1.0 - *(v3 + 20));
  if (v8 <= -10000000.0)
  {
    v8 = -10000000.0;
  }

  if (v8 > -0.01)
  {
    v8 = -0.01;
  }

  v9 = *(v3 + 12);
  v10 = *(v3 + 16);
  v11 = *(a3 + 232);
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v19 = v9 * 3.0;
  v20 = v10;
  v21 = v8;
  v12 = CFXBufferAllocatorPerFrameAllocateWithBytes(v11, v18, 0x50uLL);

  return v12;
}

unint64_t sub_1AF9EC4AC()
{
  result = qword_1EB641C18;
  if (!qword_1EB641C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C18);
  }

  return result;
}

void sub_1AF9EC500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9EC4AC();
    v7 = a3(a1, &type metadata for ParticleGaussianRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF9EC564(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTLCullMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9EC5BC()
{
  result = qword_1EB641C28;
  if (!qword_1EB641C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C28);
  }

  return result;
}

unint64_t sub_1AF9EC614()
{
  result = qword_1EB641C30;
  if (!qword_1EB641C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C30);
  }

  return result;
}

unint64_t sub_1AF9EC66C()
{
  result = qword_1EB641C38;
  if (!qword_1EB641C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C38);
  }

  return result;
}

__n128 sub_1AF9EC6C0@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4800) == 0x4000)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v4 = "particle_line_frag";
  }

  else
  {
    v4 = "particle_line_vert";
  }

  sub_1AF8989FC(0xD000000000000012, 0x80000001AFF436E0, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9EC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);

  sub_1AF3C9244(v8, v54);

  if (v55)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = vbslq_s8(v10, xmmword_1AFE20150, v54[0]);
  v12 = vbslq_s8(v10, xmmword_1AFE20160, v54[1]);
  v13 = vbslq_s8(v10, xmmword_1AFE20180, v54[2]);
  v14 = vbslq_s8(v10, xmmword_1AFE201A0, v54[3]);
  v15 = *(v4 + 16);
  v16 = -1.0;
  if (v15 - 11 <= 0xF4)
  {
    v16 = 1.0 / v15;
  }

  v17 = *(v4 + 8);
  if (v17 > v16)
  {
    v18 = *(v4 + 8);
  }

  else
  {
    v18 = v16;
  }

  v19 = *(v4 + 24);
  v20 = *(v4 + 28);
  if (v17 < 0.0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v18;
  }

  v50[0] = v11;
  v50[1] = v12;
  v50[2] = v13;
  v50[3] = v14;
  v51 = v21;
  v52 = v19;
  v53 = v20;
  if (!a4)
  {
    return 0;
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
    return 0;
  }

  v23 = v22[22];
  if (v23 <= 0)
  {
    v23 = v22[25];
    if (v23 < 1)
    {
      return 0;
    }
  }

  v40 = v14;
  v41 = v13;
  v42 = v12;
  v43 = v11;
  v45 = a3;
  v24 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v24, v23);
  v27 = v25;
  v28 = v26;
  if (v22[21])
  {
    v44 = a1;
    v29 = v22[21];
  }

  else
  {
    v29 = v22[24];
    if (!v29)
    {
      v46[0] = v43;
      v46[1] = v42;
      v46[2] = v41;
      v46[3] = v40;
      v47 = v21;
      v48 = v19;
      v49 = v20;
      sub_1AF9F4684(v46, v25, v26, 0x50uLL);

      return v27;
    }

    v44 = a1;
    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_26;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v31 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_26:
    swift_unknownObjectRetain();
    goto LABEL_27;
  }

  v32 = v31;
  sub_1AF22D744(v31, v29);

LABEL_27:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v23)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v34 = sub_1AFDFDA08();
    *&v46[0] = 1;
    sub_1AF75A4B4(v34, 0xD00000000000002ELL, 0x80000001AFF435B0, v46);
  }

  swift_unknownObjectRetain_n();
  sub_1AF471B58(v27, v28, 0);
  swift_unknownObjectRelease();
  type metadata accessor for particle_line_material_constants(0);
  v36 = v35;
  swift_unknownObjectRetain();
  sub_1AF471D6C(v50, 0, ObjectType, v36);
  swift_unknownObjectRelease();
  v37 = sub_1AF9F1224(v45, a4);
  sub_1AF471D54(v38, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v37, 201, (v44 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v27;
}

uint64_t sub_1AF9ECBBC(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_1AF9ECC3C()
{
  v1 = *(v0 + 28);
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v2 = sub_1AF89DCA8(4);
  v3 = v2;
  v4 = 2;
  if (v1 > 0.0)
  {
    v4 = 3;
  }

  v2[2] = v4;
  v2[11] = sub_1AF9EC6C0;
  v2[12] = 0;

  return v3;
}

uint64_t sub_1AF9ECCBC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 28);
  v4 = 4;
  if (v3 <= 0.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  if (v3 <= 0.0)
  {
    v4 = 2;
  }

  *(result + 16) = v5;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1AF9ECD1C()
{
  sub_1AFDFF288();
  sub_1AF9F1D2C();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9ECDD8()
{
  sub_1AFDFF288();
  sub_1AF9F1D2C();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF9ECE40(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 12) = *(a1 + 28);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 12) = *(a2 + 28);
  return sub_1AF9ED04C(&v5, &v7);
}

double sub_1AF9ECE8C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 8) = -1082130432;
  *(a1 + 12) = 0;
  *(a1 + 16) = 256;
  *(a1 + 20) = 256;
  *(a1 + 24) = 0x4120000000000000;
  *(a1 + 32) = 256;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 36) = 0xFFFFFFFFLL;
  return result;
}

double sub_1AF9ECED4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9ED2E4(a1, &v6);
  if (!v2)
  {
    v5 = *v7;
    *a2 = v6;
    a2[1] = v5;
    result = *&v7[12];
    *(a2 + 28) = *&v7[12];
  }

  return result;
}

uint64_t sub_1AF9ECF1C(void *a1)
{
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v10 = v1[1];
  v13 = *v1;
  v14[0] = v10;
  *(v14 + 12) = *(v1 + 28);
  result = sub_1AF9E7C80(a1, &v12[-v8]);
  if (!v2)
  {
    v12[15] = 18;
    sub_1AFDFE8E8();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

BOOL sub_1AF9ED04C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4))
  {
    if (v2 == 0.0)
    {
      if ((*(a2 + 4) & 1) == 0 || v3 != 0.0)
      {
        return 0;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if ((*(a2 + 4) & 1) == 0 || LODWORD(v3) != 1)
      {
        return 0;
      }
    }

    else if ((*(a2 + 4) & 1) == 0 || LODWORD(v3) <= 1)
    {
      return 0;
    }
  }

  else if ((*(a2 + 4) & 1) != 0 || v3 != v2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && ((*(a1 + 21) ^ *(a2 + 21)) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0 && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40);
}

uint64_t sub_1AF9ED194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  result = 1;
  if (v3 != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0)
  {
    return result;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  v10 = *(a1 + 21);
  v12 = *(a1 + 24);
  v11 = *(a1 + 28);
  v13 = *a2;
  v14 = *(a2 + 8);
  if (*(a1 + 4) == 1)
  {
    if (v5 == 0.0)
    {
      if (v13 == 0.0)
      {
        v17 = *(a2 + 4);
      }

      else
      {
        v17 = 0;
      }

      if ((v17 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v5) == 1)
      {
        if (LODWORD(v13) == 1)
        {
          v15 = *(a2 + 4);
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          goto LABEL_12;
        }

        return 1;
      }

      if (LODWORD(v13) > 1)
      {
        v18 = *(a2 + 4);
      }

      else
      {
        v18 = 0;
      }

      if (v18 != 1)
      {
        return 1;
      }
    }

LABEL_12:
    result = 1;
    if (v6 != v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 == v13)
  {
    v16 = *(a2 + 4);
  }

  else
  {
    v16 = 1;
  }

  result = 1;
  if ((v16 & 1) == 0 && v6 == v14)
  {
LABEL_19:
    if (v7 == *(a2 + 12) && v8 == *(a2 + 16) && v9 == *(a2 + 20) && ((v10 ^ *(a2 + 21)) & 1) == 0 && v12 > 0.0 != *(a2 + 24) <= 0.0)
    {
      return (v11 > 0.0) ^ (*(a2 + 28) > 0.0);
    }
  }

  return result;
}

uint64_t sub_1AF9ED2E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  *&v15[4] = 1;
  v15[8] = 1;
  *&v15[12] = -1082130432;
  v15[16] = 0;
  *v16 = 256;
  *&v16[4] = 256;
  *&v16[8] = 0x4120000000000000;
  *&v16[16] = 256;
  *&v16[20] = 0xFFFFFFFFLL;
  sub_1AF9E8B10(a1);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v17 = 18;
  v12 = sub_1AFDFE6C8();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  result = (*(v7 + 8))(v10, v6);
  v13 = *&v16[12];
  if ((v12 & 0x100000000) == 0)
  {
    v13 = *&v12;
  }

  *&v16[12] = v13;
  v14 = *v16;
  *a2 = *&v15[4];
  a2[1] = v14;
  *(a2 + 28) = *&v16[12];
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleLineRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 21);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleLineRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 21) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF9ED56C()
{
  result = qword_1EB641C40;
  if (!qword_1EB641C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C40);
  }

  return result;
}

unint64_t sub_1AF9ED5C0(uint64_t a1)
{
  result = sub_1AF9ED5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9ED5E8()
{
  result = qword_1EB641C48;
  if (!qword_1EB641C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C48);
  }

  return result;
}

unint64_t sub_1AF9ED63C(uint64_t a1)
{
  result = sub_1AF9ED664();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9ED664()
{
  result = qword_1EB641C50;
  if (!qword_1EB641C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C50);
  }

  return result;
}

unint64_t sub_1AF9ED6B8(uint64_t a1)
{
  result = sub_1AF9ED6E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9ED6E0()
{
  result = qword_1EB641C58;
  if (!qword_1EB641C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleMeshRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 40))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleMeshRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 6;
    }
  }

  return result;
}

__n128 sub_1AF9ED7D4@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4800) == 0x4000)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v4 = "particle_mesh_frag";
  }

  else
  {
    v4 = "particle_mesh_vert";
  }

  sub_1AF8989FC(0xD000000000000012, 0x80000001AFF43740, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9ED8C0()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(132);
  *(v0 + 88) = sub_1AF9ED7D4;
  *(v0 + 96) = 0;

  return v0;
}

uint64_t sub_1AF9ED928()
{
  v1 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9ED9C4()
{
  v1 = *(v0 + 24);
  MEMORY[0x1B271ACB0](0);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AF9EDA34()
{
  v1 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EDAD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v5(v2, 0, ObjectType, a2);
  return v5(v2 + 8, 0, ObjectType, a2);
}

BOOL sub_1AF9EDB50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AF9EE46C(v5, v7);
}

__n128 sub_1AF9EDB9C@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *a1 = result;
  a1[1].n128_u8[0] = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  return result;
}

unint64_t sub_1AF9EDBB4()
{
  result = qword_1EB631840;
  if (!qword_1EB631840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631840);
  }

  return result;
}

unint64_t sub_1AF9EDC08(uint64_t a1)
{
  result = sub_1AF9EDC30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9EDC30()
{
  result = qword_1EB631848;
  if (!qword_1EB631848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631848);
  }

  return result;
}

unint64_t sub_1AF9EDC84(uint64_t a1)
{
  result = sub_1AF9EDCAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9EDCAC()
{
  result = qword_1EB631838;
  if (!qword_1EB631838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631838);
  }

  return result;
}

uint64_t sub_1AF9EDD0C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EDDFC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF9EDED8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EDFC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9EE538();
  *a1 = result;
  return result;
}

void sub_1AF9EDFF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007974;
  v4 = 0x69746E456873656DLL;
  v5 = 0xE800000000000000;
  v6 = 0x65646F4D74726F73;
  v7 = 0xE900000000000078;
  v8 = 0x65646E4974726170;
  if (v2 != 3)
  {
    v8 = 0x7865646E49646F6CLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001AFF22E00;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1AF9EE0A0()
{
  v1 = *v0;
  v2 = 0x69746E456873656DLL;
  v3 = 0x65646F4D74726F73;
  v4 = 0x65646E4974726170;
  if (v1 != 3)
  {
    v4 = 0x7865646E49646F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1AF9EE148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9EE538();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9EE170(uint64_t a1)
{
  v2 = sub_1AF9EE8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9EE1AC(uint64_t a1)
{
  v2 = sub_1AF9EE8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9EE1E8(void *a1)
{
  v3 = v1;
  sub_1AF9EE8F8(0, &qword_1EB641C60, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EE8A4();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 16);
    HIBYTE(v12) = 2;
    sub_1AF51D7F0();
    sub_1AFDFE918();
    LOBYTE(v13) = 3;
    sub_1AFDFE8F8();
    LOBYTE(v13) = 4;
    sub_1AFDFE8F8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF9EE40C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EE584(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF9EE538()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF9EE584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EE8F8(0, &qword_1EB630AA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9EE8A4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v26 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v12 = v27;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  v15 = 0xFFFFFFFFLL;
  if (sub_1AF694FF8(1070, v13, v14))
  {
    v26 = 1;
    sub_1AFDFE768();
    v15 = v27;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_1AF441150(a1, v16);
  if (sub_1AF694FF8(1092, v16, v17))
  {
    v26 = 2;
    sub_1AF51D79C();
    sub_1AFDFE768();
    v18 = v27;
    LOBYTE(v27) = 3;
    v19 = sub_1AFDFE748();
    LOBYTE(v27) = 4;
    v20 = sub_1AFDFE6D8();
    v22 = v21;
    v23 = *(v7 + 8);
    v25 = v20;
    v23(v10, v6);
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0;
    v19 = 0;
    v24 = 0;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v24;
  return result;
}

unint64_t sub_1AF9EE8A4()
{
  result = qword_1EB631860;
  if (!qword_1EB631860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631860);
  }

  return result;
}

void sub_1AF9EE8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9EE8A4();
    v7 = a3(a1, &type metadata for ParticleMeshRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1AF9EE95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v4 = *(a2 + 8);

  sub_1AF3C9244(v4, v11);

  if (v12)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vdupq_n_s32(v5);
  v7 = *(a3 + 232);
  v10[0] = vbslq_s8(v6, xmmword_1AFE20150, v11[0]);
  v10[1] = vbslq_s8(v6, xmmword_1AFE20160, v11[1]);
  v10[2] = vbslq_s8(v6, xmmword_1AFE20180, v11[2]);
  v10[3] = vbslq_s8(v6, xmmword_1AFE201A0, v11[3]);
  v8 = CFXBufferAllocatorPerFrameAllocateWithBytes(v7, v10, 0x40uLL);

  return v8;
}

unint64_t sub_1AF9EEA7C()
{
  result = qword_1EB641C68;
  if (!qword_1EB641C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C68);
  }

  return result;
}

unint64_t sub_1AF9EEAD4()
{
  result = qword_1EB631850;
  if (!qword_1EB631850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631850);
  }

  return result;
}

unint64_t sub_1AF9EEB2C()
{
  result = qword_1EB631858;
  if (!qword_1EB631858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631858);
  }

  return result;
}

__n128 sub_1AF9EEB80@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4800) == 0x4000)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v4 = "particle_point_frag";
  }

  else
  {
    v4 = "particle_point_vert";
  }

  sub_1AF8989FC(0xD000000000000013, 0x80000001AFF437A0, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9EEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);

  sub_1AF3C9244(v8, v45);

  if (v46)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = vbslq_s8(v10, xmmword_1AFE20150, v45[0]);
  v12 = vbslq_s8(v10, xmmword_1AFE20160, v45[1]);
  v13 = vbslq_s8(v10, xmmword_1AFE20180, v45[2]);
  v14 = vbslq_s8(v10, xmmword_1AFE201A0, v45[3]);
  v15 = *(v4 + 24);
  v16 = -1.0;
  if (v15 - 11 <= 0xF4)
  {
    v16 = 1.0 / v15;
  }

  v17 = *(v4 + 16);
  if (v17 > v16)
  {
    v18 = *(v4 + 16);
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= 0.0)
  {
    v16 = v18;
  }

  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  *v44 = v16;
  *&v44[4] = *(v4 + 32);
  if (!a4)
  {
    return 0;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v20 = v19[22];
  if (v20 <= 0)
  {
    v20 = v19[25];
    if (v20 < 1)
    {
      return 0;
    }
  }

  v38 = a3;
  v21 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v21, v20);
  v24 = v22;
  v25 = v23;
  if (v19[21])
  {
    v37 = a1;
    v26 = v19[21];
  }

  else
  {
    v26 = v19[24];
    if (!v26)
    {
      v39[2] = v42;
      v39[3] = v43;
      v39[4] = *v44;
      v39[5] = *&v44[16];
      v39[0] = v40;
      v39[1] = v41;
      sub_1AF9F4684(v39, v22, v23, 0x60uLL);

      return v24;
    }

    v37 = a1;
    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_25;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v28 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_25:
    swift_unknownObjectRetain();
    goto LABEL_26;
  }

  v29 = v28;
  sub_1AF22D744(v28, v26);

LABEL_26:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v20)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v31 = sub_1AFDFDA08();
    *&v39[0] = 1;
    sub_1AF75A4B4(v31, 0xD00000000000002ELL, 0x80000001AFF435B0, v39);
  }

  swift_unknownObjectRetain_n();
  sub_1AF471B58(v24, v25, 0);
  swift_unknownObjectRelease();
  type metadata accessor for particle_point_material_constants(0);
  v33 = v32;
  swift_unknownObjectRetain();
  sub_1AF471D6C(&v40, 0, ObjectType, v33);
  swift_unknownObjectRelease();
  v34 = sub_1AF9F13AC(v38, a4);
  sub_1AF471D54(v35, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v34, 201, (v37 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_1AF9EF030()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v1 = *(v0 + 8);
  if (*(v0 + 12))
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

void *sub_1AF9EF184()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  v0[2] = 1;
  v0[11] = sub_1AF9EEB80;
  v0[12] = 0;

  return v0;
}

double sub_1AF9EF1EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a2 + 32) = 1;
  *&result = 1;
  *(a2 + 8) = xmmword_1AFE22A20;
  return result;
}

uint64_t sub_1AF9EF244()
{
  sub_1AFDFF288();
  sub_1AF9EF030();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9EF288()
{
  sub_1AFDFF288();
  sub_1AF9EF030();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF9EF2C4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1AF9EF4AC(v7, v8);
}

double sub_1AF9EF30C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1;
  *(a1 + 12) = 1;
  *(a1 + 16) = -1082130432;
  *(a1 + 20) = 256;
  *(a1 + 22) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 256;
  result = 131072.0;
  *(a1 + 32) = xmmword_1AFE8FA50;
  return result;
}

double sub_1AF9EF354@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF9EF614(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF9EF398(void *a1)
{
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = v1[1];
  v12[0] = *v1;
  v12[1] = v10;
  v12[2] = v1[2];
  result = sub_1AF9E8244(a1, v12 - v8);
  if (!v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

BOOL sub_1AF9EF4AC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 12))
  {
    if (v2 == 0.0)
    {
      if ((*(a2 + 12) & 1) == 0 || v3 != 0.0)
      {
        return 0;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) != 1)
      {
        return 0;
      }
    }

    else if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) <= 1)
    {
      return 0;
    }
  }

  else if ((*(a2 + 12) & 1) != 0 || v3 != v2)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && ((*(a1 + 20) ^ *(a2 + 20)) & 1) == 0 && ((*(a1 + 21) ^ *(a2 + 21)) & 1) == 0 && *(a1 + 22) == *(a2 + 22) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && ((*(a1 + 29) ^ *(a2 + 29)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44);
}

double sub_1AF9EF614@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  *&v13 = 0xFFFFFFFFLL;
  DWORD2(v13) = 1;
  BYTE12(v13) = 1;
  LODWORD(v14) = -1082130432;
  WORD2(v14) = 256;
  BYTE6(v14) = 0;
  DWORD2(v14) = 256;
  WORD6(v14) = 256;
  v15 = xmmword_1AFE8FA50;
  sub_1AF9E952C(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (!v2)
  {
    (*(v7 + 8))(v10, v6);
    v12 = v14;
    *a2 = v13;
    a2[1] = v12;
    result = *&v15;
    a2[2] = v15;
  }

  return result;
}

__n128 initializeWithCopy for ParticlePointRenderer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticlePointRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticlePointRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF9EF844()
{
  result = qword_1EB641C70;
  if (!qword_1EB641C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C70);
  }

  return result;
}

unint64_t sub_1AF9EF898(uint64_t a1)
{
  result = sub_1AF9EF8C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9EF8C0()
{
  result = qword_1EB641C78;
  if (!qword_1EB641C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C78);
  }

  return result;
}

unint64_t sub_1AF9EF914(uint64_t a1)
{
  result = sub_1AF9EF93C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9EF93C()
{
  result = qword_1EB641C80;
  if (!qword_1EB641C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C80);
  }

  return result;
}

unint64_t sub_1AF9EF990(uint64_t a1)
{
  result = sub_1AF9EF9B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9EF9B8()
{
  result = qword_1EB641C88;
  if (!qword_1EB641C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C88);
  }

  return result;
}

__n128 sub_1AF9EFA0C@<Q0>(__int16 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0xE700000000000000;
  v5 = 0x656C7573706163;
  v6 = 0xE800000000000000;
  v7 = 0x7265646E696C7963;
  v8 = 0xEB00000000786F62;
  v9 = 0x5F6465646E756F72;
  if (a2 != 3)
  {
    v9 = 0x657265687073;
    v8 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a2)
  {
    v5 = 0x7375726F74;
    v4 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  sub_1AFDFE218();

  *&v21[0] = 0xD000000000000013;
  *(&v21[0] + 1) = 0x80000001AFF43820;
  MEMORY[0x1B2718AE0](v10, v11);
  MEMORY[0x1B2718AE0](0x676172665FLL, 0xE500000000000000);
  v13 = 0x80000001AFF43820;
  if ((a1 & 0x800) != 0)
  {

    sub_1AFDFE218();

    *&v21[0] = 0xD000000000000013;
    *(&v21[0] + 1) = 0x80000001AFF43820;
    MEMORY[0x1B2718AE0](v10, v11);

    v15 = 0xEF796C6E6F687470;
LABEL_18:
    MEMORY[0x1B2718AE0](0x65645F676172665FLL, v15);
    v13 = *(&v21[0] + 1);
    v14 = *&v21[0];
    goto LABEL_19;
  }

  if ((a1 & 0x4000) != 0)
  {

    sub_1AFDFE218();

    *&v21[0] = 0xD000000000000013;
    *(&v21[0] + 1) = 0x80000001AFF43820;
    MEMORY[0x1B2718AE0](v10, v11);

    v15 = 0xEE00646572726566;
    goto LABEL_18;
  }

  v14 = *&v21[0];
LABEL_19:
  sub_1AF8989FC(0xD000000000000017, 0x80000001AFF43800, v14, v13, MEMORY[0x1E69E7CC0], v21);

  nullsub_106();
  v16 = v21[9];
  *(a3 + 128) = v21[8];
  *(a3 + 144) = v16;
  *(a3 + 160) = v21[10];
  v17 = v21[5];
  *(a3 + 64) = v21[4];
  *(a3 + 80) = v17;
  v18 = v21[7];
  *(a3 + 96) = v21[6];
  *(a3 + 112) = v18;
  v19 = v21[1];
  *a3 = v21[0];
  *(a3 + 16) = v19;
  result = v21[3];
  *(a3 + 32) = v21[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1AF9EFD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);

  sub_1AF3C9244(v8, v51);

  if (v52)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = vbslq_s8(v10, xmmword_1AFE20150, v51[0]);
  v12 = vbslq_s8(v10, xmmword_1AFE20160, v51[1]);
  v13 = vbslq_s8(v10, xmmword_1AFE20180, v51[2]);
  v14 = vbslq_s8(v10, xmmword_1AFE201A0, v51[3]);
  v15 = *(v4 + 24);
  v16 = -1.0;
  if (v15 - 11 <= 0xF4)
  {
    v16 = 1.0 / v15;
  }

  v17 = *(v4 + 16);
  if (v17 > v16)
  {
    v18 = *(v4 + 16);
  }

  else
  {
    v18 = v16;
  }

  v19 = *(v4 + 32);
  if (v17 < 0.0)
  {
    v20 = v16;
  }

  else
  {
    v20 = v18;
  }

  v48[0] = v11;
  v48[1] = v12;
  v48[2] = v13;
  v48[3] = v14;
  v49 = v20;
  v50 = v19;
  if (!a4)
  {
    return 0;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    return 0;
  }

  v22 = v21[22];
  if (v22 <= 0)
  {
    v22 = v21[25];
    if (v22 < 1)
    {
      return 0;
    }
  }

  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = v11;
  v44 = a3;
  v23 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v23, v22);
  v26 = v24;
  v27 = v25;
  if (v21[21])
  {
    v43 = a1;
    v28 = v21[21];
  }

  else
  {
    v28 = v21[24];
    if (!v28)
    {
      v45[0] = v42;
      v45[1] = v41;
      v45[2] = v40;
      v45[3] = v39;
      v46 = v20;
      v47 = v19;
      sub_1AF9F4684(v45, v24, v25, 0x50uLL);

      return v26;
    }

    v43 = a1;
    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_26;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v30 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_26:
    swift_unknownObjectRetain();
    goto LABEL_27;
  }

  v31 = v30;
  sub_1AF22D744(v30, v28);

LABEL_27:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v22)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v33 = sub_1AFDFDA08();
    *&v45[0] = 1;
    sub_1AF75A4B4(v33, 0xD00000000000002ELL, 0x80000001AFF435B0, v45);
  }

  swift_unknownObjectRetain_n();
  sub_1AF471B58(v26, v27, 0);
  swift_unknownObjectRelease();
  type metadata accessor for particle_primitive_material_constants(0);
  v35 = v34;
  swift_unknownObjectRetain();
  sub_1AF471D6C(v48, 0, ObjectType, v35);
  swift_unknownObjectRelease();
  v36 = sub_1AF9F1534(v44, a4);
  sub_1AF471D54(v37, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v36, 201, (v43 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v26;
}

uint64_t sub_1AF9F0158()
{
  v1 = v0;
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v2 = sub_1AF89DCA8(7);
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 45) = *(v1 + 29);
  *(v2 + 88) = sub_1AF9F0DFC;
  *(v2 + 96) = v3;

  return v2;
}

uint64_t sub_1AF9F0220()
{
  sub_1AFDFF288();
  sub_1AF9F1C44();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9F0298()
{
  sub_1AF9F1C44();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF9F02F4()
{
  sub_1AFDFF288();
  sub_1AF9F1C44();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF9F036C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return sub_1AF9F0598(&v5, &v7);
}

double sub_1AF9F03B8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = -1082130432;
  *(a1 + 20) = 0;
  *(a1 + 24) = 256;
  *&result = 16843008;
  *(a1 + 28) = 16843008;
  *(a1 + 36) = 0;
  return result;
}

double sub_1AF9F0400@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9F082C(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_1AF9F0448(void *a1)
{
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v10 = v1[1];
  v13 = *v1;
  *v14 = v10;
  *&v14[13] = *(v1 + 29);
  result = sub_1AF9E8834(a1, &v12[-v8]);
  if (!v2)
  {
    v12[15] = v14[20];
    v12[14] = 15;
    sub_1AF51D4A0();
    sub_1AFDFE918();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

BOOL sub_1AF9F0598(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((*(a1 + 12) & 1) == 0)
  {
    if ((*(a2 + 12) & 1) != 0 || v3 != v2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v2 == 0.0)
  {
    if ((*(a2 + 12) & 1) == 0 || v3 != 0.0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (LODWORD(v2) != 1)
  {
    if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) <= 1)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if ((*(a2 + 12) & 1) != 0 && LODWORD(v3) == 1)
  {
LABEL_17:
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && ((*(a1 + 29) ^ *(a2 + 29)) & 1) == 0 && ((*(a1 + 30) ^ *(a2 + 30)) & 1) == 0 && ((*(a1 + 31) ^ *(a2 + 31)) & 1) == 0 && *(a1 + 32) == *(a2 + 32))
    {
      return *(a1 + 36) == *(a2 + 36);
    }

    return 0;
  }

  return 0;
}

uint64_t sub_1AF9F06E0(float *a1, uint64_t a2)
{
  v3 = *a1;
  result = 1;
  if (LODWORD(v3) != *a2 || *(a1 + 1) != *(a2 + 4) || ((*(a1 + 30) ^ *(a2 + 30)) & 1) != 0 || ((*(a1 + 31) ^ *(a2 + 31)) & 1) != 0)
  {
    return result;
  }

  v5 = a1[2];
  v6 = a1[4];
  v7 = *(a1 + 20);
  v8 = *(a1 + 6);
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  v11 = a1[8];
  v12 = *(a1 + 36);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  if (*(a1 + 12) == 1)
  {
    if (v5 == 0.0)
    {
      if (v13 == 0.0)
      {
        v17 = *(a2 + 12);
      }

      else
      {
        v17 = 0;
      }

      if ((v17 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v5) == 1)
      {
        if (LODWORD(v13) == 1)
        {
          v15 = *(a2 + 12);
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          goto LABEL_12;
        }

        return 1;
      }

      if (LODWORD(v13) > 1)
      {
        v18 = *(a2 + 12);
      }

      else
      {
        v18 = 0;
      }

      if (v18 != 1)
      {
        return 1;
      }
    }

LABEL_12:
    result = 1;
    if (v6 != v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 == v13)
  {
    v16 = *(a2 + 12);
  }

  else
  {
    v16 = 1;
  }

  result = 1;
  if ((v16 & 1) == 0 && v6 == v14)
  {
LABEL_19:
    if (v7 == *(a2 + 20) && v8 == *(a2 + 24) && v9 == *(a2 + 28) && ((v10 ^ *(a2 + 29)) & 1) == 0)
    {
      if (v12 == *(a2 + 36))
      {
        return (v11 > 0.0) ^ (*(a2 + 32) > 0.0);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF9F082C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  *&v14 = 0xFFFFFFFFLL;
  DWORD2(v14) = 0;
  BYTE12(v14) = 1;
  *v15 = -1082130432;
  v15[4] = 0;
  *&v15[8] = 256;
  *&v15[12] = 16843008;
  sub_1AF9E9F60(a1);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v16 = 15;
  sub_1AF51D44C();
  sub_1AFDFE768();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  result = (*(v7 + 8))(v10, v6);
  v15[20] = v17;
  v12 = *v15;
  *a2 = v14;
  *(a2 + 16) = v12;
  *(a2 + 29) = *&v15[13];
  return result;
}

unint64_t sub_1AF9F0A04()
{
  result = qword_1EB641C90;
  if (!qword_1EB641C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C90);
  }

  return result;
}

__n128 initializeWithCopy for ParticlePrimitiveRenderer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticlePrimitiveRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 29);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticlePrimitiveRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 29) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF9F0B30()
{
  result = qword_1EB641C98;
  if (!qword_1EB641C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641C98);
  }

  return result;
}

unint64_t sub_1AF9F0B84(uint64_t a1)
{
  result = sub_1AF9F0BAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F0BAC()
{
  result = qword_1EB641CA0;
  if (!qword_1EB641CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641CA0);
  }

  return result;
}

unint64_t sub_1AF9F0C00(uint64_t a1)
{
  result = sub_1AF9F0C28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F0C28()
{
  result = qword_1EB641CA8;
  if (!qword_1EB641CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641CA8);
  }

  return result;
}

unint64_t sub_1AF9F0C80()
{
  result = qword_1EB641CB0;
  if (!qword_1EB641CB0)
  {
    sub_1AF9F0CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641CB0);
  }

  return result;
}

void sub_1AF9F0CD8()
{
  if (!qword_1EB641CB8)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641CB8);
    }
  }
}

unint64_t sub_1AF9F0D2C()
{
  result = qword_1EB641CC0;
  if (!qword_1EB641CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641CC0);
  }

  return result;
}

unint64_t sub_1AF9F0D80(uint64_t a1)
{
  result = sub_1AF9F0DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F0DA8()
{
  result = qword_1EB641CC8;
  if (!qword_1EB641CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641CC8);
  }

  return result;
}

__n128 sub_1AF9F0DFC@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  sub_1AF9EFA0C(a1, *(v2 + 52), v9);
  v4 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v4;
  *(a2 + 160) = v9[10];
  v5 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v5;
  v6 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v6;
  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  result = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = result;
  return result;
}

__n128 initializeWithCopy for ParticleQuadRenderer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleQuadRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 139))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleQuadRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 139) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 139) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF9F0F64(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[3] = &type metadata for ParticleBoxRenderer;
  v12[4] = sub_1AF59F330();
  v5 = swift_allocObject();
  v12[0] = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v7 = *sub_1AF441150(v12, &type metadata for ParticleBoxRenderer);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = sub_1AF8D93C8(v7, v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v8 = sub_1AF8D93C8(a5, &v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F1224(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[3] = &type metadata for ParticleLineRenderer;
  v12[4] = sub_1AF59DA84();
  v5 = swift_allocObject();
  v12[0] = v5;
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  *(v5 + 44) = *(v2 + 28);
  v7 = *(sub_1AF441150(v12, &type metadata for ParticleLineRenderer) + 36);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = sub_1AF8D93C8(v7, v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F13AC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[3] = &type metadata for ParticlePointRenderer;
  v12[4] = sub_1AF59D124();
  v5 = swift_allocObject();
  v12[0] = v5;
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v5[3] = v2[2];
  v7 = *sub_1AF441150(v12, &type metadata for ParticlePointRenderer);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = sub_1AF8D93C8(v7, v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F1534(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[3] = &type metadata for ParticlePrimitiveRenderer;
  v12[4] = sub_1AF5A0C3C();
  v5 = swift_allocObject();
  v12[0] = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 45) = *(v2 + 29);
  v7 = *sub_1AF441150(v12, &type metadata for ParticlePrimitiveRenderer);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = sub_1AF8D93C8(v7, v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F16BC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v24[3] = &type metadata for ParticleQuadRenderer;
  v24[4] = sub_1AF59EE8C();
  v5 = swift_allocObject();
  v24[0] = v5;
  v6 = *(v2 + 112);
  v5[7] = *(v2 + 96);
  v5[8] = v6;
  *(v5 + 139) = *(v2 + 123);
  v7 = *(v2 + 48);
  v5[3] = *(v2 + 32);
  v5[4] = v7;
  v8 = *(v2 + 80);
  v5[5] = *(v2 + 64);
  v5[6] = v8;
  v9 = *(v2 + 16);
  v5[1] = *v2;
  v5[2] = v9;
  v10 = *(sub_1AF441150(v24, &type metadata for ParticleQuadRenderer) + 36);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  v11 = sub_1AF8D93C8(v10, v24, a1, a2);
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v11 textureType];
  if (v13 > 7)
  {
LABEL_22:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (((1 << v13) & 0x2D) == 0)
  {
    if (v13 == 7)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v14 = 0;
  v15 = *(v2 + 48);
  v16 = 1;
  while (!v16)
  {
    if (v14 == 1)
    {
      goto LABEL_21;
    }

    v16 = 0;
LABEL_7:
    ++v14;
  }

  v23 = v15;
  v17 = *(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v14 & 1)));
  v16 = v17 == 1.0;
  if (v14 != 1)
  {
    goto LABEL_7;
  }

  if (v17 == 1.0)
  {
    v19 = 0;
    v20 = *(v2 + 56);
    v21 = 1;
    while (1)
    {
      if (v21)
      {
        v22 = v20;
        v21 = *(&v22 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v19 & 1))) == 0.0;
        if (v19 == 1)
        {
          break;
        }
      }

      else
      {
        if (v19 == 1)
        {
          break;
        }

        v21 = 0;
      }

      ++v19;
    }
  }

LABEL_21:
  swift_unknownObjectRetain();

  return v12;
}

uint64_t sub_1AF9F1914(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v14[3] = &type metadata for ParticleRibbonRenderer;
  v14[4] = sub_1AF9F4630();
  v5 = swift_allocObject();
  v14[0] = v5;
  v6 = v2[5];
  v5[5] = v2[4];
  v5[6] = v6;
  *(v5 + 105) = *(v2 + 89);
  v7 = v2[1];
  v5[1] = *v2;
  v5[2] = v7;
  v8 = v2[3];
  v5[3] = v2[2];
  v5[4] = v8;
  v9 = *sub_1AF441150(v14, &type metadata for ParticleRibbonRenderer);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  v10 = sub_1AF8D93C8(v9, v14, a1, a2);
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  v12 = [v10 textureType];
  if (v12 <= 7 && (((1 << v12) & 0x2D) != 0 || v12 == 7))
  {
    swift_unknownObjectRetain();

    return v11;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F1ABC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[3] = &type metadata for ParticleSphereRenderer;
  v12[4] = sub_1AF59FD90();
  v5 = swift_allocObject();
  v12[0] = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v7 = *sub_1AF441150(v12, &type metadata for ParticleSphereRenderer);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = sub_1AF8D93C8(v7, v12, a1, a2);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 textureType];
  if (v10 <= 7 && (((1 << v10) & 0x2D) != 0 || v10 == 7))
  {
    swift_unknownObjectRetain();

    return v9;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9F1C44()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v1 = *(v0 + 8);
  if (*(v0 + 12))
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF9F1D2C()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v1 = *v0;
  if (v0[1])
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF9F1E14()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v1 = *(v0 + 8);
  if (*(v0 + 12))
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF9F1F18()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v1 = *v0;
  if (v0[1])
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2C8();
  }

  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

__n128 sub_1AF9F20C0@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4800) == 0x4000)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v4 = "particle_quad_frag";
  }

  else
  {
    v4 = "particle_quad_vert";
  }

  sub_1AF8989FC(0xD000000000000012, 0x80000001AFF438A0, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9F2190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);

  sub_1AF3C9244(v7, v97);

  if (v98)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 64);
  v11 = -1.0;
  if (v10 - 11 <= 0xF4)
  {
    v11 = 1.0 / v10;
  }

  v12 = *(v4 + 8);
  if (v12 > v11)
  {
    v13 = *(v4 + 8);
  }

  else
  {
    v13 = v11;
  }

  if (v12 < 0.0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v4 + 100);
  *&v8 = *(v4 + 48);
  v16 = *(v4 + 56);
  if (*(v4 + 76) == 2)
  {
    v17 = *(v4 + 80);
    v18 = vabsq_f32(v17);
    if (v18.f32[0] > 0.00000011921 || v18.f32[1] > 0.00000011921 || (v19 = 0uLL, v18.f32[2] > 0.00000011921))
    {
      v20 = vmulq_f32(v17, v17);
      *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v21);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
      v19 = vmulq_n_f32(v17, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
    }
  }

  else
  {
    v19 = xmmword_1AFE20160;
  }

  if (v15 == 0.0)
  {
    v22 = *(v4 + 104);
  }

  else
  {
    v22 = 1;
  }

  v82 = v22;
  v83 = v19;
  *(&v8 + 1) = -COERCE_FLOAT(HIDWORD(*(v4 + 48)));
  v23 = &off_1AFE20000;
  v81 = *(&v16 + 1) + 1.0;
  v78 = v97[1];
  v79 = v97[0];
  v76 = v97[3];
  v77 = v97[2];
  v24 = *(v4 + 72);
  v25 = *(v4 + 108);
  v26 = *(v4 + 116);
  v27 = *(v4 + 112);
  v71 = 0.0;
  v28 = *(v4 + 36);
  if (*(v4 + 136))
  {
    v74 = *(v4 + 56);
    v85 = v8;
    v29 = a4;
    if (sub_1AF8D93C8(v28, &v88, a3, a4))
    {
      swift_getObjectType();
      v71 = sub_1AF472F54();
      swift_unknownObjectRelease();
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v8 = v85;
    LODWORD(v16) = v74;
    v23 = &off_1AFE20000;
  }

  else
  {
    v29 = a4;
    v30 = 1;
  }

  v75 = vdupq_n_s32(v9);
  v73 = *(v23 + 26);
  DWORD2(v8) = v16;
  v86 = v8;
  v31 = sub_1AF3CCC68(v28);
  if ((v34 & 0xFF00) == 0x300)
  {
    LOWORD(v35) = 1;
    __asm { FMOV            V0.2S, #1.0 }
  }

  else
  {
    if (v32 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v32;
    }

    v42 = 1024;
    if (v41 >= 1024)
    {
      v43 = 1024;
    }

    else
    {
      v43 = v41;
    }

    if (v31 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v31;
    }

    if (v44 < 1024)
    {
      v42 = v44;
    }

    v35 = v42 * v43;
    if (v34)
    {
      v45 = v42 * v43;
    }

    else
    {
      v45 = v33;
    }

    if (v35 >= v45)
    {
      LOWORD(v35) = v45;
    }

    *&_D0 = 1.0 / v42;
    *(&_D0 + 1) = 1.0 / v43;
  }

  v46 = vbslq_s8(v75, xmmword_1AFE20150, v79);
  v47 = vbslq_s8(v75, xmmword_1AFE20160, v78);
  v48 = vbslq_s8(v75, xmmword_1AFE20180, v77);
  v49 = vbslq_s8(v75, v73, v76);
  v50 = v86;
  *(&v50 + 3) = v81;
  if ((v30 & 1) == 0)
  {
    v46 = vmulq_n_f32(v46, 0.01 * *&v71);
    v47 = vmulq_n_f32(v47, vmuls_lane_f32(0.01, *&v71, 1));
  }

  HIWORD(v96) = 0;
  *(&v96 + 10) = 0;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  v91 = v49;
  *&v92 = __PAIR64__(v24, LODWORD(v14));
  *(&v92 + 1) = __PAIR64__(v25, LODWORD(v15));
  v93 = v50;
  v94 = v83;
  *&v95 = 0;
  *(&v95 + 1) = _D0;
  LODWORD(v96) = v35;
  DWORD1(v96) = v26;
  BYTE8(v96) = v27;
  BYTE9(v96) = v82;
  if (!v29)
  {
    return 0;
  }

  v51 = *(a1 + 16);
  if (!v51)
  {
    return 0;
  }

  v52 = v51[22];
  if (v52 <= 0)
  {
    v52 = v51[25];
    if (v52 < 1)
    {
      return 0;
    }
  }

  v53 = *(v29 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v53, v52);
  v56 = v54;
  v57 = v55;
  if (v51[21])
  {
    v58 = v51[21];
  }

  else
  {
    v58 = v51[24];
    if (!v58)
    {
      v87[6] = v94;
      v87[7] = v95;
      v87[8] = v96;
      v87[2] = v90;
      v87[3] = v91;
      v87[4] = v92;
      v87[5] = v93;
      v87[0] = v88;
      v87[1] = v89;
      sub_1AF9F35C0(v87, v54, v55, 0x90uLL);

      return v56;
    }

    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_62;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v60 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_62:
    swift_unknownObjectRetain();
    goto LABEL_63;
  }

  v61 = v60;
  sub_1AF22D744(v60, v58);

LABEL_63:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v52)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v63 = sub_1AFDFDA08();
    *&v87[0] = 1;
    sub_1AF75A4B4(v63, 0xD00000000000002ELL, 0x80000001AFF435B0, v87);
  }

  swift_unknownObjectRetain();
  sub_1AF471B58(v56, v57, 0);
  type metadata accessor for particle_quad_material_constants(0);
  v65 = v64;
  swift_unknownObjectRetain();
  sub_1AF471D6C(&v88, 0, ObjectType, v65);
  swift_unknownObjectRelease();
  v80 = sub_1AF9F16BC(a3, v29);
  v67 = v66;
  swift_unknownObjectRetain();
  sub_1AF471D54(v67, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v80, 201, (a1 + 136));
  swift_unknownObjectRelease();
  v68 = sub_1AF8D93C8(*(v5 + 120), v87, a3, v29);
  sub_1AF471CC4(v68, 230, (a1 + 136));
  swift_unknownObjectRelease();
  v69 = sub_1AF8D93C8(*(v5 + 128), v87, a3, v29);
  sub_1AF471CC4(v69, 231, (a1 + 136));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v56;
}