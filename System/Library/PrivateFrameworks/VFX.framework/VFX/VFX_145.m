uint64_t sub_1AFC1489C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC494E4(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F250F310;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCC0CD8(v57, sub_1AFC27BC0, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC14EF8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC49520(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F2558F90;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCC0F20(v57, sub_1AFC27CD8, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC155F8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC4955C(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F250F310;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCC05E4(v57, sub_1AFC279FC, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC15C54(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC49598(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F2558F90;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCC082C(v57, sub_1AFC27B14, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC16354(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC495D4(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F250F310;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCBFEF0(v57, sub_1AFC27838, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC169B0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC49610(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F2558F90;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCC0138(v57, sub_1AFC27950, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC170B0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC4964C(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F250F310;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCBFC5C(v57, sub_1AFC27720, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC1770C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC49688(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F2558F90;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCBF438(v57, sub_1AFC26B98, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC17E0C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC496C4(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F250F310;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCBF55C(v57, sub_1AFC2755C, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC18468(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1AFC28358(0, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
  v12 = v11;
  sub_1AF649C6C(*(a1 + 40), v11, v66);
  if (LOBYTE(v66[0]) == 1)
  {
    return sub_1AFC49700(a2, a3);
  }

  v57 = a5;
  v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v59 = v14;
  v60 = a1;
  v15 = *v14;
  v16 = *(a1 + 40);
  v17 = v12;
  sub_1AF649C6C(v16, v12, v66);
  v58 = v5;
  if (v66[0])
  {
    goto LABEL_39;
  }

  v54 = a3;
  v55 = a4;
  v53 = a2;
  v71[0] = v12;
  v71[1] = &off_1F2558F90;
  v72 = 0;
  v18 = *(v15 + 104);
  v56 = (v15 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v36, 8);
    *v37 = v53;
    sub_1AF63515C(v71, v66);
    v68[0] = v37;
    v68[1] = v36;
    v68[2] = 1;
    v38 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      *v56 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    a3 = v54;
    if (v41 >= v40 >> 1)
    {
      *v56 = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
    }

    sub_1AF635250(v71);
    v42 = v56;
    v43 = *v56;
    *(v43 + 16) = v41 + 1;
    v44 = v43 + 72 * v41;
    *(v44 + 32) = v66[0];
    v45 = *v68;
    v46 = v67;
    v47 = v66[1];
    *(v44 + 96) = v68[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v42 = v43;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v22 = v15;
  while (1)
  {
    sub_1AFC28178(v21, v70, sub_1AF43A540);
    sub_1AF63515C(v70, v66);
    sub_1AF63515C(v71, v68);
    if (BYTE8(v67) > 2u)
    {
      break;
    }

    if (!BYTE8(v67))
    {
      sub_1AF63515C(v66, v65);
      if (v69)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v67) == 1)
    {
      sub_1AF63515C(v66, v65);
      if (v69 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v26 = *&v65[0];
      v27 = v68[0];
      sub_1AF635250(v66);
      sub_1AFC282F8(v70, sub_1AF43A540);
      v25 = v26 == v27;
LABEL_20:
      v15 = v22;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v66, v65);
    if (v69 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
LABEL_7:
      sub_1AFC0DD34(v66, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v70, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v65, v62);
    sub_1AF616568(v68, v61);
    v28 = v63;
    v29 = v64;
    sub_1AF441150(v62, v63);
    v30 = v29;
    v15 = v22;
    LOBYTE(v28) = sub_1AF640C98(v61, v28, v30);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v67) == 3)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v67) == 4)
  {
    sub_1AF63515C(v66, v65);
    if (v69 != 4)
    {
      goto LABEL_7;
    }

    v23 = LOBYTE(v65[0]);
    v24 = LOBYTE(v68[0]);
    sub_1AF635250(v66);
    sub_1AFC282F8(v70, sub_1AF43A540);
    v25 = v23 == v24;
    goto LABEL_20;
  }

  if (v69 != 5)
  {
    goto LABEL_7;
  }

  v31 = vorrq_s8(*&v68[1], *&v68[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v68[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v66);
  sub_1AFC282F8(v70, sub_1AF43A540);
LABEL_31:
  v33 = sub_1AFBFCA08(v66);
  v34 = *(v32 + 48);
  a3 = v54;
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v53;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v66, 0);
  sub_1AF635250(v71);
LABEL_39:
  v48 = v59;
  v49 = sub_1AF62D29C(v60);
  v51 = *(v17 - 8);
  if (*(v51 + 64))
  {
    if (*(v51 + 72) >= 1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v52[2] = a3;
      sub_1AFCBF7A4(v57, sub_1AFC27674, v52);
    }
  }

  return ecs_stack_allocator_pop_snapshot(*(*v48 + 32));
}

uint64_t sub_1AFC18B5C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for PropagateDirtiness, v51);
  if (LOBYTE(v51[0]) == 1)
  {
    return sub_1AFC4988C(a2, a3);
  }

  v11 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v11 + 32));
  v45 = v11;
  v12 = *v11;
  sub_1AF649C6C(*(a1 + 40), &type metadata for PropagateDirtiness, v51);
  if (v51[0])
  {
    goto LABEL_39;
  }

  v43 = a5;
  v40 = v12;
  v41 = a2;
  v56[0] = &type metadata for PropagateDirtiness;
  v56[1] = &off_1F2532300;
  v57 = 0;
  v42 = (v12 + 104);
  v13 = *(*(v12 + 104) + 16);
  v44 = *(v12 + 104);

  if (!v13)
  {
LABEL_33:

    v27 = *(a1 + 240) - *(a1 + 232);
    v28 = ecs_stack_allocator_allocate(*(v40 + 32), 8 * v27, 8);
    *v28 = v41;
    sub_1AF63515C(v56, v51);
    v53[0] = v28;
    v53[1] = v27;
    v53[2] = 1;
    v29 = *(v40 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 104) = v29;
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v42;
    }

    else
    {
      v29 = sub_1AF420EA0(0, v29[2] + 1, 1, v29);
      v31 = v42;
      *v42 = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_1AF420EA0(v32 > 1, v33 + 1, 1, v29);
    }

    a5 = v43;
    v29[2] = v33 + 1;
    v34 = &v29[9 * v33];
    *(v34 + 2) = v51[0];
    v35 = v51[1];
    v36 = v52;
    v37 = *v53;
    v34[12] = v53[2];
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    *(v34 + 3) = v35;
    *v31 = v29;
    goto LABEL_38;
  }

  v14 = 0;
  v15 = v44 + 32;
  while (1)
  {
    sub_1AFC28178(v15, v55, sub_1AF43A540);
    sub_1AF63515C(v55, v51);
    sub_1AF63515C(v56, v53);
    if (BYTE8(v52) <= 2u)
    {
      if (!BYTE8(v52))
      {
        sub_1AF63515C(v51, v50);
        if (v54)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v52) == 1)
      {
        sub_1AF63515C(v51, v50);
        if (v54 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v18 = *&v50[0];
        v19 = v53[0];
        sub_1AF635250(v51);
        sub_1AFC282F8(v55, sub_1AF43A540);
        if (v18 == v19)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v51, v50);
      if (v54 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);
LABEL_7:
        sub_1AFC0DD34(v51, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v55, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v52) == 3)
    {
      sub_1AF63515C(v51, v50);
      if (v54 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v50, v47);
      sub_1AF616568(v53, v46);
      v20 = v48;
      v21 = v49;
      sub_1AF441150(v47, v48);
      LOBYTE(v20) = sub_1AF640C98(v46, v20, v21);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
      sub_1AF635250(v51);
      sub_1AFC282F8(v55, sub_1AF43A540);
      if (v20)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v52) != 4)
    {
      break;
    }

    sub_1AF63515C(v51, v50);
    if (v54 != 4)
    {
      goto LABEL_7;
    }

    v16 = LOBYTE(v50[0]);
    v17 = LOBYTE(v53[0]);
    sub_1AF635250(v51);
    sub_1AFC282F8(v55, sub_1AF43A540);
    if (v16 == v17)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v14;
    v15 += 72;
    if (v13 == v14)
    {
      goto LABEL_33;
    }
  }

  if (v54 != 5)
  {
    goto LABEL_7;
  }

  v22 = vorrq_s8(*&v53[1], *&v53[3]);
  if (*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v53[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v51);
  sub_1AFC282F8(v55, sub_1AF43A540);
LABEL_30:

  v24 = sub_1AFBFCA08(v51);
  v25 = *(v23 + 48);
  if (v25)
  {
    v26 = *(v23 + 64);
    *(v25 + 8 * v26) = v41;
    *(v23 + 64) = v26 + 1;
  }

  (v24)(v51, 0);
  a5 = v43;
LABEL_38:
  sub_1AF635250(v56);
LABEL_39:
  v38 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v38, v39);
  sub_1AFCBD4FC(a5, sub_1AF88DD1C);
  return ecs_stack_allocator_pop_snapshot(*(*v45 + 32));
}

uint64_t sub_1AFC19124(uint64_t *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v65 = a4;
  sub_1AF649C6C(a1[5], &type metadata for TextureGPURuntime, v57);
  if (LOBYTE(v57[0]) == 1)
  {
    return sub_1AFC498D4(a2, a3, a4);
  }

  v13 = a1;
  v14 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v15 = *v14;
  v51 = v13;
  sub_1AF649C6C(v13[5], &type metadata for TextureGPURuntime, v57);
  if (v57[0])
  {
    goto LABEL_40;
  }

  v49 = v14;
  v50 = a6;
  v62[0] = &type metadata for TextureGPURuntime;
  v62[1] = &off_1F2544388;
  v63 = 0;
  v16 = *(v15 + 104);
  v48 = a2;
  v17 = *(v16 + 16);
  v18 = v15;
  if (!v17)
  {
LABEL_34:
    v34 = v13[30] - v13[29];
    v35 = ecs_stack_allocator_allocate(*(v18 + 32), 8 * v34, 8);
    *v35 = v48;
    sub_1AF63515C(v62, v57);
    v59[0] = v35;
    v59[1] = v34;
    v59[2] = 1;
    v36 = *(v18 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 104) = v36;
    if (isUniquelyReferenced_nonNull_native)
    {
      v38 = (v15 + 104);
    }

    else
    {
      v36 = sub_1AF420EA0(0, v36[2] + 1, 1, v36);
      v38 = (v15 + 104);
      *(v15 + 104) = v36;
    }

    v40 = v36[2];
    v39 = v36[3];
    a6 = v50;
    if (v40 >= v39 >> 1)
    {
      *v38 = sub_1AF420EA0(v39 > 1, v40 + 1, 1, v36);
    }

    sub_1AF635250(v62);
    v41 = *v38;
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 72 * v40;
    *(v42 + 32) = v57[0];
    v43 = *v59;
    v44 = v58;
    v45 = v57[1];
    *(v42 + 96) = v59[2];
    *(v42 + 64) = v44;
    *(v42 + 80) = v43;
    *(v42 + 48) = v45;
    *v38 = v41;
    goto LABEL_39;
  }

  v19 = 0;
  v20 = v16 + 32;
  while (1)
  {
    sub_1AFC28178(v20, v61, sub_1AF43A540);
    sub_1AF63515C(v61, v57);
    sub_1AF63515C(v62, v59);
    if (BYTE8(v58) > 2u)
    {
      break;
    }

    if (!BYTE8(v58))
    {
      sub_1AF63515C(v57, v56);
      if (v60)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v58) == 1)
    {
      sub_1AF63515C(v57, v56);
      if (v60 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v24 = *&v56[0];
      v25 = v59[0];
      sub_1AF635250(v57);
      sub_1AFC282F8(v61, sub_1AF43A540);
      v23 = v24 == v25;
LABEL_20:
      v18 = v15;
      if (v23)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v57, v56);
    if (v60 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
LABEL_7:
      sub_1AFC0DD34(v57, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v61, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v56, v53);
    sub_1AF616568(v59, v52);
    v26 = v54;
    v27 = v55;
    sub_1AF441150(v53, v54);
    v28 = v27;
    v18 = v15;
    LOBYTE(v26) = sub_1AF640C98(v52, v26, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
    sub_1AF635250(v57);
    sub_1AFC282F8(v61, sub_1AF43A540);
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v19;
    v20 += 72;
    if (v17 == v19)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v58) == 3)
  {
    sub_1AF63515C(v57, v56);
    if (v60 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v58) == 4)
  {
    sub_1AF63515C(v57, v56);
    if (v60 != 4)
    {
      goto LABEL_7;
    }

    v21 = LOBYTE(v56[0]);
    v22 = LOBYTE(v59[0]);
    sub_1AF635250(v57);
    sub_1AFC282F8(v61, sub_1AF43A540);
    v23 = v21 == v22;
    goto LABEL_20;
  }

  if (v60 != 5)
  {
    goto LABEL_7;
  }

  v29 = vorrq_s8(*&v59[1], *&v59[3]);
  if (*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) | v59[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v57);
  sub_1AFC282F8(v61, sub_1AF43A540);
LABEL_31:
  v31 = sub_1AFBFCA08(v57);
  v32 = *(v30 + 48);
  a6 = v50;
  if (v32)
  {
    v33 = *(v30 + 64);
    *(v32 + 8 * v33) = v48;
    *(v30 + 64) = v33 + 1;
  }

  (v31)(v57, 0);
  sub_1AF635250(v62);
LABEL_39:
  v14 = v49;
LABEL_40:
  v46 = sub_1AF62D29C(v51);
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_1AFCBC88C(a6, sub_1AFC27310);
  return ecs_stack_allocator_pop_snapshot(*(*v14 + 32));
}

void sub_1AFC19700(uint64_t a1, __int16 a2, void *a3, uint64_t a4, uint64_t a5)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v65[0] = a3;
  sub_1AF649C6C(*(a1 + 40), &type metadata for TextureCGImage, v58);
  if (LOBYTE(v58[0]) == 1)
  {
    sub_1AFC46B88(a2, a3);
    return;
  }

  v11 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v11 + 32));
  v12 = *v11;
  v52 = a1;
  sub_1AF649C6C(*(a1 + 40), &type metadata for TextureCGImage, v58);
  v51 = v5;
  if (v58[0])
  {
    goto LABEL_40;
  }

  v48 = v11;
  v49 = a5;
  v50 = a4;
  v63[0] = &type metadata for TextureCGImage;
  v63[1] = &off_1F2546BB8;
  v64 = 0;
  v13 = *(v12 + 104);
  v46 = a2;
  v47 = (v12 + 104);
  v14 = *(v13 + 16);
  v15 = v12;
  if (!v14)
  {
LABEL_34:
    v31 = *(v52 + 30) - *(v52 + 29);
    v32 = ecs_stack_allocator_allocate(*(v15 + 32), 8 * v31, 8);
    *v32 = v46;
    sub_1AF63515C(v63, v58);
    v60[0] = v32;
    v60[1] = v31;
    v60[2] = 1;
    v33 = *(v15 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 104) = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v47;
    }

    else
    {
      v33 = sub_1AF420EA0(0, v33[2] + 1, 1, v33);
      v35 = v47;
      *v47 = v33;
    }

    v37 = v33[2];
    v36 = v33[3];
    a5 = v49;
    if (v37 >= v36 >> 1)
    {
      *v35 = sub_1AF420EA0(v36 > 1, v37 + 1, 1, v33);
    }

    sub_1AF635250(v63);
    v38 = *v35;
    *(v38 + 16) = v37 + 1;
    v39 = v38 + 72 * v37;
    *(v39 + 32) = v58[0];
    v41 = v59;
    v40 = *v60;
    v42 = v58[1];
    *(v39 + 96) = v60[2];
    *(v39 + 64) = v41;
    *(v39 + 80) = v40;
    *(v39 + 48) = v42;
    *v35 = v38;
    goto LABEL_39;
  }

  v16 = 0;
  v17 = v13 + 32;
  while (1)
  {
    sub_1AFC28178(v17, v62, sub_1AF43A540);
    sub_1AF63515C(v62, v58);
    sub_1AF63515C(v63, v60);
    if (BYTE8(v59) > 2u)
    {
      break;
    }

    if (!BYTE8(v59))
    {
      sub_1AF63515C(v58, v57);
      if (v61)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v59) == 1)
    {
      sub_1AF63515C(v58, v57);
      if (v61 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v21 = *&v57[0];
      v22 = v60[0];
      sub_1AF635250(v58);
      sub_1AFC282F8(v62, sub_1AF43A540);
      v20 = v21 == v22;
LABEL_20:
      v15 = v12;
      if (v20)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v58, v57);
    if (v61 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v57);
LABEL_7:
      sub_1AFC0DD34(v58, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v62, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v57, v54);
    sub_1AF616568(v60, v53);
    v23 = v55;
    v24 = v56;
    sub_1AF441150(v54, v55);
    v25 = v24;
    v15 = v12;
    LOBYTE(v23) = sub_1AF640C98(v53, v23, v25);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
    sub_1AF635250(v58);
    sub_1AFC282F8(v62, sub_1AF43A540);
    if (v23)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v16;
    v17 += 72;
    if (v14 == v16)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v59) == 3)
  {
    sub_1AF63515C(v58, v57);
    if (v61 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v59) == 4)
  {
    sub_1AF63515C(v58, v57);
    if (v61 != 4)
    {
      goto LABEL_7;
    }

    v18 = LOBYTE(v57[0]);
    v19 = LOBYTE(v60[0]);
    sub_1AF635250(v58);
    sub_1AFC282F8(v62, sub_1AF43A540);
    v20 = v18 == v19;
    goto LABEL_20;
  }

  if (v61 != 5)
  {
    goto LABEL_7;
  }

  v26 = vorrq_s8(*&v60[1], *&v60[3]);
  if (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | v60[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v58);
  sub_1AFC282F8(v62, sub_1AF43A540);
LABEL_31:
  v28 = sub_1AFBFCA08(v58);
  v29 = *(v27 + 48);
  a5 = v49;
  if (v29)
  {
    v30 = *(v27 + 64);
    *(v29 + 8 * v30) = v46;
    *(v27 + 64) = v30 + 1;
  }

  (v28)(v58, 0);
  sub_1AF635250(v63);
LABEL_39:
  v11 = v48;
LABEL_40:
  v43 = sub_1AF62D29C(v52);
  MEMORY[0x1EEE9AC00](v43, v44);
  v45[2] = v65;
  sub_1AFCC317C(a5, sub_1AFC272C8, v45);
  ecs_stack_allocator_pop_snapshot(*(*v11 + 32));
}

void sub_1AFC19CE0(uint64_t a1, __int16 a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v61 = a3[1];
  v11 = a3[3];
  v62 = a3[2];
  v12 = a3[4];
  v63 = v11;
  v64 = v12;
  v60 = v10;
  sub_1AF649C6C(*(a1 + 40), &type metadata for SkinnedMeshBinding, v53);
  if (LOBYTE(v53[0]) == 1)
  {
    sub_1AFC4A108(a2, a3);
    return;
  }

  v13 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v47 = v13;
  v14 = *v13;
  sub_1AF649C6C(*(a1 + 40), &type metadata for SkinnedMeshBinding, v53);
  if (v53[0])
  {
    goto LABEL_39;
  }

  v45 = a5;
  v42 = v14;
  v43 = a2;
  v58[0] = &type metadata for SkinnedMeshBinding;
  v58[1] = &off_1F2543758;
  v59 = 0;
  v44 = (v14 + 104);
  v15 = *(*(v14 + 104) + 16);
  v46 = *(v14 + 104);

  if (!v15)
  {
LABEL_33:

    v29 = *(a1 + 240) - *(a1 + 232);
    v30 = ecs_stack_allocator_allocate(*(v42 + 32), 8 * v29, 8);
    *v30 = v43;
    sub_1AF63515C(v58, v53);
    v55[0] = v30;
    v55[1] = v29;
    v55[2] = 1;
    v31 = *(v42 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v44;
    }

    else
    {
      v31 = sub_1AF420EA0(0, v31[2] + 1, 1, v31);
      v33 = v44;
      *v44 = v31;
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1AF420EA0(v34 > 1, v35 + 1, 1, v31);
    }

    a5 = v45;
    v31[2] = v35 + 1;
    v36 = &v31[9 * v35];
    *(v36 + 2) = v53[0];
    v37 = v53[1];
    v38 = v54;
    v39 = *v55;
    v36[12] = v55[2];
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *v33 = v31;
    goto LABEL_38;
  }

  v16 = 0;
  v17 = v46 + 32;
  while (1)
  {
    sub_1AFC28178(v17, v57, sub_1AF43A540);
    sub_1AF63515C(v57, v53);
    sub_1AF63515C(v58, v55);
    if (BYTE8(v54) <= 2u)
    {
      if (!BYTE8(v54))
      {
        sub_1AF63515C(v53, v52);
        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v54) == 1)
      {
        sub_1AF63515C(v53, v52);
        if (v56 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v20 = *&v52[0];
        v21 = v55[0];
        sub_1AF635250(v53);
        sub_1AFC282F8(v57, sub_1AF43A540);
        if (v20 == v21)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v53, v52);
      if (v56 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
LABEL_7:
        sub_1AFC0DD34(v53, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v57, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v54) == 3)
    {
      sub_1AF63515C(v53, v52);
      if (v56 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v52, v49);
      sub_1AF616568(v55, v48);
      v22 = v50;
      v23 = v51;
      sub_1AF441150(v49, v50);
      LOBYTE(v22) = sub_1AF640C98(v48, v22, v23);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
      sub_1AF635250(v53);
      sub_1AFC282F8(v57, sub_1AF43A540);
      if (v22)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v54) != 4)
    {
      break;
    }

    sub_1AF63515C(v53, v52);
    if (v56 != 4)
    {
      goto LABEL_7;
    }

    v18 = LOBYTE(v52[0]);
    v19 = LOBYTE(v55[0]);
    sub_1AF635250(v53);
    sub_1AFC282F8(v57, sub_1AF43A540);
    if (v18 == v19)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v16;
    v17 += 72;
    if (v15 == v16)
    {
      goto LABEL_33;
    }
  }

  if (v56 != 5)
  {
    goto LABEL_7;
  }

  v24 = vorrq_s8(*&v55[1], *&v55[3]);
  if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v55[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v53);
  sub_1AFC282F8(v57, sub_1AF43A540);
LABEL_30:

  v26 = sub_1AFBFCA08(v53);
  v27 = *(v25 + 48);
  if (v27)
  {
    v28 = *(v25 + 64);
    *(v27 + 8 * v28) = v43;
    *(v25 + 64) = v28 + 1;
  }

  (v26)(v53, 0);
  a5 = v45;
LABEL_38:
  sub_1AF635250(v58);
LABEL_39:
  v40 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_1AFCBDE80(a5, sub_1AFC27018);
  ecs_stack_allocator_pop_snapshot(*(*v47 + 32));
}

uint64_t sub_1AFC1A2D4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 16);
  v66[0] = *a3;
  v66[1] = v11;
  v67 = *(a3 + 32);
  sub_1AF649C6C(*(a1 + 40), &type metadata for Skeleton, v59);
  if (LOBYTE(v59[0]) == 1)
  {
    return sub_1AFC4A16C(a2, a3);
  }

  v13 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v53 = v13;
  v14 = *v13;
  sub_1AF649C6C(*(a1 + 40), &type metadata for Skeleton, v59);
  v52 = v5;
  if (v59[0])
  {
    goto LABEL_39;
  }

  v49 = a5;
  v50 = a4;
  v46 = v14;
  v47 = a2;
  v64[0] = &type metadata for Skeleton;
  v64[1] = &off_1F25436A8;
  v65 = 0;
  v15 = *(v14 + 104);
  v48 = (v14 + 104);
  v16 = *(v15 + 16);
  v51 = v15;

  if (!v16)
  {
LABEL_33:

    v30 = *(a1 + 240) - *(a1 + 232);
    v31 = v46;
    v32 = ecs_stack_allocator_allocate(*(v46 + 32), 8 * v30, 8);
    *v32 = v47;
    sub_1AF63515C(v64, v59);
    v61[0] = v32;
    v61[1] = v30;
    v61[2] = 1;
    v33 = *(v31 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 104) = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v48;
    }

    else
    {
      v33 = sub_1AF420EA0(0, v33[2] + 1, 1, v33);
      v35 = v48;
      *v48 = v33;
    }

    v37 = v33[2];
    v36 = v33[3];
    if (v37 >= v36 >> 1)
    {
      v33 = sub_1AF420EA0(v36 > 1, v37 + 1, 1, v33);
    }

    a5 = v49;
    v33[2] = v37 + 1;
    v38 = &v33[9 * v37];
    *(v38 + 2) = v59[0];
    v39 = v59[1];
    v40 = v60;
    v41 = *v61;
    v38[12] = v61[2];
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    *(v38 + 3) = v39;
    *v35 = v33;
    goto LABEL_38;
  }

  v17 = 0;
  v18 = v51 + 32;
  while (1)
  {
    sub_1AFC28178(v18, v63, sub_1AF43A540);
    sub_1AF63515C(v63, v59);
    sub_1AF63515C(v64, v61);
    if (BYTE8(v60) <= 2u)
    {
      if (!BYTE8(v60))
      {
        sub_1AF63515C(v59, v58);
        if (v62)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v60) == 1)
      {
        sub_1AF63515C(v59, v58);
        if (v62 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v21 = *&v58[0];
        v22 = v61[0];
        sub_1AF635250(v59);
        sub_1AFC282F8(v63, sub_1AF43A540);
        if (v21 == v22)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v59, v58);
      if (v62 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
LABEL_7:
        sub_1AFC0DD34(v59, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v63, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v60) == 3)
    {
      sub_1AF63515C(v59, v58);
      if (v62 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v58, v55);
      sub_1AF616568(v61, v54);
      v23 = v56;
      v24 = v57;
      sub_1AF441150(v55, v56);
      LOBYTE(v23) = sub_1AF640C98(v54, v23, v24);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      sub_1AF635250(v59);
      sub_1AFC282F8(v63, sub_1AF43A540);
      if (v23)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v60) != 4)
    {
      break;
    }

    sub_1AF63515C(v59, v58);
    if (v62 != 4)
    {
      goto LABEL_7;
    }

    v19 = LOBYTE(v58[0]);
    v20 = LOBYTE(v61[0]);
    sub_1AF635250(v59);
    sub_1AFC282F8(v63, sub_1AF43A540);
    if (v19 == v20)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v17;
    v18 += 72;
    if (v16 == v17)
    {
      goto LABEL_33;
    }
  }

  if (v62 != 5)
  {
    goto LABEL_7;
  }

  v25 = vorrq_s8(*&v61[1], *&v61[3]);
  if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v61[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v59);
  sub_1AFC282F8(v63, sub_1AF43A540);
LABEL_30:

  v27 = sub_1AFBFCA08(v59);
  v28 = *(v26 + 48);
  if (v28)
  {
    v29 = *(v26 + 64);
    *(v28 + 8 * v29) = v47;
    *(v26 + 64) = v29 + 1;
  }

  (v27)(v59, 0);
  a5 = v49;
LABEL_38:
  sub_1AF635250(v64);
LABEL_39:
  v42 = v53;
  v43 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v43, v44);
  v45[2] = v66;
  sub_1AFCBDE40(a5, sub_1AFC27038, v45);
  return ecs_stack_allocator_pop_snapshot(*(*v42 + 32));
}

uint64_t sub_1AFC1A94C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, __n128), uint64_t a8, __n128 a9, void (*a10)(uint64_t, uint64_t))
{
  v70 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a5, v63);
  if (LOBYTE(v63[0]) == 1)
  {
    return a7(a2, a9);
  }

  v18 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v18 + 32));
  v19 = a1;
  v20 = *v18;
  v56 = v19;
  sub_1AF649C6C(*(v19 + 40), a5, v63);
  if (v63[0])
  {
    goto LABEL_40;
  }

  v52 = v18;
  v68[0] = a5;
  v68[1] = a6;
  v69 = 0;
  v51 = a2;
  v21 = *(*(v20 + 104) + 16);
  v53 = a8;
  v54 = *(v20 + 104);

  v22 = v20;
  if (!v21)
  {
LABEL_34:

    v38 = *(v56 + 240) - *(v56 + 232);
    v39 = ecs_stack_allocator_allocate(*(v22 + 32), 8 * v38, 8);
    *v39 = v51;
    sub_1AF63515C(v68, v63);
    v65[0] = v39;
    v65[1] = v38;
    v65[2] = 1;
    v40 = *(v22 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 104) = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
      v42 = (v20 + 104);
    }

    else
    {
      v40 = sub_1AF420EA0(0, v40[2] + 1, 1, v40);
      v42 = (v20 + 104);
      *(v20 + 104) = v40;
    }

    v44 = v40[2];
    v43 = v40[3];
    if (v44 >= v43 >> 1)
    {
      v40 = sub_1AF420EA0(v43 > 1, v44 + 1, 1, v40);
    }

    v18 = v52;
    v40[2] = v44 + 1;
    v45 = &v40[9 * v44];
    *(v45 + 2) = v63[0];
    v46 = v63[1];
    v47 = v64;
    v48 = *v65;
    v45[12] = v65[2];
    *(v45 + 4) = v47;
    *(v45 + 5) = v48;
    *(v45 + 3) = v46;
    *v42 = v40;
    a8 = v53;
    goto LABEL_39;
  }

  v23 = 0;
  v24 = v54 + 32;
  while (1)
  {
    sub_1AFC28178(v24, v67, sub_1AF43A540);
    sub_1AF63515C(v67, v63);
    sub_1AF63515C(v68, v65);
    if (BYTE8(v64) > 2u)
    {
      break;
    }

    if (!BYTE8(v64))
    {
      sub_1AF63515C(v63, v62);
      if (v66)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v64) == 1)
    {
      sub_1AF63515C(v63, v62);
      if (v66 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v28 = *&v62[0];
      v29 = v65[0];
      sub_1AF635250(v63);
      sub_1AFC282F8(v67, sub_1AF43A540);
      v27 = v28 == v29;
LABEL_20:
      v22 = v20;
      if (v27)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v63, v62);
    if (v66 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
LABEL_7:
      sub_1AFC0DD34(v63, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v67, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v62, v59);
    sub_1AF616568(v65, v58);
    v30 = v60;
    v31 = v61;
    sub_1AF441150(v59, v60);
    v32 = v31;
    v22 = v20;
    LOBYTE(v30) = sub_1AF640C98(v58, v30, v32);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
    sub_1AF635250(v63);
    sub_1AFC282F8(v67, sub_1AF43A540);
    if (v30)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v23;
    v24 += 72;
    if (v21 == v23)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v64) == 3)
  {
    sub_1AF63515C(v63, v62);
    if (v66 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v64) == 4)
  {
    sub_1AF63515C(v63, v62);
    if (v66 != 4)
    {
      goto LABEL_7;
    }

    v25 = LOBYTE(v62[0]);
    v26 = LOBYTE(v65[0]);
    sub_1AF635250(v63);
    sub_1AFC282F8(v67, sub_1AF43A540);
    v27 = v25 == v26;
    goto LABEL_20;
  }

  if (v66 != 5)
  {
    goto LABEL_7;
  }

  v33 = vorrq_s8(*&v65[1], *&v65[3]);
  if (*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | v65[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v63);
  sub_1AFC282F8(v67, sub_1AF43A540);
LABEL_31:

  v35 = sub_1AFBFCA08(v63);
  v36 = *(v34 + 48);
  if (v36)
  {
    v37 = *(v34 + 64);
    *(v36 + 8 * v37) = v51;
    *(v34 + 64) = v37 + 1;
  }

  (v35)(v63, 0);
  v18 = v52;
LABEL_39:
  sub_1AF635250(v68);
LABEL_40:
  v49 = sub_1AF62D29C(v56);
  MEMORY[0x1EEE9AC00](v49, v50);
  a10(a4, a8);
  return ecs_stack_allocator_pop_snapshot(*(*v18 + 32));
}

uint64_t sub_1AFC1AF18(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for ModelRenderer, v53);
  if (LOBYTE(v53[0]) == 1)
  {
    return sub_1AFC42330(a2, a3, a4);
  }

  v13 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v47 = v13;
  v14 = *v13;
  sub_1AF649C6C(*(a1 + 40), &type metadata for ModelRenderer, v53);
  if (v53[0])
  {
    goto LABEL_39;
  }

  v45 = a6;
  v42 = v14;
  v43 = a2;
  v58[0] = &type metadata for ModelRenderer;
  v58[1] = &off_1F2562450;
  v59 = 0;
  v44 = (v14 + 104);
  v15 = *(*(v14 + 104) + 16);
  v46 = *(v14 + 104);

  if (!v15)
  {
LABEL_33:

    v29 = *(a1 + 240) - *(a1 + 232);
    v30 = ecs_stack_allocator_allocate(*(v42 + 32), 8 * v29, 8);
    *v30 = v43;
    sub_1AF63515C(v58, v53);
    v55[0] = v30;
    v55[1] = v29;
    v55[2] = 1;
    v31 = *(v42 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v44;
    }

    else
    {
      v31 = sub_1AF420EA0(0, v31[2] + 1, 1, v31);
      v33 = v44;
      *v44 = v31;
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1AF420EA0(v34 > 1, v35 + 1, 1, v31);
    }

    a6 = v45;
    v31[2] = v35 + 1;
    v36 = &v31[9 * v35];
    *(v36 + 2) = v53[0];
    v37 = v53[1];
    v38 = v54;
    v39 = *v55;
    v36[12] = v55[2];
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *v33 = v31;
    goto LABEL_38;
  }

  v16 = 0;
  v17 = v46 + 32;
  while (1)
  {
    sub_1AFC28178(v17, v57, sub_1AF43A540);
    sub_1AF63515C(v57, v53);
    sub_1AF63515C(v58, v55);
    if (BYTE8(v54) <= 2u)
    {
      if (!BYTE8(v54))
      {
        sub_1AF63515C(v53, v52);
        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v54) == 1)
      {
        sub_1AF63515C(v53, v52);
        if (v56 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v20 = *&v52[0];
        v21 = v55[0];
        sub_1AF635250(v53);
        sub_1AFC282F8(v57, sub_1AF43A540);
        if (v20 == v21)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v53, v52);
      if (v56 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
LABEL_7:
        sub_1AFC0DD34(v53, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v57, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v54) == 3)
    {
      sub_1AF63515C(v53, v52);
      if (v56 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v52, v49);
      sub_1AF616568(v55, v48);
      v22 = v50;
      v23 = v51;
      sub_1AF441150(v49, v50);
      LOBYTE(v22) = sub_1AF640C98(v48, v22, v23);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
      sub_1AF635250(v53);
      sub_1AFC282F8(v57, sub_1AF43A540);
      if (v22)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v54) != 4)
    {
      break;
    }

    sub_1AF63515C(v53, v52);
    if (v56 != 4)
    {
      goto LABEL_7;
    }

    v18 = LOBYTE(v52[0]);
    v19 = LOBYTE(v55[0]);
    sub_1AF635250(v53);
    sub_1AFC282F8(v57, sub_1AF43A540);
    if (v18 == v19)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v16;
    v17 += 72;
    if (v15 == v16)
    {
      goto LABEL_33;
    }
  }

  if (v56 != 5)
  {
    goto LABEL_7;
  }

  v24 = vorrq_s8(*&v55[1], *&v55[3]);
  if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v55[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v53);
  sub_1AFC282F8(v57, sub_1AF43A540);
LABEL_30:

  v26 = sub_1AFBFCA08(v53);
  v27 = *(v25 + 48);
  if (v27)
  {
    v28 = *(v25 + 64);
    *(v27 + 8 * v28) = v43;
    *(v25 + 64) = v28 + 1;
  }

  (v26)(v53, 0);
  a6 = v45;
LABEL_38:
  sub_1AF635250(v58);
LABEL_39:
  v40 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_1AFCBD620(a6, sub_1AFC262F4);
  return ecs_stack_allocator_pop_snapshot(*(*v47 + 32));
}

void sub_1AFC1B598(uint64_t a1, __int16 a2, __n128 *a3, uint64_t a4, unint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for SpotLight, v50);
  if (LOBYTE(v50[0]) == 1)
  {
    sub_1AFC4A3DC(a2, a3);
    return;
  }

  v10 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v10 + 32));
  v44 = v10;
  v11 = *v10;
  sub_1AF649C6C(*(a1 + 40), &type metadata for SpotLight, v50);
  if (v50[0])
  {
    goto LABEL_39;
  }

  v42 = a5;
  v39 = v11;
  v40 = a2;
  v55[0] = &type metadata for SpotLight;
  v55[1] = &off_1F252AC10;
  v56 = 0;
  v41 = (v11 + 104);
  v12 = *(*(v11 + 104) + 16);
  v43 = *(v11 + 104);

  if (!v12)
  {
LABEL_33:

    v26 = *(a1 + 240) - *(a1 + 232);
    v27 = ecs_stack_allocator_allocate(*(v39 + 32), 8 * v26, 8);
    *v27 = v40;
    sub_1AF63515C(v55, v50);
    v52[0] = v27;
    v52[1] = v26;
    v52[2] = 1;
    v28 = *(v39 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 104) = v28;
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v41;
    }

    else
    {
      v28 = sub_1AF420EA0(0, v28[2] + 1, 1, v28);
      v30 = v41;
      *v41 = v28;
    }

    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      v28 = sub_1AF420EA0(v31 > 1, v32 + 1, 1, v28);
    }

    a5 = v42;
    v28[2] = v32 + 1;
    v33 = &v28[9 * v32];
    *(v33 + 2) = v50[0];
    v34 = v50[1];
    v35 = v51;
    v36 = *v52;
    v33[12] = v52[2];
    *(v33 + 4) = v35;
    *(v33 + 5) = v36;
    *(v33 + 3) = v34;
    *v30 = v28;
    goto LABEL_38;
  }

  v13 = 0;
  v14 = v43 + 32;
  while (1)
  {
    sub_1AFC28178(v14, v54, sub_1AF43A540);
    sub_1AF63515C(v54, v50);
    sub_1AF63515C(v55, v52);
    if (BYTE8(v51) <= 2u)
    {
      if (!BYTE8(v51))
      {
        sub_1AF63515C(v50, v49);
        if (v53)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v51) == 1)
      {
        sub_1AF63515C(v50, v49);
        if (v53 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v17 = *&v49[0];
        v18 = v52[0];
        sub_1AF635250(v50);
        sub_1AFC282F8(v54, sub_1AF43A540);
        if (v17 == v18)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v50, v49);
      if (v53 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
LABEL_7:
        sub_1AFC0DD34(v50, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v54, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v51) == 3)
    {
      sub_1AF63515C(v50, v49);
      if (v53 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v49, v46);
      sub_1AF616568(v52, v45);
      v19 = v47;
      v20 = v48;
      sub_1AF441150(v46, v47);
      LOBYTE(v19) = sub_1AF640C98(v45, v19, v20);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      sub_1AF635250(v50);
      sub_1AFC282F8(v54, sub_1AF43A540);
      if (v19)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v51) != 4)
    {
      break;
    }

    sub_1AF63515C(v50, v49);
    if (v53 != 4)
    {
      goto LABEL_7;
    }

    v15 = LOBYTE(v49[0]);
    v16 = LOBYTE(v52[0]);
    sub_1AF635250(v50);
    sub_1AFC282F8(v54, sub_1AF43A540);
    if (v15 == v16)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v13;
    v14 += 72;
    if (v12 == v13)
    {
      goto LABEL_33;
    }
  }

  if (v53 != 5)
  {
    goto LABEL_7;
  }

  v21 = vorrq_s8(*&v52[1], *&v52[3]);
  if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v52[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v50);
  sub_1AFC282F8(v54, sub_1AF43A540);
