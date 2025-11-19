uint64_t sub_1AFD15A3C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[11];
  v7 = a1[12];
  v9 = a1[13];
  v10 = a1[1];
  v11 = a1[2];

  v85 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v8, v7, v9, v11);
  sub_1AF64B110(&type metadata for TextureRequireCPURepresentation, &off_1F2544440, v8, v7, v9, v11);
  sub_1AF649C6C(*(v10 + 40), &type metadata for TextureCPURuntime, &v96);
  v98 = v10;
  if (v96 == 1)
  {
    a2[9] = &type metadata for TextureCPURuntime;
    a2[10] = &off_1F2543E80;
    v12 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v8, v7, v9, v11);
    v13 = v12;
    if (v8)
    {
      v14 = v98;
      v15 = v85;
      if (v9)
      {
        while (1)
        {
          v17 = *v8++;
          v16 = v17;
          v19 = *v15;
          v15 += 2;
          v18 = v19;
          if (v19)
          {
            v20 = v8;
            v21 = *(v14 + 16);

            if (*(v14 + 184))
            {
              goto LABEL_41;
            }

            v22 = *(*(v14 + 168) + 4 * v16);
            v23 = *(*(v21 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22 + 8);
            swift_unknownObjectRetain();

            v87 = *(a5 + 16);
            v24 = swift_allocObject();
            swift_weakInit();
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v22;
            *(v25 + 28) = v23;

            sub_1AF8DBA78(a4, v87, v18, v13, sub_1AFD553F8, v25);
            swift_unknownObjectRelease();
            v14 = v98;

            v8 = v20;
          }

          v13 += 8;
          if (!--v9)
          {
          }
        }
      }
    }

    else
    {
      v38 = a1[6];
      v88 = a1[7];
      v39 = v98;
      if (v38 != v88)
      {
        v59 = (v12 + (v38 << 6));
        v60 = (v85 + 16 * v38);
        while (1)
        {
          v62 = *v60;
          v60 += 2;
          v61 = v62;
          if (v62)
          {
            v63 = *(v39 + 16);

            if (*(v39 + 184))
            {
              goto LABEL_41;
            }

            v64 = *(*(v39 + 168) + 4 * v38);
            v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);
            swift_unknownObjectRetain();

            v66 = *(a5 + 16);
            v67 = swift_allocObject();
            swift_weakInit();
            v68 = swift_allocObject();
            *(v68 + 16) = v67;
            *(v68 + 24) = v64;
            *(v68 + 28) = v65;

            v69 = v66;
            v39 = v98;
            sub_1AF8DBA78(a4, v69, v61, v59, sub_1AFD553F8, v68);
            swift_unknownObjectRelease();
          }

          ++v38;
          v59 += 8;
          if (v88 == v38)
          {
          }
        }
      }
    }
  }

  v84 = v7;
  v26 = v9;
  if (!v8)
  {
    v26 = a1[7] - a1[6];
  }

  CFXTextureDescriptorMakeDefault(&v94);
  *&v93[7] = v94;
  *&v93[23] = v95;
  *v97 = 0;
  v96 = 0uLL;
  v97[8] = 0;
  *&v97[9] = *v93;
  *&v97[24] = *&v93[15];
  *&v97[40] = MEMORY[0x1E69E7CC0];
  v27 = a2;
  v80 = v26 << 6;
  v28 = ecs_stack_allocator_allocate(a2[4], v26 << 6, 8);
  v29 = v28;
  if (v26)
  {
    v30 = v96;
    v31 = *v97;
    v32 = *&v97[32];
    v28[2] = *&v97[16];
    v28[3] = v32;
    *v28 = v30;
    v28[1] = v31;
    v33 = v26 - 1;
    if (v26 != 1)
    {
      v34 = v28 + 4;
      do
      {
        sub_1AF44222C(&v96, v93);
        v35 = v96;
        v36 = *v97;
        v37 = *&v97[32];
        v34[2] = *&v97[16];
        v34[3] = v37;
        *v34 = v35;
        v34[1] = v36;
        v34 += 4;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    sub_1AF478A6C(&v96);
  }

  v82 = v27;
  v83 = v29;
  v81 = v26;
  if (v8)
  {
    v79 = v8;
    v40 = v84;
    v41 = v85;
    if (v9)
    {
      v42 = v9;
      v43 = v79;
      do
      {
        v45 = *v43++;
        v44 = v45;
        v47 = *v41;
        v41 += 2;
        v46 = v47;
        if (v47)
        {
          v89 = v43;
          v48 = v98;
          v49 = *(v98 + 16);

          if (*(v48 + 184))
          {
            goto LABEL_41;
          }

          v50 = *(*(v48 + 168) + 4 * v44);
          v51 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50 + 8);
          swift_unknownObjectRetain();

          v86 = *(a5 + 16);
          v52 = swift_allocObject();
          swift_weakInit();
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          *(v53 + 24) = v50;
          *(v53 + 28) = v51;

          sub_1AF8DBA78(a4, v86, v46, v29, sub_1AFD553F8, v53);
          swift_unknownObjectRelease();

          v40 = v84;
          v43 = v89;
        }

        v29 += 8;
        --v42;
      }

      while (v42);
    }

    v54 = v82;
    v55 = v83;
    sub_1AF5B8C54(v79, v40, v9, v83, v81, v82);
    goto LABEL_29;
  }

  v56 = a1[6];
  v90 = a1[7];
  v57 = v98;
  if (v56 == v90)
  {
LABEL_28:
    v54 = v82;
    v55 = v83;
    sub_1AF5B9140(*(v57 + 232), *(v57 + 240), v83, v81, v82);
LABEL_29:
    ecs_stack_allocator_deallocate(*(v54 + 32), v55, v80);
  }

  v70 = (v85 + 16 * v56);
  while (1)
  {
    v72 = *v70;
    v70 += 2;
    v71 = v72;
    if (v72)
    {
      break;
    }

LABEL_37:
    ++v56;
    v29 += 8;
    if (v90 == v56)
    {
      goto LABEL_28;
    }
  }

  v73 = *(v57 + 16);

  if ((*(v57 + 184) & 1) == 0)
  {
    v74 = *(*(v57 + 168) + 4 * v56);
    v75 = *(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v74 + 8);
    swift_unknownObjectRetain();

    v76 = *(a5 + 16);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v74;
    *(v78 + 28) = v75;
    v57 = v98;

    sub_1AF8DBA78(a4, v76, v71, v29, sub_1AFD533E8, v78);
    swift_unknownObjectRelease();

    goto LABEL_37;
  }

LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFD1616C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = *result;
  v37 = *(result + 16);
  v38 = *(result + 32);
  v31 = *(result + 80);
  if (v31 >= 1)
  {
    v9 = *(result + 40);
    v11 = *(result + 56);
    v10 = *(result + 64);
    v12 = *(result + 72);
    v13 = *(v12 + 32);

    ecs_stack_allocator_push_snapshot(v13);
    v14 = *(v12 + 32);
    if (v11)
    {
      v28 = *(v12 + 32);
      v26 = v10;
      v15 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v16 = (v9 + 24);
      v29 = a3;
      v27 = v15;
      v30 = a2;
      while (1)
      {
        v17 = *(v16 - 6);
        v18 = *(v16 - 5);
        v19 = *(v16 - 4);
        v34 = *v16;
        v35 = *(v16 - 1);
        v32 = v11;
        v33 = v16[1];
        v20 = v16[2];
        v50 = v5;
        if (v15)
        {
          v21 = *(v20 + 376);

          os_unfair_lock_lock(v21);
          os_unfair_lock_lock(*(v20 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v28);
        v22 = *(v12 + 64);
        v43[0] = *(v12 + 48);
        v43[1] = v22;
        v44 = *(v12 + 80);
        v23 = *(v12 + 32);
        v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;

        *(v12 + 48) = ecs_stack_allocator_allocate(v23, 48 * v24, 8);
        *(v12 + 56) = v24;
        *(v12 + 72) = 0;
        *(v12 + 80) = 0;
        *(v12 + 64) = 0;

        v45[0] = v26;
        v45[1] = v20;
        v45[2] = v12;
        v45[3] = v19;
        v45[4] = (v18 - v17 + v19);
        v45[5] = v31;
        v45[6] = v17;
        v45[7] = v18;
        v45[8] = 0;
        v45[9] = 0;
        v46 = 1;
        v47 = v35;
        v48 = v34;
        v49 = v33;

        v25 = v50;
        sub_1AFD15A3C(v45, v12, v30, v29, a4);
        v5 = v25;
        if (v25)
        {
          break;
        }

        v41[0] = v36;
        v41[1] = v37;
        v42 = v38;
        sub_1AF630994(v12, v41, v43);
        sub_1AF62D29C(v20);
        ecs_stack_allocator_pop_snapshot(v28);
        v15 = v27;
        if (v27)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        v16 += 6;
        v11 = v32 - 1;
        if (v32 == 1)
        {
          goto LABEL_14;
        }
      }

      v39[0] = v36;
      v39[1] = v37;
      v40 = v38;
      sub_1AF630994(v12, v39, v43);
      sub_1AF62D29C(v20);
      ecs_stack_allocator_pop_snapshot(v28);
      if (v27)
      {
        os_unfair_lock_unlock(*(v20 + 344));
        os_unfair_lock_unlock(*(v20 + 376));
      }

LABEL_14:
      v14 = *(v12 + 32);
    }

    ecs_stack_allocator_pop_snapshot(v14);
  }

  return result;
}

uint64_t sub_1AFD1649C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[11];
  v7 = a1[12];
  v9 = a1[13];
  v10 = a1[1];
  v11 = a1[2];

  v12 = sub_1AF64B110(&type metadata for MeshReferenceAsset, &off_1F252BE58, v8, v7, v9, v11);
  v13 = v57;
  sub_1AF649C6C(v10[5], &type metadata for MeshModel, &v60);
  if (v60 == 1)
  {
    a2[9] = &type metadata for MeshModel;
    a2[10] = &off_1F2562500;
    v14 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v8, v7, v9, v11);
    v15 = v14;
    if (v8)
    {
      for (; v9; --v9)
      {
        sub_1AF5DD5E0(v10, v12, v15, a3, a4);
        if (v57)
        {
          break;
        }

        v15 += 2;
        v12 += 4;
      }
    }

    else
    {
      v32 = a1[6];
      v33 = &v12[4 * v32];
      v34 = (v14 + 16 * v32);
      v35 = a1[7] - v32 + 1;
      do
      {
        if (!--v35)
        {
          break;
        }

        v36 = v33 + 4;
        v37 = v34 + 2;
        sub_1AF5DD5E0(v10, v33, v34, a3, a4);
        v34 = v37;
        v33 = v36;
      }

      while (!v57);
    }
  }

  v16 = v7;
  v17 = v9;
  v56 = v8;
  if (!v8)
  {
    v17 = a1[7] - a1[6];
  }

  v58 = v17;
  v55 = 16 * v17;
  v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
  v19 = v7;
  if (v58)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (v58 > 0x17 && ((v21 = 2 * (v58 - 1), v22 = &v18[v21], v23 = &v18[v21 + 1], v22 >= v18) ? (v24 = v23 >= (v18 + 1)) : (v24 = 0), v24 ? (v25 = (v58 - 1) >> 60 == 0) : (v25 = 0), v25))
    {
      v26 = v58 & 0x1FFFFFFFFFFFFFFCLL;
      v51 = v18 + 4;
      *&v52 = 0;
      *(&v52 + 1) = MEMORY[0x1E69E7CC0];
      v53 = v58 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v51 - 2) = v52;
        *(v51 - 1) = v52;
        *v51 = v52;
        v51[1] = v52;
        v51 += 4;
        v53 -= 4;
      }

      while (v53);
      if (v58 == v26)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v58 - v26;
    v28 = &v18[2 * v26 + 1];
    do
    {
      *(v28 - 1) = 0;
      *v28 = v20;
      v28 += 2;
      --v27;
    }

    while (v27);
  }

LABEL_21:
  v54 = v18;
  if (v8)
  {
    v29 = v9 + 1;
    v30 = v18;
    while (--v29)
    {
      v31 = v30 + 2;
      sub_1AF5DD5E0(v10, v12, v30, a3, a4);
      v19 = v16;
      v30 = v31;
      v12 += 4;
      if (v13)
      {
        goto LABEL_33;
      }
    }

    v47 = v9;
    v48 = v54;
    v49 = a2;
    sub_1AF5B6D6C(v56, v19, v47, v54, v58, a2);
  }

  else
  {
    v38 = a1[6];
    v39 = &v12[4 * v38];
    v40 = a1[7] - v38 + 1;
    v41 = v18;
    while (--v40)
    {
      v42 = v41 + 2;
      v43 = v39 + 4;
      sub_1AF5DD5E0(v10, v39, v41, a3, a4);
      v39 = v43;
      v41 = v42;
      if (v13)
      {
LABEL_33:
        v44 = v55;
        v45 = a2[4];
        v46 = v54;
        goto LABEL_38;
      }
    }

    v48 = v54;
    v49 = a2;
    sub_1AF5B7298(v10[29], v10[30]);
  }

  v45 = v49[4];
  v46 = v48;
  v44 = v55;
LABEL_38:
  ecs_stack_allocator_deallocate(v45, v46, v44);
}

uint64_t sub_1AFD16824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v134[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);

  v8 = sub_1AF705A70(v7, a1);
  sub_1AF649C6C(*(v6 + 40), &type metadata for SDFRuntimeData, v134);
  v9 = v3;
  v128 = v6;
  if (LOBYTE(v134[0]) == 1)
  {
    a2[9] = &type metadata for SDFRuntimeData;
    a2[10] = &off_1F252FF58;
    v10 = *(a1 + 88);
    v11 = *(a1 + 104);
    v12 = sub_1AF64B110(&type metadata for SDFRuntimeData, &off_1F252FF58, v10, *(a1 + 96), v11, *(a1 + 16));
    if (v10)
    {
      v13 = a3;
      if (v11)
      {
        v14 = *(*(type metadata accessor for SDFFileAsset() - 8) + 72);
        v129 = v14;
        do
        {
          v15 = v9;
          v16 = sub_1AFDFC148();
          if (v9)
          {
            goto LABEL_136;
          }

          v18 = v16;
          v19 = v17;
          v20 = v17 >> 62;
          if ((v17 >> 62) > 1)
          {
            if (v20 == 2)
            {
              v22 = *(v16 + 16);
              v23 = *(v16 + 24);

              v24 = sub_1AFDFBDB8();
              if (v24)
              {
                v24 = v24 + v22 - sub_1AFDFBDE8();
              }

              v25 = v23 - v22;
              v26 = sub_1AFDFBDD8();
              if (v26 >= v25)
              {
                v27 = v25;
              }

              else
              {
                v27 = v26;
              }

              v28 = v27 + v24;
              if (v24)
              {
                v29 = v28;
              }

              else
              {
                v29 = 0;
              }

              v30 = v24;
              v31 = v12;
              v13 = a3;
              v32 = a3;
              goto LABEL_29;
            }

            memset(v134, 0, 14);

            v21 = v134;
          }

          else
          {
            if (v20)
            {

              v33 = sub_1AFDFBDB8();
              if (v33)
              {
                v33 = v33 + v18 - sub_1AFDFBDE8();
              }

              v34 = sub_1AFDFBDD8();
              if (v34 >= (v18 >> 32) - v18)
              {
                v35 = (v18 >> 32) - v18;
              }

              else
              {
                v35 = v34;
              }

              v36 = v35 + v33;
              if (v33)
              {
                v29 = v36;
              }

              else
              {
                v29 = 0;
              }

              v30 = v33;
              v31 = v12;
              v13 = a3;
              v32 = a3;
LABEL_29:
              sub_1AF5F4F18(v30, v29, v31, v32);
              v9 = 0;

              sub_1AF439ED8(v18, v19);
              v14 = v129;
              goto LABEL_5;
            }

            v134[0] = v16;
            LOWORD(v134[1]) = v17;
            BYTE2(v134[1]) = BYTE2(v17);
            BYTE3(v134[1]) = BYTE3(v17);
            BYTE4(v134[1]) = BYTE4(v17);
            BYTE5(v134[1]) = BYTE5(v17);

            v21 = v134 + BYTE6(v19);
          }

          sub_1AF5F4F18(v134, v21, v12, v13);
          v9 = 0;

          sub_1AF439ED8(v18, v19);
LABEL_5:
          v12 += 5;
          v8 += v14;
          --v11;
        }

        while (v11);
      }
    }

    v68 = *(a1 + 48);
    v67 = *(a1 + 56);
    v69 = v67 - v68;
    v70 = a3;
    if (v67 == v68)
    {
    }

    v71 = *(*(type metadata accessor for SDFFileAsset() - 8) + 72);
    v72 = &v12[5 * v68];
    v73 = v8 + v68 * v71;
    v131 = v71;
    while (1)
    {
      v15 = v9;
      v74 = sub_1AFDFC148();
      if (v9)
      {
        goto LABEL_136;
      }

      v76 = v74;
      v77 = v75;
      v78 = v75 >> 62;
      if ((v75 >> 62) > 1)
      {
        if (v78 == 2)
        {
          v80 = *(v74 + 16);
          v81 = *(v74 + 24);

          v82 = sub_1AFDFBDB8();
          if (v82)
          {
            v82 = v82 + v80 - sub_1AFDFBDE8();
          }

          v83 = v81 - v80;
          v84 = sub_1AFDFBDD8();
          if (v84 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v84;
          }

          v86 = v85 + v82;
          if (v82)
          {
            v87 = v86;
          }

          else
          {
            v87 = 0;
          }

          v88 = v82;
          v89 = v72;
          v70 = a3;
          v90 = a3;
          goto LABEL_97;
        }

        memset(v134, 0, 14);

        v79 = v134;
      }

      else
      {
        if (v78)
        {

          v91 = sub_1AFDFBDB8();
          if (v91)
          {
            v91 = v91 + v76 - sub_1AFDFBDE8();
          }

          v92 = sub_1AFDFBDD8();
          if (v92 >= (v76 >> 32) - v76)
          {
            v93 = (v76 >> 32) - v76;
          }

          else
          {
            v93 = v92;
          }

          v94 = v93 + v91;
          if (v91)
          {
            v87 = v94;
          }

          else
          {
            v87 = 0;
          }

          v88 = v91;
          v89 = v72;
          v70 = a3;
          v90 = a3;
LABEL_97:
          sub_1AF5F4F18(v88, v87, v89, v90);
          v9 = 0;

          sub_1AF439ED8(v76, v77);
          v71 = v131;
          goto LABEL_73;
        }

        v134[0] = v74;
        LOWORD(v134[1]) = v75;
        BYTE2(v134[1]) = BYTE2(v75);
        BYTE3(v134[1]) = BYTE3(v75);
        BYTE4(v134[1]) = BYTE4(v75);
        BYTE5(v134[1]) = BYTE5(v75);

        v79 = v134 + BYTE6(v77);
      }

      sub_1AF5F4F18(v134, v79, v72, v70);
      v9 = 0;

      sub_1AF439ED8(v76, v77);
LABEL_73:
      v72 += 5;
      v73 += v71;
      if (!--v69)
      {
      }
    }
  }

  v37 = *(a1 + 104);
  v125 = v37;
  v127 = *(a1 + 88);
  if (!v127)
  {
    v37 = *(a1 + 56) - *(a1 + 48);
  }

  v122 = *(a1 + 96);
  v124 = a2;
  v38 = ecs_stack_allocator_allocate(a2[4], 40 * v37, 8);
  v39 = v38;
  v40 = a3;
  if (v37)
  {
    bzero(v38, 40 * v37);
  }

  v126 = v39;
  v123 = 40 * v37;
  if (v127)
  {
    v41 = v125;
    if (v125)
    {
      v42 = *(*(type metadata accessor for SDFFileAsset() - 8) + 72);
      v43 = v126;
      v130 = v42;
      do
      {
        v15 = v9;
        v44 = sub_1AFDFC148();
        if (v9)
        {
          goto LABEL_136;
        }

        v46 = v44;
        v47 = v45;
        v48 = v45 >> 62;
        if ((v45 >> 62) > 1)
        {
          if (v48 == 2)
          {
            v50 = *(v44 + 16);
            v51 = *(v44 + 24);

            v52 = sub_1AFDFBDB8();
            if (v52)
            {
              v52 = v52 + v50 - sub_1AFDFBDE8();
            }

            v53 = v51 - v50;
            v54 = sub_1AFDFBDD8();
            if (v54 >= v53)
            {
              v55 = v53;
            }

            else
            {
              v55 = v54;
            }

            v56 = v55 + v52;
            if (v52)
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v58 = v52;
            v59 = v43;
            v40 = a3;
            v60 = a3;
            goto LABEL_65;
          }

          memset(v134, 0, 14);

          v49 = v134;
        }

        else
        {
          if (v48)
          {

            v61 = sub_1AFDFBDB8();
            if (v61)
            {
              v61 = v61 + v46 - sub_1AFDFBDE8();
            }

            v62 = sub_1AFDFBDD8();
            if (v62 >= (v46 >> 32) - v46)
            {
              v63 = (v46 >> 32) - v46;
            }

            else
            {
              v63 = v62;
            }

            v64 = v63 + v61;
            if (v61)
            {
              v57 = v64;
            }

            else
            {
              v57 = 0;
            }

            v58 = v61;
            v59 = v43;
            v40 = a3;
            v60 = a3;
LABEL_65:
            sub_1AF5F4F18(v58, v57, v59, v60);
            v9 = 0;

            sub_1AF439ED8(v46, v47);
            v42 = v130;
            goto LABEL_41;
          }

          v134[0] = v44;
          LOWORD(v134[1]) = v45;
          BYTE2(v134[1]) = BYTE2(v45);
          BYTE3(v134[1]) = BYTE3(v45);
          BYTE4(v134[1]) = BYTE4(v45);
          BYTE5(v134[1]) = BYTE5(v45);

          v49 = v134 + BYTE6(v47);
        }

        sub_1AF5F4F18(v134, v49, v43, v40);
        v9 = 0;

        sub_1AF439ED8(v46, v47);
LABEL_41:
        v43 += 5;
        v8 += v42;
        --v41;
      }

      while (v41);
    }

    v65 = v126;
    v66 = v124;
    sub_1AF5B77A4(v127, v122, v125);
LABEL_104:
    ecs_stack_allocator_deallocate(v66[4], v65, v123);
  }

  v96 = *(a1 + 48);
  v95 = *(a1 + 56);
  v97 = v95 - v96;
  if (v95 == v96)
  {
LABEL_103:
    v65 = v126;
    v66 = v124;
    sub_1AF5B7C38(*(v128 + 232), *(v128 + 240));
    goto LABEL_104;
  }

  v99 = *(*(type metadata accessor for SDFFileAsset() - 8) + 72);
  v100 = v8 + v96 * v99;
  v132 = v99;
  while (1)
  {
    v15 = v9;
    v101 = sub_1AFDFC148();
    if (v9)
    {
      break;
    }

    v103 = v101;
    v104 = v102;
    v105 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      if (v105 == 2)
      {
        v107 = *(v101 + 16);
        v108 = *(v101 + 24);

        v109 = sub_1AFDFBDB8();
        if (v109)
        {
          v109 = v109 + v107 - sub_1AFDFBDE8();
        }

        v110 = v108 - v107;
        v111 = sub_1AFDFBDD8();
        if (v111 >= v110)
        {
          v112 = v110;
        }

        else
        {
          v112 = v111;
        }

        v113 = v112 + v109;
        if (v109)
        {
          v114 = v113;
        }

        else
        {
          v114 = 0;
        }

        v115 = v109;
        v116 = v39;
        v40 = a3;
        v117 = a3;
        goto LABEL_131;
      }

      memset(v134, 0, 14);

      v106 = v134;
    }

    else
    {
      if (v105)
      {

        v118 = sub_1AFDFBDB8();
        if (v118)
        {
          v118 = v118 + v103 - sub_1AFDFBDE8();
        }

        v119 = sub_1AFDFBDD8();
        if (v119 >= (v103 >> 32) - v103)
        {
          v120 = (v103 >> 32) - v103;
        }

        else
        {
          v120 = v119;
        }

        v121 = v120 + v118;
        if (v118)
        {
          v114 = v121;
        }

        else
        {
          v114 = 0;
        }

        v115 = v118;
        v116 = v39;
        v40 = a3;
        v117 = a3;
LABEL_131:
        sub_1AF5F4F18(v115, v114, v116, v117);
        v9 = 0;

        sub_1AF439ED8(v103, v104);
        v99 = v132;
        goto LABEL_107;
      }

      v134[0] = v101;
      LOWORD(v134[1]) = v102;
      BYTE2(v134[1]) = BYTE2(v102);
      BYTE3(v134[1]) = BYTE3(v102);
      BYTE4(v134[1]) = BYTE4(v102);
      BYTE5(v134[1]) = BYTE5(v102);

      v106 = v134 + BYTE6(v104);
    }

    sub_1AF5F4F18(v134, v106, v39, v40);
    v9 = 0;

    sub_1AF439ED8(v103, v104);
