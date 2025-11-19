void sub_1DD514188(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1DD51441C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for MeCardContactGenerator()
{
  result = qword_1EE161800;
  if (!qword_1EE161800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5145C0()
{
  sub_1DD514644();
  if (v0 <= 0x3F)
  {
    sub_1DD63D168();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD514644()
{
  if (!qword_1EE1602D0)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1602D0);
    }
  }
}

uint64_t sub_1DD5146A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
  v7 = sub_1DD640118();

  v44 = v7;
  result = sub_1DD3CC020(v7);
  v40 = a3;
  v41 = a2;
  v39 = a1;
  if (result)
  {
    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v43 = v7 & 0xC000000000000001;
      v11 = MEMORY[0x1E69E7CC0];
      v42 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v12 = v43 ? MEMORY[0x1E12B2C10](v10, v44) : *(v44 + 8 * v10 + 32);
        v13 = v12;
        v14 = [v12 label];
        if (v14)
        {
          break;
        }

LABEL_23:
        if (v9 == ++v10)
        {
          goto LABEL_26;
        }
      }

      v15 = v14;
      v16 = sub_1DD63FDD8();
      v18 = v17;

      v19 = [v13 value];
      v20 = [v19 name];

      v21 = sub_1DD63FDD8();
      v23 = v22;

      if (sub_1DD640008())
      {
        v24 = sub_1DD640018();

        if (v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = *(v42 + 16);
            sub_1DD3BF620();
            v42 = v34;
          }

          v26 = *(v42 + 16);
          v25 = *(v42 + 24);
          if (v26 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_14_34(v25);
            sub_1DD3BF620();
            v42 = v35;
          }

          *(v42 + 16) = v26 + 1;
          v27 = (v42 + 32 * v26);
LABEL_22:
          v27[4] = v16;
          v27[5] = v18;
          v27[6] = v21;
          v27[7] = v23;
          goto LABEL_23;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v11 + 16);
        sub_1DD3BF620();
        v11 = v31;
      }

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_14_34(v28);
        sub_1DD3BF620();
        v11 = v32;
      }

      *(v11 + 16) = v29 + 1;
      v27 = (v11 + 32 * v29);
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
LABEL_26:

    *v40 = v42;
    *(v40 + 1) = v11;
    v36 = *(type metadata accessor for MeCardContactGenerator() + 24);
    v37 = sub_1DD63D168();
    v38 = *(*(v37 - 8) + 32);

    return v38(&v40[v36], v41, v37);
  }

  return result;
}

uint64_t sub_1DD5149D0(void *a1)
{
  v3 = sub_1DD63D168();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for StringTokenizer();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[23];
  if (v18)
  {
    v19 = a1[22];
  }

  else
  {
    v19 = a1[3];
    v18 = a1[4];
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v40 = v17;
    v21 = type metadata accessor for MeCardContactGenerator();
    v22 = *(v6 + 16);
    v22(v13, v41 + *(v21 + 24), v3);
    v22(v11, v13, v3);
    if (sub_1DD4F9BB8())
    {
      v23 = 1;
    }

    else
    {
      v44[0] = sub_1DD63D118();
      v44[1] = v28;
      v42 = 24938;
      v43 = 0xE200000000000000;
      sub_1DD3B52B8();
      v39 = a1;
      sub_1DD3B530C();
      a1 = v39;
      v23 = sub_1DD63FD48();
    }

    v29 = v40;
    sub_1DD5E8D74(v11, v23 & 1, v40);
    (*(v6 + 8))(v13, v3);
    memcpy(v44, a1, 0x108uLL);
    v30 = sub_1DD586B64(v29, 0, v44);
    v31 = sub_1DD514E60(v19, v18);

    if (v31[2])
    {
      MEMORY[0x1EEE9AC00](v32);
      *(&v39 - 2) = v30;
      *(&v39 - 1) = v29;
      sub_1DD516838(sub_1DD51701C, &v39 - 4, v31);

      MEMORY[0x1EEE9AC00](v33);
      *(&v39 - 2) = a1;
      sub_1DD604ECC();
      v27 = v34;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
      v36 = *(v35 + 72);
      v37 = *(v35 + 80);
      v27 = OUTLINED_FUNCTION_15_34();
      *(v27 + 16) = xmmword_1DD643F90;
      sub_1DD4BF298(a1, v29 + v27);
    }

    sub_1DD4BF460(v29);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    v25 = *(v24 + 72);
    v26 = *(v24 + 80);
    v27 = OUTLINED_FUNCTION_15_34();
    *(v27 + 16) = xmmword_1DD643F90;
    sub_1DD4BF298(a1, v27 + v1);
  }

  return v27;
}

unint64_t *sub_1DD514E60(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v93 - v9;
  v110 = a2;
  v111 = MEMORY[0x1E69E7CD0];
  v102 = a1;
  v109 = a1;
  v11 = *(type metadata accessor for MeCardContactGenerator() + 24);
  v12 = sub_1DD63D168();
  (*(*(v12 - 8) + 16))(v10, v4 + v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  v13 = sub_1DD3B7F10();
  sub_1DD640648();
  sub_1DD401EB8(v10);
  v94 = sub_1DD532D04();
  v93 = v4;
  v15 = *(v4 + 8);
  v16 = *(v15 + 16);
  v100 = a2;
  if (v16)
  {
    v3 = (v15 + 56);
    *&v14 = 136315394;
    v105 = v14;
    v106 = v13;
    do
    {
      v10 = *(v3 - 3);
      v17 = *(v3 - 2);
      v18 = *(v3 - 1);
      v19 = *v3;
      v109 = v10;
      v110 = v17;
      v107 = v102;
      v108 = a2;

      if (sub_1DD640698())
      {
      }

      else
      {
        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v20 = sub_1DD63F9F8();
        __swift_project_value_buffer(v20, qword_1EE16F068);

        v21 = sub_1DD63F9D8();
        v22 = sub_1DD640368();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v23 = v105;

          v24 = sub_1DD39565C(v10, v17, &v109);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2080;

          v10 = sub_1DD39565C(v18, v19, &v109);

          *(v23 + 14) = v10;
          _os_log_impl(&dword_1DD38D000, v21, v22, "adding relative via customRelations into matchingNames: label=%s -> %s", v23, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0](v25);
          a2 = v100;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0](v26);
        }

        sub_1DD56CE00(&v109, v18, v19);
      }

      v3 += 4;
      --v16;
    }

    while (v16);
  }

  if (v94 == 376)
  {
    v3 = v111;
    if (!v111[2])
    {
LABEL_57:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v81 = sub_1DD63F9F8();
      __swift_project_value_buffer(v81, qword_1EE16F068);

      v49 = sub_1DD63F9D8();
      v82 = sub_1DD640368();

      if (os_log_type_enabled(v49, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v109 = v84;
        *v83 = 136315138;
        *(v83 + 4) = sub_1DD39565C(v102, a2, &v109);
        _os_log_impl(&dword_1DD38D000, v49, v82, "found no relatives. label=%s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v85);
LABEL_61:
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v86);
        goto LABEL_62;
      }

      goto LABEL_62;
    }

LABEL_33:
    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

  v27 = sub_1DD534E3C(v94);
  v99 = *(v27 + 16);
  if (v99)
  {
    v28 = OUTLINED_FUNCTION_9_43(v27);
    *&v30 = 136315394;
    v103 = v30;
    v97 = v10;
    v98 = v28;
    while (v29 < *(v28 + 16))
    {
      if (v10)
      {
        v101 = v29;
        v31 = (v96 + 16 * v29);
        v32 = *v31;
        v33 = v31[1];

        v34 = v95;
        do
        {
          v3 = *(v34 - 1);
          v35 = *v34;
          v36 = *(v34 - 3) == v32 && *(v34 - 2) == v33;
          if (v36 || (v37 = *(v34 - 2), (sub_1DD640CD8() & 1) != 0))
          {
            v38 = qword_1EE165FB0;

            if (v38 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            v39 = sub_1DD63F9F8();
            __swift_project_value_buffer(v39, qword_1EE16F068);

            v40 = sub_1DD63F9D8();
            v41 = sub_1DD640368();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              LODWORD(v105) = v41;
              v43 = v42;
              v106 = swift_slowAlloc();
              v109 = v106;
              *v43 = v103;
              *(v43 + 4) = sub_1DD39565C(v32, v33, &v109);
              *(v43 + 12) = 2080;

              v44 = sub_1DD39565C(v3, v35, &v109);
              v104 = v3;
              v45 = v44;

              *(v43 + 14) = v45;
              v3 = v104;
              _os_log_impl(&dword_1DD38D000, v40, v105, "adding relative into matchingNames: label=%s -> %s", v43, 0x16u);
              OUTLINED_FUNCTION_16_35();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0](v46);
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0](v47);
            }

            sub_1DD56CE00(&v109, v3, v35);
          }

          v34 += 4;
          --v10;
        }

        while (v10);

        a2 = v100;
        v29 = v101;
        v10 = v97;
        v28 = v98;
      }

      if (++v29 == v99)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:

    v3 = v111;
    if (v111[2])
    {
      goto LABEL_33;
    }

    v59 = sub_1DD538AD0(v94);
    v99 = *(v59 + 16);
    if (!v99)
    {
LABEL_56:

      goto LABEL_57;
    }

    v60 = OUTLINED_FUNCTION_9_43(v59);
    *&v62 = 136315394;
    v103 = v62;
    v97 = v10;
    v98 = v60;
    while (v61 < *(v60 + 16))
    {
      if (v10)
      {
        v101 = v61;
        v63 = (v96 + 16 * v61);
        v65 = *v63;
        v64 = v63[1];

        v66 = v95;
        do
        {
          v68 = *(v66 - 1);
          v67 = *v66;
          v69 = *(v66 - 3) == v65 && *(v66 - 2) == v64;
          if (v69 || (v70 = *(v66 - 2), (sub_1DD640CD8() & 1) != 0))
          {
            v71 = qword_1EE165FB0;

            if (v71 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            v72 = sub_1DD63F9F8();
            __swift_project_value_buffer(v72, qword_1EE16F068);

            v73 = sub_1DD63F9D8();
            v74 = sub_1DD640368();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              LODWORD(v105) = v74;
              v76 = v75;
              v106 = swift_slowAlloc();
              v109 = v106;
              *v76 = v103;
              *(v76 + 4) = sub_1DD39565C(v65, v64, &v109);
              *(v76 + 12) = 2080;

              v77 = sub_1DD39565C(v68, v67, &v109);
              v104 = v68;
              v78 = v77;

              *(v76 + 14) = v78;
              v68 = v104;
              _os_log_impl(&dword_1DD38D000, v73, v105, "adding relative via fallback semantic labels into matchingNames: label=%s -> %s", v76, 0x16u);
              OUTLINED_FUNCTION_16_35();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0](v79);
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0](v80);
            }

            sub_1DD56CE00(&v109, v68, v67);
          }

          v66 += 4;
          --v10;
        }

        while (v10);

        v3 = v111;
        a2 = v100;
        v61 = v101;
        v10 = v97;
        v60 = v98;
      }

      if (v3[2])
      {

        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v88 = sub_1DD63F9F8();
        __swift_project_value_buffer(v88, qword_1EE16F068);
        v49 = sub_1DD63F9D8();
        v50 = sub_1DD640368();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v109 = v52;
          *v51 = 136315138;

          v89 = sub_1DD640278();
          v91 = v90;

          v92 = sub_1DD39565C(v89, v91, &v109);

          *(v51 + 4) = v92;
          v57 = "found relatives via fallback semantic labels. names=%s";
          goto LABEL_36;
        }

        goto LABEL_62;
      }

      if (++v61 == v99)
      {
        goto LABEL_56;
      }
    }
  }

  __break(1u);
LABEL_69:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_34:
  v48 = sub_1DD63F9F8();
  __swift_project_value_buffer(v48, qword_1EE16F068);
  v49 = sub_1DD63F9D8();
  v50 = sub_1DD640368();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v109 = v52;
    *v51 = 136315138;

    v53 = sub_1DD640278();
    v55 = v54;

    v56 = sub_1DD39565C(v53, v55, &v109);

    *(v51 + 4) = v56;
    v57 = "found relatives via exact label matches. names=%s";
LABEL_36:
    _os_log_impl(&dword_1DD38D000, v49, v50, v57, v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0](v58);
    goto LABEL_61;
  }

LABEL_62:

  return v3;
}

uint64_t sub_1DD5159EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = 1;
    v4 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(*a1, *(a1 + 8), 1, 1);
    v5 = sub_1DD41859C(v4);
    if ((sub_1DD5839F8(v5, a2) & 1) == 0)
    {
      v3 = sub_1DD5839F8(a2, v5);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1DD515A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1DD4BF298(a2, a3);
  v6 = a3[8];

  a3[7] = v5;
  a3[8] = v4;
  v7 = a3[10];

  a3[9] = 0;
  a3[10] = 0xE000000000000000;
  v8 = a3[12];

  a3[11] = 0;
  a3[12] = 0xE000000000000000;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  result = type metadata accessor for ContactResolver.SignalSet(0);
  v9[*(result + 140)] = 1;
  return result;
}

void *sub_1DD515B18(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_1DD515BB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v31 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v8 + 40);
        sub_1DD640E28();

        sub_1DD63FD28();
        v20 = sub_1DD640E78();
        OUTLINED_FUNCTION_1_82(v20);
        if (((v23 << v22) & ~*(v11 + 8 * v21)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v11 + 8 * v25) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v8 + 48) + 16 * v24);
        *v29 = v17;
        v29[1] = v18;
        OUTLINED_FUNCTION_5_60();
        if (v30)
        {
          goto LABEL_29;
        }

        v4 = v31;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1DD515D8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1DD63C868();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE418, &qword_1DD657608);
  result = sub_1DD640888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1DD51705C();
    result = sub_1DD63FCE8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1DD51607C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE410, &qword_1DD6575F8);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v12 | (v10 << 6)));
        v17 = *(v8 + 40);
        sub_1DD640E28();

        sub_1DD48E664(v30);
        v18 = sub_1DD640E78();
        OUTLINED_FUNCTION_1_82(v18);
        if (((v21 << v20) & ~*(v11 + 8 * v19)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v22 != v24 || (v23 & 1) == 0)
          {
            v25 = v22 == v24;
            if (v22 == v24)
            {
              v22 = 0;
            }

            v23 |= v25;
            if (*(v11 + 8 * v22) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_7_39();
        *(v11 + v26) |= v27;
        *(*(v8 + 48) + 8 * v28) = v16;
        OUTLINED_FUNCTION_5_60();
        if (v29)
        {
          goto LABEL_29;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1DD516230(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 48;
      v35 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v18 = *(v17 + 8);
        v38 = *(v17 + 16);
        v39 = *v17;
        v37 = *(v17 + 24);
        v36 = *(v17 + 32);
        v19 = *(v17 + 40);
        v20 = *(v8 + 40);
        sub_1DD640E28();
        if (v19)
        {
          if (v19 == 1)
          {
            MEMORY[0x1E12B3140](1);

            OUTLINED_FUNCTION_10_38();
            MEMORY[0x1E12B3140](v38);
          }

          else
          {
            MEMORY[0x1E12B3140](2);

            OUTLINED_FUNCTION_10_38();
            sub_1DD63FD28();
          }
        }

        else
        {
          MEMORY[0x1E12B3140](0);

          OUTLINED_FUNCTION_10_38();
          MEMORY[0x1E12B3140](v38);
          sub_1DD640E48();
          if (v36)
          {
            sub_1DD63FD28();
          }
        }

        v21 = sub_1DD640E78();
        OUTLINED_FUNCTION_1_82(v21);
        if (((v24 << v23) & ~*(v11 + 8 * v22)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v11 + 8 * v25) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_31;
            }
          }

          goto LABEL_34;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_31:
        OUTLINED_FUNCTION_7_39();
        *(v11 + v29) |= v30;
        v32 = *(v8 + 48) + 48 * v31;
        *v32 = v39;
        *(v32 + 8) = v18;
        *(v32 + 16) = v38;
        *(v32 + 24) = v37;
        *(v32 + 32) = v33;
        *(v32 + 40) = v19;
        OUTLINED_FUNCTION_5_60();
        if (v34)
        {
          goto LABEL_35;
        }

        v4 = v35;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1DD5164E8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v5 = sub_1DD63C868();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a3 + 32);
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v43 = v13;
    v44 = v5;
    v39 = &v36;
    MEMORY[0x1EEE9AC00](v11);
    v37 = v14;
    v38 = (&v36 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v14, v38);
    v15 = 0;
    v46 = a3;
    OUTLINED_FUNCTION_8_47();
    v18 = v17 & v16;
    v13 = ((v19 + 63) >> 6);
    v40 = 0;
    v41 = v8 + 16;
    v42 = v8 + 8;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
LABEL_10:
      v24 = v20 | (v15 << 6);
      v14 = v8;
      v5 = v43;
      (*(v8 + 16))(v43, *(v46 + 48) + *(v8 + 72) * v24, v44);
      v25 = v48;
      v26 = v45(v5);
      v48 = v25;
      if (v25)
      {
        v33 = OUTLINED_FUNCTION_13_35();
        v34(v33);

        swift_willThrow();
        goto LABEL_16;
      }

      v27 = v26;
      v28 = OUTLINED_FUNCTION_13_35();
      v29(v28);
      v18 = v47;
      if (v27)
      {
        *(v38 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_15:
          a2 = sub_1DD515D8C(v38, v37, v40, v46);
          goto LABEL_16;
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_15;
      }

      ++v21;
      if (*(a3 + 8 * v15))
      {
        OUTLINED_FUNCTION_14_3();
        v47 = v23 & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  a2 = sub_1DD515B18(v35, v14, a3, v45, a2, sub_1DD516AFC);

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1E12B3DA0]();
LABEL_16:
  v31 = *MEMORY[0x1E69E9840];
  return a2;
}

void *sub_1DD516838(uint64_t (*a1)(void *), void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v33 = a1;
  v35[2] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v34 = v4;
    v31 = &v28;
    MEMORY[0x1EEE9AC00](a1);
    v29 = v8;
    v30 = (&v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v30);
    v32 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v18 = (*(v5 + 48) + 16 * v17);
      v19 = v18[1];
      v35[0] = *v18;
      v35[1] = v19;

      v20 = v34;
      v21 = v33(v35);
      v34 = v20;
      if (v20)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v22 = v21;

      v5 = v4;
      if (v22)
      {
        *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1DD515BB8(v30, v29, v32, v5);
          a2 = v24;
          goto LABEL_18;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  a2 = sub_1DD515B18(v27, v8, v5, v33, a2, sub_1DD516D5C);

  MEMORY[0x1E12B3DA0](v27, -1, -1);
LABEL_18:
  v25 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DD516AFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1DD63C868();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_1DD515D8C(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD516D5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1DD515BB8(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DD516ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v21 = 0;
  v6 = 0;
  OUTLINED_FUNCTION_8_47();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_9:
    v16 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v16);

    v17 = a4(&v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1DD51607C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_14;
    }

    ++v13;
    if (*(a3 + 8 * v6))
    {
      OUTLINED_FUNCTION_14_3();
      v9 = v15 & v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1DD51705C()
{
  result = qword_1ECCDC180;
  if (!qword_1ECCDC180)
  {
    sub_1DD63C868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_38()
{

  return sub_1DD63FD28();
}

uint64_t sub_1DD517124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001DD66C400 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000029 && 0x80000001DD66F0A0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD66C3A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000026 && 0x80000001DD66C3D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD517280(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5172FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE430, &qword_1DD6576C8);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD51780C();
  sub_1DD640EF8();
  v17 = 0;
  OUTLINED_FUNCTION_1_83();
  if (!v1)
  {
    v16 = 1;
    OUTLINED_FUNCTION_1_83();
    v15 = 2;
    OUTLINED_FUNCTION_1_83();
    v14 = 3;
    sub_1DD640C38();
  }

  return (*(v6 + 8))(v10, v3);
}

double sub_1DD517488(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE420, &qword_1DD6576C0);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD51780C();
  sub_1DD640ED8();
  v14[15] = 0;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v14[14] = 1;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v14[13] = 2;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v14[12] = 3;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B48();
  v13 = v12;
  (*(v5 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1DD517684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD517124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5176AC(uint64_t a1)
{
  v2 = sub_1DD51780C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5176E8(uint64_t a1)
{
  v2 = sub_1DD51780C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD517724(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD517488(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 1) = BYTE1(v4) & 1;
    *(a2 + 2) = BYTE2(v4) & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1DD517768(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v1[1];
  v1[2];
  return sub_1DD5172FC(a1);
}

uint64_t sub_1DD5177B0(double *a1, double *a2)
{
  if (*(a1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (*(a1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 1))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (*(a2 + 2))
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1DD517108(v3 | v4, v6 | v7, a1[1], a2[1]);
}

unint64_t sub_1DD51780C()
{
  result = qword_1ECCDE428;
  if (!qword_1ECCDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MegadomeECRTrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD517940()
{
  result = qword_1ECCDE438;
  if (!qword_1ECCDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE438);
  }

  return result;
}

unint64_t sub_1DD517998()
{
  result = qword_1ECCDE440;
  if (!qword_1ECCDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE440);
  }

  return result;
}

unint64_t sub_1DD5179F0()
{
  result = qword_1ECCDE448;
  if (!qword_1ECCDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE448);
  }

  return result;
}

uint64_t sub_1DD517A44(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63D078();
  v12 = OUTLINED_FUNCTION_0(v11);
  v58 = v13;
  v59 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v18 = (v17 - v16);
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v19 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v19, qword_1EE16F068);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    v56 = a1;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_54();
      v60 = OUTLINED_FUNCTION_62();
      *v22 = 136315138;
      v23 = OUTLINED_FUNCTION_1_84();
      *(v22 + 4) = sub_1DD39565C(v23, v24, &v60);
      _os_log_impl(&dword_1DD38D000, v20, v21, "%s Running MegadomeSignalProvider.addSignals()...", v22, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    v57 = v18;
    sub_1DD63D068();
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_4_2();
    }

    v25 = qword_1EE16F0C0;
    v26 = v10 + *(v4 + 20);
    *v26 = "ContactResolver.MegadomeSignalProvider.addSignals";
    *(v26 + 8) = 49;
    *(v26 + 16) = 2;
    v27 = v25;
    sub_1DD63F9B8();
    *(v10 + *(v4 + 24)) = v27;
    v28 = v27;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1DD643F90;
    v30 = sub_1DD6408F8();
    v32 = v31;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1DD392BD8();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_1DD63F998();

    v33 = 256;
    if (!v2[49])
    {
      v33 = 0;
    }

    v2[50];
    v34 = sub_1DD517EC0(v2[40], v33 | v2[48]);
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    v37 = OUTLINED_FUNCTION_9_0(v36);
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v37)
    {
      OUTLINED_FUNCTION_54();
      v60 = OUTLINED_FUNCTION_5_36();
      *v34 = 136315138;
      v38 = OUTLINED_FUNCTION_1_84();
      *(v34 + 4) = sub_1DD39565C(v38, v39, &v60);
      OUTLINED_FUNCTION_27_20();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_23_0();
    }

    v4 = *a1;
    v18 = *(*a1 + 16);
    if (!v18)
    {
      goto LABEL_21;
    }

    v45 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A30(v4);
      v4 = v55;
    }

    a1 = 0;
    v46 = (v4 + 32);
    while (a1 < *(v4 + 16))
    {
      a1 = (a1 + 1);
      sub_1DD5186C8(v46++);
      if (v18 == a1)
      {
        *v56 = v4;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_54();
    v60 = OUTLINED_FUNCTION_5_36();
    *v34 = 136315138;
    v47 = OUTLINED_FUNCTION_1_84();
    *(v34 + 4) = sub_1DD39565C(v47, v48, &v60);
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_23_0();
  }

LABEL_21:
  sub_1DD51CB58();
  sub_1DD41BFFC(v10);
  return (*(v58 + 8))(v57, v59);
}

uint64_t sub_1DD517EC0(char a1, __int16 a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v11, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v12))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v13 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v13, v14, &v31);
    v10 = "%s ❌ Skip due to SiriInference/contact_resolver_search_ecr OFF";
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v3 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v3, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v5))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v6 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v6, v7, &v31);
    v10 = "%s ❌ Skip due to megadomeECRTrialFactors nil";
LABEL_11:
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v8, v9, v10);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
LABEL_12:

    return 0;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v20, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v21))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v22 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v22, v23, &v31);
    v10 = "%s ❌ Skip due to Trial SIRI_VALUE_INFERENCE_MEGADOME_ECR.isMegadomeECREnabled OFF";
    goto LABEL_11;
  }

  if ((a2 & 0x100) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v17))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v18 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v18, v19, &v31);
    v10 = "%s ❌ Skip due to Trial SIRI_VALUE_INFERENCE_CONTACT_RESOLUTION.isMegadomeECREnabled OFF";
    goto LABEL_11;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v24 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v24, qword_1EE16F068);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v26))
  {
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v27 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v27, v28, &v31);
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v29, v30, "%s ✅ isMegadomeECREnabled returning true");
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
  }

  return 1;
}

