uint64_t GenerativePlayground.possibleImageScalings.getter()
{
  v1 = sub_19A3304C4(MEMORY[0x1E69E7CC0]);
  v149[16] = &type metadata for NoOpImageScaler;
  v149[17] = &off_1F0DAD170;
  v2 = *(v0 + 96);
  v3 = type metadata accessor for MediaAnalysisServiceImageScaler();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v149[21] = v3;
  v149[22] = &off_1F0DB0178;
  v149[18] = v4;
  v5 = v2;
  v6 = 0;
  for (i = 0; ; i = 1)
  {
    v8 = v6;
    v9 = &v149[5 * i + 13];
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = (*(v11 + 1))(v10, v11);
    if (v12)
    {
      break;
    }

LABEL_3:
    v6 = 1;
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE28);
      swift_arrayDestroy();
      return v1;
    }
  }

  v13 = v12;
  v135 = v8;
  v14 = 0;
  v15 = v12 + 64;
  v16 = 1 << *(v12 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v141 = v19;
  v142 = v12 + 64;
  v136 = v12;
  while (v18)
  {
    v20 = v14;
LABEL_17:
    v21 = __clz(__rbit64(v18)) | (v20 << 6);
    v22 = *(*(v13 + 48) + 16 * v21);
    v18 &= v18 - 1;
    v23 = *(*(v13 + 56) + 8 * v21);
    v24 = *(*(v13 + 48) + 16 * v21 + 8);
    v143 = v22;
    if (*(v1 + 2) && (v140 = v22, v25 = sub_19A31FCD8(v22, *(&v22 + 1)), (v26 & 1) != 0))
    {
      v139 = v24;
      v137 = v1;
      v27 = *(*(v1 + 7) + 8 * v25);
      v28 = *(v27 + 16);
      v29 = sub_19A332208();

      v30 = MEMORY[0x19A900F10](v28, &type metadata for PixelDimensions, v29);
      v146 = *(v27 + 16);
      v138 = v23;
      if (v146)
      {
        v31 = 0;
        v144 = v27 + 32;
        while (1)
        {
          v32 = v30;
          v33 = (v30 + 56);
          while (1)
          {
            v34 = (v144 + 16 * v31);
            v35 = *v34;
            v36 = v34[1];
            ++v31;
            sub_19A5740BC();
            MEMORY[0x19A901C40](v35);
            MEMORY[0x19A901C40](v36);
            v37 = sub_19A57410C();
            v38 = -1 << *(v30 + 32);
            v13 = v37 & ~v38;
            if (((*&v33[(v13 >> 3) & 0xFFFFFFFFFFFFFF8] >> v13) & 1) == 0)
            {
              break;
            }

            v39 = ~v38;
            while (1)
            {
              v40 = (*(v30 + 48) + 16 * v13);
              v42 = *v40;
              v41 = v40[1];
              if (v42 == v35 && v41 == v36)
              {
                break;
              }

              v13 = (v13 + 1) & v39;
              if (((*&v33[(v13 >> 3) & 0xFFFFFFFFFFFFFF8] >> v13) & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            if (v31 == v146)
            {
              goto LABEL_31;
            }
          }

LABEL_32:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (*(v30 + 24) <= *(v30 + 16))
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_19A3246A0();
            }

            else
            {
              sub_19A327D6C();
            }

            sub_19A5740BC();
            MEMORY[0x19A901C40](v35);
            MEMORY[0x19A901C40](v36);
            v45 = sub_19A57410C();
            v46 = -1 << *(v30 + 32);
            v13 = v45 & ~v46;
            if ((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
            {
              v47 = ~v46;
              do
              {
                v48 = (*(v30 + 48) + 16 * v13);
                v50 = *v48;
                v49 = v48[1];
                if (v50 == v35 && v49 == v36)
                {
                  goto LABEL_151;
                }

                v13 = (v13 + 1) & v47;
              }

              while (((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
            }
          }

          else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE30);
            v56 = sub_19A5738FC();
            v30 = v56;
            if (*(v32 + 16))
            {
              v57 = (v56 + 56);
              v58 = ((1 << *(v30 + 32)) + 63) >> 6;
              if (v30 != v32 || v57 >= &v33[8 * v58])
              {
                memmove(v57, v33, 8 * v58);
              }

              v59 = 0;
              *(v30 + 16) = *(v32 + 16);
              v60 = 1 << *(v32 + 32);
              if (v60 < 64)
              {
                v61 = ~(-1 << v60);
              }

              else
              {
                v61 = -1;
              }

              v62 = v61 & *(v32 + 56);
              for (j = (v60 + 63) >> 6; v62; *(*(v30 + 48) + 16 * v65) = *(*(v32 + 48) + 16 * v65))
              {
                v64 = __clz(__rbit64(v62));
                v62 &= v62 - 1;
                v65 = v64 | (v59 << 6);
LABEL_62:
                ;
              }

              v66 = v59;
              while (1)
              {
                v59 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_149;
                }

                if (v59 >= j)
                {
                  break;
                }

                v67 = *&v33[8 * v59];
                ++v66;
                if (v67)
                {
                  v62 = (v67 - 1) & v67;
                  v65 = __clz(__rbit64(v67)) | (v59 << 6);
                  goto LABEL_62;
                }
              }
            }
          }

          *(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
          v52 = (*(v30 + 48) + 16 * v13);
          *v52 = v35;
          v52[1] = v36;
          v53 = *(v30 + 16);
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_142;
          }

          *(v30 + 16) = v55;
          if (v31 == v146)
          {
LABEL_31:

            v23 = v138;
            goto LABEL_76;
          }
        }
      }

LABEL_76:
      v147 = *(v23 + 16);
      if (v147)
      {
        v81 = 0;
        v145 = v23 + 32;
        do
        {
          v82 = v30;
          v83 = (v30 + 56);
          while (1)
          {
            v84 = (v145 + 16 * v81);
            v85 = *v84;
            v86 = v84[1];
            ++v81;
            sub_19A5740BC();
            MEMORY[0x19A901C40](v85);
            MEMORY[0x19A901C40](v86);
            v87 = sub_19A57410C();
            v88 = -1 << *(v30 + 32);
            v13 = v87 & ~v88;
            if (((*&v83[(v13 >> 3) & 0xFFFFFFFFFFFFFF8] >> v13) & 1) == 0)
            {
              break;
            }

            v89 = ~v88;
            while (1)
            {
              v90 = (*(v30 + 48) + 16 * v13);
              v92 = *v90;
              v91 = v90[1];
              if (v92 == v85 && v91 == v86)
              {
                break;
              }

              v13 = (v13 + 1) & v89;
              if (((*&v83[(v13 >> 3) & 0xFFFFFFFFFFFFFF8] >> v13) & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            if (v81 == v147)
            {

              v117 = *(v30 + 16);
              if (v117)
              {
                goto LABEL_123;
              }

              goto LABEL_128;
            }
          }

LABEL_89:
          v94 = swift_isUniquelyReferenced_nonNull_native();
          if (*(v30 + 24) <= *(v30 + 16))
          {
            if (v94)
            {
              sub_19A3246A0();
            }

            else
            {
              sub_19A327D6C();
            }

            sub_19A5740BC();
            MEMORY[0x19A901C40](v85);
            MEMORY[0x19A901C40](v86);
            v95 = sub_19A57410C();
            v96 = -1 << *(v30 + 32);
            v13 = v95 & ~v96;
            if ((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
            {
              v97 = ~v96;
              do
              {
                v98 = (*(v30 + 48) + 16 * v13);
                v100 = *v98;
                v99 = v98[1];
                if (v100 == v85 && v99 == v86)
                {
                  goto LABEL_151;
                }

                v13 = (v13 + 1) & v97;
              }

              while (((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
            }
          }

          else if ((v94 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE30);
            v105 = sub_19A5738FC();
            v30 = v105;
            if (*(v82 + 16))
            {
              v106 = (v105 + 56);
              v107 = ((1 << *(v30 + 32)) + 63) >> 6;
              if (v30 != v82 || v106 >= &v83[8 * v107])
              {
                memmove(v106, v83, 8 * v107);
              }

              v108 = 0;
              *(v30 + 16) = *(v82 + 16);
              v109 = 1 << *(v82 + 32);
              if (v109 < 64)
              {
                v110 = ~(-1 << v109);
              }

              else
              {
                v110 = -1;
              }

              v111 = v110 & *(v82 + 56);
              for (k = (v109 + 63) >> 6; v111; *(*(v30 + 48) + 16 * v114) = *(*(v82 + 48) + 16 * v114))
              {
                v113 = __clz(__rbit64(v111));
                v111 &= v111 - 1;
                v114 = v113 | (v108 << 6);
LABEL_119:
                ;
              }

              v115 = v108;
              while (1)
              {
                v108 = v115 + 1;
                if (__OFADD__(v115, 1))
                {
                  goto LABEL_150;
                }

                if (v108 >= k)
                {
                  break;
                }

                v116 = *&v83[8 * v108];
                ++v115;
                if (v116)
                {
                  v111 = (v116 - 1) & v116;
                  v114 = __clz(__rbit64(v116)) | (v108 << 6);
                  goto LABEL_119;
                }
              }
            }
          }

          *(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
          v102 = (*(v30 + 48) + 16 * v13);
          *v102 = v85;
          v102[1] = v86;
          v103 = *(v30 + 16);
          v54 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v54)
          {
            goto LABEL_143;
          }

          *(v30 + 16) = v104;
        }

        while (v81 != v147);
      }

      v117 = *(v30 + 16);
      if (v117)
      {
LABEL_123:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE38);
        v118 = swift_allocObject();
        v119 = _swift_stdlib_malloc_size(v118);
        v120 = v119 - 32;
        if (v119 < 32)
        {
          v120 = v119 - 17;
        }

        *(v118 + 16) = v117;
        *(v118 + 24) = 2 * (v120 >> 4);
        v148 = sub_19A32EA2C(v149, (v118 + 32), v117, v30);
        v13 = v149[4];

        sub_19A2EA480();
        if (v148 != v117)
        {
          goto LABEL_147;
        }
      }

      else
      {
LABEL_128:
        v118 = MEMORY[0x1E69E7CC0];
      }

      v149[0] = v118;
      v13 = 0;
      sub_19A31C4E8(v149);

      v121 = v149[0];
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v137;
      v123 = sub_19A31FCD8(v140, v139);
      v125 = *(v137 + 2);
      v126 = (v124 & 1) == 0;
      v54 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v54)
      {
        goto LABEL_146;
      }

      v128 = v124;
      if (*(v137 + 3) >= v127)
      {
        v13 = v136;
        v130 = v143;
        if (v122)
        {
          v1 = v149[0];
          if (v124)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v132 = v123;
          sub_19A32CA28();
          v130 = v143;
          v123 = v132;
          v1 = v149[0];
          if (v128)
          {
            goto LABEL_136;
          }
        }
      }

      else
      {
        sub_19A32A0A8(v127, v122);
        v123 = sub_19A31FCD8(v140, v139);
        v13 = v136;
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_152;
        }

        v130 = v143;
        v1 = v149[0];
        if (v128)
        {
LABEL_136:
          *(*(v1 + 7) + 8 * v123) = v121;
          goto LABEL_10;
        }
      }

      *&v1[8 * (v123 >> 6) + 64] |= 1 << v123;
      *(*(v1 + 6) + 16 * v123) = v130;
      *(*(v1 + 7) + 8 * v123) = v121;
      v133 = *(v1 + 2);
      v54 = __OFADD__(v133, 1);
      v80 = v133 + 1;
      if (v54)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v68 = v23;

      v69 = swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v1;
      v70 = v24;
      v71 = sub_19A31FCD8(v143, v24);
      v73 = *(v1 + 2);
      v74 = (v72 & 1) == 0;
      v54 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v54)
      {
        goto LABEL_144;
      }

      v76 = v72;
      if (*(v1 + 3) >= v75)
      {
        v78 = v143;
        if ((v69 & 1) == 0)
        {
          v131 = v71;
          sub_19A32CA28();
          v78 = v143;
          v71 = v131;
        }
      }

      else
      {
        sub_19A32A0A8(v75, v69);
        v71 = sub_19A31FCD8(v143, v70);
        if ((v76 & 1) != (v77 & 1))
        {
          goto LABEL_152;
        }

        v78 = v143;
      }

      v1 = v149[0];
      if (v76)
      {
        *(*(v149[0] + 7) + 8 * v71) = v68;
LABEL_10:

        goto LABEL_11;
      }

      *&v149[0][8 * (v71 >> 6) + 64] |= 1 << v71;
      *(*(v1 + 6) + 16 * v71) = v78;
      *(*(v1 + 7) + 8 * v71) = v68;
      v79 = *(v1 + 2);
      v54 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v54)
      {
        goto LABEL_145;
      }
    }

    *(v1 + 2) = v80;
LABEL_11:
    v14 = v20;
    v19 = v141;
    v15 = v142;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v8 = v135;
      goto LABEL_3;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  sub_19A57403C();
  __break(1u);
LABEL_152:
  sub_19A57404C();
  __break(1u);

  __break(1u);
  return result;
}

char *GenerativePlayground.possibleImageScalingDimensions(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v42[17] = &type metadata for NoOpImageScaler;
  v42[18] = &off_1F0DAD170;
  v4 = *(v1 + 96);
  v5 = type metadata accessor for MediaAnalysisServiceImageScaler();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v42[22] = v5;
  v42[23] = &off_1F0DB0178;
  v42[19] = v6;
  v7 = v4;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CD0];
  v41 = v2;
  v40 = v3;
  do
  {
    v11 = v8;
    v12 = &v42[5 * v9 + 14];
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v15 = (*(v14 + 1))(v13, v14);
    if (v15)
    {
      v16 = v15;
      if (*(v15 + 16) && (v17 = sub_19A31FCD8(v2, v3), (v18 & 1) != 0) && (v19 = *(*(v16 + 56) + 8 * v17), , , (v20 = *(v19 + 16)) != 0))
      {
        v21 = 0;
        v22 = v19 + 32;
        do
        {
          v24 = v10 + 56;
          while (1)
          {
            v25 = (v22 + 16 * v21);
            v26 = *v25;
            v27 = v25[1];
            ++v21;
            sub_19A5740BC();
            MEMORY[0x19A901C40](v26);
            MEMORY[0x19A901C40](v27);
            v28 = sub_19A57410C();
            v29 = -1 << *(v10 + 32);
            v30 = v28 & ~v29;
            if (((*(v24 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              break;
            }

            v31 = ~v29;
            while (1)
            {
              v32 = (*(v10 + 48) + 16 * v30);
              v34 = *v32;
              v33 = v32[1];
              if (v34 == v26 && v33 == v27)
              {
                break;
              }

              v30 = (v30 + 1) & v31;
              if (((*(v24 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

            if (v21 == v20)
            {
              goto LABEL_20;
            }
          }

LABEL_9:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42[0] = v10;
          sub_19A325D0C(v26, v27, v30, isUniquelyReferenced_nonNull_native);
        }

        while (v21 != v20);
LABEL_20:

        v2 = v41;
        v3 = v40;
      }

      else
      {
      }
    }

    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE28);
  swift_arrayDestroy();
  v36 = *(v10 + 16);
  if (!v36)
  {
    goto LABEL_25;
  }

  v37 = sub_19A31EF24(*(v10 + 16), 0, &qword_1EAF9FE38);
  v38 = sub_19A32EA2C(v42, v37 + 2, v36, v10);

  sub_19A2EA480();
  if (v38 != v36)
  {
    __break(1u);
LABEL_25:
    v37 = MEMORY[0x1E69E7CC0];
  }

  v42[0] = v37;
  sub_19A31C4E8(v42);

  return v42[0];
}

uint64_t GenerativePlayground.DetectedLanguageInfo.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57112C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GenerativePlayground.detectLanguages(in:constraints:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *(type metadata accessor for GenerativePlayground.DetectedLanguageInfo(0) - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for DefinitionSession();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A317260, 0, 0);
}

uint64_t sub_19A317260()
{
  v1 = *(*(v0 + 88) + 168);
  *(v0 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A317284, v1, 0);
}

uint64_t sub_19A317284()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[17] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_19A317378;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  return sub_19A3C3A48(v7, v5, v6, 1);
}

uint64_t sub_19A317378(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_19A317728;
  }

  else
  {
    v6 = sub_19A3174AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_19A3174AC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A317574, 0, 0);
}

uint64_t sub_19A317574()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v15 = MEMORY[0x1E69E7CC0];
    sub_19A322720(0, v2, 0);
    v4 = v15;
    v14 = sub_19A57112C();
    v5 = *(v14 - 8);
    v6 = *(v5 + 16);
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v6(v0[13], v7, v14);
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_19A322720(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[13];
      *(v15 + 16) = v10 + 1;
      sub_19A3319E4(v11, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, type metadata accessor for GenerativePlayground.DetectedLanguageInfo);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_19A317728()
{
  sub_19A331764(*(v0 + 120), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.checkLexiconValidity(of:locales:allowlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for DefinitionSession();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31788C, 0, 0);
}

uint64_t sub_19A31788C()
{
  v1 = *(*(v0 + 96) + 168);
  *(v0 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3178B0, v1, 0);
}

uint64_t sub_19A3178B0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[17] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31795C, 0, 0);
}

uint64_t sub_19A31795C()
{
  v1 = v0[10];
  v2 = *(v0[15] + *(v0[14] + 80));
  v0[18] = v2;
  v3 = *(v2 + 16);
  v0[19] = v3;
  v4 = *(v1 + 16);
  v5 = sub_19A57112C();
  v6 = *(v5 - 8);
  if (v4)
  {
    (*(*(v5 - 8) + 16))(v0[13], v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(v6 + 56))(v0[13], v7, 1, v5);

  return MEMORY[0x1EEE6DFA0](sub_19A317A78, v3, 0);
}

uint64_t sub_19A317A78()
{
  v1 = v0[13];
  v0[20] = sub_19A3B3414(v0[8], v0[9], v1);
  v0[21] = v2;
  sub_19A2F3FA0(v1, &qword_1EAF9FDC8);

  return MEMORY[0x1EEE6DFA0](sub_19A317B08, 0, 0);
}

uint64_t sub_19A317B08()
{
  v13 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(*(v0 + 144) + 24);
    v7 = *(v6 + 16);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v2;
    v8[5] = v1;
    v8[6] = v4;
    os_unfair_lock_lock((v7 + 24));
    sub_19A332280((v7 + 16), v12);
    *(v0 + 176) = 0;
    os_unfair_lock_unlock((v7 + 24));

    v9 = v12[0];
  }

  else
  {

    v9 = 1;
  }

  *(v0 + 184) = v9;
  v10 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_19A317CDC, v10, 0);
}

uint64_t sub_19A317C48()
{
  sub_19A331764(*(v0 + 120), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_19A317CDC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = *(v0 + 8);
  v5 = *(v0 + 184);

  return v4(v5);
}

uint64_t GenerativePlayground.extractNameConceptsList(from:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for DefinitionSession();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A317E50, 0, 0);
}

uint64_t sub_19A317E50()
{
  v1 = *(*(v0 + 80) + 168);
  *(v0 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A317E74, v1, 0);
}

uint64_t sub_19A317E74()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[14] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A317F20, 0, 0);
}

uint64_t sub_19A317F20()
{
  v1 = v0[12] + *(v0[11] + 36);
  v2 = *(v1 + *(_s17AssignmentOptionsVMa() + 32));
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_19A317FF4;
  v5 = v0[8];
  v4 = v0[9];

  return sub_19A3C407C(v5, v4, v2);
}

uint64_t sub_19A317FF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_19A318204;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 104);

    *(v4 + 144) = a1;
    v5 = sub_19A318134;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_19A318134()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];
  v5 = v0[18];

  return v4(v5);
}

uint64_t sub_19A318204()
{
  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19A318270, v1, 0);
}

uint64_t sub_19A318270()
{
  sub_19A331764(*(v0 + 96), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.deinit()
{

  sub_19A2F3FA0(v0 + 128, &qword_1EAF9FDA8);

  return v0;
}

uint64_t GenerativePlayground.__deallocating_deinit()
{

  sub_19A2F3FA0(v0 + 128, &qword_1EAF9FDA8);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3183CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A31845C;

  return GenerativePlayground.hasRequiredResources.getter();
}

uint64_t sub_19A31845C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_19A318558()
{
  sub_19A33546C(*v0 + 128, &v5, &qword_1EAF9FDA8);
  if (v6)
  {
    sub_19A2EA460(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(*(v2 + 32) + 8))(v1);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_19A2F3FA0(&v5, &qword_1EAF9FDA8);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_19A31863C()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3186D0, 0, 0);
}

uint64_t sub_19A3186D0()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3186F4, v1, 0);
}

uint64_t sub_19A3186F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3187A0, 0, 0);
}

uint64_t sub_19A3187A0()
{
  v1 = v0[6];
  v2 = v1 + *(v0[5] + 88);
  v3 = *(v2 + *(type metadata accessor for GenerationRecipe(0) + 24));

  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A318844(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FDB38(a1);
}

uint64_t sub_19A3188DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FDFC4(a1);
}

uint64_t sub_19A318974(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FE470(a1);
}

uint64_t sub_19A318A0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FE890();
}

uint64_t sub_19A318A9C()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A318B30, 0, 0);
}

