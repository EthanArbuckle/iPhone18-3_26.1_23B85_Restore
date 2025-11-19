void sub_1D8E28D4C(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D8E31320(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_1D917930C();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1D91792DC();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_1D9108F18(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 adamID];

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D8E31320((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43F0, &qword_1D9189048);
          v7 = sub_1D9178AFC();
          sub_1D91793AC();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_1D8D9B144(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1D8D9B144(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_1D8D9B144(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D8E29110(unint64_t *a1, void (*a2)(uint64_t))
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

void ArtworkModel.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CategoryModel();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v73 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v73 - v15;
  v18 = (a1 + *(v17 + 44));
  v19 = v18[1];
  if (!v19 || (v20 = a1 + v4[13], (*(v20 + 8) & 1) != 0) || (v21 = a1 + v4[12], (*(v21 + 8) & 1) != 0) || (v22 = (a1 + v4[10]), (v23 = v22[1]) == 0))
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1ECAB0BF8);
    sub_1D8E2979C(a1, v16);
    sub_1D8E2979C(a1, v13);
    sub_1D8E2979C(a1, v10);
    sub_1D8E2979C(a1, v7);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v74 = v31;
      v33 = v32;
      v75 = swift_slowAlloc();
      v77 = v75;
      *v33 = 136315906;
      v34 = &v16[v4[11]];
      v35 = *(v34 + 1);
      *&v78[0] = *v34;
      *(&v78[0] + 1) = v35;

      v73[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v36 = sub_1D917826C();
      v76 = v7;
      v38 = v37;
      sub_1D8E29800(v16);
      v39 = sub_1D8CFA924(v36, v38, &v77);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      v40 = &v13[v4[13]];
      v41 = *v40;
      LOBYTE(v40) = v40[8];
      *&v78[0] = v41;
      BYTE8(v78[0]) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
      v42 = sub_1D917826C();
      v44 = v43;
      sub_1D8E29800(v13);
      v45 = sub_1D8CFA924(v42, v44, &v77);

      *(v33 + 14) = v45;
      *(v33 + 22) = 2080;
      v46 = &v10[v4[12]];
      v47 = *v46;
      LOBYTE(v46) = v46[8];
      *&v78[0] = v47;
      BYTE8(v78[0]) = v46;
      v48 = sub_1D917826C();
      v50 = v49;
      sub_1D8E29800(v10);
      v51 = sub_1D8CFA924(v48, v50, &v77);

      *(v33 + 24) = v51;
      *(v33 + 32) = 2080;
      v52 = v76;
      v53 = &v76[v4[10]];
      v54 = *(v53 + 1);
      *&v78[0] = *v53;
      *(&v78[0] + 1) = v54;

      v55 = sub_1D917826C();
      v57 = v56;
      sub_1D8E29800(v52);
      v58 = sub_1D8CFA924(v55, v57, &v77);

      *(v33 + 34) = v58;
      _os_log_impl(&dword_1D8CEC000, v30, v74, "Failed to create artwork from category model. Template: %s Width: %s Height: %s ArtworkColor: %s", v33, 0x2Au);
      v59 = v75;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v59, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);

      v60 = a1;
    }

    else
    {

      sub_1D8E29800(a1);
      sub_1D8E29800(v7);
      sub_1D8E29800(v10);
      sub_1D8E29800(v13);
      v60 = v16;
    }

    sub_1D8E29800(v60);
    sub_1D8D39E08(v78);
    v61 = v78[9];
    *(a2 + 128) = v78[8];
    *(a2 + 144) = v61;
    *(a2 + 160) = v78[10];
    v62 = v78[5];
    *(a2 + 64) = v78[4];
    *(a2 + 80) = v62;
    v63 = v78[7];
    *(a2 + 96) = v78[6];
    *(a2 + 112) = v63;
    v64 = v78[1];
    *a2 = v78[0];
    *(a2 + 16) = v64;
    v65 = v78[3];
    *(a2 + 32) = v78[2];
    *(a2 + 48) = v65;
  }

  else
  {
    v76 = v7;
    v24 = *v18;
    v25 = *v20;
    v26 = *v21;
    v27 = *v22;

    v28 = sub_1D8D3E514(v27, v23);
    v66 = v28;
    if (qword_1EDCD78A0 != -1)
    {
      swift_once();
    }

    v67 = word_1EDCD78A8;
    v68 = HIBYTE(word_1EDCD78A8);
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    v69 = byte_1EDCD7898;
    sub_1D8E29800(a1);
    *a2 = v24;
    *(a2 + 8) = v19;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 40) = v25;
    *(a2 + 48) = v26;
    *(a2 + 56) = v66;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = -1;
    *(a2 + 88) = 0;
    *(a2 + 96) = -1;
    *(a2 + 104) = 0;
    *(a2 + 112) = -1;
    *(a2 + 120) = 0;
    *(a2 + 128) = 1279;
    *(a2 + 130) = v67;
    *(a2 + 131) = v68;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = v69;
    *(a2 + 153) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;

    nullsub_1(a2, v70, v71, v72);
  }
}

uint64_t sub_1D8E2979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E29800(uint64_t a1)
{
  v2 = type metadata accessor for CategoryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E29884(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D8CFA924(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1D8E298E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43F8, &qword_1D91A6660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t CategoryObserverProvider.init(ctx:)(void *a1)
{
  v2 = sub_1D8D4A624(a1);

  return v2;
}

uint64_t sub_1D8E29A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MTCategory();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    sub_1D8E28704(v5, a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for CategoryModel();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t sub_1D8E29ACC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D8E28704(a1, a2);
  v3 = type metadata accessor for CategoryModel();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1D8E29B44(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 0;
  }

  else
  {
    return (sub_1D9179ACC() ^ 1) & 1;
  }
}

uint64_t CategoryObserverProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t CategoryObserverProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

char *sub_1D8E29CA4()
{
  v1 = sub_1D9176A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 chapters];
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  if ([v7 count] < 1)
  {
    goto LABEL_27;
  }

  v57 = v2;
  v9 = [v0 priceType];
  if (!v9 || (v10 = v9, sub_1D917820C(), v10, v11 = sub_1D917980C(), , v11 > 3))
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v43 = sub_1D917744C();
    __swift_project_value_buffer(v43, qword_1ECAB0C60);
    v44 = v0;
    v45 = sub_1D917741C();
    v46 = sub_1D9178CFC();

    if (!os_log_type_enabled(v45, v46))
    {

      return MEMORY[0x1E69E7CC0];
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v107 = v48;
    *v47 = 141558275;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2081;
    v49 = v44;
    v50 = [v49 description];
    v51 = sub_1D917820C();
    v53 = v52;

    v54 = sub_1D8CFA924(v51, v53, &v107);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_1D8CEC000, v45, v46, "Unable to determine the price type for the episode %{private,mask.hash}s.", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1DA72CB90](v48, -1, -1);
    MEMORY[0x1DA72CB90](v47, -1, -1);

LABEL_27:
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D9178C9C();
  v12 = sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v124)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *&v13 = 136446210;
    v58 = v13;
    v60 = v1;
    v61 = v6;
    v59 = v8;
    do
    {
      sub_1D8D65618(&v123, v122);
      sub_1D8CFAD1C(v122, &v107);
      type metadata accessor for MTChapter();
      if (swift_dynamicCast())
      {
        v15 = v92;
        LOBYTE(v92) = v11;
        sub_1D8E2DB2C(&v92, &v107);
      }

      else
      {
        if (qword_1ECAB0C58 != -1)
        {
          swift_once();
        }

        v16 = sub_1D917744C();
        __swift_project_value_buffer(v16, qword_1ECAB0C60);
        sub_1D8CFAD1C(v122, &v92);
        v17 = sub_1D917741C();
        v18 = sub_1D9178D0C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = v11;
          v21 = swift_slowAlloc();
          *&v107 = v21;
          *v19 = v58;
          __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
          *&v77 = swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4450, &qword_1D91891C0);
          v22 = sub_1D917826C();
          v23 = v12;
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_1Tm(&v92);
          v26 = sub_1D8CFA924(v22, v25, &v107);
          v12 = v23;

          *(v19 + 4) = v26;
          _os_log_impl(&dword_1D8CEC000, v17, v18, "Unexpected type %{public}s found in episode's chapters list.", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
          v27 = v21;
          v11 = v20;
          MEMORY[0x1DA72CB90](v27, -1, -1);
          v28 = v19;
          v8 = v59;
          v1 = v60;
          v6 = v61;
          MEMORY[0x1DA72CB90](v28, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v92);
        }

        sub_1D8E2A4D0(&v107);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      v104 = v119;
      v105 = v120;
      v106 = v121;
      v100 = v115;
      v101 = v116;
      v102 = v117;
      v103 = v118;
      v96 = v111;
      v97 = v112;
      v98 = v113;
      v99 = v114;
      v92 = v107;
      v93 = v108;
      v94 = v109;
      v95 = v110;
      if (sub_1D8D2E02C(&v92) == 1)
      {
        v89 = v119;
        v90 = v120;
        v91 = v121;
        v85 = v115;
        v86 = v116;
        v87 = v117;
        v88 = v118;
        v81 = v111;
        v82 = v112;
        v83 = v113;
        v84 = v114;
        v77 = v107;
        v78 = v108;
        v79 = v109;
        v80 = v110;
        sub_1D8E2A4F8(&v77);
      }

      else
      {
        v89 = v119;
        v90 = v120;
        v91 = v121;
        v85 = v115;
        v86 = v116;
        v87 = v117;
        v88 = v118;
        v81 = v111;
        v82 = v112;
        v83 = v113;
        v84 = v114;
        v77 = v107;
        v78 = v108;
        v79 = v109;
        v80 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D8ECC5F4(0, *(v14 + 2) + 1, 1, v14);
        }

        v30 = *(v14 + 2);
        v29 = *(v14 + 3);
        if (v30 >= v29 >> 1)
        {
          v14 = sub_1D8ECC5F4((v29 > 1), v30 + 1, 1, v14);
        }

        v66 = v81;
        v67 = v82;
        v64 = v79;
        v65 = v80;
        v70 = v85;
        v71 = v86;
        v68 = v83;
        v69 = v84;
        v75 = v90;
        v76 = v91;
        v73 = v88;
        v74 = v89;
        v72 = v87;
        v62 = v77;
        v63 = v78;
        *(v14 + 2) = v30 + 1;
        v31 = &v14[240 * v30];
        v32 = v62;
        v33 = v64;
        *(v31 + 3) = v63;
        *(v31 + 4) = v33;
        *(v31 + 2) = v32;
        v34 = v65;
        v35 = v66;
        v36 = v68;
        *(v31 + 7) = v67;
        *(v31 + 8) = v36;
        *(v31 + 5) = v34;
        *(v31 + 6) = v35;
        v37 = v69;
        v38 = v70;
        v39 = v72;
        *(v31 + 11) = v71;
        *(v31 + 12) = v39;
        *(v31 + 9) = v37;
        *(v31 + 10) = v38;
        v40 = v73;
        v41 = v74;
        v42 = v76;
        *(v31 + 15) = v75;
        *(v31 + 16) = v42;
        *(v31 + 13) = v40;
        *(v31 + 14) = v41;
      }

      sub_1D91791DC();
    }

    while (v124);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  (*(v57 + 8))(v6, v1);

  return v14;
}

double sub_1D8E2A4D0(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D8E2A4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4448, &qword_1D91891B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D8E2A560(char *result, unint64_t a2)
{
  v3 = *result;
  if (a2 >> 62)
  {
    result = sub_1D917935C();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = a2 & 0xC000000000000001;
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      v8 = a2 + 32;
      while (1)
      {
        if (v6)
        {
          v9 = MEMORY[0x1DA72AA90](v5, a2);
          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v9 = *(v8 + 8 * v5);

          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            return v9;
          }
        }

        v11 = *(*(v9 + 48) + 48);
        v12 = *(v11 + 16);
        v13 = (v11 + 32);

        while (v12)
        {
          if (*&aStdq_1[8 * *v13] == *&aStdq_1[8 * v3])
          {
            goto LABEL_17;
          }

          v14 = sub_1D9179ACC();
          swift_bridgeObjectRelease_n();
          ++v13;
          --v12;
          if (v14)
          {
            goto LABEL_18;
          }
        }

        v9 = 0;
        v7 = a2 & 0xFFFFFFFFFFFFFF8;
        v6 = a2 & 0xC000000000000001;
        v8 = a2 + 32;
        if (v5 == v4)
        {
          return v9;
        }
      }
    }
  }

  return 0;
}

