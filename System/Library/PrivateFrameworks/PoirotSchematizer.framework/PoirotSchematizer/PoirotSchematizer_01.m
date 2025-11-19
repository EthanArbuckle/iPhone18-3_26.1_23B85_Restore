unint64_t sub_1D8C36A64()
{
  result = qword_1ECAAB108;
  if (!qword_1ECAAB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB108);
  }

  return result;
}

uint64_t sub_1D8C36AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB110, &qword_1D8C86188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8C36B20(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1D8C84734();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D8C36C58(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C36C58(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C84684();
  if (!result || (result = sub_1D8C846A4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D8C84694();
      return sub_1D8C84734();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C36CEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  sub_1D8C2FD04(v3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB090, "l:");
  v10 = sub_1D8C36DA4();
  v8[0] = a1;
  v8[1] = v3;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  v6 = *v4;
  sub_1D8C84734();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_1D8C36DA4()
{
  result = qword_1ECAAB098;
  if (!qword_1ECAAB098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAB090, "l:");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB098);
  }

  return result;
}

uint64_t sub_1D8C36E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v54 = a1;
  v52 = sub_1D8C84AA4();
  v51 = *(v52 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8C84B24();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v4;
  v14 = *(v4 + 2);
  v48 = *(v4 + 1);
  v47 = v14;
  v53 = *(v4 + 3);
  v49 = v4[32];
  v50 = *(v4 + 9);
  v15 = v4[40];
  v16 = *(v4 + 6);
  v17 = *(v4 + 7);
  ObjectType = swift_getObjectType();
  v19 = a3;
  v20 = v68;
  v21 = (*(a4 + 24))(0xD000000000000024, 0x80000001D8C8BB10, ObjectType, a4);
  if (v20)
  {
    return v19;
  }

  v23 = v21;
  v24 = v22;
  v43 = v13;
  v44 = v10;
  v25 = v51;
  v26 = v52;
  v68 = 0;
  v27 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  *(&v60 + 1) = v24;
  v61 = v27;
  *&v60 = v23;
  v28 = v55;

  result = SchematizedDataComposer.subscript.setter(v54, v28, 1701667182, 0xE400000000000000);
  if (v53 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v53 <= 0x7FFFFFFF)
  {
    v66[0] = v53;
    memset(&v66[1], 0, 24);
    v67 = 0;
    v30 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v30;
    sub_1D8C7590C(v66, 0x7265626D756ELL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v32 = v56;
    v61 = v56;
    if (v17 >> 60 == 15)
    {
      sub_1D8C75164(0x736E6F6974706FLL, 0xE700000000000000, &v56);
      sub_1D8C31D74(v56, *(&v56 + 1), v57, v58, v59);
    }

    else
    {
      v64[0] = v16;
      v64[1] = v17;
      v64[2] = 0;
      v64[3] = 0;
      v65 = 2304;
      sub_1D8C2C5E4(v16, v17);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v32;
      sub_1D8C7590C(v64, 0x736E6F6974706FLL, 0xE700000000000000, v33);
      v61 = v56;
    }

    LOBYTE(v56) = v45;
    v34 = v43;
    sub_1D8C338F8(&v56, v43);
    v35 = sub_1D8C84B14();
    (*(v46 + 8))(v34, v44);
    SchematizedDataComposer.subscript.setter(v35, 0, 1701869940, 0xE400000000000000);
    v36 = v47;

    SchematizedDataComposer.subscript.setter(v48, v36, 0x6D616E5F65707974, 0xE900000000000065);
    v37 = MEMORY[0x1E69AAA48];
    if (!v49)
    {
      v37 = MEMORY[0x1E69AAA40];
    }

    (*(v25 + 104))(v9, *v37, v26);
    v38 = sub_1D8C84A94();
    (*(v25 + 8))(v9, v26);
    SchematizedDataComposer.subscript.setter(v38, 0, 0x6C6562616CLL, 0xE500000000000000);
    if (v15)
    {
      sub_1D8C75164(0x6E695F666F656E6FLL, 0xEB00000000786564, &v56);
      sub_1D8C31D74(v56, *(&v56 + 1), v57, v58, v59);
      v39 = v61;
    }

    else
    {
      v62[0] = v50;
      memset(&v62[1], 0, 24);
      v63 = 0;
      v40 = v61;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v40;
      sub_1D8C7590C(v62, 0x6E695F666F656E6FLL, 0xEB00000000786564, v41);
      v39 = v56;
    }

    v56 = v60;
    v57 = v39;
    swift_unknownObjectRetain();

    v19 = SchematizedDataComposer.compose()();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_1D8C3741C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, char **a5)
{
  v101[6] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v101, ObjectType, a2);
  if (v5)
  {
    goto LABEL_82;
  }

  v13 = v101[0];
  v12 = v101[1];
  v14 = sub_1D8C29E98(a3);
  if (v14 == 2 && v12 >> 62 != 1 && (v12 >> 62 != 2 || __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) >= 2))
  {
    v18 = *a4;
    if (*a4)
    {
      v19 = a4[1] - v18;
      v20 = a4[3];
      if (v20 >= v19)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v20 = a4[3];
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }

      v19 = 0;
    }

    v21 = *(v18 + v20);
    v22 = v20 + 1;
    if (v21 < 0)
    {
      if (v22 >= v19)
      {
        goto LABEL_69;
      }

      v21 &= 0x7Fu;
      v59 = (v18 + v22);
      v22 = v20 + 2;
      v60 = 7;
      while (1)
      {
        v61 = *v59++;
        v21 |= (v61 & 0x7F) << v60;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        if (v22 < v19)
        {
          ++v22;
          v62 = v60 > 0x38;
          v60 += 7;
          if (!v62)
          {
            continue;
          }
        }

        goto LABEL_69;
      }
    }

    a4[3] = v22;
    if ((v21 & 0x80000000) == 0)
    {
      v23 = v21 & 0x7FFFFFFF;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      if (v22 < v25)
      {
        v83 = v25;
        v91 = v13;
        while (1)
        {
          *&v97 = v13;
          *(&v97 + 1) = v12;
          sub_1D8C6DE1C(&v97, v101);
          sub_1D8C29EAC(v101, &v97);
          v26 = v100;
          if (v100 <= 4u)
          {
            break;
          }

          if (v100 <= 7u)
          {
            if (v100 != 5)
            {
              if (v100 == 6)
              {
                v86 = 0;
                v88 = 0;
                v27 = 0;
                v28 = 0;
                v29 = v97;
              }

              else
              {
                v29 = v97;
                v27 = *(&v98 + 1);
                v86 = v98;
                v88 = *(&v97 + 1);
                v28 = v99;
              }

              goto LABEL_45;
            }

LABEL_33:
            v86 = 0;
            v88 = 0;
            v27 = 0;
            v28 = 0;
            v29 = v97;
            goto LABEL_45;
          }

          if (v100 == 8)
          {
            sub_1D8C2AA1C(&v97, &v94);
            v34 = v95;
            v35 = v96;
            __swift_project_boxed_opaque_existential_1(&v94, v95);
            v32 = (*(v35 + 24))(v34, v35);
          }

          else
          {
            if (v100 != 9)
            {
              v95 = MEMORY[0x1E69E6290];
              v96 = MEMORY[0x1E6969DF8];
              v82 = v97;
              v94 = v98;
              v36 = __swift_project_boxed_opaque_existential_1(&v94, MEMORY[0x1E69E6290]);
              v37 = *v36;
              if (*v36 && (v38 = v36[1], v39 = v38 - v37, v38 != v37))
              {
                if (v39 <= 14)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v93 = v38 - v37;
                  memcpy(__dst, v37, v38 - v37);
                  v41 = v81 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v93 << 16)) << 32);
                  v40 = *__dst;
                  swift_unknownObjectRetain();
                  v81 = v41;
                }

                else
                {
                  v48 = sub_1D8C846C4();
                  v49 = *(v48 + 48);
                  v50 = *(v48 + 52);
                  swift_allocObject();
                  swift_unknownObjectRetain();
                  v51 = sub_1D8C84674();
                  v52 = v51;
                  if (v39 >= 0x7FFFFFFF)
                  {
                    sub_1D8C84714();
                    v53 = swift_allocObject();
                    *(v53 + 16) = 0;
                    *(v53 + 24) = v39;
                    v41 = v52 | 0x8000000000000000;
                    v40 = v53;
                  }

                  else
                  {
                    v41 = v51 | 0x4000000000000000;
                    v40 = v39 << 32;
                  }
                }
              }

              else
              {
                swift_unknownObjectRetain();
                v40 = 0;
                v41 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_1(&v94);
              swift_unknownObjectRelease();
              type metadata accessor for SchematizedData();
              v29 = swift_allocObject();
              v86 = 0;
              v88 = 0;
              v27 = 0;
              v28 = 0;
              *(v29 + 16) = v82;
              *(v29 + 32) = v40;
              *(v29 + 40) = v41;
              goto LABEL_45;
            }

            sub_1D8C2AA1C(&v97, &v94);
            v30 = v95;
            v31 = v96;
            __swift_project_boxed_opaque_existential_1(&v94, v95);
            v32 = (*(v31 + 16))(v30, v31);
          }

          v29 = v32;
          v88 = v33;
          __swift_destroy_boxed_opaque_existential_1(&v94);
          v86 = 0;
          v27 = 0;
          v28 = 0;
LABEL_45:
          v42 = *a5;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = sub_1D8C4ABAC(0, *(v42 + 2) + 1, 1, v42);
            *a5 = v42;
          }

          v45 = *(v42 + 2);
          v44 = *(v42 + 3);
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            v54 = sub_1D8C4ABAC((v44 > 1), v45 + 1, 1, v42);
            v46 = v45 + 1;
            v42 = v54;
            *a5 = v54;
          }

          *(v42 + 2) = v46;
          v47 = &v42[40 * v45];
          *(v47 + 4) = v29;
          *(v47 + 5) = v88;
          *(v47 + 6) = v86;
          *(v47 + 7) = v27;
          v47[64] = v28;
          v47[65] = v26;
          sub_1D8C2AB08(v101);
          v22 = a4[3];
          v25 = v83;
          v13 = v91;
          if (v22 >= v83)
          {
            goto LABEL_67;
          }
        }

        if (v100 <= 1u || v100 != 2 && v100 != 3)
        {
          v86 = 0;
          v88 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v97;
          goto LABEL_45;
        }

        goto LABEL_33;
      }

LABEL_67:
      if (v22 == v25)
      {
        result = sub_1D8C2BBF0(v13, v12);
        goto LABEL_82;
      }
    }

LABEL_69:
    sub_1D8C36A64();
    swift_allocError();
    *v63 = xmmword_1D8C86190;
    *(v63 + 16) = 2;
    swift_willThrow();
    result = sub_1D8C2BBF0(v13, v12);
    goto LABEL_82;
  }

  *&v97 = v13;
  *(&v97 + 1) = v12;
  sub_1D8C29F08(&v97, v14, v101);
  v90 = v13;
  sub_1D8C29EAC(v101, &v97);
  v15 = v100;
  if (v100 <= 4u)
  {
    if (v100 <= 1u || v100 != 2 && v100 != 3)
    {
      v87 = 0;
      v89 = 0;
      v85 = 0;
      v16 = 0;
      v17 = v97;
      goto LABEL_77;
    }

    goto LABEL_17;
  }

  if (v100 <= 7u)
  {
    if (v100 != 5)
    {
      if (v100 == 6)
      {
        v87 = 0;
        v89 = 0;
        v85 = 0;
        v16 = 0;
        v17 = v97;
      }

      else
      {
        v17 = v97;
        v87 = v98;
        v89 = *(&v97 + 1);
        v85 = *(&v98 + 1);
        v16 = v99;
      }

      goto LABEL_77;
    }

LABEL_17:
    v87 = 0;
    v89 = 0;
    v85 = 0;
    v16 = 0;
    v17 = v97;
    goto LABEL_77;
  }

  if (v100 == 8)
  {
    sub_1D8C2AA1C(&v97, &v94);
    v64 = v95;
    v65 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v57 = (*(v65 + 24))(v64, v65);
  }

  else
  {
    if (v100 != 9)
    {
      v95 = MEMORY[0x1E69E6290];
      v96 = MEMORY[0x1E6969DF8];
      v84 = v97;
      v94 = v98;
      v66 = __swift_project_boxed_opaque_existential_1(&v94, MEMORY[0x1E69E6290]);
      v67 = *v66;
      if (*v66 && (v68 = v66[1], v69 = &v68[-v67], v68 != v67))
      {
        if (v69 <= 14)
        {
          v70 = sub_1D8C45074(*v66, v68);
          v71 = v79 & 0xFFFFFFFFFFFFFFLL;
          swift_unknownObjectRetain();
        }

        else
        {
          swift_unknownObjectRetain();
          if (v69 >= 0x7FFFFFFF)
          {
            v70 = sub_1D8C45134(v67, v68);
            v71 = v80 | 0x8000000000000000;
          }

          else
          {
            v70 = sub_1D8C2B5D0(v67, v68);
            v71 = v78 | 0x4000000000000000;
          }
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v70 = 0;
        v71 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v94);
      swift_unknownObjectRelease();
      type metadata accessor for SchematizedData();
      v17 = swift_allocObject();
      v87 = 0;
      v89 = 0;
      v85 = 0;
      v16 = 0;
      *(v17 + 16) = v84;
      *(v17 + 32) = v70;
      *(v17 + 40) = v71;
      goto LABEL_77;
    }

    sub_1D8C2AA1C(&v97, &v94);
    v55 = v95;
    v56 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v57 = (*(v56 + 16))(v55, v56);
  }

  v17 = v57;
  v89 = v58;
  __swift_destroy_boxed_opaque_existential_1(&v94);
  v85 = 0;
  v87 = 0;
  v16 = 0;
LABEL_77:
  v72 = *a5;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v72;
  if ((v73 & 1) == 0)
  {
    v72 = sub_1D8C4ABAC(0, *(v72 + 2) + 1, 1, v72);
    *a5 = v72;
  }

  v75 = *(v72 + 2);
  v74 = *(v72 + 3);
  if (v75 >= v74 >> 1)
  {
    v72 = sub_1D8C4ABAC((v74 > 1), v75 + 1, 1, v72);
    *a5 = v72;
  }

  *(v72 + 2) = v75 + 1;
  v76 = &v72[40 * v75];
  *(v76 + 4) = v17;
  *(v76 + 5) = v89;
  *(v76 + 6) = v87;
  *(v76 + 7) = v85;
  v76[64] = v16;
  v76[65] = v15;
  sub_1D8C2AB08(v101);
  result = sub_1D8C2BBF0(v90, v12);
LABEL_82:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D8C37CE8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(__int128 *))
{
  v88[6] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v88, ObjectType, a2);
  if (!v5)
  {
    v13 = v88[0];
    v12 = v88[1];
    v14 = sub_1D8C29E98(a3);
    if (v14 != 2 || v12 >> 62 == 1 || v12 >> 62 == 2 && __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
    {
      *&v83 = v13;
      *(&v83 + 1) = v12;
      sub_1D8C29F08(&v83, v14, v88);
      sub_1D8C29EAC(v88, &v83);
      v15 = v87;
      if (v87 <= 4u)
      {
        if (v87 > 1u && (v87 == 2 || v87 == 3))
        {
          v16 = 0;
          v17 = 0;
          v19 = 0uLL;
          v18 = v83;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = v83;
          v19 = 0uLL;
        }

        goto LABEL_77;
      }

      if (v87 <= 7u)
      {
        if (v87 == 5)
        {
          v16 = 0;
          v17 = 0;
          v19 = 0uLL;
          v18 = v83;
        }

        else if (v87 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = v83;
          v19 = 0uLL;
        }

        else
        {
          v16 = *(&v83 + 1);
          v18 = v83;
          v19 = v84;
          v17 = v85;
        }

        goto LABEL_77;
      }

      if (v87 == 8)
      {
        sub_1D8C2AA1C(&v83, &v80);
        v60 = v81;
        v61 = v82;
        __swift_project_boxed_opaque_existential_1(&v80, v81);
        v53 = (*(v61 + 24))(v60, v61);
      }

      else
      {
        if (v87 != 9)
        {
          v81 = MEMORY[0x1E69E6290];
          v82 = MEMORY[0x1E6969DF8];
          v77 = v83;
          v80 = v84;
          v62 = __swift_project_boxed_opaque_existential_1(&v80, MEMORY[0x1E69E6290]);
          v63 = *v62;
          if (*v62 && (v64 = v62[1], v65 = &v64[-v63], v64 != v63))
          {
            if (v65 <= 14)
            {
              v75 = sub_1D8C45074(*v62, v64);
              v66 = v69 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v65 >= 0x7FFFFFFF)
              {
                v75 = sub_1D8C45134(v63, v64);
                v66 = v70 | 0x8000000000000000;
              }

              else
              {
                v75 = sub_1D8C2B5D0(v63, v64);
                v66 = v68 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v75 = 0;
            v66 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v80);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v18 = swift_allocObject();
          v16 = 0;
          v17 = 0;
          *(v18 + 16) = v77;
          *(v18 + 32) = v75;
          *(v18 + 40) = v66;
          goto LABEL_76;
        }

        sub_1D8C2AA1C(&v83, &v80);
        v51 = v81;
        v52 = v82;
        __swift_project_boxed_opaque_existential_1(&v80, v81);
        v53 = (*(v52 + 16))(v51, v52);
      }

      v18 = v53;
      v16 = v54;
      __swift_destroy_boxed_opaque_existential_1(&v80);
      v17 = 0;
LABEL_76:
      v19 = 0uLL;
LABEL_77:
      *&v83 = v18;
      *(&v83 + 1) = v16;
      v84 = v19;
      v85 = v17;
      v86 = v15;
      a5(&v83);
      sub_1D8C31D98(v83, *(&v83 + 1), v84, *(&v84 + 1), v85, v86);
      sub_1D8C2AB08(v88);
      goto LABEL_78;
    }

    v20 = *a4;
    if (*a4)
    {
      v21 = a4[1] - v20;
      v22 = a4[3];
      if (v22 >= v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v22 = a4[3];
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v21 = 0;
    }

    v23 = *(v20 + v22);
    v24 = v22 + 1;
    if (v23 < 0)
    {
      if (v24 >= v21)
      {
        goto LABEL_67;
      }

      v23 &= 0x7Fu;
      v55 = (v20 + v24);
      v24 = v22 + 2;
      v56 = 7;
      while (1)
      {
        v57 = *v55++;
        v23 |= (v57 & 0x7F) << v56;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        if (v24 < v21)
        {
          ++v24;
          v58 = v56 > 0x38;
          v56 += 7;
          if (!v58)
          {
            continue;
          }
        }

        goto LABEL_67;
      }
    }

    a4[3] = v24;
    if ((v23 & 0x80000000) == 0)
    {
      v25 = v23 & 0x7FFFFFFF;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
      }

      if (v24 < v27)
      {
        v76 = v27;
        do
        {
          *&v83 = v13;
          *(&v83 + 1) = v12;
          sub_1D8C6DE1C(&v83, v88);
          sub_1D8C29EAC(v88, &v83);
          v28 = v87;
          if (v87 <= 4u)
          {
            if (v87 > 1u && (v87 == 2 || v87 == 3))
            {
              v29 = 0;
              v30 = 0;
              v32 = 0uLL;
              v31 = v83;
            }

            else
            {
              v29 = 0;
              v30 = 0;
              v31 = v83;
              v32 = 0uLL;
            }

            goto LABEL_48;
          }

          if (v87 <= 7u)
          {
            if (v87 == 5)
            {
              v29 = 0;
              v30 = 0;
              v32 = 0uLL;
              v31 = v83;
            }

            else if (v87 == 6)
            {
              v29 = 0;
              v30 = 0;
              v31 = v83;
              v32 = 0uLL;
            }

            else
            {
              v29 = *(&v83 + 1);
              v31 = v83;
              v32 = v84;
              v30 = v85;
            }

            goto LABEL_48;
          }

          if (v87 == 8)
          {
            sub_1D8C2AA1C(&v83, &v80);
            v38 = v81;
            v37 = v82;
            __swift_project_boxed_opaque_existential_1(&v80, v81);
            v35 = (*(v37 + 24))(v38, v37);
          }

          else
          {
            if (v87 != 9)
            {
              v81 = MEMORY[0x1E69E6290];
              v82 = MEMORY[0x1E6969DF8];
              v74 = v83;
              v80 = v84;
              v39 = __swift_project_boxed_opaque_existential_1(&v80, MEMORY[0x1E69E6290]);
              v40 = *v39;
              if (!*v39 || (v41 = v39[1], v42 = v41 - v40, v41 == v40))
              {
                swift_unknownObjectRetain();
                v73 = 0;
                v43 = 0xC000000000000000;
                goto LABEL_45;
              }

              if (v42 <= 14)
              {
                memset(__dst, 0, sizeof(__dst));
                v79 = v41 - v40;
                memcpy(__dst, v40, v42);
                v73 = *__dst;
                v49 = v71 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v79 << 16)) << 32);
                swift_unknownObjectRetain();
                v71 = v49;
                v72 = v49;
              }

              else
              {
                v44 = sub_1D8C846C4();
                v45 = *(v44 + 48);
                v46 = *(v44 + 52);
                swift_allocObject();
                swift_unknownObjectRetain();
                v47 = sub_1D8C84674();
                v48 = v47;
                if (v42 >= 0x7FFFFFFF)
                {
                  sub_1D8C84714();
                  v50 = swift_allocObject();
                  *(v50 + 16) = 0;
                  *(v50 + 24) = v42;
                  v73 = v50;
                  v43 = v48 | 0x8000000000000000;
                }

                else
                {
                  v73 = v42 << 32;
                  v43 = v47 | 0x4000000000000000;
                }

LABEL_45:
                v72 = v43;
              }

              __swift_destroy_boxed_opaque_existential_1(&v80);
              swift_unknownObjectRelease();
              type metadata accessor for SchematizedData();
              v31 = swift_allocObject();
              v29 = 0;
              v30 = 0;
              *(v31 + 16) = v74;
              *(v31 + 32) = v73;
              *(v31 + 40) = v72;
              goto LABEL_47;
            }

            sub_1D8C2AA1C(&v83, &v80);
            v34 = v81;
            v33 = v82;
            __swift_project_boxed_opaque_existential_1(&v80, v81);
            v35 = (*(v33 + 16))(v34, v33);
          }

          v31 = v35;
          v29 = v36;
          __swift_destroy_boxed_opaque_existential_1(&v80);
          v30 = 0;
LABEL_47:
          v32 = 0uLL;
LABEL_48:
          *&v83 = v31;
          *(&v83 + 1) = v29;
          v84 = v32;
          v85 = v30;
          v86 = v28;
          a5(&v83);
          sub_1D8C31D98(v83, *(&v83 + 1), v84, *(&v84 + 1), v85, v86);
          sub_1D8C2AB08(v88);
          v24 = a4[3];
          v27 = v76;
        }

        while (v24 < v76);
      }

      if (v24 == v27)
      {
LABEL_78:
        result = sub_1D8C2BBF0(v13, v12);
        goto LABEL_79;
      }
    }

LABEL_67:
    sub_1D8C36A64();
    swift_allocError();
    *v59 = xmmword_1D8C86190;
    *(v59 + 16) = 2;
    swift_willThrow();
    goto LABEL_78;
  }

