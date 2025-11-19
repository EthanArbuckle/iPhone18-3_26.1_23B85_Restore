void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = type metadata accessor for Date();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew()(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        specialized Array.remove(at:)(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 timestamp];
      v25 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v23 timestamp];
      v27 = v125;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v122) = static Date.< infix(_:_:)();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 timestamp];
        v35 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = [v33 timestamp];
        v37 = v125;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v36) = static Date.< infix(_:_:)() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        specialized Array.remove(at:)(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 timestamp];
    v54 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = [v52 timestamp];
    v56 = v125;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v55) = static Date.< infix(_:_:)();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

{
  v6 = v4;
  v132 = a1;
  v144 = type metadata accessor for Date();
  v9 = *(*(v144 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v144);
  v142 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v143 = &v129 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = *v132;
    if (!*v132)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    v148 = v16;
    v125 = *(v16 + 2);
    if (v125 >= 2)
    {
      while (*a3)
      {
        v126 = *&v16[16 * v125];
        v127 = *&v16[16 * v125 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v126), (*a3 + 8 * *&v16[16 * v125 + 16]), (*a3 + 8 * v127), v5);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v127 < v126)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v125 - 2 >= *(v16 + 2))
        {
          goto LABEL_113;
        }

        v128 = &v16[16 * v125];
        *v128 = v126;
        *(v128 + 1) = v127;
        v148 = v16;
        specialized Array.remove(at:)(v125 - 1);
        v16 = v148;
        v125 = *(v148 + 2);
        if (v125 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v129 = a4;
  v15 = 0;
  v140 = (v12 + 8);
  v141 = (v12 + 16);
  v16 = MEMORY[0x277D84F90];
  v130 = a3;
  while (1)
  {
    v17 = v15 + 1;
    v134 = v15;
    if (v15 + 1 < v14)
    {
      v138 = v14;
      v131 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v17);
      v147 = v19;
      v133 = 8 * v15;
      v20 = (v18 + 8 * v15);
      v22 = *v20;
      v21 = v20 + 2;
      v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v24 = *&v19[v23];
      v25 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
      swift_beginAccess();
      v26 = *v141;
      (*v141)(v143, v24 + v25, v144);
      v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      v146 = v22;
      swift_beginAccess();
      v28 = *&v22[v27];
      v29 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
      swift_beginAccess();
      v30 = v28 + v29;
      v31 = v142;
      v32 = v144;
      v136 = v26;
      v26(v142, v30, v144);
      v147 = v147;
      v146 = v146;
      v33 = v143;
      LODWORD(v139) = static Date.< infix(_:_:)();
      v5 = *v140;
      (*v140)(v31, v32);
      v135 = v5;
      (v5)(v33, v32);

      v34 = (v15 + 2);
      v137 = v16;
      while (1)
      {
        v35 = v138;
        if (v138 == v34)
        {
          break;
        }

        v36 = v21;
        v39 = v21 - 1;
        v38 = *(v21 - 1);
        v146 = v39[1];
        v37 = v146;
        v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v147 = v34;
        swift_beginAccess();
        v41 = *&v37[v40];
        v42 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v5 = v143;
        v43 = v144;
        v44 = v136;
        v136(v143, v41 + v42, v144);
        v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v145 = v38;
        swift_beginAccess();
        v46 = *&v38[v45];
        v47 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v48 = v142;
        v44(v142, v46 + v47, v43);
        v49 = v146;
        v50 = v145;
        LODWORD(v46) = static Date.< infix(_:_:)() & 1;
        v51 = v135;
        v135(v48, v43);
        v51(v5, v43);

        v16 = v137;
        v34 = v147 + 1;
        v21 = v36 + 1;
        if ((v139 & 1) != v46)
        {
          v35 = v147;
          break;
        }
      }

      a3 = v130;
      v6 = v131;
      v52 = v133;
      if (v139)
      {
        v53 = v134;
        if (v35 < v134)
        {
          goto LABEL_116;
        }

        if (v134 < v35)
        {
          v54 = 8 * v35 - 8;
          v55 = v35;
          do
          {
            if (v53 != --v55)
            {
              v57 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v56 = *(v57 + v52);
              *(v57 + v52) = *(v57 + v54);
              *(v57 + v54) = v56;
            }

            ++v53;
            v54 -= 8;
            v52 += 8;
          }

          while (v53 < v55);
        }
      }

      v17 = v35;
    }

    v58 = a3[1];
    if (v17 < v58)
    {
      if (__OFSUB__(v17, v134))
      {
        goto LABEL_115;
      }

      if (v17 - v134 < v129)
      {
        v59 = v134 + v129;
        if (__OFADD__(v134, v129))
        {
          goto LABEL_117;
        }

        if (v59 >= v58)
        {
          v59 = a3[1];
        }

        if (v59 < v134)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v17 != v59)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v17 < v134)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v81 = *(v16 + 2);
    v80 = *(v16 + 3);
    v5 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v82 = &v16[16 * v81];
    *(v82 + 4) = v134;
    *(v82 + 5) = v17;
    v83 = *v132;
    if (!*v132)
    {
      goto LABEL_124;
    }

    v138 = v17;
    if (v81)
    {
      while (1)
      {
        v84 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v85 = *(v16 + 4);
          v86 = *(v16 + 5);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_56:
          if (v88)
          {
            goto LABEL_103;
          }

          v101 = &v16[16 * v5];
          v103 = *v101;
          v102 = *(v101 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_106;
          }

          v107 = &v16[16 * v84 + 32];
          v109 = *v107;
          v108 = *(v107 + 1);
          v95 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v95)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v105, v110))
          {
            goto LABEL_110;
          }

          if (v105 + v110 >= v87)
          {
            if (v87 < v110)
            {
              v84 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v111 = &v16[16 * v5];
        v113 = *v111;
        v112 = *(v111 + 1);
        v95 = __OFSUB__(v112, v113);
        v105 = v112 - v113;
        v106 = v95;
LABEL_70:
        if (v106)
        {
          goto LABEL_105;
        }

        v114 = &v16[16 * v84];
        v116 = *(v114 + 4);
        v115 = *(v114 + 5);
        v95 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v95)
        {
          goto LABEL_108;
        }

        if (v117 < v105)
        {
          goto LABEL_3;
        }

LABEL_77:
        v122 = v84 - 1;
        if (v84 - 1 >= v5)
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
          goto LABEL_118;
        }

        if (!*a3)
        {
          goto LABEL_121;
        }

        v123 = *&v16[16 * v122 + 32];
        v5 = *&v16[16 * v84 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v123), (*a3 + 8 * *&v16[16 * v84 + 32]), (*a3 + 8 * v5), v83);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v5 < v123)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v122 >= *(v16 + 2))
        {
          goto LABEL_100;
        }

        v124 = &v16[16 * v122];
        *(v124 + 4) = v123;
        *(v124 + 5) = v5;
        v148 = v16;
        specialized Array.remove(at:)(v84);
        v16 = v148;
        v5 = *(v148 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v89 = &v16[16 * v5 + 32];
      v90 = *(v89 - 64);
      v91 = *(v89 - 56);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_101;
      }

      v94 = *(v89 - 48);
      v93 = *(v89 - 40);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_102;
      }

      v96 = &v16[16 * v5];
      v98 = *v96;
      v97 = *(v96 + 1);
      v95 = __OFSUB__(v97, v98);
      v99 = v97 - v98;
      if (v95)
      {
        goto LABEL_104;
      }

      v95 = __OFADD__(v87, v99);
      v100 = v87 + v99;
      if (v95)
      {
        goto LABEL_107;
      }

      if (v100 >= v92)
      {
        v118 = &v16[16 * v84 + 32];
        v120 = *v118;
        v119 = *(v118 + 1);
        v95 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v95)
        {
          goto LABEL_111;
        }

        if (v87 < v121)
        {
          v84 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v138;
    if (v138 >= v14)
    {
      goto LABEL_87;
    }
  }

  v137 = v16;
  v131 = v6;
  v139 = *a3;
  v60 = v139 + 8 * v17 - 8;
  v61 = (v134 - v17);
  v133 = v59;
