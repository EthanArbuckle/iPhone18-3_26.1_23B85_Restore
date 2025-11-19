void static Schematizer.searchValue(in:withFieldNumber:type:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v119 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v8 = a4[1];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = -256;
      goto LABEL_45;
    }

    v91 = a4[1];
    *&v94 = a5;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    a1 = sub_1D8C84684();
    v8 = a1;
    if (a1)
    {
      a1 = sub_1D8C846A4();
      if (__OFSUB__(v15, a1))
      {
        __break(1u);
        goto LABEL_99;
      }

      v8 += v15 - a1;
    }

    v17 = __OFSUB__(v16, v15);
    v18 = v16 - v15;
    if (!v17)
    {
      v19 = sub_1D8C84694();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = (v20 + v8);
      if (!v8)
      {
        v21 = 0;
      }

      v113 = v8;
      v114 = v21;
      if (!v8)
      {
        v20 = 0;
      }

      v116 = 0;
      v117 = 0;
      v115 = v20;
      v118 = 1;
      v22 = sub_1D8C29BDC(a3);
      if (v5)
      {
        goto LABEL_45;
      }

      if ((v22 & 0x100000000) != 0)
      {
LABEL_42:
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        v112 = -1;
        sub_1D8C2A970(&v109);
        *v94 = 0u;
        *(v94 + 16) = 0u;
        *(v94 + 32) = -256;
        goto LABEL_45;
      }

LABEL_24:
      *&v105 = v9;
      *(&v105 + 1) = v91;
      v23 = sub_1D8C29E98(v22);
      sub_1D8C29F08(&v105, v23, &v109);
      sub_1D8C29EAC(&v109, &v105);
      if (v108 <= 4u)
      {
        if (v108 <= 1u)
        {
          if (!v108)
          {
            v42 = v105;
            sub_1D8C2AB08(&v109);
            *v94 = v42;
            *(v94 + 8) = 0;
            *(v94 + 16) = 0;
            *(v94 + 24) = 0;
            *(v94 + 32) = 0;
            goto LABEL_45;
          }

          v60 = v105;
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v60;
          *(v94 + 8) = 0;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 256;
        }

        else if (v108 == 2)
        {
          v49 = v105;
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v49;
          *(v94 + 8) = 0;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 512;
        }

        else if (v108 == 3)
        {
          v35 = v105;
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v35;
          *(v94 + 8) = 0;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 768;
        }

        else
        {
          v59 = v105;
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v59;
          *(v94 + 8) = 0;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 1024;
        }
      }

      else if (v108 > 7u)
      {
        if (v108 == 8)
        {
          sub_1D8C2AA1C(&v105, &v102);
          v62 = v103;
          v63 = v104;
          __swift_project_boxed_opaque_existential_1(&v102, v103);
          v64 = (*(v63 + 24))(v62, v63);
          v66 = v65;
          __swift_destroy_boxed_opaque_existential_1(&v102);
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v64;
          *(v94 + 8) = v66;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 2048;
        }

        else if (v108 == 9)
        {
          sub_1D8C2AA1C(&v105, &v102);
          v36 = v103;
          v37 = v104;
          __swift_project_boxed_opaque_existential_1(&v102, v103);
          v38 = (*(v37 + 16))(v36, v37);
          v40 = v39;
          __swift_destroy_boxed_opaque_existential_1(&v102);
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v38;
          *(v94 + 8) = v40;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 2304;
        }

        else
        {
          v103 = MEMORY[0x1E69E6290];
          v104 = MEMORY[0x1E6969DF8];
          v93 = v105;
          v102 = v106;
          v52 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x1E69E6290]);
          v53 = *v52;
          if (*v52 && (v54 = v52[1], v55 = &v54[-v53], v54 != v53))
          {
            if (v55 <= 14)
            {
              v56 = sub_1D8C45074(*v52, v54);
              v57 = v87 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v55 >= 0x7FFFFFFF)
              {
                v56 = sub_1D8C45134(v53, v54);
                v57 = v89 | 0x8000000000000000;
              }

              else
              {
                v56 = sub_1D8C2B5D0(v53, v54);
                v57 = v85 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v56 = 0;
            v57 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v102);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v58 = swift_allocObject();
          *(v58 + 16) = v93;
          *(v58 + 32) = v56;
          *(v58 + 40) = v57;
          sub_1D8C2AB08(&v109);
          v25 = v94;
          *v94 = v58;
          *(v94 + 8) = 0;
          *(v94 + 16) = 0;
          *(v94 + 24) = 0;
          v26 = 2560;
        }
      }

      else if (v108 == 5)
      {
        v61 = v105;
        sub_1D8C2AB08(&v109);
        v25 = v94;
        *v94 = v61;
        *(v94 + 8) = 0;
        *(v94 + 16) = 0;
        *(v94 + 24) = 0;
        v26 = 1280;
      }

      else if (v108 == 6)
      {
        v24 = v105;
        sub_1D8C2AB08(&v109);
        v25 = v94;
        *v94 = v24;
        *(v94 + 8) = 0;
        *(v94 + 16) = 0;
        *(v94 + 24) = 0;
        v26 = 1536;
      }

      else
      {
        v92 = v105;
        v50 = v106;
        v51 = v107;
        sub_1D8C2AB08(&v109);
        v26 = v51 | 0x700;
        v25 = v94;
        *v94 = v92;
        *(v94 + 16) = v50;
      }

      *(v25 + 32) = v26;
      goto LABEL_45;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v10)
  {
    v27 = a1;
    v28 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v91 = a4[1];
      *&v94 = a5;
      v29 = sub_1D8C84684();
      if (!v29)
      {
        goto LABEL_33;
      }

      v30 = sub_1D8C846A4();
      if (!__OFSUB__(v27, v30))
      {
        v29 += v27 - v30;
LABEL_33:
        v31 = sub_1D8C84694();
        if (v31 >= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v31;
        }

        v33 = (v32 + v29);
        if (!v29)
        {
          v33 = 0;
        }

        v113 = v29;
        v114 = v33;
        if (!v29)
        {
          v32 = 0;
        }

        v116 = 0;
        v117 = 0;
        v115 = v32;
        v118 = 1;
        v22 = sub_1D8C29BDC(a3);
        if (v5)
        {
          goto LABEL_45;
        }

        if ((v22 & 0x100000000) != 0)
        {
          goto LABEL_42;
        }

        goto LABEL_24;
      }

LABEL_99:
      __break(1u);
    }

    __break(1u);
    goto LABEL_96;
  }

  v96 = a1;
  v97 = a2;
  v98 = BYTE2(a2);
  v99 = BYTE3(a2);
  v100 = BYTE4(a2);
  v101 = BYTE5(a2);
  v113 = &v96;
  v114 = &v96 + BYTE6(a2);
  v116 = 0;
  v117 = 0;
  v115 = BYTE6(a2);
  v118 = 1;
  v11 = sub_1D8C29BDC(a3);
  if (!v5)
  {
    if ((v11 & 0x100000000) != 0)
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v112 = -1;
      sub_1D8C2A970(&v109);
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = -256;
    }

    else
    {
      *&v105 = v9;
      *(&v105 + 1) = v8;
      v12 = sub_1D8C29E98(v11);
      sub_1D8C29F08(&v105, v12, &v109);
      v8 = a5;
      sub_1D8C29EAC(&v109, &v105);
      if (v108 > 4u)
      {
        if (v108 <= 7u)
        {
          if (v108 == 5)
          {
            v68 = v105;
            sub_1D8C2AB08(&v109);
            *a5 = v68;
            *(a5 + 8) = 0;
            *(a5 + 16) = 0;
            *(a5 + 24) = 0;
            v14 = 1280;
          }

          else if (v108 == 6)
          {
            v13 = v105;
            sub_1D8C2AB08(&v109);
            *a5 = v13;
            *(a5 + 8) = 0;
            *(a5 + 16) = 0;
            *(a5 + 24) = 0;
            v14 = 1536;
          }

          else
          {
            v95 = v105;
            v76 = v106;
            v77 = v107;
            sub_1D8C2AB08(&v109);
            v14 = v77 | 0x700;
            *a5 = v95;
            *(a5 + 16) = v76;
          }

          goto LABEL_85;
        }

        if (v108 == 8)
        {
          sub_1D8C2AA1C(&v105, &v102);
          v69 = v103;
          v70 = v104;
          __swift_project_boxed_opaque_existential_1(&v102, v103);
          v71 = (*(v70 + 24))(v69, v70);
          v73 = v72;
          __swift_destroy_boxed_opaque_existential_1(&v102);
          sub_1D8C2AB08(&v109);
          *a5 = v71;
          *(a5 + 8) = v73;
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          v14 = 2048;
          goto LABEL_85;
        }

        if (v108 == 9)
        {
          sub_1D8C2AA1C(&v105, &v102);
          v43 = v103;
          v44 = v104;
          __swift_project_boxed_opaque_existential_1(&v102, v103);
          v45 = (*(v44 + 16))(v43, v44);
          v47 = v46;
          __swift_destroy_boxed_opaque_existential_1(&v102);
          sub_1D8C2AB08(&v109);
          *a5 = v45;
          *(a5 + 8) = v47;
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          v14 = 2304;
LABEL_85:
          *(v8 + 32) = v14;
          goto LABEL_45;
        }

        v103 = MEMORY[0x1E69E6290];
        v104 = MEMORY[0x1E6969DF8];
        v94 = v105;
        v102 = v106;
        v78 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x1E69E6290]);
        v79 = *v78;
        if (!*v78 || (v80 = v78[1], v81 = &v80[-v79], v80 == v79))
        {
          swift_unknownObjectRetain();
          v82 = 0;
          v83 = 0xC000000000000000;
LABEL_84:
          __swift_destroy_boxed_opaque_existential_1(&v102);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v84 = swift_allocObject();
          *(v84 + 16) = v94;
          *(v84 + 32) = v82;
          *(v84 + 40) = v83;
          sub_1D8C2AB08(&v109);
          *v8 = v84;
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          v14 = 2560;
          goto LABEL_85;
        }

        if (v81 <= 14)
        {
          v82 = sub_1D8C45074(*v78, v80);
          v83 = v88 & 0xFFFFFFFFFFFFFFLL;
          swift_unknownObjectRetain();
          goto LABEL_84;
        }

        swift_unknownObjectRetain();
        a1 = v79;
        a2 = v80;
        if (v81 < 0x7FFFFFFF)
        {
          v82 = sub_1D8C2B5D0(v79, v80);
          v83 = v86 | 0x4000000000000000;
          goto LABEL_84;
        }

LABEL_97:
        v82 = sub_1D8C45134(a1, a2);
        v83 = v90 | 0x8000000000000000;
        goto LABEL_84;
      }

      if (v108 > 1u)
      {
        if (v108 == 2)
        {
          v67 = v105;
          sub_1D8C2AB08(&v109);
          *a5 = v67;
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          v14 = 512;
        }

        else if (v108 == 3)
        {
          v41 = v105;
          sub_1D8C2AB08(&v109);
          *a5 = v41;
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          v14 = 768;
        }

        else
        {
          v74 = v105;
          sub_1D8C2AB08(&v109);
          *a5 = v74;
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          v14 = 1024;
        }

        goto LABEL_85;
      }

      if (v108)
      {
        v75 = v105;
        sub_1D8C2AB08(&v109);
        *a5 = v75;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v14 = 256;
        goto LABEL_85;
      }

      v48 = v105;
      sub_1D8C2AB08(&v109);
      *a5 = v48;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
    }
  }

LABEL_45:
  v34 = *MEMORY[0x1E69E9840];
}

void *sub_1D8C29BB4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D8C29BDC(uint64_t result)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v3 >= v4)
  {
    v9 = 0;
    v17 = 1;
    return v9 + (v17 << 32);
  }

  v5 = *v1;
  v6 = v1[1] - *v1;
  v7 = *v1 + 1;
  while (1)
  {
    if (v5)
    {
      v8 = v6;
      if (v3 >= v6)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      v8 = 0;
    }

    v9 = *(v5 + v3);
    v10 = v3 + 1;
    if ((v9 & 0x8000000000000000) != 0)
    {
      if (v10 >= v8)
      {
        goto LABEL_66;
      }

      v9 &= 0x7Fu;
      v11 = (v7 + v3);
      v10 = v3 + 2;
      v12 = 7;
      while (1)
      {
        v13 = *v11++;
        v9 |= (v13 & 0x7F) << v12;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        if (v10 < v8)
        {
          ++v10;
          v14 = v12 > 0x38;
          v12 += 7;
          if (!v14)
          {
            continue;
          }
        }

        goto LABEL_66;
      }

      v1[3] = v10;
      if (v9 > 0xFFFFFFFE)
      {
LABEL_66:
        sub_1D8C36A64();
        swift_allocError();
        *v31 = xmmword_1D8C86190;
        *(v31 + 16) = 2;
        return swift_willThrow();
      }
    }

    else
    {
      v1[3] = v10;
    }

    v15 = v9 & 7;
    if (v9 < 8 || v15 >= 6)
    {
      goto LABEL_66;
    }

    v17 = v9 >> 3 != result;
    if (v9 >> 3 == result)
    {
      return v9 + (v17 << 32);
    }

    if ((v9 & 7) <= 2)
    {
      break;
    }

    if (v15 == 3)
    {
      v20 = result;
      result = sub_1D8C45570(v9 >> 3);
      if (v2)
      {
        return result;
      }

      v3 = v1[3];
      result = v20;
      if (v3 >= v4)
      {
LABEL_70:
        v9 = 0;
        return v9 + (v17 << 32);
      }
    }

    else
    {
      if (v15 == 4)
      {
        goto LABEL_66;
      }

      v3 = v10 + 4;
      if (__OFADD__(v10, 4))
      {
        goto LABEL_71;
      }

LABEL_58:
      v1[3] = v3;
      if (v3 >= v4)
      {
        goto LABEL_70;
      }
    }
  }

  if ((v9 & 7) == 0)
  {
    if (v5)
    {
      v18 = v6;
      if (v10 >= v6)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      v18 = 0;
    }

    v3 = v10 + 1;
    if (*(v5 + v10) < 0)
    {
      if (v3 >= v18)
      {
        goto LABEL_66;
      }

      v21 = (v7 + v10);
      v3 = v10 + 2;
      v22 = 7;
      while (1)
      {
        v23 = *v21++;
        if ((v23 & 0x80000000) == 0)
        {
          break;
        }

        if (v3 < v18)
        {
          ++v3;
          v14 = v22 > 0x38;
          v22 += 7;
          if (!v14)
          {
            continue;
          }
        }

        goto LABEL_66;
      }
    }

    goto LABEL_58;
  }

  if (v15 != 1)
  {
    if (v5)
    {
      v19 = v6;
      if (v10 >= v6)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      v19 = 0;
    }

    v24 = *(v5 + v10);
    v25 = v10 + 1;
    if (v24 < 0)
    {
      if (v25 >= v19)
      {
        goto LABEL_66;
      }

      v24 &= 0x7Fu;
      v28 = (v7 + v10);
      v25 = v10 + 2;
      v29 = 7;
      while (1)
      {
        v30 = *v28++;
        v24 |= (v30 & 0x7F) << v29;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        if (v25 < v19)
        {
          ++v25;
          v14 = v29 > 0x38;
          v29 += 7;
          if (!v14)
          {
            continue;
          }
        }

        goto LABEL_66;
      }
    }

    v1[3] = v25;
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v26 = v24 & 0x7FFFFFFF;
    v27 = __OFADD__(v25, v26);
    v3 = v25 + v26;
    if (v27)
    {
      goto LABEL_72;
    }

    goto LABEL_58;
  }

  v3 = v10 + 8;
  if (!__OFADD__(v10, 8))
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1D8C29E98(char a1)
{
  result = a1 & 7;
  if (result > 5)
  {
    __break(1u);
  }

  return result;
}