LABEL_30:

  v23 = sub_1AFBFCA08(v50);
  v24 = *(v22 + 48);
  if (v24)
  {
    v25 = *(v22 + 64);
    *(v24 + 8 * v25) = v40;
    *(v22 + 64) = v25 + 1;
  }

  (v23)(v50, 0);
  a5 = v42;
LABEL_38:
  sub_1AF635250(v55);
LABEL_39:
  v37 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_1AFCBE6E4(a5, sub_1AFC26304);
  ecs_stack_allocator_pop_snapshot(*(*v44 + 32));
}

uint64_t sub_1AFC1BC00(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, float, float, float, float), uint64_t a8, float a9, float a10, float a11, float a12, void (*a13)(uint64_t, uint64_t, __n128))
{
  v77 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a5, v70);
  if (LOBYTE(v70[0]) == 1)
  {
    return a7(a2, a9, a10, a11, a12);
  }

  v25 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v25 + 32));
  v26 = a1;
  v27 = *v25;
  v63 = v26;
  sub_1AF649C6C(*(v26 + 40), a5, v70);
  if (v70[0])
  {
    goto LABEL_40;
  }

  v60 = v25;
  v61 = a8;
  v75[0] = a5;
  v75[1] = a6;
  v76 = 0;
  v59 = a2;
  v28 = *(*(v27 + 104) + 16);
  v62 = *(v27 + 104);

  v29 = v27;
  if (!v28)
  {
LABEL_34:

    v45 = *(v63 + 240) - *(v63 + 232);
    v46 = ecs_stack_allocator_allocate(*(v29 + 32), 8 * v45, 8);
    *v46 = v59;
    sub_1AF63515C(v75, v70);
    v72[0] = v46;
    v72[1] = v45;
    v72[2] = 1;
    v47 = *(v29 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 104) = v47;
    if (isUniquelyReferenced_nonNull_native)
    {
      v49 = (v27 + 104);
    }

    else
    {
      v47 = sub_1AF420EA0(0, v47[2] + 1, 1, v47);
      v49 = (v27 + 104);
      *(v27 + 104) = v47;
    }

    v51 = v47[2];
    v50 = v47[3];
    if (v51 >= v50 >> 1)
    {
      v47 = sub_1AF420EA0(v50 > 1, v51 + 1, 1, v47);
    }

    v25 = v60;
    v47[2] = v51 + 1;
    v52 = &v47[9 * v51];
    *(v52 + 2) = v70[0];
    v53 = v70[1];
    v54 = v71;
    v55 = *v72;
    v52[12] = v72[2];
    *(v52 + 4) = v54;
    *(v52 + 5) = v55;
    *(v52 + 3) = v53;
    *v49 = v47;
    a8 = v61;
    goto LABEL_39;
  }

  v30 = 0;
  v31 = v62 + 32;
  while (1)
  {
    sub_1AFC28178(v31, v74, sub_1AF43A540);
    sub_1AF63515C(v74, v70);
    sub_1AF63515C(v75, v72);
    if (BYTE8(v71) > 2u)
    {
      break;
    }

    if (!BYTE8(v71))
    {
      sub_1AF63515C(v70, v69);
      if (v73)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v71) == 1)
    {
      sub_1AF63515C(v70, v69);
      if (v73 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v35 = *&v69[0];
      v36 = v72[0];
      sub_1AF635250(v70);
      sub_1AFC282F8(v74, sub_1AF43A540);
      v34 = v35 == v36;
LABEL_20:
      v29 = v27;
      if (v34)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v70, v69);
    if (v73 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
LABEL_7:
      sub_1AFC0DD34(v70, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v74, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v69, v66);
    sub_1AF616568(v72, v65);
    v37 = v67;
    v38 = v68;
    sub_1AF441150(v66, v67);
    v39 = v38;
    v29 = v27;
    LOBYTE(v37) = sub_1AF640C98(v65, v37, v39);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
    sub_1AF635250(v70);
    sub_1AFC282F8(v74, sub_1AF43A540);
    if (v37)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v30;
    v31 += 72;
    if (v28 == v30)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v71) == 3)
  {
    sub_1AF63515C(v70, v69);
    if (v73 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v71) == 4)
  {
    sub_1AF63515C(v70, v69);
    if (v73 != 4)
    {
      goto LABEL_7;
    }

    v32 = LOBYTE(v69[0]);
    v33 = LOBYTE(v72[0]);
    sub_1AF635250(v70);
    sub_1AFC282F8(v74, sub_1AF43A540);
    v34 = v32 == v33;
    goto LABEL_20;
  }

  if (v73 != 5)
  {
    goto LABEL_7;
  }

  v40 = vorrq_s8(*&v72[1], *&v72[3]);
  if (*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | v72[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v70);
  sub_1AFC282F8(v74, sub_1AF43A540);
LABEL_31:

  v42 = sub_1AFBFCA08(v70);
  v43 = *(v41 + 48);
  if (v43)
  {
    v44 = *(v41 + 64);
    *(v43 + 8 * v44) = v59;
    *(v41 + 64) = v44 + 1;
  }

  (v42)(v70, 0);
  v25 = v60;
LABEL_39:
  sub_1AF635250(v75);
LABEL_40:
  v56 = sub_1AF62D29C(v63);
  v58 = MEMORY[0x1EEE9AC00](v56, v57);
  a13(a4, a8, v58);
  return ecs_stack_allocator_pop_snapshot(*(*v25 + 32));
}