PodcastsFoundation::Chapter::ChapterType_optional __swiftcall Chapter.ChapterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Chapter.ChapterType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746E656C6973;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1D8E2A784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E656C6973;
  }

  else
  {
    v4 = 0x7865646E69;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E656C6973;
  }

  else
  {
    v6 = 0x7865646E69;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8E2A824@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8E2A884(uint64_t *a1@<X8>)
{
  v2 = 0x7865646E69;
  if (*v1)
  {
    v2 = 0x746E656C6973;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8E2A8BC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2A938()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E2A9A0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t Chapter.Artwork.hash(into:)()
{
  v1 = v0[9];
  v23[8] = v0[8];
  v23[9] = v1;
  v23[10] = v0[10];
  v2 = v0[5];
  v23[4] = v0[4];
  v23[5] = v2;
  v3 = v0[7];
  v23[6] = v0[6];
  v23[7] = v3;
  v4 = v0[1];
  v23[0] = *v0;
  v23[1] = v4;
  v5 = v0[3];
  v23[2] = v0[2];
  v23[3] = v5;
  v6 = sub_1D8E2BAC8(v23);
  v7 = sub_1D8DADC50(v23);
  v8 = v7;
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v20 = v8[8];
    v21 = v8[9];
    v22 = v8[10];
    v16 = v8[4];
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[2];
    v15 = v8[3];
    return ArtworkModel.hash(into:)();
  }

  else
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t Chapter.Artwork.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = v0[9];
  v23[8] = v0[8];
  v23[9] = v1;
  v23[10] = v0[10];
  v2 = v0[5];
  v23[4] = v0[4];
  v23[5] = v2;
  v3 = v0[7];
  v23[6] = v0[6];
  v23[7] = v3;
  v4 = v0[1];
  v23[0] = *v0;
  v23[1] = v4;
  v5 = v0[3];
  v23[2] = v0[2];
  v23[3] = v5;
  v6 = sub_1D8E2BAC8(v23);
  v7 = sub_1D8DADC50(v23);
  v8 = v7;
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v20 = v8[8];
    v21 = v8[9];
    v22 = v8[10];
    v16 = v8[4];
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[2];
    v15 = v8[3];
    ArtworkModel.hash(into:)();
  }

  else
  {
    v10 = *v7;
    v9 = *(v7 + 1);
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2ACBC()
{
  sub_1D9179DBC();
  v1 = v0[9];
  v23[8] = v0[8];
  v23[9] = v1;
  v23[10] = v0[10];
  v2 = v0[5];
  v23[4] = v0[4];
  v23[5] = v2;
  v3 = v0[7];
  v23[6] = v0[6];
  v23[7] = v3;
  v4 = v0[1];
  v23[0] = *v0;
  v23[1] = v4;
  v5 = v0[3];
  v23[2] = v0[2];
  v23[3] = v5;
  v6 = sub_1D8E2BAC8(v23);
  v7 = sub_1D8DADC50(v23);
  v8 = v7;
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v20 = v8[8];
    v21 = v8[9];
    v22 = v8[10];
    v16 = v8[4];
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[2];
    v15 = v8[3];
    ArtworkModel.hash(into:)();
  }

  else
  {
    v10 = *v7;
    v9 = *(v7 + 1);
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2ADB8()
{
  v1 = v0[9];
  v23[8] = v0[8];
  v23[9] = v1;
  v23[10] = v0[10];
  v2 = v0[5];
  v23[4] = v0[4];
  v23[5] = v2;
  v3 = v0[7];
  v23[6] = v0[6];
  v23[7] = v3;
  v4 = v0[1];
  v23[0] = *v0;
  v23[1] = v4;
  v5 = v0[3];
  v23[2] = v0[2];
  v23[3] = v5;
  v6 = sub_1D8E2BAC8(v23);
  v7 = sub_1D8DADC50(v23);
  v8 = v7;
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v20 = v8[8];
    v21 = v8[9];
    v22 = v8[10];
    v16 = v8[4];
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[2];
    v15 = v8[3];
    return ArtworkModel.hash(into:)();
  }

  else
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t sub_1D8E2AEAC()
{
  sub_1D9179DBC();
  v1 = v0[9];
  v23[8] = v0[8];
  v23[9] = v1;
  v23[10] = v0[10];
  v2 = v0[5];
  v23[4] = v0[4];
  v23[5] = v2;
  v3 = v0[7];
  v23[6] = v0[6];
  v23[7] = v3;
  v4 = v0[1];
  v23[0] = *v0;
  v23[1] = v4;
  v5 = v0[3];
  v23[2] = v0[2];
  v23[3] = v5;
  v6 = sub_1D8E2BAC8(v23);
  v7 = sub_1D8DADC50(v23);
  v8 = v7;
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v20 = v8[8];
    v21 = v8[9];
    v22 = v8[10];
    v16 = v8[4];
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[2];
    v15 = v8[3];
    ArtworkModel.hash(into:)();
  }

  else
  {
    v10 = *v7;
    v9 = *(v7 + 1);
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t Chapter.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Chapter.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Chapter.endTime.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Chapter.artwork.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v25 = v1[12];
  v26 = v3;
  v4 = v1[13];
  v27 = v1[14];
  v5 = v1[7];
  v6 = v1[9];
  v21 = v1[8];
  v7 = v21;
  v22 = v6;
  v8 = v1[9];
  v9 = v1[11];
  v23 = v1[10];
  v10 = v23;
  v24 = v9;
  v11 = v1[5];
  v18[0] = v1[4];
  v18[1] = v11;
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  v19 = v1[6];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[14];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1D8E2BAD4(v18, &v17);
}

uint64_t Chapter.duration.getter()
{
  if ((*(v0 + 56) & 1) != 0 || (v1 = *(v0 + 40), v2 = *(v0 + 48), v1 >= v2))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v2 - v1;
  }

  return result;
}

void Chapter.timeRange.getter()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    if (v1 < v2 && v1 > v2)
    {
      __break(1u);
    }
  }
}

double Chapter.init(id:type:title:startTime:endTime:artwork:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, char a7@<W6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *&v23[119] = a8[7];
  *&v23[135] = a8[8];
  *&v23[151] = a8[9];
  *&v23[167] = a8[10];
  *&v23[55] = a8[3];
  *&v23[71] = a8[4];
  *&v23[87] = a8[5];
  *&v23[103] = a8[6];
  *&v23[7] = *a8;
  *&v23[23] = a8[1];
  v10 = *a3;
  *&v23[39] = a8[2];
  if (a7)
  {
    v24 = 1;
  }

  else if (a6 <= a10)
  {
    v24 = 1;
    if (a6 >= a10)
    {
      a6 = 0.0;
    }

    else
    {
      v11 = a10;
      v12 = a6;
      v13 = a1;
      v22 = a2;
      v14 = a4;
      v15 = a9;
      v16 = a5;
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v17 = sub_1D917744C();
      __swift_project_value_buffer(v17, qword_1ECAB0C60);
      v18 = sub_1D917741C();
      v19 = sub_1D9178D0C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 141558787;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2049;
        *(v20 + 14) = v12;
        *(v20 + 22) = 2160;
        *(v20 + 24) = 1752392040;
        *(v20 + 32) = 2049;
        *(v20 + 34) = v11;
        _os_log_impl(&dword_1D8CEC000, v18, v19, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v20, 0x2Au);
        MEMORY[0x1DA72CB90](v20, -1, -1);

        a10 = v11;
        a6 = 0.0;
        a5 = v16;
        a9 = v15;
        a4 = v14;
        a2 = v22;
        a1 = v13;
      }

      else
      {

        a6 = 0.0;
        a5 = v16;
        a9 = v15;
        a4 = v14;
        a2 = v22;
        a1 = v13;
        a10 = v11;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  *(a9 + 40) = a10;
  *(a9 + 185) = *&v23[128];
  *(a9 + 201) = *&v23[144];
  *(a9 + 217) = *&v23[160];
  *(a9 + 121) = *&v23[64];
  *(a9 + 137) = *&v23[80];
  *(a9 + 153) = *&v23[96];
  *(a9 + 169) = *&v23[112];
  *(a9 + 57) = *v23;
  *(a9 + 73) = *&v23[16];
  result = *&v23[32];
  *(a9 + 89) = *&v23[32];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = v24;
  *(a9 + 232) = *&v23[175];
  *(a9 + 105) = *&v23[48];
  return result;
}

uint64_t Chapter.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 56);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  sub_1D9179DDC();
  if (v6)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v10 = 0.0;
  if (v7 != 0.0)
  {
    v10 = v7;
  }

  MEMORY[0x1DA72B3C0](*&v10);
  if (v9)
  {
    sub_1D9179DDC();
  }

  else
  {
    sub_1D9179DDC();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1DA72B3C0](v11);
  }

  v12 = *(v1 + 13);
  v40[8] = *(v1 + 12);
  v40[9] = v12;
  v40[10] = *(v1 + 14);
  v13 = *(v1 + 9);
  v40[4] = *(v1 + 8);
  v40[5] = v13;
  v14 = *(v1 + 11);
  v40[6] = *(v1 + 10);
  v40[7] = v14;
  v15 = *(v1 + 5);
  v40[0] = *(v1 + 4);
  v40[1] = v15;
  v16 = *(v1 + 7);
  v40[2] = *(v1 + 6);
  v40[3] = v16;
  if (sub_1D8E2C184(v40) == 1)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  v18 = *(v1 + 13);
  v39[8] = *(v1 + 12);
  v39[9] = v18;
  v39[10] = *(v1 + 14);
  v19 = *(v1 + 9);
  v39[4] = *(v1 + 8);
  v39[5] = v19;
  v20 = *(v1 + 11);
  v39[6] = *(v1 + 10);
  v39[7] = v20;
  v21 = *(v1 + 5);
  v39[0] = *(v1 + 4);
  v39[1] = v21;
  v22 = *(v1 + 7);
  v39[2] = *(v1 + 6);
  v39[3] = v22;
  v23 = sub_1D8E2BAC8(v39);
  v24 = sub_1D8DADC50(v39);
  v25 = v24;
  if (v23 == 1)
  {
    MEMORY[0x1DA72B390](1);
    v36 = v25[8];
    v37 = v25[9];
    v38 = v25[10];
    v32 = v25[4];
    v33 = v25[5];
    v34 = v25[6];
    v35 = v25[7];
    v28 = *v25;
    v29 = v25[1];
    v30 = v25[2];
    v31 = v25[3];
    return ArtworkModel.hash(into:)();
  }

  else
  {
    v27 = *v24;
    v26 = *(v24 + 1);
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t Chapter.hashValue.getter()
{
  sub_1D9179DBC();
  Chapter.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B628()
{
  sub_1D9179DBC();
  Chapter.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B66C()
{
  sub_1D9179DBC();
  Chapter.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B6A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D8E2B6E0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_1D8E2B718(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t _s18PodcastsFoundation7ChapterV7ArtworkO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v70 = a1[8];
  v71 = v3;
  v4 = a1[9];
  v72 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v66 = a1[4];
  v67 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v68 = a1[6];
  v69 = v8;
  v9 = a1[1];
  v63[0] = *a1;
  v63[1] = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v64 = a1[2];
  v65 = v10;
  v13 = a2[7];
  v14 = a2[9];
  v81 = a2[8];
  v82 = v14;
  v15 = a2[9];
  v83 = a2[10];
  v16 = a2[3];
  v17 = a2[5];
  v77 = a2[4];
  v78 = v17;
  v18 = a2[5];
  v19 = a2[7];
  v79 = a2[6];
  v80 = v19;
  v20 = a2[1];
  v73 = *a2;
  v74 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v75 = a2[2];
  v76 = v21;
  v24 = a1[7];
  v25 = a1[9];
  v84[8] = a1[8];
  v84[9] = v25;
  v26 = a1[3];
  v27 = a1[5];
  v84[4] = a1[4];
  v84[5] = v27;
  v28 = a1[6];
  v84[7] = v24;
  v84[6] = v28;
  v29 = a1[1];
  v84[0] = *a1;
  v84[1] = v29;
  v30 = a1[2];
  v84[3] = v26;
  v84[2] = v30;
  v84[18] = v13;
  v84[19] = v81;
  v31 = a2[10];
  v84[20] = v15;
  v84[21] = v31;
  v84[14] = v16;
  v84[15] = v77;
  v84[16] = v18;
  v84[17] = v79;
  v84[10] = a1[10];
  v84[11] = v23;
  v84[12] = v22;
  v84[13] = v75;
  v85[8] = v70;
  v85[9] = v4;
  v85[10] = a1[10];
  v85[4] = v66;
  v85[5] = v7;
  v85[6] = v68;
  v85[7] = v2;
  v85[0] = v11;
  v85[1] = v12;
  v85[2] = v64;
  v85[3] = v5;
  if (sub_1D8E2BAC8(v85) != 1)
  {
    v41 = sub_1D8DADC50(v85);
    v42 = *v41;
    v43 = v41[1];
    v60 = v81;
    v61 = v82;
    v62 = v83;
    v56 = v77;
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v52 = v73;
    v53 = v74;
    v54 = v75;
    v55 = v76;
    v44 = sub_1D8E2BAC8(&v52);
    v45 = sub_1D8DADC50(&v52);
    if (v44 != 1)
    {
      v46 = *v45;
      v47 = v45[1];
      sub_1D8E2C720(&v73, v51);
      sub_1D8E2C720(v63, v51);
      v40 = sub_1D8FCC138(v42, v43, v46, v47);
      sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
      return v40 & 1;
    }

    goto LABEL_5;
  }

  v32 = sub_1D8DADC50(v85);
  v60 = v81;
  v61 = v82;
  v62 = v83;
  v56 = v77;
  v57 = v78;
  v58 = v79;
  v59 = v80;
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  v33 = sub_1D8E2BAC8(&v52);
  v34 = sub_1D8DADC50(&v52);
  if (v33 != 1)
  {
LABEL_5:
    sub_1D8E2C720(&v73, &v52);
    sub_1D8E2C720(v63, &v52);
    sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
    v40 = 0;
    return v40 & 1;
  }

  v51[7] = v32[7];
  v51[8] = v32[8];
  v51[9] = v32[9];
  v51[10] = v32[10];
  v51[3] = v32[3];
  v51[4] = v32[4];
  v51[5] = v32[5];
  v51[6] = v32[6];
  v51[0] = *v32;
  v51[1] = v32[1];
  v51[2] = v32[2];
  v35 = v34[9];
  v50[8] = v34[8];
  v50[9] = v35;
  v50[10] = v34[10];
  v36 = v34[5];
  v50[4] = v34[4];
  v50[5] = v36;
  v37 = v34[7];
  v50[6] = v34[6];
  v50[7] = v37;
  v38 = v34[1];
  v50[0] = *v34;
  v50[1] = v38;
  v39 = v34[3];
  v50[2] = v34[2];
  v50[3] = v39;
  sub_1D8E2C720(&v73, v49);
  sub_1D8E2C720(v63, v49);
  sub_1D8E2C720(&v73, v49);
  sub_1D8E2C720(v63, v49);
  v40 = _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(v51, v50);
  sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
  sub_1D8E2C6F0(&v73);
  sub_1D8E2C6F0(v63);
  return v40 & 1;
}

uint64_t sub_1D8E2BAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4458, &qword_1D91891F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation7ChapterV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = a1[5];
  v9 = a1[6];
  v102 = *(a1 + 56);
  v11 = *(a1 + 13);
  v141[8] = *(a1 + 12);
  v141[9] = v11;
  v141[10] = *(a1 + 14);
  v12 = *(a1 + 9);
  v141[4] = *(a1 + 8);
  v141[5] = v12;
  v13 = *(a1 + 10);
  v141[7] = *(a1 + 11);
  v141[6] = v13;
  v14 = *(a1 + 5);
  v141[0] = *(a1 + 4);
  v141[1] = v14;
  v15 = *(a1 + 6);
  v141[3] = *(a1 + 7);
  v141[2] = v15;
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 16);
  v20 = *(a2 + 3);
  v19 = *(a2 + 4);
  v22 = a2[5];
  v21 = a2[6];
  v23 = *(a2 + 56);
  v24 = *(a2 + 13);
  v142[8] = *(a2 + 12);
  v142[9] = v24;
  v142[10] = *(a2 + 14);
  v25 = *(a2 + 9);
  v142[4] = *(a2 + 8);
  v142[5] = v25;
  v26 = *(a2 + 10);
  v142[7] = *(a2 + 11);
  v142[6] = v26;
  v27 = *(a2 + 5);
  v142[0] = *(a2 + 4);
  v142[1] = v27;
  v28 = *(a2 + 6);
  v142[3] = *(a2 + 7);
  v142[2] = v28;
  if ((*&v4 != *&v16 || v5 != v17) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    v29 = 0x746E656C6973;
  }

  else
  {
    v29 = 0x7865646E69;
  }

  if (v6)
  {
    v30 = 0xE600000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  if (v18)
  {
    v31 = 0x746E656C6973;
  }

  else
  {
    v31 = 0x7865646E69;
  }

  if (v18)
  {
    v32 = 0xE600000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  if (v29 == v31 && v30 == v32)
  {
  }

  else
  {
    v33 = sub_1D9179ACC();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v7 == v20 && v8 == v19)
    {
      if (v10 != v22)
      {
        return 0;
      }

      goto LABEL_30;
    }

    v35 = sub_1D9179ACC();
    result = 0;
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v19)
    {
      return result;
    }
  }

  if (v10 != v22)
  {
    return result;
  }

LABEL_30:
  if (v102)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v21)
    {
      v36 = v23;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = *(a1 + 11);
  v38 = *(a1 + 13);
  __src[8] = *(a1 + 12);
  __src[9] = v38;
  v39 = *(a1 + 7);
  v40 = *(a1 + 9);
  __src[4] = *(a1 + 8);
  __src[5] = v40;
  v42 = *(a1 + 9);
  v41 = *(a1 + 10);
  v43 = v41;
  __src[7] = *(a1 + 11);
  __src[6] = v41;
  v44 = *(a1 + 5);
  __src[0] = *(a1 + 4);
  __src[1] = v44;
  v45 = *(a1 + 6);
  v47 = *(a1 + 4);
  v46 = *(a1 + 5);
  v48 = v45;
  __src[3] = *(a1 + 7);
  __src[2] = v45;
  v49 = *(a2 + 12);
  v50 = *(a2 + 13);
  v51 = *(a2 + 10);
  __src[18] = *(a2 + 11);
  __src[19] = v49;
  v52 = *(a2 + 14);
  __src[20] = v50;
  __src[21] = v52;
  v53 = *(a2 + 8);
  v54 = *(a2 + 9);
  v55 = *(a2 + 6);
  __src[14] = *(a2 + 7);
  __src[15] = v53;
  __src[16] = v54;
  __src[17] = v51;
  v56 = *(a2 + 4);
  v57 = *(a2 + 5);
  v58 = *(a1 + 13);
  __src[10] = *(a1 + 14);
  __src[11] = v56;
  __src[12] = v57;
  __src[13] = v55;
  v140[8] = __src[8];
  v140[9] = v58;
  v140[10] = *(a1 + 14);
  v140[4] = __src[4];
  v140[5] = v42;
  v140[7] = v37;
  v140[6] = v43;
  v140[0] = v47;
  v140[1] = v46;
  v140[3] = v39;
  v140[2] = v48;
  if (sub_1D8E2C184(v140) == 1)
  {
    v59 = *(a2 + 13);
    __dst[8] = *(a2 + 12);
    __dst[9] = v59;
    __dst[10] = *(a2 + 14);
    v60 = *(a2 + 9);
    __dst[4] = *(a2 + 8);
    __dst[5] = v60;
    v61 = *(a2 + 11);
    __dst[6] = *(a2 + 10);
    __dst[7] = v61;
    v62 = *(a2 + 5);
    __dst[0] = *(a2 + 4);
    __dst[1] = v62;
    v63 = *(a2 + 7);
    __dst[2] = *(a2 + 6);
    __dst[3] = v63;
    if (sub_1D8E2C184(__dst) == 1)
    {
      v64 = *(a1 + 13);
      v136 = *(a1 + 12);
      v137 = v64;
      v138 = *(a1 + 14);
      v65 = *(a1 + 9);
      v132 = *(a1 + 8);
      v133 = v65;
      v66 = *(a1 + 10);
      v135 = *(a1 + 11);
      v134 = v66;
      v67 = *(a1 + 5);
      v128 = *(a1 + 4);
      v129 = v67;
      v68 = *(a1 + 6);
      v131 = *(a1 + 7);
      v130 = v68;
      sub_1D8E2BAD4(v141, &v116);
      sub_1D8E2BAD4(v142, &v116);
      sub_1D8D08A50(&v128, &qword_1ECAB4458, &qword_1D91891F0);
      return 1;
    }

    sub_1D8E2BAD4(v141, &v128);
    sub_1D8E2BAD4(v142, &v128);
    goto LABEL_43;
  }

  v69 = *(a1 + 11);
  v70 = *(a1 + 13);
  v136 = *(a1 + 12);
  v137 = v70;
  v71 = *(a1 + 13);
  v138 = *(a1 + 14);
  v72 = *(a1 + 7);
  v73 = *(a1 + 9);
  v132 = *(a1 + 8);
  v133 = v73;
  v75 = *(a1 + 9);
  v74 = *(a1 + 10);
  v76 = v74;
  v135 = *(a1 + 11);
  v134 = v74;
  v77 = *(a1 + 5);
  v128 = *(a1 + 4);
  v129 = v77;
  v78 = *(a1 + 6);
  v80 = *(a1 + 4);
  v79 = *(a1 + 5);
  v131 = *(a1 + 7);
  v130 = v78;
  v124 = v136;
  v125 = v71;
  v126 = *(a1 + 14);
  v120 = v132;
  v121 = v75;
  v122 = v76;
  v123 = v69;
  v116 = v80;
  v117 = v79;
  v118 = v78;
  v119 = v72;
  v81 = *(a2 + 13);
  __dst[8] = *(a2 + 12);
  __dst[9] = v81;
  __dst[10] = *(a2 + 14);
  v82 = *(a2 + 9);
  __dst[4] = *(a2 + 8);
  __dst[5] = v82;
  v83 = *(a2 + 11);
  __dst[6] = *(a2 + 10);
  __dst[7] = v83;
  v84 = *(a2 + 5);
  __dst[0] = *(a2 + 4);
  __dst[1] = v84;
  v85 = *(a2 + 7);
  __dst[2] = *(a2 + 6);
  __dst[3] = v85;
  if (sub_1D8E2C184(__dst) == 1)
  {
    v86 = *(a1 + 13);
    v113 = *(a1 + 12);
    v114 = v86;
    v115 = *(a1 + 14);
    v87 = *(a1 + 9);
    v109 = *(a1 + 8);
    v110 = v87;
    v88 = *(a1 + 11);
    v111 = *(a1 + 10);
    v112 = v88;
    v89 = *(a1 + 5);
    v105 = *(a1 + 4);
    v106 = v89;
    v90 = *(a1 + 7);
    v107 = *(a1 + 6);
    v108 = v90;
    sub_1D8E2BAD4(v141, v104);
    sub_1D8E2BAD4(v142, v104);
    sub_1D8E2BAD4(&v128, v104);
    sub_1D8E2C6F0(&v105);
LABEL_43:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D8D08A50(__dst, &qword_1ECAB4480, &qword_1D9189BC0);
    return 0;
  }

  v91 = *(a2 + 13);
  v113 = *(a2 + 12);
  v114 = v91;
  v115 = *(a2 + 14);
  v92 = *(a2 + 9);
  v109 = *(a2 + 8);
  v110 = v92;
  v93 = *(a2 + 11);
  v111 = *(a2 + 10);
  v112 = v93;
  v94 = *(a2 + 5);
  v105 = *(a2 + 4);
  v106 = v94;
  v95 = *(a2 + 7);
  v107 = *(a2 + 6);
  v108 = v95;
  sub_1D8E2BAD4(v141, v104);
  sub_1D8E2BAD4(v142, v104);
  sub_1D8E2BAD4(&v128, v104);
  v96 = _s18PodcastsFoundation7ChapterV7ArtworkO2eeoiySbAE_AEtFZ_0(&v116, &v105);
  v103[8] = v113;
  v103[9] = v114;
  v103[10] = v115;
  v103[4] = v109;
  v103[5] = v110;
  v103[6] = v111;
  v103[7] = v112;
  v103[0] = v105;
  v103[1] = v106;
  v103[2] = v107;
  v103[3] = v108;
  sub_1D8E2C6F0(v103);
  v104[8] = v124;
  v104[9] = v125;
  v104[10] = v126;
  v104[4] = v120;
  v104[5] = v121;
  v104[6] = v122;
  v104[7] = v123;
  v104[0] = v116;
  v104[1] = v117;
  v104[2] = v118;
  v104[3] = v119;
  sub_1D8E2C6F0(v104);
  v97 = *(a1 + 13);
  v113 = *(a1 + 12);
  v114 = v97;
  v115 = *(a1 + 14);
  v98 = *(a1 + 9);
  v109 = *(a1 + 8);
  v110 = v98;
  v99 = *(a1 + 11);
  v111 = *(a1 + 10);
  v112 = v99;
  v100 = *(a1 + 5);
  v105 = *(a1 + 4);
  v106 = v100;
  v101 = *(a1 + 7);
  v107 = *(a1 + 6);
  v108 = v101;
  sub_1D8D08A50(&v105, &qword_1ECAB4458, &qword_1D91891F0);
  return (v96 & 1) != 0;
}

uint64_t sub_1D8E2C184(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8E2C19C()
{
  result = qword_1ECAB4460;
  if (!qword_1ECAB4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4460);
  }

  return result;
}

unint64_t sub_1D8E2C1F4()
{
  result = qword_1ECAB4468;
  if (!qword_1ECAB4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4468);
  }

  return result;
}

unint64_t sub_1D8E2C24C()
{
  result = qword_1ECAB4470;
  if (!qword_1ECAB4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4470);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation7ChapterV7ArtworkOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1D8E2C32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1D8E2C374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Chapter.ChapterType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Chapter.ChapterType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8E2C550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D8E2C59C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 176) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 8;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0;
      return result;
    }

    *(a1 + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8E2C638(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 80);
  v4 = *(result + 96);
  v5 = *(result + 112);
  v6 = *(result + 128) & 0xF0FFFFFLL;
  v7 = *(result + 152) & 0x10103 | (a2 << 63);
  *(result + 32) = *(result + 32);
  *(result + 64) = v2;
  *(result + 80) = v3;
  *(result + 96) = v4;
  *(result + 112) = v5;
  *(result + 128) = v6;
  *(result + 152) = v7;
  return result;
}

unint64_t sub_1D8E2C69C()
{
  result = qword_1ECAB4478;
  if (!qword_1ECAB4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4478);
  }

  return result;
}