uint64_t sub_19A318B30()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A318B54, v1, 0);
}

uint64_t sub_19A318B54()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A318C00, 0, 0);
}

uint64_t sub_19A318C00()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v2);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A318CB0(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = type metadata accessor for DefinitionSession();
  v4 = swift_task_alloc();
  v5 = *v2;
  *(v3 + 80) = v4;
  *(v3 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A318D4C, 0, 0);
}

uint64_t sub_19A318D4C()
{
  v1 = *(*(v0 + 88) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A318D70, v1, 0);
}

uint64_t sub_19A318D70()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v6, v2, type metadata accessor for DefinitionSession);
  v7 = *(v3 + 88);
  v8 = v2 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v4 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A318E54, v1, 0);
}

uint64_t sub_19A318E54()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A318F40()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A318FD4, 0, 0);
}

uint64_t sub_19A318FD4()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A318FF8, v1, 0);
}

uint64_t sub_19A318FF8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3190A4, 0, 0);
}

uint64_t sub_19A3190A4()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 1);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A319144(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FF818(a1);
}

uint64_t sub_19A3191DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return GenerativePlayground.dropGenderDirective()();
}

uint64_t sub_19A31926C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[7] = v3;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A319304, 0, 0);
}

uint64_t sub_19A319304()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A319328, v1, 0);
}