uint64_t sub_1AFC1C210(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, float), uint64_t a8, float a9, void (*a10)(uint64_t, uint64_t, __n128))
{
  v71 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a5, v64);
  if (LOBYTE(v64[0]) == 1)
  {
    return a7(a2, a9);
  }

  v19 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v19 + 32));
  v20 = a1;
  v21 = *v19;
  v57 = v20;
  sub_1AF649C6C(*(v20 + 40), a5, v64);
  if (v64[0])
  {
    goto LABEL_40;
  }

  v54 = v19;
  v69[0] = a5;
  v69[1] = a6;
  v70 = 0;
  v53 = a2;
  v22 = *(*(v21 + 104) + 16);
  v55 = a8;
  v56 = *(v21 + 104);

  v23 = v21;
  if (!v22)
  {
LABEL_34:

    v39 = *(v57 + 240) - *(v57 + 232);
    v40 = ecs_stack_allocator_allocate(*(v23 + 32), 8 * v39, 8);
    *v40 = v53;
    sub_1AF63515C(v69, v64);
    v66[0] = v40;
    v66[1] = v39;
    v66[2] = 1;
    v41 = *(v23 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 104) = v41;
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = (v21 + 104);
    }

    else
    {
      v41 = sub_1AF420EA0(0, v41[2] + 1, 1, v41);
      v43 = (v21 + 104);
      *(v21 + 104) = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1AF420EA0(v44 > 1, v45 + 1, 1, v41);
    }

    v19 = v54;
    v41[2] = v45 + 1;
    v46 = &v41[9 * v45];
    *(v46 + 2) = v64[0];
    v47 = v64[1];
    v48 = v65;
    v49 = *v66;
    v46[12] = v66[2];
    *(v46 + 4) = v48;
    *(v46 + 5) = v49;
    *(v46 + 3) = v47;
    *v43 = v41;
    a8 = v55;
    goto LABEL_39;
  }

  v24 = 0;
  v25 = v56 + 32;
  while (1)
  {
    sub_1AFC28178(v25, v68, sub_1AF43A540);
    sub_1AF63515C(v68, v64);
    sub_1AF63515C(v69, v66);
    if (BYTE8(v65) > 2u)
    {
      break;
    }

    if (!BYTE8(v65))
    {
      sub_1AF63515C(v64, v63);
      if (v67)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v65) == 1)
    {
      sub_1AF63515C(v64, v63);
      if (v67 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v29 = *&v63[0];
      v30 = v66[0];
      sub_1AF635250(v64);
      sub_1AFC282F8(v68, sub_1AF43A540);
      v28 = v29 == v30;
LABEL_20:
      v23 = v21;
      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v64, v63);
    if (v67 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v63);
LABEL_7:
      sub_1AFC0DD34(v64, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v68, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v63, v60);
    sub_1AF616568(v66, v59);
    v31 = v61;
    v32 = v62;
    sub_1AF441150(v60, v61);
    v33 = v32;
    v23 = v21;
    LOBYTE(v31) = sub_1AF640C98(v59, v31, v33);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    sub_1AF635250(v64);
    sub_1AFC282F8(v68, sub_1AF43A540);
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v24;
    v25 += 72;
    if (v22 == v24)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v65) == 3)
  {
    sub_1AF63515C(v64, v63);
    if (v67 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v65) == 4)
  {
    sub_1AF63515C(v64, v63);
    if (v67 != 4)
    {
      goto LABEL_7;
    }

    v26 = LOBYTE(v63[0]);
    v27 = LOBYTE(v66[0]);
    sub_1AF635250(v64);
    sub_1AFC282F8(v68, sub_1AF43A540);
    v28 = v26 == v27;
    goto LABEL_20;
  }

  if (v67 != 5)
  {
    goto LABEL_7;
  }

  v34 = vorrq_s8(*&v66[1], *&v66[3]);
  if (*&vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL)) | v66[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v64);
  sub_1AFC282F8(v68, sub_1AF43A540);