PodcastsFoundation::ChapterCollection::Source_optional __swiftcall ChapterCollection.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ChapterCollection.Source.rawValue.getter()
{
  if (*v0)
  {
    result = 0x72656469766F7270;
  }

  else
  {
    result = 0x656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_1D8E2C7F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72656469766F7270;
  }

  else
  {
    v4 = 0x656C707061;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x72656469766F7270;
  }

  else
  {
    v6 = 0x656C707061;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8E2C89C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2C91C()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E2C988()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2CA04@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8E2CA64(uint64_t *a1@<X8>)
{
  v2 = 0x656C707061;
  if (*v1)
  {
    v2 = 0x72656469766F7270;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ChapterCollection.episodeDuration.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ChapterCollection.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1DA72B390](*(v1 + 16));
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[2];
      v28[1] = v6[1];
      v28[2] = v8;
      v28[0] = v7;
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      v28[5] = v6[5];
      v28[6] = v11;
      v28[3] = v9;
      v28[4] = v10;
      v12 = v6[7];
      v13 = v6[8];
      v14 = v6[10];
      v28[9] = v6[9];
      v28[10] = v14;
      v28[7] = v12;
      v28[8] = v13;
      v15 = v6[11];
      v16 = v6[12];
      v17 = v6[14];
      v28[13] = v6[13];
      v28[14] = v17;
      v28[11] = v15;
      v28[12] = v16;
      v18 = v6[13];
      v42 = v6[12];
      v43 = v18;
      v44 = v6[14];
      v19 = v6[9];
      v38 = v6[8];
      v39 = v19;
      v20 = v6[11];
      v40 = v6[10];
      v41 = v20;
      v21 = v6[5];
      v34 = v6[4];
      v35 = v21;
      v22 = v6[7];
      v36 = v6[6];
      v37 = v22;
      v23 = v6[1];
      v30 = *v6;
      v31 = v23;
      v24 = v6[3];
      v32 = v6[2];
      v33 = v24;
      sub_1D8E2D01C(v28, v29);
      Chapter.hash(into:)();
      v29[12] = v42;
      v29[13] = v43;
      v29[14] = v44;
      v29[8] = v38;
      v29[9] = v39;
      v29[10] = v40;
      v29[11] = v41;
      v29[4] = v34;
      v29[5] = v35;
      v29[6] = v36;
      v29[7] = v37;
      v29[0] = v30;
      v29[1] = v31;
      v29[2] = v32;
      v29[3] = v33;
      sub_1D8E2D078(v29);
      v6 += 15;
      --v5;
    }

    while (v5);
  }

  if (v2 != 4)
  {
    sub_1D9179DDC();
    v27 = *&aStdq_2[8 * v2];
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    if (!v4)
    {
      goto LABEL_6;
    }

    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  if (v4)
  {
    return sub_1D9179DDC();
  }

LABEL_6:
  sub_1D9179DDC();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = v3;
  }

  else
  {
    v25 = 0;
  }

  return MEMORY[0x1DA72B3C0](v25);
}