uint64_t sub_19A319328()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3193D4, 0, 0);
}

uint64_t sub_19A3193D4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 88);
  *v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A319480(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return GenerativePlayground.specifySkinToneDirective(_:)(a1);
}

uint64_t sub_19A319518()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return GenerativePlayground.dropSkinToneDirective()();
}

uint64_t sub_19A3195A8()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A31963C, 0, 0);
}

uint64_t sub_19A31963C()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A319660, v1, 0);
}

uint64_t sub_19A319660()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31970C, 0, 0);
}

uint64_t sub_19A31970C()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);

  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A3197C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_19A3197EC, 0, 0);
}

uint64_t sub_19A3197EC()
{
  sub_19A2FF254(4, v0[2], v0[3]);
  v1 = *(v0[5] + 168);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_19A335590;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_19A3006C4(v5, v3, v4, v1);
}

uint64_t sub_19A3198FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return GenerativePlayground.dropPersonDescriptionDirective()();
}

uint64_t sub_19A31998C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return GenerativePlayground.currentGenerationState.getter(a1);
}

uint64_t sub_19A319A28(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[10] = v3;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A319AC0, 0, 0);
}

uint64_t sub_19A319AC0()
{
  v1 = *(*(v0 + 88) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A319AE4, v1, 0);
}

uint64_t sub_19A319AE4()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A319B94, 0, 0);
}

uint64_t sub_19A319B94()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for GenerationState();
  sub_19A331CD0(v4 + *(v5 + 28), v2 + *(v3 + 88), type metadata accessor for GenerationRecipe);

  return MEMORY[0x1EEE6DFA0](sub_19A319C38, v1, 0);
}

uint64_t sub_19A319C38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A319D04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return GenerativePlayground.queryParserPreheat()();
}

uint64_t sub_19A319D94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return GenerativePlayground.queryParserCooldown()();
}

uint64_t GenerativePlayground.couldCurrentModelSetGenerate(images:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for GeneratedImage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A319EE4, 0, 0);
}

uint64_t sub_19A319EE4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[5];
    v20 = v0[4];
    v21 = MEMORY[0x1E69E7CC0];
    sub_19A322780(0, v2, 0);
    v3 = v21;
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    v6 = v2;
    do
    {
      v7 = v0[6];
      sub_19A331B84(v5, v7, type metadata accessor for GeneratedImage);
      v8 = v7 + *(v20 + 20);
      v9 = *(v8 + *(type metadata accessor for ImageProvenance() + 28));

      sub_19A331764(v7, type metadata accessor for GeneratedImage);
      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19A322780((v10 > 1), v11 + 1, 1);
      }

      *(v21 + 16) = v11 + 1;
      *(v21 + 8 * v11 + 32) = v9;
      v5 += v19;
      --v6;
    }

    while (v6);
  }

  v12 = *(v0[3] + 176);
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));
  if (v13)
  {

    v14 = AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(v3);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_19A322760(0, v2, 0);
      v14 = v22;
      v15 = *(v22 + 16);
      do
      {
        v16 = *(v22 + 24);
        if (v15 >= v16 >> 1)
        {
          sub_19A322760((v16 > 1), v15 + 1, 1);
        }

        *(v22 + 16) = v15 + 1;
        *(v22 + v15++ + 32) = 1;
        --v2;
      }

      while (v2);
    }
  }

  v17 = v0[1];

  return v17(v14);
}