LABEL_29:
  v138 = v17;
  v5 = *(v139 + 8 * v17);
  v135 = v61;
  v136 = v60;
  v62 = v61;
  while (1)
  {
    v145 = v62;
    v147 = *v60;
    v63 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v64 = *(v5 + v63);
    v65 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v66 = *v141;
    v68 = v143;
    v67 = v144;
    (*v141)(v143, v64 + v65, v144);
    v69 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    v70 = v147;
    swift_beginAccess();
    v71 = *&v70[v69];
    v72 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v73 = v71 + v72;
    v74 = v142;
    v66(v142, v73, v67);
    v146 = v5;
    v75 = v147;
    LOBYTE(v71) = static Date.< infix(_:_:)();
    v5 = v140;
    v76 = *v140;
    (*v140)(v74, v67);
    v76(v68, v67);

    if ((v71 & 1) == 0)
    {
LABEL_28:
      v17 = (v138 + 1);
      v60 = v136 + 8;
      v61 = v135 - 1;
      if (v138 + 1 != v133)
      {
        goto LABEL_29;
      }

      v17 = v133;
      a3 = v130;
      v6 = v131;
      v16 = v137;
      goto LABEL_36;
    }

    v77 = v145;
    if (!v139)
    {
      break;
    }

    v78 = *v60;
    v5 = *(v60 + 8);
    *v60 = v5;
    *(v60 + 8) = v78;
    v60 -= 8;
    v79 = __CFADD__(v77, 1);
    v62 = v77 + 1;
    if (v79)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  v6 = v4;
  v117 = a1;
  v126 = type metadata accessor for Date();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew()(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        specialized Array.remove(at:)(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      v25 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v23 startDate];
      v27 = v125;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v122) = static Date.< infix(_:_:)();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 startDate];
        v35 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = [v33 startDate];
        v37 = v125;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v36) = static Date.< infix(_:_:)() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        specialized Array.remove(at:)(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 startDate];
    v54 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = [v52 startDate];
    v56 = v125;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v55) = static Date.< infix(_:_:)();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = type metadata accessor for Date();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = static Date.< infix(_:_:)();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = static Date.< infix(_:_:)();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v61, &v60, &v59);
  return 1;
}

{
  v45 = a3;
  v43 = type metadata accessor for Chronicle.Entry();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v48 = a1;
  v47 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v24 = a4 + v19;
    if (v19 < 1)
    {
      v27 = a4 + v19;
    }

    else
    {
      v25 = -v15;
      v26 = a4 + v19;
      v27 = v24;
      v41 = v25;
      v42 = a4;
      do
      {
        v39[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v45;
          if (v28 <= a1)
          {
            v48 = v28;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v27;
          v45 += v25;
          v32 = v26 + v25;
          outlined init with copy of Chronicle.Entry(v32, v13);
          v33 = v29;
          v34 = v29;
          v35 = v13;
          v36 = v44;
          outlined init with copy of Chronicle.Entry(v34, v44);
          v37 = static Date.< infix(_:_:)();
          v38 = v36;
          v13 = v35;
          outlined destroy of Chronicle.Entry(v38);
          outlined destroy of Chronicle.Entry(v35);
          if (v37)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v45 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v42;
          v25 = v41;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v45 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v40;
          v25 = v41;
        }

        else
        {
          v27 = v40;
          v25 = v41;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v46 = a4 + v18;
    if (v18 >= 1 && a2 < v45)
    {
      do
      {
        outlined init with copy of Chronicle.Entry(a2, v13);
        v22 = v44;
        outlined init with copy of Chronicle.Entry(a4, v44);
        v23 = static Date.< infix(_:_:)();
        outlined destroy of Chronicle.Entry(v22);
        outlined destroy of Chronicle.Entry(v13);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v48 = a1;
      }

      while (a4 < v20 && a2 < v45);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v48, &v47, &v46, type metadata accessor for Chronicle.Entry);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *a1, id *a2, id *a3, void **a4)
{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 timestamp];
        v42 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = [v40 timestamp];
        v44 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v43) = static Date.< infix(_:_:)();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 timestamp];
        v22 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 timestamp];
        v24 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v23) = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 startDate];
        v42 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = [v40 startDate];
        v44 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v43) = static Date.< infix(_:_:)();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 startDate];
        v22 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 startDate];
        v24 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v23) = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t specialized LocationManager.add(observer:)(void *a1, char *a2)
{
  return specialized LocationManager.add(observer:)(a1, a2, &unk_282249800, closure #1 in LocationManager.add(observer:)partial apply, &block_descriptor_62);
}

{
  return specialized LocationManager.add(observer:)(a1, a2, &unk_2822497B0, partial apply for closure #1 in LocationManager.add(observer:), &block_descriptor_55);
}

uint64_t specialized LocationManager.add(observer:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *&a2[OBJC_IVAR___WOCoreLocationManager_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t type metadata accessor for GPSLockProvider()
{
  result = type metadata singleton initialization cache for GPSLockProvider;
  if (!type metadata singleton initialization cache for GPSLockProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t specialized static GPSLockProvider.timeDifferences(for:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10Foundation4DateV7elementtMd, &_sSi6offset_10Foundation4DateV7elementtMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = (&v51 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10Foundation4DateV7elementtSgMd, &_sSi6offset_10Foundation4DateV7elementtSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v51 - v15);
  v61 = a1;
  v52 = a1;

  specialized MutableCollection<>.sort(by:)(&v61);
  i = 0;
  v18 = v61;
  v19 = v61[2];
  v54 = v3 + 16;
  v20 = (v7 + 56);
  v21 = (v7 + 48);
  v58 = (v3 + 32);
  v56 = v3;
  v22 = (v3 + 8);
  v53 = MEMORY[0x277D84F90];
  v59 = v61;
  v57 = v19;
  if (v19)
  {
    goto LABEL_3;
  }

LABEL_2:
  v23 = 1;
  for (i = v19; ; ++i)
  {
    (*v20)(v14, v23, 1, v6);
    outlined init with take of (offset: Int, element: Date)(v14, v16, &_sSi6offset_10Foundation4DateV7elementtSgMd, &_sSi6offset_10Foundation4DateV7elementtSgMR);
    if ((*v21)(v16, 1, v6) == 1)
    {
      break;
    }

    v28 = *v16;
    v29 = v60;
    (*v58)(v60, v16 + *(v6 + 48), v2);
    if (v28 >= 1)
    {
      if (v28 > v52[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v30 = v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * (v28 - 1);
      Date.timeIntervalSinceReferenceDate.getter();
      v32 = v31;
      Date.timeIntervalSinceReferenceDate.getter();
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
      }

      v36 = *(v53 + 2);
      v35 = *(v53 + 3);
      if (v36 >= v35 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v53);
      }

      (*v22)();
      v37 = v53;
      *(v53 + 2) = v36 + 1;
      *&v37[8 * v36 + 32] = v32 - v34;
    }

    else
    {
      (*v22)(v29, v2);
    }

    v18 = v59;
    v19 = v57;
    if (i == v57)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (i >= v18[2])
    {
      goto LABEL_22;
    }

    v25 = v55;
    v24 = v56;
    v26 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * i;
    v27 = *(v6 + 48);
    *v55 = i;
    (*(v24 + 16))(v25 + v27, v26, v2);
    outlined init with take of (offset: Int, element: Date)(v25, v14, &_sSi6offset_10Foundation4DateV7elementtMd, &_sSi6offset_10Foundation4DateV7elementtMR);
    v23 = 0;
  }

  if (one-time initialization token for app == -1)
  {
    goto LABEL_18;
  }

LABEL_23:
  swift_once();
LABEL_18:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static WOLog.app);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v53;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61 = v44;
    *v43 = 136315138;

    v46 = MEMORY[0x20F2E6F70](v45, MEMORY[0x277D839F8]);
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v61);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_20AEA4000, v39, v40, "[GPSLockProvider] timeDifferences: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v43, -1, -1);
  }

  return v42;
}

BOOL specialized static GPSLockProvider.areDatesTimely(_:)(void *a1)
{
  v1 = specialized static GPSLockProvider.timeDifferences(for:)(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v3;
      if (*v3 > 1.2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 16);

  return v8 == 0;
}

BOOL specialized static GPSLockProvider.areLocationsAccurate(_:)(unint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_18:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x20F2E7A20](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        [v5 horizontalAccuracy];
        if (v8 > 50.0 || ([v6 horizontalAccuracy], v9 < 0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = *(v13 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v7 != v2);
      v10 = v13;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_23:
    v11 = __CocoaSet.count.getter();
    goto LABEL_22;
  }

LABEL_20:
  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v11 = *(v10 + 16);
LABEL_22:

  return v11 == 0;
}

BOOL specialized static GPSLockProvider.gpsLock(for:relativeTo:)(unint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for Date();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v47);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v9;
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (v10 < 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < 3)
    {
LABEL_3:
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.app);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        if (a1 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v14 + 4) = v15;

        _os_log_impl(&dword_20AEA4000, v12, v13, "[GPSLockProvider] locations.count=%ld not enough to evaluate lock status", v14, 0xCu);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v42 = a2;
  v43 = a1 >> 62;
  v48 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v17 = 0;
  v18 = v48;
  v46 = a1;
  v19 = a1 & 0xC000000000000001;
  v45 = v4 + 32;
  do
  {
    if (v19)
    {
      v20 = MEMORY[0x20F2E7A20](v17, v46);
    }

    else
    {
      v20 = *(v46 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = [v20 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v18;
    v24 = v18[2];
    v23 = v18[3];
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
      v18 = v48;
    }

    ++v17;
    v18[2] = v24 + 1;
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v26 = *(v4 + 72);
    v27 = *(v4 + 32);
    v27(v18 + v25 + v26 * v24, v8, v47);
  }

  while (v10 != v17);
  v28 = v44;
  (*(v4 + 16))(v44, v42, v47);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v29 = v43;
  v31 = v18[2];
  v30 = v18[3];
  if (v31 >= v30 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v18);
  }

  v18[2] = v31 + 1;
  v27(v18 + v25 + v31 * v26, v28, v47);
  v32 = specialized static GPSLockProvider.areDatesTimely(_:)(v18);
  v33 = v46;
  v34 = specialized static GPSLockProvider.areLocationsAccurate(_:)(v46);

  v16 = v32 && v34;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WOLog.app);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109888;
    *(v38 + 4) = v16;
    *(v38 + 8) = 1024;
    *(v38 + 10) = v32;
    *(v38 + 14) = 1024;
    *(v38 + 16) = v34;
    *(v38 + 20) = 2048;
    if (v29)
    {
      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 22) = v39;

    _os_log_impl(&dword_20AEA4000, v36, v37, "[GPSLockProvider] gpsLocked=%{BOOL}d timely=%{BOOL}d accurate=%{BOOL}d locations=%ld", v38, 0x1Eu);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  else
  {
  }

  return v16;
}

uint64_t specialized GPSLockProvider.locationDidUpdate(locations:locationManager:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in GPSLockProvider.locationDidUpdate(locations:locationManager:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = __CocoaSet.count.getter();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized GPSLockProvider.locationDidFail(error:locationManager:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in GPSLockProvider.locationDidFail(error:locationManager:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_81;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t specialized GPSLockProvider.authorizationStatusDidUpdate(authorizationStatus:locationManager:)(int a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in GPSLockProvider.authorizationStatusDidUpdate(authorizationStatus:locationManager:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_75_0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t specialized GPSLockProvider.locationManagerStateDidChange(state:locationManager:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in GPSLockProvider.locationManagerStateDidChange(state:locationManager:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_69;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void type metadata completion function for GPSLockProvider()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Date?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t type metadata accessor for CLLocation(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void partial apply for closure #1 in GPSLockProvider.locationDidUpdate(locations:locationManager:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in GPSLockProvider.locationDidUpdate(locations:locationManager:)();
}

uint64_t outlined init with take of (offset: Int, element: Date)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void static HeartRateConfiguration.restingHeartRate(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.valueStore;
  v6 = qword_27C75FF10;
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v8 = v5;
  v9 = v6;

  v10 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B458A30);
  v12[4] = partial apply for closure #1 in static HeartRateConfiguration.restingHeartRate(completion:);
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_17;
  v11 = _Block_copy(v12);

  [v8 dataForKey:v10 completion:v11];
  _Block_release(v11);
}

uint64_t closure #1 in static HeartRateConfiguration.restingHeartRate(completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v10 = type metadata accessor for JSONDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  if (a2 >> 60 == 15)
  {
    static HeartRateConfiguration.computedRestingHeartRate(completion:)(a5, a6);
  }

  else
  {
    type metadata accessor for HeartRateSample();
    outlined copy of Data._Representation(a1, a2);
    lazy protocol witness table accessor for type HeartRateSample and conformance HeartRateSample(&lazy protocol witness table cache variable for type HeartRateSample and conformance HeartRateSample, type metadata accessor for HeartRateSample);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    Date.timeIntervalSinceNow.getter();
    if (fabs(v14) >= 2592000.0)
    {
      static HeartRateConfiguration.computedRestingHeartRate(completion:)(a5, a6);
      outlined consume of Data?(a1, a2);
    }

    else
    {
      v15 = *(v16 + 16);
      a5();
      outlined consume of Data?(a1, a2);
    }
  }
}

uint64_t static HeartRateConfiguration.computedRestingHeartRate(completion:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v54 = type metadata accessor for Calendar.Component();
  v51 = *(v54 - 1);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Identifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v52 = v25;
  v53 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v48 - v26;
  static Date.now.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9830], v5);
  Calendar.init(identifier:)();
  v28 = v9;
  v29 = v22;
  (*(v6 + 8))(v28, v5);
  v30 = v51;
  v31 = v54;
  (*(v51 + 104))(v4, *MEMORY[0x277CC9998], v54);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v30 + 8))(v4, v31);
  (*(v49 + 8))(v13, v50);
  v54 = v20;
  outlined init with copy of Date?(v20, v18);
  isa = 0;
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v18, v21);
  }

  v33 = objc_opt_self();
  v34 = Date._bridgeToObjectiveC()().super.isa;
  v35 = [v33 predicateForSamplesWithStartDate:isa endDate:v34 options:0];

  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v36 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCC20]);
  v37 = v53;
  (*(v29 + 16))(v53, v27, v21);
  v38 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v39 = (v52 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v29 + 32))(v40 + v38, v37, v21);
  v41 = v56;
  *(v40 + v39) = v55;
  v42 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v57;
  *v42 = v41;
  v42[1] = v43;
  v44 = objc_allocWithZone(MEMORY[0x277CCDA68]);
  aBlock[4] = partial apply for closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:);
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_6_1;
  v45 = _Block_copy(aBlock);

  v46 = [v44 initWithQuantityType:v36 quantitySamplePredicate:v35 options:2 completionHandler:v45];
  _Block_release(v45);

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  [static HeartRateConfiguration.healthStore executeQuery_];

  outlined destroy of Date?(v54);
  return (*(v29 + 8))(v27, v21);
}

id closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v49 = a6;
  v50 = a7;
  v44 = a5;
  v51 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v43 = a2;
    v27 = [v43 averageQuantity];
    if (v27)
    {
      v28 = v27;
      (*(v23 + 16))(v26, a4, v22);
      v29 = type metadata accessor for HeartRateSample();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      (*(v23 + 32))(v32 + OBJC_IVAR____TtC11WorkoutCore15HeartRateSample_computationDate, v26, v22);
      type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      (*(v18 + 104))(v21, *MEMORY[0x277D851C8], v17);
      v33 = v28;
      v42 = static OS_dispatch_queue.global(qos:)();
      (*(v18 + 8))(v21, v17);
      v34 = swift_allocObject();
      v34[2] = v44;
      v34[3] = v32;
      v35 = v50;
      v34[4] = v49;
      v34[5] = v35;
      v34[6] = v33;
      aBlock[4] = partial apply for closure #1 in closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:);
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_12_0;
      v36 = _Block_copy(aBlock);
      v37 = v33;

      static DispatchQoS.unspecified.getter();
      v52 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type HeartRateSample and conformance HeartRateSample(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v38 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v42;
      MEMORY[0x20F2E7580](0, v16, v12, v36);

      _Block_release(v36);

      (*(v47 + 8))(v12, v38);
      (*(v45 + 8))(v16, v46);

      goto LABEL_8;
    }
  }

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    swift_once();
  }

  v49(static HeartRateConfiguration.defaultRestingHeartRate, 0);
LABEL_8:
  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  return [static HeartRateConfiguration.healthStore stopQuery_];
}

uint64_t closure #1 in closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  aBlock[7] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v8 = static HeartRateConfiguration.valueStore;
  v7 = qword_27C75FF10;
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for HeartRateSample();
  lazy protocol witness table accessor for type HeartRateSample and conformance HeartRateSample(&lazy protocol witness table cache variable for type HeartRateSample and conformance HeartRateSample, type metadata accessor for HeartRateSample);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B458A30);
  aBlock[0] = 0;
  LODWORD(v8) = [v8 setData:isa forKey:v16 error:aBlock];

  v17 = aBlock[0];
  if (v8)
  {
    aBlock[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_15_0;
    v18 = _Block_copy(aBlock);
    v19 = v17;
    [v7 forceNanoSyncWithOptions:0 completion:v18];
    outlined consume of Data._Representation(v12, v14);
    _Block_release(v18);
  }

  else
  {
    v20 = aBlock[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v12, v14);
  }

  result = a3(a5, 1);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

id partial apply for closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return closure #1 in static HeartRateConfiguration.computedRestingHeartRate(completion:)(a1, a2, a3, v3 + v8, v10, v12, v13);
}

