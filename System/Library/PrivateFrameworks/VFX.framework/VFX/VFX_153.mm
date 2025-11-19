uint64_t sub_1AFCA72D8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v34 = a2;
    swift_once();
    LODWORD(a2) = v34;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v55 = qword_1ED73B840;
  v56 = v4;
  v57 = v3 >> 31;
  v58 = 1;
  v59 = 2;
  v60 = 0;

  sub_1AF7032E4(3, v44);

  v53[0] = v44[0];
  v53[1] = v44[1];
  v54 = v45;
  sub_1AF6B06C0(a1, v53, 0x200000000, v46);
  if (!*v46)
  {
    return sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  }

  if (v49 <= 0 || (v36 = *(&v47 + 1)) == 0)
  {
    sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
    v31 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, v31, sub_1AFCBA88C);
  }

  v35 = *&v46[40];
  v5 = *(&v48 + 1);
  v39 = *(v48 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v38 = *(*(&v48 + 1) + 32);
  v50 = *v46;
  v51 = *&v46[8];
  v52 = *&v46[24];
  v43[2] = *&v46[32];
  v43[3] = v47;
  v43[4] = v48;
  v43[5] = v49;
  v43[0] = *v46;
  v43[1] = *&v46[16];
  sub_1AF5DD298(v43, v41);
  v6 = 0;
  v7 = 0;
  v8 = &qword_1ED726930;
  __asm { FMOV            V0.4S, #1.0 }

  v40 = _Q0;
  do
  {
    v37 = v7;
    v14 = v8;
    v15 = (v35 + 48 * v6);
    v17 = *v15;
    v16 = v15[1];
    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    v21 = *(v15 + 4);
    v20 = *(v15 + 5);
    if (v39)
    {
      v22 = *(v20 + 376);

      os_unfair_lock_lock(v22);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v38);
    v23 = *(v5 + 64);
    v41[0] = *(v5 + 48);
    v41[1] = v23;
    v42 = *(v5 + 80);
    v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v24, 8);
    *(v5 + 56) = v24;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    v25 = sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v19, v18, v21, v5);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_21;
      }

      v26 = (v25 + 8);
      v8 = v14;
      v7 = v37;
      do
      {
        if (!*(*v26 + 16))
        {
          sub_1AFCBA7A8(0, v8, sub_1AF6AF6D4, MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          v27[1] = xmmword_1AFE4C620;
          v27[2] = v40;
          v27[3] = xmmword_1AFE201A0;
          *(v26 - 1) = v27;
          *v26 = &unk_1F2507FD8;
          v26[8] = 1;
        }

        v26 += 24;
        --v21;
      }

      while (v21);
    }

    else
    {
      if (v17 == v16)
      {
LABEL_21:
        v8 = v14;
        v7 = v37;
        goto LABEL_22;
      }

      v28 = v16 - v17;
      v29 = (v25 + 24 * v17 + 8);
      v8 = v14;
      v7 = v37;
      do
      {
        if (!*(*v29 + 16))
        {
          sub_1AFCBA7A8(0, v8, sub_1AF6AF6D4, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v30[1] = xmmword_1AFE4C620;
          v30[2] = v40;
          v30[3] = xmmword_1AFE201A0;
          *(v29 - 1) = v30;
          *v29 = &unk_1F2508000;
          v29[8] = 1;
        }

        v29 += 24;
        --v28;
      }

      while (v28);
    }

LABEL_22:
    sub_1AF630994(v5, &v50, v41);
    sub_1AF62D29C(v20);
    ecs_stack_allocator_pop_snapshot(v38);
    if (v39)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    ++v6;
  }

  while (v6 != v36);
  sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  v33 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  v31 = v33;
  return sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, v31, sub_1AFCBA88C);
}

void sub_1AFCA785C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t), uint64_t (*a5)(void), void (*a6)(void *, uint64_t))
{
  v10 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v28 = a2;
    swift_once();
    LODWORD(a2) = v28;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v65 = qword_1ED73B840;
  v66 = v11;
  v67 = v10 >> 31;
  v68 = 1;
  v69 = 2;
  v70 = 0;

  a4(v40, 1, a3);

  v56[0] = v40[0];
  v56[1] = v40[1];
  v57 = v41;
  sub_1AF6B06C0(a1, v56, 0x200000000, &v42);
  v34 = v42;
  if (v42)
  {
    v12 = v45;
    v13 = v46;
    v14 = v48;
    v50 = v43;
    v51 = v44;
    v32 = v49;
    v33 = v47;
    if (v49 > 0 && v46)
    {
      v29 = a5;
      v15 = *(v48 + 32);
      v16 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AFCBA238(&v42, v60, &qword_1ED725EA0, &type metadata for QueryResult);
      v17 = (v12 + 24);
      v30 = v16;
      v31 = a1;
      do
      {
        v39 = v13;
        v18 = *(v17 - 6);
        v19 = *(v17 - 5);
        v20 = *(v17 - 4);
        v37 = *v17;
        v38 = *(v17 - 1);
        v21 = v17[2];
        v36 = v17[1];
        if (v16)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v15);
        v23 = *(v14 + 64);
        v58[0] = *(v14 + 48);
        v58[1] = v23;
        v59 = *(v14 + 80);
        v24 = *(v14 + 32);
        v25 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;

        *(v14 + 48) = ecs_stack_allocator_allocate(v24, 48 * v25, 8);
        *(v14 + 56) = v25;
        *(v14 + 72) = 0;
        *(v14 + 80) = 0;
        *(v14 + 64) = 0;

        LOBYTE(v52) = 1;
        v60[0] = v33;
        v60[1] = v21;
        v60[2] = v14;
        v60[3] = v20;
        v60[4] = (v19 - v18 + v20);
        v60[5] = v32;
        v60[6] = v18;
        v60[7] = v19;
        v60[8] = 0;
        v60[9] = 0;
        v61 = 1;
        v62 = v38;
        v63 = v37;
        v64 = v36;

        a6(v60, v31);

        v53 = v34;
        v54 = v50;
        v55 = v51;
        sub_1AF630994(v14, &v53, v58);
        sub_1AF62D29C(v21);
        ecs_stack_allocator_pop_snapshot(v15);
        v16 = v30;
        if (v30)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v17 += 6;
        v13 = v39 - 1;
      }

      while (v39 != 1);
      sub_1AFCB9FB8(v40, v29);
      v27 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);

      v26 = v27;
    }

    else
    {
      sub_1AFCB9FB8(v40, a5);
      v26 = MEMORY[0x1E69E6720];
    }

    sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, v26, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCB9FB8(v40, a5);
  }
}

uint64_t sub_1AFCA7CDC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0x100000000;
  v85 = sub_1AFDFC318();
  v76 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v63 - v9;
  v95 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v2;
  }

  v107 = qword_1ED73B840;
  v108 = v10;
  v109 = v4 >> 31;
  v110 = 1;
  v111 = 2;
  v112 = 0;

  sub_1AF70510C(3, v96);

  v105[0] = v96[0];
  v105[1] = v96[1];
  v106 = v97;
  sub_1AF6B06C0(a1, v105, 0x200000000, v98);
  v91 = v98[2];
  v92 = v99;
  v93 = v100;
  v94 = v101;
  v89 = v98[0];
  v90 = v98[1];
  sub_1AFCB9F58(v96, &unk_1EB643C80, type metadata accessor for VFXObjectTag, &off_1F253D658, sub_1AFCBA680);
  if (*&v98[0])
  {
    if (v101 > 0 && (v69 = *(&v99 + 1)) != 0)
    {
      v68 = *(&v98[2] + 1);
      v11 = *(&v100 + 1);
      v12 = *(v100 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = *(*(&v100 + 1) + 32);
      v102 = *&v98[0];
      v103 = *(v98 + 8);
      v104 = *(&v98[1] + 8);
      v14 = type metadata accessor for VFXObjectTag();
      v88[2] = v91;
      v88[3] = v92;
      v88[4] = v93;
      v88[5] = v94;
      v88[0] = v89;
      v88[1] = v90;
      sub_1AF5DD298(v88, v86);
      v15 = 0;
      v16 = 0;
      v63 = v14 - 8;
      v64 = v14;
      v17 = v75;
      v82 = (v76 + 16);
      v83 = (v76 + 8);
      v72 = (v76 + 40);
      v67 = v11;
      v66 = v12;
      v65 = v13;
      do
      {
        v71 = v15;
        v18 = (v68 + 48 * v15);
        v74 = *v18;
        v80 = v18[1];
        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        v21 = *(v18 + 5);
        v78 = *(v18 + 4);
        v73 = v21;
        if (v12)
        {
          v22 = *(v73 + 47);

          v23 = v22;
          v21 = v73;
          os_unfair_lock_lock(v23);
          os_unfair_lock_lock(*(v21 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);
        v24 = *(v11 + 4);
        v86[0] = *(v11 + 3);
        v86[1] = v24;
        v87 = v11[10];
        v25 = *(*(*(*(v21 + 5) + 16) + 32) + 16) + 1;
        v11[6] = ecs_stack_allocator_allocate(v11[4], 48 * v25, 8);
        v11[7] = v25;
        v11[9] = 0;
        v11[10] = 0;
        v11[8] = 0;
        v26 = v78;
        v27 = sub_1AF64B110(v64, &off_1F253D658, v20, v19, v78, v11);
        v77 = v27;
        v70 = v16;
        if (v20)
        {
          v28 = v82;
          if (v26)
          {
            v29 = 0;
            v79 = *(*v63 + 72);
            do
            {
              v80 = v29;
              v30 = v27 + v79 * v29;
              v33 = v95;
              if (*(v95 + 16))
              {
                sub_1AFCBA6E4(&qword_1EB633A20, MEMORY[0x1E69695A8]);
                v81 = v30;
                v34 = sub_1AFDFCCF8();
                v35 = -1 << *(v33 + 32);
                v36 = v34 & ~v35;
                v37 = *v28;
                if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
                {
                  v38 = ~v35;
                  v39 = *(v76 + 72);
                  while (1)
                  {
                    v41 = v84;
                    v40 = v85;
                    v37(v84, *(v33 + 48) + v39 * v36, v85);
                    sub_1AFCBA6E4(&qword_1EB633A10, MEMORY[0x1E69695A8]);
                    v42 = sub_1AFDFCE58();
                    (*v83)(v41, v40);
                    if (v42)
                    {
                      break;
                    }

                    v36 = (v36 + 1) & v38;
                    if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
                    {
                      v17 = v75;
                      v28 = v82;
                      v27 = v77;
                      goto LABEL_17;
                    }
                  }

                  v43 = v84;
                  sub_1AFDFC308();
                  v30 = v81;
                  (*v72)(v81, v43, v85);
                  v17 = v75;
                  v28 = v82;
                  v27 = v77;
                  v26 = v78;
                }

                else
                {
LABEL_17:
                  v26 = v78;
                  v30 = v81;
                }
              }

              else
              {
                v37 = *v28;
              }

              v31 = v85;
              v37(v17, v30, v85);
              v32 = v84;
              sub_1AF70E7D8(v84, v17);
              (*v83)(v32, v31);
              v29 = v80 + 1;
            }

            while (v80 + 1 != v26);
          }
        }

        else
        {
          v44 = v74;
          v45 = v82;
          if (v74 != v80)
          {
            v79 = *(*v63 + 72);
            do
            {
              v50 = v27 + v79 * v44;
              v51 = v95;
              if (*(v95 + 16))
              {
                sub_1AFCBA6E4(&qword_1EB633A20, MEMORY[0x1E69695A8]);
                v81 = v50;
                v52 = sub_1AFDFCCF8();
                v53 = -1 << *(v51 + 32);
                v54 = v52 & ~v53;
                v47 = *v45;
                if ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
                {
                  v74 = v44;
                  v55 = ~v53;
                  v56 = *(v76 + 72);
                  while (1)
                  {
                    v58 = v84;
                    v57 = v85;
                    v47(v84, *(v51 + 48) + v56 * v54, v85);
                    sub_1AFCBA6E4(&qword_1EB633A10, MEMORY[0x1E69695A8]);
                    v59 = sub_1AFDFCE58();
                    (*v83)(v58, v57);
                    if (v59)
                    {
                      break;
                    }

                    v54 = (v54 + 1) & v55;
                    if (((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                    {
                      v44 = v74;
                      v17 = v75;
                      v50 = v81;
                      v45 = v82;
                      v27 = v77;
                      goto LABEL_32;
                    }
                  }

                  v60 = v84;
                  sub_1AFDFC308();
                  v50 = v81;
                  (*v72)(v81, v60, v85);
                  v44 = v74;
                  v17 = v75;
                  v45 = v82;
                  v27 = v77;
                }

                else
                {
                  v27 = v77;
                  v50 = v81;
                }
              }

              else
              {
                v47 = *v45;
              }

LABEL_32:
              ++v44;
              v48 = v85;
              v47(v17, v50, v85);
              v49 = v84;
              sub_1AF70E7D8(v84, v17);
              (*v83)(v49, v48);
            }

            while (v44 != v80);
          }
        }

        v11 = v67;
        v16 = v70;
        sub_1AF630994(v67, &v102, v86);
        v46 = v73;
        sub_1AF62D29C(v73);
        v13 = v65;
        ecs_stack_allocator_pop_snapshot(v65);
        v12 = v66;
        if (v66)
        {
          os_unfair_lock_unlock(*(v46 + 43));
          os_unfair_lock_unlock(*(v46 + 47));
        }

        v15 = v71 + 1;
      }

      while (v71 + 1 != v69);
      v61 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, v61, sub_1AFCBA88C);
    }

    else
    {
      sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }
}

uint64_t sub_1AFCA8664(uint64_t a1, uint64_t a2)
{
  v256 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v162 = a2;
    swift_once();
    LODWORD(a2) = v162;
  }

  v4 = qword_1ED73B840;
  v204 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 >> 31;
  v205 = v5;
  v206 = v3 >> 31;
  v207 = 1;
  v208 = 2;
  v209 = 0;

  sub_1AF7032F8(3, v197);

  v202[0] = v197[0];
  v202[1] = v197[1];
  v203 = v198;
  sub_1AF6B06C0(a1, v202, 0x200000000, v224);
  v181 = *v224;
  if (!*v224)
  {
    goto LABEL_126;
  }

  v7 = *(&v225 + 1);
  v178 = *&v224[40];
  v8 = *(&v226 + 1);
  v180 = v226;
  v236 = *&v224[8];
  v237 = *&v224[24];
  v176 = v227;
  if (v227 <= 0 || !*(&v225 + 1))
  {
    sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
LABEL_126:
    v11 = 0;
    goto LABEL_128;
  }

  v163 = v5;
  v164 = v3 >> 31;
  v166 = v4;
  v187 = *(*(&v226 + 1) + 32);
  v9 = *(v226 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v168 = a1;
  v192 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  *&v230[32] = *&v224[32];
  v231 = v225;
  v232 = v226;
  v233 = v227;
  *v230 = *v224;
  *&v230[16] = *&v224[16];
  sub_1AF5DD298(v230, v243);
  v10 = 0;
  v11 = 0;
  v170 = v9;
  v172 = v8;
  v174 = v7;
  do
  {
    v185 = v10;
    v12 = (v178 + 48 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = *(v12 + 2);
    v17 = *(v12 + 3);
    v18 = *(v12 + 4);
    v19 = *(v12 + 5);
    if (v9)
    {
      v20 = *(v19 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v187);
    v21 = *(v8 + 4);
    v241[0] = *(v8 + 3);
    v241[1] = v21;
    v242 = v8[10];
    v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    v8[6] = ecs_stack_allocator_allocate(v8[4], 48 * v22, 8);
    v8[7] = v22;
    v8[9] = 0;
    v8[10] = 0;
    v8[8] = 0;
    LOBYTE(v220) = 1;
    v243[0] = v180;
    v243[1] = v19;
    v244 = v8;
    v245 = v15;
    v246 = (v14 - v13 + v15);
    v247 = v176;
    v248 = v13;
    v249 = v14;
    v250 = 0;
    v251 = 0;
    v252 = 1;
    v253 = v16;
    v254 = v17;
    v255 = v18;
    v194 = sub_1AF705F1C(v19, v243);
    v23 = v253;
    v183 = v11;
    if (!v253)
    {
      v26 = v248;
      v27 = v249;
      if (v248 == v249)
      {
        goto LABEL_18;
      }

      v69 = v244;
LABEL_75:
      v70 = (v194 + 8 * v26);
      v71 = *v70;
      v72 = v70[1];

      if (*(v19 + 184))
      {
LABEL_205:
        sub_1AFDFE518();
        __break(1u);
      }

      v74 = *(*(v19 + 168) + 4 * v26);
      v75 = *(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v74 + 8);

      if (v71 != v74 || v72 != v75)
      {
        v77 = v70[1];
        v78 = *v70;
        v79 = v78 == -1 && v77 == 0;
        if (!v79 && (v78 & 0x80000000) == 0 && v192[1] > v78 && (v77 == -1 || *(*v192 + 12 * v78 + 8) == v77))
        {
          goto LABEL_74;
        }
      }

      v80 = *(*(v19 + 40) + 16);
      v81 = *(v80 + 128);
      if (!*(v81 + 16))
      {
        goto LABEL_74;
      }

      v82 = sub_1AF449CB8(&type metadata for Parent);
      if ((v83 & 1) == 0 || *(*(v80 + 24) + 16 * *(*(v81 + 56) + 8 * v82) + 32) != &type metadata for Parent)
      {
        goto LABEL_74;
      }

      v212 = &type metadata for Parent;
      v213 = &off_1F2529C98;
      v217 = 1;
      v84 = v69[13];
      v85 = *(v84 + 16);
      if (!v85)
      {

LABEL_120:
        v99 = *(v19 + 240) - *(v19 + 232);
        v100 = ecs_stack_allocator_allocate(v69[4], 8 * v99, 8);
        *v100 = v26;
        sub_1AF63515C(&v212, &v220);
        *v223 = v100;
        *&v223[8] = v99;
        *&v223[16] = 1;
        v101 = v69[13];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[13] = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v101 = sub_1AF420EA0(0, v101[2] + 1, 1, v101);
          v69[13] = v101;
        }

        v104 = v101[2];
        v103 = v101[3];
        if (v104 >= v103 >> 1)
        {
          v69[13] = sub_1AF420EA0(v103 > 1, v104 + 1, 1, v101);
        }

        sub_1AF635250(&v212);
        v105 = v69[13];
        *(v105 + 16) = v104 + 1;
        v106 = v105 + 72 * v104;
        *(v106 + 32) = v220;
        v108 = v222;
        v107 = *v223;
        v109 = v221;
        *(v106 + 96) = *&v223[16];
        *(v106 + 64) = v108;
        *(v106 + 80) = v107;
        *(v106 + 48) = v109;
        v69[13] = v105;
        goto LABEL_74;
      }

      v86 = v84 + 32;

      v87 = 0;
      while (1)
      {
        sub_1AF6350F8(v86, v218);
        sub_1AF63515C(v218, &v220);
        sub_1AF63515C(&v212, v223);
        if (BYTE8(v222) <= 2u)
        {
          break;
        }

        if (BYTE8(v222) == 3)
        {
          sub_1AF63515C(&v220, v210);
          if (v223[40] != 3)
          {
            goto LABEL_93;
          }

LABEL_112:
          sub_1AF616568(v210, &v238);
          sub_1AF616568(v223, v228);
          v93 = *(&v240 + 1);
          v92 = v240;
          sub_1AF441150(&v238, v240);
          LOBYTE(v92) = sub_1AF640C98(v228, v92, v93);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v228);
          sub_1AFCB9FB8(v218, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v238);
          sub_1AF635250(&v220);
          if (v92)
          {
            goto LABEL_117;
          }

          goto LABEL_95;
        }

        if (BYTE8(v222) != 4)
        {
          sub_1AFCB9FB8(v218, sub_1AF43A540);
          if (v223[40] == 5)
          {
            v94 = vorrq_s8(*&v223[8], *&v223[24]);
            if (!(*&vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL)) | *v223))
            {
              sub_1AF635250(&v220);
LABEL_117:
              v96 = sub_1AFBFCA08(&v220);
              v97 = *(v95 + 48);
              if (v97)
              {
                v98 = *(v95 + 64);
                *(v97 + 8 * v98) = v26;
                *(v95 + 64) = v98 + 1;
              }

              (v96)(&v220, 0);

              sub_1AF635250(&v212);
LABEL_74:
              if (++v26 == v27)
              {
                goto LABEL_18;
              }

              goto LABEL_75;
            }
          }

          goto LABEL_94;
        }

        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40] != 4)
        {
          goto LABEL_94;
        }

        v88 = LOBYTE(v210[0]);
        v89 = v223[0];
        sub_1AF635250(&v220);
        if (v88 == v89)
        {
          goto LABEL_117;
        }

LABEL_95:
        ++v87;
        v86 += 72;
        if (v85 == v87)
        {
          goto LABEL_120;
        }
      }

      if (!BYTE8(v222))
      {
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40])
        {
          goto LABEL_94;
        }

        goto LABEL_107;
      }

      if (BYTE8(v222) == 1)
      {
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40] != 1)
        {
          goto LABEL_94;
        }

LABEL_107:
        v90 = *&v210[0];
        v91 = *v223;
        sub_1AF635250(&v220);
        if (v90 == v91)
        {
          goto LABEL_117;
        }

        goto LABEL_95;
      }

      sub_1AF63515C(&v220, v210);
      if (v223[40] != 2)
      {
LABEL_93:
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v210);
LABEL_94:
        sub_1AFCB9F58(&v220, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_95;
      }

      goto LABEL_112;
    }

    v24 = v255;
    if (v255)
    {
      v25 = 0;
      v189 = v244;
      do
      {
        v28 = *(v23 + 8 * v25);
        v29 = (v194 + 8 * v25);
        v30 = *v29;
        v31 = v29[1];

        if (*(v19 + 184))
        {
          goto LABEL_205;
        }

        v33 = *(*(v19 + 168) + 4 * v28);
        v34 = *(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v33 + 8);

        v35 = v30 == v33 && v31 == v34;
        if (!v35)
        {
          v36 = v29[1];
          v37 = *v29;
          v38 = v37 == -1 && v36 == 0;
          if (!v38 && (v37 & 0x80000000) == 0 && v192[1] > v37 && (v36 == -1 || *(*v192 + 12 * v37 + 8) == v36))
          {
            goto LABEL_21;
          }
        }

        v39 = *(*(v19 + 40) + 16);
        v40 = *(v39 + 128);
        if (!*(v40 + 16))
        {
          goto LABEL_21;
        }

        v41 = sub_1AF449CB8(&type metadata for Parent);
        if ((v42 & 1) == 0 || *(*(v39 + 24) + 16 * *(*(v40 + 56) + 8 * v41) + 32) != &type metadata for Parent)
        {
          goto LABEL_21;
        }

        v212 = &type metadata for Parent;
        v213 = &off_1F2529C98;
        v217 = 1;
        v43 = v189[13];
        v44 = *(v43 + 16);
        if (!v44)
        {

LABEL_67:
          v58 = *(v19 + 240) - *(v19 + 232);
          v59 = ecs_stack_allocator_allocate(v189[4], 8 * v58, 8);
          *v59 = v28;
          sub_1AF63515C(&v212, &v220);
          *v223 = v59;
          *&v223[8] = v58;
          *&v223[16] = 1;
          v60 = v189[13];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v189[13] = v60;
          if ((v61 & 1) == 0)
          {
            v60 = sub_1AF420EA0(0, v60[2] + 1, 1, v60);
            v189[13] = v60;
          }

          v63 = v60[2];
          v62 = v60[3];
          if (v63 >= v62 >> 1)
          {
            v189[13] = sub_1AF420EA0(v62 > 1, v63 + 1, 1, v60);
          }

          sub_1AF635250(&v212);
          v64 = v189[13];
          *(v64 + 16) = v63 + 1;
          v65 = v64 + 72 * v63;
          *(v65 + 32) = v220;
          v67 = v222;
          v66 = *v223;
          v68 = v221;
          *(v65 + 96) = *&v223[16];
          *(v65 + 64) = v67;
          *(v65 + 80) = v66;
          *(v65 + 48) = v68;
          v189[13] = v64;
          goto LABEL_21;
        }

        v45 = v43 + 32;

        v46 = 0;
        while (1)
        {
          sub_1AF6350F8(v45, v218);
          sub_1AF63515C(v218, &v220);
          sub_1AF63515C(&v212, v223);
          if (BYTE8(v222) <= 2u)
          {
            if (!BYTE8(v222))
            {
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              sub_1AF63515C(&v220, v210);
              if (v223[40])
              {
                goto LABEL_41;
              }

              goto LABEL_54;
            }

            if (BYTE8(v222) == 1)
            {
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              sub_1AF63515C(&v220, v210);
              if (v223[40] != 1)
              {
                goto LABEL_41;
              }

LABEL_54:
              v49 = *&v210[0];
              v50 = *v223;
              sub_1AF635250(&v220);
              if (v49 == v50)
              {
                goto LABEL_64;
              }

              goto LABEL_42;
            }

            sub_1AF63515C(&v220, v210);
            if (v223[40] != 2)
            {
LABEL_40:
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v210);
LABEL_41:
              sub_1AFCB9F58(&v220, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
              goto LABEL_42;
            }

            goto LABEL_59;
          }

          if (BYTE8(v222) == 3)
          {
            sub_1AF63515C(&v220, v210);
            if (v223[40] != 3)
            {
              goto LABEL_40;
            }

LABEL_59:
            sub_1AF616568(v210, &v238);
            sub_1AF616568(v223, v228);
            v52 = *(&v240 + 1);
            v51 = v240;
            sub_1AF441150(&v238, v240);
            LOBYTE(v51) = sub_1AF640C98(v228, v51, v52);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v228);
            sub_1AFCB9FB8(v218, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v238);
            sub_1AF635250(&v220);
            if (v51)
            {
              goto LABEL_64;
            }

            goto LABEL_42;
          }

          if (BYTE8(v222) != 4)
          {
            break;
          }

          sub_1AFCB9FB8(v218, sub_1AF43A540);
          sub_1AF63515C(&v220, v210);
          if (v223[40] != 4)
          {
            goto LABEL_41;
          }

          v47 = LOBYTE(v210[0]);
          v48 = v223[0];
          sub_1AF635250(&v220);
          if (v47 == v48)
          {
            goto LABEL_64;
          }

LABEL_42:
          ++v46;
          v45 += 72;
          if (v44 == v46)
          {
            goto LABEL_67;
          }
        }

        sub_1AFCB9FB8(v218, sub_1AF43A540);
        if (v223[40] != 5)
        {
          goto LABEL_41;
        }

        v53 = vorrq_s8(*&v223[8], *&v223[24]);
        if (*&vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL)) | *v223)
        {
          goto LABEL_41;
        }

        sub_1AF635250(&v220);
LABEL_64:
        v55 = sub_1AFBFCA08(&v220);
        v56 = *(v54 + 48);
        if (v56)
        {
          v57 = *(v54 + 64);
          *(v56 + 8 * v57) = v28;
          *(v54 + 64) = v57 + 1;
        }

        (v55)(&v220, 0);

        sub_1AF635250(&v212);
LABEL_21:
        ++v25;
      }

      while (v25 != v24);
    }

LABEL_18:
    v11 = v183;
    v199 = v181;
    v200 = v236;
    v201 = v237;
    v8 = v172;
    sub_1AF630994(v172, &v199, v241);
    sub_1AF62D29C(v19);
    ecs_stack_allocator_pop_snapshot(v187);
    v9 = v170;
    if (v170)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    v10 = v185 + 1;
  }

  while (v185 + 1 != v174);
  v110 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, v110, sub_1AFCBA88C);
  v4 = v166;
  a1 = v168;
  LOBYTE(v6) = v164;
  v5 = v163;