uint64_t GenerativePlayground.couldCurrentModelSetGenerate(imagesSpecifications:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31A184, 0, 0);
}

uint64_t sub_19A31A184()
{
  v1 = *(v0[3] + 176);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = v0[2];
  if (v2)
  {

    v4 = sub_19A31A2EC(v3);
    v5 = AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(v4);
  }

  else
  {
    v6 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_19A322760(0, v6, 0);
      v5 = v11;
      v7 = *(v11 + 16);
      do
      {
        v8 = *(v11 + 24);
        if (v7 >= v8 >> 1)
        {
          sub_19A322760((v8 > 1), v7 + 1, 1);
        }

        *(v11 + 16) = v7 + 1;
        *(v11 + v7++ + 32) = 1;
        --v6;
      }

      while (v6);
    }
  }

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_19A31A2EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_19A322780(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0110);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_19A322780((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_19A31A41C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19A573B4C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_19A322900(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x19A901520](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19A322900((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for MediaAnalysisServiceImageScaler();
        v15 = &off_1F0DB0178;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_19A2EA460(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_19A322900((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for MediaAnalysisServiceImageScaler();
        v15 = &off_1F0DB0178;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_19A2EA460(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static GenerativePlayground.createEagerlyInitialized(imageGeneratorIdentifier:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 48) = *(a3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_19A31A604, 0, 0);
}

uint64_t sub_19A31A604()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v8[0] = v0[4];
  v8[1] = v1;
  v8[2] = v2;

  sub_19A332C58(v8[0], v1);
  v5 = _s16VisualGeneration20GenerativePlaygroundC24imageGeneratorIdentifier6clientACSSSg_AA14ClientIdentityVSgtcfC_0(v4, v3, v8);
  v6 = v0[1];

  return v6(v5);
}

uint64_t GenerativePlayground.__allocating_init(definitionSession:)(uint64_t a1)
{
  v2 = type metadata accessor for DefinitionSession();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A331B84(a1, v4, type metadata accessor for DefinitionSession);
  swift_allocObject();
  v5 = sub_19A2F4CAC(v4);
  sub_19A331764(a1, type metadata accessor for DefinitionSession);
  return v5;
}

uint64_t GenerativePlayground.usePORPipeline.getter()
{
  if (*(v0 + 112) == 0xD000000000000029 && 0x800000019A596020 == *(v0 + 120))
  {
    return 1;
  }

  else
  {
    return sub_19A573F1C();
  }
}

uint64_t sub_19A31A7C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*a1 + 112) == 0xD000000000000029 && 0x800000019A596020 == *(*a1 + 120))
  {
    result = 1;
  }

  else
  {
    result = sub_19A573F1C();
  }

  *a2 = result & 1;
  return result;
}

uint64_t (*GenerativePlayground.usePORPipeline.modify(_BYTE *a1))(void)
{
  if (*(v1 + 112) == 0xD000000000000029 && 0x800000019A596020 == *(v1 + 120))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_19A573F1C();
  }

  *a1 = v4 & 1;
  return nullsub_2;
}

uint64_t GenerativePlayground.forceInProcessGeneration.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31A948, 0, 0);
}

uint64_t sub_19A31A948()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31A96C, v1, 0);
}

uint64_t sub_19A31A96C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31AA14, 0, 0);
}

uint64_t sub_19A31AA14()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 50);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t GenerativePlayground.assign(forceInProcessGeneration:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31AB4C, 0, 0);
}

uint64_t sub_19A31AB4C()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31AB70, v1, 0);
}

uint64_t sub_19A31AB70()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 50) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t sub_19A31AC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s16VisualGeneration20GenerativePlaygroundC24imageGeneratorIdentifier6clientACSSSg_AA14ClientIdentityVSgtcfC_0(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19A31AC70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DefinitionSession();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A331B84(a1, v6, type metadata accessor for DefinitionSession);
  swift_allocObject();
  v7 = sub_19A2F4CAC(v6);
  result = sub_19A331764(a1, type metadata accessor for DefinitionSession);
  *a2 = v7;
  return result;
}

uint64_t sub_19A31AD44()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A31ADD8, 0, 0);
}

uint64_t sub_19A31ADD8()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31ADFC, v1, 0);
}

uint64_t sub_19A31ADFC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31AEA8, 0, 0);
}

uint64_t sub_19A31AEA8()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 50);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A31AF48(char a1)
{
  *(v2 + 104) = a1;
  *(v2 + 64) = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A31AFE0, 0, 0);
}

uint64_t sub_19A31AFE0()
{
  v1 = *(*(v0 + 80) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31B004, v1, 0);
}

uint64_t sub_19A31B004()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v5, v2, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 50) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A31B0DC, v1, 0);
}

uint64_t sub_19A31B0DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.allowImageRejection.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31B238, 0, 0);
}

uint64_t sub_19A31B238()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31B25C, v1, 0);
}

uint64_t sub_19A31B25C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31B304, 0, 0);
}

uint64_t sub_19A31B304()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 48);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t GenerativePlayground.assign(allowImageRejection:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31B43C, 0, 0);
}

uint64_t sub_19A31B43C()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31B460, v1, 0);
}

uint64_t sub_19A31B460()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t GenerativePlayground.enableGenerativeModelsAvailabilityCheck.getter()
{
  v1[5] = v0;
  _s23GenerationConfigurationVMa();
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for GenerationRecipe(0);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31B628, 0, 0);
}

uint64_t sub_19A31B628()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31B64C, v1, 0);
}

uint64_t sub_19A31B64C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31B6F4, 0, 0);
}

uint64_t sub_19A31B6F4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_19A331B84(v1 + *(v0[9] + 88), v2, type metadata accessor for GenerationRecipe);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  sub_19A331B84(v2 + *(v3 + 20), v4, _s23GenerationConfigurationVMa);
  sub_19A331764(v2, type metadata accessor for GenerationRecipe);
  v5 = *(v4 + 49);
  sub_19A331764(v4, _s23GenerationConfigurationVMa);

  v6 = v0[1];

  return v6(v5);
}

uint64_t GenerativePlayground.assign(enableGenerativeModelsAvailabilityCheck:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31B8B4, 0, 0);
}

uint64_t sub_19A31B8B4()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31B8D8, v1, 0);
}

uint64_t sub_19A31B8D8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 49) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t GenerativePlayground.configureInferenceDiagnostics(outputDirectoryURL:fileNamePrefix:overwriteFiles:includeModelFrameData:includeSegmentFrameData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 154) = a6;
  *(v7 + 153) = a5;
  *(v7 + 152) = a4;
  *(v7 + 80) = a3;
  *(v7 + 88) = v6;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = type metadata accessor for DefinitionSession();
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31BAB0, 0, 0);
}

uint64_t sub_19A31BAB0()
{
  v1 = *(*(v0 + 88) + 168);
  *(v0 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31BAD4, v1, 0);
}

uint64_t sub_19A31BAD4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[18] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31BB80, 0, 0);
}

uint64_t sub_19A31BB80()
{
  v20 = *(v0 + 128);
  v21 = *(v0 + 136);
  v1 = *(v0 + 112);
  v19 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 154);
  v5 = *(v0 + 153);
  v6 = *(v0 + 152);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = sub_19A570EAC();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  v11 = v2[6];
  v12 = (v1 + v2[5]);
  v13 = v2[7];
  v14 = v2[8];
  *v12 = v8;
  v12[1] = v7;
  *(v1 + v11) = v6;
  *(v1 + v13) = v5;
  *(v1 + v14) = v4;
  v15 = *(v19 + 88);
  v16 = v20 + *(type metadata accessor for GenerationRecipe(0) + 20);
  v17 = v16 + *(_s23GenerationConfigurationVMa() + 52);

  sub_19A2F3FA0(v17 + v15, &qword_1EAFA3300);
  sub_19A3319E4(v1, v17 + v15, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  (*(v3 + 56))(v17 + v15, 0, 1, v2);

  return MEMORY[0x1EEE6DFA0](sub_19A31BD0C, v21, 0);
}

uint64_t sub_19A31BD0C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.assignedForensicsReporter.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A31BE74, 0, 0);
}

uint64_t sub_19A31BE74()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31BE98, v1, 0);
}

uint64_t sub_19A31BE98()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31BF40, 0, 0);
}

uint64_t sub_19A31BF40()
{
  v1 = v0[7];
  v2 = (v1 + *(v0[6] + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_19A2E0A50(*v2);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_19A31BFE8()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A31C07C, 0, 0);
}

uint64_t sub_19A31C07C()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A31C0A0, v1, 0);
}

uint64_t sub_19A31C0A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A31C14C, 0, 0);
}