uint64_t type metadata accessor for HKQuantityType(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HeartRateSample and conformance HeartRateSample(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), lazy protocol witness table accessor for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason(&lazy protocol witness table cache variable for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      lazy protocol witness table accessor for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason(&lazy protocol witness table cache variable for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v3 + 1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    v5 = Hasher.init(_seed:)();
    MetricPlatterType.rawValue.getter(v5);
    String.hash(into:)();

    v6 = Hasher._finalize()();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      while (1)
      {
        v10 = 0xE800000000000000;
        v11 = 0x647261646E617473;
        switch(*(*(a2 + 48) + v8))
        {
          case 1:
            v11 = 0x647261646E617473;
            goto LABEL_14;
          case 2:
            v11 = 0x6C61767265746E69;
            break;
          case 3:
            v11 = 0x6C61767265746E69;
LABEL_14:
            v10 = 0xEE00646E6F636553;
            break;
          case 4:
            v10 = 0xE500000000000000;
            v11 = 0x7265636170;
            break;
          case 5:
            v10 = 0xE400000000000000;
            v11 = 1701011826;
            break;
          case 6:
            v10 = 0xE700000000000000;
            v11 = 0x746E656D676573;
            break;
          case 7:
            v11 = 0x7974697669746361;
            v10 = 0xED000073676E6952;
            break;
          case 8:
            v10 = 0xE500000000000000;
            v11 = 0x6F65646976;
            break;
          case 9:
            v10 = 0xE500000000000000;
            v11 = 0x74696C7073;
            break;
          case 0xA:
            v11 = 0x7461527472616568;
            v10 = 0xEE0073656E6F5A65;
            break;
          case 0xB:
            v10 = 0xEA00000000007472;
            v11 = 0x6F707369746C756DLL;
            break;
          case 0xC:
            v10 = 0xE500000000000000;
            v11 = 0x7265776F70;
            break;
          case 0xD:
            v11 = 0x6E6F5A7265776F70;
            v10 = 0xEA00000000007365;
            break;
          case 0xE:
            v11 = 0x6F69746176656C65;
            v10 = 0xE90000000000006ELL;
            break;
          case 0xF:
            v11 = 0x656D6F6465657073;
            v10 = 0xEB00000000726574;
            break;
          default:
            break;
        }

        v12 = 0xE800000000000000;
        v13 = 0x647261646E617473;
        switch(a1)
        {
          case 1:
            v14 = 0x647261646E617473;
            goto LABEL_38;
          case 2:
            if (v11 != 0x6C61767265746E69)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 3:
            v14 = 0x6C61767265746E69;
LABEL_38:
            v12 = 0xEE00646E6F636553;
            if (v11 != v14)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 4:
            v12 = 0xE500000000000000;
            v15 = 1701011824;
            goto LABEL_29;
          case 5:
            v12 = 0xE400000000000000;
            if (v11 != 1701011826)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 6:
            v12 = 0xE700000000000000;
            if (v11 != 0x746E656D676573)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 7:
            v12 = 0xED000073676E6952;
            if (v11 != 0x7974697669746361)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 8:
            v12 = 0xE500000000000000;
            if (v11 != 0x6F65646976)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 9:
            v12 = 0xE500000000000000;
            if (v11 != 0x74696C7073)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 10:
            v13 = 0x7461527472616568;
            v12 = 0xEE0073656E6F5A65;
            goto LABEL_49;
          case 11:
            v12 = 0xEA00000000007472;
            if (v11 != 0x6F707369746C756DLL)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 12:
            v12 = 0xE500000000000000;
            v15 = 1702326128;
LABEL_29:
            if (v11 != (v15 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 13:
            v12 = 0xEA00000000007365;
            if (v11 != 0x6E6F5A7265776F70)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 14:
            v12 = 0xE90000000000006ELL;
            if (v11 != 0x6F69746176656C65)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 15:
            v12 = 0xEB00000000726574;
            if (v11 != 0x656D6F6465657073)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v11 != v13)
            {
              goto LABEL_51;
            }

LABEL_50:
            if (v10 == v12)
            {

              v16 = 1;
              return v16 & 1;
            }

LABEL_51:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              return v16 & 1;
            }

            v8 = (v8 + 1) & v9;
            if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              return v16 & 1;
            }

            break;
        }
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NSNumber(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int FIUIWorkoutActivityType.supportedSplits.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 - 13) > 0x3A)
  {
    goto LABEL_11;
  }

  if (((1 << (v1 - 13)) & 0x600808001000800) != 0)
  {
    v2 = &outlined read-only object #0 of FIUIWorkoutActivityType.supportedSplits.getter;
    goto LABEL_12;
  }

  if (v1 != 13)
  {
    if (v1 == 35)
    {
      v3 = [v0 isIndoor];
      v4 = &outlined read-only object #4 of FIUIWorkoutActivityType.supportedSplits.getter;
      v5 = &outlined read-only object #3 of FIUIWorkoutActivityType.supportedSplits.getter;
      goto LABEL_8;
    }

LABEL_11:
    v2 = &outlined read-only object #5 of FIUIWorkoutActivityType.supportedSplits.getter;
    goto LABEL_12;
  }

  v3 = [objc_opt_self() fiui:1 activitySupportsMetricType:v0 activityType:1 activityMoveMode:?];
  v4 = &outlined read-only object #2 of FIUIWorkoutActivityType.supportedSplits.getter;
  v5 = &outlined read-only object #1 of FIUIWorkoutActivityType.supportedSplits.getter;
LABEL_8:
  if (v3)
  {
    v2 = v5;
  }

  else
  {
    v2 = v4;
  }

LABEL_12:

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19NLWorkoutSplitsTypeV_Tt0g5Tf4g_n(v2);
}

BOOL @objc FIUIWorkoutActivityType.supportsTimeSplits.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportedSplits.getter();
  v3 = specialized Set.contains(_:)(2, v2);

  return v3;
}

BOOL FIUIWorkoutActivityType.supportsTimeSplits.getter()
{
  v0 = FIUIWorkoutActivityType.supportedSplits.getter();
  v1 = specialized Set.contains(_:)(2, v0);

  return v1;
}

BOOL @objc FIUIWorkoutActivityType.supportsDistanceSplits.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  v3 = 0;
  v4 = v2 > 0x29 || ((1 << v2) & 0x2908A20000ALL) == 0;
  if (v4 && v2 != 75)
  {
    v6 = FIUIWorkoutActivityType.supportedSplits.getter();
    v3 = specialized Set.contains(_:)(1, v6);
  }

  return v3;
}

BOOL FIUIWorkoutActivityType.supportsDistanceSplits.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  v2 = v1 > 0x29 || ((1 << v1) & 0x2908A20000ALL) == 0;
  if (!v2 || v1 == 75)
  {
    return 0;
  }

  v4 = FIUIWorkoutActivityType.supportedSplits.getter();
  v5 = specialized Set.contains(_:)(1, v4);

  return v5;
}

uint64_t lazy protocol witness table accessor for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

WorkoutCore::MirroredHostCountdownStart __swiftcall MirroredHostCountdownStart.init(hostMachDelay:clientMachTimestamp:)(Swift::Double hostMachDelay, Swift::Double clientMachTimestamp)
{
  *v2 = hostMachDelay;
  v2[1] = clientMachTimestamp;
  result.clientMachTimestamp = clientMachTimestamp;
  result.hostMachDelay = hostMachDelay;
  return result;
}

uint64_t MirroredHostCountdownStart.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostCountdownStart.protobuf.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart();
  return static Message.with(_:)();
}

double *closure #1 in MirroredHostCountdownStart.protobuf.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 _s11WorkoutCore26MirroredHostCountdownStartV8protobufAA06Apple_a1_b1_cdeF0VvgyAFzXEfU_TA_0(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart);
  }

  return result;
}

uint64_t MirroredHostCountdownStart.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0x6863614D74736F68, 0xEF203A79616C6544);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostCountdownStart()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0x6863614D74736F68, 0xEF203A79616C6544);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostCountdownStart@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostCountdownStart()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart();
  return static Message.with(_:)();
}

uint64_t MirroredHostCountdownStart.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