LABEL_128:
  v212 = v4;
  LODWORD(v213) = v5;
  BYTE4(v213) = v6;
  v214 = 1;
  v215 = 2;
  v216 = 0;

  sub_1AF705168(3, v228);

  v210[0] = v228[0];
  v210[1] = v228[1];
  v211 = v229;
  sub_1AF6B06C0(a1, v210, 0x200000000, v230);
  v171 = *v230;
  if (*v230)
  {
    v169 = *&v230[40];
    v111 = *(&v231 + 1);
    v112 = *(&v232 + 1);
    v234 = *&v230[8];
    v235 = *&v230[24];
    if (v233 <= 0)
    {
      v222 = *&v230[32];
      *v223 = v231;
      *&v223[16] = v232;
      *&v223[32] = v233;
      v220 = *v230;
      v221 = *&v230[16];
      sub_1AF5DD298(&v220, v218);
      sub_1AFCBA0DC(v197, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
      v157 = &qword_1EB643C70;
      v158 = &type metadata for Children;
      v159 = &off_1F252A4A0;
      v160 = v228;
    }

    else
    {
      if (*(&v231 + 1))
      {
        v179 = *(*(&v232 + 1) + 32);
        v177 = *(v232 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v193 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v222 = *&v230[32];
        *v223 = v231;
        *&v223[16] = v232;
        *&v223[32] = v233;
        v220 = *v230;
        v221 = *&v230[16];
        sub_1AF5DD298(&v220, v218);
        v113 = 0;
        v165 = v112;
        v167 = v111;
        do
        {
          v114 = (v169 + 48 * v113);
          v115 = *v114;
          v188 = v114[1];
          v116 = *(v114 + 3);
          v117 = *(v114 + 5);
          v182 = *(v114 + 4);
          v184 = *(v114 + 2);
          if (v177)
          {
            v118 = *(v117 + 376);

            os_unfair_lock_lock(v118);
            os_unfair_lock_lock(*(v117 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v179);
          v119 = *(v112 + 4);
          v218[0] = *(v112 + 3);
          v218[1] = v119;
          v219 = v112[10];
          v120 = *(*(*(*(v117 + 40) + 16) + 32) + 16) + 1;
          v112[6] = ecs_stack_allocator_allocate(v112[4], 48 * v120, 8);
          v112[7] = v120;
          v112[9] = 0;
          v112[10] = 0;
          v112[8] = 0;
          v121 = sub_1AF64B110(&type metadata for Children, &off_1F252A4A0, v184, v116, v182, v112);
          v186 = v121;
          v173 = v113;
          v175 = v11;
          if (v184)
          {
            if (v182)
            {
              v122 = v182;
              for (i = 0; i != v122; ++i)
              {
                v124 = v184[i];
                v125 = *(*(v121 + 8 * i) + 16);

                if (v125)
                {
                  v128 = 0;
                  v129 = v126 + 32;
                  v190 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v130 = v128;
                    while (1)
                    {
                      *&v127 = *(v129 + 8 * v130);
                      v195 = v127;

                      if (*(v117 + 184))
                      {
                        goto LABEL_205;
                      }

                      v132 = *(*(v117 + 168) + 4 * v124);
                      v133 = *(*(v131 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v132 + 8);

                      *(&v127 + 1) = *(&v195 + 1);
                      if (v195 != v132 || DWORD1(v195) != v133)
                      {
                        v135 = v195 == -1 && DWORD1(v195) == 0;
                        if (!v135 && (v195 & 0x80000000) == 0 && v193[1] > v195 && (DWORD1(v195) == -1 || *(*v193 + 12 * v195 + 8) == DWORD1(v195)))
                        {
                          break;
                        }
                      }

                      if (v125 == ++v130)
                      {
                        v122 = v182;
                        goto LABEL_140;
                      }
                    }

                    v137 = v190;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v190 + 16) + 1, 1);
                      v137 = v190;
                    }

                    v139 = *(v137 + 16);
                    v138 = *(v137 + 24);
                    v140 = v139 + 1;
                    v127 = v195;
                    if (v139 >= v138 >> 1)
                    {
                      sub_1AFC07194(v138 > 1, v139 + 1, 1);
                      v140 = v139 + 1;
                      v127 = v195;
                      v137 = v190;
                    }

                    v128 = v130 + 1;
                    *(v137 + 16) = v140;
                    v190 = v137;
                    *(v137 + 8 * v139 + 32) = v127;
                    v35 = v125 - 1 == v130;
                    v122 = v182;
                  }

                  while (!v35);
                }

                else
                {
                  v190 = MEMORY[0x1E69E7CC0];
                }

LABEL_140:

                v121 = v186;
                *(v186 + 8 * i) = v190;
              }
            }
          }

          else if (v115 != v188)
          {
            do
            {
              v141 = *(v121 + 8 * v115);
              v142 = *(v141 + 16);

              if (v142)
              {
                v144 = 0;
                v191 = MEMORY[0x1E69E7CC0];
                do
                {
                  v145 = v144;
                  while (1)
                  {
                    *&v143 = *(v141 + 32 + 8 * v145);
                    v196 = v143;

                    if (*(v117 + 184))
                    {
                      goto LABEL_205;
                    }

                    v147 = *(*(v117 + 168) + 4 * v115);
                    v148 = *(*(v146 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v147 + 8);

                    *(&v143 + 1) = *(&v196 + 1);
                    if (v196 != v147 || DWORD1(v196) != v148)
                    {
                      v150 = v196 == -1 && DWORD1(v196) == 0;
                      if (!v150 && (v196 & 0x80000000) == 0 && v193[1] > v196 && (DWORD1(v196) == -1 || *(*v193 + 12 * v196 + 8) == DWORD1(v196)))
                      {
                        break;
                      }
                    }

                    if (v142 == ++v145)
                    {
                      goto LABEL_173;
                    }
                  }

                  v152 = v191;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v191 + 16) + 1, 1);
                    v152 = v191;
                  }

                  v154 = *(v152 + 16);
                  v153 = *(v152 + 24);
                  v155 = v154 + 1;
                  v143 = v196;
                  if (v154 >= v153 >> 1)
                  {
                    sub_1AFC07194(v153 > 1, v154 + 1, 1);
                    v155 = v154 + 1;
                    v143 = v196;
                    v152 = v191;
                  }

                  v144 = v145 + 1;
                  *(v152 + 16) = v155;
                  v191 = v152;
                  *(v152 + 8 * v154 + 32) = v143;
                }

                while (v142 - 1 != v145);
              }

              else
              {
                v191 = MEMORY[0x1E69E7CC0];
              }

LABEL_173:

              v121 = v186;
              *(v186 + 8 * v115) = v191;

              ++v115;
            }

            while (v115 != v188);
          }

          v238 = v171;
          v239 = v234;
          v240 = v235;
          v112 = v165;
          v11 = v175;
          sub_1AF630994(v165, &v238, v218);
          sub_1AF62D29C(v117);
          ecs_stack_allocator_pop_snapshot(v179);
          if (v177)
          {
            os_unfair_lock_unlock(*(v117 + 344));
            os_unfair_lock_unlock(*(v117 + 376));
          }

          v113 = v173 + 1;
        }

        while (v173 + 1 != v167);
      }

      else
      {
        v222 = *&v230[32];
        *v223 = v231;
        *&v223[16] = v232;
        *&v223[32] = v233;
        v220 = *v230;
        v221 = *&v230[16];
        sub_1AF5DD298(&v220, v218);
      }

      sub_1AFCBA0DC(v228, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
      v157 = &qword_1EB643C78;
      v158 = &type metadata for Parent;
      v159 = &off_1F2529C98;
      v160 = v197;
    }

    sub_1AFCBA0DC(v160, v157, v158, v159);
    v161 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v230, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    return sub_1AFCB9F58(v230, &qword_1ED725EA0, &type metadata for QueryResult, v161, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v197, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
    return sub_1AFCBA0DC(v228, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
  }
}

uint64_t sub_1AFCA9C88(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v7 = a2;
    swift_once();
    LODWORD(a2) = v7;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v27 = qword_1ED73B840;
  v28 = v4;
  v29 = v3 >> 31;
  v30 = 1;
  v31 = 2;
  v32 = 0;

  sub_1AF702F8C(3, v8);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Seed;
  *(inited + 40) = &off_1F2563DE0;
  sub_1AF5D1EC0(inited, v9);
  sub_1AFCBA0DC(v8, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  swift_setDeallocating();
  v18[0] = v9[0];
  v18[1] = v9[1];
  v19 = v10;
  sub_1AF6B06C0(a1, v18, 0x200000000, &v11);
  if (!v11)
  {
    return sub_1AFCBA0DC(v9, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  }

  v23 = v14;
  v24 = v15;
  v25 = v16;
  v21 = v12;
  v22 = v13;
  v26 = v17;
  v20 = v11;
  sub_1AFD0756C(&v20);
  sub_1AFCBA0DC(v9, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  return sub_1AFCB9F58(&v11, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

uint64_t sub_1AFCA9ED8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v38 = a2;
    swift_once();
    LODWORD(a2) = v38;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v63 = qword_1ED73B840;
  v64 = v4;
  v65 = v3 >> 31;
  v66 = 1;
  v67 = 2;
  v68 = 0;

  sub_1AF703280(1, v54);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for VFXAssetTag;
  *(inited + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(inited, v55);
  sub_1AFCBA0DC(v54, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  swift_setDeallocating();
  v61[0] = v55[0];
  v61[1] = v55[1];
  v62 = v56;
  sub_1AF6B06C0(a1, v61, 0x200000000, v57);
  result = sub_1AFCBA0DC(v55, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  if (*&v57[0])
  {
    if (v60 >= 1 && v59)
    {
      v7 = v58;
      v8 = v58 + 48 * v59;
      v39 = v8;
      do
      {
        v9 = *(v7 + 40);
        v10 = *(v9 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v10);
        os_unfair_lock_lock(*(v9 + 344));
        v11 = *(v9 + 24);

        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        memset(v53, 0, 40);
        v12 = sub_1AF65A4B4(v11, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v46, v53);

        sub_1AFCB9FB8(v53, sub_1AF5C4448);
        sub_1AFCB9FB8(&v46, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v12);
        }

        else
        {
          v14 = *(v9 + 232);
          v13 = *(v9 + 240);
          v42 = *(v9 + 120);
          v45 = *(v9 + 28);
          v44 = *(v9 + 32);
          v15 = *(v9 + 16);
          v16 = *(v9 + 40);
          v17 = *(v16 + 200);
          v43 = *(*(v15 + 88) + 8 * v12 + 32);

          if ((v17 & 1) != 0 || *(v43 + 200) == 1)
          {
            *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v16 = *(v9 + 40);
          }

          v18 = v42;
          v19 = *(v9 + 256);
          sub_1AF5B4FCC(v16, v14, v13, 0, v9);
          v41 = *(v9 + 256);
          v20 = v41 - v19;
          if (v41 == v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          v53[0] = v21;
          v22 = *(*(v9 + 40) + 24);
          v23 = *(v22 + 16);
          if (v23)
          {
            v40 = v7;
            v24 = v22 + 32;

            v25 = 0;
            v26 = v41 - v19;
            do
            {
              v27 = v24 + 40 * v25;
              if ((*(v27 + 32) & 1) == 0)
              {
                v28 = *(v43 + 24);
                v29 = *(v28 + 16);
                if (v29)
                {
                  v30 = (v28 + 32);
                  while (*v30 != *v27)
                  {
                    v30 += 5;
                    if (!--v29)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8();
                  v26 = v41 - v19;
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v20 = v26;

            v7 = v40;
            v18 = v42;
          }

          if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v9 + 72) * v20);
          }

          if (*(v9 + 184))
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v9 + 168);
          }

          v52 = 0;

          MEMORY[0x1EEE9AC00](v32, v33);
          v34 = v45;
          v35 = v44;
          DWORD2(v47) = -1;
          v48 = v19;
          v49 = v41;
          v50 = v19;
          v51 = v41;
          *&v46 = v19;
          *(&v46 + 1) = v41;
          *&v47 = v31;
          if (v20 < 1)
          {

            v8 = v39;
          }

          else
          {
            v8 = v39;
            do
            {
              sub_1AF6248A8(v12, v34 | (v35 << 32), v18, v15, &v46, sub_1AF5C5E08);
              v35 = v44;
              v34 = v45;
            }

            while ((*(&v46 + 1) - v46) > 0);
          }

          v36 = *(v9 + 192);
          if (v36)
          {
            v37 = *(v9 + 208);
            sub_1AF75D364(v19, v41, v36);
            sub_1AF75D364(v19, v41, v37);
          }
        }

        v7 += 48;
        os_unfair_lock_unlock(*(v9 + 344));
        os_unfair_lock_unlock(*(v9 + 376));
      }

      while (v7 != v8);
    }

    return sub_1AFCB9F58(v57, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  return result;
}

uint64_t sub_1AFCAA528(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = result;
    v4 = a2 & 0x100000000;
    if (qword_1ED72D720 != -1)
    {
      v25 = a2;
      swift_once();
      LODWORD(a2) = v25;
    }

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = a2;
    }

    v44 = qword_1ED73B840;
    v45 = v5;
    v46 = v4 >> 31;
    v47 = 1;
    v48 = 2;
    v49 = 0;

    sub_1AF705008(3, v33);

    v42[0] = v33[0];
    v42[1] = v33[1];
    v43 = v34;
    sub_1AF6B06C0(v3, v42, 0x200000000, v35);
    if (*v35)
    {
      if (v38 > 0 && (v28 = *(&v36 + 1)) != 0)
      {
        v27 = *&v35[40];
        v6 = *(&v37 + 1);
        i = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v29 = *(*(&v37 + 1) + 32);
        v39 = *v35;
        v40 = *&v35[8];
        v41 = *&v35[24];
        v32[2] = *&v35[32];
        v32[3] = v36;
        v32[4] = v37;
        v32[5] = v38;
        v32[0] = *v35;
        v32[1] = *&v35[16];
        sub_1AF5DD298(v32, v30);
        v8 = 0;
        v26 = i;
        do
        {
          v9 = (v27 + 48 * v8);
          v11 = *v9;
          v10 = v9[1];
          v13 = *(v9 + 2);
          v12 = *(v9 + 3);
          v15 = *(v9 + 4);
          v14 = *(v9 + 5);
          if (i)
          {
            v16 = *(v14 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v29);
          v17 = *(v6 + 64);
          v30[0] = *(v6 + 48);
          v30[1] = v17;
          v31 = *(v6 + 80);
          v18 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
          *(v6 + 56) = v18;
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 64) = 0;
          v19 = sub_1AF64B110(&type metadata for GraphScriptingConfig, &off_1F253C070, v13, v12, v15, v6);
          v20 = v19;
          if (v13)
          {
            for (i = v26; v15; --v15)
            {
              sub_1AF7C478C();
              v20 += 32;
            }
          }

          else
          {
            i = v26;
            if (v11 != v10)
            {
              v21 = v19 + 32 * v11;
              v22 = v10 - v11;
              do
              {
                sub_1AF7C478C();
                v21 += 32;
                --v22;
              }

              while (v22);
            }
          }

          sub_1AF630994(v6, &v39, v30);
          sub_1AF62D29C(v14);
          ecs_stack_allocator_pop_snapshot(v29);
          if (i)
          {
            os_unfair_lock_unlock(*(v14 + 344));
            os_unfair_lock_unlock(*(v14 + 376));
          }

          ++v8;
        }

        while (v8 != v28);
        sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
        v24 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v23 = v24;
      }

      else
      {
        sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
        v23 = MEMORY[0x1E69E6720];
      }

      return sub_1AFCB9F58(v35, &qword_1ED725EA0, &type metadata for QueryResult, v23, sub_1AFCBA88C);
    }

    else
    {
      return sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
    }
  }

  return result;
}

uint64_t sub_1AFCAA95C(uint64_t a1, uint64_t a2)
{
  v301 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v198 = a2;
    swift_once();
    LODWORD(a2) = v198;
  }

  v4 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v243 = qword_1ED73B840;
  v6 = v3 >> 31;
  v244 = v5;
  v245 = v6;
  v246 = 1;
  v247 = 2;
  v248 = 0;

  sub_1AF70517C(1, v231);

  v241[0] = v231[0];
  v241[1] = v231[1];
  v242 = v232;
  sub_1AF6B06C0(a1, v241, 0x200000000, v270);
  v266 = *&v270[32];
  v267 = v271;
  v268 = v272;
  v269 = v273;
  v264 = *v270;
  v265 = *&v270[16];
  result = sub_1AFCBA0DC(v231, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
  v208 = *v270;
  if (!*v270)
  {
    return result;
  }

  v8 = *(&v271 + 1);
  v207 = *&v270[40];
  v9 = v272;
  v276 = *&v270[8];
  v277 = *&v270[24];
  v206 = v273;
  if (v273 <= 0 || !*(&v271 + 1))
  {
    v160 = MEMORY[0x1E69E6720];
    v161 = v270;
    return sub_1AFCB9F58(v161, &qword_1ED725EA0, &type metadata for QueryResult, v160, sub_1AFCBA88C);
  }

  v199 = v6;
  v200 = v5;
  v201 = v4;
  v10 = *(*(&v272 + 1) + 32);
  v11 = *(v272 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v226 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v263[2] = v266;
  v263[3] = v267;
  v263[4] = v268;
  v263[5] = v269;
  v263[0] = v264;
  v263[1] = v265;
  sub_1AF5DD298(v263, v288);
  v12 = 0;
  v216 = 0;
  v13 = 0;
  v203 = v11;
  v214 = a1;
  v204 = v10;
  v205 = v8;
  while (2)
  {
    v211 = v12;
    v14 = (v207 + 48 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 2);
    v19 = *(v14 + 3);
    v20 = *(v14 + 5);
    v227 = *(v14 + 4);
    if (v11)
    {
      v21 = *(v20 + 376);

      os_unfair_lock_lock(v21);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v10);
    v22 = *(*(&v9 + 1) + 64);
    v286[0] = *(*(&v9 + 1) + 48);
    v286[1] = v22;
    v287 = *(*(&v9 + 1) + 80);
    v23 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    *(*(&v9 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v9 + 1) + 32), 48 * v23, 8);
    *(*(&v9 + 1) + 56) = v23;
    *(*(&v9 + 1) + 72) = 0uLL;
    *(*(&v9 + 1) + 64) = 0;
    v274[0] = 1;
    v288[0] = v9;
    v288[1] = v20;
    v289 = *(&v9 + 1);
    v290 = v17;
    v291 = (v16 - v15 + v17);
    v292 = v206;
    v293 = v15;
    v294 = v16;
    v295 = 0;
    v296 = 0;
    v297 = 1;
    v298 = v18;
    v299 = v19;
    v300 = v227;
    v228 = sub_1AF7071AC(v20, v288);
    v223 = v298;
    if (v298)
    {
      v24 = v214;
      v25 = &unk_1ED72C000;
      v220 = v300;
      if (!v300)
      {
        v93 = v214;
        goto LABEL_169;
      }

      v209 = v13;
      v26 = 0;
      v27 = v289;
LABEL_20:
      v28 = *(v223 + 8 * v26);

      if (*(v20 + 184))
      {
        goto LABEL_235;
      }

      v30 = *(*(v20 + 168) + 4 * v28);
      v31 = (v228 + 8 * v26);
      v32 = *(*(v29 + v25[284]) + 12 * v30 + 8);

      v34 = v31[1];
      v35 = *v31;
      if (__PAIR64__(v34, v35) != 0xFFFFFFFF && (v35 & 0x80000000) == 0 && v226[1] > v35)
      {
        v57 = (*v226 + 12 * v35);
        if (v34 == -1 || v57[2] == v34)
        {
          v58 = *(v57 + 2);
          v59 = *(*(v24 + 144) + 8 * *v57 + 32);
          v60 = *(v59 + 48);
          v61 = (v60 + 32);
          v62 = *(v60 + 16) + 1;
          while (--v62)
          {
            v63 = v61 + 5;
            v64 = *v61;
            v61 += 5;
            if (v64 == &type metadata for EmitterDescription)
            {
              v65 = (&(*(v63 - 2))->Kind + 104 * v58 + *(v59 + 128));
              v67 = *v65;
              v66 = v65[1];
              v69 = v65[2];
              v68 = v65[3];
              v70 = (v67 + 36);
              v71 = *(v67 + 16) + 1;
              while (--v71)
              {
                v72 = v70;
                v70 += 2;
                if (*(v72 - 1) == v30 && *v72 == v32)
                {
                  goto LABEL_19;
                }
              }

              v84 = (v66 + 36);
              v85 = *(v66 + 16) + 1;
              while (--v85)
              {
                v86 = v84;
                v84 += 2;
                if (*(v86 - 1) == v30 && *v86 == v32)
                {
                  goto LABEL_19;
                }
              }

              v87 = (v69 + 36);
              v88 = *(v69 + 16) + 1;
              while (--v88)
              {
                v89 = v87;
                v87 += 2;
                if (*(v89 - 1) == v30 && *v89 == v32)
                {
                  goto LABEL_19;
                }
              }

              v90 = (v68 + 36);
              v91 = *(v68 + 16) + 1;
              while (--v91)
              {
                v92 = v90;
                v90 += 2;
                if (*(v92 - 1) == v30 && *v92 == v32)
                {
                  goto LABEL_19;
                }
              }

              sub_1AF6AFAFC(0, v33);
              goto LABEL_18;
            }
          }

          goto LABEL_19;
        }
      }

      v36 = *(v20 + 232);
      if (v28 >= *(v20 + 256) && v28 < v36)
      {
        goto LABEL_18;
      }

      *&v253 = 0;
      v251 = 0u;
      v252 = 0u;
      BYTE8(v253) = 5;
      v37 = *(v27 + 104);
      v38 = *(v37 + 16);
      if (!v38)
      {

LABEL_67:
        v73 = *(v20 + 240) - v36;
        v74 = ecs_stack_allocator_allocate(*(v27 + 32), 8 * v73, 8);
        *v74 = v28;
        sub_1AF63515C(&v251, v274);
        *v275 = v74;
        *&v275[8] = v73;
        *&v275[16] = 1;
        v75 = *(v27 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v27 + 104) = v75;
        v25 = &unk_1ED72C000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1AF420EA0(0, v75[2] + 1, 1, v75);
          *(v27 + 104) = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          *(v27 + 104) = sub_1AF420EA0(v77 > 1, v78 + 1, 1, v75);
        }

        sub_1AF635250(&v251);
        v79 = *(v27 + 104);
        *(v79 + 16) = v78 + 1;
        v80 = v79 + 72 * v78;
        *(v80 + 32) = *v274;
        v81 = *v275;
        v82 = *&v274[32];
        v83 = *&v274[16];
        *(v80 + 96) = *&v275[16];
        *(v80 + 64) = v82;
        *(v80 + 80) = v81;
        *(v80 + 48) = v83;
        *(v27 + 104) = v79;
        goto LABEL_18;
      }

      v39 = v37 + 32;

      v40 = 0;
      while (1)
      {
        sub_1AF6350F8(v39, &v257);
        sub_1AF63515C(&v257, v274);
        sub_1AF63515C(&v251, v275);
        if (v274[40] <= 2u)
        {
          break;
        }

        if (v274[40] == 3)
        {
          sub_1AF63515C(v274, v249);
          if (v275[40] != 3)
          {
            goto LABEL_26;
          }

          sub_1AF616568(v249, &v280);
          sub_1AF616568(v275, v278);
          v45 = v284;
          v46 = v285;
          sub_1AF441150(&v280, v284);
          v47 = v45;
          v48 = v46;
LABEL_46:
          v51 = sub_1AF640C98(v278, v47, v48);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
          sub_1AFCB9FB8(&v257, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v280);
          sub_1AF635250(v274);
          if (v51)
          {
            goto LABEL_51;
          }

          goto LABEL_28;
        }

        if (v274[40] != 4)
        {
          sub_1AFCB9FB8(&v257, sub_1AF43A540);
          if (v275[40] == 5)
          {
            v52 = vorrq_s8(*&v275[8], *&v275[24]);
            if (!(*&vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL)) | *v275))
            {
              sub_1AF635250(v274);
LABEL_51:
              v54 = sub_1AFBFCA08(v274);
              v55 = *(v53 + 48);
              if (v55)
              {
                v56 = *(v53 + 64);
                *(v55 + 8 * v56) = v28;
                *(v53 + 64) = v56 + 1;
              }

              (v54)(v274, 0);

              sub_1AF635250(&v251);
              v24 = v214;
              v25 = &unk_1ED72C000;
LABEL_18:
              v216 = 1;
LABEL_19:
              if (++v26 == v220)
              {
                v13 = v209;
                v93 = v24;
                goto LABEL_169;
              }

              goto LABEL_20;
            }
          }

          goto LABEL_27;
        }

        sub_1AFCB9FB8(&v257, sub_1AF43A540);
        sub_1AF63515C(v274, v249);
        if (v275[40] != 4)
        {
          goto LABEL_27;
        }

        v41 = LOBYTE(v249[0]);
        v42 = v275[0];
        sub_1AF635250(v274);
        if (v41 == v42)
        {
          goto LABEL_51;
        }

LABEL_28:
        ++v40;
        v39 += 72;
        if (v38 == v40)
        {
          v36 = *(v20 + 232);
          v24 = v214;
          goto LABEL_67;
        }
      }

      if (!v274[40])
      {
        sub_1AFCB9FB8(&v257, sub_1AF43A540);
        sub_1AF63515C(v274, v249);
        if (v275[40])
        {
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      if (v274[40] == 1)
      {
        sub_1AFCB9FB8(&v257, sub_1AF43A540);
        sub_1AF63515C(v274, v249);
        if (v275[40] != 1)
        {
          goto LABEL_27;
        }

LABEL_40:
        v43 = *&v249[0];
        v44 = *v275;
        sub_1AF635250(v274);
        if (v43 == v44)
        {
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      sub_1AF63515C(v274, v249);
      if (v275[40] != 2)
      {
LABEL_26:
        sub_1AFCB9FB8(&v257, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v249);
LABEL_27:
        sub_1AFCB9F58(v274, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_28;
      }

      sub_1AF616568(v249, &v280);
      sub_1AF616568(v275, v278);
      v49 = v284;
      v50 = v285;
      sub_1AF441150(&v280, v284);
      v47 = v49;
      v48 = v50;
      goto LABEL_46;
    }

    v210 = v13;
    v94 = v293;
    v95 = v294;
    v96 = v226;
    v93 = v214;
    v97 = v202;
    if (v293 == v294)
    {
      goto LABEL_168;
    }

    v221 = v288[0];
    v224 = v289;
    do
    {
      while (1)
      {
        v98 = v94;

        if (*(v20 + 184))
        {
LABEL_235:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        ++v94;
        v100 = *(*(v20 + 168) + 4 * v98);
        v101 = (v228 + 8 * v98);
        v102 = *(*(v99 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v100 + 8);

        v104 = v101[1];
        v105 = *v101;
        v106 = v105 == -1 && v104 == 0;
        if (v106 || (v105 & 0x80000000) != 0 || v96[1] <= v105 || (v107 = (*v96 + 12 * v105), v104 != -1) && v107[2] != v104)
        {
          v129 = *(v20 + 232);
          if (v98 >= *(v20 + 256) && v98 < v129)
          {
            goto LABEL_163;
          }

          v130 = v93;
          *&v253 = 0;
          v251 = 0u;
          v252 = 0u;
          BYTE8(v253) = 5;
          v131 = *(v224 + 104);
          v132 = *(v131 + 16);
          if (!v132)
          {

            v93 = v130;
            goto LABEL_158;
          }

          v133 = v131 + 32;

          v134 = 0;
          while (1)
          {
            sub_1AF6350F8(v133, &v257);
            sub_1AF63515C(&v257, v274);
            sub_1AF63515C(&v251, v275);
            if (v274[40] <= 2u)
            {
              break;
            }

            if (v274[40] == 3)
            {
              sub_1AF63515C(v274, v249);
              if (v275[40] == 3)
              {
                goto LABEL_142;
              }

LABEL_123:
              sub_1AFCB9FB8(&v257, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v249);
              goto LABEL_124;
            }

            if (v274[40] == 4)
            {
              sub_1AFCB9FB8(&v257, sub_1AF43A540);
              sub_1AF63515C(v274, v249);
              if (v275[40] == 4)
              {
                v135 = LOBYTE(v249[0]);
                v136 = v275[0];
                sub_1AF635250(v274);
                if (v135 == v136)
                {
                  goto LABEL_147;
                }

                goto LABEL_125;
              }
            }

            else
            {
              sub_1AFCB9FB8(&v257, sub_1AF43A540);
              if (v275[40] == 5)
              {
                v141 = vorrq_s8(*&v275[8], *&v275[24]);
                if (!(*&vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL)) | *v275))
                {
                  sub_1AF635250(v274);
LABEL_147:
                  v143 = sub_1AFBFCA08(v274);
                  v144 = *(v142 + 48);
                  if (v144)
                  {
                    v145 = *(v142 + 64);
                    *(v144 + 8 * v145) = v98;
                    *(v142 + 64) = v145 + 1;
                  }

                  (v143)(v274, 0);

                  sub_1AF635250(&v251);
                  v96 = v226;
                  v93 = v214;
LABEL_163:
                  v97 = v221;
                  goto LABEL_164;
                }
              }
            }

LABEL_124:
            sub_1AFCB9F58(v274, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_125:
            ++v134;
            v133 += 72;
            if (v132 == v134)
            {
              v129 = *(v20 + 232);
              v93 = v214;
LABEL_158:
              v149 = *(v20 + 240) - v129;
              v150 = ecs_stack_allocator_allocate(*(v224 + 32), 8 * v149, 8);
              *v150 = v98;
              sub_1AF63515C(&v251, v274);
              *v275 = v150;
              *&v275[8] = v149;
              *&v275[16] = 1;
              v151 = *(v224 + 104);
              v152 = swift_isUniquelyReferenced_nonNull_native();
              *(v224 + 104) = v151;
              v96 = v226;
              if ((v152 & 1) == 0)
              {
                v151 = sub_1AF420EA0(0, v151[2] + 1, 1, v151);
                *(v224 + 104) = v151;
              }

              v154 = v151[2];
              v153 = v151[3];
              if (v154 >= v153 >> 1)
              {
                *(v224 + 104) = sub_1AF420EA0(v153 > 1, v154 + 1, 1, v151);
              }

              sub_1AF635250(&v251);
              v155 = *(v224 + 104);
              *(v155 + 16) = v154 + 1;
              v156 = v155 + 72 * v154;
              *(v156 + 32) = *v274;
              v157 = *v275;
              v158 = *&v274[32];
              v159 = *&v274[16];
              *(v156 + 96) = *&v275[16];
              *(v156 + 64) = v158;
              *(v156 + 80) = v157;
              *(v156 + 48) = v159;
              *(v224 + 104) = v155;
              goto LABEL_163;
            }
          }

          if (!v274[40])
          {
            sub_1AFCB9FB8(&v257, sub_1AF43A540);
            sub_1AF63515C(v274, v249);
            if (!v275[40])
            {
LABEL_137:
              v137 = *&v249[0];
              v138 = *v275;
              sub_1AF635250(v274);
              if (v137 == v138)
              {
                goto LABEL_147;
              }

              goto LABEL_125;
            }

            goto LABEL_124;
          }

          if (v274[40] == 1)
          {
            sub_1AFCB9FB8(&v257, sub_1AF43A540);
            sub_1AF63515C(v274, v249);
            if (v275[40] == 1)
            {
              goto LABEL_137;
            }

            goto LABEL_124;
          }

          sub_1AF63515C(v274, v249);
          if (v275[40] == 2)
          {
LABEL_142:
            sub_1AF616568(v249, &v280);
            sub_1AF616568(v275, v278);
            v139 = v284;
            v140 = v285;
            sub_1AF441150(&v280, v284);
            LOBYTE(v139) = sub_1AF640C98(v278, v139, v140);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
            sub_1AFCB9FB8(&v257, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v280);
            sub_1AF635250(v274);
            if (v139)
            {
              goto LABEL_147;
            }

            goto LABEL_125;
          }

          goto LABEL_123;
        }

        v108 = *(v107 + 2);
        v109 = *(*(v93 + 144) + 8 * *v107 + 32);
        v110 = *(v109 + 48);
        v111 = (v110 + 32);
        v112 = *(v110 + 16) + 1;
LABEL_102:
        if (--v112)
        {
          break;
        }

LABEL_91:
        if (v94 == v95)
        {
          v97 = v221;
          goto LABEL_168;
        }
      }

      v113 = v111 + 5;
      v114 = *v111;
      v111 += 5;
      if (v114 != &type metadata for EmitterDescription)
      {
        goto LABEL_102;
      }

      v115 = (&(*(v113 - 2))->Kind + 104 * v108 + *(v109 + 128));
      v117 = *v115;
      v116 = v115[1];
      v119 = v115[2];
      v118 = v115[3];
      v120 = (v117 + 36);
      v121 = *(v117 + 16) + 1;
      while (--v121)
      {
        v122 = v120;
        v120 += 2;
        if (*(v122 - 1) == v100 && *v122 == v102)
        {
          goto LABEL_91;
        }
      }

      v123 = (v116 + 36);
      v124 = *(v116 + 16) + 1;
      while (--v124)
      {
        v125 = v123;
        v123 += 2;
        if (*(v125 - 1) == v100 && *v125 == v102)
        {
          goto LABEL_91;
        }
      }

      v126 = (v119 + 36);
      v127 = *(v119 + 16) + 1;
      while (--v127)
      {
        v128 = v126;
        v126 += 2;
        if (*(v128 - 1) == v100 && *v128 == v102)
        {
          goto LABEL_91;
        }
      }

      v146 = (v118 + 36);
      v147 = *(v118 + 16) + 1;
      while (--v147)
      {
        v148 = v146;
        v146 += 2;
        if (*(v148 - 1) == v100 && *v148 == v102)
        {
          goto LABEL_91;
        }
      }

      sub_1AF6AFAFC(0, v103);
      v97 = v221;
LABEL_164:
      v216 = 1;
    }

    while (v94 != v95);
LABEL_168:
    v202 = v97;
    v13 = v210;
LABEL_169:
    v235 = v208;
    v236 = v276;
    v237 = v277;
    sub_1AF630994(*(&v9 + 1), &v235, v286);
    sub_1AF62D29C(v20);
    v10 = v204;
    ecs_stack_allocator_pop_snapshot(v204);
    v11 = v203;
    if (v203)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    v12 = v211 + 1;
    if (v211 + 1 != v205)
    {
      continue;
    }

    break;
  }

  v162 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v270, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  result = sub_1AFCB9F58(v270, &qword_1ED725EA0, &type metadata for QueryResult, v162, sub_1AFCBA88C);
  if (v216)
  {
    v280 = v201;
    v281 = v200;
    v282 = v199;
    v283 = 1;
    LOBYTE(v284) = 2;
    v285 = 0;

    sub_1AF8291CC(v233);

    v278[0] = v233[0];
    v278[1] = v233[1];
    v279 = v234;
    sub_1AF6B06C0(v93, v278, 0x200000000, v274);
    v259 = *&v274[32];
    v260 = *v275;
    v261 = *&v275[16];
    v262 = *&v275[32];
    v257 = *v274;
    v258 = *&v274[16];
    result = sub_1AFCBA0DC(v233, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
    if (*v274)
    {
      if (*&v275[32] > 0 && (v215 = *&v275[8]) != 0)
      {
        v213 = *&v274[40];
        v163 = *&v275[24];
        v222 = *(*&v275[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v219 = *(*&v275[24] + 32);
        v238 = *v274;
        v239 = *&v274[8];
        v240 = *&v274[24];
        v253 = v259;
        v254 = v260;
        v255 = v261;
        v256 = v262;
        v251 = v257;
        v252 = v258;
        sub_1AF5DD298(&v251, v249);
        v164 = 0;
        v165 = v226;
        v212 = v163;
        do
        {
          v225 = v13;
          v218 = v164;
          v166 = (v213 + 48 * v164);
          v167 = *v166;
          v168 = v166[1];
          v170 = *(v166 + 2);
          v169 = *(v166 + 3);
          v171 = *(v166 + 4);
          v172 = *(v166 + 5);
          if (v222)
          {
            v173 = *(v172 + 376);

            v174 = v173;
            v165 = v226;
            os_unfair_lock_lock(v174);
            os_unfair_lock_lock(*(v172 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v219);
          v175 = *(v163 + 4);
          v249[0] = *(v163 + 3);
          v249[1] = v175;
          v250 = v163[10];
          v176 = *(*(*(*(v172 + 40) + 16) + 32) + 16) + 1;
          v163[6] = ecs_stack_allocator_allocate(v163[4], 48 * v176, 8);
          v163[7] = v176;
          v163[9] = 0;
          v163[10] = 0;
          v163[8] = 0;
          v217 = v172;
          v177 = sub_1AF64B110(&type metadata for Children, &off_1F252A4A0, v170, v169, v171, v163);
          if (v170)
          {
            if (v171)
            {
              for (i = 0; i != v171; ++i)
              {
                v179 = *(v177 + 8 * i);
                v180 = *(v179 + 16);
                if (v180)
                {

                  v182 = 32;
                  v183 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    *&v181 = *(v179 + v182);
                    v186 = v181 == -1 && DWORD1(v181) == 0;
                    if (!v186 && (v181 & 0x80000000) == 0 && v165[1] > v181 && (DWORD1(v181) == -1 || *(*v165 + 12 * v181 + 8) == DWORD1(v181)))
                    {
                      v229 = v181;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v183 + 16) + 1, 1);
                      }

                      v181 = v229;
                      v185 = *(v183 + 16);
                      v184 = *(v183 + 24);
                      if (v185 >= v184 >> 1)
                      {
                        sub_1AFC07194(v184 > 1, v185 + 1, 1);
                        v181 = v229;
                      }

                      *(v183 + 16) = v185 + 1;
                      *(v183 + 8 * v185 + 32) = v181;
                      v165 = v226;
                    }

                    v182 += 8;
                    --v180;
                  }

                  while (v180);
                }

                else
                {
                  v183 = MEMORY[0x1E69E7CC0];
                }

                *(v177 + 8 * i) = v183;
              }
            }
          }

          else if (v167 != v168)
          {
            do
            {
              v188 = *(v177 + 8 * v167);
              v189 = *(v188 + 16);
              if (v189)
              {

                v191 = 32;
                v192 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v190 = *(v188 + v191);
                  v195 = v190 == -1 && DWORD1(v190) == 0;
                  if (!v195 && (v190 & 0x80000000) == 0 && v165[1] > v190 && (DWORD1(v190) == -1 || *(*v165 + 12 * v190 + 8) == DWORD1(v190)))
                  {
                    v230 = v190;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v192 + 16) + 1, 1);
                    }

                    v190 = v230;
                    v194 = *(v192 + 16);
                    v193 = *(v192 + 24);
                    if (v194 >= v193 >> 1)
                    {
                      sub_1AFC07194(v193 > 1, v194 + 1, 1);
                      v190 = v230;
                    }

                    *(v192 + 16) = v194 + 1;
                    *(v192 + 8 * v194 + 32) = v190;
                    v165 = v226;
                  }

                  v191 += 8;
                  --v189;
                }

                while (v189);
              }

              else
              {
                v192 = MEMORY[0x1E69E7CC0];
              }

              *(v177 + 8 * v167) = v192;

              ++v167;
            }

            while (v167 != v168);
          }

          v163 = v212;
          v13 = v225;
          sub_1AF630994(v212, &v238, v249);
          sub_1AF62D29C(v217);
          ecs_stack_allocator_pop_snapshot(v219);
          if (v222)
          {
            os_unfair_lock_unlock(*(v217 + 344));
            os_unfair_lock_unlock(*(v217 + 376));
          }

          v164 = v218 + 1;
        }

        while (v218 + 1 != v215);
        v197 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v274, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v161 = v274;
        v160 = v197;
      }

      else
      {
        v160 = MEMORY[0x1E69E6720];
        v161 = v274;
      }

      return sub_1AFCB9F58(v161, &qword_1ED725EA0, &type metadata for QueryResult, v160, sub_1AFCBA88C);
    }
  }

  return result;
}

uint64_t sub_1AFCAC198(uint64_t a1, uint64_t a2)
{
  v186 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v133 = a2;
    swift_once();
    LODWORD(a2) = v133;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v156 = qword_1ED73B840;
  v157 = v4;
  v158 = v3 >> 31;
  v159 = 1;
  v160 = 2;
  v161 = 0;

  sub_1AF8291E0(v149);

  v154[0] = v149[0];
  v154[1] = v149[1];
  v155 = v150;
  sub_1AF6B06C0(a1, v154, 0x200000000, v178);
  v138 = *v178;
  if (!*v178)
  {
    return sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
  }

  v137 = *&v178[40];
  v5 = *(&v179 + 1);
  v141 = *(&v180 + 1);
  v6 = v180;
  v182 = *&v178[8];
  v183 = *&v178[24];
  if (v181 <= 0 || !*(&v179 + 1))
  {
    sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
    v130 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AFCBA88C);
  }

  v7 = *(*(&v180 + 1) + 32);
  v8 = *(v180 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v177[2] = *&v178[32];
  v177[3] = v179;
  v177[4] = v180;
  v177[5] = v181;
  v177[0] = *v178;
  v177[1] = *&v178[16];
  sub_1AF5DD298(v177, &v171);
  v9 = 0;
  v10 = 0;
  v147 = v6;
  v135 = v7;
  v136 = v5;
  v134 = v8;
  while (1)
  {
    v139 = v10;
    v11 = (v137 + 48 * v9);
    v12 = *v11;
    v13 = *(v11 + 3);
    v144 = v11[1];
    v146 = *(v11 + 2);
    v14 = *(v11 + 5);
    v142 = *(v11 + 4);
    if (v8)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v16 = *(v141 + 64);
    v184[0] = *(v141 + 48);
    v184[1] = v16;
    v185 = *(v141 + 80);
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    *(v141 + 48) = ecs_stack_allocator_allocate(*(v141 + 32), 48 * v17, 8);
    *(v141 + 56) = v17;
    *(v141 + 72) = 0;
    *(v141 + 80) = 0;
    *(v141 + 64) = 0;
    v148 = sub_1AF64B110(&type metadata for SubEntity, &off_1F2562C50, v146, v13, v142, v141);
    v143 = v14;
    v140 = v9;
    if (v146)
    {
      if (v142)
      {
        v18 = v142;
        v19 = 0;
        while (1)
        {
          v20 = v146[v19];
          v21 = *(v148 + 8 * v19);
          v22 = *(v14 + 16);

          if (*(v14 + 184))
          {
            goto LABEL_138;
          }

          v23 = *(*(v14 + 168) + 4 * v20);
          v24 = *(*(v22 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v23 + 8);

          if (v23 == -1 && v24 == 0)
          {
          }

          else
          {
            v145 = v20;
            v26 = swift_allocObject();
            *(v26 + 16) = &type metadata for IsSubEntityOf;
            *(v26 + 24) = &off_1F2564150;
            v27 = swift_allocObject();
            *(v27 + 16) = sub_1AFCBAB34;
            *(v27 + 24) = v26;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v171 = *(v6 + 216);
            v29 = v171;
            *(v6 + 216) = 0x8000000000000000;
            v30 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
            v32 = v31;
            v33 = *(v29 + 16) + ((v31 & 1) == 0);
            if (*(v29 + 24) >= v33)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF848B00();
                v29 = v171;
              }
            }

            else
            {
              sub_1AF834194(v33, isUniquelyReferenced_nonNull_native);
              v29 = v171;
              v34 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
              if ((v32 & 1) != (v35 & 1))
              {
                goto LABEL_139;
              }

              v30 = v34;
            }

            v14 = v143;
            *(v147 + 216) = v29;

            v36 = *(v147 + 216);
            if ((v32 & 1) == 0)
            {
              sub_1AF6338E8(*(v27 + 16), &v171);
              v37 = v172;
              v36[(v30 >> 6) + 8] |= 1 << v30;
              *(v36[6] + 8 * v30) = &type metadata for IsSubEntityOf;
              v38 = v36[7] + 24 * v30;
              *v38 = v171;
              *(v38 + 16) = v37;
              ++v36[2];
            }

            v39 = (v36[7] + 24 * v30);
            v40 = *v39;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            *v39 = v40;
            if ((v41 & 1) == 0)
            {
              v40 = sub_1AF4230FC(0, *(v40 + 2) + 1, 1, v40);
              *v39 = v40;
            }

            v43 = *(v40 + 2);
            v42 = *(v40 + 3);
            if (v43 >= v42 >> 1)
            {
              v40 = sub_1AF4230FC(v42 > 1, v43 + 1, 1, v40);
              *v39 = v40;
            }

            *(v40 + 2) = v43 + 1;
            v44 = &v40[16 * v43];
            *(v44 + 8) = v23;
            *(v44 + 9) = v24;
            *(v44 + 5) = v21;
            v6 = v147;

            v18 = v142;
            v20 = v145;
          }

          v45 = *(*(v14 + 40) + 16);
          v46 = *(v45 + 128);
          if (!*(v46 + 16))
          {
            goto LABEL_17;
          }

          v47 = sub_1AF449CB8(&type metadata for SubEntity);
          if ((v48 & 1) == 0 || *(*(v45 + 24) + 16 * *(*(v46 + 56) + 8 * v47) + 32) != &type metadata for SubEntity)
          {
            goto LABEL_17;
          }

          v49 = v20;
          v168 = &type metadata for SubEntity;
          v169 = &off_1F2562C50;
          v170 = 1;
          v50 = *(v141 + 104);
          v51 = *(v50 + 16);
          if (!v51)
          {

LABEL_69:
            v65 = *(v14 + 240) - *(v14 + 232);
            v66 = ecs_stack_allocator_allocate(*(v141 + 32), 8 * v65, 8);
            *v66 = v49;
            sub_1AF63515C(&v168, &v171);
            *v174 = v66;
            *&v174[8] = v65;
            *&v174[16] = 1;
            v67 = *(v141 + 104);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *(v141 + 104) = v67;
            if ((v68 & 1) == 0)
            {
              v67 = sub_1AF420EA0(0, v67[2] + 1, 1, v67);
              *(v141 + 104) = v67;
            }

            v18 = v142;
            v70 = v67[2];
            v69 = v67[3];
            if (v70 >= v69 >> 1)
            {
              *(v141 + 104) = sub_1AF420EA0(v69 > 1, v70 + 1, 1, v67);
            }

            sub_1AF635250(&v168);
            v71 = *(v141 + 104);
            *(v71 + 16) = v70 + 1;
            v72 = v71 + 72 * v70;
            *(v72 + 32) = v171;
            v74 = v173;
            v73 = *v174;
            v75 = v172;
            *(v72 + 96) = *&v174[16];
            *(v72 + 64) = v74;
            *(v72 + 80) = v73;
            *(v72 + 48) = v75;
            *(v141 + 104) = v71;
            goto LABEL_17;
          }

          v52 = v50 + 32;

          v53 = 0;
          while (1)
          {
            sub_1AF6350F8(v52, v167);
            sub_1AF63515C(v167, &v171);
            sub_1AF63515C(&v168, v174);
            if (BYTE8(v173) <= 2u)
            {
              if (!BYTE8(v173))
              {
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                sub_1AF63515C(&v171, v166);
                if (v176)
                {
                  goto LABEL_42;
                }

                goto LABEL_55;
              }

              if (BYTE8(v173) == 1)
              {
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                sub_1AF63515C(&v171, v166);
                if (v176 != 1)
                {
                  goto LABEL_42;
                }

LABEL_55:
                v56 = *&v166[0];
                v57 = *v174;
                sub_1AF635250(&v171);
                if (v56 == v57)
                {
                  goto LABEL_65;
                }

                goto LABEL_43;
              }

              sub_1AF63515C(&v171, v166);
              if (v176 != 2)
              {
LABEL_41:
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
LABEL_42:
                sub_1AFCB9F58(&v171, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                goto LABEL_43;
              }

              goto LABEL_60;
            }

            if (BYTE8(v173) == 3)
            {
              sub_1AF63515C(&v171, v166);
              if (v176 != 3)
              {
                goto LABEL_41;
              }

LABEL_60:
              sub_1AF616568(v166, v163);
              sub_1AF616568(v174, v162);
              v58 = v164;
              v59 = v165;
              sub_1AF441150(v163, v164);
              LOBYTE(v58) = sub_1AF640C98(v162, v58, v59);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v162);
              sub_1AFCB9FB8(v167, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v163);
              sub_1AF635250(&v171);
              if (v58)
              {
                goto LABEL_65;
              }

              goto LABEL_43;
            }

            if (BYTE8(v173) != 4)
            {
              break;
            }

            sub_1AFCB9FB8(v167, sub_1AF43A540);
            sub_1AF63515C(&v171, v166);
            if (v176 != 4)
            {
              goto LABEL_42;
            }

            v54 = LOBYTE(v166[0]);
            v55 = v174[0];
            sub_1AF635250(&v171);
            if (v54 == v55)
            {
              goto LABEL_65;
            }

LABEL_43:
            ++v53;
            v52 += 72;
            if (v51 == v53)
            {
              goto LABEL_69;
            }
          }

          sub_1AFCB9FB8(v167, sub_1AF43A540);
          if (v176 != 5)
          {
            goto LABEL_42;
          }

          v60 = vorrq_s8(*&v174[8], v175);
          if (*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)) | *v174)
          {
            goto LABEL_42;
          }

          sub_1AF635250(&v171);
LABEL_65:
          v62 = sub_1AFBFCA08(&v171);
          v63 = *(v61 + 48);
          if (v63)
          {
            v64 = *(v61 + 64);
            *(v63 + 8 * v64) = v49;
            *(v61 + 64) = v64 + 1;
          }

          (v62)(&v171, 0);

          sub_1AF635250(&v168);
          v18 = v142;
LABEL_17:
          if (++v19 == v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    if (v12 != v144)
    {
      break;
    }

LABEL_75:
    v10 = v139;
    v151 = v138;
    v152 = v182;
    v153 = v183;
    sub_1AF630994(v141, &v151, v184);
    sub_1AF62D29C(v14);
    v7 = v135;
    ecs_stack_allocator_pop_snapshot(v135);
    v8 = v134;
    if (v134)
    {
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
    }

    v9 = v140 + 1;
    if (v140 + 1 == v136)
    {
      sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
      v132 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      v130 = v132;
      return sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AFCBA88C);
    }
  }

LABEL_79:
  v76 = *(v148 + 8 * v12);
  v77 = *(v14 + 16);

  if ((*(v14 + 184) & 1) == 0)
  {
    v78 = *(*(v14 + 168) + 4 * v12);
    v79 = *(*(v77 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v78 + 8);

    if (v78 == -1 && v79 == 0)
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = &type metadata for IsSubEntityOf;
      *(v81 + 24) = &off_1F2564150;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_1AF63534C;
      *(v82 + 24) = v81;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *&v171 = *(v6 + 216);
      v84 = v171;
      *(v6 + 216) = 0x8000000000000000;
      v85 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      v87 = v86;
      v88 = *(v84 + 16) + ((v86 & 1) == 0);
      if (*(v84 + 24) >= v88)
      {
        if ((v83 & 1) == 0)
        {
          sub_1AF848B00();
          v84 = v171;
        }
      }

      else
      {
        sub_1AF834194(v88, v83);
        v84 = v171;
        v89 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
        if ((v87 & 1) != (v90 & 1))
        {
          goto LABEL_139;
        }

        v85 = v89;
      }

      *(v147 + 216) = v84;

      v91 = *(v147 + 216);
      if ((v87 & 1) == 0)
      {
        sub_1AF6338E8(*(v82 + 16), &v171);
        v92 = v172;
        v91[(v85 >> 6) + 8] |= 1 << v85;
        *(v91[6] + 8 * v85) = &type metadata for IsSubEntityOf;
        v93 = v91[7] + 24 * v85;
        *v93 = v171;
        *(v93 + 16) = v92;
        ++v91[2];
      }

      v94 = (v91[7] + 24 * v85);
      v95 = *v94;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *v94 = v95;
      if ((v96 & 1) == 0)
      {
        v95 = sub_1AF4230FC(0, *(v95 + 2) + 1, 1, v95);
        *v94 = v95;
      }

      v98 = *(v95 + 2);
      v97 = *(v95 + 3);
      if (v98 >= v97 >> 1)
      {
        v95 = sub_1AF4230FC(v97 > 1, v98 + 1, 1, v95);
        *v94 = v95;
      }

      *(v95 + 2) = v98 + 1;
      v99 = &v95[16 * v98];
      *(v99 + 8) = v78;
      *(v99 + 9) = v79;
      *(v99 + 5) = v76;
      v6 = v147;

      v14 = v143;
    }

    v100 = *(*(v14 + 40) + 16);
    v101 = *(v100 + 128);
    if (!*(v101 + 16))
    {
      goto LABEL_78;
    }

    v102 = sub_1AF449CB8(&type metadata for SubEntity);
    if ((v103 & 1) == 0 || *(*(v100 + 24) + 16 * *(*(v101 + 56) + 8 * v102) + 32) != &type metadata for SubEntity)
    {
      goto LABEL_78;
    }

    v168 = &type metadata for SubEntity;
    v169 = &off_1F2562C50;
    v170 = 1;
    v104 = *(v141 + 104);
    v105 = *(v104 + 16);
    if (!v105)
    {

LABEL_129:
      v14 = v143;
      v119 = *(v143 + 240) - *(v143 + 232);
      v120 = ecs_stack_allocator_allocate(*(v141 + 32), 8 * v119, 8);
      *v120 = v12;
      sub_1AF63515C(&v168, &v171);
      *v174 = v120;
      *&v174[8] = v119;
      *&v174[16] = 1;
      v121 = *(v141 + 104);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      *(v141 + 104) = v121;
      if ((v122 & 1) == 0)
      {
        v121 = sub_1AF420EA0(0, v121[2] + 1, 1, v121);
        *(v141 + 104) = v121;
      }

      v124 = v121[2];
      v123 = v121[3];
      if (v124 >= v123 >> 1)
      {
        *(v141 + 104) = sub_1AF420EA0(v123 > 1, v124 + 1, 1, v121);
      }

      sub_1AF635250(&v168);
      v125 = *(v141 + 104);
      *(v125 + 16) = v124 + 1;
      v126 = v125 + 72 * v124;
      *(v126 + 32) = v171;
      v128 = v173;
      v127 = *v174;
      v129 = v172;
      *(v126 + 96) = *&v174[16];
      *(v126 + 64) = v128;
      *(v126 + 80) = v127;
      *(v126 + 48) = v129;
      *(v141 + 104) = v125;
      goto LABEL_78;
    }

    v106 = v104 + 32;

    v107 = 0;
    while (1)
    {
      sub_1AF6350F8(v106, v167);
      sub_1AF63515C(v167, &v171);
      sub_1AF63515C(&v168, v174);
      if (BYTE8(v173) <= 2u)
      {
        break;
      }

      if (BYTE8(v173) == 3)
      {
        sub_1AF63515C(&v171, v166);
        if (v176 != 3)
        {
          goto LABEL_102;
        }

LABEL_121:
        sub_1AF616568(v166, v163);
        sub_1AF616568(v174, v162);
        v112 = v164;
        v113 = v165;
        sub_1AF441150(v163, v164);
        LOBYTE(v112) = sub_1AF640C98(v162, v112, v113);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v162);
        sub_1AFCB9FB8(v167, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v163);
        sub_1AF635250(&v171);
        if (v112)
        {
          goto LABEL_126;
        }

        goto LABEL_104;
      }

      if (BYTE8(v173) != 4)
      {
        sub_1AFCB9FB8(v167, sub_1AF43A540);
        if (v176 == 5)
        {
          v114 = vorrq_s8(*&v174[8], v175);
          if (!(*&vorr_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL)) | *v174))
          {
            sub_1AF635250(&v171);
LABEL_126:
            v116 = sub_1AFBFCA08(&v171);
            v117 = *(v115 + 48);
            if (v117)
            {
              v118 = *(v115 + 64);
              *(v117 + 8 * v118) = v12;
              *(v115 + 64) = v118 + 1;
            }

            (v116)(&v171, 0);
            v14 = v143;

            sub_1AF635250(&v168);
LABEL_78:
            if (++v12 == v144)
            {
              goto LABEL_75;
            }

            goto LABEL_79;
          }
        }

        goto LABEL_103;
      }

      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176 != 4)
      {
        goto LABEL_103;
      }

      v108 = LOBYTE(v166[0]);
      v109 = v174[0];
      sub_1AF635250(&v171);
      if (v108 == v109)
      {
        goto LABEL_126;
      }

LABEL_104:
      ++v107;
      v106 += 72;
      if (v105 == v107)
      {
        goto LABEL_129;
      }
    }

    if (!BYTE8(v173))
    {
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176)
      {
        goto LABEL_103;
      }

      goto LABEL_116;
    }

    if (BYTE8(v173) == 1)
    {
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176 != 1)
      {
        goto LABEL_103;
      }

LABEL_116:
      v110 = *&v166[0];
      v111 = *v174;
      sub_1AF635250(&v171);
      if (v110 == v111)
      {
        goto LABEL_126;
      }

      goto LABEL_104;
    }

    sub_1AF63515C(&v171, v166);
    if (v176 != 2)
    {
LABEL_102:
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
LABEL_103:
      sub_1AFCB9F58(&v171, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      goto LABEL_104;
    }

    goto LABEL_121;
  }

LABEL_138:
  sub_1AFDFE518();
  __break(1u);
LABEL_139:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFCAD4C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  v3 = result;
  v4 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v95 = a2;
    swift_once();
    LODWORD(a2) = v95;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v131 = qword_1ED73B840;
  v132 = v5;
  v133 = v4 >> 31;
  v134 = 1;
  v135 = 2;
  v136 = 0;

  sub_1AF702F78(3, v120);

  v129[0] = v120[0];
  v129[1] = v120[1];
  v130 = v121;
  sub_1AF6B06C0(v3, v129, 0x200000000, v122);
  if (!*v122)
  {
    return sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  }

  if (v125 <= 0 || (v100 = *(&v123 + 1)) == 0)
  {
    sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
    v93 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, v93, sub_1AFCBA88C);
  }

  v99 = *&v122[40];
  v6 = *(&v124 + 1);
  v7 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(*(&v124 + 1) + 32);
  v126 = *v122;
  v127 = *&v122[8];
  v128 = *&v122[24];
  v119[2] = *&v122[32];
  v119[3] = v123;
  v119[4] = v124;
  v119[5] = v125;
  v119[0] = *v122;
  v119[1] = *&v122[16];
  sub_1AF5DD298(v119, v117);
  v9 = 0;
  v10 = 0;
  v98 = v6;
  v96 = v8;
  v97 = v7;
  while (2)
  {
    v11 = (v99 + 48 * v9);
    v12 = *v11;
    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    v15 = *(v11 + 5);
    v104 = v11[1];
    v105 = *(v11 + 4);
    v102 = v10;
    if (v7)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v8);
    v17 = *(v6 + 4);
    v117[0] = *(v6 + 3);
    v117[1] = v17;
    v118 = v6[10];
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    v6[6] = ecs_stack_allocator_allocate(v6[4], 48 * v18, 8);
    v6[7] = v18;
    v6[9] = 0;
    v6[10] = 0;
    v6[8] = 0;
    v19 = v105;
    v108 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v14, v13, v105, v6);
    v103 = v9;
    v101 = v15;
    if (!v14)
    {
      if (v12 == v104)
      {
        goto LABEL_47;
      }

LABEL_51:
      v57 = v108 + (v12 << 6);
      *(v57 + 48) = MEMORY[0x1E69E7CC0];

      v58 = *(v57 + 40);
      if (!v58)
      {
        goto LABEL_50;
      }

      v107 = v12;
      v59 = *(v58 + 16);
      v60 = *(v57 + 40);

      if (!v59)
      {
        goto LABEL_49;
      }

      v61 = 0;
      v62 = v60 + 32;
      v110 = v60 + 32;
      v112 = v59;
LABEL_57:
      v64 = *(v57 + 8);
      if (!*(v64 + 16))
      {
        goto LABEL_56;
      }

      v65 = (v62 + 24 * v61);
      v66 = v65[1];
      v67 = v65[2];
      v68 = *v65;

      v69 = sub_1AF419914(v68, v66);
      if ((v70 & 1) == 0)
      {
        goto LABEL_55;
      }

      v71 = (*(v64 + 56) + 16 * v69);
      v72 = *v71;
      v73 = *(v67 + 16);
      v114 = v71[1];

      if (!v73)
      {
        v116 = MEMORY[0x1E69E7CC0];
        goto LABEL_73;
      }

      v74 = 0;
      v75 = v67 + 40;
      v76 = -v73;
      v116 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v77 = (v75 + 16 * v74++);
      while (1)
      {
        v78 = *v57;
        if (*(*v57 + 16))
        {
          v80 = *(v77 - 1);
          v79 = *v77;

          v81 = sub_1AF419914(v80, v79);
          if (v82)
          {
            v83 = (*(v78 + 56) + 16 * v81);
            v84 = *v83;
            v85 = v83[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = sub_1AF425958(0, *(v116 + 2) + 1, 1, v116);
            }

            v87 = *(v116 + 2);
            v86 = *(v116 + 3);
            if (v87 >= v86 >> 1)
            {
              v116 = sub_1AF425958(v86 > 1, v87 + 1, 1, v116);
            }

            *(v116 + 2) = v87 + 1;
            v88 = &v116[16 * v87];
            *(v88 + 4) = v84;
            *(v88 + 5) = v85;
            v75 = v67 + 40;
            if (!(v76 + v74))
            {
LABEL_73:
              v89 = *(v57 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v57 + 48) = v89;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v89 = sub_1AF423470(0, *(v89 + 2) + 1, 1, v89);
                *(v57 + 48) = v89;
              }

              v62 = v110;
              v59 = v112;
              v92 = *(v89 + 2);
              v91 = *(v89 + 3);
              if (v92 >= v91 >> 1)
              {
                v89 = sub_1AF423470(v91 > 1, v92 + 1, 1, v89);
                *(v57 + 48) = v89;
              }

              *(v89 + 2) = v92 + 1;
              v63 = &v89[24 * v92];
              *(v63 + 4) = v72;
              *(v63 + 5) = v114;
              *(v63 + 6) = v116;
LABEL_55:

LABEL_56:
              if (++v61 != v59)
              {
                goto LABEL_57;
              }

LABEL_49:

              v12 = v107;
LABEL_50:
              ++v12;
              *(v57 + 56) = 1;
              if (v12 == v104)
              {
                goto LABEL_47;
              }

              goto LABEL_51;
            }

            goto LABEL_61;
          }
        }

        v77 += 2;
        ++v74;
        if (v76 + v74 == 1)
        {
          goto LABEL_73;
        }
      }
    }

    if (!v105)
    {
      goto LABEL_47;
    }

    v20 = 0;
    while (2)
    {
      v21 = v108 + (v20 << 6);
      *(v21 + 48) = MEMORY[0x1E69E7CC0];

      v22 = *(v21 + 40);
      if (!v22)
      {
        goto LABEL_19;
      }

      v106 = v20;
      v23 = *(v22 + 16);
      v24 = *(v21 + 40);

      if (!v23)
      {
        goto LABEL_18;
      }

      v25 = 0;
      v26 = v24 + 32;
      v109 = v24 + 32;
      v111 = v23;
      while (2)
      {
        v28 = *(v21 + 8);
        if (!*(v28 + 16))
        {
          goto LABEL_25;
        }

        v29 = (v26 + 24 * v25);
        v30 = v29[1];
        v31 = v29[2];
        v32 = *v29;

        v33 = sub_1AF419914(v32, v30);
        if ((v34 & 1) == 0)
        {
          goto LABEL_24;
        }

        v35 = (*(v28 + 56) + 16 * v33);
        v36 = *v35;
        v37 = *(v31 + 16);
        v113 = v35[1];

        if (!v37)
        {
          v115 = MEMORY[0x1E69E7CC0];
          goto LABEL_42;
        }

        v38 = 0;
        v39 = v31 + 40;
        v40 = -v37;
        v115 = MEMORY[0x1E69E7CC0];
        do
        {
          v41 = (v39 + 16 * v38++);
          while (1)
          {
            v42 = *v21;
            if (*(*v21 + 16))
            {
              break;
            }

LABEL_31:
            v41 += 2;
            ++v38;
            if (v40 + v38 == 1)
            {
              goto LABEL_42;
            }
          }

          v44 = *(v41 - 1);
          v43 = *v41;

          v45 = sub_1AF419914(v44, v43);
          if ((v46 & 1) == 0)
          {

            goto LABEL_31;
          }

          v47 = (*(v42 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_1AF425958(0, *(v115 + 2) + 1, 1, v115);
          }

          v51 = *(v115 + 2);
          v50 = *(v115 + 3);
          if (v51 >= v50 >> 1)
          {
            v115 = sub_1AF425958(v50 > 1, v51 + 1, 1, v115);
          }

          *(v115 + 2) = v51 + 1;
          v52 = &v115[16 * v51];
          *(v52 + 4) = v48;
          *(v52 + 5) = v49;
          v39 = v31 + 40;
        }

        while (v40 + v38);
LABEL_42:
        v53 = *(v21 + 48);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 48) = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_1AF423470(0, *(v53 + 2) + 1, 1, v53);
          *(v21 + 48) = v53;
        }

        v26 = v109;
        v23 = v111;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          v53 = sub_1AF423470(v55 > 1, v56 + 1, 1, v53);
          *(v21 + 48) = v53;
        }

        *(v53 + 2) = v56 + 1;
        v27 = &v53[24 * v56];
        *(v27 + 4) = v36;
        *(v27 + 5) = v113;
        *(v27 + 6) = v115;