LABEL_107:
    v100 += v99;
    v39 += 5;
    if (!--v97)
    {
      goto LABEL_103;
    }
  }

LABEL_136:

  sub_1AFDFE518();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1AFD17480(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v7 = a1[11];
  v6 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];

  v11 = sub_1AF64B110(&type metadata for SDFTextureGenerator, &off_1F252FC58, v7, v6, v8, v10);
  sub_1AF649C6C(v9[5], &type metadata for TextureGPURuntime, &v49);
  v44 = v46;
  if (v49 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v12 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v7, v6, v8, v10);
    v13 = v12;
    if (v7)
    {
      if (v8)
      {
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v7++;
          v50[0] = v15;
          v50[1] = v9;
          v50[2] = v10;
          v50[3] = v14;
          v50[4] = v16;
          sub_1AF5F7A58(v50, v11, v13, v54, a4);
          if (v46)
          {
            break;
          }

          v13 += 2;
          v11 += 6;
          ++v14;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v24 = a1[3];
      v25 = a1[6];
      v26 = a1[7];
      v27 = &v11[6 * v25];
      v28 = (v12 + 16 * v25);
      do
      {
        if (v26 == v25)
        {
          break;
        }

        v29 = v25 + 1;
        v51[0] = *a1;
        v51[1] = v9;
        v51[2] = v10;
        v51[3] = v24;
        v51[4] = v25;
        sub_1AF5F7A58(v51, v27, v28, v54, a4);
        ++v24;
        v27 += 6;
        v28 += 2;
        v25 = v29;
      }

      while (!v46);
    }
  }

  else
  {
    v47 = v6;
    v17 = v8;
    if (!v7)
    {
      v17 = a1[7] - a1[6];
    }

    v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
    v43 = v18;
    v41 = v17;
    if (v17)
    {
      bzero(v18, 16 * v17);
      v18 = v43;
    }

    v42 = 16 * v17;
    if (v7)
    {
      v19 = 0;
      v20 = v18;
      while (v8 != v19)
      {
        v21 = v7[v19];
        v22 = v19 + 1;
        v23 = v19 + a1[3];
        v52[0] = *a1;
        v52[1] = v9;
        v52[2] = v10;
        v52[3] = v23;
        v52[4] = v21;
        sub_1AF5F7A58(v52, v11, v20, v54, a4);
        v11 += 6;
        v20 += 2;
        v19 = v22;
        if (v44)
        {
          goto LABEL_24;
        }
      }

      v38 = a2;
      v39 = v43;
      sub_1AF5B80C0(v7, v47, v8, v43, v41, a2);
    }

    else
    {
      v48 = a4;
      v30 = 0;
      v31 = a1[6];
      v32 = &v11[6 * v31];
      v33 = v31 - a1[7];
      v34 = v18;
      while (v33 + v30)
      {
        v35 = v31 + v30;
        v36 = v30 + 1;
        v37 = v30 + a1[3];
        v53[0] = *a1;
        v53[1] = v9;
        v53[2] = v10;
        v53[3] = v37;
        v53[4] = v35;
        sub_1AF5F7A58(v53, v32, v34, v54, v48);
        v34 += 2;
        v32 += 6;
        v30 = v36;
        if (v44)
        {
LABEL_24:
          ecs_stack_allocator_deallocate(a2[4], v43, v42);
        }
      }

      v39 = v43;
      v38 = a2;
      sub_1AF5B85AC(v9[29], v9[30], v43, v17, a2);
    }

    ecs_stack_allocator_deallocate(v38[4], v39, v42);
  }
}