Swift::Int MirroredHostCountdownStart.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostCountdownStart()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostCountdownStart(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostCountdownStart(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredHostCountdownStart(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t static WorkoutConfiguration.uuid(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for URLComponents();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of URLComponents?(v13, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    result = URLComponents.queryItems.getter();
    if (result)
    {
      v20 = result;
      v31 = v9;
      v32 = v18;
      v33 = v15;
      v34 = v14;
      v35 = a1;
      v21 = *(result + 16);
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          if (v22 >= *(v20 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v3 + 16))(v7, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
          if (URLQueryItem.name.getter() == 1684632949 && v23 == 0xE400000000000000)
          {
            break;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_14;
          }

          ++v22;
          result = (*(v3 + 8))(v7, v2);
          if (v21 == v22)
          {
            goto LABEL_11;
          }
        }

LABEL_14:

        v25 = v31;
        (*(v3 + 32))(v31, v7, v2);
        URLQueryItem.value.getter();
        v27 = v26;
        (*(v3 + 8))(v25, v2);
        v28 = v32;
        if (v27)
        {
          UUID.init(uuidString:)();

          return (*(v33 + 8))(v28, v34);
        }

        (*(v33 + 8))(v32, v34);
      }

      else
      {
LABEL_11:
        (*(v33 + 8))(v32, v34);
      }

      a1 = v35;
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }
  }

  v29 = type metadata accessor for UUID();
  return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

unsigned __int8 *static WorkoutConfiguration.configuration(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = &v109[-v4];
  v5 = type metadata accessor for UUID();
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URLQueryItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x28223BE20](v9);
  v122 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v109[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v109[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v109[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v109[-v21];
  MEMORY[0x28223BE20](v20);
  v123 = &v109[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v109[-v26];
  v28 = type metadata accessor for URLComponents();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v109[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    outlined destroy of URLComponents?(v27, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    return 0;
  }

  v114 = a1;
  (*(v29 + 32))(v32, v27, v28);
  v33 = URLComponents.queryItems.getter();
  if (!v33)
  {
    (*(v29 + 8))(v32, v28);
    return 0;
  }

  v34 = v33;
  v116 = v29;
  v117 = v32;
  v112 = v8;
  v113 = v5;
  v115 = v28;
  v35 = *(v33 + 16);
  if (!v35)
  {
    goto LABEL_114;
  }

  v36 = v9;
  v37 = 0;
  v38 = 0xD000000000000011;
  v128 = v10 + 16;
  v129 = (v10 + 8);
  while (1)
  {
    if (v37 >= *(v34 + 16))
    {
      __break(1u);
LABEL_102:
      (*(v37 + 8))(v35, v38);
LABEL_103:
      (*(v116 + 8))(v10, v115);
      return 0;
    }

    v39 = *(v10 + 9);
    v125 = (v10[80] + 32) & ~v10[80];
    v126 = v39;
    v127 = *(v10 + 2);
    v127(v22, v34 + v125 + v39 * v37, v36);
    if (URLQueryItem.name.getter() == 0xD000000000000011 && 0x800000020B453F70 == v40)
    {
      break;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_14;
    }

    ++v37;
    (*v129)(v22, v36);
    if (v35 == v37)
    {
      goto LABEL_114;
    }
  }

LABEL_14:

  v42 = *(v10 + 4);
  v43 = v123;
  (v42)(v123, v22, v36);
  v44 = URLQueryItem.value.getter();
  v46 = v45;
  v111 = v10 + 32;
  v47 = *(v10 + 1);
  result = v47(v43, v36);
  if (!v46)
  {
LABEL_100:
    (*(v116 + 8))(v117, v115);
    return 0;
  }

  v49 = HIBYTE(v46) & 0xF;
  v50 = v44 & 0xFFFFFFFFFFFFLL;
  if (!((v46 & 0x2000000000000000) != 0 ? HIBYTE(v46) & 0xF : v44 & 0xFFFFFFFFFFFFLL))
  {
LABEL_114:
    (*(v116 + 8))(v117, v115);

    return 0;
  }

  if ((v46 & 0x1000000000000000) != 0)
  {
    v54 = specialized _parseInteger<A, B>(ascii:radix:)(v44, v46, 10);
    v108 = v107;

    v52 = v117;
    if ((v108 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_110:
    (*(v116 + 8))(v52, v115);
    return 0;
  }

  if ((v46 & 0x2000000000000000) != 0)
  {
    v130[0] = v44;
    v130[1] = v46 & 0xFFFFFFFFFFFFFFLL;
    if (v44 == 43)
    {
      v52 = v117;
      if (!v49)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (--v49)
      {
        v54 = 0;
        v64 = v130 + 1;
        while (1)
        {
          v65 = *v64 - 48;
          if (v65 > 9)
          {
            break;
          }

          v66 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v66 + v65;
          if (__OFADD__(v66, v65))
          {
            break;
          }

          ++v64;
          if (!--v49)
          {
            goto LABEL_76;
          }
        }
      }
    }

    else
    {
      v52 = v117;
      if (v44 == 45)
      {
        if (!v49)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (--v49)
        {
          v54 = 0;
          v58 = v130 + 1;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              break;
            }

            v54 = v60 - v59;
            if (__OFSUB__(v60, v59))
            {
              break;
            }

            ++v58;
            if (!--v49)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v49)
      {
        v54 = 0;
        v69 = v130;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v49)
          {
            goto LABEL_76;
          }
        }
      }
    }

LABEL_75:
    v54 = 0;
    LOBYTE(v49) = 1;
    goto LABEL_76;
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    result = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v52 = v117;
  v53 = *result;
  if (v53 == 43)
  {
    if (v50 < 1)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v49 = v50 - 1;
    if (v50 == 1)
    {
      goto LABEL_75;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    v61 = result + 1;
    while (1)
    {
      v62 = *v61 - 48;
      if (v62 > 9)
      {
        goto LABEL_75;
      }

      v63 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_75;
      }

      v54 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_75;
      }

      ++v61;
      if (!--v49)
      {
        goto LABEL_76;
      }
    }
  }

  if (v53 != 45)
  {
    if (!v50)
    {
      goto LABEL_75;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v67 = *result - 48;
      if (v67 > 9)
      {
        goto LABEL_75;
      }

      v68 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_75;
      }

      v54 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_75;
      }

      ++result;
      if (!--v50)
      {
        goto LABEL_67;
      }
    }
  }

  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_119;
  }

  v49 = v50 - 1;
  if (v50 == 1)
  {
    goto LABEL_75;
  }

  v54 = 0;
  if (result)
  {
    v55 = result + 1;
    while (1)
    {
      v56 = *v55 - 48;
      if (v56 > 9)
      {
        goto LABEL_75;
      }

      v57 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_75;
      }

      v54 = v57 - v56;
      if (__OFSUB__(v57, v56))
      {
        goto LABEL_75;
      }

      ++v55;
      if (!--v49)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_67:
  LOBYTE(v49) = 0;
LABEL_76:
  v131 = v49;
  v72 = v49;

  if (v72)
  {
    goto LABEL_110;
  }

LABEL_77:
  v73 = v54 - 1;
  if ((v54 - 1) >= 5)
  {
    goto LABEL_110;
  }

  v74 = URLComponents.queryItems.getter();
  if (!v74)
  {
    goto LABEL_110;
  }

  v75 = v74;
  v123 = v42;
  v76 = *(v74 + 16);
  if (!v76)
  {
    goto LABEL_114;
  }

  v77 = 0;
  v110 = 1u >> v73;
  v78 = v74 + v125;
  while (1)
  {
    if (v77 >= *(v75 + 16))
    {
      __break(1u);
      goto LABEL_114;
    }

    v127(v124, v78, v36);
    if (URLQueryItem.name.getter() == 1684632949 && v79 == 0xE400000000000000)
    {
      break;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v80)
    {
      goto LABEL_88;
    }

    ++v77;
    v47(v124, v36);
    v78 += v126;
    if (v76 == v77)
    {
      goto LABEL_114;
    }
  }

LABEL_88:

  v81 = v119;
  (v123)(v119, v124, v36);
  URLQueryItem.value.getter();
  v83 = v82;
  v47(v81, v36);
  v38 = v113;
  v84 = v120;
  v37 = v121;
  v10 = v117;
  if (!v83)
  {
    goto LABEL_103;
  }

  UUID.init(uuidString:)();

  if ((*(v37 + 48))(v84, 1, v38) == 1)
  {
    (*(v116 + 8))(v10, v115);
    outlined destroy of URLComponents?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  v35 = v112;
  (*(v37 + 32))(v112, v84, v38);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    goto LABEL_102;
  }

  v85 = result;
  v86 = *(result + 2);
  if (!v86)
  {
LABEL_99:

    (*(v121 + 8))(v112, v38);
    goto LABEL_100;
  }

  v87 = 0;
  v88 = &result[v125];
  while (v87 < *(v85 + 2))
  {
    v127(v122, v88, v36);
    if (URLQueryItem.name.getter() == 0x7974697669746361 && v89 == 0xEC00000065707954)
    {

LABEL_105:

      v91 = v118;
      (v123)(v118, v122, v36);
      v92 = URLQueryItem.value.getter();
      v94 = v93;
      v47(v91, v36);
      v95 = v121;
      v52 = v117;
      if (!v94 || (v96 = MEMORY[0x20F2E6C00](v92, v94), , v97 = [objc_opt_self() activityTypeFromUniqueIdentifier_], v96, !v97))
      {
        (*(v95 + 8))(v112, v38);
        goto LABEL_110;
      }

      v98 = [v97 effectiveTypeIdentifier];
      LODWORD(v129) = [v97 isIndoor];
      v99 = [v97 isPartOfMultiSport];
      v100 = [v97 metadata];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v101 = [v97 auxiliaryTypeIdentifier];
      v102 = objc_allocWithZone(MEMORY[0x277D0A810]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v104 = [v102 initWithActivityTypeIdentifier:v98 isIndoor:v129 isPartOfMultiSport:v99 metadata:isa auxiliaryTypeIdentifier:v101];

      if (v110)
      {
        v105 = v112;
        v106 = specialized static GoalWorkoutConfiguration.configuration(url:uuid:activityType:)(v114, v112, v104);

        (*(v95 + 8))(v105, v113);
        (*(v116 + 8))(v117, v115);
        return v106;
      }

      (*(v95 + 8))(v112, v113);
      goto LABEL_100;
    }

    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v90)
    {
      goto LABEL_105;
    }

    ++v87;
    result = v47(v122, v36);
    v88 += v126;
    if (v86 == v87)
    {
      goto LABEL_99;
    }
  }

LABEL_122:
  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.launchURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x20F2E4220](0xD000000000000014, 0x800000020B45A0D0);
  v12 = [v1 urlQueryItems];
  type metadata accessor for URLQueryItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    outlined destroy of URLComponents?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a1;
      v19 = v18;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v19 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type URLComponents and conformance URLComponents();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v29);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Failed to generate URL with components: %s", v19, 0xCu);
      v23 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v23, -1, -1);
      v24 = v19;
      a1 = v28;
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    v25 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v6, v13);
    v25 = 0;
  }

  (*(v14 + 56))(a1, v25, 1, v13);
  return (*(v8 + 8))(v11, v7);
}