LABEL_31:

  v36 = sub_1AFBFCA08(v64);
  v37 = *(v35 + 48);
  if (v37)
  {
    v38 = *(v35 + 64);
    *(v37 + 8 * v38) = v53;
    *(v35 + 64) = v38 + 1;
  }

  (v36)(v64, 0);
  v19 = v54;
LABEL_39:
  sub_1AF635250(v69);
LABEL_40:
  v50 = sub_1AF62D29C(v57);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  a10(a4, a8, v52);
  return ecs_stack_allocator_pop_snapshot(*(*v19 + 32));
}

void sub_1AFC1C88C(uint64_t a1, __int16 a2, __n128 *a3, uint64_t a4, unint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for OrthographicCamera, v50);
  if (LOBYTE(v50[0]) == 1)
  {
    sub_1AFC4A518(a2, a3);
    return;
  }

  v10 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v10 + 32));
  v44 = v10;
  v11 = *v10;
  sub_1AF649C6C(*(a1 + 40), &type metadata for OrthographicCamera, v50);
  if (v50[0])
  {
    goto LABEL_39;
  }

  v42 = a5;
  v39 = v11;
  v40 = a2;
  v55[0] = &type metadata for OrthographicCamera;
  v55[1] = &off_1F2511CF0;
  v56 = 0;
  v41 = (v11 + 104);
  v12 = *(*(v11 + 104) + 16);
  v43 = *(v11 + 104);

  if (!v12)
  {
LABEL_33:

    v26 = *(a1 + 240) - *(a1 + 232);
    v27 = ecs_stack_allocator_allocate(*(v39 + 32), 8 * v26, 8);
    *v27 = v40;
    sub_1AF63515C(v55, v50);
    v52[0] = v27;
    v52[1] = v26;
    v52[2] = 1;
    v28 = *(v39 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 104) = v28;
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v41;
    }

    else
    {
      v28 = sub_1AF420EA0(0, v28[2] + 1, 1, v28);
      v30 = v41;
      *v41 = v28;
    }

    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      v28 = sub_1AF420EA0(v31 > 1, v32 + 1, 1, v28);
    }

    a5 = v42;
    v28[2] = v32 + 1;
    v33 = &v28[9 * v32];
    *(v33 + 2) = v50[0];
    v34 = v50[1];
    v35 = v51;
    v36 = *v52;
    v33[12] = v52[2];
    *(v33 + 4) = v35;
    *(v33 + 5) = v36;
    *(v33 + 3) = v34;
    *v30 = v28;
    goto LABEL_38;
  }

  v13 = 0;
  v14 = v43 + 32;
  while (1)
  {
    sub_1AFC28178(v14, v54, sub_1AF43A540);
    sub_1AF63515C(v54, v50);
    sub_1AF63515C(v55, v52);
    if (BYTE8(v51) <= 2u)
    {
      if (!BYTE8(v51))
      {
        sub_1AF63515C(v50, v49);
        if (v53)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v51) == 1)
      {
        sub_1AF63515C(v50, v49);
        if (v53 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v17 = *&v49[0];
        v18 = v52[0];
        sub_1AF635250(v50);
        sub_1AFC282F8(v54, sub_1AF43A540);
        if (v17 == v18)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v50, v49);
      if (v53 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
LABEL_7:
        sub_1AFC0DD34(v50, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v54, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v51) == 3)
    {
      sub_1AF63515C(v50, v49);
      if (v53 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v49, v46);
      sub_1AF616568(v52, v45);
      v19 = v47;
      v20 = v48;
      sub_1AF441150(v46, v47);
      LOBYTE(v19) = sub_1AF640C98(v45, v19, v20);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      sub_1AF635250(v50);
      sub_1AFC282F8(v54, sub_1AF43A540);
      if (v19)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v51) != 4)
    {
      break;
    }

    sub_1AF63515C(v50, v49);
    if (v53 != 4)
    {
      goto LABEL_7;
    }

    v15 = LOBYTE(v49[0]);
    v16 = LOBYTE(v52[0]);
    sub_1AF635250(v50);
    sub_1AFC282F8(v54, sub_1AF43A540);
    if (v15 == v16)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v13;
    v14 += 72;
    if (v12 == v13)
    {
      goto LABEL_33;
    }
  }

  if (v53 != 5)
  {
    goto LABEL_7;
  }

  v21 = vorrq_s8(*&v52[1], *&v52[3]);
  if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v52[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v50);
  sub_1AFC282F8(v54, sub_1AF43A540);
LABEL_30:

  v23 = sub_1AFBFCA08(v50);
  v24 = *(v22 + 48);
  if (v24)
  {
    v25 = *(v22 + 64);
    *(v24 + 8 * v25) = v40;
    *(v22 + 64) = v25 + 1;
  }

  (v23)(v50, 0);
  a5 = v42;
LABEL_38:
  sub_1AF635250(v55);
LABEL_39:
  v37 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_1AFCBEC64(a5, sub_1AFC2632C);
  ecs_stack_allocator_pop_snapshot(*(*v44 + 32));
}