double sub_1DD5181C0(void *a1, double a2)
{
  if (!a1)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v27, qword_1EE16F068);
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_62();
      v31 = swift_slowAlloc();
      *&v63[0] = OUTLINED_FUNCTION_62();
      *v30 = 136315650;
      v32 = OUTLINED_FUNCTION_1_84();
      *(v30 + 4) = sub_1DD39565C(v32, v33, v63);
      *(v30 + 12) = 2112;
      *(v30 + 14) = 0;
      *v31 = 0;
      *(v30 + 22) = 2048;
      *(v30 + 24) = 0x4002666666666666;
      _os_log_impl(&dword_1DD38D000, v28, v29, "%s Invalid UserDefaults passed in %@. Returning default %f", v30, 0x20u);
      sub_1DD390754(v31, &qword_1ECCDBF90, &qword_1DD6445B0);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_7_44();
      OUTLINED_FUNCTION_0_1();
    }

    return 2.3;
  }

  v3 = a1;
  v4 = sub_1DD63FDA8();
  v5 = [v3 valueForKey_];

  if (!v5)
  {
    memset(v63, 0, sizeof(v63));
    sub_1DD390754(v63, &qword_1ECCDB980, &unk_1DD643DC0);
    if (a2 != 999.999)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v54 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v54, qword_1EE16F068);
      v9 = sub_1DD63F9D8();
      v55 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_9_0(v55))
      {
        goto LABEL_8;
      }

      v56 = OUTLINED_FUNCTION_43_2();
      *&v63[0] = OUTLINED_FUNCTION_62();
      *v56 = 136315394;
      v57 = OUTLINED_FUNCTION_1_84();
      *(v56 + 4) = sub_1DD39565C(v57, v58, v63);
      *(v56 + 12) = 2048;
      *(v56 + 14) = a2;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v59, v60, v61, v62, v56, 0x16u);
      OUTLINED_FUNCTION_3_1();
      goto LABEL_7;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v34 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v34, qword_1EE16F068);
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v36))
    {
      v37 = swift_slowAlloc();
      *&v63[0] = OUTLINED_FUNCTION_41_11();
      *v37 = 136315906;
      v38 = OUTLINED_FUNCTION_1_84();
      *(v37 + 4) = sub_1DD39565C(v38, v39, v63);
      *(v37 + 12) = 2080;
      v40 = OUTLINED_FUNCTION_40_9("com.apple.siri.inference", *&v63[0]);
      *(v37 + 24) = OUTLINED_FUNCTION_30_15(v40, v41, v42, v43, v44, v45, v46, v47, *&v63[0]);
      *(v37 + 32) = 2048;
      *(v37 + 34) = 0x4002666666666666;
      OUTLINED_FUNCTION_27_20();
      _os_log_impl(v48, v49, v50, v51, v52, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_23_0();
    }

    return 2.3;
  }

  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD390754(v63, &qword_1ECCDB980, &unk_1DD643DC0);
  v6 = sub_1DD63FDA8();
  [v3 doubleForKey_];
  a2 = v7;

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640378();
  if (!OUTLINED_FUNCTION_9_0(v10))
  {
    goto LABEL_8;
  }

  v11 = swift_slowAlloc();
  *&v63[0] = OUTLINED_FUNCTION_41_11();
  *v11 = 136315906;
  v12 = OUTLINED_FUNCTION_1_84();
  *(v11 + 4) = sub_1DD39565C(v12, v13, v63);
  *(v11 + 12) = 2080;
  v14 = OUTLINED_FUNCTION_40_9("com.apple.siri.inference", *&v63[0]);
  *(v11 + 24) = OUTLINED_FUNCTION_30_15(v14, v15, v16, v17, v18, v19, v20, v21, *&v63[0]);
  *(v11 + 32) = 2048;
  *(v11 + 34) = a2;
  OUTLINED_FUNCTION_27_20();
  _os_log_impl(v22, v23, v24, v25, v26, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_4_6();
LABEL_7:
  OUTLINED_FUNCTION_0_1();
LABEL_8:

  return a2;
}

void sub_1DD5186C8(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    __swift_project_value_buffer(v8, qword_1EE16F068);
    v20 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (!os_log_type_enabled(v20, v9))
    {
      goto LABEL_20;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v21);
    v12 = "%s Skip as candidateSet.isEmpty";
    goto LABEL_13;
  }

  type metadata accessor for MegadomeClient();
  sub_1DD63F488();
  v3 = sub_1DD63F478();
  sub_1DD518AAC(v2, v3);
  v20 = v4;

  if (!v20)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F068);
    v20 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (!os_log_type_enabled(v20, v9))
    {
      goto LABEL_20;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v21);
    v12 = "%s Skip calling ECR b/c of invalid GDEntityResolutionRequest, i.e. all contacts have no handle";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v20, v9, v12, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
LABEL_14:

    return;
  }

  v5 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1DD51C44C();
  if (!v6)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16F068);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640378();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v21);
      _os_log_impl(&dword_1DD38D000, v15, v16, "%s No GDEntityResolutionResult returned", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
      MEMORY[0x1E12B3DA0](v17, -1, -1);

      goto LABEL_14;
    }

LABEL_20:
    v7 = v20;
    goto LABEL_21;
  }

  v19 = v6;
  sub_1DD519534();

  v7 = v19;
LABEL_21:
}

void sub_1DD518AAC(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v3 = OUTLINED_FUNCTION_57_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v117 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v118 = a1;
  v119 = MEMORY[0x1E69E7CC0];
  v116 = v17;
  while (v17 != v16)
  {
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    sub_1DD3C68F8(a1 + v18 + v19 * v16, v15);
    if (*(*&v15[*(type metadata accessor for Contact() + 80)] + 16))
    {
      sub_1DD51D234(v15, v117, &qword_1ECCDBBE8, &qword_1DD644470);
      v20 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = *(v20 + 16);
        sub_1DD42B4F8();
        v17 = v116;
        v20 = v120[0];
      }

      v23 = *(v20 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v20 + 24) >> 1)
      {
        v25 = v23 + 1;
        v119 = v23;
        sub_1DD42B4F8();
        v24 = v25;
        v23 = v119;
        v20 = v120[0];
        v17 = v116;
      }

      ++v16;
      *(v20 + 16) = v24;
      v119 = v20;
      sub_1DD51D234(v117, v20 + v18 + v23 * v19, &qword_1ECCDBBE8, &qword_1DD644470);
      a1 = v118;
    }

    else
    {
      sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v16;
    }
  }

  v26 = v119;
  v27 = *(v119 + 16);
  if (v27)
  {
    v120[0] = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v28 = v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v29 = *(v6 + 72);
    do
    {
      sub_1DD3C68F8(v28, v10);
      v30 = *v10;
      v31 = v10[1];
      v32 = objc_allocWithZone(MEMORY[0x1E69A9EA0]);

      sub_1DD51CDC8(v30, v31, 0x6361746E6F434E43, 0xE900000000000074);
      sub_1DD390754(v10, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD640958();
      v33 = *(v120[0] + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      v28 += v29;
      --v27;
    }

    while (v27);

    v34 = v120[0];
    a1 = v118;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v35 = 0xEE005D5243452065;
  v36 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v36, qword_1EE16F068);

  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v38))
  {
    v39 = swift_slowAlloc();
    v120[0] = OUTLINED_FUNCTION_28_11();
    *v39 = 136315906;
    *(v39 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v120);
    *(v39 + 12) = 2048;
    *(v39 + 14) = v116;

    *(v39 + 22) = 2048;
    *(v39 + 24) = sub_1DD3CC020(v34);

    *(v39 + 32) = 2080;
    v40 = sub_1DD39638C(0, &qword_1ECCDE488, 0x1E69A9EA0);
    v41 = MEMORY[0x1E12B2430](v34, v40);
    v43 = v34;
    v44 = sub_1DD39565C(v41, v42, v120);

    *(v39 + 34) = v44;
    v34 = v43;
    _os_log_impl(&dword_1DD38D000, v37, v38, "%s Converted CandidateContact (size=%ld)\n-> GDEntitySourceIDs (size=%ld): %s", v39, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  if (sub_1DD3CC020(v34))
  {
    sub_1DD63F448();
    v45 = sub_1DD63F768();
    v47 = v46;

    v119 = v34;
    if (!v47)
    {
      sub_1DD63F448();
      v48 = sub_1DD63F748();

      if (v48)
      {
        v49 = [v48 recognition];

        if (!v49)
        {
          __break(1u);
          return;
        }

        v45 = sub_1DD51D160(v49);
        v47 = v50;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      v57 = sub_1DD63F9D8();
      v58 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v58))
      {
        v59 = v45;
        v60 = OUTLINED_FUNCTION_54();
        v35 = OUTLINED_FUNCTION_62();
        v120[0] = v35;
        *v60 = 136315138;
        v61 = OUTLINED_FUNCTION_1_84();
        *(v60 + 4) = sub_1DD39565C(v61, v62, v63);
        OUTLINED_FUNCTION_37_0();
        _os_log_impl(v64, v65, v66, v67, v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_13_36();
        v45 = v59;
        OUTLINED_FUNCTION_0_1();
      }

      if (!v47)
      {
        v105 = sub_1DD63F9D8();
        v106 = sub_1DD640378();
        v74 = v45;
        if (OUTLINED_FUNCTION_9_0(v106))
        {
          v107 = OUTLINED_FUNCTION_54();
          v35 = OUTLINED_FUNCTION_62();
          v120[0] = v35;
          *v107 = 136315138;
          v108 = OUTLINED_FUNCTION_1_84();
          *(v107 + 4) = sub_1DD39565C(v108, v109, v110);
          OUTLINED_FUNCTION_37_0();
          _os_log_impl(v111, v112, v113, v114, v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          OUTLINED_FUNCTION_13_36();
          OUTLINED_FUNCTION_0_1();
        }

        v47 = 0;
        a1 = v118;
        goto LABEL_37;
      }

      a1 = v118;
    }

    v68 = sub_1DD63F9D8();
    v69 = sub_1DD640368();

    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_43_2();
      v121 = OUTLINED_FUNCTION_26_22();
      *v35 = 136315394;
      v70 = OUTLINED_FUNCTION_1_84();
      v73 = sub_1DD39565C(v70, v71, v72);
      OUTLINED_FUNCTION_16_36(v73);
      v74 = v45;
      v120[0] = v45;
      v120[1] = v47;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
      v75 = sub_1DD63FE38();
      v77 = sub_1DD39565C(v75, v76, &v121);

      *(v35 + 14) = v77;
      a1 = v118;
      OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v68, v69, "%s For use in GDEntityResolutionRequest, utterance: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_13_36();
    }

    else
    {
      v74 = v45;
    }

LABEL_37:
    v78 = sub_1DD51AFA4(a1);

    v79 = sub_1DD63F9D8();
    v80 = sub_1DD640368();

    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_43_2();
      v120[0] = OUTLINED_FUNCTION_26_22();
      *v35 = 136315394;
      v81 = OUTLINED_FUNCTION_1_84();
      v84 = sub_1DD39565C(v81, v82, v83);
      OUTLINED_FUNCTION_16_36(v84);
      v121 = v78;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE480, &qword_1DD657848);
      v85 = sub_1DD63FE38();
      v87 = sub_1DD39565C(v85, v86, v120);

      *(v35 + 14) = v87;
      OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v79, v80, "%s For use in GDEntityResolutionRequest, spans: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_13_36();
    }

    v88 = v119;
    v89 = objc_allocWithZone(MEMORY[0x1E69A9E88]);
    v90 = sub_1DD51CE5C(v88, v74, v47, v78, 5, 1);
    v91 = sub_1DD63F9D8();
    v92 = sub_1DD640368();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_62();
      v120[0] = OUTLINED_FUNCTION_41_11();
      *v93 = 136315650;
      v94 = OUTLINED_FUNCTION_1_84();
      *(v93 + 4) = sub_1DD39565C(v94, v95, v96);
      *(v93 + 12) = 2080;
      v121 = [v90 mode];
      type metadata accessor for GDEntityResolutionMode(0);
      v97 = sub_1DD63FE38();
      v99 = sub_1DD39565C(v97, v98, v120);

      *(v93 + 14) = v99;
      *(v93 + 22) = 2080;
      v100 = [v90 includeFeatures];
      v101 = v100 == 0;
      if (v100)
      {
        v102 = 1702195828;
      }

      else
      {
        v102 = 0x65736C6166;
      }

      if (v101)
      {
        v103 = 0xE500000000000000;
      }

      else
      {
        v103 = 0xE400000000000000;
      }

      v104 = sub_1DD39565C(v102, v103, v120);

      *(v93 + 24) = v104;
      _os_log_impl(&dword_1DD38D000, v91, v92, "%s Created GDEntityResolutionRequest, request:\nmode=%s\nincludeFeatures=%s", v93, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_4_6();
    }

    return;
  }

  v51 = sub_1DD63F9D8();
  v52 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v52))
  {
    OUTLINED_FUNCTION_54();
    v120[0] = OUTLINED_FUNCTION_5_36();
    *v34 = 136315138;
    v53 = OUTLINED_FUNCTION_2_71();
    *(v34 + 4) = sub_1DD39565C(v53, 0xEE005D5243452065, v54);
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v55, v56, "%s Skip creation of GDEntityResolutionRequest as all the contacts got filtered out");
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_23_0();
  }
}