uint64_t WorkoutConfiguration.urlQueryItems()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v7 = *(type metadata accessor for URLQueryItem() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20B423A20;
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v11, v2);
  UUID.uuidString.getter();
  (*(v3 + 8))(v6, v2);
  URLQueryItem.init(name:value:)();

  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v13 = [*(v1 + v12) uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLQueryItem.init(name:value:)();

  v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v16 = *(v1 + v14) + 1;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  return v10;
}

void *GoalWorkoutConfiguration.urlQueryItems()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v27, sel_urlQueryItems);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v25;
  v11 = [v25 goalTypeIdentifier];

  v25 = v11;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v9);
  }

  v9[2] = v13 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v7, v3);
  v28 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v25;
  v15 = [v25 value];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20B4282E0;
    v17 = [v15 _unit];
    [v15 doubleValueForUnit_];

    Double.description.getter();
    URLQueryItem.init(name:value:)();

    v18 = [v15 _unit];
    v19 = [v18 unitString];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v25 = v20;
    v26 = v22;
    String.init<A>(_:)();
    URLQueryItem.init(name:value:)();

    specialized Array.append<A>(contentsOf:)(v16);

    return v28;
  }

  return v9;
}

Class @objc WorkoutConfiguration.urlQueryItems()(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for URLQueryItem();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

id specialized static GoalWorkoutConfiguration.configuration(url:uuid:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v141 = a3;
  v140 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v142 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v144 = &v131 - v9;
  MEMORY[0x28223BE20](v8);
  v143 = &v131 - v10;
  v152 = type metadata accessor for URLQueryItem();
  v11 = *(v152 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v152);
  v145 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v131 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v146 = &v131 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v131 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v131 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v131 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v131 - v28;
  v30 = type metadata accessor for URLComponents();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    outlined destroy of URLComponents?(v29, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    return 0;
  }

  v134 = v4;
  (*(v31 + 32))(v34, v29, v30);
  v35 = URLComponents.queryItems.getter();
  if (!v35)
  {
    (*(v31 + 8))(v34, v30);
    return 0;
  }

  v36 = v35;
  v133 = v3;
  v137 = v34;
  v135 = v30;
  v136 = v31;
  v37 = *(v35 + 16);
  if (!v37)
  {
LABEL_11:
    (*(v136 + 8))(v137, v135);

    return 0;
  }

  v38 = 0;
  v150 = (v11 + 8);
  v151 = (v11 + 16);
  v39 = 0xE800000000000000;
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
LABEL_82:
      (*(v39 + 8))(v37, v135);

      return 0;
    }

    v40 = *(v11 + 72);
    v147 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v148 = v40;
    v149 = *(v11 + 16);
    v149(v23, v36 + v147 + v40 * v38, v152);
    if (URLQueryItem.name.getter() == 0x657079546C616F67 && v41 == 0xE800000000000000)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_14;
    }

    ++v38;
    (*v150)(v23, v152);
    if (v37 == v38)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v43 = *(v11 + 32);
  v44 = v152;
  (v43)(v25, v23, v152);
  v45 = URLQueryItem.value.getter();
  v47 = v46;
  v48 = *(v11 + 8);
  v48(v25, v44);
  v39 = v136;
  v37 = v137;
  if (!v47)
  {
    goto LABEL_79;
  }

  v49 = HIBYTE(v47) & 0xF;
  v50 = v45 & 0xFFFFFFFFFFFFLL;
  if ((v47 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v47) & 0xF;
  }

  else
  {
    v51 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    goto LABEL_82;
  }

  if ((v47 & 0x1000000000000000) != 0)
  {
    v54 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v47, 10);
    v70 = v69;

    if (v70)
    {
      goto LABEL_79;
    }

    goto LABEL_84;
  }

  if ((v47 & 0x2000000000000000) != 0)
  {
    v155[0] = v45;
    v155[1] = v47 & 0xFFFFFFFFFFFFFFLL;
    if (v45 == 43)
    {
      if (!v49)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (--v49)
      {
        v54 = 0;
        v62 = v155 + 1;
        while (1)
        {
          v63 = *v62 - 48;
          if (v63 > 9)
          {
            break;
          }

          if (!is_mul_ok(v54, 0xAuLL))
          {
            break;
          }

          v57 = __CFADD__(10 * v54, v63);
          v54 = 10 * v54 + v63;
          if (v57)
          {
            break;
          }

          ++v62;
          if (!--v49)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v45 == 45)
    {
      if (!v49)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (--v49)
      {
        v54 = 0;
        v58 = v155 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          if (!is_mul_ok(v54, 0xAuLL))
          {
            break;
          }

          v57 = 10 * v54 >= v59;
          v54 = 10 * v54 - v59;
          if (!v57)
          {
            break;
          }

          ++v58;
          if (!--v49)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v49)
    {
      v54 = 0;
      v65 = v155;
      while (1)
      {
        v66 = *v65 - 48;
        if (v66 > 9)
        {
          break;
        }

        if (!is_mul_ok(v54, 0xAuLL))
        {
          break;
        }

        v57 = __CFADD__(10 * v54, v66);
        v54 = 10 * v54 + v66;
        if (v57)
        {
          break;
        }

        v65 = (v65 + 1);
        if (!--v49)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_77:
    v54 = 0;
    LOBYTE(v49) = 1;
    goto LABEL_78;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    v52 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
LABEL_119:
    v52 = _StringObject.sharedUTF8.getter();
  }

  v53 = *v52;
  if (v53 == 43)
  {
    if (v50 < 1)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v49 = v50 - 1;
    if (v50 == 1)
    {
      goto LABEL_77;
    }

    v54 = 0;
    if (!v52)
    {
      goto LABEL_69;
    }

    v60 = v52 + 1;
    while (1)
    {
      v61 = *v60 - 48;
      if (v61 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v54, 0xAuLL))
      {
        goto LABEL_77;
      }

      v57 = __CFADD__(10 * v54, v61);
      v54 = 10 * v54 + v61;
      if (v57)
      {
        goto LABEL_77;
      }

      ++v60;
      if (!--v49)
      {
        goto LABEL_78;
      }
    }
  }

  if (v53 != 45)
  {
    if (!v50)
    {
      goto LABEL_77;
    }

    v54 = 0;
    if (!v52)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v64 = *v52 - 48;
      if (v64 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v54, 0xAuLL))
      {
        goto LABEL_77;
      }

      v57 = __CFADD__(10 * v54, v64);
      v54 = 10 * v54 + v64;
      if (v57)
      {
        goto LABEL_77;
      }

      ++v52;
      if (!--v50)
      {
        goto LABEL_69;
      }
    }
  }

  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_121;
  }

  v49 = v50 - 1;
  if (v50 == 1)
  {
    goto LABEL_77;
  }

  v54 = 0;
  if (v52)
  {
    v55 = v52 + 1;
    while (1)
    {
      v56 = *v55 - 48;
      if (v56 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v54, 0xAuLL))
      {
        goto LABEL_77;
      }

      v57 = 10 * v54 >= v56;
      v54 = 10 * v54 - v56;
      if (!v57)
      {
        goto LABEL_77;
      }

      ++v55;
      if (!--v49)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_69:
  LOBYTE(v49) = 0;
LABEL_78:
  LOBYTE(v154) = v49;
  v67 = v49;

  if (v67)
  {
LABEL_79:
    (*(v39 + 8))(v37, v135);
    return 0;
  }

LABEL_84:
  if (v54 - 1 >= 3)
  {
    if (v54)
    {
      if (one-time initialization token for core != -1)
      {
        goto LABEL_125;
      }

      goto LABEL_98;
    }

    v77 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v78 = v133;
LABEL_96:
    v79 = v134;
    v80 = *(v134 + 16);
    v81 = v143;
    v80(v143, v140, v78);
    v82 = v80;
    v83 = v77;
    v151 = specialized Occurrence.__allocating_init(count:)(0);
    v84 = v144;
    v82(v144, v81, v78);
    v85 = v82;
    v86 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
    swift_beginAccess();
    v154 = v83;
    type metadata accessor for NLSessionActivityGoal();
    v152 = v83;
    Published.init(initialValue:)();
    swift_endAccess();
    v87 = v142;
    v82(v142, v84, v78);
    *&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v88 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v89 = type metadata accessor for Date();
    v90 = *(*(v89 - 8) + 56);
    v90(&v86[v88], 1, 1, v89);
    v90(&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v89);
    v91 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v92 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v92 - 8) + 56))(&v86[v91], 1, 1, v92);
    (*(v79 + 56))(&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v78);
    v93 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v85(&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v87, v78);
    v94 = v141;
    *&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v141;
    v86[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    v95 = v151;
    *&v86[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v151;
    swift_beginAccess();
    *&v86[v93] = 0;
    v86[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v96 = type metadata accessor for WorkoutConfiguration();
    v153.receiver = v86;
    v153.super_class = v96;
    v97 = v94;
    v98 = v95;
    v99 = objc_msgSendSuper2(&v153, sel_init);

    v100 = v152;
    v101 = *(v79 + 8);
    v101(v87, v78);
    v101(v144, v78);
    v101(v143, v78);
    (*(v136 + 8))(v137, v135);
    return v99;
  }

  else
  {
    v71 = URLComponents.queryItems.getter();
    if (!v71)
    {
      goto LABEL_79;
    }

    v72 = v71;
    v131 = v54;
    v132 = v43;
    v73 = *(v71 + 16);
    if (v73)
    {
      v37 = 0;
      v43 = 0x756C61566C616F67;
      v74 = v71 + v147;
      while (1)
      {
        if (v37 >= *(v72 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v149(v146, v74, v152);
        if (URLQueryItem.name.getter() == 0x756C61566C616F67 && v75 == 0xE900000000000065)
        {
          break;
        }

        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v76)
        {
          goto LABEL_102;
        }

        ++v37;
        v48(v146, v152);
        v74 += v148;
        if (v73 == v37)
        {
          goto LABEL_93;
        }
      }

LABEL_102:

      v108 = v139;
      v109 = v152;
      v132(v139, v146, v152);
      v110 = URLQueryItem.value.getter();
      v112 = v111;
      v48(v108, v109);
      v113 = v137;
      if (!v112 || (v155[0] = 0, v114 = specialized String.withCString<A>(_:)(v110, v112), , !v114) || (v115 = *v155, (v116 = URLComponents.queryItems.getter()) == 0))
      {
        (*(v39 + 8))(v113, v135);
        return 0;
      }

      v117 = v116;
      v118 = *(v116 + 16);
      if (!v118)
      {
        goto LABEL_11;
      }

      v37 = 0;
      v119 = v116 + v147;
      v39 = 0xE800000000000000;
      while (v37 < *(v117 + 16))
      {
        v149(v145, v119, v152);
        if (URLQueryItem.name.getter() == 0x74696E556C616F67 && v120 == 0xE800000000000000)
        {

LABEL_115:

          v122 = v138;
          v123 = v152;
          v132(v138, v145, v152);
          v124 = URLQueryItem.value.getter();
          v126 = v125;
          v48(v122, v123);
          v78 = v133;
          v127 = v131;
          if (v126)
          {
            v128 = MEMORY[0x20F2E6C00](v124, v126);

            v129 = [objc_opt_self() unitFromString_];

            v130 = [objc_opt_self() quantityWithUnit:v129 doubleValue:v115];
            v77 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:v127 value:v130];

            goto LABEL_96;
          }

          (*(v136 + 8))(v137, v135);
          return 0;
        }

        v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v121)
        {
          goto LABEL_115;
        }

        ++v37;
        v48(v145, v152);
        v119 += v148;
        if (v118 == v37)
        {
          goto LABEL_11;
        }
      }

LABEL_124:
      __break(1u);
LABEL_125:
      swift_once();
LABEL_98:
      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static WOLog.core);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v155[0] = v106;
        *v105 = 136315138;
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E55, 0xE700000000000000, v155);

        *(v105 + 4) = v107;
        _os_log_impl(&dword_20AEA4000, v103, v104, "unknown goal type: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x20F2E9420](v106, -1, -1);
        MEMORY[0x20F2E9420](v105, -1, -1);
      }

      goto LABEL_79;
    }