LABEL_24:

LABEL_25:
        if (++v25 != v23)
        {
          continue;
        }

        break;
      }

LABEL_18:

      v19 = v105;
      v20 = v106;
LABEL_19:
      *(v21 + 56) = 1;
      if (++v20 != v19)
      {
        continue;
      }

      break;
    }

LABEL_47:
    v6 = v98;
    v10 = v102;
    sub_1AF630994(v98, &v126, v117);
    sub_1AF62D29C(v101);
    v8 = v96;
    ecs_stack_allocator_pop_snapshot(v96);
    v7 = v97;
    if (v97)
    {
      os_unfair_lock_unlock(*(v101 + 344));
      os_unfair_lock_unlock(*(v101 + 376));
    }

    v9 = v103 + 1;
    if (v103 + 1 != v100)
    {
      continue;
    }

    break;
  }

  v94 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v93 = v94;
  return sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, v93, sub_1AFCBA88C);
}

uint64_t sub_1AFCADE34(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v38 = a2;
    swift_once();
    LODWORD(a2) = v38;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v57 = qword_1ED73B840;
  v58 = v4;
  v59 = v3 >> 31;
  v60 = 1;
  v61 = 2;
  v62 = 0;

  sub_1AF705190(3, v46);

  v55[0] = v46[0];
  v55[1] = v46[1];
  v56 = v47;
  sub_1AF6B06C0(a1, v55, 0x200000000, v48);
  if (!*v48)
  {
    return sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
  }

  if (v51 > 0 && (v41 = *(&v49 + 1)) != 0)
  {
    v40 = *&v48[40];
    v5 = *(&v50 + 1);
    v6 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v42 = *(*(&v50 + 1) + 32);
    v52 = *v48;
    v53 = *&v48[8];
    v54 = *&v48[24];
    v45[2] = *&v48[32];
    v45[3] = v49;
    v45[4] = v50;
    v45[5] = v51;
    v45[0] = *v48;
    v45[1] = *&v48[16];
    sub_1AF5DD298(v45, v43);
    v7 = 0;
    v39 = v6;
    do
    {
      v8 = (v40 + 48 * v7);
      v10 = *v8;
      v9 = v8[1];
      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      v14 = *(v8 + 4);
      v13 = *(v8 + 5);
      if (v6)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v42);
      v16 = *(v5 + 64);
      v43[0] = *(v5 + 48);
      v43[1] = v16;
      v44 = *(v5 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
      *(v5 + 56) = v17;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v18 = sub_1AF64B110(&type metadata for ParticleAngularVelocityInit, &off_1F254CBF0, v12, v11, v14, v5);
      if (v12)
      {
        v6 = v39;
        if (v14)
        {
          v20 = (v18 + 12);
          do
          {
            v21 = (v20 - 3);
            v22.i32[0] = *(v20 - 3);
            v19.i32[0] = *(v20 - 2);
            v22.i32[1] = *(v20 - 1);
            v19.i32[1] = *v20;
            v22.i64[1] = v20[1];
            v23 = vmaxnmq_f32(v22, xmmword_1AFEA97A0);
            v23.i32[3] = 0;
            v19.i32[2] = v20[2];
            v24 = vminnmq_f32(v23, xmmword_1AFEA97B0);
            v25 = vmaxnmq_f32(v19, xmmword_1AFEA97A0);
            v25.i32[3] = 0;
            v26 = vminnmq_f32(v25, xmmword_1AFEA97B0);
            vst2_f32(v21, v24);
            v19 = vextq_s8(v24, v24, 8uLL);
            *(v20 + 1) = vzip1_s32(*v19.f32, *&vextq_s8(v26, v26, 8uLL));
            v20 += 6;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v6 = v39;
        if (v10 != v9)
        {
          v27 = v9 - v10;
          v28 = (v18 + 24 * v10 + 12);
          do
          {
            v29 = (v28 - 3);
            v30.i32[0] = *(v28 - 3);
            v19.i32[0] = *(v28 - 2);
            v30.i32[1] = *(v28 - 1);
            v19.i32[1] = *v28;
            v30.i64[1] = v28[1];
            v31 = vmaxnmq_f32(v30, xmmword_1AFEA97A0);
            v31.i32[3] = 0;
            v19.i32[2] = v28[2];
            v32 = vminnmq_f32(v31, xmmword_1AFEA97B0);
            v33 = vmaxnmq_f32(v19, xmmword_1AFEA97A0);
            v33.i32[3] = 0;
            v34 = vminnmq_f32(v33, xmmword_1AFEA97B0);
            vst2_f32(v29, v32);
            v19 = vextq_s8(v32, v32, 8uLL);
            *(v28 + 1) = vzip1_s32(*v19.f32, *&vextq_s8(v34, v34, 8uLL));
            v28 += 6;
            --v27;
          }

          while (v27);
        }
      }

      sub_1AF630994(v5, &v52, v43);
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v42);
      if (v6)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      ++v7;
    }

    while (v7 != v41);
    sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
    v37 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v48, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v35 = v37;
  }

  else
  {
    sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
    v35 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v48, &qword_1ED725EA0, &type metadata for QueryResult, v35, sub_1AFCBA88C);
}

uint64_t sub_1AFCAE338(uint64_t a1, uint64_t a2)
{
  v176 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v127 = a2;
    swift_once();
    LODWORD(a2) = v127;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v148 = qword_1ED73B840;
  v149 = v4;
  v150 = v3 >> 31;
  v151 = 1;
  v152 = 2;
  v153 = 0;

  sub_1AFCC7064(2, 1, v141);

  v146[0] = v141[0];
  v146[1] = v141[1];
  v147 = v142;
  sub_1AF6B06C0(a1, v146, 0x200000000, v170);
  if (!*v170)
  {
    return sub_1AFCB9FB8(v141, sub_1AFCBA604);
  }

  if (v173 > 0)
  {
    v131 = *(&v171 + 1);
    if (*(&v171 + 1))
    {
      v130 = *&v170[40];
      v5 = *(v172 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v134 = *(&v172 + 1);
      v6 = *(*(&v172 + 1) + 32);
      v143 = *v170;
      v144 = *&v170[8];
      v145 = *&v170[24];
      v169[2] = *&v170[32];
      v169[3] = v171;
      v169[4] = v172;
      v169[5] = v173;
      v169[0] = *v170;
      v169[1] = *&v170[16];
      sub_1AF5DD298(v169, &v163);
      v7 = 0;
      v8 = 0;
      v129 = v5;
      v128 = v6;
      while (1)
      {
        v132 = v8;
        v133 = v7;
        v9 = (v130 + 48 * v7);
        v10 = *v9;
        v11 = *(v9 + 3);
        v137 = v9[1];
        v139 = *(v9 + 2);
        v12 = *(v9 + 5);
        v135 = *(v9 + 4);
        if (v5)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v6);
        v14 = *(v134 + 64);
        v174[0] = *(v134 + 48);
        v174[1] = v14;
        v175 = *(v134 + 80);
        v15 = *(v134 + 32);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;

        *(v134 + 48) = ecs_stack_allocator_allocate(v15, 48 * v16, 8);
        *(v134 + 56) = v16;
        *(v134 + 72) = 0;
        *(v134 + 80) = 0;
        *(v134 + 64) = 0;

        v140 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v139, v11, v135, v134);
        v136 = sub_1AF64B110(&type metadata for MaterialParameters, &off_1F253F550, v139, v11, v135, v134);
        if (v139)
        {
          if (v135)
          {
            v17 = v135;
            v18 = 0;
            while (1)
            {
              v138 = v139[v18];
              v20 = v140 + 104 * v18;
              if (*v20 != 2)
              {
                goto LABEL_44;
              }

              v21 = (v136 + 32 * v18);
              type metadata accessor for CustomParameters();
              v22 = swift_allocObject();
              v23 = MEMORY[0x1E69E7CC0];
              v22[2] = MEMORY[0x1E69E7CC0];
              v22[3] = v23;
              v22[4] = v23;
              v24 = *(*v21 + 16);
              v25 = *(v21[1] + 16);
              v26 = *(v25 + 16);
              v27 = *(v24 + 2);
              v28 = v27 + v26;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v28 > *(v24 + 3) >> 1)
              {
                if (v27 <= v28)
                {
                  v30 = v27 + v26;
                }

                else
                {
                  v30 = v27;
                }

                v24 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v30, 1, v24);
              }

              if (*(v25 + 16))
              {
                swift_arrayInitWithCopy();

                if (v26)
                {
                  *(v24 + 2) += v26;
                }
              }

              else
              {
              }

              v22[2] = v24;

              v31 = *(*v21 + 24);
              v32 = *(v21[1] + 24);
              v33 = *(v32 + 16);
              v34 = *(v31 + 2);
              v35 = v34 + v33;

              v36 = swift_isUniquelyReferenced_nonNull_native();
              if ((v36 & 1) != 0 && v35 <= *(v31 + 3) >> 1)
              {
                if (*(v32 + 16))
                {
                  goto LABEL_36;
                }
              }

              else
              {
                if (v34 <= v35)
                {
                  v37 = v34 + v33;
                }

                else
                {
                  v37 = v34;
                }

                v31 = sub_1AF420C48(v36, v37, 1, v31);
                if (*(v32 + 16))
                {
LABEL_36:
                  memcpy(&v31[80 * *(v31 + 2) + 32], (v32 + 32), 80 * v33);

                  if (v33)
                  {
                    *(v31 + 2) += v33;
                  }

                  goto LABEL_43;
                }
              }

LABEL_43:
              v22[3] = v31;

              v38 = sub_1AFCBA6E4(&qword_1EB63FB68, type metadata accessor for CustomParameters);
              *(v20 + 24) = v22;
              *(v20 + 32) = v38;
              swift_retain_n();
              swift_unknownObjectRelease();
              v39 = sub_1AF8A0980();
              v41 = v40;

              *(v20 + 88) = v39;
              *(v20 + 96) = v41;

              v17 = v135;
LABEL_44:
              v42 = *(*(v12 + 40) + 16);
              v43 = *(v42 + 128);
              if (!*(v43 + 16))
              {
                goto LABEL_21;
              }

              v44 = sub_1AF449CB8(&type metadata for MaterialParameters);
              if ((v45 & 1) == 0 || *(*(v42 + 24) + 16 * *(*(v43 + 56) + 8 * v44) + 32) != &type metadata for MaterialParameters)
              {
                goto LABEL_21;
              }

              v160 = &type metadata for MaterialParameters;
              v161 = &off_1F253F550;
              v162 = 1;
              v46 = *(v134 + 104);
              v47 = *(v46 + 16);
              if (!v47)
              {

LABEL_76:
                v61 = *(v12 + 240) - *(v12 + 232);
                v62 = ecs_stack_allocator_allocate(*(v134 + 32), 8 * v61, 8);
                *v62 = v138;
                sub_1AF63515C(&v160, &v163);
                *v166 = v62;
                *&v166[8] = v61;
                *&v166[16] = 1;
                v63 = *(v134 + 104);
                v64 = swift_isUniquelyReferenced_nonNull_native();
                *(v134 + 104) = v63;
                if ((v64 & 1) == 0)
                {
                  v63 = sub_1AF420EA0(0, v63[2] + 1, 1, v63);
                  *(v134 + 104) = v63;
                }

                v17 = v135;
                v66 = v63[2];
                v65 = v63[3];
                if (v66 >= v65 >> 1)
                {
                  *(v134 + 104) = sub_1AF420EA0(v65 > 1, v66 + 1, 1, v63);
                }

                sub_1AF635250(&v160);
                v67 = *(v134 + 104);
                *(v67 + 16) = v66 + 1;
                v68 = v67 + 72 * v66;
                *(v68 + 32) = v163;
                v70 = v165;
                v69 = *v166;
                v71 = v164;
                *(v68 + 96) = *&v166[16];
                *(v68 + 64) = v70;
                *(v68 + 80) = v69;
                *(v68 + 48) = v71;
                *(v134 + 104) = v67;
                goto LABEL_21;
              }

              v48 = v46 + 32;

              v49 = 0;
              while (1)
              {
                sub_1AF6350F8(v48, v159);
                sub_1AF63515C(v159, &v163);
                sub_1AF63515C(&v160, v166);
                if (BYTE8(v165) <= 2u)
                {
                  if (!BYTE8(v165))
                  {
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    sub_1AF63515C(&v163, v158);
                    if (v168)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_63;
                  }

                  if (BYTE8(v165) == 1)
                  {
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    sub_1AF63515C(&v163, v158);
                    if (v168 != 1)
                    {
                      goto LABEL_50;
                    }

LABEL_63:
                    v52 = *&v158[0];
                    v53 = *v166;
                    sub_1AF635250(&v163);
                    if (v52 == v53)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_51;
                  }

                  sub_1AF63515C(&v163, v158);
                  if (v168 != 2)
                  {
LABEL_49:
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
LABEL_50:
                    sub_1AFCB9F58(&v163, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_51;
                  }

                  goto LABEL_68;
                }

                if (BYTE8(v165) == 3)
                {
                  sub_1AF63515C(&v163, v158);
                  if (v168 != 3)
                  {
                    goto LABEL_49;
                  }

LABEL_68:
                  sub_1AF616568(v158, v155);
                  sub_1AF616568(v166, v154);
                  v54 = v156;
                  v55 = v157;
                  sub_1AF441150(v155, v156);
                  LOBYTE(v54) = sub_1AF640C98(v154, v54, v55);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v154);
                  sub_1AFCB9FB8(v159, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v155);
                  sub_1AF635250(&v163);
                  if (v54)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_51;
                }

                if (BYTE8(v165) != 4)
                {
                  break;
                }

                sub_1AFCB9FB8(v159, sub_1AF43A540);
                sub_1AF63515C(&v163, v158);
                if (v168 != 4)
                {
                  goto LABEL_50;
                }

                v50 = LOBYTE(v158[0]);
                v51 = v166[0];
                sub_1AF635250(&v163);
                if (v50 == v51)
                {
                  goto LABEL_73;
                }

LABEL_51:
                ++v49;
                v48 += 72;
                if (v47 == v49)
                {
                  goto LABEL_76;
                }
              }

              sub_1AFCB9FB8(v159, sub_1AF43A540);
              if (v168 != 5)
              {
                goto LABEL_50;
              }

              v56 = vorrq_s8(*&v166[8], v167);
              if (*&vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL)) | *v166)
              {
                goto LABEL_50;
              }

              sub_1AF635250(&v163);
LABEL_73:
              v58 = sub_1AFBFCA08(&v163);
              v59 = *(v57 + 48);
              if (v59)
              {
                v60 = *(v57 + 64);
                *(v59 + 8 * v60) = v138;
                *(v57 + 64) = v60 + 1;
              }

              (v58)(&v163, 0);

              sub_1AF635250(&v160);
              v17 = v135;
LABEL_21:
              if (++v18 == v17)
              {
                goto LABEL_18;
              }
            }
          }

          goto LABEL_18;
        }

        v19 = v137;
        if (v10 != v137)
        {
          break;
        }