LABEL_79:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D8C3853C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, char **a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v35, ObjectType, a2);
  if (!v5)
  {
    v13 = v35[0];
    v12 = v35[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v12 >> 62 == 1 || v12 >> 62 == 2 && __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
    {
      *&v33 = v13;
      *(&v33 + 1) = v12;
      sub_1D8C29F08(&v33, result, v35);
      sub_1D8C57F10(v35, a5);
      sub_1D8C2AB08(v35);
      return sub_1D8C2BBF0(v13, v12);
    }

    v14 = *a4;
    if (*a4)
    {
      v15 = a4[1] - v14;
      v16 = a4[3];
      if (v16 >= v15)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = a4[3];
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v15 = 0;
    }

    v17 = *(v14 + v16);
    v18 = v16 + 1;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v18 < v15)
    {
      v17 &= 0x7Fu;
      v28 = (v14 + v18);
      v18 = v16 + 2;
      v29 = 7;
      while (1)
      {
        v30 = *v28++;
        v17 |= (v30 & 0x7F) << v29;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        if (v18 < v15)
        {
          ++v18;
          v31 = v29 > 0x38;
          v29 += 7;
          if (!v31)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

LABEL_14:
      a4[3] = v18;
      if ((v17 & 0x80000000) == 0)
      {
        v19 = v17 & 0x7FFFFFFF;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          __break(1u);
          return result;
        }

        for (; v18 < v20; v18 = a4[3])
        {
          *&v33 = v13;
          *(&v33 + 1) = v12;
          sub_1D8C6DE1C(&v33, v35);
          sub_1D8C29EAC(v35, &v33);
          v21 = *a5;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = sub_1D8C4ACC8(0, *(v21 + 2) + 1, 1, v21);
            *a5 = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = sub_1D8C4ACC8((v23 > 1), v24 + 1, 1, v21);
            *a5 = v21;
          }

          *(v21 + 2) = v24 + 1;
          v25 = &v21[48 * v24];
          v26 = v33;
          v27 = v34[0];
          *(v25 + 57) = *(v34 + 9);
          *(v25 + 2) = v26;
          *(v25 + 3) = v27;
          sub_1D8C2AB08(v35);
        }

        if (v18 == v20)
        {
          return sub_1D8C2BBF0(v13, v12);
        }
      }
    }

LABEL_31:
    sub_1D8C36A64();
    swift_allocError();
    *v32 = xmmword_1D8C86190;
    *(v32 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v13, v12);
  }

  return result;
}

void *sub_1D8C38838(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v30, ObjectType, a2);
  if (!v6)
  {
    v15 = v30[0];
    v14 = v30[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v14 >> 62 == 1 || v14 >> 62 == 2 && __PAIR128__((v15 >= 0xD) + v14 + 0x7FFFFFFFFFFFFFFFLL, v15 - 13) < 2)
    {
      v28 = v15;
      v29 = v14;
      sub_1D8C29F08(&v28, result, v30);
      sub_1D8C67FE0(v30, a5, a6);
      sub_1D8C2AB08(v30);
      return sub_1D8C2BBF0(v15, v14);
    }

    v16 = *a4;
    if (*a4)
    {
      v17 = a4[1] - v16;
      v18 = a4[3];
      if (v18 >= v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = a4[3];
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v17 = 0;
    }

    v19 = *(v16 + v18);
    v20 = v18 + 1;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v20 < v17)
    {
      v19 &= 0x7Fu;
      v23 = (v16 + v20);
      v20 = v18 + 2;
      v24 = 7;
      while (1)
      {
        v25 = *v23++;
        v19 |= (v25 & 0x7F) << v24;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        if (v20 < v17)
        {
          ++v20;
          v26 = v24 > 0x38;
          v24 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_14:
      a4[3] = v20;
      if ((v19 & 0x80000000) == 0)
      {
        v21 = v19 & 0x7FFFFFFF;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          __break(1u);
          return result;
        }

        for (; v20 < v22; v20 = a4[3])
        {
          v28 = v15;
          v29 = v14;
          sub_1D8C6DE1C(&v28, v30);
          sub_1D8C67FE0(v30, a5, a6);
          sub_1D8C2AB08(v30);
        }

        if (v20 == v22)
        {
          return sub_1D8C2BBF0(v15, v14);
        }
      }
    }

LABEL_26:
    sub_1D8C36A64();
    swift_allocError();
    *v27 = xmmword_1D8C86190;
    *(v27 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v15, v14);
  }

  return result;
}

void *sub_1D8C38AB4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *))
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v27, ObjectType, a2);
  if (!v5)
  {
    v12 = v27[0];
    v11 = v27[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v11 >> 62 == 1 || v11 >> 62 == 2 && __PAIR128__((v12 >= 0xD) + v11 + 0x7FFFFFFFFFFFFFFFLL, v12 - 13) < 2)
    {
      v25 = v12;
      v26 = v11;
      sub_1D8C29F08(&v25, result, v27);
      a4(v27);
      sub_1D8C2AB08(v27);
      return sub_1D8C2BBF0(v12, v11);
    }

    v13 = *v4;
    if (*v4)
    {
      v14 = v4[1] - v13;
      v15 = v4[3];
      if (v15 >= v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = v4[3];
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v14 = 0;
    }

    v16 = *(v13 + v15);
    v17 = v15 + 1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v17 < v14)
    {
      v16 &= 0x7Fu;
      v20 = (v13 + v17);
      v17 = v15 + 2;
      v21 = 7;
      while (1)
      {
        v22 = *v20++;
        v16 |= (v22 & 0x7F) << v21;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        if (v17 < v14)
        {
          ++v17;
          v23 = v21 > 0x38;
          v21 += 7;
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_14:
      v4[3] = v17;
      if ((v16 & 0x80000000) == 0)
      {
        v18 = v16 & 0x7FFFFFFF;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          __break(1u);
          return result;
        }

        for (; v17 < v19; v17 = v4[3])
        {
          v25 = v12;
          v26 = v11;
          sub_1D8C6DE1C(&v25, v27);
          a4(v27);
          sub_1D8C2AB08(v27);
        }

        if (v17 == v19)
        {
          return sub_1D8C2BBF0(v12, v11);
        }
      }
    }

LABEL_26:
    sub_1D8C36A64();
    swift_allocError();
    *v24 = xmmword_1D8C86190;
    *(v24 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v12, v11);
  }

  return result;
}

void *sub_1D8C38D30(uint64_t a1, char *a2, uint64_t a3, char **a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 7))(v76, ObjectType, a2);
  if (v4)
  {
    return result;
  }

  v12 = v76[0];
  v11 = v76[1];
  v77 = (*(a2 + 6))(ObjectType, a2);
  v68 = v11;
  if ((*(a2 + 2))(ObjectType, a2))
  {
    v13 = *(a3 + 24);
    v14 = v12;
    v15 = v77;
    if (v13 >= *(a3 + 16))
    {
      return sub_1D8C2BBF0(v12, v68);
    }

    v16 = *a3;
    v67 = *a3 + 1;
    v17 = *(a3 + 8) - *a3;
    v18 = a4;
    a4 = *(a3 + 16);
    while (1)
    {
      if (v16)
      {
        v19 = v17;
        if (v13 >= v17)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v19 = 0;
      }

      v20 = *(v16 + v13);
      v21 = v13 + 1;
      if ((v20 & 0x8000000000000000) != 0)
      {
        if (v21 >= v19)
        {
          goto LABEL_68;
        }

        v20 &= 0x7Fu;
        v22 = (v67 + v13);
        v21 = v13 + 2;
        v23 = 7;
        while (1)
        {
          v24 = *v22++;
          v20 |= (v24 & 0x7F) << v23;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          if (v21 < v19)
          {
            ++v21;
            v25 = v23 > 0x38;
            v23 += 7;
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_68;
        }

        *(a3 + 24) = v21;
        if (v20 > 0xFFFFFFFE)
        {
LABEL_68:
          sub_1D8C36A64();
          swift_allocError();
          *v40 = xmmword_1D8C86190;
          *(v40 + 16) = 2;
          swift_willThrow();
          v43 = v14;
          v44 = v68;
          return sub_1D8C2BBF0(v43, v44);
        }
      }

      else
      {
        *(a3 + 24) = v21;
      }

      v26 = v20 & 7;
      if (v20 < 8 || v26 >= 6)
      {
        goto LABEL_68;
      }

      result = (v20 >> 3);
      if (v20 >> 3 == v15)
      {
        sub_1D8C3741C(a1, a2, v20, a3, v18);
      }

      else
      {
        if ((v20 & 7) <= 2)
        {
          if ((v20 & 7) != 0)
          {
            if (v26 == 1)
            {
              v28 = v21 + 8;
              if (__OFADD__(v21, 8))
              {
                __break(1u);
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }
            }

            else
            {
              if (v16)
              {
                v30 = v17;
                if (v21 >= v17)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                if ((v21 & 0x8000000000000000) == 0)
                {
                  goto LABEL_68;
                }

                v30 = 0;
              }

              v34 = *(v16 + v21);
              v35 = v21 + 1;
              if (v34 < 0)
              {
                if (v35 >= v30)
                {
                  goto LABEL_68;
                }

                v34 &= 0x7Fu;
                v37 = (v67 + v21);
                v35 = v21 + 2;
                v38 = 7;
                while (1)
                {
                  v39 = *v37++;
                  v34 |= (v39 & 0x7F) << v38;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  if (v35 < v30)
                  {
                    ++v35;
                    v25 = v38 > 0x38;
                    v38 += 7;
                    if (!v25)
                    {
                      continue;
                    }
                  }

                  goto LABEL_68;
                }
              }

              *(a3 + 24) = v35;
              if ((v34 & 0x80000000) != 0)
              {
                goto LABEL_68;
              }

              v36 = __OFADD__(v35, v34 & 0x7FFFFFFF);
              v28 = v35 + (v34 & 0x7FFFFFFF);
              if (v36)
              {
                __break(1u);
                return result;
              }
            }
          }

          else
          {
            if (v16)
            {
              v29 = v17;
              if (v21 >= v17)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_68;
              }

              v29 = 0;
            }

            v28 = v21 + 1;
            if (*(v16 + v21) < 0)
            {
              if (v28 >= v29)
              {
                goto LABEL_68;
              }

              v31 = (v67 + v21);
              v28 = v21 + 2;
              v32 = 7;
              while (1)
              {
                v33 = *v31++;
                if ((v33 & 0x80000000) == 0)
                {
                  break;
                }

                if (v28 < v29)
                {
                  ++v28;
                  v25 = v32 > 0x38;
                  v32 += 7;
                  if (!v25)
                  {
                    continue;
                  }
                }

                goto LABEL_68;
              }
            }
          }

          goto LABEL_59;
        }

        if (v26 != 3)
        {
          if (v26 == 4)
          {
            goto LABEL_68;
          }

          v28 = v21 + 4;
          if (__OFADD__(v21, 4))
          {
            goto LABEL_105;
          }

LABEL_59:
          *(a3 + 24) = v28;
          goto LABEL_60;
        }

        sub_1D8C45570(result);
        v15 = v77;
      }

LABEL_60:
      v13 = *(a3 + 24);
      if (v13 >= a4)
      {
        v43 = v14;
        v44 = v68;
        return sub_1D8C2BBF0(v43, v44);
      }
    }
  }

  v41 = sub_1D8C29BDC(v77);
  v14 = v12;
  if ((v41 & 0x100000000) != 0)
  {
    v43 = v12;
    v44 = v68;
    return sub_1D8C2BBF0(v43, v44);
  }

  *&v72 = v12;
  *(&v72 + 1) = v68;
  v42 = sub_1D8C29E98(v41);
  sub_1D8C29F08(&v72, v42, v76);
  sub_1D8C29EAC(v76, &v72);
  LOBYTE(v18) = v75;
  if (v75 <= 4u)
  {
    if (v75 <= 1u || v75 != 2 && v75 != 3)
    {
      v77 = 0;
      v66 = 0;
      v67 = 0;
      LOBYTE(v17) = 0;
      a3 = v72;
      goto LABEL_96;
    }

    goto LABEL_84;
  }

  if (v75 <= 7u)
  {
    if (v75 != 5)
    {
      if (v75 == 6)
      {
        v77 = 0;
        v66 = 0;
        v67 = 0;
        LOBYTE(v17) = 0;
        a3 = v72;
      }

      else
      {
        v77 = *(&v72 + 1);
        a3 = v72;
        v66 = *(&v73 + 1);
        v67 = v73;
        LOBYTE(v17) = v74;
      }

      goto LABEL_96;
    }

LABEL_84:
    v77 = 0;
    v66 = 0;
    v67 = 0;
    LOBYTE(v17) = 0;
    a3 = v72;
    goto LABEL_96;
  }

  if (v75 == 8)
  {
    sub_1D8C2AA1C(&v72, &v69);
    v49 = v70;
    v50 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v47 = (*(v50 + 24))(v49, v50);
  }

  else
  {
    if (v75 != 9)
    {
      v70 = MEMORY[0x1E69E6290];
      v71 = MEMORY[0x1E6969DF8];
      v65 = v72;
      v69 = v73;
      v51 = __swift_project_boxed_opaque_existential_1(&v69, MEMORY[0x1E69E6290]);
      v52 = *v51;
      if (*v51 && (v53 = v51[1], v54 = &v53[-v52], v53 != v52))
      {
        if (v54 <= 14)
        {
          v55 = sub_1D8C45074(*v51, v53);
          v56 = v63 & 0xFFFFFFFFFFFFFFLL;
          swift_unknownObjectRetain();
        }

        else
        {
          swift_unknownObjectRetain();
          if (v54 >= 0x7FFFFFFF)
          {
            v55 = sub_1D8C45134(v52, v53);
            v56 = v64 | 0x8000000000000000;
          }

          else
          {
            v55 = sub_1D8C2B5D0(v52, v53);
            v56 = v62 | 0x4000000000000000;
          }
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v55 = 0;
        v56 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v69);
      swift_unknownObjectRelease();
      type metadata accessor for SchematizedData();
      a3 = swift_allocObject();
      v77 = 0;
      v66 = 0;
      v67 = 0;
      LOBYTE(v17) = 0;
      *(a3 + 16) = v65;
      *(a3 + 32) = v55;
      *(a3 + 40) = v56;
      goto LABEL_96;
    }

    sub_1D8C2AA1C(&v72, &v69);
    v45 = v70;
    v46 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v47 = (*(v46 + 16))(v45, v46);
  }

  a3 = v47;
  v77 = v48;
  __swift_destroy_boxed_opaque_existential_1(&v69);
  v66 = 0;
  v67 = 0;
  LOBYTE(v17) = 0;
LABEL_96:
  a2 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_106:
    a2 = sub_1D8C4ABAC(0, *(a2 + 2) + 1, 1, a2);
    *a4 = a2;
  }

  v59 = *(a2 + 2);
  v58 = *(a2 + 3);
  if (v59 >= v58 >> 1)
  {
    a2 = sub_1D8C4ABAC((v58 > 1), v59 + 1, 1, a2);
    *a4 = a2;
  }

  *(a2 + 2) = v59 + 1;
  v60 = &a2[40 * v59];
  v61 = v77;
  *(v60 + 4) = a3;
  *(v60 + 5) = v61;
  *(v60 + 6) = v67;
  *(v60 + 7) = v66;
  v60[64] = v17;
  v60[65] = v18;
  sub_1D8C2AB08(v76);
  return sub_1D8C2BBF0(v14, v68);
}

void *sub_1D8C39444(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(__int128 *), uint64_t a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v82, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v84 = a5;
  v14 = v82;
  v13 = v83;
  v71 = v83;
  v72 = (*(a2 + 48))(ObjectType, a2);
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v44 = sub_1D8C29BDC(v72);
    v45 = v71;
    if ((v44 & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    *&v77 = v14;
    *(&v77 + 1) = v71;
    v46 = sub_1D8C29E98(v44);
    sub_1D8C29F08(&v77, v46, &v82);
    sub_1D8C29EAC(&v82, &v77);
    v47 = v81;
    if (v81 <= 4u)
    {
      if (v81 <= 1u)
      {
        v48 = 0;
        v49 = 0;
        v50 = v77;
        v51 = 0uLL;
      }

      else if (v81 == 2)
      {
        v48 = 0;
        v49 = 0;
        v51 = 0uLL;
        v50 = v77;
      }

      else
      {
        v48 = 0;
        v49 = 0;
        if (v81 == 3)
        {
          v51 = 0uLL;
          v50 = v77;
        }

        else
        {
          v50 = v77;
          v51 = 0uLL;
        }
      }
    }

    else if (v81 > 7u)
    {
      if (v81 == 8)
      {
        sub_1D8C2AA1C(&v77, &v74);
        v58 = v75;
        v59 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, v75);
        v56 = (*(v59 + 24))(v58, v59);
      }

      else
      {
        if (v81 != 9)
        {
          v75 = MEMORY[0x1E69E6290];
          v76 = MEMORY[0x1E6969DF8];
          v73 = v77;
          v74 = v78;
          v60 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x1E69E6290]);
          v61 = *v60;
          if (*v60 && (v62 = v60[1], v63 = &v62[-v61], v62 != v61))
          {
            if (v63 <= 14)
            {
              v64 = sub_1D8C45074(*v60, v62);
              v65 = v67 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v63 >= 0x7FFFFFFF)
              {
                v64 = sub_1D8C45134(v61, v62);
                v65 = v68 | 0x8000000000000000;
              }

              else
              {
                v64 = sub_1D8C2B5D0(v61, v62);
                v65 = v66 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v64 = 0;
            v65 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v74);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v50 = swift_allocObject();
          v48 = 0;
          v49 = 0;
          *(v50 + 16) = v73;
          *(v50 + 32) = v64;
          *(v50 + 40) = v65;
          v51 = 0uLL;
          v45 = v71;
          goto LABEL_97;
        }

        sub_1D8C2AA1C(&v77, &v74);
        v54 = v75;
        v55 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, v75);
        v56 = (*(v55 + 16))(v54, v55);
      }

      v50 = v56;
      v48 = v57;
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v49 = 0;
      v51 = 0uLL;
    }

    else if (v81 == 5)
    {
      v48 = 0;
      v49 = 0;
      v51 = 0uLL;
      v50 = v77;
    }

    else if (v81 == 6)
    {
      v48 = 0;
      v49 = 0;
      v50 = v77;
      v51 = 0uLL;
    }

    else
    {
      v48 = *(&v77 + 1);
      v50 = v77;
      v51 = v78;
      v49 = v79;
    }

LABEL_97:
    *&v77 = v50;
    *(&v77 + 1) = v48;
    v78 = v51;
    v79 = v49;
    v80 = v47;
    a4(&v77);
    sub_1D8C31D98(v77, *(&v77 + 1), v78, *(&v78 + 1), v79, v80);
    sub_1D8C2AB08(&v82);