LABEL_93:
    (*(v39 + 8))(v137, v135);

    return 0;
  }
}

uint64_t outlined destroy of URLComponents?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URLComponents and conformance URLComponents()
{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    type metadata accessor for URLComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateSample.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74617475706D6F63;
  }

  else
  {
    v4 = 0x7461527472616568;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEF657461446E6F69;
  }

  if (*a2)
  {
    v6 = 0x74617475706D6F63;
  }

  else
  {
    v6 = 0x7461527472616568;
  }

  if (*a2)
  {
    v7 = 0xEF657461446E6F69;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateSample.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateSample.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateSample.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateSample.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateSample.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateSample.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7461527472616568;
  if (*v1)
  {
    v2 = 0x74617475706D6F63;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF657461446E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HeartRateSample.CodingKeys()
{
  if (*v0)
  {
    result = 0x74617475706D6F63;
  }

  else
  {
    result = 0x7461527472616568;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeartRateSample.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateSample.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartRateSample.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMR);
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v26 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v18 = v32;
    type metadata accessor for HeartRateSample();
    v19 = *(*v18 + 48);
    v20 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v9;
    v28 = v10;
    v35 = 0;
    v16 = v30;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v17;
    v23 = [objc_opt_self() _countPerMinuteUnit];
    v24 = [objc_opt_self() quantityWithUnit:v23 doubleValue:v22];

    v18 = v32;
    *(v32 + 16) = v24;
    v34 = 1;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v33 = 1;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
      v7 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v25 = v29;
      (*(v28 + 8))(v13, v30);
    }

    else
    {
      Date.init()();
      (*(v28 + 8))(v13, v16);
      v25 = v29;
    }

    (*(v25 + 32))(v18 + OBJC_IVAR____TtC11WorkoutCore15HeartRateSample_computationDate, v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v18;
}

uint64_t HeartRateSample.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = [objc_opt_self() _countPerMinuteUnit];
  [v11 doubleValueForUnit_];

  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HeartRateSample.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore15HeartRateSample_computationDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartRateSample()
{
  result = type metadata singleton initialization cache for HeartRateSample;
  if (!type metadata singleton initialization cache for HeartRateSample)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for HeartRateSample()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance HeartRateSample@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HeartRateSample();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = HeartRateSample.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateSample.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateSample.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

id RacePositionBridged.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RacePositionBridged.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RacePositionBridged();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double static MetricPlatter.canonicalArray()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_20B4282E0;
  *(v0 + 32) = 256;
  *(v0 + 40) = &outlined read-only object #0 of static MetricPlatter.canonical();
  *(v0 + 48) = 263;
  *(v0 + 56) = 0;
  return result;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  v0 = _HKWorkoutActivityNameForActivityType();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v5._object = 0x800000020B456540;
    v5._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v5))
    {
      v6 = String.count.getter();
      v7 = specialized Collection.dropFirst(_:)(v6, v2, v4);
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v2 = MEMORY[0x20F2E6D00](v7, v9, v11, v13);
      v4 = v14;
    }
  }

  else
  {
    v4 = 0x800000020B456520;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x20F2E6D80](v2, v4);
}