void sub_1AFC1CE5C(uint64_t a1, __int16 a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v44 = *a3;
  v45 = a3[1];
  v46 = a3[2];
  sub_1AF649C6C(*(a1 + 40), &type metadata for PerspectiveCamera, &v52);
  if (v52 == 1)
  {
    v52 = v44;
    v53 = v45;
    v54 = v46;
    sub_1AFC4A574(a2, &v52);
    return;
  }

  v9 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v9 + 32));
  v43 = v9;
  v10 = *v9;
  sub_1AF649C6C(*(a1 + 40), &type metadata for PerspectiveCamera, &v52);
  if (v52)
  {
    goto LABEL_39;
  }

  v41 = a5;
  v38 = v10;
  v39 = a2;
  v58[0] = &type metadata for PerspectiveCamera;
  v58[1] = &off_1F2511ED0;
  v59 = 0;
  v40 = (v10 + 104);
  v11 = *(*(v10 + 104) + 16);
  v42 = *(v10 + 104);

  if (!v11)
  {
LABEL_33:

    v25 = *(a1 + 240) - *(a1 + 232);
    v26 = ecs_stack_allocator_allocate(*(v38 + 32), 8 * v25, 8);
    *v26 = v39;
    sub_1AF63515C(v58, &v52);
    v55[0] = v26;
    v55[1] = v25;
    v55[2] = 1;
    v27 = *(v38 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 104) = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v40;
    }

    else
    {
      v27 = sub_1AF420EA0(0, v27[2] + 1, 1, v27);
      v29 = v40;
      *v40 = v27;
    }

    v31 = v27[2];
    v30 = v27[3];
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1AF420EA0(v30 > 1, v31 + 1, 1, v27);
    }

    a5 = v41;
    v27[2] = v31 + 1;
    v32 = &v27[9 * v31];
    *(v32 + 2) = v52;
    v33 = v53;
    v34 = v54;
    v35 = *v55;
    v32[12] = v55[2];
    *(v32 + 4) = v34;
    *(v32 + 5) = v35;
    *(v32 + 3) = v33;
    *v29 = v27;
    goto LABEL_38;
  }

  v12 = 0;
  v13 = v42 + 32;
  while (1)
  {
    sub_1AFC28178(v13, v57, sub_1AF43A540);
    sub_1AF63515C(v57, &v52);
    sub_1AF63515C(v58, v55);
    if (BYTE8(v54) <= 2u)
    {
      if (!BYTE8(v54))
      {
        sub_1AF63515C(&v52, v51);
        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v54) == 1)
      {
        sub_1AF63515C(&v52, v51);
        if (v56 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v16 = *&v51[0];
        v17 = v55[0];
        sub_1AF635250(&v52);
        sub_1AFC282F8(v57, sub_1AF43A540);
        if (v16 == v17)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(&v52, v51);
      if (v56 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
LABEL_7:
        sub_1AFC0DD34(&v52, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v57, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v54) == 3)
    {
      sub_1AF63515C(&v52, v51);
      if (v56 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v51, v48);
      sub_1AF616568(v55, v47);
      v18 = v49;
      v19 = v50;
      sub_1AF441150(v48, v49);
      LOBYTE(v18) = sub_1AF640C98(v47, v18, v19);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
      sub_1AF635250(&v52);
      sub_1AFC282F8(v57, sub_1AF43A540);
      if (v18)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v54) != 4)
    {
      break;
    }

    sub_1AF63515C(&v52, v51);
    if (v56 != 4)
    {
      goto LABEL_7;
    }

    v14 = LOBYTE(v51[0]);
    v15 = LOBYTE(v55[0]);
    sub_1AF635250(&v52);
    sub_1AFC282F8(v57, sub_1AF43A540);
    if (v14 == v15)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v12;
    v13 += 72;
    if (v11 == v12)
    {
      goto LABEL_33;
    }
  }

  if (v56 != 5)
  {
    goto LABEL_7;
  }

  v20 = vorrq_s8(*&v55[1], *&v55[3]);
  if (*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v55[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(&v52);
  sub_1AFC282F8(v57, sub_1AF43A540);
LABEL_30:

  v22 = sub_1AFBFCA08(&v52);
  v23 = *(v21 + 48);
  if (v23)
  {
    v24 = *(v21 + 64);
    *(v23 + 8 * v24) = v39;
    *(v21 + 64) = v24 + 1;
  }

  (v22)(&v52, 0);
  a5 = v41;
LABEL_38:
  sub_1AF635250(v58);
LABEL_39:
  v36 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v36, v37);
  sub_1AFCBEA90(a5, sub_1AFC26354);
  ecs_stack_allocator_pop_snapshot(*(*v43 + 32));
}

uint64_t sub_1AFC1D424(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, __n128 a5, __n128 a6)
{
  v60 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for LocalAABB, v53);
  if (LOBYTE(v53[0]) == 1)
  {
    return sub_1AFC4A8B0(a2, a5, a6);
  }

  v11 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v11 + 32));
  v47 = v11;
  v12 = *v11;
  sub_1AF649C6C(*(a1 + 40), &type metadata for LocalAABB, v53);
  if (v53[0])
  {
    goto LABEL_39;
  }

  v43 = a4;
  v40 = v12;
  v41 = a2;
  v58[0] = &type metadata for LocalAABB;
  v58[1] = &off_1F25104C0;
  v59 = 0;
  v42 = (v12 + 104);
  v13 = *(*(v12 + 104) + 16);
  v44 = *(v12 + 104);

  if (!v13)
  {
LABEL_33:

    v27 = *(a1 + 240) - *(a1 + 232);
    v28 = ecs_stack_allocator_allocate(*(v40 + 32), 8 * v27, 8);
    *v28 = v41;
    sub_1AF63515C(v58, v53);
    v55[0] = v28;
    v55[1] = v27;
    v55[2] = 1;
    v29 = *(v40 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 104) = v29;
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v42;
    }

    else
    {
      v29 = sub_1AF420EA0(0, v29[2] + 1, 1, v29);
      v31 = v42;
      *v42 = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_1AF420EA0(v32 > 1, v33 + 1, 1, v29);
    }

    a4 = v43;
    v29[2] = v33 + 1;
    v34 = &v29[9 * v33];
    *(v34 + 2) = v53[0];
    v35 = v53[1];
    v36 = v54;
    v37 = *v55;
    v34[12] = v55[2];
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    *(v34 + 3) = v35;
    *v31 = v29;
    goto LABEL_38;
  }

  v14 = 0;
  v15 = v44 + 32;
  while (1)
  {
    sub_1AFC28178(v15, v57, sub_1AF43A540);
    sub_1AF63515C(v57, v53);
    sub_1AF63515C(v58, v55);
    if (BYTE8(v54) <= 2u)
    {
      if (!BYTE8(v54))
      {
        sub_1AF63515C(v53, v52);
        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v54) == 1)
      {
        sub_1AF63515C(v53, v52);
        if (v56 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v18 = *&v52[0];
        v19 = v55[0];
        sub_1AF635250(v53);
        sub_1AFC282F8(v57, sub_1AF43A540);
        if (v18 == v19)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v53, v52);
      if (v56 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
LABEL_7:
        sub_1AFC0DD34(v53, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v57, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v54) == 3)
    {
      sub_1AF63515C(v53, v52);
      if (v56 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v52, v49);
      sub_1AF616568(v55, v48);
      v20 = v50;
      v21 = v51;
      sub_1AF441150(v49, v50);
      LOBYTE(v20) = sub_1AF640C98(v48, v20, v21);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
      sub_1AF635250(v53);
      sub_1AFC282F8(v57, sub_1AF43A540);
      if (v20)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v54) != 4)
    {
      break;
    }

    sub_1AF63515C(v53, v52);
    if (v56 != 4)
    {
      goto LABEL_7;
    }

    v16 = LOBYTE(v52[0]);
    v17 = LOBYTE(v55[0]);
    sub_1AF635250(v53);
    sub_1AFC282F8(v57, sub_1AF43A540);
    if (v16 == v17)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v14;
    v15 += 72;
    if (v13 == v14)
    {
      goto LABEL_33;
    }
  }

  if (v56 != 5)
  {
    goto LABEL_7;
  }

  v22 = vorrq_s8(*&v55[1], *&v55[3]);
  if (*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v55[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v53);
  sub_1AFC282F8(v57, sub_1AF43A540);
LABEL_30:

  v24 = sub_1AFBFCA08(v53);
  v25 = *(v23 + 48);
  if (v25)
  {
    v26 = *(v23 + 64);
    *(v25 + 8 * v26) = v41;
    *(v23 + 64) = v26 + 1;
  }

  (v24)(v53, 0);
  a4 = v43;
LABEL_38:
  sub_1AF635250(v58);
LABEL_39:
  v38 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v38, v39);
  sub_1AFCBC9B0(a4, sub_1AFBF443C);
  return ecs_stack_allocator_pop_snapshot(*(*v47 + 32));
}

uint64_t sub_1AFC1D9E8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for Name, v53);
  if (LOBYTE(v53[0]) == 1)
  {
    return sub_1AFC4A82C(a2, a3, a4);
  }

  v13 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v47 = v13;
  v14 = *v13;
  sub_1AF649C6C(*(a1 + 40), &type metadata for Name, v53);
  if (v53[0])
  {
    goto LABEL_39;
  }

  v45 = a6;
  v42 = v14;
  v43 = a2;
  v58[0] = &type metadata for Name;
  v58[1] = &off_1F2535068;
  v59 = 0;
  v44 = (v14 + 104);
  v15 = *(*(v14 + 104) + 16);
  v46 = *(v14 + 104);

  if (!v15)
  {
LABEL_33:

    v29 = *(a1 + 240) - *(a1 + 232);
    v30 = ecs_stack_allocator_allocate(*(v42 + 32), 8 * v29, 8);
    *v30 = v43;
    sub_1AF63515C(v58, v53);
    v55[0] = v30;
    v55[1] = v29;
    v55[2] = 1;
    v31 = *(v42 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v44;
    }

    else
    {
      v31 = sub_1AF420EA0(0, v31[2] + 1, 1, v31);
      v33 = v44;
      *v44 = v31;
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1AF420EA0(v34 > 1, v35 + 1, 1, v31);
    }

    a6 = v45;
    v31[2] = v35 + 1;
    v36 = &v31[9 * v35];
    *(v36 + 2) = v53[0];
    v37 = v53[1];
    v38 = v54;
    v39 = *v55;
    v36[12] = v55[2];
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *v33 = v31;
    goto LABEL_38;
  }

  v16 = 0;
  v17 = v46 + 32;
  while (1)
  {
    sub_1AFC28178(v17, v57, sub_1AF43A540);
    sub_1AF63515C(v57, v53);
    sub_1AF63515C(v58, v55);
    if (BYTE8(v54) <= 2u)
    {
      if (!BYTE8(v54))
      {
        sub_1AF63515C(v53, v52);
        if (v56)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v54) == 1)
      {
        sub_1AF63515C(v53, v52);
        if (v56 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v20 = *&v52[0];
        v21 = v55[0];
        sub_1AF635250(v53);
        sub_1AFC282F8(v57, sub_1AF43A540);
        if (v20 == v21)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v53, v52);
      if (v56 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
LABEL_7:
        sub_1AFC0DD34(v53, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v57, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v54) == 3)
    {
      sub_1AF63515C(v53, v52);
      if (v56 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v52, v49);
      sub_1AF616568(v55, v48);
      v22 = v50;
      v23 = v51;
      sub_1AF441150(v49, v50);
      LOBYTE(v22) = sub_1AF640C98(v48, v22, v23);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
      sub_1AF635250(v53);
      sub_1AFC282F8(v57, sub_1AF43A540);
      if (v22)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v54) != 4)
    {
      break;
    }

    sub_1AF63515C(v53, v52);
    if (v56 != 4)
    {
      goto LABEL_7;
    }

    v18 = LOBYTE(v52[0]);
    v19 = LOBYTE(v55[0]);
    sub_1AF635250(v53);
    sub_1AFC282F8(v57, sub_1AF43A540);
    if (v18 == v19)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v16;
    v17 += 72;
    if (v15 == v16)
    {
      goto LABEL_33;
    }
  }

  if (v56 != 5)
  {
    goto LABEL_7;
  }

  v24 = vorrq_s8(*&v55[1], *&v55[3]);
  if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v55[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v53);
  sub_1AFC282F8(v57, sub_1AF43A540);
LABEL_30:

  v26 = sub_1AFBFCA08(v53);
  v27 = *(v25 + 48);
  if (v27)
  {
    v28 = *(v25 + 64);
    *(v27 + 8 * v28) = v43;
    *(v25 + 64) = v28 + 1;
  }

  (v26)(v53, 0);
  a6 = v45;
LABEL_38:
  sub_1AF635250(v58);
LABEL_39:
  v40 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_1AFCBDFA4(a6, sub_1AFC2887C);
  return ecs_stack_allocator_pop_snapshot(*(*v47 + 32));
}

uint64_t sub_1AFC1DFBC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), &type metadata for MeshReferenceAsset, v57);
  if (LOBYTE(v57[0]) == 1)
  {
    return sub_1AFC43954(a2, a3, a4, a5, a6);
  }

  v16 = *(a7 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = *v16;
  sub_1AF649C6C(*(a1 + 40), &type metadata for MeshReferenceAsset, v57);
  if (v57[0])
  {
    goto LABEL_38;
  }

  v50 = v16;
  v47 = v17;
  v48 = a2;
  v62[0] = &type metadata for MeshReferenceAsset;
  v62[1] = &off_1F252BE58;
  v63 = 0;
  v18 = *(v17 + 104);
  v49 = (v17 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_33:
    v33 = *(a1 + 240) - *(a1 + 232);
    v34 = ecs_stack_allocator_allocate(*(v47 + 32), 8 * v33, 8);
    *v34 = v48;
    sub_1AF63515C(v62, v57);
    v59[0] = v34;
    v59[1] = v33;
    v59[2] = 1;
    v35 = *(v47 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 104) = v35;
    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v49;
    }

    else
    {
      v35 = sub_1AF420EA0(0, v35[2] + 1, 1, v35);
      v37 = v49;
      *v49 = v35;
    }

    v39 = v35[2];
    v38 = v35[3];
    v16 = v50;
    if (v39 >= v38 >> 1)
    {
      *v37 = sub_1AF420EA0(v38 > 1, v39 + 1, 1, v35);
    }

    sub_1AF635250(v62);
    v40 = *v37;
    *(v40 + 16) = v39 + 1;
    v41 = v40 + 72 * v39;
    *(v41 + 32) = v57[0];
    v42 = *v59;
    v43 = v58;
    v44 = v57[1];
    *(v41 + 96) = v59[2];
    *(v41 + 64) = v43;
    *(v41 + 80) = v42;
    *(v41 + 48) = v44;
    *v37 = v40;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v18 + 32;
  while (1)
  {
    sub_1AFC28178(v21, v61, sub_1AF43A540);
    sub_1AF63515C(v61, v57);
    sub_1AF63515C(v62, v59);
    if (BYTE8(v58) <= 2u)
    {
      if (!BYTE8(v58))
      {
        sub_1AF63515C(v57, v56);
        if (v60)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v58) == 1)
      {
        sub_1AF63515C(v57, v56);
        if (v60 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v24 = *&v56[0];
        v25 = v59[0];
        sub_1AF635250(v57);
        sub_1AFC282F8(v61, sub_1AF43A540);
        if (v24 == v25)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v57, v56);
      if (v60 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
LABEL_7:
        sub_1AFC0DD34(v57, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v61, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v58) == 3)
    {
      sub_1AF63515C(v57, v56);
      if (v60 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v56, v53);
      sub_1AF616568(v59, v52);
      v26 = v54;
      v27 = v55;
      sub_1AF441150(v53, v54);
      LOBYTE(v26) = sub_1AF640C98(v52, v26, v27);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
      sub_1AF635250(v57);
      sub_1AFC282F8(v61, sub_1AF43A540);
      if (v26)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v58) != 4)
    {
      break;
    }

    sub_1AF63515C(v57, v56);
    if (v60 != 4)
    {
      goto LABEL_7;
    }

    v22 = LOBYTE(v56[0]);
    v23 = LOBYTE(v59[0]);
    sub_1AF635250(v57);
    sub_1AFC282F8(v61, sub_1AF43A540);
    if (v22 == v23)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_33;
    }
  }

  if (v60 != 5)
  {
    goto LABEL_7;
  }

  v28 = vorrq_s8(*&v59[1], *&v59[3]);
  if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | v59[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v57);
  sub_1AFC282F8(v61, sub_1AF43A540);
LABEL_30:
  v30 = sub_1AFBFCA08(v57);
  v31 = *(v29 + 48);
  if (v31)
  {
    v32 = *(v29 + 64);
    *(v31 + 8 * v32) = v48;
    *(v29 + 64) = v32 + 1;
  }

  (v30)(v57, 0);
  sub_1AF635250(v62);
  v16 = v50;
LABEL_38:
  v45 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v45, v46);
  sub_1AFCC239C(a8, sub_1AFC2636C);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