void sub_1DD519534()
{
  OUTLINED_FUNCTION_39_13();
  v1 = v0;
  v3 = v2;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v4 = OUTLINED_FUNCTION_0(v170);
  v177 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v9);
  v172 = (v167 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v176 = (v167 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v188 = (v167 - v22);
  v171 = v1;
  v175 = *v1;
  if (!*(v175 + 16) || (v23 = [v3 rankedResults], sub_1DD39638C(0, &qword_1ECCDE450, 0x1E69A9EE0), v24 = sub_1DD640118(), v23, v25 = sub_1DD3CC020(v24), , !v25))
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_43;
  }

  v187 = v20;
  v183 = v11;
  v26 = [v3 rankedResults];
  v27 = sub_1DD640118();

  v28 = sub_1DD3CC020(v27);
  v29 = 0;
  v167[1] = 0;
  v186 = v27 & 0xC000000000000001;
  *&v185 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = MEMORY[0x1E69E7CC0];
  v168 = v27;
  v184 = v27 + 32;
  v173 = v28;
  while (1)
  {
    if (v29 == v28)
    {

      v62 = sub_1DD3CC020(v30);
      if (v62)
      {
        v63 = v62;
        v189[0] = MEMORY[0x1E69E7CC0];
        sub_1DD42B91C(0, v62 & ~(v62 >> 63), 0);
        if (v63 < 0)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          return;
        }

        v64 = 0;
        v65 = v189[0];
        v186 = v30 & 0xC000000000000001;
        v66 = v183;
        v67 = v30;
        do
        {
          if (v186)
          {
            v68 = MEMORY[0x1E12B2C10](v64, v30);
          }

          else
          {
            v68 = *(v30 + 8 * v64 + 32);
          }

          v69 = v68;
          v70 = [v68 sourceID];
          if (v70)
          {
            v71 = v70;
            v72 = [v70 value];

            v20 = sub_1DD63FDD8();
            v74 = v73;

            v66 = v183;
          }

          else
          {
            v20 = 0;
            v74 = 0;
          }

          v189[0] = v65;
          v76 = *(v65 + 16);
          v75 = *(v65 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1DD42B91C(v75 > 1, v76 + 1, 1);
            v65 = v189[0];
          }

          ++v64;
          *(v65 + 16) = v76 + 1;
          v77 = (v65 + 24 * v76);
          v77[4] = v20;
          v77[5] = v74;
          v77[6] = v69;
          v30 = v67;
        }

        while (v63 != v64);
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
        v66 = v183;
      }

      v80 = sub_1DD51A580(v65);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v81 = OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_130(v81, qword_1EE16F068);

      v186 = v65;
      v82 = sub_1DD63F9D8();
      v83 = sub_1DD640368();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_43_2();
        v189[0] = OUTLINED_FUNCTION_28_11();
        *v84 = 136315394;
        v85 = sub_1DD39565C(v20, 0xEE005D5243452065, v189);
        OUTLINED_FUNCTION_29_18(v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
        sub_1DD51D290();
        v86 = sub_1DD63FC68();
        v88 = sub_1DD39565C(v86, v87, v189);

        *(v84 + 14) = v88;
        _os_log_impl(&dword_1DD38D000, v82, v83, "%s sourceIdRankerItemDict: %s", v84, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_25_12();
      }

      v89 = v172;
      v90 = v175;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18(v90);
        v93 = v166;
      }

      v94 = 0;
      v95 = *(v90 + 16);
      v184 = v93;
      *v171 = v93;
      *&v92 = 136315650;
      v185 = v92;
      *&v92 = 136315394;
      v182 = v92;
      while (1)
      {
        while (1)
        {
          if (v94 == v95)
          {
            v96 = 1;
            v94 = v95;
            v97 = v187;
          }

          else
          {
            if ((v94 & 0x8000000000000000) != 0)
            {
              goto LABEL_108;
            }

            if (v94 >= *(v90 + 16))
            {
              goto LABEL_109;
            }

            OUTLINED_FUNCTION_22_25();
            v100 = v98 + v99 * v94;
            v101 = *(v66 + 48);
            v102 = v176;
            *v176 = v94;
            sub_1DD3C68F8(v100, v102 + v101);
            v103 = v102;
            v97 = v187;
            sub_1DD51D234(v103, v187, &qword_1ECCDC238, &unk_1DD654E40);
            v96 = 0;
            ++v94;
          }

          v104 = v188;
          __swift_storeEnumTagSinglePayload(v97, v96, 1, v66);
          sub_1DD51D234(v97, v104, &qword_1ECCDC240, &qword_1DD645AA0);
          if (__swift_getEnumTagSinglePayload(v104, 1, v66) == 1)
          {
LABEL_102:

LABEL_103:
            OUTLINED_FUNCTION_31_17();
            return;
          }

          isa = v104->isa;
          sub_1DD51D234(v104 + *(v66 + 48), v89, &qword_1ECCDBBE8, &qword_1DD644470);
          if (*(v80 + 16))
          {
            v107 = *v89;
            v106 = v89[1];

            sub_1DD3FE8AC();
            v109 = v108;

            if (v109)
            {
              break;
            }
          }

          sub_1DD390754(v89, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v189[0] = v107;
        v189[1] = v106;

        sub_1DD640048();
        if (!*(v80 + 16))
        {
          break;
        }

        v110 = sub_1DD3FE8AC();
        v112 = v111;

        if ((v112 & 1) == 0)
        {
          goto LABEL_88;
        }

        v113 = *(*(v80 + 56) + 8 * v110);
        [v113 score];
        v115 = v114;
        v116 = v184;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((isa & 0x8000000000000000) != 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          sub_1DD586A18(v116);
          v116 = v165;
          if ((isa & 0x8000000000000000) != 0)
          {
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }
        }

        if (isa >= *(v116 + 16))
        {
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_22_25();
        v119 = v117 + v118 * isa;
        v120 = v119 + *(v170 + 36);
        *(v120 + *(type metadata accessor for ContactResolver.SignalSet(0) + 240)) = v115;
        *v171 = v116;
        v121 = [v113 features];
        v122 = v116;
        v184 = v116;
        if (!v121)
        {
          v156 = v113;
          v141 = sub_1DD63F9D8();
          v157 = sub_1DD640378();

          if (os_log_type_enabled(v141, v157))
          {
            v158 = OUTLINED_FUNCTION_43_2();
            v159 = swift_slowAlloc();
            v160 = OUTLINED_FUNCTION_62();
            v189[0] = v160;
            *v158 = v182;
            v161 = OUTLINED_FUNCTION_1_84();
            *(v158 + 4) = sub_1DD39565C(v161, v162, v163);
            *(v158 + 12) = 2112;
            *(v158 + 14) = v156;
            *v159 = v156;
            v164 = v156;
            _os_log_impl(&dword_1DD38D000, v141, v157, "%s Missing features for this? %@", v158, 0x16u);
            sub_1DD390754(v159, &qword_1ECCDBF90, &qword_1DD6445B0);
            OUTLINED_FUNCTION_0_1();
            __swift_destroy_boxed_opaque_existential_1(v160);
            v66 = v183;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();

LABEL_90:
          }

          else
          {
          }

          v155 = v89;
          goto LABEL_93;
        }

        if (isa >= *(v116 + 16))
        {
          goto LABEL_117;
        }

        v123 = v121;
        sub_1DD51A618(v121, v119 + *(v170 + 36));
        *v171 = v122;
        v124 = v169;
        sub_1DD3C68F8(v89, v169);
        v125 = sub_1DD63F9D8();
        v126 = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v126))
        {
          OUTLINED_FUNCTION_43_2();
          v181 = OUTLINED_FUNCTION_26_22();
          v189[0] = v181;
          *isa = v182;
          v127 = OUTLINED_FUNCTION_1_84();
          v130 = sub_1DD39565C(v127, v128, v129);
          OUTLINED_FUNCTION_16_36(v130);
          v131 = v124;
          v132 = *v124;
          v180 = v125;
          v133 = v131[1];

          v134 = v131;
          v89 = v172;
          sub_1DD390754(v134, &qword_1ECCDBBE8, &qword_1DD644470);
          v135 = OUTLINED_FUNCTION_15_0();
          v138 = sub_1DD39565C(v135, v136, v137);

          *(isa + 14) = v138;
          v139 = v180;
          OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v180, v126, "%s setSignalSet for %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {

          sub_1DD390754(v124, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        sub_1DD390754(v89, &qword_1ECCDBBE8, &qword_1DD644470);
        v66 = v183;
LABEL_94:
        v90 = v175;
      }

LABEL_88:
      v140 = v174;
      sub_1DD3C68F8(v89, v174);

      v141 = sub_1DD63F9D8();
      v142 = sub_1DD640378();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = OUTLINED_FUNCTION_62();
        v189[0] = OUTLINED_FUNCTION_41_11();
        *v143 = v185;
        v144 = OUTLINED_FUNCTION_1_84();
        v147 = sub_1DD39565C(v144, v145, v146);
        OUTLINED_FUNCTION_29_18(v147);
        v148 = *v140;
        v149 = v140[1];

        sub_1DD390754(v140, &qword_1ECCDBBE8, &qword_1DD644470);
        v150 = v148;
        v89 = v172;
        v151 = sub_1DD39565C(v150, v149, v189);

        *(v143 + 14) = v151;
        *(v143 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
        sub_1DD51D290();
        v152 = sub_1DD63FC68();
        v154 = sub_1DD39565C(v152, v153, v189);

        *(v143 + 24) = v154;
        v66 = v183;
        _os_log_impl(&dword_1DD38D000, v141, v142, "%s Missing key? %s in this dict? %s", v143, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_36();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_90;
      }

      sub_1DD390754(v140, &qword_1ECCDBBE8, &qword_1DD644470);
      v155 = v89;
LABEL_93:
      sub_1DD390754(v155, &qword_1ECCDBBE8, &qword_1DD644470);
      goto LABEL_94;
    }

    if (v186)
    {
      v31 = MEMORY[0x1E12B2C10](v29, v168);
    }

    else
    {
      if (v29 >= *(v185 + 16))
      {
        goto LABEL_105;
      }

      v31 = *(v184 + 8 * v29);
    }

    v32 = v31;
    v33 = __OFADD__(v29++, 1);
    if (v33)
    {
      break;
    }

    v34 = [v31 rankedItems];
    sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
    v20 = sub_1DD640118();

    if (v20 >> 62)
    {
      v35 = sub_1DD6407B8();
    }

    else
    {
      v35 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v30 >> 62;
    if (v30 >> 62)
    {
      v37 = sub_1DD6407B8();
    }

    else
    {
      v37 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v35 + v37;
    if (__OFADD__(v37, v35))
    {
      goto LABEL_106;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v36)
      {
LABEL_21:
        sub_1DD6407B8();
      }

      else
      {
        v39 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v40 = *(v39 + 16);
      }

      v30 = sub_1DD640918();
      v39 = v30 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v36)
    {
      goto LABEL_21;
    }

    v39 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v38 > *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_23:
    v41 = *(v39 + 16);
    v42 = (*(v39 + 24) >> 1) - v41;
    v43 = v39 + 8 * v41;
    if (v20 >> 62)
    {
      v46 = sub_1DD6407B8();
      if (!v46)
      {
        goto LABEL_37;
      }

      v47 = v46;
      v48 = sub_1DD6407B8();
      if (v42 < v48)
      {
        goto LABEL_112;
      }

      if (v47 < 1)
      {
        goto LABEL_113;
      }

      v178 = v48;
      v179 = v39;
      v180 = v35;
      v181 = v29;
      *&v182 = v30;
      v49 = v43 + 32;
      sub_1DD51D1D0();
      for (i = 0; i != v47; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE460, &unk_1DD657830);
        v51 = sub_1DD5B6064(v189, i, v20);
        v53 = *v52;
        v51(v189, 0);
        *(v49 + 8 * i) = v53;
      }

      v29 = v181;
      v30 = v182;
      v28 = v173;
      v39 = v179;
      v35 = v180;
      v44 = v178;
LABEL_33:

      if (v44 < v35)
      {
        goto LABEL_107;
      }

      if (v44 > 0)
      {
        v54 = *(v39 + 16);
        v33 = __OFADD__(v54, v44);
        v55 = v54 + v44;
        if (v33)
        {
          goto LABEL_110;
        }

        *(v39 + 16) = v55;
      }
    }

    else
    {
      v44 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        if (v42 < v44)
        {
          goto LABEL_111;
        }

        v45 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      if (v35 > 0)
      {
        goto LABEL_107;
      }
    }
  }

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
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_43:
  v56 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v56, qword_1EE16F068);
  v188 = sub_1DD63F9D8();
  v57 = sub_1DD640368();
  if (os_log_type_enabled(v188, v57))
  {
    v58 = OUTLINED_FUNCTION_54();
    v59 = OUTLINED_FUNCTION_62();
    v189[0] = v59;
    *v58 = 136315138;
    v60 = OUTLINED_FUNCTION_1_84();
    *(v58 + 4) = sub_1DD39565C(v60, v61, v189);
    _os_log_impl(&dword_1DD38D000, v188, v57, "%s Early exit as either result.rankedResults or candidates is empty", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_0_1();

    goto LABEL_103;
  }

  OUTLINED_FUNCTION_31_17();
}

uint64_t sub_1DD51A580(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD90, &qword_1DD654CE8);
    v3 = sub_1DD640A78();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DD51CF7C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

id sub_1DD51A618(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for ContactResolver.SignalSet(0) + 244));
  [a1 candidateNameScore];
  v3[2] = v4;
  [a1 candidateCommunicationScore];
  v3[3] = v5;
  [a1 candidateOrganizationScore];
  v3[4] = v6;
  [a1 candidateLocationScore];
  v3[5] = v7;
  [a1 candidateEventLocationScore];
  v3[6] = v8;
  [a1 candidateEventNameScore];
  v3[7] = v9;
  [a1 topicScore];
  v3[8] = v10;
  [a1 messagePopularityGivenTimeOfDay];
  v3[9] = v11;
  [a1 callPopularityGivenTimeOfDay];
  v3[10] = v12;
  [a1 facetimePopularityGivenTimeOfDay];
  v3[11] = v13;
  [a1 timeOfDayGivenMessageWithEntity];
  v3[12] = v14;
  [a1 timeOfDayGivenCallWithEntity];
  v3[13] = v15;
  [a1 timeOfDayGivenFacetimeWithEntity];
  v3[14] = v16;
  [a1 messageWithEntityGivenTimeOfDay];
  v3[15] = v17;
  [a1 callWithEntityGivenTimeOfDay];
  v3[16] = v18;
  [a1 facetimeWithEntityGivenTimeOfDay];
  v3[17] = v19;
  [a1 messagePopularityGivenCoarseTimeOfDay];
  v3[18] = v20;
  [a1 callPopularityGivenCoarseTimeOfDay];
  v3[19] = v21;
  [a1 facetimePopularityGivenCoarseTimeOfDay];
  v3[20] = v22;
  [a1 coarseTimeOfDayGivenMessageWithEntity];
  v3[21] = v23;
  [a1 coarseTimeOfDayGivenCallWithEntity];
  v3[22] = v24;
  [a1 coarseTimeOfDayGivenFacetimeWithEntity];
  v3[23] = v25;
  [a1 messageWithEntityGivenCoarseTimeOfDay];
  v3[24] = v26;
  [a1 callWithEntityGivenCoarseTimeOfDay];
  v3[25] = v27;
  [a1 facetimeWithEntityGivenCoarseTimeOfDay];
  v3[26] = v28;
  [a1 messagePopularityGivenDayOfWeek];
  v3[27] = v29;
  [a1 callPopularityGivenDayOfWeek];
  v3[28] = v30;
  [a1 facetimePopularityGivenDayOfWeek];
  v3[29] = v31;
  [a1 dayOfWeekGivenMessageWithEntity];
  v3[30] = v32;
  [a1 dayOfWeekGivenCallWithEntity];
  v3[31] = v33;
  [a1 dayOfWeekGivenFacetimeWithEntity];
  v3[32] = v34;
  [a1 messageWithEntityGivenDayOfWeek];
  v3[33] = v35;
  [a1 callWithEntityGivenDayOfWeek];
  v3[34] = v36;
  [a1 facetimeWithEntityGivenDayOfWeek];
  v3[35] = v37;
  [a1 messagePopularityGivenFocusMode];
  v3[36] = v38;
  [a1 callPopularityGivenFocusMode];
  v3[37] = v39;
  [a1 facetimePopularityGivenFocusMode];
  v3[38] = v40;
  [a1 focusModeGivenMessageWithEntity];
  v3[39] = v41;
  [a1 focusModeGivenCallWithEntity];
  v3[40] = v42;
  [a1 focusModeGivenFacetimeWithEntity];
  v3[41] = v43;
  [a1 messageWithEntityGivenFocusMode];
  v3[42] = v44;
  [a1 callWithEntityGivenFocusMode];
  v3[43] = v45;
  [a1 facetimeWithEntityGivenFocusMode];
  v3[44] = v46;
  [a1 messagePopularityGivenLOI];
  v3[45] = v47;
  [a1 callPopularityGivenLOI];
  v3[46] = v48;
  [a1 facetimePopularityGivenLOI];
  v3[47] = v49;
  [a1 LOIGivenMessageWithEntity];
  v3[48] = v50;
  [a1 LOIGivenCallWithEntity];
  v3[49] = v51;
  [a1 LOIGivenFacetimeWithEntity];
  v3[50] = v52;
  [a1 messageWithEntityGivenLOI];
  v3[51] = v53;
  [a1 callWithEntityGivenLOI];
  v3[52] = v54;
  [a1 facetimeWithEntityGivenLOI];
  v3[53] = v55;
  [a1 messagePopularityGivenSpecificGeoHash];
  v3[54] = v56;
  [a1 callPopularityGivenSpecificGeoHash];
  v3[55] = v57;
  [a1 facetimePopularityGivenSpecificGeoHash];
  v3[56] = v58;
  [a1 specificGeoHashGivenMessageWithEntity];
  v3[57] = v59;
  [a1 specificGeoHashGivenCallWithEntity];
  v3[58] = v60;
  [a1 specificGeoHashGivenFacetimeWithEntity];
  v3[59] = v61;
  [a1 messageWithEntityGivenSpecificGeoHash];
  v3[60] = v62;
  [a1 callWithEntityGivenSpecificGeoHash];
  v3[61] = v63;
  [a1 facetimeWithEntityGivenSpecificGeoHash];
  v3[62] = v64;
  [a1 messagePopularityGivenCoarseGeoHash];
  v3[63] = v65;
  [a1 callPopularityGivenCoarseGeoHash];
  v3[64] = v66;
  [a1 facetimePopularityGivenCoarseGeoHash];
  v3[65] = v67;
  [a1 coarseGeoHashGivenMessageWithEntity];
  v3[66] = v68;
  [a1 coarseGeoHashGivenCallWithEntity];
  v3[67] = v69;
  [a1 coarseGeoHashGivenFacetimeWithEntity];
  v3[68] = v70;
  [a1 messageWithEntityGivenCoarseGeoHash];
  v3[69] = v71;
  [a1 callWithEntityGivenCoarseGeoHash];
  v3[70] = v72;
  [a1 facetimeWithEntityGivenCoarseGeoHash];
  v3[71] = v73;
  [a1 messagePopularityGivenLargeGeoHash];
  v3[72] = v74;
  [a1 callPopularityGivenLargeGeoHash];
  v3[73] = v75;
  [a1 facetimePopularityGivenLargeGeoHash];
  v3[74] = v76;
  [a1 largeGeoHashGivenMessageWithEntity];
  v3[75] = v77;
  [a1 largeGeoHashGivenCallWithEntity];
  v3[76] = v78;
  [a1 largeGeoHashGivenFacetimeWithEntity];
  v3[77] = v79;
  [a1 messageWithEntityGivenLargeGeoHash];
  v3[78] = v80;
  [a1 callWithEntityGivenLargeGeoHash];
  v3[79] = v81;
  [a1 facetimeWithEntityGivenLargeGeoHash];
  v3[80] = v82;
  [a1 messagePopularityGivenMicroLocation];
  v3[81] = v83;
  [a1 callPopularityGivenMicroLocation];
  v3[82] = v84;
  [a1 facetimePopularityGivenMicroLocation];
  v3[83] = v85;
  [a1 microLocationGivenMessageWithEntity];
  v3[84] = v86;
  [a1 microLocationGivenCallWithEntity];
  v3[85] = v87;
  [a1 microLocationGivenFacetimeWithEntity];
  v3[86] = v88;
  [a1 messageWithEntityGivenMicroLocation];
  v3[87] = v89;
  [a1 callWithEntityGivenMicroLocation];
  v3[88] = v90;
  [a1 facetimeWithEntityGivenMicroLocation];
  v3[89] = v91;
  [a1 messagePopularityGivenMotionState];
  v3[90] = v92;
  [a1 callPopularityGivenMotionState];
  v3[91] = v93;
  [a1 facetimePopularityGivenMotionState];
  v3[92] = v94;
  [a1 motionStateGivenMessageWithEntity];
  v3[93] = v95;
  [a1 motionStateGivenCallWithEntity];
  v3[94] = v96;
  [a1 motionStateGivenFacetimeWithEntity];
  v3[95] = v97;
  [a1 messageWithEntityGivenMotionState];
  v3[96] = v98;
  [a1 callWithEntityGivenMotionState];
  v3[97] = v99;
  [a1 facetimeWithEntityGivenMotionState];
  v3[98] = v100;
  [a1 messagePopularityGivenWiFi];
  v3[99] = v101;
  [a1 callPopularityGivenWiFi];
  v3[100] = v102;
  [a1 facetimePopularityGivenWiFi];
  v3[101] = v103;
  [a1 wiFiGivenMessageWithEntity];
  v3[102] = v104;
  [a1 wiFiGivenCallWithEntity];
  v3[103] = v105;
  [a1 wiFiGivenFacetimeWithEntity];
  v3[104] = v106;
  [a1 messageWithEntityGivenWiFi];
  v3[105] = v107;
  [a1 callWithEntityGivenWiFi];
  v3[106] = v108;
  [a1 facetimeWithEntityGivenWiFi];
  v3[107] = v109;
  [a1 messagePopularityGivenSequence];
  v3[108] = v110;
  [a1 callPopularityGivenSequence];
  v3[109] = v111;
  [a1 facetimePopularityGivenSequence];
  v3[110] = v112;
  [a1 sequenceGivenMessageWithEntity];
  v3[111] = v113;
  [a1 sequenceGivenCallWithEntity];
  v3[112] = v114;
  [a1 sequenceGivenFacetimeWithEntity];
  v3[113] = v115;
  v3[114] = [a1 lastExecutionAge];
  v3[115] = [a1 medianTimeIntervalBetweenExecution];
  v3[116] = [a1 dailyDoseL1Error];
  [a1 dailyDoseL2Error];
  v3[117] = v116;
  [a1 shortTermTrendingPopularity];
  v3[118] = v117;
  [a1 trendingPopularity];
  v3[119] = v118;
  result = [a1 longTermTrendingPopularity];
  v3[120] = v120;
  return result;
}

uint64_t sub_1DD51AFA4(uint64_t a1)
{
  v125 = type metadata accessor for ContactResolver.SignalSet(0);
  v3 = OUTLINED_FUNCTION_7(v125);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v124 = v7 - v6;
  v123 = type metadata accessor for Contact();
  v8 = OUTLINED_FUNCTION_7(v123);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v122 = v12 - v11;
  v135 = sub_1DD63DE08();
  v13 = OUTLINED_FUNCTION_0(v135);
  v127 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v117 - v23;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v25 = *(*(v137 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v137);
  v121 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v133 = &v117 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v117 - v31;
  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_28:
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v84 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v84, qword_1EE16F068);
    v85 = sub_1DD63F9D8();
    v86 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v86))
    {
      OUTLINED_FUNCTION_54();
      v138 = OUTLINED_FUNCTION_5_36();
      *v1 = 136315138;
      v87 = OUTLINED_FUNCTION_1_84();
      *(v1 + 4) = sub_1DD39565C(v87, v88, v89);
      OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v90, v91, "%s Unable to find a suitable UsoEntitySpan for span indicies. Defaulting to span=nil.");
      OUTLINED_FUNCTION_7_44();
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  v1 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v136 = v33 + 264;
  v130 = v127 + 16;
  v126 = (v127 + 8);
  v134 = *(v30 + 72);
  *&v32 = 136315394;
  v131 = v32;
  v132 = v24;
  v128 = &v117 - v31;
  v129 = v19;
  while (1)
  {
    sub_1DD3C68F8(v1, v33);
    v35 = *(v137 + 36);
    v36 = *&v136[v35];
    if (!v36)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v56 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v56, qword_1EE16F068);
      sub_1DD3C68F8(v33, v133);
      v57 = sub_1DD63F9D8();
      v58 = sub_1DD640368();
      if (os_log_type_enabled(v57, v58))
      {
        OUTLINED_FUNCTION_43_2();
        v140 = OUTLINED_FUNCTION_26_22();
        MEMORY[0] = v131;
        v59 = OUTLINED_FUNCTION_1_84();
        v62 = sub_1DD39565C(v59, v60, v61);
        OUTLINED_FUNCTION_16_36(v62);
        v63 = v121;
        sub_1DD3C68F8(v133, v121);
        v138 = 0;
        v139 = 0xE000000000000000;
        sub_1DD6408D8();

        v138 = 0x203A65756C6176;
        v139 = 0xE700000000000000;
        sub_1DD51D30C(v63, v122, type metadata accessor for Contact);
        v64 = sub_1DD63FE38();
        MEMORY[0x1E12B2260](v64);

        MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
        sub_1DD51D30C(v63 + *(v137 + 36), v124, type metadata accessor for ContactResolver.SignalSet);
        v65 = sub_1DD63FE38();
        MEMORY[0x1E12B2260](v65);

        sub_1DD390754(v63, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v133, &qword_1ECCDBBE8, &qword_1DD644470);
        v66 = OUTLINED_FUNCTION_15_0();
        v69 = sub_1DD39565C(v66, v67, v68);

        MEMORY[0xE] = v69;
        OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v57, v58, "%s Unable to get candidate's usoNode from %s");
        swift_arrayDestroy();
        v24 = v132;
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_13_36();
      }

      else
      {

        sub_1DD390754(v133, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v70 = v33;
      goto LABEL_27;
    }

    v37 = *&v136[v35];

    v38 = sub_1DD63E308();
    if (!v38)
    {
      goto LABEL_19;
    }

    if (!*(v38 + 16))
    {

LABEL_19:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v71 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v71, qword_1EE16F068);

      v72 = sub_1DD63F9D8();
      v73 = sub_1DD640368();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_43_2();
        v138 = OUTLINED_FUNCTION_28_11();
        *v74 = v131;
        v75 = OUTLINED_FUNCTION_1_84();
        *(v74 + 4) = sub_1DD39565C(v75, v76, v77);
        *(v74 + 12) = 2080;
        v140 = v36;
        sub_1DD63E6B8();
        sub_1DD51D368();
        v78 = sub_1DD640CB8();
        v80 = sub_1DD39565C(v78, v79, &v138);

        *(v74 + 14) = v80;
        v33 = v128;
        _os_log_impl(&dword_1DD38D000, v72, v73, "%s Skip ones without UsoEntitySpan %s", v74, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        v24 = v132;
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      goto LABEL_26;
    }

    v39 = *(v127 + 16);
    v39(v24, v38 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v135);

    v40 = sub_1DD63DDB8();
    if ((v40 & 0x100000000) == 0)
    {
      v41 = v40;
      v42 = sub_1DD63DDE8();
      if ((v42 & 0x100000000) == 0)
      {
        break;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v43 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v43, qword_1EE16F068);
    v44 = v129;
    v39(v129, v24, v135);
    v45 = sub_1DD63F9D8();
    v46 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v46))
    {
      v47 = OUTLINED_FUNCTION_43_2();
      v120 = OUTLINED_FUNCTION_28_11();
      v138 = v120;
      *v47 = v131;
      v48 = OUTLINED_FUNCTION_1_84();
      v51 = sub_1DD39565C(v48, v49, v50);
      OUTLINED_FUNCTION_29_18(v51);
      v39(v118, v129, v135);
      v52 = sub_1DD63FE38();
      v54 = v53;
      v119 = *v126;
      v119(v129, v135);
      v55 = sub_1DD39565C(v52, v54, &v138);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1DD38D000, v45, v46, "%s No startIndex or endIndex? %s", v47, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_25_12();

      v24 = v132;
      v119(v132, v135);
    }

    else
    {

      v81 = *v126;
      v82 = v44;
      v83 = v135;
      (*v126)(v82, v135);
      v24 = v132;
      v81(v132, v83);
    }

    v33 = v128;