void sub_1D8C29F08(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  if (!(v5 >> 62))
  {
    if (a2)
    {
      goto LABEL_7;
    }

    v17 = *v3;
    if (*v3)
    {
      v18 = v3[1] - v17;
      v19 = v3[3];
      if (v19 >= v18)
      {
        goto LABEL_164;
      }
    }

    else
    {
      v19 = v3[3];
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_164;
      }

      v18 = 0;
    }

    v20 = *(v17 + v19);
    v21 = v19 + 1;
    if (v20 < 0)
    {
      if (v21 >= v18)
      {
        goto LABEL_164;
      }

      v20 &= 0x7Fu;
      v53 = (v17 + v21);
      v54 = v19 + 2;
      v55 = 7;
      while (1)
      {
        v56 = *v53++;
        v20 |= (v56 & 0x7F) << v55;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        if (v54 < v18)
        {
          ++v54;
          v57 = v55 > 0x38;
          v55 += 7;
          if (!v57)
          {
            continue;
          }
        }

        goto LABEL_164;
      }

      v3[3] = v54;
    }

    else
    {
      v3[3] = v21;
    }

    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v20;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = 7;
    sub_1D8C2B50C(v6, v5);
    return;
  }

  if (v5 >> 62 != 1)
  {
    v13 = *a1;
    switch(v6)
    {
      case 1:
        if (a2)
        {
          goto LABEL_7;
        }

        v40 = *v3;
        if (*v3)
        {
          v41 = v3[1] - v40;
          v42 = v3[3];
          if (v42 >= v41)
          {
            break;
          }
        }

        else
        {
          v42 = v3[3];
          if ((v42 & 0x8000000000000000) == 0)
          {
            break;
          }

          v41 = 0;
        }

        v66 = *(v40 + v42);
        v67 = v42 + 1;
        if (v66 < 0)
        {
          if (v67 >= v41)
          {
            break;
          }

          v66 &= 0x7Fu;
          v88 = (v40 + v67);
          v89 = v42 + 2;
          v90 = 7;
          while (1)
          {
            v91 = *v88++;
            v66 |= (v91 & 0x7F) << v90;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            if (v89 < v41)
            {
              ++v89;
              v57 = v90 > 0x38;
              v90 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v89;
        }

        else
        {
          v3[3] = v67;
        }

        *a3 = v66;
        *(a3 + 40) = 1;
        return;
      case 2:
        if (a2)
        {
          goto LABEL_7;
        }

        v33 = *v3;
        if (*v3)
        {
          v34 = v3[1] - v33;
          v35 = v3[3];
          if (v35 >= v34)
          {
            break;
          }
        }

        else
        {
          v35 = v3[3];
          if ((v35 & 0x8000000000000000) == 0)
          {
            break;
          }

          v34 = 0;
        }

        v60 = *(v33 + v35);
        v61 = v35 + 1;
        if (v60 < 0)
        {
          if (v61 >= v34)
          {
            break;
          }

          v60 &= 0x7Fu;
          v76 = (v33 + v61);
          v77 = v35 + 2;
          v78 = 7;
          while (1)
          {
            v79 = *v76++;
            v60 |= (v79 & 0x7F) << v78;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            if (v77 < v34)
            {
              ++v77;
              v57 = v78 > 0x38;
              v78 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v77;
        }

        else
        {
          v3[3] = v61;
        }

        *a3 = -(v60 & 1) ^ (v60 >> 1);
        *(a3 + 40) = 0;
        return;
      case 3:
        if (a2 != 5)
        {
          goto LABEL_7;
        }

        v22 = a3;
        v36 = sub_1D8C6E5F0();
        if (!v4)
        {
          *v22 = v36;
          v25 = 1;
          goto LABEL_71;
        }

        return;
      case 4:
        if (a2 != 5)
        {
          goto LABEL_7;
        }

        v28 = sub_1D8C6E5F0();
        if (!v4)
        {
          *a3 = v28;
          *(a3 + 40) = 0;
        }

        return;
      case 5:
        if (a2)
        {
          goto LABEL_7;
        }

        v43 = *v3;
        if (*v3)
        {
          v44 = v3[1] - v43;
          v45 = v3[3];
          if (v45 >= v44)
          {
            break;
          }
        }

        else
        {
          v45 = v3[3];
          if ((v45 & 0x8000000000000000) == 0)
          {
            break;
          }

          v44 = 0;
        }

        v68 = *(v43 + v45);
        v69 = v45 + 1;
        if ((v68 & 0x8000000000000000) == 0)
        {
          v3[3] = v69;
          goto LABEL_109;
        }

        if (v69 < v44)
        {
          v68 &= 0x7Fu;
          v92 = (v43 + v69);
          v93 = v45 + 2;
          v94 = 7;
          while (1)
          {
            v95 = *v92++;
            v68 |= (v95 & 0x7F) << v94;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            if (v93 < v44)
            {
              ++v93;
              v57 = v94 > 0x38;
              v94 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v93;
LABEL_109:
          *a3 = v68;
          goto LABEL_110;
        }

        break;
      case 6:
        if (a2)
        {
          goto LABEL_7;
        }

        v48 = *v3;
        if (*v3)
        {
          v49 = v3[1] - v48;
          v50 = v3[3];
          if (v50 >= v49)
          {
            break;
          }
        }

        else
        {
          v50 = v3[3];
          if ((v50 & 0x8000000000000000) == 0)
          {
            break;
          }

          v49 = 0;
        }

        v70 = *(v48 + v50);
        v71 = v50 + 1;
        if ((v70 & 0x8000000000000000) == 0)
        {
          v3[3] = v71;
          goto LABEL_115;
        }

        if (v71 < v49)
        {
          v70 &= 0x7Fu;
          v96 = (v48 + v71);
          v97 = v50 + 2;
          v98 = 7;
          while (1)
          {
            v99 = *v96++;
            v70 |= (v99 & 0x7F) << v98;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            if (v97 < v49)
            {
              ++v97;
              v57 = v98 > 0x38;
              v98 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v97;
LABEL_115:
          *a3 = v70;
          *(a3 + 40) = 3;
          return;
        }

        break;
      case 7:
        if (a2)
        {
          goto LABEL_7;
        }

        v37 = *v3;
        if (*v3)
        {
          v38 = v3[1] - v37;
          v39 = v3[3];
          if (v39 >= v38)
          {
            break;
          }
        }

        else
        {
          v39 = v3[3];
          if ((v39 & 0x8000000000000000) == 0)
          {
            break;
          }

          v38 = 0;
        }

        v62 = *(v37 + v39);
        v63 = v39 + 1;
        if ((v62 & 0x8000000000000000) != 0)
        {
          if (v63 >= v38)
          {
            break;
          }

          v62 &= 0x7Fu;
          v80 = (v37 + v63);
          v81 = v39 + 2;
          v82 = 7;
          while (1)
          {
            v83 = *v80++;
            v62 |= (v83 & 0x7F) << v82;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            if (v81 < v38)
            {
              ++v81;
              v57 = v82 > 0x38;
              v82 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v81;
        }

        else
        {
          v3[3] = v63;
        }

        *a3 = -(v62 & 1) ^ (v62 >> 1);
LABEL_110:
        *(a3 + 40) = 2;
        return;
      case 8:
        if (a2 != 1)
        {
          goto LABEL_7;
        }

        v22 = a3;
        v52 = sub_1D8C2AC20();
        if (v4)
        {
          return;
        }

        *v22 = v52;
        v25 = 3;
        goto LABEL_71;
      case 9:
        if (a2 != 1)
        {
          goto LABEL_7;
        }

        v22 = a3;
        v32 = sub_1D8C2AC20();
        if (v4)
        {
          return;
        }

        *v22 = v32;
        v25 = 2;
        goto LABEL_71;
      case 10:
        if (a2 != 1)
        {
          goto LABEL_7;
        }

        v22 = a3;
        v51 = sub_1D8C2AC20();
        if (v4)
        {
          return;
        }

        *v22 = v51;
        v25 = 5;
        goto LABEL_71;
      case 11:
        if (a2 != 5)
        {
          goto LABEL_7;
        }

        v22 = a3;
        v26 = sub_1D8C6E5F0();
        if (v4)
        {
          return;
        }

        *v22 = v26;
        v25 = 4;
        goto LABEL_71;
      case 12:
        if (a2)
        {
          goto LABEL_7;
        }

        v29 = *v3;
        if (*v3)
        {
          v30 = v3[1] - v29;
          v31 = v3[3];
          if (v31 >= v30)
          {
            break;
          }
        }

        else
        {
          v31 = v3[3];
          if ((v31 & 0x8000000000000000) == 0)
          {
            break;
          }

          v30 = 0;
        }

        v58 = *(v29 + v31);
        v59 = v31 + 1;
        if ((v58 & 0x8000000000000000) == 0)
        {
          v3[3] = v59;
          goto LABEL_84;
        }

        if (v59 < v30)
        {
          v58 &= 0x7Fu;
          v72 = (v29 + v59);
          v73 = v31 + 2;
          v74 = 7;
          while (1)
          {
            v75 = *v72++;
            v58 |= (v75 & 0x7F) << v74;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            if (v73 < v30)
            {
              ++v73;
              v57 = v74 > 0x38;
              v74 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v73;
LABEL_84:
          *a3 = v58 != 0;
          *(a3 + 40) = 6;
          return;
        }

        break;
      case 13:
        if (a2 != 2)
        {
          goto LABEL_7;
        }

        v22 = a3;
        sub_1D8C2A7B4();
        if (v4)
        {
          return;
        }

        *(v22 + 24) = MEMORY[0x1E69E6290];
        *(v22 + 32) = &protocol witness table for UnsafeRawBufferPointer;
        *v22 = v46;
        *(v22 + 8) = v47;
        v25 = 8;
        goto LABEL_71;
      case 14:
        if (a2 != 2)
        {
          goto LABEL_7;
        }

        v22 = a3;
        sub_1D8C2A7B4();
        if (v4)
        {
          return;
        }

        *(v22 + 24) = MEMORY[0x1E69E6290];
        *(v22 + 32) = &protocol witness table for UnsafeRawBufferPointer;
        *v22 = v23;
        *(v22 + 8) = v24;
        v25 = 9;
LABEL_71:
        *(v22 + 40) = v25;
        return;
      default:
        if (a2)
        {
          goto LABEL_7;
        }

        v14 = *v3;
        if (*v3)
        {
          v15 = v3[1] - v14;
          v16 = v3[3];
          if (v16 >= v15)
          {
            break;
          }
        }

        else
        {
          v16 = v3[3];
          if ((v16 & 0x8000000000000000) == 0)
          {
            break;
          }

          v15 = 0;
        }

        v64 = *(v14 + v16);
        v65 = v16 + 1;
        if ((v64 & 0x8000000000000000) == 0)
        {
          v3[3] = v65;
          goto LABEL_99;
        }

        if (v65 < v15)
        {
          v64 &= 0x7Fu;
          v84 = (v14 + v65);
          v85 = v16 + 2;
          v86 = 7;
          while (1)
          {
            v87 = *v84++;
            v64 |= (v87 & 0x7F) << v86;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            if (v85 < v15)
            {
              ++v85;
              v57 = v86 > 0x38;
              v86 += 7;
              if (!v57)
              {
                continue;
              }
            }

            goto LABEL_164;
          }

          v3[3] = v85;
LABEL_99:
          *a3 = v64;
          *(a3 + 40) = 0;
          return;
        }

        break;
    }

LABEL_164:
    sub_1D8C36A64();
    swift_allocError();
    *v11 = xmmword_1D8C86190;
    v12 = 2;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
LABEL_7:
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0x2065707954, 0xE500000000000000);
    v10 = TypeSchema.description.getter();
    MEMORY[0x1DA7255C0](v10);

    MEMORY[0x1DA7255C0](0x206465726957202CLL, 0xEE00203A65707954);
    sub_1D8C851E4();
    sub_1D8C36A64();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    v12 = 1;
LABEL_8:
    *(v11 + 16) = v12;
    swift_willThrow();
    return;
  }

  sub_1D8C2A7B4();
  if (!v4)
  {
    *a3 = v6;
    *(a3 + 8) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 40) = 10;
    swift_unknownObjectRetain();
  }
}

void sub_1D8C2A7B4()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1] - v1;
    v3 = v0[3];
    if (v3 >= v2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = v0[3];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v2 = 0;
  }

  v4 = *(v1 + v3);
  v5 = v3 + 1;
  if (v4 < 0)
  {
    if (v5 >= v2)
    {
      goto LABEL_18;
    }

    v4 &= 0x7Fu;
    v10 = (v1 + v5);
    v5 = v3 + 2;
    v11 = 7;
    v9 = 1;
    while (1)
    {
      v12 = *v10++;
      v4 |= (v12 & 0x7F) << v11;
      if ((v12 & 0x80) == 0)
      {
        break;
      }

      if (v5 < v2)
      {
        ++v5;
        v13 = v11 > 0x38;
        v11 += 7;
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v0[3] = v5;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_18:
    v9 = 1;
    goto LABEL_19;
  }

  v6 = __OFSUB__(v2, v5);
  v7 = v2 - v5;
  if (v6)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v4 & 0x7FFFFFFF;
  if (v7 < v8)
  {
    v9 = 2;
LABEL_19:
    sub_1D8C36A64();
    swift_allocError();
    *v14 = v9;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    swift_willThrow();
    return;
  }

  v15 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
    goto LABEL_24;
  }

  if (v15 >= v5)
  {
    v0[3] = v15;
    return;
  }

LABEL_25:
  __break(1u);
}

void *sub_1D8C2A900(void *result, int64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || a2 == 0)
  {
    return (v4 - v3);
  }

  if ((v4 - v3) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v4 - v3;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    memmove(result, v3, v7);
    return (v4 - v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C2A970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB138, &unk_1D8C86900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D8C2AA1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D8C2AA34()
{
  if (*v0)
  {
    v1 = v0[1] - *v0;
  }

  v3 = *v0;
  v4 = v0[1];
  return sub_1D8C84E14();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D8C2AB5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 34))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 33);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8C2ABB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_17PoirotSchematizer10TypeSchemaO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D8C2AC20()
{
  v1 = v0[3];
  v2 = *v0;
  if (*v0)
  {
    if (v0[1] - v2 < v1)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v3 = (v2 + v1);
    v4 = __OFADD__(v1, 8);
    v5 = v1 + 8;
    if (!v4)
    {
LABEL_4:
      result = *v3;
      v0[3] = v5;
      return result;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= 0)
  {
    v3 = 0;
    v4 = __OFADD__(v1, 8);
    v5 = v1 + 8;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D8C2AC74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 41))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C2ACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v11 = a2 - a1;
  if (!a1)
  {
    v11 = 0;
  }

  *&v62 = a1;
  *(&v62 + 1) = a2;
  v64 = 0;
  v63 = v11;
  v65 = 1;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v67 = v6;
    v55 = a6;
    *&v58 = MEMORY[0x1E69E7CC0];
    sub_1D8C2B3D8(0, v12, 0);
    v13 = v58;
    v15 = (a3 + 32);
    v16 = *(v58 + 16);
    v17 = 24 * v16;
    do
    {
      v19 = *v15++;
      v18 = v19;
      *&v58 = v13;
      v20 = *(v13 + 24);
      v21 = v16 + 1;
      if (v16 >= v20 >> 1)
      {
        sub_1D8C2B3D8((v20 > 1), v16 + 1, 1);
        v13 = v58;
      }

      *(v13 + 16) = v21;
      v22 = v13 + v17;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      v17 += 24;
      v16 = v21;
      --v12;
    }

    while (v12);
    a6 = v55;
    v7 = v67;
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v26 = 0xD000000000000011;
    *(v26 + 8) = 0x80000001D8C8BBA0;
    *(v26 + 16) = 5;
    swift_willThrow();
    sub_1D8C2B50C(a4, a5);
    goto LABEL_18;
  }

  *&v58 = v13;
  *(&v58 + 1) = a4;
  v59 = a5;
  sub_1D8C2B50C(a4, a5);
  sub_1D8C2B670(&v58, 0, v66);
  if (v7)
  {
LABEL_18:

    return sub_1D8C2BBF0(a4, a5);
  }

  sub_1D8C2BBF0(a4, a5);
  if (v66[40] == 255)
  {
    result = sub_1D8C2A970(v66);
    *a6 = 0u;
    *(a6 + 16) = 0u;
    v25 = -256;
LABEL_20:
    *(a6 + 32) = v25;
    return result;
  }

  sub_1D8C29EAC(v66, &v62);
  if (v65 > 4u)
  {
    if (v65 > 7u)
    {
      if (v65 == 8)
      {
        sub_1D8C2AA1C(&v62, &v58);
        v36 = v60;
        v37 = v61;
        __swift_project_boxed_opaque_existential_1(&v58, v60);
        v38 = (*(v37 + 24))(v36, v37);
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_1(&v58);
        result = sub_1D8C2AB08(v66);
        *a6 = v38;
        *(a6 + 8) = v40;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        v25 = 2048;
      }

      else if (v65 == 9)
      {
        sub_1D8C2AA1C(&v62, &v58);
        v28 = v60;
        v29 = v61;
        __swift_project_boxed_opaque_existential_1(&v58, v60);
        v30 = (*(v29 + 16))(v28, v29);
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v58);
        result = sub_1D8C2AB08(v66);
        *a6 = v30;
        *(a6 + 8) = v32;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        v25 = 2304;
      }

      else
      {
        v60 = MEMORY[0x1E69E6290];
        v61 = MEMORY[0x1E6969DF8];
        v57 = v62;
        v58 = v63;
        v45 = __swift_project_boxed_opaque_existential_1(&v58, MEMORY[0x1E69E6290]);
        v46 = *v45;
        if (*v45 && (v47 = v45[1], v48 = &v47[-v46], v47 != v46))
        {
          if (v48 <= 14)
          {
            v49 = sub_1D8C45074(*v45, v47);
            v50 = v53 & 0xFFFFFFFFFFFFFFLL;
            swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            if (v48 >= 0x7FFFFFFF)
            {
              v49 = sub_1D8C45134(v46, v47);
              v50 = v54 | 0x8000000000000000;
            }

            else
            {
              v49 = sub_1D8C2B5D0(v46, v47);
              v50 = v52 | 0x4000000000000000;
            }
          }
        }

        else
        {
          swift_unknownObjectRetain();
          v49 = 0;
          v50 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(&v58);
        swift_unknownObjectRelease();
        type metadata accessor for SchematizedData();
        v51 = swift_allocObject();
        *(v51 + 16) = v57;
        *(v51 + 32) = v49;
        *(v51 + 40) = v50;
        result = sub_1D8C2AB08(v66);
        *a6 = v51;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        v25 = 2560;
      }
    }

    else if (v65 == 5)
    {
      v35 = v62;
      result = sub_1D8C2AB08(v66);
      *a6 = v35;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      v25 = 1280;
    }

    else if (v65 == 6)
    {
      v23 = v62;
      result = sub_1D8C2AB08(v66);
      *a6 = v23;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      v25 = 1536;
    }

    else
    {
      v56 = v62;
      v43 = v63;
      v44 = v64;
      result = sub_1D8C2AB08(v66);
      v25 = v44 | 0x700;
      *a6 = v56;
      *(a6 + 16) = v43;
    }

    goto LABEL_20;
  }

  if (v65 > 1u)
  {
    if (v65 == 2)
    {
      v34 = v62;
      result = sub_1D8C2AB08(v66);
      *a6 = v34;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      v25 = 512;
    }

    else if (v65 == 3)
    {
      v27 = v62;
      result = sub_1D8C2AB08(v66);
      *a6 = v27;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      v25 = 768;
    }

    else
    {
      v41 = v62;
      result = sub_1D8C2AB08(v66);
      *a6 = v41;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      v25 = 1024;
    }

    goto LABEL_20;
  }

  if (v65)
  {
    v42 = v62;
    result = sub_1D8C2AB08(v66);
    *a6 = v42;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    v25 = 256;
    goto LABEL_20;
  }

  v33 = v62;
  result = sub_1D8C2AB08(v66);
  *a6 = v33;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  return result;
}

uint64_t static Schematizer.searchValue(in:withFieldPath:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v5 = a4[1];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v29[0] = a1;
      LOWORD(v29[1]) = a2;
      BYTE2(v29[1]) = BYTE2(a2);
      BYTE3(v29[1]) = BYTE3(a2);
      BYTE4(v29[1]) = BYTE4(a2);
      BYTE5(v29[1]) = BYTE5(a2);
      v8 = v29 + BYTE6(a2);
      v9 = v29;
LABEL_24:
      v25 = v6;
      v26 = v5;
      goto LABEL_25;
    }

    v20 = a1;
    v21 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v11 = a3;
      v14 = sub_1D8C84684();
      if (!v14)
      {
        goto LABEL_16;
      }

      v22 = sub_1D8C846A4();
      if (!__OFSUB__(v20, v22))
      {
        v14 += v20 - v22;
LABEL_16:
        v23 = sub_1D8C84694();
        if (v23 >= v21)
        {
          v19 = v21;
        }

        else
        {
          v19 = v23;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    memset(v29, 0, 14);
    v9 = v29;
    v8 = v29;
    goto LABEL_24;
  }

  v10 = a5;
  v11 = a3;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = sub_1D8C84684();
  if (v14)
  {
    v15 = sub_1D8C846A4();
    if (__OFSUB__(v13, v15))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v14 += v13 - v15;
  }

  v16 = __OFSUB__(v12, v13);
  v17 = v12 - v13;
  if (v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = sub_1D8C84694();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

LABEL_19:
  v24 = (v19 + v14);
  if (v14)
  {
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  a5 = v10;
  v9 = v14;
  a3 = v11;
  v25 = v6;
  v26 = v5;
LABEL_25:
  result = sub_1D8C2ACB0(v9, v8, a3, v25, v26, a5);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1D8C2B3D8(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C2B3F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C2B3F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
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

uint64_t sub_1D8C2B50C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1D8C2B518(uint64_t a1)
{
  v9 = a1;
  v10 = MEMORY[0x1E6969DF8];
  *v8 = *v1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, a1);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1D8C45074(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1D8C45134(v3, v4);
    }

    else
    {
      v6 = sub_1D8C2B5D0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1D8C2B5D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D8C846C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D8C84674();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
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

uint64_t sub_1D8C2B670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 <= a2)
  {
    goto LABEL_33;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_33:
    result = sub_1D8C851F4();
    __break(1u);
    return result;
  }

  v9 = a1[1];
  v8 = a1[2];
  v10 = v4 + 24 * a2;
  v13 = *(v10 + 32);
  v12 = v10 + 32;
  v11 = v13;
  if ((*(v12 + 16) & 1) == 0)
  {
    result = sub_1D8C29BDC(v11);
    if (v3)
    {
      return result;
    }

    if ((result & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    if (v5 - 1 == a2)
    {
      *&v34 = v9;
      *(&v34 + 1) = v8;
      v20 = sub_1D8C29E98(result);
      sub_1D8C2B50C(v9, v8);
      sub_1D8C29F08(&v34, v20, a3);
      v19 = *(&v34 + 1);
      v18 = v34;
      return sub_1D8C2BBF0(v18, v19);
    }

    v22 = result;
    if (sub_1D8C29E98(result) != 2)
    {
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_1D8C85124();
      MEMORY[0x1DA7255C0](0xD000000000000024, 0x80000001D8C8BFB0);
      LODWORD(v32) = v22;
      sub_1D8C851E4();
      v26 = 0xE000000000000000;
      v25 = 0;
      goto LABEL_26;
    }

    *&v30 = v4;
    *(&v30 + 1) = v9;
    *v31 = v8;
    result = sub_1D8C2BA34(&v30, a2, &v32);
    if (v33[24] == 255)
    {
      v28 = &v32;
LABEL_29:
      result = sub_1D8C2A970(v28);
      goto LABEL_30;
    }

    *&v35[9] = *&v33[9];
    *v35 = *v33;
    v34 = v32;
    v23 = *v33;
    *a3 = v32;
    *(a3 + 16) = v23;
LABEL_15:
    *(a3 + 25) = *&v35[9];
    return result;
  }

  v14 = *(v12 + 8);
  *&v32 = v4;
  *(&v32 + 1) = v9;
  *v33 = v8;
  result = sub_1D8C5BC14(v11, a2, &v32, v14, &v34);
  if (v3)
  {
    return result;
  }

  if (!v36)
  {
    v21 = *v35;
    *a3 = v34;
    *(a3 + 16) = v21;
    goto LABEL_15;
  }

  if (v36 == 1)
  {
    v16 = v34;
    if (v5 - 1 == a2)
    {
      *&v32 = v9;
      *(&v32 + 1) = v8;
      v17 = sub_1D8C29E98(v34);
      sub_1D8C2B50C(v9, v8);
      sub_1D8C29F08(&v32, v17, a3);
      v19 = *(&v32 + 1);
      v18 = v32;
      return sub_1D8C2BBF0(v18, v19);
    }

    if (sub_1D8C29E98(v34) == 2)
    {
      v29[0] = v4;
      v29[1] = v9;
      v29[2] = v8;
      result = sub_1D8C2BA34(v29, a2, &v30);
      if (v31[24] != 255)
      {
        *&v33[9] = *&v31[9];
        v32 = v30;
        *v33 = *v31;
        v24 = *v31;
        *a3 = v30;
        *(a3 + 16) = v24;
        *(a3 + 25) = *&v33[9];
        return result;
      }

      v28 = &v30;
      goto LABEL_29;
    }

    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0xD000000000000024, 0x80000001D8C8BFB0);
    LODWORD(v30) = v16;
    sub_1D8C851E4();
    v26 = *(&v32 + 1);
    v25 = v32;
LABEL_26:
    sub_1D8C2F8AC();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v26;
    *(v27 + 16) = 5;
    return swift_willThrow();
  }

LABEL_30:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  return result;
}

void *sub_1D8C2BA34@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = *(result + 1);
  v7 = *v3;
  v8 = v3[1];
  if (*v3)
  {
    v9 = v8 - v7;
    v10 = v3[3];
    if (v10 >= v8 - v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v3[3];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v9 = 0;
  }

  v11 = *(v7 + v10);
  v12 = v10 + 1;
  if (v11 < 0)
  {
    if (v12 >= v9)
    {
      goto LABEL_19;
    }

    v11 &= 0x7Fu;
    v19 = (v7 + v12);
    v12 = v10 + 2;
    v20 = 7;
    while (1)
    {
      v21 = *v19++;
      v11 |= (v21 & 0x7F) << v20;
      if ((v21 & 0x80) == 0)
      {
        break;
      }

      if (v12 < v9)
      {
        ++v12;
        v22 = v20 > 0x38;
        v20 += 7;
        if (!v22)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v3[3] = v12;
  if ((v11 & 0x80000000) == 0)
  {
    v13 = v11 & 0x7FFFFFFF;
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      __break(1u);
    }

    else
    {
      v28 = v7;
      v29 = v8;
      v30 = v13 + v12;
      v31 = v12;
      v32 = 0;
      v33 = 1;
      v24 = v5;
      v25 = v6;
      v16 = __OFADD__(a2, 1);
      v17 = a2 + 1;
      if (!v16)
      {
        result = sub_1D8C2B670(&v26, &v24, v17);
        if (v4)
        {
          return result;
        }

        if (v27[24] != 255)
        {
          v18 = *v27;
          *a3 = v26;
          *(a3 + 16) = v18;
          *(a3 + 25) = *&v27[9];
          return result;
        }

        result = sub_1D8C2A970(&v26);
        if (v7)
        {
          if (v14 >= v8 - v7)
          {
LABEL_24:
            *(a3 + 32) = 0;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            *(a3 + 40) = -1;
            return result;
          }
        }

        else if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v3[3] = v14;
        goto LABEL_24;
      }
    }

    __break(1u);
    return result;
  }

LABEL_19:
  sub_1D8C36A64();
  swift_allocError();
  *v23 = xmmword_1D8C86190;
  *(v23 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1D8C2BBF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D8C2BC58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_1D8C2BCF4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D8C853A4();
  return sub_1D8C467BC(a1, v4);
}

uint64_t sub_1D8C2BD68@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = SchematizedDataComposer.subscript.getter(*a2, a2[1]);
  *a3 = result;
  return result;
}

uint64_t sub_1D8C2C198@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = SchematizedDataComposer.subscript.getter(*a2, *(a2 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_1D8C2C250@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  result = SchematizedDataComposer.subscript.getter(*a2, *(a2 + 8));
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D8C2C2A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);

  return SchematizedDataComposer.subscript.setter(v5, v6, v3, v4);
}

uint64_t sub_1D8C2C30C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = SchematizedDataComposer.subscript.getter(*a2, *(a2 + 8));
  *a3 = result;
  return result;
}

uint64_t FieldManifest.typeName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FieldManifest.options.getter()
{
  v1 = *(v0 + 48);
  sub_1D8C2C5D0(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_1D8C2C5D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8C2C5E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8C2C5E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FieldManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1D8C2C670(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8C2C684(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8C2C684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FieldManifest.init(type:typeName:number:isRepeated:oneofIndex:options:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  result = sub_1D8C2C670(0, 0xF000000000000000);
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1D8C2C764@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a1 + 56))(&v28, ObjectType, a1);
  if (v2)
  {
    swift_unknownObjectRelease();
    return sub_1D8C2C670(0, 0xF000000000000000);
  }

  else
  {
    v7 = v28;
    v6 = v29;
    if (v29 >> 62)
    {
      if (v29 >> 62 == 1)
      {
        v8 = swift_getObjectType();
        v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 8);
        v10 = *(v9 + 8);
        v25 = v8;
        swift_unknownObjectRetain();
        v24 = v10(v25, v9);
        v26 = v11;
        sub_1D8C2BBF0(v7, v6);
        v12 = 9;
      }

      else
      {
        v24 = 0;
        v26 = 0;
        v12 = byte_1D8C85AB2[v28];
      }
    }

    else
    {
      v13 = swift_getObjectType();
      v14 = *(v6 + 8);
      v15 = *(v14 + 8);
      v27 = v13;
      swift_unknownObjectRetain();
      v24 = v15(v27, v14);
      v26 = v16;
      sub_1D8C2BBF0(v7, v6);
      v12 = 12;
    }

    v30 = v12;
    v18 = (*(a1 + 48))(ObjectType, a1);
    v23 = (*(a1 + 16))(ObjectType, a1) & 1;
    v19 = (*(a1 + 32))(ObjectType, a1);
    if (v19)
    {
      v21 = *(v19 + 40);
      v22 = *(v19 + 32);
      sub_1D8C2C5E4(v22, v21);
    }

    else
    {
      v21 = 0xF000000000000000;
      v22 = 0;
    }

    sub_1D8C2C670(0, 0xF000000000000000);
    v20 = (*(a1 + 40))(ObjectType, a1);
    sub_1D8C2BBF0(v7, v6);
    result = swift_unknownObjectRelease();
    *a2 = v30;
    *(a2 + 8) = v24;
    *(a2 + 16) = v26;
    *(a2 + 24) = v18;
    *(a2 + 32) = v23;
    *(a2 + 36) = v20;
    *(a2 + 40) = BYTE4(v20) & 1;
    *(a2 + 48) = v22;
    *(a2 + 56) = v21;
  }

  return result;
}

BOOL _s17PoirotSchematizer13FieldManifestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = a1[32];
  v6 = *(a1 + 9);
  v7 = a1[40];
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = a2[32];
  v13 = *(a2 + 9);
  v14 = a2[40];
  v15 = *(a2 + 6);
  v16 = *(a2 + 7);
  if (!v3)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

LABEL_9:
    if (v4 != v11 || ((v5 ^ v12) & 1) != 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && v3 == v10)
  {
    result = 0;
    goto LABEL_9;
  }

  v25 = *(a2 + 6);
  v26 = *(a1 + 6);
  v18 = sub_1D8C852A4();
  result = 0;
  if ((v18 & 1) != 0 && v4 == v11)
  {
    v15 = v25;
    v8 = v26;
    if (((v5 ^ v12) & 1) == 0)
    {
LABEL_15:
      if (v7)
      {
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v13)
        {
          v19 = v14;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          return 0;
        }
      }

      v20 = v15;
      if (v9 >> 60 == 15)
      {
        if (v16 >> 60 == 15)
        {
          v21 = v8;
          sub_1D8C2C5D0(v8, v9);
          sub_1D8C2C5D0(v20, v16);
          sub_1D8C2C670(v21, v9);
          return 1;
        }

        goto LABEL_26;
      }

      if (v16 >> 60 == 15)
      {
LABEL_26:
        v22 = v8;
        sub_1D8C2C5D0(v8, v9);
        sub_1D8C2C5D0(v20, v16);
        sub_1D8C2C670(v22, v9);
        sub_1D8C2C670(v20, v16);
        return 0;
      }

      v23 = v8;
      sub_1D8C2C5D0(v8, v9);
      sub_1D8C2C5D0(v20, v16);
      v24 = sub_1D8C76A90(v23, v9, v20, v16);
      sub_1D8C2C670(v20, v16);
      sub_1D8C2C670(v23, v9);
      return (v24 & 1) != 0;
    }
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

uint64_t sub_1D8C2CC44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C2CCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MessageManifest.fields.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MessageManifest.oneofs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessageManifest.options.getter()
{
  v1 = *(v0 + 16);
  sub_1D8C2C5D0(v1, *(v0 + 24));
  return v1;
}

uint64_t MessageManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageManifest.init(fields:oneofs:options:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if (!a1)
  {
    a1 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
  }

  v9 = a1;
  result = sub_1D8C2C670(0, 0xF000000000000000);
  v11 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v11 = a2;
  }

  *a5 = v9;
  a5[1] = v11;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1D8C2CEBC@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v8 = a1[2];
    v10 = a1[3];
    v11 = *v3;
    sub_1D8C2F004(*a1, v9, v8, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_1D8C2D8EC(v6, sub_1D8C2DF14, 0, isUniquelyReferenced_nonNull_native, &v26, a2);
    if (v4)
    {

      return sub_1D8C2F060(v6, v9, v8, v10);
    }

    *v3 = v26;
    if (v10 >> 60 == 15)
    {
      sub_1D8C2F060(v6, v9, v8, v10);
    }

    else
    {
      v14 = v3[3];
      if (v14 >> 60 == 15)
      {
        v15 = v3[2];
        sub_1D8C2C5E4(v8, v10);
        sub_1D8C2C5E4(v8, v10);
        sub_1D8C2C670(v15, v14);
        v3[2] = v8;
        v3[3] = v10;
        sub_1D8C2C5D0(v8, v10);
        sub_1D8C2C670(v8, v10);
        sub_1D8C2F060(v6, v9, v8, v10);
        v16 = v8;
        v17 = v10;
      }

      else
      {
        v18 = a2;
        if (a2)
        {
          v19 = v3[2];
          if (v18 == 1)
          {
            sub_1D8C2C5E4(v8, v10);
            sub_1D8C2C5E4(v8, v10);
            sub_1D8C2C670(v19, v14);
            v3[2] = v8;
            v3[3] = v10;
          }

          else
          {
            sub_1D8C2C5E4(v8, v10);
            sub_1D8C2D7A0(v19, v14, v8, v10);
          }
        }

        else
        {
          sub_1D8C2C5E4(v8, v10);
        }

        v20 = v3[2];
        v21 = v3[3];
        sub_1D8C2C5D0(v20, v21);
        sub_1D8C2C670(v8, v10);
        sub_1D8C2F060(v6, v9, v8, v10);
        v16 = v20;
        v17 = v21;
      }

      sub_1D8C2C670(v16, v17);
    }
  }

  v22 = *v3;
  v23 = v3[1];
  v25 = v3[2];
  v24 = v3[3];
  *a3 = v22;
  a3[1] = v23;
  a3[2] = v25;
  a3[3] = v24;

  return sub_1D8C2C5D0(v25, v24);
}

uint64_t sub_1D8C2D158@<X0>(uint64_t a1@<X1>, char a2@<W2>, unint64_t *a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = (*(a1 + 16))(ObjectType, a1);
  if (v8)
  {
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);
    sub_1D8C2C5E4(v10, v9);
  }

  else
  {
    v10 = 0;
    v9 = 0xF000000000000000;
  }

  sub_1D8C2C670(0, 0xF000000000000000);
  if (a2)
  {
    v69 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
    goto LABEL_24;
  }

  v63 = v9;
  v65 = v10;
  v61 = a3;
  v11 = (*(a1 + 24))(ObjectType, a1);
  v12 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
  v68 = *(v11 + 16);
  if (!v68)
  {
LABEL_23:
    v69 = v12;
    v4 = v3;

    a3 = v61;
    v9 = v63;
    v10 = v65;
LABEL_24:
    v42 = (*(a1 + 48))(ObjectType, a1);
    if (v4)
    {

      swift_unknownObjectRelease();
      return sub_1D8C2C670(v10, v9);
    }

    else
    {
      v44 = v42;
      v45 = *(v42 + 16);
      if (v45)
      {
        v62 = a3;
        v64 = v9;
        v66 = v10;
        *&v77[0] = MEMORY[0x1E69E7CC0];
        sub_1D8C5DFF4(0, v45, 0);
        v46 = *&v77[0];
        v47 = (v44 + 40);
        do
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          v50 = swift_getObjectType();
          v51 = *(v49 + 8);
          v52 = *(v51 + 8);
          swift_unknownObjectRetain();
          v71 = v52(v50, v51);
          v54 = v53;
          v55 = (*(v49 + 16))(v50, v49);
          swift_unknownObjectRelease();
          if (v55)
          {
            v57 = *(v55 + 32);
            v56 = *(v55 + 40);
            sub_1D8C2C5E4(v57, v56);
          }

          else
          {
            v57 = 0;
            v56 = 0xF000000000000000;
          }

          sub_1D8C2C670(0, 0xF000000000000000);
          *&v77[0] = v46;
          v59 = *(v46 + 16);
          v58 = *(v46 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1D8C5DFF4((v58 > 1), v59 + 1, 1);
            v46 = *&v77[0];
          }

          *(v46 + 16) = v59 + 1;
          v60 = (v46 + 32 * v59);
          v60[4] = v71;
          v60[5] = v54;
          v60[6] = v57;
          v60[7] = v56;
          v47 += 2;
          --v45;
        }

        while (v45);
        swift_unknownObjectRelease();

        v9 = v64;
        v10 = v66;
        a3 = v62;
      }

      else
      {
        swift_unknownObjectRelease();

        v46 = MEMORY[0x1E69E7CC0];
      }

      *a3 = v69;
      a3[1] = v46;
      a3[2] = v10;
      a3[3] = v9;
    }

    return result;
  }

  v13 = 0;
  v14 = (v11 + 40);
  v67 = v11;
  while (v13 < *(v11 + 16))
  {
    v21 = *(v14 - 1);
    v22 = *v14;
    v23 = *(a1 + 56);

    v23(v21, v22, ObjectType, a1);
    if (v3)
    {
      swift_unknownObjectRelease();

      v9 = v63;
      v10 = v65;
      return sub_1D8C2C670(v10, v9);
    }

    sub_1D8C2C764(v24, v77);
    v73 = v77[0];
    v74 = v77[1];
    v75 = v77[2];
    v76 = v77[3];
    v25 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v25;
    v27 = sub_1D8C4668C(v21, v22);
    v29 = v25[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_39;
    }

    v33 = v28;
    if (v25[3] < v32)
    {
      sub_1D8C725E4(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1D8C4668C(v21, v22);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_41;
      }

LABEL_17:
      if (v33)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v41 = v27;
    sub_1D8C7435C();
    v27 = v41;
    if (v33)
    {
LABEL_8:
      v12 = v78;
      v15 = (v78[7] + (v27 << 6));
      v16 = v15[3];
      v18 = *v15;
      v17 = v15[1];
      v72[2] = v15[2];
      v72[3] = v16;
      v72[0] = v18;
      v72[1] = v17;
      v19 = v74;
      *v15 = v73;
      v15[1] = v19;
      v20 = v76;
      v15[2] = v75;
      v15[3] = v20;
      sub_1D8C2F118(v72);

      goto LABEL_9;
    }

LABEL_18:
    v12 = v78;
    v78[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v12[6] + 16 * v27);
    *v35 = v21;
    v35[1] = v22;
    v36 = (v12[7] + (v27 << 6));
    v37 = v74;
    *v36 = v73;
    v36[1] = v37;
    v38 = v76;
    v36[2] = v75;
    v36[3] = v38;
    v39 = v12[2];
    v31 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v31)
    {
      goto LABEL_40;
    }

    v12[2] = v40;
LABEL_9:
    ++v13;
    v14 += 2;
    v3 = 0;
    v11 = v67;
    if (v68 == v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D8C85354();
  __break(1u);
  return result;
}

uint64_t MessageManifest.nextAvailableField.getter()
{
  v1 = *v0;
  v2 = (*v0 + 64);
  v3 = *(*v0 + 32);
  v4 = 1;
  v5 = 1 << v3;
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v1 + 56) + (v12 << 6));
      v18 = v16[2];
      v17 = v16[3];
      v19 = v16[1];
      v21 = *v16;
      v22 = v19;
      v23 = v18;
      v24 = v17;
      v25[0] = v15;
      v25[1] = v14;
      v26 = v21;
      v27 = v19;
      v28 = v18;
      v29 = v17;

      sub_1D8C2EE54(&v21, &v20);
      result = sub_1D8C2EEB0(v25);
      if (__OFADD__(*(&v22 + 1), 1))
      {
        break;
      }

      v7 &= v7 - 1;
      if (*(&v22 + 1) + 1 > v4)
      {
        v4 = *(&v22 + 1) + 1;
      }

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v4;
      }

      v7 = v2[v11];
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C2D7A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      sub_1D8C2C5D0(a1, a2);
      sub_1D8C2C5D0(a3, a4);
      return sub_1D8C2C670(a1, a2);
    }

    goto LABEL_5;
  }

  if (a4 >> 60 == 15)
  {
LABEL_5:
    sub_1D8C2C5D0(a1, a2);
    sub_1D8C2C5D0(a3, a4);
    sub_1D8C2C670(a1, a2);
    sub_1D8C2C670(a3, a4);
LABEL_6:
    sub_1D8C2F0BC();
    swift_allocError();
    *v11 = 0xD00000000000001FLL;
    v11[1] = 0x80000001D8C8B8D0;
    return swift_willThrow();
  }

  sub_1D8C2C5D0(a1, a2);
  sub_1D8C2C5D0(a3, a4);
  v14 = sub_1D8C76A90(a1, a2, a3, a4);
  sub_1D8C2C670(a3, a4);
  result = sub_1D8C2C670(a1, a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D8C2D8EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5, char a6)
{
  v104 = a5;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v72 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v13 = 0;
  v77 = v11;
  while (1)
  {
    v28 = v10;
    if (!v10)
    {
      v29 = v12;
      while (1)
      {
        v13 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          goto LABEL_30;
        }

        v28 = *(v7 + 8 * v13);
        ++v29;
        if (v28)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      sub_1D8C85354();
      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v30 = __clz(__rbit64(v28)) | (v13 << 6);
    v31 = (*(a1 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = (*(a1 + 56) + (v30 << 6));
    v35 = v34[3];
    v37 = *v34;
    v36 = v34[1];
    v91 = v34[2];
    v92 = v35;
    v89 = v37;
    v90 = v36;
    v85 = *v34;
    v86 = v34[1];
    v87 = v34[2];
    v88 = v34[3];
    *&v84 = v33;
    *(&v84 + 1) = v32;

    sub_1D8C2EE54(&v89, &v93);
    a2(&v98, &v84);
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v93 = v84;
    v94 = v85;
    sub_1D8C2EEB0(&v93);
    v38 = v99;
    if (!v99)
    {
LABEL_30:
      sub_1D8C2F110();
    }

    v39 = v7;
    v82 = v98;
    v40 = v98;
    v83 = v99;
    v93 = v100;
    v94 = v101;
    v95 = v102;
    v96 = v103;
    v41 = *v104;
    v43 = sub_1D8C4668C(v98, v99);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_35;
    }

    v47 = v42;
    if (v41[3] < v46)
    {
      break;
    }

    if (a4)
    {
      if (v42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D8C7435C();
      if (v47)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    v57 = *v104;
    v57[(v43 >> 6) + 8] |= 1 << v43;
    v58 = (v57[6] + 16 * v43);
    *v58 = v40;
    v58[1] = v38;
    v59 = (v57[7] + (v43 << 6));
    v60 = v93;
    v61 = v94;
    v62 = v96;
    v59[2] = v95;
    v59[3] = v62;
    *v59 = v60;
    v59[1] = v61;
    v63 = v57[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_36;
    }

    v57[2] = v65;
    v7 = v39;
    v11 = v77;
LABEL_8:
    v10 = (v28 - 1) & v28;
    a4 = 1;
    v12 = v13;
  }

  v48 = v104;
  sub_1D8C725E4(v46, a4 & 1);
  v49 = *v48;
  v50 = sub_1D8C4668C(v40, v38);
  if ((v47 & 1) != (v51 & 1))
  {
    goto LABEL_37;
  }

  v43 = v50;
  if ((v47 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v52 = *v104;
  v53 = (*(*v104 + 56) + (v43 << 6));
  v54 = v53[3];
  v56 = *v53;
  v55 = v53[1];
  v86 = v53[2];
  v87 = v54;
  v84 = v56;
  v85 = v55;
  v74 = v52;
  if (!a6)
  {
    v75 = *(&v87 + 1);
    v76 = v87;
    v14 = BYTE8(v86);
    v70 = v86;
    v71 = DWORD1(v86);
    v69 = *(&v85 + 1);
    v15 = v85;
    v16 = *(&v84 + 1);
    v17 = v84;
    sub_1D8C2EE54(&v84, &v89);
    sub_1D8C2F118(&v93);

    v18 = v16;
    v19 = v69;
    v21 = v70;
    v20 = v71;
    v23 = v75;
    v22 = v76;
    v7 = v39;
    goto LABEL_6;
  }

  v7 = v39;
  if (a6 == 1)
  {

    v23 = *(&v96 + 1);
    v22 = v96;
    v20 = DWORD1(v95);
    v14 = BYTE8(v95);
    v21 = v95;
    v19 = *(&v94 + 1);
    v15 = v94;
    v18 = *(&v93 + 1);
    v17 = v93;
LABEL_6:
    v11 = v77;
LABEL_7:
    LOBYTE(v81[0]) = v14;
    v24 = *(v74 + 56) + (v43 << 6);
    v26 = *v24;
    v25 = *(v24 + 16);
    v27 = *(v24 + 48);
    v91 = *(v24 + 32);
    v92 = v27;
    v89 = v26;
    v90 = v25;
    *v24 = v17;
    *(v24 + 8) = v18;
    *(v24 + 16) = v15;
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    *(v24 + 36) = v20;
    *(v24 + 40) = v14;
    *(v24 + 48) = v22;
    *(v24 + 56) = v23;
    sub_1D8C2F118(&v89);
    goto LABEL_8;
  }

  v89 = *v53;
  v90 = v53[1];
  v91 = v53[2];
  v92 = v53[3];
  v81[0] = v93;
  v81[1] = v94;
  v81[2] = v95;
  v81[3] = v96;
  sub_1D8C2EE54(&v84, v80);
  sub_1D8C2EE54(&v93, v80);
  v11 = v77;
  if (_s17PoirotSchematizer13FieldManifestV2eeoiySbAC_ACtFZ_0(&v89, v81))
  {
    sub_1D8C2F118(&v93);
    sub_1D8C2F118(&v93);

    v23 = *(&v87 + 1);
    v22 = v87;
    v20 = DWORD1(v86);
    v14 = BYTE8(v86);
    v21 = v86;
    v19 = *(&v85 + 1);
    v15 = v85;
    v18 = *(&v84 + 1);
    v17 = v84;
    goto LABEL_7;
  }

  sub_1D8C2F0BC();
  v67 = swift_allocError();
  *v68 = 0xD00000000000001ELL;
  v68[1] = 0x80000001D8C8B8F0;
  swift_willThrow();
  sub_1D8C2F118(&v93);
  sub_1D8C2F118(&v84);
  *&v81[0] = v67;
  MEMORY[0x1DA725EA0](v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D8C2F118(&v93);
    sub_1D8C2F110();

    return MEMORY[0x1DA725E90](*&v81[0]);
  }

LABEL_38:
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  sub_1D8C85124();
  MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
  sub_1D8C851E4();
  MEMORY[0x1DA7255C0](39, 0xE100000000000000);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C2DF14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 2);
  v9[0] = *(a1 + 1);
  v9[1] = v4;
  v6 = *(a1 + 4);
  v10 = *(a1 + 3);
  v5 = v10;
  v11 = v6;
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_1D8C2EE54(v9, &v8);
}

unint64_t sub_1D8C2DF64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
  v3 = sub_1D8C85234();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1D8C2F298(&v24, v23, &qword_1ECAAB020, &unk_1D8C85C20);
  result = sub_1D8C4668C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1D8C2F298(&v24, v23, &qword_1ECAAB020, &unk_1D8C85C20);
    result = sub_1D8C4668C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C2E100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB010, &qword_1D8C85C10);
  v3 = sub_1D8C85234();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1D8C46878(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_1D8C46878(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C2E218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
    v3 = sub_1D8C85234();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      sub_1D8C2F16C(v7, v8, v9, v10, v11);
      result = sub_1D8C4668C(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8C2E35C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAFF0, &qword_1D8C85BF8);
  v3 = sub_1D8C85234();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8C46878(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8C46878(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C2E464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB060, &qword_1D8C85C60);
  v3 = sub_1D8C85234();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1D8C2F298(&v24, v23, &qword_1ECAAB068, &unk_1D8C87380);
  result = sub_1D8C4668C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1D8C2F298(&v24, v23, &qword_1ECAAB068, &unk_1D8C87380);
    result = sub_1D8C4668C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C2E600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB050, &qword_1D8C85C50);
    v3 = sub_1D8C85234();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_1D8C2C5D0(v9, v10);
      result = sub_1D8C4668C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8C2E72C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB058, &qword_1D8C85C58);
    v3 = sub_1D8C85234();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_1D8C2C5D0(v8, v9);

      result = sub_1D8C4668C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8C2E870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
    v3 = sub_1D8C85234();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D8C4668C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8C2E96C(void *a1, uint64_t (*a2)(uint64_t))
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
  v5 = sub_1D8C85234();
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  result = a2(v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v11 = a1 + 9;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v7;
    v12 = (v5[7] + 16 * result);
    *v12 = v6;
    v12[1] = v8;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    sub_1D8C2C5E4(v6, v8);
    if (!--v2)
    {
      return v5;
    }

    v7 = *(v11 - 2);
    v6 = *(v11 - 1);
    v8 = *v11;
    result = a2(v7);
    v11 += 3;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C2EAD4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_1D8C85234();

    for (i = (a1 + 80); ; i += 56)
    {
      v8 = *(i - 6);
      v9 = *(i - 5);
      v10 = *(i - 4);
      v11 = *(i - 3);
      v12 = *(i - 2);
      v13 = *(i - 1);
      v14 = *i;

      a4(v10, v11, v12, v13, v14);
      result = sub_1D8C4668C(v8, v9);
      if (v16)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v6[6] + 16 * result);
      *v17 = v8;
      v17[1] = v9;
      v18 = v6[7] + 40 * result;
      *v18 = v10;
      *(v18 + 8) = v11;
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      v19 = v6[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v6[2] = v21;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8C2EC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB038, &qword_1D8C85C38);
    v3 = sub_1D8C85234();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D8C4668C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL _s17PoirotSchematizer15MessageManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D8C4B32C(*a1, *a2) & 1) == 0 || (sub_1D8C4C4F8(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_1D8C2C5D0(v4, v3);
      sub_1D8C2C5D0(v7, v6);
      sub_1D8C2C670(v4, v3);
      return 1;
    }

    goto LABEL_7;
  }

  if (v6 >> 60 == 15)
  {
LABEL_7:
    sub_1D8C2C5D0(v4, v3);
    sub_1D8C2C5D0(v7, v6);
    sub_1D8C2C670(v4, v3);
    sub_1D8C2C670(v7, v6);
    return 0;
  }

  sub_1D8C2C5D0(v4, v3);
  sub_1D8C2C5D0(v7, v6);
  v9 = sub_1D8C76A90(v4, v3, v7, v6);
  sub_1D8C2C670(v7, v6);
  sub_1D8C2C670(v4, v3);
  return (v9 & 1) != 0;
}

uint64_t sub_1D8C2EEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAFE8, &qword_1D8C85AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8C2EF6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D8C2EFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C2F004(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {

    return sub_1D8C2C5D0(a3, a4);
  }

  return result;
}

uint64_t sub_1D8C2F060(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {

    return sub_1D8C2C670(a3, a4);
  }

  return result;
}

unint64_t sub_1D8C2F0BC()
{
  result = qword_1ECAAAFF8;
  if (!qword_1ECAAAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAAFF8);
  }

  return result;
}

uint64_t sub_1D8C2F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {

    return swift_unknownObjectRetain();
  }

  else
  {

    return sub_1D8C2C5D0(a4, a5);
  }
}

uint64_t sub_1D8C2F1C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1D8C2C5D0(a3, a4);
  }
}

uint64_t sub_1D8C2F230(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_1D8C2C5D0(a2, a3);
  }
}

uint64_t sub_1D8C2F298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t TypeSchema.makeValue(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      sub_1D8C85124();

      v33[0] = 0xD000000000000024;
      v33[1] = 0x80000001D8C8B950;
      ObjectType = swift_getObjectType();
      v8 = (*(*((v6 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v8);

      sub_1D8C2F8AC();
      swift_allocError();
      *v9 = *v33;
      *(v9 + 16) = 6;
      return swift_willThrow();
    }

    v14 = *v2;
    switch(v5)
    {
      case 1:
      case 3:
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = LODWORD(v33[0]);
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 256;
          goto LABEL_29;
        }

        break;
      case 5:
      case 7:
      case 9:
        v20 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = v33[0];
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 512;
          goto LABEL_29;
        }

        break;
      case 6:
      case 8:
        v22 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = v33[0];
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 768;
          goto LABEL_29;
        }

        break;
      case 10:
        v29 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = v33[0];
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 1280;
          goto LABEL_29;
        }

        break;
      case 11:
        v25 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = LODWORD(v33[0]);
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 1024;
          goto LABEL_29;
        }

        break;
      case 12:
        v26 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = LOBYTE(v33[0]);
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 1536;
          goto LABEL_29;
        }

        break;
      case 13:
        v27 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          v28 = v33[1];
          *a2 = v33[0];
          *(a2 + 8) = v28;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 2048;
          goto LABEL_29;
        }

        break;
      case 14:
        v24 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = *v33;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v21 = 2304;
LABEL_29:
          *(a2 + 32) = v21;
        }

        break;
      default:
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_1D8C84794();
        if (!v3)
        {
          *a2 = LODWORD(v33[0]);
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          *(a2 + 32) = 0;
        }

        break;
    }
  }

  else
  {
    sub_1D8C2F900(a1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB078, &qword_1D8C85C68);
    if (swift_dynamicCast())
    {
      v12 = v32[0];
      v13 = v32[1];
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v12;
      *(a2 + 24) = v13;
      *(a2 + 32) = 1792;
      return swift_unknownObjectRetain();
    }

    else
    {
      sub_1D8C2F900(a1, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB080, &qword_1D8C85C70);
      if (!swift_dynamicCast())
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        sub_1D8C2F964(v30);
        v33[0] = 0;
        v33[1] = 0xE000000000000000;
        sub_1D8C85124();

        v33[0] = 0xD000000000000025;
        v33[1] = 0x80000001D8C8B980;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        swift_getDynamicType();
        v17 = sub_1D8C85434();
        MEMORY[0x1DA7255C0](v17);

        v18 = *v33;
        sub_1D8C2F8AC();
        swift_allocError();
        *v19 = v18;
        *(v19 + 16) = 6;
        return swift_willThrow();
      }

      sub_1D8C2AA1C(v30, v33);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v16 = sub_1D8C850A4();
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v16;
      *(a2 + 24) = 0;
      *(a2 + 32) = 1793;
      swift_unknownObjectRetain();
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  return result;
}

unint64_t sub_1D8C2F8AC()
{
  result = qword_1ECAAB070;
  if (!qword_1ECAAB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB070);
  }

  return result;
}