void sub_1AFC1E5A8(uint64_t a1, __int16 a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a3[7];
  v65 = a3[6];
  v66[0] = v9;
  *(v66 + 12) = *(a3 + 124);
  v10 = a3[3];
  v61 = a3[2];
  v62 = v10;
  v11 = a3[5];
  v63 = a3[4];
  v64 = v11;
  v12 = a3[1];
  v59 = *a3;
  v60 = v12;
  sub_1AF649C6C(*(a1 + 40), &type metadata for ForceField, &v67);
  if (v67 == 1)
  {
    *&v70[32] = v64;
    v71 = v65;
    v72[0] = v66[0];
    *(v72 + 12) = *(v66 + 12);
    v69 = v61;
    *v70 = v62;
    *&v70[16] = v63;
    v67 = v59;
    v68 = v60;
    sub_1AFC4A5D0(a2, &v67);
    return;
  }

  v13 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v14 = *v13;
  v50 = a1;
  sub_1AF649C6C(*(a1 + 40), &type metadata for ForceField, &v67);
  if (v67)
  {
    goto LABEL_40;
  }

  v47 = v13;
  v48 = a5;
  v46 = a2;
  v57[0] = &type metadata for ForceField;
  v57[1] = &off_1F2560F10;
  v58 = 0;
  v15 = *(v14 + 104);
  v49 = (v14 + 104);
  v16 = *(v15 + 16);
  v17 = v14;
  if (!v16)
  {
LABEL_34:
    v33 = *(v50 + 240) - *(v50 + 232);
    v34 = ecs_stack_allocator_allocate(*(v17 + 32), 8 * v33, 8);
    *v34 = v46;
    sub_1AF63515C(v57, &v67);
    *v70 = v34;
    *&v70[8] = v33;
    *&v70[16] = 1;
    v35 = *(v17 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 104) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1AF420EA0(0, v35[2] + 1, 1, v35);
      *v49 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    a5 = v48;
    if (v38 >= v37 >> 1)
    {
      *v49 = sub_1AF420EA0(v37 > 1, v38 + 1, 1, v35);
    }

    sub_1AF635250(v57);
    v39 = *v49;
    *(v39 + 16) = v38 + 1;
    v40 = v39 + 72 * v38;
    *(v40 + 32) = v67;
    v42 = v69;
    v41 = *v70;
    v43 = v68;
    *(v40 + 96) = *&v70[16];
    *(v40 + 64) = v42;
    *(v40 + 80) = v41;
    *(v40 + 48) = v43;
    *v49 = v39;
    goto LABEL_39;
  }

  v18 = 0;
  v19 = v15 + 32;
  while (1)
  {
    sub_1AFC28178(v19, v56, sub_1AF43A540);
    sub_1AF63515C(v56, &v67);
    sub_1AF63515C(v57, v70);
    if (BYTE8(v69) > 2u)
    {
      break;
    }

    if (!BYTE8(v69))
    {
      sub_1AF63515C(&v67, v55);
      if (v70[40])
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v69) == 1)
    {
      sub_1AF63515C(&v67, v55);
      if (v70[40] != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v23 = *&v55[0];
      v24 = *v70;
      sub_1AF635250(&v67);
      sub_1AFC282F8(v56, sub_1AF43A540);
      v22 = v23 == v24;
LABEL_20:
      v17 = v14;
      if (v22)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(&v67, v55);
    if (v70[40] != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
LABEL_7:
      sub_1AFC0DD34(&v67, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v56, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v55, v52);
    sub_1AF616568(v70, v51);
    v25 = v53;
    v26 = v54;
    sub_1AF441150(v52, v53);
    v27 = v26;
    v17 = v14;
    LOBYTE(v25) = sub_1AF640C98(v51, v25, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
    sub_1AF635250(&v67);
    sub_1AFC282F8(v56, sub_1AF43A540);
    if (v25)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v18;
    v19 += 72;
    if (v16 == v18)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v69) == 3)
  {
    sub_1AF63515C(&v67, v55);
    if (v70[40] != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v69) == 4)
  {
    sub_1AF63515C(&v67, v55);
    if (v70[40] != 4)
    {
      goto LABEL_7;
    }

    v20 = LOBYTE(v55[0]);
    v21 = v70[0];
    sub_1AF635250(&v67);
    sub_1AFC282F8(v56, sub_1AF43A540);
    v22 = v20 == v21;
    goto LABEL_20;
  }

  if (v70[40] != 5)
  {
    goto LABEL_7;
  }

  v28 = vorrq_s8(*&v70[8], *&v70[24]);
  if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | *v70)
  {
    goto LABEL_7;
  }

  sub_1AF635250(&v67);
  sub_1AFC282F8(v56, sub_1AF43A540);
LABEL_31:
  v30 = sub_1AFBFCA08(&v67);
  v31 = *(v29 + 48);
  a5 = v48;
  if (v31)
  {
    v32 = *(v29 + 64);
    *(v31 + 8 * v32) = v46;
    *(v29 + 64) = v32 + 1;
  }

  (v30)(&v67, 0);
  sub_1AF635250(v57);
LABEL_39:
  v13 = v47;
LABEL_40:
  v44 = sub_1AF62D29C(v50);
  MEMORY[0x1EEE9AC00](v44, v45);
  sub_1AFCC2AD4(a5, sub_1AFC28568);
  ecs_stack_allocator_pop_snapshot(*(*v13 + 32));
}

uint64_t sub_1AFC1EC94(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v58 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a4, v50);
  if (LOBYTE(v50[0]) == 1)
  {
    return a6(a2);
  }

  v13 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v14 = *v13;
  sub_1AF649C6C(*(a1 + 40), a4, v50);
  if (v50[0])
  {
    goto LABEL_38;
  }

  v42 = v14;
  v43 = a2;
  v56[0] = a4;
  v56[1] = a5;
  v57 = 0;
  v15 = *(v14 + 104);
  v44 = (v14 + 104);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_33:
    v30 = *(a1 + 240) - *(a1 + 232);
    v31 = ecs_stack_allocator_allocate(*(v42 + 32), 8 * v30, 8);
    *v31 = v43;
    sub_1AF63515C(v56, v50);
    *v52 = v31;
    *&v52[8] = v30;
    *&v52[16] = 1;
    v32 = *(v42 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v32;
    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v44;
    }

    else
    {
      v32 = sub_1AF420EA0(0, v32[2] + 1, 1, v32);
      v34 = v44;
      *v44 = v32;
    }

    v36 = v32[2];
    v35 = v32[3];
    if (v36 >= v35 >> 1)
    {
      *v34 = sub_1AF420EA0(v35 > 1, v36 + 1, 1, v32);
    }

    sub_1AF635250(v56);
    v37 = *v34;
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 72 * v36;
    *(v38 + 32) = v50[0];
    v39 = *v52;
    v40 = v51;
    v41 = v50[1];
    *(v38 + 96) = *&v52[16];
    *(v38 + 64) = v40;
    *(v38 + 80) = v39;
    *(v38 + 48) = v41;
    *v34 = v37;
    goto LABEL_38;
  }

  v17 = 0;
  v18 = v15 + 32;
  while (1)
  {
    sub_1AFC28178(v18, v55, sub_1AF43A540);
    sub_1AF63515C(v55, v50);
    sub_1AF63515C(v56, v52);
    if (BYTE8(v51) <= 2u)
    {
      if (!BYTE8(v51))
      {
        sub_1AF63515C(v50, v49);
        if (v54)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v51) == 1)
      {
        sub_1AF63515C(v50, v49);
        if (v54 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v21 = *&v49[0];
        v22 = *v52;
        sub_1AF635250(v50);
        sub_1AFC282F8(v55, sub_1AF43A540);
        if (v21 == v22)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v50, v49);
      if (v54 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
LABEL_7:
        sub_1AFC0DD34(v50, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v55, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v51) == 3)
    {
      sub_1AF63515C(v50, v49);
      if (v54 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v49, v46);
      sub_1AF616568(v52, v45);
      v23 = v47;
      v24 = v48;
      sub_1AF441150(v46, v47);
      LOBYTE(v23) = sub_1AF640C98(v45, v23, v24);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      sub_1AF635250(v50);
      sub_1AFC282F8(v55, sub_1AF43A540);
      if (v23)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v51) != 4)
    {
      break;
    }

    sub_1AF63515C(v50, v49);
    if (v54 != 4)
    {
      goto LABEL_7;
    }

    v19 = LOBYTE(v49[0]);
    v20 = v52[0];
    sub_1AF635250(v50);
    sub_1AFC282F8(v55, sub_1AF43A540);
    if (v19 == v20)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v17;
    v18 += 72;
    if (v16 == v17)
    {
      goto LABEL_33;
    }
  }

  if (v54 != 5)
  {
    goto LABEL_7;
  }

  v25 = vorrq_s8(*&v52[8], v53);
  if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *v52)
  {
    goto LABEL_7;
  }

  sub_1AF635250(v50);
  sub_1AFC282F8(v55, sub_1AF43A540);
LABEL_30:
  v27 = sub_1AFBFCA08(v50);
  v28 = *(v26 + 48);
  if (v28)
  {
    v29 = *(v26 + 64);
    *(v28 + 8 * v29) = v43;
    *(v26 + 64) = v29 + 1;
  }

  (v27)(v50, 0);
  sub_1AF635250(v56);
LABEL_38:
  sub_1AF62D29C(a1);
  return ecs_stack_allocator_pop_snapshot(*(*v13 + 32));
}

uint64_t sub_1AFC1F1AC(uint64_t *a1, __int16 a2, uint64_t a3, unint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v67 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(a1[5], &type metadata for LastFrameWorldTransform, v60);
  if (LOBYTE(v60[0]) == 1)
  {
    return sub_1AFC4A7DC(a2, a5, a6, a7, a8);
  }

  v13 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v14 = *v13;
  v54 = a1;
  sub_1AF649C6C(a1[5], &type metadata for LastFrameWorldTransform, v60);
  if (v60[0])
  {
    goto LABEL_40;
  }

  v48 = v13;
  v50 = a4;
  v65[0] = &type metadata for LastFrameWorldTransform;
  v65[1] = &off_1F2529EB0;
  v66 = 0;
  v15 = *(v14 + 104);
  v47 = a2;
  v16 = *(v15 + 16);
  v17 = v14;
  if (!v16)
  {
LABEL_34:
    v33 = a1[30] - a1[29];
    v34 = ecs_stack_allocator_allocate(*(v17 + 32), 8 * v33, 8);
    *v34 = v47;
    sub_1AF63515C(v65, v60);
    v62[0] = v34;
    v62[1] = v33;
    v62[2] = 1;
    v35 = *(v17 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 104) = v35;
    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = (v14 + 104);
    }

    else
    {
      v35 = sub_1AF420EA0(0, v35[2] + 1, 1, v35);
      v37 = (v14 + 104);
      *(v14 + 104) = v35;
    }

    v39 = v35[2];
    v38 = v35[3];
    a4 = v50;
    if (v39 >= v38 >> 1)
    {
      *v37 = sub_1AF420EA0(v38 > 1, v39 + 1, 1, v35);
    }

    sub_1AF635250(v65);
    v40 = *v37;
    *(v40 + 16) = v39 + 1;
    v41 = v40 + 72 * v39;
    *(v41 + 32) = v60[0];
    v43 = v61;
    v42 = *v62;
    v44 = v60[1];
    *(v41 + 96) = v62[2];
    *(v41 + 64) = v43;
    *(v41 + 80) = v42;
    *(v41 + 48) = v44;
    *v37 = v40;
    goto LABEL_39;
  }

  v18 = 0;
  v19 = v15 + 32;
  while (1)
  {
    sub_1AFC28178(v19, v64, sub_1AF43A540);
    sub_1AF63515C(v64, v60);
    sub_1AF63515C(v65, v62);
    if (BYTE8(v61) > 2u)
    {
      break;
    }

    if (!BYTE8(v61))
    {
      sub_1AF63515C(v60, v59);
      if (v63)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v61) == 1)
    {
      sub_1AF63515C(v60, v59);
      if (v63 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v23 = *&v59[0];
      v24 = v62[0];
      sub_1AF635250(v60);
      sub_1AFC282F8(v64, sub_1AF43A540);
      v22 = v23 == v24;
LABEL_20:
      v17 = v14;
      if (v22)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v60, v59);
    if (v63 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
LABEL_7:
      sub_1AFC0DD34(v60, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v64, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v59, v56);
    sub_1AF616568(v62, v55);
    v25 = v57;
    v26 = v58;
    sub_1AF441150(v56, v57);
    v27 = v26;
    v17 = v14;
    LOBYTE(v25) = sub_1AF640C98(v55, v25, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
    sub_1AF635250(v60);
    sub_1AFC282F8(v64, sub_1AF43A540);
    if (v25)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v18;
    v19 += 72;
    if (v16 == v18)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v61) == 3)
  {
    sub_1AF63515C(v60, v59);
    if (v63 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v61) == 4)
  {
    sub_1AF63515C(v60, v59);
    if (v63 != 4)
    {
      goto LABEL_7;
    }

    v20 = LOBYTE(v59[0]);
    v21 = LOBYTE(v62[0]);
    sub_1AF635250(v60);
    sub_1AFC282F8(v64, sub_1AF43A540);
    v22 = v20 == v21;
    goto LABEL_20;
  }

  if (v63 != 5)
  {
    goto LABEL_7;
  }

  v28 = vorrq_s8(*&v62[1], *&v62[3]);
  if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | v62[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v60);
  sub_1AFC282F8(v64, sub_1AF43A540);
LABEL_31:
  v30 = sub_1AFBFCA08(v60);
  v31 = *(v29 + 48);
  a4 = v50;
  if (v31)
  {
    v32 = *(v29 + 64);
    *(v31 + 8 * v32) = v47;
    *(v29 + 64) = v32 + 1;
  }

  (v30)(v60, 0);
  sub_1AF635250(v65);
LABEL_39:
  v13 = v48;
LABEL_40:
  v45 = sub_1AF62D29C(v54);
  MEMORY[0x1EEE9AC00](v45, v46);
  sub_1AFCC2DD0(a4, sub_1AFC28894);
  return ecs_stack_allocator_pop_snapshot(*(*v13 + 32));
}

