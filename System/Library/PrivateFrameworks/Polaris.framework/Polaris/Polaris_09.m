id sub_25EB22B20(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  if (v8)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    v9 = sub_25EB6E428();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void PSSGBuilder.graphs(forExecSession:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v30 = MEMORY[0x277D84F90];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v27 = v7;
  v14 = (v7 + 64) >> 6;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_25EB6E808() || (type metadata accessor for PSSGGraphID(0), swift_dynamicCast(), v20 = v29, v18 = v13, v19 = v8, !v29))
    {
LABEL_26:
      sub_25EB0EC08();
      sub_25EB0CF6C(v30);

      return;
    }

LABEL_20:
    v21 = [v20 session];
    v22 = sub_25EB6E268();
    v24 = v23;

    if (v22 == a1 && v24 == a2)
    {

LABEL_9:
      sub_25EB6E6F8();
      v15 = *(v30 + 16);
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
      goto LABEL_10;
    }

    v26 = sub_25EB6E988();

    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v13 = v18;
    v8 = v19;
  }

  v16 = v13;
  v17 = v8;
  v18 = v13;
  if (v8)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_26;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t PSSGBuilder.isWaitInput(_:forGraph:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v8 = sub_25EB0EE68(a3, *(v3 + v7), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    v10 = [v9 inputs];

    type metadata accessor for PSSGGraphInput(v11);
    v12 = sub_25EB6E3D8();

    if (v12 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25EB6E5F8())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F8C6D90](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 resource];
        v19 = a1;
        v20 = a2;
        v21 = [v18 name];

        v22 = sub_25EB6E268();
        v24 = v23;

        a2 = v20;
        a1 = v19;
        if (v22 == v19 && v24 == a2)
        {
        }

        else
        {
          v26 = sub_25EB6E988();

          if ((v26 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        v27 = [v16 type];

        if (!v27)
        {

          return 1;
        }

LABEL_6:
        ++v14;
        if (v17 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_25EB231B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F8C6D90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25EB6E5F8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id PSSGBuilder.producerGraph(forResource:)(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v4)
  {
    v5 = v4;
    swift_endAccess();
    v6 = [v5 producer];
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v6;
}

Swift::OpaquePointer_optional __swiftcall PSSGBuilder.graphsInTopologicalWaitOrder()()
{
  v2 = v0;
  v3 = v0 + OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v3 + 24);

    goto LABEL_190;
  }

  v156 = v3;
  v7 = sub_25EB0E680(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v4 = 0;
    v11 = 0;
    v12 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(v9 + 32);
    v4 = ~v13;
    v10 = v9 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v9 + 64);
    v12 = v9;
  }

  v158 = 0;
  v16 = 0;
  v17 = (v4 + 64) >> 6;
  v157 = vdupq_n_s64(MEMORY[0x277D84F90]);
  v162 = v2;
  v163 = v10;
  v164 = v17;
  v166 = v12;
LABEL_10:
  v18 = v16;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v19 = v18;
  v20 = v11;
  v16 = v18;
  if (!v11)
  {
    while (1)
    {
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v16 >= v17)
      {
        goto LABEL_83;
      }

      v20 = *(v10 + 8 * v16);
      ++v19;
      if (v20)
      {
        goto LABEL_15;
      }
    }

LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

LABEL_15:
  v21 = (v20 - 1) & v20;
  v22 = (v16 << 9) | (8 * __clz(__rbit64(v20)));
  v4 = *(*(v12 + 56) + v22);
  v23 = *(*(v12 + 48) + v22);
  v170 = v4;
  v172 = v23;
  if (v23)
  {
    while (1)
    {
      v168 = v21;
      if (*(v7 + 16))
      {
        v4 = v7;
        sub_25EAFD168(v172);
        if (v28)
        {
          v1 = v170;
          goto LABEL_33;
        }
      }

      v29 = v172;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v174 = v7;
      v4 = v7;
      v31 = sub_25EAFD168(v29);
      v33 = *(v7 + 16);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      v1 = v170;
      if (v35)
      {
        goto LABEL_207;
      }

      v37 = v32;
      if (*(v7 + 24) < v36)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v4 = &v174;
      v42 = v31;
      sub_25EB2DEB0();
      v31 = v42;
      v7 = v174;
      if ((v37 & 1) == 0)
      {
LABEL_30:
        *(v7 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        *(*(v7 + 48) + 8 * v31) = v29;
        *(*(v7 + 56) + 16 * v31) = v157;
        v43 = *(v7 + 16);
        v35 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v35)
        {
          goto LABEL_210;
        }

        *(v7 + 16) = v44;
        goto LABEL_32;
      }

LABEL_28:
      v39 = (*(v7 + 56) + 16 * v31);
      v4 = *v39;
      v40 = v39[1];
      v41 = MEMORY[0x277D84F90];
      *v39 = MEMORY[0x277D84F90];
      v39[1] = v41;

LABEL_32:
      v2 = v162;
LABEL_33:
      v45 = [v1 waitInputs];
      type metadata accessor for PSSGResourceID(0);
      v46 = sub_25EB6E3D8();

      if (!(v46 >> 62))
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v47)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v47 = sub_25EB6E5F8();
      if (v47)
      {
LABEL_38:
        v48 = 0;
        v161 = OBJC_IVAR___PSSGBuilder_resources;
        v160 = v47;
        while (1)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x25F8C6D90](v48, v46);
          }

          else
          {
            if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_209;
            }

            v49 = *(v46 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_205;
          }

          swift_beginAccess();
          v4 = *(v2 + v161);
          if ((v4 & 0xC000000000000001) != 0)
          {
            v52 = v50;
            v4 = sub_25EB6E7E8();

            v47 = v160;
            if (!v4)
            {
              goto LABEL_39;
            }

            v175 = v4;
            type metadata accessor for PSSGResource(v53);
            swift_dynamicCast();
            v4 = v176;
            if (!v176)
            {
              goto LABEL_39;
            }
          }

          else if (!*(v4 + 16) || (v54 = sub_25EAFD114(v50), (v55 & 1) == 0) || (v4 = *(*(v4 + 56) + 8 * v54)) == 0)
          {
LABEL_39:
            swift_endAccess();
            goto LABEL_40;
          }

          swift_endAccess();
          v1 = [v4 producer];

          if (v1)
          {
            v4 = v7;
            v56 = swift_isUniquelyReferenced_nonNull_native();
            v176 = v7;
            v58 = sub_25EAFD168(v172);
            v59 = *(v7 + 16);
            v60 = (v57 & 1) == 0;
            v61 = v59 + v60;
            if (__OFADD__(v59, v60))
            {
              goto LABEL_211;
            }

            v62 = v57;
            if (*(v4 + 24) >= v61)
            {
              if (v56)
              {
                if ((v57 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              else
              {
                v4 = &v176;
                sub_25EB2DEB0();
                if ((v62 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }
            }

            else
            {
              sub_25EB2C090(v61, v56);
              v4 = v176;
              v63 = sub_25EAFD168(v172);
              if ((v62 & 1) != (v64 & 1))
              {
                goto LABEL_218;
              }

              v58 = v63;
              if ((v62 & 1) == 0)
              {
                goto LABEL_212;
              }
            }

            v7 = v176;
            v174 = *(*(v176 + 56) + 16 * v58);
            v1 = v1;
            MEMORY[0x25F8C6A80]();
            if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v81 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_25EB6E3F8();
            }

            sub_25EB6E418();
            if (v174)
            {
              v65 = *(&v174 + 1);
              v4 = v7;
              v66 = (*(v7 + 56) + 16 * v58);
              *v66 = v174;
              v66[1] = v65;
            }

            else
            {
              v4 = v7;

              sub_25EB2C49C(v58, v7);
            }

            sub_25EB318AC(v158);
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v174 = v4;
            v68 = sub_25EAFD168(v1);
            v70 = *(v4 + 16);
            v71 = (v69 & 1) == 0;
            v35 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v35)
            {
              goto LABEL_213;
            }

            v73 = v69;
            if (*(v4 + 24) >= v72)
            {
              if (v67)
              {
                goto LABEL_72;
              }

              v82 = v68;
              sub_25EB2DEB0();
              v68 = v82;
              v7 = v174;
              if ((v73 & 1) == 0)
              {
LABEL_73:
                *(v7 + 8 * (v68 >> 6) + 64) |= 1 << v68;
                *(*(v7 + 48) + 8 * v68) = v1;
                *(*(v7 + 56) + 16 * v68) = v157;
                v75 = *(v7 + 16);
                v35 = __OFADD__(v75, 1);
                v76 = v75 + 1;
                if (v35)
                {
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
                  goto LABEL_218;
                }

                v77 = v68;
                *(v7 + 16) = v76;
                v78 = v1;
                v68 = v77;
              }
            }

            else
            {
              sub_25EB2C090(v72, v67);
              type metadata accessor for PSSGGraphID(0);
              v7 = v174;
              v68 = sub_25EAFD168(v1);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_219;
              }

LABEL_72:
              if ((v73 & 1) == 0)
              {
                goto LABEL_73;
              }
            }

            v79 = *(v7 + 56) + 16 * v68;
            v80 = v172;
            MEMORY[0x25F8C6A80]();
            if (*((*(v79 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v79 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v159 = *((*(v79 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_25EB6E3F8();
            }

            v4 = v79 + 8;
            sub_25EB6E418();

            v158 = sub_25EB24528;
            v50 = v1;
            v2 = v162;
            v1 = v170;
            v47 = v160;
            goto LABEL_40;
          }

          v1 = v170;
LABEL_40:

          ++v48;
          v10 = v163;
          if (v51 == v47)
          {

            v17 = v164;
            v12 = v166;
            v11 = v168;
            goto LABEL_10;
          }
        }
      }

LABEL_35:

      v18 = v16;
      v12 = v166;
      v11 = v168;
      v17 = v164;
      if ((v166 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v4 = v12 & 0x7FFFFFFFFFFFFFFFLL;
      v24 = sub_25EB6E7F8();
      if (v24)
      {
        v4 = v25;
        v176 = v24;
        type metadata accessor for PSSGGraphID(0);
        v26 = swift_dynamicCast();
        v27 = v174;
        v176 = v4;
        type metadata accessor for PSSGGraph(v26);
        swift_dynamicCast();
        v170 = v174;
        v16 = v18;
        v21 = v11;
        v172 = v27;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_83;
    }

    sub_25EB2C090(v36, isUniquelyReferenced_nonNull_native);
    v4 = v174;
    v31 = sub_25EAFD168(v29);
    if ((v37 & 1) != (v38 & 1))
    {
LABEL_218:
      type metadata accessor for PSSGGraphID(0);
      sub_25EB6E9B8();
      __break(1u);
LABEL_219:
      v155 = sub_25EB6E9B8();
      __break(1u);
      goto LABEL_220;
    }

LABEL_27:
    v7 = v174;
    if ((v37 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_83:
  sub_25EB0EC08();
  v83 = MEMORY[0x277D84F90];
  v84 = sub_25EB0E794(MEMORY[0x277D84F90]);
  *&v174 = v83;
  v176 = v83;
  v85 = v7 + 64;
  v86 = 1 << *(v7 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & *(v7 + 64);
  v1 = (v86 + 63) >> 6;
  v165 = v7;

  v89 = 0;
  if (v88)
  {
    goto LABEL_88;
  }

  while (1)
  {
LABEL_89:
    v90 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    if (v90 >= v1)
    {
      break;
    }

    v88 = *(v85 + 8 * v90);
    ++v89;
    if (v88)
    {
      while (1)
      {
        v91 = __clz(__rbit64(v88)) | (v90 << 6);
        v92 = *(*(v165 + 48) + 8 * v91);
        v93 = *(*(v165 + 56) + 16 * v91);
        v94 = v93 >> 62 ? sub_25EB6E5F8() : *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v95 = v92;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v175 = v84;
        v4 = v84;
        v97 = sub_25EAFD168(v95);
        v99 = *(v84 + 16);
        v100 = (v98 & 1) == 0;
        v35 = __OFADD__(v99, v100);
        v101 = v99 + v100;
        if (v35)
        {
          break;
        }

        v102 = v98;
        if (*(v84 + 24) >= v101)
        {
          if ((v96 & 1) == 0)
          {
            v4 = &v175;
            v107 = v97;
            sub_25EB2DD54();
            v97 = v107;
          }
        }

        else
        {
          sub_25EB2BE2C(v101, v96);
          v4 = v175;
          v97 = sub_25EAFD168(v95);
          if ((v102 & 1) != (v103 & 1))
          {
            goto LABEL_218;
          }
        }

        v88 &= v88 - 1;
        v104 = v175;
        if (v102)
        {
          v84 = v175;
          *(v175[7] + 8 * v97) = v94;

          v89 = v90;
          if (!v88)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v175[(v97 >> 6) + 8] |= 1 << v97;
          *(v104[6] + 8 * v97) = v95;
          *(v104[7] + 8 * v97) = v94;
          v105 = v104[2];
          v35 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v35)
          {
            goto LABEL_208;
          }

          v84 = v104;
          v104[2] = v106;
          v89 = v90;
          if (!v88)
          {
            goto LABEL_89;
          }
        }

LABEL_88:
        v90 = v89;
      }

LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      v153 = sub_25EB6E5F8();
      goto LABEL_186;
    }
  }

  v1 = v165;

  v108 = 1 << *(v84 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & *(v84 + 64);
  v111 = (v108 + 63) >> 6;

  v112 = 0;
  v113 = MEMORY[0x277D84F90];
  if (!v110)
  {
    goto LABEL_110;
  }

  do
  {
LABEL_108:
    while (1)
    {
      v114 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
      v115 = v114 | (v112 << 6);
      if (!*(*(v84 + 56) + 8 * v115))
      {
        break;
      }

      if (!v110)
      {
        goto LABEL_110;
      }
    }

    v117 = *(*(v84 + 48) + 8 * v115);
    MEMORY[0x25F8C6A80]();
    if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v118 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25EB6E3F8();
    }

    v4 = &v174;
    sub_25EB6E418();

    v113 = v174;
  }

  while (v110);
  while (1)
  {
LABEL_110:
    v116 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_192;
    }

    if (v116 >= v111)
    {
      break;
    }

    v110 = *(v84 + 64 + 8 * v116);
    ++v112;
    if (v110)
    {
      v112 = v116;
      goto LABEL_108;
    }
  }

  v119 = v84;

  v173 = MEMORY[0x277D84F90];
LABEL_119:
  while (2)
  {
    v120 = v113 >> 62;
    if (!(v113 >> 62))
    {
      if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_184;
      }

LABEL_121:
      if ((v113 & 0xC000000000000001) != 0)
      {
        v121 = MEMORY[0x25F8C6D90](0, v113);
      }

      else
      {
        if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_193;
        }

        v121 = *(v113 + 32);
      }

      v122 = v121;
      if (v120)
      {
        if (v113 < 0)
        {
          v4 = v113;
        }

        else
        {
          v4 = v113 & 0xFFFFFFFFFFFFFF8;
        }

        if (!sub_25EB6E5F8())
        {
          goto LABEL_202;
        }

        if (sub_25EB6E5F8() < 1)
        {
          goto LABEL_203;
        }

        v123 = sub_25EB6E5F8();
      }

      else
      {
        v123 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v123)
        {
          goto LABEL_202;
        }
      }

      v4 = v123 - 1;
      if (__OFSUB__(v123, 1))
      {
        goto LABEL_194;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v174 = v113;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v120)
        {
          v125 = v113 & 0xFFFFFFFFFFFFFF8;
          if (v4 > *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_140:
            v126 = *(v125 + 16);
            goto LABEL_142;
          }

          goto LABEL_143;
        }
      }

      else if (!v120)
      {
        v125 = v113 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_140;
      }

      sub_25EB6E5F8();
LABEL_142:
      v113 = sub_25EB6E6D8();
      *&v174 = v113;
LABEL_143:
      sub_25EB30D6C(0, 1, 0);
      *&v174 = v113;
      v127 = v122;
      v4 = &v176;
      MEMORY[0x25F8C6A80]();
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v131 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EB6E3F8();
      }

      sub_25EB6E418();
      if (!*(v1 + 16))
      {
        goto LABEL_195;
      }

      v173 = v176;
      v4 = v1;
      v128 = sub_25EAFD168(v127);
      if ((v129 & 1) == 0)
      {
        goto LABEL_196;
      }

      v4 = *(*(v1 + 56) + 16 * v128 + 8);
      if (v4 >> 62)
      {
        if (v4 < 0)
        {
          v132 = *(*(v1 + 56) + 16 * v128 + 8);
        }

        v130 = sub_25EB6E5F8();
        if (v130)
        {
LABEL_158:
          v171 = (v4 & 0xC000000000000001);
          v167 = v4 & 0xFFFFFFFFFFFFFF8;

          v1 = 0;
          v169 = v4;
          while (1)
          {
            if (v171)
            {
              v133 = MEMORY[0x25F8C6D90](v1, v4);
            }

            else
            {
              if (v1 >= *(v167 + 16))
              {
                goto LABEL_204;
              }

              v133 = *(v4 + 8 * v1 + 32);
            }

            v134 = v133;
            v135 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              goto LABEL_197;
            }

            v136 = v127;
            v4 = v119;
            v137 = swift_isUniquelyReferenced_nonNull_native();
            v175 = v4;
            v139 = sub_25EAFD168(v134);
            v140 = *(v4 + 16);
            v141 = (v138 & 1) == 0;
            v142 = v140 + v141;
            if (__OFADD__(v140, v141))
            {
              goto LABEL_198;
            }

            v143 = v138;
            if (*(v4 + 24) >= v142)
            {
              if (v137)
              {
                if ((v138 & 1) == 0)
                {
                  goto LABEL_199;
                }
              }

              else
              {
                v4 = &v175;
                sub_25EB2DD54();
                if ((v143 & 1) == 0)
                {
                  goto LABEL_199;
                }
              }
            }

            else
            {
              sub_25EB2BE2C(v142, v137);
              v4 = v175;
              v144 = sub_25EAFD168(v134);
              if ((v143 & 1) != (v145 & 1))
              {
                goto LABEL_218;
              }

              v139 = v144;
              if ((v143 & 1) == 0)
              {
                goto LABEL_199;
              }
            }

            v119 = v175;
            v146 = v175[7];
            v147 = *(v146 + 8 * v139);
            v35 = __OFSUB__(v147, 1);
            v148 = v147 - 1;
            if (v35)
            {
              goto LABEL_200;
            }

            *(v146 + 8 * v139) = v148;
            if (*(v119 + 16))
            {
              v149 = sub_25EAFD168(v134);
              v127 = v136;
              if ((v150 & 1) == 0 || *(*(v119 + 56) + 8 * v149))
              {
              }

              else
              {
                v151 = v134;
                MEMORY[0x25F8C6A80]();
                if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v152 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_25EB6E3F8();
                  v127 = v136;
                }

                sub_25EB6E418();

                v113 = v174;
              }
            }

            else
            {

              v127 = v136;
            }

            ++v1;
            v4 = v169;
            if (v135 == v130)
            {

              v1 = v165;
              goto LABEL_119;
            }
          }
        }
      }

      else
      {
        v130 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v130)
        {
          goto LABEL_158;
        }
      }

      continue;
    }

    break;
  }

  if (sub_25EB6E5F8())
  {
    if (!sub_25EB6E5F8())
    {
      goto LABEL_216;
    }

    if (!sub_25EB6E5F8())
    {
      goto LABEL_217;
    }

    goto LABEL_121;
  }

LABEL_184:

  v4 = v173;
  if (v173 >> 62)
  {
    goto LABEL_214;
  }

  v153 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_186:
  if (v153 == *(v1 + 16))
  {
  }

  else
  {

    v4 = 0;
  }

  v154 = *(v156 + 24);
  *(v156 + 24) = v4;

  sub_25EB318AC(v158);
LABEL_190:
  v155 = v4;
LABEL_220:
  result.value._rawValue = v155;
  result.is_nil = v6;
  return result;
}

void sub_25EB24528(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
}

uint64_t sub_25EB245A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;
      v12 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v12 && (sub_25EB6E988() & 1) == 0)
      {
        return 0;
      }

      if (!v7)
      {
        break;
      }

      if (!v9)
      {
        return 0;
      }

      if (v6 != v10 || v7 != v9)
      {
        v13 = sub_25EB6E988();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v8 != v11)
      {
        return 0;
      }

LABEL_7:
      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v9)
    {
      return result;
    }

LABEL_6:
    if (v8 != v11)
    {
      return result;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_25EB246BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v27 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v31 = a2;
  v32 = a2 + 56;
  v28 = v6;
  v29 = result;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v30 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 32 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = *(a2 + 40);
      v16 = a2;
      sub_25EB6EA28();

      sub_25EB6E2D8();
      sub_25EB6E2D8();
      v17 = sub_25EB6EA58();
      v18 = -1 << *(v16 + 32);
      v19 = v17 & ~v18;
      if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      v21 = *(v31 + 48);
      while (1)
      {
        v22 = (v21 + 32 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v12 && v22[1] == v11;
        if (v25 || (sub_25EB6E988() & 1) != 0)
        {
          v26 = v23 == v14 && v24 == v13;
          if (v26 || (sub_25EB6E988() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v20;
        if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v5 = v30;
      a2 = v31;
      v6 = v28;
      result = v29;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_29:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v27 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v30 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB248F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 32 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = *(v2 + 40);
    sub_25EB6EA28();

    sub_25EB6E2D8();
    v34 = v17;
    sub_25EB6EA48();
    if (v16)
    {
      sub_25EB6E2D8();
    }

    v19 = sub_25EB6EA58();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_34:

      return 0;
    }

    v22 = ~v20;
    v23 = *(a2 + 48);
    while (1)
    {
      v24 = (v23 + 32 * v21);
      v26 = v24[2];
      v25 = v24[3];
      v27 = *v24 == v15 && v24[1] == v14;
      if (!v27 && (sub_25EB6E988() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v25)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_31;
      }

LABEL_18:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    v28 = v26 == v34 && v25 == v16;
    if (!v28 && (sub_25EB6E988() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:

    v4 = v30;
    result = v31;
    v7 = v32;
    v2 = a2;
    v8 = v29;
  }

  while (v32);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_25EB24B58(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_25EB2E1A0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for PSSGResourceID(0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_25EB6E508();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_25EB6E518();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_25EB24DC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EB24E08()
{
  result = qword_27FD12070;
  if (!qword_27FD12070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12070);
  }

  return result;
}

unint64_t sub_25EB24E5C()
{
  result = qword_27FD12088;
  if (!qword_27FD12088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12080, &qword_25EB78E50);
    sub_25EB24EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12088);
  }

  return result;
}

unint64_t sub_25EB24EE0()
{
  result = qword_27FD12090;
  if (!qword_27FD12090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12090);
  }

  return result;
}

unint64_t sub_25EB24F34()
{
  result = qword_27FD120A8;
  if (!qword_27FD120A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD120A0, &qword_25EB78E58);
    sub_25EB24FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD120A8);
  }

  return result;
}

unint64_t sub_25EB24FB8()
{
  result = qword_27FD120B0;
  if (!qword_27FD120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD120B0);
  }

  return result;
}

size_t sub_25EB2500C(size_t a1, int64_t a2, char a3)
{
  result = sub_25EB25270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2502C(char *a1, int64_t a2, char a3)
{
  result = sub_25EB25460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2504C(char *a1, int64_t a2, char a3)
{
  result = sub_25EB2556C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2506C(char *a1, int64_t a2, char a3)
{
  result = sub_25EB2568C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EB2508C(void *a1, int64_t a2, char a3)
{
  result = sub_25EB25798(a1, a2, a3, *v3, &qword_27FD12420, &qword_25EB795B0, &qword_27FD12428, &qword_25EB795B8);
  *v3 = result;
  return result;
}

void *sub_25EB250CC(void *a1, int64_t a2, char a3)
{
  result = sub_25EB25798(a1, a2, a3, *v3, &qword_27FD12430, &qword_25EB795C0, &qword_27FD12438, &qword_25EB795C8);
  *v3 = result;
  return result;
}

void *sub_25EB2510C(void *a1, int64_t a2, char a3)
{
  result = sub_25EB258CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EB2512C(void *a1, int64_t a2, char a3)
{
  result = sub_25EB25A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2514C(char *a1, int64_t a2, char a3)
{
  result = sub_25EB25B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2516C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD124F0, &qword_25EB79650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_25EB25270(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EB25460(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124B0, &qword_25EB79628);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25EB2556C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124B8, &qword_25EB79630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25EB2568C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12488, &qword_25EB79600);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25EB25798(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void *sub_25EB258CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12490, &qword_25EB79608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12468, &qword_25EB795E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25EB25A1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124C0, &qword_25EB79638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124C8, &unk_25EB79640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EB25B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F28, &qword_25EB78D50);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25EB25C78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738]);
  v36 = a2;
  v13 = sub_25EB6E228();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25EB24DC0(&unk_27FD124E0, 255, MEMORY[0x277D3E738]);
      v23 = sub_25EB6E248();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25EB27F34(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25EB25F60(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
  v34 = a2;
  v13 = sub_25EB6E228();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_25EB31A70(&qword_27FD11F30, &qword_27FD11BF0, &qword_25EB78980);
      v21 = sub_25EB6E248();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_25EB281E0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_25EB26244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  v9 = sub_25EB6EA58();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25EB6E988() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25EB28484(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25EB26394(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25EB6E608();

    if (v9)
    {

      type metadata accessor for PSSGResourceID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_25EB6E5F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_25EB26CCC(v7, result + 1, &qword_27FD11E00, &unk_25EB79550, type metadata accessor for PSSGResourceID);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_25EB27A90(v22 + 1, &qword_27FD11E00, &unk_25EB79550);
    }

    v20 = v8;
    sub_25EB0EE64();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for PSSGResourceID(0);
  v11 = *(v6 + 40);
  v12 = sub_25EB6E508();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_25EB287F8(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27FD11E00, &unk_25EB79550, type metadata accessor for PSSGResourceID, sub_25EB0979C);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_25EB6E518();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_25EB26618(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a5)
  {
    sub_25EB6E2D8();
  }

  v12 = sub_25EB6EA58();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_20:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_25EB28604(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v16 = ~v14;
  v30 = v10;
  v17 = *(v10 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v20 = v18[2];
    v19 = v18[3];
    v21 = *v18 == a2 && v18[1] == a3;
    if (!v21 && (sub_25EB6E988() & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v19)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_6:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a5)
  {
    goto LABEL_6;
  }

  v22 = v20 == a4 && v19 == a5;
  if (!v22 && (sub_25EB6E988() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:

  v26 = (*(v30 + 48) + 32 * v15);
  v27 = v26[1];
  v29 = v26[2];
  v28 = v26[3];
  *a1 = *v26;
  a1[1] = v27;
  a1[2] = v29;
  a1[3] = v28;

  return 0;
}

uint64_t sub_25EB26820(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25EB6E608();

    if (v9)
    {

      type metadata accessor for PSSGGraphID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_25EB6E5F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_25EB26CCC(v7, result + 1, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_25EB27A90(v22 + 1, &unk_27FD123B0, qword_25EB78CA0);
    }

    v20 = v8;
    sub_25EB0EE64();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for PSSGGraphID(0);
  v11 = *(v6 + 40);
  v12 = sub_25EB6E508();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_25EB287F8(v20, v14, isUniquelyReferenced_nonNull_native, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID, sub_25EB0991C);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_25EB6E518();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_25EB26AA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  v12 = sub_25EB6EA58();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_25EB6E988() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_25EB6E988() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_25EB28978(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_25EB26CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_25EB6E688();
    v22 = v8;
    sub_25EB6E5B8();
    if (sub_25EB6E638())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_25EB27A90(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_25EB6E508();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_25EB6E638());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_25EB26EC4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25EB6E138();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  result = sub_25EB6E678();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738]);
      result = sub_25EB6E228();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25EB27224(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  result = sub_25EB6E678();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
      result = sub_25EB6E228();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25EB27584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25EB6EA28();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25EB277E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_25EB6EA28();
      v36 = v21;
      sub_25EB6E2D8();
      if (v23)
      {
        sub_25EB6EA48();
        v25 = v22;
        sub_25EB6E2D8();
      }

      else
      {
        v25 = v22;
        sub_25EB6EA48();
      }

      result = sub_25EB6EA58();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v36;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25EB27A90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25EB6E678();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_25EB6E508();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_25EB27CB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25EB27F34(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EB26EC4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25EB091C8();
      goto LABEL_12;
    }

    sub_25EB28B44(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738]);
  v15 = sub_25EB6E228();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25EB24DC0(&unk_27FD124E0, 255, MEMORY[0x277D3E738]);
      v23 = sub_25EB6E248();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB281E0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EB27224(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25EB09400();
      goto LABEL_12;
    }

    sub_25EB28E64(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
  v15 = sub_25EB6E228();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25EB31A70(&qword_27FD11F30, &qword_27FD11BF0, &qword_25EB78980);
      v23 = sub_25EB6E248();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB28484(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25EB27584(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25EB09640();
      goto LABEL_16;
    }

    sub_25EB29184(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  result = sub_25EB6EA58();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25EB6E988();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB28604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_25EB277E4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_25EB097B0();
      goto LABEL_27;
    }

    sub_25EB293BC(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a4)
  {
    sub_25EB6E2D8();
  }

  result = sub_25EB6EA58();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      result = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_25EB6E988(), (result & 1) != 0))
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (result = sub_25EB6E988(), (result & 1) != 0))
            {
LABEL_26:
              result = sub_25EB6E9A8();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_27:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void sub_25EB287F8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_25EB27A90(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_25EB29658(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = *(*v7 + 40);
  v15 = sub_25EB6E508();
  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v12(0);
    do
    {
      v18 = *(*(v13 + 48) + 8 * a2);
      v19 = sub_25EB6E518();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25EB6E9A8();
  __break(1u);
}

uint64_t sub_25EB28978(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_25EB27CB0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_25EB09A70();
      goto LABEL_22;
    }

    sub_25EB29864(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  result = sub_25EB6EA58();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_25EB6E988(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_25EB6E988();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_25EB6E9A8();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_25EB28B44(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25EB6E138();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  v10 = sub_25EB6E678();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738]);
      result = sub_25EB6E228();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25EB28E64(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  v10 = sub_25EB6E678();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
      result = sub_25EB6E228();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25EB29184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25EB6EA28();

      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25EB293BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_25EB6EA28();

      v35 = v20;
      sub_25EB6E2D8();
      if (v23)
      {
        sub_25EB6EA48();
        v25 = v22;
        sub_25EB6E2D8();
      }

      else
      {
        v25 = v22;
        sub_25EB6EA48();
      }

      result = sub_25EB6EA58();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      v3 = v34;
      *v15 = v35;
      v15[1] = v21;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25EB29658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25EB6E678();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_25EB6E508();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_25EB29864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  result = sub_25EB6E678();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_25EB6EA28();

      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_25EB29AC8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_25EB2E034(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_25EB29B58(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_25EAFD168(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_25EB2C310(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_25EB2D5C8(&qword_27FD11ED8, &qword_25EB78D10);
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25EB6E7E8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_25EB6E5F8();
  v8 = sub_25EB29F34(v4, v7, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID, type metadata accessor for PSSGGraph);

  v9 = sub_25EAFD168(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_25EB2C310(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25EB29D50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25EB29DA0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_25EAFD114(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_25EB2C310(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_25EB2D5C8(&qword_27FD11ED0, &unk_25EB795A0);
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25EB6E7E8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_25EB6E5F8();
  v8 = sub_25EB29F34(v4, v7, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);

  v9 = sub_25EAFD114(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_25EB2C310(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_25EB29F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_25EB6E888();
    v30 = v10;
    sub_25EB6E768();
    v11 = sub_25EB6E7F8();
    if (v11)
    {
      v27 = a4;
      v12 = v11;
      a5(0);
      v13 = v12;
      do
      {
        v28 = v13;
        v21 = swift_dynamicCast();
        a6(v21);
        swift_dynamicCast();
        v22 = *(v10 + 16);
        if (*(v10 + 24) <= v22)
        {
          sub_25EB2ADDC(v22 + 1, 1, a3, v27);
        }

        v10 = v30;
        v14 = *(v30 + 40);
        result = sub_25EB6E508();
        v16 = v30 + 64;
        v17 = -1 << *(v30 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v30 + 64 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v30 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = 0;
          v24 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v25 = v19 == v24;
            if (v19 == v24)
            {
              v19 = 0;
            }

            v23 |= v25;
            v26 = *(v16 + 8 * v19);
          }

          while (v26 == -1);
          v20 = __clz(__rbit64(~v26)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v30 + 48) + 8 * v20) = v29;
        *(*(v30 + 56) + 8 * v20) = v28;
        ++*(v30 + 16);
        v13 = sub_25EB6E7F8();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v10;
}

uint64_t sub_25EB2A170(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123D0, &qword_25EB78DC8);
  v43 = a2;
  result = sub_25EB6E878();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
      result = sub_25EB6E228();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25EB2A550(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_25EB6E138();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - v12;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
  v52 = a2;
  result = sub_25EB6E878();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
      result = sub_25EB6E228();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_25EB2A9FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F78, &qword_25EB78DD8);
  v43 = a2;
  result = sub_25EB6E878();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980);
      result = sub_25EB6E228();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25EB2ADDC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EB6E878();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_25EB6E508();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_25EB2B03C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
  v41 = a2;
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 32 * v22);
      v24 = v23[1];
      v25 = v23[2];
      v26 = v23[3];
      v45 = v25;
      v46 = *v23;
      v27 = (*(v5 + 56) + 40 * v22);
      v28 = *v27;
      v29 = v27[1];
      v43 = v27[3];
      v44 = v27[2];
      v42 = v27[4];
      if ((v41 & 1) == 0)
      {

        sub_25EB0E880(v28, v29);
      }

      v30 = *(v8 + 40);
      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6EA48();
      if (v26)
      {
        sub_25EB6E2D8();
      }

      result = sub_25EB6EA58();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v46;
      v17[1] = v24;
      v17[2] = v45;
      v17[3] = v26;
      v18 = (*(v8 + 56) + 40 * v16);
      *v18 = v28;
      v18[1] = v29;
      v18[2] = v44;
      v18[3] = v43;
      v18[4] = v42;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v41)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25EB2B36C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
  v42 = a2;
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 32 * v22);
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      v45 = v26;
      v46 = *v24;
      v28 = (v23 + 24 * v22);
      v29 = v28[1];
      v44 = *v28;
      v30 = v28[2];
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v8 + 40);
      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v46;
      v17[1] = v25;
      v17[2] = v45;
      v17[3] = v27;
      v18 = (*(v8 + 56) + 24 * v16);
      v13 = v43;
      *v18 = v44;
      v18[1] = v29;
      v18[2] = v30;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25EB2B66C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
  v40 = a2;
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25EB6EA28();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25EB2B92C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
  v33 = a2;
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_25EB6EA28();
      sub_25EB2F4F0(v34, v21);
      result = sub_25EB6EA58();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25EB2BBC4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EB6E878();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_25EB6E508();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25EB2BE2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_25EB6E508();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25EB2C090(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
  result = sub_25EB6E878();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      result = sub_25EB6E508();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_25EB2C310(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EB6E578() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_25EB6E508();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_25EB2C49C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EB6E578() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_25EB6E508();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_25EB2C628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *v3;
  v15 = sub_25EAFD040(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25EB2CD68();
      goto LABEL_7;
    }

    sub_25EB2A170(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25EAFD040(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_25EB2CCA4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_25EB6E9B8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

id sub_25EB2C7FC(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      sub_25EB2ADDC(v21, a3 & 1, a5, a6);
      v24 = *v12;
      v16 = a4(a2);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_18:
        a7(0);
        sub_25EB6E9B8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      a7 = v16;
      sub_25EB2D5C8(a5, a6);
      v16 = a7;
    }
  }

  v26 = *v12;
  if (v22)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v16);
    *(v27 + 8 * v16) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v16 >> 6) + 8] |= 1 << v16;
  *(v26[6] + 8 * v16) = a2;
  *(v26[7] + 8 * v16) = a1;
  v29 = v26[2];
  v20 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v30;

  return a2;
}

uint64_t sub_25EB2C9A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25EAFD1BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25EB2B92C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_25EAFD1BC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12410, &unk_25EB79580);
        result = sub_25EB6E9B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_25EB2DA9C();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

id sub_25EB2CB14(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_25EAFD168(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_25EB2BBC4(v17, a3 & 1, a4, a5);
      v21 = *v8;
      v12 = sub_25EAFD168(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        type metadata accessor for PSSGGraphID(0);
        result = sub_25EB6E9B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_25EB2DC00(a4, a5);
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

uint64_t sub_25EB2CCA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_25EB2CD68()
{
  v1 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123D0, &qword_25EB78DC8);
  v4 = *v0;
  v5 = sub_25EB6E868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_25EB2CFE4()
{
  v1 = v0;
  v43 = sub_25EB6E138();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
  v6 = *v0;
  v7 = sub_25EB6E868();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_25EB2D340()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F78, &qword_25EB78DD8);
  v4 = *v0;
  v5 = sub_25EB6E868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_25EB2D5C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25EB2D718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
  v30 = v0;
  v1 = *v0;
  v31 = sub_25EB6E868();
  v32 = v1;
  if (*(v1 + 16))
  {
    result = (v31 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v31 + 32)) + 63) >> 6;
    if (v31 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v31 + 16) = *(v32 + 16);
    v7 = 1 << *(v32 + 32);
    v8 = *(v32 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 32 * v15;
        v17 = (*(v32 + 48) + 32 * v15);
        v18 = *v17;
        v19 = v17[1];
        v21 = v17[2];
        v20 = v17[3];
        v15 *= 40;
        v22 = (*(v32 + 56) + v15);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v31 + 48) + v16);
        *v28 = v18;
        v28[1] = v19;
        v28[2] = v21;
        v28[3] = v20;
        v29 = (*(v31 + 56) + v15);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;

        sub_25EB0E880(v23, v24);
      }

      while (v10);
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
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
  }

  return result;
}

void *sub_25EB2D8F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
  v2 = *v0;
  v3 = sub_25EB6E868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 24;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v28[2] = v22;
        v28[3] = v23;
        v29 = (*(v4 + 56) + v17);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25EB2DA9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
  v2 = *v0;
  v3 = sub_25EB6E868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25EB2DC00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_25EB2DD54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
  v2 = *v0;
  v3 = sub_25EB6E868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25EB2DEB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
  v2 = *v0;
  v3 = sub_25EB6E868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_25EB2E034(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
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
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_25EB08FC8(a1, a2, v20, a3);
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

void sub_25EB2E1A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_25EB6E5F8())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_25EB6E648();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25EB2E2A0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v48 = *(a1 + 16);
  if (!v48)
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 40);
  v12 = *a3;
  v13 = *(a1 + 32);
  v14 = v11;
  v16 = a4(v13);
  v17 = v12[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = v15;
  if (v12[3] >= v19)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_25EB2D5C8(a5, a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v24 = swift_allocError();
    swift_willThrow();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

  sub_25EB2ADDC(v19, a2 & 1, a5, a6);
  v21 = *a3;
  v22 = a4(v13);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_27:
    a7(0);
    sub_25EB6E9B8();
    __break(1u);
LABEL_28:
    sub_25EB6E6B8();
    MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
    a7(0);
    sub_25EB6E748();
    MEMORY[0x25F8C69B0](39, 0xE100000000000000);
    sub_25EB6E838();
    __break(1u);
    return;
  }

  v16 = v22;
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_12:
  v26 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v26[6] + 8 * v16) = v13;
  *(v26[7] + 8 * v16) = v14;
  v27 = v26[2];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26[2] = v29;
  if (v48 != 1)
  {
    v30 = (a1 + 56);
    v31 = 1;
    while (v31 < *(a1 + 16))
    {
      v32 = *v30;
      v33 = *a3;
      v13 = *(v30 - 1);
      v14 = v32;
      v34 = a4(v13);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v28 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v28)
      {
        goto LABEL_24;
      }

      v39 = v35;
      if (v33[3] < v38)
      {
        sub_25EB2ADDC(v38, 1, a5, a6);
        v40 = *a3;
        v34 = a4(v13);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v39)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v42[6] + 8 * v34) = v13;
      *(v42[7] + 8 * v34) = v14;
      v43 = v42[2];
      v28 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v28)
      {
        goto LABEL_25;
      }

      ++v31;
      v42[2] = v44;
      v30 += 2;
      if (v48 == v31)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void sub_25EB2E64C(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25EB6E9B8();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v3 + v5 + 48);
    v41 = *(v3 + v5 + 32);
    v42 = v6;
    v7 = *(v3 + v5 + 16);
    v39 = *(v3 + v5);
    v40 = v7;
    v8 = *(v3 + v5 + 64);
    v43 = v8;
    v9 = *(&v42 + 1);
    v35 = v42;
    v34 = v41;
    v10 = v7;
    v11 = v39;
    sub_25EB0EDAC(&v39, v38, &qword_27FD12468, &qword_25EB795E0);
    if (!*(&v11 + 1))
    {
      goto LABEL_18;
    }

    v32 = v9;
    v33 = v8;
    v39 = v11;
    v40 = v10;
    v12 = *a3;
    v14 = sub_25EAFCA88(v11, *(&v11 + 1), v10, *(&v10 + 1));
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25EB2D718();
      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v23 = (v22[6] + 32 * v14);
    *v23 = v11;
    v23[1] = v10;
    v24 = v22[7] + 40 * v14;
    *v24 = v34;
    *(v24 + 16) = v35;
    *(v24 + 24) = v32;
    *(v24 + 32) = v33;
    v25 = v22[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    ++v4;
    v22[2] = v27;
    v5 += 72;
    a2 = 1;
    v3 = a1;
    if (v31 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_25EB2B03C(v17, a2 & 1);
  v19 = *a3;
  v20 = sub_25EAFCA88(v11, *(&v11 + 1), v10, *(&v10 + 1));
  if ((v18 & 1) != (v21 & 1))
  {
    goto LABEL_23;
  }

  v14 = v20;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v44 = v28;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_25EB315C4(v34, *(&v34 + 1));

    return;
  }

LABEL_24:
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
  sub_25EB6E748();
  MEMORY[0x25F8C69B0](39, 0xE100000000000000);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB2E9CC(uint64_t a1, char a2, void *a3)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = (a1 + 80);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25EB6E9B8();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v5 - 1);
    v6 = *v5;
    v9 = *(v5 - 3);
    v8 = *(v5 - 2);
    v10 = *(v5 - 5);
    v11 = *(v5 - 4);
    v12 = *(v5 - 6);

    if (!v10)
    {
      goto LABEL_18;
    }

    v35 = v8;
    v36 = v4;
    v13 = a2;
    v37 = v6;
    v14 = *a3;
    v16 = sub_25EAFCB44(v12, v10, v11, v9);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (v13)
    {
      v24 = v36;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25EB2D8F4();
      v24 = v36;
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v25 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = (v25[6] + 32 * v16);
    *v26 = v12;
    v26[1] = v10;
    v26[2] = v11;
    v26[3] = v9;
    v27 = (v25[7] + 24 * v16);
    *v27 = v35;
    v27[1] = v7;
    v27[2] = v37;
    v28 = v25[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_22;
    }

    v4 = v24 + 1;
    v25[2] = v30;
    v5 += 7;
    a2 = 1;
    if (v33 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_25EB2B36C(v19, v13 & 1);
  v21 = *a3;
  v22 = sub_25EAFCB44(v12, v10, v11, v9);
  if ((v20 & 1) != (v23 & 1))
  {
    goto LABEL_23;
  }

  v16 = v22;
  v24 = v36;
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_allocError();
  swift_willThrow();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
  sub_25EB6E748();
  MEMORY[0x25F8C69B0](39, 0xE100000000000000);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB2ED1C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_25EB6E5F8())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    sub_25EB6E478();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_25EB0EC08();
      return;
    }

    while (1)
    {
      v18 = sub_25EB09E84(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_25EB6E638())
      {
        type metadata accessor for PSSGGraphID(0);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_25EB2EF50(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x25F8C6CE0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_25EB6E5D8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_25EB6E5E8();
    swift_dynamicCast();
    v5 = v18;
    v10 = *(a4 + 40);
    v11 = sub_25EB6E508();
    v12 = -1 << *(a4 + 32);
    v8 = v11 & ~v12;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * v8);
        v15 = sub_25EB6E518();

        if (v15)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v16 = *(*(a4 + 48) + 8 * v8);

  v17 = v16;
}

void sub_25EB2F15C(uint64_t a1, int a2, char a3, uint64_t a4, void (*a5)(void), void (*a6)())
{
  if (a3)
  {
    if (sub_25EB6E798() == *(a4 + 36))
    {
      sub_25EB6E7A8();
      a5(0);
      swift_dynamicCast();
      a6();
      v10 = v9;

      if (v10)
      {
        sub_25EB6E778();
        sub_25EB6E7C8();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_25EB6E588();
  v11 = *(a4 + 36);
}

void sub_25EB2F2C0(void *a1, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)(), void (*a8)(uint64_t))
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_25EB6E7D8();
      a6(0);
      v13 = swift_dynamicCast();
      a8(v13);
      swift_dynamicCast();
      *a1 = v20;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_25EB6E798() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_25EB6E7A8();
  a6(0);
  swift_dynamicCast();
  a2 = a7();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v17 = *(*(a5 + 48) + 8 * a2);
  v18 = *(*(a5 + 56) + 8 * a2);
  *a1 = v18;
  v17;
  v19 = v18;
}

uint64_t sub_25EB2F48C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25EB6E5F8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_25EB6E6D8();
}

void sub_25EB2F4F0(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_25EB6EA58();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_25EB6E5B8();
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    sub_25EB6E478();
    a2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_25EB6E638())
    {
LABEL_20:
      sub_25EB0EC08();
      MEMORY[0x25F8C7100](v10);
      return;
    }

    type metadata accessor for PSSGResourceID(0);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_25EB6E508();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_25EB2F71C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v3)
  {
    sub_25EB0E880(*a1, 0);
    if (!v8)
    {
      sub_25EB0E880(v7, 0);
      v3 = 0;
      goto LABEL_22;
    }

    sub_25EB0E880(v7, v8);
    goto LABEL_17;
  }

  if (!v8)
  {
    sub_25EB0E880(*a1, v3);
    sub_25EB0E880(v7, 0);
    sub_25EB0E880(v2, v3);

LABEL_17:
    sub_25EB315C4(v2, v3);
    v15 = v7;
    v16 = v8;
LABEL_18:
    sub_25EB315C4(v15, v16);
    return 0;
  }

  if (v2 != v7 || v3 != v8)
  {
    v13 = *a1;
    if ((sub_25EB6E988() & 1) == 0)
    {
      sub_25EB0E880(v2, v3);
      sub_25EB0E880(v7, v8);
      sub_25EB0E880(v2, v3);
      sub_25EB315C4(v7, v8);

      v15 = v2;
      v16 = v3;
      goto LABEL_18;
    }
  }

  if (v5 != v10 || v4 != v9)
  {
    v18 = sub_25EB6E988();
    sub_25EB0E880(v2, v3);
    sub_25EB0E880(v7, v8);
    sub_25EB0E880(v2, v3);
    sub_25EB315C4(v7, v8);

    sub_25EB315C4(v2, v3);
    if (v18)
    {
      goto LABEL_23;
    }

    return 0;
  }

  sub_25EB0E880(v2, v3);
  sub_25EB0E880(v7, v8);
  sub_25EB0E880(v2, v3);
  sub_25EB315C4(v7, v8);

LABEL_22:
  sub_25EB315C4(v2, v3);
LABEL_23:

  return sub_25EB246BC(v6, v11);
}