uint64_t FIUIWorkoutActivityType.shouldShowOtherWorkoutCalorieDisclaimer(activityMoveMode:)(uint64_t a1)
{
  v55[3] = &type metadata for WorkoutFeatures;
  v55[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v55[0]) = 15;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_2(v55);
  if (v3 & 1) == 0 && (os_variant_has_internal_content())
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "WorkoutFeatures.Kahana is NOT enabled, returning false";
    goto LABEL_25;
  }

  if (a1 == 2)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "activityMoveMode is .appleMoveTime, returning false";
    goto LABEL_25;
  }

  [v1 effectiveTypeIdentifier];
  if (FIActivityTypeIsCalorimetryOptimized())
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.activityPicker);
    v11 = v1;
    v5 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v12))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55[0] = v13;
    *v7 = 136315138;
    [v11 effectiveTypeIdentifier];
    v14 = _HKWorkoutActivityNameForActivityType();
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19._object = 0x800000020B456540;
      v19._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v19))
      {
        v20 = String.count.getter();
        v21 = specialized Collection.dropFirst(_:)(v20, v16, v18);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v16 = MEMORY[0x20F2E6D00](v21, v23, v25, v27);
        v18 = v28;
      }
    }

    else
    {
      v18 = 0x800000020B456520;
      v16 = 0xD000000000000010;
    }

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v55);

    *(v7 + 4) = v49;
    _os_log_impl(&dword_20AEA4000, v5, v12, "FIActivityTypeIsCalorimetryOptimized is true for activityType.effectiveTypeIdentifier: %s, returning false", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    goto LABEL_26;
  }

  v29 = [v1 effectiveTypeIdentifier];
  if (v29 > 0x29)
  {
    goto LABEL_32;
  }

  if (((1 << v29) & 0x100820000ALL) != 0)
  {
LABEL_21:
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "activityType.isPedestrianCalorimetryOptimized is true, returning false";
LABEL_25:
    _os_log_impl(&dword_20AEA4000, v5, v6, v8, v7, 2u);
LABEL_26:
    MEMORY[0x20F2E9420](v7, -1, -1);
LABEL_27:

    v31 = 0;
    return v31 & 1;
  }

  if (((1 << v29) & 0x20002000000) != 0)
  {
    if (![v1 isIndoor])
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_32:
    if (v29 == 75)
    {
      goto LABEL_21;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v33 = specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(static WorkoutCoreInjector.npsDomainAccessor, 0xD000000000000025, 0x800000020B45A170);
  if (v33)
  {
    v34 = v33;
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    [v1 effectiveTypeIdentifier];
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x20F2E6D80](95, 0xE100000000000000);
    v54[6] = [v1 location];
    type metadata accessor for HKWorkoutSessionLocationType(0);
    v35 = _print_unlocked<A, B>(_:_:)();
    MEMORY[0x28223BE20](v35);
    v54[2] = v55;
    v36 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v54, v34);

    v31 = v36 ^ 1;
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.activityPicker);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315394;
      v42 = (v36 & 1) == 0;
      if (v36)
      {
        v43 = 1702195828;
      }

      else
      {
        v43 = 0x65736C6166;
      }

      if (v36)
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      if (v42)
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v42)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v55);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v55);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_20AEA4000, v38, v39, "Checking if acceptedWorkouts contains currentWorkoutKey. Result: %s. Returning: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v40, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static WOLog.activityPicker);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_20AEA4000, v51, v52, "Failed to fetch accepted workout keys, returning true (show alert)", v53, 2u);
      MEMORY[0x20F2E9420](v53, -1, -1);
    }

    v31 = 1;
  }

  return v31 & 1;
}

Swift::Void __swiftcall FIUIWorkoutActivityType.setDisclaimerShown()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v1 = static WorkoutCoreInjector.npsDomainAccessor;
  v2 = specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(static WorkoutCoreInjector.npsDomainAccessor, 0xD000000000000025, 0x800000020B45A170);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v13 = 0;
  v14 = 0xE000000000000000;

  [v0 effectiveTypeIdentifier];
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x20F2E6D80](95, 0xE100000000000000);
  v12 = [v0 location];
  type metadata accessor for HKWorkoutSessionLocationType(0);
  v4 = _print_unlocked<A, B>(_:_:)();
  MEMORY[0x28223BE20](v4);
  v11[2] = &v13;
  v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v3);

  if ((v5 & 1) == 0)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    [v0 effectiveTypeIdentifier];
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x20F2E6D80](95, 0xE100000000000000);
    v12 = [v0 location];
    _print_unlocked<A, B>(_:_:)();
    v6 = v13;
    v7 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v7;
    specialized FIUIWorkoutActivityType.storeAcceptedWorkoutKeys(_:to:forKey:)(v3, v1, 0xD000000000000025, 0x800000020B45A170);
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = MEMORY[0x20F2E6C00](a2, a3);
  v7 = [a1 dataForPerGizmoDomainAndKey_];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v8, v10);
    return v20;
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.activityPicker);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v20);
      _os_log_impl(&dword_20AEA4000, v15, v16, "workoutDomainAccessor data fetching failed for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    return 0;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized FIUIWorkoutActivityType.storeAcceptedWorkoutKeys(_:to:forKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = MEMORY[0x20F2E6C00](a3, a4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a2 writeDataPerGizmoDomainAndKey:v13 data:isa];

  return outlined consume of Data._Representation(v10, v12);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Subject.wrappedValue.getter(void *a1)
{
  v6 = *v1;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t Subject.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PassthroughSubject();
  result = PassthroughSubject.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t type metadata instantiation function for Subject()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Subject(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Subject(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PhoneFitnessCapabilities.optimizedCalorimetry(activityType:)(void *a1)
{
  v2 = [a1 identifier];
  if (v2 > 0x34 || ((1 << v2) & 0x10002001002000) == 0)
  {
    return 0;
  }

  else
  {
    return [a1 isIndoor] ^ 1;
  }
}

uint64_t protocol witness for DeviceFitnessCapabilities.optimizedCalorimetry(activityType:) in conformance PhoneFitnessCapabilities(void *a1)
{
  v2 = [a1 identifier];
  if (v2 > 0x34 || ((1 << v2) & 0x10002001002000) == 0)
  {
    return 0;
  }

  else
  {
    return [a1 isIndoor] ^ 1;
  }
}

uint64_t static CurrentDevice.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for capabilities != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DeviceFitnessCapabilities(&static CurrentDevice.capabilities, v2);
}

uint64_t outlined init with copy of DeviceFitnessCapabilities(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for PhoneFitnessCapabilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PhoneFitnessCapabilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t MirroredStartContentType.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

WorkoutCore::MirroredStartContentType_optional __swiftcall MirroredStartContentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MirroredStartContentType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredStartContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredStartContentType()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredStartContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MirroredStartContentType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MirroredStartContentType(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredStartContentType()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t MirroredStart.contentData.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

_BYTE *MirroredStart.init(contentType:contentData:startSource:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MirroredStart.serialize()()
{
  v1 = *v0;
  v8 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

unint64_t lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart()
{
  result = lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart;
  if (!lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart;
  if (!lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart);
  }

  return result;
}

uint64_t static MirroredStart.deserialize(from:)()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t static MirroredStart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  return specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & (v4 == v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredStart.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredStart.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MirroredStart.CodingKeys()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x756F537472617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MirroredStart.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MirroredStart.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredStart.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredStart.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredStart.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = v8;
  v21 = 0;
  lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType();
  v12 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v13 = v16;
    v19 = v17;
    v20 = v10;
    v21 = 1;
    outlined copy of Data._Representation(v17, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v19, v20);
    v19 = v13;
    v21 = 2;
    type metadata accessor for NLWorkoutStartSource(0);
    lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(&lazy protocol witness table cache variable for type NLWorkoutStartSource and conformance NLWorkoutStartSource);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MirroredStart.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v15[0];
  v17 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15[0];
  v11 = v15[1];
  type metadata accessor for NLWorkoutStartSource(0);
  v17 = 2;
  lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(&lazy protocol witness table cache variable for type NLWorkoutStartSource and conformance NLWorkoutStartSource);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v16;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  outlined copy of Data._Representation(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of Data._Representation(v12, v11);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MirroredStart(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  return specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & (v4 == v3);
}

unint64_t MirroredStartError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0xD00000000000001ALL;
  }

  _StringGuts.grow(_:)(23);

  if (v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    v4 = "alorimetryWorkoutsKey";
  }

  else
  {
    v4 = "prewarmWorkoutWatchApp";
  }

  MEMORY[0x20F2E6D80](v3, v4 | 0x8000000000000000);

  return 0xD000000000000015;
}

uint64_t NLWorkoutStartSource.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v4;
}

uint64_t NLWorkoutStartSource.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for Decodable.init(from:) in conformance NLWorkoutStartSource@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NLWorkoutStartSource(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x20F2E42A0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType()
{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLWorkoutStartSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartError and conformance MirroredStartError()
{
  result = lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError;
  if (!lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStartContentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredStartContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStart(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredStart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStartError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredStartError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MirroredStartError(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}