uint64_t sub_19A31C14C()
{
  v1 = v0[6];
  v2 = (v1 + *(v0[5] + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_19A2E0A50(*v2);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_19A31C1F4()
{
  sub_19A572E4C();
}

uint64_t sub_19A31C368()
{
  sub_19A572E4C();
}

uint64_t sub_19A31C4E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DEC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_19A32DA28(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_19A31C554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_19A31C640;

  return v10();
}

uint64_t sub_19A31C640()
{

  return MEMORY[0x1EEE6DFA0](sub_19A31C73C, 0, 0);
}

uint64_t sub_19A31C73C()
{
  *(*(v0 + 24) + 16) = 0;
  sub_19A57367C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A31C7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a4;
  v7[5] = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_19A31C894;

  return v10(v7 + 2);
}

uint64_t sub_19A31C894()
{

  return MEMORY[0x1EEE6DFA0](sub_19A31C990, 0, 0);
}

uint64_t sub_19A31C990()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 24) = v2;
  sub_19A57367C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A31CA04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A31CAFC;

  return v6(a1);
}

uint64_t sub_19A31CAFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_19A31CBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF68);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31CD00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF70);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31CE20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
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

char *sub_19A31CF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0158);
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

char *sub_19A31D158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31D27C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
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

char *sub_19A31D370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0008);
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

char *sub_19A31D490(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEC8);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31D5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
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

char *sub_19A31D6DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E0);
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

void *sub_19A31D7E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31D930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF78);
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

char *sub_19A31DA64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00D8);
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

char *sub_19A31DB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00D0);
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

char *sub_19A31DC7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFA8);
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

char *sub_19A31DD9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF40);
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

void *sub_19A31DEC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_19A31E070(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_19A31E16C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF98);
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

char *sub_19A31E278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF90);
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

size_t sub_19A31E3A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

void *sub_19A31E590(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A31E6D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFD0);
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

char *sub_19A31E7E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
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

char *sub_19A31E8F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0098);
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

size_t sub_19A31EA38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_19A31EC14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0030);
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

void *sub_19A31ED34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFF8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19A31EE8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0048);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_19A31EF24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

size_t sub_19A31F018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_19A31F114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19A31F1E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_19A334618(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_19A31F1E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19A31F2EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19A573A0C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_19A31F2EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_19A31F338(a1, a2);
  sub_19A31F468(&unk_1F0DA75B0);
  return v3;
}