uint64_t ChapterCollection.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D9179DBC();
  ChapterCollection.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2CDF4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D9179DBC();
  ChapterCollection.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2CE64()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D9179DBC();
  ChapterCollection.hash(into:)();
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation17ChapterCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = *(a2 + 3);
  v10 = a2[32];
  v11 = *a1 == 0;
  if (*a1)
  {
    v12 = 0x72656469766F7270;
  }

  else
  {
    v12 = 0x656C707061;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (*a2)
  {
    v14 = 0x72656469766F7270;
  }

  else
  {
    v14 = 0x656C707061;
  }

  if (*a2)
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1D9179ACC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1D8E83D34(v2, v7))
  {
    if (v3 == 4)
    {
      if (v8 != 4)
      {
        return 0;
      }
    }

    else if (v8 == 4 || (sub_1D8FDDEC0(v3, v8) & 1) == 0)
    {
      return 0;
    }

    if ((v5 & 1) == 0)
    {
      if (v4 == v9)
      {
        v19 = v10;
      }

      else
      {
        v19 = 1;
      }

      return (v19 & 1) == 0;
    }

    if (v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D8E2D0D0()
{
  result = qword_1ECAB4490;
  if (!qword_1ECAB4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4490);
  }

  return result;
}

unint64_t sub_1D8E2D128()
{
  result = qword_1ECAB4498;
  if (!qword_1ECAB4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4498);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8E2D190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D8E2D1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8E2D23C()
{
  result = qword_1ECAB44A0;
  if (!qword_1ECAB44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB44A0);
  }

  return result;
}

uint64_t ID3Chapter.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ID3Chapter.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ID3Chapter.artwork.getter()
{
  v1 = *(v0 + 32);
  sub_1D8DA04B0(v1, *(v0 + 40));
  return v1;
}

uint64_t ID3Chapter.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v8 = v0[6];
  v7 = v0[7];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  if (v6 >> 60 != 15)
  {
    sub_1D9176C9C();
  }

  if (v8 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  MEMORY[0x1DA72B3C0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  return MEMORY[0x1DA72B3C0](*&v10);
}

uint64_t ID3Chapter.hashValue.getter()
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2D43C()
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2D480()
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)();
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation10ID3ChapterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_1D8DA04B0(v3, v5);
      sub_1D8DA04B0(v11, v10);
      sub_1D8D75668(v3, v5);
      if (v7 != v13)
      {
        return 0;
      }

      return v6 == v12;
    }

LABEL_12:
    sub_1D8DA04B0(v3, v5);
    sub_1D8DA04B0(v11, v10);
    sub_1D8D75668(v3, v5);
    sub_1D8D75668(v11, v10);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_12;
  }

  sub_1D8DA04B0(v3, v5);
  sub_1D8DA04B0(v11, v10);
  v15 = sub_1D8FCC138(v3, v5, v11, v10);
  sub_1D8D75668(v11, v10);
  sub_1D8D75668(v3, v5);
  result = 0;
  if ((v15 & 1) != 0 && v7 == v13)
  {
    return v6 == v12;
  }

  return result;
}

unint64_t sub_1D8E2D668()
{
  result = qword_1ECAB44A8;
  if (!qword_1ECAB44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB44A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8E2D6F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D8E2D740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D8E2D7A0@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = v1[6];
  v10 = v1[7];
  if (v8 >> 60 == 15)
  {
    sub_1D8E2DAA4(&v39);
  }

  else
  {
    *v26 = v1[4];
    *(&v26[0] + 1) = v8;
    sub_1D8E2DADC(v26);
    v35 = v26[8];
    v36 = v26[9];
    v37 = v26[10];
    v31 = v26[4];
    v32 = v26[5];
    v33 = v26[6];
    v34 = v26[7];
    v27 = v26[0];
    v28 = v26[1];
    v29 = v26[2];
    v30 = v26[3];
    nullsub_1(&v27, v11, v12, v13);
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
  }

  *&v38[119] = v46;
  *&v38[135] = v47;
  *&v38[151] = v48;
  *&v38[167] = v49;
  *&v38[55] = v42;
  *&v38[71] = v43;
  *&v38[87] = v44;
  *&v38[103] = v45;
  *&v38[7] = v39;
  *&v38[23] = v40;
  v14 = v10 - v9;
  *&v38[39] = v41;
  if (v9 >= v14)
  {
    LOBYTE(v27) = 1;

    sub_1D8DA04B0(v7, v8);
    if (v14 < v9)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0C60);
      v16 = sub_1D917741C();
      v17 = sub_1D9178D0C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 141558787;
        *(v18 + 4) = 1752392040;
        *(v18 + 12) = 2049;
        *(v18 + 14) = v14;
        *(v18 + 22) = 2160;
        *(v18 + 24) = 1752392040;
        *(v18 + 32) = 2049;
        *(v18 + 34) = v9;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v18, 0x2Au);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }
    }

    v14 = 0.0;
  }

  else
  {
    LOBYTE(v27) = 0;

    sub_1D8DA04B0(v7, v8);
  }

  v19 = v27;
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v9;
  *(a1 + 48) = v14;
  *(a1 + 56) = v19;
  v20 = *&v38[144];
  *(a1 + 185) = *&v38[128];
  *(a1 + 201) = v20;
  *(a1 + 217) = *&v38[160];
  *(a1 + 232) = *&v38[175];
  v21 = *&v38[80];
  *(a1 + 121) = *&v38[64];
  *(a1 + 137) = v21;
  v22 = *&v38[112];
  *(a1 + 153) = *&v38[96];
  *(a1 + 169) = v22;
  v23 = *&v38[16];
  *(a1 + 57) = *v38;
  *(a1 + 73) = v23;
  result = *&v38[32];
  v25 = *&v38[48];
  *(a1 + 89) = *&v38[32];
  *(a1 + 105) = v25;
  return result;
}

double sub_1D8E2DAA4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFF00;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_1D8E2DADC(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(result + 80);
  v3 = *(result + 96);
  v4 = *(result + 112);
  v5 = *(result + 128) & 0xF0FFFFFLL;
  v6 = *(result + 152) & 0x10103;
  *(result + 32) = *(result + 32);
  *(result + 64) = v1;
  *(result + 80) = v2;
  *(result + 96) = v3;
  *(result + 112) = v4;
  *(result + 128) = v5;
  *(result + 152) = v6;
  return result;
}

__n128 sub_1D8E2DB2C@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = MTChapter.timeframes.getter();
  LOBYTE(v67) = v4;
  v6 = sub_1D8E2A560(&v67, v5);

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *(v6 + 6);
  if (*(v7 + 24))
  {

LABEL_4:
    sub_1D8E2A4D0(&v67);
    goto LABEL_25;
  }

  v8 = *(v7 + 16);
  v9 = [v2 id];
  v42 = sub_1D917820C();
  v11 = v10;

  v12 = [v2 chapterTypeIntValue];
  v13 = [v2 title];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D917820C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *(v6 + 6);
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  if ((v20 & 1) == 0)
  {
    v19 = v19 / 1000.0;
  }

  MTChapter.artworkModel.getter(v66);
  if (sub_1D8D2E02C(v66) == 1)
  {
    sub_1D8E2DAA4(&v55);
  }

  else
  {
    v51 = v66[8];
    v52 = v66[9];
    v53 = v66[10];
    v47 = v66[4];
    v48 = v66[5];
    v49 = v66[6];
    v50 = v66[7];
    v43 = v66[0];
    v44 = v66[1];
    v45 = v66[2];
    v46 = v66[3];
    sub_1D8E2DF90(&v43);
    *&v70[80] = v51;
    *&v70[96] = v52;
    *&v70[112] = v53;
    *&v70[16] = v47;
    *&v70[32] = v48;
    *&v70[48] = v49;
    *&v70[64] = v50;
    v67 = v43;
    v68 = v44;
    v69 = v45;
    *v70 = v46;
    nullsub_1(&v67, v21, v22, v23);
    v63 = *&v70[80];
    v64 = *&v70[96];
    v65 = *&v70[112];
    v59 = *&v70[16];
    v60 = *&v70[32];
    v61 = *&v70[48];
    v62 = *&v70[64];
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v58 = *v70;
  }

  *&v54[119] = v62;
  *&v54[135] = v63;
  *&v54[151] = v64;
  *&v54[167] = v65;
  *&v54[55] = v58;
  *&v54[71] = v59;
  *&v54[87] = v60;
  *&v54[103] = v61;
  v24 = v8 / 1000.0;
  *&v54[7] = v55;
  *&v54[23] = v56;
  v25 = v12 == 1;
  *&v54[39] = v57;
  if (v20)
  {

    LOBYTE(v43) = 1;
  }

  else if (v24 >= v19)
  {
    LOBYTE(v43) = 1;
    if (v24 > v19)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v29 = sub_1D917744C();
      __swift_project_value_buffer(v29, qword_1ECAB0C60);
      v30 = sub_1D917741C();
      v31 = sub_1D9178D0C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = v31;
        v34 = v32;
        *v32 = 141558787;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2049;
        *(v32 + 14) = v19;
        *(v32 + 22) = 2160;
        *(v32 + 24) = 1752392040;
        *(v32 + 32) = 2049;
        *(v32 + 34) = v24;
        _os_log_impl(&dword_1D8CEC000, v30, v33, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v32, 0x2Au);
        MEMORY[0x1DA72CB90](v34, -1, -1);
      }
    }

    v19 = 0.0;
  }

  else
  {

    LOBYTE(v43) = 0;
  }

  *&v67 = v42;
  *(&v67 + 1) = v11;
  LOBYTE(v68) = v25;
  *(&v68 + 1) = v15;
  *&v69 = v17;
  *(&v69 + 1) = v24;
  *v70 = v19;
  v70[8] = v43;
  *&v70[137] = *&v54[128];
  *&v70[153] = *&v54[144];
  *&v70[169] = *&v54[160];
  *&v70[184] = *&v54[175];
  *&v70[73] = *&v54[64];
  *&v70[89] = *&v54[80];
  *&v70[105] = *&v54[96];
  *&v70[121] = *&v54[112];
  *&v70[9] = *v54;
  *&v70[25] = *&v54[16];
  *&v70[41] = *&v54[32];
  *&v70[57] = *&v54[48];
  nullsub_1(&v67, v26, v27, v28);