LABEL_98:
    v52 = v14;
    v53 = v45;
    return sub_1D8C2BBF0(v52, v53);
  }

  v15 = a3[3];
  v16 = v72;
  if (v15 >= a3[2])
  {
LABEL_70:
    v52 = v14;
    v53 = v13;
    return sub_1D8C2BBF0(v52, v53);
  }

  v17 = *a3;
  v18 = a3[1] - *a3;
  v69 = a4;
  v70 = *a3 + 1;
  v19 = a3[2];
  while (1)
  {
    if (v17)
    {
      v20 = v18;
      if (v15 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v20 = 0;
    }

    v21 = *(v17 + v15);
    v22 = v15 + 1;
    if ((v21 & 0x8000000000000000) != 0)
    {
      if (v22 >= v20)
      {
        goto LABEL_68;
      }

      v21 &= 0x7Fu;
      v23 = (v70 + v15);
      v22 = v15 + 2;
      v24 = 7;
      while (1)
      {
        v25 = *v23++;
        v21 |= (v25 & 0x7F) << v24;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        if (v22 < v20)
        {
          ++v22;
          v26 = v24 > 0x38;
          v24 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      a3[3] = v22;
      if (v21 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v43 = xmmword_1D8C86190;
        *(v43 + 16) = 2;
        swift_willThrow();
        goto LABEL_70;
      }
    }

    else
    {
      a3[3] = v22;
    }

    v27 = v21 & 7;
    if (v21 < 8 || v27 >= 6)
    {
      goto LABEL_68;
    }

    result = (v21 >> 3);
    if (v21 >> 3 == v16)
    {
      v29 = v18;
      sub_1D8C37CE8(a1, a2, v21, a3, v69);
      v18 = v29;
      goto LABEL_60;
    }

    if ((v21 & 7) <= 2)
    {
      break;
    }

    if (v27 != 3)
    {
      if (v27 == 4)
      {
        goto LABEL_68;
      }

      v30 = v22 + 4;
      if (__OFADD__(v22, 4))
      {
        goto LABEL_104;
      }

      goto LABEL_59;
    }

    v33 = v18;
    sub_1D8C45570(result);
    v16 = v72;
    v18 = v33;
LABEL_60:
    v15 = a3[3];
    if (v15 >= v19)
    {
      v52 = v14;
      v53 = v13;
      return sub_1D8C2BBF0(v52, v53);
    }
  }

  if ((v21 & 7) == 0)
  {
    if (v17)
    {
      v31 = v18;
      if (v22 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v31 = 0;
    }

    v30 = v22 + 1;
    if (*(v17 + v22) < 0)
    {
      if (v30 >= v31)
      {
        goto LABEL_68;
      }

      v34 = (v70 + v22);
      v30 = v22 + 2;
      v35 = 7;
      while (1)
      {
        v36 = *v34++;
        if ((v36 & 0x80000000) == 0)
        {
          break;
        }

        if (v30 < v31)
        {
          ++v30;
          v26 = v35 > 0x38;
          v35 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v27 != 1)
  {
    if (v17)
    {
      v32 = v18;
      if (v22 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v32 = 0;
    }

    v37 = *(v17 + v22);
    v38 = v22 + 1;
    if (v37 < 0)
    {
      if (v38 >= v32)
      {
        goto LABEL_68;
      }

      v37 &= 0x7Fu;
      v40 = (v70 + v22);
      v38 = v22 + 2;
      v41 = 7;
      while (1)
      {
        v42 = *v40++;
        v37 |= (v42 & 0x7F) << v41;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        if (v38 < v32)
        {
          ++v38;
          v26 = v41 > 0x38;
          v41 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    a3[3] = v38;
    if ((v37 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v39 = __OFADD__(v38, v37 & 0x7FFFFFFF);
    v30 = v38 + (v37 & 0x7FFFFFFF);
    if (v39)
    {
      goto LABEL_105;
    }

    goto LABEL_59;
  }

  v30 = v22 + 8;
  if (!__OFADD__(v22, 8))
  {
LABEL_59:
    a3[3] = v30;
    goto LABEL_60;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void *sub_1D8C39B3C(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v48, ObjectType, a2);
  if (v4)
  {
    return result;
  }

  v12 = v48[0];
  v11 = v48[1];
  v49 = (*(a2 + 48))(ObjectType, a2);
  v45 = v12;
  v46 = v11;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v41 = sub_1D8C29BDC(v49);
    if ((v41 & 0x100000000) == 0)
    {
      v47[0] = v12;
      v47[1] = v11;
      v42 = sub_1D8C29E98(v41);
      sub_1D8C29F08(v47, v42, v48);
      sub_1D8C57F10(v48, a4);
      sub_1D8C2AB08(v48);
    }

    v43 = v12;
    v44 = v11;
    return sub_1D8C2BBF0(v43, v44);
  }

  v14 = a3[2];
  v13 = a3[3];
  v15 = v49;
  if (v13 >= v14)
  {
    return sub_1D8C2BBF0(v12, v46);
  }

  v16 = *a3;
  v17 = a3[1] - *a3;
  v18 = *a3 + 1;
  while (1)
  {
    if (v16)
    {
      v19 = v17;
      if (v13 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v19 = 0;
    }

    v20 = *(v16 + v13);
    v21 = v13 + 1;
    if ((v20 & 0x8000000000000000) != 0)
    {
      if (v21 >= v19)
      {
        goto LABEL_68;
      }

      v20 &= 0x7Fu;
      v22 = (v18 + v13);
      v21 = v13 + 2;
      v23 = 7;
      while (1)
      {
        v24 = *v22++;
        v20 |= (v24 & 0x7F) << v23;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        if (v21 < v19)
        {
          ++v21;
          v25 = v23 > 0x38;
          v23 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      a3[3] = v21;
      if (v20 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v40 = xmmword_1D8C86190;
        *(v40 + 16) = 2;
        swift_willThrow();
        v43 = v45;
        v44 = v46;
        return sub_1D8C2BBF0(v43, v44);
      }
    }

    else
    {
      a3[3] = v21;
    }

    v26 = v20 & 7;
    if (v20 < 8 || v26 >= 6)
    {
      goto LABEL_68;
    }

    result = (v20 >> 3);
    if (v20 >> 3 == v15)
    {
      sub_1D8C3853C(a1, a2, v20, a3, a4);
      goto LABEL_60;
    }

    if ((v20 & 7) <= 2)
    {
      break;
    }

    if (v26 != 3)
    {
      if (v26 == 4)
      {
        goto LABEL_68;
      }

      v28 = v21 + 4;
      if (__OFADD__(v21, 4))
      {
        goto LABEL_76;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
    v15 = v49;
LABEL_60:
    v13 = a3[3];
    if (v13 >= v14)
    {
      v43 = v45;
      v44 = v46;
      return sub_1D8C2BBF0(v43, v44);
    }
  }

  if ((v20 & 7) == 0)
  {
    if (v16)
    {
      v29 = v17;
      if (v21 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v29 = 0;
    }

    v28 = v21 + 1;
    if (*(v16 + v21) < 0)
    {
      if (v28 >= v29)
      {
        goto LABEL_68;
      }

      v31 = (v18 + v21);
      v28 = v21 + 2;
      v32 = 7;
      while (1)
      {
        v33 = *v31++;
        if ((v33 & 0x80000000) == 0)
        {
          break;
        }

        if (v28 < v29)
        {
          ++v28;
          v25 = v32 > 0x38;
          v32 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v26 != 1)
  {
    if (v16)
    {
      v30 = v17;
      if (v21 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v30 = 0;
    }

    v34 = *(v16 + v21);
    v35 = v21 + 1;
    if (v34 < 0)
    {
      if (v35 >= v30)
      {
        goto LABEL_68;
      }

      v34 &= 0x7Fu;
      v37 = (v18 + v21);
      v35 = v21 + 2;
      v38 = 7;
      while (1)
      {
        v39 = *v37++;
        v34 |= (v39 & 0x7F) << v38;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        if (v35 < v30)
        {
          ++v35;
          v25 = v38 > 0x38;
          v38 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    a3[3] = v35;
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v36 = __OFADD__(v35, v34 & 0x7FFFFFFF);
    v28 = v35 + (v34 & 0x7FFFFFFF);
    if (v36)
    {
      goto LABEL_77;
    }

    goto LABEL_59;
  }

  v28 = v21 + 8;
  if (!__OFADD__(v21, 8))
  {
LABEL_59:
    a3[3] = v28;
    goto LABEL_60;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

void *sub_1D8C39F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v54, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v56 = a4;
  v13 = a5;
  v14 = v54;
  v15 = v55;
  v51 = v55;
  v52 = (*(a2 + 48))(ObjectType, a2);
  v50 = v14;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v46 = sub_1D8C29BDC(v52);
    v49 = v15;
    if ((v46 & 0x100000000) != 0)
    {
      v48 = v14;
    }

    else
    {
      v53[0] = v14;
      v53[1] = v15;
      v47 = sub_1D8C29E98(v46);
      sub_1D8C29F08(v53, v47, &v54);
      sub_1D8C67FE0(&v54, v56, v13);
      sub_1D8C2AB08(&v54);
      v48 = v14;
      v49 = v15;
    }

    return sub_1D8C2BBF0(v48, v49);
  }

  v16 = a3;
  v17 = a3[2];
  v18 = v16[3];
  if (v18 >= v17)
  {
LABEL_69:
    v48 = v50;
    v49 = v51;
    return sub_1D8C2BBF0(v48, v49);
  }

  v19 = v13;
  v20 = *v16;
  v21 = v16[1] - *v16;
  v22 = *v16 + 1;
  v23 = v56;
  while (1)
  {
    if (v20)
    {
      v24 = v21;
      if (v18 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v24 = 0;
    }

    v25 = *(v20 + v18);
    v26 = v18 + 1;
    if ((v25 & 0x8000000000000000) != 0)
    {
      if (v26 >= v24)
      {
        goto LABEL_68;
      }

      v25 &= 0x7Fu;
      v27 = (v22 + v18);
      v26 = v18 + 2;
      v28 = 7;
      while (1)
      {
        v29 = *v27++;
        v25 |= (v29 & 0x7F) << v28;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        if (v26 < v24)
        {
          ++v26;
          v30 = v28 > 0x38;
          v28 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      v16[3] = v26;
      if (v25 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v45 = xmmword_1D8C86190;
        *(v45 + 16) = 2;
        swift_willThrow();
        goto LABEL_69;
      }
    }

    else
    {
      v16[3] = v26;
    }

    v31 = v25 & 7;
    if (v25 < 8 || v31 >= 6)
    {
      goto LABEL_68;
    }

    result = (v25 >> 3);
    if (v25 >> 3 == v52)
    {
      sub_1D8C38838(a1, a2, v25, v16, v23, v19);
      goto LABEL_60;
    }

    if ((v25 & 7) <= 2)
    {
      break;
    }

    if (v31 != 3)
    {
      if (v31 == 4)
      {
        goto LABEL_68;
      }

      v33 = v26 + 4;
      if (__OFADD__(v26, 4))
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
LABEL_60:
    v18 = v16[3];
    if (v18 >= v17)
    {
      v48 = v50;
      v49 = v51;
      return sub_1D8C2BBF0(v48, v49);
    }
  }

  if ((v25 & 7) == 0)
  {
    if (v20)
    {
      v34 = v21;
      if (v26 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v34 = 0;
    }

    v33 = v26 + 1;
    if (*(v20 + v26) < 0)
    {
      if (v33 >= v34)
      {
        goto LABEL_68;
      }

      v36 = (v22 + v26);
      v33 = v26 + 2;
      v37 = 7;
      while (1)
      {
        v38 = *v36++;
        if ((v38 & 0x80000000) == 0)
        {
          break;
        }

        if (v33 < v34)
        {
          ++v33;
          v30 = v37 > 0x38;
          v37 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v31 != 1)
  {
    if (v20)
    {
      v35 = v21;
      if (v26 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v35 = 0;
    }

    v39 = *(v20 + v26);
    v40 = v26 + 1;
    if (v39 < 0)
    {
      if (v40 >= v35)
      {
        goto LABEL_68;
      }

      v39 &= 0x7Fu;
      v42 = (v22 + v26);
      v40 = v26 + 2;
      v43 = 7;
      while (1)
      {
        v44 = *v42++;
        v39 |= (v44 & 0x7F) << v43;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        if (v40 < v35)
        {
          ++v40;
          v30 = v43 > 0x38;
          v43 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    v16[3] = v40;
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v41 = __OFADD__(v40, v39 & 0x7FFFFFFF);
    v33 = v40 + (v39 & 0x7FFFFFFF);
    if (v41)
    {
      goto LABEL_76;
    }

    goto LABEL_59;
  }

  v33 = v26 + 8;
  if (!__OFADD__(v26, 8))
  {
LABEL_59:
    v16[3] = v33;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void *sub_1D8C3A368(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v51, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v53 = a4;
  v12 = a3;
  v13 = v51;
  v14 = v52;
  v48 = v52;
  v49 = (*(a2 + 48))(ObjectType, a2);
  v47 = v13;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v43 = sub_1D8C29BDC(v49);
    v46 = v14;
    if ((v43 & 0x100000000) != 0)
    {
      v45 = v13;
    }

    else
    {
      v50[0] = v13;
      v50[1] = v14;
      v44 = sub_1D8C29E98(v43);
      sub_1D8C29F08(v50, v44, &v51);
      v12(&v51);
      sub_1D8C2AB08(&v51);
      v45 = v13;
      v46 = v14;
    }

    return sub_1D8C2BBF0(v45, v46);
  }

  v15 = v4[2];
  v16 = v4[3];
  if (v16 >= v15)
  {
LABEL_69:
    v45 = v47;
    v46 = v48;
    return sub_1D8C2BBF0(v45, v46);
  }

  v17 = v12;
  v18 = *v4;
  v19 = v4[1] - *v4;
  v20 = *v4 + 1;
  while (1)
  {
    if (v18)
    {
      v21 = v19;
      if (v16 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v21 = 0;
    }

    v22 = *(v18 + v16);
    v23 = v16 + 1;
    if ((v22 & 0x8000000000000000) != 0)
    {
      if (v23 >= v21)
      {
        goto LABEL_68;
      }

      v22 &= 0x7Fu;
      v24 = (v20 + v16);
      v23 = v16 + 2;
      v25 = 7;
      while (1)
      {
        v26 = *v24++;
        v22 |= (v26 & 0x7F) << v25;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        if (v23 < v21)
        {
          ++v23;
          v27 = v25 > 0x38;
          v25 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      v4[3] = v23;
      if (v22 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v42 = xmmword_1D8C86190;
        *(v42 + 16) = 2;
        swift_willThrow();
        goto LABEL_69;
      }
    }

    else
    {
      v4[3] = v23;
    }

    v28 = v22 & 7;
    if (v22 < 8 || v28 >= 6)
    {
      goto LABEL_68;
    }

    result = (v22 >> 3);
    if (v22 >> 3 == v49)
    {
      sub_1D8C38AB4(a1, a2, v22, v17);
      goto LABEL_60;
    }

    if ((v22 & 7) <= 2)
    {
      break;
    }

    if (v28 != 3)
    {
      if (v28 == 4)
      {
        goto LABEL_68;
      }

      v30 = v23 + 4;
      if (__OFADD__(v23, 4))
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
LABEL_60:
    v16 = v4[3];
    if (v16 >= v15)
    {
      v45 = v47;
      v46 = v48;
      return sub_1D8C2BBF0(v45, v46);
    }
  }

  if ((v22 & 7) == 0)
  {
    if (v18)
    {
      v31 = v19;
      if (v23 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v31 = 0;
    }

    v30 = v23 + 1;
    if (*(v18 + v23) < 0)
    {
      if (v30 >= v31)
      {
        goto LABEL_68;
      }

      v33 = (v20 + v23);
      v30 = v23 + 2;
      v34 = 7;
      while (1)
      {
        v35 = *v33++;
        if ((v35 & 0x80000000) == 0)
        {
          break;
        }

        if (v30 < v31)
        {
          ++v30;
          v27 = v34 > 0x38;
          v34 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v28 != 1)
  {
    if (v18)
    {
      v32 = v19;
      if (v23 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v32 = 0;
    }

    v36 = *(v18 + v23);
    v37 = v23 + 1;
    if (v36 < 0)
    {
      if (v37 >= v32)
      {
        goto LABEL_68;
      }

      v36 &= 0x7Fu;
      v39 = (v20 + v23);
      v37 = v23 + 2;
      v40 = 7;
      while (1)
      {
        v41 = *v39++;
        v36 |= (v41 & 0x7F) << v40;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        if (v37 < v32)
        {
          ++v37;
          v27 = v40 > 0x38;
          v40 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    v4[3] = v37;
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v38 = __OFADD__(v37, v36 & 0x7FFFFFFF);
    v30 = v37 + (v36 & 0x7FFFFFFF);
    if (v38)
    {
      goto LABEL_76;
    }

    goto LABEL_59;
  }

  v30 = v23 + 8;
  if (!__OFADD__(v23, 8))
  {
LABEL_59:
    v4[3] = v30;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void sub_1D8C3A784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1D8C3A85C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_1D8C3A87C(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2[3];
  v46 = a2[2];
  if (v6 < v46)
  {
    v10 = result;
    v11 = *a2;
    v41 = a2[1] - *a2;
    v42 = *a2;
    v39 = *a2 + 1;
    while (1)
    {
      if (v11)
      {
        v12 = v41;
        if (v6 >= v41)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v12 = 0;
      }

      v13 = *(v11 + v6);
      v14 = v6 + 1;
      if ((v13 & 0x8000000000000000) != 0)
      {
        if (v14 >= v12)
        {
          goto LABEL_54;
        }

        v13 &= 0x7Fu;
        v15 = (v39 + v6);
        v14 = v6 + 2;
        v16 = 7;
        while (1)
        {
          v17 = *v15++;
          v13 |= (v17 & 0x7F) << v16;
          if ((v17 & 0x80) == 0)
          {
            break;
          }

          if (v14 < v12)
          {
            ++v14;
            v18 = v16 > 0x38;
            v16 += 7;
            if (!v18)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        a2[3] = v14;
        if (v13 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v34 = xmmword_1D8C86190;
          *(v34 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v14;
      }

      v19 = v13 & 7;
      if (v13 < 8 || v19 >= 6)
      {
        goto LABEL_54;
      }

      if (!v10[2])
      {
        break;
      }

      v21 = sub_1D8C46878(v13 >> 3);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v37 = a4;
      v36 = v10;
      v40 = *(v10[7] + 16 * v21);
      ObjectType = swift_getObjectType();
      v24 = *(*(&v40 + 1) + 56);
      swift_unknownObjectRetain();
      result = v24(&v43, ObjectType, *(&v40 + 1));
      if (v5)
      {
        return swift_unknownObjectRelease();
      }

      v25 = v43;
      if (v19 != 2 || *(&v43 + 1) >> 62 == 1 || *(&v43 + 1) >> 62 == 2 && __PAIR128__((v43 >= 0xD) + *(&v43 + 1) + 0x7FFFFFFFFFFFFFFFLL, v43 - 13) < 2)
      {
        sub_1D8C29F08(&v43, v19, v45);
        a4 = v37;
        sub_1D8C29EAC(v45, v44);
        v43 = v40;
        swift_unknownObjectRetain();
        sub_1D8C68A2C(&v43, a3, v37, a5);
        sub_1D8C2BBF0(v25, *(&v25 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v43);
        result = sub_1D8C2AB08(v45);
        v10 = v36;
LABEL_28:
        v11 = v42;
        goto LABEL_29;
      }

      a4 = v37;
      v11 = v42;
      if (v42)
      {
        v26 = v41;
        if (v14 >= v41)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v26 = 0;
      }

      v27 = *(v42 + v14);
      v28 = v14 + 1;
      if (v27 < 0)
      {
        if (v28 >= v26)
        {
          goto LABEL_57;
        }

        v27 &= 0x7Fu;
        v31 = (v39 + v14);
        v28 = v14 + 2;
        v32 = 7;
        while (1)
        {
          v33 = *v31++;
          v27 |= (v33 & 0x7F) << v32;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          if (v28 < v26)
          {
            ++v28;
            v18 = v32 > 0x38;
            v32 += 7;
            if (!v18)
            {
              continue;
            }
          }

          goto LABEL_57;
        }
      }

      a2[3] = v28;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v29 = v27 & 0x7FFFFFFF;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
        return result;
      }

      if (v28 < v30)
      {
        do
        {
          v43 = v25;
          sub_1D8C6DE1C(&v43, v45);
          sub_1D8C29EAC(v45, v44);
          v43 = v40;
          swift_unknownObjectRetain();
          sub_1D8C68A2C(&v43, a3, v37, a5);
          sub_1D8C3D128(&v43);
          sub_1D8C2AB08(v45);
          v28 = a2[3];
        }

        while (v28 < v30);
        v11 = v42;
      }

      if (v28 != v30)
      {
LABEL_57:
        sub_1D8C36A64();
        swift_allocError();
        *v35 = xmmword_1D8C86190;
        *(v35 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v25, *(&v25 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v25, *(&v25 + 1));
      v10 = v36;
LABEL_29:
      v6 = a2[3];
      if (v6 >= v46)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v13);
    if (v5)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

void *sub_1D8C3AD78(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  v7 = a2[3];
  v45 = a2[2];
  if (v7 < v45)
  {
    v12 = result;
    v13 = *a2;
    v43 = a2[1] - *a2;
    v41 = *a2 + 1;
    v49 = result;
    v44 = v13;
    do
    {
      if (v13)
      {
        v14 = v43;
        if (v7 >= v43)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v14 = 0;
      }

      v15 = *(v13 + v7);
      v16 = v7 + 1;
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v16 >= v14)
        {
          goto LABEL_52;
        }

        v15 &= 0x7Fu;
        v17 = (v41 + v7);
        v16 = v7 + 2;
        v18 = 7;
        while (1)
        {
          v19 = *v17++;
          v15 |= (v19 & 0x7F) << v18;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          if (v16 < v14)
          {
            ++v16;
            v20 = v18 > 0x38;
            v18 += 7;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_52;
        }

        a2[3] = v16;
        if (v15 > 0xFFFFFFFE)
        {
LABEL_52:
          sub_1D8C36A64();
          swift_allocError();
          *v38 = xmmword_1D8C86190;
          *(v38 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v16;
      }

      v21 = v15 & 7;
      if (v15 < 8 || v21 >= 6)
      {
        goto LABEL_52;
      }

      if (v12[2] && (v23 = sub_1D8C46878(v15 >> 3), (v24 & 1) != 0))
      {
        v39 = a5;
        v42 = *(v49[7] + 16 * v23);
        ObjectType = swift_getObjectType();
        v26 = *(*(&v42 + 1) + 56);
        swift_unknownObjectRetain();
        result = v26(&v46, ObjectType, *(&v42 + 1));
        if (v6)
        {
          return swift_unknownObjectRelease();
        }

        v27 = v46;
        if (v21 != 2 || *(&v46 + 1) >> 62 == 1 || *(&v46 + 1) >> 62 == 2 && __PAIR128__((v46 >= 0xD) + *(&v46 + 1) + 0x7FFFFFFFFFFFFFFFLL, v46 - 13) < 2)
        {
          v28 = v46;
          sub_1D8C29F08(&v46, v21, v48);
          a5 = v39;
          sub_1D8C29EAC(v48, v47);
          v46 = v42;
          swift_unknownObjectRetain();
          sub_1D8C68444(&v46, a3, a4, v39, a6);
          sub_1D8C2BBF0(v28, *(&v27 + 1));
          swift_unknownObjectRelease();
          sub_1D8C3D128(&v46);
          result = sub_1D8C2AB08(v48);
        }

        else
        {
          a5 = v39;
          if (v44)
          {
            v29 = v43;
            if (v16 >= v43)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            v29 = 0;
          }

          v30 = *(v44 + v16);
          v31 = v16 + 1;
          if (v30 < 0)
          {
            if (v31 >= v29)
            {
              goto LABEL_51;
            }

            v30 &= 0x7Fu;
            v34 = (v41 + v16);
            v31 = v16 + 2;
            v35 = 7;
            while (1)
            {
              v36 = *v34++;
              v30 |= (v36 & 0x7F) << v35;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              if (v31 < v29)
              {
                ++v31;
                v20 = v35 > 0x38;
                v35 += 7;
                if (!v20)
                {
                  continue;
                }
              }

              goto LABEL_51;
            }
          }

          a2[3] = v31;
          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_51;
          }

          v32 = v30 & 0x7FFFFFFF;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            __break(1u);
            return result;
          }

          for (; v31 < v33; v31 = a2[3])
          {
            v46 = v27;
            sub_1D8C6DE1C(&v46, v48);
            sub_1D8C29EAC(v48, v47);
            v46 = v42;
            swift_unknownObjectRetain();
            sub_1D8C68444(&v46, a3, a4, v39, a6);
            sub_1D8C3D128(&v46);
            sub_1D8C2AB08(v48);
          }

          if (v31 != v33)
          {
LABEL_51:
            sub_1D8C36A64();
            swift_allocError();
            *v37 = xmmword_1D8C86190;
            *(v37 + 16) = 2;
            swift_willThrow();
            swift_unknownObjectRelease();
            return sub_1D8C2BBF0(v27, *(&v27 + 1));
          }

          swift_unknownObjectRelease();
          result = sub_1D8C2BBF0(v27, *(&v27 + 1));
        }
      }

      else
      {
        result = sub_1D8C452D0(v15);
        if (v6)
        {
          return result;
        }
      }

      v7 = a2[3];
      v13 = v44;
      v12 = v49;
    }

    while (v7 < v45);
  }

  return result;
}

void *sub_1D8C3B258(void *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t *a7, BOOL *a8, _DWORD *a9)
{
  v10 = a2[3];
  v54 = a2[2];
  if (v10 < v54)
  {
    v14 = result;
    v15 = *a2;
    v49 = a2[1] - *a2;
    v47 = *a2 + 1;
    v50 = *a2;
    while (1)
    {
      if (v15)
      {
        v16 = v49;
        if (v10 >= v49)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v16 = 0;
      }

      v17 = *(v15 + v10);
      v18 = v10 + 1;
      if ((v17 & 0x8000000000000000) != 0)
      {
        if (v18 >= v16)
        {
          goto LABEL_54;
        }

        v17 &= 0x7Fu;
        v19 = (v47 + v10);
        v18 = v10 + 2;
        v20 = 7;
        while (1)
        {
          v21 = *v19++;
          v17 |= (v21 & 0x7F) << v20;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          if (v18 < v16)
          {
            ++v18;
            v22 = v20 > 0x38;
            v20 += 7;
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        a2[3] = v18;
        if (v17 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v40 = xmmword_1D8C86190;
          *(v40 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v18;
      }

      v23 = v17 & 7;
      if (v17 < 8 || v23 >= 6)
      {
        goto LABEL_54;
      }

      if (!v14[2])
      {
        break;
      }

      v25 = sub_1D8C46878(v17 >> 3);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v42 = a7;
      v41 = v14;
      v48 = *(v14[7] + 16 * v25);
      ObjectType = swift_getObjectType();
      v28 = *(*(&v48 + 1) + 56);
      swift_unknownObjectRetain();
      result = v28(&v51, ObjectType, *(&v48 + 1));
      if (v9)
      {
        return swift_unknownObjectRelease();
      }

      v29 = v51;
      if (v23 != 2 || *(&v51 + 1) >> 62 == 1 || *(&v51 + 1) >> 62 == 2 && __PAIR128__((v51 >= 0xD) + *(&v51 + 1) + 0x7FFFFFFFFFFFFFFFLL, v51 - 13) < 2)
      {
        sub_1D8C29F08(&v51, v23, v53);
        a7 = v42;
        sub_1D8C29EAC(v53, v52);
        v51 = v48;
        swift_unknownObjectRetain();
        sub_1D8C68D70(&v51, a3, a4, a5, a6, v42, a8, a9);
        sub_1D8C2BBF0(v29, *(&v29 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v51);
        result = sub_1D8C2AB08(v53);
        v14 = v41;
LABEL_28:
        v15 = v50;
        goto LABEL_29;
      }

      v30 = v51;
      a7 = v42;
      v15 = v50;
      if (v50)
      {
        v31 = v49;
        if (v18 >= v49)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v31 = 0;
      }

      v32 = *(v50 + v18);
      v33 = v18 + 1;
      if (v32 < 0)
      {
        if (v33 >= v31)
        {
          goto LABEL_53;
        }

        v32 &= 0x7Fu;
        v36 = (v47 + v18);
        v33 = v18 + 2;
        v37 = 7;
        while (1)
        {
          v38 = *v36++;
          v32 |= (v38 & 0x7F) << v37;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          if (v33 < v31)
          {
            ++v33;
            v22 = v37 > 0x38;
            v37 += 7;
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_53;
        }
      }

      a2[3] = v33;
      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      v34 = v32 & 0x7FFFFFFF;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
        return result;
      }

      if (v33 < v35)
      {
        do
        {
          *&v51 = v30;
          *(&v51 + 1) = *(&v29 + 1);
          sub_1D8C6DE1C(&v51, v53);
          sub_1D8C29EAC(v53, v52);
          v51 = v48;
          swift_unknownObjectRetain();
          sub_1D8C68D70(&v51, a3, a4, a5, a6, v42, a8, a9);
          sub_1D8C3D128(&v51);
          sub_1D8C2AB08(v53);
          v33 = a2[3];
        }

        while (v33 < v35);
        v15 = v50;
      }

      if (v33 != v35)
      {
LABEL_53:
        sub_1D8C36A64();
        swift_allocError();
        *v39 = xmmword_1D8C86190;
        *(v39 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v30, *(&v29 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v30, *(&v29 + 1));
      v14 = v41;
LABEL_29:
      v10 = a2[3];
      if (v10 >= v54)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v17);
    if (v9)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1D8C3B74C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, char **a9)
{
  v10 = v9;
  v152 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v140 = a2[2];
  if (v12 >= v140)
  {
    goto LABEL_166;
  }

  v15 = *a2;
  v138 = a2[1] - *a2;
  v136 = *a2 + 1;
  v139 = *a2;
  while (1)
  {
    if (v15)
    {
      v16 = v138;
      if (v12 >= v138)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_165;
      }

      v16 = 0;
    }

    v17 = *(v15 + v12);
    v18 = v12 + 1;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (v18 >= v16)
      {
        goto LABEL_165;
      }

      v17 &= 0x7Fu;
      v19 = (v136 + v12);
      v18 = v12 + 2;
      v20 = 7;
      while (1)
      {
        v21 = *v19++;
        v17 |= (v21 & 0x7F) << v20;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        if (v18 < v16)
        {
          ++v18;
          v22 = v20 > 0x38;
          v20 += 7;
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_165;
      }

      a2[3] = v18;
      if (v17 > 0xFFFFFFFE)
      {
LABEL_165:
        sub_1D8C36A64();
        swift_allocError();
        *v116 = xmmword_1D8C86190;
        *(v116 + 16) = 2;
        swift_willThrow();
        goto LABEL_166;
      }
    }

    else
    {
      a2[3] = v18;
    }

    v23 = v17 & 7;
    if (v17 < 8 || v23 >= 6)
    {
      goto LABEL_165;
    }

    if (!*(a1 + 16) || (v25 = sub_1D8C46878(v17 >> 3), (v26 & 1) == 0))
    {
      sub_1D8C452D0(v17);
      if (v10)
      {
        goto LABEL_166;
      }

      v15 = v139;
      goto LABEL_45;
    }

    v130 = a4;
    v131 = a1;
    v137 = *(*(a1 + 56) + 16 * v25);
    ObjectType = swift_getObjectType();
    v28 = *(*(&v137 + 1) + 56);
    swift_unknownObjectRetain();
    v133 = ObjectType;
    v28(&v149, ObjectType, *(&v137 + 1));
    if (v10)
    {

      result = swift_unknownObjectRelease();
      goto LABEL_167;
    }

    v29 = *(&v149 + 1);
    v30 = v149;
    a4 = v130;
    v132 = *(&v149 + 1);
    v134 = v149;
    if (v23 != 2 || *(&v149 + 1) >> 62 == 1 || *(&v149 + 1) >> 62 == 2 && __PAIR128__((v149 >= 0xD) + *(&v149 + 1) + 0x7FFFFFFFFFFFFFFFLL, v149 - 13) < 2)
    {
      sub_1D8C29F08(&v149, v23, v151);
      v15 = v139;
      sub_1D8C29EAC(v151, v150);
      v149 = v137;
      v31 = *(*(&v137 + 1) + 8);
      v32 = *(v31 + 8);
      swift_unknownObjectRetain();
      v33 = v32(v133, v31);
      v35 = v34;
      v36 = v33 == 1701667182 && v34 == 0xE400000000000000;
      if (v36 || (v37 = v33, (sub_1D8C852A4() & 1) != 0))
      {

        sub_1D8C29EAC(v150, &v145);
        if (v148 == 8)
        {
          sub_1D8C2AA1C(&v145, __dst);
          v38 = v143;
          v39 = v144;
          __swift_project_boxed_opaque_existential_1(__dst, v143);
          v40 = *(v39 + 24);
          v41 = v39;
          a1 = v131;
          v42 = v40(v38, v41);
          v43 = a3[1];
          *a3 = v42;
          a3[1] = v44;

          __swift_destroy_boxed_opaque_existential_1(__dst);
LABEL_42:
          v48 = v134;
          v49 = v132;
LABEL_43:
          sub_1D8C2BBF0(v48, v49);
          swift_unknownObjectRelease();
LABEL_44:
          sub_1D8C3D128(&v149);
          sub_1D8C2AB08(v151);
          goto LABEL_45;
        }

LABEL_169:
        sub_1D8C2AB08(&v145);
        sub_1D8C3D17C();
        swift_allocError();
        v120 = xmmword_1D8C861C0;
LABEL_170:
        *v119 = v120;
        *(v119 + 16) = 0;
        swift_willThrow();
        v122 = v134;
        goto LABEL_172;
      }

      v45 = v37 == 0x7079745F6D756E65 && v35 == 0xE900000000000065;
      if (v45 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8C861A0;
        v47 = a3[1];
        *(inited + 32) = *a3;
        *(inited + 40) = v47;
        *&v145 = v130;

        sub_1D8C4B134(inited);
        sub_1D8C6A474(v150, v145, a5);
LABEL_41:
        v10 = 0;

        goto LABEL_42;
      }

      v51 = v37 == 0x736E6F6974706FLL && v35 == 0xE700000000000000;
      if (v51 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C29EAC(v150, &v145);
        if (v148 == 10)
        {
          v52 = v146;
          *(&v146 + 1) = MEMORY[0x1E69E6290];
          v147 = MEMORY[0x1E6969DF8];
          v145 = v52;
          v53 = __swift_project_boxed_opaque_existential_1(&v145, MEMORY[0x1E69E6290]);
          v54 = *v53;
          if (*v53)
          {
            v55 = v53[1];
            v56 = v55 - v54;
            if (v55 == v54)
            {
              swift_unknownObjectRelease();
              v54 = 0;
              v57 = 0xC000000000000000;
              a1 = v131;
            }

            else if (v56 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v142 = v55 - v54;
              memcpy(__dst, v54, v56);
              v54 = *__dst;
              v107 = *&__dst[8] | ((*&__dst[12] | (v142 << 16)) << 32);
              swift_unknownObjectRelease();
              v57 = v124 & 0xF00000000000000 | v107;
              v124 = v57;
              a1 = v131;
            }

            else
            {
              v103 = sub_1D8C846C4();
              v104 = *(v103 + 48);
              v105 = *(v103 + 52);
              swift_allocObject();
              v106 = sub_1D8C84674();
              if (v56 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v54 = swift_allocObject();
                *(v54 + 2) = 0;
                *(v54 + 3) = v56;
                swift_unknownObjectRelease();
                v57 = v106 | 0x8000000000000000;
              }

              else
              {
                swift_unknownObjectRelease();
                v54 = (v56 << 32);
                v57 = v106 | 0x4000000000000000;
              }

              a4 = v130;
              a1 = v131;
            }
          }

          else
          {
            swift_unknownObjectRelease();
            v57 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v145);
          v109 = *a6;
          v110 = a6[1];
          *a6 = v54;
          a6[1] = v57;
          sub_1D8C2C670(v109, v110);
          goto LABEL_42;
        }

LABEL_173:
        sub_1D8C2AB08(&v145);
        sub_1D8C3D17C();
        swift_allocError();
        v120 = xmmword_1D8C861B0;
        goto LABEL_170;
      }

      v100 = v37 == 0x745F64657473656ELL && v35 == 0xEB00000000657079;
      if (v100 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        v101 = swift_initStackObject();
        *(v101 + 16) = xmmword_1D8C861A0;
        v102 = a3[1];
        *(v101 + 32) = *a3;
        *(v101 + 40) = v102;
        *&v145 = v130;

        sub_1D8C4B134(v101);
        sub_1D8C6842C();
        goto LABEL_41;
      }

      v108 = v37 == 0x646C656966 && v35 == 0xE500000000000000;
      if (v108 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C6A890(v150, a8);
        v49 = v132;
        v48 = v134;
        goto LABEL_43;
      }

      v111 = v37 == 0x6F69736E65747865 && v35 == 0xE90000000000006ELL;
      if (v111 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        v112 = swift_initStackObject();
        *(v112 + 16) = xmmword_1D8C861A0;
        v113 = a3[1];
        *(v112 + 32) = *a3;
        *(v112 + 40) = v113;
        *&v145 = v130;

        sub_1D8C4B134(v112);
        sub_1D8C6ABD0(v150, a7);
        goto LABEL_41;
      }

      if (v37 == 0x65645F666F656E6FLL && v35 == 0xEA00000000006C63)
      {
      }

      else
      {
        v115 = sub_1D8C852A4();

        if ((v115 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      sub_1D8C6B17C(v150, a9);
LABEL_164:
      sub_1D8C2BBF0(v134, v132);
      swift_unknownObjectRelease();
      a4 = v130;
      v15 = v139;
      goto LABEL_44;
    }

    v15 = v139;
    if (v139)
    {
      v50 = v138;
      if (v18 >= v138)
      {
        goto LABEL_171;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_171;
      }

      v50 = 0;
    }

    v58 = *(v139 + v18);
    v59 = v18 + 1;
    if (v58 < 0)
    {
      if (v59 >= v50)
      {
LABEL_171:
        sub_1D8C36A64();
        swift_allocError();
        *v121 = xmmword_1D8C86190;
        *(v121 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_1D8C2BBF0(v30, v29);
        goto LABEL_166;
      }

      v58 &= 0x7Fu;
      v97 = (v136 + v18);
      v59 = v18 + 2;
      v98 = 7;
      while (1)
      {
        v99 = *v97++;
        v58 |= (v99 & 0x7F) << v98;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        if (v59 < v50)
        {
          ++v59;
          v22 = v98 > 0x38;
          v98 += 7;
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_171;
      }
    }

    a2[3] = v59;
    if ((v58 & 0x80000000) != 0)
    {
      goto LABEL_171;
    }

    v60 = v58 & 0x7FFFFFFF;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      break;
    }

    if (v59 < v62)
    {
      v125 = v62;
      while (1)
      {
        *&v149 = v30;
        *(&v149 + 1) = v29;
        sub_1D8C6DE1C(&v149, v151);
        sub_1D8C29EAC(v151, v150);
        v149 = v137;
        v63 = *(*(&v137 + 1) + 8);
        v64 = *(v63 + 8);
        swift_unknownObjectRetain();
        v65 = v64(v133, v63);
        v67 = v66;
        if (v65 == 1701667182 && v66 == 0xE400000000000000)
        {
          break;
        }

        v69 = v65;
        if (sub_1D8C852A4())
        {
          break;
        }

        v75 = v69 == 0x7079745F6D756E65 && v67 == 0xE900000000000065;
        if (v75 || (sub_1D8C852A4() & 1) != 0)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_1D8C861A0;
          v77 = a3[1];
          *(v76 + 32) = *a3;
          *(v76 + 40) = v77;
          *&v145 = a4;

          sub_1D8C4B134(v76);
          sub_1D8C6A474(v150, v145, a5);
          goto LABEL_82;
        }

        v78 = v69 == 0x736E6F6974706FLL && v67 == 0xE700000000000000;
        if (v78 || (sub_1D8C852A4() & 1) != 0)
        {

          sub_1D8C29EAC(v150, &v145);
          if (v148 != 10)
          {
            goto LABEL_173;
          }

          v79 = v146;
          *(&v146 + 1) = MEMORY[0x1E69E6290];
          v147 = MEMORY[0x1E6969DF8];
          v145 = v79;
          v80 = __swift_project_boxed_opaque_existential_1(&v145, MEMORY[0x1E69E6290]);
          v81 = *v80;
          if (*v80)
          {
            v82 = v80[1];
            v83 = v82 - v81;
            if (v82 == v81)
            {
              swift_unknownObjectRelease();
              v81 = 0;
              v84 = 0xC000000000000000;
            }

            else if (v83 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v142 = v82 - v81;
              memcpy(__dst, v81, v83);
              v81 = *__dst;
              v91 = *&__dst[8] | ((*&__dst[12] | (v142 << 16)) << 32);
              swift_unknownObjectRelease();
              v84 = v123 & 0xF00000000000000 | v91;
              v123 = v84;
            }

            else
            {
              v87 = sub_1D8C846C4();
              v88 = *(v87 + 48);
              v89 = *(v87 + 52);
              swift_allocObject();
              v90 = sub_1D8C84674();
              if (v83 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v81 = swift_allocObject();
                *(v81 + 2) = 0;
                *(v81 + 3) = v83;
                swift_unknownObjectRelease();
                v84 = v90 | 0x8000000000000000;
              }

              else
              {
                swift_unknownObjectRelease();
                v81 = (v83 << 32);
                v84 = v90 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
            v84 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v145);
          v92 = *a6;
          v93 = a6[1];
          *a6 = v81;
          a6[1] = v84;
          sub_1D8C2C670(v92, v93);
          goto LABEL_83;
        }

        if (v69 == 0x745F64657473656ELL && v67 == 0xEB00000000657079 || (sub_1D8C852A4() & 1) != 0)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          v85 = swift_initStackObject();
          *(v85 + 16) = xmmword_1D8C861A0;
          v86 = a3[1];
          *(v85 + 32) = *a3;
          *(v85 + 40) = v86;
          *&v145 = a4;

          sub_1D8C4B134(v85);
          sub_1D8C6842C();
LABEL_82:
          v10 = 0;

LABEL_83:
          v29 = v132;
          v30 = v134;
          goto LABEL_84;
        }

        if ((v69 != 0x646C656966 || v67 != 0xE500000000000000) && (sub_1D8C852A4() & 1) == 0)
        {
          if (v69 == 0x6F69736E65747865 && v67 == 0xE90000000000006ELL || (sub_1D8C852A4() & 1) != 0)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
            v94 = swift_initStackObject();
            *(v94 + 16) = xmmword_1D8C861A0;
            v95 = a3[1];
            *(v94 + 32) = *a3;
            *(v94 + 40) = v95;
            a4 = v130;
            *&v145 = v130;

            sub_1D8C4B134(v94);
            sub_1D8C6ABD0(v150, a7);

LABEL_120:
            v30 = v134;
            v29 = v132;
            v15 = v139;
            goto LABEL_84;
          }

          if (v69 == 0x65645F666F656E6FLL && v67 == 0xEA00000000006C63)
          {

            goto LABEL_118;
          }

          v96 = sub_1D8C852A4();

          if (v96)
          {
LABEL_118:
            sub_1D8C6B17C(v150, a9);
          }

          a4 = v130;
          goto LABEL_120;
        }

        sub_1D8C6A890(v150, a8);
        v29 = v132;
        v30 = v134;
LABEL_84:
        sub_1D8C3D128(&v149);
        sub_1D8C2AB08(v151);
        v59 = a2[3];
        v62 = v125;
        if (v59 >= v125)
        {
          goto LABEL_121;
        }
      }

      sub_1D8C29EAC(v150, &v145);
      if (v148 != 8)
      {
        goto LABEL_169;
      }

      sub_1D8C2AA1C(&v145, __dst);
      v70 = v143;
      v71 = v144;
      __swift_project_boxed_opaque_existential_1(__dst, v143);
      v72 = (*(v71 + 24))(v70, v71);
      v73 = a3[1];
      *a3 = v72;
      a3[1] = v74;

      __swift_destroy_boxed_opaque_existential_1(__dst);
      goto LABEL_83;
    }

LABEL_121:
    if (v59 != v62)
    {
      goto LABEL_171;
    }

    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v30, v29);
LABEL_45:
    v12 = a2[3];
    if (v12 >= v140)
    {
      goto LABEL_166;
    }
  }

  __break(1u);
  v122 = v30;
LABEL_172:
  sub_1D8C2BBF0(v122, v132);
  swift_unknownObjectRelease();
  sub_1D8C3D128(&v149);
  sub_1D8C2AB08(v151);
LABEL_166:

LABEL_167:
  v118 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D8C3C8D8(void *result, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v6 = v5;
  v7 = a2[3];
  v77 = a2[2];
  if (v7 >= v77)
  {
    return result;
  }

  v9 = a2;
  v10 = result;
  v11 = *a2;
  v72 = a2[1] - *a2;
  v73 = *a2;
  v70 = *a2 + 1;
  do
  {
    if (v11)
    {
      v12 = v72;
      if (v7 >= v72)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_101;
      }

      v12 = 0;
    }

    v13 = *(v11 + v7);
    v14 = v7 + 1;
    if ((v13 & 0x8000000000000000) != 0)
    {
      if (v14 >= v12)
      {
        goto LABEL_101;
      }

      v13 &= 0x7Fu;
      v15 = (v70 + v7);
      v14 = v7 + 2;
      v16 = 7;
      while (1)
      {
        v17 = *v15++;
        v13 |= (v17 & 0x7F) << v16;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        if (v14 < v12)
        {
          ++v14;
          v18 = v16 > 0x38;
          v16 += 7;
          if (!v18)
          {
            continue;
          }
        }

        goto LABEL_101;
      }

      v9[3] = v14;
      if (v13 > 0xFFFFFFFE)
      {
LABEL_101:
        sub_1D8C36A64();
        swift_allocError();
        *v63 = xmmword_1D8C86190;
        *(v63 + 16) = 2;
        return swift_willThrow();
      }
    }

    else
    {
      v9[3] = v14;
    }

    v19 = v13 & 7;
    if (v13 < 8 || v19 >= 6)
    {
      goto LABEL_101;
    }

    if (!v10[2] || (v21 = sub_1D8C46878(v13 >> 3), (v22 & 1) == 0))
    {
      result = sub_1D8C452D0(v13);
      if (!v6)
      {
        goto LABEL_38;
      }

      return result;
    }

    v23 = v9;
    v68 = a3;
    v71 = *(v10[7] + 16 * v21);
    ObjectType = swift_getObjectType();
    v25 = *(*(&v71 + 1) + 56);
    swift_unknownObjectRetain();
    v67 = ObjectType;
    result = v25(&v74, ObjectType, *(&v71 + 1));
    if (v6)
    {
      return swift_unknownObjectRelease();
    }

    v27 = *(&v74 + 1);
    v26 = v74;
    if (v19 != 2 || *(&v74 + 1) >> 62 == 1 || *(&v74 + 1) >> 62 == 2 && __PAIR128__((v74 >= 0xD) + *(&v74 + 1) + 0x7FFFFFFFFFFFFFFFLL, v74 - 13) < 2)
    {
      v28 = v74;
      v9 = v23;
      sub_1D8C29F08(&v74, v19, v76);
      v66 = v27;
      sub_1D8C29EAC(v76, v75);
      v74 = v71;
      v29 = *(*(&v71 + 1) + 8);
      v30 = *(v29 + 8);
      swift_unknownObjectRetain();
      v32 = v30(v67, v29);
      v33 = v31;
      v34 = v32 == 0x7079745F6D756E65 && v31 == 0xE900000000000065;
      if (v34 || (v35 = v68, (sub_1D8C852A4() & 1) != 0))
      {

        v35 = v68;
        v36 = *v68;

        sub_1D8C6A474(v75, v36, a4);
      }

      else
      {
        v39 = v32 == 0x5F6567617373656DLL && v33 == 0xEC00000065707974;
        if (!v39 && (sub_1D8C852A4() & 1) == 0)
        {
          if (v32 == 0x6F69736E65747865 && v33 == 0xE90000000000006ELL)
          {
          }

          else
          {
            v43 = sub_1D8C852A4();

            if ((v43 & 1) == 0)
            {
              v37 = v66;
              goto LABEL_36;
            }
          }

          sub_1D8C6ABD0(v75, a5);
          v38 = v28;
          v37 = v66;
          goto LABEL_37;
        }

        v40 = *v68;

        sub_1D8C6B810(v75, v40, a5, a4);
      }

      v6 = 0;
      v37 = v66;

LABEL_36:
      v38 = v28;
LABEL_37:
      sub_1D8C2BBF0(v38, v37);
      swift_unknownObjectRelease();
      sub_1D8C3D128(&v74);
      result = sub_1D8C2AB08(v76);
      a3 = v35;
      goto LABEL_38;
    }

    v9 = v23;
    if (v73)
    {
      v41 = v72;
      if (v14 >= v72)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_104;
      }

      v41 = 0;
    }

    v44 = *(v73 + v14);
    v45 = v14 + 1;
    if (v44 < 0)
    {
      if (v45 >= v41)
      {
        goto LABEL_104;
      }

      v44 &= 0x7Fu;
      v46 = (v70 + v14);
      v45 = v14 + 2;
      v47 = 7;
      while (1)
      {
        v48 = *v46++;
        v44 |= (v48 & 0x7F) << v47;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        if (v45 < v41)
        {
          ++v45;
          v18 = v47 > 0x38;
          v47 += 7;
          if (!v18)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      v23[3] = v45;
    }

    else
    {
      v23[3] = v45;
    }

    if ((v44 & 0x80000000) != 0)
    {
LABEL_104:
      sub_1D8C36A64();
      swift_allocError();
      *v64 = xmmword_1D8C86190;
      *(v64 + 16) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      return sub_1D8C2BBF0(v26, v27);
    }

    v49 = v44 & 0x7FFFFFFF;
    v50 = v45 + v49;
    if (__OFADD__(v45, v49))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v50)
    {
      goto LABEL_99;
    }

    do
    {
      v51 = v26;
      *&v74 = v26;
      *(&v74 + 1) = v27;
      sub_1D8C6DE1C(&v74, v76);
      sub_1D8C29EAC(v76, v75);
      v74 = v71;
      v52 = *(*(&v71 + 1) + 8);
      v53 = *(v52 + 8);
      swift_unknownObjectRetain();
      v55 = v53(v67, v52);
      v56 = v54;
      v57 = v55 == 0x7079745F6D756E65 && v54 == 0xE900000000000065;
      if (v57 || (sub_1D8C852A4() & 1) != 0)
      {

        v58 = *v68;

        sub_1D8C6A474(v75, v58, a4);
LABEL_81:
        v6 = 0;

LABEL_82:
        v26 = v51;
        goto LABEL_83;
      }

      v59 = v55 == 0x5F6567617373656DLL && v56 == 0xEC00000065707974;
      if (v59 || (sub_1D8C852A4() & 1) != 0)
      {

        v60 = *v68;

        sub_1D8C6B810(v75, v60, a5, a4);
        goto LABEL_81;
      }

      if (v55 == 0x6F69736E65747865 && v56 == 0xE90000000000006ELL)
      {
      }

      else
      {
        v62 = sub_1D8C852A4();

        if ((v62 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      sub_1D8C6ABD0(v75, a5);
      v26 = v51;
LABEL_83:
      sub_1D8C3D128(&v74);
      sub_1D8C2AB08(v76);
      v45 = v9[3];
    }

    while (v45 < v50);
    a3 = v68;
LABEL_99:
    if (v45 != v50)
    {
      goto LABEL_104;
    }

    swift_unknownObjectRelease();
    result = sub_1D8C2BBF0(v26, v27);
LABEL_38:
    v7 = v9[3];
    v11 = v73;
  }

  while (v7 < v77);
  return result;
}

unint64_t sub_1D8C3D17C()
{
  result = qword_1ECAAB120;
  if (!qword_1ECAAB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB120);
  }

  return result;
}

uint64_t sub_1D8C3D1D0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, void (*a12)(unsigned __int128 *), uint64_t a13)
{
  LODWORD(v235) = a8;
  *&v234 = a7;
  v236 = a4;
  v18 = a10;
  v248 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v20 = a2 + 56;
  v21 = *(a2 + 56);

  v21(v247, ObjectType, a2);
  if (v13)
  {
    v237 = v13;

    goto LABEL_172;
  }

  v232 = a10;
  v233 = a6;
  v231 = v21;
  v22 = v247[0];
  v23 = (*(a2 + 48))(ObjectType, a2);
  v237 = 0;
  v24 = a2;
  v229 = v22;
  v230 = v23;
  v228 = *(&v22 + 1);
  v226 = a13;
  v227 = a12;
  v25 = a11;
  if (((*(v24 + 16))(ObjectType, v24) & 1) == 0)
  {
    LOBYTE(a1) = a3;
    v148 = sub_1D8C29BDC(v230);
    v45 = v236;
    v27 = v228;
    v48 = v229;
    if ((v148 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v229, v228);

      swift_bridgeObjectRelease_n();
      goto LABEL_175;
    }

    v243 = __PAIR128__(v228, v229);
    v149 = sub_1D8C29E98(v148);
    sub_1D8C29F08(&v243, v149, v247);
    if ((v235 & 1) == 0)
    {
      v153 = *v236;
      if (*v236 != v234)
      {
        v59 = __OFADD__(v153, 1);
        v161 = v153 + 1;
        if (!v59)
        {
          LOBYTE(a1) = 1;
          goto LABEL_245;
        }

        __break(1u);
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }
    }

    if ((a9 & 1) == 0)
    {
      sub_1D8C29EAC(v247, &v243);
      v18 = v232;
      if (v246 == 10)
      {
        v234 = v244;
        v235 = v243;
        v161 = *(v232 + 16);
        if (!v161)
        {

          v162 = v232;
LABEL_188:
          v31 = v237;
          v243 = v235;
          v244 = v234;
          v163 = sub_1D8C4449C(&v243, v162, v25, v227, v226);
          if (!v237)
          {
LABEL_215:
            LOBYTE(a1) = v163;
            swift_unknownObjectRelease();

            v45 = v236;
            v161 = *v236 + 1;
            v47 = v233;
            if (__OFADD__(*v236, 1))
            {
              __break(1u);
LABEL_218:
              swift_unknownObjectRelease();

              v175 = *v236 + 1;
              if (__OFADD__(*v236, 1))
              {
                goto LABEL_264;
              }

              goto LABEL_219;
            }

LABEL_245:
            *v45 = v161;
            sub_1D8C2AB08(v247);
            sub_1D8C2BBF0(v48, v27);

            swift_bridgeObjectRelease_n();
            goto LABEL_173;
          }

          swift_unknownObjectRelease();

          v164 = v236;
          v161 = *v236 + 1;
          if (__OFADD__(*v236, 1))
          {
            __break(1u);
LABEL_192:
            v237 = v31;
LABEL_210:

            v174 = v228;
            v173 = v229;
            goto LABEL_211;
          }

          goto LABEL_241;
        }

LABEL_259:
        sub_1D8C3A784(v18, v18 + 32, 1, (2 * v161) | 1);
        v162 = v198;
        goto LABEL_188;
      }

      result = sub_1D8C2AB08(&v243);
      v161 = *v236 + 1;
      if (!__OFADD__(*v236, 1))
      {
        LOBYTE(a1) = 1;
        goto LABEL_245;
      }

      __break(1u);
      goto LABEL_261;
    }

    sub_1D8C29EAC(v247, &v243);
    v154 = v246;
    v18 = v232;
    if (v246 <= 4u)
    {
      v155 = v237;
      v25 = v233;
      if (v246 <= 1u || v246 != 2 && v246 != 3)
      {
        a1 = 0;
        v156 = 0;
        v157 = v243;
        v158 = 0uLL;
        goto LABEL_239;
      }
    }

    else
    {
      v155 = v237;
      v25 = v233;
      if (v246 > 7u)
      {
        if (v246 == 8)
        {
          sub_1D8C2AA1C(&v243, &v240);
          v178 = v241;
          v179 = v242;
          __swift_project_boxed_opaque_existential_1(&v240, v241);
          v157 = (*(v179 + 24))(v178, v179);
          a1 = v180;
          __swift_destroy_boxed_opaque_existential_1(&v240);
          v155 = v237;
          v156 = 0;
          v158 = 0uLL;
        }

        else if (v246 == 9)
        {
          sub_1D8C2AA1C(&v243, &v240);
          v170 = v241;
          v171 = v242;
          __swift_project_boxed_opaque_existential_1(&v240, v241);
          v157 = (*(v171 + 16))(v170, v171);
          a1 = v172;
          __swift_destroy_boxed_opaque_existential_1(&v240);
          v156 = 0;
          v158 = 0uLL;
          v155 = v237;
        }

        else
        {
          v181 = v233;
          v241 = MEMORY[0x1E69E6290];
          v242 = MEMORY[0x1E6969DF8];
          v235 = v243;
          v240 = v244;
          v182 = __swift_project_boxed_opaque_existential_1(&v240, MEMORY[0x1E69E6290]);
          v183 = *v182;
          if (*v182 && (v184 = v182[1], v185 = &v184[-v183], v184 != v183))
          {
            if (v185 <= 14)
            {
              v186 = sub_1D8C45074(*v182, v184);
              v187 = v196 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v185 >= 0x7FFFFFFF)
              {
                v186 = sub_1D8C45134(v183, v184);
                v187 = v197 | 0x8000000000000000;
              }

              else
              {
                v186 = sub_1D8C2B5D0(v183, v184);
                v187 = v192 | 0x4000000000000000;
              }
            }

            v27 = v228;
            v18 = v232;
          }

          else
          {
            swift_unknownObjectRetain();
            v186 = 0;
            v187 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v240);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v157 = swift_allocObject();
          a1 = 0;
          v156 = 0;
          *(v157 + 16) = v235;
          *(v157 + 32) = v186;
          *(v157 + 40) = v187;
          v158 = 0uLL;
          v155 = v237;
          v25 = v181;
          v48 = v229;
        }

        goto LABEL_239;
      }

      if (v246 != 5)
      {
        if (v246 == 6)
        {
          a1 = 0;
          v156 = 0;
          v157 = v243;
          v158 = 0uLL;
        }

        else
        {
          a1 = *(&v243 + 1);
          v157 = v243;
          v158 = v244;
          v156 = v245;
        }

        goto LABEL_239;
      }
    }

    a1 = 0;
    v156 = 0;
    v158 = 0uLL;
    v157 = v243;
LABEL_239:
    *&v243 = v157;
    *(&v243 + 1) = a1;
    v244 = v158;
    LOBYTE(v245) = v156;
    BYTE1(v245) = v154;
    LOBYTE(a1) = v226;
    v227(&v243);
    v237 = v155;
    if (v155)
    {
      sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
      v164 = v236;
      v161 = *v236 + 1;
      if (!__OFADD__(*v236, 1))
      {
LABEL_241:
        *v164 = v161;
        sub_1D8C2AB08(v247);
        sub_1D8C2BBF0(v48, v27);
        goto LABEL_242;
      }

      goto LABEL_258;
    }

    result = sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
    v45 = v236;
    v161 = *v236 + 1;
    if (!__OFADD__(*v236, 1))
    {
      LOBYTE(a1) = 1;
      goto LABEL_245;
    }

LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v223 = v24;
  v224 = ObjectType;
  v222 = a9;
  v225 = a1;
  v221 = a11;
  v27 = a3[2];
  v26 = a3[3];
  if (v26 >= v27)
  {
    sub_1D8C2BBF0(v229, v228);
    goto LABEL_169;
  }

  v28 = a3;
  v29 = *a3;
  v30 = a3[1] - *a3;
  v218 = *a3 + 1;
  v219 = v20;
  v31 = v237;
  v216 = v30;
  v217 = v27;
  v215 = v29;
  while (1)
  {
    if (!v29)
    {
      if (v26 < 0)
      {
        v32 = 0;
        goto LABEL_11;
      }

LABEL_184:
      sub_1D8C36A64();
      v159 = swift_allocError();
      *v160 = xmmword_1D8C86190;
      *(v160 + 16) = 2;
      v237 = v159;
      swift_willThrow();
      sub_1D8C2BBF0(v229, v228);
LABEL_242:

      goto LABEL_172;
    }

    v32 = v30;
    if (v26 >= v30)
    {
      goto LABEL_184;
    }

LABEL_11:
    v33 = *(v29 + v26);
    v34 = v26 + 1;
    if ((v33 & 0x8000000000000000) != 0)
    {
      if (v34 >= v32)
      {
        goto LABEL_170;
      }

      v33 &= 0x7Fu;
      v35 = (v218 + v26);
      v34 = v26 + 2;
      v36 = 7;
      while (1)
      {
        v37 = *v35++;
        v33 |= (v37 & 0x7F) << v36;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        if (v34 < v32)
        {
          ++v34;
          v38 = v36 > 0x38;
          v36 += 7;
          if (!v38)
          {
            continue;
          }
        }

        goto LABEL_170;
      }

      v28[3] = v34;
      if (v33 > 0xFFFFFFFE)
      {
LABEL_170:
        sub_1D8C36A64();
        v150 = swift_allocError();
        *v151 = xmmword_1D8C86190;
        *(v151 + 16) = 2;
        v237 = v150;
        swift_willThrow();
        goto LABEL_171;
      }
    }

    else
    {
      v28[3] = v34;
    }

    v39 = v33 & 7;
    if (v33 < 8 || v39 >= 6)
    {
      goto LABEL_170;
    }

    if (v230 != v33 >> 3)
    {
      v28 = a3;
      LOBYTE(a1) = a3;
      sub_1D8C452D0(v33);
      if (v31)
      {
        v237 = v31;
LABEL_171:
        sub_1D8C2BBF0(v229, v228);

LABEL_172:
        swift_bridgeObjectRelease_n();
        goto LABEL_173;
      }

      goto LABEL_148;
    }

    v220 = &v199;

    LOBYTE(a1) = v225;
    v231(v247, v224, v223);
    if (v31)
    {
      goto LABEL_192;
    }

    v42 = *(&v247[0] + 1);
    v41 = *&v247[0];
    v43 = *(&v247[0] + 1) >> 62;
    v44 = v39 != 2 || v43 == 1;
    if (!v44 && (v43 != 2 || __PAIR128__((*&v247[0] >= 0xDuLL) + *(&v247[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v247[0] - 13) >= 2))
    {
      break;
    }

    v45 = *&v247[0];
    v243 = v247[0];
    v46 = v39;
    v28 = a3;
    LOBYTE(a1) = a3;
    sub_1D8C29F08(&v243, v46, v247);
    v237 = 0;
    v47 = v42;
    v48 = v233;
    if ((v235 & 1) != 0 || (v49 = *v236, *v236 == v234))
    {
      v27 = v217;
      if ((v222 & 1) == 0)
      {
        sub_1D8C29EAC(v247, &v243);
        if (v246 == 10)
        {
          v214 = v243;
          v211 = v244;
          v55 = *(v232 + 16);
          if (v55)
          {
            sub_1D8C3A784(v232, v232 + 32, 1, (2 * v55) | 1);
          }

          else
          {
          }

          v57 = v237;
          v243 = v214;
          v244 = v211;
          v58 = sub_1D8C4449C(&v243, v56, v221, v227, v226);
          v237 = v57;
          if (v57)
          {
            goto LABEL_218;
          }

          LOBYTE(a1) = v58;
          swift_unknownObjectRelease();

          if (__OFADD__(*v236, 1))
          {
            goto LABEL_251;
          }

          ++*v236;
          sub_1D8C2AB08(v247);
          sub_1D8C2BBF0(v45, v47);

          v31 = v237;
          v29 = v215;
          v30 = v216;
          if ((a1 & 1) == 0)
          {
            goto LABEL_230;
          }

          goto LABEL_148;
        }

        sub_1D8C2AB08(&v243);
        v61 = v236;
        v60 = *v236 + 1;
        if (__OFADD__(*v236, 1))
        {
          goto LABEL_250;
        }

        goto LABEL_146;
      }

      sub_1D8C29EAC(v247, &v243);
      v50 = v246;
      if (v246 <= 4u)
      {
        v51 = v237;
        if (v246 <= 1u || v246 != 2 && v246 != 3)
        {
          v52 = 0;
          v53 = 0;
          a1 = v243;
          v54 = 0uLL;
          goto LABEL_144;
        }
      }

      else
      {
        v51 = v237;
        if (v246 > 7u)
        {
          LODWORD(v214) = v246;
          if (v246 == 8)
          {
            sub_1D8C2AA1C(&v243, &v240);
            v130 = v241;
            v131 = v242;
            __swift_project_boxed_opaque_existential_1(&v240, v241);
            a1 = (*(v131 + 24))(v130, v131);
            v133 = v132;
            __swift_destroy_boxed_opaque_existential_1(&v240);
            v52 = v133;
            v50 = v214;
            v51 = v237;
            v53 = 0;
            v54 = 0uLL;
          }

          else
          {
            if (v246 == 9)
            {
              sub_1D8C2AA1C(&v243, &v240);
              v63 = v241;
              v64 = v242;
              __swift_project_boxed_opaque_existential_1(&v240, v241);
              a1 = (*(v64 + 16))(v63, v64);
              v66 = v65;
              __swift_destroy_boxed_opaque_existential_1(&v240);
              v52 = v66;
              v53 = 0;
              v54 = 0uLL;
              v51 = v237;
            }

            else
            {
              v241 = MEMORY[0x1E69E6290];
              v242 = MEMORY[0x1E6969DF8];
              v211 = v243;
              v240 = v244;
              v134 = __swift_project_boxed_opaque_existential_1(&v240, MEMORY[0x1E69E6290]);
              v135 = *v134;
              v212 = v47;
              if (v135 && (v136 = v134[1], v137 = v136 - v135, v136 != v135))
              {
                if (v137 <= 14)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v239 = v136 - v135;
                  memcpy(__dst, v135, v136 - v135);
                  v138 = *__dst;
                  v139 = v201 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v239 << 16)) << 32);
                  swift_unknownObjectRetain();
                  v201 = v139;
                }

                else
                {
                  v143 = sub_1D8C846C4();
                  v144 = *(v143 + 48);
                  v145 = *(v143 + 52);
                  swift_allocObject();
                  swift_unknownObjectRetain();
                  v146 = sub_1D8C84674();
                  v147 = v146;
                  if (v137 >= 0x7FFFFFFF)
                  {
                    sub_1D8C84714();
                    v138 = swift_allocObject();
                    *(v138 + 16) = 0;
                    *(v138 + 24) = v137;
                    v139 = v147 | 0x8000000000000000;
                  }

                  else
                  {
                    v138 = v137 << 32;
                    v139 = v146 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                swift_unknownObjectRetain();
                v138 = 0;
                v139 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_1(&v240);
              swift_unknownObjectRelease();
              type metadata accessor for SchematizedData();
              a1 = swift_allocObject();
              v52 = 0;
              v53 = 0;
              *(a1 + 16) = v211;
              *(a1 + 32) = v138;
              *(a1 + 40) = v139;
              v54 = 0uLL;
              v51 = v237;
              v48 = v233;
              v47 = v212;
            }

            v50 = v214;
          }

          goto LABEL_144;
        }

        if (v246 != 5)
        {
          if (v246 == 6)
          {
            v52 = 0;
            v53 = 0;
            a1 = v243;
            v54 = 0uLL;
          }

          else
          {
            v52 = *(&v243 + 1);
            a1 = v243;
            v54 = v244;
            v53 = v245;
          }

          goto LABEL_144;
        }
      }

      v52 = 0;
      v53 = 0;
      v54 = 0uLL;
      a1 = v243;
LABEL_144:
      *&v243 = a1;
      *(&v243 + 1) = v52;
      v244 = v54;
      LOBYTE(v245) = v53;
      BYTE1(v245) = v50;
      LOBYTE(a1) = v226;
      v227(&v243);
      v237 = v51;
      if (!v51)
      {
        sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
        v61 = v236;
        v60 = *v236 + 1;
        if (__OFADD__(*v236, 1))
        {
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
        }

        goto LABEL_146;
      }

      v163 = sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
      v175 = *v236 + 1;
      if (!__OFADD__(*v236, 1))
      {
LABEL_219:
        v176 = v228;
        v177 = v229;
        *v236 = v175;
        sub_1D8C2AB08(v247);
        sub_1D8C2BBF0(v45, v47);

        v174 = v176;
        v173 = v177;
        goto LABEL_211;
      }

      __break(1u);
      goto LABEL_215;
    }

    v59 = __OFADD__(v49, 1);
    v60 = v49 + 1;
    v27 = v217;
    if (v59)
    {
      goto LABEL_249;
    }

    v61 = v236;
LABEL_146:
    *v61 = v60;
    sub_1D8C2AB08(v247);
    sub_1D8C2BBF0(v45, v47);

    v29 = v215;
LABEL_147:
    v31 = v237;
    v30 = v216;
LABEL_148:
    v26 = v28[3];
    if (v26 >= v27)
    {
      v237 = v31;
      sub_1D8C2BBF0(v229, v228);
LABEL_169:

LABEL_175:
      LOBYTE(a1) = 1;
      goto LABEL_173;
    }
  }

  v212 = *(&v247[0] + 1);
  if (v29)
  {
    v62 = v30;
    v28 = a3;
    v27 = v217;
    if (v34 >= v30)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v27 = v217;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_202;
    }

    v28 = a3;
    v62 = 0;
  }

  v67 = *(v29 + v34);
  v68 = v34 + 1;
  if (v67 < 0)
  {
    if (v68 < v62)
    {
      v67 &= 0x7Fu;
      v140 = (v218 + v34);
      v68 = v34 + 2;
      v141 = 7;
      while (1)
      {
        v142 = *v140++;
        v67 |= (v142 & 0x7F) << v141;
        if ((v142 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        if (v68 < v62)
        {
          ++v68;
          v38 = v141 > 0x38;
          v141 += 7;
          if (!v38)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_202:
    v165 = v41;
    sub_1D8C36A64();
    v166 = swift_allocError();
    *v167 = xmmword_1D8C86190;
    *(v167 + 16) = 2;
    v237 = v166;
    swift_willThrow();
    v168 = v165;
    v169 = v212;
    goto LABEL_209;
  }

LABEL_70:
  v28[3] = v68;
  if ((v67 & 0x80000000) != 0)
  {
    goto LABEL_202;
  }

  v69 = v67 & 0x7FFFFFFF;
  v59 = __OFADD__(v68, v69);
  v70 = v68 + v69;
  v71 = v212;
  if (v59)
  {
    goto LABEL_256;
  }

  if (v68 >= v70)
  {
    goto LABEL_158;
  }

  v213 = v41;
  *&v214 = v70;
  while (1)
  {
    *&v243 = v41;
    *(&v243 + 1) = v71;
    LOBYTE(a1) = v28;
    sub_1D8C6DE1C(&v243, v247);
    v237 = v31;
    if (v31)
    {
      v168 = v213;
LABEL_208:
      v169 = v71;
LABEL_209:
      sub_1D8C2BBF0(v168, v169);
      goto LABEL_210;
    }

    v72 = v236;
    if ((v235 & 1) == 0)
    {
      v74 = *v236;
      if (*v236 != v234)
      {
        v59 = __OFADD__(v74, 1);
        v73 = v74 + 1;
        if (v59)
        {
          goto LABEL_255;
        }

        goto LABEL_75;
      }
    }

    if (v222)
    {
      sub_1D8C29EAC(v247, &v243);
      v101 = v246;
      if (v246 <= 4u)
      {
        if (v246 <= 1u)
        {
          v102 = v246;
        }

        else
        {
          if (v246 == 2)
          {
            goto LABEL_110;
          }

          v102 = v246;
          if (v246 == 3)
          {
            v103 = 0;
            v104 = 0;
            v105 = 0uLL;
            a1 = v243;
LABEL_114:
            v110 = v237;
            v28 = a3;
            v71 = v212;
            v27 = v217;
            v101 = v102;
            goto LABEL_123;
          }
        }

        v103 = 0;
        v104 = 0;
        a1 = v243;
LABEL_113:
        v105 = 0uLL;
        goto LABEL_114;
      }

      if (v246 <= 7u)
      {
        if (v246 != 5)
        {
          v102 = v246;
          if (v246 != 6)
          {
            v103 = *(&v243 + 1);
            a1 = v243;
            v105 = v244;
            v104 = v245;
            goto LABEL_114;
          }

          v103 = 0;
          v104 = 0;
          a1 = v243;
          goto LABEL_113;
        }

LABEL_110:
        v103 = 0;
        v104 = 0;
        v105 = 0uLL;
        a1 = v243;
        v110 = v237;
        v28 = a3;
        v71 = v212;
        v27 = v217;
LABEL_123:
        *&v243 = a1;
        *(&v243 + 1) = v103;
        v244 = v105;
        LOBYTE(v245) = v104;
        BYTE1(v245) = v101;
        LOBYTE(a1) = v226;
        v227(&v243);
        v237 = v110;
        if (!v110)
        {
          result = sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
          if (__OFADD__(*v236, 1))
          {
            goto LABEL_262;
          }

          ++*v236;
          sub_1D8C2AB08(v247);
          v68 = v28[3];
          v41 = v213;
          v70 = v214;
          v31 = v237;
          v29 = v215;
          if (v68 >= v214)
          {
            goto LABEL_158;
          }

          continue;
        }

        result = sub_1D8C31D98(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, BYTE1(v245));
        v189 = *v236 + 1;
        if (!__OFADD__(*v236, 1))
        {
          v190 = v228;
          v191 = v229;
          v188 = v212;
          goto LABEL_228;
        }

LABEL_265:
        __break(1u);
        return result;
      }

      LODWORD(v211) = v246;
      if (v246 == 8)
      {
        sub_1D8C2AA1C(&v243, &v240);
        v111 = v241;
        v112 = v242;
        __swift_project_boxed_opaque_existential_1(&v240, v241);
        v108 = (*(v112 + 24))(v111, v112);
      }

      else
      {
        if (v211 != 9)
        {
          v241 = MEMORY[0x1E69E6290];
          v242 = MEMORY[0x1E6969DF8];
          v210 = v243;
          v240 = v244;
          v113 = __swift_project_boxed_opaque_existential_1(&v240, MEMORY[0x1E69E6290]);
          v114 = *v113;
          if (*v113 && (v115 = v113[1], v116 = v115 - v114, v115 != v114))
          {
            if (v116 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v239 = v115 - v114;
              memcpy(__dst, v114, v115 - v114);
              v117 = *__dst;
              v118 = v200 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v239 << 16)) << 32);
              swift_unknownObjectRetain();
              v200 = v118;
            }

            else
            {
              v120 = sub_1D8C846C4();
              v121 = *(v120 + 48);
              v122 = *(v120 + 52);
              swift_allocObject();
              swift_unknownObjectRetain();
              v123 = sub_1D8C84674();
              v124 = v123;
              if (v116 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v117 = swift_allocObject();
                *(v117 + 16) = 0;
                *(v117 + 24) = v116;
                v118 = v124 | 0x8000000000000000;
              }

              else
              {
                v117 = v116 << 32;
                v118 = v123 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v117 = 0;
            v118 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v240);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          a1 = swift_allocObject();
          v103 = 0;
          v104 = 0;
          *(a1 + 16) = v210;
          *(a1 + 32) = v117;
          *(a1 + 40) = v118;
          goto LABEL_122;
        }

        sub_1D8C2AA1C(&v243, &v240);
        v106 = v241;
        v107 = v242;
        __swift_project_boxed_opaque_existential_1(&v240, v241);
        v108 = (*(v107 + 16))(v106, v107);
      }

      a1 = v108;
      v103 = v109;
      __swift_destroy_boxed_opaque_existential_1(&v240);
      v104 = 0;
LABEL_122:
      v105 = 0uLL;
      v110 = v237;
      v28 = a3;
      v71 = v212;
      v27 = v217;
      v101 = v211;
      goto LABEL_123;
    }

    sub_1D8C29EAC(v247, &v243);
    if (v246 == 10)
    {
      break;
    }

    sub_1D8C2AB08(&v243);
    v72 = v236;
    v73 = *v236 + 1;
    if (__OFADD__(*v236, 1))
    {
      goto LABEL_253;
    }

LABEL_75:
    *v72 = v73;
    sub_1D8C2AB08(v247);
LABEL_76:
    v41 = v213;
    v70 = v214;
    v68 = v28[3];
    v31 = v237;
    if (v68 >= v214)
    {
      v29 = v215;
LABEL_158:
      v237 = v31;
      if (v68 == v70)
      {
        sub_1D8C2BBF0(v41, v71);

        goto LABEL_147;
      }

      v193 = v41;
      sub_1D8C36A64();
      v194 = swift_allocError();
      *v195 = xmmword_1D8C86190;
      *(v195 + 16) = 2;
      v237 = v194;
      swift_willThrow();
      v168 = v193;
      goto LABEL_208;
    }
  }

  v75 = *(&v243 + 1);
  v76 = v243;
  v204 = *(&v244 + 1);
  v205 = v244;
  v77 = *(v232 + 16);
  if (v77)
  {
    v125 = v243;
    v126 = v77 - 1;
    if (v77 == 1)
    {
      v78 = MEMORY[0x1E69E7CC0];
      v27 = v217;
      v76 = v243;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v127 = swift_allocObject();
      v128 = _swift_stdlib_malloc_size(v127);
      v129 = v128 - 32;
      if (v128 < 32)
      {
        v129 = v128 - 1;
      }

      v127[2] = v126;
      v127[3] = 2 * (v129 >> 5);
      swift_arrayInitWithCopy();
      v27 = v217;
      v76 = v125;
      v78 = v127;
    }
  }

  else
  {
  }

  v203 = *(v78 + 16);
  if (!v203)
  {
    goto LABEL_252;
  }

  *&v211 = &v199;
  v79 = *(v78 + 32);
  v80 = *(v78 + 40);
  v202 = *(v78 + 48);
  v209 = v78;
  v81 = *(v78 + 56);
  v82 = swift_getObjectType();
  v206 = *(v75 + 56);
  v207 = v82;

  v208 = v80;
  *&v210 = v76;
  v83 = v237;
  v84 = v206(v79, v80, v207, v75);
  v237 = v83;
  if (v83)
  {
    swift_unknownObjectRelease();

    v188 = v212;
    goto LABEL_227;
  }

  v86 = v85;
  v207 = v79;
  if (*v221)
  {
    v87 = 1;
    v89 = v204;
    v88 = v205;
    v90 = v84;
    v91 = v81;
  }

  else
  {
    v90 = v84;
    v92 = swift_getObjectType();
    v91 = v81;
    v87 = (*(v86 + 16))(v92, v86) & v81;
    v89 = v204;
    v88 = v205;
  }

  v93 = v203;
  v94 = v221;
  *v221 = v87 & 1;
  v95 = v93 == 1;
  *&v240 = 0;
  v96 = v89 - v88;
  if (!v88)
  {
    v96 = 0;
  }

  *&v243 = v88;
  *(&v243 + 1) = v89;
  v244 = v96;
  v245 = 0;
  v246 = 1;
  v97 = v208;
  swift_bridgeObjectRetain_n();
  v98 = swift_retain_n();
  LOBYTE(v199) = v95;
  v99 = v237;
  v100 = sub_1D8C3D1D0(v90, v86, &v243, &v240, v207, v97, v202, v91, v199, v98, v94, v227, v226);
  v237 = v99;
  if (!v99)
  {
    LOBYTE(a1) = v100;

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    v71 = v212;
    if (__OFADD__(*v236, 1))
    {
      goto LABEL_254;
    }

    ++*v236;
    sub_1D8C2AB08(v247);
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v213, v71);

      v31 = v237;
LABEL_230:
      v237 = v31;
      sub_1D8C2BBF0(v229, v228);

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 0;
      goto LABEL_173;
    }

    v28 = a3;
    goto LABEL_76;
  }

  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();

  v188 = v212;
LABEL_227:
  v189 = *v236 + 1;
  v190 = v228;
  v191 = v229;
  if (__OFADD__(*v236, 1))
  {
    goto LABEL_263;
  }

LABEL_228:
  *v236 = v189;
  sub_1D8C2BBF0(v213, v188);
  sub_1D8C2AB08(v247);

  v174 = v190;
  v173 = v191;
LABEL_211:
  LOBYTE(a1) = v220;
  sub_1D8C2BBF0(v173, v174);

LABEL_173:

  v152 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

uint64_t sub_1D8C3EA00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  LODWORD(v147) = a8;
  *&v146 = a7;
  v148 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v154, ObjectType, a2);
  if (v12)
  {
    *&v149 = v12;

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v142 = v18;
  v143 = a2 + 56;
  v144 = a3;
  v145 = a10;
  v19 = v154[0];
  v20 = (*(a2 + 48))(ObjectType, a2);
  *&v149 = 0;
  v22 = v20;
  v141 = v19;
  v135 = a12;
  v136 = a11;
  v23 = *(a2 + 16);
  v138 = ObjectType;
  v139 = a1;
  v137 = a2;
  v24 = v23(ObjectType, a2);
  v25 = a6;
  if ((v24 & 1) == 0)
  {
    LOBYTE(a1) = v144;
    v91 = sub_1D8C29BDC(v22);
    v29 = v145;
    v22 = *(&v141 + 1);
    v30 = v141;
    if ((v91 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v141, *(&v141 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v150 = v141;
    v92 = sub_1D8C29E98(v91);
    sub_1D8C29F08(&v150, v92, v154);
    if ((v147 & 1) != 0 || (v93 = *v148, *v148 == v146))
    {
      if (a9)
      {
        LOBYTE(a1) = v135;
        sub_1D8C2A970(v135);
        sub_1D8C29EAC(v154, v135);
        v94 = v148;
        v52 = *v148 + 1;
        if (__OFADD__(*v148, 1))
        {
          goto LABEL_160;
        }

        LOBYTE(a1) = 0;
      }

      else
      {
        sub_1D8C29EAC(v154, &v150);
        if (v153 == 10)
        {
          v146 = v151;
          v147 = v150;
          v52 = *(v145 + 16);
          if (v52)
          {
            goto LABEL_162;
          }

          v99 = v145;
LABEL_123:
          v100 = v149;
          v150 = v147;
          v151 = v146;
          v101 = sub_1D8C44684(&v150, v99, v136, v135);
          *&v149 = v100;
          if (v100)
          {
            swift_unknownObjectRelease();

            if (!__OFADD__(*v148, 1))
            {
              ++*v148;
              sub_1D8C2AB08(v154);
              sub_1D8C2BBF0(v30, v22);

              goto LABEL_4;
            }

            goto LABEL_165;
          }

          LOBYTE(a1) = v101;
          swift_unknownObjectRelease();

          v94 = v148;
          v52 = *v148 + 1;
          if (__OFADD__(*v148, 1))
          {
            goto LABEL_166;
          }
        }

        else
        {
          result = sub_1D8C2AB08(&v150);
          v94 = v148;
          v52 = *v148 + 1;
          if (__OFADD__(*v148, 1))
          {
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            return result;
          }

          LOBYTE(a1) = 1;
        }
      }
    }

    else
    {
      v54 = __OFADD__(v93, 1);
      v52 = v93 + 1;
      if (v54)
      {
        goto LABEL_161;
      }

      LOBYTE(a1) = 1;
      v94 = v148;
    }

    *v94 = v52;
    sub_1D8C2AB08(v154);
    sub_1D8C2BBF0(v30, v22);

    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v134 = a9;
  v27 = v144;
  v26 = v145;
  v29 = v144[2];
  v28 = v144[3];
  if (v28 >= v29)
  {
LABEL_119:
    sub_1D8C2BBF0(v141, *(&v141 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v30 = *v144;
  v31 = v144[1] - *v144;
  v131 = *v144 + 1;
  v32 = v149;
  v140 = v25;
  while (1)
  {
    if (v30)
    {
      v33 = v31;
      if (v28 >= v31)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_117;
      }

      v33 = 0;
    }

    v34 = *(v30 + v28);
    v35 = v28 + 1;
    if ((v34 & 0x8000000000000000) != 0)
    {
      if (v35 >= v33)
      {
        goto LABEL_117;
      }

      v34 &= 0x7Fu;
      v36 = (v131 + v28);
      v35 = v28 + 2;
      v37 = 7;
      while (1)
      {
        v38 = *v36++;
        v34 |= (v38 & 0x7F) << v37;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        if (v35 < v33)
        {
          ++v35;
          v39 = v37 > 0x38;
          v37 += 7;
          if (!v39)
          {
            continue;
          }
        }

        goto LABEL_117;
      }

      v27[3] = v35;
      if (v34 > 0xFFFFFFFE)
      {
LABEL_117:
        sub_1D8C36A64();
        v95 = swift_allocError();
        *v96 = xmmword_1D8C86190;
        *(v96 + 16) = 2;
        *&v149 = v95;
        swift_willThrow();
        sub_1D8C2BBF0(v141, *(&v141 + 1));
LABEL_107:

        goto LABEL_4;
      }
    }

    else
    {
      v27[3] = v35;
    }

    v40 = v22;
    v22 = v26;
    v41 = v34 & 7;
    if (v34 < 8 || v41 >= 6)
    {
      sub_1D8C36A64();
      v97 = swift_allocError();
      *v98 = xmmword_1D8C86190;
      *(v98 + 16) = 2;
      *&v149 = v97;
      swift_willThrow();
LABEL_128:
      sub_1D8C2BBF0(v141, *(&v141 + 1));
      goto LABEL_107;
    }

    if (v40 == v34 >> 3)
    {
      break;
    }

    LOBYTE(a1) = v27;
    sub_1D8C452D0(v34);
    if (v32)
    {
      *&v149 = v32;
      goto LABEL_128;
    }

    v26 = v22;
    v22 = v40;
LABEL_53:
    v28 = v27[3];
    if (v28 >= v29)
    {
      *&v149 = v32;
      goto LABEL_119;
    }
  }

  v132 = &v116;

  LOBYTE(a1) = v139;
  v142(v154, v138, v137);
  if (v32)
  {
    *&v149 = v32;
    goto LABEL_137;
  }

  v44 = *(&v154[0] + 1);
  v43 = *&v154[0];
  v45 = *(&v154[0] + 1) >> 62;
  v46 = v41 != 2 || v45 == 1;
  v133 = *(&v154[0] + 1);
  if (v46 || v45 == 2 && __PAIR128__((*&v154[0] >= 0xDuLL) + *(&v154[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v154[0] - 13) < 2)
  {
    v47 = *&v154[0];
    v150 = v154[0];
    LOBYTE(a1) = v27;
    sub_1D8C29F08(&v150, v41, v154);
    v26 = v22;
    if ((v147 & 1) == 0)
    {
      v48 = *v148;
      if (*v148 != v146)
      {
        v54 = __OFADD__(v48, 1);
        v52 = v48 + 1;
        if (v54)
        {
          goto LABEL_154;
        }

        a1 = 0;
        v22 = v40;
        v53 = v148;
LABEL_51:
        *v53 = v52;
        sub_1D8C2AB08(v154);
        sub_1D8C2BBF0(v47, v133);

LABEL_52:

        v32 = a1;
        goto LABEL_53;
      }
    }

    a1 = 0;
    if ((v134 & 1) == 0)
    {
      v22 = v40;
      sub_1D8C29EAC(v154, &v150);
      if (v153 == 10)
      {
        v130 = v150;
        v149 = v151;
        v49 = *(v26 + 16);
        if (v49)
        {
          sub_1D8C3A784(v26, v26 + 32, 1, (2 * v49) | 1);
          v50 = v90;
        }

        else
        {

          v50 = v26;
        }

        v150 = v130;
        v151 = v149;
        v51 = sub_1D8C44684(&v150, v50, v136, v135);
        *&v149 = v32;
        LOBYTE(a1) = v51;
        swift_unknownObjectRelease();

        v52 = *v148 + 1;
        if (__OFADD__(*v148, 1))
        {
          goto LABEL_153;
        }

        *v148 = v52;
        sub_1D8C2AB08(v154);
        sub_1D8C2BBF0(v47, v133);

        v32 = v149;
        if ((a1 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_53;
      }

      sub_1D8C2AB08(&v150);
      v53 = v148;
      v52 = *v148 + 1;
      if (__OFADD__(*v148, 1))
      {
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        sub_1D8C3A784(v29, v29 + 32, 1, (2 * v52) | 1);
        v99 = v115;
        goto LABEL_123;
      }

      goto LABEL_51;
    }

    v102 = v135;
    sub_1D8C2A970(v135);
    result = sub_1D8C29EAC(v154, v102);
    if (!__OFADD__(*v148, 1))
    {
      ++*v148;
      sub_1D8C2AB08(v154);
      sub_1D8C2BBF0(v47, v133);

LABEL_135:
      *&v149 = v32;
      sub_1D8C2BBF0(v141, *(&v141 + 1));

LABEL_147:

      LOBYTE(a1) = 0;
      return a1 & 1;
    }

    goto LABEL_164;
  }

  if (v30)
  {
    v55 = v31;
    v26 = v22;
    if (v35 >= v31)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v26 = v22;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_136;
    }

    v55 = 0;
  }

  v56 = *(v30 + v35);
  v52 = v35 + 1;
  v22 = v40;
  if (v56 < 0)
  {
    if (v52 < v55)
    {
      v56 &= 0x7Fu;
      v87 = (v131 + v35);
      v52 = v35 + 2;
      v88 = 7;
      while (1)
      {
        v89 = *v87++;
        v56 |= (v89 & 0x7F) << v88;
        if ((v89 & 0x80) == 0)
        {
          goto LABEL_63;
        }

        if (v52 < v55)
        {
          ++v52;
          v39 = v88 > 0x38;
          v88 += 7;
          if (!v39)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_136:
    v103 = v44;
    a1 = v43;
    sub_1D8C36A64();
    v104 = swift_allocError();
    *v105 = xmmword_1D8C86190;
    *(v105 + 16) = 2;
    *&v149 = v104;
    swift_willThrow();
    sub_1D8C2BBF0(a1, v103);
LABEL_137:

    goto LABEL_138;
  }

LABEL_63:
  v27[3] = v52;
  if ((v56 & 0x80000000) != 0)
  {
    goto LABEL_136;
  }

  v57 = v56 & 0x7FFFFFFF;
  v54 = __OFADD__(v52, v57);
  v58 = v52 + v57;
  if (v54)
  {
    goto LABEL_159;
  }

  if (v52 >= v58)
  {
LABEL_96:
    if (v52 == v58)
    {
      a1 = v32;
      sub_1D8C2BBF0(v43, v44);

      goto LABEL_52;
    }

    v112 = v44;
    a1 = v43;
    sub_1D8C36A64();
    v113 = swift_allocError();
    *v114 = xmmword_1D8C86190;
    *(v114 + 16) = 2;
    *&v149 = v113;
    swift_willThrow();
    v106 = a1;
    v107 = v112;
LABEL_143:
    sub_1D8C2BBF0(v106, v107);

LABEL_138:

    sub_1D8C2BBF0(v141, *(&v141 + 1));
    goto LABEL_139;
  }

  v129 = v43;
  *&v130 = v58;
  while (1)
  {
    *&v150 = v43;
    *(&v150 + 1) = v44;
    LOBYTE(a1) = v27;
    sub_1D8C6DE1C(&v150, v154);
    *&v149 = v32;
    if (v32)
    {
      v106 = v129;
      v107 = v133;
      goto LABEL_143;
    }

    if ((v147 & 1) == 0)
    {
      v60 = *v148;
      if (*v148 != v146)
      {
        v54 = __OFADD__(v60, 1);
        v52 = v60 + 1;
        if (v54)
        {
          goto LABEL_158;
        }

        v59 = v148;
        goto LABEL_68;
      }
    }

    if (v134)
    {
      v108 = v135;
      sub_1D8C2A970(v135);
      result = sub_1D8C29EAC(v154, v108);
      if (__OFADD__(*v148, 1))
      {
        goto LABEL_167;
      }

      ++*v148;
      sub_1D8C2AB08(v154);
LABEL_146:
      sub_1D8C2BBF0(v129, v133);

      sub_1D8C2BBF0(v141, *(&v141 + 1));

      goto LABEL_147;
    }

    sub_1D8C29EAC(v154, &v150);
    if (v153 != 10)
    {
      sub_1D8C2AB08(&v150);
      v59 = v148;
      v52 = *v148 + 1;
      if (__OFADD__(*v148, 1))
      {
        goto LABEL_156;
      }

LABEL_68:
      *v59 = v52;
      sub_1D8C2AB08(v154);
      goto LABEL_69;
    }

    v61 = v150;
    v121 = *(&v151 + 1);
    v122 = v151;
    v62 = *(v26 + 16);
    if (v62)
    {
      v22 = v150;
      v83 = v29;
      a1 = v62 - 1;
      if (v62 == 1)
      {
        v63 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v84 = swift_allocObject();
        v85 = _swift_stdlib_malloc_size(v84);
        v86 = v85 - 32;
        if (v85 < 32)
        {
          v86 = v85 - 1;
        }

        v84[2] = a1;
        v84[3] = 2 * (v86 >> 5);
        swift_arrayInitWithCopy();
        v63 = v84;
      }

      v29 = v83;
    }

    else
    {

      v63 = v26;
    }

    v52 = v63[2];
    v120 = v52;
    if (!v52)
    {
      goto LABEL_155;
    }

    v126 = &v116;
    v64 = v63[4];
    v65 = v63[5];
    v118 = v63[6];
    v124 = v63;
    v127 = *(v63 + 56);
    v128 = swift_getObjectType();
    v123 = *(*(&v61 + 1) + 56);

    v119 = v64;
    v125 = v65;
    v66 = v149;
    v67 = v123(v64, v65, v128, *(&v61 + 1));
    *&v149 = v66;
    if (v66)
    {
      v109 = v129;
      swift_unknownObjectRelease();

      goto LABEL_150;
    }

    v69 = v68;
    v70 = *v136;
    v117 = v61;
    v128 = v67;
    if (v70)
    {
      v71 = 1;
    }

    else
    {
      v72 = swift_getObjectType();
      v73 = (*(v69 + 16))(v72, v69);
      v71 = v73 & v127;
    }

    v75 = v121;
    v74 = v122;
    v76 = v120;
    v77 = v136;
    *v136 = v71 & 1;
    v78 = v76 == 1;
    v155 = 0;
    v79 = v75 - v74;
    if (!v74)
    {
      v79 = 0;
    }

    *&v150 = v74;
    *(&v150 + 1) = v75;
    v151 = v79;
    v152 = 0;
    v153 = 1;
    v22 = v125;
    swift_bridgeObjectRetain_n();
    v80 = swift_retain_n();
    LOBYTE(v116) = v78;
    v81 = v149;
    v82 = sub_1D8C3EA00(v128, v69, &v150, &v155, v119, v22, v118, v127, v116, v80, v77, v135);
    *&v149 = v81;
    if (v81)
    {
      break;
    }

    LOBYTE(a1) = v82;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v52 = *v148 + 1;
    v27 = v144;
    v26 = v145;
    if (__OFADD__(*v148, 1))
    {
      goto LABEL_157;
    }

    *v148 = v52;
    sub_1D8C2AB08(v154);
    if ((a1 & 1) == 0)
    {
      goto LABEL_146;
    }

    v22 = v40;
LABEL_69:
    v44 = v133;
    v43 = v129;
    v58 = v130;
    v52 = v27[3];
    v32 = v149;
    if (v52 >= v130)
    {
      goto LABEL_96;
    }
  }

  v109 = v129;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

LABEL_150:
  v110 = *(&v141 + 1);
  a1 = v141;
  v111 = v133;
  if (__OFADD__(*v148, 1))
  {
    goto LABEL_168;
  }

  ++*v148;
  sub_1D8C2BBF0(v109, v111);
  sub_1D8C2AB08(v154);

  sub_1D8C2BBF0(a1, v110);
LABEL_139:

  return a1 & 1;
}

void sub_1D8C3F908(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v162) = a8;
  v161 = a7;
  v163 = a4;
  v164 = a3;
  ObjectType = swift_getObjectType();
  v19 = *(a2 + 56);
  v165 = a13;
  swift_bridgeObjectRetain_n();

  (v19)(v172, ObjectType, a2);
  if (v14)
  {

LABEL_4:
    swift_bridgeObjectRelease_n();
    goto LABEL_5;
  }

  v157 = v19;
  v158 = a2 + 56;
  v20 = v164;
  v160 = a10;
  v159 = a6;
  v21 = v172[0];
  v22 = a2;
  v156 = (*(a2 + 48))(ObjectType, a2);
  v155 = v21;
  v154 = a14;
  v23 = (*(v22 + 16))(ObjectType, v22);
  if ((v23 & 1) == 0)
  {
    v98 = sub_1D8C29BDC(v156);
    ObjectType = a9;
    v38 = a11;
    v153 = a12;
    v99 = *(&v155 + 1);
    v100 = v155;
    if ((v98 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v155, *(&v155 + 1));

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    v167 = v155;
    v101 = sub_1D8C29E98(v98);
    sub_1D8C29F08(&v167, v101, v172);
    if ((v162 & 1) != 0 || (v103 = *v163, *v163 == v161))
    {
      if (a9)
      {

        sub_1D8C58544(v172, v153, v165, v154);
        if (__OFADD__(*v163, 1))
        {
          goto LABEL_167;
        }
      }

      else
      {
        sub_1D8C29EAC(v172, &v167);
        if (v171 == 10)
        {
          v22 = *(&v167 + 1);
          ObjectType = v167;
          v157 = v169;
          v158 = v168;
          v37 = v160;
          v43 = *(v160 + 16);
          if (!v43)
          {

LABEL_128:
            v105 = v104;
            v156 = *(v104 + 16);
            if (v156)
            {
              v164 = &v129;
              v106 = *(v104 + 32);
              v107 = *(v104 + 40);
              v151 = *(v104 + 48);
              v150 = *(v104 + 56);
              v108 = swift_getObjectType();
              v161 = *(v22 + 56);
              v162 = v105;
              swift_bridgeObjectRetain_n();

              v152 = v106;
              v109 = (v161)(v106, v107, v108, v22);
              v161 = v115;
              v116 = v162;
              v117 = v109;
              v149 = ObjectType;
              v118 = v107;
              v119 = 1;
              v99 = *(&v155 + 1);
              v120 = v150;
              if ((*v38 & 1) == 0)
              {
                v121 = swift_getObjectType();
                v119 = (*(v161 + 16))(v121) & v120;
              }

              *v38 = v119 & 1;
              v122 = v156 == 1;
              v173 = 0;
              v123 = &v157[-v158];
              if (!v158)
              {
                v123 = 0;
              }

              *&v167 = v158;
              *(&v167 + 1) = v157;
              v169 = 0;
              v170 = 0;
              v168 = v123;
              v171 = 1;
              v124 = v116;
              swift_retain_n();
              v125 = v165;

              LOBYTE(v129) = v122;
              sub_1D8C3F908(v117, v161, &v167, &v173, v152, v118, v151, v120, v129, v124, v38, v153, v125, v154);

              swift_unknownObjectRelease();
              swift_bridgeObjectRelease_n();
              swift_unknownObjectRelease();

              if (__OFADD__(*v163, 1))
              {
                goto LABEL_169;
              }

              ++*v163;
              swift_bridgeObjectRelease_n();
              v100 = v155;
LABEL_138:
              sub_1D8C2AB08(v172);
              sub_1D8C2BBF0(v100, v99);

              swift_bridgeObjectRelease_n();
              goto LABEL_5;
            }

            __break(1u);
            goto LABEL_166;
          }

LABEL_164:
          sub_1D8C3A784(v37, v37 + 32, 1, (2 * v43) | 1);
          goto LABEL_128;
        }

        sub_1D8C2AB08(&v167);
        if (__OFADD__(*v163, 1))
        {
LABEL_166:
          __break(1u);
          __break(1u);
LABEL_167:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_168:
          __break(1u);
          __break(1u);
LABEL_169:
          __break(1u);
          return;
        }
      }

      ++*v163;

      goto LABEL_138;
    }

    v53 = __OFADD__(v103, 1);
    v43 = v103 + 1;
    if (!v53)
    {
      *v163 = v43;
      goto LABEL_138;
    }

LABEL_163:
    __break(1u);
    __break(1u);
    goto LABEL_164;
  }

  v150 = a9;
  v151 = a1;
  v152 = a2;
  v148 = a11;
  v153 = a12;
  v25 = *(v164 + 2);
  v24 = *(v164 + 3);
  v26 = v163;
  if (v24 >= v25)
  {
LABEL_116:
    sub_1D8C2BBF0(v155, *(&v155 + 1));

    goto LABEL_5;
  }

  v27 = v164;
  v28 = *v164;
  v149 = *(v164 + 1) - *v164;
  v144 = ObjectType;
  v145 = v28 + 1;
  v146 = v28;
  while (1)
  {
    if (v28)
    {
      v29 = v149;
      if (v24 >= v149)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_119;
      }

      v29 = 0;
    }

    v30 = *(v28 + v24);
    v31 = v24 + 1;
    if ((v30 & 0x8000000000000000) != 0)
    {
      if (v31 >= v29)
      {
        goto LABEL_119;
      }

      v30 &= 0x7Fu;
      v32 = (v145 + v24);
      v31 = v24 + 2;
      v33 = 7;
      while (1)
      {
        v34 = *v32++;
        v30 |= (v34 & 0x7F) << v33;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        if (v31 < v29)
        {
          ++v31;
          v35 = v33 > 0x38;
          v33 += 7;
          if (!v35)
          {
            continue;
          }
        }

        goto LABEL_119;
      }

      *(v27 + 3) = v31;
      if (v30 > 0xFFFFFFFE)
      {
LABEL_119:
        sub_1D8C36A64();
        swift_allocError();
        *v102 = xmmword_1D8C86190;
        *(v102 + 16) = 2;
        swift_willThrow();
        sub_1D8C2BBF0(v155, *(&v155 + 1));

        goto LABEL_4;
      }
    }

    else
    {
      *(v27 + 3) = v31;
    }

    v22 = v30 & 7;
    if (v30 < 8 || v22 >= 6)
    {
      goto LABEL_119;
    }

    if (v156 == v30 >> 3)
    {
      break;
    }

    v27 = v20;
    sub_1D8C452D0(v30);
LABEL_63:
    v24 = *(v27 + 3);
    if (v24 >= v25)
    {
      goto LABEL_116;
    }
  }

  v147 = &v129;
  swift_bridgeObjectRetain_n();

  (v157)(v172, ObjectType, v152);
  v38 = *(&v172[0] + 1);
  v37 = *&v172[0];
  v39 = *(&v172[0] + 1) >> 62;
  v40 = v22 != 2 || v39 == 1;
  if (v40 || v39 == 2 && __PAIR128__((*&v172[0] >= 0xDuLL) + *(&v172[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v172[0] - 13) < 2)
  {
    ObjectType = *&v172[0];
    v167 = v172[0];
    v27 = v20;
    sub_1D8C29F08(&v167, v22, v172);
    v41 = v165;
    if ((v162 & 1) != 0 || (v42 = *v26, *v26 == v161))
    {
      if (v150)
      {
        swift_bridgeObjectRetain_n();
        v37 = sub_1D8C58544(v172, v153, v41, v154);
        v43 = *v26 + 1;
        if (!__OFADD__(*v26, 1))
        {
          LOBYTE(v22) = v37;
LABEL_62:
          *v26 = v43;
          swift_bridgeObjectRelease_n();
          sub_1D8C2AB08(v172);
          sub_1D8C2BBF0(ObjectType, v38);
          swift_bridgeObjectRelease_n();

          ObjectType = v144;
          v28 = v146;
          if ((v22 & 1) == 0)
          {
LABEL_145:
            sub_1D8C2BBF0(v155, *(&v155 + 1));

            swift_bridgeObjectRelease_n();
            goto LABEL_5;
          }

          goto LABEL_63;
        }

        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      sub_1D8C29EAC(v172, &v167);
      if (v171 == 10)
      {
        v22 = *(&v167 + 1);
        v44 = v167;
        v133 = v169;
        v134 = v168;
        v45 = *(v160 + 16);
        if (v45)
        {
          sub_1D8C3A784(v160, v160 + 32, 1, (2 * v45) | 1);
        }

        else
        {
        }

        v141 = v38;
        v43 = *(v37 + 16);
        v132 = v43;
        if (!v43)
        {
          goto LABEL_155;
        }

        v138 = v37;
        v139 = &v129;
        v46 = *(v37 + 32);
        v47 = *(v37 + 40);
        v130 = *(v37 + 48);
        LODWORD(v142) = *(v37 + 56);
        v143 = swift_getObjectType();
        v136 = *(v22 + 56);
        swift_bridgeObjectRetain_n();

        v131 = v46;
        v137 = v47;
        v135 = v44;
        v48 = v136(v46, v47, v143, v22);
        v50 = v49;
        v51 = *v148;
        v143 = v48;
        v136 = v49;
        if (v51)
        {
          v52 = 1;
        }

        else
        {
          v55 = swift_getObjectType();
          v56 = (*(v50 + 2))(v55, v50);
          v52 = v56 & v142;
        }

        v27 = v20;
        v58 = v133;
        v57 = v134;
        v59 = v132;
        v60 = v148;
        *v148 = v52 & 1;
        LODWORD(v134) = v59 == 1;
        v173 = 0;
        v61 = (v58 - v57);
        if (!v57)
        {
          v61 = 0;
        }

        *&v167 = v57;
        *(&v167 + 1) = v58;
        v168 = v61;
        v169 = 0;
        v170 = 0;
        v171 = 1;
        v62 = v137;
        swift_bridgeObjectRetain_n();
        v38 = v138;
        swift_retain_n();
        v63 = v165;

        LOBYTE(v129) = v134;
        v22 = sub_1D8C3F908(v143, v136, &v167, &v173, v131, v62, v130, v142, v129, v38, v60, v153, v63, v154);

        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();

        v26 = v163;
        v43 = *v163 + 1;
        if (__OFADD__(*v163, 1))
        {
          goto LABEL_156;
        }

        v38 = v141;
        goto LABEL_62;
      }

      v37 = sub_1D8C2AB08(&v167);
      v43 = *v26 + 1;
      if (__OFADD__(*v26, 1))
      {
        goto LABEL_154;
      }

      *v26 = v43;
    }

    else
    {
      v53 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v53)
      {
        goto LABEL_153;
      }

      *v26 = v43;
    }

    sub_1D8C2AB08(v172);
    sub_1D8C2BBF0(ObjectType, v38);
    swift_bridgeObjectRelease_n();

LABEL_51:

    ObjectType = v144;
    v28 = v146;
    goto LABEL_63;
  }

  if (v146)
  {
    v54 = v149;
    v27 = v20;
    if (v31 >= v149)
    {
      goto LABEL_134;
    }
  }

  else
  {
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_134;
    }

    v27 = v20;
    v54 = 0;
  }

  v64 = *(v146 + v31);
  v43 = v31 + 1;
  if (v64 < 0)
  {
    if (v43 >= v54)
    {
LABEL_134:
      v110 = v37;
      sub_1D8C36A64();
      swift_allocError();
      *v111 = xmmword_1D8C86190;
      *(v111 + 16) = 2;
      swift_willThrow();
      v112 = v110;
      goto LABEL_135;
    }

    v64 &= 0x7Fu;
    v95 = (v145 + v31);
    v43 = v31 + 2;
    v96 = 7;
    while (1)
    {
      v97 = *v95++;
      v64 |= (v97 & 0x7F) << v96;
      if ((v97 & 0x80) == 0)
      {
        break;
      }

      if (v43 < v54)
      {
        ++v43;
        v35 = v96 > 0x38;
        v96 += 7;
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_134;
    }
  }

  *(v27 + 3) = v43;
  if ((v64 & 0x80000000) != 0)
  {
    goto LABEL_134;
  }

  v65 = v64 & 0x7FFFFFFF;
  v143 = v43 + v65;
  if (__OFADD__(v43, v65))
  {
    goto LABEL_159;
  }

  if (v43 >= v143)
  {
LABEL_105:
    if (v43 == v143)
    {
      sub_1D8C2BBF0(v37, v38);
      swift_bridgeObjectRelease_n();

      goto LABEL_51;
    }

    v127 = v37;
    sub_1D8C36A64();
    swift_allocError();
    *v128 = xmmword_1D8C86190;
    *(v128 + 16) = 2;
    swift_willThrow();
    v112 = v127;
LABEL_135:
    sub_1D8C2BBF0(v112, v38);
    swift_bridgeObjectRelease_n();

    v114 = *(&v155 + 1);
    v113 = v155;
    goto LABEL_150;
  }

  v140 = v37;
  while (1)
  {
    *&v167 = v37;
    *(&v167 + 1) = v38;
    v37 = sub_1D8C6DE1C(&v167, v172);
    if ((v162 & 1) == 0)
    {
      v66 = *v26;
      if (*v26 != v161)
      {
        v53 = __OFADD__(v66, 1);
        v43 = v66 + 1;
        if (v53)
        {
          goto LABEL_158;
        }

        *v26 = v43;
LABEL_74:
        sub_1D8C2AB08(v172);
        goto LABEL_75;
      }
    }

    if (v150)
    {
      break;
    }

    sub_1D8C29EAC(v172, &v167);
    if (v171 != 10)
    {

      v37 = sub_1D8C2AB08(&v167);
      v43 = *v26 + 1;
      if (__OFADD__(*v26, 1))
      {
        goto LABEL_160;
      }

      *v26 = v43;

      goto LABEL_74;
    }

    v22 = *(&v167 + 1);
    v132 = v169;
    v133 = v168;
    v74 = *(v160 + 16);
    v139 = v167;
    if (v74)
    {
      *&v142 = *(&v167 + 1);
      v91 = v74 - 1;
      if (v74 == 1)
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v92 = swift_allocObject();
        v93 = _swift_stdlib_malloc_size(v92);
        v94 = v93 - 32;
        if (v93 < 32)
        {
          v94 = v93 - 1;
        }

        v92[2] = v91;
        v92[3] = 2 * (v94 >> 5);
        swift_arrayInitWithCopy();
        v37 = v92;
      }

      v22 = v142;
    }

    else
    {
    }

    v43 = *(v37 + 16);
    v131 = v43;
    if (!v43)
    {
      goto LABEL_161;
    }

    v137 = v37;
    v138 = &v129;
    v75 = *(v37 + 40);
    *&v142 = *(v37 + 32);
    v130 = *(v37 + 48);
    LODWORD(v141) = *(v37 + 56);
    v76 = swift_getObjectType();
    v134 = *(v22 + 56);
    v135 = v76;
    swift_bridgeObjectRetain_n();

    v136 = v75;
    v77 = (v134)(v142, v75, v135, v22);
    v79 = v78;
    v80 = *v148;
    v135 = v78;
    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v82 = swift_getObjectType();
      v83 = (*(v79 + 16))(v82, v79);
      v81 = v83 & v141;
    }

    v85 = v132;
    v84 = v133;
    v86 = v131;
    v87 = v148;
    *v148 = v81 & 1;
    LODWORD(v134) = v86 == 1;
    v173 = 0;
    v88 = (v85 - v84);
    if (!v84)
    {
      v88 = 0;
    }

    *&v167 = v84;
    *(&v167 + 1) = v85;
    v168 = v88;
    v169 = 0;
    v170 = 0;
    v171 = 1;
    v89 = v136;
    swift_bridgeObjectRetain_n();
    ObjectType = v137;
    swift_retain_n();
    v90 = v165;

    LOBYTE(v129) = v134;
    v22 = sub_1D8C3F908(v77, v135, &v167, &v173, v142, v89, v130, v141, v129, ObjectType, v87, v153, v90, v154);

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    v26 = v163;
    v43 = *v163 + 1;
    if (__OFADD__(*v163, 1))
    {
      goto LABEL_162;
    }

    *v163 = v43;
    swift_bridgeObjectRelease_n();
    sub_1D8C2AB08(v172);
    if ((v22 & 1) == 0)
    {
LABEL_144:
      sub_1D8C2BBF0(v140, v38);
      swift_bridgeObjectRelease_n();

      goto LABEL_145;
    }

LABEL_75:
    v27 = v20;
    v43 = *(v20 + 3);
    v37 = v140;
    if (v43 >= v143)
    {
      goto LABEL_105;
    }
  }

  sub_1D8C29EAC(v172, &v167);
  if (v171 == 10)
  {
    v67 = v168;
    v68 = v169;
    v69 = type metadata accessor for QueryableMessage();
    v142 = v167;
    v70 = objc_allocWithZone(v69);
    v71 = &v70[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
    *v71 = v142;
    *(v71 + 2) = v67;
    *(v71 + 3) = v68;
    v166.receiver = v70;
    v166.super_class = v69;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v22 = objc_msgSendSuper2(&v166, sel_init);
    sub_1D8C437A8();
    v72 = sub_1D8C84FF4();
    ObjectType = [v72 evaluateWithObject_];
    swift_unknownObjectRelease();

    if (ObjectType)
    {
      v73 = v154;
      sub_1D8C2A970(v154);
      v37 = sub_1D8C29EAC(v172, v73);
    }

    v43 = *v26 + 1;
    if (__OFADD__(*v26, 1))
    {
      goto LABEL_157;
    }

    *v26 = v43;
    swift_bridgeObjectRelease_n();
    sub_1D8C2AB08(v172);
    if (ObjectType)
    {
      goto LABEL_144;
    }

    goto LABEL_75;
  }

  v141 = v38;

  sub_1D8C2AB08(&v167);
  sub_1D8C2F8AC();
  swift_allocError();
  *v126 = 0xD00000000000002ELL;
  *(v126 + 8) = 0x80000001D8C8BB40;
  *(v126 + 16) = 7;
  swift_willThrow();
  if (__OFADD__(*v26, 1))
  {
    goto LABEL_168;
  }

  ++*v26;
  v114 = *(&v155 + 1);
  v113 = v155;

  sub_1D8C2BBF0(v140, v141);
  sub_1D8C2AB08(v172);
  swift_bridgeObjectRelease_n();

LABEL_150:

  sub_1D8C2BBF0(v113, v114);

LABEL_5:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D8C40E84(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, char **a12)
{
  LODWORD(v151) = a8;
  *&v150 = a7;
  v152 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v155, ObjectType, a2);
  if (v12)
  {

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v146 = v18;
  v147 = a2 + 56;
  v148 = a3;
  v149 = a10;
  v19 = v155[0];
  v20 = 0;
  v22 = a1;
  v145 = (*(a2 + 48))(ObjectType, a2);
  v144 = v19;
  v140 = a12;
  v139 = a11;
  v142 = a9;
  v23 = *(a2 + 16);
  v141 = ObjectType;
  v24 = v23(ObjectType, a2);
  v25 = a6;
  if ((v24 & 1) == 0)
  {
    v105 = sub_1D8C29BDC(v145);
    v28 = v149;
    v106 = v152;
    v22 = *(&v144 + 1);
    v27 = v144;
    if ((v105 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v144, *(&v144 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v153 = v144;
    v107 = sub_1D8C29E98(v105);
    LOBYTE(a1) = v148;
    sub_1D8C29F08(&v153, v107, v155);
    if ((v151 & 1) != 0 || (v108 = *v152, *v152 == v150))
    {
      if (v142)
      {
        result = sub_1D8C57FE0(v155, v140);
        v53 = *v152 + 1;
        if (!__OFADD__(*v152, 1))
        {
          LOBYTE(a1) = result;
          goto LABEL_146;
        }

        goto LABEL_167;
      }

      sub_1D8C29EAC(v155, &v153);
      if (v154[24] == 10)
      {
        v150 = *v154;
        v151 = v153;
        v53 = *(v149 + 16);
        if (v53)
        {
          goto LABEL_165;
        }

LABEL_131:
        v153 = v151;
        *v154 = v150;
        v111 = sub_1D8C4485C(&v153);
        if (!v20)
        {
          LOBYTE(a1) = v111;
          swift_unknownObjectRelease();

          v106 = v152;
          v53 = *v152 + 1;
          if (!__OFADD__(*v152, 1))
          {
            goto LABEL_146;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        swift_unknownObjectRelease();

        if (!__OFADD__(*v152, 1))
        {
          ++*v152;
          sub_1D8C2AB08(v155);
          sub_1D8C2BBF0(v27, v22);
          goto LABEL_116;
        }

LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      result = sub_1D8C2AB08(&v153);
      v53 = *v152 + 1;
      if (__OFADD__(*v152, 1))
      {
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }
    }

    else
    {
      v57 = __OFADD__(v108, 1);
      v53 = v108 + 1;
      if (v57)
      {
        goto LABEL_164;
      }
    }

    LOBYTE(a1) = 1;
LABEL_146:
    *v106 = v53;
    sub_1D8C2AB08(v155);
    sub_1D8C2BBF0(v27, v22);

    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  a1 = v148;
  v26 = v148[3];
  v138 = v148[2];
  v27 = v149;
  if (v26 >= v138)
  {
LABEL_127:
    sub_1D8C2BBF0(v144, *(&v144 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v28 = *v148;
  v136 = v148[1] - *v148;
  v137 = v28;
  v133 = v28 + 1;
  v20 = v147;
  v143 = v25;
  while (1)
  {
    if (v28)
    {
      v29 = v136;
      if (v26 >= v136)
      {
        goto LABEL_125;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_125;
      }

      v29 = 0;
    }

    v30 = *(v28 + v26);
    v31 = v26 + 1;
    if ((v30 & 0x8000000000000000) == 0)
    {
      *(a1 + 3) = v31;
      goto LABEL_24;
    }

    if (v31 >= v29)
    {
      goto LABEL_125;
    }

    v30 &= 0x7Fu;
    v32 = (v133 + v26);
    v31 = v26 + 2;
    v33 = 7;
    while (1)
    {
      v34 = *v32++;
      v30 |= (v34 & 0x7F) << v33;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      if (v31 < v29)
      {
        ++v31;
        v35 = v33 > 0x38;
        v33 += 7;
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_125;
    }

    *(a1 + 3) = v31;
    if (v30 > 0xFFFFFFFE)
    {
LABEL_125:
      sub_1D8C36A64();
      swift_allocError();
      *v109 = xmmword_1D8C86190;
      *(v109 + 16) = 2;
      swift_willThrow();
      sub_1D8C2BBF0(v144, *(&v144 + 1));
LABEL_116:

      goto LABEL_4;
    }

LABEL_24:
    v28 = v27;
    v36 = v30 & 7;
    if (v30 < 8 || v36 >= 6)
    {
      sub_1D8C36A64();
      swift_allocError();
      *v110 = xmmword_1D8C86190;
      *(v110 + 16) = 2;
      swift_willThrow();
LABEL_134:
      sub_1D8C2BBF0(v144, *(&v144 + 1));
      goto LABEL_116;
    }

    if (v145 != v30 >> 3)
    {
      sub_1D8C452D0(v30);
      if (v12)
      {
        goto LABEL_134;
      }

      a1 = v148;
      v27 = v28;
      v28 = v137;
      goto LABEL_58;
    }

    v135 = &v120;

    v146(v155, v141, a2);
    if (v12)
    {
      goto LABEL_141;
    }

    v38 = *(&v155[0] + 1);
    v39 = *&v155[0];
    v40 = *(&v155[0] + 1) >> 62;
    v41 = v36 != 2 || v40 == 1;
    if (!v41 && (v40 != 2 || __PAIR128__((*&v155[0] >= 0xDuLL) + *(&v155[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v155[0] - 13) >= 2))
    {
      break;
    }

    v42 = *&v155[0];
    v153 = v155[0];
    v43 = *(&v155[0] + 1);
    LOBYTE(a1) = v148;
    sub_1D8C29F08(&v153, v36, v155);
    v27 = v28;
    v134 = 0;
    if ((v151 & 1) == 0)
    {
      v44 = *v152;
      if (*v152 != v150)
      {
        v57 = __OFADD__(v44, 1);
        v53 = v44 + 1;
        if (v57)
        {
          goto LABEL_155;
        }

        v28 = v137;
        v47 = v152;
        goto LABEL_56;
      }
    }

    if ((v142 & 1) == 0)
    {
      sub_1D8C29EAC(v155, &v153);
      v28 = v137;
      if (v154[24] != 10)
      {
        sub_1D8C2AB08(&v153);
        v47 = v152;
        v53 = *v152 + 1;
        if (__OFADD__(*v152, 1))
        {
          goto LABEL_156;
        }

        goto LABEL_56;
      }

      v132 = v153;
      v130 = *v154;
      v54 = *(v27 + 16);
      if (v54)
      {
        sub_1D8C3A784(v27, v27 + 32, 1, (2 * v54) | 1);
        v55 = v104;
      }

      else
      {

        v55 = v27;
      }

      v12 = v134;
      v153 = v132;
      *v154 = v130;
      v27 = v55;
      v56 = sub_1D8C4485C(&v153);
      v20 = v12;
      if (!v12)
      {
        LOBYTE(a1) = v56;
        swift_unknownObjectRelease();

        v53 = *v152 + 1;
        if (__OFADD__(*v152, 1))
        {
          goto LABEL_157;
        }

        *v152 = v53;
        sub_1D8C2AB08(v155);
        sub_1D8C2BBF0(v42, v43);
        v27 = v149;

        if ((a1 & 1) == 0)
        {
          sub_1D8C2BBF0(v144, *(&v144 + 1));

LABEL_152:

          LOBYTE(a1) = 0;
          return a1 & 1;
        }

        a1 = v148;
        v20 = v147;
        goto LABEL_58;
      }

      swift_unknownObjectRelease();

      if (!__OFADD__(*v152, 1))
      {
        ++*v152;
        sub_1D8C2AB08(v155);
        sub_1D8C2BBF0(v42, v43);
        goto LABEL_141;
      }

LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    sub_1D8C29EAC(v155, &v153);
    v45 = v140;
    a1 = *v140;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v45 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_1D8C4ACC8(0, *(a1 + 2) + 1, 1, a1);
      *v140 = a1;
    }

    v47 = v152;
    v49 = *(a1 + 2);
    v48 = *(a1 + 3);
    v27 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v103 = sub_1D8C4ACC8((v48 > 1), v49 + 1, 1, a1);
      v47 = v152;
      a1 = v103;
      *v140 = v103;
    }

    *(a1 + 2) = v27;
    v50 = &a1[48 * v49];
    v51 = v153;
    v52 = *v154;
    *(v50 + 57) = *&v154[9];
    *(v50 + 2) = v51;
    *(v50 + 3) = v52;
    v53 = *v47 + 1;
    if (__OFADD__(*v47, 1))
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      sub_1D8C3A784(v28, v28 + 32, 1, (2 * v53) | 1);
      goto LABEL_131;
    }

    v27 = v28;
    v28 = v137;
LABEL_56:
    *v47 = v53;
    sub_1D8C2AB08(v155);
    v58 = v42;
    v38 = v43;
LABEL_57:
    sub_1D8C2BBF0(v58, v38);

    v12 = v134;
    a1 = v148;
LABEL_58:
    v26 = *(a1 + 3);
    if (v26 >= v138)
    {
      goto LABEL_127;
    }
  }

  if (v137)
  {
    v59 = v136;
    a1 = v148;
    v27 = v28;
    if (v31 >= v136)
    {
      goto LABEL_140;
    }
  }

  else
  {
    a1 = v148;
    v27 = v28;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_140;
    }

    v59 = 0;
  }

  v28 = v137;
  v60 = *(v137 + v31);
  v53 = v31 + 1;
  if (v60 < 0)
  {
    if (v53 < v59)
    {
      v60 &= 0x7Fu;
      v100 = (v133 + v31);
      v53 = v31 + 2;
      v101 = 7;
      while (1)
      {
        v102 = *v100++;
        v60 |= (v102 & 0x7F) << v101;
        if ((v102 & 0x80) == 0)
        {
          goto LABEL_68;
        }

        if (v53 < v59)
        {
          ++v53;
          v35 = v101 > 0x38;
          v101 += 7;
          if (!v35)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_140:
    v112 = v38;
    sub_1D8C36A64();
    swift_allocError();
    *v113 = xmmword_1D8C86190;
    *(v113 + 16) = 2;
    swift_willThrow();
    sub_1D8C2BBF0(v39, v112);
LABEL_141:

    v115 = *(&v144 + 1);
    v114 = v144;
    goto LABEL_142;
  }

LABEL_68:
  *(a1 + 3) = v53;
  if ((v60 & 0x80000000) != 0)
  {
    goto LABEL_140;
  }

  v61 = v60 & 0x7FFFFFFF;
  v62 = v53 + v61;
  if (__OFADD__(v53, v61))
  {
    goto LABEL_163;
  }

  if (v53 >= v62)
  {
LABEL_105:
    v134 = v12;
    if (v53 == v62)
    {
      v58 = v39;
      goto LABEL_57;
    }

    v118 = v38;
    sub_1D8C36A64();
    swift_allocError();
    *v119 = xmmword_1D8C86190;
    *(v119 + 16) = 2;
    swift_willThrow();
    sub_1D8C2BBF0(v39, v118);
    goto LABEL_141;
  }

  v121 = v53 + v61;
  v131 = v38;
  while (1)
  {
    *&v153 = v39;
    *(&v153 + 1) = v38;
    sub_1D8C6DE1C(&v153, v155);
    if ((v151 & 1) == 0)
    {
      v64 = *v152;
      if (*v152 != v150)
      {
        v57 = __OFADD__(v64, 1);
        v53 = v64 + 1;
        if (v57)
        {
          goto LABEL_159;
        }

        v20 = 0;
        v63 = v152;
        goto LABEL_73;
      }
    }

    v20 = 0;
    if (v142)
    {
      sub_1D8C29EAC(v155, &v153);
      v65 = v140;
      a1 = *v140;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *v65 = a1;
      if ((v66 & 1) == 0)
      {
        a1 = sub_1D8C4ACC8(0, *(a1 + 2) + 1, 1, a1);
        *v140 = a1;
      }

      v63 = v152;
      v68 = *(a1 + 2);
      v67 = *(a1 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v134 = v68 + 1;
        v94 = sub_1D8C4ACC8((v67 > 1), v68 + 1, 1, a1);
        v69 = v134;
        v63 = v152;
        a1 = v94;
        *v140 = v94;
      }

      *(a1 + 2) = v69;
      v70 = &a1[48 * v68];
      v71 = v153;
      v72 = *v154;
      *(v70 + 57) = *&v154[9];
      *(v70 + 2) = v71;
      *(v70 + 3) = v72;
      v53 = *v63 + 1;
      if (__OFADD__(*v63, 1))
      {
        goto LABEL_158;
      }

      goto LABEL_73;
    }

    sub_1D8C29EAC(v155, &v153);
    if (v154[24] != 10)
    {
      sub_1D8C2AB08(&v153);
      v63 = v152;
      v53 = *v152 + 1;
      if (__OFADD__(*v152, 1))
      {
        goto LABEL_161;
      }

LABEL_73:
      *v63 = v53;
      sub_1D8C2AB08(v155);
      goto LABEL_74;
    }

    v73 = *(&v153 + 1);
    a1 = v153;
    v125 = *&v154[8];
    v126 = *v154;
    v74 = *(v27 + 16);
    if (v74)
    {
      v28 = v153;
      v95 = v39;
      v96 = v74 - 1;
      if (v74 == 1)
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v97 = swift_allocObject();
        v98 = _swift_stdlib_malloc_size(v97);
        v99 = v98 - 32;
        if (v98 < 32)
        {
          v99 = v98 - 1;
        }

        v97[2] = v96;
        v97[3] = 2 * (v99 >> 5);
        v27 = v149;
        swift_arrayInitWithCopy();
        v53 = v97;
      }

      v39 = v95;
      a1 = v28;
    }

    else
    {

      v53 = v27;
    }

    v124 = *(v53 + 16);
    if (!v124)
    {
      goto LABEL_160;
    }

    v128 = v53;
    v129 = &v120;
    v75 = *(v53 + 32);
    v76 = *(v53 + 40);
    v122 = *(v53 + 48);
    LODWORD(v132) = *(v53 + 56);
    v134 = swift_getObjectType();
    v127 = *(v73 + 56);

    v123 = v75;
    v77 = v75;
    v78 = v76;
    *&v130 = a1;
    v79 = v127(v77, v76, v134, v73);
    v81 = v80;
    v134 = 0;
    if (*v139)
    {
      v82 = 1;
    }

    else
    {
      v83 = swift_getObjectType();
      v84 = (*(v81 + 16))(v83, v81);
      v82 = v84 & v132;
    }

    v86 = v125;
    v85 = v126;
    v87 = v124;
    v88 = v139;
    *v139 = v82 & 1;
    v89 = v87 == 1;
    v156 = 0;
    v90 = v86 - v85;
    if (!v85)
    {
      v90 = 0;
    }

    *&v153 = v85;
    *(&v153 + 1) = v86;
    *v154 = v90;
    *&v154[16] = 0;
    v154[24] = 1;
    swift_bridgeObjectRetain_n();
    v91 = v128;
    swift_retain_n();
    LOBYTE(v120) = v89;
    v92 = v134;
    v93 = sub_1D8C40E84(v79, v81, &v153, &v156, v123, v78, v122, v132, v120, v91, v88, v140);
    v28 = v79;
    v20 = v92;
    if (v92)
    {
      break;
    }

    LOBYTE(a1) = v93;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v53 = *v152 + 1;
    v27 = v149;
    if (__OFADD__(*v152, 1))
    {
      goto LABEL_162;
    }

    *v152 = v53;
    sub_1D8C2AB08(v155);
    v28 = v137;
    v62 = v121;
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v39, v131);

      sub_1D8C2BBF0(v144, *(&v144 + 1));

      goto LABEL_152;
    }

LABEL_74:
    LOBYTE(a1) = v148;
    v38 = v131;
    v53 = v148[3];
    v12 = v20;
    v20 = v147;
    if (v53 >= v62)
    {
      goto LABEL_105;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

  v116 = v144;
  v117 = v131;
  if (__OFADD__(*v152, 1))
  {
LABEL_171:
    __break(1u);
    return result;
  }

  ++*v152;
  sub_1D8C2BBF0(v39, v117);
  sub_1D8C2AB08(v155);

  v115 = *(&v116 + 1);
  v114 = v116;
LABEL_142:
  sub_1D8C2BBF0(v114, v115);

  LOBYTE(a1) = v135;

  return a1 & 1;
}

uint64_t sub_1D8C41E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, char **a12)
{
  LODWORD(v142) = a8;
  *&v141 = a7;
  v143 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v149, ObjectType, a2);
  if (v12)
  {
    *&v144 = v12;

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v137 = v18;
  v138 = a2 + 56;
  v139 = a3;
  v140 = a10;
  v19 = v149[0];
  v20 = (*(a2 + 48))(ObjectType, a2);
  *&v144 = 0;
  v22 = v20;
  v136 = v19;
  v132 = a12;
  v131 = a11;
  v23 = *(a2 + 16);
  v133 = ObjectType;
  v134 = a1;
  v24 = a6;
  if ((v23() & 1) == 0)
  {
    v91 = sub_1D8C29BDC(v22);
    v29 = v140;
    v22 = *(&v136 + 1);
    v25 = v136;
    if ((v91 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v136, *(&v136 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v145 = v136;
    v92 = sub_1D8C29E98(v91);
    LOBYTE(a1) = v139;
    sub_1D8C29F08(&v145, v92, v149);
    if ((v142 & 1) != 0 || (v93 = *v143, *v143 == v141))
    {
      if (a9)
      {
        result = sub_1D8C581B8(v149, v132);
        *&v144 = 0;
        v99 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = result;
          goto LABEL_143;
        }
      }

      else
      {
        *&v144 = 0;
        sub_1D8C29EAC(v149, &v145);
        if (v148 == 10)
        {
          v141 = v146;
          v142 = v145;
          v48 = *(v140 + 16);
          if (!v48)
          {

            v96 = v140;
LABEL_125:
            v97 = v144;
            v145 = v142;
            v146 = v141;
            v98 = sub_1D8C4488C(&v145, v96, v131, v132);
            *&v144 = v97;
            if (v97)
            {
              swift_unknownObjectRelease();

              if (!__OFADD__(*v143, 1))
              {
                ++*v143;
                sub_1D8C2AB08(v149);
                sub_1D8C2BBF0(v25, v22);
                goto LABEL_111;
              }

              goto LABEL_163;
            }

            LOBYTE(a1) = v98;
            swift_unknownObjectRelease();

            v99 = v143;
            v48 = *v143 + 1;
            if (__OFADD__(*v143, 1))
            {
LABEL_164:
              __break(1u);
              __break(1u);
              __break(1u);
              goto LABEL_165;
            }

LABEL_143:
            *v99 = v48;
            sub_1D8C2AB08(v149);
            sub_1D8C2BBF0(v25, v22);

            swift_bridgeObjectRelease_n();
            return a1 & 1;
          }

LABEL_160:
          sub_1D8C3A784(v29, v29 + 32, 1, (2 * v48) | 1);
          v96 = v110;
          goto LABEL_125;
        }

        result = sub_1D8C2AB08(&v145);
        v99 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = 1;
          goto LABEL_143;
        }

        __break(1u);
      }

      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    *&v144 = 0;
    v53 = __OFADD__(v93, 1);
    v48 = v93 + 1;
    if (!v53)
    {
      LOBYTE(a1) = 1;
      v99 = v143;
      goto LABEL_143;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v25 = v139;
  a1 = v140;
  v26 = v139[3];
  v130 = v139[2];
  if (v26 >= v130)
  {
LABEL_121:
    sub_1D8C2BBF0(v136, *(&v136 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v126 = a9;
  v27 = *v139;
  v28 = v139[1] - *v139;
  v29 = *v139 + 1;
  v30 = v144;
  v135 = v24;
  v129 = v22;
  while (1)
  {
    if (v27)
    {
      v31 = v28;
      if (v26 >= v28)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_120;
      }

      v31 = 0;
    }

    v32 = *(v27 + v26);
    v33 = v26 + 1;
    if ((v32 & 0x8000000000000000) != 0)
    {
      if (v33 >= v31)
      {
        goto LABEL_120;
      }

      v32 &= 0x7Fu;
      v34 = (v29 + v26);
      v33 = v26 + 2;
      v35 = 7;
      while (1)
      {
        v36 = *v34++;
        v32 |= (v36 & 0x7F) << v35;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        if (v33 < v31)
        {
          ++v33;
          v37 = v35 > 0x38;
          v35 += 7;
          if (!v37)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      *(v25 + 24) = v33;
      if (v32 > 0xFFFFFFFE)
      {
LABEL_120:
        sub_1D8C36A64();
        v94 = swift_allocError();
        *v95 = xmmword_1D8C86190;
        *(v95 + 16) = 2;
        *&v144 = v94;
        swift_willThrow();
        sub_1D8C2BBF0(v136, *(&v136 + 1));
LABEL_111:

        goto LABEL_4;
      }
    }

    else
    {
      *(v25 + 24) = v33;
    }

    v38 = v32 & 7;
    if (v32 < 8 || v38 >= 6)
    {
      goto LABEL_120;
    }

    if (v22 == v32 >> 3)
    {
      break;
    }

    v49 = a1;
    LOBYTE(a1) = v25;
    sub_1D8C452D0(v32);
    if (v30)
    {
      *&v144 = v30;
      sub_1D8C2BBF0(v136, *(&v136 + 1));
      goto LABEL_111;
    }

    a1 = v49;
LABEL_48:
    v22 = v129;
LABEL_54:
    v26 = *(v25 + 24);
    if (v26 >= v130)
    {
      *&v144 = v30;
      goto LABEL_121;
    }
  }

  v127 = &v111;

  v137(v149, v133, a2);
  if (v30)
  {
    *&v144 = v30;
    LOBYTE(a1) = v140;
    goto LABEL_135;
  }

  v41 = *(&v149[0] + 1);
  v40 = *&v149[0];
  v42 = *(&v149[0] + 1) >> 62;
  v43 = v38 != 2 || v42 == 1;
  v128 = *(&v149[0] + 1);
  if (v43 || v42 == 2 && __PAIR128__((*&v149[0] >= 0xDuLL) + *(&v149[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v149[0] - 13) < 2)
  {
    v44 = *&v149[0];
    v145 = v149[0];
    sub_1D8C29F08(&v145, v38, v149);
    a1 = v140;
    if ((v142 & 1) != 0 || (v45 = *v143, *v143 == v141))
    {
      if (v126)
      {
        v46 = sub_1D8C581B8(v149, v132);
        *&v144 = 0;
        v47 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = v46;
LABEL_46:
          *v47 = v48;
          sub_1D8C2AB08(v149);
          sub_1D8C2BBF0(v44, v128);

          if ((a1 & 1) == 0)
          {
            sub_1D8C2BBF0(v136, *(&v136 + 1));

LABEL_144:

            LOBYTE(a1) = 0;
            return a1 & 1;
          }

          v30 = v144;
          a1 = v140;
          goto LABEL_48;
        }

        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v50 = 0;
      sub_1D8C29EAC(v149, &v145);
      if (v148 == 10)
      {
        v125 = v145;
        v144 = v146;
        v51 = *(a1 + 16);
        if (v51)
        {
          sub_1D8C3A784(a1, a1 + 32, 1, (2 * v51) | 1);
          a1 = v90;
        }

        else
        {
        }

        v145 = v125;
        v146 = v144;
        v22 = a1;
        v52 = sub_1D8C4488C(&v145, a1, v131, v132);
        *&v144 = v30;
        LOBYTE(a1) = v52;
        swift_unknownObjectRelease();

        v47 = v143;
        v48 = *v143 + 1;
        if (__OFADD__(*v143, 1))
        {
          goto LABEL_152;
        }

        goto LABEL_46;
      }

      sub_1D8C2AB08(&v145);
      v54 = v143;
      v48 = *v143 + 1;
      if (__OFADD__(*v143, 1))
      {
        goto LABEL_151;
      }
    }

    else
    {
      v53 = __OFADD__(v45, 1);
      v48 = v45 + 1;
      if (v53)
      {
        goto LABEL_150;
      }

      v50 = 0;
      v54 = v143;
    }

    v22 = v129;
    *v54 = v48;
    sub_1D8C2AB08(v149);
    v40 = v44;
    v41 = v128;
LABEL_53:
    sub_1D8C2BBF0(v40, v41);

    v30 = v50;
    goto LABEL_54;
  }

  if (v27)
  {
    v55 = v28;
    a1 = v140;
    if (v33 >= v28)
    {
      goto LABEL_134;
    }
  }

  else
  {
    a1 = v140;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_134;
    }

    v55 = 0;
  }

  v56 = *(v27 + v33);
  v48 = v33 + 1;
  if (v56 < 0)
  {
    if (v48 >= v55)
    {
      goto LABEL_134;
    }

    v56 &= 0x7Fu;
    v87 = (v29 + v33);
    v48 = v33 + 2;
    v88 = 7;
    while (1)
    {
      v89 = *v87++;
      v56 |= (v89 & 0x7F) << v88;
      if ((v89 & 0x80) == 0)
      {
        break;
      }

      if (v48 < v55)
      {
        ++v48;
        v37 = v88 > 0x38;
        v88 += 7;
        if (!v37)
        {
          continue;
        }
      }

      goto LABEL_134;
    }
  }

  *(v25 + 24) = v48;
  if ((v56 & 0x80000000) != 0)
  {
    goto LABEL_134;
  }

  v57 = v56 & 0x7FFFFFFF;
  v58 = v48 + v57;
  if (__OFADD__(v48, v57))
  {
    goto LABEL_155;
  }

  if (v48 >= v58)
  {
LABEL_107:
    v22 = v129;
    if (v48 == v58)
    {
      v50 = v30;
      goto LABEL_53;
    }

LABEL_134:
    v100 = v41;
    v101 = v40;
    sub_1D8C36A64();
    v102 = swift_allocError();
    *v103 = xmmword_1D8C86190;
    *(v103 + 16) = 2;
    *&v144 = v102;
    swift_willThrow();
    sub_1D8C2BBF0(v101, v100);
LABEL_135:

LABEL_136:

    v105 = *(&v136 + 1);
    v104 = v136;
LABEL_137:
    sub_1D8C2BBF0(v104, v105);

    return a1 & 1;
  }

  v112 = v48 + v57;
  v124 = v40;
  while (1)
  {
    *&v145 = v40;
    *(&v145 + 1) = v41;
    LOBYTE(a1) = v25;
    sub_1D8C6DE1C(&v145, v149);
    if (v30)
    {
      *&v144 = v30;
      sub_1D8C2BBF0(v124, v128);
      LOBYTE(a1) = v140;

      goto LABEL_136;
    }

    if ((v142 & 1) == 0)
    {
      v60 = *v143;
      if (*v143 != v141)
      {
        *&v144 = 0;
        v53 = __OFADD__(v60, 1);
        v48 = v60 + 1;
        if (v53)
        {
          goto LABEL_154;
        }

        v59 = v143;
        goto LABEL_69;
      }
    }

    if (v126)
    {
      v61 = sub_1D8C581B8(v149, v132);
      *&v144 = 0;
      v62 = v143;
      v48 = *v143 + 1;
      if (__OFADD__(*v143, 1))
      {
        goto LABEL_153;
      }

      LOBYTE(a1) = v61;
      goto LABEL_91;
    }

    *&v144 = 0;
    sub_1D8C29EAC(v149, &v145);
    a1 = v140;
    if (v148 == 10)
    {
      break;
    }

    sub_1D8C2AB08(&v145);
    v59 = v143;
    v48 = *v143 + 1;
    if (__OFADD__(*v143, 1))
    {
      goto LABEL_156;
    }

LABEL_69:
    *v59 = v48;
    sub_1D8C2AB08(v149);
LABEL_70:
    v41 = v128;
    v40 = v124;
    v48 = *(v25 + 24);
    v30 = v144;
    if (v48 >= v58)
    {
      a1 = v140;
      goto LABEL_107;
    }
  }

  v63 = v145;
  v116 = *(&v146 + 1);
  v117 = v146;
  v64 = *(v140 + 16);
  if (v64)
  {
    v22 = v145;
    a1 = v64 - 1;
    if (v64 == 1)
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v65 = swift_allocObject();
      v85 = _swift_stdlib_malloc_size(v65);
      v86 = v85 - 32;
      if (v85 < 32)
      {
        v86 = v85 - 1;
      }

      *(v65 + 16) = a1;
      *(v65 + 24) = 2 * (v86 >> 5);
      swift_arrayInitWithCopy();
    }

    v25 = v139;
  }

  else
  {

    v65 = a1;
  }

  v48 = *(v65 + 16);
  v115 = v48;
  if (!v48)
  {
    goto LABEL_157;
  }

  v119 = &v111;
  v67 = *(v65 + 32);
  v66 = *(v65 + 40);
  v113 = *(v65 + 48);
  v121 = v65;
  v122 = *(v65 + 56);
  *&v125 = v63;
  v123 = swift_getObjectType();
  v118 = *(*(&v63 + 1) + 56);

  v114 = v67;
  v120 = v66;
  v68 = v144;
  v69 = v118(v67, v66, v123, *(&v63 + 1));
  *&v144 = v68;
  if (v68)
  {
    v106 = v124;
    swift_unknownObjectRelease();

    goto LABEL_147;
  }

  v71 = v70;
  v72 = *v131;
  v123 = v69;
  v118 = v70;
  if (v72)
  {
    v73 = 1;
  }

  else
  {
    v74 = swift_getObjectType();
    v75 = (*(v71 + 2))(v74, v71);
    v73 = v75 & v122;
  }

  v77 = v116;
  v76 = v117;
  v78 = v115;
  v79 = v131;
  *v131 = v73 & 1;
  v22 = v78 == 1;
  v150 = 0;
  v80 = v77 - v76;
  if (!v76)
  {
    v80 = 0;
  }

  *&v145 = v76;
  *(&v145 + 1) = v77;
  v146 = v80;
  v147 = 0;
  v148 = 1;
  v81 = v120;
  swift_bridgeObjectRetain_n();
  v82 = v121;
  swift_retain_n();
  LOBYTE(v111) = v22;
  v83 = v144;
  v84 = sub_1D8C41E94(v123, v118, &v145, &v150, v114, v81, v113, v122, v111, v82, v79, v132);
  *&v144 = v83;
  if (!v83)
  {
    LOBYTE(a1) = v84;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v62 = v143;
    v48 = *v143 + 1;
    v58 = v112;
    if (__OFADD__(*v143, 1))
    {
      goto LABEL_158;
    }

LABEL_91:
    *v62 = v48;
    sub_1D8C2AB08(v149);
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v124, v128);

      sub_1D8C2BBF0(v136, *(&v136 + 1));

      goto LABEL_144;
    }

    goto LABEL_70;
  }

  v106 = v124;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

LABEL_147:
  v107 = v136;
  v108 = v128;
  if (!__OFADD__(*v143, 1))
  {
    ++*v143;
    sub_1D8C2BBF0(v106, v108);
    sub_1D8C2AB08(v149);
    v109 = v140;

    v105 = *(&v107 + 1);
    v104 = v107;
    LOBYTE(a1) = v109;
    goto LABEL_137;
  }

LABEL_165:
  __break(1u);
  return result;
}