LABEL_26:
    v70 = v33;
LABEL_27:
    sub_1DD390754(v70, &qword_1ECCDBBE8, &qword_1DD644470);
    v1 += v134;
    if (!--v34)
    {
      goto LABEL_28;
    }
  }

  v94 = v42;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v95 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v95, qword_1EE16F068);
  v96 = v117;
  v39(v117, v24, v135);
  v97 = sub_1DD63F9D8();
  v98 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v98))
  {
    v99 = OUTLINED_FUNCTION_43_2();
    v137 = OUTLINED_FUNCTION_28_11();
    v138 = v137;
    *v99 = v131;
    v100 = OUTLINED_FUNCTION_1_84();
    *(v99 + 4) = sub_1DD39565C(v100, v101, v102);
    *(v99 + 12) = 2080;
    v103 = v135;
    v39(v118, v96, v135);
    v104 = sub_1DD63FE38();
    v106 = v105;
    v107 = v103;
    v108 = *v126;
    (*v126)(v96, v107);
    v109 = sub_1DD39565C(v104, v106, &v138);

    *(v99 + 14) = v109;
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v110, v111, v112, v113, v114, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_23_0();
  }

  else
  {

    v108 = *v126;
    (*v126)(v96, v135);
  }

  v115 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  result = swift_allocObject();
  *(result + 16) = xmmword_1DD643B80;
  v116 = v132;
  if (v94 >= v41)
  {
    v92 = result;
    *(result + 32) = [objc_opt_self() valueWithRange_];

    v108(v116, v135);
    sub_1DD390754(v115, &qword_1ECCDBBE8, &qword_1DD644470);
    return v92;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD51BB84()
{
  type metadata accessor for MegadomeClient();
  swift_allocObject();
  result = sub_1DD51BBC0();
  qword_1EE16EFD8 = result;
  return result;
}

uint64_t sub_1DD51BBC0()
{
  v0 = type metadata accessor for Signpost();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DD63D078();
  v65 = *(v67 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x1EEE9AC00](v67);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v58 - v15;
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE16F0C0;
  v17 = &v3[*(v0 + 20)];
  *v17 = "ContactResolver.MegadomeClient.init";
  *(v17 + 1) = 35;
  v17[16] = 2;
  v18 = v16;
  sub_1DD63F9B8();
  *&v3[*(v0 + 24)] = v18;
  v19 = v18;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD643F90;
  v21 = sub_1DD6408F8();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1DD392BD8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1DD63F998();

  if (__OFADD__(qword_1EE16EFD0, 1))
  {
    __break(1u);
    swift_once();
    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1EE16F068);
    v27 = "ContactResolver.MegadomeClient.init";
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v68);
      *(v30 + 12) = 2112;
      v33 = "ContactResolver.MegadomeClient.init";
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v34;
      *v31 = v34;
      _os_log_impl(&dword_1DD38D000, v28, v29, "%s Failed to create EntityResolutionTextClient: %@", v30, 0x16u);
      sub_1DD390754(v31, &qword_1ECCDBF90, &qword_1DD6445B0);
      v35 = v31;
      v20 = v67;
      MEMORY[0x1E12B3DA0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12B3DA0](v32, -1, -1);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    else
    {
    }

    *(v21 + 16) = 0;
  }

  else
  {
    ++qword_1EE16EFD0;
    sub_1DD63D068();
    v24 = objc_allocWithZone(sub_1DD63F7C8());
    v25 = sub_1DD63F7B8();
    v21 = v66;
    v20 = v67;
    *(v66 + 16) = v25;
    v36 = v65;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1DD63F9F8();
    v38 = __swift_project_value_buffer(v37, qword_1EE16F068);
    v60 = *(v36 + 16);
    v60(v11, v14, v20);
    v61 = v38;
    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v68[0] = v59;
      *v41 = 136315394;
      *(v41 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v68);
      *(v41 + 12) = 2048;
      v42 = v62;
      sub_1DD63D068();
      sub_1DD63CF88();
      v44 = v43;
      v23 = *(v36 + 8);
      v23(v42, v67);
      v23(v11, v67);
      *(v41 + 14) = v44;
      _os_log_impl(&dword_1DD38D000, v39, v40, "%s EntityResolutionTextClient(for: .structuredSearch, viaXPC: false, warmup: true)\ntook %f secs.", v41, 0x16u);
      v45 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      v21 = v66;
      MEMORY[0x1E12B3DA0](v45, -1, -1);
      v46 = v41;
      v20 = v67;
      MEMORY[0x1E12B3DA0](v46, -1, -1);
    }

    else
    {

      v23 = *(v36 + 8);
      v23(v11, v20);
    }

    v47 = v63;
    v60(v63, v14, v20);
    v48 = sub_1DD63F9D8();
    v49 = sub_1DD640368();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v47;
      v51 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v68[0] = v61;
      *v51 = 136315394;
      *(v51 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v68);
      *(v51 + 12) = 2048;
      v52 = v62;
      sub_1DD63D068();
      sub_1DD63CF88();
      v54 = v53;
      v23(v52, v67);
      v23(v50, v67);
      *(v51 + 14) = v54;
      _os_log_impl(&dword_1DD38D000, v48, v49, "%s EntityResolutionTextClient() took %f secs.", v51, 0x16u);
      v55 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      v20 = v67;
      MEMORY[0x1E12B3DA0](v55, -1, -1);
      MEMORY[0x1E12B3DA0](v51, -1, -1);

      v23(v14, v20);
      v21 = v66;
    }

    else
    {

      v23(v47, v20);
      v23(v14, v20);
    }
  }

  v56 = v64;
  sub_1DD51CB58();
  sub_1DD41BFFC(v3);
  v23(v56, v20);
  return v21;
}

void sub_1DD51C44C()
{
  OUTLINED_FUNCTION_39_13();
  v82 = v0;
  v79 = v1;
  v2 = type metadata accessor for Signpost();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63D078();
  v83 = OUTLINED_FUNCTION_0(v9);
  v84 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_1_4();
  v78 = v13 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v80 = v18;
  v21 = qword_1EE16F0C0;
  v22 = v8 + *(v2 + 20);
  *v22 = "ContactResolver.MegadomeSignalProvider.callMegadomeECR";
  *(v22 + 8) = 54;
  *(v22 + 16) = 2;
  v23 = v21;
  sub_1DD63F9B8();
  *(v8 + *(v2 + 24)) = v23;
  v24 = v23;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD643F90;
  v26 = sub_1DD6408F8();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1DD392BD8();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v81 = v20;
  v29 = OUTLINED_FUNCTION_33_11();
  __swift_project_value_buffer(v29, qword_1EE16F068);
  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v31))
  {
    OUTLINED_FUNCTION_54();
    v85 = OUTLINED_FUNCTION_5_36();
    *v26 = 136315138;
    *(v26 + 4) = sub_1DD39565C(v28, 0xEE005D5243452065, &v85);
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
  }

  v37 = v84;
  v38 = *(v82 + 16);
  v39 = v80;
  if (v38)
  {
    v40 = v38;
    v51 = sub_1DD63F7A8();
    v52 = v81;
    v53 = v83;
    (*(v37 + 16))(v39, v81, v83);
    v54 = v51;
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640368();

    if (os_log_type_enabled(v55, v56))
    {
      v58 = OUTLINED_FUNCTION_62();
      v82 = OUTLINED_FUNCTION_28_11();
      v85 = v82;
      *v58 = 136315650;
      v59 = OUTLINED_FUNCTION_1_84();
      *(v58 + 4) = sub_1DD39565C(v59, v60, v61);
      *(v58 + 12) = 2048;
      LODWORD(v79) = v56;
      v62 = v78;
      sub_1DD63D068();
      v77 = v55;
      sub_1DD63CF88();
      v64 = v63;
      v65 = *(v37 + 8);
      v65(v62, v53);
      v66 = OUTLINED_FUNCTION_57_3();
      (v65)(v66);
      *(v58 + 14) = v64;
      *(v58 + 22) = 2080;
      v67 = v54;
      v68 = [v67 description];
      sub_1DD63FDD8();

      v37 = v84;
      v69 = OUTLINED_FUNCTION_57_3();
      v72 = sub_1DD39565C(v69, v70, v71);
      v53 = v83;

      *(v58 + 24) = v72;
      v73 = v77;
      _os_log_impl(&dword_1DD38D000, v77, v79, "%s EntityResolutionTextClient.resolveEntitiesSync\ntook %f secs and returned GDEntityResolutionResult: %s", v58, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v74 = *(v37 + 8);
      v75 = OUTLINED_FUNCTION_57_3();
      v76(v75);
    }
  }

  else
  {
    v41 = sub_1DD63F9D8();
    v42 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v42))
    {
      v43 = OUTLINED_FUNCTION_54();
      v44 = OUTLINED_FUNCTION_62();
      v85 = v44;
      *v43 = 136315138;
      v45 = OUTLINED_FUNCTION_2_71();
      *(v43 + 4) = sub_1DD39565C(v45, 0xEE005D5243452065, v46);
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v47, v48, v49, v50, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_0_1();
      v37 = v84;
      OUTLINED_FUNCTION_0_1();
    }

    v53 = v83;
    v52 = v81;
  }

  sub_1DD51CB58();
  sub_1DD41BFFC(v8);
  (*(v37 + 8))(v52, v53);
  OUTLINED_FUNCTION_31_17();
}

void sub_1DD51CB58()
{
  OUTLINED_FUNCTION_39_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD63D078();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  sub_1DD6404C8();
  v18 = type metadata accessor for Signpost();
  v19 = *(v18 + 20);
  v20 = *(v5 + *(v18 + 24));
  v21 = *(v5 + v19);
  v22 = *(v5 + v19 + 8);
  v23 = *(v5 + v19 + 16);
  sub_1DD63F9A8();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v24 = sub_1DD63F9F8();
  __swift_project_value_buffer(v24, qword_1EE16F068);
  (*(v9 + 16))(v17, v3, v6);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_43_2();
    v28 = OUTLINED_FUNCTION_62();
    v35 = v28;
    *v27 = 136315394;
    v29 = OUTLINED_FUNCTION_1_84();
    *(v27 + 4) = sub_1DD39565C(v29, v30, &v35);
    *(v27 + 12) = 2048;
    sub_1DD63D068();
    sub_1DD63CF88();
    v32 = v31;
    v33 = *(v9 + 8);
    v33(v14, v6);
    v33(v17, v6);
    *(v27 + 14) = v32;
    OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v25, v26, v1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_36();
  }

  else
  {

    (*(v9 + 8))(v17, v6);
  }

  OUTLINED_FUNCTION_31_17();
}

id sub_1DD51CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DD63FDA8();

  if (a4)
  {
    v7 = sub_1DD63FDA8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithValue:v6 source:v7];

  return v8;
}

id sub_1DD51CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    sub_1DD39638C(0, &qword_1ECCDE488, 0x1E69A9EA0);
    v11 = sub_1DD6400F8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1DD39638C(0, &qword_1ECCDE490, 0x1E696B098);
  v13 = sub_1DD6400F8();

LABEL_8:
  v14 = [v6 initWithSourceIDs:v11 text:v12 spans:v13 mode:a5 includeFeatures:a6 & 1];

  return v14;
}