LABEL_25:
  v35 = *&v70[160];
  *(a2 + 192) = *&v70[144];
  *(a2 + 208) = v35;
  *(a2 + 224) = *&v70[176];
  v36 = *&v70[96];
  *(a2 + 128) = *&v70[80];
  *(a2 + 144) = v36;
  v37 = *&v70[128];
  *(a2 + 160) = *&v70[112];
  *(a2 + 176) = v37;
  v38 = *&v70[32];
  *(a2 + 64) = *&v70[16];
  *(a2 + 80) = v38;
  v39 = *&v70[64];
  *(a2 + 96) = *&v70[48];
  *(a2 + 112) = v39;
  v40 = v68;
  *a2 = v67;
  *(a2 + 16) = v40;
  result = *v70;
  *(a2 + 32) = v69;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1D8E2DF90(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(result + 80);
  v3 = *(result + 96);
  v4 = *(result + 112);
  v5 = *(result + 128) & 0xF0FFFFFLL;
  v6 = *(result + 152) & 0x10103 | 0x8000000000000000;
  *(result + 32) = *(result + 32);
  *(result + 64) = v1;
  *(result + 80) = v2;
  *(result + 96) = v3;
  *(result + 112) = v4;
  *(result + 128) = v5;
  *(result + 152) = v6;
  return result;
}

__n128 sub_1D8E2DFE4@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(v2[7] + 16) + 16);
  LOBYTE(v71) = *a1;

  v5 = sub_1D8E2A560(&v71, v4);

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(v5 + 6);
  if (*(v6 + 24))
  {

LABEL_4:
    sub_1D8E2A4D0(&v71);
    goto LABEL_24;
  }

  v7 = v2[6];
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  if ((v9 & 1) == 0)
  {
    v8 = v8 / 1000.0;
  }

  v10 = *(v6 + 16);
  v11 = v2[3];
  v12 = *(v7 + 24) ^ 1;
  v13 = *(v7 + 32);
  v14 = *(v7 + 40);
  v35 = v13;
  v36 = v2[2];
  if (!*(v7 + 16))
  {

    goto LABEL_11;
  }

  ArtworkModel.init(serverArtwork:)(v15, &v71);
  if (sub_1D8D2E02C(&v71) == 1)
  {
LABEL_11:
    sub_1D8E2DAA4(&v60);
    goto LABEL_12;
  }

  v45 = *&v74[80];
  v46 = *&v74[96];
  v47 = *&v74[112];
  v41 = *&v74[16];
  v42 = *&v74[32];
  v43 = *&v74[48];
  v44 = *&v74[64];
  v37 = v71;
  v38 = v72;
  v39 = v73;
  v40 = *v74;
  sub_1D8E2DF90(&v37);
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v48 = v37;
  v49 = v38;
  v50 = v39;
  v51 = v40;
  nullsub_1(&v48, v16, v17, v18);
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v63 = v51;
LABEL_12:
  *&v59[119] = v67;
  *&v59[135] = v68;
  *&v59[151] = v69;
  *&v59[167] = v70;
  *&v59[55] = v63;
  *&v59[71] = v64;
  *&v59[87] = v65;
  *&v59[103] = v66;
  v19 = v10 / 1000.0;
  *&v59[7] = v60;
  *&v59[23] = v61;
  v20 = v12 & 1;
  *&v59[39] = v62;
  if (v9)
  {

    LOBYTE(v48) = 1;
  }

  else if (v19 >= v8)
  {
    LOBYTE(v48) = 1;
    if (v19 > v8)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1ECAB0C60);
      v25 = sub_1D917741C();
      v26 = sub_1D9178D0C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 141558787;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2049;
        *(v27 + 14) = v8;
        *(v27 + 22) = 2160;
        *(v27 + 24) = 1752392040;
        *(v27 + 32) = 2049;
        *(v27 + 34) = v19;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v27, 0x2Au);
        MEMORY[0x1DA72CB90](v27, -1, -1);
      }
    }

    v8 = 0.0;
  }

  else
  {

    LOBYTE(v48) = 0;
  }

  *&v71 = v36;
  *(&v71 + 1) = v11;
  LOBYTE(v72) = v20;
  *(&v72 + 1) = v35;
  *&v73 = v14;
  *(&v73 + 1) = v19;
  *v74 = v8;
  v74[8] = v48;
  *&v74[137] = *&v59[128];
  *&v74[153] = *&v59[144];
  *&v74[169] = *&v59[160];
  *&v74[184] = *&v59[175];
  *&v74[73] = *&v59[64];
  *&v74[89] = *&v59[80];
  *&v74[105] = *&v59[96];
  *&v74[121] = *&v59[112];
  *&v74[9] = *v59;
  *&v74[25] = *&v59[16];
  *&v74[41] = *&v59[32];
  *&v74[57] = *&v59[48];
  nullsub_1(&v71, v21, v22, v23);
LABEL_24:
  v28 = *&v74[160];
  *(a2 + 192) = *&v74[144];
  *(a2 + 208) = v28;
  *(a2 + 224) = *&v74[176];
  v29 = *&v74[96];
  *(a2 + 128) = *&v74[80];
  *(a2 + 144) = v29;
  v30 = *&v74[128];
  *(a2 + 160) = *&v74[112];
  *(a2 + 176) = v30;
  v31 = *&v74[32];
  *(a2 + 64) = *&v74[16];
  *(a2 + 80) = v31;
  v32 = *&v74[64];
  *(a2 + 96) = *&v74[48];
  *(a2 + 112) = v32;
  v33 = v72;
  *a2 = v71;
  *(a2 + 16) = v33;
  result = *v74;
  *(a2 + 32) = v73;
  *(a2 + 48) = result;
  return result;
}

uint64_t Array<A>.normalized(episodeDuration:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      v8 = (v5 + 240 * v4);
      v9 = v4;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v10 = v8[13];
        v80 = v8[12];
        v81 = v10;
        v82 = v8[14];
        v11 = v8[9];
        v76 = v8[8];
        v77 = v11;
        v12 = v8[11];
        v78 = v8[10];
        v79 = v12;
        v13 = v8[5];
        v72 = v8[4];
        v73 = v13;
        v14 = v8[7];
        v74 = v8[6];
        v75 = v14;
        v15 = v8[1];
        v68 = *v8;
        v69 = v15;
        v16 = v8[3];
        v70 = v8[2];
        v71 = v16;
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_33;
        }

        if ((v69 & 1) == 0)
        {
          break;
        }

        v17 = sub_1D9179ACC();
        sub_1D8E2D01C(&v68, v67);

        if (v17)
        {
          goto LABEL_11;
        }

        sub_1D8E2D078(&v68);
        ++v9;
        v8 += 15;
        if (v4 == v3)
        {
          goto LABEL_16;
        }
      }

      sub_1D8E2D01C(&v68, v67);

LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8E31360(0, *(v6 + 16) + 1, 1);
        v6 = v83;
      }

      v5 = v7;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D8E31360((v19 > 1), v20 + 1, 1);
        v6 = v83;
      }

      *(v6 + 16) = v20 + 1;
      v21 = (v6 + 240 * v20);
      v22 = v68;
      v23 = v70;
      v21[3] = v69;
      v21[4] = v23;
      v21[2] = v22;
      v24 = v71;
      v25 = v72;
      v26 = v74;
      v21[7] = v73;
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
      v27 = v75;
      v28 = v76;
      v29 = v78;
      v21[11] = v77;
      v21[12] = v29;
      v21[9] = v27;
      v21[10] = v28;
      v30 = v79;
      v31 = v80;
      v32 = v82;
      v21[15] = v81;
      v21[16] = v32;
      v21[13] = v30;
      v21[14] = v31;
    }

    while (v4 != v3);
  }

LABEL_16:
  v64 = sub_1D8E2E88C(a1, a2 & 1);

  if (v3)
  {
    v33 = 0;
    v34 = a3 + 32;
    v35 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v36 = v34;
    v37 = (v34 + 240 * v33);
    v9 = v33;
    while (v9 < v3)
    {
      v38 = v37[13];
      v80 = v37[12];
      v81 = v38;
      v82 = v37[14];
      v39 = v37[9];
      v76 = v37[8];
      v77 = v39;
      v40 = v37[11];
      v78 = v37[10];
      v79 = v40;
      v41 = v37[5];
      v72 = v37[4];
      v73 = v41;
      v42 = v37[7];
      v74 = v37[6];
      v75 = v42;
      v43 = v37[1];
      v68 = *v37;
      v69 = v43;
      v44 = v37[3];
      v70 = v37[2];
      v71 = v44;
      v33 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_35;
      }

      if (v69 == 1)
      {
        sub_1D8E2D01C(&v68, v67);

LABEL_26:
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v35;
        if ((v46 & 1) == 0)
        {
          sub_1D8E31360(0, *(v35 + 16) + 1, 1);
          v35 = v83;
        }

        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1D8E31360((v47 > 1), v48 + 1, 1);
          v35 = v83;
        }

        *(v35 + 16) = v48 + 1;
        v49 = (v35 + 240 * v48);
        v50 = v68;
        v51 = v70;
        v49[3] = v69;
        v49[4] = v51;
        v49[2] = v50;
        v52 = v71;
        v53 = v72;
        v54 = v74;
        v49[7] = v73;
        v49[8] = v54;
        v49[5] = v52;
        v49[6] = v53;
        v55 = v75;
        v56 = v76;
        v57 = v78;
        v49[11] = v77;
        v49[12] = v57;
        v49[9] = v55;
        v49[10] = v56;
        v58 = v79;
        v59 = v80;
        v60 = v82;
        v49[15] = v81;
        v49[16] = v60;
        v49[13] = v58;
        v49[14] = v59;
        v34 = v36;
        if (v33 != v3)
        {
          goto LABEL_18;
        }

        goto LABEL_31;
      }

      v45 = sub_1D9179ACC();
      sub_1D8E2D01C(&v68, v67);

      if (v45)
      {
        goto LABEL_26;
      }

      sub_1D8E2D078(&v68);
      ++v9;
      v37 += 15;
      if (v33 == v3)
      {
        goto LABEL_31;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_31:
    sub_1D8E2EE00(a1, a2 & 1);

    *&v68 = v64;

    sub_1D8E2FC34(v61);

    sub_1D8E31114(&v68);

    return v68;
  }

  return result;
}