LABEL_18:
        v8 = v132;
        sub_1AF630994(v134, &v143, v174);
        sub_1AF62D29C(v12);
        v6 = v128;
        ecs_stack_allocator_pop_snapshot(v128);
        v5 = v129;
        if (v129)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        v7 = v133 + 1;
        if (v133 + 1 == v131)
        {
          sub_1AFCB9FB8(v141, sub_1AFCBA604);
          v126 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v124 = v126;
          return sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, v124, sub_1AFCBA88C);
        }
      }

LABEL_83:
      v72 = v140 + 104 * v10;
      if (*v72 == 2)
      {
        v73 = (v136 + 32 * v10);
        type metadata accessor for CustomParameters();
        v74 = swift_allocObject();
        v75 = MEMORY[0x1E69E7CC0];
        v74[2] = MEMORY[0x1E69E7CC0];
        v74[3] = v75;
        v74[4] = v75;
        v76 = *(*v73 + 16);
        v77 = *(v73[1] + 16);
        v78 = *(v77 + 16);
        v79 = *(v76 + 2);
        v80 = v79 + v78;

        v81 = swift_isUniquelyReferenced_nonNull_native();
        if (!v81 || v80 > *(v76 + 3) >> 1)
        {
          if (v79 <= v80)
          {
            v82 = v79 + v78;
          }

          else
          {
            v82 = v79;
          }

          v76 = sub_1AF4265B0(v81, v82, 1, v76);
        }

        if (*(v77 + 16))
        {
          swift_arrayInitWithCopy();

          if (v78)
          {
            *(v76 + 2) += v78;
          }
        }

        else
        {
        }

        v74[2] = v76;

        v83 = *(*v73 + 24);
        v84 = *(v73[1] + 24);
        v85 = *(v84 + 16);
        v86 = *(v83 + 2);
        v87 = v86 + v85;

        v88 = swift_isUniquelyReferenced_nonNull_native();
        if ((v88 & 1) == 0 || v87 > *(v83 + 3) >> 1)
        {
          if (v86 <= v87)
          {
            v89 = v86 + v85;
          }

          else
          {
            v89 = v86;
          }

          v83 = sub_1AF420C48(v88, v89, 1, v83);
        }

        v19 = v137;
        if (*(v84 + 16))
        {
          memcpy(&v83[80 * *(v83 + 2) + 32], (v84 + 32), 80 * v85);

          if (v85)
          {
            *(v83 + 2) += v85;
          }
        }

        else
        {
        }

        v74[3] = v83;

        v90 = sub_1AFCBA6E4(&qword_1EB63FB68, type metadata accessor for CustomParameters);
        *(v72 + 24) = v74;
        *(v72 + 32) = v90;
        swift_retain_n();
        swift_unknownObjectRelease();
        v91 = sub_1AF8A0980();
        v93 = v92;

        *(v72 + 88) = v91;
        *(v72 + 96) = v93;
      }

      v94 = *(*(v12 + 40) + 16);
      v95 = *(v94 + 128);
      if (!*(v95 + 16))
      {
        goto LABEL_82;
      }

      v96 = sub_1AF449CB8(&type metadata for MaterialParameters);
      if ((v97 & 1) == 0 || *(*(v94 + 24) + 16 * *(*(v95 + 56) + 8 * v96) + 32) != &type metadata for MaterialParameters)
      {
        goto LABEL_82;
      }

      v160 = &type metadata for MaterialParameters;
      v161 = &off_1F253F550;
      v162 = 1;
      v98 = *(v134 + 104);
      v99 = *(v98 + 16);
      if (!v99)
      {

LABEL_137:
        v113 = *(v12 + 240) - *(v12 + 232);
        v114 = ecs_stack_allocator_allocate(*(v134 + 32), 8 * v113, 8);
        *v114 = v10;
        sub_1AF63515C(&v160, &v163);
        *v166 = v114;
        *&v166[8] = v113;
        *&v166[16] = 1;
        v115 = *(v134 + 104);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *(v134 + 104) = v115;
        if ((v116 & 1) == 0)
        {
          v115 = sub_1AF420EA0(0, v115[2] + 1, 1, v115);
          *(v134 + 104) = v115;
        }

        v118 = v115[2];
        v117 = v115[3];
        if (v118 >= v117 >> 1)
        {
          *(v134 + 104) = sub_1AF420EA0(v117 > 1, v118 + 1, 1, v115);
        }

        sub_1AF635250(&v160);
        v119 = *(v134 + 104);
        *(v119 + 16) = v118 + 1;
        v120 = v119 + 72 * v118;
        *(v120 + 32) = v163;
        v122 = v165;
        v121 = *v166;
        v123 = v164;
        *(v120 + 96) = *&v166[16];
        *(v120 + 64) = v122;
        *(v120 + 80) = v121;
        *(v120 + 48) = v123;
        *(v134 + 104) = v119;
        goto LABEL_82;
      }

      v100 = v98 + 32;

      v101 = 0;
      while (1)
      {
        sub_1AF6350F8(v100, v159);
        sub_1AF63515C(v159, &v163);
        sub_1AF63515C(&v160, v166);
        if (BYTE8(v165) <= 2u)
        {
          break;
        }

        if (BYTE8(v165) == 3)
        {
          sub_1AF63515C(&v163, v158);
          if (v168 != 3)
          {
            goto LABEL_110;
          }

LABEL_129:
          sub_1AF616568(v158, v155);
          sub_1AF616568(v166, v154);
          v106 = v156;
          v107 = v157;
          sub_1AF441150(v155, v156);
          LOBYTE(v106) = sub_1AF640C98(v154, v106, v107);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v154);
          sub_1AFCB9FB8(v159, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v155);
          sub_1AF635250(&v163);
          if (v106)
          {
            goto LABEL_134;
          }

          goto LABEL_112;
        }

        if (BYTE8(v165) != 4)
        {
          sub_1AFCB9FB8(v159, sub_1AF43A540);
          if (v168 == 5)
          {
            v108 = vorrq_s8(*&v166[8], v167);
            if (!(*&vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL)) | *v166))
            {
              sub_1AF635250(&v163);
LABEL_134:
              v110 = sub_1AFBFCA08(&v163);
              v111 = *(v109 + 48);
              if (v111)
              {
                v112 = *(v109 + 64);
                *(v111 + 8 * v112) = v10;
                *(v109 + 64) = v112 + 1;
              }

              (v110)(&v163, 0);

              sub_1AF635250(&v160);
LABEL_82:
              if (++v10 == v19)
              {
                goto LABEL_18;
              }

              goto LABEL_83;
            }
          }

          goto LABEL_111;
        }

        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168 != 4)
        {
          goto LABEL_111;
        }

        v102 = LOBYTE(v158[0]);
        v103 = v166[0];
        sub_1AF635250(&v163);
        if (v102 == v103)
        {
          goto LABEL_134;
        }