uint64_t sub_1DD51CF7C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_1DD3FE8AC();
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE478, &qword_1DD657840);
        sub_1DD640A18();
      }
    }

    else
    {
      sub_1DD4E6BB8(v15);
      v17 = *a3;
      v18 = sub_1DD3FE8AC();
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = *(v20[7] + 8 * v12);

      v22 = v20[7];
      v23 = *(v22 + 8 * v12);
      *(v22 + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v24 = (v20[6] + 16 * v12);
      *v24 = v7;
      v24[1] = v6;
      *(v20[7] + 8 * v12) = v10;
      v25 = v20[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v20[2] = v27;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD51D160(void *a1)
{
  v2 = [a1 oneBestTranscript];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

unint64_t sub_1DD51D1D0()
{
  result = qword_1ECCDE468;
  if (!qword_1ECCDE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE460, &unk_1DD657830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE468);
  }

  return result;
}

uint64_t sub_1DD51D234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

unint64_t sub_1DD51D290()
{
  result = qword_1ECCDE470;
  if (!qword_1ECCDE470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFDF0, &unk_1DD644950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE470);
  }

  return result;
}

uint64_t sub_1DD51D30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

unint64_t sub_1DD51D368()
{
  result = qword_1ECCDE498;
  if (!qword_1ECCDE498)
  {
    sub_1DD63E6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE498);
  }

  return result;
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

uint64_t sub_1DD51D3D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD51D414(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void OUTLINED_FUNCTION_13_36()
{

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_22_25()
{
  v2 = *(v1 - 264);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 14) = a1;
  *(v9 + 22) = v11;

  return sub_1DD39565C(0xD000000000000019, v10 | 0x8000000000000000, &a9);
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_1DD63F9F8();
}

void OUTLINED_FUNCTION_34_14(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_40_9@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DD39565C(v2 - 1, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return swift_slowAlloc();
}

uint64_t DateTime.Time.Meridiem.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD51D608()
{
  result = qword_1ECCDE4A0;
  if (!qword_1ECCDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4A0);
  }

  return result;
}

uint64_t sub_1DD51D664@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Time.Meridiem.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8MeridiemOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD51D818()
{
  result = qword_1ECCDE4A8;
  if (!qword_1ECCDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4A8);
  }

  return result;
}

void sub_1DD51D8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = sub_1DD63D2D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) == 1)
  {
    v14 = *(a1 + 24);
    v15 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v16 = (*(v10 + 16))(v13, a3 + v15, v9);
    v17 = *a6;
    MEMORY[0x1EEE9AC00](v16);
    *(&v19 - 4) = a1;
    *(&v19 - 3) = v13;
    *(&v19 - 16) = v14 & 1;
    sub_1DD3EBFB8();
    *a6 = v18;
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1DD51DA38(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v24[1] = a3;
  v25 = sub_1DD63D2B8();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_1DD63D078();
  v10 = *(v24[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DD63C868();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, *a1 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v14, v17);
  if (!*(a2 + 49))
  {

    goto LABEL_5;
  }

  v20 = sub_1DD640CD8();

  if (v20)
  {
LABEL_5:
    sub_1DD63C848();
    goto LABEL_6;
  }

  sub_1DD63C828();
LABEL_6:
  v21 = v25;
  (*(v6 + 104))(v9, *MEMORY[0x1E6969A58], v25);
  v22 = sub_1DD63D2C8();
  (*(v6 + 8))(v9, v21);
  (*(v10 + 8))(v13, v24[0]);
  (*(v15 + 8))(v19, v14);
  return ((v26 & 1) == 0) ^ (v22 > 11);
}

void sub_1DD51DD94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D8, &unk_1DD657A10);
  swift_allocObject();
  sub_1DD54EDA4();
  off_1EE160C78 = v0;
}

uint64_t sub_1DD51DDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D0, &unk_1DD65A7D0);
  swift_allocObject();
  result = sub_1DD54EB20(0);
  qword_1EE160C90 = result;
  return result;
}

uint64_t sub_1DD51DE48()
{
  v10 = sub_1DD640478();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD640438();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DD63FBD8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DD406E2C();
  sub_1DD63FBC8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1DD6404A8();
  qword_1EE160C68 = result;
  return result;
}

uint64_t sub_1DD51E098()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  v1 = OUTLINED_FUNCTION_11(v0, qword_1EE16EFB8);
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "MessagesAppSelectionModelCache#getMessagesAppSelectionSplashModel", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD51E370();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v5))
  {
    v6 = OUTLINED_FUNCTION_9();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "MessagesAppSelectionModelCache#getMessagesAppSelectionSplashModel: Returning model", v6, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C70 != -1)
  {
    OUTLINED_FUNCTION_3_60();
  }

  v7 = *(off_1EE160C78 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();
}

uint64_t sub_1DD51E238()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  v1 = OUTLINED_FUNCTION_11(v0, qword_1EE16EFB8);
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "MessagesAppSelectionModelCache#getMessagesAppSelectionTrialManager", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD51E370();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v5))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v6, v7, "MessagesAppSelectionModelCache#getMessagesAppSelectionTrialManager: Returning TrialManager");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C88 != -1)
  {
    OUTLINED_FUNCTION_2_72();
  }

  v8 = sub_1DD508C14();

  return v8;
}

uint64_t sub_1DD51E370()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  v1 = OUTLINED_FUNCTION_11(v0, qword_1EE16EFB8);
  v2 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v2))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v3, v4, "MessagesAppSelectionModelCache#initializeAssets");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C60 != -1)
  {
    OUTLINED_FUNCTION_1_85();
  }

  v5 = qword_1EE160C68;
  v9[4] = sub_1DD51DD90;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD5FFDB0;
  v9[3] = &block_descriptor_5;
  v6 = _Block_copy(v9);
  v7 = v5;

  dispatch_sync(v7, v6);

  _Block_release(v6);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD51E4EC()
{
  if (qword_1EE160C70 != -1)
  {
    OUTLINED_FUNCTION_3_60();
  }

  v0 = *(off_1EE160C78 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();

  v1 = v24;
  result = sub_1DD51EF94(aBlock);
  if (!v1)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v3 = sub_1DD63F9F8();
    v4 = OUTLINED_FUNCTION_11(v3, qword_1EE16EFB8);
    v5 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v5))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v6, v7, "MessagesAppSelectionModelCache#loadAssets messagesAppSelectionSplashModel is nil");
      OUTLINED_FUNCTION_0_1();
    }

    v8 = [objc_opt_self() clientWithIdentifier_];
    v9 = qword_1ECCDE4B0;
    v10 = off_1ECCDE4B8;
    type metadata accessor for TrialManager();
    v11 = swift_allocObject();
    v12 = v8;

    v13 = sub_1DD5506B4(v12, v9, v10, v11);
    v14 = qword_1ECCDE4C0;
    v15 = off_1ECCDE4C8;
    type metadata accessor for MessagesAppSelectionModelManager();
    swift_allocObject();
    v16 = sub_1DD51F0DC(v13, v14, v15);

    v17 = sub_1DD63FDA8();

    if (qword_1EE160C60 != -1)
    {
      OUTLINED_FUNCTION_1_85();
    }

    v18 = qword_1EE160C68;
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v16;
    v25 = sub_1DD51EFFC;
    v26 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    v24 = &block_descriptor_8;
    v20 = _Block_copy(aBlock);

    v21 = v18;

    v22 = [v12 addUpdateHandlerForNamespaceName:v17 queue:v21 usingBlock:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    if (qword_1EE160C88 != -1)
    {
      OUTLINED_FUNCTION_2_72();
    }

    sub_1DD5FFB04();

    sub_1DD5FFBF0();
  }

  return result;
}

uint64_t static MessagesAppSelectionModelCache.prewarm()()
{
  v0 = sub_1DD63FB78();
  v1 = OUTLINED_FUNCTION_0(v0);
  v24 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DD63FBD8();
  v7 = OUTLINED_FUNCTION_0(v23);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v14 = sub_1DD63F9F8();
  v15 = OUTLINED_FUNCTION_11(v14, qword_1EE16EFB8);
  v16 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v16))
  {
    v17 = OUTLINED_FUNCTION_9();
    *v17 = 0;
    _os_log_impl(&dword_1DD38D000, v15, v16, "MessagesAppSelectionModelCache#prewarm", v17, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C60 != -1)
  {
    OUTLINED_FUNCTION_1_85();
  }

  v18 = qword_1EE160C68;
  aBlock[4] = sub_1DD51DD90;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  sub_1DD63FBA8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v13, v6, v19);
  _Block_release(v19);

  (*(v24 + 8))(v6, v0);
  return (*(v9 + 8))(v13, v23);
}

uint64_t sub_1DD51EBD0()
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "MessagesAppSelectionModelCache#loadAssets Trial update handler invoked", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD600008();
  if (qword_1EE160C88 != -1)
  {
    swift_once();
  }

  sub_1DD5FFB04();

  if (qword_1EE160C70 != -1)
  {
    swift_once();
  }

  sub_1DD5FFBF0();
}

uint64_t sub_1DD51ED94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v5 = sub_1DD63F9F8();
  v6 = OUTLINED_FUNCTION_11(v5, qword_1EE16EFB8);
  v7 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v7))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  *a1 = a2;
}

void sub_1DD51EE58(uint64_t a1)
{
  sub_1DD51EF94(a1);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_1DD63F9F8();
  v2 = OUTLINED_FUNCTION_11(v1, qword_1EE16EFB8);
  v3 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54E51C();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD51EF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD51EFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD51EBD0();
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return swift_once();
}

uint64_t sub_1DD51F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = "MessagesAppSelectionDefaultModelLoad";
  *(v3 + 24) = 36;
  *(v3 + 32) = 2;
  *(v3 + 40) = "MessagesAppSelectionTrialModelLoad";
  *(v3 + 48) = 34;
  *(v3 + 56) = 2;
  *(v3 + 72) = a3;
  *(v3 + 80) = a1;
  *(v3 + 64) = a2;
  return v3;
}

uint64_t sub_1DD51F118@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = *v1;
  v4 = type metadata accessor for Signpost();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[2];
  v9 = v2[3];
  v10 = *(v2 + 32);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v11 = qword_1EE16F0C0;
  v12 = &v7[*(v4 + 20)];
  *v12 = v8;
  *(v12 + 1) = v9;
  v12[16] = v10;
  v13 = v11;
  sub_1DD63F9B8();
  *&v7[*(v4 + 24)] = v13;
  v14 = v13;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD643F90;
  v16 = sub_1DD6408F8();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DD392BD8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_73();
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1EE16EFB8);
  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640398();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DD38D000, v20, v21, "MessagesAppSelectionModelManager#defaultModel Loading default messages CoreML model", v22, 2u);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  v23 = type metadata accessor for MessageAppPredictorPeopleCentric();
  v24 = sub_1DD3C5588();
  v25 = sub_1DD63AD90(v24);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_2_73();
  sub_1DD63F9A8();
  result = sub_1DD41BFFC(v7);
  if (v25)
  {
    v27 = &off_1F58BB690;
  }

  else
  {
    v23 = 0;
    v27 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v25;
  a1[3] = v23;
  a1[4] = v27;
  return result;
}

uint64_t sub_1DD51F404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v61 = a1;
  v55 = *v2;
  v3 = sub_1DD63CE68();
  v62 = *(v3 - 8);
  v4 = v62[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v9;
  v10 = type metadata accessor for Signpost();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[5];
  v15 = v2[6];
  v16 = *(v2 + 56);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v17 = qword_1EE16F0C0;
  v18 = &v13[*(v10 + 20)];
  *v18 = v14;
  *(v18 + 1) = v15;
  v18[16] = v16;
  v19 = v17;
  sub_1DD63F9B8();
  *&v13[*(v10 + 24)] = v19;
  v20 = v19;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD643F90;
  v22 = sub_1DD6408F8();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DD392BD8();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  OUTLINED_FUNCTION_3_61();
  v53 = v20;
  v58 = v15;
  v59 = v14;
  v57 = v16;
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v25 = sub_1DD63F9F8();
  __swift_project_value_buffer(v25, qword_1EE16EFB8);
  v26 = v62;
  v27 = v62[2];
  v28 = v52;
  v27(v52, v61, v3);
  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640398();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63 = v32;
    *v31 = 136315138;
    v33 = sub_1DD63CDC8();
    v51 = v13;
    v35 = v34;
    v36 = v62[1];
    v49 = v33;
    v50 = v36;
    v36(v28, v3);
    v37 = sub_1DD39565C(v49, v35, &v63);
    v13 = v51;

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1DD38D000, v29, v30, "MessagesAppSelectionModelManager#compiledModel Loading compiled messages CoreML model from url: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12B3DA0](v32, -1, -1);
    MEMORY[0x1E12B3DA0](v31, -1, -1);

    v38 = v50;
  }

  else
  {

    v38 = v26[1];
    v38(v28, v3);
  }

  v39 = v56;
  v27(v56, v61, v3);
  v40 = sub_1DD3C5588();
  sub_1DD51FA60();
  v41 = v54;
  v27(v54, v39, v3);
  v42 = sub_1DD551650(v41, v40);
  v38(v39, v3);
  type metadata accessor for MessageAppPredictorPeopleCentric();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  sub_1DD6404C8();
  sub_1DD63F9A8();
  if (v43)
  {
    v44 = type metadata accessor for MessageAppPredictorPeopleCentric();
    result = sub_1DD41BFFC(v13);
    v46 = &off_1F58BB690;
  }

  else
  {
    result = sub_1DD41BFFC(v13);
    v44 = 0;
    v46 = 0;
    v47 = v60;
    v60[1] = 0;
    v47[2] = 0;
  }

  v48 = v60;
  *v60 = v43;
  v48[3] = v44;
  v48[4] = v46;
  return result;
}

uint64_t sub_1DD51F958()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_1DD51F980()
{
  sub_1DD51F958();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD51F9E4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 72);

  return v1;
}

unint64_t sub_1DD51FA60()
{
  result = qword_1EE163888;
  if (!qword_1EE163888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163888);
  }

  return result;
}

uint64_t static MetricsService.log(metric:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  return sub_1DD51FAEC(&v2);
}

uint64_t sub_1DD51FAEC(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = sub_1DD63C7D8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD63C7C8();
  v20 = v1;
  v21 = v2;
  v22 = v3;
  sub_1DD51FF5C();
  v7 = sub_1DD63C7B8();
  v9 = v8;
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F0C8);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    v20 = 0xD000000000000019;
    v21 = 0x80000001DD66CE50;
    MEMORY[0x1E12B2260](v1, v2);
    v15 = sub_1DD39565C(0xD000000000000019, 0x80000001DD66CE50, &v19);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1DD38D000, v11, v12, "sending metric %{public}s to Core Analytics", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  v16 = sub_1DD5B1470(1, sub_1DD51FFB0, 0);
  v17 = sub_1DD63CF08();
  [v16 logCoreAnalyticsMetricWithMetricsData_];
  swift_unknownObjectRelease();

  return sub_1DD3AD790(v7, v9);
}

_BYTE *storeEnumTagSinglePayload for MetricsService(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD51FF5C()
{
  result = qword_1ECCDE4E0;
  if (!qword_1ECCDE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4E0);
  }

  return result;
}