uint64_t sub_1D8E2E88C(uint64_t a1, char a2)
{
  swift_getKeyPath();

  v5 = sub_1D8E35300(v4);

  *&v105 = v5;

  sub_1D8E31114(&v105);

  v6 = v105;
  if (*(v105 + 16) < 3uLL)
  {

    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0C60);
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v105 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1D8CFA924(0xD000000000000014, 0x80000001D91C98F0, &v105);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 3;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Unable to normalize index chapters. Less than %ld unique index chapter received. Note that we may still have valid silent chapters.", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D8E30D50(1, v6);

  v12 = sub_1D8E2F3EC(v13, v6, 1);

  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = (v6 + 240 * v14);
    v16 = *(v15 - 13);
    v17 = *(v15 - 11);
    v106 = *(v15 - 12);
    v107 = v17;
    v105 = v16;
    v18 = *(v15 - 10);
    v19 = *(v15 - 9);
    v20 = *(v15 - 7);
    v110 = *(v15 - 8);
    v111 = v20;
    v108 = v18;
    v109 = v19;
    v21 = *(v15 - 6);
    v22 = *(v15 - 5);
    v23 = *(v15 - 3);
    v114 = *(v15 - 4);
    v115 = v23;
    v112 = v21;
    v113 = v22;
    v24 = *(v15 - 2);
    v25 = *(v15 - 1);
    v26 = v15[1];
    v118 = *v15;
    v119 = v26;
    v116 = v24;
    v117 = v25;
    v27 = *&v108;
    v28 = BYTE8(v108);
    v29 = *(&v17 + 1);
    sub_1D8E2D01C(&v105, &v90);

    if (a2 & 1 | (v29 >= *&a1))
    {
      v30 = v27;
    }

    else
    {
      v30 = *&a1;
    }

    v87 = v117;
    v88 = v118;
    v89 = v119;
    v83 = v113;
    v84 = v114;
    v85 = v115;
    v86 = v116;
    v79 = v109;
    v80 = v110;
    v81 = v111;
    v82 = v112;
    v75 = v105;
    v76 = v106;
    v77 = v107;
    v78 = v108;
    sub_1D8E2F124(v30, (a2 & 1 | (v29 >= *&a1)) & v28, &v90, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECC5F4(0, *(v12 + 16) + 1, 1, v12);
    }

    v32 = *(v12 + 16);
    v31 = *(v12 + 24);
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1D8ECC5F4((v31 > 1), v32 + 1, 1, v12);
    }

    sub_1D8E2D078(&v105);
    *(v12 + 16) = v32 + 1;
    v33 = (v12 + 240 * v32);
    v35 = v91;
    v34 = v92;
    v33[2] = v90;
    v33[3] = v35;
    v33[4] = v34;
    v36 = v96;
    v38 = v93;
    v37 = v94;
    v33[7] = v95;
    v33[8] = v36;
    v33[5] = v38;
    v33[6] = v37;
    v39 = v100;
    v41 = v97;
    v40 = v98;
    v33[11] = v99;
    v33[12] = v39;
    v33[9] = v41;
    v33[10] = v40;
    v42 = v104;
    v44 = v101;
    v43 = v102;
    v33[15] = v103;
    v33[16] = v42;
    v33[13] = v44;
    v33[14] = v43;
    if (!*(v12 + 16))
    {
      return v12;
    }
  }

  else
  {

    if (!*(v12 + 16))
    {
      return v12;
    }
  }

  v45 = *(v12 + 224);
  v101 = *(v12 + 208);
  v102 = v45;
  v46 = *(v12 + 256);
  v103 = *(v12 + 240);
  v104 = v46;
  v47 = *(v12 + 160);
  v97 = *(v12 + 144);
  v98 = v47;
  v48 = *(v12 + 192);
  v99 = *(v12 + 176);
  v100 = v48;
  v49 = *(v12 + 96);
  v93 = *(v12 + 80);
  v94 = v49;
  v50 = *(v12 + 128);
  v95 = *(v12 + 112);
  v96 = v50;
  v51 = *(v12 + 48);
  v90 = *(v12 + 32);
  v91 = v51;
  v92 = *(v12 + 64);
  v52 = v93;
  v53 = BYTE8(v93);
  v87 = v102;
  v88 = v103;
  v89 = v104;
  v83 = v98;
  v84 = v99;
  v85 = v100;
  v86 = v101;
  v79 = v94;
  v80 = v95;
  v81 = v96;
  v82 = v97;
  v75 = v90;
  v76 = v51;
  v77 = v92;
  v78 = v93;
  sub_1D8E2D01C(&v90, &v105);
  sub_1D8E2F124(*&v52, v53, &v105, 0.0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1D915C324(v12);
  }

  sub_1D8E2D078(&v90);
  if (*(v12 + 16))
  {
    v54 = *(v12 + 80);
    v55 = *(v12 + 96);
    v56 = *(v12 + 128);
    v80 = *(v12 + 112);
    v81 = v56;
    v78 = v54;
    v79 = v55;
    v57 = *(v12 + 144);
    v58 = *(v12 + 160);
    v59 = *(v12 + 192);
    v84 = *(v12 + 176);
    v85 = v59;
    v82 = v57;
    v83 = v58;
    v60 = *(v12 + 208);
    v61 = *(v12 + 224);
    v62 = *(v12 + 256);
    v88 = *(v12 + 240);
    v89 = v62;
    v86 = v60;
    v87 = v61;
    v63 = *(v12 + 48);
    v75 = *(v12 + 32);
    v76 = v63;
    v77 = *(v12 + 64);
    v64 = v105;
    *(v12 + 48) = v106;
    v65 = v108;
    *(v12 + 64) = v107;
    v66 = v109;
    *(v12 + 112) = v110;
    v68 = v118;
    v67 = v119;
    *(v12 + 224) = v117;
    *(v12 + 240) = v68;
    *(v12 + 256) = v67;
    v70 = v115;
    v69 = v116;
    v71 = v114;
    *(v12 + 160) = v113;
    *(v12 + 176) = v71;
    *(v12 + 192) = v70;
    *(v12 + 208) = v69;
    v73 = v111;
    v72 = v112;
    *(v12 + 80) = v65;
    *(v12 + 96) = v66;
    *(v12 + 128) = v73;
    *(v12 + 144) = v72;
    *(v12 + 32) = v64;
    sub_1D8E2D078(&v75);
    return v12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E2EE00(uint64_t a1, char a2)
{
  swift_getKeyPath();
  *&v44 = MEMORY[0x1E69E7CD0];

  v5 = sub_1D8E35300(v4);

  *&v44 = v5;

  sub_1D8E31114(&v44);

  v6 = v44;

  v7 = sub_1D8E30D50(1, v6);
  MEMORY[0x1EEE9AC00](v7);

  v8 = sub_1D8E35530(v7, v6, 1, sub_1D8E35528);

  if (*(v8 + 16))
  {
    v9 = *(v6 + 16);
    if (v9)
    {
      v10 = (v6 + 240 * v9);
      v11 = *(v10 - 13);
      v12 = *(v10 - 11);
      v45 = *(v10 - 12);
      v46 = v12;
      v44 = v11;
      v13 = *(v10 - 10);
      v14 = *(v10 - 9);
      v15 = *(v10 - 7);
      v49 = *(v10 - 8);
      v50 = v15;
      v47 = v13;
      v48 = v14;
      v16 = *(v10 - 6);
      v17 = *(v10 - 5);
      v18 = *(v10 - 3);
      v53 = *(v10 - 4);
      v54 = v18;
      v51 = v16;
      v52 = v17;
      v19 = *(v10 - 2);
      v20 = *(v10 - 1);
      v21 = v10[1];
      v57 = *v10;
      v58 = v21;
      v55 = v19;
      v56 = v20;
      v22 = *&v47;
      v23 = BYTE8(v47);
      sub_1D8E2D01C(&v44, v43);

      v43[12] = v56;
      v43[13] = v57;
      v43[14] = v58;
      v43[8] = v52;
      v43[9] = v53;
      v43[10] = v54;
      v43[11] = v55;
      v43[4] = v48;
      v43[5] = v49;
      v43[6] = v50;
      v43[7] = v51;
      v43[0] = v44;
      v43[1] = v45;
      if (v23)
      {
        v24 = *&a1;
      }

      else
      {
        v24 = v22;
      }

      v25 = v23 & a2;
      v43[2] = v46;
      v43[3] = v47;
      if ((v23 & 1) == 0 && (a2 & 1) == 0)
      {
        v25 = 0;
        v26 = v22;
        if (*&a1 < v22)
        {
          v26 = *&a1;
        }

        v24 = v26;
      }

      sub_1D8E2F124(v24, v25, v42, *(&v46 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D8ECC5F4(0, *(v8 + 16) + 1, 1, v8);
      }

      v28 = *(v8 + 16);
      v27 = *(v8 + 24);
      if (v28 >= v27 >> 1)
      {
        v8 = sub_1D8ECC5F4((v27 > 1), v28 + 1, 1, v8);
      }

      sub_1D8E2D078(&v44);
      *(v8 + 16) = v28 + 1;
      v29 = (v8 + 240 * v28);
      v31 = v42[1];
      v30 = v42[2];
      v29[2] = v42[0];
      v29[3] = v31;
      v29[4] = v30;
      v32 = v42[6];
      v34 = v42[3];
      v33 = v42[4];
      v29[7] = v42[5];
      v29[8] = v32;
      v29[5] = v34;
      v29[6] = v33;
      v35 = v42[10];
      v37 = v42[7];
      v36 = v42[8];
      v29[11] = v42[9];
      v29[12] = v35;
      v29[9] = v37;
      v29[10] = v36;
      v38 = v42[14];
      v40 = v42[11];
      v39 = v42[12];
      v29[15] = v42[13];
      v29[16] = v38;
      v29[13] = v40;
      v29[14] = v39;
    }

    else
    {
    }

    return v8;
  }

  else
  {
  }

  return v6;
}

double sub_1D8E2F124@<D0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = *(v4 + 11);
  v9 = *(v4 + 13);
  v47 = *(v4 + 12);
  v48 = v9;
  v10 = *(v4 + 13);
  v49 = *(v4 + 14);
  v11 = *(v4 + 7);
  v12 = *(v4 + 9);
  v43 = *(v4 + 8);
  v44 = v12;
  v13 = *(v4 + 9);
  v14 = *(v4 + 11);
  v45 = *(v4 + 10);
  v46 = v14;
  v15 = *(v4 + 5);
  v40[0] = *(v4 + 4);
  v40[1] = v15;
  v16 = *(v4 + 7);
  v18 = *(v4 + 4);
  v17 = *(v4 + 5);
  v41 = *(v4 + 6);
  v42 = v16;
  *&v38[119] = v8;
  *&v38[135] = v47;
  *&v38[151] = v10;
  *&v38[167] = *(v4 + 14);
  *&v38[55] = v11;
  *&v38[71] = v43;
  *&v38[87] = v13;
  *&v38[103] = v45;
  *&v38[7] = v18;
  *&v38[23] = v17;
  v20 = *v4;
  v19 = v4[1];
  v21 = *(v4 + 16);
  v23 = v4[3];
  v22 = v4[4];
  *&v38[39] = v41;
  if (a2)
  {
    v39 = 1;
LABEL_5:

    sub_1D8E2BAD4(v40, v37);
    goto LABEL_6;
  }

  if (a1 > a4)
  {
    v39 = 0;
    goto LABEL_5;
  }

  v39 = 1;

  if (v5 >= a4)
  {
    sub_1D8E2BAD4(v40, v37);
    v5 = 0.0;
  }

  else
  {
    sub_1D8E2BAD4(v40, v37);
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1ECAB0C60);
    v32 = sub_1D917741C();
    v33 = sub_1D9178D0C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v33;
      v36 = v34;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2049;
      *(v34 + 14) = v5;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2049;
      *(v34 + 34) = a4;
      _os_log_impl(&dword_1D8CEC000, v32, v35, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v34, 0x2Au);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    v5 = 0.0;
  }

LABEL_6:
  *(a3 + 40) = a4;
  v24 = *&v38[144];
  *(a3 + 185) = *&v38[128];
  *(a3 + 201) = v24;
  *(a3 + 217) = *&v38[160];
  v25 = *&v38[80];
  *(a3 + 121) = *&v38[64];
  *(a3 + 137) = v25;
  v26 = *&v38[112];
  *(a3 + 153) = *&v38[96];
  *(a3 + 169) = v26;
  v27 = *&v38[16];
  *(a3 + 57) = *v38;
  *(a3 + 73) = v27;
  result = *&v38[32];
  v29 = *&v38[48];
  *(a3 + 89) = *&v38[32];
  v30 = v39;
  *a3 = v20;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v5;
  *(a3 + 56) = v30;
  *(a3 + 232) = *&v38[175];
  *(a3 + 105) = v29;
  return result;
}

uint64_t sub_1D8E2F3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v101 = MEMORY[0x1E69E7CC0];
  sub_1D8E31360(0, 0, 0);
  v6 = v101;
  v7 = a3 - 1;
  if (a3 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + 16);
    if (v7 >= v8)
    {
      v7 = *(a2 + 16);
    }

    if (v7 >= 2)
    {
      v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
      v10 = v9;
      do
      {
        v10 -= 2;
      }

      while (v10);
    }

    else
    {
      v9 = 0;
    }

    while (v8 != v9)
    {
      if (a3 == ++v9)
      {
        v8 = a3;
        break;
      }
    }
  }

  if (v5)
  {
    v68 = a2 + 240 * v8;
    v12 = 32;
    do
    {
      v13 = (a1 + v12);
      v14 = *(a1 + v12 + 208);
      v98 = *(a1 + v12 + 192);
      v99 = v14;
      v100 = *(a1 + v12 + 224);
      v15 = *(a1 + v12 + 144);
      v94 = *(a1 + v12 + 128);
      v95 = v15;
      v16 = *(a1 + v12 + 160);
      v97 = *(a1 + v12 + 176);
      v96 = v16;
      v17 = *(a1 + v12 + 80);
      v90 = *(a1 + v12 + 64);
      v91 = v17;
      v18 = *(a1 + v12 + 96);
      v93 = *(a1 + v12 + 112);
      v92 = v18;
      v19 = *(a1 + v12 + 16);
      v87[0] = *(a1 + v12);
      v87[1] = v19;
      v20 = *(a1 + v12 + 32);
      v89 = *(a1 + v12 + 48);
      v88 = v20;
      v21 = *(a2 + 16);
      if (v8 == v21)
      {
        break;
      }

      if (v8 >= v21)
      {
        __break(1u);
        return result;
      }

      v22 = *(v68 + v12 + 176);
      v23 = *(v68 + v12 + 208);
      v82 = *(v68 + v12 + 192);
      v83 = v23;
      v24 = *(v68 + v12 + 208);
      v84 = *(v68 + v12 + 224);
      v25 = *(v68 + v12 + 112);
      v26 = *(v68 + v12 + 144);
      v78 = *(v68 + v12 + 128);
      v79 = v26;
      v27 = *(v68 + v12 + 144);
      v28 = *(v68 + v12 + 176);
      v80 = *(v68 + v12 + 160);
      v81 = v28;
      v29 = *(v68 + v12 + 48);
      v30 = *(v68 + v12 + 80);
      v74 = *(v68 + v12 + 64);
      v75 = v30;
      v31 = *(v68 + v12 + 80);
      v32 = *(v68 + v12 + 112);
      v76 = *(v68 + v12 + 96);
      v77 = v32;
      v33 = *(v68 + v12 + 16);
      v71[0] = *(v68 + v12);
      v71[1] = v33;
      v34 = *(v68 + v12 + 48);
      v35 = *(v68 + v12);
      v36 = *(v68 + v12 + 16);
      v72 = *(v68 + v12 + 32);
      v73 = v34;
      v37 = v13[11];
      v38 = v13[13];
      v85[12] = v13[12];
      v85[13] = v38;
      v39 = v13[13];
      v85[14] = v13[14];
      v40 = v13[7];
      v41 = v13[9];
      v85[8] = v13[8];
      v85[9] = v41;
      v42 = v13[9];
      v43 = v13[11];
      v85[10] = v13[10];
      v85[11] = v43;
      v44 = v13[3];
      v45 = v13[5];
      v85[4] = v13[4];
      v85[5] = v45;
      v46 = v13[5];
      v47 = v13[7];
      v85[6] = v13[6];
      v85[7] = v47;
      v48 = v13[1];
      v85[0] = *v13;
      v85[1] = v48;
      v49 = v13[3];
      v51 = *v13;
      v50 = v13[1];
      v85[2] = v13[2];
      v85[3] = v49;
      v85[27] = v82;
      v85[28] = v24;
      v85[29] = *(v68 + v12 + 224);
      v85[23] = v78;
      v85[24] = v27;
      v85[25] = v80;
      v85[26] = v22;
      v85[19] = v74;
      v85[20] = v31;
      v85[21] = v76;
      v85[22] = v25;
      v85[15] = v35;
      v85[16] = v36;
      v85[17] = v72;
      v85[18] = v29;
      v70 = v13[14];
      v52 = *(&v72 + 1);
      v53 = *(&v88 + 1);
      sub_1D8E2D01C(v87, v86);
      sub_1D8E2D01C(v71, v86);
      sub_1D8E2F124(v52, 0, v86, v53);
      result = sub_1D8E35890(v85);
      v101 = v6;
      v55 = *(v6 + 16);
      v54 = *(v6 + 24);
      if (v55 >= v54 >> 1)
      {
        result = sub_1D8E31360((v54 > 1), v55 + 1, 1);
        v6 = v101;
      }

      *(v6 + 16) = v55 + 1;
      v56 = (v6 + 240 * v55);
      v57 = v86[0];
      v58 = v86[2];
      v56[3] = v86[1];
      v56[4] = v58;
      v56[2] = v57;
      v59 = v86[3];
      v60 = v86[4];
      v61 = v86[6];
      v56[7] = v86[5];
      v56[8] = v61;
      v56[5] = v59;
      v56[6] = v60;
      v62 = v86[7];
      v63 = v86[8];
      v64 = v86[10];
      v56[11] = v86[9];
      v56[12] = v64;
      v56[9] = v62;
      v56[10] = v63;
      v65 = v86[11];
      v66 = v86[12];
      v67 = v86[14];
      v56[15] = v86[13];
      v56[16] = v67;
      v56[13] = v65;
      v56[14] = v66;
      v12 += 240;
      ++v8;
      --v5;
    }

    while (v5);
  }

  return v6;
}