LABEL_112:
        ++v101;
        v100 += 72;
        if (v99 == v101)
        {
          goto LABEL_137;
        }
      }

      if (!BYTE8(v165))
      {
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168)
        {
          goto LABEL_111;
        }

        goto LABEL_124;
      }

      if (BYTE8(v165) == 1)
      {
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168 != 1)
        {
          goto LABEL_111;
        }

LABEL_124:
        v104 = *&v158[0];
        v105 = *v166;
        sub_1AF635250(&v163);
        if (v104 == v105)
        {
          goto LABEL_134;
        }

        goto LABEL_112;
      }

      sub_1AF63515C(&v163, v158);
      if (v168 != 2)
      {
LABEL_110:
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
LABEL_111:
        sub_1AFCB9F58(&v163, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_112;
      }

      goto LABEL_129;
    }
  }

  sub_1AFCB9FB8(v141, sub_1AFCBA604);
  v124 = MEMORY[0x1E69E6720];
  return sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, v124, sub_1AFCBA88C);
}

uint64_t sub_1AFCAF54C(uint64_t a1, uint64_t a2)
{
  v133 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v89 = a2;
    swift_once();
    LODWORD(a2) = v89;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v105 = qword_1ED73B840;
  v106 = v4;
  v107 = v3 >> 31;
  v108 = 1;
  v109 = 2;
  v110 = 0;

  sub_1AFCC7088(1, 3, v98);

  v103[0] = v98[0];
  v103[1] = v98[1];
  v104 = v99;
  sub_1AF6B06C0(a1, v103, 0x200000000, v127);
  if (!*v127)
  {
    return sub_1AFCB9FB8(v98, sub_1AFCBA588);
  }

  if (v130 > 0)
  {
    v92 = *(&v128 + 1);
    if (*(&v128 + 1))
    {
      v91 = *&v127[40];
      v5 = *(&v129 + 1);
      v95 = *(*(&v129 + 1) + 32);
      v6 = *(v129 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v100 = *v127;
      v101 = *&v127[8];
      v102 = *&v127[24];
      v126[2] = *&v127[32];
      v126[3] = v128;
      v126[4] = v129;
      v126[5] = v130;
      v126[0] = *v127;
      v126[1] = *&v127[16];
      sub_1AF5DD298(v126, &v120);
      v7 = 0;
      v8 = 0;
      v90 = v6;
      v96 = v5;
      while (1)
      {
        v93 = v8;
        v94 = v7;
        v9 = (v91 + 48 * v7);
        v11 = *v9;
        v10 = v9[1];
        v12 = *(v9 + 2);
        v13 = *(v9 + 3);
        v14 = *(v9 + 4);
        v15 = *(v9 + 5);
        if (v6)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v95);
        v17 = *(v5 + 4);
        v131[0] = *(v5 + 3);
        v131[1] = v17;
        v132 = v5[10];
        v18 = v5[4];
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

        v5 = v96;
        v96[6] = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
        v96[7] = v19;
        v96[9] = 0;
        v96[10] = 0;
        v96[8] = 0;

        sub_1AF64B110(&type metadata for VFXAssetTag, &off_1F253D498, v12, v13, v14, v96);
        v97 = sub_1AF64B110(&type metadata for Name, &off_1F2535068, v12, v13, v14, v96);
        if (v12)
        {
          if (v14)
          {
            v20 = 0;
            while (1)
            {
              v21 = v12[v20];
              v22 = (v97 + 16 * v20);
              v23 = *v22 == 0x7465737341 && v22[1] == 0xE500000000000000;
              if (!v23 && (sub_1AFDFEE28() & 1) == 0)
              {
                goto LABEL_21;
              }

              v24 = *(*(v15 + 40) + 16);
              v25 = *(v24 + 128);
              if (!*(v25 + 16))
              {
                goto LABEL_21;
              }

              v26 = sub_1AF449CB8(&type metadata for Name);
              if ((v27 & 1) == 0 || *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for Name)
              {
                goto LABEL_21;
              }

              v117 = &type metadata for Name;
              v118 = &off_1F2535068;
              v119 = 1;
              v28 = v5[13];
              v29 = *(v28 + 16);
              if (!v29)
              {

LABEL_59:
                v43 = *(v15 + 240) - *(v15 + 232);
                v5 = v96;
                v44 = ecs_stack_allocator_allocate(v96[4], 8 * v43, 8);
                *v44 = v21;
                sub_1AF63515C(&v117, &v120);
                *v123 = v44;
                *&v123[8] = v43;
                *&v123[16] = 1;
                v45 = v96[13];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v96[13] = v45;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v45 = sub_1AF420EA0(0, v45[2] + 1, 1, v45);
                  v96[13] = v45;
                }

                v48 = v45[2];
                v47 = v45[3];
                if (v48 >= v47 >> 1)
                {
                  v96[13] = sub_1AF420EA0(v47 > 1, v48 + 1, 1, v45);
                }

                sub_1AF635250(&v117);
                v49 = v96[13];
                *(v49 + 16) = v48 + 1;
                v50 = v49 + 72 * v48;
                *(v50 + 32) = v120;
                v52 = v122;
                v51 = *v123;
                v53 = v121;
                *(v50 + 96) = *&v123[16];
                *(v50 + 64) = v52;
                *(v50 + 80) = v51;
                *(v50 + 48) = v53;
                v96[13] = v49;
                goto LABEL_21;
              }

              v30 = v28 + 32;

              v31 = 0;
              while (1)
              {
                sub_1AF6350F8(v30, v116);
                sub_1AF63515C(v116, &v120);
                sub_1AF63515C(&v117, v123);
                if (BYTE8(v122) <= 2u)
                {
                  if (!BYTE8(v122))
                  {
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    sub_1AF63515C(&v120, v115);
                    if (v125)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_46;
                  }

                  if (BYTE8(v122) == 1)
                  {
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    sub_1AF63515C(&v120, v115);
                    if (v125 != 1)
                    {
                      goto LABEL_33;
                    }

LABEL_46:
                    v34 = *&v115[0];
                    v35 = *v123;
                    sub_1AF635250(&v120);
                    if (v34 == v35)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_34;
                  }

                  sub_1AF63515C(&v120, v115);
                  if (v125 != 2)
                  {
LABEL_32:
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v115);
LABEL_33:
                    sub_1AFCB9F58(&v120, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_34;
                  }

                  goto LABEL_51;
                }

                if (BYTE8(v122) == 3)
                {
                  sub_1AF63515C(&v120, v115);
                  if (v125 != 3)
                  {
                    goto LABEL_32;
                  }

LABEL_51:
                  sub_1AF616568(v115, v112);
                  sub_1AF616568(v123, v111);
                  v36 = v113;
                  v37 = v114;
                  sub_1AF441150(v112, v113);
                  LOBYTE(v36) = sub_1AF640C98(v111, v36, v37);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
                  sub_1AFCB9FB8(v116, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
                  sub_1AF635250(&v120);
                  if (v36)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_34;
                }

                if (BYTE8(v122) != 4)
                {
                  break;
                }

                sub_1AFCB9FB8(v116, sub_1AF43A540);
                sub_1AF63515C(&v120, v115);
                if (v125 != 4)
                {
                  goto LABEL_33;
                }

                v32 = LOBYTE(v115[0]);
                v33 = v123[0];
                sub_1AF635250(&v120);
                if (v32 == v33)
                {
                  goto LABEL_56;
                }

LABEL_34:
                ++v31;
                v30 += 72;
                if (v29 == v31)
                {
                  goto LABEL_59;
                }
              }

              sub_1AFCB9FB8(v116, sub_1AF43A540);
              if (v125 != 5)
              {
                goto LABEL_33;
              }

              v38 = vorrq_s8(*&v123[8], v124);
              if (*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *v123)
              {
                goto LABEL_33;
              }

              sub_1AF635250(&v120);
LABEL_56:
              v5 = v96;
              v40 = sub_1AFBFCA08(&v120);
              v41 = *(v39 + 48);
              if (v41)
              {
                v42 = *(v39 + 64);
                *(v41 + 8 * v42) = v21;
                *(v39 + 64) = v42 + 1;
              }

              (v40)(&v120, 0);

              sub_1AF635250(&v117);
LABEL_21:
              if (++v20 == v14)
              {
                goto LABEL_18;
              }
            }
          }

          goto LABEL_18;
        }

        if (v11 != v10)
        {
          break;
        }

LABEL_18:
        v8 = v93;
        sub_1AF630994(v5, &v100, v131);
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v95);
        v6 = v90;
        if (v90)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v7 = v94 + 1;
        if (v94 + 1 == v92)
        {
          sub_1AFCB9FB8(v98, sub_1AFCBA588);
          v88 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v86 = v88;
          return sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, v86, sub_1AFCBA88C);
        }
      }

LABEL_66:
      v54 = (v97 + 16 * v11);
      v55 = *v54 == 0x7465737341 && v54[1] == 0xE500000000000000;
      if (!v55 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_65;
      }

      v56 = *(*(v15 + 40) + 16);
      v57 = *(v56 + 128);
      if (!*(v57 + 16))
      {
        goto LABEL_65;
      }

      v58 = sub_1AF449CB8(&type metadata for Name);
      if ((v59 & 1) == 0 || *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) != &type metadata for Name)
      {
        goto LABEL_65;
      }

      v117 = &type metadata for Name;
      v118 = &off_1F2535068;
      v119 = 1;
      v60 = v96[13];
      v61 = *(v60 + 16);
      if (!v61)
      {

LABEL_103:
        v75 = *(v15 + 240) - *(v15 + 232);
        v76 = ecs_stack_allocator_allocate(v96[4], 8 * v75, 8);
        *v76 = v11;
        sub_1AF63515C(&v117, &v120);
        *v123 = v76;
        *&v123[8] = v75;
        *&v123[16] = 1;
        v77 = v96[13];
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v96[13] = v77;
        if ((v78 & 1) == 0)
        {
          v77 = sub_1AF420EA0(0, v77[2] + 1, 1, v77);
          v96[13] = v77;
        }

        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v96[13] = sub_1AF420EA0(v79 > 1, v80 + 1, 1, v77);
        }

        sub_1AF635250(&v117);
        v81 = v96[13];
        *(v81 + 16) = v80 + 1;
        v82 = v81 + 72 * v80;
        *(v82 + 32) = v120;
        v84 = v122;
        v83 = *v123;
        v85 = v121;
        *(v82 + 96) = *&v123[16];
        *(v82 + 64) = v84;
        *(v82 + 80) = v83;
        *(v82 + 48) = v85;
        v96[13] = v81;
        goto LABEL_65;
      }

      v62 = v60 + 32;

      v63 = 0;
      while (1)
      {
        sub_1AF6350F8(v62, v116);
        sub_1AF63515C(v116, &v120);
        sub_1AF63515C(&v117, v123);
        if (BYTE8(v122) <= 2u)
        {
          break;
        }

        if (BYTE8(v122) == 3)
        {
          sub_1AF63515C(&v120, v115);
          if (v125 != 3)
          {
            goto LABEL_76;
          }

LABEL_95:
          sub_1AF616568(v115, v112);
          sub_1AF616568(v123, v111);
          v68 = v113;
          v69 = v114;
          sub_1AF441150(v112, v113);
          LOBYTE(v68) = sub_1AF640C98(v111, v68, v69);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
          sub_1AFCB9FB8(v116, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
          sub_1AF635250(&v120);
          if (v68)
          {
            goto LABEL_100;
          }

          goto LABEL_78;
        }

        if (BYTE8(v122) != 4)
        {
          sub_1AFCB9FB8(v116, sub_1AF43A540);
          if (v125 == 5)
          {
            v70 = vorrq_s8(*&v123[8], v124);
            if (!(*&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v123))
            {
              sub_1AF635250(&v120);
LABEL_100:
              v72 = sub_1AFBFCA08(&v120);
              v73 = *(v71 + 48);
              if (v73)
              {
                v74 = *(v71 + 64);
                *(v73 + 8 * v74) = v11;
                *(v71 + 64) = v74 + 1;
              }

              (v72)(&v120, 0);

              sub_1AF635250(&v117);
LABEL_65:
              if (++v11 == v10)
              {
                goto LABEL_18;
              }

              goto LABEL_66;
            }
          }

          goto LABEL_77;
        }

        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125 != 4)
        {
          goto LABEL_77;
        }

        v64 = LOBYTE(v115[0]);
        v65 = v123[0];
        sub_1AF635250(&v120);
        if (v64 == v65)
        {
          goto LABEL_100;
        }

LABEL_78:
        ++v63;
        v62 += 72;
        if (v61 == v63)
        {
          goto LABEL_103;
        }
      }

      if (!BYTE8(v122))
      {
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125)
        {
          goto LABEL_77;
        }

        goto LABEL_90;
      }

      if (BYTE8(v122) == 1)
      {
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125 != 1)
        {
          goto LABEL_77;
        }

LABEL_90:
        v66 = *&v115[0];
        v67 = *v123;
        sub_1AF635250(&v120);
        if (v66 == v67)
        {
          goto LABEL_100;
        }

        goto LABEL_78;
      }

      sub_1AF63515C(&v120, v115);
      if (v125 != 2)
      {
LABEL_76:
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v115);
LABEL_77:
        sub_1AFCB9F58(&v120, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_78;
      }

      goto LABEL_95;
    }
  }

  sub_1AFCB9FB8(v98, sub_1AFCBA588);
  v86 = MEMORY[0x1E69E6720];
  return sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, v86, sub_1AFCBA88C);
}

uint64_t sub_1AFCB0308(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v30 = a2;
    swift_once();
    LODWORD(a2) = v30;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v49 = qword_1ED73B840;
  v50 = v4;
  v51 = v3 >> 31;
  v52 = 1;
  v53 = 2;
  v54 = 0;

  sub_1AF7051A4(2, v38);

  v47[0] = v38[0];
  v47[1] = v38[1];
  v48 = v39;
  sub_1AF6B06C0(a1, v47, 0x200000000, v40);
  if (!*v40)
  {
    return sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
  }

  if (v43 > 0 && (v33 = *(&v41 + 1)) != 0)
  {
    v32 = *&v40[40];
    v5 = *(&v42 + 1);
    v6 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v34 = *(*(&v42 + 1) + 32);
    v44 = *v40;
    v45 = *&v40[8];
    v46 = *&v40[24];
    v37[2] = *&v40[32];
    v37[3] = v41;
    v37[4] = v42;
    v37[5] = v43;
    v37[0] = *v40;
    v37[1] = *&v40[16];
    sub_1AF5DD298(v37, v35);
    v7 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    v31 = v6;
    do
    {
      v13 = (v32 + 48 * v7);
      v15 = *v13;
      v14 = v13[1];
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      v19 = *(v13 + 4);
      v18 = *(v13 + 5);
      if (v6)
      {
        v20 = *(v18 + 376);

        os_unfair_lock_lock(v20);
        os_unfair_lock_lock(*(v18 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v34);
      v21 = *(v5 + 64);
      v35[0] = *(v5 + 48);
      v35[1] = v21;
      v36 = *(v5 + 80);
      v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v22, 8);
      *(v5 + 56) = v22;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v23 = sub_1AF64B110(&type metadata for ParticlePivotInit, &off_1F254E6A0, v17, v16, v19, v5);
      if (v17)
      {
        v6 = v31;
        if (v19)
        {
          v24 = (v23 + 16);
          do
          {
            v24[-2] = vrev64_s32(vsub_f32(_D8, v24[-2]));
            *v24 = vrev64_s32(vsub_f32(_D8, *v24));
            v24 += 3;
            --v19;
          }

          while (v19);
        }
      }

      else
      {
        v6 = v31;
        if (v15 != v14)
        {
          v25 = v14 - v15;
          v26 = (v23 + 24 * v15 + 16);
          do
          {
            v26[-2] = vrev64_s32(vsub_f32(_D8, v26[-2]));
            *v26 = vrev64_s32(vsub_f32(_D8, *v26));
            v26 += 3;
            --v25;
          }

          while (v25);
        }
      }

      sub_1AF630994(v5, &v44, v35);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v34);
      if (v6)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      ++v7;
    }

    while (v7 != v33);
    sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
    v29 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v40, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v27 = v29;
  }

  else
  {
    sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
    v27 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v40, &qword_1ED725EA0, &type metadata for QueryResult, v27, sub_1AFCBA88C);
}

uint64_t sub_1AFCB0778(uint64_t a1, uint64_t a2, char a3)
{
  v426 = *MEMORY[0x1E69E9840];
  v5 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v226 = a2;
    swift_once();
    LODWORD(a2) = v226;
  }

  v6 = qword_1ED73B840;
  v347 = qword_1ED73B840;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v228 = v7;
  v348 = v7;
  v229 = v5 >> 31;
  v349 = v5 >> 31;
  v350 = 1;
  v351 = 2;
  v352 = 0;

  sub_1AF702F8C(2, v275);
  v230 = v6;

  v227 = a1;
  if ((a3 & 1) != 0 || (v315[0] = v275[0], v315[1] = v275[1], v316 = v276, sub_1AF6B06C0(a1, v315, 0x200000000, &v354), !v354))
  {
    v33 = 0;
  }

  else
  {
    if (v361 >= 1)
    {
      v262 = v358;
      if (v358)
      {
        v8 = 0;
        v256 = v357;
        v9 = v360;
        v269 = *(v360 + 32);
        v10 = *(v359 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v287 = v354;
        v288 = v355;
        v289 = v356;
        v250 = v10;
        do
        {
          v11 = (v256 + 48 * v8);
          v13 = *v11;
          v12 = v11[1];
          v15 = *(v11 + 2);
          v14 = *(v11 + 3);
          v16 = *(v11 + 4);
          v17 = *(v11 + 5);
          if (v10)
          {
            v18 = *(v17 + 376);

            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v269);
          v19 = *(v9 + 64);
          v424[0] = *(v9 + 48);
          v424[1] = v19;
          v425 = *(v9 + 80);
          v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v20, 8);
          *(v9 + 56) = v20;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = 0;
          v21 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v15, v14, v16, v9);
          if (v15)
          {
            v10 = v250;
            if (v16)
            {
              if (v16 == 1)
              {
                v22 = 0;
              }

              else
              {
                v22 = v16 & 0xFFFFFFFFFFFFFFFELL;
                v25 = (v21 + 178);
                v26 = v16 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v25 - 104) = 1;
                  *v25 = 1;
                  v25 += 208;
                  v26 -= 2;
                }

                while (v26);
                if (v16 == v22)
                {
                  goto LABEL_33;
                }
              }

              v27 = v16 - v22;
              v28 = (v21 + 104 * v22 + 74);
              do
              {
                *v28 = 1;
                v28 += 104;
                --v27;
              }

              while (v27);
            }
          }

          else
          {
            v10 = v250;
            if (v13 != v12)
            {
              v23 = v12 - v13;
              if ((v12 - v13) > 1)
              {
                v24 = (v23 & 0xFFFFFFFFFFFFFFFELL) + v13;
                v29 = (v21 + 104 * v13 + 178);
                v30 = v23 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v29 - 104) = 1;
                  *v29 = 1;
                  v29 += 208;
                  v30 -= 2;
                }

                while (v30);
                if (v23 == (v23 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v24 = v13;
              }

              v31 = v12 - v24;
              v32 = (v21 + 104 * v24 + 74);
              do
              {
                *v32 = 1;
                v32 += 104;
                --v31;
              }

              while (v31);
            }
          }

LABEL_33:
          sub_1AF630994(v9, &v287, v424);
          sub_1AF62D29C(v17);
          ecs_stack_allocator_pop_snapshot(v269);
          if (v10)
          {
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          ++v8;
        }

        while (v8 != v262);
      }
    }

    sub_1AFCB9F58(&v354, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v227;
    v33 = 0;
  }

  v341 = v230;
  v342 = v228;
  v343 = v229;
  v344 = 1;
  v345 = 2;
  v346 = 0;

  sub_1AFCC70AC(1, 2, v277);

  v313[0] = v277[0];
  v313[1] = v277[1];
  v314 = v278;
  sub_1AF6B06C0(a1, v313, 0x200000000, &v362);
  if (v362)
  {
    if (v369 < 1 || (v234 = v366) == 0)
    {
LABEL_192:
      sub_1AFCB9F58(&v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      a1 = v227;
      goto LABEL_193;
    }

    v34 = 0;
    v233 = v365;
    v35 = v368;
    v36 = *(v368 + 32);
    v37 = *(v367 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v290 = v362;
    v291 = v363;
    v292 = v364;
    v232 = v36;
    v231 = v37;
    while (1)
    {
      v38 = (v233 + 48 * v34);
      v39 = *v38;
      v263 = v38[1];
      v40 = *(v38 + 3);
      v41 = *(v38 + 5);
      v245 = *(v38 + 4);
      v251 = *(v38 + 2);
      v235 = v34;
      v240 = v33;
      if (v37)
      {
        v42 = *(v41 + 376);

        os_unfair_lock_lock(v42);
        os_unfair_lock_lock(*(v41 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v36);
      v43 = *(v35 + 64);
      v422[0] = *(v35 + 48);
      v422[1] = v43;
      v423 = *(v35 + 80);
      v44 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
      *(v35 + 48) = ecs_stack_allocator_allocate(*(v35 + 32), 48 * v44, 8);
      *(v35 + 56) = v44;
      *(v35 + 72) = 0;
      *(v35 + 80) = 0;
      *(v35 + 64) = 0;
      v270 = sub_1AF64B110(&type metadata for EmitterShape, &off_1F254C2E8, v251, v40, v245, v35);
      v257 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v251, v40, v245, v35);
      if (v251)
      {
        if (v245)
        {
          v45 = v245;
          v46 = 0;
          while (1)
          {
            v47 = v270 + 224 * v46;
            v48 = *v47;
            if (*(v47 + 4) == 1)
            {
              if (v48 == 0.0)
              {
                goto LABEL_50;
              }

              v264 = v251[v46];
              *&v49 = vaddq_f32(*(v257 + 16 * v46), *(v257 + 16 * v46)).u64[0];
              v50 = COERCE_FLOAT(*(v257 + 16 * v46 + 8));
              *(&v49 + 1) = COERCE_UNSIGNED_INT(v50 + v50);
              *(v257 + 16 * v46) = v49;
              v51 = *(*(v41 + 40) + 16);
              v52 = *(v51 + 128);
              if (*(v52 + 16))
              {
                v53 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
                if ((v54 & 1) != 0 && *(*(v51 + 24) + 16 * *(*(v52 + 56) + 8 * v53) + 32) == &type metadata for HalfSizeLegacyPatch)
                {
                  goto LABEL_50;
                }
              }

              *&v398 = &type metadata for HalfSizeLegacyPatch;
              *(&v398 + 1) = &off_1F252F9F0;
              BYTE8(v400) = 0;
              v55 = *(v35 + 104);
              v56 = *(v55 + 16);
              if (!v56)
              {
LABEL_113:

LABEL_114:
                v87 = *(v41 + 240) - *(v41 + 232);
                v88 = ecs_stack_allocator_allocate(*(v35 + 32), 8 * v87, 8);
                *v88 = v264;
                sub_1AF63515C(&v398, &v414);
                *v417 = v88;
                *&v417[8] = v87;
                *&v417[16] = 1;
                v89 = *(v35 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v35 + 104) = v89;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v89 = sub_1AF420EA0(0, v89[2] + 1, 1, v89);
                  *(v35 + 104) = v89;
                }

                v92 = v89[2];
                v91 = v89[3];
                if (v92 >= v91 >> 1)
                {
                  *(v35 + 104) = sub_1AF420EA0(v91 > 1, v92 + 1, 1, v89);
                }

                sub_1AF635250(&v398);
                v93 = *(v35 + 104);
                *(v93 + 16) = v92 + 1;
                v94 = v93 + 72 * v92;
                *(v94 + 32) = v414;
                v95 = *v417;
                v96 = v416;
                v97 = v415;
                *(v94 + 96) = *&v417[16];
                *(v94 + 64) = v96;
                *(v94 + 80) = v95;
                *(v94 + 48) = v97;
                *(v35 + 104) = v93;
                goto LABEL_49;
              }

              v57 = v55 + 32;

              v58 = 0;
              while (2)
              {
                sub_1AF6350F8(v57, &v406);
                sub_1AF63515C(&v406, &v414);
                sub_1AF63515C(&v398, v417);
                if (BYTE8(v416) > 2u)
                {
                  if (BYTE8(v416) != 3)
                  {
                    if (BYTE8(v416) != 4)
                    {
                      sub_1AFCB9FB8(&v406, sub_1AF43A540);
                      if (v419 == 5)
                      {
                        v65 = vorrq_s8(*&v417[8], v418);
                        if (!(*&vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)) | *v417))
                        {
                          goto LABEL_110;
                        }
                      }

                      goto LABEL_59;
                    }

                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419 != 4)
                    {
                      goto LABEL_59;
                    }

                    v59 = v390;
                    v60 = v417[0];
                    sub_1AF635250(&v414);
                    if (v59 == v60)
                    {
                      goto LABEL_111;
                    }

LABEL_60:
                    ++v58;
                    v57 += 72;
                    if (v56 == v58)
                    {
                      goto LABEL_114;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v414, &v390);
                  if (v419 == 3)
                  {
LABEL_77:
                    sub_1AF616568(&v390, v385);
                    sub_1AF616568(v417, v380);
                    v63 = *&v385[24];
                    v64 = *&v385[32];
                    sub_1AF441150(v385, *&v385[24]);
                    LOBYTE(v63) = sub_1AF640C98(v380, v63, v64);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
                    sub_1AF635250(&v414);
                    if (v63)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                  if (!BYTE8(v416))
                  {
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419)
                    {
                      goto LABEL_59;
                    }

LABEL_72:
                    v61 = v390;
                    v62 = *v417;
                    sub_1AF635250(&v414);
                    if (v61 == v62)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_60;
                  }

                  if (BYTE8(v416) == 1)
                  {
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419 == 1)
                    {
                      goto LABEL_72;
                    }

LABEL_59:
                    sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_60;
                  }

                  sub_1AF63515C(&v414, &v390);
                  if (v419 == 2)
                  {
                    goto LABEL_77;
                  }
                }

                break;
              }

              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
              goto LABEL_59;
            }

            v264 = v251[v46];
            *&v66 = vaddq_f32(*(v257 + 16 * v46), *(v257 + 16 * v46)).u64[0];
            v67 = COERCE_FLOAT(*(v257 + 16 * v46 + 8));
            *(&v66 + 2) = v67 + v67;
            HIDWORD(v66) = 0;
            *(v257 + 16 * v46) = v66;
            *v47 = v48 * 0.5;
            *(v47 + 4) = 0;
            v68 = *(*(v41 + 40) + 16);
            v69 = *(v68 + 128);
            if (*(v69 + 16))
            {
              v70 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
              if ((v71 & 1) != 0 && *(*(v68 + 24) + 16 * *(*(v69 + 56) + 8 * v70) + 32) == &type metadata for HalfSizeLegacyPatch)
              {
                goto LABEL_50;
              }
            }

            *&v398 = &type metadata for HalfSizeLegacyPatch;
            *(&v398 + 1) = &off_1F252F9F0;
            BYTE8(v400) = 0;
            v72 = *(v35 + 104);
            v73 = *(v72 + 16);
            if (!v73)
            {
              goto LABEL_113;
            }

            v74 = v72 + 32;

            v75 = 0;
            while (1)
            {
              sub_1AF6350F8(v74, &v406);
              sub_1AF63515C(&v406, &v414);
              sub_1AF63515C(&v398, v417);
              if (BYTE8(v416) <= 2u)
              {
                if (!BYTE8(v416))
                {
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  sub_1AF63515C(&v414, &v390);
                  if (v419)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_101;
                }

                if (BYTE8(v416) == 1)
                {
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  sub_1AF63515C(&v414, &v390);
                  if (v419 != 1)
                  {
                    goto LABEL_88;
                  }

LABEL_101:
                  v78 = v390;
                  v79 = *v417;
                  sub_1AF635250(&v414);
                  if (v78 == v79)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_89;
                }

                sub_1AF63515C(&v414, &v390);
                if (v419 != 2)
                {
LABEL_87:
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
LABEL_88:
                  sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_89;
                }

                goto LABEL_106;
              }

              if (BYTE8(v416) == 3)
              {
                sub_1AF63515C(&v414, &v390);
                if (v419 != 3)
                {
                  goto LABEL_87;
                }

LABEL_106:
                sub_1AF616568(&v390, v385);
                sub_1AF616568(v417, v380);
                v80 = *&v385[24];
                v81 = *&v385[32];
                sub_1AF441150(v385, *&v385[24]);
                LOBYTE(v80) = sub_1AF640C98(v380, v80, v81);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
                sub_1AFCB9FB8(&v406, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
                sub_1AF635250(&v414);
                if (v80)
                {
                  goto LABEL_111;
                }

                goto LABEL_89;
              }

              if (BYTE8(v416) != 4)
              {
                break;
              }

              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              sub_1AF63515C(&v414, &v390);
              if (v419 != 4)
              {
                goto LABEL_88;
              }

              v76 = v390;
              v77 = v417[0];
              sub_1AF635250(&v414);
              if (v76 == v77)
              {
                goto LABEL_111;
              }

LABEL_89:
              ++v75;
              v74 += 72;
              if (v73 == v75)
              {
                goto LABEL_114;
              }
            }

            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            if (v419 != 5)
            {
              goto LABEL_88;
            }

            v82 = vorrq_s8(*&v417[8], v418);
            if (*&vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL)) | *v417)
            {
              goto LABEL_88;
            }

LABEL_110:
            sub_1AF635250(&v414);
LABEL_111:
            v84 = sub_1AFBFCA08(&v414);
            v85 = *(v83 + 48);
            if (v85)
            {
              v86 = *(v83 + 64);
              *(v85 + 8 * v86) = v264;
              *(v83 + 64) = v86 + 1;
            }

            (v84)(&v414, 0);

            sub_1AF635250(&v398);
LABEL_49:
            v45 = v245;
LABEL_50:
            if (++v46 == v45)
            {
              goto LABEL_120;
            }
          }
        }

        goto LABEL_120;
      }

      if (v39 != v263)
      {
        break;
      }