uint64_t sub_1D8C2F900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D8C2F964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB088, &qword_1D8C85C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OneofSchema.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 8) + 8))(ObjectType);
}

uint64_t OneofSchema.options.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

uint64_t OneofSchema.allFieldNumbers.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(ObjectType, v2);
}

uint64_t OneofSchema.allFieldNames.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OneofSchema.fieldName(forNumber:)(Swift::Int forNumber)
{
  v3 = *v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 40))(forNumber, ObjectType, v4);
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OneofSchema.fieldNumber(forName:)(Swift::String forName)
{
  object = forName._object;
  countAndFlagsBits = forName._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(countAndFlagsBits, object, ObjectType, v5);
}

uint64_t OneofSchemaDescribing.asPublic()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return swift_unknownObjectRetain();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D8C2FBE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D8C2FC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C2FD04(unint64_t a1)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1 < 0x80)
  {
    LOBYTE(v4) = a1;
  }

  else
  {
    do
    {
      if (v1[1] >> 62 == 2)
      {
        v6 = *(*v1 + 24);
      }

      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0A0, "n:");
      v14 = v3;
      v15 = sub_1D8C3026C(&qword_1ECAAB0A8, &qword_1ECAAB0A0, "n:");
      LOBYTE(v13[0]) = v2 | 0x80;
      v11 = *__swift_project_boxed_opaque_existential_1(v13, v3);
      sub_1D8C84724();
      __swift_destroy_boxed_opaque_existential_1(v13);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  if (v1[1] >> 62 == 2)
  {
    v7 = *(*v1 + 24);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0A0, "n:");
  v14 = v8;
  v15 = sub_1D8C3026C(&qword_1ECAAB0A8, &qword_1ECAAB0A0, "n:");
  LOBYTE(v13[0]) = v4;
  v12 = *__swift_project_boxed_opaque_existential_1(v13, v8);
  sub_1D8C84724();
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C2FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1D8C45074(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1D8C45134(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1D8C2B5D0(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_1D8C2FFDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB090, "l:");
  v10 = sub_1D8C3026C(&qword_1ECAAB098, &qword_1ECAAB090, "l:");
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

uint64_t sub_1D8C300B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 8))(a3, a4);
  sub_1D8C2FD04(v11);
  v14 = a2;
  (*(a4 + 32))(sub_1D8C30250, v13, MEMORY[0x1E69E7CA8] + 8, a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8C3026C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8C302CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v27 = *a1;
  v29 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v4[4] = a2;
  swift_bridgeObjectRetain_n();
  v4[5] = sub_1D8C506D4(a2);
  v31 = MEMORY[0x1E69E7CD0];
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_1D8C47994(&v30, *(*(a2 + 56) + ((v15 << 9) | (8 * v16)))))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v4[6] = v31;
      if (v7 >> 60 == 15)
      {
        swift_unknownObjectRelease();
        v17 = 0;
        v18 = v8;
        goto LABEL_17;
      }

      ObjectType = swift_getObjectType();
      v18 = v8;
      sub_1D8C2C5E4(v8, v7);
      if (sub_1D8C4EC78(ObjectType, a4))
      {
        sub_1D8C4ECDC(ObjectType, a4);
        if (v28)
        {

          sub_1D8C2C670(v8, v7);
          swift_unknownObjectRelease();
          sub_1D8C2C670(v8, v7);
          v23 = v4[4];

          v24 = v4[5];

          v25 = v4[6];

          swift_deallocPartialClassInstance();
          return v4;
        }

        v21 = v20;
        v22 = swift_getObjectType();
        v17 = (*(v21 + 80))(v8, v7, v22, v21);
        swift_unknownObjectRelease();
        sub_1D8C2C670(v8, v7);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1D8C2C670(v8, v7);
        v17 = 0;
      }

LABEL_17:
      v4[7] = v17;
      v4[2] = v27;
      v4[3] = v29;
      sub_1D8C2C670(v18, v7);
      return v4;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C305C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {
    v6 = sub_1D8C4668C(a1, a2);
    if (v7)
    {
      return *(*(v5 + 56) + 8 * v6);
    }
  }

  sub_1D8C85124();

  MEMORY[0x1DA7255C0](a1, a2);
  sub_1D8C2F8AC();
  swift_allocError();
  *v9 = 0xD00000000000001BLL;
  *(v9 + 8) = 0x80000001D8C8BA10;
  *(v9 + 16) = 3;
  return swift_willThrow();
}