double sub_1D8E2F780@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v3 = *(a1 + 56);
  if (v3 & 1 | (*(a2 + 40) >= *(a1 + 6)))
  {
    v4 = *(a1 + 6);
  }

  else
  {
    v4 = *(a2 + 40);
  }

  v9 = *(a1 + 6);
  v14 = *(a1 + 121);
  v15 = *(a1 + 137);
  v16 = *(a1 + 153);
  v17 = *(a1 + 169);
  v10 = *(a1 + 57);
  v11 = *(a1 + 73);
  v12 = *(a1 + 89);
  v13 = *(a1 + 105);
  *&v20[15] = *(a1 + 29);
  *v20 = *(a1 + 217);
  v19 = *(a1 + 201);
  v18 = *(a1 + 185);
  return sub_1D8E2F124(v4, v3 & 1, a3, *(a1 + 5));
}

uint64_t sub_1D8E2F860(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8ECC4D4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8E2F94C(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1D8ECC718(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1D8F0AF70(&v44, &v4[24 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v47 = v24;
          v48 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v44;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v4 + 2);
  v14 = v45;
  v15 = v46;
  v2 = v47;
  v43 = v45;
  if (!v48)
  {
    goto LABEL_19;
  }

  v20 = (v48 - 1) & v48;
  v21 = __clz(__rbit64(v48)) | (v47 << 6);
  v22 = (v46 + 64) >> 6;
LABEL_27:
  v41 = v15;
  v42 = result;
  v27 = *(result + 48) + 24 * v21;
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  sub_1D8DB5EC8(*v27, v29, v30);
  v31 = v43;
  while (1)
  {
    v32 = *(v4 + 3);
    v33 = v32 >> 1;
    if ((v32 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v33)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v6;
  }

  v39 = sub_1D8ECC718((v32 > 1), v6 + 1, 1, v4);
  v31 = v43;
  v4 = v39;
  v33 = *(v39 + 3) >> 1;
  if (v6 >= v33)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v34 = &v4[24 * v6 + 32];
    *v34 = v28;
    *(v34 + 8) = v29;
    *(v34 + 16) = v30 & 1;
    ++v6;
    if (!v20)
    {
      break;
    }

    result = v42;
LABEL_38:
    v37 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v38 = *(result + 48) + 24 * (v37 | (v2 << 6));
    v28 = *v38;
    v29 = *(v38 + 8);
    v30 = *(v38 + 16);
    sub_1D8DB5EC8(*v38, v29, v30);
    v31 = v43;
    if (v6 == v33)
    {
      v6 = v33;
      goto LABEL_28;
    }
  }

  v35 = v2;
  result = v42;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v36 >= v22)
    {
      break;
    }

    v20 = *(v31 + 8 * v36);
    ++v35;
    if (v20)
    {
      v2 = v36;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v40 = v2 + 1;
  }

  else
  {
    v40 = v22;
  }

  v46 = v41;
  v47 = v40 - 1;
  v48 = 0;
  *(v4 + 2) = v6;
LABEL_13:
  result = sub_1D8D1B144();
  *v1 = v4;
  return result;
}

uint64_t sub_1D8E2FC34(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1D8ECC5F4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

void *sub_1D8E2FD2C(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1D8ECCB94(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8E2FE30(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1D8D4241C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1D8E2FF44(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1D8ECD008(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1D8E30068(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8ECD264(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8E3016C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D917935C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1D917935C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D8E346D0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D8E34DE0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8E302B8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1D917935C();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D8E346D0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8E303D0(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8E304F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_1D8D1B614(v39, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_1D8ECC958((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_1D8D1B144();
  *v1 = v3;
  return result;
}

uint64_t sub_1D8E30778(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v4 + 3) >> 1, v11 < v6))
  {
    if (v5 <= v6)
    {
      v12 = v5 + v3;
    }

    else
    {
      v12 = v5;
    }

    v4 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v12, 1, v4);
    v11 = *(v4 + 3) >> 1;
  }

  v13 = *(v4 + 2);
  v14 = v11 - v13;
  result = (a2)(v40, &v4[8 * v13 + 32], v11 - v13, v8);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v8 + 64) >> 6;
      if (v22 <= v14 + 1)
      {
        v23 = v14 + 1;
      }

      else
      {
        v23 = (v8 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v42 = v24;
          v43 = 0;
          goto LABEL_13;
        }

        v26 = *(v15 + 8 * v25);
        ++v14;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v40[0];
  if (v16 != v14)
  {
    goto LABEL_13;
  }

LABEL_16:
  a2 = *(v4 + 2);
  v15 = v40[1];
  v8 = v41;
  v14 = v42;
  if (!v43)
  {
    goto LABEL_19;
  }

  v20 = (v43 - 1) & v43;
  v21 = __clz(__rbit64(v43)) | (v42 << 6);
  v22 = (v41 + 64) >> 6;
LABEL_27:
  v27 = *(*(result + 48) + 8 * v21);
  while (1)
  {
    v28 = *(v4 + 3);
    v29 = (v28 >> 1);
    if ((v28 >> 1) < a2 + 1)
    {
      break;
    }

    if (a2 < v29)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v4 + 2) = a2;
  }

  v38 = v22;
  v39 = result;
  v33 = v15;
  v34 = v4;
  v35 = v20;
  v36 = sub_1D8ECC958((v28 > 1), a2 + 1, 1, v34);
  v20 = v35;
  v15 = v33;
  v4 = v36;
  v22 = v38;
  result = v39;
  v29 = (*(v4 + 3) >> 1);
  if (a2 >= v29)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v4[8 * a2++ + 32] = v27;
    if (!v20)
    {
      break;
    }

LABEL_34:
    v30 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = *(*(result + 48) + ((v14 << 9) | (8 * v30)));
    if (a2 == v29)
    {
      a2 = v29;
      goto LABEL_30;
    }
  }

  v31 = v14;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 >= v22)
    {
      break;
    }

    v20 = *(v15 + 8 * v32);
    ++v31;
    if (v20)
    {
      v14 = v32;
      goto LABEL_34;
    }
  }

  if (v22 <= v14 + 1)
  {
    v37 = v14 + 1;
  }

  else
  {
    v37 = v22;
  }

  v41 = v8;
  v42 = v37 - 1;
  v43 = 0;
  *(v4 + 2) = a2;
LABEL_13:
  result = sub_1D8D1B144();
  *v2 = v4;
  return result;
}

uint64_t sub_1D8E30A08(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8ECC958(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8E30AF4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8ECE510(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8E30C0C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8E30D50(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = MEMORY[0x1E69E7CC0];
        v86 = MEMORY[0x1E69E7CC0];
        v84 = a2 + 32;
        while (1)
        {
          v85 = v6;
          v9 = (v7 + 240 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v11 = v9[5];
            v107 = v9[4];
            v108 = v11;
            v12 = v9[3];
            v105 = v9[2];
            v106 = v12;
            v13 = v9[9];
            v111 = v9[8];
            v112 = v13;
            v14 = v9[7];
            v109 = v9[6];
            v110 = v14;
            v15 = v9[14];
            v116 = v9[13];
            v117 = v15;
            v16 = v9[12];
            v114 = v9[11];
            v115 = v16;
            v113 = v9[10];
            v17 = v9[1];
            v103 = *v9;
            v104 = v17;
            v5 = v10 + 1;
            v18 = *(v8 + 16);
            if (v18 >= v3)
            {
              break;
            }

            sub_1D8E2D01C(&v103, &v88);
            result = swift_isUniquelyReferenced_nonNull_native();
            v118 = v8;
            if ((result & 1) == 0)
            {
              result = sub_1D8E31360(0, v18 + 1, 1);
              v8 = v118;
            }

            v20 = *(v8 + 16);
            v19 = *(v8 + 24);
            if (v20 >= v19 >> 1)
            {
              result = sub_1D8E31360((v19 > 1), v20 + 1, 1);
              v8 = v118;
            }

            *(v8 + 16) = v20 + 1;
            v21 = (v8 + 240 * v20);
            v22 = v103;
            v23 = v105;
            v21[3] = v104;
            v21[4] = v23;
            v21[2] = v22;
            v24 = v106;
            v25 = v107;
            v26 = v109;
            v21[7] = v108;
            v21[8] = v26;
            v21[5] = v24;
            v21[6] = v25;
            v27 = v110;
            v28 = v111;
            v29 = v113;
            v21[11] = v112;
            v21[12] = v29;
            v21[9] = v27;
            v21[10] = v28;
            v30 = v114;
            v31 = v115;
            v32 = v117;
            v21[15] = v116;
            v21[16] = v32;
            v21[13] = v30;
            v21[14] = v31;
            v9 += 15;
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v85 >= v18)
          {
            goto LABEL_32;
          }

          v33 = (v8 + 240 * v85);
          v34 = v33[2];
          v35 = v33[4];
          v89 = v33[3];
          v90 = v35;
          v88 = v34;
          v36 = v33[5];
          v37 = v33[6];
          v38 = v33[8];
          v93 = v33[7];
          v94 = v38;
          v91 = v36;
          v92 = v37;
          v39 = v33[9];
          v40 = v33[10];
          v41 = v33[12];
          v97 = v33[11];
          v98 = v41;
          v95 = v39;
          v96 = v40;
          v42 = v33[13];
          v43 = v33[14];
          v44 = v33[16];
          v101 = v33[15];
          v102 = v44;
          v99 = v42;
          v100 = v43;
          sub_1D8E2D01C(&v103, v87);
          sub_1D8E2D01C(&v88, v87);
          v45 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E31360(0, *(v86 + 16) + 1, 1);
            v45 = v119;
          }

          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D8E31360((v47 > 1), v48 + 1, 1);
            v45 = v119;
          }

          *(v45 + 16) = v48 + 1;
          v86 = v45;
          v49 = (v45 + 240 * v48);
          v50 = v88;
          v51 = v90;
          v49[3] = v89;
          v49[4] = v51;
          v49[2] = v50;
          v52 = v91;
          v53 = v92;
          v54 = v94;
          v49[7] = v93;
          v49[8] = v54;
          v49[5] = v52;
          v49[6] = v53;
          v55 = v95;
          v56 = v96;
          v57 = v98;
          v49[11] = v97;
          v49[12] = v57;
          v49[9] = v55;
          v49[10] = v56;
          v58 = v99;
          v59 = v100;
          v60 = v102;
          v49[15] = v101;
          v49[16] = v60;
          v49[13] = v58;
          v49[14] = v59;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D8F5DE34(v8);
            v8 = result;
          }

          if (v85 >= *(v8 + 16))
          {
            goto LABEL_33;
          }

          v61 = (v8 + 240 * v85);
          v62 = v61[2];
          v63 = v61[4];
          v87[1] = v61[3];
          v87[2] = v63;
          v87[0] = v62;
          v64 = v61[5];
          v65 = v61[6];
          v66 = v61[8];
          v87[5] = v61[7];
          v87[6] = v66;
          v87[3] = v64;
          v87[4] = v65;
          v67 = v61[9];
          v68 = v61[10];
          v69 = v61[12];
          v87[9] = v61[11];
          v87[10] = v69;
          v87[7] = v67;
          v87[8] = v68;
          v70 = v61[13];
          v71 = v61[14];
          v72 = v61[16];
          v87[13] = v61[15];
          v87[14] = v72;
          v87[11] = v70;
          v87[12] = v71;
          v73 = v103;
          v74 = v105;
          v61[3] = v104;
          v61[4] = v74;
          v61[2] = v73;
          v75 = v106;
          v76 = v107;
          v77 = v109;
          v61[7] = v108;
          v61[8] = v77;
          v61[5] = v75;
          v61[6] = v76;
          v78 = v110;
          v79 = v111;
          v80 = v113;
          v61[11] = v112;
          v61[12] = v80;
          v61[9] = v78;
          v61[10] = v79;
          v81 = v114;
          v82 = v115;
          v83 = v117;
          v61[15] = v116;
          v61[16] = v83;
          v61[13] = v81;
          v61[14] = v82;
          result = sub_1D8E2D078(v87);
          if ((v85 + 1) < v3)
          {
            v6 = v85 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v84;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v86 = MEMORY[0x1E69E7CC0];
LABEL_28:

      return v86;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D8E31114(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DE34(v2);
  }

  v3 = *(v2 + 2);
  v60[0] = (v2 + 32);
  v60[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 272;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 5) >= *(v12 - 25))
          {
            break;
          }

          v13 = v12 - 240;
          v14 = *v12;
          v15 = *(v12 + 2);
          v46 = *(v12 + 1);
          v47 = v15;
          v45 = v14;
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          v18 = *(v12 + 6);
          v50 = *(v12 + 5);
          v51 = v18;
          v48 = v16;
          v49 = v17;
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          v21 = *(v12 + 10);
          v54 = *(v12 + 9);
          v55 = v21;
          v53 = v20;
          v52 = v19;
          v22 = *(v12 + 11);
          v23 = *(v12 + 12);
          v24 = *(v12 + 14);
          v58 = *(v12 + 13);
          v59 = v24;
          v56 = v22;
          v57 = v23;
          v25 = *(v12 - 2);
          *(v12 + 12) = *(v12 - 3);
          *(v12 + 13) = v25;
          *(v12 + 14) = *(v12 - 1);
          v26 = *(v12 - 6);
          *(v12 + 8) = *(v12 - 7);
          *(v12 + 9) = v26;
          v27 = *(v12 - 4);
          *(v12 + 10) = *(v12 - 5);
          *(v12 + 11) = v27;
          v28 = *(v12 - 10);
          *(v12 + 4) = *(v12 - 11);
          *(v12 + 5) = v28;
          v29 = *(v12 - 8);
          *(v12 + 6) = *(v12 - 9);
          *(v12 + 7) = v29;
          v30 = *(v12 - 14);
          *v12 = *(v12 - 15);
          *(v12 + 1) = v30;
          v31 = *(v12 - 12);
          *(v12 + 2) = *(v12 - 13);
          *(v12 + 3) = v31;
          v32 = v45;
          v33 = v47;
          *(v13 + 1) = v46;
          *(v13 + 2) = v33;
          *v13 = v32;
          v34 = v48;
          v35 = v49;
          v36 = v51;
          *(v13 + 5) = v50;
          *(v13 + 6) = v36;
          *(v13 + 3) = v34;
          *(v13 + 4) = v35;
          v37 = v52;
          v38 = v53;
          v39 = v55;
          *(v13 + 9) = v54;
          *(v13 + 10) = v39;
          *(v13 + 7) = v37;
          *(v13 + 8) = v38;
          v40 = v56;
          v41 = v57;
          v42 = v59;
          *(v13 + 13) = v58;
          *(v13 + 14) = v42;
          *(v13 + 11) = v40;
          *(v13 + 12) = v41;
          v12 -= 240;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 240;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v45 = v7 + 32;
    *(&v45 + 1) = v6;
    sub_1D8E33DB8(&v45, v44, v60, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1D8E31320(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E31A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E31340(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E31B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E31360(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E31C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E31380(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E329A8(a1, a2, a3, *v3, &qword_1ECAB4630, &unk_1D9192070, &qword_1ECAB4638, &qword_1D918A078);
  *v3 = result;
  return result;
}

size_t sub_1D8E313C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8E32C24(a1, a2, a3, *v3, &qword_1ECAB4768, &qword_1D918A150, type metadata accessor for DownloadConsistency.Issue);
  *v3 = result;
  return result;
}

size_t sub_1D8E31404(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8E32C24(a1, a2, a3, *v3, &qword_1ECAB4690, &qword_1D918A0C0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

size_t sub_1D8E31448(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8E32C24(a1, a2, a3, *v3, &qword_1ECAB44B0, &qword_1D9189F68, type metadata accessor for FairPlayMigrationData);
  *v3 = result;
  return result;
}

char *sub_1D8E3148C(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D15568(a1, a2, a3, *v3, &qword_1ECAB44C8, &qword_1D9191F50);
  *v3 = result;
  return result;
}

char *sub_1D8E314BC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E31F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E314DC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E3205C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E314FC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E32190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E3151C(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E3229C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E3153C(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E329A8(a1, a2, a3, *v3, &qword_1ECAB4718, &qword_1D9192180, &qword_1ECAB75E0, &qword_1D918DE30);
  *v3 = result;
  return result;
}

size_t sub_1D8E3157C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8D4CE34(a1, a2, a3, *v3, &qword_1ECAB4530, &qword_1D9189FC8, &qword_1ECAB4538, &unk_1D91949B0);
  *v3 = result;
  return result;
}

size_t sub_1D8E315BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8E32C24(a1, a2, a3, *v3, &qword_1ECAB46F0, &qword_1D918A110, MEMORY[0x1E69E83A8]);
  *v3 = result;
  return result;
}

char *sub_1D8E31600(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E323C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E31620(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E324E0(a1, a2, a3, *v3, &qword_1ECAB4510, &qword_1D9189FB0, &qword_1ECAB4518, &qword_1D9189FB8);
  *v3 = result;
  return result;
}

void *sub_1D8E31660(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E32628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E31680(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E329A8(a1, a2, a3, *v3, &qword_1ECAB4670, &qword_1D918A0A8, &qword_1ECAB4678, &qword_1D918A0B0);
  *v3 = result;
  return result;
}

void *sub_1D8E316C0(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E32770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E316E0(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E329A8(a1, a2, a3, *v3, &qword_1ECAB4650, &qword_1D918A088, &qword_1ECAB4658, &qword_1D918A090);
  *v3 = result;
  return result;
}

char *sub_1D8E31720(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E331B0(a1, a2, a3, *v3, &qword_1ECAB4508, &qword_1D9189FA8);
  *v3 = result;
  return result;
}

void *sub_1D8E31758(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E329A8(a1, a2, a3, *v3, &qword_1ECAB4600, &qword_1D918A068, &qword_1ECAB4608, &qword_1D91AC8D0);
  *v3 = result;
  return result;
}

char *sub_1D8E31798(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E328A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D8E317B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8E32C24(a1, a2, a3, *v3, &qword_1ECAB44D8, &qword_1D91B6370, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *v3 = result;
  return result;
}

void *sub_1D8E317FC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E32E00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E3181C(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E32F34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E3183C(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E3307C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E3185C(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E331B0(a1, a2, a3, *v3, &qword_1ECAB45E8, &qword_1D918A050);
  *v3 = result;
  return result;
}

void *sub_1D8E31894(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E333F0(a1, a2, a3, *v3, &qword_1ECAB45C0, &qword_1D918A030);
  *v3 = result;
  return result;
}

void *sub_1D8E318CC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E332BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E318EC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E333F0(a1, a2, a3, *v3, &qword_1ECAB45B8, &qword_1D918A028);
  *v3 = result;
  return result;
}

char *sub_1D8E31924(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8E31944(void *a1, int64_t a2, char a3)
{
  result = sub_1D8E33628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E31964(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33770(a1, a2, a3, *v3, &qword_1ECAB4580, &unk_1D9192000);
  *v3 = result;
  return result;
}

char *sub_1D8E3199C(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E3388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E319BC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E319DC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E319FC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33B98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8E31A1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D8E31B20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A8, &qword_1D918A018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45B0, &qword_1D918A020);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E31C54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4788, &qword_1D918A158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E31D78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4778, &unk_1D9194230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4780, &qword_1D918B150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E31F3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4720, &qword_1D918A130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E3205C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4710, &qword_1D918A128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E32190(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4540, &qword_1D9189FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E3229C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E323C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E0, &qword_1D918A108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E324E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D8E32628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4660, &qword_1D918A098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4668, &qword_1D918A0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E32770(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F0, &qword_1D9189F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E328A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB640, &qword_1D9192060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D8E329A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D8E32ADC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F0, &qword_1D918A058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D8E32C24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D8E32E00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F8, &qword_1D9189F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4500, &qword_1D9189FA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E32F34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44E0, &qword_1D9189F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44E8, &qword_1D9189F88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E3307C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44B8, &qword_1D9189F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44C0, &qword_1D9189F78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E331B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D8E332BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45C8, &qword_1D918A038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45D0, &qword_1D918A040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8E333F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 < a4 || v12 + 4 >= &a4[3 * v10 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v12 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D8E33528(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4588, &qword_1D918A000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1D8E33628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4590, &qword_1D918A008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4598, &qword_1D918A010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8E33770(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D8E3388C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4578, &qword_1D9189FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D8E33990(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4558, &unk_1D9191FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D8E33A94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4570, &qword_1D9189FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_1D8E33B98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4560, &qword_1D9189FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D8E33CA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4568, &qword_1D9189FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1D8E33DB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8F5DE20(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D8E3448C((*a3 + 240 * *v87), (*a3 + 240 * *v89), (*a3 + 240 * v90), v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 240 * v6 + 40);
      v10 = 240 * v8;
      v11 = *a3 + 240 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 520);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 30;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 240 * v6 - 240;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v119 = *(v22 + v10 + 192);
            v121 = *(v22 + v10 + 208);
            v123 = *(v22 + v10 + 224);
            v111 = *(v22 + v10 + 128);
            v113 = *(v22 + v10 + 144);
            v115 = *(v22 + v10 + 160);
            v117 = *(v22 + v10 + 176);
            v103 = *(v22 + v10 + 64);
            v105 = *(v22 + v10 + 80);
            v107 = *(v22 + v10 + 96);
            v109 = *(v22 + v10 + 112);
            v95 = *(v22 + v10);
            v97 = *(v22 + v10 + 16);
            v99 = *(v22 + v10 + 32);
            v101 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0xF0uLL);
            v21[12] = v119;
            v21[13] = v121;
            v21[14] = v123;
            v21[8] = v111;
            v21[9] = v113;
            v21[10] = v115;
            v21[11] = v117;
            v21[4] = v103;
            v21[5] = v105;
            v21[6] = v107;
            v21[7] = v109;
            *v21 = v95;
            v21[1] = v97;
            v21[2] = v99;
            v21[3] = v101;
          }

          ++v20;
          v18 -= 240;
          v10 += 240;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8ECC734(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1D8ECC734((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1D8E3448C((*a3 + 240 * *v80), (*a3 + 240 * *v82), (*a3 + 240 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 240 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 40) >= *(v27 - 200))
    {
LABEL_29:
      ++v6;
      v24 += 240;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 240);
    v120 = *(v27 + 192);
    v122 = *(v27 + 208);
    v124 = *(v27 + 224);
    v112 = *(v27 + 128);
    v114 = *(v27 + 144);
    v116 = *(v27 + 160);
    v118 = *(v27 + 176);
    v104 = *(v27 + 64);
    v106 = *(v27 + 80);
    v108 = *(v27 + 96);
    v110 = *(v27 + 112);
    v96 = *v27;
    v98 = *(v27 + 16);
    v100 = *(v27 + 32);
    v102 = *(v27 + 48);
    v29 = *(v27 - 32);
    *(v27 + 192) = *(v27 - 48);
    *(v27 + 208) = v29;
    *(v27 + 224) = *(v27 - 16);
    v30 = *(v27 - 96);
    *(v27 + 128) = *(v27 - 112);
    *(v27 + 144) = v30;
    v31 = *(v27 - 64);
    *(v27 + 160) = *(v27 - 80);
    *(v27 + 176) = v31;
    v32 = *(v27 - 160);
    *(v27 + 64) = *(v27 - 176);
    *(v27 + 80) = v32;
    v33 = *(v27 - 128);
    *(v27 + 96) = *(v27 - 144);
    *(v27 + 112) = v33;
    v34 = *(v27 - 224);
    *v27 = *(v27 - 240);
    *(v27 + 16) = v34;
    v35 = *(v27 - 192);
    *(v27 + 32) = *(v27 - 208);
    *(v27 + 48) = v35;
    v28[12] = v120;
    v28[13] = v122;
    v28[14] = v124;
    v28[8] = v112;
    v28[9] = v114;
    v28[10] = v116;
    v28[11] = v118;
    v28[4] = v104;
    v28[5] = v106;
    v28[6] = v108;
    v28[7] = v110;
    *v28 = v96;
    v28[1] = v98;
    v27 -= 240;
    v28[2] = v100;
    v28[3] = v102;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}