uint64_t sub_19A31F338(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19A31F554(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19A573A0C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19A572F0C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19A31F554(v10, 0);
        result = sub_19A57392C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19A31F468(uint64_t result)
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

  result = sub_19A31F5C8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_19A31F554(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19A31F5C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01A0);
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

unint64_t sub_19A31F6BC(uint64_t a1, uint64_t a2)
{
  sub_19A5740BC();
  sub_19A572E4C();
  v4 = sub_19A57410C();

  return sub_19A320188(a1, a2, v4);
}

unint64_t sub_19A31F734(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A320564(a1, v2);
}

unint64_t sub_19A31F7F8(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A31C1F4();
  v2 = sub_19A57410C();

  return sub_19A320240(a1, v2);
}

unint64_t sub_19A31F864(uint64_t a1)
{
  sub_19A5740BC();
  type metadata accessor for CFString(0);
  sub_19A335220(&qword_1ED823F18, type metadata accessor for CFString);
  sub_19A57151C();
  v2 = sub_19A57410C();

  return sub_19A3206F0(a1, v2);
}

unint64_t sub_19A31F918(uint64_t a1)
{
  v2 = sub_19A5738CC();

  return sub_19A3207FC(a1, v2);
}

unint64_t sub_19A31F95C(uint64_t a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  v2 = sub_19A57410C();

  return sub_19A3208C4(a1, v2);
}

unint64_t sub_19A31F9C8(uint64_t a1)
{
  sub_19A5740BC();
  v2 = *(a1 + 16);
  MEMORY[0x19A901C40](v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_19A572E4C();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = sub_19A57410C();

  return sub_19A320930(a1, v4);
}

unint64_t sub_19A31FA78(uint64_t a1)
{
  sub_19A573AFC();
  v2 = sub_19A572B3C();

  return sub_19A320A40(a1, v2);
}

unint64_t sub_19A31FADC(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A320BD8(a1, v2);
}

unint64_t sub_19A31FB90(unsigned __int8 a1)
{
  v2 = sub_19A32F298();

  return sub_19A320D50(a1, v2);
}

unint64_t sub_19A31FC00(unsigned __int8 a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  v2 = sub_19A57410C();
  return sub_19A32135C(a1, v2);
}

unint64_t sub_19A31FC68(unsigned __int8 a1)
{
  v2 = sub_19A32F3CC();

  return sub_19A3213CC(a1, v2);
}

unint64_t sub_19A31FCD8(uint64_t a1, uint64_t a2)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  MEMORY[0x19A901C40](a2);
  v4 = sub_19A57410C();

  return sub_19A321944(a1, a2, v4);
}

unint64_t sub_19A31FD5C(uint64_t a1)
{
  sub_19A572CFC();
  sub_19A5740BC();
  sub_19A572E4C();
  v2 = sub_19A57410C();

  return sub_19A321F68(a1, v2);
}

unint64_t sub_19A31FDEC(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A3219BC(a1, v2);
}

unint64_t sub_19A31FEBC(char a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A321B5C(a1 & 1, v2);
}

unint64_t sub_19A31FF68(uint64_t a1)
{
  v2 = sub_19A57373C();

  return sub_19A321CA4(a1, v2);
}

unint64_t sub_19A31FFAC(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A321D68(a1, v2);
}

uint64_t sub_19A3200EC(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_19A5740BC();
  a2(a1);
  sub_19A572E4C();

  v5 = sub_19A57410C();

  return a3(a1, v5);
}

unint64_t sub_19A320188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19A573F1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19A320240(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE600000000000000;
            v11 = 0x6D756964656DLL;
          }

          else
          {
            v11 = 0x61446D756964656DLL;
            v12 = 0xEA00000000006B72;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE400000000000000;
          v11 = 1802658148;
        }

        else if (v6 == 8)
        {
          v12 = 0xE800000000000000;
          v11 = 0x6B72614470656564;
        }

        else
        {
          v12 = 0xE700000000000000;
          v11 = 0x7473656B726164;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 1919508838;
        }

        else
        {
          v7 = 0x64654D746867696CLL;
        }

        if (v6 == 3)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xEB000000006D7569;
        }

        if (v6 == 2)
        {
          v7 = 0x696146746867696CLL;
          v8 = 0xE900000000000072;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x74736572696166 : 0x6C6559696A6F6D65;
        v10 = v6 ? 0xE700000000000000 : 0xEB00000000776F6CLL;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x6B72614470656564;
      if (v5 != 8)
      {
        v13 = 0x7473656B726164;
      }

      v14 = 0xE800000000000000;
      if (v5 != 8)
      {
        v14 = 0xE700000000000000;
      }

      if (v5 == 7)
      {
        v13 = 1802658148;
        v14 = 0xE400000000000000;
      }

      v15 = 0x61446D756964656DLL;
      if (v5 == 5)
      {
        v15 = 0x6D756964656DLL;
      }

      v16 = 0xEA00000000006B72;
      if (v5 == 5)
      {
        v16 = 0xE600000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 3)
      {
        v17 = 1919508838;
      }

      else
      {
        v17 = 0x64654D746867696CLL;
      }

      if (v5 == 3)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xEB000000006D7569;
      }

      if (v5 == 2)
      {
        v17 = 0x696146746867696CLL;
        v18 = 0xE900000000000072;
      }

      if (v5)
      {
        v19 = 0x74736572696166;
      }

      else
      {
        v19 = 0x6C6559696A6F6D65;
      }

      if (v5)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEB00000000776F6CLL;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 4 ? v17 : v13;
      v22 = v5 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_19A573F1C();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_19A320564(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE500000000000000;
          v8 = 0x6E616D6F77;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6E79676F72646E61;
          v7 = 0xEB0000000073756FLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v8 != 7233901)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 7233901;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6E616D6F77;
      }

      else
      {
        v10 = 0x6E79676F72646E61;
      }

      if (v9 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xEB0000000073756FLL;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_19A573F1C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A3206F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_19A335220(&qword_1ED823F18, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19A57150C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19A3207FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19A334568(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A901450](v9, a1);
      sub_19A3345C4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19A3208C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19A320930(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_19A573F1C() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19A320A40(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_19A573AFC();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_19A572C2C();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_19A320BD8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 3425357;
          v8 = 0xE300000000000000;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x3031764D4441;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v7 != 3228749)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v7 = 3228749;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 3425357;
      }

      else
      {
        v10 = 0x3031764D4441;
      }

      if (v9 == 1)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_19A573F1C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A320D50(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x696A6F6D65;
          }

          else
          {
            v8 = 0x61727473756C6C69;
          }

          if (v7 == 1)
          {
            v9 = 0xE500000000000000;
          }

          else
          {
            v9 = 0xEC0000006E6F6974;
          }
        }

        else
        {
          v8 = 0x6F6974616D696E61;
          v9 = 0xE90000000000006ELL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x6C75616665645F5FLL;
          v9 = 0xEB000000005F5F74;
        }

        else
        {
          v9 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x686374656B73;
        }

        else
        {
          v8 = 0xD000000000000013;
        }

        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0x800000019A595400;
        }
      }

      v10 = 0x6C75616665645F5FLL;
      if (v6 != 5)
      {
        v10 = 0x6E776F6E6B6E75;
      }

      v11 = 0xEB000000005F5F74;
      if (v6 != 5)
      {
        v11 = 0xE700000000000000;
      }

      v12 = 0xD000000000000013;
      if (v6 == 3)
      {
        v12 = 0x686374656B73;
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0x800000019A595400;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x61727473756C6C69;
      if (v6 == 1)
      {
        v14 = 0x696A6F6D65;
      }

      v15 = 0xEC0000006E6F6974;
      if (v6 == 1)
      {
        v15 = 0xE500000000000000;
      }

      if (!v6)
      {
        v14 = 0x6F6974616D696E61;
        v15 = 0xE90000000000006ELL;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_19A573F1C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A320FF0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    v5 = 0xE90000000000006ELL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v29 + 48) + v4);
      v30 = v4;
      if (v7 <= 4)
      {
        if (v7 == 3)
        {
          v10 = 0xD000000000000012;
        }

        else
        {
          v10 = 0x61727473756C6C69;
        }

        if (v7 == 3)
        {
          v11 = 0x800000019A5965C0;
        }

        else
        {
          v11 = 0xEC0000006E6F6974;
        }

        if (v7 == 2)
        {
          v10 = 0x696A6F6D65;
          v11 = 0xE500000000000000;
        }

        v12 = 0xD000000000000016;
        if (v7)
        {
          v13 = 0x800000019A5965E0;
        }

        else
        {
          v12 = 0x6F6974616D696E61;
          v13 = 0xE90000000000006ELL;
        }

        v9 = v7 <= 1 ? v12 : v10;
        v8 = v7 <= 1 ? v13 : v11;
      }

      else if (*(*(v29 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v9 = 0x63735F656C797473;
          v8 = 0xEE00656C62626972;
        }

        else if (v7 == 9)
        {
          v9 = 0xD00000000000001BLL;
          v8 = 0x800000019A596560;
        }

        else
        {
          v9 = 0xD000000000000014;
          v8 = 0x800000019A596540;
        }
      }

      else if (v7 == 5)
      {
        v9 = 0xD000000000000019;
        v8 = 0x800000019A5965A0;
      }

      else if (v7 == 6)
      {
        v8 = 0xE600000000000000;
        v9 = 0x686374656B73;
      }

      else
      {
        v9 = 0xD000000000000013;
        v8 = 0x800000019A596580;
      }

      v14 = 0xD00000000000001BLL;
      if (v6 != 9)
      {
        v14 = 0xD000000000000014;
      }

      v15 = 0x800000019A596540;
      if (v6 == 9)
      {
        v15 = 0x800000019A596560;
      }

      if (v6 == 8)
      {
        v14 = 0x63735F656C797473;
        v15 = 0xEE00656C62626972;
      }

      v16 = 0xD000000000000019;
      v17 = 0x686374656B73;
      if (v6 != 6)
      {
        v17 = 0xD000000000000013;
      }

      v18 = 0x800000019A596580;
      if (v6 == 6)
      {
        v18 = 0xE600000000000000;
      }

      if (v6 != 5)
      {
        v16 = v17;
      }

      v19 = 0x800000019A5965A0;
      if (v6 != 5)
      {
        v19 = v18;
      }

      if (v6 <= 7)
      {
        v14 = v16;
        v15 = v19;
      }

      if (v6 == 3)
      {
        v20 = 0xD000000000000012;
      }

      else
      {
        v20 = 0x61727473756C6C69;
      }

      if (v6 == 3)
      {
        v21 = 0x800000019A5965C0;
      }

      else
      {
        v21 = 0xEC0000006E6F6974;
      }

      if (v6 == 2)
      {
        v20 = 0x696A6F6D65;
        v21 = 0xE500000000000000;
      }

      v22 = 0xD000000000000016;
      if (v6)
      {
        v5 = 0x800000019A5965E0;
      }

      else
      {
        v22 = 0x6F6974616D696E61;
      }

      if (v6 <= 1)
      {
        v20 = v22;
        v21 = v5;
      }

      v23 = v6 <= 4 ? v20 : v14;
      v24 = v6 <= 4 ? v21 : v15;
      if (v9 == v23 && v8 == v24)
      {
        break;
      }

      v25 = sub_19A573F1C();

      if (v25)
      {
        return v30;
      }

      v4 = (v30 + 1) & v27;
      v5 = 0xE90000000000006ELL;
      if (((*(v28 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v30;
  }

  return v4;
}

unint64_t sub_19A32135C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19A3213CC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 7233901;
          }

          else
          {
            v8 = 0x6E6F73726570;
          }

          if (v7 == 1)
          {
            v9 = 0xE300000000000000;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }

        else
        {
          v9 = 0xE500000000000000;
          v8 = 0x6E616D6F77;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x7372657020646C6FLL;
          v9 = 0xEA00000000006E6FLL;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x79656C696D73;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x616D6F7720646C6FLL;
        }

        else
        {
          v8 = 0x6E616D20646C6FLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE90000000000006ELL;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      v10 = 0x7372657020646C6FLL;
      if (v6 != 5)
      {
        v10 = 0x79656C696D73;
      }

      v11 = 0xEA00000000006E6FLL;
      if (v6 != 5)
      {
        v11 = 0xE600000000000000;
      }

      v12 = 0x616D6F7720646C6FLL;
      if (v6 != 3)
      {
        v12 = 0x6E616D20646C6FLL;
      }

      v13 = 0xE90000000000006ELL;
      if (v6 != 3)
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E6F73726570;
      if (v6 == 1)
      {
        v14 = 7233901;
      }

      v15 = 0xE300000000000000;
      if (v6 != 1)
      {
        v15 = 0xE600000000000000;
      }

      if (!v6)
      {
        v14 = 0x6E616D6F77;
        v15 = 0xE500000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_19A573F1C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A32163C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    v5 = 0xEA0000000000316BLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v29 + 48) + v4);
      if (v7 > 4)
      {
        if (*(*(v29 + 48) + v4) <= 6u)
        {
          if (v7 == 5)
          {
            v14 = 0xE700000000000000;
            v13 = 0x7265646F636564;
          }

          else
          {
            v13 = 0x6365446168706C61;
            v14 = 0xEC0000007265646FLL;
          }
        }

        else if (v7 == 7)
        {
          v13 = 0xD000000000000011;
          v14 = 0x800000019A5969E0;
        }

        else if (v7 == 8)
        {
          v13 = 0xD000000000000011;
          v14 = 0x800000019A5969C0;
        }

        else
        {
          v13 = 0xD000000000000010;
          v14 = 0x800000019A5969A0;
        }
      }

      else
      {
        v8 = 0xEA0000000000326BLL;
        v9 = 0x7265646F636E65;
        if (v7 == 3)
        {
          v9 = 0x6F636E4570696C63;
          v10 = 0xEB00000000726564;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (v7 == 2)
        {
          v9 = 0x6E75684374656E75;
        }

        else
        {
          v8 = v10;
        }

        if (*(*(v29 + 48) + v4))
        {
          v11 = 0x6E75684374656E75;
        }

        else
        {
          v11 = 1952804469;
        }

        if (*(*(v29 + 48) + v4))
        {
          v12 = 0xEA0000000000316BLL;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v8;
        }
      }

      v15 = 0xD000000000000010;
      if (v6 == 8)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0x800000019A5969A0;
      if (v6 == 8)
      {
        v16 = 0x800000019A5969C0;
      }

      if (v6 == 7)
      {
        v15 = 0xD000000000000011;
        v16 = 0x800000019A5969E0;
      }

      v17 = 0x6365446168706C61;
      if (v6 == 5)
      {
        v17 = 0x7265646F636564;
      }

      v18 = 0xEC0000007265646FLL;
      if (v6 == 5)
      {
        v18 = 0xE700000000000000;
      }

      if (v6 <= 6)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0xEA0000000000326BLL;
      v20 = 0x7265646F636E65;
      if (v6 == 3)
      {
        v20 = 0x6F636E4570696C63;
        v21 = 0xEB00000000726564;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v20 = 0x6E75684374656E75;
      }

      else
      {
        v19 = v21;
      }

      if (v6)
      {
        v22 = 0x6E75684374656E75;
      }

      else
      {
        v22 = 1952804469;
      }

      if (!v6)
      {
        v5 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v20 = v22;
        v19 = v5;
      }

      v23 = v6 <= 4 ? v20 : v15;
      v24 = v6 <= 4 ? v19 : v16;
      if (v13 == v23 && v14 == v24)
      {
        break;
      }

      v25 = sub_19A573F1C();

      if ((v25 & 1) == 0)
      {
        v4 = (v4 + 1) & v27;
        v5 = 0xEA0000000000316BLL;
        if ((*(v28 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A321944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19A3219BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x676E696E69617274;
          v8 = 0xEB00000000676154;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x6365705361726F6CLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x676F6C61746163)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x676F6C61746163;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x676E696E69617274;
      }

      else
      {
        v10 = 0x6365705361726F6CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000676154;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_19A573F1C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A321B5C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7463656A627573;
    }

    else
    {
      v6 = 0x70616373646E616CLL;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7463656A627573 : 0x70616373646E616CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_19A573F1C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A321CA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_19A3347B8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19A57374C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19A321D68(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000007269;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x61486C6169636166;
        }

        else
        {
          v8 = 1919508840;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xEA00000000007269;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE800000000000000;
        v8 = 0x7261657764616568;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x726F737365636361;
        }

        else
        {
          v8 = 0xD000000000000015;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000736569;
        }

        else
        {
          v9 = 0x800000019A5959C0;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x726F737365636361;
      }

      else
      {
        v10 = 0xD000000000000015;
      }

      if (v6 == 3)
      {
        v11 = 0xEB00000000736569;
      }

      else
      {
        v11 = 0x800000019A5959C0;
      }

      if (v6 == 2)
      {
        v10 = 0x7261657764616568;
        v11 = 0xE800000000000000;
      }

      if (v6)
      {
        v12 = 0x61486C6169636166;
      }

      else
      {
        v12 = 1919508840;
      }

      if (!v6)
      {
        v5 = 0xE400000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_19A573F1C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000007269;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A321F68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_19A572CFC();
      v8 = v7;
      if (v6 == sub_19A572CFC() && v8 == v9)
      {
        break;
      }

      v11 = sub_19A573F1C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_19A32206C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ELL;
      v8 = "le_without_prompt";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = "le_draw_over_image";
          v7 = 0xD000000000000021;
          break;
        case 2:
          v7 = 0xD000000000000022;
          v8 = "le_sketch_to_image";
          break;
        case 3:
          v7 = 0xD000000000000022;
          v8 = "conditioning_range_with_prompt";
          break;
        case 4:
          v7 = 0xD00000000000001ELL;
          v8 = "ge_without_prompt";
          break;
        case 5:
          v7 = 0xD000000000000021;
          v8 = "ge_draw_over_image";
          break;
        case 6:
          v7 = 0xD000000000000022;
          v8 = "ge_sketch_to_image";
          break;
        case 7:
          v7 = 0xD000000000000022;
          v8 = "ge_with_prompt_animation";
          break;
        case 8:
          v7 = 0xD000000000000028;
          v8 = "le_with_prompt_animation";
          break;
        case 9:
          v7 = 0xD000000000000028;
          v8 = "ge_without_prompt_animation";
          break;
        case 0xA:
          v7 = 0xD00000000000002BLL;
          v8 = "le_without_prompt_animation";
          break;
        case 0xB:
          v7 = 0xD00000000000002BLL;
          v8 = "ge_with_prompt_illustration";
          break;
        case 0xC:
          v7 = 0xD00000000000002BLL;
          v8 = "le_with_prompt_illustration";
          break;
        case 0xD:
          v7 = 0xD00000000000002BLL;
          v8 = "ge_without_prompt_illustration";
          break;
        case 0xE:
          v7 = 0xD00000000000002ELL;
          v8 = "le_without_prompt_illustration";
          break;
        case 0xF:
          v7 = 0xD00000000000002ELL;
          v8 = "ge_with_prompt_sketch";
          break;
        case 0x10:
          v7 = 0xD000000000000025;
          v8 = "le_with_prompt_sketch";
          break;
        case 0x11:
          v7 = 0xD000000000000025;
          v8 = "ge_without_prompt_sketch";
          break;
        case 0x12:
          v7 = 0xD000000000000028;
          v8 = "le_without_prompt_sketch";
          break;
        case 0x13:
          v7 = 0xD000000000000028;
          v8 = "personalized_animation";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ELL;
      v11 = "le_without_prompt";
      switch(a1)
      {
        case 1:
          v11 = "le_draw_over_image";
          v10 = 0xD000000000000021;
          break;
        case 2:
          v10 = 0xD000000000000022;
          v11 = "le_sketch_to_image";
          break;
        case 3:
          v10 = 0xD000000000000022;
          v11 = "conditioning_range_with_prompt";
          break;
        case 4:
          v10 = 0xD00000000000001ELL;
          v11 = "ge_without_prompt";
          break;
        case 5:
          v10 = 0xD000000000000021;
          v11 = "ge_draw_over_image";
          break;
        case 6:
          v10 = 0xD000000000000022;
          v11 = "ge_sketch_to_image";
          break;
        case 7:
          v10 = 0xD000000000000022;
          v11 = "ge_with_prompt_animation";
          break;
        case 8:
          v10 = 0xD000000000000028;
          v11 = "le_with_prompt_animation";
          break;
        case 9:
          v10 = 0xD000000000000028;
          v11 = "ge_without_prompt_animation";
          break;
        case 10:
          v10 = 0xD00000000000002BLL;
          v11 = "le_without_prompt_animation";
          break;
        case 11:
          v10 = 0xD00000000000002BLL;
          v11 = "ge_with_prompt_illustration";
          break;
        case 12:
          v10 = 0xD00000000000002BLL;
          v11 = "le_with_prompt_illustration";
          break;
        case 13:
          v10 = 0xD00000000000002BLL;
          v11 = "ge_without_prompt_illustration";
          break;
        case 14:
          v10 = 0xD00000000000002ELL;
          v11 = "le_without_prompt_illustration";
          break;
        case 15:
          v10 = 0xD00000000000002ELL;
          v11 = "ge_with_prompt_sketch";
          break;
        case 16:
          v10 = 0xD000000000000025;
          v11 = "le_with_prompt_sketch";
          break;
        case 17:
          v10 = 0xD000000000000025;
          v11 = "ge_without_prompt_sketch";
          break;
        case 18:
          v10 = 0xD000000000000028;
          v11 = "le_without_prompt_sketch";
          break;
        case 19:
          v10 = 0xD000000000000028;
          v11 = "personalized_animation";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_19A573F1C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_19A322580(char *a1, int64_t a2, char a3)
{
  result = sub_19A34B7A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3225A0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34B8AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A3225C0(void *a1, int64_t a2, char a3)
{
  result = sub_19A34B9B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A3225E0(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34BAE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322600(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34BB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322620(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BB34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322640(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34BC48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322660(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BC70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322680(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34BE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3226A0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3226C0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3226E0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322700(char *a1, int64_t a2, char a3)
{
  result = sub_19A34C0E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322720(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C1F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322740(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322760(char *a1, int64_t a2, char a3)
{
  result = sub_19A34C340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A322780(void *a1, int64_t a2, char a3)
{
  result = sub_19A34C434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3227A0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34C568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3227C0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34BC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A3227E0(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322800(char *a1, int64_t a2, char a3)
{
  result = sub_19A34C6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322820(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34C7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322840(char *a1, int64_t a2, char a3)
{
  result = sub_19A34C9B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A322860(char *a1, int64_t a2, char a3)
{
  result = sub_19A34CAC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A322880(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34CBCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3228A0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34CBF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A3228C0(char *a1, int64_t a2, char a3)
{
  result = sub_19A34CD10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19A3228E0(size_t a1, int64_t a2, char a3)
{
  result = sub_19A34CE1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19A322900(void *a1, int64_t a2, char a3)
{
  result = sub_19A34D020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19A322920(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_19A5740BC();
  MEMORY[0x19A901C40](a2);
  v6 = sub_19A57410C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_19A3252C8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_19A322A18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19A5740BC();
  sub_19A572E4C();
  v8 = sub_19A57410C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19A573F1C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_19A325424(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_19A322B68(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_19A5740BC();
  v5 = *(a2 + 16);
  MEMORY[0x19A901C40](v5);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 40;
    do
    {

      sub_19A572E4C();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  result = sub_19A57410C();
  v9 = -1 << *(v4 + 32);
  v10 = result & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v21 = ~v9;
    v11 = *(v4 + 48);
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      if (*(v12 + 16) == v5)
      {
        break;
      }

LABEL_6:
      v10 = (v10 + 1) & v21;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (!v5 || v12 == a2)
    {
LABEL_19:

      *a1 = *(*(v4 + 48) + 8 * v10);

      return 0;
    }

    else
    {
      v13 = *(a2 + 16);
      v14 = (v12 + 40);
      v15 = (a2 + 40);
      v16 = v5;
      while (v13)
      {
        result = *(v14 - 1);
        if (result != *(v15 - 1) || *v14 != *v15)
        {
          result = sub_19A573F1C();
          if ((result & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        --v13;
        v14 += 2;
        v15 += 2;
        if (!--v16)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v20;

    sub_19A3255A4(v19, v10, isUniquelyReferenced_nonNull_native);
    *v20 = v23;
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_19A322D50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19A57106C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_19A335220(&qword_1EAF9F008, MEMORY[0x1E6969610]);
  v33 = a2;
  v11 = sub_19A572B3C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_19A335220(&qword_1EAF9F000, MEMORY[0x1E6969610]);
      v21 = sub_19A572C2C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_19A325A44(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_19A323030(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19A5740BC();
  MEMORY[0x19A901C40](a2);
  MEMORY[0x19A901C40](a3);
  v8 = sub_19A57410C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_19A325D0C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_19A32314C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for Concept(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_19A5740BC();
  Concept.hash(into:)();
  v10 = sub_19A57410C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_19A331B84(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Concept);
      v15 = _s16VisualGeneration7ConceptO2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_19A331764(v8, type metadata accessor for Concept);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_19A331764(a2, type metadata accessor for Concept);
    sub_19A331B84(*(v9 + 48) + v14 * v12, v19, type metadata accessor for Concept);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19A331B84(a2, v8, type metadata accessor for Concept);
    v20 = *v3;
    sub_19A325E7C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_19A3319E4(a2, v17, type metadata accessor for Concept);
    return 1;
  }
}

uint64_t sub_19A32338C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_19A335220(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_19A572B3C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_19A335220(&qword_1EAF9FFB8, MEMORY[0x1E69695A8]);
      v21 = sub_19A572C2C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_19A3260C0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_19A32366C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19A57112C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_19A335220(&qword_1EAF9F8D8, MEMORY[0x1E6969770]);
  v33 = a2;
  v11 = sub_19A572B3C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_19A335220(&qword_1EAF9F8D0, MEMORY[0x1E6969770]);
      v21 = sub_19A572C2C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_19A326388(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_19A32394C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0060);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_19A5740BC();
      MEMORY[0x19A901C40](v16);
      result = sub_19A57410C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A323B9C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCF8);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19A5740BC();
      sub_19A572E4C();
      result = sub_19A57410C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A323DFC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0050);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_19A5740BC();
      MEMORY[0x19A901C40](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + 40;
        do
        {

          sub_19A572E4C();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      result = sub_19A57410C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
      v9 = v28;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v28 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      bzero(v6, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v26;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A3240A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0028);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A324344()
{
  v1 = v0;
  v35 = sub_19A57106C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0078);
  result = sub_19A57390C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_19A335220(&qword_1EAF9F008, MEMORY[0x1E6969610]);
      result = sub_19A572B3C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_19A3246A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE30);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19A5740BC();
      MEMORY[0x19A901C40](v18);
      MEMORY[0x19A901C40](v19);
      result = sub_19A57410C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19A324908()
{
  v1 = v0;
  v2 = type metadata accessor for Concept(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFA0);
  result = sub_19A57390C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
LABEL_15:
      v19 = *(v30 + 72);
      sub_19A3319E4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for Concept);
      sub_19A5740BC();
      Concept.hash(into:)();
      result = sub_19A57410C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_19A3319E4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for Concept);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_19A324C10()
{
  v1 = v0;
  v35 = sub_19A57102C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFC0);
  result = sub_19A57390C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_19A335220(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
      result = sub_19A572B3C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_19A324F6C()
{
  v1 = v0;
  v35 = sub_19A57112C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD50);
  result = sub_19A57390C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_19A335220(&qword_1EAF9F8D8, MEMORY[0x1E6969770]);
      result = sub_19A572B3C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void sub_19A3252C8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19A32394C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_19A326650();
      a2 = v7;
      goto LABEL_12;
    }

    sub_19A327104();
  }

  v8 = *v3;
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  v9 = sub_19A57410C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for MADRichLabelDomainType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_19A57403C();
  __break(1u);
}

uint64_t sub_19A325424(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_19A323B9C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_19A326790();
      goto LABEL_16;
    }

    sub_19A327324();
  }

  v10 = *v4;
  sub_19A5740BC();
  sub_19A572E4C();
  result = sub_19A57410C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_19A573F1C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_19A57403C();
  __break(1u);
  return result;
}

uint64_t sub_19A3255A4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_19A323DFC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_19A3268EC();
      goto LABEL_26;
    }

    sub_19A32755C();
  }

  v8 = *v3;
  sub_19A5740BC();
  v9 = *(v5 + 16);
  MEMORY[0x19A901C40](v9);
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = v5 + 40;
    do
    {

      sub_19A572E4C();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  result = sub_19A57410C();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_26:
    v22 = *v26;
    *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    *(*(v22 + 48) + 8 * a2) = v5;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v22 + 16) = v25;
      return result;
    }

    goto LABEL_29;
  }

  v14 = ~v13;
  v15 = *(v8 + 48);
  while (1)
  {
    v16 = *(v15 + 8 * a2);
    if (*(v16 + 16) == v9)
    {
      break;
    }

LABEL_13:
    a2 = (a2 + 1) & v14;
    if (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (!v9 || v16 == v5)
  {
    goto LABEL_30;
  }

  v17 = *(v5 + 16);
  v18 = (v16 + 40);
  v19 = (v5 + 40);
  v20 = v9;
  while (v17)
  {
    if (*(v18 - 1) != *(v19 - 1) || *v18 != *v19)
    {
      result = sub_19A573F1C();
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    --v17;
    v18 += 2;
    v19 += 2;
    if (!--v20)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  result = sub_19A57403C();
  __break(1u);
  return result;
}

uint64_t sub_19A3257B8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_19A3240A0();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_19A326A3C();
        goto LABEL_28;
      }

      sub_19A3277DC();
    }

    v8 = *v3;
    sub_19A5740BC();
    sub_19A572E4C();

    result = sub_19A57410C();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0xE500000000000000;
            v12 = 0x6E616D6F77;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0x6E79676F72646E61;
            v11 = 0xEB0000000073756FLL;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xE300000000000000;
              if (v12 == 7233901)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v11 = 0xE300000000000000;
          v12 = 7233901;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0x6E616D6F77;
        }

        else
        {
          v14 = 0x6E79676F72646E61;
        }

        if (v13 == 1)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xEB0000000073756FLL;
        }

        if (v12 == v14)
        {
LABEL_25:
          if (v11 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = sub_19A573F1C();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_19A57403C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_19A325A44(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_19A57106C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19A324344();
  }

  else
  {
    if (v11 > v10)
    {
      sub_19A326ECC(MEMORY[0x1E6969610], &qword_1EAFA0078);
      goto LABEL_12;
    }

    sub_19A327A50();
  }

  v12 = *v3;
  sub_19A335220(&qword_1EAF9F008, MEMORY[0x1E6969610]);
  v13 = sub_19A572B3C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_19A335220(&qword_1EAF9F000, MEMORY[0x1E6969610]);
      v21 = sub_19A572C2C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_19A57403C();
  __break(1u);
  return result;
}

uint64_t sub_19A325D0C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_19A3246A0();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_19A326B7C();
      a3 = v9;
      goto LABEL_15;
    }

    sub_19A327D6C();
  }

  v10 = *v4;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v6);
  MEMORY[0x19A901C40](a2);
  result = sub_19A57410C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_19A57403C();
  __break(1u);
  return result;
}

uint64_t sub_19A325E7C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Concept(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_19A324908();
  }

  else
  {
    if (v14 > v13)
    {
      sub_19A326CC0();
      goto LABEL_12;
    }

    v26 = v10;
    sub_19A327FA4();
  }

  v15 = *v4;
  sub_19A5740BC();
  Concept.hash(into:)();
  v16 = sub_19A57410C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_19A331B84(*(v15 + 48) + v19 * a2, v12, type metadata accessor for Concept);
      v20 = _s16VisualGeneration7ConceptO2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_19A331764(v12, type metadata accessor for Concept);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_19A3319E4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for Concept);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_19A57403C();
  __break(1u);
  return result;
}