uint64_t sub_1AFD1780C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v7 = type metadata accessor for MovieRuntime(0);
  v59 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[11];
  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[1];
  v15 = a1[2];

  v58 = v12;
  v16 = sub_1AF64B110(&type metadata for MovieFileAsset, &off_1F256EC68, v11, v12, v13, v15);
  v17 = v61;
  sub_1AF649C6C(v14[5], v7, &v62);
  if (v62 == 1)
  {
    v18 = v60;
    *(v60 + 72) = v7;
    *(v18 + 80) = &off_1F256ED48;
    v19 = sub_1AF705BDC(v14, a1);
    if (v11)
    {
      if (v13)
      {
        v20 = v59[9];
        do
        {
          v21 = *v11++;
          sub_1AFD00848(v14, v21, v16, v19, a3, a4);
          if (v17)
          {
            break;
          }

          v19 += v20;
          v16 += 7;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v39 = a4;
      v40 = a1[6];
      v41 = a1[7];
      v42 = &v16[7 * v40];
      v43 = v59;
      do
      {
        if (v41 == v40)
        {
          break;
        }

        v44 = v40 + 1;
        sub_1AFD00848(v14, v40, v42, v19 + v43[9] * v40, a3, v39);
        v42 += 7;
        v40 = v44;
      }

      while (!v17);
    }
  }

  else
  {
    v61 = a4;
    v56 = v17;
    v22 = v13;
    if (!v11)
    {
      v22 = a1[7] - a1[6];
    }

    v54 = a1;
    v23 = sub_1AFDFC128();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    v10[v7[5]] = 0;
    *&v10[v7[6]] = 0;
    *&v10[v7[7]] = 0;
    v24 = &v10[v7[8]];
    *v24 = 0;
    v24[8] = 1;
    v10[v7[9]] = 0;
    *&v10[v7[10]] = 0;
    *&v10[v7[11]] = 0;
    v25 = v7[12];
    type metadata accessor for IOSurfaceWrapper();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *&v10[v25] = v26;
    *&v10[v7[13]] = 0;
    v27 = *(v60 + 32);
    v28 = v59[9];
    v29 = *(v59 + 80) + 1;
    v55 = v28 * v22;
    v59 = ecs_stack_allocator_allocate(v27, v28 * v22, v29);
    v57 = v22;
    if (v22)
    {
      v30 = v59;
      v31 = v57;
      do
      {
        sub_1AFD531F8(v10, v30, type metadata accessor for MovieRuntime);
        v30 = (v30 + v28);
        --v31;
      }

      while (v31);
    }

    sub_1AFD53198(v10, type metadata accessor for MovieRuntime);
    v32 = v61;
    if (v11)
    {
      v33 = 0;
      v34 = v59;
      v35 = v56;
      while (v13 != v33)
      {
        v36 = v11[v33++];
        sub_1AFD00848(v14, v36, v16, v34, a3, v32);
        v16 += 7;
        v34 = (v34 + v28);
        if (v35)
        {
          v37 = v59;
          v38 = *(v60 + 32);
          goto LABEL_30;
        }
      }

      v48 = v59;
      v52 = v60;
      sub_1AF5B8BD0(v11, v58, v13, v59, v57, v60);
    }

    else
    {
      v45 = v54[6];
      v46 = v54[7];
      v47 = &v16[7 * v45];
      v48 = v59;
      v49 = v59;
      v50 = v56;
      while (v46 != v45)
      {
        v51 = v45 + 1;
        sub_1AFD00848(v14, v45, v47, v49, a3, v61);
        v49 = (v49 + v28);
        v47 += 7;
        v45 = v51;
        if (v50)
        {
          v38 = *(v60 + 32);
          goto LABEL_29;
        }
      }

      v52 = v60;
      sub_1AF5B8C20(v14[29], v14[30], v48, v57, v60);
    }

    v38 = *(v52 + 32);
LABEL_29:
    v37 = v48;
LABEL_30:
    ecs_stack_allocator_deallocate(v38, v37, v55);
  }
}

uint64_t sub_1AFD17C80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v307 = a4;
  v304 = a3;
  v272 = a2;
  v303 = sub_1AFDFCA88();
  *&v273 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303, v6);
  v302 = &v265 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1AFDFCAC8();
  v269 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301, v8);
  v300 = &v265 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v299 = &v265 - v12;
  sub_1AF0D4E74();
  v287 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v286 = &v265 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1AFDFC298();
  v282 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v16);
  v285 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_1AFDFC128();
  v281 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308, v18);
  v293 = (&v265 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v292 = &v265 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v283 = (&v265 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v297 = (&v265 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v296 = &v265 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v288 = (&v265 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v291 = &v265 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v289 = (&v265 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v284 = (&v265 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v295 = (&v265 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v294 = &v265 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v290 = (&v265 - v52);
  v54 = a1[11];
  v53 = a1[12];
  v55 = a1[13];
  v56 = a1[1];
  v57 = a1[2];
  v58 = a1;

  v268 = sub_1AF64B110(&type metadata for TextureFileAsset, &off_1F2544090, v54, v53, v55, v57);
  sub_1AF649C6C(*(v56 + 40), &type metadata for FileWatcher, &aBlock);
  v305 = v56;
  v271 = v4;
  if (aBlock != 1)
  {
    v284 = v53;
    v110 = v55;
    if (!v54)
    {
      v110 = a1[7] - a1[6];
    }

    v111 = v110;
    v112 = 8 * v110;
    v270 = ecs_stack_allocator_allocate(*(v272 + 32), 8 * v110, 8);
    v266 = v111;
    v113 = v284;
    if (v111)
    {
      bzero(v270, v112);
    }

    v267 = v112;
    if (v54)
    {
      v293 = v54;
      v292 = v55;
      v114 = v288;
      if (v55)
      {
        *&v276 = "_TtC3VFX19MeshReferenceSystem";
        v275 = "rl of an asset (";
        v274 = (v282 + 4);
        v283 = (v281 + 2);
        v282 += 7;
        ++v281;
        v280 = &v315;
        v279 = (v273 + 8);
        v278 = v269 + 8;
        v115 = (v268 + 40);
        v273 = xmmword_1AFE431C0;
        v116 = v293;
        v117 = v292;
        v118 = v270;
        do
        {
          v291 = v117;
          v133 = *v116;
          v294 = (v116 + 1);
          v290 = v118;

          v134 = *(v115 - 3);
          v135 = *(v115 - 2);
          v136 = *(v115 - 1);
          v295 = v115;
          if (v136)
          {
            v137 = *v115;
            ObjectType = swift_getObjectType();
            (*(v137 + 8))(v134, v135, ObjectType, v137);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            aBlock = 0;
            v314 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v276 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v134, v135);
            MEMORY[0x1B2718AE0](0xD000000000000016, v275 | 0x8000000000000000);
            v140 = aBlock;
            v139 = v314;
            v141 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v277 = v135;
            v289 = v134;
            v298 = v133;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v142 = swift_allocObject();
            *(v142 + 16) = v273;
            *(v142 + 56) = MEMORY[0x1E69E6158];
            *(v142 + 64) = sub_1AF0D544C();
            *(v142 + 32) = v140;
            *(v142 + 40) = v139;

            v143 = v141;
            sub_1AFDFC4C8();

            v144 = v285;
            sub_1AFDFC288();
            v145 = v287[12];
            v146 = v287[16];
            v147 = v140;
            v148 = v286;
            v149 = &v286[v287[20]];
            (*v274)(v286, v144, v306);
            *(v148 + v145) = v143;
            *(v148 + v146) = 0;
            *v149 = v147;
            *(v149 + 1) = v139;

            sub_1AFDFC608();

            sub_1AFD53198(v148, sub_1AF0D4E74);

            v114 = v288;
            sub_1AFDFC018();
            v133 = v298;
          }

          v150 = v305;

          if (*(v150 + 184))
          {
            goto LABEL_76;
          }

          v152 = *(*(v150 + 168) + 4 * v133);
          v289 = *(*(v151 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v152 + 8);

          v153 = *v283;
          v154 = v296;
          v155 = v114;
          v156 = v308;
          (*v283)(v296, v155, v308);
          type metadata accessor for URLWatcher();
          v298 = swift_allocObject();
          v157 = v297;
          (v153)(v297, v154, v156);
          v158 = type metadata accessor for URLWatcher.Presenter();
          v159 = objc_allocWithZone(v158);
          v160 = &v159[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate];
          (*v282)(&v159[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate], 1, 1, v306);
          swift_weakInit();
          swift_weakInit();
          v161 = v156;
          v162 = v289;
          (v153)(&v159[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url], v157, v161);
          v163 = &v159[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity];
          *v163 = v152;
          v163[1] = v162;
          v164 = v304;

          swift_weakAssign();

          v165 = *(v164 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v165)
          {

            swift_unknownObjectRetain();
            v119 = sub_1AF6C97E0(v152 | (v162 << 32));
            swift_unknownObjectRelease();

            v120 = v119 != 0xFFFFFFFF;
          }

          else
          {

            v120 = 0;
          }

          v159[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate] = v120;
          v121 = v299;
          v122 = v297;
          sub_1AF0D4AFC(v299);
          sub_1AFD53334(v121, v160);
          v311.receiver = v159;
          v311.super_class = v158;
          v123 = objc_msgSendSuper2(&v311, sel_init);
          v289 = *v281;
          (v289)(v122, v308);
          *(v298 + 16) = v123;
          sub_1AF615168();
          v124 = sub_1AFDFDB08();
          v125 = swift_allocObject();
          swift_weakInit();
          v317 = sub_1AFD553F4;
          v318 = v125;
          aBlock = MEMORY[0x1E69E9820];
          v314 = 1107296256;
          v315 = sub_1AFCDA044;
          v316 = &unk_1F256FC98;
          v126 = _Block_copy(&aBlock);

          v127 = v300;
          sub_1AFDFCAA8();
          v312 = MEMORY[0x1E69E7CC0];
          sub_1AF751ED8();
          sub_1AFD532D0(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1AF6FD510();
          v128 = v302;
          v129 = v303;
          sub_1AFDFE058();
          MEMORY[0x1B2719530](0, v127, v128, v126);
          _Block_release(v126);

          v130 = v308;
          v131 = v289;
          (v289)(v296, v308);
          (*v279)(v128, v129);
          (*v278)(v127, v301);

          v114 = v288;
          v131(v288, v130);
          v132 = v290;
          *v290 = v298;
          v118 = v132 + 1;
          v115 = v295 + 6;
          v117 = (v291 - 1);
          v113 = v284;
          v116 = v294;
        }

        while (v291 != 1);
      }

      v166 = v113;
      v167 = v270;
      v168 = v272;
      sub_1AF5B9608(v293, v166, v292, v270, v266, v272);
    }

    else
    {
      v214 = v58[7];
      v298 = v58[6];
      v291 = v214;
      v215 = v283;
      if (v298 != v214)
      {
        v280 = "_TtC3VFX19MeshReferenceSystem";
        v279 = "rl of an asset (";
        v278 = (v282 + 4);
        v290 = v281 + 2;
        v289 = v282 + 7;
        v288 = v281 + 1;
        v284 = &v315;
        v282 = (v273 + 8);
        v281 = (v269 + 8);
        v217 = (v268 + 48 * v298 + 40);
        v277 = xmmword_1AFE431C0;
        v218 = v270;
        do
        {
          v295 = v218;

          v234 = *(v217 - 3);
          v235 = *(v217 - 2);
          v236 = *(v217 - 1);
          v296 = v217;
          if (v236)
          {
            v237 = *v217;
            v238 = swift_getObjectType();
            (*(v237 + 8))(v234, v235, v238, v237);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            aBlock = 0;
            v314 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v280 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v234, v235);
            MEMORY[0x1B2718AE0](0xD000000000000016, v279 | 0x8000000000000000);
            v239 = aBlock;
            v240 = v314;
            v241 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v294 = v235;
            v297 = v234;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v242 = swift_allocObject();
            *(v242 + 16) = v277;
            *(v242 + 56) = MEMORY[0x1E69E6158];
            *(v242 + 64) = sub_1AF0D544C();
            *(v242 + 32) = v239;
            *(v242 + 40) = v240;

            v243 = v241;
            sub_1AFDFC4C8();

            v244 = v285;
            sub_1AFDFC288();
            v245 = v287[12];
            v246 = v287[16];
            v247 = v286;
            v248 = v239;
            v249 = &v286[v287[20]];
            (*v278)(v286, v244, v306);
            *(v247 + v245) = v243;
            *(v247 + v246) = 0;
            *v249 = v248;
            *(v249 + 1) = v240;

            sub_1AFDFC608();

            sub_1AFD53198(v247, sub_1AF0D4E74);

            v215 = v283;
            sub_1AFDFC018();
          }

          v250 = v305;

          if (*(v250 + 184))
          {
            goto LABEL_76;
          }

          v252 = *(*(v250 + 168) + 4 * v298);
          v294 = *(*(v251 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v252 + 8);

          v253 = *v290;
          v254 = v292;
          v255 = v215;
          v256 = v308;
          (*v290)(v292, v255, v308);
          type metadata accessor for URLWatcher();
          v297 = swift_allocObject();
          v257 = v293;
          v253(v293, v254, v256);
          v258 = type metadata accessor for URLWatcher.Presenter();
          v259 = objc_allocWithZone(v258);
          v260 = &v259[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate];
          (*v289)(&v259[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate], 1, 1, v306);
          swift_weakInit();
          swift_weakInit();
          v253(&v259[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url], v257, v256);
          v261 = v294;
          v262 = &v259[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity];
          *v262 = v252;
          v262[1] = v261;
          v263 = v304;

          swift_weakAssign();

          v264 = *(v263 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v264)
          {

            swift_unknownObjectRetain();
            v219 = sub_1AF6C97E0(v252 | (v261 << 32));
            swift_unknownObjectRelease();

            v220 = v219 != 0xFFFFFFFF;
          }

          else
          {

            v220 = 0;
          }

          v221 = (v298 + 1);
          v259[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate] = v220;
          v222 = v299;
          v223 = v293;
          sub_1AF0D4AFC(v299);
          sub_1AFD53334(v222, v260);
          v319.receiver = v259;
          v319.super_class = v258;
          v224 = objc_msgSendSuper2(&v319, sel_init);
          v298 = *v288;
          (v298)(v223, v308);
          v297[2] = v224;
          sub_1AF615168();
          v294 = sub_1AFDFDB08();
          v225 = swift_allocObject();
          swift_weakInit();
          v317 = sub_1AFD533C8;
          v318 = v225;
          aBlock = MEMORY[0x1E69E9820];
          v314 = 1107296256;
          v315 = sub_1AFCDA044;
          v316 = &unk_1F24E63F0;
          v226 = _Block_copy(&aBlock);

          v227 = v300;
          sub_1AFDFCAA8();
          v312 = MEMORY[0x1E69E7CC0];
          sub_1AF751ED8();
          sub_1AFD532D0(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1AF6FD510();
          v228 = v302;
          v229 = v303;
          sub_1AFDFE058();
          v230 = v294;
          MEMORY[0x1B2719530](0, v227, v228, v226);
          _Block_release(v226);

          v231 = v308;
          v232 = v298;
          (v298)(v292, v308);
          (*v282)(v228, v229);
          (*v281)(v227, v301);

          v215 = v283;
          v232(v283, v231);
          v233 = v295;
          *v295 = v297;
          v218 = v233 + 1;
          v217 = v296 + 48;
          v298 = v221;
        }

        while (v291 != v221);
      }

      v167 = v270;
      v168 = v272;
      sub_1AF5B964C(*(v305 + 232), *(v305 + 240), v270, v266, v272);
    }

    ecs_stack_allocator_deallocate(*(v168 + 32), v167, v267);
  }

  v59 = v272;
  *(v272 + 72) = &type metadata for FileWatcher;
  *(v59 + 80) = &off_1F25460D8;
  v60 = sub_1AF64B110(&type metadata for FileWatcher, &off_1F25460D8, v54, v53, v55, v57);
  if (!v54)
  {
    v169 = a1[6];
    v292 = a1[7];
    v170 = v284;
    if (v169 != v292)
    {
      v279 = "_TtC3VFX19MeshReferenceSystem";
      v278 = "rl of an asset (";
      *&v277 = v282 + 4;
      v290 = v281 + 2;
      v288 = (v282 + 7);
      v283 = (v281 + 1);
      v282 = &v315;
      v281 = (v273 + 8);
      v280 = (v269 + 8);
      v171 = (v268 + 48 * v169 + 40);
      v276 = xmmword_1AFE431C0;
      v297 = v60;
      while (1)
      {

        v185 = *(v171 - 3);
        v186 = *(v171 - 2);
        v187 = *(v171 - 1);
        v298 = v169;
        v295 = v171;
        if (v187)
        {
          v188 = *v171;
          v189 = swift_getObjectType();
          (*(v188 + 8))(v185, v186, v189, v188);
        }

        else
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          aBlock = 0;
          v314 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000020, v279 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v185, v186);
          MEMORY[0x1B2718AE0](0xD000000000000016, v278 | 0x8000000000000000);
          v190 = aBlock;
          v191 = v314;
          v192 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          v294 = v186;
          v296 = v185;
          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v193 = swift_allocObject();
          *(v193 + 16) = v276;
          *(v193 + 56) = MEMORY[0x1E69E6158];
          *(v193 + 64) = sub_1AF0D544C();
          *(v193 + 32) = v190;
          *(v193 + 40) = v191;

          sub_1AFDFC4C8();

          v194 = v190;
          v195 = v285;
          sub_1AFDFC288();
          v196 = v287[12];
          v197 = v287[16];
          v198 = v286;
          v199 = &v286[v287[20]];
          (*v277)(v286, v195, v306);
          *(v198 + v196) = v192;
          *(v198 + v197) = 0;
          *v199 = v194;
          *(v199 + 1) = v191;

          sub_1AFDFC608();

          sub_1AFD53198(v198, sub_1AF0D4E74);

          v170 = v284;
          sub_1AFDFC018();
          v169 = v298;
        }

        v200 = v305;

        if (*(v200 + 184))
        {
          break;
        }

        v202 = *(*(v200 + 168) + 4 * v169);
        v203 = *(*(v201 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v202 + 8);

        v204 = *v290;
        v205 = v289;
        v206 = v170;
        v207 = v308;
        (*v290)(v289, v206, v308);
        type metadata accessor for URLWatcher();
        v296 = swift_allocObject();
        v208 = v291;
        v204(v291, v205, v207);
        v293 = type metadata accessor for URLWatcher.Presenter();
        v209 = objc_allocWithZone(v293);
        v210 = &v209[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate];
        (*v288)(&v209[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate], 1, 1, v306);
        swift_weakInit();
        swift_weakInit();
        v204(&v209[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url], v208, v207);
        v211 = &v209[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity];
        *v211 = v202;
        v211[1] = v203;
        v212 = v304;

        swift_weakAssign();

        v213 = *(v212 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v213)
        {

          swift_unknownObjectRetain();
          v172 = sub_1AF6C97E0(v202 | (v203 << 32));
          swift_unknownObjectRelease();

          v173 = v172 != 0xFFFFFFFF;
        }

        else
        {

          v173 = 0;
        }

        v294 = v298 + 1;
        v209[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate] = v173;
        v174 = v299;
        v175 = v291;
        sub_1AF0D4AFC(v299);
        sub_1AFD53334(v174, v210);
        v310.receiver = v209;
        v310.super_class = v293;
        v176 = objc_msgSendSuper2(&v310, sel_init);
        v293 = *v283;
        (v293)(v175, v308);
        *(v296 + 2) = v176;
        sub_1AF615168();
        v177 = sub_1AFDFDB08();
        v178 = swift_allocObject();
        swift_weakInit();
        v317 = sub_1AFD553F4;
        v318 = v178;
        aBlock = MEMORY[0x1E69E9820];
        v314 = 1107296256;
        v315 = sub_1AFCDA044;
        v316 = &unk_1F256FCC0;
        v179 = _Block_copy(&aBlock);

        v180 = v300;
        sub_1AFDFCAA8();
        v312 = MEMORY[0x1E69E7CC0];
        sub_1AF751ED8();
        sub_1AFD532D0(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1AF6FD510();
        v181 = v302;
        v182 = v303;
        sub_1AFDFE058();
        MEMORY[0x1B2719530](0, v180, v181, v179);
        _Block_release(v179);

        v183 = v308;
        v184 = v293;
        (v293)(v289, v308);
        (*v281)(v181, v182);
        (*v280)(v180, v301);

        v170 = v284;
        (v184)(v284, v183);
        v297[v298] = v296;
        v171 = v295 + 6;
        v169 = v294;
        if (v292 == v294)
        {
        }
      }

      goto LABEL_76;
    }
  }

  v61 = v290;
  if (!v55)
  {
  }

  v279 = "_TtC3VFX19MeshReferenceSystem";
  v278 = "rl of an asset (";
  *&v277 = v282 + 4;
  v289 = (v281 + 2);
  v288 = (v282 + 7);
  v284 = (v281 + 1);
  v283 = &v315;
  v282 = (v273 + 8);
  v281 = (v269 + 8);
  v62 = (v268 + 40);
  v276 = xmmword_1AFE431C0;
  while (1)
  {
    v292 = v55;
    v77 = *v54;
    v293 = v54 + 1;
    v297 = v60;

    v78 = *(v62 - 3);
    v79 = *(v62 - 2);
    v80 = *(v62 - 1);
    v296 = v62;
    if (v80)
    {
      v81 = *v62;
      v82 = swift_getObjectType();
      (*(v81 + 8))(v78, v79, v82, v81);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v298 = v77;
      aBlock = 0;
      v314 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000020, v279 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v78, v79);
      MEMORY[0x1B2718AE0](0xD000000000000016, v278 | 0x8000000000000000);
      v83 = aBlock;
      v84 = v314;
      v85 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v280 = v78;
      v291 = v79;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v86 = swift_allocObject();
      *(v86 + 16) = v276;
      *(v86 + 56) = MEMORY[0x1E69E6158];
      *(v86 + 64) = sub_1AF0D544C();
      *(v86 + 32) = v83;
      *(v86 + 40) = v84;

      v87 = v83;
      v88 = v85;
      sub_1AFDFC4C8();

      v89 = v285;
      sub_1AFDFC288();
      v90 = v287[12];
      v91 = v287[16];
      v92 = v286;
      v93 = &v286[v287[20]];
      (*v277)(v286, v89, v306);
      *(v92 + v90) = v88;
      *(v92 + v91) = 0;
      *v93 = v87;
      *(v93 + 1) = v84;

      sub_1AFDFC608();

      sub_1AFD53198(v92, sub_1AF0D4E74);

      v61 = v290;
      sub_1AFDFC018();
      v77 = v298;
    }

    v94 = v305;

    if (*(v94 + 184))
    {
      break;
    }

    v96 = *(*(v94 + 168) + 4 * v77);
    v291 = *(*(v95 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v96 + 8);

    v97 = *v289;
    v98 = v294;
    v99 = v61;
    v100 = v308;
    (*v289)(v294, v99, v308);
    type metadata accessor for URLWatcher();
    v298 = swift_allocObject();
    v101 = v295;
    (v97)(v295, v98, v100);
    v102 = type metadata accessor for URLWatcher.Presenter();
    v103 = objc_allocWithZone(v102);
    v104 = &v103[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate];
    (*v288)(&v103[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate], 1, 1, v306);
    swift_weakInit();
    swift_weakInit();
    v105 = v100;
    v106 = v291;
    (v97)(&v103[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url], v101, v105);
    v107 = &v103[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity];
    *v107 = v96;
    v107[1] = v106;
    v108 = v304;

    swift_weakAssign();

    v109 = *(v108 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v109)
    {

      swift_unknownObjectRetain();
      v63 = sub_1AF6C97E0(v96 | (v106 << 32));
      swift_unknownObjectRelease();

      v64 = v63 != 0xFFFFFFFF;
    }

    else
    {

      v64 = 0;
    }

    v103[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate] = v64;
    v65 = v299;
    v66 = v295;
    sub_1AF0D4AFC(v299);
    sub_1AFD53334(v65, v104);
    v309.receiver = v103;
    v309.super_class = v102;
    v67 = objc_msgSendSuper2(&v309, sel_init);
    v291 = *v284;
    (v291)(v66, v308);
    *(v298 + 16) = v67;
    sub_1AF615168();
    v68 = sub_1AFDFDB08();
    v69 = swift_allocObject();
    swift_weakInit();
    v317 = sub_1AFD553F4;
    v318 = v69;
    aBlock = MEMORY[0x1E69E9820];
    v314 = 1107296256;
    v315 = sub_1AFCDA044;
    v316 = &unk_1F256FCE8;
    v70 = _Block_copy(&aBlock);

    v71 = v300;
    sub_1AFDFCAA8();
    v312 = MEMORY[0x1E69E7CC0];
    sub_1AF751ED8();
    sub_1AFD532D0(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1AF6FD510();
    v72 = v302;
    v73 = v303;
    sub_1AFDFE058();
    MEMORY[0x1B2719530](0, v71, v72, v70);
    _Block_release(v70);

    v74 = v308;
    v75 = v291;
    (v291)(v294, v308);
    (*v282)(v72, v73);
    (*v281)(v71, v301);

    v61 = v290;
    (v75)(v290, v74);
    v76 = v297;
    *v297 = v298;
    v60 = (v76 + 1);
    v62 = v296 + 48;
    v55 = v292 - 1;
    v54 = v293;
    if (v292 == 1)
    {
    }
  }

LABEL_76:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFD1A610(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v36 = *result;
  v37 = *(result + 16);
  v38 = *(result + 32);
  v30 = *(result + 80);
  if (v30 >= 1)
  {
    v8 = *(result + 40);
    v9 = *(result + 56);
    v10 = *(result + 64);
    v11 = *(result + 72);
    v12 = *(v11 + 32);

    ecs_stack_allocator_push_snapshot(v12);
    v13 = *(v11 + 32);
    if (v9)
    {
      v26 = v10;
      v14 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v15 = (v8 + 24);
      v27 = v14;
      v28 = a3;
      v29 = a2;
      while (1)
      {
        v16 = *(v15 - 6);
        v17 = *(v15 - 5);
        v18 = *(v15 - 4);
        v34 = *v15;
        v35 = *(v15 - 1);
        v32 = v9;
        v33 = v15[1];
        v19 = v15[2];
        v50 = v5;
        if (v14)
        {
          v20 = *(v19 + 376);

          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v19 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);
        v21 = *(v11 + 64);
        v43[0] = *(v11 + 48);
        v43[1] = v21;
        v44 = *(v11 + 80);
        v22 = *(v11 + 32);
        v23 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;

        *(v11 + 48) = ecs_stack_allocator_allocate(v22, 48 * v23, 8);
        *(v11 + 56) = v23;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;

        v45[0] = v26;
        v45[1] = v19;
        v45[2] = v11;
        v45[3] = v18;
        v45[4] = (v17 - v16 + v18);
        v45[5] = v30;
        v45[6] = v16;
        v45[7] = v17;
        v45[8] = 0;
        v45[9] = 0;
        v46 = 1;
        v47 = v35;
        v48 = v34;
        v49 = v33;

        v24 = v50;
        a4(v45, v11, v29, v28);
        v5 = v24;
        if (v24)
        {
          break;
        }

        v41[0] = v36;
        v41[1] = v37;
        v42 = v38;
        sub_1AF630994(v11, v41, v43);
        sub_1AF62D29C(v19);
        ecs_stack_allocator_pop_snapshot(v13);
        v14 = v27;
        if (v27)
        {
          os_unfair_lock_unlock(*(v19 + 344));
          os_unfair_lock_unlock(*(v19 + 376));
        }

        v15 += 6;
        v9 = v32 - 1;
        if (v32 == 1)
        {
          v13 = *(v11 + 32);
          goto LABEL_15;
        }
      }

      v39[0] = v36;
      v39[1] = v37;
      v40 = v38;
      sub_1AF630994(v11, v39, v43);
      sub_1AF62D29C(v19);
      ecs_stack_allocator_pop_snapshot(v13);
      if (v27)
      {
        os_unfair_lock_unlock(*(v19 + 344));
        os_unfair_lock_unlock(*(v19 + 376));
      }

      v25 = *(v11 + 32);
    }

    else
    {
LABEL_15:
      v25 = v13;
    }

    ecs_stack_allocator_pop_snapshot(v25);
  }

  return result;
}

uint64_t sub_1AFD1A914(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v114 = a3;
  v106 = a2;
  sub_1AFD532D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v107 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v108 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v105 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v109 = &v102 - v17;
  v19 = a1[11];
  v18 = a1[12];
  v20 = a1[13];
  v21 = a1[1];
  v22 = a1[2];

  v128 = sub_1AF64B110(&type metadata for TextureCGImage, &off_1F2546BB8, v19, v18, v20, v22);
  sub_1AF649C6C(*(v21 + 40), &type metadata for TextureCPURuntime, &v121);
  v112 = a1;
  v113 = v21;
  v115 = v22;
  v110 = v20;
  v111 = v19;
  if (v121 == 1)
  {
    v23 = v106;
    *(v106 + 72) = &type metadata for TextureCPURuntime;
    *(v23 + 80) = &off_1F2543E80;
    v24 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v19, v18, v20, v22);
    v25 = v24;
    if (v19)
    {
      v26 = v21;
      if (v20)
      {
        v27 = v19;
        v28 = 0;
        v29 = v115;
        do
        {
          v30 = v27[v28];
          v31 = v28 + a1[3];
          *&v117[0] = *a1;
          *(&v117[0] + 1) = v26;
          *&v117[1] = v29;
          *(&v117[1] + 1) = v31;
          v118 = v30;
          v32 = *(v128 + 8 * v28);
          if (v32)
          {
            v33 = v32;
            sub_1AF8DE828(&v121);
            v34 = *(v114 + 16);
            v35 = sub_1AFDFC128();
            v36 = v109;
            (*(*(v35 - 8) + 56))(v109, 1, 1, v35);
            sub_1AF8E6C04(v33, &v121, v34, v36, 0, 1);
            if (v4)
            {
              sub_1AFD53CA8(v36, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v37 = sub_1AFDFF1D8();
              v39 = v38;
              v40 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v41 = v40;
                swift_once();
                v40 = v41;
              }

              v123 = 0;
              sub_1AF0D4F18(v40, &v123, v37, v39);

              v4 = 0;
              a1 = v112;
              v26 = v113;
            }

            else
            {
              sub_1AFD53CA8(v36, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
            }

            v29 = v115;
            v20 = v110;
            v27 = v111;
          }

          ++v28;
          v25 += 64;
        }

        while (v20 != v28);
      }
    }

    else
    {
      v55 = a1[6];
      v54 = a1[7];
      if (v55 != v54)
      {
        v80 = v24 + (v55 << 6);
        v81 = a1[3];
        v82 = v115;
        v83 = v105;
        v110 = a1[7];
        do
        {
          *&v117[0] = *a1;
          *(&v117[0] + 1) = v113;
          *&v117[1] = v82;
          *(&v117[1] + 1) = v81;
          v118 = v55;
          v84 = *(v128 + 8 * v55);
          if (v84)
          {
            v85 = v84;
            sub_1AF8DE828(&v121);
            v86 = *(v114 + 16);
            v87 = sub_1AFDFC128();
            (*(*(v87 - 8) + 56))(v83, 1, 1, v87);
            sub_1AF8E6C04(v85, &v121, v86, v83, 0, 1);
            if (v4)
            {
              v111 = v85;
              sub_1AFD53CA8(v83, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v88 = sub_1AFDFF1D8();
              v90 = v89;
              v91 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v123 = 0;
              sub_1AF0D4F18(v91, &v123, v88, v90);

              v4 = 0;
              a1 = v112;
              v82 = v115;
              v83 = v105;
            }

            else
            {
              sub_1AFD53CA8(v83, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);

              v82 = v115;
            }

            v54 = v110;
          }

          ++v55;
          v80 += 64;
          ++v81;
        }

        while (v54 != v55);
      }
    }
  }

  else
  {
    v109 = v18;
    if (!v19)
    {
      v20 = a1[7] - a1[6];
    }

    CFXTextureDescriptorMakeDefault(&v119);
    *(v117 + 7) = v119;
    *(&v117[1] + 7) = v120;
    *v122 = 0;
    v121 = 0uLL;
    v122[8] = 0;
    *&v122[9] = v117[0];
    *&v122[24] = *(v117 + 15);
    *&v122[40] = MEMORY[0x1E69E7CC0];
    v42 = *(v106 + 32);
    v104 = v20 << 6;
    v43 = ecs_stack_allocator_allocate(v42, v20 << 6, 8);
    v44 = v43;
    v45 = v108;
    v105 = v20;
    if (v20)
    {
      v46 = v121;
      v47 = *v122;
      v48 = *&v122[32];
      v43[2] = *&v122[16];
      v43[3] = v48;
      *v43 = v46;
      v43[1] = v47;
      v49 = v20 - 1;
      if (v20 != 1)
      {
        v50 = v43 + 4;
        do
        {
          sub_1AF44222C(&v121, v117);
          v51 = v121;
          v52 = *v122;
          v53 = *&v122[32];
          v50[2] = *&v122[16];
          v50[3] = v53;
          *v50 = v51;
          v50[1] = v52;
          v50 += 4;
          --v49;
        }

        while (v49);
      }
    }

    else
    {
      sub_1AF478A6C(&v121);
    }

    v56 = v111;
    v57 = v107;
    v103 = v44;
    if (v111)
    {
      v58 = v113;
      v59 = v115;
      v60 = v110;
      if (v110)
      {
        v61 = 0;
        v62 = v109;
        do
        {
          v63 = v56[v61];
          v64 = v61 + a1[3];
          v123 = *a1;
          v124 = v58;
          v125 = v59;
          v126 = v64;
          v127 = v63;
          v65 = *(v128 + 8 * v61);
          if (v65)
          {
            v66 = v65;
            sub_1AF8DE828(v117);
            v67 = *(v114 + 16);
            v68 = sub_1AFDFC128();
            (*(*(v68 - 8) + 56))(v45, 1, 1, v68);
            sub_1AF8E6C04(v66, v117, v67, v45, 0, 1);
            if (v4)
            {
              sub_1AFD53CA8(v45, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v69 = sub_1AFDFF1D8();
              v71 = v70;
              v72 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v116[0] = 0;
              sub_1AF0D4F18(v72, v116, v69, v71);

              v4 = 0;
              a1 = v112;
              v58 = v113;
              v59 = v115;
              v60 = v110;
              v56 = v111;
              v45 = v108;
            }

            else
            {
              sub_1AFD53CA8(v45, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);

              v59 = v115;
              v60 = v110;
              v56 = v111;
            }

            v62 = v109;
          }

          ++v61;
          v44 += 64;
        }

        while (v60 != v61);
      }

      else
      {
        v62 = v109;
      }

      v77 = v103;
      v78 = v106;
      sub_1AF5B8C54(v56, v62, v60, v103, v105, v106);
    }

    else
    {
      v74 = a1[6];
      v73 = a1[7];
      v75 = v113;
      v76 = v115;
      if (v74 != v73)
      {
        v92 = 0;
        v110 = v73;
        do
        {
          v93 = v92 + v112[3];
          v123 = *v112;
          v124 = v75;
          v125 = v76;
          v126 = v93;
          v127 = v74;
          v94 = *(v128 + 8 * v74);
          if (v94)
          {
            v95 = v94;
            sub_1AF8DE828(v117);
            v96 = *(v114 + 16);
            v97 = sub_1AFDFC128();
            (*(*(v97 - 8) + 56))(v57, 1, 1, v97);
            sub_1AF8E6C04(v95, v117, v96, v57, 0, 1);
            if (v4)
            {
              v111 = v95;
              sub_1AFD53CA8(v57, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v98 = sub_1AFDFF1D8();
              v100 = v99;
              v101 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v116[0] = 0;
              sub_1AF0D4F18(v101, v116, v98, v100);

              v4 = 0;
              v75 = v113;
              v76 = v115;
              v57 = v107;
            }

            else
            {
              sub_1AFD53CA8(v57, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);

              v76 = v115;
            }

            v73 = v110;
          }

          ++v74;
          v44 += 64;
          ++v92;
        }

        while (v73 != v74);
      }

      v77 = v103;
      v78 = v106;
      sub_1AF5B9140(*(v75 + 232), *(v75 + 240), v103, v105, v106);
    }

    ecs_stack_allocator_deallocate(*(v78 + 32), v77, v104);
  }
}

uint64_t sub_1AFD1B490(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = v3;
  v33 = *result;
  v34 = *(result + 16);
  v35 = *(result + 32);
  v27 = *(result + 80);
  if (v27 >= 1)
  {
    v6 = *(result + 40);
    v8 = *(result + 56);
    v7 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(v9 + 32);

    ecs_stack_allocator_push_snapshot(v10);
    v11 = *(v9 + 32);
    if (v8)
    {
      v24 = v7;
      v12 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = (v6 + 24);
      v25 = v12;
      v26 = a2;
      while (1)
      {
        v14 = *(v13 - 6);
        v15 = *(v13 - 5);
        v16 = *(v13 - 4);
        v31 = *v13;
        v32 = *(v13 - 1);
        v29 = v8;
        v30 = v13[1];
        v17 = v13[2];
        v47 = v4;
        if (v12)
        {
          v18 = *(v17 + 376);

          os_unfair_lock_lock(v18);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v19 = *(v9 + 64);
        v40[0] = *(v9 + 48);
        v40[1] = v19;
        v41 = *(v9 + 80);
        v20 = *(v9 + 32);
        v21 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v20, 48 * v21, 8);
        *(v9 + 56) = v21;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        v42[0] = v24;
        v42[1] = v17;
        v42[2] = v9;
        v42[3] = v16;
        v42[4] = (v15 - v14 + v16);
        v42[5] = v27;
        v42[6] = v14;
        v42[7] = v15;
        v42[8] = 0;
        v42[9] = 0;
        v43 = 1;
        v44 = v32;
        v45 = v31;
        v46 = v30;

        v22 = v47;
        a3(v42, v9, v26);
        v4 = v22;
        if (v22)
        {
          break;
        }

        v38[0] = v33;
        v38[1] = v34;
        v39 = v35;
        sub_1AF630994(v9, v38, v40);
        sub_1AF62D29C(v17);
        ecs_stack_allocator_pop_snapshot(v11);
        v12 = v25;
        if (v25)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v13 += 6;
        v8 = v29 - 1;
        if (v29 == 1)
        {
          v11 = *(v9 + 32);
          goto LABEL_15;
        }
      }

      v36[0] = v33;
      v36[1] = v34;
      v37 = v35;
      sub_1AF630994(v9, v36, v40);
      sub_1AF62D29C(v17);
      ecs_stack_allocator_pop_snapshot(v11);
      if (v25)
      {
        os_unfair_lock_unlock(*(v17 + 344));
        os_unfair_lock_unlock(*(v17 + 376));
      }

      v23 = *(v9 + 32);
    }

    else
    {
LABEL_15:
      v23 = v11;
    }

    ecs_stack_allocator_pop_snapshot(v23);
  }

  return result;
}

uint64_t sub_1AFD1B768(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[11];
  v6 = a1[12];
  v8 = a1[13];
  v10 = a1[1];
  v9 = a1[2];
  v116 = a1;

  v94 = sub_1AF64B110(&type metadata for TextureFileData, &off_1F2544218, v7, v6, v8, v9);
  sub_1AF649C6C(v10[5], &type metadata for TextureCPURuntime, &v109);
  v98 = v8;
  v101 = v10;
  v103 = v9;
  v95 = v7;
  if (v109 != 1)
  {
    v93 = v6;
    if (!v7)
    {
      v8 = v116[7] - v116[6];
    }

    CFXTextureDescriptorMakeDefault(&v107);
    *&v105[7] = v107;
    *&v105[23] = v108;
    *v110 = 0;
    v109 = 0uLL;
    v110[8] = 0;
    *&v110[9] = *v105;
    *&v110[24] = *&v105[15];
    *&v110[40] = MEMORY[0x1E69E7CC0];
    v90 = v8 << 6;
    v28 = ecs_stack_allocator_allocate(a2[4], v8 << 6, 8);
    v29 = v28;
    if (v8)
    {
      v30 = v109;
      v31 = *v110;
      v32 = *&v110[32];
      v28[2] = *&v110[16];
      v28[3] = v32;
      *v28 = v30;
      v28[1] = v31;
      v33 = v8 - 1;
      v34 = v6;
      if (v8 != 1)
      {
        v35 = v28 + 4;
        do
        {
          sub_1AF44222C(&v109, v105);
          v36 = v109;
          v37 = *v110;
          v38 = *&v110[32];
          v35[2] = *&v110[16];
          v35[3] = v38;
          *v35 = v36;
          v35[1] = v37;
          v35 += 4;
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      sub_1AF478A6C(&v109);
      v34 = v6;
    }

    v44 = v95;
    v91 = v8;
    v92 = a2;
    v89 = v29;
    if (v95)
    {
      v45 = v116;
      v46 = v103;
      v47 = v98;
      if (v98)
      {
        v48 = 0;
        v49 = (v94 + 8);
        v50 = v29;
        do
        {
          v51 = v44[v48];
          v52 = v48 + v45[3];
          v111 = *v45;
          v112 = v10;
          v113 = v46;
          v114 = v52;
          v115 = v51;
          v53 = *v49;
          if (*v49 >> 60 != 15)
          {
            v54 = *(v49 - 1);
            sub_1AF43C9F0(v54, *v49);
            sub_1AF8DE828(v105);
            v55 = v4;
            sub_1AF8E69F0(v54, v53, v105, *(a3 + 16));
            if (v4)
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v56 = sub_1AFDFF1D8();
              v58 = v57;
              v59 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v104 = 0;
              sub_1AF0D4F18(v59, &v104, v56, v58);
              sub_1AF587E7C(v54, v53);

              v4 = 0;
              v47 = v98;
              v10 = v101;
              v45 = v116;
              v46 = v103;
              v44 = v95;
              v34 = v93;
            }

            else
            {
              sub_1AF587E7C(v54, v53);
              v47 = v98;
              v10 = v101;
              v45 = v116;
              v46 = v103;
            }
          }

          ++v48;
          v49 += 2;
          v50 += 4;
        }

        while (v47 != v48);
      }

      v60 = v44;
      v61 = v89;
      v62 = v92;
      sub_1AF5B8C54(v60, v34, v47, v89, v91, v92);
    }

    else
    {
      v63 = v3;
      v64 = v116;
      v66 = v116[6];
      v65 = v116[7];
      v67 = v103;
      if (v66 != v65)
      {
        v78 = 0;
        v79 = &v94[16 * v66 + 8];
        v80 = v29;
        v97 = v116[7];
        do
        {
          v81 = v78 + v64[3];
          v111 = *v64;
          v112 = v10;
          v113 = v67;
          v114 = v81;
          v115 = v66;
          v82 = *v79;
          if (*v79 >> 60 != 15)
          {
            v83 = *(v79 - 1);
            sub_1AF43C9F0(v83, *v79);
            sub_1AF8DE828(v105);
            v84 = v63;
            sub_1AF8E69F0(v83, v82, v105, *(a3 + 16));
            if (v63)
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              swift_getErrorValue();
              v100 = sub_1AFDFF1D8();
              v86 = v85;
              v87 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v88 = v87;
                swift_once();
                v87 = v88;
              }

              v104 = 0;
              sub_1AF0D4F18(v87, &v104, v100, v86);
              sub_1AF587E7C(v83, v82);

              v63 = 0;
            }

            else
            {
              sub_1AF587E7C(v83, v82);
            }

            v10 = v101;
            v64 = v116;
            v67 = v103;
            v65 = v97;
          }

          ++v66;
          v79 += 2;
          v80 += 4;
          ++v78;
        }

        while (v65 != v66);
      }

      v61 = v89;
      v62 = v92;
      sub_1AF5B9140(v10[29], v10[30], v89, v91, v92);
    }

    ecs_stack_allocator_deallocate(*(v62 + 32), v61, v90);
  }

  a2[9] = &type metadata for TextureCPURuntime;
  a2[10] = &off_1F2543E80;
  v11 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v7, v6, v8, v9);
  v12 = v11;
  if (v7)
  {
    v13 = v116;
    if (v8)
    {
      v14 = v7;
      v15 = 0;
      v16 = (v94 + 8);
      v17 = v9;
      do
      {
        v18 = v14[v15];
        v19 = v15 + v13[3];
        *v105 = *v13;
        *&v105[8] = v10;
        *&v105[16] = v17;
        *&v105[24] = v19;
        v106 = v18;
        v20 = *v16;
        if (*v16 >> 60 != 15)
        {
          v21 = *(v16 - 1);
          sub_1AF43C9F0(v21, *v16);
          sub_1AF8DE828(&v109);
          v22 = v4;
          sub_1AF8E69F0(v21, v20, &v109, *(a3 + 16));
          if (v4)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            swift_getErrorValue();
            v23 = sub_1AFDFF1D8();
            v25 = v24;
            v26 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v27 = v26;
              swift_once();
              v26 = v27;
            }

            v111 = 0;
            sub_1AF0D4F18(v26, &v111, v23, v25);
            sub_1AF587E7C(v21, v20);

            v4 = 0;
            v10 = v101;
            v13 = v116;
            v17 = v103;
            v14 = v95;
          }

          else
          {
            sub_1AF587E7C(v21, v20);
            v10 = v101;
            v13 = v116;
            v17 = v103;
          }

          v8 = v98;
        }

        v16 += 2;
        ++v15;
        v12 += 64;
      }

      while (v8 != v15);
    }
  }

  v39 = v3;
  v40 = v116;
  v42 = v116[6];
  v41 = v116[7];
  if (v42 != v41)
  {
    v68 = v11 + (v42 << 6);
    v69 = v116[3];
    v70 = &v94[16 * v42 + 8];
    v71 = v9;
    v96 = v116[7];
    do
    {
      *v105 = *v40;
      *&v105[8] = v10;
      *&v105[16] = v71;
      *&v105[24] = v69;
      v106 = v42;
      v72 = *v70;
      if (*v70 >> 60 != 15)
      {
        v73 = *(v70 - 1);
        sub_1AF43C9F0(v73, *v70);
        sub_1AF8DE828(&v109);
        sub_1AF8E69F0(v73, v72, &v109, *(a3 + 16));
        if (v39)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          swift_getErrorValue();
          v99 = sub_1AFDFF1D8();
          v75 = v74;
          v76 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v77 = v76;
            swift_once();
            v76 = v77;
          }

          v111 = 0;
          sub_1AF0D4F18(v76, &v111, v99, v75);
          sub_1AF587E7C(v73, v72);

          v39 = 0;
          v10 = v101;
        }

        else
        {
          sub_1AF587E7C(v73, v72);
        }

        v40 = v116;
        v71 = v103;
        v41 = v96;
      }

      ++v42;
      v70 += 2;
      v68 += 64;
      ++v69;
    }

    while (v41 != v42);
  }
}

uint64_t sub_1AFD1C070(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_1AF5C53B4();
  v6 = v5;
  v7 = a1[1];
  sub_1AF719438();
  v9 = v8;
  v11 = a1[11];
  v10 = a1[12];
  v12 = a1[13];
  v13 = a1[2];

  v99 = sub_1AF64B110(v9, &off_1F2511590, v11, v10, v12, v13);
  sub_1AF649C6C(*(v7 + 40), v6, v105);
  v87 = v7;
  if (LOBYTE(v105[0]) != 1)
  {
    v88 = v10;
    v28 = v12;
    if (!v11)
    {
      v28 = a1[7] - a1[6];
    }

    v84 = v28 << 6;
    v29 = ecs_stack_allocator_allocate(a2[4], v28 << 6, 16);
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      do
      {
        *(v31 + 1) = 0uLL;
        *(v31 + 2) = 0uLL;
        *v31 = 0uLL;
        v31[6] = 0xFFFFFFFFLL;
        v31 += 8;
        --v30;
      }

      while (v30);
    }

    v85 = a2;
    v86 = v29;
    v83 = v28;
    if (v11)
    {
      v82 = v11;
      v107 = v12;
      v32 = v10;
      if (v12)
      {
        v33 = v99 + 40;
        v34 = v29 + 2;
        v35 = v107;
        while (1)
        {
          --v35;
          v36 = *(v33 - 32);
          if (!v36)
          {
            goto LABEL_25;
          }

          v101 = v35;
          v98 = *(v33 + 40);
          v95 = *(v33 + 32);
          v91 = *(v33 + 24);
          v37 = *(v33 + 8);
          v39 = *(v33 - 8);
          v38 = *v33;
          v40 = *(v33 - 40);
          v34[1].i64[0] = v40;
          v41 = *(v36 + 80);
          v42 = *(v36 + 88);
          v34->i64[0] = v41;
          v34->i64[1] = v42;
          swift_unknownObjectRetain_n();

          swift_unknownObjectRelease();
          if (!v41)
          {
            break;
          }

          if (v37)
          {
            ObjectType = swift_getObjectType();
            (*(v42 + 8))(v105, v40, a3, ObjectType, v42);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
            swift_dynamicCast();
            v44 = v106;
          }

          else
          {
            v44.i64[0] = v39;
            v44.i64[1] = v38;
          }

          v89 = v44;
          v34[-2] = v44;
          if (v98)
          {
            v45 = swift_getObjectType();
            (*(v42 + 8))(v105, v40, a3, v45, v42);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
            swift_dynamicCast();
            v46 = v106;
          }

          else
          {

            swift_unknownObjectRelease();
            v46.i64[0] = v91;
            v46.i64[1] = v95;
          }

          v34[-1] = vsubq_f32(v46, v89);
          v32 = v88;
          v35 = v101;
          if (!v101)
          {
            goto LABEL_36;
          }

LABEL_26:
          v33 += 96;
          v34 += 4;
        }

        v32 = v88;
        v35 = v101;
LABEL_25:
        if (!v35)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

LABEL_36:
      v47 = v85;
      v48 = v86;
      sub_1AF5BB600(v82, v32, v107, v86, v83, v85);
LABEL_67:
      ecs_stack_allocator_deallocate(*(v47 + 32), v48, v84);
    }

    v65 = a1[6];
    v66 = a1[7];
    if (v65 == v66)
    {
LABEL_66:
      v47 = v85;
      v48 = v86;
      sub_1AF5BB650(*(v87 + 232), *(v87 + 240), v86, v83, v85);
      goto LABEL_67;
    }

    v67 = v99 + 96 * v65 + 40;
    v68 = v29 + 2;
    for (i = ~v65 + v66; ; --i)
    {
      v70 = *(v67 - 32);
      if (!v70)
      {
        goto LABEL_55;
      }

      v107 = i;
      v103 = *(v67 + 40);
      v97 = *(v67 + 24);
      v71 = *(v67 + 8);
      v73 = *(v67 - 8);
      v72 = *v67;
      v74 = *(v67 - 40);
      v68[1].i64[0] = v74;
      v75 = *(v70 + 80);
      v76 = *(v70 + 88);
      v68->i64[0] = v75;
      v68->i64[1] = v76;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v75)
      {
        break;
      }

      if (v71)
      {
        v77 = swift_getObjectType();
        (*(v76 + 8))(v105, v74, a3, v77, v76);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v78 = v106;
      }

      else
      {
        v78.i64[0] = v73;
        v78.i64[1] = v72;
      }

      v93 = v78;
      v68[-2] = v78;
      if (v103)
      {
        v79 = swift_getObjectType();
        (*(v76 + 8))(v105, v74, a3, v79, v76);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v80 = v106;
      }

      else
      {

        swift_unknownObjectRelease();
        v80 = v97;
      }

      v68[-1] = vsubq_f32(v80, v93);
      i = v107;
      if (!v107)
      {
        goto LABEL_66;
      }

LABEL_56:
      v67 += 96;
      v68 += 4;
    }

    i = v107;
LABEL_55:
    if (!i)
    {
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  a2[9] = v6;
  a2[10] = &off_1F2511570;
  v14 = sub_1AF64B110(v6, &off_1F2511570, v11, v10, v12, v13);
  if (!v11)
  {
    v49 = a1[6];
    v50 = a1[7];
    if (v49 == v50)
    {
    }

    v51 = v99 + 96 * v49 + 40;
    v52 = (v14 + (v49 << 6) + 32);
    for (j = ~v49 + v50; ; --j)
    {
      v54 = *(v51 - 32);
      if (!v54)
      {
        goto LABEL_40;
      }

      v107 = j;
      v102 = *(v51 + 40);
      v96 = *(v51 + 24);
      v55 = *(v51 + 8);
      v57 = *(v51 - 8);
      v56 = *v51;
      v58 = *(v51 - 40);
      v52[1].i64[0] = v58;
      v59 = *(v54 + 80);
      v60 = *(v54 + 88);
      v52->i64[0] = v59;
      v52->i64[1] = v60;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v59)
      {
        break;
      }

      if (v55)
      {
        v61 = swift_getObjectType();
        (*(v60 + 8))(v105, v58, a3, v61, v60);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v62 = v106;
      }

      else
      {
        v62.i64[0] = v57;
        v62.i64[1] = v56;
      }

      v92 = v62;
      v52[-2] = v62;
      if (v102)
      {
        v63 = swift_getObjectType();
        (*(v60 + 8))(v105, v58, a3, v63, v60);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v64 = v106;
      }

      else
      {

        swift_unknownObjectRelease();
        v64 = v96;
      }

      v52[-1] = vsubq_f32(v64, v92);
      j = v107;
      if (!v107)
      {
      }

LABEL_41:
      v51 += 96;
      v52 += 4;
    }

    j = v107;
LABEL_40:
    if (!j)
    {
    }

    goto LABEL_41;
  }

  if (v12)
  {
    v15 = v99 + 40;
    v16 = (v14 + 32);
    do
    {
      v107 = v12;
      v17 = *(v15 - 32);
      if (v17)
      {
        v19 = *(v15 - 8);
        v18 = *v15;
        v20 = *(v15 + 8);
        v94 = *(v15 + 24);
        v100 = *(v15 + 40);
        v21 = *(v15 - 40);
        v16[1].i64[0] = v21;
        v22 = *(v17 + 80);
        v23 = *(v17 + 88);
        v16->i64[0] = v22;
        v16->i64[1] = v23;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRelease();
        if (v22)
        {
          if (v20)
          {
            v24 = swift_getObjectType();
            (*(v23 + 8))(v105, v21, a3, v24, v23);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
            swift_dynamicCast();
            v25 = v106;
          }

          else
          {
            v25.i64[0] = v19;
            v25.i64[1] = v18;
          }

          v90 = v25;
          v16[-2] = v25;
          if (v100)
          {
            v26 = swift_getObjectType();
            (*(v23 + 8))(v105, v21, a3, v26, v23);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
            swift_dynamicCast();
            v27 = v106;
          }

          else
          {

            swift_unknownObjectRelease();
            v27 = v94;
          }

          v16[-1] = vsubq_f32(v27, v90);
        }

        else
        {
        }
      }

      v15 += 96;
      v16 += 4;
      v12 = v107 - 1;
    }

    while (v107 != 1);
  }
}

uint64_t sub_1AFD1CB78(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_1AF5C5484();
  v6 = v5;
  v7 = a1[1];
  sub_1AF71956C();
  v9 = v8;
  v11 = a1[11];
  v10 = a1[12];
  v12 = a1[13];
  v13 = a1[2];

  v103 = sub_1AF64B110(v9, &off_1F2511590, v11, v10, v12, v13);
  sub_1AF649C6C(*(v7 + 40), v6, v109);
  v91 = v7;
  if (LOBYTE(v109[0]) != 1)
  {
    v92 = v10;
    v29 = v12;
    if (!v11)
    {
      v29 = a1[7] - a1[6];
    }

    v88 = v29 << 6;
    v30 = ecs_stack_allocator_allocate(a2[4], v29 << 6, 16);
    if (v29)
    {
      v31 = v29;
      v32 = v30;
      do
      {
        *(v32 + 1) = 0uLL;
        *(v32 + 2) = 0uLL;
        *v32 = 0uLL;
        v32[6] = 0xFFFFFFFFLL;
        v32 += 8;
        --v31;
      }

      while (v31);
    }

    v89 = a2;
    v90 = v30;
    v87 = v29;
    if (v11)
    {
      v86 = v11;
      v111 = v12;
      v33 = v10;
      if (v12)
      {
        v34 = v103 + 40;
        v35 = v30 + 2;
        v36 = v111;
        while (1)
        {
          --v36;
          v37 = *(v34 - 32);
          if (!v37)
          {
            goto LABEL_25;
          }

          v105 = v36;
          v102 = *(v34 + 40);
          v99 = *(v34 + 32);
          v95 = *(v34 + 24);
          v38 = *(v34 + 8);
          v40 = *(v34 - 8);
          v39 = *v34;
          v41 = *(v34 - 40);
          v35[1].i64[0] = v41;
          v42 = *(v37 + 80);
          v43 = *(v37 + 88);
          v35->i64[0] = v42;
          v35->i64[1] = v43;
          swift_unknownObjectRetain_n();

          swift_unknownObjectRelease();
          if (!v42)
          {
            break;
          }

          if (v38)
          {
            ObjectType = swift_getObjectType();
            (*(v43 + 8))(v109, v41, a3, ObjectType, v43);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            swift_dynamicCast();
            v45 = v110;
          }

          else
          {
            v45.i64[0] = v40;
            v45.i64[1] = v39;
          }

          v93 = v45;
          v35[-2] = v45;
          if (v102)
          {
            v46 = swift_getObjectType();
            (*(v43 + 8))(v109, v41, a3, v46, v43);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            swift_dynamicCast();
            v47 = v110;
          }

          else
          {

            swift_unknownObjectRelease();
            v47.i64[0] = v95;
            v47.i64[1] = v99;
          }

          v48 = vsubq_f32(v47, v93);
          v48.i32[3] = 0;
          v35[-1] = v48;
          v33 = v92;
          v36 = v105;
          if (!v105)
          {
            goto LABEL_36;
          }

LABEL_26:
          v34 += 96;
          v35 += 4;
        }

        v33 = v92;
        v36 = v105;
LABEL_25:
        if (!v36)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

LABEL_36:
      v49 = v89;
      v50 = v90;
      sub_1AF5BB684(v86, v33, v111, v90, v87, v89);
LABEL_67:
      ecs_stack_allocator_deallocate(*(v49 + 32), v50, v88);
    }

    v68 = a1[6];
    v69 = a1[7];
    if (v68 == v69)
    {
LABEL_66:
      v49 = v89;
      v50 = v90;
      sub_1AF5BB6D4(*(v91 + 232), *(v91 + 240), v90, v87, v89);
      goto LABEL_67;
    }

    v70 = v103 + 96 * v68 + 40;
    v71 = v30 + 2;
    for (i = ~v68 + v69; ; --i)
    {
      v73 = *(v70 - 32);
      if (!v73)
      {
        goto LABEL_55;
      }

      v111 = i;
      v107 = *(v70 + 40);
      v101 = *(v70 + 24);
      v74 = *(v70 + 8);
      v76 = *(v70 - 8);
      v75 = *v70;
      v77 = *(v70 - 40);
      v71[1].i64[0] = v77;
      v78 = *(v73 + 80);
      v79 = *(v73 + 88);
      v71->i64[0] = v78;
      v71->i64[1] = v79;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v78)
      {
        break;
      }

      if (v74)
      {
        v80 = swift_getObjectType();
        (*(v79 + 8))(v109, v77, a3, v80, v79);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v81 = v110;
      }

      else
      {
        v81.i64[0] = v76;
        v81.i64[1] = v75;
      }

      v97 = v81;
      v71[-2] = v81;
      if (v107)
      {
        v82 = swift_getObjectType();
        (*(v79 + 8))(v109, v77, a3, v82, v79);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v83 = v110;
      }

      else
      {

        swift_unknownObjectRelease();
        v83 = v101;
      }

      v84 = vsubq_f32(v83, v97);
      v84.i32[3] = 0;
      v71[-1] = v84;
      i = v111;
      if (!v111)
      {
        goto LABEL_66;
      }

LABEL_56:
      v70 += 96;
      v71 += 4;
    }

    i = v111;
LABEL_55:
    if (!i)
    {
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  a2[9] = v6;
  a2[10] = &off_1F2511570;
  v14 = sub_1AF64B110(v6, &off_1F2511570, v11, v10, v12, v13);
  if (!v11)
  {
    v51 = a1[6];
    v52 = a1[7];
    if (v51 == v52)
    {
    }

    v53 = v103 + 96 * v51 + 40;
    v54 = (v14 + (v51 << 6) + 32);
    for (j = ~v51 + v52; ; --j)
    {
      v56 = *(v53 - 32);
      if (!v56)
      {
        goto LABEL_40;
      }

      v111 = j;
      v106 = *(v53 + 40);
      v100 = *(v53 + 24);
      v57 = *(v53 + 8);
      v59 = *(v53 - 8);
      v58 = *v53;
      v60 = *(v53 - 40);
      v54[1].i64[0] = v60;
      v61 = *(v56 + 80);
      v62 = *(v56 + 88);
      v54->i64[0] = v61;
      v54->i64[1] = v62;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v61)
      {
        break;
      }

      if (v57)
      {
        v63 = swift_getObjectType();
        (*(v62 + 8))(v109, v60, a3, v63, v62);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v64 = v110;
      }

      else
      {
        v64.i64[0] = v59;
        v64.i64[1] = v58;
      }

      v96 = v64;
      v54[-2] = v64;
      if (v106)
      {
        v65 = swift_getObjectType();
        (*(v62 + 8))(v109, v60, a3, v65, v62);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v66 = v110;
      }

      else
      {

        swift_unknownObjectRelease();
        v66 = v100;
      }

      v67 = vsubq_f32(v66, v96);
      v67.i32[3] = 0;
      v54[-1] = v67;
      j = v111;
      if (!v111)
      {
      }

LABEL_41:
      v53 += 96;
      v54 += 4;
    }

    j = v111;
LABEL_40:
    if (!j)
    {
    }

    goto LABEL_41;
  }

  if (v12)
  {
    v15 = v103 + 40;
    v16 = (v14 + 32);
    do
    {
      v111 = v12;
      v17 = *(v15 - 32);
      if (v17)
      {
        v19 = *(v15 - 8);
        v18 = *v15;
        v20 = *(v15 + 8);
        v98 = *(v15 + 24);
        v104 = *(v15 + 40);
        v21 = *(v15 - 40);
        v16[1].i64[0] = v21;
        v22 = *(v17 + 80);
        v23 = *(v17 + 88);
        v16->i64[0] = v22;
        v16->i64[1] = v23;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRelease();
        if (v22)
        {
          if (v20)
          {
            v24 = swift_getObjectType();
            (*(v23 + 8))(v109, v21, a3, v24, v23);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            swift_dynamicCast();
            v25 = v110;
          }

          else
          {
            v25.i64[0] = v19;
            v25.i64[1] = v18;
          }

          v94 = v25;
          v16[-2] = v25;
          if (v104)
          {
            v26 = swift_getObjectType();
            (*(v23 + 8))(v109, v21, a3, v26, v23);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            swift_dynamicCast();
            v27 = v110;
          }

          else
          {

            swift_unknownObjectRelease();
            v27 = v98;
          }

          v28 = vsubq_f32(v27, v94);
          v28.i32[3] = 0;
          v16[-1] = v28;
        }

        else
        {
        }
      }

      v15 += 96;
      v16 += 4;
      v12 = v111 - 1;
    }

    while (v111 != 1);
  }
}

uint64_t sub_1AFD1D690(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_1AF5C55B8();
  v6 = v5;
  v7 = a1[1];
  sub_1AF71963C();
  v9 = v8;
  v11 = a1[11];
  v10 = a1[12];
  v12 = a1[13];
  v13 = a1[2];

  v81 = sub_1AF64B110(v9, &off_1F2511590, v11, v10, v12, v13);
  sub_1AF649C6C(*(v7 + 40), v6, v86);
  v82 = v7;
  if (LOBYTE(v86[0]) != 1)
  {
    v83 = v10;
    v27 = v12;
    if (!v11)
    {
      v27 = a1[7] - a1[6];
    }

    v78 = 40 * v27;
    v28 = ecs_stack_allocator_allocate(a2[4], 40 * v27, 8);
    if (v27)
    {
      v29 = v28 + 4;
      v30 = v27;
      do
      {
        *(v29 - 2) = 0uLL;
        *(v29 - 1) = 0uLL;
        *v29 = 0xFFFFFFFFLL;
        v29 += 5;
        --v30;
      }

      while (v30);
    }

    v79 = a2;
    v80 = v28;
    if (v11)
    {
      v77 = v11;
      v31 = v10;
      if (v12)
      {
        v32 = v12 - 1;
        v33 = v28 + 3;
        for (i = (v81 + 24); ; i += 7)
        {
          v35 = i[-2];
          if (!*&v35)
          {
            goto LABEL_24;
          }

          v84 = i[3].i8[0];
          v36 = i[2];
          v37 = i[1].i8[0];
          v38 = *i;
          v39 = i[-3];
          v33[1] = v39;
          v40 = *(*&v35 + 80);
          v41 = *(*&v35 + 88);
          *(v33 - 1) = v40;
          *v33 = v41;
          swift_unknownObjectRetain_n();

          swift_unknownObjectRelease();
          if (!v40)
          {
            break;
          }

          if (v37)
          {
            ObjectType = swift_getObjectType();
            (*(v41 + 8))(v86, v39, a3, ObjectType, v41);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
            swift_dynamicCast();
            v38 = v87;
          }

          *(v33 - 3) = v38;
          if (v84)
          {
            v43 = swift_getObjectType();
            (*(v41 + 8))(v86, v39, a3, v43, v41);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
            swift_dynamicCast();
            v36 = v87;
          }

          else
          {

            swift_unknownObjectRelease();
          }

          *(v33 - 2) = vsub_f32(v36, v38);
          v31 = v83;
          if (!v32)
          {
            goto LABEL_34;
          }

LABEL_25:
          --v32;
          v33 += 5;
        }

        v31 = v83;
LABEL_24:
        if (!v32)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

LABEL_34:
      v44 = v79;
      v45 = v80;
      sub_1AF5BB708(v77, v31, v12);
LABEL_63:
      ecs_stack_allocator_deallocate(v44[4], v45, v78);
    }

    v61 = a1[6];
    v62 = a1[7];
    if (v61 == v62)
    {
LABEL_62:
      v44 = v79;
      v45 = v80;
      sub_1AF5BBBAC(*(v82 + 232), *(v82 + 240));
      goto LABEL_63;
    }

    v63 = v81 + 56 * v61 + 24;
    v64 = v28 + 3;
    for (j = ~v61 + v62; ; --j)
    {
      v66 = *(v63 - 16);
      if (!v66)
      {
        goto LABEL_52;
      }

      v67 = *(v63 + 24);
      v68 = *(v63 + 16);
      v69 = *(v63 + 8);
      v70 = *v63;
      v71 = *(v63 - 24);
      v64[1] = v71;
      v72 = *(v66 + 80);
      v73 = *(v66 + 88);
      *(v64 - 1) = v72;
      *v64 = v73;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v72)
      {
        break;
      }

      if (v69)
      {
        v74 = swift_getObjectType();
        (*(v73 + 8))(v86, v71, a3, v74, v73);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v70 = v87;
      }

      *(v64 - 3) = v70;
      if (v67)
      {
        v75 = swift_getObjectType();
        (*(v73 + 8))(v86, v71, a3, v75, v73);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v68 = v87;
      }

      else
      {

        swift_unknownObjectRelease();
      }

      *(v64 - 2) = vsub_f32(v68, v70);
      if (!j)
      {
        goto LABEL_62;
      }

LABEL_53:
      v63 += 56;
      v64 += 5;
    }

LABEL_52:
    if (!j)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  a2[9] = v6;
  a2[10] = &off_1F2511570;
  v14 = sub_1AF64B110(v6, &off_1F2511570, v11, v10, v12, v13);
  if (!v11)
  {
    v46 = a1[6];
    v47 = a1[7];
    if (v46 == v47)
    {
    }

    v48 = ~v46 + v47;
    v49 = (v14 + 40 * v46);
    for (k = v81 + 56 * v46 + 24; ; k += 56)
    {
      v51 = *(k - 16);
      if (!v51)
      {
        goto LABEL_38;
      }

      v52 = *(k + 24);
      v53 = *(k + 16);
      v54 = *(k + 8);
      v55 = *k;
      v56 = *(k - 24);
      v49[4] = v56;
      v57 = v51[10];
      v58 = v51[11];
      v49[2] = v57;
      v49[3] = v58;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!*&v57)
      {
        break;
      }

      if (v54)
      {
        v59 = swift_getObjectType();
        (*(*&v58 + 8))(v86, v56, a3, v59, v58);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v55 = v87;
      }

      *v49 = v55;
      if (v52)
      {
        v60 = swift_getObjectType();
        (*(*&v58 + 8))(v86, v56, a3, v60, v58);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        v53 = v87;
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v49[1] = vsub_f32(v53, v55);
      if (!v48)
      {
      }

LABEL_39:
      --v48;
      v49 += 5;
    }

LABEL_38:
    if (!v48)
    {
    }

    goto LABEL_39;
  }

  if (v12)
  {
    v15 = (v14 + 24);
    v16 = (v81 + 24);
    do
    {
      v17 = v16[-2];
      if (v17)
      {
        v18 = *v16;
        v19 = v16[1].i8[0];
        v20 = v16[2];
        v21 = v16[3].i8[0];
        v22 = v16[-3];
        v15[1] = v22;
        v23 = *(*&v17 + 80);
        v24 = *(*&v17 + 88);
        *(v15 - 1) = v23;
        *v15 = v24;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRelease();
        if (v23)
        {
          if (v19)
          {
            v25 = swift_getObjectType();
            (*(v24 + 8))(v86, v22, a3, v25, v24);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
            swift_dynamicCast();
            v18 = v87;
          }

          *(v15 - 3) = v18;
          if (v21)
          {
            v26 = swift_getObjectType();
            (*(v24 + 8))(v86, v22, a3, v26, v24);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
            swift_dynamicCast();
            v20 = v87;
          }

          else
          {

            swift_unknownObjectRelease();
          }

          *(v15 - 2) = vsub_f32(v20, v18);
        }

        else
        {
        }
      }

      v15 += 5;
      v16 += 7;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AFD1E0B8(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD533F0(0, qword_1ED7287E0, type metadata accessor for BasicAnimationRuntime);
  v6 = v5;
  v7 = a1[1];
  sub_1AFD533F0(0, qword_1ED72C208, type metadata accessor for BasicAnimation);
  v9 = v8;
  v11 = a1[11];
  v10 = a1[12];
  v12 = a1[13];
  v13 = a1[2];

  v81 = sub_1AF64B110(v9, &off_1F2511590, v11, v10, v12, v13);
  sub_1AF649C6C(v7[5], v6, v85);
  v82 = v7;
  if (LOBYTE(v85[0]) != 1)
  {
    v77 = v10;
    v80 = a2;
    v27 = v12;
    if (!v11)
    {
      v27 = a1[7] - a1[6];
    }

    v78 = 32 * v27;
    v28 = ecs_stack_allocator_allocate(a2[4], 32 * v27, 8);
    if (v27)
    {
      v29 = v28;
      v30 = v27;
      do
      {
        v29[2] = 0;
        *v29 = 0uLL;
        v29[3] = 0xFFFFFFFFLL;
        v29 += 4;
        --v30;
      }

      while (v30);
    }

    v79 = v28;
    if (v11)
    {
      v76 = v11;
      if (v12)
      {
        v31 = v12 - 1;
        v32 = (v28 + 2);
        for (i = (v81 + 32); ; i += 40)
        {
          v34 = *(i - 3);
          if (!v34)
          {
            goto LABEL_24;
          }

          v83 = *i;
          v35 = *(i - 1);
          v36 = *(i - 8);
          v37 = *(i - 3);
          v38 = *(i - 4);
          *(v32 + 1) = v38;
          v39 = *(v34 + 80);
          v40 = *(v34 + 88);
          *(v32 - 1) = v39;
          *v32 = v40;
          swift_unknownObjectRetain_n();

          swift_unknownObjectRelease();
          if (!v39)
          {
            break;
          }

          if (v36)
          {
            ObjectType = swift_getObjectType();
            (*(v40 + 8))(v85, v38, a3, ObjectType, v40);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            swift_dynamicCast();
            v37 = v86;
          }

          *(v32 - 4) = v37;
          if (v83)
          {
            v42 = swift_getObjectType();
            (*(v40 + 8))(v85, v38, a3, v42, v40);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            swift_dynamicCast();
            v35 = v86;
          }

          else
          {

            swift_unknownObjectRelease();
          }

          *(v32 - 3) = v35 - v37;
          if (!v31)
          {
            goto LABEL_34;
          }

LABEL_25:
          --v31;
          v32 += 8;
        }

LABEL_24:
        if (!v31)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

LABEL_34:
      v44 = v79;
      v43 = v80;
      sub_1AF5BC044(v76, v77, v12);
LABEL_63:
      ecs_stack_allocator_deallocate(v43[4], v44, v78);
    }

    v60 = a1[6];
    v61 = a1[7];
    if (v60 == v61)
    {
LABEL_62:
      v44 = v79;
      v43 = v80;
      sub_1AF5BC500(v7[29], v7[30]);
      goto LABEL_63;
    }

    v62 = (v81 + 40 * v60 + 32);
    v63 = (v28 + 2);
    for (j = ~v60 + v61; ; --j)
    {
      v65 = *(v62 - 3);
      if (!v65)
      {
        goto LABEL_52;
      }

      v66 = *v62;
      v67 = *(v62 - 1);
      v68 = *(v62 - 8);
      v69 = *(v62 - 3);
      v70 = *(v62 - 4);
      *(v63 + 1) = v70;
      v71 = *(v65 + 80);
      v72 = *(v65 + 88);
      *(v63 - 1) = v71;
      *v63 = v72;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v71)
      {
        break;
      }

      if (v68)
      {
        v73 = swift_getObjectType();
        (*(v72 + 8))(v85, v70, a3, v73, v72);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        swift_dynamicCast();
        v69 = v86;
      }

      *(v63 - 4) = v69;
      if (v66)
      {
        v74 = swift_getObjectType();
        (*(v72 + 8))(v85, v70, a3, v74, v72);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        swift_dynamicCast();
        v67 = v86;
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v7 = v82;
      *(v63 - 3) = v67 - v69;
      if (!j)
      {
        goto LABEL_62;
      }

LABEL_53:
      v62 += 40;
      v63 += 8;
    }

    v7 = v82;
LABEL_52:
    if (!j)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  a2[9] = v6;
  a2[10] = &off_1F2511570;
  v14 = sub_1AF64B110(v6, &off_1F2511570, v11, v10, v12, v13);
  if (!v11)
  {
    v45 = a1[6];
    v46 = a1[7];
    if (v45 == v46)
    {
    }

    v47 = ~v45 + v46;
    v48 = v14 + 32 * v45;
    for (k = (v81 + 40 * v45 + 32); ; k += 40)
    {
      v50 = *(k - 3);
      if (!v50)
      {
        goto LABEL_38;
      }

      v51 = *k;
      v52 = *(k - 1);
      v53 = *(k - 8);
      v54 = *(k - 3);
      v55 = *(k - 4);
      *(v48 + 24) = v55;
      v56 = *(v50 + 80);
      v57 = *(v50 + 88);
      *(v48 + 8) = v56;
      *(v48 + 16) = v57;
      swift_unknownObjectRetain_n();

      swift_unknownObjectRelease();
      if (!v56)
      {
        break;
      }

      if (v53)
      {
        v58 = swift_getObjectType();
        (*(v57 + 8))(v85, v55, a3, v58, v57);
        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        swift_dynamicCast();
        v54 = v86;
      }

      *v48 = v54;
      if (v51)
      {
        v59 = swift_getObjectType();
        (*(v57 + 8))(v85, v55, a3, v59, v57);
        swift_unknownObjectRelease();

        sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        swift_dynamicCast();
        v52 = v86;
      }

      else
      {

        swift_unknownObjectRelease();
      }

      *(v48 + 4) = v52 - v54;
      if (!v47)
      {
      }

LABEL_39:
      --v47;
      v48 += 32;
    }

LABEL_38:
    if (!v47)
    {
    }

    goto LABEL_39;
  }

  if (v12)
  {
    v15 = (v14 + 16);
    v16 = (v81 + 32);
    do
    {
      v17 = *(v16 - 3);
      if (v17)
      {
        v18 = *(v16 - 3);
        v19 = *(v16 - 8);
        v20 = *(v16 - 1);
        v21 = *v16;
        v22 = *(v16 - 4);
        *(v15 + 1) = v22;
        v23 = *(v17 + 80);
        v24 = *(v17 + 88);
        *(v15 - 1) = v23;
        *v15 = v24;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRelease();
        if (v23)
        {
          if (v19)
          {
            v25 = swift_getObjectType();
            (*(v24 + 8))(v85, v22, a3, v25, v24);
            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            swift_dynamicCast();
            v18 = v86;
          }

          *(v15 - 4) = v18;
          if (v21)
          {
            v26 = swift_getObjectType();
            (*(v24 + 8))(v85, v22, a3, v26, v24);
            swift_unknownObjectRelease();

            sub_1AFD55360(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
            swift_dynamicCast();
            v20 = v86;
          }

          else
          {

            swift_unknownObjectRelease();
          }

          *(v15 - 3) = v20 - v18;
        }

        else
        {
        }
      }

      v15 += 8;
      v16 += 40;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AFD1EA08(void *a1, uint64_t *a2)
{
  sub_1AF5C5688();
  v4 = v3;
  v5 = a1[1];
  sub_1AF63A63C();
  v7 = v6;
  v9 = a1[11];
  v8 = a1[12];
  v10 = a1[13];
  v11 = a1[2];

  v12 = sub_1AF64B110(v7, &off_1F2510F68, v9, v8, v10, v11);
  sub_1AF649C6C(*(v5 + 40), v4, &v210);
  v171 = v5;
  if (v210 == 1)
  {
    a2[9] = v4;
    a2[10] = &off_1F2511450;
    v13 = sub_1AF64B110(v4, &off_1F2511450, v9, v8, v10, v11);
    if (v9)
    {
      if (v10)
      {
        v14 = (v13 + 32);
        do
        {
          v15 = *(v12 + 16);
          v210 = *v12;
          v211 = v15;
          v16 = *(v12 + 32);
          v17 = *(v12 + 48);
          v18 = *(v12 + 80);
          v214 = *(v12 + 64);
          v215 = v18;
          v212 = v16;
          v213 = v17;
          v19 = *(v12 + 96);
          v20 = *(v12 + 112);
          v21 = *(v12 + 128);
          v219 = *(v12 + 144);
          v217 = v20;
          v218 = v21;
          v216 = v19;
          v22 = *(&v210 + 1);
          if (*(&v210 + 1))
          {
            v14[2] = v210;
            v23 = *(v22 + 80);
            v24 = *(v22 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v14 = v23;
            v14[1] = v24;
            v25 = *(&v211 + 1);
            v26 = v212;
            v27 = v213;
            sub_1AFD531F8(&v210, v209, sub_1AF63A63C);
            v181 = sub_1AF8BF278(v25, v26, *(&v26 + 1), v27);
            v186 = v28;
            v220 = v29;
            v199 = v30;
            v31 = sub_1AF8BF278(*(&v213 + 1), v214, *(&v214 + 1), v215);
            v174 = v32;
            v178 = v31;
            v34 = v33;
            v191 = v35;
            v36 = sub_1AF8BF278(*(&v215 + 1), v216, *(&v216 + 1), v217);
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v43 = sub_1AF8BF278(*(&v217 + 1), v218, *(&v218 + 1), v219);
            v192 = sub_1AF8BF334(v181, v186, v220, v199, v178, v174, v34, v191, v36, v38, v40, v42, v43, v44, v45, v46);
            v200 = v47;

            LOBYTE(v38) = v211;
            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v48 = sub_1AF8BF6C8(v192, v200, v38);

            sub_1AFD53198(&v210, sub_1AF63A63C);

            *(v14 - 4) = v48;
          }

          v12 += 152;
          v14 += 8;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v91 = a1[6];
      v92 = a1[7];
      v93 = v92 - v91;
      if (v92 != v91)
      {
        v94 = v12 + 152 * v91;
        v95 = (v13 + (v91 << 6) + 32);
        do
        {
          v96 = *(v94 + 16);
          v210 = *v94;
          v211 = v96;
          v97 = *(v94 + 32);
          v98 = *(v94 + 48);
          v99 = *(v94 + 80);
          v214 = *(v94 + 64);
          v215 = v99;
          v212 = v97;
          v213 = v98;
          v100 = *(v94 + 96);
          v101 = *(v94 + 112);
          v102 = *(v94 + 128);
          v219 = *(v94 + 144);
          v217 = v101;
          v218 = v102;
          v216 = v100;
          v103 = *(&v210 + 1);
          if (*(&v210 + 1))
          {
            v95[2] = v210;
            v104 = *(v103 + 80);
            v105 = *(v103 + 88);
            v206 = v93;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v95 = v104;
            v95[1] = v105;
            v106 = *(&v211 + 1);
            v107 = v212;
            v108 = v213;
            sub_1AFD531F8(&v210, v209, sub_1AF63A63C);
            v187 = sub_1AF8BF278(v106, v107, *(&v107 + 1), v108);
            v183 = v109;
            v220 = v110;
            v202 = v111;
            v112 = sub_1AF8BF278(*(&v213 + 1), v214, *(&v214 + 1), v215);
            v176 = v113;
            v179 = v114;
            v195 = v115;
            v116 = sub_1AF8BF278(*(&v215 + 1), v216, *(&v216 + 1), v217);
            v118 = v117;
            v120 = v119;
            LOBYTE(v106) = v121;
            v122 = sub_1AF8BF278(*(&v217 + 1), v218, *(&v218 + 1), v219);
            v196 = sub_1AF8BF334(v187, v183, v220, v202, v112, v176, v179, v195, v116, v118, v120, v106, v122, v123, v124, v125);
            v203 = v126;

            LOBYTE(v106) = v211;
            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v127 = sub_1AF8BF6C8(v196, v203, v106);

            sub_1AFD53198(&v210, sub_1AF63A63C);

            v93 = v206;
            *(v95 - 4) = v127;
          }

          v94 += 152;
          v95 += 8;
          --v93;
        }

        while (v93);
      }
    }
  }

  else
  {
    v172 = v8;
    v49 = v10;
    if (!v9)
    {
      v49 = a1[7] - a1[6];
    }

    v169 = v49;
    v167 = v49 << 6;
    v50 = ecs_stack_allocator_allocate(a2[4], v49 << 6, 16);
    v51 = v169;
    v168 = v50;
    if (v169)
    {
      v52 = v50;
      do
      {
        *(v52 + 1) = 0uLL;
        *(v52 + 2) = 0uLL;
        *v52 = 0uLL;
        v52[6] = 0xFFFFFFFFLL;
        v52 += 8;
        --v51;
      }

      while (v51);
    }

    v53 = v8;
    if (v9)
    {
      v208 = v10;
      if (v10)
      {
        v54 = v50 + 4;
        v55 = v208;
        do
        {
          v56 = *(v12 + 16);
          v210 = *v12;
          v211 = v56;
          v57 = *(v12 + 32);
          v58 = *(v12 + 48);
          v59 = *(v12 + 80);
          v214 = *(v12 + 64);
          v215 = v59;
          v212 = v57;
          v213 = v58;
          v60 = *(v12 + 96);
          v61 = *(v12 + 112);
          v62 = *(v12 + 128);
          v219 = *(v12 + 144);
          v217 = v61;
          v218 = v62;
          v216 = v60;
          v63 = *(&v210 + 1);
          if (*(&v210 + 1))
          {
            v54[2] = v210;
            v64 = *(v63 + 80);
            v65 = *(v63 + 88);
            v201 = v55;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v54 = v64;
            v54[1] = v65;
            v66 = *(&v211 + 1);
            v67 = v212;
            v68 = v213;
            sub_1AFD531F8(&v210, v209, sub_1AF63A63C);
            v182 = sub_1AF8BF278(v66, v67, *(&v67 + 1), v68);
            v185 = v69;
            v175 = v70;
            v193 = v71;
            v173 = sub_1AF8BF278(*(&v213 + 1), v214, *(&v214 + 1), v215);
            v73 = v72;
            v220 = v74;
            v189 = v75;
            v76 = sub_1AF8BF278(*(&v215 + 1), v216, *(&v216 + 1), v217);
            v78 = v77;
            v80 = v79;
            v82 = v81;
            v83 = sub_1AF8BF278(*(&v217 + 1), v218, *(&v218 + 1), v219);
            v190 = sub_1AF8BF334(v182, v175, v185, v193, v173, v73, v220, v189, v76, v78, v80, v82, v83, v84, v85, v86);
            v194 = v87;

            LOBYTE(v78) = v211;
            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v88 = sub_1AF8BF6C8(v190, v194, v78);

            sub_1AFD53198(&v210, sub_1AF63A63C);

            v55 = v201;
            v53 = v172;
            *(v54 - 4) = v88;
          }

          v12 += 152;
          v54 += 8;
          --v55;
        }

        while (v55);
      }

      v89 = v168;
      v90 = a2;
      sub_1AF5BD2CC(v9, v53, v208, v168, v169, a2);
    }

    else
    {
      v128 = a1[6];
      v129 = a1[7];
      v130 = v129 - v128;
      if (v129 != v128)
      {
        v132 = v12 + 152 * v128;
        v133 = v50 + 4;
        do
        {
          v134 = *(v132 + 16);
          v210 = *v132;
          v211 = v134;
          v135 = *(v132 + 32);
          v136 = *(v132 + 48);
          v137 = *(v132 + 80);
          v214 = *(v132 + 64);
          v215 = v137;
          v212 = v135;
          v213 = v136;
          v138 = *(v132 + 96);
          v139 = *(v132 + 112);
          v140 = *(v132 + 128);
          v219 = *(v132 + 144);
          v217 = v139;
          v218 = v140;
          v216 = v138;
          v141 = *(&v210 + 1);
          if (*(&v210 + 1))
          {
            v133[2] = v210;
            v142 = *(v141 + 80);
            v143 = *(v141 + 88);
            v207 = v130;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v133 = v142;
            v133[1] = v143;
            v144 = *(&v211 + 1);
            v145 = v212;
            v146 = v213;
            sub_1AFD531F8(&v210, v209, sub_1AF63A63C);
            v188 = sub_1AF8BF278(v144, v145, *(&v145 + 1), v146);
            v184 = v147;
            v220 = v148;
            v204 = v149;
            v150 = sub_1AF8BF278(*(&v213 + 1), v214, *(&v214 + 1), v215);
            v177 = v151;
            v180 = v150;
            v153 = v152;
            v197 = v154;
            v155 = sub_1AF8BF278(*(&v215 + 1), v216, *(&v216 + 1), v217);
            v157 = v156;
            v159 = v158;
            LOBYTE(v144) = v160;
            v161 = sub_1AF8BF278(*(&v217 + 1), v218, *(&v218 + 1), v219);
            v198 = sub_1AF8BF334(v188, v184, v220, v204, v180, v177, v153, v197, v155, v157, v159, v144, v161, v162, v163, v164);
            v205 = v165;

            LOBYTE(v144) = v211;
            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v166 = sub_1AF8BF6C8(v198, v205, v144);

            sub_1AFD53198(&v210, sub_1AF63A63C);

            v130 = v207;
            *(v133 - 4) = v166;
          }

          v132 += 152;
          v133 += 8;
          --v130;
        }

        while (v130);
      }

      v90 = a2;
      v89 = v168;
      sub_1AF5BD31C(*(v171 + 232), *(v171 + 240), v168, v169, a2);
    }

    ecs_stack_allocator_deallocate(v90[4], v89, v167);
  }
}

uint64_t sub_1AFD1F580(void *a1, uint64_t *a2)
{
  sub_1AF5C5758();
  v4 = v3;
  v5 = a1[1];
  sub_1AF63A530();
  v7 = v6;
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[2];

  v12 = sub_1AF64B110(v7, &off_1F2510F68, v8, v9, v10, v11);
  sub_1AF649C6C(v5[5], v4, &v187);
  v159 = v5;
  if (v187 == 1)
  {
    a2[9] = v4;
    a2[10] = &off_1F2511450;
    v13 = sub_1AF64B110(v4, &off_1F2511450, v8, v9, v10, v11);
    if (v8)
    {
      v14 = v10;
      if (v10)
      {
        v15 = (v13 + 32);
        do
        {
          v16 = *(v12 + 16);
          v187 = *v12;
          v188 = v16;
          v17 = *(v12 + 32);
          v18 = *(v12 + 48);
          v19 = *(v12 + 80);
          v191 = *(v12 + 64);
          v192 = v19;
          v189 = v17;
          v190 = v18;
          v20 = *(v12 + 96);
          v21 = *(v12 + 112);
          v22 = *(v12 + 128);
          v196 = *(v12 + 144);
          v194 = v21;
          v195 = v22;
          v193 = v20;
          v23 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            v15[2] = v187;
            v24 = *(v23 + 80);
            v25 = *(v23 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v15 = v24;
            v15[1] = v25;
            v26 = *(&v188 + 1);
            v27 = v189;
            v197 = v14;
            v28 = v190;
            sub_1AFD531F8(&v187, v186, sub_1AF63A530);
            v162 = sub_1AF8BF278(v26, v27, *(&v27 + 1), v28);
            v166 = v29;
            v31 = v30;
            v179 = v32;
            v33 = sub_1AF8BF278(*(&v190 + 1), v191, *(&v191 + 1), v192);
            v35 = v34;
            v37 = v36;
            v171 = v38;
            v39 = sub_1AF8BF278(*(&v192 + 1), v193, *(&v193 + 1), v194);
            v172 = sub_1AF8BF790(v162, v166, v31, v179, v33, v35, v37, v171, v39, v40, v41, v42);
            v180 = v43;
            v14 = v197;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v44 = sub_1AF8BFA5C(v172, v180);

            sub_1AFD53198(&v187, sub_1AF63A530);

            *(v15 - 4) = v44;
          }

          v12 += 152;
          v15 += 8;
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      v84 = a1[6];
      v85 = a1[7];
      v86 = v85 - v84;
      if (v85 != v84)
      {
        v87 = v12 + 152 * v84;
        v88 = (v13 + (v84 << 6) + 32);
        do
        {
          v89 = *(v87 + 16);
          v187 = *v87;
          v188 = v89;
          v90 = *(v87 + 32);
          v91 = *(v87 + 48);
          v92 = *(v87 + 80);
          v191 = *(v87 + 64);
          v192 = v92;
          v189 = v90;
          v190 = v91;
          v93 = *(v87 + 96);
          v94 = *(v87 + 112);
          v95 = *(v87 + 128);
          v196 = *(v87 + 144);
          v194 = v94;
          v195 = v95;
          v193 = v93;
          v96 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            v88[2] = v187;
            v97 = *(v96 + 80);
            v98 = *(v96 + 88);
            v197 = v86;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v88 = v97;
            v88[1] = v98;
            v99 = *(&v188 + 1);
            v100 = v189;
            v101 = v190;
            sub_1AFD531F8(&v187, v186, sub_1AF63A530);
            v164 = sub_1AF8BF278(v99, v100, *(&v100 + 1), v101);
            v167 = v102;
            v104 = v103;
            v182 = v105;
            v106 = sub_1AF8BF278(*(&v190 + 1), v191, *(&v191 + 1), v192);
            v108 = v107;
            v110 = v109;
            v175 = v111;
            v112 = sub_1AF8BF278(*(&v192 + 1), v193, *(&v193 + 1), v194);
            v176 = sub_1AF8BF790(v164, v167, v104, v182, v106, v108, v110, v175, v112, v113, v114, v115);
            v183 = v116;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v117 = sub_1AF8BFA5C(v176, v183);

            sub_1AFD53198(&v187, sub_1AF63A530);

            v86 = v197;
            *(v88 - 4) = v117;
          }

          v87 += 152;
          v88 += 8;
          --v86;
        }

        while (v86);
      }
    }
  }

  else
  {
    v160 = v9;
    v45 = v10;
    if (!v8)
    {
      v45 = a1[7] - a1[6];
    }

    v157 = v45;
    v155 = v45 << 6;
    v46 = ecs_stack_allocator_allocate(a2[4], v45 << 6, 16);
    v47 = v157;
    v156 = v46;
    if (v157)
    {
      v48 = v46;
      do
      {
        *(v48 + 1) = 0uLL;
        *(v48 + 2) = 0uLL;
        *v48 = 0uLL;
        v48[6] = 0xFFFFFFFFLL;
        v48 += 8;
        --v47;
      }

      while (v47);
    }

    if (v8)
    {
      v154 = v8;
      v197 = v10;
      v49 = v9;
      if (v10)
      {
        v50 = v46 + 4;
        v51 = v197;
        do
        {
          v52 = *(v12 + 16);
          v187 = *v12;
          v188 = v52;
          v53 = *(v12 + 32);
          v54 = *(v12 + 48);
          v55 = *(v12 + 80);
          v191 = *(v12 + 64);
          v192 = v55;
          v189 = v53;
          v190 = v54;
          v56 = *(v12 + 96);
          v57 = *(v12 + 112);
          v58 = *(v12 + 128);
          v196 = *(v12 + 144);
          v194 = v57;
          v195 = v58;
          v193 = v56;
          v59 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            v50[2] = v187;
            v60 = *(v59 + 80);
            v61 = *(v59 + 88);
            v181 = v51;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v50 = v60;
            v50[1] = v61;
            v62 = *(&v188 + 1);
            v64 = *(&v189 + 1);
            v63 = v189;
            v65 = v190;
            sub_1AFD531F8(&v187, v186, sub_1AF63A530);
            v161 = sub_1AF8BF278(v62, v63, v64, v65);
            v163 = v66;
            v68 = v67;
            v173 = v69;
            v70 = sub_1AF8BF278(*(&v190 + 1), v191, *(&v191 + 1), v192);
            v72 = v71;
            v74 = v73;
            v169 = v75;
            v76 = sub_1AF8BF278(*(&v192 + 1), v193, *(&v193 + 1), v194);
            v170 = sub_1AF8BF790(v161, v163, v68, v173, v70, v72, v74, v169, v76, v77, v78, v79);
            v174 = v80;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v49 = v160;
            v81 = sub_1AF8BFA5C(v170, v174);

            sub_1AFD53198(&v187, sub_1AF63A530);

            v51 = v181;
            *(v50 - 4) = v81;
          }

          v12 += 152;
          v50 += 8;
          --v51;
        }

        while (v51);
      }

      v82 = v156;
      v83 = a2;
      sub_1AF5BD350(v154, v49, v197, v156, v157, a2);
    }

    else
    {
      v118 = a1[6];
      v119 = a1[7];
      v120 = v119 - v118;
      if (v119 != v118)
      {
        v122 = v12 + 152 * v118;
        v123 = v46 + 4;
        do
        {
          v124 = *(v122 + 16);
          v187 = *v122;
          v188 = v124;
          v125 = *(v122 + 32);
          v126 = *(v122 + 48);
          v127 = *(v122 + 80);
          v191 = *(v122 + 64);
          v192 = v127;
          v189 = v125;
          v190 = v126;
          v128 = *(v122 + 96);
          v129 = *(v122 + 112);
          v130 = *(v122 + 128);
          v196 = *(v122 + 144);
          v194 = v129;
          v195 = v130;
          v193 = v128;
          v131 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            v123[2] = v187;
            v132 = *(v131 + 80);
            v133 = *(v131 + 88);
            v197 = v120;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v123 = v132;
            v123[1] = v133;
            v134 = *(&v188 + 1);
            v136 = *(&v189 + 1);
            v135 = v189;
            v137 = v190;
            sub_1AFD531F8(&v187, v186, sub_1AF63A530);
            v165 = sub_1AF8BF278(v134, v135, v136, v137);
            v168 = v138;
            v140 = v139;
            v184 = v141;
            v142 = sub_1AF8BF278(*(&v190 + 1), v191, *(&v191 + 1), v192);
            v144 = v143;
            v146 = v145;
            v177 = v147;
            v148 = sub_1AF8BF278(*(&v192 + 1), v193, *(&v193 + 1), v194);
            v178 = sub_1AF8BF790(v165, v168, v140, v184, v142, v144, v146, v177, v148, v149, v150, v151);
            v185 = v152;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v153 = sub_1AF8BFA5C(v178, v185);

            sub_1AFD53198(&v187, sub_1AF63A530);

            v120 = v197;
            v5 = v159;
            *(v123 - 4) = v153;
          }

          v122 += 152;
          v123 += 8;
          --v120;
        }

        while (v120);
      }

      v82 = v156;
      v83 = a2;
      sub_1AF5BD840(v5[29], v5[30], v156, v157, a2);
    }

    ecs_stack_allocator_deallocate(v83[4], v82, v155);
  }
}

uint64_t sub_1AFD1FFB8(void *a1, uint64_t *a2)
{
  sub_1AF5C5828();
  v4 = v3;
  v5 = a1[1];
  sub_1AF71970C();
  v7 = v6;
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[2];

  v12 = sub_1AF64B110(v7, &off_1F2510F68, v8, v9, v10, v11);
  sub_1AF649C6C(*(v5 + 40), v4, &v141);
  v134 = v5;
  if (v141 == 1)
  {
    a2[9] = v4;
    a2[10] = &off_1F2511450;
    v13 = sub_1AF64B110(v4, &off_1F2511450, v8, v9, v10, v11);
    if (v8)
    {
      if (v10)
      {
        v14 = v10;
        v15 = (v13 + 24);
        do
        {
          v16 = *(v12 + 16);
          v141 = *v12;
          v142 = v16;
          v17 = *(v12 + 32);
          v18 = *(v12 + 48);
          v19 = *(v12 + 80);
          v145 = *(v12 + 64);
          v146 = v19;
          v143 = v17;
          v144 = v18;
          v20 = *(v12 + 96);
          v21 = *(v12 + 112);
          v22 = *(v12 + 128);
          v150 = *(v12 + 144);
          v148 = v21;
          v149 = v22;
          v147 = v20;
          v23 = *(&v141 + 1);
          if (*(&v141 + 1))
          {
            v15[2] = v141;
            v24 = *(v23 + 80);
            v25 = *(v23 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v15 = v24;
            v15[1] = v25;
            v26 = *(&v142 + 1);
            v27 = v143;
            v28 = v144;
            sub_1AFD531F8(&v141, v140, sub_1AF71970C);
            v29 = sub_1AF8BF278(v26, v27, *(&v27 + 1), v28);
            v31 = v30;
            v32 = sub_1AF8BF278(*(&v144 + 1), v145, *(&v145 + 1), v146);
            v151 = v14;
            v37 = sub_1AF8BFAFC(v29, v31, v32, v33, v34, v35, v36);
            v137 = v38;

            v14 = v151;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v39 = sub_1AF8BFD34(v37, v137);

            sub_1AFD53198(&v141, sub_1AF71970C);

            *(v15 - 3) = v39;
          }

          v15 += 6;
          v12 += 152;
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      v72 = a1[6];
      v73 = a1[7];
      v74 = v73 - v72;
      if (v73 != v72)
      {
        v75 = v12 + 152 * v72;
        v76 = (v13 + 48 * v72 + 24);
        do
        {
          v77 = *(v75 + 16);
          v141 = *v75;
          v142 = v77;
          v78 = *(v75 + 32);
          v79 = *(v75 + 48);
          v80 = *(v75 + 80);
          v145 = *(v75 + 64);
          v146 = v80;
          v143 = v78;
          v144 = v79;
          v81 = *(v75 + 96);
          v82 = *(v75 + 112);
          v83 = *(v75 + 128);
          v150 = *(v75 + 144);
          v148 = v82;
          v149 = v83;
          v147 = v81;
          v84 = *(&v141 + 1);
          if (*(&v141 + 1))
          {
            v76[2] = v141;
            v85 = *(v84 + 80);
            v86 = *(v84 + 88);
            v151 = v74;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v76 = v85;
            v76[1] = v86;
            v87 = *(&v142 + 1);
            v88 = v143;
            v89 = v144;
            sub_1AFD531F8(&v141, v140, sub_1AF71970C);
            v90 = sub_1AF8BF278(v87, v88, *(&v88 + 1), v89);
            v92 = v91;
            v93 = sub_1AF8BF278(*(&v144 + 1), v145, *(&v145 + 1), v146);
            v98 = sub_1AF8BFAFC(v90, v92, v93, v94, v95, v96, v97);
            v138 = v99;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v100 = sub_1AF8BFD34(v98, v138);

            sub_1AFD53198(&v141, sub_1AF71970C);

            v74 = v151;
            *(v76 - 3) = v100;
          }

          v75 += 152;
          v76 += 6;
          --v74;
        }

        while (v74);
      }
    }
  }

  else
  {
    v135 = v9;
    v151 = v10;
    if (!v8)
    {
      v10 = a1[7] - a1[6];
    }

    v40 = ecs_stack_allocator_allocate(a2[4], 48 * v10, 8);
    if (v10)
    {
      v41 = v40;
      v42 = v10;
      do
      {
        v41[4] = 0;
        *v41 = 0uLL;
        *(v41 + 1) = 0uLL;
        v41[5] = 0xFFFFFFFFLL;
        v41 += 6;
        --v42;
      }

      while (v42);
    }

    v132 = v40;
    if (v8)
    {
      v131 = v8;
      v43 = v9;
      if (v151)
      {
        v44 = v40 + 3;
        v45 = v151;
        do
        {
          v46 = *(v12 + 16);
          v141 = *v12;
          v142 = v46;
          v47 = *(v12 + 32);
          v48 = *(v12 + 48);
          v49 = *(v12 + 80);
          v145 = *(v12 + 64);
          v146 = v49;
          v143 = v47;
          v144 = v48;
          v50 = *(v12 + 96);
          v51 = *(v12 + 112);
          v52 = *(v12 + 128);
          v150 = *(v12 + 144);
          v148 = v51;
          v149 = v52;
          v147 = v50;
          v53 = *(&v141 + 1);
          if (*(&v141 + 1))
          {
            v44[2] = v141;
            v54 = *(v53 + 80);
            v55 = *(v53 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v44 = v54;
            v44[1] = v55;
            v56 = *(&v142 + 1);
            v57 = v143;
            v58 = v144;
            sub_1AFD531F8(&v141, v140, sub_1AF71970C);
            v59 = sub_1AF8BF278(v56, v57, *(&v57 + 1), v58);
            v61 = v60;
            v62 = sub_1AF8BF278(*(&v144 + 1), v145, *(&v145 + 1), v146);
            v67 = sub_1AF8BFAFC(v59, v61, v62, v63, v64, v65, v66);
            v136 = v68;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v69 = sub_1AF8BFD34(v67, v136);

            sub_1AFD53198(&v141, sub_1AF71970C);

            *(v44 - 3) = v69;
            v43 = v135;
          }

          v44 += 6;
          v12 += 152;
          --v45;
        }

        while (v45);
      }

      v70 = v132;
      v71 = a2;
      sub_1AF5BDD20(v131, v43, v151);
    }

    else
    {
      v101 = a1[6];
      v102 = a1[7];
      v103 = v102 - v101;
      if (v102 != v101)
      {
        v105 = v12 + 152 * v101;
        v106 = v40 + 3;
        do
        {
          v107 = *(v105 + 16);
          v141 = *v105;
          v142 = v107;
          v108 = *(v105 + 32);
          v109 = *(v105 + 48);
          v110 = *(v105 + 80);
          v145 = *(v105 + 64);
          v146 = v110;
          v143 = v108;
          v144 = v109;
          v111 = *(v105 + 96);
          v112 = *(v105 + 112);
          v113 = *(v105 + 128);
          v150 = *(v105 + 144);
          v148 = v112;
          v149 = v113;
          v147 = v111;
          v114 = *(&v141 + 1);
          if (*(&v141 + 1))
          {
            v106[2] = v141;
            v115 = *(v114 + 80);
            v116 = *(v114 + 88);
            v151 = v103;

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v106 = v115;
            v106[1] = v116;
            v117 = *(&v142 + 1);
            v118 = v143;
            v119 = v144;
            sub_1AFD531F8(&v141, v140, sub_1AF71970C);
            v120 = sub_1AF8BF278(v117, v118, *(&v118 + 1), v119);
            v122 = v121;
            v123 = sub_1AF8BF278(*(&v144 + 1), v145, *(&v145 + 1), v146);
            v128 = sub_1AF8BFAFC(v120, v122, v123, v124, v125, v126, v127);
            v139 = v129;

            type metadata accessor for KeyframeTimelineRuntime();
            swift_allocObject();
            v130 = sub_1AF8BFD34(v128, v139);

            sub_1AFD53198(&v141, sub_1AF71970C);

            v103 = v151;
            *(v106 - 3) = v130;
          }

          v105 += 152;
          v106 += 6;
          --v103;
        }

        while (v103);
      }

      v71 = a2;
      v70 = v132;
      sub_1AF5BE1C4(*(v134 + 232), *(v134 + 240));
    }

    ecs_stack_allocator_deallocate(v71[4], v70, 48 * v10);
  }
}

uint64_t sub_1AFD20898(void *a1, uint64_t *a2)
{
  sub_1AFD533F0(0, qword_1EB633490, type metadata accessor for KeyframeAnimationRuntime);
  v5 = v4;
  v6 = a1[1];
  sub_1AFD533F0(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  v8 = v7;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];

  v142 = sub_1AF64B110(v8, &off_1F2510F68, v10, v9, v11, v12);
  sub_1AF649C6C(v6[5], v5, &v132);
  v125 = v6;
  v128 = v11;
  if (v132 == 1)
  {
    a2[9] = v5;
    a2[10] = &off_1F2511450;
    v126 = sub_1AF64B110(v5, &off_1F2511450, v10, v9, v11, v12);
    if (v10)
    {
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v17 = v142 + 152 * i;
          v18 = *(v17 + 16);
          v132 = *v17;
          v133 = v18;
          v19 = *(v17 + 32);
          v20 = *(v17 + 48);
          v21 = *(v17 + 80);
          v136 = *(v17 + 64);
          v137 = v21;
          v134 = v19;
          v135 = v20;
          v22 = *(v17 + 96);
          v23 = *(v17 + 112);
          v24 = *(v17 + 128);
          v141 = *(v17 + 144);
          v139 = v23;
          v140 = v24;
          v138 = v22;
          v25 = *(&v132 + 1);
          if (*(&v132 + 1))
          {
            v26 = (v126 + 48 * i);
            v26[5] = v132;
            v27 = *(v25 + 80);
            v28 = *(v25 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v26[3] = v27;
            v26[4] = v28;
            v29 = *(&v133 + 1);
            v31 = *(&v134 + 1);
            v30 = v134;
            if (*(&v134 + 1))
            {
              v32 = v135;
              v33 = (*(&v134 + 1) + 49);
              v34 = *(*(&v134 + 1) + 16) + 1;
              while (--v34)
              {
                v35 = *v33;
                v33 += 24;
                if (v35 != 1)
                {
                  sub_1AFD53450(&v132, v131);
                  v29 = sub_1AF8BDFB0(v29, v30, v31, v32, 0.033333);
                  v30 = v36;
                  goto LABEL_7;
                }
              }

              sub_1AFD53450(&v132, v131);
            }

            else
            {
              sub_1AFD53450(&v132, v131);
            }

LABEL_7:
            type metadata accessor for KeyframeTimelineRuntime();
            v14 = swift_allocObject();
            *(v14 + 80) = 1;
            *(v14 + 32) = 4;
            *(v14 + 48) = sub_1AF8BE694;
            *(v14 + 56) = 0;
            *(v14 + 64) = sub_1AF8BE2EC;
            *(v14 + 72) = 0;
            v15 = 4 * *(v29 + 2);

            v16 = swift_slowAlloc();
            memmove(v16, v29 + 32, v15);
            *(v14 + 16) = v16;
            *(v14 + 24) = &v16[v15];
            *(v14 + 40) = v30;

            sub_1AFD534D0(&v132);

            *v26 = v14;
            v11 = v128;
          }
        }
      }
    }

    else
    {
      v68 = a1[6];
      v67 = a1[7];
      v129 = v67;
      while (v68 != v67)
      {
        v72 = v142 + 152 * v68;
        v73 = *(v72 + 16);
        v132 = *v72;
        v133 = v73;
        v74 = *(v72 + 32);
        v75 = *(v72 + 48);
        v76 = *(v72 + 80);
        v136 = *(v72 + 64);
        v137 = v76;
        v134 = v74;
        v135 = v75;
        v77 = *(v72 + 96);
        v78 = *(v72 + 112);
        v79 = *(v72 + 128);
        v141 = *(v72 + 144);
        v139 = v78;
        v140 = v79;
        v138 = v77;
        v80 = *(&v132 + 1);
        if (*(&v132 + 1))
        {
          v81 = (v126 + 48 * v68);
          v81[5] = v132;
          v82 = *(v80 + 80);
          v83 = *(v80 + 88);

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v81[3] = v82;
          v81[4] = v83;
          v84 = *(&v133 + 1);
          v86 = *(&v134 + 1);
          v85 = v134;
          if (*(&v134 + 1))
          {
            v87 = v135;
            v88 = (*(&v134 + 1) + 49);
            v89 = *(*(&v134 + 1) + 16) + 1;
            while (--v89)
            {
              v90 = *v88;
              v88 += 24;
              if (v90 != 1)
              {
                sub_1AFD53450(&v132, v131);
                v84 = sub_1AF8BDFB0(v84, v85, v86, v87, 0.033333);
                v85 = v91;
                goto LABEL_40;
              }
            }

            sub_1AFD53450(&v132, v131);
          }

          else
          {
            sub_1AFD53450(&v132, v131);
          }

LABEL_40:
          type metadata accessor for KeyframeTimelineRuntime();
          v69 = swift_allocObject();
          *(v69 + 80) = 1;
          *(v69 + 32) = 4;
          *(v69 + 48) = sub_1AF8BE694;
          *(v69 + 56) = 0;
          *(v69 + 64) = sub_1AF8BE2EC;
          *(v69 + 72) = 0;
          v70 = 4 * *(v84 + 2);

          v71 = swift_slowAlloc();
          memmove(v71, v84 + 32, v70);
          *(v69 + 16) = v71;
          *(v69 + 24) = &v71[v70];
          *(v69 + 40) = v85;

          sub_1AFD534D0(&v132);

          *v81 = v69;
        }

        ++v68;
        v67 = v129;
      }
    }
  }

  else
  {
    v123 = v9;
    v37 = v11;
    v120 = v10;
    if (!v10)
    {
      v37 = a1[7] - a1[6];
    }

    v121 = v37;
    v119 = 48 * v37;
    v38 = ecs_stack_allocator_allocate(a2[4], 48 * v37, 8);
    v39 = v121;
    v40 = v38;
    if (v121)
    {
      v41 = v38 + 5;
      do
      {
        *(v41 - 6) = 0;
        *(v41 - 5) = 0uLL;
        *(v41 - 1) = 0uLL;
        *v41 = 0xFFFFFFFFLL;
        v41 += 6;
        --v39;
      }

      while (v39);
    }

    v122 = a2;
    v127 = v38;
    v42 = v9;
    if (v10)
    {
      if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          v47 = v142 + 152 * j;
          v48 = *(v47 + 16);
          v132 = *v47;
          v133 = v48;
          v49 = *(v47 + 32);
          v50 = *(v47 + 48);
          v51 = *(v47 + 80);
          v136 = *(v47 + 64);
          v137 = v51;
          v134 = v49;
          v135 = v50;
          v52 = *(v47 + 96);
          v53 = *(v47 + 112);
          v54 = *(v47 + 128);
          v141 = *(v47 + 144);
          v139 = v53;
          v140 = v54;
          v138 = v52;
          v55 = *(&v132 + 1);
          if (*(&v132 + 1))
          {
            v56 = (v40 + 48 * j);
            v56[5] = v132;
            v57 = *(v55 + 80);
            v58 = *(v55 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v56[3] = v57;
            v56[4] = v58;
            v59 = *(&v133 + 1);
            v60 = *(&v134 + 1);
            v61 = v134;
            if (*(&v134 + 1))
            {
              v62 = v135;
              v63 = (*(&v134 + 1) + 49);
              v64 = *(*(&v134 + 1) + 16) + 1;
              while (--v64)
              {
                v65 = *v63;
                v63 += 24;
                if (v65 != 1)
                {
                  sub_1AFD53450(&v132, v131);
                  v59 = sub_1AF8BDFB0(v59, v61, v60, v62, 0.033333);
                  v61 = v66;
                  goto LABEL_26;
                }
              }

              sub_1AFD53450(&v132, v131);
            }

            else
            {
              sub_1AFD53450(&v132, v131);
            }

LABEL_26:
            type metadata accessor for KeyframeTimelineRuntime();
            v44 = swift_allocObject();
            *(v44 + 80) = 1;
            *(v44 + 32) = 4;
            *(v44 + 48) = sub_1AF8BE694;
            *(v44 + 56) = 0;
            *(v44 + 64) = sub_1AF8BE2EC;
            *(v44 + 72) = 0;
            v45 = 4 * *(v59 + 2);

            v46 = swift_slowAlloc();
            memmove(v46, v59 + 32, v45);
            *(v44 + 16) = v46;
            *(v44 + 24) = &v46[v45];
            *(v44 + 40) = v61;

            sub_1AFD534D0(&v132);

            *v56 = v44;
            v40 = v127;
            v11 = v128;
            v42 = v123;
          }
        }
      }

      a2 = v122;
      sub_1AF5BE65C(v120, v42, v11);
    }

    else
    {
      v92 = a1[6];
      v124 = a1[7];
      if (v92 != v124)
      {
        v94 = 0;
        do
        {
          v99 = v142 + 152 * v92;
          v100 = *(v99 + 16);
          v132 = *v99;
          v133 = v100;
          v101 = *(v99 + 32);
          v102 = *(v99 + 48);
          v103 = *(v99 + 80);
          v136 = *(v99 + 64);
          v137 = v103;
          v134 = v101;
          v135 = v102;
          v104 = *(v99 + 96);
          v105 = *(v99 + 112);
          v106 = *(v99 + 128);
          v141 = *(v99 + 144);
          v139 = v105;
          v140 = v106;
          v138 = v104;
          v107 = *(&v132 + 1);
          if (*(&v132 + 1))
          {
            v108 = (v40 + 48 * v94);
            v108[5] = v132;
            v109 = *(v107 + 80);
            v110 = *(v107 + 88);

            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v108[3] = v109;
            v108[4] = v110;
            v111 = *(&v133 + 1);
            v112 = *(&v134 + 1);
            v113 = v134;
            v130 = v108;
            if (*(&v134 + 1))
            {
              v114 = v135;
              v115 = (*(&v134 + 1) + 49);
              v116 = *(*(&v134 + 1) + 16) + 1;
              while (--v116)
              {
                v117 = *v115;
                v115 += 24;
                if (v117 != 1)
                {
                  sub_1AFD53450(&v132, v131);
                  v111 = sub_1AF8BDFB0(v111, v113, v112, v114, 0.033333);
                  v113 = v118;
                  goto LABEL_57;
                }
              }

              sub_1AFD53450(&v132, v131);
            }

            else
            {
              sub_1AFD53450(&v132, v131);
            }

LABEL_57:
            type metadata accessor for KeyframeTimelineRuntime();
            v95 = swift_allocObject();
            *(v95 + 80) = 1;
            *(v95 + 32) = 4;
            *(v95 + 48) = sub_1AF8BE694;
            *(v95 + 56) = 0;
            *(v95 + 64) = sub_1AF8BE2EC;
            *(v95 + 72) = 0;
            v96 = 4 * *(v111 + 2);

            v97 = v113;
            v98 = swift_slowAlloc();
            memmove(v98, v111 + 32, v96);
            *(v95 + 16) = v98;
            *(v95 + 24) = &v98[v96];
            *(v95 + 40) = v97;

            sub_1AFD534D0(&v132);

            *v130 = v95;
            v6 = v125;
            v40 = v127;
            a2 = v122;
          }

          ++v92;
          ++v94;
        }

        while (v92 != v124);
      }

      sub_1AF5BEB1C(v6[29], v6[30]);
    }

    ecs_stack_allocator_deallocate(a2[4], v40, v119);
  }
}

uint64_t sub_1AFD2135C(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = v3;
  v31 = *result;
  v32 = *(result + 16);
  v33 = *(result + 32);
  v25 = *(result + 80);
  if (v25 >= 1)
  {
    v5 = *(result + 40);
    v7 = *(result + 56);
    v6 = *(result + 64);
    v8 = *(result + 72);
    v9 = *(v8 + 32);

    ecs_stack_allocator_push_snapshot(v9);
    v10 = *(v8 + 32);
    if (v7)
    {
      v23 = v6;
      v11 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v12 = (v5 + 24);
      v24 = v11;
      while (1)
      {
        v13 = *(v12 - 6);
        v14 = *(v12 - 5);
        v15 = *(v12 - 4);
        v29 = *v12;
        v30 = *(v12 - 1);
        v27 = v7;
        v28 = v12[1];
        v16 = v12[2];
        v45 = v4;
        if (v11)
        {
          v17 = *(v16 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v16 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);
        v18 = *(v8 + 64);
        v38[0] = *(v8 + 48);
        v38[1] = v18;
        v39 = *(v8 + 80);
        v19 = *(v8 + 32);
        v20 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;

        *(v8 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
        *(v8 + 56) = v20;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;

        v40[0] = v23;
        v40[1] = v16;
        v40[2] = v8;
        v40[3] = v15;
        v40[4] = (v14 - v13 + v15);
        v40[5] = v25;
        v40[6] = v13;
        v40[7] = v14;
        v40[8] = 0;
        v40[9] = 0;
        v41 = 1;
        v42 = v30;
        v43 = v29;
        v44 = v28;

        v21 = v45;
        a3(v40, v8);
        v4 = v21;
        if (v21)
        {
          break;
        }

        v36[0] = v31;
        v36[1] = v32;
        v37 = v33;
        sub_1AF630994(v8, v36, v38);
        sub_1AF62D29C(v16);
        ecs_stack_allocator_pop_snapshot(v10);
        v11 = v24;
        if (v24)
        {
          os_unfair_lock_unlock(*(v16 + 344));
          os_unfair_lock_unlock(*(v16 + 376));
        }

        v12 += 6;
        v7 = v27 - 1;
        if (v27 == 1)
        {
          v10 = *(v8 + 32);
          goto LABEL_15;
        }
      }

      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      sub_1AF630994(v8, v34, v38);
      sub_1AF62D29C(v16);
      ecs_stack_allocator_pop_snapshot(v10);
      if (v24)
      {
        os_unfair_lock_unlock(*(v16 + 344));
        os_unfair_lock_unlock(*(v16 + 376));
      }

      v22 = *(v8 + 32);
    }

    else
    {
LABEL_15:
      v22 = v10;
    }

    ecs_stack_allocator_pop_snapshot(v22);
  }

  return result;
}

uint64_t sub_1AFD21630(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];

  v11 = sub_1AF64B110(&type metadata for PointCacheFromModel, &off_1F2568160, v6, v7, v8, v10);
  sub_1AF649C6C(*(v9 + 40), &type metadata for PointCacheRuntime, &v43);
  if (v43 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v12 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v6, v7, v8, v10);
    if (v6)
    {
      for (; v8; --v8)
      {
        sub_1AFBD9550(v11, v12, a3);
        if (v42)
        {
          break;
        }

        v12 += 4;
        v11 += 48;
      }
    }

    else
    {
      v19 = a1[6];
      v20 = v11 + 48 * v19;
      v21 = &v12[4 * v19];
      v22 = a1[7] - v19 + 1;
      do
      {
        if (!--v22)
        {
          break;
        }

        v23 = v20 + 48;
        v24 = v21 + 4;
        sub_1AFBD9550(v20, v21, a3);
        v21 = v24;
        v20 = v23;
      }

      while (!v42);
    }
  }

  else
  {
    v40 = v9;
    v41 = a2;
    v13 = v8;
    if (!v6)
    {
      v13 = a1[7] - a1[6];
    }

    v38 = v6;
    v14 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
    v39 = 32 * v13;
    v15 = ecs_stack_allocator_allocate(a2[4], 32 * v13, 8);
    v16 = v15;
    v37 = v13;
    if (v13)
    {
      *v15 = v14;
      v15[1] = 0x636143746E696F50;
      v15[2] = 0xEA00000000006568;
      v15[3] = 0;
      v17 = v13 - 1;
      if (v13 != 1)
      {
        v18 = v15 + 7;
        do
        {
          *(v18 - 3) = v14;
          *(v18 - 2) = 0x636143746E696F50;
          *(v18 - 1) = 0xEA00000000006568;
          *v18 = 0;

          v18 += 4;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
    }

    if (v38)
    {
      v25 = v8 + 1;
      v26 = v16;
      while (--v25)
      {
        v27 = v26 + 4;
        sub_1AFBD9550(v11, v26, a3);
        v26 = v27;
        v11 += 48;
        if (v42)
        {
          goto LABEL_27;
        }
      }

      v35 = v41;
      sub_1AF5BEFD0(v38, v7, v8, v16, v37, v41);
    }

    else
    {
      v28 = a1[6];
      v29 = v11 + 48 * v28;
      v30 = a1[7] - v28 + 1;
      v31 = v16;
      while (--v30)
      {
        v32 = v31 + 4;
        v33 = v29 + 48;
        sub_1AFBD9550(v29, v31, a3);
        v29 = v33;
        v31 = v32;
        if (v42)
        {
LABEL_27:
          v34 = *(v41 + 32);
          goto LABEL_32;
        }
      }

      v35 = v41;
      sub_1AF5BF4BC(*(v40 + 232), *(v40 + 240), v16, v37, v41);
    }

    v34 = *(v35 + 32);
LABEL_32:
    ecs_stack_allocator_deallocate(v34, v16, v39);
  }
}

void sub_1AFD21948(__int128 *a1, void *a2)
{
  v3 = v2;
  v31 = *a1;
  v32 = a1[1];
  v33 = *(a1 + 4);
  v25 = *(a1 + 10);
  if (v25 >= 1)
  {
    v4 = *(a1 + 5);
    v5 = *(a1 + 7);
    v6 = *(a1 + 8);
    v7 = *(a1 + 9);
    v8 = *(v7 + 32);
    v26 = a2;
    ecs_stack_allocator_push_snapshot(v8);
    v9 = *(v7 + 32);
    if (v5)
    {
      v23 = v6;
      v10 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = (v4 + 24);
      v24 = v10;
      while (1)
      {
        v12 = *(v11 - 6);
        v13 = *(v11 - 5);
        v14 = *(v11 - 4);
        v29 = *v11;
        v30 = *(v11 - 1);
        v27 = v5;
        v28 = v11[1];
        v15 = v11[2];
        v45 = v3;
        if (v10)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v9);
        v17 = *(v7 + 64);
        v38[0] = *(v7 + 48);
        v38[1] = v17;
        v39 = *(v7 + 80);
        v18 = *(v7 + 32);
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
        v20 = v9;

        *(v7 + 48) = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
        *(v7 + 56) = v19;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;

        v40[0] = v23;
        v40[1] = v15;
        v40[2] = v7;
        v40[3] = v14;
        v40[4] = (v13 - v12 + v14);
        v40[5] = v25;
        v40[6] = v12;
        v40[7] = v13;
        v40[8] = 0;
        v40[9] = 0;
        v41 = 1;
        v42 = v30;
        v43 = v29;
        v44 = v28;
        v21 = v26;
        v22 = v45;
        sub_1AFD21630(v40, v7, v21);
        v3 = v22;
        if (v22)
        {
          break;
        }

        v36[0] = v31;
        v36[1] = v32;
        v37 = v33;
        sub_1AF630994(v7, v36, v38);
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v20);
        v9 = v20;
        v10 = v24;
        if (v24)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        v5 = v27 - 1;
        if (v27 == 1)
        {
          v9 = *(v7 + 32);
          goto LABEL_15;
        }
      }

      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      sub_1AF630994(v7, v34, v38);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v20);
      if (v24)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      ecs_stack_allocator_pop_snapshot(*(v7 + 32));
    }

    else
    {
LABEL_15:
      ecs_stack_allocator_pop_snapshot(v9);
    }
  }
}

uint64_t sub_1AFD21C14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);

  v9 = sub_1AF7064D0(v8, a1);
  sub_1AF649C6C(v7[5], &type metadata for MetalScriptReflection, &v47);
  v10 = v4;
  if (v47 == 1)
  {
    a2[9] = &type metadata for MetalScriptReflection;
    a2[10] = &off_1F2542EE8;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(&type metadata for MetalScriptReflection, &off_1F2542EE8, v11, *(a1 + 96), v12, *(a1 + 16));
    v14 = v13;
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        v16 = *(*(v15 - 8) + 72);
        do
        {
          v17 = *v11++;
          sub_1AF8D1FC8(v7, v17, v9, v14, a3, a4);
          if (v4)
          {
            break;
          }

          ++v14;
          v9 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v29 = *(a1 + 48);
      v28 = *(a1 + 56);
      v30 = (v13 + 8 * v29);
      do
      {
        if (v28 == v29)
        {
          break;
        }

        sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        sub_1AF8D1FC8(v7, v29, v9 + *(*(v31 - 8) + 72) * v29, v30++, a3, a4);
        ++v29;
      }

      while (!v4);
    }
  }

  v18 = *(a1 + 88);
  v19 = *(a1 + 104);
  v44 = v19;
  if (!v18)
  {
    v19 = *(a1 + 56) - *(a1 + 48);
  }

  v41 = *(a1 + 96);
  v20 = sub_1AF42D1F8(MEMORY[0x1E69E7CC0]);
  v42 = a2;
  v21 = ecs_stack_allocator_allocate(a2[4], 8 * v19, 8);
  v43 = v21;
  if (!v19)
  {

    if (v18)
    {
      goto LABEL_15;
    }

LABEL_24:
    v33 = *(a1 + 48);
    v32 = *(a1 + 56);
    v34 = v43;
    while (v32 != v33)
    {
      sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      sub_1AF8D1FC8(v7, v33, v9 + *(*(v35 - 8) + 72) * v33, v34++, a3, a4);
      ++v33;
      if (v10)
      {
LABEL_27:
        v36 = v43;
        v37 = *(v42 + 32);
        goto LABEL_31;
      }
    }

    v39 = v42;
    v38 = v43;
    sub_1AF5BFE70(v7[29], v7[30], v43, v19, v42);
    goto LABEL_30;
  }

  *v21 = v20;
  v22 = v19 - 1;
  if (v19 != 1)
  {
    v23 = v21 + 1;
    do
    {
      *v23++ = v20;

      --v22;
    }

    while (v22);
  }

  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_15:
  v24 = 0;
  v25 = v43;
  while (v44 != v24)
  {
    v26 = v18[v24];
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    sub_1AF8D1FC8(v7, v26, v9 + *(*(v27 - 8) + 72) * v24++, v25++, a3, a4);
    if (v10)
    {
      goto LABEL_27;
    }
  }

  v38 = v43;
  v39 = v42;
  sub_1AF5BF984(v18, v41, v44, v43, v19, v42);
LABEL_30:
  v37 = *(v39 + 32);
  v36 = v38;
LABEL_31:
  ecs_stack_allocator_deallocate(v37, v36, 8 * v19);
}

uint64_t sub_1AFD22048(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = *result;
  v35 = *(result + 16);
  v36 = *(result + 32);
  v29 = *(result + 80);
  if (v29 >= 1)
  {
    v7 = *(result + 40);
    v9 = *(result + 56);
    v8 = *(result + 64);
    v10 = *(result + 72);
    v11 = *(v10 + 32);

    ecs_stack_allocator_push_snapshot(v11);
    v12 = *(v10 + 32);
    if (v9)
    {
      v26 = *(v10 + 32);
      v24 = v8;
      v13 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v14 = (v7 + 24);
      v27 = a3;
      v25 = v13;
      v28 = a2;
      while (1)
      {
        v15 = *(v14 - 6);
        v16 = *(v14 - 5);
        v17 = *(v14 - 4);
        v32 = *v14;
        v33 = *(v14 - 1);
        v30 = v9;
        v31 = v14[1];
        v18 = v14[2];
        v48 = v4;
        if (v13)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v26);
        v20 = *(v10 + 64);
        v41[0] = *(v10 + 48);
        v41[1] = v20;
        v42 = *(v10 + 80);
        v21 = *(v10 + 32);
        v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

        *(v10 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
        *(v10 + 56) = v22;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;

        v43[0] = v24;
        v43[1] = v18;
        v43[2] = v10;
        v43[3] = v17;
        v43[4] = (v16 - v15 + v17);
        v43[5] = v29;
        v43[6] = v15;
        v43[7] = v16;
        v43[8] = 0;
        v43[9] = 0;
        v44 = 1;
        v45 = v33;
        v46 = v32;
        v47 = v31;

        v23 = v48;
        sub_1AFD21C14(v43, v10, v28, v27);
        v4 = v23;
        if (v23)
        {
          break;
        }

        v39[0] = v34;
        v39[1] = v35;
        v40 = v36;
        sub_1AF630994(v10, v39, v41);
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v26);
        v13 = v25;
        if (v25)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v14 += 6;
        v9 = v30 - 1;
        if (v30 == 1)
        {
          goto LABEL_14;
        }
      }

      v37[0] = v34;
      v37[1] = v35;
      v38 = v36;
      sub_1AF630994(v10, v37, v41);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v26);
      if (v25)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

LABEL_14:
      v12 = *(v10 + 32);
    }

    ecs_stack_allocator_pop_snapshot(v12);
  }

  return result;
}

uint64_t sub_1AFD22378(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF706360(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C0338(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C0390(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD22870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF7061B4(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C03E8(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C0440(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD22D68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF706270(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C0498(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C04F0(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD23260(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF706FA8(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C0548(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C05A0(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD23758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF705FD4(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C05F8(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C0650(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD23C50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AFD53F14(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v7 = v6;
  v8 = *(a1 + 8);

  v10 = sub_1AF7060C4(v9, a1);
  sub_1AF649C6C(v8[5], v7, &v58);
  if (v58 == 1)
  {
    a2[9] = v7;
    a2[10] = &off_1F2559388;
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = sub_1AF64B110(v7, &off_1F2559388, v11, *(a1 + 96), v12, *(a1 + 16));
    if (v11)
    {
      if (v12)
      {
        sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
        v15 = v14;
        v16 = *(*(v14 - 1) + 72);
        do
        {
          if (*(v10 + v15[10]) || *(v10 + v15[11]))
          {
            v17 = *(v10 + v15[15]);

            sub_1AFD08C9C(a3, v17, v18);
          }

          v13 += 16;
          v10 += v16;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v32 = *(a1 + 48);
      v31 = *(a1 + 56);
      v33 = v31 - v32;
      if (v31 != v32)
      {
        sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
        v35 = v34;
        v36 = *(*(v34 - 1) + 72);
        v37 = v13 + 16 * v32;
        v38 = v10 + v32 * v36;
        do
        {
          if (*(v38 + v35[10]) || *(v38 + v35[11]))
          {
            v39 = *(v38 + v35[15]);

            sub_1AFD08C9C(a3, v39, v40);
          }

          v37 += 16;
          v38 += v36;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v57 = v20;
    if (!v19)
    {
      v20 = *(a1 + 56) - *(a1 + 48);
    }

    v53 = *(a1 + 96);
    v21 = ecs_stack_allocator_allocate(a2[4], 16 * v20, 8);
    v22 = v21;
    if (v20)
    {
      memset_pattern16(v21, &unk_1E7A80740, 16 * v20);
    }

    v56 = v22;
    v54 = v20;
    v55 = 16 * v20;
    if (v19)
    {
      v52 = a2;
      if (v57)
      {
        sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
        v24 = v23;
        v25 = *(*(v23 - 1) + 72);
        v26 = v22;
        v27 = v57;
        do
        {
          if (*(v10 + v24[10]) || *(v10 + v24[11]))
          {
            v28 = *(v10 + v24[15]);

            sub_1AFD08C9C(a3, v28, v29);
          }

          v26 += 2;
          v10 += v25;
          --v27;
        }

        while (v27);
      }

      v30 = v56;
      a2 = v52;
      sub_1AF5C06A8(v19, v53, v57, v56, v54, v52);
    }

    else
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
        v46 = v45;
        v47 = *(*(v45 - 1) + 72);
        v48 = v10 + v42 * v47;
        v49 = v56;
        do
        {
          if (*(v48 + v46[10]) || *(v48 + v46[11]))
          {
            v50 = *(v48 + v46[15]);

            sub_1AFD08C9C(a3, v50, v51);
          }

          v48 += v47;
          v49 += 16;
          --v43;
        }

        while (v43);
      }

      v30 = v56;
      sub_1AF5C0BA0(v8[29], v8[30], v56, v54, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v30, v55);
  }
}

uint64_t sub_1AFD24148(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[11];
  v6 = a1[12];
  v8 = a1[13];
  v10 = a1[1];
  v9 = a1[2];

  v84 = sub_1AF64B110(&type metadata for TextureNamedAsset, &off_1F2541538, v7, v6, v8, v9);
  sub_1AF649C6C(*(v10 + 40), &type metadata for TextureGPURuntime, &v88);
  v85 = v10;
  if (v88 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v11 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v7, v6, v8, v9);
    v12 = v11;
    if (v7)
    {
      v13 = a4;
      if (v8)
      {
        v14 = (v84 + 8);
        do
        {
          v15 = sub_1AF8ACC80(*(v14 - 1), *v14);
          if (!v15)
          {
            v19 = *(v13 + 120);
            v20 = *(v19 + 48);

            os_unfair_lock_lock(v20);
            v21 = *(v19 + 80);
            if (*(v21 + 16) && (v22 = sub_1AF419914(0xD000000000000015, 0x80000001AFF316F0), (v23 & 1) != 0))
            {
              v15 = *(*(v21 + 56) + 8 * v22);
              v24 = *(v19 + 48);
              swift_unknownObjectRetain();
              v18 = v24;
            }

            else
            {
              v15 = sub_1AF70936C(v13);
              v16 = sub_1AFDFCEC8();
              [v15 setLabel_];

              v13 = a4;
              swift_unknownObjectRetain();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v19 + 80);
              *(v19 + 80) = 0x8000000000000000;
              sub_1AF851F78(v15, 0xD000000000000015, 0x80000001AFF316F0, isUniquelyReferenced_nonNull_native);
              *(v19 + 80) = v88;
              v18 = *(v19 + 48);
            }

            os_unfair_lock_unlock(v18);
          }

          swift_unknownObjectRelease();
          *v12 = v15;
          v12 += 2;
          v14 += 2;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v46 = a1[6];
      v47 = a1[7];
      v48 = v47 - v46;
      v49 = a4;
      if (v47 != v46)
      {
        v50 = 16 * v46;
        v51 = (v11 + v50);
        v52 = (v50 + v84 + 8);
        do
        {
          v53 = sub_1AF8ACC80(*(v52 - 1), *v52);
          if (!v53)
          {
            v57 = *(v49 + 120);
            v58 = *(v57 + 48);

            os_unfair_lock_lock(v58);
            v59 = *(v57 + 80);
            if (*(v59 + 16) && (v60 = sub_1AF419914(0xD000000000000015, 0x80000001AFF316F0), (v61 & 1) != 0))
            {
              v53 = *(*(v59 + 56) + 8 * v60);
              v62 = *(v57 + 48);
              swift_unknownObjectRetain();
              v56 = v62;
            }

            else
            {
              v53 = sub_1AF70936C(v49);
              v54 = sub_1AFDFCEC8();
              [v53 setLabel_];

              v49 = a4;
              swift_unknownObjectRetain();
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v57 + 80);
              *(v57 + 80) = 0x8000000000000000;
              sub_1AF851F78(v53, 0xD000000000000015, 0x80000001AFF316F0, v55);
              *(v57 + 80) = v88;
              v56 = *(v57 + 48);
            }

            os_unfair_lock_unlock(v56);
          }

          swift_unknownObjectRelease();
          *v51 = v53;
          v51 += 2;
          v52 += 2;
          --v48;
        }

        while (v48);
      }
    }
  }

  else
  {
    v86 = v6;
    v25 = v8;
    if (!v7)
    {
      v25 = a1[7] - a1[6];
    }

    v26 = a2;
    v27 = ecs_stack_allocator_allocate(a2[4], 16 * v25, 8);
    v28 = v27;
    v30 = v86;
    v29 = a4;
    if (v25)
    {
      bzero(v27, 16 * v25);
    }

    v82 = v26;
    v83 = v28;
    v80 = v25;
    v81 = 16 * v25;
    if (v7)
    {
      v79 = v7;
      if (v8)
      {
        v31 = v28;
        v32 = (v84 + 8);
        v33 = v8;
        do
        {
          v34 = sub_1AF8ACC80(*(v32 - 1), *v32);
          if (!v34)
          {
            v38 = *(v29 + 120);
            v39 = *(v38 + 48);

            os_unfair_lock_lock(v39);
            v40 = *(v38 + 80);
            if (*(v40 + 16) && (v41 = sub_1AF419914(0xD000000000000015, 0x80000001AFF316F0), (v42 & 1) != 0))
            {
              v34 = *(*(v40 + 56) + 8 * v41);
              v43 = *(v38 + 48);
              swift_unknownObjectRetain();
              v37 = v43;
            }

            else
            {
              v34 = sub_1AF70936C(v29);
              v35 = sub_1AFDFCEC8();
              [v34 setLabel_];

              v29 = a4;
              swift_unknownObjectRetain();
              v36 = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v38 + 80);
              *(v38 + 80) = 0x8000000000000000;
              sub_1AF851F78(v34, 0xD000000000000015, 0x80000001AFF316F0, v36);
              *(v38 + 80) = v88;
              v37 = *(v38 + 48);
            }

            os_unfair_lock_unlock(v37);

            v30 = v86;
          }

          swift_unknownObjectRelease();
          *v31 = v34;
          v31 += 2;
          v32 += 2;
          --v33;
        }

        while (v33);
      }

      v44 = v82;
      v45 = v28;
      sub_1AF5B80C0(v79, v30, v8, v28, v80, v82);
    }

    else
    {
      v63 = a1[6];
      v64 = a1[7];
      v65 = v64 - v63;
      if (v64 != v63)
      {
        v67 = v28;
        v68 = (v84 + 16 * v63 + 8);
        do
        {
          v69 = sub_1AF8ACC80(*(v68 - 1), *v68);
          if (!v69)
          {
            v73 = *(v29 + 120);
            v74 = *(v73 + 48);

            os_unfair_lock_lock(v74);
            v75 = *(v73 + 80);
            if (*(v75 + 16) && (v76 = sub_1AF419914(0xD000000000000015, 0x80000001AFF316F0), (v77 & 1) != 0))
            {
              v69 = *(*(v75 + 56) + 8 * v76);
              v78 = *(v73 + 48);
              swift_unknownObjectRetain();
              v72 = v78;
            }

            else
            {
              v69 = sub_1AF70936C(v29);
              v70 = sub_1AFDFCEC8();
              [v69 setLabel_];

              v29 = a4;
              swift_unknownObjectRetain();
              v71 = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v73 + 80);
              *(v73 + 80) = 0x8000000000000000;
              sub_1AF851F78(v69, 0xD000000000000015, 0x80000001AFF316F0, v71);
              *(v73 + 80) = v88;
              v72 = *(v73 + 48);
            }

            os_unfair_lock_unlock(v72);
          }

          swift_unknownObjectRelease();
          *v67 = v69;
          v67 += 2;
          v68 += 2;
          --v65;
        }

        while (v65);
      }

      v44 = v82;
      v45 = v83;
      sub_1AF5B85AC(*(v85 + 232), *(v85 + 240), v83, v80, v82);
    }

    ecs_stack_allocator_deallocate(*(v44 + 32), v45, v81);
  }
}

uint64_t sub_1AFD247C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = *result;
  v34 = *(result + 16);
  v35 = *(result + 32);
  v27 = *(result + 80);
  if (v27 >= 1)
  {
    v6 = *(result + 40);
    v8 = *(result + 56);
    v7 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(v9 + 32);

    ecs_stack_allocator_push_snapshot(v10);
    v11 = *(v9 + 32);
    if (v8)
    {
      v24 = v7;
      v12 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = (v6 + 24);
      v25 = v12;
      v26 = a3;
      while (1)
      {
        v14 = *(v13 - 6);
        v15 = *(v13 - 5);
        v16 = *(v13 - 4);
        v31 = *v13;
        v32 = *(v13 - 1);
        v29 = v8;
        v30 = v13[1];
        v17 = v13[2];
        v47 = v4;
        if (v12)
        {
          v18 = *(v17 + 376);

          os_unfair_lock_lock(v18);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v19 = *(v9 + 64);
        v40[0] = *(v9 + 48);
        v40[1] = v19;
        v41 = *(v9 + 80);
        v20 = *(v9 + 32);
        v21 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v20, 48 * v21, 8);
        *(v9 + 56) = v21;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        v42[0] = v24;
        v42[1] = v17;
        v42[2] = v9;
        v42[3] = v16;
        v42[4] = (v15 - v14 + v16);
        v42[5] = v27;
        v42[6] = v14;
        v42[7] = v15;
        v42[8] = 0;
        v42[9] = 0;
        v43 = 1;
        v44 = v32;
        v45 = v31;
        v46 = v30;

        v22 = v47;
        sub_1AFD24148(v42, v9, a2, v26);
        v4 = v22;
        if (v22)
        {
          break;
        }

        v38[0] = v33;
        v38[1] = v34;
        v39 = v35;
        sub_1AF630994(v9, v38, v40);
        sub_1AF62D29C(v17);
        ecs_stack_allocator_pop_snapshot(v11);
        v12 = v25;
        if (v25)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v13 += 6;
        v8 = v29 - 1;
        if (v29 == 1)
        {
          v11 = *(v9 + 32);
          goto LABEL_15;
        }
      }

      v36[0] = v33;
      v36[1] = v34;
      v37 = v35;
      sub_1AF630994(v9, v36, v40);
      sub_1AF62D29C(v17);
      ecs_stack_allocator_pop_snapshot(v11);
      if (v25)
      {
        os_unfair_lock_unlock(*(v17 + 344));
        os_unfair_lock_unlock(*(v17 + 376));
      }

      v23 = *(v9 + 32);
    }

    else
    {
LABEL_15:
      v23 = v11;
    }

    ecs_stack_allocator_pop_snapshot(v23);
  }

  return result;
}

uint64_t sub_1AFD24AD0(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[1];
  v13 = a1[2];

  v14 = sub_1AF64B110(a4, a5, v10, v9, v11, v13);
  sub_1AF649C6C(*(v12 + 40), &type metadata for TextureGPURuntime, &v44);
  if (v44 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v15 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v10, v9, v11, v13);
    v16 = v15;
    if (v10)
    {
      for (; v11; --v11)
      {
        v14 += 4;
        swift_getObjectType();
        [a3 pixelFormat];
        v17 = sub_1AFDFD9B8();
        swift_unknownObjectRelease();
        *v16 = v17;
        v16 += 2;
      }
    }

    else
    {
      v27 = a1[6];
      v28 = a1[7];
      v29 = v28 - v27;
      if (v28 != v27)
      {
        v30 = (v15 + 16 * v27);
        v31 = v14 + 4 * v27;
        do
        {
          v31 += 4;
          swift_getObjectType();
          [a3 pixelFormat];
          v32 = sub_1AFDFD9B8();
          swift_unknownObjectRelease();
          *v30 = v32;
          v30 += 2;
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    v40 = v9;
    v41 = v12;
    v18 = v11;
    if (!v10)
    {
      v18 = a1[7] - a1[6];
    }

    v19 = ecs_stack_allocator_allocate(a2[4], 16 * v18, 8);
    v20 = v19;
    if (v18)
    {
      bzero(v19, 16 * v18);
    }

    v42 = v20;
    if (v10)
    {
      v21 = v10;
      if (v11)
      {
        v22 = v11;
        v23 = v20;
        do
        {
          v14 += 4;
          swift_getObjectType();
          [a3 pixelFormat];
          v24 = sub_1AFDFD9B8();
          swift_unknownObjectRelease();
          *v23 = v24;
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      v25 = v20;
      v26 = a2;
      sub_1AF5B80C0(v21, v40, v11, v20, v18, a2);
    }

    else
    {
      v33 = a1[6];
      v34 = a1[7];
      v35 = v34 - v33;
      if (v34 != v33)
      {
        v36 = v14 + 4 * v33;
        v37 = v42;
        do
        {
          v36 += 4;
          swift_getObjectType();
          [a3 pixelFormat];
          v38 = sub_1AFDFD9B8();
          swift_unknownObjectRelease();
          *v37 = v38;
          v37 += 2;
          --v35;
        }

        while (v35);
      }

      v25 = v42;
      v26 = a2;
      sub_1AF5B85AC(*(v41 + 232), *(v41 + 240), v42, v18, a2);
    }

    ecs_stack_allocator_deallocate(v26[4], v25, 16 * v18);
  }
}

uint64_t sub_1AFD24E44(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = *result;
  v36 = *(result + 16);
  v37 = *(result + 32);
  v28 = *(result + 80);
  if (v28 >= 1)
  {
    v7 = *(result + 40);
    v9 = *(result + 56);
    v8 = *(result + 64);
    v10 = *(result + 72);
    v11 = *(v10 + 32);
    swift_unknownObjectRetain();
    ecs_stack_allocator_push_snapshot(v11);
    v12 = *(v10 + 32);
    if (v9)
    {
      v25 = v8;
      v13 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v14 = (v7 + 24);
      v26 = v13;
      v27 = a2;
      while (1)
      {
        v15 = *(v14 - 6);
        v16 = *(v14 - 5);
        v17 = *(v14 - 4);
        v33 = *v14;
        v34 = *(v14 - 1);
        v31 = v9;
        v32 = v14[1];
        v18 = v14[2];
        v49 = v5;
        if (v13)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v12);
        v20 = *(v10 + 64);
        v42[0] = *(v10 + 48);
        v42[1] = v20;
        v43 = *(v10 + 80);
        v21 = *(v10 + 32);
        v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

        *(v10 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
        *(v10 + 56) = v22;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;

        v44[0] = v25;
        v44[1] = v18;
        v44[2] = v10;
        v44[3] = v17;
        v44[4] = (v16 - v15 + v17);
        v44[5] = v28;
        v44[6] = v15;
        v44[7] = v16;
        v44[8] = 0;
        v44[9] = 0;
        v45 = 1;
        v46 = v34;
        v47 = v33;
        v48 = v32;
        swift_unknownObjectRetain();
        v23 = v49;
        sub_1AFD24AD0(v44, v10, v27, a3, a4);
        v5 = v23;
        if (v23)
        {
          break;
        }

        swift_unknownObjectRelease();
        v40[0] = v35;
        v40[1] = v36;
        v41 = v37;
        sub_1AF630994(v10, v40, v42);
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v12);
        v13 = v26;
        if (v26)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v14 += 6;
        v9 = v31 - 1;
        if (v31 == 1)
        {
          v12 = *(v10 + 32);
          goto LABEL_15;
        }
      }

      swift_unknownObjectRelease();
      v38[0] = v35;
      v38[1] = v36;
      v39 = v37;
      sub_1AF630994(v10, v38, v42);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v12);
      if (v26)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      v24 = *(v10 + 32);
    }

    else
    {
LABEL_15:
      v24 = v12;
    }

    ecs_stack_allocator_pop_snapshot(v24);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFD2511C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v5, v6, v7, v8);
  v10 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v5, v6, v7, v8);
  result = sub_1AF64B110(&type metadata for VFXDrawCallHandler, &off_1F253A170, v5, v6, v7, v8);
  if (v5)
  {
    if (v7)
    {
      v65 = OBJC_IVAR___VFXREDrawCall_drawCall;
      v12 = (a2 + OBJC_IVAR___VFXREDrawCall_renderPassName);
      v13 = v10;
      v14 = (a2 + OBJC_IVAR___VFXREDrawCall_handler);
      v63 = (a2 + OBJC_IVAR___VFXREDrawCall_aabb);
      v59 = OBJC_IVAR___VFXREDrawCall__writesSeparateDepth;
      v61 = OBJC_IVAR___VFXREDrawCall__writesColor;
      v55 = OBJC_IVAR___VFXREDrawCall__needsLinearDepth;
      v57 = OBJC_IVAR___VFXREDrawCall__materialType;
      v51 = OBJC_IVAR___VFXREDrawCall_renderPassIdentifier;
      v53 = OBJC_IVAR___VFXREDrawCall__isAdditive;
      v49 = OBJC_IVAR___VFXREDrawCall_emitter;
      v15 = (result + 40);
      v16 = (v13 + 16);
      do
      {
        *(a2 + v65) = *v9;

        if (*(v15 - 4))
        {
          v19 = *(v15 - 5);
          v20 = *(v15 - 4);
        }

        else
        {
          v19 = 0;
          v20 = 0xE000000000000000;
        }

        *v12 = v19;
        v12[1] = v20;

        v21 = *(v15 - 3);
        v22 = *(v15 - 2);
        v23 = *v14;
        *v14 = v21;
        v14[1] = v22;
        sub_1AF0FBD8C(v21);
        sub_1AF0FB8EC(v23);
        v24 = *v16;
        v24.i32[3] = v68;
        v25 = vcltzq_f32(v24);
        v26 = v25.i32[2] | v25.i32[1] | v25.i32[0];
        v27 = xmmword_1AFE201A0;
        v28 = xmmword_1AFEA06A0;
        if ((v26 & 0x80000000) == 0)
        {
          v27 = v16[-1];
          v28 = *v16;
        }

        *v63 = v27;
        v63[1] = v28;
        v17 = *(v15 - 4);
        *(a2 + v61) = v17 ^ 1;
        *(a2 + v59) = v17;
        *(a2 + v57) = *(v15 - 2);
        *(a2 + v55) = *(v15 - 3);
        *(a2 + v53) = *(v15 - 2);
        *(a2 + v51) = -1;
        v18 = *v15;
        v15 += 7;
        *(a2 + v49) = v18;
        result = a3(a2);
        ++v9;
        v16 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v29 = a1[6];
    v30 = a1[7];
    v31 = v30 - v29;
    if (v30 != v29)
    {
      v66 = OBJC_IVAR___VFXREDrawCall_drawCall;
      v32 = (a2 + OBJC_IVAR___VFXREDrawCall_renderPassName);
      v33 = (a2 + OBJC_IVAR___VFXREDrawCall_handler);
      v64 = (a2 + OBJC_IVAR___VFXREDrawCall_aabb);
      v60 = OBJC_IVAR___VFXREDrawCall__writesSeparateDepth;
      v62 = OBJC_IVAR___VFXREDrawCall__writesColor;
      v56 = OBJC_IVAR___VFXREDrawCall__needsLinearDepth;
      v58 = OBJC_IVAR___VFXREDrawCall__materialType;
      v54 = OBJC_IVAR___VFXREDrawCall__isAdditive;
      v52 = OBJC_IVAR___VFXREDrawCall_renderPassIdentifier;
      v50 = OBJC_IVAR___VFXREDrawCall_emitter;
      v34 = (result + 56 * v29 + 40);
      v35 = &v9[v29];
      v36 = (v10 + 32 * v29 + 16);
      do
      {
        *(a2 + v66) = *v35;

        if (*(v34 - 4))
        {
          v39 = *(v34 - 5);
          v40 = *(v34 - 4);
        }

        else
        {
          v39 = 0;
          v40 = 0xE000000000000000;
        }

        *v32 = v39;
        v32[1] = v40;

        v41 = *(v34 - 3);
        v42 = *(v34 - 2);
        v43 = *v33;
        *v33 = v41;
        v33[1] = v42;
        sub_1AF0FBD8C(v41);
        sub_1AF0FB8EC(v43);
        v44 = *v36;
        v44.i32[3] = v68;
        v45 = vcltzq_f32(v44);
        v46 = v45.i32[2] | v45.i32[1] | v45.i32[0];
        v47 = xmmword_1AFE201A0;
        v48 = xmmword_1AFEA06A0;
        if ((v46 & 0x80000000) == 0)
        {
          v47 = v36[-1];
          v48 = *v36;
        }

        *v64 = v47;
        v64[1] = v48;
        v37 = *(v34 - 4);
        *(a2 + v62) = v37 ^ 1;
        *(a2 + v60) = v37;
        *(a2 + v58) = *(v34 - 2);
        *(a2 + v56) = *(v34 - 3);
        *(a2 + v54) = *(v34 - 2);
        *(a2 + v52) = -1;
        v38 = *v34;
        v34 += 7;
        *(a2 + v50) = v38;
        result = a3(a2);
        ++v35;
        v36 += 2;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

unint64_t sub_1AFD255C4(uint64_t a1, unint64_t a2)
{
  sub_1AF706180(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25714(uint64_t a1, unint64_t a2)
{
  sub_1AF706090(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25864(uint64_t a1, unint64_t a2)
{
  sub_1AF706D00(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727FD0, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD259B4(uint64_t a1, unint64_t a2)
{
  sub_1AF705FA0(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727FA0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25B04(uint64_t a1, unint64_t a2)
{
  sub_1AF706CCC(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25C54(uint64_t a1, unint64_t a2)
{
  sub_1AF706C98(*(a1 + 8), a1);
  sub_1AFD53F14(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25DA4(uint64_t a1, unint64_t a2)
{
  sub_1AF706C64(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD25EF4(uint64_t a1, unint64_t a2)
{
  sub_1AF70632C(*(a1 + 8), a1);
  sub_1AFD53F14(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AFAD3ABC);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

unint64_t sub_1AFD26044(uint64_t a1, unint64_t a2)
{
  sub_1AF705F6C(*(a1 + 8), a1);
  sub_1AFD53F14(0, qword_1ED724BA0, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptStateRestoration);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(v6, &off_1F2559388, v4, *(a1 + 96), v5, *(a1 + 16));
  if (v4)
  {
    if (v5)
    {
      v8 = (result + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v8 - 1), *v8, sub_1AFAD3ABC, sub_1AF702438);
        v8 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v10 - v9;
    if (v10 != v9)
    {
      v12 = (result + 16 * v9 + 8);
      do
      {
        result = sub_1AFD0846C(a2, *(v12 - 1), *v12, sub_1AFAD3ABC, sub_1AF702438);
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_1AFD26194(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v4, v3, v5, v7);
  result = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v4, v3, v5, v7);
  v10 = result;
  if (v4)
  {
    if (v5)
    {
      while (1)
      {
        v12 = *v4++;
        v11 = v12;

        if (*(v6 + 184))
        {
          break;
        }

        v14 = *(*(v6 + 168) + 4 * v11);
        v15 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v14 + 8);

        v16 = *(v6 + 28);
        LOBYTE(v33) = *(v6 + 32);
        sub_1AFB7BFB0(v14 | (v15 << 32), v16 | (v33 << 32), v8, v10, a2, 1);

        if (*(v6 + 184))
        {
          break;
        }

        v18 = *(*(v6 + 168) + 4 * v11);
        v19 = *(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18 + 8);

        result = sub_1AF70E044(&v33, v18 | (v19 << 32));
        v10 += 848;
        v8 += 104;
        if (!--v5)
        {
          return result;
        }
      }

LABEL_13:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v21 = a1[6];
    v20 = a1[7];
    if (v21 != v20)
    {
      v22 = result + 848 * v21;
      for (i = v8 + 104 * v21; ; i += 104)
      {

        if (*(v6 + 184))
        {
          break;
        }

        v25 = *(*(v6 + 168) + 4 * v21);
        v26 = *(*(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25 + 8);

        v27 = *(v6 + 28);
        LOBYTE(v33) = *(v6 + 32);
        sub_1AFB7BFB0(v25 | (v26 << 32), v27 | (v33 << 32), i, v22, a2, 1);

        if (*(v6 + 184))
        {
          break;
        }

        v29 = *(*(v6 + 168) + 4 * v21);
        v30 = v21 + 1;
        v31 = *(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v29 + 8);

        result = sub_1AF70E044(&v33, v29 | (v31 << 32));
        v22 += 848;
        v21 = v30;
        if (v20 == v30)
        {
          return result;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_1AFD26420(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  result = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v4, *(a1 + 96), v5, *(a1 + 16));
  v7 = result;
  if (v4)
  {
    if (v5)
    {
      v8 = &selRef_shadingModel;
      v9 = &selRef_defaultTexture3D;
      do
      {
        v11 = *v4++;
        v10 = v11;
        v12 = *v7;
        if (*v7)
        {
          if ([swift_unknownObjectRetain() textureType] == 5 || (v13 = objc_msgSend(v12, v8[454]), v13 != (2 * objc_msgSend(v12, v9[396]))))
          {
            result = swift_unknownObjectRelease();
          }

          else
          {

            v14 = sub_1AF6496EC(v10);

            v15 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v15 = sub_1AF4217DC(0, *(v15 + 2) + 1, 1, v15);
              *a2 = v15;
            }

            v18 = *(v15 + 2);
            v17 = *(v15 + 3);
            if (v18 >= v17 >> 1)
            {
              v15 = sub_1AF4217DC(v17 > 1, v18 + 1, 1, v15);
              *a2 = v15;
            }

            *(v15 + 2) = v18 + 1;
            *&v15[8 * v18 + 32] = v14;
            v19 = sub_1AF8E8B04(v12, a3);
            result = swift_unknownObjectRelease_n();
            *v7 = v19;
            v8 = &selRef_shadingModel;
            v9 = &selRef_defaultTexture3D;
          }
        }

        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    if (v20 != v21)
    {
      v22 = &selRef_shadingModel;
      v23 = &selRef_defaultTexture3D;
      v24 = (result + 16 * v20);
      do
      {
        v25 = *v24;
        if (*v24)
        {
          if ([swift_unknownObjectRetain() v22[210]] == 5 || (v26 = objc_msgSend(v25, sel_width), v26 != (2 * objc_msgSend(v25, v23[396]))))
          {
            result = swift_unknownObjectRelease();
          }

          else
          {

            v27 = sub_1AF6496EC(v20);

            v28 = *a2;
            v29 = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v28;
            if ((v29 & 1) == 0)
            {
              v28 = sub_1AF4217DC(0, *(v28 + 2) + 1, 1, v28);
              *a2 = v28;
            }

            v31 = *(v28 + 2);
            v30 = *(v28 + 3);
            if (v31 >= v30 >> 1)
            {
              v28 = sub_1AF4217DC(v30 > 1, v31 + 1, 1, v28);
              *a2 = v28;
            }

            *(v28 + 2) = v31 + 1;
            *&v28[8 * v31 + 32] = v27;
            v32 = sub_1AF8E8B04(v25, a3);
            result = swift_unknownObjectRelease_n();
            *v24 = v32;
            v22 = &selRef_shadingModel;
            v23 = &selRef_defaultTexture3D;
          }
        }

        ++v20;
        v24 += 2;
      }

      while (v21 != v20);
    }
  }

  return result;
}