void sub_1DD51FFB0(void *a1)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = a1;
  oslog = sub_1DD63F9D8();
  v4 = sub_1DD640378();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1DD640D88();
    v9 = sub_1DD39565C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DD38D000, oslog, v4, "Error in XPC connection: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD520148(uint64_t a1, uint64_t a2)
{
  result = sub_1DD4061B8(0xD000000000000049, 0x80000001DD66F3A0, MEMORY[0x1E69E7CC0]);
  if (!v2)
  {

    v6 = sub_1DD5204D0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v25 = a1;
      v10 = (a2 + 64);
      v26 = v8;
      v24 = v6;
      do
      {
        v11 = *(v10 - 4);
        v12 = *(v10 - 3);
        v13 = *(v10 - 16);
        v14 = *(v10 - 1);
        v15 = *v10;
        v27[0] = v11;
        v27[1] = v12;
        v28 = v13;
        v29 = v14;
        v30 = v15;
        if (v6 != v11 || v8 != v12)
        {
          if (sub_1DD640CD8())
          {

            if (v13)
            {
              sub_1DD4061B8(0xD000000000000019, 0x80000001DD66F410, MEMORY[0x1E69E7CC0]);
            }

            sub_1DD4062C8(0, v25, v27, v25);
            if (v13)
            {
              sub_1DD4061B8(0xD000000000000018, 0x80000001DD66F3F0, MEMORY[0x1E69E7CC0]);
            }

            if (qword_1EE160538 != -1)
            {
              swift_once();
            }

            v17 = sub_1DD63F9F8();
            __swift_project_value_buffer(v17, qword_1EE16EEE8);

            v18 = sub_1DD63F9D8();
            v19 = sub_1DD640368();

            if (os_log_type_enabled(v18, v19))
            {
              log = v18;
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v31 = v21;
              *v20 = 136315138;

              v22 = sub_1DD39565C(v11, v12, &v31);

              *(v20 + 4) = v22;
              _os_log_impl(&dword_1DD38D000, log, v19, "ran migration id=%s", v20, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v21);
              MEMORY[0x1E12B3DA0](v21, -1, -1);
              MEMORY[0x1E12B3DA0](v20, -1, -1);
            }

            else
            {
            }
          }

          v8 = v26;
          v6 = v24;
        }

        v10 += 5;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_1DD5204D0()
{
  result = sub_1DD406240(0xD000000000000037, 0x80000001DD66F460, MEMORY[0x1E69E7CC0], v3);
  if (!v0)
  {
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1DD5206B4(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD52058C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  result = (*(a1 + 24))(a2);
  if (!v2)
  {
    return sub_1DD5205E0(*a1, *(a1 + 8));
  }

  return result;
}

uint64_t sub_1DD5205E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1DD4061B8(0xD00000000000002BLL, 0x80000001DD66F430, inited);
  if (!v2)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD5206B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MKMapItem.toLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = sub_1DD63D328();
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v74 - v10;
  v12 = [v2 placemark];
  [v12 coordinate];

  v13 = sub_1DD640218();
  v100 = v14;
  v101 = v13;
  v15 = [v2 placemark];
  [v15 coordinate];

  v16 = sub_1DD640218();
  v98 = v17;
  v99 = v16;
  sub_1DD520E2C([v2 placemark], &selRef_countryCode);
  if (!v18 || (Country.Value.init(rawValue:)(v105), v105[0] == 255))
  {
    v19 = 4;
  }

  else
  {
    v19 = (v105[0] << 16) | 0x303;
  }

  v97 = v19;
  v96 = sub_1DD520DC8(v2);
  v102 = v20;
  v21 = [v2 timeZone];
  if (v21)
  {
    v22 = v21;
    sub_1DD63D308();

    v23 = v93;
    v24 = (*(v4 + 32))(v11, v7, v93);
    v25 = MEMORY[0x1E12AF600](v24);
    v94 = v26;
    v95 = v25;
    (*(v4 + 8))(v11, v23);
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v27 = [v2 pointOfInterestCategory];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1DD63FDD8();
    v92 = v30;
    v93 = v29;

    v90 = 0;
    v91 = 12;
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v90 = 1;
  }

  v31 = OUTLINED_FUNCTION_0_104();
  v89 = sub_1DD520E2C(v31, &selRef_locality);
  v33 = v32;
  v34 = OUTLINED_FUNCTION_0_104();
  v88 = sub_1DD520E2C(v34, &selRef_administrativeArea);
  v36 = v35;
  v37 = OUTLINED_FUNCTION_0_104();
  v82 = sub_1DD520E2C(v37, &selRef_subAdministrativeArea);
  v39 = v38;
  v40 = OUTLINED_FUNCTION_0_104();
  v81 = sub_1DD520E2C(v40, &selRef_postalCode);
  v42 = v41;
  v43 = OUTLINED_FUNCTION_0_104();
  v44 = sub_1DD520E2C(v43, &selRef_thoroughfare);
  if (v45)
  {
    v84 = v45;
    v86 = v44;
    v87 = 1;
    v85 = 2304;
    v83 = 5124;
  }

  else
  {
    v86 = 0;
    v83 = 0;
    v85 = 0;
    v87 = 0;
    v84 = 1;
  }

  result = [v2 _geoMapItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_49;
  }

  v47 = result;
  sub_1DD3AD724(v104);
  memcpy(v103, v104, sizeof(v103));
  swift_bridgeObjectRelease_n();
  sub_1DD3AD738(0, 0);
  memcpy(v105, v103, 0x106uLL);
  sub_1DD3ADFD0(v105, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy(v103, v104, sizeof(v103));
  v80 = xmmword_1DD642F70;
  v106[0] = xmmword_1DD642F70;
  memset(&v106[1], 0, 80);
  v107 = 0;
  sub_1DD3ADFD0(v106, &qword_1ECCDB840, &qword_1DD642FC8);
  v108[0] = v80;
  memset(&v108[1], 0, 64);
  v109 = 0;
  sub_1DD3ADFD0(v108, &qword_1ECCDB848, &qword_1DD642FD0);
  swift_bridgeObjectRelease_n();
  result = [objc_opt_self() mapItemStorageForGEOMapItem_];
  if (!result)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v48 = result;
  *&v80 = a1 + 553;
  v49 = [result data];

  if (v49)
  {
    v50 = sub_1DD63CF28();
    v78 = v51;
    v79 = v50;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v78 = 0xF000000000000000;
    v79 = 0;
  }

  if (v42)
  {
    v52 = v81;
  }

  else
  {
    v52 = 0;
  }

  if (v42)
  {
    v53 = 3;
  }

  else
  {
    v53 = 0;
  }

  v75 = v53;
  v76 = v52;
  v77 = v39;
  if (v39)
  {
    v54 = 771;
  }

  else
  {
    v54 = 0;
  }

  LODWORD(v81) = v54;
  v55 = v82;
  if (!v39)
  {
    v55 = 0;
  }

  v82 = v55;
  if (v36)
  {
    v56 = v88;
  }

  else
  {
    v56 = 0;
  }

  if (v36)
  {
    v57 = 771;
  }

  else
  {
    v57 = 0;
  }

  if (v33)
  {
    v58 = v89;
  }

  else
  {
    v58 = 0;
  }

  if (v33)
  {
    v59 = 771;
  }

  else
  {
    v59 = 0;
  }

  if (v102)
  {
    v60 = 3;
  }

  else
  {
    v60 = 0;
  }

  LODWORD(v89) = v60;
  v61 = v96;
  if (!v102)
  {
    v61 = 0;
  }

  v96 = v61;
  sub_1DD3AD77C(0, 0xF000000000000000);
  *a1 = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = 4;
  v62 = v97;
  *(a1 + 13) = BYTE2(v97);
  *(a1 + 11) = v62;
  v63 = v76;
  *(a1 + 16) = v75;
  *(a1 + 24) = v63;
  *(a1 + 32) = v42;
  *(a1 + 40) = v57;
  *(a1 + 48) = v56;
  *(a1 + 56) = v36;
  *(a1 + 64) = v59;
  *(a1 + 72) = v58;
  v65 = v100;
  v64 = v101;
  *(a1 + 80) = v33;
  *(a1 + 88) = v64;
  v66 = v98;
  v67 = v99;
  *(a1 + 96) = v65;
  *(a1 + 104) = v67;
  *(a1 + 112) = v66;
  result = memcpy((a1 + 120), v103, 0x106uLL);
  v68 = v94;
  *(a1 + 384) = v95;
  *(a1 + 392) = v68;
  *(a1 + 400) = 5;
  v69 = v90;
  *(a1 + 408) = 0;
  *(a1 + 416) = v69;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v70 = v92;
  *(a1 + 488) = v93;
  *(a1 + 496) = v70;
  *(a1 + 504) = v91;
  *(a1 + 512) = v86;
  *(a1 + 520) = v84;
  *(a1 + 528) = v83;
  *(a1 + 530) = 0u;
  *(a1 + 545) = 0;
  v71 = v85;
  v72 = v80;
  *v80 = v85;
  *(a1 + 569) = 0;
  *(a1 + 555) = 0u;
  *(v72 + 24) = v71;
  *(a1 + 579) = v87;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0x2040000000000;
  *(a1 + 608) = v96;
  *(a1 + 616) = v102;
  *(a1 + 624) = v89;
  *(a1 + 632) = 0u;
  *(a1 + 648) = v82;
  *(a1 + 656) = v77;
  *(a1 + 664) = v81;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 515;
  v73 = v78;
  *(a1 + 696) = v79;
  *(a1 + 704) = v73;
  return result;
}

uint64_t sub_1DD520DC8(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD520E2C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DD63FDD8();

  return v4;
}

void sub_1DD520E98(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD643B80;
  sub_1DD5210EC();
  *(v5 + 32) = sub_1DD640598();
  v6 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v7 = sub_1DD521130(v5, 65568);
  if (!v2)
  {
    v8 = v7;
    v9 = sub_1DD6402C8();
    [v8 setObject:v9 atIndexedSubscript:0];

    v10 = sub_1DD63C044(a1, v8);
    a2[3] = type metadata accessor for PhoneAppPredictorOutput();
    a2[4] = &off_1F58BB718;

    *a2 = v10;
  }
}

uint64_t sub_1DD521034@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = a1();
  if (!v4)
  {
    v9 = result;
    result = a2(0);
    a4[3] = result;
    a4[4] = a3;
    *a4 = v9;
  }

  return result;
}

unint64_t sub_1DD5210EC()
{
  result = qword_1EE163880;
  if (!qword_1EE163880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163880);
  }

  return result;
}

id sub_1DD521130(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1DD5210EC();
  v4 = sub_1DD6400F8();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DD52121C(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v129 = a4;
  v127 = *(a2 - 8);
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v126 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v120 - v11;
  v15 = (v13 + 16);
  v14 = *(v13 + 16);
  v17 = v14(v16, v13, v10);
  v18 = [v17 count];

  if (v18 != 1)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_10;
  }

  v125 = a1;
  isa = a1[2].isa;
  v20 = *(a3 + 8);
  v21 = OUTLINED_FUNCTION_1_86();
  v131 = v23;
  v132 = v22;
  v24 = v23(v21);
  v25 = [v24 count];

  v128 = isa;
  if (isa == v25)
  {
    v124 = v12;
    sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
    v26 = OUTLINED_FUNCTION_1_86();
    v27 = (v14)(v26);
    v28 = [v27 objectAtIndexedSubscript_];

    v29 = sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    sub_1DD640598();
    v30 = v14;
    LOBYTE(v27) = OUTLINED_FUNCTION_7_45();

    if (v27)
    {
      v31 = v129;
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v32 = sub_1DD63F9F8();
      v33 = OUTLINED_FUNCTION_11(v32, qword_1EE16EFB8);
      v34 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v34))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18(&dword_1DD38D000, v35, v36, "MLAppPredictionOutput#getPrediction: model defaults to default app");
        OUTLINED_FUNCTION_0_1();
      }

      *v31 = 0;
      v31[1] = 0;
      *(v31 + 16) = 3;
      return;
    }

    v46 = OUTLINED_FUNCTION_1_86();
    v122 = v15;
    v47 = (v14)(v46);
    v48 = [v47 objectAtIndexedSubscript_];

    v49 = v29;
    sub_1DD640598();
    v50 = OUTLINED_FUNCTION_7_45();

    v51 = OUTLINED_FUNCTION_1_86();
    v52 = v131(v51);
    v53 = [v52 count];

    if ((v53 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    v123 = v50;
    v130 = a2;
    v121 = v30;
    if (v53)
    {
      v54 = 0;
      v55 = v125 + 5;
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v56 = v49;
        v57 = (v131)(v130, a3);
        v58 = [v57 objectAtIndexedSubscript_];

        v59 = sub_1DD640598();
        LOBYTE(v57) = sub_1DD6405B8();

        if (v57)
        {
          if (v54 >= v128)
          {
            __break(1u);
LABEL_60:
            OUTLINED_FUNCTION_0_4();
LABEL_10:
            v37 = sub_1DD63F9F8();
            v38 = OUTLINED_FUNCTION_11(v37, qword_1EE16EFB8);
            v39 = sub_1DD640378();
            if (OUTLINED_FUNCTION_6_55(v39))
            {
              *swift_slowAlloc() = 0;
              v42 = "MLAppPredictionOutput#getPrediction: model output does not contain the appConfidence value of size 1";
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v61 = v55[-1].isa;
          v60 = v55->isa;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = *(v30 + 2);
            sub_1DD3BE2A4();
            v30 = v67;
          }

          v62 = v30;
          v63 = *(v30 + 2);
          v64 = v62;
          if (v63 >= *(v62 + 3) >> 1)
          {
            sub_1DD3BE2A4();
            v64 = v68;
          }

          *(v64 + 2) = v63 + 1;
          v65 = (v64 + 16 * v63);
          v30 = v64;
          v65[4] = v61;
          v65[5] = v60;
        }

        ++v54;
        v55 += 2;
        v49 = v56;
        if (v53 == v54)
        {
          goto LABEL_31;
        }
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v69 = *(v30 + 2);
    if (v69 == 1)
    {
      v50 = v129;
      if (v123)
      {
        if (qword_1EE162D98 == -1)
        {
LABEL_34:
          v70 = sub_1DD63F9F8();
          v71 = OUTLINED_FUNCTION_11(v70, qword_1EE16EFB8);
          v72 = sub_1DD640368();
          if (OUTLINED_FUNCTION_6_55(v72))
          {
            swift_slowAlloc();
            v73 = OUTLINED_FUNCTION_4_57();
            v133 = v73;
            *v49 = 136315138;
            if (!*(v30 + 2))
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v74 = v73;
            v75 = *(v30 + 4);
            v76 = *(v30 + 5);

            v77 = OUTLINED_FUNCTION_5_61();

            *(v49 + 4) = v77;
            OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v78, v79, "MLAppPredictionOutput#getPrediction Direct execution on %s");
            __swift_destroy_boxed_opaque_existential_1(v74);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          if (*(v30 + 2))
          {
            v81 = *(v30 + 4);
            v80 = *(v30 + 5);

            *v50 = v81;
            *(v50 + 8) = v80;
            *(v50 + 16) = 0;
            return;
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_62:
        OUTLINED_FUNCTION_0_4();
        goto LABEL_34;
      }

      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v98 = sub_1DD63F9F8();
      v99 = OUTLINED_FUNCTION_11(v98, qword_1EE16EFB8);
      v100 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v100))
      {
        swift_slowAlloc();
        v101 = OUTLINED_FUNCTION_4_57();
        v133 = v101;
        *v49 = 136315138;
        if (!*(v30 + 2))
        {
LABEL_66:
          __break(1u);
          return;
        }

        v102 = v101;
        v103 = *(v30 + 4);
        v104 = *(v30 + 5);

        v105 = OUTLINED_FUNCTION_5_61();

        *(v49 + 4) = v105;
        OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v106, v107, "MLAppPredictionOutput#getPrediction confirmation on %s");
        __swift_destroy_boxed_opaque_existential_1(v102);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      if (!*(v30 + 2))
      {
        goto LABEL_64;
      }

      v109 = *(v30 + 4);
      v108 = *(v30 + 5);

      *v50 = v109;
      *(v50 + 8) = v108;
      v110 = 1;
LABEL_56:
      *(v50 + 16) = v110;
      return;
    }

    v50 = v129;
    if (!((v69 == 0) | v123 & 1))
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v111 = sub_1DD63F9F8();
      v112 = OUTLINED_FUNCTION_11(v111, qword_1EE16EFB8);
      v113 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v113))
      {
        swift_slowAlloc();
        v114 = OUTLINED_FUNCTION_4_57();
        v133 = v114;
        *v49 = 136315138;

        MEMORY[0x1E12B2430](v115, MEMORY[0x1E69E6158]);

        v116 = OUTLINED_FUNCTION_5_61();

        *(v49 + 4) = v116;
        OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v117, v118, "MLAppPredictionOutput#getPrediction disambigutaion on %s");
        __swift_destroy_boxed_opaque_existential_1(v114);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      *v50 = v30;
      *(v50 + 8) = 0;
      v110 = 2;
      goto LABEL_56;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v82 = sub_1DD63F9F8();
    __swift_project_value_buffer(v82, qword_1EE16EFB8);
    v83 = v127;
    v84 = *(v127 + 16);
    v85 = v124;
    v86 = v130;
    v84(v124, v49, v130);
    v87 = v126;
    v84(v126, v49, v86);
    v88 = sub_1DD63F9D8();
    v89 = sub_1DD640378();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v128 = v30;
      v91 = v90;
      v92 = swift_slowAlloc();
      *v91 = 138412546;
      v125 = v88;
      v93 = (v131)(v86, a3);
      v94 = *(v83 + 8);
      v94(v85, v86);
      *(v91 + 4) = v93;
      *v92 = v93;
      *(v91 + 12) = 2112;
      v95 = v121(v86, a3);
      v94(v87, v86);
      *(v91 + 14) = v95;
      v92[1] = v95;
      v96 = v125;
      _os_log_impl(&dword_1DD38D000, v125, v89, "MLAppPredictionOutput#getPrediction: Unexpected output from model %@ & %@", v91, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
      swift_arrayDestroy();
      v97 = v129;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v119 = *(v83 + 8);
      v119(v87, v86);
      v119(v85, v86);

      v97 = v129;
    }

    *v97 = 0;
    v97[1] = 0;
    *(v97 + 16) = 3;
  }

  else
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v43 = sub_1DD63F9F8();
    v38 = OUTLINED_FUNCTION_11(v43, qword_1EE16EFB8);
    v44 = sub_1DD640378();
    if (OUTLINED_FUNCTION_6_55(v44))
    {
      *swift_slowAlloc() = 0;
      v42 = "MLAppPredictionOutput#getPrediction: model output does not contain appsShowToUser value for all eligible candidate apps";
LABEL_16:
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v40, v41, v42);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_17:

    v45 = v129;
    *v129 = 0;
    v45[1] = 0;
    *(v45 + 16) = 3;
  }
}

uint64_t type metadata accessor for MLContactRecommender()
{
  result = qword_1EE161E08;
  if (!qword_1EE161E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD521CF8()
{
  result = type metadata accessor for ContactInference_v3_24_0_enlife();
  if (v1 <= 0x3F)
  {
    result = sub_1DD63D168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DD521D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for Contact();
  v117 = *(v7 - 8);
  v8 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1_4();
  v116 = v9 - v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v109 - v17);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v20 = OUTLINED_FUNCTION_0(matched);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  if (!*(a1 + 16))
  {
    v32 = *v4;
    v33 = sub_1DD522978();
    v35 = v34;
    v36 = type metadata accessor for ContactResolverRunTimeData(0);
    v37 = v36[10];
    swift_storeEnumTagMultiPayload();
    v38 = v36[14];
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v13);
    v42 = v36[19];
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    v47 = a2 + v36[18];
    sub_1DD63D0E8();
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    *(a2 + 16) = 0;
    OUTLINED_FUNCTION_13_37(0xE000000000000000);
    v48 = MEMORY[0x1E69E7CC0];
    *(a2 + 232) = 0;
    *(a2 + 240) = v48;
    *(a2 + 248) = 1;
    *(a2 + 256) = 0;
    *(a2 + 264) = v32;
    *(a2 + 272) = v33;
    *(a2 + 280) = v35;
    *(a2 + 288) = 0;
    *(a2 + 296) = v48;
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_10_39(v49, v50, xmmword_1DD642F70);
    return;
  }

  v118 = v24;
  v113 = v18;
  MEMORY[0x1EEE9AC00](v23);
  *(&v109 - 2) = v4;
  sub_1DD604500();
  v29 = v28;

  v31 = sub_1DD522F24(v30);

  if (v3)
  {

    return;
  }

  v51 = *(v4 + 8);
  v111 = sub_1DD63AC28(v31);
  v112 = 0;
  v109 = v31;
  v110 = v4;
  v52 = *(v29 + 16);
  v114 = v13;
  v115 = v52;
  if (v52)
  {
    v53 = 0;
    v54 = v118;
    while (1)
    {
      sub_1DD63A9BC();
      v56 = v55;
      v57 = [v55 objectAtIndexedSubscript_];

      [v57 doubleValue];
      v59 = v58;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD5869D0(v29);
        v29 = v63;
      }

      if (v53 >= *(v29 + 16))
      {
        break;
      }

      v56 = (v29 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v53);
      *&v56[*(matched + 32)] = v59;
      sub_1DD63A9D0();
      v61 = v60;
      v62 = [v60 objectAtIndexedSubscript_];

      v54 = [v62 BOOLValue];
      if (v53 >= *(v29 + 16))
      {
        goto LABEL_29;
      }

      ++v53;
      v56[*(matched + 36)] = v54;
      v54 = v118;
      if (v115 == v53)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v54 = v118;
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v112;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }
  }

  sub_1DD5869D0(v29);
  v29 = v108;
LABEL_15:
  v65 = *(v29 + 16);
  v66 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v121[0] = v29 + v66;
  v121[1] = v65;
  sub_1DD5261D8(v121);
  v112 = v56;
  v67 = sub_1DD3CC024(v29, 0, 0, 1, 100);

  sub_1DD63AA6C();
  v69 = v68;
  v70 = [v68 objectAtIndexedSubscript_];

  LODWORD(v115) = [v70 BOOLValue];
  v71 = v67;
  v72 = *(v67 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  v118 = v71;
  if (v72)
  {
    v74 = *(matched + 36);
    v75 = v71 + v66;
    v76 = v54[9];
    v77 = v114;
    do
    {
      sub_1DD527BC4(v75, v27, type metadata accessor for ContactMatchRuntimeData);
      if (*(v27 + v74))
      {
        v78 = v116;
        sub_1DD527BC4(v27, v116, type metadata accessor for Contact);
        OUTLINED_FUNCTION_4_58();
        sub_1DD527C20(v27, v79);
        OUTLINED_FUNCTION_0_38();
        sub_1DD527AF8(v78, v119, v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v73 + 16);
          sub_1DD3BFE14();
          v73 = v88;
        }

        v81 = *(v73 + 16);
        if (v81 >= *(v73 + 24) >> 1)
        {
          sub_1DD3BFE14();
          v73 = v89;
        }

        *(v73 + 16) = v81 + 1;
        v82 = v73 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
        v83 = *(v117 + 72);
        OUTLINED_FUNCTION_0_38();
        sub_1DD527AF8(v119, v84, v85);
        v77 = v114;
      }

      else
      {
        OUTLINED_FUNCTION_4_58();
        sub_1DD527C20(v27, v86);
      }

      v75 += v76;
      --v72;
    }

    while (v72);
  }

  else
  {
    v77 = v114;
  }

  v90 = v113;
  v91 = v115;
  sub_1DD4273F4(v73, v113);

  v119 = sub_1DD522978();
  v117 = v92;
  v93 = v118;

  v94 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4B69D8(v90, a2 + v94[10], &qword_1ECCDBEE0, &unk_1DD645510);
  v95 = v94[14];
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v77);
  v99 = v94[19];
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  v104 = a2 + v94[18];
  sub_1DD63D0E8();

  sub_1DD390754(v90, &qword_1ECCDBEE0, &unk_1DD645510);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = v121[0];
  *(a2 + 20) = *(v121 + 3);
  OUTLINED_FUNCTION_13_37(0xE000000000000000);
  *(a2 + 232) = 0;
  *(a2 + 240) = MEMORY[0x1E69E7CC0];
  *(a2 + 248) = 1;
  *(a2 + 252) = *&v120[3];
  *(a2 + 249) = *v120;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v105 = v117;
  *(a2 + 272) = v119;
  *(a2 + 280) = v105;
  *(a2 + 288) = 0;
  *(a2 + 289) = v91;
  *(a2 + 296) = v93;
  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_10_39(v106, v107, xmmword_1DD642F70);
}