unint64_t sub_1D8C306AC(unint64_t result)
{
  v2 = 0;
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    if (*(*(v3 + 56) + 8 * v10) == result)
    {
      v11 = (*(v3 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];

      return v12;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      sub_1D8C85124();

      v14 = sub_1D8C85274();
      MEMORY[0x1DA7255C0](v14);

      v12 = 0xD000000000000020;
      sub_1D8C2F8AC();
      swift_allocError();
      *v15 = 0xD000000000000020;
      *(v15 + 8) = 0x80000001D8C8BA30;
      *(v15 + 16) = 3;
      swift_willThrow();
      return v12;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C30830()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
}

uint64_t sub_1D8C30870()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t SchemaStore.impl.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t SchemaStore.allMessageNames.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

uint64_t SchemaStore.allEnumNames.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

uint64_t SchemaStore.messageSchema(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 24))(a1, a2, ObjectType, v9);
  if (!v4)
  {
    v13 = v12;
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(v13, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SchemaStore.enumSchema(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 32))(a1, a2, ObjectType, v9);
  if (!v4)
  {
    v13 = v12;
    swift_getObjectType();
    EnumSchemaDescribing.asPublic()(v13, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MessageSchema.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 8) + 8))(ObjectType);
}

uint64_t MessageSchemaDescribing.asPublic()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return swift_unknownObjectRetain();
}