LABEL_120:
      v33 = v240;
      sub_1AF630994(v35, &v290, v422);
      sub_1AF62D29C(v41);
      v36 = v232;
      ecs_stack_allocator_pop_snapshot(v232);
      v37 = v231;
      if (v231)
      {
        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v41 + 376));
      }

      v34 = v235 + 1;
      if (v235 + 1 == v234)
      {
        goto LABEL_192;
      }
    }

LABEL_124:
    v98 = v270 + 224 * v39;
    v99 = *v98;
    if (*(v98 + 4) == 1)
    {
      if (v99 == 0.0)
      {
        goto LABEL_123;
      }

      *&v100 = vaddq_f32(*(v257 + 16 * v39), *(v257 + 16 * v39)).u64[0];
      v101 = COERCE_FLOAT(*(v257 + 16 * v39 + 8));
      *(&v100 + 1) = COERCE_UNSIGNED_INT(v101 + v101);
      *(v257 + 16 * v39) = v100;
      v102 = *(*(v41 + 40) + 16);
      v103 = *(v102 + 128);
      if (*(v103 + 16))
      {
        v104 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
        if ((v105 & 1) != 0 && *(*(v102 + 24) + 16 * *(*(v103 + 56) + 8 * v104) + 32) == &type metadata for HalfSizeLegacyPatch)
        {
          goto LABEL_123;
        }
      }

      *&v398 = &type metadata for HalfSizeLegacyPatch;
      *(&v398 + 1) = &off_1F252F9F0;
      BYTE8(v400) = 0;
      v106 = *(v35 + 104);
      v107 = *(v106 + 16);
      if (!v107)
      {

LABEL_187:
        v138 = *(v41 + 240) - *(v41 + 232);
        v139 = ecs_stack_allocator_allocate(*(v35 + 32), 8 * v138, 8);
        *v139 = v39;
        sub_1AF63515C(&v398, &v414);
        *v417 = v139;
        *&v417[8] = v138;
        *&v417[16] = 1;
        v140 = *(v35 + 104);
        v141 = swift_isUniquelyReferenced_nonNull_native();
        *(v35 + 104) = v140;
        if ((v141 & 1) == 0)
        {
          v140 = sub_1AF420EA0(0, v140[2] + 1, 1, v140);
          *(v35 + 104) = v140;
        }

        v143 = v140[2];
        v142 = v140[3];
        if (v143 >= v142 >> 1)
        {
          *(v35 + 104) = sub_1AF420EA0(v142 > 1, v143 + 1, 1, v140);
        }

        sub_1AF635250(&v398);
        v144 = *(v35 + 104);
        *(v144 + 16) = v143 + 1;
        v145 = v144 + 72 * v143;
        *(v145 + 32) = v414;
        v146 = *v417;
        v147 = v416;
        v148 = v415;
        *(v145 + 96) = *&v417[16];
        *(v145 + 64) = v147;
        *(v145 + 80) = v146;
        *(v145 + 48) = v148;
        *(v35 + 104) = v144;
        goto LABEL_123;
      }

      v108 = v106 + 32;

      v109 = 0;
      while (2)
      {
        sub_1AF6350F8(v108, &v406);
        sub_1AF63515C(&v406, &v414);
        sub_1AF63515C(&v398, v417);
        if (BYTE8(v416) > 2u)
        {
          if (BYTE8(v416) != 3)
          {
            if (BYTE8(v416) != 4)
            {
              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              if (v419 == 5)
              {
                v116 = vorrq_s8(*&v417[8], v418);
                if (!(*&vorr_s8(*v116.i8, *&vextq_s8(v116, v116, 8uLL)) | *v417))
                {
                  sub_1AF635250(&v414);
                  goto LABEL_184;
                }
              }

              goto LABEL_132;
            }

            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419 != 4)
            {
              goto LABEL_132;
            }

            v110 = v390;
            v111 = v417[0];
            sub_1AF635250(&v414);
            if (v110 == v111)
            {
              goto LABEL_184;
            }

LABEL_133:
            ++v109;
            v108 += 72;
            if (v107 == v109)
            {
              goto LABEL_187;
            }

            continue;
          }

          sub_1AF63515C(&v414, &v390);
          if (v419 == 3)
          {
LABEL_150:
            sub_1AF616568(&v390, v385);
            sub_1AF616568(v417, v380);
            v114 = *&v385[24];
            v115 = *&v385[32];
            sub_1AF441150(v385, *&v385[24]);
            LOBYTE(v114) = sub_1AF640C98(v380, v114, v115);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
            sub_1AF635250(&v414);
            if (v114)
            {
              goto LABEL_184;
            }

            goto LABEL_133;
          }
        }

        else
        {
          if (!BYTE8(v416))
          {
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419)
            {
              goto LABEL_132;
            }

LABEL_145:
            v112 = v390;
            v113 = *v417;
            sub_1AF635250(&v414);
            if (v112 == v113)
            {
              goto LABEL_184;
            }

            goto LABEL_133;
          }

          if (BYTE8(v416) == 1)
          {
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419 == 1)
            {
              goto LABEL_145;
            }

LABEL_132:
            sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
            goto LABEL_133;
          }

          sub_1AF63515C(&v414, &v390);
          if (v419 == 2)
          {
            goto LABEL_150;
          }
        }

        break;
      }

      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
      goto LABEL_132;
    }

    *&v117 = vaddq_f32(*(v257 + 16 * v39), *(v257 + 16 * v39)).u64[0];
    v118 = COERCE_FLOAT(*(v257 + 16 * v39 + 8));
    *(&v117 + 2) = v118 + v118;
    HIDWORD(v117) = 0;
    *(v257 + 16 * v39) = v117;
    *v98 = v99 * 0.5;
    *(v98 + 4) = 0;
    v119 = *(*(v41 + 40) + 16);
    v120 = *(v119 + 128);
    if (*(v120 + 16))
    {
      v121 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
      if ((v122 & 1) != 0 && *(*(v119 + 24) + 16 * *(*(v120 + 56) + 8 * v121) + 32) == &type metadata for HalfSizeLegacyPatch)
      {
        goto LABEL_123;
      }
    }

    *&v398 = &type metadata for HalfSizeLegacyPatch;
    *(&v398 + 1) = &off_1F252F9F0;
    BYTE8(v400) = 0;
    v123 = *(v35 + 104);
    v124 = *(v123 + 16);

    if (!v124)
    {
      goto LABEL_187;
    }

    v125 = 0;
    v126 = v123 + 32;
    while (1)
    {
      sub_1AF6350F8(v126, &v406);
      sub_1AF63515C(&v406, &v414);
      sub_1AF63515C(&v398, v417);
      if (BYTE8(v416) <= 2u)
      {
        break;
      }

      if (BYTE8(v416) == 3)
      {
        sub_1AF63515C(&v414, &v390);
        if (v419 != 3)
        {
          goto LABEL_160;
        }

LABEL_179:
        sub_1AF616568(&v390, v385);
        sub_1AF616568(v417, v380);
        v131 = *&v385[24];
        v132 = *&v385[32];
        sub_1AF441150(v385, *&v385[24]);
        LOBYTE(v131) = sub_1AF640C98(v380, v131, v132);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
        sub_1AF635250(&v414);
        sub_1AFCB9FB8(&v406, sub_1AF43A540);
        if (v131)
        {
          goto LABEL_184;
        }

        goto LABEL_162;
      }

      if (BYTE8(v416) != 4)
      {
        if (v419 == 5)
        {
          v133 = vorrq_s8(*&v417[8], v418);
          if (!(*&vorr_s8(*v133.i8, *&vextq_s8(v133, v133, 8uLL)) | *v417))
          {
            sub_1AF635250(&v414);
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
LABEL_184:
            v135 = sub_1AFBFCA08(&v414);
            v136 = *(v134 + 48);
            if (v136)
            {
              v137 = *(v134 + 64);
              *(v136 + 8 * v137) = v39;
              *(v134 + 64) = v137 + 1;
            }

            (v135)(&v414, 0);

            sub_1AF635250(&v398);
LABEL_123:
            if (++v39 == v263)
            {
              goto LABEL_120;
            }

            goto LABEL_124;
          }
        }

        goto LABEL_161;
      }

      sub_1AF63515C(&v414, &v390);
      if (v419 != 4)
      {
        goto LABEL_161;
      }

      v127 = v390;
      v128 = v417[0];
      sub_1AF635250(&v414);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      if (v127 == v128)
      {
        goto LABEL_184;
      }

LABEL_162:
      ++v125;
      v126 += 72;
      if (v124 == v125)
      {
        goto LABEL_187;
      }
    }

    if (!BYTE8(v416))
    {
      sub_1AF63515C(&v414, &v390);
      if (v419)
      {
        goto LABEL_161;
      }

      goto LABEL_174;
    }

    if (BYTE8(v416) == 1)
    {
      sub_1AF63515C(&v414, &v390);
      if (v419 != 1)
      {
        goto LABEL_161;
      }

LABEL_174:
      v129 = v390;
      v130 = *v417;
      sub_1AF635250(&v414);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      if (v129 == v130)
      {
        goto LABEL_184;
      }

      goto LABEL_162;
    }

    sub_1AF63515C(&v414, &v390);
    if (v419 != 2)
    {
LABEL_160:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
LABEL_161:
      sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      goto LABEL_162;
    }

    goto LABEL_179;
  }