uint64_t sub_1AFC1F788(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = *MEMORY[0x1E69E9840];
  v56[0] = a3;
  v56[1] = a4;
  v56[2] = a5;
  sub_1AF649C6C(*(a1 + 40), &type metadata for ScriptsHolder, v62);
  if (LOBYTE(v62[0]) == 1)
  {
    return sub_1AFC4AB34(a2, a3, a4, a5);
  }

  v55 = a7;
  v16 = *(a6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = *v16;
  sub_1AF649C6C(*(a1 + 40), &type metadata for ScriptsHolder, v62);
  if (v62[0])
  {
    goto LABEL_38;
  }

  v52 = v7;
  v53 = v16;
  v54 = a6;
  v49 = v17;
  v50 = a2;
  v67[0] = &type metadata for ScriptsHolder;
  v67[1] = &off_1F255C978;
  v68 = 0;
  v18 = *(v17 + 104);
  v51 = (v17 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_33:
    v33 = *(a1 + 240) - *(a1 + 232);
    v34 = v49;
    v35 = ecs_stack_allocator_allocate(*(v49 + 32), 8 * v33, 8);
    *v35 = v50;
    sub_1AF63515C(v67, v62);
    v64[0] = v35;
    v64[1] = v33;
    v64[2] = 1;
    v36 = *(v34 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 104) = v36;
    if (isUniquelyReferenced_nonNull_native)
    {
      v38 = v51;
    }

    else
    {
      v36 = sub_1AF420EA0(0, v36[2] + 1, 1, v36);
      v38 = v51;
      *v51 = v36;
    }

    v40 = v36[2];
    v39 = v36[3];
    v16 = v53;
    if (v40 >= v39 >> 1)
    {
      *v38 = sub_1AF420EA0(v39 > 1, v40 + 1, 1, v36);
    }

    sub_1AF635250(v67);
    v41 = *v38;
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 72 * v40;
    *(v42 + 32) = v62[0];
    v44 = v63;
    v43 = *v64;
    v45 = v62[1];
    *(v42 + 96) = v64[2];
    *(v42 + 64) = v44;
    *(v42 + 80) = v43;
    *(v42 + 48) = v45;
    *v38 = v41;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v18 + 32;
  while (1)
  {
    sub_1AFC28178(v21, v66, sub_1AF43A540);
    sub_1AF63515C(v66, v62);
    sub_1AF63515C(v67, v64);
    if (BYTE8(v63) <= 2u)
    {
      if (!BYTE8(v63))
      {
        sub_1AF63515C(v62, v61);
        if (v65)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v63) == 1)
      {
        sub_1AF63515C(v62, v61);
        if (v65 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v24 = *&v61[0];
        v25 = v64[0];
        sub_1AF635250(v62);
        sub_1AFC282F8(v66, sub_1AF43A540);
        if (v24 == v25)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v62, v61);
      if (v65 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
LABEL_7:
        sub_1AFC0DD34(v62, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v66, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v63) == 3)
    {
      sub_1AF63515C(v62, v61);
      if (v65 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v61, v58);
      sub_1AF616568(v64, v57);
      v26 = v59;
      v27 = v60;
      sub_1AF441150(v58, v59);
      LOBYTE(v26) = sub_1AF640C98(v57, v26, v27);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v57);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
      sub_1AF635250(v62);
      sub_1AFC282F8(v66, sub_1AF43A540);
      if (v26)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v63) != 4)
    {
      break;
    }

    sub_1AF63515C(v62, v61);
    if (v65 != 4)
    {
      goto LABEL_7;
    }

    v22 = LOBYTE(v61[0]);
    v23 = LOBYTE(v64[0]);
    sub_1AF635250(v62);
    sub_1AFC282F8(v66, sub_1AF43A540);
    if (v22 == v23)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_33;
    }
  }

  if (v65 != 5)
  {
    goto LABEL_7;
  }

  v28 = vorrq_s8(*&v64[1], *&v64[3]);
  if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | v64[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v62);
  sub_1AFC282F8(v66, sub_1AF43A540);
LABEL_30:
  v30 = sub_1AFBFCA08(v62);
  v31 = *(v29 + 48);
  if (v31)
  {
    v32 = *(v29 + 64);
    *(v31 + 8 * v32) = v50;
    *(v29 + 64) = v32 + 1;
  }

  (v30)(v62, 0);
  sub_1AF635250(v67);
  v16 = v53;
LABEL_38:
  v46 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v46, v47);
  v48[2] = v56;
  sub_1AFCC27F0(v55, sub_1AFC28498, v48);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC1FD60(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, qword_1ED724BA0, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4A8FC(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCBF680(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC20384(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4A924(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCBFD80(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC209A8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AA1C(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC0014(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC20FCC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AA44(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC0708(v57, sub_1AFC26B7C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC215F0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727FA0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AA6C(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC0DFC(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC21C14(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727FD0, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AA94(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC11B4(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC22238(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AABC(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC18A0(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC2285C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AAE4(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC1B30(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC22E80(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v59[0] = a3;
  v59[1] = a4;
  sub_1AFC28358(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v14 = v13;
  sub_1AF649C6C(*(a1 + 40), v13, v65);
  if (LOBYTE(v65[0]) == 1)
  {
    return sub_1AFC4AB0C(a2, a3, a4);
  }

  v57 = a6;
  v16 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v17 = a1;
  v18 = *v16;
  v58 = v17;
  sub_1AF649C6C(*(v17 + 40), v14, v65);
  if (v65[0])
  {
    goto LABEL_39;
  }

  v54 = v6;
  v55 = v16;
  v56 = a5;
  v70[0] = v14;
  v70[1] = &off_1F2559388;
  v71 = 0;
  v19 = *(v18 + 104);
  v52 = a2;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v37 = *(v58 + 30) - *(v58 + 29);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v70, v65);
    v67[0] = v38;
    v67[1] = v37;
    v67[2] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v70);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v65[0];
    v46 = *v67;
    v47 = v66;
    v48 = v65[1];
    *(v45 + 96) = v67[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v16 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  while (1)
  {
    sub_1AFC28178(v23, v69, sub_1AF43A540);
    sub_1AF63515C(v69, v65);
    sub_1AF63515C(v70, v67);
    if (BYTE8(v66) > 2u)
    {
      break;
    }

    if (!BYTE8(v66))
    {
      sub_1AF63515C(v65, v64);
      if (v68)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v66) == 1)
    {
      sub_1AF63515C(v65, v64);
      if (v68 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = v67[0];
      sub_1AF635250(v65);
      sub_1AFC282F8(v69, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v18;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v65, v64);
    if (v68 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(v65, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v69, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v67, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v18;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v66) == 3)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v66) == 4)
  {
    sub_1AF63515C(v65, v64);
    if (v68 != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v67[0]);
    sub_1AF635250(v65);
    sub_1AFC282F8(v69, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (v68 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v67[1], *&v67[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v67[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v65);
  sub_1AFC282F8(v69, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(v65);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v65, 0);
  sub_1AF635250(v70);
  v16 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v58);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = v59;
  sub_1AFCC1DC0(v57, sub_1AFC2885C, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v16 + 32));
}

uint64_t sub_1AFC234A4(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v9 = a6;
  v69 = *MEMORY[0x1E69E9840];
  v56 = BYTE2(a6);
  v55 = BYTE1(a6);
  sub_1AF649C6C(*(a1 + 40), &type metadata for GraphScriptingConfig, v62);
  if (LOBYTE(v62[0]) == 1)
  {
    if (v55)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFE | v9 & 1;
    if (v56)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    return sub_1AFC4A718(a2, a3, a4, a5, v16 | v17);
  }

  v19 = *(a7 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v19 + 32));
  v20 = *v19;
  sub_1AF649C6C(*(a1 + 40), &type metadata for GraphScriptingConfig, v62);
  if (v62[0])
  {
    goto LABEL_44;
  }

  v53 = v19;
  v50 = v20;
  v51 = a2;
  v67[0] = &type metadata for GraphScriptingConfig;
  v67[1] = &off_1F253C070;
  v68 = 0;
  v21 = *(v20 + 104);
  v52 = (v20 + 104);
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_39:
    v36 = *(a1 + 240) - *(a1 + 232);
    v37 = ecs_stack_allocator_allocate(*(v50 + 32), 8 * v36, 8);
    *v37 = v51;
    sub_1AF63515C(v67, v62);
    v64[0] = v37;
    v64[1] = v36;
    v64[2] = 1;
    v38 = *(v50 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 104) = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      v40 = v52;
    }

    else
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      v40 = v52;
      *v52 = v38;
    }

    v42 = v38[2];
    v41 = v38[3];
    v19 = v53;
    if (v42 >= v41 >> 1)
    {
      *v40 = sub_1AF420EA0(v41 > 1, v42 + 1, 1, v38);
    }

    sub_1AF635250(v67);
    v43 = *v40;
    *(v43 + 16) = v42 + 1;
    v44 = v43 + 72 * v42;
    *(v44 + 32) = v62[0];
    v45 = *v64;
    v46 = v63;
    v47 = v62[1];
    *(v44 + 96) = v64[2];
    *(v44 + 64) = v46;
    *(v44 + 80) = v45;
    *(v44 + 48) = v47;
    *v40 = v43;
    goto LABEL_44;
  }

  v23 = 0;
  v24 = v21 + 32;
  while (1)
  {
    sub_1AFC28178(v24, v66, sub_1AF43A540);
    sub_1AF63515C(v66, v62);
    sub_1AF63515C(v67, v64);
    if (BYTE8(v63) <= 2u)
    {
      if (!BYTE8(v63))
      {
        sub_1AF63515C(v62, v61);
        if (v65)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

      if (BYTE8(v63) == 1)
      {
        sub_1AF63515C(v62, v61);
        if (v65 != 1)
        {
          goto LABEL_13;
        }

LABEL_26:
        v27 = *&v61[0];
        v28 = v64[0];
        sub_1AF635250(v62);
        sub_1AFC282F8(v66, sub_1AF43A540);
        if (v27 == v28)
        {
          goto LABEL_36;
        }

        goto LABEL_14;
      }

      sub_1AF63515C(v62, v61);
      if (v65 != 2)
      {
LABEL_12:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
LABEL_13:
        sub_1AFC0DD34(v62, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v66, sub_1AF43A540);
        goto LABEL_14;
      }

      goto LABEL_31;
    }

    if (BYTE8(v63) == 3)
    {
      sub_1AF63515C(v62, v61);
      if (v65 != 3)
      {
        goto LABEL_12;
      }

LABEL_31:
      sub_1AF616568(v61, v58);
      sub_1AF616568(v64, v57);
      v29 = v59;
      v30 = v60;
      sub_1AF441150(v58, v59);
      LOBYTE(v29) = sub_1AF640C98(v57, v29, v30);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v57);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
      sub_1AF635250(v62);
      sub_1AFC282F8(v66, sub_1AF43A540);
      if (v29)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    if (BYTE8(v63) != 4)
    {
      break;
    }

    sub_1AF63515C(v62, v61);
    if (v65 != 4)
    {
      goto LABEL_13;
    }

    v25 = LOBYTE(v61[0]);
    v26 = LOBYTE(v64[0]);
    sub_1AF635250(v62);
    sub_1AFC282F8(v66, sub_1AF43A540);
    if (v25 == v26)
    {
      goto LABEL_36;
    }

LABEL_14:
    ++v23;
    v24 += 72;
    if (v22 == v23)
    {
      goto LABEL_39;
    }
  }

  if (v65 != 5)
  {
    goto LABEL_13;
  }

  v31 = vorrq_s8(*&v64[1], *&v64[3]);
  if (*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v64[0])
  {
    goto LABEL_13;
  }

  sub_1AF635250(v62);
  sub_1AFC282F8(v66, sub_1AF43A540);
LABEL_36:
  v33 = sub_1AFBFCA08(v62);
  v34 = *(v32 + 48);
  if (v34)
  {
    v35 = *(v32 + 64);
    *(v34 + 8 * v35) = v51;
    *(v32 + 64) = v35 + 1;
  }

  (v33)(v62, 0);
  sub_1AF635250(v67);
  v19 = v53;
LABEL_44:
  v48 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v48, v49);
  sub_1AFCBEE38(a8, sub_1AFC2646C);
  return ecs_stack_allocator_pop_snapshot(*(*v19 + 32));
}

uint64_t sub_1AFC23AAC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v9 = a3[13];
  v80 = a3[12];
  v81 = v9;
  v82 = a3[14];
  v10 = a3[9];
  v76 = a3[8];
  v77 = v10;
  v11 = a3[11];
  v78 = a3[10];
  v79 = v11;
  v12 = a3[5];
  v72 = a3[4];
  v73 = v12;
  v13 = a3[7];
  v74 = a3[6];
  v75 = v13;
  v14 = a3[1];
  v68 = *a3;
  v69 = v14;
  v15 = a3[3];
  v70 = a3[2];
  v71 = v15;
  sub_1AF649C6C(*(a1 + 40), &type metadata for MaterialRuntime, &v83);
  if (v83 == 1)
  {
    v86[9] = v80;
    v86[10] = v81;
    v86[11] = v82;
    v86[5] = v76;
    v86[6] = v77;
    v86[7] = v78;
    v86[8] = v79;
    v86[1] = v72;
    v86[2] = v73;
    v86[3] = v74;
    v86[4] = v75;
    v83 = v68;
    v84 = v69;
    v85 = v70;
    v86[0] = v71;
    return sub_1AFC4ABCC(v59, &v83);
  }

  v58 = a5;
  v17 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v17 + 32));
  v18 = *v17;
  sub_1AF649C6C(*(v8 + 40), &type metadata for MaterialRuntime, &v83);
  if (v83)
  {
    goto LABEL_39;
  }

  v54 = v5;
  v55 = v17;
  v56 = a4;
  v57 = v8;
  v66[0] = &type metadata for MaterialRuntime;
  v66[1] = &off_1F253FE70;
  v67 = 0;
  v19 = *(v18 + 104);
  v52 = v59;
  v53 = (v18 + 104);
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
LABEL_34:
    v8 = v57;
    v37 = *(v57 + 240) - *(v57 + 232);
    v38 = ecs_stack_allocator_allocate(*(v21 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v66, &v83);
    *&v86[0] = v38;
    *(&v86[0] + 1) = v37;
    *&v86[1] = 1;
    v39 = *(v21 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v66);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v83;
    v47 = v85;
    v46 = v86[0];
    v48 = v84;
    *(v45 + 96) = *&v86[1];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    v17 = v55;
    goto LABEL_39;
  }

  v22 = 0;
  v23 = v19 + 32;
  v59 = v21;
  while (1)
  {
    sub_1AFC28178(v23, v65, sub_1AF43A540);
    sub_1AF63515C(v65, &v83);
    sub_1AF63515C(v66, v86);
    if (BYTE8(v85) > 2u)
    {
      break;
    }

    if (!BYTE8(v85))
    {
      sub_1AF63515C(&v83, v64);
      if (BYTE8(v86[2]))
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v85) == 1)
    {
      sub_1AF63515C(&v83, v64);
      if (BYTE8(v86[2]) != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v27 = *&v64[0];
      v28 = *&v86[0];
      sub_1AF635250(&v83);
      sub_1AFC282F8(v65, sub_1AF43A540);
      v26 = v27 == v28;
LABEL_20:
      v21 = v59;
      if (v26)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(&v83, v64);
    if (BYTE8(v86[2]) != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v64);
LABEL_7:
      sub_1AFC0DD34(&v83, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v65, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v64, v61);
    sub_1AF616568(v86, v60);
    v29 = v62;
    v30 = v63;
    sub_1AF441150(v61, v62);
    v31 = v30;
    v21 = v59;
    LOBYTE(v29) = sub_1AF640C98(v60, v29, v31);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
    sub_1AF635250(&v83);
    sub_1AFC282F8(v65, sub_1AF43A540);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v22;
    v23 += 72;
    if (v20 == v22)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v85) == 3)
  {
    sub_1AF63515C(&v83, v64);
    if (BYTE8(v86[2]) != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v85) == 4)
  {
    sub_1AF63515C(&v83, v64);
    if (BYTE8(v86[2]) != 4)
    {
      goto LABEL_7;
    }

    v24 = LOBYTE(v64[0]);
    v25 = LOBYTE(v86[0]);
    sub_1AF635250(&v83);
    sub_1AFC282F8(v65, sub_1AF43A540);
    v26 = v24 == v25;
    goto LABEL_20;
  }

  if (BYTE8(v86[2]) != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*(v86 + 8), *(&v86[1] + 8));
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | *&v86[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(&v83);
  sub_1AFC282F8(v65, sub_1AF43A540);
LABEL_31:
  v34 = sub_1AFBFCA08(&v83);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(&v83, 0);
  sub_1AF635250(v66);
  v8 = v57;
  v17 = v55;
LABEL_39:
  v49 = sub_1AF62D29C(v8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51[2] = &v68;
  sub_1AFCC2A88(v58, sub_1AFC26844, v51);
  return ecs_stack_allocator_pop_snapshot(*(*v17 + 32));
}

uint64_t sub_1AFC240E8(uint64_t *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v64 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(a1[5], &type metadata for VFXParticleCollisionDataComponent, v57);
  if (LOBYTE(v57[0]) == 1)
  {
    return sub_1AFC4ACD0(a2, a3, a4);
  }

  v13 = a1;
  v14 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v14 + 32));
  v15 = *v14;
  v51 = v13;
  sub_1AF649C6C(v13[5], &type metadata for VFXParticleCollisionDataComponent, v57);
  if (v57[0])
  {
    goto LABEL_40;
  }

  v49 = v14;
  v50 = a6;
  v62[0] = &type metadata for VFXParticleCollisionDataComponent;
  v62[1] = &off_1F254AD98;
  v63 = 0;
  v16 = *(v15 + 104);
  v48 = a2;
  v17 = *(v16 + 16);
  v18 = v15;
  if (!v17)
  {
LABEL_34:
    v34 = v13[30] - v13[29];
    v35 = ecs_stack_allocator_allocate(*(v18 + 32), 8 * v34, 8);
    *v35 = v48;
    sub_1AF63515C(v62, v57);
    v59[0] = v35;
    v59[1] = v34;
    v59[2] = 1;
    v36 = *(v18 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 104) = v36;
    if (isUniquelyReferenced_nonNull_native)
    {
      v38 = (v15 + 104);
    }

    else
    {
      v36 = sub_1AF420EA0(0, v36[2] + 1, 1, v36);
      v38 = (v15 + 104);
      *(v15 + 104) = v36;
    }

    v40 = v36[2];
    v39 = v36[3];
    a6 = v50;
    if (v40 >= v39 >> 1)
    {
      *v38 = sub_1AF420EA0(v39 > 1, v40 + 1, 1, v36);
    }

    sub_1AF635250(v62);
    v41 = *v38;
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 72 * v40;
    *(v42 + 32) = v57[0];
    v43 = *v59;
    v44 = v58;
    v45 = v57[1];
    *(v42 + 96) = v59[2];
    *(v42 + 64) = v44;
    *(v42 + 80) = v43;
    *(v42 + 48) = v45;
    *v38 = v41;
    goto LABEL_39;
  }

  v19 = 0;
  v20 = v16 + 32;
  while (1)
  {
    sub_1AFC28178(v20, v61, sub_1AF43A540);
    sub_1AF63515C(v61, v57);
    sub_1AF63515C(v62, v59);
    if (BYTE8(v58) > 2u)
    {
      break;
    }

    if (!BYTE8(v58))
    {
      sub_1AF63515C(v57, v56);
      if (v60)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v58) == 1)
    {
      sub_1AF63515C(v57, v56);
      if (v60 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v24 = *&v56[0];
      v25 = v59[0];
      sub_1AF635250(v57);
      sub_1AFC282F8(v61, sub_1AF43A540);
      v23 = v24 == v25;
LABEL_20:
      v18 = v15;
      if (v23)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v57, v56);
    if (v60 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
LABEL_7:
      sub_1AFC0DD34(v57, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFC282F8(v61, sub_1AF43A540);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF616568(v56, v53);
    sub_1AF616568(v59, v52);
    v26 = v54;
    v27 = v55;
    sub_1AF441150(v53, v54);
    v28 = v27;
    v18 = v15;
    LOBYTE(v26) = sub_1AF640C98(v52, v26, v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
    sub_1AF635250(v57);
    sub_1AFC282F8(v61, sub_1AF43A540);
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v19;
    v20 += 72;
    if (v17 == v19)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v58) == 3)
  {
    sub_1AF63515C(v57, v56);
    if (v60 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v58) == 4)
  {
    sub_1AF63515C(v57, v56);
    if (v60 != 4)
    {
      goto LABEL_7;
    }

    v21 = LOBYTE(v56[0]);
    v22 = LOBYTE(v59[0]);
    sub_1AF635250(v57);
    sub_1AFC282F8(v61, sub_1AF43A540);
    v23 = v21 == v22;
    goto LABEL_20;
  }

  if (v60 != 5)
  {
    goto LABEL_7;
  }

  v29 = vorrq_s8(*&v59[1], *&v59[3]);
  if (*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) | v59[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v57);
  sub_1AFC282F8(v61, sub_1AF43A540);
LABEL_31:
  v31 = sub_1AFBFCA08(v57);
  v32 = *(v30 + 48);
  a6 = v50;
  if (v32)
  {
    v33 = *(v30 + 64);
    *(v32 + 8 * v33) = v48;
    *(v30 + 64) = v33 + 1;
  }

  (v31)(v57, 0);
  sub_1AF635250(v62);
LABEL_39:
  v14 = v49;
LABEL_40:
  v46 = sub_1AF62D29C(v51);
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_1AFCC2CAC(a6, sub_1AFC27460);
  return ecs_stack_allocator_pop_snapshot(*(*v14 + 32));
}

uint64_t sub_1AFC2475C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, uint64_t, uint64_t), uint64_t a10, void (*a11)(uint64_t, uint64_t))
{
  v68 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a7, v61);
  if (LOBYTE(v61[0]) == 1)
  {
    return a9(a2, a3, a4);
  }

  v19 = a11;
  v20 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v20 + 32));
  v21 = *v20;
  sub_1AF649C6C(*(a1 + 40), a7, v61);
  if (v61[0])
  {
    goto LABEL_38;
  }

  v54 = v20;
  v51 = v21;
  v52 = a2;
  v66[0] = a7;
  v66[1] = a8;
  v67 = 0;
  v22 = *(v21 + 104);
  v53 = (v21 + 104);
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_33:
    v37 = *(a1 + 240) - *(a1 + 232);
    v38 = ecs_stack_allocator_allocate(*(v51 + 32), 8 * v37, 8);
    *v38 = v52;
    sub_1AF63515C(v66, v61);
    v63[0] = v38;
    v63[1] = v37;
    v63[2] = 1;
    v39 = *(v51 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 104) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v53;
    }

    else
    {
      v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
      v41 = v53;
      *v53 = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    v19 = a11;
    v20 = v54;
    if (v43 >= v42 >> 1)
    {
      *v41 = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v39);
    }

    sub_1AF635250(v66);
    v44 = *v41;
    *(v44 + 16) = v43 + 1;
    v45 = v44 + 72 * v43;
    *(v45 + 32) = v61[0];
    v46 = *v63;
    v47 = v62;
    v48 = v61[1];
    *(v45 + 96) = v63[2];
    *(v45 + 64) = v47;
    *(v45 + 80) = v46;
    *(v45 + 48) = v48;
    *v41 = v44;
    goto LABEL_38;
  }

  v24 = 0;
  v25 = v22 + 32;
  while (1)
  {
    sub_1AFC28178(v25, v65, sub_1AF43A540);
    sub_1AF63515C(v65, v61);
    sub_1AF63515C(v66, v63);
    if (BYTE8(v62) <= 2u)
    {
      if (!BYTE8(v62))
      {
        sub_1AF63515C(v61, v60);
        if (v64)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (BYTE8(v62) == 1)
      {
        sub_1AF63515C(v61, v60);
        if (v64 != 1)
        {
          goto LABEL_7;
        }

LABEL_20:
        v28 = *&v60[0];
        v29 = v63[0];
        sub_1AF635250(v61);
        sub_1AFC282F8(v65, sub_1AF43A540);
        if (v28 == v29)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      sub_1AF63515C(v61, v60);
      if (v64 != 2)
      {
LABEL_6:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v60);
LABEL_7:
        sub_1AFC0DD34(v61, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        sub_1AFC282F8(v65, sub_1AF43A540);
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (BYTE8(v62) == 3)
    {
      sub_1AF63515C(v61, v60);
      if (v64 != 3)
      {
        goto LABEL_6;
      }

LABEL_25:
      sub_1AF616568(v60, v57);
      sub_1AF616568(v63, v56);
      v30 = v58;
      v31 = v59;
      sub_1AF441150(v57, v58);
      LOBYTE(v30) = sub_1AF640C98(v56, v30, v31);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v57);
      sub_1AF635250(v61);
      sub_1AFC282F8(v65, sub_1AF43A540);
      if (v30)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (BYTE8(v62) != 4)
    {
      break;
    }

    sub_1AF63515C(v61, v60);
    if (v64 != 4)
    {
      goto LABEL_7;
    }

    v26 = LOBYTE(v60[0]);
    v27 = LOBYTE(v63[0]);
    sub_1AF635250(v61);
    sub_1AFC282F8(v65, sub_1AF43A540);
    if (v26 == v27)
    {
      goto LABEL_30;
    }

LABEL_8:
    ++v24;
    v25 += 72;
    if (v23 == v24)
    {
      goto LABEL_33;
    }
  }

  if (v64 != 5)
  {
    goto LABEL_7;
  }

  v32 = vorrq_s8(*&v63[1], *&v63[3]);
  if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v63[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v61);
  sub_1AFC282F8(v65, sub_1AF43A540);
LABEL_30:
  v34 = sub_1AFBFCA08(v61);
  v35 = *(v33 + 48);
  if (v35)
  {
    v36 = *(v33 + 64);
    *(v35 + 8 * v36) = v52;
    *(v33 + 64) = v36 + 1;
  }

  (v34)(v61, 0);
  sub_1AF635250(v66);
  v19 = a11;
  v20 = v54;
LABEL_38:
  v49 = sub_1AF62D29C(a1);
  MEMORY[0x1EEE9AC00](v49, v50);
  v19(a6, a10);
  return ecs_stack_allocator_pop_snapshot(*(*v20 + 32));
}

uint64_t sub_1AFC24D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a3)
    {
      swift_getObjectType();
      result = sub_1AF92975C();
      if (v9)
      {
        v10 = result;
        sub_1AF871824(a4, a2, v16);

        v11 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (result)
        {
          v12 = result;
          v13 = sub_1AF6824B0(v11, result, v10);
          if (v13 && (v14 = sub_1AF67A4CC(v16, v13, a1, v11), (v14 & 1) == 0))
          {
            MEMORY[0x1EEE9AC00](v14, v15);
            sub_1AF682600(v11, v12, v10, sub_1AF702438);
          }

          else
          {
          }

          return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

const void **sub_1AFC24ED0(void *a1, CFIndex *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = Count;
    v6 = malloc(8 * Count);
    v8.location = 0;
    v8.length = v5;
    CFArrayGetValues(v3, v8, v6);
    *a2 = v5;
  }

  return v6;
}

void sub_1AFC24F54()
{
  if (!qword_1EB643610)
  {
    sub_1AF0D8108(255, &qword_1EB643618);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643610);
    }
  }
}

void sub_1AFC24FC4()
{
  if (!qword_1EB633A40)
  {
    sub_1AFC2652C(255, &qword_1EB633A30, sub_1AF6AF6D4);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633A40);
    }
  }
}

void sub_1AFC25040()
{
  if (!qword_1EB633088)
  {
    sub_1AF0D8108(255, &qword_1EB633308);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633088);
    }
  }
}

void sub_1AFC250B0()
{
  if (!qword_1EB633078)
  {
    sub_1AF0D8108(255, &qword_1EB6332F8);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633078);
    }
  }
}

void sub_1AFC25120()
{
  if (!qword_1EB643620)
  {
    sub_1AF0D8108(255, &qword_1EB643628);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643620);
    }
  }
}

void sub_1AFC25190()
{
  if (!qword_1EB630960)
  {
    sub_1AF0D8108(255, &qword_1EB630DE0);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630960);
    }
  }
}

void sub_1AFC25200()
{
  if (!qword_1EB633090)
  {
    sub_1AF0D8108(255, &qword_1EB633310);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633090);
    }
  }
}

void sub_1AFC25270()
{
  if (!qword_1EB643630)
  {
    sub_1AF0D8108(255, &qword_1EB643638);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643630);
    }
  }
}

void sub_1AFC252E0()
{
  if (!qword_1EB643640)
  {
    sub_1AF0D8108(255, &qword_1EB643648);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643640);
    }
  }
}

void sub_1AFC25350()
{
  if (!qword_1EB633A50)
  {
    sub_1AF0D8108(255, &qword_1EB633C88);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633A50);
    }
  }
}

void sub_1AFC253C0()
{
  if (!qword_1EB643650)
  {
    sub_1AF0D8108(255, &qword_1EB643658);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643650);
    }
  }
}

void sub_1AFC25430()
{
  if (!qword_1EB632818)
  {
    sub_1AF0D8108(255, &qword_1EB632AD0);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632818);
    }
  }
}

void sub_1AFC254A0()
{
  if (!qword_1EB633080)
  {
    sub_1AF0D8108(255, &qword_1EB633300);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633080);
    }
  }
}