uint64_t MessageSchema.impl.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t MessageSchema.options.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

uint64_t MessageSchema.allFieldNames.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(ObjectType, v2);
}

uint64_t MessageSchema.allOneofNames.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

uint64_t MessageSchema.fieldSchema(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 56))(a1, a2, ObjectType, v9);
  if (!v4)
  {
    v13 = v12;
    swift_getObjectType();
    FieldSchemaDescribing.asPublic()(v13, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MessageSchema.fieldSchema(withNumber:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v7 = v2[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 64))(a1, ObjectType, v7);
  if (!v3)
  {
    v11 = v10;
    swift_getObjectType();
    FieldSchemaDescribing.asPublic()(v11, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MessageSchema.oneof(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 72))(a1, a2, ObjectType, v9);
  if (!v4)
  {
    v13 = v12;
    swift_getObjectType();
    OneofSchemaDescribing.asPublic()(v13, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MessageSchema.schematize(data:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  ObjectType = swift_getObjectType();
  return (*(v6 + 80))(a1, a2, ObjectType, v6);
}

void *sub_1D8C30F80(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = (*(a8 + 88))(v12, a1, a2, a6, a8);
  if (!v8)
  {
    v11[0] = v12[0];
    v11[1] = v12[1];
    a3(v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8C311BC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C31218()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D8C31254(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D8C5E098(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1D8C850C4();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *(*(a1 + 56) + 8 * v7);
    v25 = *v11;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D8C5E098((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = (v27 + 24 * v13);
    v15[4] = v25;
    v15[5] = v12;
    v15[6] = v24;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1D8C32654(v7, v26, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1D8C32654(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D8C314A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v64 = v4[1];
  v65 = v4[2];
  *&v78 = sub_1D8C31254(*v4);

  sub_1D8C31C04(&v78);
  v10 = v5;
  if (v5)
  {
LABEL_31:
    MEMORY[0x1DA725E90](v10);

    __break(1u);
    return result;
  }

  v69 = a1;
  v73 = a2;

  v11 = v78;
  v12 = *(v78 + 16);
  v71 = a4;
  if (v12)
  {
    *&v78 = MEMORY[0x1E69E7CC0];
    sub_1D8C5E078(0, v12, 0);
    v13 = v78;
    v14 = (v11 + 48);
    v75 = v9;
    do
    {
      v15 = *(v14 - 1);
      v77 = *(v14 - 2);
      v16 = *v14;
      if (*(v9 + 16))
      {
        v17 = sub_1D8C46878(*v14);
        if (v18)
        {
          v19 = (*(v9 + 56) + 16 * v17);
          v20 = *v19;
          v21 = v19[1];
          sub_1D8C2C5E4(*v19, v21);
        }

        else
        {
          v20 = 0;
          v21 = 0xF000000000000000;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0xF000000000000000;
      }

      *&v78 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1D8C5E078((v22 > 1), v23 + 1, 1);
        v13 = v78;
      }

      v14 += 3;
      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 40 * v23);
      v9 = v75;
      v24[4] = v77;
      v24[5] = v15;
      v24[6] = v16;
      v24[7] = v20;
      v24[8] = v21;
      --v12;
    }

    while (v12);
    v72 = v13;

    a4 = v71;
    v10 = 0;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  ObjectType = swift_getObjectType();
  v26 = *(a4 + 24);
  v27 = v26(0xD000000000000023, 0x80000001D8C8BA90, ObjectType, a4);
  v29 = v28;
  v30 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  *(&v84 + 1) = v29;
  v85 = v30;
  *&v84 = v27;

  SchematizedDataComposer.subscript.setter(v69, v73, 1701667182, 0xE400000000000000);
  v31 = *(v72 + 16);
  if (v31)
  {
    v68 = v26;
    v70 = ObjectType;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D8C85184();
    v32 = v72;
    v33 = 0;
    v67 = v31;
    v34 = (v72 + 64);
    while (v33 < *(v32 + 16))
    {
      v76 = v33;
      v36 = *(v34 - 4);
      v35 = *(v34 - 3);
      v37 = *(v34 - 4);
      v38 = *(v34 - 1);
      v39 = *v34;

      sub_1D8C2C5D0(v38, v39);
      v40 = v68(0xD000000000000028, 0x80000001D8C8BAC0, v70, a4);
      v42 = v41;
      v43 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
      *(&v78 + 1) = v42;
      v79 = v43;
      *&v78 = v40;

      SchematizedDataComposer.subscript.setter(v36, v35, 1701667182, 0xE400000000000000);
      v90[0] = v37;
      memset(&v90[1], 0, 24);
      v91 = 0;
      v44 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v82 = v44;
      sub_1D8C7590C(v90, 0x7265626D756ELL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v46 = v82;
      if (v39 >> 60 == 15)
      {
        v47 = sub_1D8C4668C(0x736E6F6974706FLL, 0xE700000000000000);
        if (v48)
        {
          v49 = v47;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *&v82 = v46;
          if (!v50)
          {
            sub_1D8C74968();
            v46 = v82;
          }

          v51 = *(*(v46 + 48) + 16 * v49 + 8);

          v52 = *(v46 + 56) + 40 * v49;
          v53 = *v52;
          v54 = *(v52 + 8);
          v55 = *(v52 + 16);
          v74 = *(v52 + 24);
          v66 = *(v52 + 32);
          sub_1D8C69D3C(v49, v46);
          sub_1D8C31D88(v53, v54, v55, v74, v66);
        }
      }

      else
      {
        v88[0] = 0;
        v88[1] = v39;
        v88[2] = 0;
        v88[3] = 0;
        v89 = 2304;
        sub_1D8C2C5E4(0, v39);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v46;
        sub_1D8C7590C(v88, 0x736E6F6974706FLL, 0xE700000000000000, v56);
        v46 = v82;
      }

      v82 = v78;
      v83 = v46;
      swift_unknownObjectRetain();

      SchematizedDataComposer.compose()();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_1D8C2C670(v38, v39);
      sub_1D8C85154();
      v57 = *(v92 + 16);
      sub_1D8C85194();
      v33 = v76 + 1;
      v10 = 0;
      sub_1D8C851A4();
      sub_1D8C85164();
      v34 += 5;
      a4 = v71;
      v32 = v72;
      if (v67 == v76 + 1)
      {

        v58 = v92;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_26:
  SchematizedDataComposer.subscript.setter(v58, 0x65756C6176, 0xE500000000000000);
  if (v65 >> 60 == 15)
  {
    sub_1D8C75164(0x736E6F6974706FLL, 0xE700000000000000, &v78);
    sub_1D8C31D74(v78, *(&v78 + 1), v79, v80, v81);
    v59 = v85;
  }

  else
  {
    v86[0] = v64;
    v86[1] = v65;
    v86[2] = 0;
    v86[3] = 0;
    v87 = 2304;
    sub_1D8C2C5E4(v64, v65);
    v60 = v85;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = v60;
    sub_1D8C7590C(v86, 0x736E6F6974706FLL, 0xE700000000000000, v61);
    v59 = v78;
  }

  v78 = v84;
  v79 = v59;
  swift_unknownObjectRetain();

  v62 = SchematizedDataComposer.compose()();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v62;
}

uint64_t sub_1D8C31C04(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C4B8(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1D8C85264();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0B0, &qword_1D8C866F0);
      v7 = sub_1D8C84F84();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1D8C31E5C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D8C31D74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if ((a5 >> 12) <= 0xEu)
  {
    return sub_1D8C31D88(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D8C31D88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {
    return sub_1D8C31D98(a1, a2, a3, a4, a5, HIBYTE(a5));
  }
}

uint64_t sub_1D8C31D98(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  if (a6 > 8u)
  {
    if (a6 == 9)
    {

      return sub_1D8C2C684(result, a2);
    }

    else if (a6 == 10)
    {
    }
  }

  else if (a6 == 7)
  {
    swift_unknownObjectRelease();

    return sub_1D8C31E4C(a3, a4, a5 & 1);
  }

  else if (a6 == 8)
  {
  }

  return result;
}

uint64_t sub_1D8C31E4C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D8C31E5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8C7C468(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D8C32418((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
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
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
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
      result = sub_1D8C4A268(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D8C4A268((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1D8C32418((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_1D8C32418(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1D8C32654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8C32694()
{
  v0 = sub_1D8C84D24();
  __swift_allocate_value_buffer(v0, qword_1ECAAC470);
  __swift_project_value_buffer(v0, qword_1ECAAC470);
  return sub_1D8C84D14();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D8C327B0()
{
  v2 = sub_1D8C84A14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8C34BE0(v10, &v18);
  if (v1)
  {
  }

  v17 = v12;
  sub_1D8C34D6C(v11, &v17);
  sub_1D8C84A04();
  sub_1D8C849E4();
  sub_1D8C849B4();
  (*(v3 + 16))(v7, v9, v2);
  v14 = sub_1D8C4A4B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D8C4A4B4(v15 > 1, v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v7, v2);
  sub_1D8C84904();
  sub_1D8C848F4();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1D8C329D4(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v62 = sub_1D8C847F4();
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C84CB4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v58 - v13;
  v72 = sub_1D8C847E4();
  v14 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D8C848C4();
  v70 = *(v66 - 8);
  v17 = *(v70 + 64);
  v18 = MEMORY[0x1EEE9AC00](v66);
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v58 - v20;
  v84 = sub_1D8C84BD4();
  v21 = *(v84 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = a3[1];
  v69 = *a3;
  v27 = a3[3];
  v59 = a3[2];
  v65 = v27;
  v80 = *(v26 + 16);
  if (v80)
  {
    v28 = 0;
    v79 = (v21 + 8);
    v74 = v21 + 32;
    v75 = (v21 + 16);
    v29 = (v26 + 56);
    v85 = MEMORY[0x1E69E7CC0];
    v77 = v21;
    v78 = v16;
    v82 = &v58 - v25;
    v76 = v26;
    while (v28 < *(v26 + 16))
    {
      v81 = v5;
      v31 = *(v29 - 1);
      v30 = *v29;
      v33 = *(v29 - 3);
      v32 = *(v29 - 2);

      sub_1D8C2C5D0(v31, v30);
      sub_1D8C84BC4();

      sub_1D8C84B94();
      if (v30 >> 60 == 15)
      {
        v35 = v81;
        v34 = v82;
      }

      else
      {
        *&v87 = v31;
        *(&v87 + 1) = v30;
        *&v94 = 0;
        v92 = 0u;
        v93 = 0u;
        sub_1D8C2C5D0(v31, v30);
        sub_1D8C2C5E4(v31, v30);
        sub_1D8C84CA4();
        sub_1D8C34FD0(&qword_1ECAAB0C0, MEMORY[0x1E69AA9E8]);
        v36 = v81;
        sub_1D8C84CF4();
        v35 = v36;
        if (v36)
        {
          (*v79)(v82, v84);

          sub_1D8C2C670(v31, v30);
          sub_1D8C2C670(v31, v30);
        }

        v34 = v82;
        sub_1D8C84BB4();
        sub_1D8C2C670(v31, v30);
      }

      (*v75)(v83, v34, v84);
      v37 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1D8C4A504(0, v85[2] + 1, 1, v85);
      }

      v39 = v85[2];
      v38 = v85[3];
      a3 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        v85 = sub_1D8C4A504(v38 > 1, v39 + 1, 1, v85);
      }

      v28 = (v28 + 1);

      sub_1D8C2C670(v31, v30);
      v40 = v77;
      v41 = v84;
      (*(v77 + 8))(v82, v84);
      v42 = v85;
      v85[2] = a3;
      (*(v40 + 32))(v42 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v83, v41);
      v29 += 4;
      v5 = v37;
      v26 = v76;
      if (v80 == v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v97 = MEMORY[0x1E69E7CC0];
  *&v92 = sub_1D8C51504(v69);

  sub_1D8C34214(&v92);
  if (v5)
  {
    MEMORY[0x1DA725E90](v5);

    __break(1u);
    return result;
  }

  a3 = v92;
  v43 = *(v92 + 16);
  if (v43)
  {
    v29 = 0;
    v28 = &v87;
    v44 = 4;
    while (v29 < a3[2])
    {
      v92 = *&a3[v44];
      v45 = *&a3[v44 + 2];
      v46 = *&a3[v44 + 4];
      v47 = *&a3[v44 + 8];
      v95 = *&a3[v44 + 6];
      v96 = v47;
      v93 = v45;
      v94 = v46;
      v48 = v92;
      v88 = *&a3[v44 + 2];
      v89 = *&a3[v44 + 4];
      v90 = *&a3[v44 + 6];
      v91 = *&a3[v44 + 8];
      v87 = *&a3[v44];
      sub_1D8C34EF8(&v92, v86);
      sub_1D8C332E4(v48, *(&v48 + 1), &v88, &v97);
      v29 = (v29 + 1);
      v86[2] = v89;
      v86[3] = v90;
      v86[4] = v91;
      v86[0] = v87;
      v86[1] = v88;
      sub_1D8C34F68(v86);
      v44 += 10;
      if (v43 == v29)
      {
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    a3 = sub_1D8C4A4DC(0, a3[2] + 1, 1, a3);
    *v29 = a3;
    goto LABEL_25;
  }

LABEL_20:

  sub_1D8C848B4();
  v49 = v65;
  if (v65 >> 60 == 15)
  {
    v28 = v66;
    v29 = v67;
  }

  else
  {
    v50 = v59;
    *&v87 = v59;
    *(&v87 + 1) = v65;
    *&v94 = 0;
    v92 = 0u;
    v93 = 0u;
    sub_1D8C2C5D0(v59, v65);
    sub_1D8C2C5E4(v50, v49);
    sub_1D8C84CA4();
    sub_1D8C34FD0(&qword_1ECAAB0B8, MEMORY[0x1E69AAA00]);
    sub_1D8C84CF4();
    v28 = v66;
    v29 = v67;
    sub_1D8C84864();
    sub_1D8C2C670(v50, v49);
  }

  v51 = v71;
  sub_1D8C84824();

  sub_1D8C84844();
  sub_1D8C848A4();
  (*(v70 + 16))(v68, v51, v28);
  a3 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v54 = a3[2];
  v53 = a3[3];
  if (v54 >= v53 >> 1)
  {
    *v29 = sub_1D8C4A4DC(v53 > 1, v54 + 1, 1, a3);
  }

  v55 = v70;
  (*(v70 + 8))(v71, v28);
  v56 = *v29;
  *(v56 + 16) = v54 + 1;
  (*(v55 + 32))(v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54, v68, v28);
}

uint64_t sub_1D8C332E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int64_t *a4)
{
  v56 = a2;
  v50 = a4;
  v57 = a1;
  v41 = sub_1D8C84AA4();
  v40 = *(v41 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8C84CB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D8C847D4();
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8C84B24();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v38 - v18;
  v54 = sub_1D8C84B74();
  v51 = *(v54 - 8);
  v20 = *(v51 + 64);
  v21 = MEMORY[0x1EEE9AC00](v54);
  v62 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v38 - v23;
  v25 = *a3;
  v26 = *(a3 + 2);
  v42 = *(a3 + 1);
  v48 = v26;
  v27 = *(a3 + 3);
  v47 = a3[32];
  v38[1] = *(a3 + 9);
  v49 = a3[40];
  v28 = *(a3 + 7);
  v43 = *(a3 + 6);
  sub_1D8C2C5D0(v43, v28);
  sub_1D8C84B64();
  LOBYTE(v58[0]) = v25;
  sub_1D8C338F8(v58, v19);
  v52 = v13;
  v53 = v12;
  v30 = *(v13 + 16);
  v29 = v13 + 16;
  v30(v17, v19, v12);
  sub_1D8C84A84();

  sub_1D8C84A64();
  if (v27 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v27 = sub_1D8C4A52C(0, *(v27 + 16) + 1, 1, v27);
    *v12 = v27;
    goto LABEL_15;
  }

  MEMORY[0x1DA725240](v27);
  if (v28 >> 60 == 15)
  {
    v25 = v54;
  }

  else
  {
    v31 = v43;
    v60 = v43;
    v61 = v28;
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    sub_1D8C2C5E4(v43, v28);
    sub_1D8C84CA4();
    sub_1D8C34FD0(&qword_1ECAAB0C8, MEMORY[0x1E69AA9D8]);
    v32 = v55;
    sub_1D8C84CF4();
    v25 = v54;
    if (v32)
    {
      sub_1D8C2C670(v31, v28);
      (*(v52 + 8))(v19, v53);
      return (*(v51 + 8))(v24, v25);
    }

    sub_1D8C84B04();
    sub_1D8C2C670(v31, v28);
  }

  v12 = v50;
  v29 = v51;
  if (v47)
  {
    (*(v40 + 104))(v39, *MEMORY[0x1E69AAA48], v41);
    sub_1D8C84AC4();
  }

  if (v48)
  {

    sub_1D8C84B54();
  }

  if ((v49 & 1) == 0)
  {
    sub_1D8C84A34();
  }

  (*(v29 + 16))(v62, v24, v25);
  v27 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v36 = *(v27 + 16);
  v35 = *(v27 + 24);
  if (v36 >= v35 >> 1)
  {
    *v12 = sub_1D8C4A52C(v35 > 1, v36 + 1, 1, v27);
  }

  (*(v52 + 8))(v19, v53);
  (*(v29 + 8))(v24, v25);
  v37 = *v12;
  *(v37 + 16) = v36 + 1;
  return (*(v29 + 32))(v37 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, v62, v25);
}

uint64_t sub_1D8C338F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1D8C84B24();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E85667D8 + v3);

  return v5(a2, v6, v4);
}

uint64_t sub_1D8C33970(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v32 = a4;
  v35 = a1;
  v6 = sub_1D8C84CB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D8C847C4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1D8C84994();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = a3[1];
  v40 = *a3;
  v17 = a3[2];
  v36 = a3[3];
  sub_1D8C84984();

  v35 = v15;
  sub_1D8C84934();
  if (v17 >> 60 != 15)
  {
    v39[0] = v16;
    v39[1] = v17;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1D8C2C5D0(v16, v17);
    sub_1D8C2C5E4(v16, v17);
    sub_1D8C84CA4();
    sub_1D8C34FD0(&qword_1ECAAB0D0, MEMORY[0x1E69AA980]);
    sub_1D8C84CF4();
    if (v4)
    {
      (*(v33 + 8))(v35, v34);
      return sub_1D8C2C670(v16, v17);
    }

    sub_1D8C84974();
    sub_1D8C2C670(v16, v17);
  }

  *&v37[0] = MEMORY[0x1E69E7CC0];
  v39[0] = sub_1D8C31254(v40);

  sub_1D8C31C04(v39);
  v19 = v32;
  if (v4)
  {
    MEMORY[0x1DA725E90](v4);

    __break(1u);
    return result;
  }

  v20 = v39[0];
  v21 = v39[0][2];
  if (v21)
  {
    v22 = 0;
    v19 = v39[0] + 6;
    while (v22 < v20[2])
    {
      v24 = *(v19 - 1);
      v23 = *v19;
      v25 = *(v19 - 2);

      sub_1D8C33E34(v25, v24, v23, v40, v16, v17, v36, v37);

      ++v22;
      v19 += 3;
      if (v21 == v22)
      {
        v19 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:

  v26 = v35;
  sub_1D8C84954();
  v17 = v33;
  v21 = v34;
  v16 = v31;
  (*(v33 + 16))(v31, v26, v34);
  v20 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v20 = sub_1D8C4A554(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v29 = v20[2];
  v28 = v20[3];
  if (v29 >= v28 >> 1)
  {
    *v19 = sub_1D8C4A554(v28 > 1, v29 + 1, 1, v20);
  }

  (*(v17 + 8))(v35, v21);
  v30 = *v19;
  *(v30 + 16) = v29 + 1;
  (*(v17 + 32))(v30 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29, v16, v21);
}

uint64_t sub_1D8C33E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v35 = a8;
  v10 = sub_1D8C84CB4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34[2] = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8C848D4();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v34[1] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8C84C54();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v34 - v22;
  sub_1D8C84C44();

  sub_1D8C84BF4();
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    a7 = sub_1D8C4A57C(0, a7[2] + 1, 1, a7);
    *v13 = a7;
    goto LABEL_8;
  }

  MEMORY[0x1DA725370](a3);
  if (a7[2])
  {
    v24 = sub_1D8C46878(a3);
    if (v25)
    {
      v39 = *(a7[7] + 16 * v24);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v26 = *(&v39 + 1);
      v27 = v39;
      sub_1D8C2C5E4(v39, *(&v39 + 1));
      v34[0] = v26;
      sub_1D8C2C5E4(v27, v26);
      sub_1D8C84CA4();
      sub_1D8C34FD0(&qword_1ECAAB0D8, MEMORY[0x1E69AAA20]);
      v28 = v40;
      sub_1D8C84CF4();
      if (v28)
      {
        (*(v17 + 8))(v23, v16);
        return sub_1D8C2C684(v27, v34[0]);
      }

      sub_1D8C84C34();
      sub_1D8C2C684(v27, v34[0]);
    }
  }

  (*(v17 + 16))(v21, v23, v16);
  v13 = v35;
  a7 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v32 = a7[2];
  v31 = a7[3];
  if (v32 >= v31 >> 1)
  {
    *v13 = sub_1D8C4A57C(v31 > 1, v32 + 1, 1, a7);
  }

  (*(v17 + 8))(v23, v16);
  v33 = *v13;
  *(v33 + 16) = v32 + 1;
  return (*(v17 + 32))(v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v32, v21, v16);
}

uint64_t sub_1D8C34214(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C490(v2);
  }

  v3 = v2[2];
  v29[0] = (v2 + 4);
  v29[1] = v3;
  result = sub_1D8C85264();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 14;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (v12[5] >= *(v12 - 5))
          {
            break;
          }

          v13 = v12 - 10;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v27 = *(v12 + 3);
          v28 = v16;
          v25 = v14;
          v26 = v15;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 4) = v17;
          v18 = *(v12 - 3);
          *(v12 + 1) = *(v12 - 4);
          *(v12 + 2) = v18;
          *v12 = *(v12 - 5);
          *v13 = v24;
          v19 = v28;
          v20 = v25;
          v21 = v26;
          v13[3] = v27;
          v13[4] = v19;
          v13[1] = v20;
          v13[2] = v21;
          v12 -= 10;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 10;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
      v7 = sub_1D8C84F84();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_1D8C343A4(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D8C343A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8C7C468(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D8C349A8((*a3 + 80 * *v82), (*a3 + 80 * *v84), (*a3 + 80 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
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
      v9 = *(*a3 + 80 * v6 + 40);
      v10 = 80 * v8;
      v11 = *a3 + 80 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 200);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 10;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
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
        v18 = 80 * v6 - 80;
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
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x50uLL);
            v21[2] = v94;
            v21[3] = v96;
            v21[4] = v98;
            *v21 = v90;
            v21[1] = v92;
          }

          ++v20;
          v18 -= 80;
          v10 += 80;
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
      result = sub_1D8C4A268(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1D8C4A268((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
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

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_1D8C349A8((*a3 + 80 * *v75), (*a3 + 80 * *v77), (*a3 + 80 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
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
  v24 = *a3 + 80 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 40) >= *(v27 - 40))
    {
LABEL_29:
      ++v6;
      v24 += 80;
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

    v28 = (v27 - 80);
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 32);
    *(v27 + 32) = *(v27 - 48);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 16);
    v30 = *(v27 - 64);
    *v27 = *(v27 - 80);
    *(v27 + 16) = v30;
    v28[3] = v97;
    v28[4] = v99;
    v28[1] = v93;
    v28[2] = v95;
    v27 -= 80;
    *v28 = v91;
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

uint64_t sub_1D8C349A8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 5) < *(v4 + 5))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 80;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 80;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 80;
    do
    {
      v15 = v5 + 80;
      if (*(v12 - 5) < *(v6 - 5))
      {
        v17 = v6 - 80;
        if (v15 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 80);
      if (v15 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}

uint64_t sub_1D8C34BE0(uint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v17[0] = sub_1D8C80CF4(a1);

  sub_1D8C81A1C(v17);
  v3 = v2;
  if (!v2)
  {

    v4 = v17[0];
    v16 = v17[0][2];
    if (!v16)
    {
    }

    v5 = 0;
    v6 = v17[0] + 9;
    while (v5 < v4[2])
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);
      v11 = *(v6 - 4);
      v17[0] = *(v6 - 5);
      v12 = v17[0];
      v17[1] = v11;
      v18 = v10;
      v19 = v9;
      v20 = v7;
      v21 = v8;

      sub_1D8C2C5D0(v9, v7);

      sub_1D8C33970(v12, v11, &v18, v22);
      ++v5;
      v13 = v19;
      v14 = v20;

      sub_1D8C2C670(v13, v14);

      v6 += 6;
      if (v16 == v5)
      {
      }
    }

    __break(1u);
  }

  MEMORY[0x1DA725E90](v3);

  __break(1u);
  return result;
}

uint64_t sub_1D8C34D6C(uint64_t a1, unint64_t *a2)
{
  v21 = a2;
  v17[0] = sub_1D8C81000(a1);

  sub_1D8C81AC0(v17);
  v3 = v2;
  if (!v2)
  {

    v4 = v17[0];
    v16 = v17[0][2];
    if (!v16)
    {
    }

    v5 = 0;
    v6 = v17[0] + 9;
    while (v5 < v4[2])
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);
      v11 = *(v6 - 4);
      v17[0] = *(v6 - 5);
      v12 = v17[0];
      v17[1] = v11;
      v18[0] = v10;
      v18[1] = v9;
      v19 = v8;
      v20 = v7;

      sub_1D8C2C5D0(v8, v7);
      sub_1D8C329D4(v12, v11, v18, v21);
      ++v5;
      v13 = v19;
      v14 = v20;

      sub_1D8C2C670(v13, v14);
      v6 += 6;
      if (v16 == v5)
      {
      }
    }

    __break(1u);
  }

  MEMORY[0x1DA725E90](v3);

  __break(1u);
  return result;
}

uint64_t sub_1D8C34EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C34F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8C34FD0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 EnumValue.init(stringValue:type:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  result = *a3;
  *a4 = *a3;
  a4[1].n128_u64[0] = a1;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u8[0] = 0;
  return result;
}

__n128 EnumValue.init(intValue:type:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  result = *a2;
  *a3 = *a2;
  a3[1].n128_u64[0] = a1;
  a3[1].n128_u64[1] = 0;
  a3[2].n128_u8[0] = 1;
  return result;
}

uint64_t EnumValue.impl.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  swift_unknownObjectRetain();

  return sub_1D8C3510C(v2, v3, v4);
}

uint64_t EnumValue.type.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  return EnumSchemaDescribing.asPublic()(v3, a1);
}

uint64_t EnumValueImpl.init(intValue:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = result;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t EnumValueImpl.init(stringValue:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = result;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *a5 = a3;
  *(a5 + 8) = a4;
  return result;
}

uint64_t sub_1D8C3510C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asInteger()()
{
  result = v0[2];
  if ((v0[4] & 1) == 0)
  {
    v2 = v0[3];
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 40);
    swift_unknownObjectRetain();
    sub_1D8C3510C(v5, v2, 0);
    v8 = v7(v5, v2, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1D8C31E4C(v5, v2, 0);
    return v8;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValueImpl.asInteger()()
{
  v1 = v0[2];
  if (v0[4])
  {
    return v0[2];
  }

  v3 = v0[3];
  v6 = v0;
  v4 = *v0;
  v5 = v6[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 40))(v1, v3, ObjectType, v5);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asString()()
{
  v2 = v0[2];
  v3 = v0[3];
  if (v0[4])
  {
    v5 = *v0;
    v4 = v0[1];
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 48);
    swift_unknownObjectRetain();
    sub_1D8C3510C(v2, v3, 1);
    v8 = v7(v2, ObjectType, v4);
    v10 = v9;
    swift_unknownObjectRelease();
    sub_1D8C31E4C(v2, v3, 1);
    if (!v1)
    {
      v2 = v8;
      v3 = v10;
    }
  }

  else
  {
    v11 = v0[3];
  }

  v12 = v2;
  v13 = v3;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValueImpl.asString()()
{
  v2 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v5 = v0;
    v3 = *v0;
    v4 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 48))(v2, ObjectType, v4);
    if (!v1)
    {
      v2 = v7;
      v3 = v8;
    }
  }

  else
  {
    v3 = *(v0 + 24);
  }

  v9 = v2;
  v10 = v3;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t EnumValueImpl.type.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t EnumValueImpl.asPublic()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  swift_unknownObjectRetain();

  return sub_1D8C3510C(v2, v3, v4);
}

uint64_t EnumValueImpl.encode(to:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8C853F4();
  if ((v7 & 1) == 0)
  {

LABEL_5:
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1D8C852B4();

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v6, ObjectType, v3);
  if (!v2)
  {
    goto LABEL_5;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t _s17PoirotSchematizer13EnumValueImplV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 32);
  v6 = *a2;
  v5 = a2[1];
  v20 = a2[2];
  v21 = a1[2];
  v18 = a2[3];
  v19 = a1[3];
  v22 = *(a2 + 32);
  ObjectType = swift_getObjectType();
  v8 = (*(*(v2 + 8) + 8))();
  v10 = v9;
  v11 = swift_getObjectType();
  if (v8 == (*(*(v5 + 8) + 8))() && v10 == v12)
  {

    if (v4)
    {
LABEL_7:
      v16 = v20;
      if (!v22)
      {
        v16 = (*(v5 + 40))(v20, v18, v11, v5);
      }

      return v21 == v16;
    }
  }

  else
  {
    v14 = sub_1D8C852A4();

    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  if (v22)
  {
    return (*(v2 + 40))(v21, v19, ObjectType, v2) == v20;
  }

  if (v21 == v20 && v19 == v18)
  {
    return 1;
  }

  return sub_1D8C852A4();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
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

uint64_t sub_1D8C35818(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D8C35860(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FieldPathComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FieldPathComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C35978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D8C359C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C35A0C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D8C35A3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D8C35A58(uint64_t a1)
{
  v2 = sub_1D8C35C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8C35A94(uint64_t a1)
{
  v2 = sub_1D8C35C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8C35AE0()
{
  result = qword_1ECAAB0E0;
  if (!qword_1ECAAB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB0E0);
  }

  return result;
}

unint64_t sub_1D8C35B44()
{
  result = qword_1ECAAB0E8;
  if (!qword_1ECAAB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB0E8);
  }

  return result;
}

unint64_t sub_1D8C35BA8()
{
  result = qword_1ECAAB0F0;
  if (!qword_1ECAAB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB0F0);
  }

  return result;
}

unint64_t sub_1D8C35C00()
{
  result = qword_1ECAAB0F8;
  if (!qword_1ECAAB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB0F8);
  }

  return result;
}

unint64_t sub_1D8C35C54()
{
  result = qword_1ECAAB100;
  if (!qword_1ECAAB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB100);
  }

  return result;
}

uint64_t sub_1D8C35CAC(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  LODWORD(v8[0]) = a1;
  sub_1D8C2FF10(v8, v8 + 4, &v9);
  v1 = v9;
  v2 = v10;
  v8[3] = MEMORY[0x1E6969080];
  v8[4] = MEMORY[0x1E6969078];
  v8[0] = v9;
  v8[1] = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E6969080]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D8C2C5E4(v1, v2);
  sub_1D8C36B20(v4, v5);
  sub_1D8C2C684(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C35D80(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  sub_1D8C2FF10(&v8, v9, &v10);
  v1 = v10;
  v2 = v11;
  v9[2] = MEMORY[0x1E6969080];
  v9[3] = MEMORY[0x1E6969078];
  v8 = v10;
  v9[0] = v11;
  v3 = __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E6969080]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D8C2C5E4(v1, v2);
  sub_1D8C36B20(v4, v5);
  sub_1D8C2C684(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(&v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D8C35E54(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v40 = *a2;
  v41 = v4;
  sub_1D8C29EAC(a1, &v42);
  if (!(v4 >> 62))
  {
    if (v46 != 7)
    {
      if (v46)
      {
        goto LABEL_48;
      }

      v8 = v42;
      v9 = v40;
LABEL_9:
      sub_1D8C2B50C(v5, v4);
      sub_1D8C2BBF0(v9, v4);
      return sub_1D8C2FD04(v8);
    }

    v11 = v43;
    v12 = v44;
    v13 = v45;
    if (v45)
    {
      sub_1D8C2B50C(v5, v4);
      v14 = v11;
    }

    else
    {
      v15 = v44;
      v16 = *(&v42 + 1);
      ObjectType = swift_getObjectType();
      v34 = *(v16 + 40);
      sub_1D8C2B50C(v5, v4);
      v14 = v34(v11, v15, ObjectType, v16);
      if (v3)
      {
        swift_unknownObjectRelease();
        v17 = v11;
        v18 = v15;
        v19 = 0;
LABEL_51:
        sub_1D8C31E4C(v17, v18, v19);
        return sub_1D8C2BBF0(v40, v41);
      }

      v12 = v15;
    }

    sub_1D8C2FD04(v14);
    swift_unknownObjectRelease();
    v17 = v11;
    v18 = v12;
    v19 = v13;
    goto LABEL_51;
  }

  if (v4 >> 62 == 1)
  {
    if (v46 == 9)
    {
LABEL_18:
      sub_1D8C2AA1C(&v42, &v35);
      v20 = v36;
      v21 = v37;
      v22 = __swift_project_boxed_opaque_existential_1(&v35, v36);
      sub_1D8C2B50C(v5, v4);
      sub_1D8C300B4(v22, v2, v20, v21);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v35);
      return sub_1D8C2BBF0(v40, v41);
    }

    if (v46 == 10)
    {
      v6 = v43;
      v7 = v44;
      sub_1D8C2B50C(v5, v4);
      sub_1D8C36CEC(v6, v7);
      swift_unknownObjectRelease();
      return sub_1D8C2BBF0(v40, v41);
    }

LABEL_48:
    sub_1D8C2B50C(v5, v4);
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0x2065756C6156, 0xE600000000000000);
    sub_1D8C851E4();
    MEMORY[0x1DA7255C0](0x203A65707954202CLL, 0xE800000000000000);
    v38 = v5;
    v39 = v4;
    v32 = TypeSchema.description.getter();
    MEMORY[0x1DA7255C0](v32);

    sub_1D8C36A64();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0xE000000000000000;
    *(v33 + 16) = 0;
    swift_willThrow();
    return sub_1D8C36AB8(&v40);
  }

  v9 = v40;
  switch(v40)
  {
    case 1:
      if (v46 != 1)
      {
        goto LABEL_48;
      }

      v23 = v42;
      goto LABEL_44;
    case 2:
      if (v46)
      {
        goto LABEL_48;
      }

      v24 = v42;
      goto LABEL_34;
    case 3:
      if (v46 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_31;
    case 4:
      if (v46)
      {
        goto LABEL_48;
      }

      goto LABEL_31;
    case 5:
      if (v46 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    case 6:
      if (v46 != 3)
      {
        goto LABEL_48;
      }

LABEL_43:
      v23 = v42;
      goto LABEL_44;
    case 7:
      if (v46 != 2)
      {
        goto LABEL_48;
      }

      v24 = v42;
LABEL_34:
      v23 = (2 * v24) ^ (v24 >> 63);
      goto LABEL_44;
    case 8:
      if (v46 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    case 9:
      if (v46 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    case 10:
      if (v46 != 5)
      {
        goto LABEL_48;
      }

LABEL_46:
      v31 = v42;
      sub_1D8C2B50C(v5, v4);
      sub_1D8C35D80(v31);
      return sub_1D8C2BBF0(v40, v41);
    case 11:
      if (v46 != 4)
      {
        goto LABEL_48;
      }

LABEL_31:
      v25 = v42;
      sub_1D8C2B50C(v5, v4);
      sub_1D8C35CAC(v25);
      return sub_1D8C2BBF0(v40, v41);
    case 12:
      if (v46 != 6)
      {
        goto LABEL_48;
      }

      v23 = v42;
LABEL_44:
      sub_1D8C2B50C(v5, v4);
      sub_1D8C2FD04(v23);
      return sub_1D8C2BBF0(v40, v41);
    case 13:
      if (v46 != 8)
      {
        goto LABEL_48;
      }

      sub_1D8C2AA1C(&v42, &v35);
      v26 = v36;
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v28 = *(v27 + 8);
      sub_1D8C2B50C(v5, v4);
      result = v28(v26, v27);
      if ((result & 0x8000000000000000) == 0)
      {
        sub_1D8C2FD04(result);
        v29 = v37;
        v30 = __swift_project_boxed_opaque_existential_1(&v35, v36);
        MEMORY[0x1EEE9AC00](v30);
        (*(v29 + 32))(sub_1D8C36D88);
        goto LABEL_19;
      }

      __break(1u);
      break;
    case 14:
      if (v46 == 9)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    default:
      if (v46)
      {
        goto LABEL_48;
      }

      v8 = v42;
      goto LABEL_9;
  }

  return result;
}

unint64_t sub_1D8C36388(uint64_t a1, uint64_t *a2, int a3)
{
  v7 = *a2;
  v6 = a2[1];
  v62 = *a2;
  v63 = v6;
  sub_1D8C29EAC(a1, &v64);
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      v21 = v62;
      switch(v62)
      {
        case 1:
          if (v68 != 1)
          {
            goto LABEL_59;
          }

          v38 = v64;
          goto LABEL_53;
        case 2:
          if (v68)
          {
            goto LABEL_59;
          }

          v39 = v64;
          goto LABEL_43;
        case 3:
          if (v68 != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_40;
        case 4:
          if (v68)
          {
            goto LABEL_59;
          }

          goto LABEL_40;
        case 5:
          if (v68 != 2)
          {
            goto LABEL_59;
          }

          goto LABEL_52;
        case 6:
          if (v68 != 3)
          {
            goto LABEL_59;
          }

LABEL_52:
          v38 = v64;
          goto LABEL_53;
        case 7:
          if (v68 != 2)
          {
            goto LABEL_59;
          }

          v39 = v64;
LABEL_43:
          sub_1D8C2B50C(v7, v6);
          sub_1D8C2FD04(8 * (a3 & 0x1FFFFFFF));
          v41 = (2 * v39) ^ (v39 >> 63);
          goto LABEL_54;
        case 8:
          if (v68 != 3)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 9:
          if (v68 != 2)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 10:
          if (v68 != 5)
          {
            goto LABEL_59;
          }

LABEL_56:
          v46 = v64;
          sub_1D8C2B50C(v7, v6);
          sub_1D8C2FD04((8 * (a3 & 0x1FFFFFFF)) | 1);
          sub_1D8C35D80(v46);
          return sub_1D8C2BBF0(v62, v63);
        case 11:
          if (v68 != 4)
          {
            goto LABEL_59;
          }

LABEL_40:
          v40 = v64;
          sub_1D8C2B50C(v7, v6);
          sub_1D8C2FD04((8 * (a3 & 0x1FFFFFFF)) | 5);
          sub_1D8C35CAC(v40);
          return sub_1D8C2BBF0(v62, v63);
        case 12:
          if (v68 != 6)
          {
            goto LABEL_59;
          }

          v38 = v64;
LABEL_53:
          sub_1D8C2B50C(v7, v6);
          sub_1D8C2FD04(8 * (a3 & 0x1FFFFFFF));
          v41 = v38;
LABEL_54:
          sub_1D8C2FD04(v41);
          return sub_1D8C2BBF0(v62, v63);
        case 13:
          if (v68 != 8)
          {
            goto LABEL_59;
          }

          sub_1D8C2AA1C(&v64, v57);
          sub_1D8C2B50C(v7, v6);
          sub_1D8C2FD04((8 * (a3 & 0x1FFFFFFF)) | 2);
          v42 = v58;
          v43 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          result = (*(v43 + 8))(v42, v43);
          if ((result & 0x8000000000000000) == 0)
          {
            sub_1D8C2FD04(result);
            v44 = v59;
            v45 = __swift_project_boxed_opaque_existential_1(v57, v58);
            MEMORY[0x1EEE9AC00](v45);
            v56 = v3;
            (*(v44 + 32))(sub_1D8C36E08);
            goto LABEL_28;
          }

          __break(1u);
          break;
        case 14:
          if (v68 == 9)
          {
            goto LABEL_27;
          }

          goto LABEL_59;
        default:
          if (v68)
          {
            goto LABEL_59;
          }

          v20 = v64;
          goto LABEL_12;
      }

      goto LABEL_64;
    }

    if (v68 == 9)
    {
LABEL_27:
      sub_1D8C2AA1C(&v64, v57);
      sub_1D8C2B50C(v7, v6);
      sub_1D8C2FD04((8 * (a3 & 0x1FFFFFFF)) | 2);
      v35 = v58;
      v36 = v59;
      v37 = __swift_project_boxed_opaque_existential_1(v57, v58);
      sub_1D8C300B4(v37, v3, v35, v36);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v57);
      return sub_1D8C2BBF0(v62, v63);
    }

    if (v68 == 10)
    {
      v8 = v65;
      v9 = v66;
      sub_1D8C2B50C(v7, v6);
      v10 = (8 * (a3 & 0x1FFFFFFF)) | 2;
      v11 = v3;
      sub_1D8C2FD04(v10);
      v58 = MEMORY[0x1E69E6290];
      v59 = MEMORY[0x1E6969DF8];
      v57[0] = v8;
      v57[1] = v9;
      v12 = __swift_project_boxed_opaque_existential_1(v57, MEMORY[0x1E69E6290]);
      v13 = *v12;
      if (!*v12 || (v14 = v12[1], v15 = v14 - v13, v14 == v13))
      {
        __swift_destroy_boxed_opaque_existential_1(v57);
        result = 0;
        v17 = 0;
        v18 = 0xC000000000000000;
LABEL_8:
        v19 = sub_1D8C2FD04(result);
        MEMORY[0x1EEE9AC00](v19);
        v56 = v11;
        sub_1D8C7B890(sub_1D8C36D88, &v55, v17, v18);
        sub_1D8C2C684(v17, v18);
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v62, v63);
      }

      if (v15 <= 14)
      {
        v17 = sub_1D8C45074(v13, v14);
        v50 = BYTE6(v49);
        v18 = v49 & 0xFFFFFFFFFFFFFFLL;
        __swift_destroy_boxed_opaque_existential_1(v57);
        result = v50;
        goto LABEL_8;
      }

      if (v15 >= 0x7FFFFFFF)
      {
        v17 = sub_1D8C45134(v13, v14);
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_1(v57);
        v54 = *(v17 + 16);
        v53 = *(v17 + 24);
        result = v53 - v54;
        if (!__OFSUB__(v53, v54))
        {
          v18 = v52 | 0x8000000000000000;
          goto LABEL_8;
        }

        goto LABEL_65;
      }

      v17 = sub_1D8C2B5D0(v13, v14);
      v34 = v33;
      result = __swift_destroy_boxed_opaque_existential_1(v57);
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v18 = v34 | 0x4000000000000000;
        result = HIDWORD(v17) - v17;
        goto LABEL_8;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

LABEL_59:
    sub_1D8C2B50C(v7, v6);
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0x203A65756C6156, 0xE700000000000000);
    sub_1D8C851E4();
    MEMORY[0x1DA7255C0](0x203A65707954202CLL, 0xE800000000000000);
    v60 = v7;
    v61 = v6;
    v47 = TypeSchema.description.getter();
    MEMORY[0x1DA7255C0](v47);

    sub_1D8C36A64();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0xE000000000000000;
    *(v48 + 16) = 0;
    swift_willThrow();
    return sub_1D8C36AB8(&v62);
  }

  if (v68 == 7)
  {
    v69 = v4;
    v22 = *(&v64 + 1);
    v24 = v65;
    v23 = v66;
    v25 = 8 * (a3 & 0x1FFFFFFF);
    v26 = v67;
    sub_1D8C2B50C(v7, v6);
    sub_1D8C2FD04(v25);
    if (v26)
    {
      v27 = v24;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v29 = v69;
      v27 = (*(v22 + 40))(v24, v23, ObjectType, v22);
      v69 = v29;
      if (v29)
      {
        swift_unknownObjectRelease();
        v30 = v24;
        v31 = v23;
        v32 = 0;
LABEL_21:
        sub_1D8C31E4C(v30, v31, v32);
        return sub_1D8C2BBF0(v62, v63);
      }
    }

    sub_1D8C2FD04(v27);
    swift_unknownObjectRelease();
    v30 = v24;
    v31 = v23;
    v32 = v26;
    goto LABEL_21;
  }

  if (v68)
  {
    goto LABEL_59;
  }

  v20 = v64;
  v21 = v62;
LABEL_12:
  sub_1D8C2B50C(v7, v6);
  sub_1D8C2BBF0(v21, v6);
  sub_1D8C2FD04(8 * (a3 & 0x1FFFFFFF));
  return sub_1D8C2FD04(v20);
}