LABEL_193:
  v335 = v230;
  v336 = v228;
  v337 = v229;
  v338 = 1;
  v339 = 2;
  v340 = 0;

  sub_1AFCC70D0(1, 2, v279);

  v311[0] = v279[0];
  v311[1] = v279[1];
  v312 = v280;
  sub_1AF6B06C0(a1, v311, 0x200000000, v370);
  if (*v370)
  {
    v252 = v373;
    if (v373 > 0 && (v246 = *(&v371 + 1)) != 0)
    {
      v241 = *&v370[40];
      v236 = v372;
      v265 = *(v372 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v271 = *(&v372 + 1);
      v258 = *(*(&v372 + 1) + 32);
      v293 = *v370;
      v294 = *&v370[8];
      v295 = *&v370[24];
      v408 = *&v370[32];
      v409 = v371;
      v410 = v372;
      v411 = v373;
      v406 = *v370;
      v407 = *&v370[16];
      sub_1AF5DD298(&v406, &v414);
      v149 = 0;
      do
      {
        v150 = v33;
        v151 = (v241 + 48 * v149);
        v152 = *v151;
        v153 = v151[1];
        v154 = v151[2];
        v156 = *(v151 + 2);
        v155 = *(v151 + 3);
        v158 = *(v151 + 4);
        v157 = *(v151 + 5);
        if (v265)
        {
          v159 = *(v157 + 376);

          os_unfair_lock_lock(v159);
          os_unfair_lock_lock(*(v157 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v258);

        sub_1AF630914(v160, v271, v374);

        LOBYTE(v398) = 1;
        *&v414 = v236;
        *(&v414 + 1) = v157;
        *&v415 = v271;
        *(&v415 + 1) = v154;
        *&v416 = (v153 - v152 + v154);
        *(&v416 + 1) = v252;
        *v417 = v152;
        *&v417[8] = v153;
        *&v417[16] = 0;
        v418.i64[0] = 0;
        v418.i8[8] = 1;
        v419 = v156;
        v420 = v155;
        v421 = v158;
        v33 = v150;
        sub_1AF705DBC(v157, &v414);
        v161 = sub_1AF70641C(v157, &v414);
        if (v419)
        {
          for (i = v421; i; --i)
          {
            v163.i64[0] = vaddq_f32(*v161, *v161).u64[0];
            v163.f32[2] = COERCE_FLOAT(v161->i64[1]) + COERCE_FLOAT(v161->i64[1]);
            v163.i32[3] = 0;
            *v161++ = v163;
          }
        }

        else
        {
          v164 = *&v417[8] - *v417;
          if (*&v417[8] != *v417)
          {
            v165 = &v161[*v417];
            do
            {
              v166.i64[0] = vaddq_f32(*v165, *v165).u64[0];
              v166.f32[2] = COERCE_FLOAT(v165->i64[1]) + COERCE_FLOAT(v165->i64[1]);
              v166.i32[3] = 0;
              *v165++ = v166;
              --v164;
            }

            while (v164);
          }
        }

        sub_1AF630994(v271, &v293, v374);
        sub_1AF62D29C(v157);
        ecs_stack_allocator_pop_snapshot(v258);
        if (v265)
        {
          os_unfair_lock_unlock(*(v157 + 344));
          os_unfair_lock_unlock(*(v157 + 376));
        }

        ++v149;
      }

      while (v149 != v246);
      v167 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, v167, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v329 = v230;
  v330 = v228;
  v331 = v229;
  v332 = 1;
  v333 = 2;
  v334 = 0;

  sub_1AFCC70F4(1, 2, v281);

  v309[0] = v281[0];
  v309[1] = v281[1];
  v310 = v282;
  sub_1AF6B06C0(a1, v309, 0x200000000, v375);
  if (*v375)
  {
    v253 = v378;
    if (v378 > 0 && (v247 = *(&v376 + 1)) != 0)
    {
      v242 = *&v375[40];
      v237 = v377;
      v266 = *(v377 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v272 = *(&v377 + 1);
      v259 = *(*(&v377 + 1) + 32);
      v296 = *v375;
      v297 = *&v375[8];
      v298 = *&v375[24];
      v400 = *&v375[32];
      v401 = v376;
      v402 = v377;
      v403 = v378;
      v398 = *v375;
      v399 = *&v375[16];
      sub_1AF5DD298(&v398, &v406);
      v168 = 0;
      do
      {
        v169 = v33;
        v170 = (v242 + 48 * v168);
        v171 = *v170;
        v172 = v170[1];
        v173 = v170[2];
        v175 = *(v170 + 2);
        v174 = *(v170 + 3);
        v177 = *(v170 + 4);
        v176 = *(v170 + 5);
        if (v266)
        {
          v178 = *(v176 + 376);

          os_unfair_lock_lock(v178);
          os_unfair_lock_lock(*(v176 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v259);

        sub_1AF630914(v179, v272, v379);

        LOBYTE(v390) = 1;
        *&v406 = v237;
        *(&v406 + 1) = v176;
        *&v407 = v272;
        *(&v407 + 1) = v173;
        *&v408 = (v172 - v171 + v173);
        *(&v408 + 1) = v253;
        *&v409 = v171;
        *(&v409 + 1) = v172;
        v410 = 0uLL;
        LOBYTE(v411) = 1;
        *(&v411 + 1) = v175;
        v412 = v174;
        v413 = v177;
        v33 = v169;
        sub_1AF705E0C(v176, &v406);
        v180 = sub_1AF70641C(v176, &v406);
        if (*(&v411 + 1))
        {
          for (j = v413; j; --j)
          {
            v182.i64[0] = vaddq_f32(*v180, *v180).u64[0];
            v182.f32[2] = COERCE_FLOAT(v180->i64[1]) + COERCE_FLOAT(v180->i64[1]);
            v182.i32[3] = 0;
            *v180++ = v182;
          }
        }

        else
        {
          v183 = *(&v409 + 1) - v409;
          if (*(&v409 + 1) != v409)
          {
            v184 = &v180[v409];
            do
            {
              v185.i64[0] = vaddq_f32(*v184, *v184).u64[0];
              v185.f32[2] = COERCE_FLOAT(v184->i64[1]) + COERCE_FLOAT(v184->i64[1]);
              v185.i32[3] = 0;
              *v184++ = v185;
              --v183;
            }

            while (v183);
          }
        }

        sub_1AF630994(v272, &v296, v379);
        sub_1AF62D29C(v176);
        ecs_stack_allocator_pop_snapshot(v259);
        if (v266)
        {
          os_unfair_lock_unlock(*(v176 + 344));
          os_unfair_lock_unlock(*(v176 + 376));
        }

        ++v168;
      }

      while (v168 != v247);
      v186 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, v186, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v323 = v230;
  v324 = v228;
  v325 = v229;
  v326 = 1;
  v327 = 2;
  v328 = 0;

  sub_1AFCC7118(1, 2, v283);

  v307[0] = v283[0];
  v307[1] = v283[1];
  v308 = v284;
  sub_1AF6B06C0(a1, v307, 0x200000000, v380);
  if (*v380)
  {
    v254 = v383;
    if (v383 > 0 && (v248 = *(&v381 + 1)) != 0)
    {
      v243 = *&v380[40];
      v238 = v382;
      v267 = *(v382 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v273 = *(&v382 + 1);
      v260 = *(*(&v382 + 1) + 32);
      v299 = *v380;
      v300 = *&v380[8];
      v301 = *&v380[24];
      v392 = *&v380[32];
      v393 = v381;
      v394 = v382;
      v395 = v383;
      v390 = *v380;
      v391 = *&v380[16];
      sub_1AF5DD298(&v390, &v398);
      v187 = 0;
      do
      {
        v188 = v33;
        v189 = (v243 + 48 * v187);
        v191 = *v189;
        v190 = v189[1];
        v192 = v189[2];
        v194 = *(v189 + 2);
        v193 = *(v189 + 3);
        v196 = *(v189 + 4);
        v195 = *(v189 + 5);
        if (v267)
        {
          v197 = *(v195 + 376);

          os_unfair_lock_lock(v197);
          os_unfair_lock_lock(*(v195 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v260);

        sub_1AF630914(v198, v273, v384);

        v385[0] = 1;
        *&v398 = v238;
        *(&v398 + 1) = v195;
        *&v399 = v273;
        *(&v399 + 1) = v192;
        *&v400 = (v190 - v191 + v192);
        *(&v400 + 1) = v254;
        *&v401 = v191;
        *(&v401 + 1) = v190;
        v402 = 0uLL;
        LOBYTE(v403) = 1;
        *(&v403 + 1) = v194;
        v404 = v193;
        v405 = v196;
        v33 = v188;
        sub_1AF705DE4(v195, &v398);
        v199 = sub_1AF70641C(v195, &v398);
        if (*(&v403 + 1))
        {
          for (k = v405; k; --k)
          {
            v201.i64[0] = vaddq_f32(*v199, *v199).u64[0];
            v201.f32[2] = COERCE_FLOAT(v199->i64[1]) + COERCE_FLOAT(v199->i64[1]);
            v201.i32[3] = 0;
            *v199++ = v201;
          }
        }

        else
        {
          v202 = *(&v401 + 1) - v401;
          if (*(&v401 + 1) != v401)
          {
            v203 = &v199[v401];
            do
            {
              v204.i64[0] = vaddq_f32(*v203, *v203).u64[0];
              v204.f32[2] = COERCE_FLOAT(v203->i64[1]) + COERCE_FLOAT(v203->i64[1]);
              v204.i32[3] = 0;
              *v203++ = v204;
              --v202;
            }

            while (v202);
          }
        }

        sub_1AF630994(v273, &v299, v384);
        sub_1AF62D29C(v195);
        ecs_stack_allocator_pop_snapshot(v260);
        if (v267)
        {
          os_unfair_lock_unlock(*(v195 + 344));
          os_unfair_lock_unlock(*(v195 + 376));
        }

        ++v187;
      }

      while (v187 != v248);
      v205 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, v205, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v317 = v230;
  v318 = v228;
  v319 = v229;
  v320 = 1;
  v321 = 2;
  v322 = 0;

  sub_1AFCC713C(1, 2, v285);

  v305[0] = v285[0];
  v305[1] = v285[1];
  v306 = v286;
  sub_1AF6B06C0(a1, v305, 0x200000000, v385);
  if (*v385)
  {
    v255 = v388;
    if (v388 <= 0)
    {
      v392 = *&v385[32];
      v393 = v386;
      v394 = v387;
      v395 = v388;
      v390 = *v385;
      v391 = *&v385[16];
      sub_1AF5DD298(&v390, v353);
      sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
      sub_1AFCB9FB8(v277, sub_1AFCBA31C);
      sub_1AFCB9FB8(v279, sub_1AFCBA398);
      sub_1AFCB9FB8(v281, sub_1AFCBA414);
      sub_1AFCB9FB8(v283, sub_1AFCBA490);
      sub_1AFCB9FB8(v285, sub_1AFCBA50C);
    }

    else
    {
      v249 = *(&v386 + 1);
      if (*(&v386 + 1))
      {
        v244 = *&v385[40];
        v239 = v387;
        v268 = *(v387 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v274 = *(&v387 + 1);
        v261 = *(*(&v387 + 1) + 32);
        v302 = *v385;
        v303 = *&v385[8];
        v304 = *&v385[24];
        v353[2] = *&v385[32];
        v353[3] = v386;
        v353[4] = v387;
        v353[5] = v388;
        v353[0] = *v385;
        v353[1] = *&v385[16];
        sub_1AF5DD298(v353, &v390);
        v206 = 0;
        do
        {
          v207 = v33;
          v208 = (v244 + 48 * v206);
          v209 = *v208;
          v210 = v208[1];
          v211 = v208[2];
          v213 = *(v208 + 2);
          v212 = *(v208 + 3);
          v215 = *(v208 + 4);
          v214 = *(v208 + 5);
          if (v268)
          {
            v216 = *(v214 + 376);

            os_unfair_lock_lock(v216);
            os_unfair_lock_lock(*(v214 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v261);

          sub_1AF630914(v217, v274, v389);

          *&v390 = v239;
          *(&v390 + 1) = v214;
          *&v391 = v274;
          *(&v391 + 1) = v211;
          *&v392 = (v210 - v209 + v211);
          *(&v392 + 1) = v255;
          *&v393 = v209;
          *(&v393 + 1) = v210;
          v394 = 0uLL;
          LOBYTE(v395) = 1;
          *(&v395 + 1) = v213;
          v396 = v212;
          v397 = v215;
          v33 = v207;
          sub_1AF705D28(v214, &v390);
          v218 = sub_1AF70641C(v214, &v390);
          if (*(&v395 + 1))
          {
            for (m = v397; m; --m)
            {
              v220.i64[0] = vaddq_f32(*v218, *v218).u64[0];
              v220.f32[2] = COERCE_FLOAT(v218->i64[1]) + COERCE_FLOAT(v218->i64[1]);
              v220.i32[3] = 0;
              *v218++ = v220;
            }
          }

          else
          {
            v221 = *(&v393 + 1) - v393;
            if (*(&v393 + 1) != v393)
            {
              v222 = &v218[v393];
              do
              {
                v223.i64[0] = vaddq_f32(*v222, *v222).u64[0];
                v223.f32[2] = COERCE_FLOAT(v222->i64[1]) + COERCE_FLOAT(v222->i64[1]);
                v223.i32[3] = 0;
                *v222++ = v223;
                --v221;
              }

              while (v221);
            }
          }

          sub_1AF630994(v274, &v302, v389);
          sub_1AF62D29C(v214);
          ecs_stack_allocator_pop_snapshot(v261);
          if (v268)
          {
            os_unfair_lock_unlock(*(v214 + 344));
            os_unfair_lock_unlock(*(v214 + 376));
          }

          ++v206;
        }

        while (v206 != v249);
      }

      else
      {
        v392 = *&v385[32];
        v393 = v386;
        v394 = v387;
        v395 = v388;
        v390 = *v385;
        v391 = *&v385[16];
        sub_1AF5DD298(&v390, v353);
      }

      sub_1AFCB9FB8(v285, sub_1AFCBA50C);
      sub_1AFCB9FB8(v283, sub_1AFCBA490);
      sub_1AFCB9FB8(v281, sub_1AFCBA414);
      sub_1AFCB9FB8(v279, sub_1AFCBA398);
      sub_1AFCB9FB8(v277, sub_1AFCBA31C);
      sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    }

    v225 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    return sub_1AFCB9F58(v385, &qword_1ED725EA0, &type metadata for QueryResult, v225, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    sub_1AFCB9FB8(v277, sub_1AFCBA31C);
    sub_1AFCB9FB8(v279, sub_1AFCBA398);
    sub_1AFCB9FB8(v281, sub_1AFCBA414);
    sub_1AFCB9FB8(v283, sub_1AFCBA490);
    return sub_1AFCB9FB8(v285, sub_1AFCBA50C);
  }
}

uint64_t sub_1AFCB2E74(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v34 = a2;
    swift_once();
    LODWORD(a2) = v34;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v57 = qword_1ED73B840;
  v58 = v4;
  v59 = v3 >> 31;
  v60 = 1;
  v61 = 2;
  v62 = 0;

  sub_1AF7051B8(2, v40);

  v53[0] = v40[0];
  v53[1] = v40[1];
  v54 = v41;
  sub_1AF6B06C0(a1, v53, 0x200000000, &v42);
  if (!v42)
  {
    return sub_1AFCBA0DC(v40, &qword_1EB632C40, &type metadata for ParticleSpawnDuration, &off_1F2567440);
  }

  if (v49 > 0)
  {
    v37 = v46;
    if (v46)
    {
      v5 = 0;
      v36 = v45;
      v6 = v48;
      v7 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v39 = *(v48 + 32);
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v35 = v7;
      while (1)
      {
        v8 = (v36 + 48 * v5);
        v9 = *v8;
        v38 = v8[1];
        v11 = *(v8 + 2);
        v10 = *(v8 + 3);
        v13 = *(v8 + 4);
        v12 = *(v8 + 5);
        if (v7)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v39);
        v15 = *(v6 + 64);
        v55[0] = *(v6 + 48);
        v55[1] = v15;
        v56 = *(v6 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v16, 8);
        *(v6 + 56) = v16;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;
        v17 = sub_1AF64B110(&type metadata for ParticleSpawnDuration, &off_1F2567440, v11, v10, v13, v6);
        if (!v11)
        {
          break;
        }

        v7 = v35;
        if (!v13)
        {
          goto LABEL_67;
        }

        if (v13 > 7)
        {
          v18 = v13 & 0xFFFFFFFFFFFFFFF8;
          v21 = (v17 + 16);
          v22 = v13 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v23 = vmovn_s32(vceqzq_f32(v21[-1]));
            if (v23.i8[0])
            {
              v21[-1].i32[0] = 2139095040;
              if ((v23.i8[2] & 1) == 0)
              {
LABEL_25:
                if ((v23.i8[4] & 1) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_35;
              }
            }

            else if ((v23.i8[2] & 1) == 0)
            {
              goto LABEL_25;
            }

            v21[-1].i32[1] = 2139095040;
            if ((v23.i8[4] & 1) == 0)
            {
LABEL_26:
              if ((v23.i8[6] & 1) == 0)
              {
                goto LABEL_28;
              }

LABEL_27:
              v21[-1].i32[3] = 2139095040;
              goto LABEL_28;
            }

LABEL_35:
            v21[-1].i32[2] = 2139095040;
            if (v23.i8[6])
            {
              goto LABEL_27;
            }

LABEL_28:
            v24 = vmovn_s32(vceqzq_f32(*v21));
            if (v24.i8[0])
            {
              v21->i32[0] = 2139095040;
              if ((v24.i8[2] & 1) == 0)
              {
LABEL_30:
                if ((v24.i8[4] & 1) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_39;
              }
            }

            else if ((v24.i8[2] & 1) == 0)
            {
              goto LABEL_30;
            }

            v21->i32[1] = 2139095040;
            if ((v24.i8[4] & 1) == 0)
            {
LABEL_31:
              if (v24.i8[6])
              {
                goto LABEL_40;
              }

              goto LABEL_22;
            }

LABEL_39:
            v21->i32[2] = 2139095040;
            if (v24.i8[6])
            {
LABEL_40:
              v21->i32[3] = 2139095040;
            }

LABEL_22:
            v21 += 2;
            v22 -= 8;
            if (!v22)
            {
              if (v13 != v18)
              {
                goto LABEL_42;
              }

              goto LABEL_67;
            }
          }
        }

        v18 = 0;
LABEL_42:
        v25 = v13 - v18;
        v26 = (v17 + 4 * v18);
        do
        {
          if (*v26 == 0.0)
          {
            *v26 = INFINITY;
          }

          ++v26;
          --v25;
        }

        while (v25);
LABEL_67:
        sub_1AF630994(v6, &v50, v55);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v39);
        if (v7)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        if (++v5 == v37)
        {
          goto LABEL_73;
        }
      }

      v7 = v35;
      if (v9 == v38)
      {
        goto LABEL_67;
      }

      v19 = v38 - v9;
      if ((v38 - v9) <= 7)
      {
        v20 = v9;
LABEL_69:
        v31 = v38 - v20;
        v32 = (v17 + 4 * v20);
        do
        {
          if (*v32 == 0.0)
          {
            *v32 = INFINITY;
          }

          ++v32;
          --v31;
        }

        while (v31);
        goto LABEL_67;
      }

      v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + v9;
      v27 = (v17 + 4 * v9 + 16);
      v28 = v19 & 0xFFFFFFFFFFFFFFF8;
      while (1)
      {
        v29 = vmovn_s32(vceqzq_f32(v27[-1]));
        if (v29.i8[0])
        {
          v27[-1].i32[0] = 2139095040;
          if ((v29.i8[2] & 1) == 0)
          {
LABEL_50:
            if ((v29.i8[4] & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_60;
          }
        }

        else if ((v29.i8[2] & 1) == 0)
        {
          goto LABEL_50;
        }

        v27[-1].i32[1] = 2139095040;
        if ((v29.i8[4] & 1) == 0)
        {
LABEL_51:
          if ((v29.i8[6] & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          v27[-1].i32[3] = 2139095040;
          goto LABEL_53;
        }

LABEL_60:
        v27[-1].i32[2] = 2139095040;
        if (v29.i8[6])
        {
          goto LABEL_52;
        }

LABEL_53:
        v30 = vmovn_s32(vceqzq_f32(*v27));
        if (v30.i8[0])
        {
          v27->i32[0] = 2139095040;
          if ((v30.i8[2] & 1) == 0)
          {
LABEL_55:
            if ((v30.i8[4] & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_64;
          }
        }

        else if ((v30.i8[2] & 1) == 0)
        {
          goto LABEL_55;
        }

        v27->i32[1] = 2139095040;
        if ((v30.i8[4] & 1) == 0)
        {
LABEL_56:
          if (v30.i8[6])
          {
            goto LABEL_65;
          }

          goto LABEL_47;
        }

LABEL_64:
        v27->i32[2] = 2139095040;
        if (v30.i8[6])
        {
LABEL_65:
          v27->i32[3] = 2139095040;
        }

LABEL_47:
        v27 += 2;
        v28 -= 8;
        if (!v28)
        {
          if (v19 == (v19 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }
      }
    }
  }

LABEL_73:
  sub_1AFCBA0DC(v40, &qword_1EB632C40, &type metadata for ParticleSpawnDuration, &off_1F2567440);
  return sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

uint64_t sub_1AFCB33E4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v31 = a2;
    swift_once();
    LODWORD(a2) = v31;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v51 = qword_1ED73B840;
  v52 = v4;
  v53 = v3 >> 31;
  v54 = 1;
  v55 = 2;
  v56 = 0;

  sub_1AF7051CC(2, v40);

  v49[0] = v40[0];
  v49[1] = v40[1];
  v50 = v41;
  sub_1AF6B06C0(a1, v49, 0x200000000, v42);
  if (!*v42)
  {
    return sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
  }

  if (v45 > 0 && (v33 = *(&v43 + 1)) != 0)
  {
    v32 = *&v42[40];
    v5 = *(&v44 + 1);
    v36 = *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v35 = *(*(&v44 + 1) + 32);
    v46 = *v42;
    v47 = *&v42[8];
    v48 = *&v42[24];
    v39[2] = *&v42[32];
    v39[3] = v43;
    v39[4] = v44;
    v39[5] = v45;
    v39[0] = *v42;
    v39[1] = *&v42[16];
    sub_1AF5DD298(v39, v37);
    v6 = 0;
    do
    {
      v7 = (v32 + 48 * v6);
      v8 = *v7;
      v34 = v7[1];
      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v12 = *(v7 + 4);
      v11 = *(v7 + 5);
      if (v36)
      {
        v13 = *(v11 + 376);

        os_unfair_lock_lock(v13);
        os_unfair_lock_lock(*(v11 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v35);
      v14 = *(v5 + 64);
      v37[0] = *(v5 + 48);
      v37[1] = v14;
      v38 = *(v5 + 80);
      v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
      *(v5 + 56) = v15;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v16 = sub_1AF64B110(&type metadata for EmitterShape, &off_1F254C2E8, v10, v9, v12, v5);
      if (v10)
      {
        if (v12)
        {
          v17 = v16 + 48;
          do
          {
            if (*(v17 + 16) >= 2u && !(*v17 ^ 1 | *(v17 + 8)))
            {
              *v17 = 0;
              *(v17 + 8) = 0;
              *(v17 + 16) = 2;
            }

            v18 = *(*(v11 + 40) + 16);
            v19 = *(v18 + 128);
            if (!*(v19 + 16) || (v20 = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v21 & 1) == 0) || *(*(v18 + 24) + 16 * *(*(v19 + 56) + 8 * v20) + 32) != &type metadata for LastFrameWorldTransform)
            {
              *(v17 + 49) = 0;
            }

            v17 += 224;
            --v12;
          }

          while (v12);
        }
      }

      else if (v8 != v34)
      {
        v22 = v34 - v8;
        v23 = v16 + 224 * v8 + 48;
        do
        {
          if (*(v23 + 16) >= 2u && !(*v23 ^ 1 | *(v23 + 8)))
          {
            *v23 = 0;
            *(v23 + 8) = 0;
            *(v23 + 16) = 2;
          }

          v24 = *(*(v11 + 40) + 16);
          v25 = *(v24 + 128);
          if (!*(v25 + 16) || (v26 = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v27 & 1) == 0) || *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for LastFrameWorldTransform)
          {
            *(v23 + 49) = 0;
          }

          v23 += 224;
          --v22;
        }

        while (v22);
      }

      sub_1AF630994(v5, &v46, v37);
      sub_1AF62D29C(v11);
      ecs_stack_allocator_pop_snapshot(v35);
      if (v36)
      {
        os_unfair_lock_unlock(*(v11 + 344));
        os_unfair_lock_unlock(*(v11 + 376));
      }

      ++v6;
    }

    while (v6 != v33);
    sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
    v30 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v28 = v30;
  }

  else
  {
    sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
    v28 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v42, &qword_1ED725EA0, &type metadata for QueryResult, v28, sub_1AFCBA88C);
}

uint64_t sub_1AFCB38FC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v13 = v2;
    swift_once();
    LODWORD(v2) = v13;
  }

  v6 = qword_1ED73B840;
  v324 = qword_1ED73B840;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  v325 = v7;
  v326 = v5 >> 31;
  v328 = 2;
  v327 = 1;
  v329 = 0;

  sub_1AF7051E0(1, v14);

  v159[0] = v14[0];
  v159[1] = v14[1];
  v160 = v15;
  sub_1AF6B06C0(v4, v159, 0x200000000, &v16);
  if (v16)
  {
    v320 = v19;
    v321 = v20;
    v322 = v21;
    v318 = v17;
    v319 = v18;
    v323 = v22;
    v317 = v16;
    sub_1AFD07598(&v317);
    sub_1AFCB9F58(&v16, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v311 = v6;
  v312 = v7;
  v313 = v5 >> 31;
  v315 = 2;
  v314 = 1;
  v316 = 0;

  sub_1AF70321C(3, v23);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = &type metadata for TextureRequireCPURepresentation;
  *(v8 + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(v8, v24);
  sub_1AFCBA0DC(v23, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v157[0] = v24[0];
  v157[1] = v24[1];
  v158 = v25;
  sub_1AF6B06C0(v4, v157, 0x200000000, &v26);
  if (v26)
  {
    v307 = v29;
    v308 = v30;
    v309 = v31;
    v305 = v27;
    v306 = v28;
    v310 = v32;
    v304 = v26;
    sub_1AFD07808(&v304);
    sub_1AFCB9F58(&v26, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v298 = v6;
  v299 = v7;
  v300 = v5 >> 31;
  v302 = 2;
  v301 = 1;
  v303 = 0;

  sub_1AF703230(3, v33);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = &type metadata for TextureRequireCPURepresentation;
  *(v9 + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(v9, v34);
  sub_1AFCBA0DC(v33, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v155[0] = v34[0];
  v155[1] = v34[1];
  v156 = v35;
  sub_1AF6B06C0(v4, v155, 0x200000000, &v36);
  if (v36)
  {
    v294 = v39;
    v295 = v40;
    v296 = v41;
    v292 = v37;
    v293 = v38;
    v297 = v42;
    v291 = v36;
    sub_1AFD07B1C(&v291);
    sub_1AFCB9F58(&v36, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v285 = v6;
  v286 = v7;
  v287 = v5 >> 31;
  v288 = 1;
  v289 = 2;
  v290 = 0;

  sub_1AF70326C(1, v43);

  v153[0] = v43[0];
  v153[1] = v43[1];
  v154 = v44;
  sub_1AF6B06C0(v4, v153, 0x200000000, &v45);
  if (v45)
  {
    v281 = v48;
    v282 = v49;
    v283 = v50;
    v279 = v46;
    v280 = v47;
    v284 = v51;
    v278 = v45;
    sub_1AFD07B94(&v278);
    sub_1AFCB9F58(&v45, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v272 = v6;
  v273 = v7;
  v274 = v5 >> 31;
  v275 = 1;
  v276 = 2;
  v277 = 0;

  sub_1AF70321C(3, v52);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v10 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v10, v53);
  sub_1AFCBA0DC(v52, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v151[0] = v53[0];
  v151[1] = v53[1];
  v152 = v54;
  sub_1AF6B06C0(v4, v151, 0x200000000, &v55);
  if (v55)
  {
    v268 = v58;
    v269 = v59;
    v270 = v60;
    v266 = v56;
    v267 = v57;
    v271 = v61;
    v265 = v55;
    sub_1AFD07AE0(&v265);
    sub_1AFCB9F58(&v55, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v259 = v6;
  v260 = v7;
  v261 = v5 >> 31;
  v262 = 1;
  v263 = 2;
  v264 = 0;

  sub_1AF703230(3, v62);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v11 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v11, v63);
  sub_1AFCBA0DC(v62, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v149[0] = v63[0];
  v149[1] = v63[1];
  v150 = v64;
  sub_1AF6B06C0(v4, v149, 0x200000000, &v65);
  if (v65)
  {
    v255 = v68;
    v256 = v69;
    v257 = v70;
    v253 = v66;
    v254 = v67;
    v258 = v71;
    v252 = v65;
    sub_1AFD07B58(&v252);
    sub_1AFCB9F58(&v65, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v246 = v6;
  v247 = v7;
  v248 = v5 >> 31;
  v249 = 1;
  v250 = 2;
  v251 = 0;

  sub_1AF7051F4(1, v72);

  v147[0] = v72[0];
  v147[1] = v72[1];
  v148 = v73;
  sub_1AF6B06C0(v4, v147, 0x200000000, &v74);
  if (v74)
  {
    v242 = v77;
    v243 = v78;
    v244 = v79;
    v240 = v75;
    v241 = v76;
    v245 = v80;
    v239 = v74;
    sub_1AFD07BBC(&v239);
    sub_1AFCB9F58(&v74, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v233 = v6;
  v234 = v7;
  v235 = v5 >> 31;
  v236 = 1;
  v237 = 2;
  v238 = 0;

  sub_1AF705208(1, v81);

  v145[0] = v81[0];
  v145[1] = v81[1];
  v146 = v82;
  sub_1AF6B06C0(v4, v145, 0x200000000, &v83);
  if (v83)
  {
    v229 = v86;
    v230 = v87;
    v231 = v88;
    v227 = v84;
    v228 = v85;
    v232 = v89;
    v226 = v83;
    sub_1AFD07BE4(&v226);
    sub_1AFCB9F58(&v83, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v220 = v6;
  v221 = v7;
  v222 = v5 >> 31;
  v223 = 1;
  v224 = 2;
  v225 = 0;

  sub_1AF70521C(1, v90);

  v143[0] = v90[0];
  v143[1] = v90[1];
  v144 = v91;
  sub_1AF6B06C0(v4, v143, 0x200000000, &v92);
  if (v92)
  {
    v216 = v95;
    v217 = v96;
    v218 = v97;
    v214 = v93;
    v215 = v94;
    v219 = v98;
    v213 = v92;
    sub_1AFD07C0C(&v213);
    sub_1AFCB9F58(&v92, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v207 = v6;
  v208 = v7;
  v209 = v5 >> 31;
  v210 = 1;
  v211 = 2;
  v212 = 0;

  sub_1AF705230(1, v99);

  v141[0] = v99[0];
  v141[1] = v99[1];
  v142 = v100;
  sub_1AF6B06C0(v4, v141, 0x200000000, &v101);
  if (v101)
  {
    v203 = v104;
    v204 = v105;
    v205 = v106;
    v201 = v102;
    v202 = v103;
    v206 = v107;
    v200 = v101;
    sub_1AFD07C34(&v200);
    sub_1AFCB9F58(&v101, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v194 = v6;
  v195 = v7;
  v196 = v5 >> 31;
  v197 = 1;
  v198 = 2;
  v199 = 0;

  sub_1AF705244(1, v108);

  v139[0] = v108[0];
  v139[1] = v108[1];
  v140 = v109;
  sub_1AF6B06C0(v4, v139, 0x200000000, &v110);
  if (v110)
  {
    v190 = v113;
    v191 = v114;
    v192 = v115;
    v188 = v111;
    v189 = v112;
    v193 = v116;
    v187 = v110;
    sub_1AFD07C5C(&v187);
    sub_1AFCB9F58(&v110, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v181 = v6;
  v182 = v7;
  v183 = v5 >> 31;
  v184 = 1;
  v185 = 2;
  v186 = 0;

  sub_1AF705258(1, v117);

  v137[0] = v117[0];
  v137[1] = v117[1];
  v138 = v118;
  sub_1AF6B06C0(v4, v137, 0x200000000, &v119);
  if (v119)
  {
    v177 = v122;
    v178 = v123;
    v179 = v124;
    v175 = v120;
    v176 = v121;
    v180 = v125;
    v174 = v119;
    sub_1AFD07C84(&v174);
    sub_1AFCB9F58(&v119, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v168 = v6;
  v169 = v7;
  v170 = v5 >> 31;
  v171 = 1;
  v172 = 2;
  v173 = 0;

  sub_1AF70526C(1, v126);

  v135[0] = v126[0];
  v135[1] = v126[1];
  v136 = v127;
  sub_1AF6B06C0(v4, v135, 0x200000000, &v128);
  if (v128)
  {
    v164 = v131;
    v165 = v132;
    v166 = v133;
    v162 = v129;
    v163 = v130;
    v167 = v134;
    v161 = v128;
    sub_1AFD07CAC(&v161);
    sub_1AFCBA0DC(v126, &qword_1EB632C20, &type metadata for TextureRequireIOSurface, &off_1F2546278);
    sub_1AFCBA0DC(v117, &qword_1EB632BF8, &type metadata for TextureRequirePremultiplyWithLinearAlpha, &off_1F2546258);
    sub_1AFCBA0DC(v108, &qword_1EB632C10, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238);
    sub_1AFCBA0DC(v99, &qword_1EB632C48, &type metadata for TextureRequireMipmap, &off_1F2546458);
    sub_1AFCBA0DC(v90, &qword_1EB632C30, &type metadata for TextureRequireCubemap, &off_1F2546218);
    sub_1AFCBA0DC(v81, &qword_1EB632C18, &type metadata for TextureRequireUnpremultiply, &off_1F25461F8);
    sub_1AFCBA0DC(v72, &qword_1EB632C28, &type metadata for TextureRequireNonSRGB, &off_1F25461D8);
    sub_1AFCBA0DC(v63, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v53, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v43, &qword_1EB632C00, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0);
    sub_1AFCBA0DC(v34, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v24, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v14, &qword_1EB632C08, &type metadata for TextureRequireCPURepresentation, &off_1F2544440);
    return sub_1AFCB9F58(&v128, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v126, &qword_1EB632C20, &type metadata for TextureRequireIOSurface, &off_1F2546278);
    sub_1AFCBA0DC(v117, &qword_1EB632BF8, &type metadata for TextureRequirePremultiplyWithLinearAlpha, &off_1F2546258);
    sub_1AFCBA0DC(v108, &qword_1EB632C10, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238);
    sub_1AFCBA0DC(v99, &qword_1EB632C48, &type metadata for TextureRequireMipmap, &off_1F2546458);
    sub_1AFCBA0DC(v90, &qword_1EB632C30, &type metadata for TextureRequireCubemap, &off_1F2546218);
    sub_1AFCBA0DC(v81, &qword_1EB632C18, &type metadata for TextureRequireUnpremultiply, &off_1F25461F8);
    sub_1AFCBA0DC(v72, &qword_1EB632C28, &type metadata for TextureRequireNonSRGB, &off_1F25461D8);
    sub_1AFCBA0DC(v63, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v53, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v43, &qword_1EB632C00, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0);
    sub_1AFCBA0DC(v34, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v24, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    return sub_1AFCBA0DC(v14, &qword_1EB632C08, &type metadata for TextureRequireCPURepresentation, &off_1F2544440);
  }
}

uint64_t sub_1AFCB4B60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v185 = result;
  if (*(result + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1 && a3 >= 2024)
  {
    v3 = a2;
    v4 = a2 & 0x100000000;
    sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
    v5 = swift_allocObject();
    v5[4] = &type metadata for ParticlePlaneCollider;
    v173 = v5 + 4;
    v5[5] = &off_1F25530C8;
    v5[6] = &type metadata for ParticleSphereCollider;
    v5[7] = &off_1F2553488;
    v5[8] = &type metadata for ParticleBoxCollider;
    v5[9] = &off_1F2552898;
    v5[10] = &type metadata for ParticleCylinderCollider;
    v5[11] = &off_1F2552A70;
    v5[12] = &type metadata for ParticleSDFCollider;
    v5[13] = &off_1F25532A8;
    v5[14] = &type metadata for ParticleMeshCollider;
    v5[15] = &off_1F2552EB8;
    v5[16] = &type metadata for EmitterDescription;
    v5[17] = &off_1F2563648;
    v5[18] = &type metadata for KillShape;
    v5[19] = &off_1F2561EB0;
    v5[20] = &type metadata for ForceField;
    v5[21] = &off_1F2560F10;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    v184 = v6;
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
    v7 = 0;
    v8 = 0;
    v183 = v4 >> 31;
    do
    {
      v174 = v7;
      v9 = &v173[2 * v7];
      v11 = *v9;
      v10 = v9[1];
      v12 = qword_1ED73B840;
      v284 = qword_1ED73B840;
      v285 = v184;
      v286 = v183;
      v287 = 1;
      v288 = 2;
      v289 = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AFE4C620;
      v14 = *(v10 + 8);
      v180 = v11;
      *(v13 + 32) = v11;
      *(v13 + 40) = v14;
      v179 = v14;
      *(v13 + 48) = &type metadata for Position;
      *(v13 + 56) = &off_1F252EDF0;

      sub_1AFC8E240(v13, v235);
      v182 = v12;

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(v185, v235, 0x200000000, v236);
      if (*&v236[0])
      {
        if (v239 >= 1 && v238)
        {
          v15 = v237;
          v16 = v237 + 48 * v238;
          v175 = v16;
          do
          {
            v17 = *(v15 + 40);
            v18 = *(v17 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v17 + 344));
            v19 = *(v17 + 24);

            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v20 = sub_1AF65A4B4(v19, 0, 0, &type metadata for Position, &off_1F252EE70, &v225, &v232);

            sub_1AFCB9FB8(&v232, sub_1AF5C4448);
            sub_1AFCB9FB8(&v225, sub_1AF5C4448);
            if (sub_1AF649CEC())
            {
              sub_1AF649D40(v20);
            }

            else
            {
              v195 = v15;
              v21 = *(v17 + 232);
              v22 = *(v17 + 240);
              v190 = *(v17 + 120);
              v220 = *(v17 + 28);
              v219 = *(v17 + 32);
              v23 = *(v17 + 16);
              v24 = *(v17 + 40);
              v25 = *(v24 + 200);
              v215 = *(*(v23 + 88) + 8 * v20 + 32);

              if ((v25 & 1) != 0 || *(v215 + 200) == 1)
              {
                *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v24 = *(v17 + 40);
              }

              v26 = *(v17 + 256);
              sub_1AF5B4FCC(v24, v21, v22, 0, v17);
              v200 = *(v17 + 256);
              v201 = v26;
              v27 = v200 - v26;
              if (v200 == v26)
              {
                v28 = 0;
              }

              else
              {
                v28 = v26;
              }

              *&v232 = v28;
              v29 = *(*(v17 + 40) + 24);
              v30 = *(v29 + 16);
              if (v30)
              {
                v210 = v8;
                v31 = v29 + 32;

                for (i = 0; i != v30; ++i)
                {
                  v33 = v31 + 40 * i;
                  if ((*(v33 + 32) & 1) == 0)
                  {
                    v34 = *(v215 + 24);
                    v35 = *(v34 + 16);
                    if (v35)
                    {
                      v36 = (v34 + 32);
                      while (*v36 != *v33)
                      {
                        v36 += 5;
                        if (!--v35)
                        {
                          goto LABEL_26;
                        }
                      }
                    }

                    else
                    {
LABEL_26:
                      sub_1AF640BC8();
                    }
                  }
                }

                v8 = v210;
              }

              if (*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v17 + 72) * v27);
              }

              if (*(v17 + 184))
              {
                v37 = 0;
              }

              else
              {
                v37 = *(v17 + 168);
              }

              v231 = 0;

              MEMORY[0x1EEE9AC00](v38, v39);
              v40 = v220;
              v41 = v219;
              DWORD2(v226) = -1;
              v227 = v201;
              v228 = v200;
              v229 = v201;
              v230 = v200;
              *&v225 = v201;
              *(&v225 + 1) = v200;
              *&v226 = v37;
              if (v27 < 1)
              {

                v15 = v195;
              }

              else
              {
                v15 = v195;
                do
                {
                  sub_1AF6248A8(v20, v40 | (v41 << 32), v190, v23, &v225, sub_1AF5C5E08);
                  v41 = v219;
                  v40 = v220;
                }

                while ((*(&v225 + 1) - v225) > 0);
              }

              v42 = *(v17 + 192);
              v16 = v175;
              if (v42)
              {
                v43 = *(v17 + 208);
                sub_1AF75D364(v201, v200, v42);
                sub_1AF75D364(v201, v200, v43);
              }
            }

            v15 += 48;
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          while (v15 != v16);
        }

        sub_1AFCB9F58(v236, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v278 = v182;
      v279 = v184;
      v280 = v183;
      v281 = 1;
      v282 = 2;
      v283 = 0;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1AFE4C620;
      *(v44 + 32) = v180;
      *(v44 + 40) = v179;
      *(v44 + 48) = &type metadata for Orientation;
      *(v44 + 56) = &off_1F252C828;

      sub_1AFC8E240(v44, v240);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(v185, v240, 0x200000000, v241);
      if (*&v241[0])
      {
        if (v244 >= 1 && v243)
        {
          v45 = v242;
          v46 = v242 + 48 * v243;
          v176 = v46;
          do
          {
            v47 = *(v45 + 40);
            v48 = *(v47 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v48);
            os_unfair_lock_lock(*(v47 + 344));
            v49 = *(v47 + 24);

            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v50 = sub_1AF65A4B4(v49, 0, 0, &type metadata for Orientation, &off_1F252C8A8, &v225, &v232);

            sub_1AFCB9FB8(&v232, sub_1AF5C4448);
            sub_1AFCB9FB8(&v225, sub_1AF5C4448);
            if (sub_1AF649CEC())
            {
              sub_1AF649D40(v50);
            }

            else
            {
              v196 = v45;
              v51 = *(v47 + 232);
              v52 = *(v47 + 240);
              v186 = *(v47 + 120);
              v216 = *(v47 + 28);
              v53 = *(v47 + 32);
              v54 = *(v47 + 16);
              v55 = *(v47 + 40);
              v56 = *(v55 + 200);
              v221 = *(*(v54 + 88) + 8 * v50 + 32);

              if ((v56 & 1) != 0 || *(v221 + 200) == 1)
              {
                *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v55 = *(v47 + 40);
              }

              v191 = v53;
              v57 = v8;
              v58 = v216;
              v59 = *(v47 + 256);
              sub_1AF5B4FCC(v55, v51, v52, 0, v47);
              v202 = *(v47 + 256);
              v206 = v59;
              v60 = v202 - v59;
              if (v202 == v59)
              {
                v61 = 0;
              }

              else
              {
                v61 = v59;
              }

              *&v232 = v61;
              v62 = *(*(v47 + 40) + 24);
              v63 = *(v62 + 16);
              v211 = v57;
              if (v63)
              {
                v64 = v62 + 32;

                v65 = 0;
                v66 = v60;
                do
                {
                  v67 = v64 + 40 * v65;
                  if ((*(v67 + 32) & 1) == 0)
                  {
                    v68 = *(v221 + 24);
                    v69 = *(v68 + 16);
                    if (v69)
                    {
                      v70 = (v68 + 32);
                      while (*v70 != *v67)
                      {
                        v70 += 5;
                        if (!--v69)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    else
                    {
LABEL_64:
                      sub_1AF640BC8();
                    }
                  }

                  ++v65;
                }

                while (v65 != v63);

                v58 = v216;
              }

              else
              {
                v66 = v202 - v59;
              }

              if (*(v54 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v47 + 72) * v66);
              }

              v71 = v66;
              if (*(v47 + 184))
              {
                v72 = 0;
              }

              else
              {
                v72 = *(v47 + 168);
              }

              v231 = 0;

              MEMORY[0x1EEE9AC00](v73, v74);
              *(&v225 + 1) = v202;
              *&v226 = v72;
              DWORD2(v226) = -1;
              v227 = v206;
              v228 = v202;
              v229 = v206;
              v230 = v202;
              *&v225 = v206;
              if (v71 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v50, v58 | (v191 << 32), v186, v54, &v225, sub_1AF5C5E08);
                }

                while ((*(&v225 + 1) - v225) > 0);
              }

              v8 = v211;
              v75 = *(v47 + 192);
              v45 = v196;
              v46 = v176;
              if (v75)
              {
                v76 = *(v47 + 208);
                sub_1AF75D364(v206, v202, v75);
                sub_1AF75D364(v206, v202, v76);
              }
            }

            v45 += 48;
            os_unfair_lock_unlock(*(v47 + 344));
            os_unfair_lock_unlock(*(v47 + 376));
          }

          while (v45 != v46);
        }

        sub_1AFCB9F58(v241, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v272 = v182;
      v273 = v184;
      v274 = v183;
      v275 = 1;
      v276 = 2;
      v277 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1AFE4C620;
      *(v77 + 32) = v180;
      *(v77 + 40) = v179;
      *(v77 + 48) = &type metadata for Scale3;
      *(v77 + 56) = &off_1F252F918;

      sub_1AFC8E240(v77, v245);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(v185, v245, 0x200000000, v246);
      if (*&v246[0])
      {
        if (v249 >= 1 && v248)
        {
          v78 = v247;
          v79 = v247 + 48 * v248;
          v177 = v79;
          do
          {
            v80 = *(v78 + 40);
            v81 = *(v80 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v81);
            os_unfair_lock_lock(*(v80 + 344));
            v82 = *(v80 + 24);

            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v83 = sub_1AF65A4B4(v82, 0, 0, &type metadata for Scale3, &off_1F252F998, &v225, &v232);

            sub_1AFCB9FB8(&v232, sub_1AF5C4448);
            sub_1AFCB9FB8(&v225, sub_1AF5C4448);
            if (sub_1AF649CEC())
            {
              sub_1AF649D40(v83);
            }

            else
            {
              v197 = v78;
              v84 = *(v80 + 232);
              v85 = *(v80 + 240);
              v187 = *(v80 + 120);
              v217 = *(v80 + 28);
              v86 = *(v80 + 32);
              v87 = *(v80 + 16);
              v88 = *(v80 + 40);
              v89 = *(v88 + 200);
              v222 = *(*(v87 + 88) + 8 * v83 + 32);

              if ((v89 & 1) != 0 || *(v222 + 200) == 1)
              {
                *(v87 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v88 = *(v80 + 40);
              }

              v192 = v86;
              v90 = v8;
              v91 = v217;
              v92 = *(v80 + 256);
              sub_1AF5B4FCC(v88, v84, v85, 0, v80);
              v203 = *(v80 + 256);
              v207 = v92;
              v93 = v203 - v92;
              if (v203 == v92)
              {
                v94 = 0;
              }

              else
              {
                v94 = v92;
              }

              *&v232 = v94;
              v95 = *(*(v80 + 40) + 24);
              v96 = *(v95 + 16);
              v212 = v90;
              if (v96)
              {
                v97 = v95 + 32;

                v98 = 0;
                v99 = v93;
                do
                {
                  v100 = v97 + 40 * v98;
                  if ((*(v100 + 32) & 1) == 0)
                  {
                    v101 = *(v222 + 24);
                    v102 = *(v101 + 16);
                    if (v102)
                    {
                      v103 = (v101 + 32);
                      while (*v103 != *v100)
                      {
                        v103 += 5;
                        if (!--v102)
                        {
                          goto LABEL_100;
                        }
                      }
                    }

                    else
                    {
LABEL_100:
                      sub_1AF640BC8();
                    }
                  }

                  ++v98;
                }

                while (v98 != v96);

                v91 = v217;
              }

              else
              {
                v99 = v203 - v92;
              }

              if (*(v87 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v87 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v80 + 72) * v99);
              }

              v104 = v99;
              if (*(v80 + 184))
              {
                v105 = 0;
              }

              else
              {
                v105 = *(v80 + 168);
              }

              v231 = 0;

              MEMORY[0x1EEE9AC00](v106, v107);
              *(&v225 + 1) = v203;
              *&v226 = v105;
              DWORD2(v226) = -1;
              v227 = v207;
              v228 = v203;
              v229 = v207;
              v230 = v203;
              *&v225 = v207;
              if (v104 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v83, v91 | (v192 << 32), v187, v87, &v225, sub_1AF5C5E08);
                }

                while ((*(&v225 + 1) - v225) > 0);
              }

              v8 = v212;
              v108 = *(v80 + 192);
              v78 = v197;
              v79 = v177;
              if (v108)
              {
                v109 = *(v80 + 208);
                sub_1AF75D364(v207, v203, v108);
                sub_1AF75D364(v207, v203, v109);
              }
            }

            v78 += 48;
            os_unfair_lock_unlock(*(v80 + 344));
            os_unfair_lock_unlock(*(v80 + 376));
          }

          while (v78 != v79);
        }

        sub_1AFCB9F58(v246, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v266 = v182;
      v267 = v184;
      v268 = v183;
      v269 = 1;
      v270 = 2;
      v271 = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1AFE4C620;
      *(v110 + 32) = v180;
      *(v110 + 40) = v179;
      *(v110 + 48) = &type metadata for Scale2;
      *(v110 + 56) = &off_1F252F7B8;

      sub_1AFC8E240(v110, v250);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(v185, v250, 0x200000000, v251);
      if (*&v251[0])
      {
        if (v254 >= 1 && v253)
        {
          v111 = v252;
          v112 = v252 + 48 * v253;
          v178 = v112;
          do
          {
            v113 = *(v111 + 40);
            v114 = *(v113 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v114);
            os_unfair_lock_lock(*(v113 + 344));
            v115 = *(v113 + 24);

            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v116 = sub_1AF65A4B4(v115, 0, 0, &type metadata for Scale2, &off_1F252F838, &v225, &v232);

            sub_1AFCB9FB8(&v232, sub_1AF5C4448);
            sub_1AFCB9FB8(&v225, sub_1AF5C4448);
            if (sub_1AF649CEC())
            {
              sub_1AF649D40(v116);
            }

            else
            {
              v198 = v111;
              v117 = *(v113 + 232);
              v118 = *(v113 + 240);
              v188 = *(v113 + 120);
              v218 = *(v113 + 28);
              v119 = *(v113 + 32);
              v120 = *(v113 + 16);
              v121 = *(v113 + 40);
              v122 = *(v121 + 200);
              v223 = *(*(v120 + 88) + 8 * v116 + 32);

              if ((v122 & 1) != 0 || *(v223 + 200) == 1)
              {
                *(v120 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v121 = *(v113 + 40);
              }

              v193 = v119;
              v123 = v8;
              v124 = v218;
              v125 = *(v113 + 256);
              sub_1AF5B4FCC(v121, v117, v118, 0, v113);
              v204 = *(v113 + 256);
              v208 = v125;
              v126 = v204 - v125;
              if (v204 == v125)
              {
                v127 = 0;
              }

              else
              {
                v127 = v125;
              }

              *&v232 = v127;
              v128 = *(*(v113 + 40) + 24);
              v129 = *(v128 + 16);
              v213 = v123;
              if (v129)
              {
                v130 = v128 + 32;

                v131 = 0;
                v132 = v126;
                do
                {
                  v133 = v130 + 40 * v131;
                  if ((*(v133 + 32) & 1) == 0)
                  {
                    v134 = *(v223 + 24);
                    v135 = *(v134 + 16);
                    if (v135)
                    {
                      v136 = (v134 + 32);
                      while (*v136 != *v133)
                      {
                        v136 += 5;
                        if (!--v135)
                        {
                          goto LABEL_136;
                        }
                      }
                    }

                    else
                    {
LABEL_136:
                      sub_1AF640BC8();
                    }
                  }

                  ++v131;
                }

                while (v131 != v129);

                v124 = v218;
              }

              else
              {
                v132 = v204 - v125;
              }

              if (*(v120 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v120 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v113 + 72) * v132);
              }

              v137 = v132;
              if (*(v113 + 184))
              {
                v138 = 0;
              }

              else
              {
                v138 = *(v113 + 168);
              }

              v231 = 0;

              MEMORY[0x1EEE9AC00](v139, v140);
              *(&v225 + 1) = v204;
              *&v226 = v138;
              DWORD2(v226) = -1;
              v227 = v208;
              v228 = v204;
              v229 = v208;
              v230 = v204;
              *&v225 = v208;
              if (v137 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v116, v124 | (v193 << 32), v188, v120, &v225, sub_1AF5C5E08);
                }

                while ((*(&v225 + 1) - v225) > 0);
              }

              v8 = v213;
              v141 = *(v113 + 192);
              v111 = v198;
              v112 = v178;
              if (v141)
              {
                v142 = *(v113 + 208);
                sub_1AF75D364(v208, v204, v141);
                sub_1AF75D364(v208, v204, v142);
              }
            }

            v111 += 48;
            os_unfair_lock_unlock(*(v113 + 344));
            os_unfair_lock_unlock(*(v113 + 376));
          }

          while (v111 != v112);
        }

        sub_1AFCB9F58(v251, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v260 = v182;
      v261 = v184;
      v262 = v183;
      v263 = 1;
      v264 = 2;
      v265 = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_1AFE4C620;
      *(v143 + 32) = v180;
      *(v143 + 40) = v179;
      *(v143 + 48) = &type metadata for Scale1;
      *(v143 + 56) = &off_1F252F708;

      sub_1AFC8E240(v143, v255);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(v185, v255, 0x200000000, v256);
      if (*&v256[0])
      {
        if (v259 >= 1 && v258)
        {
          v214 = v8;
          v144 = v257;
          v145 = v257 + 48 * v258;
          v181 = v145;
          do
          {
            v146 = *(v144 + 40);
            v147 = *(v146 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v147);
            os_unfair_lock_lock(*(v146 + 344));
            v148 = *(v146 + 24);

            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v149 = sub_1AF65A4B4(v148, 0, 0, &type metadata for Scale1, &off_1F252F788, &v225, &v232);

            sub_1AFCB9FB8(&v232, sub_1AF5C4448);
            sub_1AFCB9FB8(&v225, sub_1AF5C4448);
            if (sub_1AF649CEC())
            {
              sub_1AF649D40(v149);
            }

            else
            {
              v199 = v144;
              v150 = *(v146 + 232);
              v151 = *(v146 + 240);
              v189 = *(v146 + 120);
              v209 = *(v146 + 28);
              v152 = *(v146 + 32);
              v153 = *(v146 + 16);
              v154 = *(v146 + 40);
              v155 = *(v154 + 200);
              v224 = *(*(v153 + 88) + 8 * v149 + 32);

              if ((v155 & 1) != 0 || *(v224 + 200) == 1)
              {
                *(v153 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v154 = *(v146 + 40);
              }

              v156 = *(v146 + 256);
              v157 = v209;
              sub_1AF5B4FCC(v154, v150, v151, 0, v146);
              v194 = *(v146 + 256);
              v158 = v194 - v156;
              v205 = v156;
              if (v194 == v156)
              {
                v159 = 0;
              }

              else
              {
                v159 = v156;
              }

              *&v232 = v159;
              v160 = *(*(v146 + 40) + 24);
              v161 = *(v160 + 16);
              if (v161)
              {
                v162 = v160 + 32;

                for (j = 0; j != v161; ++j)
                {
                  v164 = v162 + 40 * j;
                  if ((*(v164 + 32) & 1) == 0)
                  {
                    v165 = *(v224 + 24);
                    v166 = *(v165 + 16);
                    if (v166)
                    {
                      v167 = (v165 + 32);
                      while (*v167 != *v164)
                      {
                        v167 += 5;
                        if (!--v166)
                        {
                          goto LABEL_172;
                        }
                      }
                    }

                    else
                    {
LABEL_172:
                      sub_1AF640BC8();
                    }
                  }
                }

                v157 = v209;
              }

              if (*(v153 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v153 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v146 + 72) * v158);
              }

              if (*(v146 + 184))
              {
                v168 = 0;
              }

              else
              {
                v168 = *(v146 + 168);
              }

              v231 = 0;

              MEMORY[0x1EEE9AC00](v169, v170);
              *(&v225 + 1) = v194;
              *&v226 = v168;
              DWORD2(v226) = -1;
              v227 = v205;
              v228 = v194;
              v229 = v205;
              v230 = v194;
              *&v225 = v205;
              if (v158 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v149, v157 | (v152 << 32), v189, v153, &v225, sub_1AF5C5E08);
                }

                while ((*(&v225 + 1) - v225) > 0);
              }

              v171 = *(v146 + 192);
              v144 = v199;
              v145 = v181;
              if (v171)
              {
                v172 = *(v146 + 208);
                sub_1AF75D364(v205, v194, v171);
                sub_1AF75D364(v205, v194, v172);
              }
            }

            v144 += 48;
            os_unfair_lock_unlock(*(v146 + 344));
            os_unfair_lock_unlock(*(v146 + 376));
          }

          while (v144 != v145);
          sub_1AF692DB0(v255);
          sub_1AF692DB0(v250);
          sub_1AF692DB0(v245);
          sub_1AF692DB0(v240);
          sub_1AF692DB0(v235);
          sub_1AFCB9F58(v256, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v8 = v214;
        }

        else
        {
          sub_1AF692DB0(v255);
          sub_1AF692DB0(v250);
          sub_1AF692DB0(v245);
          sub_1AF692DB0(v240);
          sub_1AF692DB0(v235);
          sub_1AFCB9F58(v256, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        }
      }

      else
      {
        sub_1AF692DB0(v255);
        sub_1AF692DB0(v250);
        sub_1AF692DB0(v245);
        sub_1AF692DB0(v240);
        sub_1AF692DB0(v235);
      }

      v7 = v174 + 1;
    }

    while (v174 != 8);
    swift_setDeallocating();
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_1AFCB686C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v7 = a2;
    swift_once();
    LODWORD(a2) = v7;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v23 = qword_1ED73B840;
  v24 = v4;
  v25 = v3 >> 31;
  v26 = 1;
  v27 = 2;
  v28 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for Authoring;
  *(inited + 40) = &off_1F2562C70;
  *(inited + 48) = &type metadata for OrthographicCamera;
  *(inited + 56) = &off_1F2511C70;

  sub_1AFC8E240(inited, v8);

  swift_setDeallocating();
  sub_1AF6B06C0(a1, v8, 0x200000000, &v9);
  if (!v9)
  {
    return sub_1AF692DB0(v8);
  }

  v19 = v12;
  v20 = v13;
  v21 = v14;
  v16 = v9;
  v22 = v15;
  v17 = v10;
  v18 = v11;
  sub_1AF6B8EAC(0);
  sub_1AF692DB0(v8);
  return sub_1AFCB9F58(&v9, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

void *sub_1AFCB6A68(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v10 = result;
    v11 = [result assetRegistry];
    v12 = [v11 rootNode];

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = 0;
    *&aBlock[32] = a4;
    *&aBlock[40] = v13;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1AF92EF7C;
    *&aBlock[24] = a5;
    v14 = _Block_copy(aBlock);

    [v12 enumerateHierarchyUsingBlock_];

    _Block_release(v14);
    swift_isEscapingClosureAtFileLocation();

    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v105 = qword_1ED73B840;
    v106 = 0;
    v107 = 2;
    v108 = 0;
    v109 = 2;
    v110 = 0;
    sub_1AF705058(1, &v90);
    v99 = v90;
    v100 = v91;
    v101 = v92;
    v102 = v93 | 1;
    v103 = v94;
    v104 = v95;
    v15 = [v10 scene];
    v16 = *&v15[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

    sub_1AF6B06C0(v16, &v99, 0x200000000, aBlock);
    v116 = *&aBlock[32];
    v117 = v121;
    v118 = v122;
    v119 = v123;
    v114 = *aBlock;
    v115 = *&aBlock[16];

    v79 = *aBlock;
    if (!*aBlock)
    {
      return sub_1AFCBA0DC(&v90, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
    }

    v78 = *&aBlock[40];
    v17 = *(&v121 + 1);
    v18 = *(&v122 + 1);
    v124 = *&aBlock[8];
    v125 = *&aBlock[24];
    if (v123 <= 0 || !*(&v121 + 1))
    {
      sub_1AFCBA0DC(&v90, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
      v73 = MEMORY[0x1E69E6720];
      return sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, v73, sub_1AFCBA88C);
    }

    v82 = *(*(&v122 + 1) + 32);
    v19 = *(v122 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v113[2] = v116;
    v113[3] = v117;
    v113[4] = v118;
    v113[5] = v119;
    v113[0] = v114;
    v113[1] = v115;
    sub_1AF5DD298(v113, v111);
    v20 = 0;
    v76 = v18;
    v77 = v17;
    v75 = v19;
    while (1)
    {
      v81 = v20;
      v21 = (v78 + 48 * v20);
      v22 = *v21;
      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = *(v21 + 5);
      v83 = v21[1];
      v84 = *(v21 + 4);
      if (v19)
      {
        v26 = *(v25 + 376);

        os_unfair_lock_lock(v26);
        os_unfair_lock_lock(*(v25 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v82);
      v27 = *(v18 + 4);
      v111[0] = *(v18 + 3);
      v111[1] = v27;
      v112 = v18[10];
      v28 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
      v18[6] = ecs_stack_allocator_allocate(v18[4], 48 * v28, 8);
      v18[7] = v28;
      v18[9] = 0;
      v18[10] = 0;
      v18[8] = 0;
      v80 = v25;
      v85 = sub_1AF64B110(&type metadata for GraphComponent, &off_1F2547EF8, v24, v23, v84, v18);
      if (v24)
      {
        if (v84)
        {
          v29 = 0;
          while (1)
          {
            v30 = *(v85 + 8 * v29);
            v31 = MEMORY[0x1E69E7CC0];
            v88 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            v89 = v32;
            v33 = (v30 + 24);
            v34 = *(v30 + 24);
            v35 = sub_1AF42B2DC(v31);
            v86 = v31;
            v87 = v35;
            if (v34 >> 62)
            {
              v36 = sub_1AFDFE108();
            }

            else
            {
              v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_bridgeObjectRetain_n();

            if (v36)
            {
              for (i = 0; i != v36; ++i)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x1B2719C70](i, v34);
                }

                else
                {
                  v38 = *(v34 + 8 * i + 32);
                }

                sub_1AF418138(v38, v30, 1, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0], a6, 0, &v87, &v88, &v86);
              }
            }

            if (v86 >> 62)
            {
              if (sub_1AFDFE108())
              {
LABEL_28:
                v39 = v86;
                if (v86 >> 62)
                {
                  v40 = sub_1AFDFE108();
                }

                else
                {
                  v40 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (*v33 >> 62)
                {
                  v41 = sub_1AFDFE108();
                }

                else
                {
                  v41 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_1AF5AA5A8(v41 + v40);
                v42 = *v33;
                v43 = *v33 & 0xFFFFFFFFFFFFFF8;
                sub_1AF56DE9C(v43 + 8 * *(v43 + 0x10) + 32, (*(v43 + 0x18) >> 1) - *(v43 + 0x10), v39);
                v45 = v44;

                if (v45 >= 1)
                {
                  *(v43 + 16) += v45;
                }

                *v33 = v42;
              }
            }

            else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            if (++v29 == v84)
            {
              goto LABEL_40;
            }
          }
        }

        goto LABEL_40;
      }

      if (v22 != v83)
      {
        break;
      }

LABEL_40:
      v96 = v79;
      v97 = v124;
      v98 = v125;
      v18 = v76;
      sub_1AF630994(v76, &v96, v111);
      if (*(v76[13] + 16))
      {

        sub_1AF62F348(v46, v80);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v76[13];
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v48[2];
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v76[13] = v48;
          if ((v50 & 1) == 0)
          {
            v48 = sub_1AF420EA0(0, v49, 1, v48);
            v76[13] = v48;
          }

          sub_1AF43A540(0);
          swift_arrayDestroy();
          if (v49)
          {
            v51 = v48[2] - v49;
            memmove(v48 + 4, &v48[9 * v49 + 4], 72 * v51);
            v48[2] = v51;
          }

          v76[13] = v48;
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
          if (v48[3] >= 2uLL)
          {
            sub_1AFCBA7A8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
            v68 = swift_allocObject();
            v69 = j__malloc_size_0(v68);
            v68[2] = 0;
            v68[3] = 2 * ((v69 - 32) / 72);
          }

          v76[13] = v68;
        }

        if (*(v76[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
        {
          v70 = *(v80 + 232);
          v71 = *(v80 + 256);
          if (v70 == v71)
          {
            v72 = *(v80 + 240);
          }

          else
          {
            sub_1AF6497A0(v71, v70);
            v71 = *(v80 + 232);
            v72 = *(v80 + 240);
            if (v72 == v71)
            {
              v72 = 0;
              v71 = 0;
              *(v80 + 232) = 0;
              *(v80 + 240) = 0;
            }
          }

          *(v80 + 248) = v72;
          *(v80 + 256) = v71;
        }
      }

      ecs_stack_allocator_pop_snapshot(v82);
      v19 = v75;
      if (v75)
      {
        os_unfair_lock_unlock(*(v80 + 344));
        os_unfair_lock_unlock(*(v80 + 376));
      }

      v20 = v81 + 1;
      if (v81 + 1 == v77)
      {
        v74 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        sub_1AFCBA0DC(&v90, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
        v73 = v74;
        return sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, v73, sub_1AFCBA88C);
      }
    }

    while (1)
    {
      v52 = *(v85 + 8 * v22);
      v53 = MEMORY[0x1E69E7CC0];
      v88 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      v89 = v54;
      v55 = (v52 + 24);
      v56 = *(v52 + 24);
      v57 = sub_1AF42B2DC(v53);
      v86 = v53;
      v87 = v57;
      if (v56 >> 62)
      {
        v58 = sub_1AFDFE108();
      }

      else
      {
        v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_bridgeObjectRetain_n();

      if (v58)
      {
        for (j = 0; j != v58; ++j)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x1B2719C70](j, v56);
          }

          else
          {
            v60 = *(v56 + 8 * j + 32);
          }

          sub_1AF418138(v60, v52, 1, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0], a6, 0, &v87, &v88, &v86);
        }
      }

      if (v86 >> 62)
      {
        if (sub_1AFDFE108())
        {
LABEL_60:
          v61 = v86;
          if (v86 >> 62)
          {
            v62 = sub_1AFDFE108();
          }

          else
          {
            v62 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (*v55 >> 62)
          {
            v63 = sub_1AFDFE108();
          }

          else
          {
            v63 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF5AA5A8(v63 + v62);
          v64 = *v55;
          v65 = *v55 & 0xFFFFFFFFFFFFFF8;
          sub_1AF56DE9C(v65 + 8 * *(v65 + 0x10) + 32, (*(v65 + 0x18) >> 1) - *(v65 + 0x10), v61);
          v67 = v66;

          if (v67 >= 1)
          {
            *(v65 + 16) += v67;
          }

          *v55 = v64;
        }
      }

      else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      ++v22;

      if (v22 == v83)
      {
        goto LABEL_40;
      }
    }
  }

  return result;
}