uint64_t sub_1DD5224F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v34 = a2;
  v6 = sub_1DD63CE68();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v32 = a3;
  *a3 = 0;
  v18 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v18 setComputeUnits_];
  v19 = *(v9 + 16);
  v33 = a1;
  v19(v17, a1, v6);
  sub_1DD39638C(0, &qword_1EE163888, 0x1E695FE90);
  v19(v14, v17, v6);
  v20 = sub_1DD551650(v14, v18);
  if (v3)
  {
    v21 = *(v9 + 8);
    v21(v17, v6);
    v22 = sub_1DD63D168();
    OUTLINED_FUNCTION_7(v22);
    (*(v23 + 8))(v34);
    return (v21)(v33, v6);
  }

  else
  {
    v25 = v20;
    v26 = *(v9 + 8);
    v26(v17, v6);
    type metadata accessor for ContactInference_v3_24_0_enlife();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    v26(v33, v6);
    v28 = v32;
    *(v32 + 1) = v27;
    v29 = *(type metadata accessor for MLContactRecommender() + 24);
    v30 = sub_1DD63D168();
    OUTLINED_FUNCTION_7(v30);
    return (*(v31 + 32))(&v28[v29], v34);
  }
}

uint64_t sub_1DD522770(uint64_t a1)
{
  v2 = MEMORY[0x1E12B1F80](166, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v31 = a1;

  v11 = 0;
  v30 = a1 + 64;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(*(v31 + 56) + 8 * v13);
      v15 = sub_1DD525218(*(*(v31 + 48) + v13));
      v17 = v16;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_28();
      v18 = sub_1DD3978DC();
      if (__OFADD__(*(v2 + 16), (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        OUTLINED_FUNCTION_20_28();
        v22 = sub_1DD3978DC();
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_20;
        }

        v20 = v22;
      }

      v8 &= v8 - 1;
      if (v21)
      {

        *(*(v2 + 56) + 8 * v20) = v14;
      }

      else
      {
        OUTLINED_FUNCTION_14_5(v2 + 8 * (v20 >> 6));
        v25 = (v24 + 16 * v20);
        *v25 = v15;
        v25[1] = v17;
        *(*(v2 + 56) + 8 * v20) = v14;
        v26 = *(v2 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_19;
        }

        *(v2 + 16) = v28;
      }

      v11 = v12;
      v4 = v30;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return v2;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

unint64_t sub_1DD522978()
{
  v1 = [*(*(v0 + 8) + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1DD527AA0();
  v3 = sub_1DD63FC58();

  v4 = *MEMORY[0x1E695FDB8];
  sub_1DD59B8A0(v3, &v7);

  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1DD390754(&v7, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  return 0xD000000000000010;
}

uint64_t sub_1DD522A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = sub_1DD63D168();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactResolver.SignalSet(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD527BC4(a1, a3, type metadata accessor for Contact);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  sub_1DD527BC4(a1 + v14, a3 + matched[5], type metadata accessor for ContactResolver.SignalSet);
  sub_1DD527BC4(a1 + v14, v13, type metadata accessor for ContactResolver.SignalSet);
  v16 = type metadata accessor for MLContactRecommender();
  (*(v6 + 16))(v9, v21 + *(v16 + 24), v5);
  result = sub_1DD522C90(v13, v9);
  v18 = a3 + matched[6];
  *v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 8) = 0;
  *(v18 + 16) = v19;
  *(a3 + matched[7]) = result;
  *(a3 + matched[8]) = 0;
  *(a3 + matched[9]) = 1;
  return result;
}

uint64_t sub_1DD522C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for PrivatizedSignalSet(0);
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_1DD3CE274();
  v19 = MEMORY[0x1E12B1F80](166, &type metadata for ContactRankerFeature, MEMORY[0x1E69E63B0], v18);
  v36 = a1;
  sub_1DD527BC4(a1, v10, type metadata accessor for ContactResolver.SignalSet);
  sub_1DD55DD00(v10, v17);
  v20 = 0x20u;
  while (1)
  {
    v21 = byte_1F58AAFD8[v20];
    v22 = sub_1DD52341C(v17, a2, v21);
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1DD3FE6CC(v21);
    if (__OFADD__(*(v19 + 16), (v24 & 1) == 0))
    {
      break;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4E8, &unk_1DD657C00);
    if (sub_1DD640A08())
    {
      v27 = sub_1DD3FE6CC(v21);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_14;
      }

      v25 = v27;
    }

    if (v26)
    {
      *(*(v19 + 56) + 8 * v25) = v22;
    }

    else
    {
      OUTLINED_FUNCTION_14_5(v19 + 8 * (v25 >> 6));
      *(v29 + v25) = v21;
      *(*(v19 + 56) + 8 * v25) = v22;
      v30 = *(v19 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_13;
      }

      *(v19 + 16) = v32;
    }

    if (++v20 == 198)
    {
      v33 = sub_1DD63D168();
      OUTLINED_FUNCTION_7(v33);
      (*(v34 + 8))(a2);
      sub_1DD527C20(v36, type metadata accessor for ContactResolver.SignalSet);
      sub_1DD527C20(v17, type metadata accessor for PrivatizedSignalSet);
      return v19;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

unint64_t sub_1DD522F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F0, &qword_1DD657C10);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F8, &qword_1DD657C18);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v64 = v11 - v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v59 - v14);
  v16 = OUTLINED_FUNCTION_15_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v19 = OUTLINED_FUNCTION_0(v18);
  v62 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v60 = (v23 - v24);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  v61 = &v59 - v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  v30 = *(a1 + 16);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD48, &qword_1DD6440D8);
  v31 = swift_allocObject();
  v66 = xmmword_1DD643F80;
  *(v31 + 16) = xmmword_1DD643F80;
  *(v31 + 32) = 166;
  *(v31 + 40) = v30;
  v72 = 0;
  v68 = sub_1DD3FAC5C(&qword_1EE160330, &qword_1ECCDE500, &qword_1DD657C20);
  v69 = v29;
  v70 = v18;
  sub_1DD63FA98();
  v73 = 0;
  v74 = 0;
  v72 = a1;

  v63 = v15;
LABEL_2:
  v32 = v64;
  sub_1DD5836DC(v64);
  sub_1DD527B54(v32, v15);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  if (__swift_getEnumTagSinglePayload(v15, 1, v33) == 1)
  {

    v52 = v61;
    v51 = v62;
    v53 = *(v62 + 16);
    v55 = v69;
    v54 = v70;
    v53(v61, v69, v70);
    sub_1DD39638C(0, &qword_1EE160238, 0x1E695FED0);
    v53(v60, v52, v54);
    v56 = sub_1DD640338();
    v57 = *(v51 + 8);
    v57(v52, v54);
    type metadata accessor for ContactInference_v3_24_0_enlifeInput();
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    v57(v55, v54);
    return v58;
  }

  else
  {
    v34 = *v15;
    v35 = v15 + *(v33 + 48);
    v36 = *(v35 + *(type metadata accessor for ContactMatchRuntimeData(0) + 28));

    OUTLINED_FUNCTION_4_58();
    result = sub_1DD527C20(v35, v37);
    v39 = 0;
    v40 = 1 << *(v36 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v36 + 64);
    v43 = (v40 + 63) >> 6;
    if (v42)
    {
      while (1)
      {
        v44 = v39;
LABEL_11:
        v45 = __clz(__rbit64(v42)) | (v44 << 6);
        v46 = *(*(v36 + 48) + v45);
        v47 = *(*(v36 + 56) + 8 * v45);
        result = swift_allocObject();
        v48 = result;
        *(result + 16) = v66;
        if (qword_1EE161EB8 != -1)
        {
          result = swift_once();
        }

        v49 = off_1EE161EC0;
        if (!*(off_1EE161EC0 + 2))
        {
          break;
        }

        result = sub_1DD3FE6CC(v46);
        if ((v50 & 1) == 0)
        {
          goto LABEL_21;
        }

        v42 &= v42 - 1;
        *(v48 + 32) = *(v49[7] + 8 * result);
        *(v48 + 40) = v34;
        v71 = v47;
        sub_1DD63FA88();
        result = sub_1DD63FAA8();
        v39 = v44;
        if (!v42)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v44 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v44 >= v43)
        {

          v15 = v63;
          goto LABEL_2;
        }

        v42 = *(v36 + 64 + 8 * v44);
        ++v39;
        if (v42)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

double sub_1DD52341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v463 = a3;
  v464 = a1;
  v460[0] = a2;
  v3 = sub_1DD63F1B8();
  v461 = OUTLINED_FUNCTION_0(v3);
  v462 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v461);
  OUTLINED_FUNCTION_2();
  v460[1] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v460 - v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v460 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v460 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v460 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v460 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = v460 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v460 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v460 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = v460 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = v460 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v53 = v460 - v52;
  switch(v463)
  {
    case 1:
      v54 = *(v464 + 81);
      goto LABEL_206;
    case 2:
      v54 = *(v464 + 82);
      goto LABEL_206;
    case 3:
      v54 = *(v464 + 83);
      goto LABEL_206;
    case 4:
      return *(v464 + 88);
    case 5:
      return *(v464 + 96);
    case 6:
      return *(v464 + 104);
    case 7:
      v388 = type metadata accessor for PrivatizedSignalSet(0);
      v389 = OUTLINED_FUNCTION_3_62(v388);
      if (*v390 >= 2 && *(v390 + 8) == 1)
      {
        v55 = 1.0;
        if (*(v390 + 9))
        {
          return v55;
        }
      }

      if (*(v464 + *(v389 + 188)) == 1 && *(v464 + *(v389 + 108)) == 1 && *(v390 + 8) == 1)
      {
        v55 = 1.0;
        if (*(v390 + 14) != 1)
        {
          return v55;
        }
      }

      return 0.0;
    case 8:
      v59 = *(type metadata accessor for PrivatizedSignalSet(0) + 148);
      goto LABEL_31;
    case 9:
      v59 = *(type metadata accessor for PrivatizedSignalSet(0) + 112);
      goto LABEL_31;
    case 10:
      v102 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v102);
      v54 = *(v103 + 14);
      goto LABEL_206;
    case 11:
      return *(v464 + 16);
    case 12:
      return *(v464 + 24);
    case 13:
      return *(v464 + 32);
    case 14:
      v116 = type metadata accessor for PrivatizedSignalSet(0);
      v117 = OUTLINED_FUNCTION_11_40(*(v116 + 96));
      sub_1DD4B69D8(v117, v53, v118, v119);
      v120 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v53);
      if (!v65)
      {
        v406 = *MEMORY[0x1E69D2A28];
        v407 = OUTLINED_FUNCTION_8_49();
        v408(v407);
        v409 = sub_1DD63F388();
        v410 = *(v21 + 1);
        v411 = OUTLINED_FUNCTION_20_28();
        v412(v411);
        OUTLINED_FUNCTION_6_56();
        (*(v413 + 8))(v53, v120);
        return v409;
      }

      v66 = v53;
      goto LABEL_194;
    case 15:
      v217 = type metadata accessor for PrivatizedSignalSet(0);
      v218 = OUTLINED_FUNCTION_11_40(*(v217 + 96));
      sub_1DD4B69D8(v218, v45, v219, v220);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v45);
      if (!v65)
      {
        v420 = *MEMORY[0x1E69D2A00];
        v421 = OUTLINED_FUNCTION_8_49();
        v422(v421);
        v394 = sub_1DD63F388();
        v423 = *(v21 + 1);
        v424 = OUTLINED_FUNCTION_20_28();
        v425(v424);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v426 + 8);
        v399 = v45;
        goto LABEL_211;
      }

      v66 = v45;
      goto LABEL_194;
    case 16:
      v60 = type metadata accessor for PrivatizedSignalSet(0);
      v61 = OUTLINED_FUNCTION_11_40(*(v60 + 96));
      sub_1DD4B69D8(v61, v42, v62, v63);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v42);
      if (!v65)
      {
        v391 = *MEMORY[0x1E69D2A20];
        v392 = OUTLINED_FUNCTION_2_75();
        v393(v392);
        v394 = v42;
        sub_1DD63F388();
        v395 = OUTLINED_FUNCTION_7_46();
        v396(v395);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v397 + 8);
        v399 = v42;
        goto LABEL_211;
      }

      v66 = v42;
      goto LABEL_194;
    case 17:
      v157 = type metadata accessor for PrivatizedSignalSet(0);
      v158 = OUTLINED_FUNCTION_11_40(*(v157 + 96));
      sub_1DD4B69D8(v158, v39, v159, v160);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v39);
      if (!v65)
      {
        v414 = *MEMORY[0x1E69D29F0];
        v415 = OUTLINED_FUNCTION_2_75();
        v416(v415);
        v394 = v39;
        sub_1DD63F388();
        v417 = OUTLINED_FUNCTION_7_46();
        v418(v417);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v419 + 8);
        v399 = v39;
        goto LABEL_211;
      }

      v66 = v39;
      goto LABEL_194;
    case 18:
      v67 = type metadata accessor for PrivatizedSignalSet(0);
      v68 = OUTLINED_FUNCTION_11_40(*(v67 + 96));
      sub_1DD4B69D8(v68, v36, v69, v70);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v36);
      if (!v65)
      {
        v400 = *MEMORY[0x1E69D2A10];
        v401 = OUTLINED_FUNCTION_2_75();
        v402(v401);
        v394 = v36;
        sub_1DD63F388();
        v403 = OUTLINED_FUNCTION_7_46();
        v404(v403);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v405 + 8);
        v399 = v36;
        goto LABEL_211;
      }

      v66 = v36;
      goto LABEL_194;
    case 19:
      v376 = type metadata accessor for PrivatizedSignalSet(0);
      v377 = OUTLINED_FUNCTION_11_40(*(v376 + 96));
      sub_1DD4B69D8(v377, v33, v378, v379);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v33);
      if (!v65)
      {
        v447 = *MEMORY[0x1E69D29F8];
        v448 = OUTLINED_FUNCTION_2_75();
        v449(v448);
        v394 = v33;
        sub_1DD63F388();
        v450 = OUTLINED_FUNCTION_7_46();
        v451(v450);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v452 + 8);
        v399 = v33;
        goto LABEL_211;
      }

      v66 = v33;
      goto LABEL_194;
    case 20:
      v322 = type metadata accessor for PrivatizedSignalSet(0);
      v323 = OUTLINED_FUNCTION_11_40(*(v322 + 96));
      sub_1DD4B69D8(v323, v30, v324, v325);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v30);
      if (!v65)
      {
        v433 = *MEMORY[0x1E69D2A08];
        v435 = v461;
        v434 = v462;
        v436 = OUTLINED_FUNCTION_23_26();
        v437(v436);
        v394 = sub_1DD63F388();
        (*(v434 + 8))(v24, v435);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v438 + 8);
        v399 = v30;
        goto LABEL_211;
      }

      v66 = v30;
      goto LABEL_194;
    case 21:
      v277 = type metadata accessor for PrivatizedSignalSet(0);
      v278 = OUTLINED_FUNCTION_11_40(*(v277 + 96));
      sub_1DD4B69D8(v278, v27, v279, v280);
      v281 = sub_1DD63F378();
      if (__swift_getEnumTagSinglePayload(v27, 1, v281) == 1)
      {
        v66 = v27;
        goto LABEL_194;
      }

      v427 = *MEMORY[0x1E69D2A18];
      v428 = OUTLINED_FUNCTION_8_49();
      v429(v428);
      v394 = sub_1DD63F388();
      v430 = *(v21 + 1);
      v431 = OUTLINED_FUNCTION_20_28();
      v432(v431);
      (*(*(v281 - 8) + 8))(v27, v281);
      return v394;
    case 22:
      v123 = type metadata accessor for PrivatizedSignalSet(0);
      v124 = OUTLINED_FUNCTION_11_40(*(v123 + 100));
      sub_1DD4B69D8(v124, v24, v125, v126);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D2A28];
      goto LABEL_210;
    case 23:
      v344 = type metadata accessor for PrivatizedSignalSet(0);
      v345 = OUTLINED_FUNCTION_11_40(*(v344 + 100));
      sub_1DD4B69D8(v345, v21, v346, v347);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v21);
      if (!v65)
      {
        v439 = *MEMORY[0x1E69D2A00];
        v440 = v462;
        v441 = OUTLINED_FUNCTION_23_26();
        v442(v441);
        v394 = sub_1DD63F388();
        v443 = *(v440 + 8);
        v444 = OUTLINED_FUNCTION_20_28();
        v445(v444);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v446 + 8);
        v399 = v21;
        goto LABEL_211;
      }

      v66 = v21;
      goto LABEL_194;
    case 24:
      v24 = v48;
      v372 = type metadata accessor for PrivatizedSignalSet(0);
      v373 = OUTLINED_FUNCTION_11_40(*(v372 + 100));
      sub_1DD4B69D8(v373, v24, v374, v375);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D2A20];
      goto LABEL_210;
    case 25:
      v24 = v47;
      v384 = type metadata accessor for PrivatizedSignalSet(0);
      v385 = OUTLINED_FUNCTION_11_40(*(v384 + 100));
      sub_1DD4B69D8(v385, v24, v386, v387);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D29F0];
      goto LABEL_210;
    case 26:
      v24 = v46;
      v153 = type metadata accessor for PrivatizedSignalSet(0);
      v154 = OUTLINED_FUNCTION_11_40(*(v153 + 100));
      sub_1DD4B69D8(v154, v24, v155, v156);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D2A10];
      goto LABEL_210;
    case 27:
      v24 = v51;
      v73 = type metadata accessor for PrivatizedSignalSet(0);
      v74 = OUTLINED_FUNCTION_11_40(*(v73 + 100));
      sub_1DD4B69D8(v74, v24, v75, v76);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D29F8];
      goto LABEL_210;
    case 28:
      v24 = v50;
      v84 = type metadata accessor for PrivatizedSignalSet(0);
      v85 = OUTLINED_FUNCTION_11_40(*(v84 + 100));
      sub_1DD4B69D8(v85, v24, v86, v87);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
        goto LABEL_193;
      }

      v77 = MEMORY[0x1E69D2A08];
      goto LABEL_210;
    case 29:
      v24 = v49;
      v328 = type metadata accessor for PrivatizedSignalSet(0);
      v329 = OUTLINED_FUNCTION_11_40(*(v328 + 100));
      sub_1DD4B69D8(v329, v24, v330, v331);
      v64 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v24);
      if (v65)
      {
LABEL_193:
        v66 = v24;
LABEL_194:
        sub_1DD390754(v66, &qword_1ECCDE510, &qword_1DD65BA20);
        return 0.0;
      }

      else
      {
        v77 = MEMORY[0x1E69D2A18];
LABEL_210:
        v453 = *v77;
        v454 = OUTLINED_FUNCTION_2_75();
        v455(v454);
        v394 = v24;
        sub_1DD63F388();
        v456 = OUTLINED_FUNCTION_7_46();
        v457(v456);
        OUTLINED_FUNCTION_6_56();
        v398 = *(v458 + 8);
        v399 = v24;
LABEL_211:
        v398(v399, v64);
        return v394;
      }

    case 30:
      v54 = *(v464 + 49);
      goto LABEL_206;
    case 31:
      v54 = *(v464 + 52);
      goto LABEL_206;
    case 32:
      v54 = *(v464 + 53);
      goto LABEL_206;
    case 33:
      v54 = *(v464 + 54);
      goto LABEL_206;
    case 34:
      v55 = 1.0;
      if (sub_1DD4F9BB8() & 1) != 0 || (sub_1DD4F9C90())
      {
        return v55;
      }

      return *(v464 + *(type metadata accessor for PrivatizedSignalSet(0) + 156));
    case 35:
      v167 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v167);
      v54 = *(v168 + 8);
      goto LABEL_206;
    case 36:
      v185 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v185);
      v54 = *(v186 + 9);
      goto LABEL_206;
    case 37:
      v284 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v284);
      v54 = *(v285 + 10);
      goto LABEL_206;
    case 38:
      v201 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v201);
      v54 = *(v202 + 11);
      goto LABEL_206;
    case 39:
      v282 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v282);
      v54 = *(v283 + 12);
      goto LABEL_206;
    case 40:
      v223 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v223);
      v54 = *(v224 + 13);
      goto LABEL_206;
    case 41:
      v336 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v336);
      v54 = *(v337 + 15);
      goto LABEL_206;
    case 42:
      v57 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v57);
      v54 = *(v58 + 16);
      goto LABEL_206;
    case 43:
      v78 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v78);
      v54 = *(v79 + 17);
      goto LABEL_206;
    case 44:
      v191 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62(v191);
      v54 = *(v192 + 18);
      goto LABEL_206;
    case 45:
      v59 = *(type metadata accessor for PrivatizedSignalSet(0) + 120);
LABEL_31:
      v54 = *(v464 + v59);
      goto LABEL_206;
    case 46:
      return *(v464 + *(type metadata accessor for PrivatizedSignalSet(0) + 192));
    case 47:
      v296 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v296);
      return *(v297 + 16);
    case 48:
      v181 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v181);
      return *(v182 + 24);
    case 49:
      v314 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v314);
      return *(v315 + 32);
    case 50:
      v292 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v292);
      return *(v293 + 40);
    case 51:
      v121 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v121);
      return *(v122 + 48);
    case 52:
      v129 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v129);
      return *(v130 + 56);
    case 53:
      v294 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v294);
      return *(v295 + 64);
    case 54:
      v326 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v326);
      return *(v327 + 72);
    case 55:
      v71 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v71);
      return *(v72 + 80);
    case 56:
      v82 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v82);
      return *(v83 + 88);
    case 57:
      v127 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v127);
      return *(v128 + 96);
    case 58:
      v141 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v141);
      return *(v142 + 104);
    case 59:
      v92 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v92);
      return *(v93 + 112);
    case 60:
      v98 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v98);
      return *(v99 + 120);
    case 61:
      v352 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v352);
      return *(v353 + 128);
    case 62:
      v356 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v356);
      return *(v357 + 136);
    case 63:
      v114 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v114);
      return *(v115 + 144);
    case 64:
      v360 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v360);
      return *(v361 + 152);
    case 65:
      v366 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v366);
      return *(v367 + 160);
    case 66:
      v382 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v382);
      return *(v383 + 168);
    case 67:
      v237 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v237);
      return *(v238 + 176);
    case 68:
      v380 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v380);
      return *(v381 + 184);
    case 69:
      v96 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v96);
      return *(v97 + 192);
    case 70:
      v364 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v364);
      return *(v365 + 200);
    case 71:
      v243 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v243);
      return *(v244 + 208);
    case 72:
      v106 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v106);
      return *(v107 + 216);
    case 73:
      v235 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v235);
      return *(v236 + 224);
    case 74:
      v90 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v90);
      return *(v91 + 232);
    case 75:
      v368 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v368);
      return *(v369 + 240);
    case 76:
      v370 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v370);
      return *(v371 + 248);
    case 77:
      v110 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v110);
      return *(v111 + 256);
    case 78:
      v348 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v348);
      return *(v349 + 264);
    case 79:
      v290 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v290);
      return *(v291 + 272);
    case 80:
      v286 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v286);
      return *(v287 + 280);
    case 81:
      v80 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v80);
      return *(v81 + 288);
    case 82:
      v88 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v88);
      return *(v89 + 296);
    case 83:
      v187 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v187);
      return *(v188 + 304);
    case 84:
      v193 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v193);
      return *(v194 + 312);
    case 85:
      v133 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v133);
      return *(v134 + 320);
    case 86:
      v94 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v94);
      return *(v95 + 328);
    case 87:
      v358 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v358);
      return *(v359 + 336);
    case 88:
      v104 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v104);
      return *(v105 + 344);
    case 89:
      v247 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v247);
      return *(v248 + 352);
    case 90:
      v147 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v147);
      return *(v148 + 360);
    case 91:
      v350 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v350);
      return *(v351 + 368);
    case 92:
      v342 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v342);
      return *(v343 + 376);
    case 93:
      v332 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v332);
      return *(v333 + 384);
    case 94:
      v135 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v135);
      return *(v136 + 392);
    case 95:
      v100 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v100);
      return *(v101 + 400);
    case 96:
      v161 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v161);
      return *(v162 + 408);
    case 97:
      v362 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v362);
      return *(v363 + 416);
    case 98:
      v171 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v171);
      return *(v172 + 424);
    case 99:
      v131 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v131);
      return *(v132 + 432);
    case 100:
      v255 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v255);
      return *(v256 + 440);
    case 101:
      v205 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v205);
      return *(v206 + 448);
    case 102:
      v225 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v225);
      return *(v226 + 456);
    case 103:
      v257 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v257);
      return *(v258 + 464);
    case 104:
      v251 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v251);
      return *(v252 + 472);
    case 105:
      v203 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v203);
      return *(v204 + 480);
    case 106:
      v306 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v306);
      return *(v307 + 488);
    case 107:
      v183 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v183);
      return *(v184 + 496);
    case 108:
      v302 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v302);
      return *(v303 + 504);
    case 109:
      v145 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v145);
      return *(v146 + 512);
    case 110:
      v334 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v334);
      return *(v335 + 520);
    case 111:
      v320 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v320);
      return *(v321 + 528);
    case 112:
      v139 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v139);
      return *(v140 + 536);
    case 113:
      v338 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v338);
      return *(v339 + 544);
    case 114:
      v354 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v354);
      return *(v355 + 552);
    case 115:
      v108 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v108);
      return *(v109 + 560);
    case 116:
      v195 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v195);
      return *(v196 + 568);
    case 117:
      v179 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v179);
      return *(v180 + 576);
    case 118:
      v143 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v143);
      return *(v144 + 584);
    case 119:
      v340 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v340);
      return *(v341 + 592);
    case 120:
      v275 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v275);
      return *(v276 + 600);
    case 121:
      v173 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v173);
      return *(v174 + 608);
    case 122:
      v112 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v112);
      return *(v113 + 616);
    case 123:
      v304 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v304);
      return *(v305 + 624);
    case 124:
      v245 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v245);
      return *(v246 + 632);
    case 125:
      v199 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v199);
      return *(v200 + 640);
    case 126:
      v298 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v298);
      return *(v299 + 648);
    case 127:
      v316 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v316);
      return *(v317 + 656);
    case -128:
      v137 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v137);
      return *(v138 + 664);
    case -127:
      v151 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v151);
      return *(v152 + 672);
    case -126:
      v149 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v149);
      return *(v150 + 680);
    case -125:
      v165 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v165);
      return *(v166 + 688);
    case -124:
      v177 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v177);
      return *(v178 + 696);
    case -123:
      v273 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v273);
      return *(v274 + 704);
    case -122:
      v239 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v239);
      return *(v240 + 712);
    case -121:
      v271 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v271);
      return *(v272 + 720);
    case -120:
      v312 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v312);
      return *(v313 + 728);
    case -119:
      v310 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v310);
      return *(v311 + 736);
    case -118:
      v163 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v163);
      return *(v164 + 744);
    case -117:
      v318 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v318);
      return *(v319 + 752);
    case -116:
      v211 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v211);
      return *(v212 + 760);
    case -115:
      v213 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v213);
      return *(v214 + 768);
    case -114:
      v308 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v308);
      return *(v309 + 776);
    case -113:
      v288 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v288);
      return *(v289 + 784);
    case -112:
      v259 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v259);
      return *(v260 + 792);
    case -111:
      v249 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v249);
      return *(v250 + 800);
    case -110:
      v300 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v300);
      return *(v301 + 808);
    case -109:
      v265 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v265);
      return *(v266 + 816);
    case -108:
      v241 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v241);
      return *(v242 + 824);
    case -107:
      v169 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v169);
      return *(v170 + 832);
    case -106:
      v221 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v221);
      return *(v222 + 840);
    case -105:
      v175 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v175);
      return *(v176 + 848);
    case -104:
      v261 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v261);
      return *(v262 + 856);
    case -103:
      v207 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v207);
      return *(v208 + 864);
    case -102:
      v189 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v189);
      return *(v190 + 872);
    case -101:
      v267 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v267);
      return *(v268 + 880);
    case -100:
      v209 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v209);
      return *(v210 + 888);
    case -99:
      v269 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v269);
      return *(v270 + 896);
    case -98:
      v229 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v229);
      return *(v230 + 904);
    case -97:
      v263 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v263);
      return *(v264 + 912);
    case -96:
      v253 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v253);
      return *(v254 + 920);
    case -95:
      v197 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v197);
      return *(v198 + 928);
    case -94:
      v227 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v227);
      return *(v228 + 936);
    case -93:
      v215 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v215);
      return *(v216 + 944);
    case -92:
      v231 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v231);
      return *(v232 + 952);
    case -91:
      v233 = type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105(v233);
      return *(v234 + 960);
    default:
      v54 = *(v464 + 80);
LABEL_206:
      if (v54)
      {
        return 1.0;
      }

      else
      {
        return 0.0;
      }
  }
}

unint64_t sub_1DD524C14()
{
  sub_1DD3CE274();
  v0 = sub_1DD63FC88();
  v1 = 0;
  while (1)
  {
    v2 = *(&unk_1F58AAFD8 + v1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v3 = sub_1DD3FE6CC(v2);
    if (__OFADD__(*(v0 + 16), (v4 & 1) == 0))
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE508, &qword_1DD657C28);
    result = sub_1DD640A08();
    if (result)
    {
      result = sub_1DD3FE6CC(v2);
      if ((v6 & 1) != (v8 & 1))
      {
        goto LABEL_14;
      }

      v5 = result;
    }

    if (v6)
    {
      *(*(v0 + 56) + 8 * v5) = v1;
    }

    else
    {
      *(v0 + 8 * (v5 >> 6) + 64) |= 1 << v5;
      *(*(v0 + 48) + v5) = v2;
      *(*(v0 + 56) + 8 * v5) = v1;
      v9 = *(v0 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_13;
      }

      *(v0 + 16) = v11;
    }

    if (++v1 == 166)
    {
      off_1EE161EC0 = v0;
      return result;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD524D98()
{
  v0 = sub_1DD640D18();

  v1 = 0;
  result = 73;
  switch(v0)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v1 = 1;
      goto LABEL_125;
    case 2:
      v1 = 2;
      goto LABEL_125;
    case 3:
      v1 = 3;
      goto LABEL_125;
    case 4:
      v1 = 4;
      goto LABEL_125;
    case 5:
      v1 = 5;
      goto LABEL_125;
    case 6:
      v1 = 6;
      goto LABEL_125;
    case 7:
      v1 = 7;
      goto LABEL_125;
    case 8:
      v1 = 8;
      goto LABEL_125;
    case 9:
      v1 = 9;
      goto LABEL_125;
    case 10:
      v1 = 10;
      goto LABEL_125;
    case 11:
      v1 = 11;
      goto LABEL_125;
    case 12:
      v1 = 12;
      goto LABEL_125;
    case 13:
      v1 = 13;
      goto LABEL_125;
    case 14:
      v1 = 14;
      goto LABEL_125;
    case 15:
      v1 = 15;
      goto LABEL_125;
    case 16:
      v1 = 16;
      goto LABEL_125;
    case 17:
      v1 = 17;
      goto LABEL_125;
    case 18:
      v1 = 18;
      goto LABEL_125;
    case 19:
      v1 = 19;
      goto LABEL_125;
    case 20:
      v1 = 20;
      goto LABEL_125;
    case 21:
      v1 = 21;
      goto LABEL_125;
    case 22:
      v1 = 22;
      goto LABEL_125;
    case 23:
      v1 = 23;
      goto LABEL_125;
    case 24:
      v1 = 24;
      goto LABEL_125;
    case 25:
      v1 = 25;
      goto LABEL_125;
    case 26:
      v1 = 26;
      goto LABEL_125;
    case 27:
      v1 = 27;
      goto LABEL_125;
    case 28:
      v1 = 28;
      goto LABEL_125;
    case 29:
      v1 = 29;
      goto LABEL_125;
    case 30:
      v1 = 30;
      goto LABEL_125;
    case 31:
      v1 = 31;
      goto LABEL_125;
    case 32:
      v1 = 32;
      goto LABEL_125;
    case 33:
      v1 = 33;
      goto LABEL_125;
    case 34:
      v1 = 34;
      goto LABEL_125;
    case 35:
      v1 = 35;
      goto LABEL_125;
    case 36:
      v1 = 36;
      goto LABEL_125;
    case 37:
      v1 = 37;
      goto LABEL_125;
    case 38:
      v1 = 38;
      goto LABEL_125;
    case 39:
      v1 = 39;
      goto LABEL_125;
    case 40:
      v1 = 40;
      goto LABEL_125;
    case 41:
      v1 = 41;
      goto LABEL_125;
    case 42:
      v1 = 42;
      goto LABEL_125;
    case 43:
      v1 = 43;
      goto LABEL_125;
    case 44:
      v1 = 44;
      goto LABEL_125;
    case 45:
      v1 = 45;
      goto LABEL_125;
    case 46:
      v1 = 46;
      goto LABEL_125;
    case 47:
      v1 = 47;
      goto LABEL_125;
    case 48:
      v1 = 48;
      goto LABEL_125;
    case 49:
      v1 = 49;
      goto LABEL_125;
    case 50:
      v1 = 50;
      goto LABEL_125;
    case 51:
      v1 = 51;
      goto LABEL_125;
    case 52:
      v1 = 52;
      goto LABEL_125;
    case 53:
      v1 = 53;
      goto LABEL_125;
    case 54:
      v1 = 54;
      goto LABEL_125;
    case 55:
      v1 = 55;
      goto LABEL_125;
    case 56:
      v1 = 56;
      goto LABEL_125;
    case 57:
      v1 = 57;
      goto LABEL_125;
    case 58:
      v1 = 58;
      goto LABEL_125;
    case 59:
      v1 = 59;
      goto LABEL_125;
    case 60:
      v1 = 60;
      goto LABEL_125;
    case 61:
      v1 = 61;
      goto LABEL_125;
    case 62:
      v1 = 62;
      goto LABEL_125;
    case 63:
      v1 = 63;
      goto LABEL_125;
    case 64:
      v1 = 64;
      goto LABEL_125;
    case 65:
      v1 = 65;
      goto LABEL_125;
    case 66:
      v1 = 66;
      goto LABEL_125;
    case 67:
      v1 = 67;
      goto LABEL_125;
    case 68:
      v1 = 68;
      goto LABEL_125;
    case 69:
      v1 = 69;
      goto LABEL_125;
    case 70:
      v1 = 70;
      goto LABEL_125;
    case 71:
      v1 = 71;
      goto LABEL_125;
    case 72:
      v1 = 72;
LABEL_125:
      result = v1;
      break;
    case 73:
      return result;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x26)
      {
        result = 4294967206;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_1DD525218(char a1)
{
  result = 0x746E656365527369;
  switch(a1)
  {
    case 1:
    case 17:
      OUTLINED_FUNCTION_21_25();
      result = v3 - 12;
      break;
    case 2:
    case 18:
    case 25:
      OUTLINED_FUNCTION_21_25();
      result = v22 - 11;
      break;
    case 3:
      OUTLINED_FUNCTION_21_25();
      result = v19 - 13;
      break;
    case 4:
      result = 0x5279636E65636572;
      break;
    case 5:
    case 10:
    case 15:
    case 20:
    case 22:
    case 24:
    case 27:
    case 29:
    case 40:
    case 46:
    case 52:
    case -111:
    case -108:
    case -105:
      OUTLINED_FUNCTION_21_25();
      result = v17 - 9;
      break;
    case 6:
    case 23:
    case 28:
      OUTLINED_FUNCTION_21_25();
      result = v12 - 8;
      break;
    case 7:
    case 90:
    case 93:
    case 96:
      OUTLINED_FUNCTION_21_25();
      result = v21 - 7;
      break;
    case 8:
      result = 0x69726F7661467369;
      break;
    case 9:
    case 34:
    case 37:
    case -97:
    case -95:
    case -94:
      OUTLINED_FUNCTION_21_25();
      result = v6 - 16;
      break;
    case 11:
    case 108:
    case 111:
    case 114:
    case 119:
    case 122:
    case 125:
    case 126:
    case -127:
    case -124:
      OUTLINED_FUNCTION_21_25();
      result = v13 | 3;
      break;
    case 12:
    case 13:
    case 110:
    case 113:
    case 116:
    case -128:
    case -125:
    case -122:
      OUTLINED_FUNCTION_21_25();
      result = v10 | 4;
      break;
    case 14:
    case 16:
    case 19:
    case 21:
    case 26:
    case 32:
    case 50:
    case 91:
    case 94:
    case 97:
      OUTLINED_FUNCTION_21_25();
      result = v20 - 10;
      break;
    case 30:
      result = 0x7365676775537369;
      break;
    case 31:
      result = 0x6F636F7079487369;
      break;
    case 33:
    case 47:
    case -92:
      OUTLINED_FUNCTION_21_25();
      result = v7 - 14;
      break;
    case 35:
      result = 0x79726575516C6C61;
      break;
    case 36:
    case -120:
    case -117:
    case -114:
    case -103:
    case -100:
      OUTLINED_FUNCTION_21_25();
      result = v9 - 2;
      break;
    case 38:
    case 39:
    case 42:
    case 43:
    case 44:
      OUTLINED_FUNCTION_21_25();
      result = v5 - 15;
      break;
    case 41:
      result = 0x616E6B63694E7369;
      break;
    case 45:
      result = 0x6974616C65527369;
      break;
    case 48:
    case 51:
    case -110:
    case -107:
    case -104:
    case -102:
    case -99:
    case -93:
      OUTLINED_FUNCTION_21_25();
      result = v8 - 5;
      break;
    case 49:
    case 92:
    case 95:
    case 98:
    case -112:
    case -109:
    case -106:
    case -91:
      OUTLINED_FUNCTION_21_25();
      result = v11 - 6;
      break;
    case 53:
      result = 0x6F63536369706F74;
      break;
    case 54:
    case 57:
    case 60:
    case 72:
    case 75:
    case 78:
    case 81:
    case 84:
    case 87:
    case 118:
    case 121:
    case 124:
    case -101:
    case -98:
      OUTLINED_FUNCTION_21_25();
      result = v15 - 1;
      break;
    case 55:
    case 58:
    case 61:
    case 73:
    case 76:
    case 79:
    case 82:
    case 85:
    case 88:
      OUTLINED_FUNCTION_21_25();
      result = v16 - 4;
      break;
    case 56:
      result = 0xD000000000000020;
      break;
    case 59:
      result = 0xD000000000000020;
      break;
    case 62:
      result = 0xD000000000000020;
      break;
    case 63:
    case 66:
    case 69:
    case 99:
    case 102:
    case 105:
      result = 0xD000000000000025;
      break;
    case 64:
    case 67:
    case 70:
    case 100:
    case 103:
    case 106:
    case 117:
    case 120:
    case 123:
    case -119:
    case -116:
    case -113:
    case -96:
      OUTLINED_FUNCTION_21_25();
      result = v14 | 2;
      break;
    case 65:
    case 68:
    case 71:
    case 101:
    case 104:
    case 107:
      OUTLINED_FUNCTION_21_25();
      result = v18 | 6;
      break;
    case 74:
      result = 0xD000000000000020;
      break;
    case 77:
      result = 0xD000000000000020;
      break;
    case 80:
      result = 0xD000000000000020;
      break;
    case 83:
      result = 0xD000000000000020;
      break;
    case 86:
      result = 0xD000000000000020;
      break;
    case 89:
      result = 0xD000000000000020;
      break;
    case 109:
      result = 0xD000000000000020;
      break;
    case 112:
      result = 0xD000000000000020;
      break;
    case 115:
      result = 0xD000000000000020;
      break;
    case 127:
      result = 0xD000000000000020;
      break;
    case -126:
      result = 0xD000000000000020;
      break;
    case -123:
      result = 0xD000000000000020;
      break;
    case -121:
    case -118:
    case -115:
      OUTLINED_FUNCTION_21_25();
      result = v4 | 1;
      break;
    default:
      return result;
  }

  return result;
}